require 'rails_helper'

  RSpec.describe Comedian, type: :model do
    describe "validations" do
      it { should validate_presence_of :name}
      it { should validate_presence_of :age}
      it { should validate_presence_of :birthplace}
  end

  describe "relationships" do
    it { should have_many :specials}
  end

  describe "class method" do
    it "should return comedian by age" do

    comedian_1 = Comedian.create(name: "Bill Burr", age: 49, birthplace: "Canton, MA")
    comedian_2 = Comedian.create(name: "Louis C.K.", age: 49, birthplace: "Washington, D.C.")
    comedian_3 = Comedian.create(name: "Dave Chappelle", age: 45, birthplace: "Washington, D.C.")

    expect(Comedian.find_all_by_age(49)).to eq([comedian_1,comedian_2])
    end
  end


end
