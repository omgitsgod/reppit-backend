class Api::V1::WorkoutsController < ApplicationController
  before_action :find_workout, only: [:update]

  def index
    @workouts = Workout.all
    render json: @workouts
  end

  def create
    @workout = Workout.create(workout: params['workout'], user_id: params['user_id'], date: Time.now.strftime("%Y-%m-%d").to_s)
  end

  def show

    @workout = Workout.where(date: params['id']).all
    render json: @workout
  end

  private

  def find_workout
    @workout = Workout.find[:params[:id]]
  end
end
