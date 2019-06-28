class Patient
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def appointments
    Appointment.all.select { |appointment|  appointment.patient == self }
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    self.appointments.map { |appointment| appointment.doctor }
  end

  def self.all
    @@all
  end
end