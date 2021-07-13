class SentencesController < ApplicationController
  before_action :authenticate_author!

  def create
    @story = Story.find(params[:story_id])
    @sentence = current_author.sentences.new(sentence_params)
    #@sentence.story_id = story.id
    if @sentence.save
      redirect_to @story
    else
      render @story
    end
  end

  #def destroy
    #Sentence.find_by(id: params[:id], story_id: params[:story_id]).destroy
    #redirect_to story_path(params[:story_id])
  #end

  private

  def sentence_params
    params.require(:sentence).permit(:article, :story_id)
  end

  def story_params
    params.require(:story).permit(:title_1, :title_2)
  end

end
