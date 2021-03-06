class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :places, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :photos, dependent: :destroy
end
