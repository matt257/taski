class Task < ApplicationRecord
    belongs_to :tube
    has_one :worker

    validates :name, presence: true
    validates :description, presence: true
    validates :priority


    private

    def set_defaults
        @priority = 0
        @description = ""
        @name = ""
    end
end
