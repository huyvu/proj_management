class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :due_date
      t.references :member

      t.timestamps
    end
    add_index :tasks, :member_id
  end
end
