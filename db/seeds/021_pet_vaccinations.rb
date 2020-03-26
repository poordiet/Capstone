pet_vaccinations = [
    [1,1,Date.new(2018,9,04),3,Date.new(2021,9,04)],
    [2,1,Date.new(2018,9,04),3,Date.new(2021,9,04)],
    [3,1,Date.new(2019,12,01),0.5,Date.new(2019,06,01)],
    [4,1,Date.new(2018,9,04),1,Date.new(2019,9,04)],
    [1,5,Date.new(2019,05,01),3,Date.new(2022,05,01)],
    [2,5,Date.new(2019,05,01),3,Date.new(2022,05,01)],
    [3,5,Date.new(2019,05,01),0.5,Date.new(2019,11,01)],
    [1,10,Date.new(2018,05,24),1,Date.new(2019,05,24)],
    [1,10,Date.new(2019,05,24),3,Date.new(2022,05,24)],
    [2,10,Date.new(2019,05,24),3,Date.new(2022,05,24)],
    [3,10,Date.new(2019,05,24),0.5,Date.new(2019,11,24)],
    [4,10,Date.new(2019,05,24),1,Date.new(2020,05,24)],
    [1,25," "," ",Date.new(2019,03,20)],
    [1,25," "," ",Date.new(2019,03,20)],
    [2,25," "," ",Date.new(2019,03,20)],
    [2,25," "," ",Date.new(2019,03,20)],
    [3,25," "," ",Date.new(2019,03,20)],
    [3,25," "," ",Date.new(2019,03,20)],
    [3,25," "," ",Date.new(2019,03,20)],
    [4,25," "," ",Date.new(2019,03,20)],
    [1,8,Date.new(2019,01,12),3," "]
]



pet_vaccinations.each do |vaccine_id, pet_id, date_given, duration, date_expire|
    PetVaccination.create(vaccine_id: vaccine_id, pet_id: pet_id, date_given: date_given, duration: duration, date_expire: date_expire)
end
