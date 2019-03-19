class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :workout, :user_id, :date
end
