class MembershipsController < ApplicationController

  def create
    membership = Membership.create!(memberships_params)
    render json: membership, status: :created
  end

  private

  def memberships_params
    # params.require(:membership).permit(:client_id, :gym_id, :charge)
    params.permit(:client_id, :gym_id, :charge)
  end

end
