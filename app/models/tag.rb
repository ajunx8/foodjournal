class Tag < ApplicationRecord
    has_and_belongs_to_many :logs
    has_many :users, :through => :logs
    # has_many :foods, :through => :logs
    validates :name, presence: true, length: { maximum: 50 }

    def foods_for_user(user_id)
        # do this in Active Record without map and select
        self.logs.where(:user_id => user_id).map(&:food).uniq
    end

end
