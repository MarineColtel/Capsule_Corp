class RenameUserIdToOwnerIdInCapsules < ActiveRecord::Migration[7.0]
  def change
    rename_column :capsules, :user_id, :owner
  end
end
