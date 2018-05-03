class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.text :description
      t.string :place
      t.datetime :date
      t.timestamps
    end
  end
end
