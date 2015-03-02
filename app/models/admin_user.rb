class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_many :places
  has_many :cities
  has_many :kinds
  has_many :blogs
  has_many :posts, through: :blogs
  accepts_nested_attributes_for :blogs
end
