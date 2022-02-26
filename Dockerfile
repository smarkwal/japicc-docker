FROM alpine AS builder

# install git, make, and perl
RUN apk update && \
    apk upgrade && \
    apk add git make perl

# clone and install JAPICC 2.4
RUN git clone --depth 1 --branch 2.4 https://github.com/lvc/japi-compliance-checker.git /opt/japi-compliance-checker
RUN cd /opt/japi-compliance-checker && \
    make install prefix=/usr

FROM alpine

# install perl and openjdk11
RUN apk update && \
    apk upgrade && \
    apk add perl openjdk11

# copy JAPICC from builder
COPY --from=builder /usr/bin/japi-compliance-checker /usr/bin/japi-compliance-checker
COPY --from=builder /usr/share/japi-compliance-checker /usr/share/japi-compliance-checker

# prepare working directory
WORKDIR /japicc

ENTRYPOINT ["/usr/bin/japi-compliance-checker"]
