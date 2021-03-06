class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(date,doctor)
    appointment = Appointment.new(doctor,self, date)
  end
  
  def appointments
    Appointment.all.select{|a| a.patient == self}
  end
  
  def doctors
    self.appointments.collect{|a| a.doctor }
  end
  
end