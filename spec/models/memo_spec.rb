require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @memo = FactoryBot.build(:memo)
  end

  describe 'メモ投稿機能' do
    context 'メモ投稿できる時' do
      it 'memoが存在すれば投稿できる' do
        expect(@memo).to be_valid
      end
    end
    context 'メモ投稿できない時' do
      it 'memoが空では投稿できない' do
        @memo.memo = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("メモを入力してください")
      end
      it 'Userが紐づいていないときは投稿できない' do
        @memo.user = nil
        @memo.valid?
        expect(@memo.errors.full_messages).to include('ユーザーを入力してください')
      end
      it 'taskが紐づいていないときは投稿できない' do
        @memo.task = nil
        @memo.valid?
        expect(@memo.errors.full_messages).to include('タスクを入力してください')
      end
    end
  end
end
