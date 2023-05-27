class Article < ApplicationRecord
  enum status: %w[draft published].index_by(&:itself)

  validates :title, presence: true
  validates :status, inclusion: { in: statuses.values }
end
