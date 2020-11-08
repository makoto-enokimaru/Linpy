class Group < ApplicationRecord
    has_many :user
    has_many :event
end
