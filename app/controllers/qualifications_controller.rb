class QualificationsController < ApplicationController
  def index
    @q = Qualification.ransack(params[:q])
    @qualifications = @q.result(distinct: true)

    respond_to do |format|
      format.html # HTMLリクエストの場合
      format.turbo_stream # Turbo Streamリクエストの場合
    end
  end
  
  def show
    @qualification = Qualification.find(params[:id])
    @comments = @qualification.comments.order(created_at: :desc) # ここで降順に並び替える
    @comment = Comment.new
  end
end
