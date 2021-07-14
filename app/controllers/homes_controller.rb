class HomesController < ApplicationController

  def top
    @story = Story.all
  end

  def about
  end

end
