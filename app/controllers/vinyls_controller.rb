class VinylsController < ApplicationController
    def index
        @vinyls = Vinyl.all
    end
    
    
    def new
        @vinyl = Vinyl.new
    end

    def create
        @vinyl = Vinyl.create(vinyl_params)
        if @vinyl.save
            redirect_to vinyl_path
        end
    end
    
    def show
        @vinyl = Vinyl.find_by(params[:id])
    end

    private
    def vinyl_params
        params.require(:vinyl).permit(:name, :artist, :genre)
    end
end
