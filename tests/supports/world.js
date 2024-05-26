const { setWorldConstructor } = require('@cucumber/cucumber');

class CustomWorld {
    constructor() {
        this.headers = {};
        this.response = null;
    }
}

setWorldConstructor(CustomWorld);