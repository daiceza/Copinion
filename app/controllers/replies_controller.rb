class RepliesController < ApplicationController
  def new
  end
  def index
    @opinion = Opinion.find(params[:opinion_id])
    @replylist = Reply.where(opinion_id:params[:opinion_id])
    #@replylist = Reply.all
    @reply = Reply.new
  end
  def create
    @opinion = Opinion.find(params[:opinion_id])
    @replylist = Reply.where(opinion_id:params[:opinion_id])
    @reply = Reply.new(reply_params)
    if @reply.save
      render 'index'
    else
      render 'index'
    end
  end
  def edit
     @reply = Reply.find(params[:id])
  end
  private
    def reply_params
      params.require(:reply).permit(:text, :opinion_id)
    end
end
