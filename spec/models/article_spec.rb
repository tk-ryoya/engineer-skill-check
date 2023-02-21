require 'rails_helper'

RSpec.describe Article, type: :model do
  it "タイトルがなければ無効な状態であること" do
    article = Article.new(title: nil)
    expect(article).to be_invalid
  end

  it "タイトル名が50文字以上の場合登録できない状態であること" do
    article = Article.new(title: "a" * 51)
    expect(article).to be_invalid
  end
end
