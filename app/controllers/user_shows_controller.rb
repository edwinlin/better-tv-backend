class UserShowsController < ApplicationController
	def index
		@user_shows = UserShow.all
		render json: @user_shows
	end
	
	def show
	    @user_show = UserShow.find(params[:id])
	    render json: @user_show
	end

	def create
	    @user_show = UserShow.find_or_create_by(user_show_params)
	    #if create new user_show
	    #update tvshow like Tvshow.all.find(params[:tvshow_id]).likes = Tvshow.all.find(params[:tvshow_id]).users.count
	    render json: @user_show
	end

	def destroy
	    @user_show = UserShow.find(params[:id])
	    @user_show.destroy
	end

	private

	def user_show_params
    	params.permit(:user_id, :tvshow_id, :ext_tvmaze_id)
  	end

end