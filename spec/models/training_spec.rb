require 'rails_helper'

RSpec.describe Training, type: :model do
  before do
    @training = FactoryBot.build(:training)
  end
  
  describe 'トレーニング内容記録' do
    context 'トレーニングの内容を記録できる時' do
      it '入力項目が全て入力できている時' do
        expect(@training).to be_valid
      end
    end

    context 'トレーニングの内容を記録できない時' do
      it 'タイトルが空の場合' do
        @training.title = ''
        @training.valid?
        expect(@training.errors.full_messages).to include("Title can't be blank")
      end
      it 'トレーニング内容が空の場合' do
        @training.content = ''
        @training.valid?
        expect(@training.errors.full_messages).to include("Content can't be blank")
      end
      it 'トレーニングをした日が空の場合' do
        @training.start_time = ''
        @training.valid?
        expect(@training.errors.full_messages).to include("Start time can't be blank")
      end
      it 'ユーザー情報がない場合' do
        @training.user = nil
        @training.valid?
        expect(@training.errors.full_messages).to include('User must exist')
      end
    end
  end
end
