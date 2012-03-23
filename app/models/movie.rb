class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_by_director(id)
    sortedby = nil
    conditions = conditions = ["id = ?", id]
    foundMovie = Movie.find(:all, :order => sortedby, :conditions => conditions)
#    debugger   
#    assert foundMovie.length == 1, "Expected one movie"
    
    foundDirector = "Spielberg"
    if (foundMovie != nil && foundMovie.length > 0)
      foundDirector = foundMovie[0].director
    end

    sortedby = nil
    conditions = conditions = ["director = ?", foundDirector]
    foundMovie = Movie.find(:all, :order => sortedby, :conditions => conditions)
  end
end
