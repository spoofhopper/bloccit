require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: 'Question title', body: 'Question Body') }

  describe "attributes" do
    it "has a body attribute" do
      expect(question).to have_attributes(title: "Question title", body: "Question Body")
    end
  end
end
