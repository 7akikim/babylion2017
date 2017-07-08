class HomeController < ApplicationController
  def index

  end
  
  def result
    # Parameters: {"title"=>"1번글", "content"=>"내용이
     @title_output = params[:title]
     @content_output = params[:content]
  end
end
