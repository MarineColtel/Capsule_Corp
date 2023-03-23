class AddRefToCapsules < ActiveRecord::Migration[7.0]
  def change
    add_reference :capsules, :user
  end
end
