class Camp < ActiveRecord::Base
    has_many :students
    validates :branch, :street, :city, presence: true
    validates :state, length: { is: 2 }
end
