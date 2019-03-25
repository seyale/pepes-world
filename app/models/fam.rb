class Fam < ApplicationRecord
  has_many :users, inverse_of: :fam
  accepts_nested_attributes_for :users

  has_many :kids
  has_many :events
end
