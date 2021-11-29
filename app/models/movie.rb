class Movie < ActiveRecord::Base
    attr_accessor :title
    @all = []
    def self.create_with_title(title)
        @title = title
        @all << self
    end
    def self.first_movie

    end

end