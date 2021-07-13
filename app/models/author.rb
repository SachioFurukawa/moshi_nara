class Author < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :stories, dependent: :destroy
  has_many :sentences, dependent: :destroy
  has_many :favorites, dependent: :destroy
  #has_many :favorites, through: :favorites, source: :post

  #def already_favorited?(story)
    #self.favorites.exists?(story_id: story.id)
  #end
    #has_many :liked_posts, through: :likes, source: :post
  #def already_liked?(post)
    #self.likes.exists?(post_id: post.id)
  #end

  validates :name, presence: true
end
