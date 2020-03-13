require "rails_helper"


describe Article do

  describe "validation" do #разбили на подгруппы тесты для понимания что тестируем
    it {should validate_presence_of :title}
    it {should validate_presence_of :text}
  end

  describe "assosiations" do
    it {should have_many :comments}
  end
  describe "#subject" do
    it "returns the article title" do
      #создаем обьект хитрым способом
      article = create(:article, title: 'Lorem Ipsum')
      #assert, тоесть проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end
end
