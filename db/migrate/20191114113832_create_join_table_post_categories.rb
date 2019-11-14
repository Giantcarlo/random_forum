class CreateJoinTablePostCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_post_categories do |t|
      t.belongs_to :post, index: true
      t.belongs_to :category, index: true
      t.timestamps
    end
  end
end
