class LiquidTemplatesController < ApplicationController
  before_action :set_liquid_template, only: [:show, :edit, :update, :destroy]

  # GET /liquid_templates
  # GET /liquid_templates.json
  def index
    @liquid_templates = LiquidTemplate.all
  end

  # GET /liquid_templates/1
  # GET /liquid_templates/1.json
  def show
  end

  # GET /liquid_templates/new
  def new
    @liquid_template = LiquidTemplate.new
  end

  # GET /liquid_templates/1/edit
  def edit
  end

  # POST /liquid_templates
  # POST /liquid_templates.json
  def create
    @liquid_template = LiquidTemplate.new(liquid_template_params)

    respond_to do |format|
      if @liquid_template.save
        format.html { redirect_to @liquid_template, notice: 'Liquid template was successfully created.' }
        format.json { render :show, status: :created, location: @liquid_template }
      else
        format.html { render :new }
        format.json { render json: @liquid_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liquid_templates/1
  # PATCH/PUT /liquid_templates/1.json
  def update
    respond_to do |format|
      if @liquid_template.update(liquid_template_params)
        format.html { redirect_to @liquid_template, notice: 'Liquid template was successfully updated.' }
        format.json { render :show, status: :ok, location: @liquid_template }
      else
        format.html { render :edit }
        format.json { render json: @liquid_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liquid_templates/1
  # DELETE /liquid_templates/1.json
  def destroy
    @liquid_template.destroy
    respond_to do |format|
      format.html { redirect_to liquid_templates_url, notice: 'Liquid template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liquid_template
      @liquid_template = LiquidTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liquid_template_params
      params.require(:liquid_template).permit(:content)
    end
end
