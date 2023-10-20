class User < ApplicationRecord
    validates :first_name, length: {maximum: 25}

    validates :last_name_name, length: {maximum: 25}

    validates :email, length: {maximum: 255}, uniqueness: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}



    # validates :email, format: {with: /\A[a-zA-Z]+\z/, message: "does not valid!"}
    # has_many :albums, primary_key: :user_code, foreign_key: "account_id"

    has_many :albums
    enum role: [:guest, :normal, :admin]

    validates_associated :albums

    # validates :is_admin, inclusion: [false, true], if: -> { is_admin.nil? == false}

    # validates :is_admin, inclusion: [false, true], unless: -> { is_admin.nil? }

    # validates :is_admin, inclusion: [nil]

end
