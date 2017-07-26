class PicturesController < ApplicationController

  def index
   @most_recent_pictures = Picture.most_recent_five
  end

def edit
  end

def show
    @picture = Picture.find(params[:id])
    end


def new
    @picture = Picture.new
  end


def update
    @picture = Picture.find(params[:id])
    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]

   end


def create
    @picture = Picture.new
    @picture.title = params[:picture][:title]
    @picture.artist = params[:picture][:artist]
    if @picture.save
      redirect_to 'pictures#index'
    else
      render :new
end
end

def self.most_recent(limit)
  if limit.present?
  order(created_at: :desc).limit(limit)
end
end
  #this was from Freds class

end
