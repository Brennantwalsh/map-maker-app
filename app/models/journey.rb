class Journey < ApplicationRecord
  belongs_to :user
  has_many :maps
end
