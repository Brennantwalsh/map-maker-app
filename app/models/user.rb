class User < ApplicationRecord
  has_secure_password
  has_many :maps, foreign_key: :creator_id
  has_many :journeys, foreign_key: :dm_id
end
