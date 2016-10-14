require 'rspec'
require_relative 'task'
require_relative 'tasklist'
require_relative 'due_date'

#Story: As a developer, I can add all of my Tasks to a TaskList.
describe TaskList do
  it "is a thing" do
   expect{TaskList.new}.to_not raise_error  #should run without failure
  end


  it "has multiple tasks" do
   task_list = TaskList.new  #new instance of TaskList

   a_task = Task.new #new instance of Task

   b_task = Task.new #new instance of Task

   #a_task and b_task should be added to the my list
   task_list.add_to_my_list(a_task)
   task_list.add_to_my_list(b_task)

   # checking the task are within my list
   expect(task_list.my_list).to include a_task, b_task
  end


  # As a developer with a TaskList, I can get the completed items.
  it "shows completed list items" do

    #make a new instance
   a_task_list = TaskList.new
   #make a new task
   a_task = Task.new
   #mark task as done
   a_task.task_done

   #make a new task
   b_task = Task.new
   #mark task as done
   b_task.task_done

   #make a new task
   c_task = Task.new
   #mark task as not done
   c_task.task_not_done

   #add each task to the task list
   a_task_list.add_to_my_list(a_task)
   a_task_list.add_to_my_list(b_task)
   a_task_list.add_to_my_list(c_task)

  #  completed_items = []
  #  a_task_list.my_list.each do |element|
  #    if element.task_done? == true
  #       completed_items << element
  #    end
   #
  #  end

  # As a developer with a TaskList, I can get the incomplete items.
  expect(a_task_list.completed_items).to include a_task, b_task
  end

    it "shows not yet completed list items" do
     a_task_list = TaskList.new

     #make a new task
     a_task = Task.new
     #mark task as done
     a_task.task_done

     #make a new task
     b_task = Task.new
     #mark task as done
     b_task.task_done

     #make a new task
     c_task = Task.new
     #mark task as not done
     c_task.task_not_done

     #add lists to an array
     a_task_list.add_to_my_list(a_task)
     a_task_list.add_to_my_list(b_task)
     a_task_list.add_to_my_list(c_task)


     # uncompleted_items = []
    #  a_task_list.my_list.each do |element|
    #    if element.task_done? == false
    #      uncompleted_items << element
    #    end
    #   end

      #c_task is only task that should be added to incompleted list
      expect(a_task_list.uncompleted_items).to include c_task
  end


  it "can add items with due date to Tasklist" do
    tasklist = TaskList.new
    task = DueDateTask.new(10,19,2016, "Wash Car", "Use the hose!")
    # due_date_items << due_date_task
    tasklist.add_due_date_task task
    tasklist.due_date_task_list
    expect(tasklist.due_date_task_list).to include task
  end

  #As a developer with a TaskList, I can list all the not completed items that are due today.
 it "can list all the not completed items that are due today" do
   a_task = TaskList.new
   due_date_task = DueDateTask.new(10,14,2016,"Sleep", "Use the bed")
   a_task.add_due_today_list due_date_task
   a_task.due_today_list
   expect(a_task.due_today_list).to include due_date_task

 end


end# ended the describe
