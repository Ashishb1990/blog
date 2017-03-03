class HomeController < ApplicationController
  def index
  	# byebug
  	if params[:search].present?
  	 @blogs = Blog.where(" title LIKE ? OR description LIKE ?", params[:search],params[:search])
  	
  	# elsif params[:blog_sdate][:start_date]
  	#    @blogs = Blog.where("created_at >= :start_date", {start_date: params[:blog_sdate][:start_date].to_time})
    
   #  elsif params[:blog_edate][:end_date] 
  	#    @blogs = Blog.where("created_at <= :end_date", {end_date: params[:blog_edate][:end_date].to_time})
    
    # elsif params[:blog_sdate][:start_date] && params[:blog_edate][:end_date] 
  	   # @blogs = Blog.where("created_at >= :start_date AND created_at <= :end_date", {start_date: params[:blog_sdate][:start_date].to_time, end_date: params[:blog_edate][:end_date].to_time})
    
    # elsif params[:blog_sdate][:start_date] && params[:blog_edate][:end_date] && params[:search]
  	   # @blogs = Blog.where("title LIKE ? AND created_at >= :start_date AND created_at <= :end_date", {params[:search], start_date: params[:blog_sdate][:start_date].to_time, end_date: params[:blog_edate][:end_date]].to_time})
       else
  	  @blogs = Blog.all
  	end
  end
end
