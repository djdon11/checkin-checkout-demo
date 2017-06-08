class ActivityChild < ApplicationRecord
  belongs_to :child
  belongs_to :activity

  def self.check_in_childrens_counts
    self.where("check_in IS NOT NULL").count
  end

end
