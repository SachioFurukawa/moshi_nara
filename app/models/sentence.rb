class Sentence < ApplicationRecord


  belongs_to :author
  has_many :favorites, dependent: :destroy

  def favorited_by?(author)
    favorites.where(author_id: author.id).exists?
  end

  validates :article, presence: true

  belongs_to :story

  validate :check_number_of_sentences

 def check_number_of_sentences
    if story && story.sentences.count > 19
     errors.add(:story, "投稿数上限")
    end
 end

end
