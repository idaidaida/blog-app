class BlogsController < ApplicationController

    def index
        
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def not_have_entry
        @not_have_entry_blogs = []
        Blog.all.each do |blog|
            @not_have_entry_blogs.push(blog) if blog.entries.blank?
        end
    end

    def have_unapproved_comment
        @blogs = Blog.includes(entries:[:comments]).where(comments:{status:"unapproved"})
    end
end
