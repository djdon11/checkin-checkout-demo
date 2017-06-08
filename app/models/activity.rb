class Activity < ApplicationRecord
  has_many :activity_children, dependent: :destroy
  has_many :children, through: :activity_children


  def check_in_childrens_counts
    self.children.where("check_in IS NOT NULL").count
  end

end
