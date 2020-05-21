
5.times do |i|
   User.create(username: "@neto_dev",
             first_name: "Ernesto",
             last_name: "Valenzuela",
             email: "hello@netov.dev",
             password: "neto",
             age: 26)
end