class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :content
      t.string :image_url
      t.datetime :expired_at
      t.datetime :approved_at
      t.boolean :is_promoted, default: false, null: false
      t.integer :price, default: 0, null: false
      t.integer :status, default: 0, null: false

      t.references :user, foreign_key: true
      t.references :listing_category, foreign_key: true

      t.timestamps
      t.datetime :deleted_at, index: true
    end
  end
end
