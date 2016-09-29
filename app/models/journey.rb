class Journey < ApplicationRecord
  belongs_to :user, foreign_key: :dm_id
  has_many :maps
end
