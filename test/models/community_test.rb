require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'create community with valid name' do
  	c = Community.new name:'Good'
	assert c.valid?, 'community should be okay'
	
  end
end
