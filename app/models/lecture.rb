class Lecture < ActiveRecord::Base
  
  def self.mondays
    Lecture.order(:hour).where("day LIKE ?", "po%")
  end
  
  def self.tuesdays
    Lecture.order(:hour).where("day LIKE ?", "wt%")
  end
  
  def self.wednesdays
    # wednesday reads only second letter (r), no other day has r as second letter and o as third (it works as regex for "s" and "ś" in sqlite)
    Lecture.order(:hour).where("day LIKE ?", "_ro%")
  end
  
  def self.thursdays
    Lecture.order(:hour).where("day LIKE ?", "cz%")
  end
  
  def self.fridays
    Lecture.order(:hour).where("day LIKE ?", "pi%")
  end
  
  def self.saturdays
    Lecture.order(:hour).where("day LIKE ?", "so%")
  end
  
  def self.sundays
    Lecture.order(:hour).where("day LIKE ?", "ni%")
  end
  
  
  
end