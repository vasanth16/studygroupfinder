class ParticipationsController < ApplicationController
    def index
        @participations = Participation.all
    end
    
    def show
        #id = params[:id]
        @participation = Participation.find params[:id]
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
    
    def edit
        @participation = Participation.find params[:id]
    end
    
    def update
        @participation = Participation.find params[:id]
        if(@participation.update(participation_params))
            redirect_to @participation
        else
            render 'edit'
        end
    end
    
    private def participation_params
        params.require(:participation).permit(:group_id,:user_id)
    end
    
    def destroy
        @participation = Participation.find params[:id]
        @participation.destroy
        redirect_to participation_path
    end
end
