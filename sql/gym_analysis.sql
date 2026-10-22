
-- Gym Performance Analytics

-- 1. Sessions by workout type
SELECT
    workout_type,
    COUNT(*) AS total_sessions,
    ROUND(AVG(duration_min), 1) AS avg_duration_min
FROM workouts
GROUP BY workout_type
ORDER BY total_sessions DESC;

-- 2. Training volume by muscle group
SELECT
    muscle_group,
    SUM(weight_kg * sets * reps) AS total_volume
FROM workouts
GROUP BY muscle_group
ORDER BY total_volume DESC;

-- 3. Five longest workout sessions
SELECT
    date,
    workout_type,
    duration_min
FROM workouts
ORDER BY duration_min DESC
LIMIT 5;
