import {useNavigate } from 'react-router-dom';
import { useState } from 'react';
import Dropdown from './Roudiet';
const Routine = () => {
    const navigate = useNavigate();
    const handleSubmit = () => {
        navigate("/fitness"); 
      }
      const [selectedValue1, setSelectedValue1] = useState(null);

    return ( 
        <div className="App">
        <form>
        <div className="input-group">Please choose the corresponding workout plan:</div>
        <Dropdown placeholder="Select .." selectedValue1={selectedValue1} setSelectedValue1={setSelectedValue1}></Dropdown>
        <div className="input-group"></div>
        <button type="submit" className="submit-btn" onClick={handleSubmit}>
            Submit
          </button>
        </form>
        </div>
     );
}
 
export default Routine;