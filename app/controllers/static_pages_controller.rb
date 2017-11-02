class StaticPagesController < ApplicationController

  def home
    @books = Book.all
  end


end
