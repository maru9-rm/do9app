class Board < ApplicationRecord
    belongs_to :user, optional: true
    def index
    end
end
