class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    validates :first_name, length: {maximum: 25}

    validates :last_name, length: {maximum: 25}


    # before_action :authenticate_user!


    # validates :email, format: {with: /\A[a-zA-Z]+\z/, message: "does not valid!"}
    # has_many :albums, primary_key: :user_code, foreign_key: "account_id"

    has_many :albums
    has_many :photos
    enum :role, [:normal, :admin], default: :normal

    # validates_associated :albums

    # validates :is_admin, inclusion: [false, true], if: -> { is_admin.nil? == false}

    # validates :is_admin, inclusion: [false, true], unless: -> { is_admin.nil? }

    # validates :is_admin, inclusion: [nil]

end
