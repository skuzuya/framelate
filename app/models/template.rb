class Template < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }

  belongs_to :user

  has_many :bookmarks
  has_many :bookmarking_users, through: :bookmarks, source: :user

  scope :ranked_by_bookmarks, -> { left_joins(:bookmarks).group(:id).order('COUNT(bookmarks.id) DESC') }
end
