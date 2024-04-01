const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');

const app = express();
const port = process.env.PORT || 5005;

const pool = new Pool({
    user: "postgres",
    password: "Ruchitha@2",
    database: "CustomerDatabase",
    host: "localhost",
    port: 5432
});

// Apply CORS middleware at the beginning
app.use(cors());
app.use(express.json());

// Get all questions
app.get('/questions', async (req, res) => {
    try {
        const { rows } = await pool.query('SELECT * FROM questions');
        res.json(rows);
    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});

// Get a specific question by ID
app.get('/questions/:id', async (req, res) => {
    console.log('Received request for question details. Question ID:', req.params.id);
    try {
        const questionId = req.params.id;
        const { rows } = await pool.query('SELECT * FROM questions WHERE id = $1', [questionId]);

        if (rows.length === 0) {
            return res.status(404).json({ error: 'Question not found.' });
        }

        res.json(rows[0]);
    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});

// Save a new question
app.post('/questions', async (req, res) => {
    const { brief_question, long_question } = req.body;

    if (!brief_question || !long_question) {
        return res.status(400).json({ error: 'Brief question and long question are required.' });
    }

    try {
        const result = await pool.query('INSERT INTO questions (brief_question, long_question) VALUES ($1, $2) RETURNING *', [brief_question, long_question]);
        res.json(result.rows[0]);
    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});

// Delete a question by ID
app.delete('/questions/:id', async (req, res) => {
    const questionId = req.params.id;

    if (!questionId) {
        return res.status(400).json({ error: 'Invalid question ID.' });
    }

    try {
        const result = await pool.query('DELETE FROM questions WHERE id = $1 RETURNING *', [questionId]);

        if (result.rows.length === 0) {
            return res.status(404).json({ error: 'Question not found.' });
        }

        res.json({ message: 'Question deleted successfully' });
    } catch (error) {
        console.error('Error executing query', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});

// Clear all questions
app.post('/clear-questions', async (req, res) => {
    try {
        await pool.query('TRUNCATE TABLE questions RESTART IDENTITY');
        res.status(200).json({ message: 'Questions cleared successfully' });
    } catch (error) {
        console.error('Error clearing questions', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});

// Search for questions
app.get('/search-questions', async (req, res) => {
    try {
        const searchTerm = req.query.searchTerm;

        const query = `
            SELECT * FROM questions
            WHERE brief_question ILIKE $1;
        `;

        const result = await pool.query(query, [`%${searchTerm}%`]);
        const foundQuestions = result.rows;

        res.json(foundQuestions);
    } catch (error) {
        console.error('Error searching questions', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});
// Search for questions by long question
app.get('/questions/search-long', async (req, res) => {
    try {
        const searchTerm = req.query.searchTerm;

        const query = `
            SELECT * FROM questions
            WHERE long_question ILIKE $1;
        `;

        const result = await pool.query(query, [`%${searchTerm}%`]);
        const foundQuestions = result.rows;

        res.json(foundQuestions);
    } catch (error) {
        console.error('Error searching questions', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});




  