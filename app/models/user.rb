class User < ApplicationRecord
    has_many :posts
    validates :username, presence: true, length: {minimum: 6, maximum: 20}
    validates :email, presence: true, length: {minimum: 10, maximum: 100}
    validates :first_name, presence: true, length: {minimum: 3, maximum: 20}
    validates :last_name, presence: true, length: {minimum: 3, maximum: 20}
end
