class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_many :posts, through: :comments
    has_many :vinyls
    has_secure_password
end
