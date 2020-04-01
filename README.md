# abode-similar-homes-monthly-cost-neighborhood-facts

# Start Project

start server - run command: $ npm start

# API Documentation

## GET /api/houses
### Recieve All House Listings
Nothing in request body

### Recieve House Listings by Specified Neighborhood Name
In the request body: {name: string}

### Recieve Heart Status for House Listing
In the request body: {houseId: int}

## PUT /api/houses
### Update House Listing's Heart Status
In the body {houseId: int}

## POST /api/houses
### Create New House Listing

In the request body: 
{
  neighborhood: string, 
  home_cost: int, 
  bedrooms: int, 
  bathrooms: int, 
  home_address: string, 
  sf: int, 
  home_image: string - (url)
}

## DELETE /api/houses
### Delete Existing House Listing

In the request body:
{houseId: int}



'

