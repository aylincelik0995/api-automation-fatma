const { Given, When, Then } = require('@cucumber/cucumber');
const { request } = require('@playwright/test');
const assert = require('assert');

const loginURL = "https://login.io/"
const calculateURL = "https://calculate.io/";

Given('I am authenticated with username {string} and password {string}', async function (username, password) {
  this.headers = {
    'username': username,
    'password': password,
  };

  const contextLogin = await request.newContext();
  const responseLogin = await contextLogin.post(loginURL, {
    headers: this.headers,
  });
  let session = responseLogin[session];

  this.headers = {
    'username': username,
    'password': password,
    'session': session
  };

});

When('I send a POST request to {string} with params {string}', async function (operation, params) {
  const context = await request.newContext();
  const response = await context.post(calculateURL + operation + "?params=" + params, {
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

Then('Response status code is {int}', async function (statusCode) {
  assert.strictEqual(this.response.status(), statusCode);
});


Then('Response {string} property is equal {string}', async function (key, expectedValue) {
  const body = await this.response.json();
  assert.strictEqual(body[key], expectedValue);
  console.log("Body:", body[key]);
});