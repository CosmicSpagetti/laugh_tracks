require 'rails_helper'

RSpec.describe Special, type: :model do

  describe "validations" do
    it { should validate_presence_of :name}
    it { should validate_presence_of :runtime_mins}
  end

  describe "relationships" do
    it { should belong_to :comedian}
  end

  # describe "instance method" do
  #   comedian_1 = Comedian.create(name: "Bill Burr", age: 50, birthplace: "Canton, MA")
  #   comedian_2 = Comedian.create(name: "Louis C.K.", age: 51, birthplace: "Washington, D.C.")
  #   comedian_1.specials.create(name: "Walk Your Way Out", runtime_mins: 77)
  #   special_1 = Special.create(name: "I'm Sorry You Feel That Way", runtime_mins: 80, comedian_id: comedian_1.id)
  #   comedian_2.specials.create(name: "Rocky Mountain High", runtime_mins: 63)
  #
  #   expect(Comedian)
  # end

end
