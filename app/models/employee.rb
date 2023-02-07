class Employee < ApplicationRecord
  belongs_to :office
  belongs_to :department
  has_many :profiles

  validates :number, presence: true, uniqueness: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :account, presence: true, uniqueness: true
  validates :password, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: :password_invalid }, uniqueness: true

  scope :active, -> {
    where(deleted_at: nil)
  }
end
