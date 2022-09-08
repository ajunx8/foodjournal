class Log < ApplicationRecord
    belongs_to :food, :optional => true
    belongs_to :user, :optional => true
    has_and_belongs_to_many :tags
    accepts_nested_attributes_for :tags

    def self.create_new_log(food, user, params)
        new_log = Log.create params
        user.logs << new_log
        food.logs << new_log
        food_found = user.foods.where(:id => food.id)
        if food_found.empty?
            user.foods << food
        end
        user.save
        food.save
    end

end