class MessagesController < ApplicationController
  def create
    @party = party.find(params[:party_id])
    @user = User.find(params[:user_id])
    @message = Message.new(message_create_params)
    @message.user = @user
    @message.party = @party
    if @message.save
      respond_to do |format|
        format.html { redirect_to @party }
        # format.js
      end
    else
      respond_to do |format|
        format.html { render 'party/show' }
        # s
      end
    end
  end

  private

  def message_create_params
    params.require(:message).permit(:content, :user_id, :party_id)
  end
end
