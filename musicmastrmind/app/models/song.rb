# == Schema Information
#
# Table name: songs
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  writer       :string
#  track_number :integer          not null
#  creator_id   :integer          not null
#  artist_id    :integer          not null
#  album_id     :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Song < ActiveRecord::Base
  validates :title, :creator, :artist, presence: true

  belongs_to :creator, class_name: :User

  belongs_to :artist

  has_many :lines

end
