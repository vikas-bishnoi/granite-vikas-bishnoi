class TasksController < ApplicationController
    def index
      @tasks = Task.all
      respond_to do |format|
        format.html
        format.json { render json: @tasks }
        format.xml { render xml: @tasks }
      end
    end
  end
