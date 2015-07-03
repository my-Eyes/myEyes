class Tour < ActiveRecord::Base
  has_many :steps
  belongs_to :local, class_name: "User"
  has_many :visitors, class_name: "User"
  belongs_to :interest
  has_many :saved_tours
  has_many :favorite_tours
end
