require "minitest/spec"
require "minitest/autorun"

require "./before" if ENV["BEFORE"]
require "./after" unless ENV["BEFORE"]

describe Client do

  let(:manager) { Manager.new }
  let(:department) { Department.new manager }
  let(:clerk) { Clerk.new department }
  # manager -> department -> clerk

  if ENV["BEFORE"]
    it "wants to know about the manager through a department" do
      client = Client.new department

      client.department.manager.wont_be_nil
    end
  else # After
    it "should rather be guided by a clerk to access thath info" do
      client = Client.new clerk

      client.clerk.manager.wont_be_nil
    end
  end
  
end