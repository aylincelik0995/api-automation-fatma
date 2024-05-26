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

);