import './App.css';
import FAQ from './FAQ/faq';
import Homepage from './Homepage/Homepage';
import Fitness from './Fitness/fitness';
import { BrowserRouter, Route, Routes, useNavigate } from 'react-router-dom';
import { useState } from 'react';
import Routine from './Routine/routine';
import Diet from './Diet/Diet';
import Info from './Info/Info';
import Progress from './progress/progress';
import {useEffect} from "react";
import Work from './WorkoutLog/work';
import Muscle from './MuscleGroup/muscle';

function App() {
  // const navigate = useNavigate();
  // const navigate = useNavigate();
  // const handleSubmit = () => {
  //   navigate("/Homepage"); 
  //   }
  const [selectedValue, setSelectedValue] = useState(null);
  return (
    <div className="App">
      {/* <div className='details'> Click Here to Begin</div>
      <button type="submit" className="submit-btn" onClick={handleSubmit}>
            Begin
          </button> */}

      <BrowserRouter>
      <Routes>
        <Route path="/faq" element={<FAQ />}/>
        <Route path="/" element={<Homepage selectedValue={selectedValue} setSelectedValue={setSelectedValue} />} />
        <Route path = "/fitness" element = {<Fitness/>} />
        <Route path="/Routine" element = {<Routine/>}/>
        <Route path="/Diet" element={<Diet/>}/>
        <Route path="/Info" element={<Info/>}/>
        <Route path="/progress" element={<Progress/>}/>
        <Route path="/workout" element={<Work/>}/>
        <Route path="/Muscle" element={<Muscle/>}></Route>
      </Routes>
    </BrowserRouter>

    </div>
  );
}

export default App;
