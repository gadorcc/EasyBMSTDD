class Building < ApplicationRecord
  BTYPE = %w[home office factory restaurant hotel shop]

  belongs_to :user
  has_many :users
  has_many  :floor
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :building_type, inclusion: { in: BTYPE}
end
