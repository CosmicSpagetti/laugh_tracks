require 'rails_helper.rb'

RSpec.describe 'comedians index page' do

  before :each do
    Special.destroy_all
    Comedian.destroy_all
  end

  it 'shows comedians' do
    comedian_1 = Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA")
    comedian_2 = Comedian.create(name: "Louis C.K.", age: 51, city: "Washington, D.C.")

    visit '/comedians'

    within "#comedian-#{comedian_1.id}" do
      expect(page).to have_content(comedian_1.age)
      expect(page).to have_content(comedian_1.city)
    end

    within "#comedian-#{comedian_2.id}" do
      expect(page).to have_content(comedian_2.age)
      expect(page).to have_content(comedian_2.city)
    end

    expect(page).to have_content(comedian_1.name)
    expect(page).to have_content(comedian_2.name)

  end

  it "shows specials under comedian with name and runtime" do
    comedian_1 = Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA")
    comedian_2 = Comedian.create(name: "Louis C.K.", age: 51, city: "Washington, D.C.")
    comedian_1.specials.create(name: "Walk Your Way Out", runtime_mins: 77)
    special_1 = Special.create(name: "I'm Sorry You Feel That Way", runtime_mins: 80, comedian_id: comedian_1.id)
    comedian_2.specials.create(name: "Rocky Mountain High", runtime_mins: 63)

    visit '/comedians'



    within "#comedian-#{comedian_1.id}" do
      expect(page).to have_content(comedian_1.specials.first.name)
      expect(page).to have_content(comedian_1.specials.first.runtime_mins)
      expect(page).to have_content(special_1.name)
      expect(page).to have_content(special_1.runtime_mins)
    end

    within "#comedian-#{comedian_2.id}" do
      expect(page).to have_content(comedian_2.specials.first.runtime_mins)
      expect(page).to have_content(comedian_2.specials.first.runtime_mins)
    end

  end

  it "shows thumbnail with comedian" do
    comedian_1 = Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA", image_url: "https://image.masslive.com/home/mass-media/width960/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
    comedian_2 = Comedian.create(name: "Louis C.K.", age: 51, city: "Washington, D.C.", image_url: "https://media1.fdncms.com/pittsburgh/imager/u/blog/13239255/louis_ck_kuwait_crop_cropped.jpg?cb=1548183367")

    visit '/comedians'

    within "#comedian-#{comedian_1.id}" do
      expect(page).to have_xpath("img[@src='#{comedian_1.image_url}']")
    end

    within "#comedian-#{comedian_2.id}" do
      expect(page).to have_xpath("img[@src='#{comedian_2.image_url}']")
    end

  end

  it "Shows list of comedians who match age criteria" do

    comedian_1 = Comedian.create(name: "Bill Burr", age: 48, city: "Canton, MA")
    comedian_2 = Comedian.create(name: "Louis C.K.", age: 48, city: "Washington, D.C.")
    comedian_3 = Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, D.C.")

    visit '/comedians?age=48'

     expect(page).to have_content(comedian_1.name)
    expect(page).to have_content(comedian_2.name)
    expect(page).to_not have_content(comedian_3.name)
  end

  it "Shows count of tv specials with the comedian" do
    comedian_1 = Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA")
    comedian_2 = Comedian.create(name: "Louis C.K.", age: 51, city: "Washington, D.C.")
    comedian_1.specials.create(name: "Walk Your Way Out", runtime_mins: 77)
    special_1 = Special.create(name: "I'm Sorry You Feel That Way", runtime_mins: 80, comedian_id: comedian_1.id)
    comedian_2.specials.create(name: "Rocky Mountain High", runtime_mins: 63)

    visit '/comedians'

    within "#comedian-#{comedian_1.id}" do
      expect(page).to have_content("Specials count: #{comedian_1.specials.count}")
    end

    within "#comedian-#{comedian_2.id}" do
      expect(page).to have_content("Specials count: #{comedian_2.specials.count}")
    end

  end

  it "should show statistic area with average age and cities for the comedians on the page " do
    comedian_1 = Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA")
    comedian_2 = Comedian.create(name: "Louis C.K.", age: 50, city: "Washington, D.C.")
    comedian_3 = Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, D.C.")
    comedian_1.specials.create(name: "Walk Your Way Out", runtime_mins: 77)
    special_1 = Special.create(name: "I'm Sorry You Feel That Way", runtime_mins: 80, comedian_id: comedian_1.id)
    comedian_2.specials.create(name: "Rocky Mountain High", runtime_mins: 63)

    comedians_average_age = Comedian.average(:age)
    comedian_cities = Comedian.distinct.pluck(:city).join(" ")

    visit  '/comedians'

    expect(page).to have_content("Statistics")

    within ".statistics" do
      expect(page).to have_content("Average age: #{comedians_average_age.round(2)}")
      expect(page).to have_content("Cities: #{comedian_cities}")
    end

    visit 'comedians?age=50'
    within ".statistics" do
      expect(page).to have_content("Average age: 50")
      expect(page).to have_content("Cities: #{comedian_cities}")
    end

  end




end
