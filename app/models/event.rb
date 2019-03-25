class Event < ApplicationRecord
  belongs_to :kid
  belongs_to :user
  belongs_to :fam

  validates :title, presence: true
  validates :date, presence: true
  validates :place, presence: true
  validates :photo, presence: true
  validates :description, presence: true

  mount_uploader :photo, PhotoUploader
end
