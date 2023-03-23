class AddStatuToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :statu, :string
  end
end
