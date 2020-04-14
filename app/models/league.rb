class League < ApplicationRecord
    has_many :teams, dependent: :destroy
    has_many :matchs
end
