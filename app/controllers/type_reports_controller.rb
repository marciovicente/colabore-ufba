class TypeReportsController < ApplicationController
  before_action :set_type_report, only: [:show, :edit, :update, :destroy]

  # GET /type_reports
  # GET /type_reports.json
  def index
    @type_reports = TypeReport.all
  end

  # GET /type_reports/1
  # GET /type_reports/1.json
  def show
  end

  # GET /type_reports/new
  def new
    @type_report = TypeReport.new
  end

  # GET /type_reports/1/edit
  def edit
  end

  # POST /type_reports
  # POST /type_reports.json
  def create
    @type_report = TypeReport.new(type_report_params)

    respond_to do |format|
      if @type_report.save
        format.html { redirect_to @type_report, notice: 'Type report was successfully created.' }
        format.json { render :show, status: :created, location: @type_report }
      else
        format.html { render :new }
        format.json { render json: @type_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_reports/1
  # PATCH/PUT /type_reports/1.json
  def update
    respond_to do |format|
      if @type_report.update(type_report_params)
        format.html { redirect_to @type_report, notice: 'Type report was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_report }
      else
        format.html { render :edit }
        format.json { render json: @type_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_reports/1
  # DELETE /type_reports/1.json
  def destroy
    @type_report.destroy
    respond_to do |format|
      format.html { redirect_to type_reports_url, notice: 'Type report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_report
      @type_report = TypeReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_report_params
      params.require(:type_report).permit(:label, :description)
    end
end
