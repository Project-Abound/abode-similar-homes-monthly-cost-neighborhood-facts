# abode-similar-homes-monthly-cost-neighborhood-facts

# CRUD API

## GET /api/houses
If nothing is in the body - Get all houses
If in the body {name: neighborhood_name} - Get all houses in neighborhood
If in body {houseId: house_id} - Get heart status for house

## PUT /api/houses
In the body {houseId: house_id} - Update house's heart status

## POST /api/houses
In the body {neighborhood: neighborhood_name, home_cost: cost, bedrooms: number, bathrooms: number, home_address: address, sf: number, home_image: url} - Create new house entry

## DELETE /api/houses
In the body {houseId: house_id} - Delete House Entry



'

