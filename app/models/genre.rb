# This class states that an genre has mnay songs.
class Genre < ActiveRecord::Base
    has_many :songs
  end
  