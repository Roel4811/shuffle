class ProfilesController < ApplicationController

  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_user, only: [:create]

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = @user
    @profile.save!
  end

  def edit
  end

  def update
    @profile.update(profile_params)
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path
  end

  private

  def find_user
    @user = current_user
  end

  def profile_params
    params.require(:profile).permit(:name, :age, :location, :photo, :photo_cache)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
