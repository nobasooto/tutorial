class SessionsController < ApplicationController
  def new
    # this is called on the GET of new
    @title = "new session..."
    end

  def create
    render 'new'
  end



  def destroy

    # called for DELETE
    @title = "destroy session..."
  end
end