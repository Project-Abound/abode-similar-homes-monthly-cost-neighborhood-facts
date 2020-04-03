# abode-similar-homes-monthly-cost-neighborhood-facts

## Start Project

start server - run command: $ npm start

## API Documentation

### READ

#### Recieve All House Listings
```
GET /api/houses
```

#### Recieve Sepcefic House Listing by House ID
```
GET /api/houseid
```

#### Recieve House Listings by Specified Neighborhood Name 
```
GET /api/neighborhood
```

#### Recieve Heart Status for House Listing
```
GET /api/houseid/heart
```

### UPDATE

#### Update House Listing's Heart Status
```
PUT /api/houseid/heart
```

### CREATE

#### Create New House Listing

Request body: 
```
PUT /api/houseid/heart
{
  neighborhood: string, 
  home_cost: int, 
  bedrooms: int, 
  bathrooms: int, 
  home_address: string, 
  sf: int, 
  home_image: string - (url)
}
```

### DELETE

#### Delete Existing House Listing
```
DELETE /api/houseid
```



'

