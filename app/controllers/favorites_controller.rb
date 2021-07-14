class FavoritesController < ApplicationController
  def create
    story = Story.find(params[:story_id])
    favorite = current_author.favorites.new(story_id: story.id)
    favorite.save
    redirect_to story_path(story)
  end

  def destroy
    story = Story.find(params[:story_id])
    favorite = current_author.favorites.find_by(story_id: story.id)
    favorite.destroy
    redirect_to story_path(story)
  end
end
