class Worker < ApplicationRecord
    belongs_to :user
    has_many :tubes
    has_many :tasks, through :tubes
end
