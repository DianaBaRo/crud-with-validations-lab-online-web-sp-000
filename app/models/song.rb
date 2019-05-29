class Song < ActiveRecord::Base
  #Title must not be blank and repeated
  validates :title, presence: true, uniqueness: true
  validates_presence_of :release_year, :if => :released?
  validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, :if => :released?
  validates :artist_name, presence: true

end
