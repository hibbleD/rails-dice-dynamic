class HomeController < ApplicationController
  def homepage
    render("/dice_templates/home")
  end
end
