class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    @qualification = Qualification.find(params[:qualification_id])
    @comment = @qualification.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @qualification, notice: 'コメントが作成されました。'
    else
      redirect_back fallback_location: root_path, alert: 'コメントの作成に失敗しました。'
    end
  end

  def edit
    # editアクションのビューを表示するだけで、更新処理はupdateアクションで行う
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

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
