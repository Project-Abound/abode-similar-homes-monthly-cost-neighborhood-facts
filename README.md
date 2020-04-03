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
GET /api/houses/id
```

#### Recieve Heart Status for House Listing
```
GET /api/houses/id/heart
```

#### Recieve Neighborhood Data of Specified Neighborhood
```
GET /api/neighborhoods/id
```

#### Recieve House Listings in Specified Neighborhood
```
GET /api/neighborhoods/id/houses
```


### UPDATE

#### Update House Listing's Heart Status
```
PUT /api/houses/id/heart
```

### CREATE

#### Create New House Listing

Request body: 
```
PUT /api/houses
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
DELETE /api/houses/id
```



'

