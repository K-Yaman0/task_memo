class CompletesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_complete

  def complete
    Complete.find_or_create_by(user_id: current_user.id, task_id: @task.id)
    redirect_to controller: :tasks, action: :index
  end

  def set_complete
    @task = Task.find(params[:id])
  end

end
