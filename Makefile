all: alpine centos6 centos7 ubuntu-bionic ubuntu-cosmic ubuntu-disco ubuntu-xenial

alpine:
	docker build -f Dockerfile.alpine -t bryanhuntesl/fpm-alpine-poc ctx
	docker run bryanhuntesl/fpm-alpine-poc

centos6:
	docker build -f Dockerfile.centos6 -t bryanhuntesl/fpm-rpm-poc:centos6 ctx
	docker run bryanhuntesl/fpm-rpm-poc:centos6

centos7:
	docker build -f Dockerfile.centos7 -t bryanhuntesl/fpm-rpm-poc:centos7 ctx
	docker run bryanhuntesl/fpm-rpm-poc:centos7

ubuntu-bionic:
	docker build -f Dockerfile.bionic -t bryanhuntesl/fpm-rpm-poc:bionic ctx
	docker run bryanhuntesl/fpm-rpm-poc:bionic

ubuntu-cosmic:
	docker build -f Dockerfile.cosmic -t bryanhuntesl/fpm-rpm-poc:cosmic ctx
	docker run bryanhuntesl/fpm-rpm-poc:cosmic

ubuntu-disco:
	docker build -f Dockerfile.disco -t bryanhuntesl/fpm-rpm-poc:disco ctx
	docker run bryanhuntesl/fpm-rpm-poc:disco

ubuntu-xenial:
	docker build -f Dockerfile.xenial -t bryanhuntesl/fpm-rpm-poc:xenial ctx
	docker run bryanhuntesl/fpm-rpm-poc:xenial
