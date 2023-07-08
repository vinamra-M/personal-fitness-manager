import React, { useState } from "react";

function ButtonWithListSupp() {
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
          <li>Vitamin B3</li>
          <li>Beta Alanine</li>
          <li>Calcium</li>
        </ul>
      )}
    </div>
  );
}

export default ButtonWithListSupp;
