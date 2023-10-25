class Photo < ApplicationRecord
    belongs_to :user

    has_many :album_photos
    has_many :albums, through: :album_photos

    enum photo_type: [:unshare, :share]

    mount_uploader :photo_url, PhotoUploader
end
