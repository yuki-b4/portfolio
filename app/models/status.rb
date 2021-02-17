class Status < ApplicationRecord
  validates :name, :message, presence: true
end
