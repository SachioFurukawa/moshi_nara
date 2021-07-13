class Favorite < ApplicationRecord

  belongs_to :author
  belongs_to :story
  belongs_to :sentence

end
