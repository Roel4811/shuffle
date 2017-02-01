class ProfilesController < ApplicationController

  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

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
    new_profile = Profile.new(profile_params)
    new_profile.save!
    redirect_to profiles_path
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :age, :location, :photo, :photo_cache)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
