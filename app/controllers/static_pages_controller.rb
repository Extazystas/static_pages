class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def who_we_are
    @emails = EmailList.all
   
  end
end
