import React, { useState } from "react";

function WorkoutTable() {
  const [entries, setEntries] = useState([]);

  const handleSubmit = (event) => {
    event.preventDefault();
    const newEntry = {
      date: event.target.date.value,
      routine: event.target.routine.value,
      time: event.target.time.value,
    };
    setEntries([...entries, newEntry]);
    event.target.reset();
  };

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <input type="date" name="date" placeholder="Date" />
        <input type="number" name="routine" placeholder="Routine" />
        <input type="time" name="time" placeholder="Time" />
        <button type="submit">Add Entry</button>
      </form>
      <form>
      <table>
        <thead>
          <tr>
            <th>date</th>
            <th>routine</th>
            <th>time</th>
          </tr>
        </thead>
        <tbody>
          {entries.map((entry, index) => (
            <tr key={index}>
              <td>{entry.date}</td>
              <td>{entry.routine}</td>
              <td>{entry.time}</td>
            </tr>
          ))}
        </tbody>
      </table>
      </form>
    </div>
  );
}

export default WorkoutTable;
