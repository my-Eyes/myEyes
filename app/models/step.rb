class Step < ActiveRecord::Base
  belongs_to :tour
  has_one :photo
  has_one :location
end
