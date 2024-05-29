const { Given, When, Then } = require('@cucumber/cucumber');
const { request } = require('@playwright/test');
const assert = require('assert');

const baseURL = "https://api.genderize.io/";

Given('I am authenticated with username {string} and password {string}', async function (username, password) {
  this.headers = {
    'username': username,
    'password': password,
  };
});

When('I send a POST request to {string} with params {string}', async function (operation, params) {
  const context = await request.newContext();
  const response = await context.post(baseURL + operation + "?params=" + params, {
    headers: this.headers,
  });
  this.response = response;
});

When('I send a GET request to {string} with param {string}', async function (operation, params) {
  const context = await request.newContext();
  const response = await context.get(baseURL + operation + "?params=" + params, {
    headers: this.headers,
    params: { params: params },
  });
  this.response = response;
});



//test code
When('I send a GET request', async function () {
  const context = await request.newContext();
  const response = await context.get(baseURL + "?name=fatma");
  console.log("Response: ", await response.json());
  this.response = response;
});

//test code
When('I send a GET request to {string} with param {string} test code', async function (operation, param) {
  const context = await request.newContext();
  const response = await context.get(baseURL + "?name=" + param, {
    headers: this.headers,
  });
  console.log("Response: ", await response.json());
  this.response = response;
});

Then('Response status code is {int}', async function (statusCode) {
  assert.strictEqual(this.response.status(), statusCode);
});

Then('The response should contain {string}', async function (expectedResult) {
  const body = await this.response.json();
  assert.strictEqual(body.result, expectedResult);
});

Then('Response {string} property is equal {string}', async function (key, value) {
  const body = await this.response.json();
  //assert.strictEqual(body.result, expectedResult);
});