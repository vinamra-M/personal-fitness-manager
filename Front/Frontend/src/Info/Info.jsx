import {useNavigate } from 'react-router-dom';
import ButtonWithList from './meal';
import ButtonWithListSupp from './supp';
import ButtonWithListMeal from './meal';
import ButtonWithListEx from './Ex';
import './info.css';
import '../App.css';
const Info = () => {
    const navigate = useNavigate();
    const handleSubmit = () => {
        navigate("/fitness"); 
      }
      const handleSubmit4 = () => {
        navigate("/faq"); 
      }
      const handleSubmit1 = () => {
        navigate("/progress"); 
      }
      const handleSubmit2 = () => {
        navigate("/workout"); 
      }
      const handleSubmit3 = () => {
        navigate("/muscle"); 
      }
    return ( 
        <div className="App">
        <form>
        <div className='info'>You can find all required information here.</div>
        <div>Show Supplements</div>
          <ButtonWithListSupp/>
          <br />
          <div>Show My Meal Plan</div>
          <ButtonWithListMeal/>
          <br />
          <div>Show My Exercises</div>
          <ButtonWithListEx/>
          <br />
          <button type="submit" className="submit-btn" onClick={handleSubmit1}>
            Go To Progress Log
          </button>
          <button type="submit" className="submit-btn" onClick={handleSubmit2}>
            Go To Workout Log
          </button>
          <button type="submit" className='submit-btn' onClick={handleSubmit3}>
            Show Exercises for Specific Muscle Group
          </button>
        </form>
        <button type="submit" className="submit-btn" onClick={handleSubmit4}>
            Show FAQS
          </button>
        </div>
     );
}
 
export default Info;