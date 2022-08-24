# Demo Ruby on Rails Template Engines

## Goal
Show three template engines that are used by RoR:
- [ERB](https://guides.rubyonrails.org/layouts_and_rendering.html)
- [HAML](https://haml.info/)
- [SLIM](http://slim-lang.com/)

Using a slightly modified [Rails Guide example](https://guides.rubyonrails.org/v6.1/getting_started.html).

## Running the demo
This demo uses:
- Ruby v 2.7.6
- Ruby on Rails v 6.1.6.1
- Postgresql v 14.2

all running inside docker containers. So it is required to have Docker and docker-compose with engine v 20.10.12

also edit the file `.env-template`:
add a set of random characters for **SECRET-TOKEN** and save the file with the name `.env`

### Building the image and containers
```zsh
docker-compose build
docker-compose up
```
to stop the execution, use `ctrl + c`.
you'll need another terminal screen to run the following to set the database:
```zsh
docker-compose run web rake db:create
```
after stopping the execution, use the following to stop the container:
```zsh
docker-compose down
```

## Sources for Docker procedure
- [Docker documentation](https://docs.docker.com/samples/rails/)
- [Dockerizing a Ruby on Rails Application](https://semaphoreci.com/community/tutorials/dockerizing-a-ruby-on-rails-application)
