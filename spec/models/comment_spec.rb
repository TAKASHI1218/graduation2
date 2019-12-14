require 'rails_helper'

RSpec.describe Comment, type: :model do


  it "comment_model_テスト1 contentは入力されていないエラーとなる" do
    comment = Comment.new(content: '')
    expect(comment).not_to be_valid
  end

  it "comment_model_テスト2 contentは100文字以上であるとエラーとなる" do
    comment = Comment.new(content: '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890')
    expect(comment).not_to be_valid
  end


end
