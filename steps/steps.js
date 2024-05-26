const { request } = require('@playwright/test');
const {
    Given,
    When,
    Then,
    BeforeAll,
    Before,
    After,
    AfterAll,
    defineParameterType,
    BeforeStep,
} = require('@cucumber/cucumber');
const { expect, use } = require('chai');
const headers = require('../resources/headers');

let response, header, username, password;

Given( 'I an authorized user with username {string} and password {string}',function(username,password){
    headers = {
        'username': username,
        'password': password,
        'Content-Type': 'application/json'
      };
}

When('I send a "GET" request to "USER" with header parameters', function (username,password) {
    const paramsArray = params.split(',').map(Number);
    response = await request.post(`/api/${operation}?params=${paramsArray.join(',')}`, {
      headers
    });
  });

);
