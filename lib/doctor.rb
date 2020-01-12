require 'pry'
class Doctor
  attr_accessor :name
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date, patient)
    appointment = Appointment.new(patient, date, self)
  end
  
  def appointments 
    Appointment.all.select{|a| a.doctor == self }
  end 
  
  def patients
    self.appointments.collect {|a| a.patient }
  end 
end