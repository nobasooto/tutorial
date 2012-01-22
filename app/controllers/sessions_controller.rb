class SessionsController < ApplicationController
  def new
    # this is called on the GET of new
    @title = "new session..."
  end

  def create

    # called on the POST of the 'new' Sessions
    user = User.authenticate(params[:session][:email], params[:session][:password])

    if (user.nil?)
      flash.now[:error] = "Invalid signin details"
      @title = "Sign in again"
      render 'new'
    else

      sign_in user
      flash[:success] = "Hi #{user.name}, you have signed in"
      redirect_to user
    end

  end


  def destroy

    # called for DELETE
    sign_out
    redirect_to root_path
  end
end