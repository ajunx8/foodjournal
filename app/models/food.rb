class Food < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :logs, :dependent => :destroy
end
