require_relative 'project2'
RSpec.describe Project2 do
  before(:each) do
    @project2 = Project2.new
    @project2.name = "Name"
    @project2.description = "Description"
  end
  it "has a getter and setter for name attribute" do
    expect(@project2.name).to eq("Name")
  end
  it "has a getter and setter for the description attribute" do
    expect(@project2.description).to eq("Description")
  end
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project2.elevator_pitch).to eq("Name, Description")
  end
end