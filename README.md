# Project Quark for Go
Convert any web app into native app, which uses system's inbuilt webview,  
Bundle any web project into native app and loads offline,  
You can call go functions from the web app to achieve native functionality,  
lightweight alternative to electron
Uses the awesome [webview](https://github.com/zserge/webview) project by [zserge](https://github.com/zserge)

![web app](docs/app.gif)
![web project](docs/web.jpeg)

## Usage

### Build a web project into app
* Make sure you have `go` and `node` present, you may also use the `docker-compose` files present in the package instead
* Clone the project
* Create `config.go` specifiying the configuration for the app window, use `config.go.example` as template
* Put the web app source code in folder called `web`, make sure its an npm project with `build` and `start` scripts in `package.json` and it builds out the project to `build` folder with an `index.html` at root, also make sure that when project is run locally with `npm start` we can change the local port using env var `PORT`, `create-react-app` was considered as an example for this setup
* You can change the `build_web_app.sh` and `run.sh` if this doesn't match your setup
* Run `run.sh` to run your app during development
* Run `build.sh` to build out the app in `build` folder that can then be bundled and distributed

### Convert existing web app
* Make sure you have `go` present, you may also use the `docker-compose` files present in the package instead
* Clone the project
* Create `config.go` specifiying the configuration for the app window, use `config.go.example` as template
* Just run `webapp.sh` with two arguments, url of the web app and the name for app binary
* Example `sh webapp.sh https://trello.com Trello`
* This will build out a binary in `build` folder

## Limitations
* Since this uses the operating system's webview the behavior is inconsistent