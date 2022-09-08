class User < ApplicationRecord
    has_and_belongs_to_many :foods
    has_many :logs, :dependent => :destroy
    has_many :tags, -> { distinct }, :through => :logs
    
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
end


# symbols and strings integerchangable
