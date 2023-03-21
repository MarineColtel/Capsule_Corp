class AddDescriptionToCapsules < ActiveRecord::Migration[7.0]
  def change
    add_column :capsules, :description, :text
  end
end
