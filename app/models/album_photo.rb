class Album_Photo < ApplicationRecord
    belongs_to :album
    belongs_to :photo
end
