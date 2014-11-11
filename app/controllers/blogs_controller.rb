class BlogsController < ApplicationController

def index
   @posts = Post.all
end

def show
end

def create
  	@blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Place was successfully created.' }
      else
        format.html { render :new }
      end
    end
end

def new
end

private
  def blog_params
    params.require(:blog).permit(:title, :text)
  end


end
