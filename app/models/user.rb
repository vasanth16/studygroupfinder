class User < ApplicationRecord
  has_many :participations
  has_many :groups, through: :participation
end
