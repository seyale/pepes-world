class Fam < ApplicationRecord
  belongs_to :users
  belongs_to :kids
  belongs_to :events
end
