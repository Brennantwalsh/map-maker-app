class User < ApplicationRecord
  has_secure_password
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_many :maps, foreign_key: :creator_id
  has_many :journeys, foreign_key: :dm_id
  has_many :participations
  has_many :participated_journeys, through: :participations, source: :journey
  has_many :messages

  validates :email, presence: true
  validates :email, uniqueness: true
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :email, format: { with: /\A\w+@\w+\.\w{2,3}\z/i, message: "Not Valid" }
  validates :username, format: { with: /\w+/i}
end
