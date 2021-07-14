class Story < ApplicationRecord


  belongs_to :author
  has_many :sentences, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(author)
    favorites.where(author_id: author.id).exists?
  end

  validates :title_1, presence: true
  validates :title_2, presence: true

end
