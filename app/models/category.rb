class Category < ApplicationRecord
  has_many :join_table_post_categories
  has_many :posts, through: :join_table_post_categories
end
