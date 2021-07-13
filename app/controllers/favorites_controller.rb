class FavoritesController < ApplicationController
  def create
    #@favorite = current_author.favorites.create(story_id: params[:story_id])
    #redirect_back(fallback_location: root_path)
  end

  def destroy
    #@favorite = Favorite.find_by(story_id: params[:story_id], author_id: current_author.id)
    #@favorite.destroy
    #redirect_back(fallback_location: root_path)
  end
end
