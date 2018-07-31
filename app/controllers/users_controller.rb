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
    puts "j'affiche depuis profile"
    @username = params[:username]
    puts "nom user: #{params[:username]}"
    @id = User.find_by(username: @username).id
    puts "numero de l'id #{@id}"
    @email = User.find_by(username: @username).email
    puts "email : #{@email}"
    @bio = User.find_by(username: @username).bio
    puts "bio : #{@bio}"
  end
end
