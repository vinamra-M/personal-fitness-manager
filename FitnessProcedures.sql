-- Procedures
-- These procedures provide all the functionalities that serve the user results for queries listed in the FAQ



-- This procedure displays the list of Fitness Plans that align with the user's goal of his/her fitness journey
DELIMITER $$
CREATE PROCEDURE alignedFitnessPlan(IN goal VARCHAR(100))
READS SQL DATA
BEGIN
SELECT plan_id, duration_days, difficulty
FROM fitness_plan
WHERE fitness_goal = goal;
END$$
DELIMITER ;


-- This procedure is used to add a new fitness plan to the user's current list of plans and make it his/her active plan
DELIMITER $$
CREATE PROCEDURE addNewActivePlan(IN fitness_plan_id INT, IN id INT)
MODIFIES SQL DATA 
BEGIN
UPDATE user_fitness_plans
SET activated_plan = 0
WHERE user_id = id;
INSERT INTO user_fitness_plans
VALUES
(id, fitness_plan_id, 1);
END$$
DELIMITER ;


-- This procedure shows the diet_plan to choose from corresponding to user's current fitness plan
DELIMITER $$
CREATE PROCEDURE chooseDietPlan(IN userID INT)
READS SQL DATA
BEGIN
SELECT diet_plan.diet_id, diet_plan.`meals/day`
FROM diet_plan
NATURAL JOIN fitness_diet_plan
WHERE fitness_diet_plan.plan_id = 
(SELECT user_fitness_plans.plan_id 
FROM user_fitness_plans
WHERE user_fitness_plans.user_id = userID AND user_fitness_plans.activated_plan = 1);
END$$
DELIMITER ;


-- This procedure shows the workout routines available corresponding to the muscle group the user wants to train if available in his own fitness plan
DELIMITER $$
CREATE PROCEDURE muscleWiseRoutine(IN userID INT ,IN muscle_group VARCHAR(100))
READS SQL DATA
BEGIN
SELECT plan_id, routine_id FROM user_fitness_plans
NATURAL JOIN fitness_workout_routine
WHERE routine_id IN
(SELECT temp.routine_id
FROM exercise_muscle_group
NATURAL JOIN (SELECT * FROM exercise
NATURAL JOIN routine_exercise) temp
WHERE exercise_muscle_group.muscle_name = muscle_group);
END$$
DELIMITER ;


-- This procedure is used to meals corresponding to a diet plan
DELIMITER $$
CREATE PROCEDURE showMeals(IN dietID INT)
READS SQL DATA
BEGIN
SELECT * FROM meals
NATURAL JOIN diet_meal_plan
WHERE diet_meal_plan.diet_id = dietID;
END$$
DELIMITER ; 

-- This procedure is used to log user progress in the progress_log table of the database
DELIMITER $$
CREATE PROCEDURE logInProgress(IN userID INT, IN target DECIMAL(4,2), IN currentwt DECIMAL(4,2), IN bodyfat DECIMAL(4,2))
MODIFIES SQL DATA
BEGIN
INSERT INTO progress_log(user_id, target_wt, current_wt, bodyfat_percentage)
VALUES 
(userID, target, currentwt, bodyfat);
END$$
DELIMITER ; 

-- This procedure is used to check the user's progress log
DELIMITER $$
CREATE PROCEDURE checkProgress(IN userID INT)
READS SQL DATA
BEGIN
SELECT target_wt, current_wt, bodyfat_percentage, weightloss_needed, weightgain_needed
FROM progress_log
NATURAL JOIN
(SELECT MAX(log_id), user_id
FROM progress_log
GROUP BY user_id
HAVING user_id = userID) temp;
END$$
DELIMITER ; 


-- This procedure shows the meals that the current user can take acc to his currenly active fitness plans and the diet plans associated it
DELIMITER $$ 
CREATE PROCEDURE showHealthyMealsCorrespondingToUser(IN userID INT)
READS SQL DATA
BEGIN
SELECT * FROM meals
NATURAL JOIN diet_meal_plan
HAVING diet_id IN
(SELECT diet_id FROM fitness_diet_plan
WHERE plan_id IN 
(SELECT plan_id
FROM user_fitness_plans
WHERE user_fitness_planS.user_id = userID AND activated_plan = 1));
END$$
DELIMITER ;




-- This procedure shows the exercises that the current user can train with his current level of fitness
DELIMITER $$
CREATE PROCEDURE showFitnessLevelExercises(IN userID INT)
READS SQL DATA
BEGIN
SELECT DISTINCT exercise.name, exercise.sets FROM exercise 
JOIN 
(SELECT * from routine_exercise 
NATURAL JOIN
(SELECT * FROM fitness_workout_routine
NATURAL JOIN 
(SELECT * FROM fitness_plan
NATURAL JOIN user
HAVING user.user_id = userID AND user.fitness_level = fitness_plan.difficulty) temp) temp2) temp3
ON exercise.exercise_id = temp3.exercise_id ;
END$$
DELIMITER ;


-- This procedure is used to add a new workout routine int one of the fitness plans that our user has, works only if corresponding fitness plan is activated right now
DELIMITER $$ 
CREATE PROCEDURE addNewWorkoutRoutine(IN userID INT, IN fplan_id INT, IN routineID INT)
MODIFIES SQL DATA
BEGIN
INSERT INTO fitness_workout_routine(routine_id, plan_id)
VALUES (routine_id, (SELECT plan_id FROM user_fitness_plans
WHERE user_id = userID AND activated_plan = 1));
END$$
DELIMITER ; 


-- This procedure shows the list of supplements recommended by the app to our user corresponding to his fitness goal 
DELIMITER $$
CREATE PROCEDURE showMeSupplements(IN userID INT)
READS SQL DATA 
BEGIN
SELECT DISTINCT supplement_name, dosage_per_day_grams FROM supplement_plan
NATURAL JOIN
(SELECT * FROM diet_supplement_needs
NATURAL JOIN 
(SELECT * FROM user_fitness_plans
NATURAL JOIN fitness_diet_plan) temp) temp2;
END$$
DELIMITER ;






