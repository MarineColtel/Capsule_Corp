class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :capsule, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.references :review, null: false, foreign_key: true
      t.float :total_price

      t.timestamps
    end
  end
end
