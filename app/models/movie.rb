require 'pry'
class Movie < ActiveRecord::Base
    def self.create_with_title(x)
        self.create(title: x)
           
    end
    def self.first_movie
        self.find_by(id: 1)
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(id)
        self.find(id)
    end

    def self.find_movie_with_attributes(attribute)
        self.find_by(attribute)
    end

    def self.find_movies_after_2002
        self.where("release_date > '2002'")
    end

    def update_with_attributes(attribute)
        self.update(attribute)
    end

    def self.update_all_titles(title)
        self.update(title: title)
    end

    def self.delete_by_id(id)
        self.find(id).delete
    end

    def self.delete_all_movies
        self.destroy_all
    end
end
