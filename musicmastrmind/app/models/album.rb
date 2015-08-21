# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  release_year :integer          not null
#  image_url    :string           not null
#  artist_id    :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Album < ActiveRecord::Base
  validates :name, :release_year, :image_url, :artist, presence: true

  has_many :songs
  belongs_to :artist
end
