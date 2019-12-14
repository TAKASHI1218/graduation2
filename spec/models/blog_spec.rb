require 'rails_helper'

RSpec.describe Blog, type: :model do


  it "blog_model_テスト1 titleは入力されていないエラーとなる" do
    blog = Blog.new(title: '', content: 'テスト', picture: '', visit_date: '2019-03-26', status:'とても満足')
    expect(blog).not_to be_valid
  end

  it "blog_model_テスト2 titleは20文字以上であるとエラーとなる" do
    blog = Blog.new(title: '012345678901234567890', content: 'テスト', picture: '', visit_date: '2019-03-26', status:'とても満足')
    expect(blog).not_to be_valid
  end

  it "blog_model_テスト3 contentは入力されていないエラーとなる" do
    blog = Blog.new(title: 'テスト', content: '', picture: '', visit_date: '2019-03-26', status:'とても満足')
    expect(blog).not_to be_valid
  end

  it "blog_model_テスト4 contentは50文字以上であるとエラーとなる" do
    blog = Blog.new(title: 'テスト', content: '012345678901234567890123456789012345678901235467890123456789', picture: '', visit_date: '2019-03-26', status:'とても満足')
    expect(blog).not_to be_valid
  end

  it "blog_model_テスト5 statusは入力されていないとエラーとなる" do
    blog = Blog.new(title: 'テスト', content: 'テスト', picture: '', visit_date: '2019-03-26', status:'')
    expect(blog).not_to be_valid
  end

  it "blog_model_テスト6 visit_dateは未来の日付を入力するとエラーとなる" do
    blog = Blog.new(title: 'テスト', content: 'テスト', picture: '', visit_date: '3000-03-26', status:'とても満足')
    expect(blog).not_to be_valid
  end



end
