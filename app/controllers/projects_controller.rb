class ProjectsController < ApplicationController
    # before_action :set_project, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:edit, :update, :destroy, :create, :new]
  
    def index
      @projects = Project.all
     
    end
  
    def show
      @project = Project.find(params[:id])
      @comment = Project.find(params[:id]).comments.new
    end
  
    def new
      @project = current_user.projects.new
    end

    def create
      @project = current_user.projects.new(project_params)
      if @project.save 
        redirect_to project_path(@project)
      else 
        redirect_to new_project_path
      end
    end
  
    def edit
     @project = current_user.projects.find(params[:id])
        ##{name:"xxx"}
    end

    def update
      @project = current_user.projects.find(params[:id])
      ##{name:"yyy"}
      @project.update(project_params)
      redirect_to project_path(@project) 
    end
  
    def destroy
      @project = current_user.projects.find(params[:id])
      @project.destroy
      redirect_to projects_path
    end
  
    private
      # def set_project
      #   @project = Project.find(params[:id])
      # end
  
      def project_params
        params.require(:project).permit(:name, :description, :contactinfo)
      end
  end