class Step < ActiveRecord::Base
  belongs_to :tour
  has_many :photos
  has_many :locations
end
