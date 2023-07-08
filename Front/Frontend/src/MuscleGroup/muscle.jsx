import React, { useState } from 'react';

function Muscle() {
  const [input, setInput] = useState('');
  const [output, setOutput] = useState('');

  const handleChange = (event) => {
    setInput(event.target.value);
  }

  const handleSubmit = (event) => {
    event.preventDefault();

    // Check the input value and set the output accordingly
    if (input === 'Triceps') {
      setOutput('Overhead Extensions, Dips, Pullups');
    } else if (input === 'Chest') {
      setOutput('Bench Press, Cable Fly, Rows');
    } else if (input === 'Biceps') {
      setOutput('Bicep Curls, Hammer Curls, Squats');
    } else if(input === 'Back') {
        setOutput('Incline Bench, Pullups, Deadlift');
    } else if(input === 'Legs'){
        setOutput('Leg Press, Bench, T bar');
    } else if(input === 'Shoulders'){
        setOutput('DB shoulder press, machine press, face pulls');
    } else {
        setOutput('Invalid Output');
    }

  }

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <div>Give input from one of the following: Biceps,Triceps,Shoulders,Back,Legs.</div>
        <br />
        <input type="text" value={input} onChange={handleChange} />
        <button type="submit">Submit</button>
      </form>
      <p>Output: {output}</p>
    </div>
  );
}

export default Muscle;