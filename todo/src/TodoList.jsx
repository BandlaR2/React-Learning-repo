// TodoList.jsx
import React from 'react';

const TodoList = ({ taskList, deleteHandler }) => {
  return (
    <div>
      {taskList.map((task) => (
        <div key={task.id} className="todo-item">
          <h5>{task.text}</h5>
          <button className="delete-button" onClick={() => deleteHandler(task.id)}>
            Delete
          </button>
        </div>
      ))}
    </div>
  );
};

export default TodoList;
