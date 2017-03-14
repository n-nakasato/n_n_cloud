class CreateGraphs < ActiveRecord::Migration[5.0]
  def change
    create_table :graphs do |t|
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
