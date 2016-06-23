class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end
  def new
    @comment = Comment.new
  end

  def create_comment
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:success] = 'Your comment was successfully added!'

      redirect_to root_path
    else
      render 'new'
    end
  end



  def edit

  end

  def update

  end

  def destroy

  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body)
  end

end
