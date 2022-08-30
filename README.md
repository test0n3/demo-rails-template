# Demo Ruby on Rails Template Engines

## Goal
Try these three template engines used by RoR:
- [ERB](https://guides.rubyonrails.org/layouts_and_rendering.html)
- [HAML](https://haml.info/)
- [SLIM](http://slim-lang.com/)

Using a slightly modified [Rails Guide example](https://guides.rubyonrails.org/v6.1/getting_started.html).

## Running the demo
This demo uses:
- Ruby v 2.7.6
- Ruby on Rails v 6.1.6.1
- Postgresql v 14.2

All running inside docker containers. So it is required to have `Docker` and `docker-compose` with **engine v 20.10.12**

Edit the file `.env-template`:
add a set of random characters for **SECRET-TOKEN** and save the file with the name `.env`

The commands displayed here work under any Linux distro.

### Building the image and containers

To build the project(get docker images and prepare the container) This is done once after cloning the repo:
```zsh
docker-compose build
```

To run the container:
```zsh
docker-compose up
```
To stop the execution, use `ctrl + c`.

To set the database:
```zsh
docker-compose run web rake db:create
```
After stopping the execution, use the following to stop the container:
```zsh
docker-compose down
```

To check the working containers, use:
```zsh
docker-compose images
```

Another option to check containers with [VS Code](https://code.visualstudio.com/) is the [Docker Addon](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)

### IMPORTANT
If Postgres is installed and already running in your system, it is required to stop the service as the Postgres docker image uses the same port.

```zsh
sudo systemctl stop postgres.service
```

## Sources for Docker procedure
- [Docker documentation](https://docs.docker.com/samples/rails/)
- [Dockerizing a Ruby on Rails Application](https://semaphoreci.com/community/tutorials/dockerizing-a-ruby-on-rails-application)
