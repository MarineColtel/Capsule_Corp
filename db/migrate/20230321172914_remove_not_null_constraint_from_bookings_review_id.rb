class RemoveNotNullConstraintFromBookingsReviewId < ActiveRecord::Migration[7.0]
  def change
    change_column :bookings, :review_id, :bigint, null: true
  end
end
