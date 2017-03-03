class HomeController < ApplicationController
  def index
  	if params[:search].present?
  	  @blogs = Blog.where(" title LIKE ? OR description LIKE ?", params[:search],params[:search])
  
      elsif params[:start_date] && params[:start_date]
      @blogs =Blog.where("created_at >= :start_date AND created_at <= :end_date", {start_date: params[:start_date].to_time, end_date: params[:end_date].to_time}
       else
  	  @blogs = Blog.all
  	end
  end
end
