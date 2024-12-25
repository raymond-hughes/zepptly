class HomeController < ApplicationController
  def index
    render plain: "Welcome to the app!"
  end
end
