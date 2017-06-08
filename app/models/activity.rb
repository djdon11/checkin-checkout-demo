class Activity < ApplicationRecord
  has_many :activity_children, dependent: :destroy
  has_many :children, through: :activity_children

end
