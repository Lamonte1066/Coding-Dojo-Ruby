require_relative 'project'

RSpec.describe Project do
    before(:each) do
        # updated this block to create two projects
        @project1 = Project.new('Project 1', 'description 1', 'owner 1')
        @project2 = Project.new('Project 2', 'description 2', 'owner 2')
    end
    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name"
        expect(@project1.name).to eq ("Changed Name")
    end
    it 'has a getter and setter for owner attribute' do
        @project1.owner = "Owner Name"
        expect(@project1.owner).to eq ("Owner Name")
    end
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq ("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq ("Project 2, description 2")
  end

  it 'has a method tasks that returns the tasks for each project' do
    @project1.add_tasks("add task 1")
    expect(@project1.tasks).to eq (["add task 1"])
    @project2.add_tasks("add task 2")
    expect(@project2.tasks).to eq (["add task 2"])
  end

  it 'has a method add_tasks to push a single task to the tasks attribute' do
    expect(@project1.add_tasks("take out trash")).to eq (["take out trash"])
    expect(@project2.add_tasks("wash dishes")).to eq (["wash dishes"])
  end

  it 'has a method print_tasks that will print each task in the project' do
    expect(@project1.print_tasks).to eq ([])
  end

end