class ChangePhotosToBeStringInCapsules < ActiveRecord::Migration[7.0]
  def change
    change_column :capsules, :photos, :string
  end
end
