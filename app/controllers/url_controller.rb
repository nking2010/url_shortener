class UrlController < ApplicationController
  def create
   @url = Url.new(url_params)

   respond_to do |format|
     if @url.save
       format.html { redirect_to @url, notice: 'Url was successfully created.' }
       format.json { render :show, status: :created, location: @url }
     else
       format.html { render :new }
       format.json { render json: @url.errors, status: :unprocessable_entity }
     end
   end
 end

  def index
  end

  def new
    @url=Url.new
    @urls=Url.all
  end

  def show
    @url=Url.last
  end

  def redirect
    @redirect=Url.find(params[:id])
  end

  private
  def url_params
    params.require(:url).permit(:address)
  end
end
