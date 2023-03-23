class AddOwnerToCapsule < ActiveRecord::Migration[7.0]
  def change
    add_reference :capsules, :user, foreign_key: true
  end
end
