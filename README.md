# Defi Express Multichain
The repo maintains and manages all the Multi-chain backend APIs for Instadapp clients.

## Swagger UI
You can interact with the APIs present in the repo through our Swagger UI

Link : https://api.instadapp.io/defi/mainnet/docs/

## Commands
Before running any command, make sure to install dependencies:

```sh
$ npm install
```
Before starting server, make sure you have mongod up and running.

you can install mongodb using brew or follow [this](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/) link 

```sh
$ brew install mongodb-community@5.0
```
To start mongodb server
 
```sh
$ brew services start mongodb-community@5.0
```
To start server: 

```sh
$ npm run dev
```
