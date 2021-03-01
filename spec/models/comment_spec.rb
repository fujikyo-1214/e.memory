require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe "コメント機能" do
    context "コメントできる時" do
      it "textが存在すればコメントすることができる" do
      expect(@comment).to be_valid
      end
    end
    context "コメントできない時" do
      it "textが空ではコメントできない" do
        @comment.text = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Text can't be blank")
      end
    end
  end
end
