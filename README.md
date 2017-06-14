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
docker run --rm mcandre/docker-ruby-slim ruby --version
ruby 2.2.1p85 (2015-02-26 revision 49769) [x86_64-linux-gnu]
docker run --rm mcandre/docker-ruby-slim gem --version
2.4.5
docker images | grep mcandre/docker-ruby-slim | awk '{ print $(NF-1), $NF }'
14.85 MB
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
