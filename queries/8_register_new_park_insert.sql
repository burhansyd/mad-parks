INSERT INTO parks (
  park_name,
  street_address,
  city,
  province,
  description,
  coordinates_long,
  coordinates_lat,
  basketball_nets,
  tennis_courts,
  soccer_nets,
  skatepark,
  workout_equipment,
  bathrooms,
  water_fountain,
  dog_park,
  creator_id,
  map_id)
VALUES (
  'testpark',
  'testAddress',
  'testCity',
  'testProv',
  'testDesc',
  123.123456,
  12.123456,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  2,
  3
)
RETURNING *;