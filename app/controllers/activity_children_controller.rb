class ActivityChildrenController < ApplicationController
  before_action :find_activity_child


  def set_check_in
    @activity_child.update_attributes(check_in: DateTime.now)
  end

  def set_check_out
    @activity_child.update_attributes(check_out: DateTime.now)
    render :set_check_in
  end

  def undo_check_in
    @activity_child.update_attributes(check_in: nil, check_out: nil)
    render :set_check_in
  end


  private

  def find_activity_child
    @activity_child = ActivityChild.find(params[:id])
    @activity = @activity_child.activity
  end
end
