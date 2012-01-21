class PagesController < ApplicationController

  def home
    @title = "This is the home page.."
  end

  def contact
    @title = "This is the contact page.."
  end

  def about
    @title = "This is the about page.."
  end

  def help
    @title = "Help me"
  end

end
