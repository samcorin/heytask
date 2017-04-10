class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.references :services, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
