class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, 
  presence: {message: "Comment must have content"}
end
