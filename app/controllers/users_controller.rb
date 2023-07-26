class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create, :index, :destroy, :update,:show]
  before_action :set_user, only: [:show, :destroy]

  #   GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  #   GET /users/{username}
  def show
    render json: @user, status: :ok
  end

  #   POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  #   PATCH /users/{ usernames }
  def update
    unless @user.update(user_params)
      render json: { errors: @user.errors.full_messages }, status: :unprocessable
    end
  end

  #   DELETE /users/{usernames}
  def destroy
    @user.destroy
  end

  private

  def user_params
    params.permit(:name, :email, :phone_number, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
