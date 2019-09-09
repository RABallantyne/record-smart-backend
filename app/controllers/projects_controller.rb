class ProjectsController < ApplicationController

    def index
        projects = Project.all
        render json: projects
    end

    def show
        project = Project.find(params[:id])
        render json: project
    end
    
    def create
        project = Project.create(strong_params)
        if project.save
            render json: project
        else
            puts "Project failed to save"
        end
    end

    def update
        project = Project.find(paranms[:id])
        project.update(strong_params)
        render json: project
    end

    def destroy
        project = Project.find(params[:id])
        project.destroy
    end

    private

    def strong_params
        params.require(:project).permit(:project_name, :project_notes, :artist_id)
    end

    

end
