# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(100)
#  password_digest :string(255)
#  name            :string(100)
#  twitter_handle  :string(50)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
