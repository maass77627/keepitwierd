class PostsController < ApplicationController

    def index
        @posts = Post.all

    end 

    def new 
        @post = Post.new 

    end 

    def create
        @post = Post.create(post_params)
        
            render :show 
        end 
    
     

    def show
        @post = Post.find_by(params.id)

    end 

    private
    def post_params
        params.require(:post).permit(
          :name, :content, :image, 
          vinyl_attributes: [
            :name,
            :artist,
            :genre,
          ]
        )
    end
end 



