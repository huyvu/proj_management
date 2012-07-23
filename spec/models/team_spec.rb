require 'spec_helper'

describe Team do
  

  let(:project) {FactoryGirl.create(:project)}
  before { @team = project.teams.build(name: "my team")}
  subject{ @team }
  
  it { should respond_to(:name)}
  it { should respond_to(:project_id)}
  it { should respond_to(:project)}
  its(:project) { should == project }
  
  it { should be_valid}

  describe "is invalid" do
	describe "when user_id is not present" do
	    before { @team.project_id = nil }
	    it{ should_not be_valid }
	end
  
	describe "with blank name" do
	    before{ @team.name = nil }
	    it{ should_not be_valid }
	end
  
	describe "name with more than 140 characters" do
	    before{ @team.name = "a"*141}
	    it{ should_not be_valid}
	end

  end
  
  
end
