require 'rails_helper'

RSpec.describe Profile, type: :model do

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
