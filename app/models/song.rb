# This class states that a song belongs to one artist and one genre.
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
end
