class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :join_table_post_categories
  has_many :categories, through: :join_table_post_categories
  is_impressionable

  validates :title, 
    presence: {message: "Post must have title"},
    length: { in: 5..40, message: "Title must be between 5 and 40 characters" }
  validates :content, 
    presence: {message: "Post must have content"}
end
