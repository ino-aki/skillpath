# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_qualification
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    @comment = @qualification.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @qualification, notice: 'コメントが投稿されました。'
    else
      redirect_to @qualification, alert: 'コメントの投稿に失敗しました。'
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to @qualification, notice: 'コメントが更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to @qualification, notice: 'コメントが削除されました。'
  end

  private

  def set_qualification
    @qualification = Qualification.find(params[:qualification_id])
  end

  def set_comment
    @comment = @qualification.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
