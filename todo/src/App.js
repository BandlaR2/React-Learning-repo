import React, { useState } from 'react';
import './App.css';
import TodoList from './TodoList';

function App() {
  
  const [userInput, setUserInput] = useState('');
  const [taskList, setTaskList] = useState([]);

  const changeHandler = (e) => {
    setUserInput(e.target.value);
  };

  const submitHandler = (e) => {
    e.preventDefault();
    // Create a new task object with an id (using the current timestamp) and text
    const newTask = { id: Date.now(), text: userInput };
    // Update the state to include the new task
    setTaskList((prevTaskList) => [...prevTaskList, newTask]);
    setUserInput('');
  };

  const deleteHandler = (taskId) => {
    // Filter out the task with the specified id
    const newTaskList = taskList.filter((task) => task.id !== taskId);
    setTaskList(newTaskList);
  };
return(
  <div className="App">
  <div className="todo-container">
    <div>
      <h5>Task Management</h5>
      <form onSubmit={submitHandler}>
        <input type="text" name="userInput" value={userInput} onChange={changeHandler} />&nbsp;&nbsp;
        <input type="submit" value="Add" name="Add" />
      </form>
      
      <TodoList taskList={taskList} deleteHandler={deleteHandler} />
    </div>
  </div>
</div>
);
}

export default App;

