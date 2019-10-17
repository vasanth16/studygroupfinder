{"changed":true,"filter":false,"title":"groups_controller.rb","tooltip":"/app/controllers/groups_controller.rb","value":"class GroupsController < ApplicationController\n    def index\n        @groups = Group.all\n    end\n\n    def show\n        #id = params[:id]\n        @group = Group.find params[:id]\n    end\n    \n    def new \n        @group = Group.new \n        # default: render 'new' template \n    end  \n\n    def create\n        params.require(:group)\n        permitted = params[:group].permit(:group_id,:time,:location, :members, :class_code, :group_name)\n        @group = Group.create!(permitted)\n        flash[:notice] = \"#{@group.group_name} was successfully created.\" \n        redirect_to groups_path \n    end\n    \nend\n","undoManager":{"mark":-2,"position":0,"stack":[[{"start":{"row":23,"column":0},"end":{"row":27,"column":13},"action":"remove","lines":["<<<<<<< HEAD","end","=======","end",">>>>>>> stuff"],"id":2},{"start":{"row":23,"column":0},"end":{"row":23,"column":3},"action":"insert","lines":["end"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":0,"column":0},"end":{"row":0,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1571288120178}