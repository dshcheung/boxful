# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

  OrderType.create(order_type: "drop_empty")
  OrderType.create(order_type: "drop_full")
  OrderType.create(order_type: "pickup_empty")
  OrderType.create(order_type: "pickup_full")

  LocationType.create(location: "user_home")
  LocationType.create(location: "transit")
  LocationType.create(location: "warehouse")

  Transit.create(car_id: 1, driver_id: 1)
  Transit.create(car_id: 1, driver_id: 2)
  Transit.create(car_id: 2, driver_id: 3)
  Transit.create(car_id: 2, driver_id: 4)

  Car.create(license: "AA 1111")
  Car.create(license: "BB 2222")

  Driver.create(name: "Alpha", contact: 11111111)
  Driver.create(name: "Beta", contact: 22222222)
  Driver.create(name: "Gamma", contact: 33333333)
  Driver.create(name: "Delta", contact: 44444444)

  Warehouse.create(address1: "Floor 1", address2: "1 Street", region: "Causeway Bay", district: "Hong Kong", contact: 11111111)
  Warehouse.create(address1: "Floor 2", address2: "2 Street", region: "North Point", district: "Hong Kong", contact: 22222222)

  TimeWhen.create(time: "09:00 - 12:00")
  TimeWhen.create(time: "12:00 - 15:00")
  TimeWhen.create(time: "15:00 - 18:00")
  TimeWhen.create(time: "18:00 - 21:00")