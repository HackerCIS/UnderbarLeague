class League < ApplicationRecord
    belongs_to :user
    
    has_many :teams, dependent: :destroy
    has_many :matchs, dependent: :destroy
    has_many :joinleagues, dependent: :destroy
    has_many :users, through: :joinleagues
end
