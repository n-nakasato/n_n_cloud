class Graph2sController < ApplicationController
  before_action :set_graph2, only: [:show, :edit, :update, :destroy]

  # GET /graph2s
  # GET /graph2s.json
  def index
    @graph2s = Graph2.all

    @plots2temp = Array.new()
    @plots2humi = Array.new()

    for var in @graph2s do
      workTemp = Array.new()
      workTemp.push(var.time)
      workTemp.push(var.temp)
      @plots2temp.push(workTemp)

      workHumi = Array.new()
      workHumi.push(var.time)
      workHumi.push(var.humi)
      @plots2humi.push(workHumi)
    end
  end

  # GET /graph2s/1
  # GET /graph2s/1.json
  def show
  end

  # GET /graph2s/new
  def new
    @graph2 = Graph2.new
  end

  # GET /graph2s/1/edit
  def edit
  end

  # POST /graph2s
  # POST /graph2s.json
  def create
    @graph2 = Graph2.new(graph2_params)

    respond_to do |format|
      if @graph2.save
        format.html { redirect_to @graph2, notice: 'Graph2 was successfully created.' }
        format.json { render :show, status: :created, location: @graph2 }
      else
        format.html { render :new }
        format.json { render json: @graph2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graph2s/1
  # PATCH/PUT /graph2s/1.json
  def update
    respond_to do |format|
      if @graph2.update(graph2_params)
        format.html { redirect_to @graph2, notice: 'Graph2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @graph2 }
      else
        format.html { render :edit }
        format.json { render json: @graph2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graph2s/1
  # DELETE /graph2s/1.json
  def destroy
    @graph2.destroy
    respond_to do |format|
      format.html { redirect_to graph2s_url, notice: 'Graph2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graph2
      @graph2 = Graph2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graph2_params
      params.require(:graph2).permit(:time, :temp, :humi)
    end
end
