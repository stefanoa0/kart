ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
    test "should create a user with a hashed password" do
    u = Cliente.create(:nome => "homer",
                 :email =>"homer",
                 :password_digest => "1234",
                 :cpf => "1234")
    u.reload # (make sure it saved!)            
    assert_not_nil u.hashed_password
  end
end
