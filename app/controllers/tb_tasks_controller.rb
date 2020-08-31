class TbTasksController < ApplicationController
  before_action :add_breadcrumb_index
  before_action :set_task, only: %w(edit update)

  # GET tasks
  def index
    @q = TbTask.ransack(params[:q])
    @tb_tasks = @q.result(distinct: true)
  end

  # GET tasks/new
  def new
    @tb_task = TbTask.new
  end

  # GET tasks/edit/:id
  def edit
  end

  # POST tasks
  def create
    @error = false
    @tb_task = TbTask.new(tb_task_params)

    @error = !@error unless @tb_task.save

    index
  end

  # PUTCH tasks
  def update
    @error = false

    @error = !@error unless @tb_task.update(tb_task_params)

    index
  end

  private

  def set_task
    @tb_task = TbTask.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tb_task_params
    params.require(:tb_task)
        .permit(:title, :description, tb_items_attributes: [:id, :title, :_destroy])
  end

  def add_breadcrumb_index
    add_breadcrumb breadcrumb('tasks.plural'), root_path
  end
end
