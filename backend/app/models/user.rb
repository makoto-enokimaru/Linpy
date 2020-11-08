class User < ApplicationRecord
  belongs_to :group
  has_many :event
  has_many :comment
  has_many :response
  has_many :sumcomment
end
