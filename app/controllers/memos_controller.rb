class MemosController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @memo = Memo.create(memo_params)
    if @memo.save
      redirect_to task_path(@memo.task)
    else
      @task = @memo.task
      @memos = @task.memos
      render 'tasks/show', status: :unprocessable_entity
    end
  end

  def destroy
    memo = Memo.find(params[:id])
    if memo.user != current_user
      @task = Task.find(params[:id])
      render 'tasks/show'
    else
      memo.destroy
    end
    redirect_to task_path(params[:id])
  end

  private

  def memo_params
    params.require(:memo).permit(:memo).merge(user_id: current_user.id, task_id: params[:task_id])
  end
end
