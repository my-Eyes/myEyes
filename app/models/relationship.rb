class Relationship < ActiveRecord::Base
  belongs_to :local, class_name: "User"
  belongs_to :visitor, class_name: "User"
end
