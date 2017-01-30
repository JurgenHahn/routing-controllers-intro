class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "Welcome to my Assignment"
  end

  def about
    @header = "About Us"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to root_url
  end

  def secrets
    if params[:magic_word] != "password"
      flash[:alert] = "Sorry, you're not authorize to see that page!"
      redirect_to root_url
    end
  end

  def kitten

  end

  def kittens

  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
end
