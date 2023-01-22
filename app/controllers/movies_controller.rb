class MoviesController < ApplicationController
  def index
    @isCheckedAll = false
    @isChecked1 = false
    @isChecked0 = false
    if params[:keyword]
      if params[:is_showing] == "1"
        @isChecked1 = true
        @movies = Movie.where("name like '%#{params[:keyword]}%'")
                  .or(Movie.where("description like '%#{params[:keyword]}%'"))
                  .where(is_showing: true)
      elsif params[:is_showing] == "0"
        @isChecked0 = true
        @movies = Movie.where("name like '%#{params[:keyword]}%'")
                  .or(Movie.where("description like '%#{params[:keyword]}%'"))
                  .where(is_showing: false)
      else
        @isCheckedAll = true
        @movies = Movie.where("name like '%#{params[:keyword]}%'")
                  .or(Movie.where("description like '%#{params[:keyword]}%'"))
      end
    else
      if params[:is_showing] == "1"
        @isChecked1 = true
        @movies = Movie.where(is_showing: true)
      elsif params[:is_showing] == "0"
        @isChecked0 = true
        @movies = Movie.where(is_showing: false)
      else
        @isCheckedAll = true
        @movies = Movie.all
      end
    end
  end
end
