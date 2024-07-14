class QualificationsController < ApplicationController
  def index
    @qualifications = Qualification.all
    @q = Qualification.ransack(params[:q])
    @qualifications = @q.result(distinct: true)
  end
  
  def show
    @qualification = Qualification.find(params[:id])
    @comments = @qualification.comments.order(created_at: :desc) # ここで降順に並び替える
    @comment = Comment.new
  end
end
