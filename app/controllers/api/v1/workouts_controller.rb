class Api::V1::WorkoutsController < ApplicationController
  skip_before_action :authenticate_user!, :only => :show
  skip_authorize_resource :only => :show
  before_action :find_workout, only: [:update]

  def index
    @workouts = Workout.all
    render json: UserSerializer.new(@workouts)
  end

  def create
    @workout = Workout.create(workout: params['workout'], user_id: params['user_id'], date: Time.now.strftime("%Y-%m-%d").to_s)
  end

  def show

    @workout = Workout.where(date: params['id']).all
    render json: UserSerializer.new(@workout)
  end

  private

  def find_workout
    @workout = Workout.find[:params[:id]]
  end
end
