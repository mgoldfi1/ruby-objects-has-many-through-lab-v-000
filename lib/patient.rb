class Patient
  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor,date)
    apt = Appointment.new(date,self,doctor)
  end

  def appointments
    Appointment.all.select do |x|
      x.patient == self
    end
  end










end
