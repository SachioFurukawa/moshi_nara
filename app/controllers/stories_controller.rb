class StoriesController < ApplicationController

  def create
    @story = current_author.stories.new(story_params)
    if @story.save
      redirect_to story_path(@story.id)
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def show
    @story = Story.find(params[:id])
    @sentences = @story.sentences
    @sentence = Sentence.new
    @odd = 20-@story.sentences.count
  end

  def new
    @story = Story.new
  end

  def index
    @stories = Story.page(params[:page]).reverse_order
  end

  private

  def story_params
    params.require(:story).permit(:title_1, :title_2, :author_id)
  end

end
