class GuestsController < ApplicationController

  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    Guest.create(guest_params)
    redirect_to guests_path
  end

  def edit
  end

  def update
    @guest.update(guest_params)
    redirect_to guest_path(@guest)
  end

  def destroy
    @guest.destroy
    redirect_to guests_path
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :age, :location, :photo, :photo_cache)
  end

  def set_guest
    @guest = Guest.find(params[:id])
  end
end
