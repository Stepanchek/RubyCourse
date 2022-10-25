class MailSort
  attr_accessor :city, :street, :house, :apartment, :destination, :value
  @@base = Array.new
  def initialize(city, street, house, apartment, destination, value)
    @city = city
    @street = street
    @house = house
    @apartment = apartment
    @destination = destination
    @value = value
    @@base << self
  end

  def self.numOfMailsInKyiv
    puts("Result: ")
    print((@@base.find_all{|element|(element.city=="Kyiv")}).length," parcels were sent in Kyiv")
  end

  def self.numOfMails10uah
    puts("Result: ")
    res = @@base.find_all{|element|(element.value >10)}
    res = res.map{|x| x.city}.uniq
    res.unshift(res.length)
    print(res[0], " parcel with value more than 10 were sent\n")
    print("Cities: ",res[1..-1])
  end

  def self.numOfRepDest
    puts("Result: ")
    res = @@base.select{|elem| @@base.count{|elem2| elem2.city==elem.city && elem2.street==elem.street && elem2.house==elem.house && elem2.apartment==elem.apartment}>1}
    temp = res.map{|x|x.destination}.uniq
    result = Array.new
    (temp.length).times do|int|
      result.append(temp[int].to_s+" - "+res.count{|x|x.destination == temp[int]}.to_s)
    end
    puts("(Person - count)")
    result
  end
end

def randStr(num)
  value = ""
  num.times{value  << (97 + rand(25)).chr}
  value
end

arr = Array.new

arr.append(MailSort.new("Kyiv","Kalinina",5,3,"Stas",10))
arr.append(MailSort.new("Kyiv","Kalinina",5,3,"Stas",10))
arr.append(MailSort.new("Zhytomyr","Furihata",32,94,"Vlada",4))
arr.append(MailSort.new("Kyiv","Peremohi",3,11,"Oleg",3))
arr.append(MailSort.new("Kyiv","Shevchenka",14,14,"Stas",14))
arr.append(MailSort.new("Lviv","Kalinina1",1,1,"Sofia",28))
arr.append(MailSort.new("Lviv","Kalinina1",1,1,"Sofia",28))
arr.append(MailSort.new("Odesa","str1",1,1,"Sofia",36))
arr.append(MailSort.new("Balakliya","str2",2,2,"Sofia",47))

puts(MailSort::numOfMailsInKyiv)
puts(MailSort::numOfMails10uah)
puts(MailSort::numOfRepDest)
