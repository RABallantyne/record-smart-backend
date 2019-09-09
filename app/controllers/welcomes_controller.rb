class WelcomesController < ApplicationController
    def index
        welcomes = Welcome.all
        render json: welcomes
    end
end
