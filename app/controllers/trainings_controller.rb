class TrainingsController < ApplicationController
  # before_action :set_user, except: [:index, :show, :create]
  before_action :authenticate_user!
  def index
    @trainings = current_user.trainings
  end

  def show
    @trainings = current_user.trainings.find(params[:id])
  end

  def new
    @trainings = current_user.trainings
  end

  def edit
    @training = current_user.trainings.find(params[:id])
  end

  def update
    @training = current_user.trainings.find(params[:id])
    @training.update(update_params)
    redirect_to trainings_path
  end

  def create
    @training = current_user.trainings.new(training_memo)
    if @training.save
      redirect_to trainings_path
    else
      redirect_to trainings_path
    end
  end

  def destroy
    @trainings = current_user.trainings.find(params[:id])
    @trainings.destroy
    redirect_to trainings_path
  end


  private
  def training_memo
    params.permit(:start_time, :title, :content, :user_id)
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end

  def update_params
    params.require(:training).permit(:start_time, :title, :content, :user_id)
  end
end