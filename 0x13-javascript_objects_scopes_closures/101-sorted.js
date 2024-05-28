#!/usr/bin/node
// 101-sorted.js

const { dict } = require('./101-data');

const sortedDict = {};

for (const key in dict) {
    const value = dict[key];
    if (!sortedDict[value]) {
        sortedDict[value] = [];
    }
    sortedDict[value].push(key);
}

console.log(sortedDict);
