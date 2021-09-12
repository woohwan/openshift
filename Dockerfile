FROM registry.redhat.io/jboss-eap-7/eap74-openjdk11-openshift-rhel8:7.4.0-6
COPY target/demo-0.0.1-SNAPSHOT.war /opt/eap/standalone/deployments/
USER root
RUN chown jboss:jboss /opt/eap/standalone/deployments/demo-0.0.1-SNAPSHOT.war
USER jboss
