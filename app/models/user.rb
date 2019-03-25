class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :kids, through: :fams
  belongs_to :fam, inverse_of: :users

  validates :first_name, presence: true
  validates :role, presence: true
  validates :email, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader

  before_create :create_fam_or_check_existing_fam

  def create_fam_or_check_existing_fam
  end
end
