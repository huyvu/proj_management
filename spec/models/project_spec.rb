require 'spec_helper'

describe Project do

  before(:each) do
    @project = FactoryGirl.create(:project)
  end

  it "should not be valid without a name" do
      @project.name = nil
      @project.should_not be_valid
  end

  
  it "should not allow project name with more than 140 characters" do
    @project.name = "s" * 141
    @project.should_not be_valid
  end

   it "should not allow project description with more than 255 characters" do
    @project.description = "s" * 256
    @project.should_not be_valid
  end

  it "should not allow project with due_date is before start_date" do
    @project.due_date = "2012-07-19"
    @project.due_date < @project.start_date
    @project.should_not be_valid
  end


end
