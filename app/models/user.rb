class User < ApplicationRecord
    # validates :email, presence: true
    # validates :email, format: {with: /\A[a-zA-Z]+\z/, message: "does not valid!"}
    # has_many :albums, primary_key: :user_code, foreign_key: "account_id"

    has_many :albums
    enum status: [:active, :inactive]

    validates_associated :albums

    scope :active, -> {where(status: 'active')}

    scope :inactive, -> {where(status: 'inactive')}


    # validates :is_admin, inclusion: [false, true], if: -> { is_admin.nil? == false}

    # validates :is_admin, inclusion: [false, true], unless: -> { is_admin.nil? }

    # validates :is_admin, inclusion: [nil]



    # validate_associated
    # validates_associated :albums

    # after_validation do
    #     p 'after validation'
    # end

    # before_validation do
    #     p 'before validation'
    # end
    
    # after_rollback do
    #     p 'after rollback'
    # end

    # after_create do
    #     p 'after create'

    # end

    # before_update do
    #     p 'before update'

    # end

    # before_create do
    #     false

    # end

    # after_save do
    #     p 'after save'
    # end

    # after_commit do
    #     p 'after commit'
    #     raise 'check'
    # end
    
   

    # before_save :display_info 

    # def display_info
    #     p 'before save'
    # end

    # # around_save do 
    # #     p 'around save'
    # # end



    # # around_create do
    # #     p 'around create'
    # # end

 
    

   

    # after_find do
    #     p 'Bạn đã tìm thấy user'
    # end

    # after_initialize do |user|
    #     p 'Bạn đã khởi tạo thành công 1 user'
    # end

    # after_touch do 
    #     P 'Bạn đã tác động thay đổi lên user'
    # end

end
