class StaticPagesController < ApplicationController
  def home
    @title = "Homepage"
  end

  def about
    @title = "About page"
  end
end
