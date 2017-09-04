class EncountersController < ApplicationController

  def index
    @encounters = Encounter.all
    @encounters = @encounters.unbilled unless params[:all]
    @encounters.paginate(page: params[:page] || 1, per_page: params[:per_page] || 25).order('id DESC')
  end

  def new
    @encounter = Encounter.new
    @encounter.build_patient
  end

  def show
    @encounter = Encounter.find(params[:id])
  end

  def create
    @encounter = Encounter.create(encounter_params)
    redirect_to new_encounter_url
  end

  private

  def patient
    @patient ||= Patient.find_by(account_number: params[:encounter][:patient_attributes][:account_number])
  end

  def encounter_params
    if patient.present?
      params[:encounter][:patient_id] = patient.id
      params[:encounter].delete(:patient_attributes)
    end
    params.require(:encounter).permit(:date_of_service, :reason_for_visit, :patient_id, :patient_attributes => [:account_number, :first_name, :last_name])
  end

end
