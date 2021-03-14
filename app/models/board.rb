class Board < ApplicationRecord
    belongs_to :user, optional: true
    validates :title, presence: true
    validates :content, presence: true

    def index
    end
end
