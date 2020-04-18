class Post < ApplicationRecord
    belongs_to :user 
    has_many :comments
    has_many :users, through: :comments
    has_many :vinyl
    has_many :genres
    has_many :artists
end
