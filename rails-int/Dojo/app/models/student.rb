class Student < ActiveRecord::Base
  belongs_to :camp, required: true

  validates :first_name, :last_name, presence: true, {minimum: 2}
  validates :email, presence: true
end
