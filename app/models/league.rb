class League < ApplicationRecord
    belongs_to :user
    
    has_many :teams, dependent: :destroy
    has_many :matchs
end
