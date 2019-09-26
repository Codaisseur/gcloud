FROM gcr.io/cloud-builders/kubectl@sha256:03956a3d73edf59d62894a38d70ed4b33a409a33a872541928358697a16b1bdb

LABEL "name"="gcloud"
LABEL "version"="1.0.1"
LABEL "maintainer"="GitHub Actions <support+actions@github.com>"

LABEL "com.github.actions.name"="GitHub Action for Google Cloud"
LABEL "com.github.actions.description"="Wraps the GCloud SDK to enable common Google Cloud Platform commands."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

ENV DOCKERVERSION=18.06.1-ce
RUN apt-get update && apt-get -y --no-install-recommends install curl \
  && curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz \
  && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
