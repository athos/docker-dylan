# docker-opendylan

This is the repository of a personal Docker image for [Open Dylan](http://opendylan.org/index.html).

## Usage

Run an interactive shell from the image:

```
$ docker -it athos/opendylan /bin/bash
```

Then within the shell, create a new Dylan application project using `make-dylan-app`.

```
# make-dylan-app hello-world
# cd hello-world
```

And run `dylan-compiler` to build the project like the following:

```
# dylan-compiler -build hello-world.lid
```

## License

Copyright (c) 2016 Shogo Ohta

The files in the repository are distributed under the MIT License. See [LICENSE](LICESE) for details.
