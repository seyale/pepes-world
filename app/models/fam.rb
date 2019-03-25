class Fam < ApplicationRecord
  has_many :users
  has_many :kids
  has_many :events
end
