class Team < ApplicationRecord
    belongs_to :league
    has_one_attached :logoimg
    has_many :team_members
    has_many :user, through: :team_members
end
