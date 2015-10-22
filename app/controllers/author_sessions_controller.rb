class AuthorSessionsController < ApplicationController
  attr_accessor :create, :destroy, :new
  def new
  end
  def Create
    if login(params[:email], params[:password])
      redirect_back_or_to(articles_path, notice: "Logged in succesfully.")
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end
  def destroy
    logout
    redirect_to(:authors, notice: "Logged out!")
  end
end
