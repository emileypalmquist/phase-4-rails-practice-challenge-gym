class GymsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  def index
    gyms = Gym.all
    render json: gyms
  end

  def show 
    gym = Gym.find(params[:id])
    render json: gym
  # rescue ActiveRecord::RecordNotFound
  #   render json: {error: "Gym not found"}, status: :not_found
  end

  def destroy
    # gym = Gym.find(params[:id])
    # gym.destroy
    # head :no_content
    # gym = Gym.find_by(id: params[:id])
    # if gym
    #   gym.destroy
    #   head :no_content
    # else
    #   render json: {error: "gym not found"}
    # end
    gym = Gym.find_by!(id: params[:id])
    gym.destroy
    head :no_content
  # rescue
  #   render json: { error: "Gym not found"}
  end

  private

  def render_not_found
    render json: { error: "Gym not found"}
  end

end
