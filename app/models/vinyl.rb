class Vinyl < ApplicationRecord
    belongs_to :user
    belongs_to :post
    belongs_to :genre
    
end
