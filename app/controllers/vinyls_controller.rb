class VinylsController < ApplicationController

    
    def index
        @vinyls = Vinyl.all

    end 
    
    
    def new 
        @vinyl = Vinyl.new 

    end 

    def create
        @vinyl = Vinyl.create(vinyl_params)

    end 

    def show
        @vinyl = Vinyl.find_by(params[:id])

    end 
end
