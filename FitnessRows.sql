INSERT INTO user(name, height_cms, user_fitness_goal, age) VALUES
	('John', 180, 'Lose Weight', 30, 1),
	('Jane', 160, 'Gain Muscle', 25, 2),
	('Bob', 175, 'Improve Endurance', 40, 3),
	('Alice', 170, 'Build Strength', 35, 4),
	('Tom', 185, 'Lose Weight', 28, 5),
	('Lena', 165, 'Gain Muscle', 27, 6),
	('Dan', 172, 'Improve Endurance', 45, 7),
	('Sara', 175, 'Build Strength', 32, 8), 
	('Mike', 190, 'Lose Weight', 33, 9),
	('Emily', 155, 'Gain Muscle', 23, 10);


INSERT INTO workout_log VALUES
	('2023-04-01', 1, '10:00:00', 1),
	('2023-04-02', 2, '12:30:00', 2),
	('2023-04-03', 3, '15:00:00', 3),
	('2023-04-04', 4, '18:00:00', 4),
	('2023-04-05', 5, '20:30:00', 5),
	('2023-04-06', 6, '08:00:00', 1),
	('2023-04-07', 7, '11:30:00', 2),
	('2023-04-08', 8, '14:00:00', 3),
	('2023-04-09', 9, '17:00:00', 4),
	('2023-04-10', 10, '19:30:00', 5);
    
INSERT INTO progress_log (user_id, progress_id, target_wt, current_wt, bodyfat_percentage)
VALUES   
	(1, 1, 80.5, 85.2, 20.0),
	(1, 2, 80.5, 84.2, 19.8), 
	(3, 1, 75.0, 73.0, 18.0),
	(4, 1, 90.0, 92.5, 22.0),
	(5, 1, 99.0, 97.5, 23.0),
	(6, 1, 55.0, 57.0, 20.0),
	(7, 1, 70.0, 68.0, 17.0),
	(8, 1, 80.0, 82.5, 25.0),
    (8, 2, 81.0, 82.5, 25.0),
	(9, 1, 95.0, 90.0, 18.0),
	(10, 1, 50.0, 55.0, 27.0);
    
    
INSERT INTO fitness_plan (duration_days, difficulty, fitness_goal) VALUES 
	(30, 'Intermediate', 'Lose Weight'),
	(10, 'Beginner', 'Build  Strength'),
	(30, 'Advanced', 'Lose Weight'),
	(30, 'Intermediate', 'Build  Strength'),
	(10, 'Advanced', 'Improve Endurance'),
	(30, 'Intermediate', 'Lose Weight'),
	(30, 'Advanced', 'Lose Weight'),
	(10, 'Beginner', 'Gain Muscle'),
	(30, 'Intermediate', 'Lose Weight'),
	(10, 'Intermediate', 'Improve Endurance');


INSERT INTO user_fitness_plans(user_id, plan_id, activated_plan) VALUES 
	(1, 1, true),
	(1, 2, default),
	(2, 3, true),
	(3, 4, true),
	(4, 4, true),
	(5, 6, true),
	(6, 6, true),
	(7, 6, true),
	(8, 9, true),
	(9, 9, true),
	(10, 1,default),
	(10, 2, true); 


INSERT INTO workout_routine(duration_minutes, calories_burnt) VALUES 
	(90, 90),
	(90, 150),
	(75, 200),
	(90, 50),
	(60, 150),
	(90, 200),
	(90, 110),
	(60, 120),
	(60, 35),
	(60, 240);

INSERT INTO fitness_workout_routine(routine_id, plan_id) VALUES 
	(1, 1),
	(1, 2),
	(2, 3),
	(2, 4),
	(3, 7),
	(3, 8),
	(4, 9),
	(5, 2),
	(5, 3),
	(6, 8),
	(7, 3),
	(8, 4),
	(9, 7),
	(10, 2);

