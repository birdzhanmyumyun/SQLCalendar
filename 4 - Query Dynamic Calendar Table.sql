SELECT
	Date,
	Day,
	DaySuffix,
	WeekDay,
	WeekDayName,
	IsWeekend,
	WeekOfMonth,
	Month,
	MonthName,
	MonthNameShort,
	Quarter,
	QuarterName,
	Year,
	MonthYear,
--Add offsets 
	YearOffset		  = [Year] - YEAR(GETDATE()), -- (year - this year)
	QuarterOffset	  = [Quarter] - DATEPART(QUARTER, GETDATE()), -- (quarter - this quarter)
	MonthOffset		  = [Month] - DATEPART(MONTH, GETDATE()), -- (month - this month)
	WeekOffset		  = [WeekOfYear] - DATEPART(WEEK, GETDATE()), -- (week - this week)
	DayOfWeekOffset	  = [Weekday] - DATEPART(WEEKDAY, GETDATE()) -- (weekday - this weekday)
FROM Calendar
WHERE [Year] - YEAR(GETDATE()) = 0
OR [Year] - YEAR(GETDATE()) = -1