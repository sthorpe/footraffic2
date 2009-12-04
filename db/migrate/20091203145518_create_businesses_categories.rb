class CreateBusinessesCategories < ActiveRecord::Migration
  def self.up
    create_table :businesses_categories, :force => true do |t|
      t.integer :business_id
      t.integer :category_id
    end
  end

  def self.down
    drop_table :businesses_categories
  end
end
