require 'rails_helper.rb'

RSpec.describe "comedians form" do
  before :each do
    Special.destroy_all
    Comedian. destroy_all
  end

  it "should create a new comedian" do
    visit '/comedians/new'

    fill_in "comedian[name]", with: "Billy"
    fill_in "comedian[age]", with: "25"

    click_button 'Create Comedian'

    expect(current_path).to eq('/comedians/new')

    fill_in "comedian[name]", with: "Billy"
    fill_in "comedian[age]", with: "25"
    fill_in "comedian[city]", with: "miami"
    save_and_open_page
    click_button 'Create Comedian'
    billy = Comedian.last

    expect(current_path).to eq('/comedians')
    expect(page).to have_content(billy.name)
    expect(page).to have_content(billy.age)
    expect(page).to have_content(billy.city)
  end


end
