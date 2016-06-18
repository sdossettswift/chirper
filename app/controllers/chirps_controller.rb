class ChirpsController < ApplicationController
    def index
        if params[:author]
            @chirps = Chirp.where(author: params[:author])
        else
            @chirps = Chirp.all
        end
    end

    def index
        @chirps = Chirp.all
    end

    def new
        @chirp = Chirp.new

    end

    def edit
        @chirp = Chirp.find(params[:id])
    end

    def show
        @chirp = Chirp.find(params[:id])
    end

    def create
        @chirp = Chirp.new(params[:chirp].permit(:author, :body))
        if @chirp.save
            redirect_to chirp_path(@chirp)
        else
            render 'new'
        end
    end

    def update
        @chirp = Chirp.find(params[:id])

        if @chirp.update(params[:chirp].permit(:author, :body))
            redirect_to chirp_path(@chirp)
        else
            render 'edit'
        end
    end
    def destroy
        Chirp.find(params[:id]).destroy
        redirect_to chirps_path
    end

end
