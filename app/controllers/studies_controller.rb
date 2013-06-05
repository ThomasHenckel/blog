class StudiesController < ApplicationController
  def create
	  @project = Project.find(params[:project_id])
	  @study = @project.studies.create(params[:study])
	  redirect_to project_path(@project)
  end
  
  def destroy
	  @project = Project.find(params[:project_id])
	  @study = @project.studies.find(params[:id])
	  @study.destroy
	  redirect_to project_path(@project)
  end
end
