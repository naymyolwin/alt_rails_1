class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def show

    end

    def create
        @post = Post.new(post_params)
        if @post.save
            puts "Success"
            redirect_to posts_path
        else
            render 'posts', status: :unprocessable_entity
        end
    end

    private

    def post_params
        params.require(:post).permit(:content, :id)
    end

end
