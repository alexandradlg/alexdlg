# == Schema Information
#
# Table name: stays
#
#  id         :integer          not null, primary key
#  start_date :date
#  end_date   :date
#  tenant_id  :integer
#  studio_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
