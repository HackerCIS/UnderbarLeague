class Match < ApplicationRecord
    belongs_to :league
    
    has_one_attached :home_logo
    has_one_attached :away_logo
end

