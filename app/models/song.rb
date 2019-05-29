class Song < ActiveRecord::Base
  #Title must not be blank and repeated
  validates :title, presence: true, uniqueness: true
  #release_year must not be blank if released is true
  validates_presence_of :release_year, :if => :released?
  #release_year must be less than or equal to the current year
  validates :release_year, numericality: { less_than_or_equal_to: Date.today.year }, :if => :released?
  #artist_name must not be blank
  validates :artist_name, presence: true

end
