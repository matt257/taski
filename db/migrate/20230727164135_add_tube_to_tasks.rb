class AddTubeToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :tube, null: false, foreign_key: true
  end
end
