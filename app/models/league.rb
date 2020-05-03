class League < ApplicationRecord
    belongs_to :user
    
    has_many :teams, dependent: :destroy
    has_many :matchs
    has_many :joinleagues
    has_many :users, through: :joinleagues
end
