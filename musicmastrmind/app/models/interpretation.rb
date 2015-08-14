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

class Interpretation < ActiveRecord::Base
  validates :body, :line, :creator, presence: true
  validates :creator_id, uniqueness: { scope: :line_id } # a user can only submit one interpretation per line

  belongs_to :line
  belongs_to :creator, class_name: :User
  # has many comments

end
