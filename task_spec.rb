require 'rspec'
require_relative "task"

# : As a developer, I can create a Task.
describe Task do   #task
  it "is a thing" do    #it exists
   expect{Task.new}.to_not raise_error  #should run without failure
  end

  it "has a title" do
   a_task = Task.new #make a new instance of task
   expect(a_task.title).to be_a String
   expect(a_task.title).to eq "Things To Accomplish"  #name of the task list
 end

 # As a developer, I can give a Task a description and retrieve it.
 it "is a list of things to do" do

   #make a new instance of task
   a_task = Task.new
   expect(a_task.description).to be_a String
   expect(a_task.description).to eq "What we need to get done"
 end

 # : As a developer, I can mark a Task done.
 it "has been not completed" do

   #make a new instance of task
   a_task = Task.new

   #task has not been completed
   expect(a_task.complete).to eq false
 end

#what is the task and is it done
 it "returns features of task, shows status" do
   a_task = Task.new
   a_task.title = "Wash car"
   a_task.description = "Take care to car wash"

   #task has now been completed
   a_task.task_done
   expect(a_task.task_done?).to eq true

   b_task = Task.new
   b_task.title = "Brush teeth"
   b_task.description = "Use a tootbrush with tootpaste"

   #makes task done? equal to true
   b_task.task_done
   expect(b_task.task_done?).to eq true

   #makes task_done? false
   b_task.task_not_done
   expect(b_task.task_done?).to eq false
 end

end #end of Task describe
