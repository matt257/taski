class AddTaskRefToTubes < ActiveRecord::Migration[7.0]
  def change
    add_reference :tubes, :task, null: false, foreign_key: true
  end
end
