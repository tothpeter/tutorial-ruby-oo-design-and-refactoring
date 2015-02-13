require "minitest/spec"
require "minitest/autorun"

require "./before" if ENV["BEFORE"]
require "./after" unless ENV["BEFORE"]

describe Cart do

  it "has a list of items" do
    Cart.new([
      [ "Sweater",   "Pink",  5.0  ],
      [ "Things",    "Red",   8.0  ],
      [ "Golf Club", "Green", 12.0 ]
    ]).total.must_equal 25.0
  end
  
end