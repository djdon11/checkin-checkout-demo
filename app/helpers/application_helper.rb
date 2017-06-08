module ApplicationHelper

  # To change the action url and class of a checkin entry
  def activity_action_url(activity_child)
    return undo_check_in_activity_child_path(id: activity_child.id), "list-group-item-success"  if activity_child.check_out.present? 

    return set_check_out_activity_child_path(id: activity_child.id), "list-group-item-info"  if activity_child.check_in.present?

    return set_check_in_activity_child_path(id: activity_child.id), "list-group-item-danger"
  end

  # To show the time from datetime entry
  def std_time(ac)
    return nil if ac.blank?
    ac.strftime("%H:%M") 
  end

  # Counts for checkins (for particular activity)
  def activity_checkins(activity)
    return nil if activity.blank?
    "#{activity.check_in_childrens_counts}/ #{activity.children.count}"
  end

  # Counts for checkins (for all activities)
  def all_activity_checkins
    "#{ActivityChild.check_in_childrens_counts}/ #{ActivityChild.count}"
  end


end
