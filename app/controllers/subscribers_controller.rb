class SubscribersController < ApplicationController

  def new
    
  end

  def create

    subscriber = Subscriber.new(subscriber_params)
    if subscriber.valid?
      subscriber.save
      flash[:sucess] = "You have sucessfully Subscribed !"
    else
      flash[:error] = "Something Went wrong. #{subscriber.errors.full_messages.join(', ')}" 
    end
    redirect_to root_path

  end

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end