class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :photo
      t.string :price

      t.timestamps
    end
  end
end
