class CommentsController < ApplicationController
    before_action :authenticate_user!, only: [:edit, :update, :destroy, :create, :new]
  
    def create
      @comment = Project.find(params[:project_id]).comments.new(comment_params)
      if @comment.save 
        redirect_to project_path(params[:project_id])
      else 
        redirect_to new_project_commment_path(params[:project_id])
      end
    end
  
    def edit
      @comment = current_user.comments.find(params[:id])
        ##{name:"xxx"}
    end

    def update
      @comment = current_user.comments.find(params[:id])
      ##{name:"yyy"}
      @comment.update(comment_params)
      redirect_to project_path(@comment) 
    end
  
    def destroy
      @comment = current_user.comments.find(params[:id])
      @comment.destroy
      redirect_to projects_path
    end
  
    private
  
      def comment_params
        params.require(:comment).permit(:body)
      end
  end