#Timecop ***Time***.new
![enter image description here](http://cdn1.sciencefiction.com/wp-content/uploads/2013/05/Timecop.jpg)

A morning peep lecture for the September and October cohorts

    Time.new
    Time.year
    Time.month
    Time.hour
    Time.second
    Time.new.to_a
    nicetime = Time.new
    nicetime.strftime("%A the %-d of %B %Y")
    nicetime.strftime("%r")
    nicetime.strftime("%R")
    nicetime.strftime("%x")
    
 
Add to a time

    time = Time.new
    time + (60*60*24*7)
    time + (seconds,minutes,hours,days)
 
The DateTime object

require 'date'

    DateTime.new(y,m,d,h,m,s)
    Time.new.to_date

The TimeDifference gem

    TimeDifference.between(time1,time2).in_seconds
    TimeDifference.between(time1,time2).in_years
    TimeDifference.between(time1,time2).in_each_component
    TimeDifference.between(time1,time2).in_general

Check out our tests...