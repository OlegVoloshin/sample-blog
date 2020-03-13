require "rails_helper"


describe Article do

  describe "validation" do #разбили на подгруппы тесты для понимания что тестируем
    it {should validate_presence_of :title}
    it {should validate_presence_of :text}
  end

  describe "assosiations" do
    it {should have_many :comments}
  end
end
