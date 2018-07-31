class UsersController < ApplicationController
  def new
    puts "j'affiche depuis /new"
    @user = User.new
  end

  def create
    puts "j'affiche depuis /create"
    puts params.inspect
    puts params[:authenticity_token]
    #@user = User.create(username: params[:user][:username], email: params[:user][:email], bio: params[:user][:bio] )
    @user = User.create(username: params[:username], email: params[:email], bio: params[:bio] )
    if @user.save
      redirect_to "/profile/#{@user.username}"
    else
      render '/users/error'
    end
  end

  def profile
    puts Time.now
    puts "displaying from profile"
    @user = User.find_by(username: params[:id])
    puts @user.username
    puts @user.email
    puts @user.bio
  end
end
