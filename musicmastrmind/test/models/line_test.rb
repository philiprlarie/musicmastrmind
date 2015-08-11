# == Schema Information
#
# Table name: lines
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  order      :integer          not null
#  song_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
