class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :kids, through: :fams
  belongs_to :fam

  validates :first_name, presence: true
  validates :role, presence: true
  validates :email, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader
end
