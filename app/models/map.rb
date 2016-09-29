class Map < ApplicationRecord
  belongs_to :user, foreign_key: :creator_id
  belongs_to :journey
end
