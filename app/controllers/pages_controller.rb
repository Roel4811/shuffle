class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @thijmen = Profile.where(name: "Thijmen").first
    @felix = Profile.where(name: "Felix").first
    @random = Profile.where(name: "Random chick").first
  end
end