INSERT INTO diet_plan(diet_id, `meals/day`) VALUES
	(1, 3),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 3),
	(6, 3),
	(7, 2),
	(8, 3),
	(9, 3),
	(10, 4);


INSERT INTO fitness_diet_plan(diet_id, plan_id) VALUES 
	(1,1),
	(1,2),
	(2,2),
	(2,3),
	(3,3),
	(4,4),
	(5,7),
	(6,8),
	(7,2),
	(8,6),
	(9,4),
	(9,2),
	(10,8),
	(10,2);


INSERT INTO exercise (sets, name) VALUES
	(4, 'Dumbbell Pullover'),
	(4, 'Kettlebell Rows'),
	(3, 'Pushups'),
	(4, 'Pullups'),
	(5, 'Bulgarian Split Squats'),
	(4, 'Romanian Deadlift'),
	(4, 'Plank'),
	(3, 'Bench Press'),
	(3, 'Overhead Press'),
	(4, 'Military Press');
	

INSERT INTO routine_exercise(exercise_id, routine_id) VALUES
	(5, 1),
	(4, 1),
	(2, 2),
	(3, 2),
	(4, 3),
	(9, 3),
	(8, 4),
	(7, 4),
	(7, 5),
	(5, 5), 
	(5, 6),
	(8, 6),
	(10, 7),
	(7, 7),
	(1, 8),
	(6, 8),
	(10, 9),
	(4, 9),
	(5, 10),
	(4, 10);

INSERT INTO exercise_muscle_group (exercise_id, muscle_name) VALUES 
	(1, 'Upper Chest'),
	(1, 'Lower Chest'), 
	(2, 'Quads'),
	(3, 'Lats'),
	(4, 'Calves'),
	(5, 'Abdominals'),
	(5, 'Biceps'),
	(6, 'Triceps'),
	(7, 'Deltoids'),
	(8, 'Shoulders'),
	(9, 'Lower Back'),
	(10, 'Legs');

INSERT INTO meals(meal_name, meal_protein, meal_carbohydrates, meal_fat) VALUES 
	('Rajma Rice', 20, 10, 20),
	('Chole Rice', 20, 30, 10),
	('White Pasta', 50, 20, 100),
	('Chicken Rice', 90, 10, 10),
	('Broccoli Stew', 80, 20, 10),
	('Omelette', 20, 5, 1),
	('Bread Jam Sandwich', 40, 10, 30),
	('Bread Butter', 20, 10, 30),
	('Vegetable Soup', 30, 20, 30),
	('Egg Rice', 40, 10, 10);


INSERT INTO diet_meal_plan(meal_id, diet_id) VALUES
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 3),
	(3, 3),
	(6, 4),
	(8, 4),
	(7, 5),
	(5, 5),
	(7, 6), 
	(8, 6),
	(9, 7),
	(8, 7),
	(8, 8), 
	(6, 8),
	(1, 9),
	(2, 9),
	(3, 10),
	(10, 10);


INSERT INTO supplement_plan(supplement_id, supplement_name, dosage_per_day_grams) VALUES
	(1, 'Vitamin B3', 10),
	(2, 'Vitamin A', 20),
	(3, 'Beta Alanine', 40),
	(4, 'Creatinine', 10),
	(5, 'Keratin', 5),
	(6, 'Vitamin D', 10),
	(7, 'Vitamin C', 30),
	(8, 'Creatine', 15),
	(9, 'Vitamin E', 10),
	(10, 'Calcium', 20);


INSERT INTO diet_supplement_needs(supplement_id, diet_id) VALUES
	(5, 1),
	(6, 1),
	(1, 2),
	(2, 2),
	(3, 3),
	(2, 3),
	(4, 4),
	(5, 4),
	(7, 5),
	(1, 5),
	(6, 6),
	(7, 6),
	(8, 7),
	(9, 7),
	(10, 8),
	(2, 8),
	(9, 9),
	(10, 10);