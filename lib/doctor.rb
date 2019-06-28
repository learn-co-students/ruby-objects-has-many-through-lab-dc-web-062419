class Doctor
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    self.appointments.map { |appointment| appointment.patient }
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def self.all
    @@all
  end
end