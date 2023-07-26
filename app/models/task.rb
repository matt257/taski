class Task < ApplicationRecord
    belongs_to :tube
    has_one :worker
end
