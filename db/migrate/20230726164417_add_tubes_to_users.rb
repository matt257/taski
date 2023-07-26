class AddTubesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :tubes, null: false, foreign_key: true
  end
end
