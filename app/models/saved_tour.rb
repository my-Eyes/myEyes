class SavedTour < ActiveRecord::Base
  belongs_to :visitor, class_name: 'User'
  belongs_to :tour
end
