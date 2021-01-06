from sense_hat import SenseHat

round_number = 2

sense = SenseHat()

temp = sense.get_temperature()
temph = sense.get_temperature_from_humidity()
tempp = sense.get_temperature_from_pressure()

round_number = "{:."+str(round_number)+"f}"
tempa = float(round_number.format((temp + temph + tempp)/3))
pressure = float(round_number.format(sense.get_pressure()))
humidity = float(round_number.format(sense.get_humidity()))

print("Humidity: " + str(humidity))
print("Temperature: " + str(tempa))
print("Pressure: " + str(pressure))
