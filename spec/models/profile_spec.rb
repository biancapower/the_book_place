require 'rails_helper'

RSpec.describe Profile, type: :model do

  it "is valid with username, first name, last name, street address, suburb, postcode, and bio" do
    profile = Profile.new(
      user_id: "1",
      username: "read_lots",
      first_name: "Joe",
      last_name: "Bloggs",
      street_address: "123 Main St",
      suburb: "Blacktown",
      postcode: "0129",
      bio: "I love to read books :)"
      )
    expect(profile).to be_valid
  end

  it "is invalid without a username" do
    profile = Profile.new(username: nil)
    profile.valid?
    expect(profile.errors[:username]).to include("can't be blank")
  end


  it "is invalid with a duplicate username" do
    Profile.create(
      first_name:  "Bill",
      last_name:  "Bloggs",
      username:   "book_fan"
    )
    profile = Profile.new(
      first_name:  "Bill",
      last_name:  "Roe",
      username:   "book_fan"
    )
    profile.valid?
    expect(profile.errors[:username]).to_not include("has already been taken")
  end
end
