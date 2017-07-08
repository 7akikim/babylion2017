class PostsController < ApplicationController
    def new
        
        
    end
    
    def create
        #1. Post 껍데기를 만든다.
        @new_post = Post.new 
        #2. title이란 곳에 제목을 저장한다.
        @new_post.title = params[:input_title]
        #3. content란 곳에 내용을 저장한다.
        @new_post.content = params[:input_content]
        #4. 저장한다.
        @new_post.save
        
        #저장했으니까 여기로 가!!!! 
        redirect_to "/posts/show/#{@new_post.id}"
    end
    
    def index
        # 모든 게시글을 보여주는 애 
        @posts = Post.all
    end
    
    def show
        # 하나의 게시글을 보여주는 애
        @post = Post.find(params[:id])
    end
end
