# This class states that an artist has mnay songs.
class Artist < ActiveRecord::Base
  has_many :songs
end
