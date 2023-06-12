class Floor < ApplicationRecord
  belongs_to :building
  has_many :floor
end
