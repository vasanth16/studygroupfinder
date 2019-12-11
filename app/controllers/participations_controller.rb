class ParticipationsController < ApplicationController
    require 'mail'
    def index
        @participations = Participation.all
    end
    
    def new 
       
        @participation = Participation.new 
        # default: render 'new' template
        if user_signed_in? 
            @user = current_user
            @g = Group.where(:id => params[:id])
            @name = ""
            @g.each do |g|
                @name = g.group_name
            end
            puts @name

        
            Participation.create!({:group_id => params[:id], :user_id => current_user.id})
            UserMailer.with(user: @user, name: @name ).welcome_email.deliver_now
            # mail = Mail.new do
            #     from    'vasanthrajvr@gmail.com'
            #     to      'vasanthrajvr@gmail.com'
            #     subject 'This is a test email'
            #     body    'Wassssaaaappppppp'
            # end
            # mail.deliver!
        #default: render 'create' template
        #flash[:notice] = "Participation was successfully created." 
            redirect_to mygroups_path 
        #params.require(:participation)
        #permitted = params[:participation].permit(:group_id,:user_id)
        end
        
        
    end  
    
    def create
        
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
        redirect_to participations_path
    end
end
