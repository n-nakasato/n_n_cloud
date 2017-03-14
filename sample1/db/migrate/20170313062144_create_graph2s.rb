class CreateGraph2s < ActiveRecord::Migration[5.0]
  def change
    create_table :graph2s do |t|
      t.integer :time
      t.integer :temp
      t.integer :humi

      t.timestamps
    end
  end
end
