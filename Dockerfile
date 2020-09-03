FROM jboss/wildfly
ADD target/rest-service.war /opt/jboss/wildfly/standalone/deployments/

EXPOSE 9990
EXPOSE 8080

RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]