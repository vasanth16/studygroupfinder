class ParticipationsController < ApplicationController
    def index
        @participations = Participation.all
    end
    
    def new 
        @participation = Participation.new 
        # default: render 'new' template 
    end  
    
    def create
        params.require(:participation)
        permitted = params[:participation].permit(:group_id,:user_id)
        @participation = Participation.create!(permitted)
        flash[:notice] = "Participation was successfully created." 
        redirect_to participations_path 
    end
end
