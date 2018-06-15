
all: centos6 centos7 ubuntu-bionic

centos6:
	docker build -f Dockerfile.centos6 -t bryanhuntesl/fpm-rpm-poc:centos6 ctx
	docker run bryanhuntesl/fpm-rpm-poc:centos6

centos7:
	docker build -f Dockerfile.centos7 -t bryanhuntesl/fpm-rpm-poc:centos7 ctx
	docker run bryanhuntesl/fpm-rpm-poc:centos7

ubuntu-bionic:
	docker build -f Dockerfile.bionic -t bryanhuntesl/fpm-rpm-poc:bionic ctx
	docker run bryanhuntesl/fpm-rpm-poc:bionic
