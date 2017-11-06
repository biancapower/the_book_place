class StaticPagesController < ApplicationController

  before_action :authenticate_user!, only: [:messages]

  def home
    @books = Book.all
  end

  def readers_books
    @books = Book.all
  end

  def messages
    @profiles = Profile.all

    session[:conversations] ||= []

    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end
end
