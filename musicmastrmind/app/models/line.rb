class Line < ActiveRecord::Base
  validates :body, :order, :song, presence: true
  validates :order, uniqueness: { scope: :song_id }

  belongs_to :song
end
