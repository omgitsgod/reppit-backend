class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = user.create()
  end

  def show

    @user = User.where(date: params['id']).all
    render json: @user
  end

  private

  def find_user
    @user = User.find[:params[:id]]
  end
end
