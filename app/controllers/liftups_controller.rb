# coding: utf-8

class LiftupsController < ApplicationController
  before_filter :signed_in_user

  def create
    @liftup = current_user.liftups.build(params[:liftup])
    if @liftup.save
      flash[:success] = "Заявка создана!"
      redirect_to find_car_url
    else
      render 'static_pages/find_passengers'
    end
  end

  def destroy
  end
end
