class CreateListingCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :listing_categories do |t|
      t.string :name, null: false
      t.text :description
      t.integer :display_order, default: 1, null: false

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
