class CreateListingCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :listing_categories do |t|
      t.string :name
      t.text :description
      t.integer :sort_order

      t.timestamps
    end
  end
end
