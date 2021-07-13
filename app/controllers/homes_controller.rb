class HomesController < ApplicationController

  def top
    @story = Story.all
  end

end
