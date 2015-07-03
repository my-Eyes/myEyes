class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tours, foreign_key: 'local_id'

  has_many :local_relationships, class_name: 'Relationship', foreign_key: 'visitor_id'
  has_many :visitor_relationships, class_name: 'Relationship', foreign_key: 'local_id'

  has_many :locals, through: :local_relationships
  has_many :visitors, through: :visitor_relationships
  has_many :saved_tours, foreign_key: 'visitor_id'
  has_many :favorite_tours, foreign_key: 'visitor_id'

end
