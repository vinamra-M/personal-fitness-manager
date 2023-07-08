import React, { useState } from "react";

function ButtonWithListEx() {
  const [showList, setShowList] = useState(false);

  const toggleList = (event) => {
    event.preventDefault();
    setShowList(!showList);
  };

  return (
    <div>
      <button onClick={toggleList}>
        {showList ? "Hide List" : "Show List"}
      </button>
      {showList && (
        <ul>
          <li>Military Press</li>
          <li>Overhead Press</li>
          <li>Dumbell Pullover</li>
          <li>Tricep Extension</li>
          <li>Face Pulls</li>
        </ul>
      )}
    </div>
  );
}

export default ButtonWithListEx;
