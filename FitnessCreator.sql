-- Based on the schema provided, the tables have been normalized to at least 3NF. Here are a few examples of normalization:

-- Each table has a primary key, and no non-key attributes depend on only part of the primary key.
-- The "user_fitness_goal" attribute in the "user" table is a foreign key that references the "fitness_goal" attribute in the "fitness_plan" table, which helps to avoid data redundancy.
-- The "plan_id" attribute in the "user_fitness_plans" table is a foreign key that references the "plan_id" attribute in the "fitness_plan" table, which helps to avoid data redundancy.
-- The "exercise_id" attribute in the "routine_exercise" table is a foreign key that references the "exercise_id" attribute in the "exercise" table, which helps to avoid data redundancy.
-- Overall, the schema is normalized to at least 3NF.


CREATE TABLE user (
	name VARCHAR(50) NOT NULL,
    height_cms INT NOT NULL,
    user_fitness_goal VARCHAR(50) REFERENCES fitness_plan(fitness_goal),
    age INT NULL,
    user_id INT AUTO_INCREMENT PRIMARY KEY
);


CREATE TABLE workout_log (
	date DATE,
    user_id INT REFERENCES user(user_id),
    time TIME, 
    routine_id INT REFERENCES routine(routine_id),
    PRIMARY KEY (time, date, user_id)
);



CREATE TABLE progress_log (
	user_id INT REFERENCES user(user_id), 
    progress_id INT,
    target_wt DECIMAL(4,2),
    current_wt DECIMAL(4,2),
    bodyfat_percentage DECIMAL(4,2) CHECK(bodyfat_percentage BETWEEN 0 AND 100), 
    weightloss_needed DECIMAL(4,2) AS (current_wt - target_wt),
    weightgain_needed DECIMAL(4,2) AS (weightloss_needed * -1), 
    PRIMARY KEY (user_id, progress_id)
);

CREATE TABLE fitness_plan(
	plan_id INT AUTO_INCREMENT PRIMARY KEY,
    duration_days INT NOT NULL,
    difficulty VARCHAR(50) NOT NULL, 
    fitness_goal VARCHAR(50) NOT NULL
);

CREATE TABLE user_fitness_plans(
	user_id INT REFERENCES user(user_id),
    plan_id INT REFERENCES fitness_plan(plan_id),
    activated_plan BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY(user_id, plan_id)
);

CREATE TABLE workout_routine(
	routine_id INT AUTO_INCREMENT PRIMARY KEY,
    duration_minutes INT NOT NULL,
    calories_burnt INT NOT NULL
);

CREATE TABLE fitness_workout_routine(
	routine_id INT REFERENCES workout_routine(routine_id),
    plan_id INT REFERENCES fitness_plan(plan_id),
    PRIMARY KEY(routine_id, plan_id)
);

CREATE TABLE diet_plan(
	diet_id INT AUTO_INCREMENT PRIMARY KEY, 
    `meals/day` INT
);

CREATE TABLE fitness_diet_plan(
	diet_id INT REFERENCES diet_plan(diet_id),
    plan_id INT REFERENCES fitness_plan(plan_id),
    PRIMARY KEY(diet_id, plan_id)
);

CREATE TABLE exercise (
	exercise_id  INT AUTO_INCREMENT PRIMARY KEY,
    sets INT NOT NULL,
    name VARCHAR(100)
);


CREATE TABLE routine_exercise (
	exercise_id INT REFERENCES exercise(exercise_id),
    routine_id INT REFERENCES workout_routine(routine_id),
    PRIMARY KEY (exercise_id, routine_id)
);

CREATE TABLE exercise_muscle_group (
	exercise_id INT REFERENCES exercise(exercise_id),
    muscle_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (muscle_name, exercise_id)
);


CREATE TABLE meals (
	meal_id INT AUTO_INCREMENT PRIMARY KEY,
    meal_name VARCHAR(100),
    meal_protein INT,
    meal_carbohydrates INT, 
    meal_fat INT
);

CREATE TABLE diet_meal_plan (
	meal_id INT REFERENCES meals(meal_id),
    diet_id INT REFERENCES diet_plan(diet_id),
    PRIMARY KEY (meal_id, diet_id)
);

CREATE TABLE supplement_plan (
	supplement_id INT AUTO_INCREMENT PRIMARY KEY,
    supplement_name VARCHAR(100),
    dosage_per_day_grams INT
);

CREATE TABLE diet_supplement_needs (
	supplement_id INT REFERENCES supplement_plan(supplement_id),
    diet_id INT REFERENCES diet_plan(diet_id),
    PRIMARY KEY (diet_id, supplement_id)
);
    



    
    
    
    