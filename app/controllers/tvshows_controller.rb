class TvshowsController < ApplicationController

  def index
    @tvshows = Tvshow.all
    render json: @tvshows
  end

  def show
    @user = User.find(session[:user_id])
    @tvshow = Tvshow.find(params[:id])
    render json: @tvshow
  end

  def create
    @tvshow = Tvshow.find_or_create_by(tvshow_params)
    render json: @tvshow
  end

  def update
    @tvshow = Tvshow.find(params[:id])
    @tvshow.update(tvshow_params)
    render json: @tvshow
  end

  def destroy
    @tvshow = Tvshow.find(params[:id])
    @tvshow.destroy
  end

  private

  def tvshow_params
    params.permit(:name, :likes, :tvmaze_id)
  end

end