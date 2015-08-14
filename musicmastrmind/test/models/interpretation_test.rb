# == Schema Information
#
# Table name: interpretations
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  line_id    :integer          not null
#  creator_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class InterpretationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
