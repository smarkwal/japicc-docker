# Docker images for Java API Compliance Checker (JAPICC)

**DISCLAIMER: I am not involved in the JAPICC project. These Docker images have been created for the sole purpose to simplify the use of JAPICC in my private and professional life.**

Docker images on Docker Hub: https://hub.docker.com/repository/docker/smarkwal/japicc

## About JAPICC 2.4

```
Java API Compliance Checker (JAPICC) 2.4
Copyright (C) 2018 Andrey Ponomarenko's ABI Laboratory
License: LGPLv2.1+ <http://www.gnu.org/licenses/>
This program is free software: you can redistribute it and/or modify it.

Written by Andrey Ponomarenko.
```

Project website: https://lvc.github.io/japi-compliance-checker/

Source code: https://github.com/lvc/japi-compliance-checker

## Tags

**2.4**, **latest**

JAPICC 2.4 based on Alpine Linux 3.15.0 with Perl 5.34.0 and OpenJDK 11.0.14.

## How to run these Docker images

Create an executable script `japicc.sh` with the following content:

```
#!/bin/bash

docker run --rm -v "$(pwd):/japicc" smarkwal/japicc "$@"
```

Now run JAPICC by passing options to the script. For example:

```
./japicc.sh -old commons-io-2.10.0.jar -new commons-io-2.11.0.jar -report-path commons-io.html
```

To get help:

```
./japicc.sh --help
```

