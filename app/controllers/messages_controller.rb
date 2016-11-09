class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to :back
  end

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
