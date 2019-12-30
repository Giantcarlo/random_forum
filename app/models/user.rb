class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validate :username_different_from_password

  has_many :posts


  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Please enter valid e-mail address" }
  validates :username,
    presence: true,
    uniqueness: true

  def username_different_from_password
    if username == password 
      errors.add(:username, "Username cannot be the same as password")
    end
  end
end
