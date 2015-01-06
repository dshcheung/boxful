namespace :init do
  task init: :environment do
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
  end
end
