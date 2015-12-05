DECLARE @FizzBuzzTable TABLE
(Number int, FizzBuzz varchar(10));
DECLARE @i int
SET @i = 1;
WHILE @i <= 100
BEGIN
 INSERT INTO @FizzBuzzTable
   (Number, FizzBuzz)
 SELECT @i, FizzBuzz = CASE WHEN @i % 3 = 0 AND @i % 5 = 0 THEN 'Fizz Buzz'
   WHEN @i % 3 = 0 THEN 'Fizz'
   WHEN @i % 5 = 0 THEN 'Buzz'
   ELSE CAST(@i AS varchar(3)) END
 SET @i += 1
END
SELECT Number, FizzBuzz FROM @FizzBuzzTable FBT
