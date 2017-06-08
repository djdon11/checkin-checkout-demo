module ApplicationHelper

  def child_status(activity_child)
    if activity_child.check_in.present? && activity_child.check_out.present?

    elsif activity_child.check_out.present?

    elsif activity_child.check_in.present?    
      
    end
  end

end
