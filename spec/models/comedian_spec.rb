require 'rails_helper'

  RSpec.describe Comedian, type: :model do
    before :each do
      Special.destroy_all
      Comedian.destroy_all
    end

    describe "validations" do
      it { should validate_presence_of :name}
      it { should validate_presence_of :age}
      it { should validate_presence_of :city}
  end

  describe "relationships" do
    it { should have_many :specials}
  end

  describe "class method" do
    it "should return comedian by age" do

      comedian_1 = Comedian.create(name: "Bill Burr", age: 49, city: "Canton, MA")
      comedian_2 = Comedian.create(name: "Louis C.K.", age: 49, city: "Washington, D.C.")
      comedian_3 = Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, D.C.")

      expect(Comedian.find_all_by_age(49)).to eq([comedian_1,comedian_2])
    end

    it "should return average age of comedians" do
      comedian_1 = Comedian.create(name: "Bill Burr", age: 49, city: "Canton, MA")
      comedian_2 = Comedian.create(name: "Louis C.K.", age: 49, city: "Washington, D.C.")
      comedian_3 = Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, D.C.")


      average_ages = Comedian.average(:age)

      expect(Comedian.average_by_age).to eq(average_ages)

    end
  end

  describe "instance method" do
    it "should return count of specials for comedian" do
      comedian_1 = Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA")
      comedian_2 = Comedian.create(name: "Louis C.K.", age: 51, city: "Washington, D.C.")
      comedian_1.specials.create(name: "Walk Your Way Out", runtime_mins: 77)
      special_1 = Special.create(name: "I'm Sorry You Feel That Way", runtime_mins: 80, comedian_id: comedian_1.id)
      comedian_2.specials.create(name: "Rocky Mountain High", runtime_mins: 63)

      expect(comedian_1.specials_count).to eq(2)
      expect(comedian_2.specials_count).to eq(1)
    end
  end
end
