class AddUserToCapsules < ActiveRecord::Migration[7.0]
  def change
    add_reference :capsules, :user, null: true, foreign_key: true
  end
end
