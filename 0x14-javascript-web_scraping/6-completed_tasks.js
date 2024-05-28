#!/usr/bin/node

const axios = require('axios');

function getCompletedTasks (data, userId) {
  let count = 0;
  data
    .filter((element) => element.userId === userId)
    .forEach((task) => {
      if (task.completed) {
        count++;
      }
    });
  return count;
}

const url = process.argv[2];

axios.get(url)
  .then(response => {
    const data = response.data;
    const results = {};
    data.forEach((element) => {
      if (!(element.userId in results)) {
        const completedTasks = getCompletedTasks(data, element.userId);
        if (completedTasks > 0) {
          results[element.userId] = completedTasks;
        }
      }
    });
    console.log(results);
  })
  .catch(err => {
    console.error(err);
  });

