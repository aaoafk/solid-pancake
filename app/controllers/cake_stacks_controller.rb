class CakeStacksController < ApplicationController
  before_action :set_cake_stack, only: %i[ show edit update destroy ]

  # GET /cake_stacks or /cake_stacks.json
  def index
    @cake_stacks = CakeStack.all
  end

  # GET /cake_stacks/1 or /cake_stacks/1.json
  def show
  end

  # GET /cake_stacks/new
  def new
    @cake_stack = CakeStack.new
  end

  # GET /cake_stacks/1/edit
  def edit
  end

  # POST /cake_stacks or /cake_stacks.json
  def create
    @cake_stack = CakeStack.new(cake_stack_params)

    respond_to do |format|
      if @cake_stack.save
        format.html { redirect_to cake_stack_url(@cake_stack), notice: "Cake stack was successfully created." }
        format.json { render :show, status: :created, location: @cake_stack }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cake_stack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cake_stacks/1 or /cake_stacks/1.json
  def update
    respond_to do |format|
      if @cake_stack.update(cake_stack_params)
        format.html { redirect_to cake_stack_url(@cake_stack), notice: "Cake stack was successfully updated." }
        format.json { render :show, status: :ok, location: @cake_stack }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cake_stack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cake_stacks/1 or /cake_stacks/1.json
  def destroy
    @cake_stack.destroy

    respond_to do |format|
      format.html { redirect_to cake_stacks_url, notice: "Cake stack was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cake_stack
      @cake_stack = CakeStack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cake_stack_params
      params.require(:cake_stack).permit(:script, :msg)
    end
end
