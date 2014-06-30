class TaskItemsController < ApplicationController
  # before_action :set_task, only: [:index, :new, :create]
  before_action :set_task_item, only: [:show, :edit, :update, :destroy]

  # GET /task_items
  # GET /task_items.json
  def index
    @task_items = TaskItem.find(params[:ids])
    render json: { task_items:  @task_items }
  end

  # GET /task_items/1
  # GET /task_items/1.json
  def show
    render json: { task_items:  @task_item }
  end

  # GET /task_items/new
  def new
    @task_item = @task.items.build
  end

  # GET /task_items/1/edit
  def edit
  end

  # POST /task_items
  # POST /task_items.json
  def create
    @task_item = @task.items.build(task_item_params)

    respond_to do |format|
      if @task_item.save
        format.html { redirect_to item_path(@task_item), notice: 'Task item was successfully created.' }
        format.json { render json: { task_items:  @task_item }, status: :created }
      else
        format.html { render :new }
        format.json { render json: { errors: @task_item.errors }, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_items/1
  # PATCH/PUT /task_items/1.json
  def update
    respond_to do |format|
      if @task_item.update(task_item_params)
        format.html { redirect_to @task_item, notice: 'Task item was successfully updated.' }
        format.json { render json: { task_items:  @task_item }, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: { errors: @task_item.errors }, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_items/1
  # DELETE /task_items/1.json
  def destroy
    @task_item.destroy
    respond_to do |format|
      format.html { redirect_to task_items_url, notice: 'Task item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_item
      @task_item = TaskItem.find(params[:id])
    end

    def set_task
      @task = Task.find(params[:task_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_item_params
      params.require(:task_item).permit(:title, :plan_time, :time, :state)
    end
end
