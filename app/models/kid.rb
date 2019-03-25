class Kid < ApplicationRecord
  has_many :users, through: :fams
  has_many :events
  belongs_to :fam

  validates :name, presence: true

  mount_uploader :photo, PhotoUploader
end
