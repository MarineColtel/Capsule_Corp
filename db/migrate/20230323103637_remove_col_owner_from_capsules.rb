class RemoveColOwnerFromCapsules < ActiveRecord::Migration[7.0]
  def change
    remove_column :capsules, :owner
  end
end
