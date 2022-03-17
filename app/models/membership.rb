class Membership < ApplicationRecord
  belongs_to :client
  belongs_to :gym

  validates :client_id, uniqueness: { scope: :gym_id, message: "already has a membership at that gym" }
end
