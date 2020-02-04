class RepliesController < ApplicationController
  def new
  end
  def index
    @opinion = Opinion.find(params[:opinion_id])
    @replylist = Reply.all
    @reply = Reply.new
  end
  def create
    @opinion = Opinion.find(params[:opinion_id])
    @replylist = Reply.all
    @reply = Reply.new(reply_params)
    if @reply.save
      redirect_to root_url
    else
      render 'index'
    end
  end
  private
    def reply_params
      params.require(:reply).permit(:text, :opinion_id)
    end
end
