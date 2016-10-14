class TaskList

  def initialize
   @my_list = [] #empty array that we can shovel into later
   @due_date_task_list = []
   @due_today_list = []
   @completed_items = []
   @uncompleted_items = []
  end

  #show us the array of all tasks
  def add_to_my_list(task)
   @my_list << task
  end

 def my_list   #is an array
   @my_list
 end

 def completed_items
   # go through each element in the array
   @my_list.each do |element|

      #check if the task is done
     if element.task_done? == true

       #add task done elements to the completed array
        @completed_items << element
     end
   end
   @completed_items
 end


  def uncompleted_items
    #go through each element in the array to look for uncompleted tasks
    @my_list.each do |element|

      #checks if task is incomplete
      if element.task_done? == false

        #add unfinished tasks to the array
        @uncompleted_items << element
      end
   end
   @uncompleted_items
 end

  def add_due_date_task task
    @due_date_task_list << task
  end

  def due_date_task_list
    @due_date_task_list
  end

  def add_due_today_list due_date_task
   @due_today_list << due_date_task
 end

 def due_today_list
   @due_today_list
 end

end #end of Class
