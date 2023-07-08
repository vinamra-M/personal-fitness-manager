import {useNavigate } from 'react-router-dom';
import Dropdown from './Dietdrop';
import { useState } from 'react';

const Diet = () => {
    const navigate = useNavigate();
    const handleSubmit = () => {
        navigate("/fitness"); 
      }
      const [selectedValue1, setSelectedValue1] = useState(null);
    return ( 
        <div className="App">
        <form>
        <div className="input-group">Please choose the corresponding diet plan:</div>
        <Dropdown placeholder = "Select .." setSelectedValue1 = {setSelectedValue1} selectedValue1 = {selectedValue1}></Dropdown>
        <div className="input-group"></div>
        <button type="submit" className="submit-btn" onClick={handleSubmit}>
            Submit
          </button>
        </form>
        </div>
     );
}
 
export default Diet;