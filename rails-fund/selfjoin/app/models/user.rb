class User < ActiveRecord::Base
    has_many :friendships, foreign_key :user_id, class_name: "Friend"
    has_many :friends, through :friendships, source :friend
end
