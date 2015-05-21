# docker-ruby-slim - a slim Docker container having Ruby

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-ruby-slim/

# ABOUT

docker-ruby-slim is a container for Ruby, made smaller with a few techniques:

* Use package managed [ruby](http://pkgs.alpinelinux.org/package/main/x86/ruby) instead of [RVM](https://rvm.io/).
* Replace [ubuntu](https://registry.hub.docker.com/_/ubuntu/) with [progrium/busybox](https://registry.hub.docker.com/u/progrium/busybox/).
* Drop [Bundler](http://bundler.io/).
* Drop [IRB](http://ruby-doc.org/stdlib-2.0/libdoc/irb/rdoc/IRB.html).

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-ruby-slim:2.2 ruby --version
ruby 2.2.1p85 (2015-02-26 revision 49769) [x86_64-linux-gnu]
docker run --rm mcandre/docker-ruby-slim:2.2 gem --version
2.4.5
docker images | grep mcandre/docker-ruby-slim:2.2 | awk '{ print $(NF-1), $NF }'
14.85 MB
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
