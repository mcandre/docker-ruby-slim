# docker-ruby-slim - a slim Docker container having Ruby

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-ruby-slim/

# ABOUT

docker-ruby-slim is a container for Ruby, made smaller with a few techniques:

* Drop [Bundler](http://bundler.io/).
* Use package managed [ruby2.0](http://packages.ubuntu.com/search?keywords=ruby2.0&searchon=names) instead of [RVM](https://rvm.io/).
* Replace [ubuntu](https://registry.hub.docker.com/_/ubuntu/) with [debian](https://registry.hub.docker.com/_/debian/).

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-ruby-slim ruby2.1 --version
ruby 2.1.5p273 (2014-11-13) [x86_64-linux-gnu]
docker run --rm mcandre/docker-ruby-slim irb2.1 --version
irb 0.9.6(09/06/30)
docker run --rm mcandre/docker-ruby-slim gem2.1 --version
2.2.2
docker images | grep mcandre/docker-ruby-slim | awk '{ print $(NF-1), $NF }'
157.1 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker
```
