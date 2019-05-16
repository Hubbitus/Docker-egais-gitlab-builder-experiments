# https://hub.docker.com/_/fedora
FROM fedora:latest

LABEL MAINTAINER="Pavel Alexeev <Pahan@Hubbitus.info>"

RUN dnf install -y 'dnf-command(config-manager)' \
	&& dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo \
	&& dnf clean all

# We don't fair it will be fat - it intended to start faster many times. So, single download time have no many sence.
RUN dnf install -y \
		docker-ce-cli containerd.io docker-compose \
		kubernetes-client https://copr-be.cloud.fedoraproject.org/results/jwendell/helm/fedora-29-x86_64/00687734-helm/helm-2.7.2-1.fc28.x86_64.rpm \
		java-1.8.0-openjdk-devel java-1.8.0-openjdk-headless \
		jq \
		ruby \
		git \
		gzip which `# For sencha installer` \
		httpie \
		chromium \
	&& dnf clean all

