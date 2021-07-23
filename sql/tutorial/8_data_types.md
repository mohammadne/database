## INT
whole numbers
max is 4294967295

## DECIMAL(first, second)
fixed-point type and calculations are exact
first: total digits number
second: digits after decimal

## FLOAT & DOUBLE
floating-point type and calculations are approximate
float => 4 bytes => ~7 digits precisions
double => 8 bytes => ~15 digits precisions
<!-- 88.45 => 88.45 -->
<!-- 8877665544.33 => 8877670000 -->

## VARCHAR(length)
(1-255 characters)
the storage size is based on given text

## CHAR(length)
fixed length data type (fixed storage size)
fewer: fill the remaining with white spaces
more: trunicate others
it's faster than VARCHAR

## TEXT

## DATE
it stores a date in 'YYYY-MM-DD' format

## TIME
it stores a time in 'HH:MM:SS' format

## DATETIME
values with a date and time
it stores a time in 'YYYY-MM-DD HH:MM:SS' format

### CURDATE() : gives current date
### CURTIME() : gives current time
### NOW() : gives current datetime

### DAY(date_format_or_datetime) : gives the day of date
### DAYNAME(date_format_or_datetime) : gives the day name of date
### MONTHNAME(date_format_or_datetime) : gives the day name of month
### DAYOFWEEK(date_format_or_datetime) : gives the day number of date in week
### DAYOFYEAR(date_format_or_datetime) : gives the day number of date in year
### DAYOFYEAR(not_date_format_or_datetime) : gives NULL

### HOUR(time_format_or_datetime) : gives hour number
### MINUTE(time_format_or_datetime) : gives hour number

### DATE_FORMAT(datetime, 'formatter') : formate dates

### DATEDIFF(datetime1, datetime2) : expr of days in between
### DATEADD(datetime, INTERVAL expr UNIT) : add expr unit to datetime
### datetime + INTERVAL expr UNIT : add expr unit to datetime
### DATESUB(datetime, INTERVAL expr UNIT) : subtract expr unit from datetime
### datetime - INTERVAL expr UNIT : subtract expr unit from datetime

## TIMESTAMPS
related to DATE and DATETIME but they have no limit.
has range from '1970-01-01' UTC to '2038-01-19 03:14:07' UTC
it occupy fewer storage space than DATETIME
