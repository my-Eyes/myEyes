class Tour < ActiveRecord::Base
  has_many :steps
  belongs_to :local, class_name: "User"
  has_many :visitors, class_name: "User"
  belongs_to :interest
end
