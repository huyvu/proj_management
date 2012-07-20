class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :project

      t.timestamps
    end
    add_index :teams, :project_id
  end
end
