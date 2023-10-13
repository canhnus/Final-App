class Album < ActiveRecord::Base
    # Association
    belongs_to :user, primary_key: "user_code", foreign_key: "account_id"
    has_many :photos 

    # Query Interface
    scope :description, -> {where(descripttion: "asc")}

    # Validate
    # validates :url, presence: true
    # validates :descripttion, inclusion: {in: %w(a b c), message: "%{value} is not a valid size"}

    # validate do |album|    
    #     errors.add :title, :too_plain, message: 'is not cool enough'
    # end



    # validates :descripttion, length: { minimum: 5, too_short: '%{count} is the minimum length you must have'}

    validates :photo_count, numericality: {greater_than: 1, even: true}

    # Cach 1
    # validates :descripttion, uniqueness: {scope: :title, message: 'is not a duplicated'}
    # Cach 2
    # validates_uniqueness_of :descripttion, scope: :title, message: 'is not a duplicated'
    

  
    # after_validation do
    #     p 'after validation'
    # end

    # before_save :display_info 

    # def display_info
    #     p 'before save'
    # end

    # around_save do 
    #     p 'around save'
    # end

    # before_destroy do
    #     p 'before destroy 2'
    # end

    before_destroy do
        p 'before destroy 1'
    end

    # Không nên dùng around
    # around_destroy do
    #     p 'around destroy'
    # end

    after_destroy do
        p 'after destroy'
        # raise 'abc'
    end

    after_commit do
        p 'after commit'
    end
    
    after_rollback do
        p 'after rollback'
    end

    after_find do
        p 'Bạn đã tìm thấy user'
    end

    after_initialize do |user|
        p 'Bạn đã khởi tạo thành công 1 user'
    end

    # after_touch do 
    #     P 'Bạn đã tác động thay đổi lên user'
    # end


end 
