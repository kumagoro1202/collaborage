FROM openjdk:jre-alpine

ENV GITBUCKET_VER 4.31.1
ENV GITBUCKET_EXTRA_DEPS "git procps"

ADD https://github.com/gitbucket/gitbucket/releases/download/$GITBUCKET_VER/gitbucket.war /opt/gitbucket.war

RUN apk add --no-cache ttf-dejavu git graphviz

COPY gitbucket.sh /opt/gitbucket.sh

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

# Port for web page
EXPOSE 8080
# Port for SSH access to git repository (Optional)
EXPOSE 29418

CMD ["/opt/gitbucket.sh"]
