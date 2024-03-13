# props
props (short for properties) are a way to pass data from a parent component to a child component. 
## What do props help us accomplish?
React make a component more reusable.


 ## How do you pass a prop into a component?
 we pass props to a component by adding attributes to the JSX tag when you include the component in another component.

 #### Example
 < MyAwesomeHeader title="???" />
### Reusable components 


Reusable components in React refer to components that can be used in different parts of your application or even in different projects.
## Receiving a prop in a component 
 When a component is created, it can define parameters (props) that can be passed to it when it is used elsewhere in the application. 
### Destructing props

Destructuring props in React involves extracting specific values directly from the props object, simplifying access to individual properties within a component.

#### Example
const ExampleComponent = ({ name, age }) => (
  <div>
    {name} - {age}
  </div>
);

### React array.map()
array.map() is a higher-order function in JavaScript used to iterate over each element in an array and perform a specified operation on each element. It returns a new array with the results of applying the provided function to each element.
#### Example
const numbers = [1, 2, 3, 4, 5];

// Using map to square each number

const squaredNumbers = numbers.map((number) => number ** 2);

console.log(squaredNumbers); 

// Output: [1, 4, 9, 16, 25]

### React render array
Rendering an array in React involves using the map function to iterate over elements, creating JSX components for dynamic content presentation in the UI.

#### Example
const items = ['Item 1', 'Item 2', 'Item 3'];

  {items.map((item, index) => (
          <li key={index}>{item}</li>
        ))}

 ### Key Prop
 The key prop in React is a special attribute used to uniquely identify elements in a list.
 #### Example
 const MyList = () => {

  const items = ['Apple', 'Banana', 'Orange'];

  return (

    < ul>

      {items.map((item, index) => (
        < li key={index}>{item}< /li >
      ))}

    < /ul>
  );

};


### pass objects as prop
To pass objects as props in React, you simply include the object as a prop value when rendering the component.


### spread objects as props
To spread objects as props in React, you can use the spread operator (...). 

 // Define an object

  const person = {

    name: 'John Doe',

    age: 30,

    city: 'New York',
  };

   {/* Spread the object properties as individual props */}

      < ChildComponent {...person} />