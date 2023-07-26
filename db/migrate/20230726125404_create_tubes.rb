class CreateTubes < ActiveRecord::Migration[7.0]
  def change
    create_table :tubes do |t|

      t.timestamps
    end
  end
end
