# My Wallet
## About this Project
My Wallet is a project that intends to be a digital wallet, for recording financial inputs and outputs.

## Why
This project is part of my personal portfolio. In it I train the skills necessary to be a full stack developer. 
I developed all phases of the back-end, front-end, database implementation and some automated tests.
Besides, it's an app that makes it very easy to manage accounts as well as know the balance.

I will be happy if you can provide some feedback on the design, code, structure, or anything else you can report that might make us a better developer!
Email me: angelicacavalheiro51@gmail.com


## Database Layout

In your psql terminal
```
$ CREATE DATABASE mywallet_dev;
```
Access the database
```
$ \c mywallet_dev
```
Now, just run the commands listed in <a href="https://github.com/angelicacavalheiro/MyWallet-backend/blob/main/dump.sql">dump.sql</a>

---
## How it works
This project is divided into two parts:
1. Backend (This repository)
2. Frontend (You can find here: https://github.com/angelicacavalheiro/MyWallet-frontend)
---

## Functionalities
- SignIn and signUp with password and email validations;

- Insert and list: financial events;

## Installing

**Cloning the Repository**

```
$ git clone https://github.com/angelicacavalheiro/MyWallet-backend
$ cd MyWallet-backend
```

**Installing dependencies**

```
$ npm install
```

**Run the application in production mode**

```
$ ntl -> start
```
**Run the application in development mode**

Create a .env.dev file and fill it using your environment variables following the .env.example

You can find the .env.example [here](https://github.com/angelicacavalheiro/MyWallet-backend/blob/main/.env.example).

```
$ ntl -> start:dev
```

In this case you need to adapt the routes that access the backend, on the front. because the current routes, access the production environment.

##

## Built With
**Server**  ([NodeJS](https://nodejs.org/en/))
-   **[Express](https://expressjs.com/)**
-   **[CORS](https://expressjs.com/en/resources/middleware/cors.html)**
-   **[Bcrypt](https://github.com/kelektiv/node.bcrypt.js)**
-   **[NTL](https://github.com/ruyadorno/ntl)**
-   **[Pg](https://github.com/brianc/node-postgres)**
-   **[DotENV](https://github.com/motdotla/dotenv)**
-   **[UUID](https://github.com/uuidjs/uuid)**
-   **[Faker](https://github.com/Marak/Faker.js)**
-   **[Joi](https://github.com/hapijs/joi)**
-   **[Jest](https://github.com/facebook/jest)**
-   **[Supertest](https://github.com/visionmedia/supertest)**
##

## How to contribute
1. Fork the project.
2. Create a new branch with your changes: `git checkout -b feat/myFeatureName`
3. For each feature implemented, make a commit specifying what was done
4. Submit your changes: `git push -u origin feat/myFeatureName`

##

## Author
Developed by Angélica Cavalheiro Rodrigues.
