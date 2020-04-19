class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :users, through: :comments
    has_many :vinyls
    accepts_nested_attributes_for :vinyls
end
