class Article < ApplicationRecord
  scope :active, -> {
    where(deleted_at: nil)
  }
end
