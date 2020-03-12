class ActivityLogsController < ApplicationController
  before_action :authenticate_user!

  def index
    if user_signed_in?
      @activity_logs = ActivityLog.where(user_id: current_user.id)
    else
      nil
    end
  end

  def show
    @activity_log = ActivityLog.find(params[:id])
  end

  def new
    @activity_log = ActivityLog.new
  end

  def edit
    @activity_log = ActivityLog.find(params[:id])
  end

  def create
    @activity_log = ActivityLog.new(activity_log_params)
    @activity_log.user_id = current_user.id
    if @activity_log.save
      redirect_to @activity_log
    else
      render 'new'
    end
  end

  def update
    @activity_log = ActivityLog.find(params[:id])

    if @activity_log.update(activity_log_params)
      redirect_to @activity_log
    else
      render 'edit'
    end
  end

  def destroy
    @activity_log = ActivityLog.find(params[:id])
    @activity_log.destroy

    redirect_to activity_logs_path
  end


  private
    def activity_log_params
      params.require(:activity_log).permit(:date, :duration, :activity_id, :user_id)
    end
end
