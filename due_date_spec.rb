require 'rspec'
require_relative 'task'
require 'date'
require_relative 'due_date'


#Story: As a developer, I can create a DueDateTask, which is-a Task that has-a due date.
describe DueDateTask do
  it "is a thing" do
    expect{DueDateTask.new(10,19,2016,"shower","your body")}.to_not raise_error  #should run without failure
  end

   #setting due date, label and value
  it "has a due date" do
    due_date_task = DueDateTask.new(10, 19, 2016,"eat", "food")
    # the_date = Date.new(2016, 11, 06)

    #should equal the value we passed in
    expect(due_date_task.year).to eq 2016

    #should equal the value we passed in
    expect(due_date_task.day).to eq 19

    #should equal the value we passed in
    expect(due_date_task.month).to eq 10
  end

  #As a developer, I can print an item with a due date with labels and values.
  it "can print task due date with labels and values" do

    #due date task now has these labels and values
    due_date_task = DueDateTask.new(10,19,2016, "Wash Car", "Use the hose!")
    #title should have value(wash car) we passed in to the argument
    expect(due_date_task.title).to eq "Wash Car"

    #description should have value(use the hose)
    expect(due_date_task.description).to eq "Use the hose!"

    #when calling to_s on due_date_task it should return all of the labels and values as one string.
    expect(due_date_task.to_s).to eq "Title: Wash Car, Description: Use the hose! is due: Month: 10, Day: 19, Year: 2016"
  end


end # Ended the describe DueDateTask
