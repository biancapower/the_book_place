require 'rails_helper'

RSpec.describe User, type: :model do

  it "is valid with an email address and password" do
    user = User.new(
      email: "bob@gmail.com",
      password: "ah9ud_ihau"
      )
    expect(user).to be_valid
  end

  it "is invalid without an email address" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid without a password" do
    user = User.new(password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    User.create(
      email:      "bill@example.com",
      password:   "yugugiuiuih",
    )
    user = User.new(
      email:      "bill@example.com",
      password:   "sjnkoigy",
    )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

end
