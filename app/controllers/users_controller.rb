class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show
  before_action :move_to_index, only: :show

  def index
  end

  def show
  end

  private

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
