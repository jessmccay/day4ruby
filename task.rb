class Task    #class name
  my_task = Task.new

 #
 def initialize
   @title = "Things To Accomplish" #set title
   @description = "What we need to get done"  #set
   @complete = false  #set is the tast completed?
 end

 def title
   @title   #get title
 end

 #returns description which is a string
 def description
   @description
 end

 #returns boolean / true for completed / false for not completed
 def complete
   @complete
 end

 #changes complete to true if task is done
 def task_done
   @complete = true
 end

 #changes complete to false if task not done
 def task_not_done
   @complete = false
 end

 #checks to see if the tast is done or not
 def task_done?
   @complete    #get check if the task is done
 end

#takes in argument for title so it can be given a new title
 def title=(title)
   @title = title
 end

#takes in argument for description so it can be given a new description
 def description=(description)
   @description = description
 end

end #this is the end of the class
