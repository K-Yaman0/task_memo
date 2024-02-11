class TasksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_task, only: [:edit, :update, :destroy, :show]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    return if user_signed_in? && current_user.id == @task.user.id

    redirect_to action: :index
  end

  def update
    if @task.update(task_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @task.user != current_user
      redirect_to root_path
    else
      @task.destroy
    end
    redirect_to root_path
  end

  def show
    @memo = Memo.new
    @memos = @task.memos.includes(:user)
  end

  private

  def task_params
    params.require(:task).permit(:content).merge(user_id: current_user.id)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
