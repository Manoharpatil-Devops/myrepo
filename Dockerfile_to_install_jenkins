# Use the official Jenkins LTS base image
FROM jenkins/jenkins:lts

# Skip initial setup wizard (optional)
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Install basic plugins (optional)
# You can skip this section or customize it
RUN jenkins-plugin-cli --plugins \
    git \
    docker-workflow \
    blueocean

# Set default user to root to install extra packages (optional)
USER root

# Example: install curl and other tools if needed
RUN apt-get update && apt-get install -y curl vim

# Set back to Jenkins user
USER jenkins
