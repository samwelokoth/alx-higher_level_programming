#!/usr/bin/node

const request = require('request');

const movieId = process.argv[2];
if (!movieId) {
  console.error('Please provide a Movie ID');
  process.exit(1);
}

const url = `https://swapi.dev/api/films/${movieId}/`;

request.get(url, { json: true }, (err, res, body) => {
  if (err) {
    console.error(err);
    return;
  }

  const characters = body.characters;
  if (!characters) {
    console.error('Invalid Movie ID');
    return;
  }

  const characterPromises = characters.map((characterUrl) => {
    return new Promise((resolve, reject) => {
      request.get(characterUrl, { json: true }, (err, res, body) => {
        if (err) {
          reject(err);
        } else {
          resolve(body.name);
        }
      });
    });
  });

  Promise.all(characterPromises)
    .then((names) => {
      names.forEach((name) => {
        console.log(name);
      });
    })
    .catch((err) => {
      console.error(err);
    });
});

