class AddSlugToListingCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :listing_categories, :slug, :string
    add_index :listing_categories, :slug, unique: true
  end
end
