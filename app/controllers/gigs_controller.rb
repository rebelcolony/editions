class GigsController < ApplicationController
 
  def index
    @gigs = Gig.all
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def new
    @gig = Gig.new
  end

  def edit
    @gig = Gig.find(params[:id])
  end

  def create
    @gig = Gig.new(params[:gig])
      if @gig.save
        redirect_to(@gig, :notice => 'Gig was successfully created.')
      else
        render :action => "new" 
    end
  end

  def update
    @gig = Gig.find(params[:id])
      if @gig.update_attributes(params[:gig])
        redirect_to(@gig, :notice => 'Gig was successfully updated.') 
      else
        render :action => "edit" 
    end
  end

  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
    redirect_to(gigs_url)
  end
end
