class DueDateTask < Task

  #set to take in arguments
  def initialize month, day, year, title, description
    # super
    #set
    @month = month
    @day = day
    @year = year
    @title = title
    @description = description
 end

  #returns month
  def month
    @month
  end

  #returns the day
  def day
    @day
  end

  #returns the year
  def year
    @year
  end

  #interpolates our Labels and Values to one single string
  def to_s
   "Title: #{@title}, Description: #{@description} is due: Month: #{@month}, Day: #{@day}, Year: #{@year}"

  end

  


  #TODO: make a method, called to_s, that prints out "Month: 10, Day: 11, Year: 2016" (as a string) when given the a DueDateTask with a DueDate of 10, 11, 2016
  #TODO: When that works, add "Title: Dishes, Description: Wash my filthy stuff, Day:..., Month:..., Year:..." to the string from the parent class Task

end#end of Class DueDateTask
