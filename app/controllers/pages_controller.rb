class PagesController < ApplicationController
  def home
    @foods = Food.all
  end
end
