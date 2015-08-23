# == Schema Information
#
# Table name: lines
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  order      :integer          not null
#  song_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Line < ActiveRecord::Base
  validates :body, :order, :song, presence: true
  validates :order, uniqueness: { scope: :song_id }

  belongs_to :song
  has_many :interpretations
end
