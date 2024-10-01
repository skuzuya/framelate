class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :template

  validates :user_id, uniqueness: { scope: :template_id }
end
