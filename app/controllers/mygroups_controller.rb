class MygroupsController < ApplicationController

     def index
        #@groups=Group.where(["group_name LIKE ?","%#{params[:search]}%"]).order(:group_name)
        @mygroups = []
        @participations= Participation.where(:user_id => 2)
        @participations.each do |participations|
            puts "____________"
            @group = Group.where(:group_id => participations.group_id)
            @group.each do |group|
                @mygroups.append(group)
            end
        end
        puts @mygroups
        
        @groups=@mygroups
        
        #@groups=Group.all
    end
end