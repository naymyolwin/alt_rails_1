class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def index
        @posts = Post.all
    end

    def show

    end

    def create
        @post = Post.new(params.require(:post).permit(:content))
        @post.user_id = 2
        @post.save
        redirect_to posts_path
    end
end
