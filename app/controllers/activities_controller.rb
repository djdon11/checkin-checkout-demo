class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show]
  
  def index
    @activities = Activity.all
  end

  def show
    @activity_children = @activity.activity_children.includes(:child)
  end

  def all_activities_children
    @activity_children = ActivityChild.includes(:child)
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
