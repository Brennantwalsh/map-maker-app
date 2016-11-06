class User < ApplicationRecord
  has_secure_password
  has_many :maps, foreign_key: :creator_id
  has_many :journeys, foreign_key: :dm_id
  has_many :participations
  has_many :participated_journeys, through: :participations, source: :journey

  validates :email, presence: true
  validates :email, uniqueness: true

  validates :email, format: { with: /\w+@\w+\.\w{2,3}/i, message: "Not Valid" }
  validates :username, format: { with: /\w{3, 15}/, message: "must be between 3 and 15 characters in length"}
end
