class PostsController < ApplicationController

    def index
        @posts = Post.all

    end 

    def new 
        @post = Post.new 

    end 

    def create
        @post = Post.create(post_params)
        if @post.save 
            redirect_to posts_path(post)
        end 
     end 

    def show
        @post = Post.find_by(params.id)

    end 

end
