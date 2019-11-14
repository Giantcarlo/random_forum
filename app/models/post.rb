class Post < ApplicationRecord
  belongs_to :user
  has_many :join_table_post_categories
  has_many :categories, through: :join_table_post_categories
end
