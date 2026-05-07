-- Basic metrics

-- Total number of transactions
SELECT COUNT(*) AS total_rows
FROM tips;

-- Total revenue
SELECT SUM(total_bill) AS total_revenue
FROM tips;

-- Average bill
SELECT AVG(total_bill) AS avg_bill
FROM tips;


-- Analysis by categories

-- Revenue by day
SELECT day, SUM(total_bill) AS revenue
FROM tips
GROUP BY day
ORDER BY revenue DESC;

-- Average bill by time
SELECT time, AVG(total_bill) AS avg_bill
FROM tips
GROUP BY time;

-- Average tip by smoker status
SELECT smoker, AVG(tip) AS avg_tip
FROM tips
GROUP BY smoker;


-- Advanced analysis

-- Average tip percentage
SELECT 
    AVG(tip / total_bill) * 100 AS avg_tip_percentage
FROM tips;

-- Tip percentage by day
SELECT 
    day,
    AVG(tip / total_bill) * 100 AS avg_tip_percentage
FROM tips
GROUP BY day
ORDER BY avg_tip_percentage DESC;

-- Customer group size analysis
SELECT 
    size,
    AVG(total_bill) AS avg_bill,
    AVG(tip) AS avg_tip
FROM tips
GROUP BY size
ORDER BY size;

-- Revenue patterns by day and time
SELECT 
    day,
    time,
    AVG(total_bill) AS avg_bill
FROM tips
GROUP BY day, time
ORDER BY avg_bill DESC;
