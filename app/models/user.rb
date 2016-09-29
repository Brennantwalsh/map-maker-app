class User < ApplicationRecord
  has_secure_password
  has_many :maps
  has_many :journeys, foreign_key: :dm_id
end
