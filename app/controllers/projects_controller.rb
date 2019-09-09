class ProjectsController < ApplicationController

    def index
        projects = Project.all
        render json: projects
    end

    def show
    end

    def create
        project = Project.find_by[:artist_id]
        if project.save
            render json: project
        else
            puts "Project failed to save"
        end
    end

end
