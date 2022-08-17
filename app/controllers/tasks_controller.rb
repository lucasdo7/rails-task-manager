class TasksController < ApplicationController

  def index
    @tasks = Tasks.all
  end
end
