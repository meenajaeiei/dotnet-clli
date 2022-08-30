FROM reg-hk.agodadev.io/devops/gitpod/workspace-dotnet:latest

USER root

ENV HTTP_PROXY "http://hk-agcprx-2000.corpdmz.agoda.local:8080"
ENV HTTPS_PROXY "http://hk-agcprx-2000.corpdmz.agoda.local:8080"
ENV NO_PROXY "ws-manager,localhost,127.0.0.0/8,10.0.0.0/8,169.0.0.0/8,172.0.0.0/8,192.168.0.0/16,.local,docker,reg-hk.agodadev.io,.agodadev.io,.agoda.local,.agprod1.agoda.local,.agprod2.agoda.local,.agoda.is"
ENV NODE_EXTRA_CA_CERTS "/usr/local/share/ca-certificates/ca.crt"

COPY ca.crt /usr/local/share/ca-certificates/ca.crt

RUN sleep 1

# Install dependencies
RUN update-ca-certificates && whoami
