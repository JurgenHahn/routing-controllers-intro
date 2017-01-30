class PagesController < ApplicationController
  def welcome
    @header = "Welcome to my Assignment"
  end

  def about
    @header = "About Us"
  end

  def contest
    @header = "Contest! Contest!! Contest!!!"
  end
end
