class ParticipationsController < ApplicationController
    require 'mail'
    require 'sendgrid-ruby'
    include SendGrid
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
            #UserMailer.with(user: @user, name: @name ).welcome_email.deliver_now
            from = Email.new(email:'studyGroupFinderApp@gmail.com')
            subject = 'You have successfully joined '+@name+'!'
            to = Email.new(email: @user.email)
            content = Content.new(type: 'text/plain', value: '

                Hi Welcome to StudyGroupFinder '+@user.first_name+'
                
                You have Successfully joined '+@name+'!

                You can find your group at https://study-group-finder-tulane.herokuapp.com/groups/'+params[:id]+'

                Thanks for joining and have a great day!

            ')
            mail = Mail.new(from,subject, to, content)

            sg = SendGrid::API.new(api_key: ENV['SENDGRID_KEY'])
            response = sg.client.mail._('send').post(request_body: mail.to_json)
            puts response.status_code
            puts response.body
            puts response.headers
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
        puts 'HI'
        @participation = Participation.find params[:id]
        @participation.destroy
        redirect_to mygroups_path
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
        puts 'HI'
        @participation.destroy
        redirect_to mygroups_path
    end
end
