class ScoutingReportsController < ApplicationController
  before_action :set_scouting_report, only: %i[ show edit update destroy ]

  # GET /scouting_reports or /scouting_reports.json
  def index
    @scouting_reports = ScoutingReport.all
  end

  # GET /scouting_reports/1 or /scouting_reports/1.json
  def show
  end

  # GET /scouting_reports/new
  def new
    @scouting_report = ScoutingReport.new
  end

  # GET /scouting_reports/1/edit
  def edit
  end

  # POST /scouting_reports or /scouting_reports.json
  def create
    @scouting_report = ScoutingReport.new(scouting_report_params)

    respond_to do |format|
      if @scouting_report.save
        format.html { redirect_to @scouting_report, notice: "Scouting report was successfully created." }
        format.json { render :show, status: :created, location: @scouting_report }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @scouting_report.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /scouting_reports/1 or /scouting_reports/1.json
  def update
    respond_to do |format|
      if @scouting_report.update(scouting_report_params)
        format.html { redirect_to @scouting_report, notice: "Scouting report was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @scouting_report }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @scouting_report.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /scouting_reports/1 or /scouting_reports/1.json
  def destroy
    @scouting_report.destroy!

    respond_to do |format|
      format.html { redirect_to scouting_reports_path, notice: "Scouting report was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scouting_report
      @scouting_report = ScoutingReport.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def scouting_report_params
      params.expect(scouting_report: [ :player_name, :position, :team, :evaluation, :grade ])
    end
end
