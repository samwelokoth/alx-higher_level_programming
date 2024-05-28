#!/usr/bin/node

const request = require('request');

const movieId = process.argv[2];
if (!movieId) {
  console.error('Please provide a Movie ID');
  process.exit(1);
}

const url = `https://swapi-api.alx-tools.com/api/films/${movieId}/`;

request.get(url, { json: true }, (err, res, body) => {
  if (err) {
    console.error(err);
    return;
  }

  if (res.statusCode === 200) {
    console.log(body.title);
  } else {
    console.error(`Error: ${res.statusCode}`);
  }
});

