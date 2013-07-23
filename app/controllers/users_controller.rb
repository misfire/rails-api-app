class UsersController < ApplicationController

  respond_to :json, :xml
  def show
  	@user = User.find_by_id(params[:id])

  end
  def index
  	@users = User.order("id DESC")
  end

end
