require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not raise ActiveRecord::ReadOnlyError" do
    ActiveRecord::Base.connected_to(role: :reading) do
      User.first

      assert_nothing_raised do
        ActiveRecord::Base.connected_to(role: :writing) { User.create! }
      end
    end
  end
end
