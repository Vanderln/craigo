require 'spec_helper'

describe User do
  context "testing associations" do
    it {should have_many(:posts)}
    it {should have_many(:comments)}
  end

  context "attr_accessible" do
    it {should allow_mass_assignment_of(:username)}
    it {should allow_mass_assignment_of(:password)}
    it {should allow_mass_assignment_of(:email)}
  end

end
