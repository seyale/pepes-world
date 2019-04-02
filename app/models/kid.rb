class Kid < ApplicationRecord
  has_many :users, through: :events
  has_many :events

  validates :name, presence: true

  mount_uploader :photo, PhotoUploader
end
