import './faq.css';

const FAQ = () => {
    return (
        <div>
        <div className="details">FAQ</div>
        <hr />
        <ul className="list">
            <li><b>Can you help me create a new fitness plan that aligns with my goals?</b></li>
            <li>Yes, just enter your details and select your fitness goal. Then click on show fitness plans to start a fitness plan of your choice and get fit!</li>
            <br />
            <li><b>I want to change my current fitness plan. How can I do that in the system?</b></li>
            <li>If you want to change your current fitness plan, just add a new plan after going back to the homepage. This new plan will now serve as your active plan and would suggest your everything you need in your fitness journey.</li>
            <br />
            <li><b>Can you suggest a workout routine that targets specific muscle groups?</b></li>
            <li>Yes, you can train specific muscle groups by selecting one of our workout routines. Each workout routine comes with exercises that target specific muscles. You can get a list of such exercises by clicking on display exercises. Otherwise you can also click on the show muscle specific routines, to get the list of workout routines that train the part you want to train</li>
            <br />
            <li><b>I want to track my progress toward my fitness goals. Is there a way to do that in the system?</b></li>
            <li>Yes, you can keep a track of your progress using the progress log feature. Just log in your data whenever you see some progress. You can check your progress anytime you want using the check progress feature. Moreover, you can even make use of our workout log feature to maintain a record of your workout sessions.</li>
            <br />
            <li><b>Can you recommend some healthy meals that align with my dietary preferences?</b></li>
            <li>Yes, whenever you select a fitness plan, you can choose one of our diet plans suited for your body type and your fitness goals. You can click on the display meals button to get a list of healthy meals that align with your preferences.</li>
            <br />
            <li><b>I want to track my calorie intake. Is there a feature in the system for that?</b></li>
            <li>Yes, whenever you choose a diet plan and look at the corresponding meals we suggest to you, you can also check the calories they hold before having them.</li>
            <br />
            <li><b>Can you suggest exercises that are suitable for my fitness level?</b></li>
            <li>Yes, you can simply add your fitness level (whether it be beginner, intermediate or advanced) while putting in your user details. We will only suggest you fitness plans that match your fitness level and goal from our program.</li>
            <br />
            <li><b>I want to add a new workout routine to my fitness plan. How can I do that in the system?</b></li>
            <li>Whenever you select your fitness plan, you will get a bunch of options for the workout routine you can choose. Just select one of them and start working out!</li>
            <br />
            <li><b>Can you recommend supplements that will help me achieve my fitness goals?</b></li>
            <li>Sure! Pertaining to your body details and your diet plan, we suggest you the best supplements you should be using. Just click on the recommend supplements button to get a list of these supplements.</li>
            <br />
            <li><b>I want to track my body measurements, such as my weight and body fat percentage. Is there a way to do that in the system?</b></li>
            <li>Yes, you can make use of our progress log section to save such details for future references.</li>
            <br />
            <li><b>Can you suggest exercises that are suitable for my current injuries or limitations?</b></li>
            <li>Yes, just click on the show exercises button to get a list of exercises suitable for you.</li>
            <br />
            <li><b>I want to view a report of my progress over time. How can I do that in the system?</b></li>
            <li>Just click on the View Progress log button in the info tab</li>
        </ul>
        </div>
    );
}

export default FAQ;
