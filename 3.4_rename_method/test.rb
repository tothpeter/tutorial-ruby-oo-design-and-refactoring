require "minitest/spec"
require "minitest/autorun"

require "./before" if ENV["BEFORE"]
require "./after" unless ENV["BEFORE"]

describe UserService do
  it "can log in" do
    assert UserService.sign_in "yo", "man"
  end
end