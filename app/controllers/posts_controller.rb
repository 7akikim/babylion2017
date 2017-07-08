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
    end
end
