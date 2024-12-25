class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }
  normalizes :first_name, with: ->(e) { e.strip.downcase }
  normalizes :last_name, with: ->(e) { e.strip.downcase }

  def full_name
    return "Unknown User" if first_name.blank? && last_name.blank?

    [ first_name, last_name ].join(" ")
  end
end
