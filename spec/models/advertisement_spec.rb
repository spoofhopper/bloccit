require 'rails_helper'

RSpec.describe Advertisement, type: :model do

  let (:advertisement) { Advertisement.create!(title: "New Advertisement title", copy: "New Advertisement copy", price: 100) }

  describe "attributes" do
    it "has title, copy, and price attributes" do
      expect(advertisement).to have_attributes(title: "New Advertisement title", copy: "New Advertisement copy", price: 100)
    end
  end

end
