class Board < ApplicationRecord
    belongs_to :user, optional: true
    has_many :tasks
    validates :title, presence: true
    validates :content, presence: true

    def index
    end
end
