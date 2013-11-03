class AuthorSessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:username], params[:password])
      redirect_back_or_to(articles_path, message: 'You logged in SON!')
    else
      flash.now.alert = "That aint right son!"
      render action :new
    end
  end 

  def destroy
    logout
    redirect_to(:authors, message: 'Logged out!!')
  end
  
end
