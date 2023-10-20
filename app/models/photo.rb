class Photo < ApplicationRecord
    belongs_to :user

    has_many :albums, through: albums_photos

    enum photo_type: [:private, :public]
end
