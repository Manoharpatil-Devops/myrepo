#!/bin/bash

# Update the system and install necessary tools
echo "Updating the system..."
sudo yum update -y

# Install wget if not installed
echo "Installing wget..."
sudo yum install -y wget

# Install tar if not installed (for extracting Maven)
echo "Installing tar..."
sudo yum install -y tar

# Set Maven version and URL
MAVEN_VERSION="3.9.9"
MAVEN_HOME="/opt/apache-maven-$MAVEN_VERSION"
MAVEN_TAR="apache-maven-$MAVEN_VERSION-bin.tar.gz"
MAVEN_URL="https://downloads.apache.org/maven/maven-3/$MAVEN_VERSION/binaries/$MAVEN_TAR"

# Download Maven 3.9.9 binary
echo "Downloading Maven $MAVEN_VERSION..."
wget $MAVEN_URL -P /tmp

# Extract the Maven archive
echo "Extracting Maven..."
sudo tar -xvzf /tmp/$MAVEN_TAR -C /opt

# Set environment variables for Maven
echo "Setting up Maven environment variables..."
echo "export MAVEN_HOME=$MAVEN_HOME" >> ~/.bash_profile
echo "export PATH=\$MAVEN_HOME/bin:\$PATH" >> ~/.bash_profile

# Apply the changes to the current session
source ~/.bash_profile

# Verify Maven installation
echo "Maven installation completed. Verifying version..."
mvn -version

# Clean up downloaded files
echo "Cleaning up..."
rm -f /tmp/$MAVEN_TAR

echo "Maven $MAVEN_VERSION installed successfully!"
