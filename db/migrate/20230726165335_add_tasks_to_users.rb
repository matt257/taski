class AddTasksToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :tasks, null: false, foreign_key: true
  end
end
