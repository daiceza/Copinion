class OpinionsController < ApplicationController
  def index
    @opinionlist = Opinion.all
    @opinion = Opinion.new
  end
  def create
    @opinion = Opinion.new(opinion_params)
    if @opinion.save
      redirect_to root_url
    else
      render "index"
    end
  end
  def show
    @opinion = Opinion.find(params[:id])
    @replylist = Reply.all
    @reply = Reply.new
  end
  def edit
    @opinion = Opinion.find(params[:id])
  end
  def update
    @opinion = Opinion.find(params[:id])
    @opinionlist = Opinion.all
    if @opinion.update_attributes(opinion_params)
      redirect_to root_url
    else 
      render 'edit'
    end
  end
  
  def destroy
    Opinion.find(params[:id]).destroy
    flash[:success] = "消去しました"
    redirect_to opinions_url
  end
  
  private
    def opinion_params
      params.require(:opinion).permit(:title, :text, :category)
    end
end
