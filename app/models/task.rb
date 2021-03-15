class Task < ApplicationRecord
    belongs_to :user, optional: true
    validates :title, presence: true
    validates :content, presence: true
    has_one_attached :eyecatch
end