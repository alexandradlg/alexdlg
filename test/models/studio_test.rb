# == Schema Information
#
# Table name: studios
#
#  id             :integer          not null, primary key
#  name           :string
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("EUR"), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class StudioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
