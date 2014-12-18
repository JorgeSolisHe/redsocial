require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "un usuario deberia tener su primer nombre" do
   	user= User.new
    assert !user.save
   end
end
