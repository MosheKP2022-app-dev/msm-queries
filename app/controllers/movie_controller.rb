class MovieController < ApplicationController

  def index
    @list_of_movies = Movie.all
        render({ :template => "movie_templates/index.html.erb"})
      end

      def movie_details

        #Parameters: {"an_id"=>"44"}
    
        the_id = params.fetch("an_id")
    
        @the_movie = Movie.where({:id => the_id}).first
        #@filmography = Movie.where({:director_id => @the_director })
    
        render({ :template => "movie_templates/show.html.erb"})
    
      end
    end