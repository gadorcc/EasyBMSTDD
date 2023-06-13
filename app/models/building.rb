class Building < ApplicationRecord
  belongs_to :user
  has_many :user
  has_many  :floor
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
