class Group < ApplicationRecord
    has_many :users
    has_many :group_czars
end
