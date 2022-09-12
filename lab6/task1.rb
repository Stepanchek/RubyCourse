class Mail
  attr_accessor :city,:street,:house,:flat,:addressee,:value

  def initialize(city,street,house,flat,addressee,value)
    @city = city
    @street = street
    @house = house
    @flat = flat
    @addressee = addressee
    @value = value
  end
end

class Parcel

end