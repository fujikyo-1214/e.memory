require 'rails_helper'

RSpec.describe Eat, type: :model do
  before do
    @eat = FactoryBot.build(:eat)
  end

  describe '投稿機能' do
    context '投稿できる時' do
      it 'title,text,imageが存在すれば投稿できる' do
        expect(@eat).to be_valid
      end
    end
    context '投稿できない時' do
      it 'titleが空では投稿できない' do
        @eat.title = nil
        @eat.valid?
        expect(@eat.errors.full_messages).to include("Title can't be blank")
      end
      it "textが空では投稿できない" do
        @eat.text = nil
        @eat.valid?
        expect(@eat.errors.full_messages).to include("Text can't be blank")
      end
      it "imageが空では登録できない" do
        @eat.image = nil
        @eat.valid?
        expect(@eat.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
