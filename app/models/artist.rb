class Artist < ApplicationRecord
    has_many :vinyl
    belongs_to :post
end
