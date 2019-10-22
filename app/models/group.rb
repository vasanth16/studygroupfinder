class Group < ActiveRecord::Base
    validates :time, presence:true, length: {minimum:2}
    validates :location, presence:true, length: {minimum:2}
end
