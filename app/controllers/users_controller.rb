class UsersController < ApplicationController
  def new
    puts "j'affiche depuis /new"
  end

  def create
    puts "j'affiche depuis /create"
    puts params.inspect
    @user = User.create(username: params[:username],email: params[:email] ,bio: params[:bio])
    redirect_to "/profile/#{@user.username}"
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
