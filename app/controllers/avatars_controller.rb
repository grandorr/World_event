class AvatarsController < ApplicationController
  def create
    current_user.avatar.attach(params[:avatar])
    redirect_to static_pages_secret_path
  end

end
