class Step < ActiveRecord::Base
  belongs_to :tour
  has_one :photo
  has_one :location

  validates :photo_id, presence: true
  validates :location_id, presence: true
end
