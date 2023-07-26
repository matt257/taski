class AddWorkersToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :workers, null: false, foreign_key: true
  end
end
