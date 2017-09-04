class EncountersController < ApplicationController

  def index
    @encounters = Encounter.all
  end

  def new
    @patients = Patient.all
  end

  def show
    @encounter = Encounter.find(params[:id])
  end

  def create
    @encounter = Encounter.create(params[:encounter])
  end

end
