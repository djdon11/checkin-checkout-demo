class Child < ApplicationRecord
  has_many :activity_children, dependent: :destroy
  has_many :activities, through: :activity_children
end
