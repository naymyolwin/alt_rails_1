class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def index

    end

    def show

    end

    def create
        @post = Post.new(params.require(:post).permit(:content))
        @post.save
        redirect_to posts_path
    end
end
