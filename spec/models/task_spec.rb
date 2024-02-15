require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @task = FactoryBot.build(:task)
  end

  describe 'タスク投稿機能' do
    context 'タスクが投稿できるとき' do
      it 'contentが存在すれば登録できる' do
        expect(@task).to be_valid
      end
    end
    context 'タスクが投稿できないとき' do
      it 'contentが空だと投稿できない' do
        @task.content = ''
        @task.valid?
        expect(@task.errors.full_messages).to include("タスクを入力してください")
      end
      it 'Userが紐づいていないときは投稿できない' do
        @task.user = nil
        @task.valid?
        expect(@task.errors.full_messages).to include('ユーザーを入力してください')
      end
    end
  end
end
