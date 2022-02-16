FROM node:latest

WORKDIR /app

ENV ISSUER=https://dev-67954332.okta.com/oauth2/default
ENV CLIENT_ID=0oa3wd4pelMKYZ2Xq5d7
ENV SKIP_PREFLIGHT_CHECK=true


COPY okta-hosted-login .
RUN npm install
RUN npm install yarn

ENV NODE_OPTIONS=--openssl-legacy-provider

ENTRYPOINT [ "npm" , "run", "start:browser:none" ]