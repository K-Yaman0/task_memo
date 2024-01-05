class MemosController < ApplicationController
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

  private

  def memo_params
    params.require(:memo).permit(:memo).merge(user_id: current_user.id, task_id: params[:task_id])
  end
end
