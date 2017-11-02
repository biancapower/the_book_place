class StaticPagesController < ApplicationController

  def home
    @books = Book.all
  end

  def readers_books
    @books = Book.all
  end


end
