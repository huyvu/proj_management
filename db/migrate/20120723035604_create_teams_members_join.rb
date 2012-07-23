class CreateTeamsMembersJoin < ActiveRecord::Migration
  def up
  	create_table :members_teams, :id => false do |t|
  		t.integer :team_id
  		t.integer :member_id
  	end
  end

  def down
  	drop_table :members_teams
  end
end
