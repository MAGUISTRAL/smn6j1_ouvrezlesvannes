class User < ApplicationRecord

  has_many :attendances
  has_many :events, foreign_key: 'admin_id', class_name: "Event"


end
