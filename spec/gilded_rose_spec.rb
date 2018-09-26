require 'pry'

describe GildedRose do
  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
  end

  describe "update_conjured" do
    it "is conjured" do
      items = [Item.new("conjured", 2, 0)]
      GildedRose.new(items).update_conjured()
      expect(items[0].quality).to eq 0
    end

    it "is not conjured" do
      items = [Item.new("poop", 4, 0)]
      GildedRose.new(items).update_conjured()
      expect(items[0].quality).to eq 0
    end
  end
end
