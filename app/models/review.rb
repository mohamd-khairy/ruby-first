class Review < ApplicationRecord
    belongs_to :user
    belongs_to :movies, optional: true
end
