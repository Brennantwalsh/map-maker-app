class ParticipationsController < ApplicationController
  def create
    username = User.find_by(username: params[:username])
    if username
      @participation = Participation.create(user_id: username.id,
                                            journey_id: params[:journey_id])
      flash[:success] = "Member Added"
      redirect_to "/journeys/#{@participation.journey_id}"
    else
      flash[:warning] = "User does not exist"
      redirect_to "/journeys/#{params[:journey_id]}"
    end
  end
end
