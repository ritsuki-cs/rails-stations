class Admin::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to admin_movies_path
    else
      flash.now[:alert] = "登録に失敗しました。"
      render new_admin_movie_path
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to admin_movies_path
    else
      flash.now[:alert] = "更新に失敗しました。"
      render 'edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:success] = "削除が完了しました。"
    redirect_to admin_movies_path
  end

  private
  def movie_params
    params.require(:movie).permit(
                            :name,
                            :year,
                            :is_showing,
                            :description,
                            :image_url
                          )
  end
end
