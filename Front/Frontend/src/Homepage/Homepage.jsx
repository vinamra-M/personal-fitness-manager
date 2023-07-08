import './Homepage.css'
import Dropdown from '../Dropdown/dropdown';
import {useNavigate } from 'react-router-dom';
import { useState } from 'react';
const Homepage = ({selectedValue, setSelectedValue}) => {
  const navigate = useNavigate();
  
  const [age, setAge] = useState(null);
  const [name, setName] = useState(null);
  const [height, setHeight] = useState(null);
  const [weight, setWeight] = useState(null);
  const handleSubmit = () => {
    if(age != null && name != null && height != null && weight != null && selectedValue != null){
    navigate("/fitness"); 
    }
    // else{
      
    // }
  }
    return (
      <div className="App">
        <div className="details">Enter User Details</div>
        <form>
          <div className="input-group">
            <label htmlFor="name">Name</label>
            <input type="text" id="name" onChange={(e)=>setName(e.target.value)}/>
          </div>
          <div className="input-group">
            <label htmlFor="Age">Age (in years)</label>
            <input type="number" id="Age" onChange={(e)=>setAge(e.target.value)}/>
          </div>
          <div className="input-group">
            <label htmlFor="height">Height (in cm)</label>
            <input type="number" id="height" onChange={(e)=>setHeight(e.target.value)}/>
          </div>
          <div className ="input-group">
            <label htmlFor="weight">Weight (in kg)</label>
            <input type="number" id="weight" onChange={(e)=>setWeight(e.target.value)}/>
          </div>
          <div className="input-group">
            <label htmlFor="goals">Select Fitness Goal</label>
            </div>
            <div>
            <Dropdown placeHolder="Select..." selectedValue={selectedValue} setSelectedValue={setSelectedValue}/>
          </div>
          <button type="submit" className="submit-btn" onClick={handleSubmit}>
            Submit
          </button>
        </form>
      </div>
    );
  }
  export default Homepage;
  // export {selectedValue}