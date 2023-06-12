class Building < ApplicationRecord
  belongs_to :user
  has_many :user
  has_many  :floor
end
