class Movie < ActiveRecord::Base
  def self.ratings
    @ratings_list = []
    self.all.each do |m|
        @ratings_list << m.rating unless @ratings_list.include? m.rating
    end
    @ratings_list.sort
  end
end
