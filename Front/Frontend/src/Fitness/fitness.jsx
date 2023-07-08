import {useNavigate } from 'react-router-dom';
import { useState } from 'react';
import Dropdown from './mui';
const Fitness = () => {
    const [selectedValue1, setSelectedValue1] = useState(null);
    const navigate = useNavigate();
    const handleSubmit1 = () => {
        navigate("/Diet"); 
      }
      const handleSubmit = () => {
        navigate("/Routine"); 
      }
      const handleSubmit2 = () => {
        navigate("/Info");
      }
    return ( 
        <div className="App">
        <div className="details">In Accordance to your fitness goal</div>
        <form>
        <div className="input-group">Please choose the corresponding Fitness plan:</div>
        <Dropdown placeHolder="Select .." setSelectedValue1={setSelectedValue1} selectedValue1={selectedValue1}></Dropdown>
        <div className="input-group"></div>
        <button type="submit" className="submit-btn" onClick={handleSubmit1}>
            Click Here to choose diet plan
          </button>
          <button type="submit" className='submit-btn' onClick={handleSubmit}>
            Click Here to choose your workout routine
          </button>
        </form>
        <form>
        <button type="submit" className='submit-btn' onClick={handleSubmit2}>
            Submit 
        </button>
        </form>
        </div>
     );
}
 
export default Fitness;