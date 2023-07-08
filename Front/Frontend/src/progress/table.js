import React, { useState } from "react";

function Table() {
  const [entries, setEntries] = useState([]);

  const handleSubmit = (event) => {
    event.preventDefault();
    const newEntry = {
      weight: event.target.weight.value,
      targetWeight: event.target.targetWeight.value,
      bodyFatPercent: event.target.bodyFatPercent.value
    };
    setEntries([...entries, newEntry]);
    event.target.reset();
  };

  return (
    <div>
      <form onSubmit={handleSubmit}>
        <input type="number" name="weight" placeholder="Weight(in kg)" />
        <input type="number" name="targetWeight" placeholder="Target Weight(in kg)" />
        <input type="number" name="bodyFatPercent" placeholder="Body Fat Percent" />
        <button type="submit">Add Entry</button>
      </form>
      <form>
      <table>
        <thead>
          <tr>
            <th>Weight</th>
            <th>Target Weight</th>
            <th>Body Fat Percent</th>
          </tr>
        </thead>
        <tbody>
          {entries.map((entry, index) => (
            <tr key={index}>
              <td>{entry.weight}</td>
              <td>{entry.targetWeight}</td>
              <td>{entry.bodyFatPercent}</td>
            </tr>
          ))}
        </tbody>
      </table>
      </form>
    </div>
  );
}

export default Table;
