const createCsvWriter = require('csv-writer').createObjectCsvWriter;
const faker = require('faker');

const sfHoods = {
  1: 'Hayes Valley',
  2: 'Haight Ashbury',
  3: 'Nob Hill',
  4: 'North Beach',
  5: 'SoMa',
  6: 'The Mission',
  7: 'Castro',
  8: 'Outer Richmond',
  9: 'Outer Sunset',
  10: 'Pacific Heights',
  11: 'Russian Hill',
  12: 'Chinatown',
  13: 'Buena Vista',
  14: 'Fillmore',
  15: 'Presidio'
};

const streetSuff = [
  'St.',
  'Rd.',
  'Ave.',
  'Ln.',
  'Pl.',
  'Ct.',
  'Terr.',
  'Blvd.',
  'Wy.',
  'Dr.',
];

// let neighborhoodId = () => { return Math.floor(Math.random() * Math.floor(14)) + 1 };



const csvWriter = createCsvWriter({
  path: 'csv/cass1.csv',
  header: [
    {id: 'hood_id', title: 'hood_id'},
    {id: 'hood_name', title: 'hood_name'},
    {id: 'transit_score', title: 'transit_score'},
    {id: 'walk_score', title: 'walk_score'},
    {id: 'value_past', title: 'value_past'},
    {id: 'value_future', title: 'value_future'},
    {id: 'median_value', title: 'median_value'},
    {id: 'house_id', title: 'house_id'},
    {id: 'home_cost', title: 'home_cost'},
    {id: 'bedrooms', title: 'bedrooms'},
    {id: 'bathrooms', title: 'bathrooms'},
    {id: 'square_feet', title: 'square_feet'},
    {id: 'street_adr', title: 'street_adr'},
    {id: 'city', title: 'city'},
    {id: 'state', title: 'state'},
    {id: 'zipcode', title: 'zipcode'},
    {id: 'house_img', title: 'house_img'},
  ]
});

const neighborhoods_houses = [];

const entryGenerator = () => {
  let entry = {};
  entry.hood_id = faker.random.number({ min: 1, max: 15 });
  entry.hood_name = sfHoods[entry.hood_id];
  entry.transit_score = faker.random.number({ min: 70, max: 99 });
  entry.walk_score = faker.random.number({ min: 70, max: 99 });
  entry.value_past = faker.random.number({ min: -3, max: 4 });
  entry.value_future = faker.random.number({ min: -3, max: 4 });
  entry.median_value = faker.random.number({ min: 1100, max: 2200 }) * 1000;
  entry.bedrooms = faker.random.number({ min: 3, max: 6 });
  entry.bathrooms = entry.bedrooms - faker.random.number({ min: 1, max: 2 });
  entry.street_adr = faker.address.streetAddress();
  entry.city = faker.address.city();
  entry.state = faker.address.state();
  entry.zipcode = faker.address.zipCode();
  entry.house_img = faker.random.number({min: 1, max: 2})
  return entry;
}

for (let i = 0; i < 1000000; i++) {
  neighborhoods_houses.push(entryGenerator());
}

csvWriter.writeRecords(neighborhoods_houses)       // returns a promise
    .then(() => {
        console.log('...Done');
    });
