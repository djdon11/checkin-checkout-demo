module ApplicationHelper

  def activity_action_url(activity_child)
    return undo_check_in_activity_child_path(id: activity_child.id), "list-group-item-success"  if activity_child.check_out.present?   

    return set_check_out_activity_child_path(id: activity_child.id), "list-group-item-info"  if activity_child.check_in.present?

    [set_check_in_activity_child_path(id: activity_child.id), "list-group-item-danger" ]
  end


end
