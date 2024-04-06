# useState 


### useState 
useState is a React hook that allows functional components to manage state.

// Declare a state variable named count, initialized with the value 0

  const countState = useState(0);

  ### useSate array destructuring

  #### Example
  function Counter() {

  // Use array destructuring to declare count state variable and its setter function

  const [count, setCount] = useState(0);

  return (

    < div>
      < p>Count: {count}< /p>

      <button onClick={() => setCount(count + 1)}>Increment </button>

      <button onClick={() => setCount(count - 1)}>Decrement</button>
    
    </div>
  );
}

In this code, useState(0) initializes the state variable count with a value of 0, and setCount is a function to update the count state variable. 

### Changing state

setCount updates the count state in React components. When called, it triggers re-rendering with the new state value.

### Changing  state with a call back function

In React, changing state with a callback function allows updating state based on its previous value, ensuring synchronous updates.

#### Example
 function add() {

        setCount(prevCount => prevCount + 1)
    }

   `substract` to use a callback function
    
    function subtract() {
        setCount(prevCount => prevCount - 1)
    }


### Ternary Operator:

The ternary operator, also known as the conditional operator, is a JavaScript operator that provides a concise way to write conditional statements.
#### syntax
condition ? expressionIfTrue : expressionIfFalse

### Complex state array
A complex state array typically refers to an array where each element is an object containing multiple properties.

#### Example
const [thingsArray, setThingsArray] = React.useState(["Thing 1", "Thing 2"])
    
    function addItem() {
        setThingsArray(prevState => {
            return [...prevState, `Thing ${prevState.length + 1}`]
        })
    }
### Complex state object
where each property can have its own nested properties or values.
#### Example
 // Function to update user's email

  const updateEmail = (newEmail) => {
    
    // Update the email property in the userData object
    
    setUserData(prevUserData => ({
      ...prevUserData,
      email: newEmail
    }));2
  };

  ### passing state as object
  Passing state as an object in React allows you to manage multiple state values within a single state object.
