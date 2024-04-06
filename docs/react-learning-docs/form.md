# forms

### Header
 It represents the top section of a web page or application interface.

 It often contains branding elements, navigation links, and sometimes additional controls or information.

 ### Form

A form component in React enables users to enter information or make selections, which can then be submitted for processing.

It typically consists of input fields, buttons, and sometimes validation logic.

### Event listener

In React, an event listener is a function that is attached to a JSX element using attributes like onClick, onChange, etc., to respond to user interactions with the component.
#### Example
< button onClick={handleClick}>Click me</ button>

In this example, onClick is the event listener that listens for a click event on the button element. When clicked, it calls the handleClick function.

### State 
State in React refers to the internal data held by a component, which can change over time in response to user actions or other events, triggering re-rendering of the component.

### Text Area
This part of the form allows users to input multiple lines of text.
 #### Syntax:
< textarea value={textValue} onChange={handleTextChange} />

### Checkbox

This part of the form presents a checkbox that users can toggle on or off.
 #### Syntax:
< input type="checkbox" checked={isChecked} onChange={handleCheckboxChange} />

### Select Dropdown

This part of the form displays a dropdown menu with selectable options.
 #### Syntax:
 
  < select value={selectedOption} onChange={handleSelectChange}>
   
    < option value="">Select an option< /option>
      < option value="option1">Option 1< /option>
      < ption value="option2">Option 2</ option>
      < option value="option3">Option 3</ option>
    </ select>

### Radio Buttons
 This part of the form presents a set of radio buttons where only one option can be selected at a time.
 #### Syntax:
 < input type="radio" value="optionA" checked={selectedRadio === 'optionA'} onChange={handleRadioChange} />

 ### Submit Button
 This part of the form includes a submit button that users can click to submit the form.
 #### Syntax:
  < button type="submit">Submit</
  button >