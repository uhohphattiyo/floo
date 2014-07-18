class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    
   validates :birthdate, presence: true
   
   
   ## validates :name, presence: true - fix bug - showing name as blank in form

end
