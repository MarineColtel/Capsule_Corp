class CreateCapsules < ActiveRecord::Migration[7.0]
  def change
    create_table :capsules do |t|
      t.string :name
      t.integer :year
      t.text :advices
      t.decimal :price_per_day
      t.text :photos

      t.timestamps
    end
  end
end
