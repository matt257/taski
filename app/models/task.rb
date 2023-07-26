class Task < ApplicationRecord
    belongs_to :user
    has_one :tube
    has_many :workers

    validates :name, presence: true
    validates :description, presence: true
    validates :priority, presence: true, numericality: { 
        greater_than: 0,
        less_than_or_equal_to: 101,
        only_integer: true
    }
end
