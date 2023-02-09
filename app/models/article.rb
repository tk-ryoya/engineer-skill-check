class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }

  scope :active, lambda {
    where(deleted_at: nil)
  }
end
