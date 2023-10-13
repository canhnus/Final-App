class Photo < ApplicationRecord
    belongs_to :album

    validates :url, presence: true

    validates :url, uniqueness: true
end
