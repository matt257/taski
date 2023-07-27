class AddUserToTubes < ActiveRecord::Migration[7.0]
  def change
    add_reference :tubes, :user, null: false, foreign_key: true
  end
end
