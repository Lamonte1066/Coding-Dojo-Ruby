class Message < ActiveRecord::Base
    belongs_to :post
    has_many :comments
    validates :author, presence: true
    validates :message, length: { minimum: 15}
end
