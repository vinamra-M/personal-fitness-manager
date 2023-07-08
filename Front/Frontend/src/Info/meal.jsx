import React, { useState } from "react";

function ButtonWithListMeal() {
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
          <li>Omelette</li>
          <li>Bread Butter</li>
          <li>Bread Jam Sandwich</li>
          <li>Chole Rice</li>
        </ul>
      )}
    </div>
  );
}

export default ButtonWithListMeal;
