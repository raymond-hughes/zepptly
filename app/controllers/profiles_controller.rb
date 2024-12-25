class ProfilesController < ApplicationController
  def index
  end

  def edit
    @user = Current.session
  end

  def show
  end
end
