class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable

  has_many :products
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def is_admin?
    self.is_a?(Admin)
  end

  def is_publisher?
    self.is_a?(Publisher)
  end

end
