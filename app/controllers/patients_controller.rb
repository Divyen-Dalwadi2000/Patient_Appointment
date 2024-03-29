class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
    @patient.appointments.build
  end

  def create 
    @patient = Patient.create(patient_params)
    if @patient.save 
      redirect_to @patient
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to @patient
    end 
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy

    redirect_to @patient
  end

  private

  def patient_params
 params.require(:patient).permit(:name,appointments_attributes:[:appointment_date , :physician_id])
  end
end
