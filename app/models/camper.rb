class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true
    validates :age, numericality: { greater_than_or_equal_to: 8, less_than_or_equal_to: 18}
    validates :time, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 23}
end
