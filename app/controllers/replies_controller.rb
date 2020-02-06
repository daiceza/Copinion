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
    @opinion = Opinion.find(params[:opinion_id])
    @reply = Reply.find(params[:opinion_id])
  end
  
  def update
    @opinion = Opinion.find(params[:opinion_id])
    @reply = Reply.find(params[:id])
    @replylist = Reply.where(opinion_id:params[:opinion_id])
    if @reply.update_attributes(opinion_params)
      redirect_to opinion_replies_path
    else 
      render 'edit'
    end
  end
  
  def destroy
    Reply.find(params[:id]).destroy
    flash[:success] = "消去しました"
    @opinion = Opinion.find(params[:opinion_id])
    render 'index'
  end
  
  private
    def reply_params
      params.require(:reply).permit(:text, :opinion_id)
    end
end
