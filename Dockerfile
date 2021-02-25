FROM apfesta/mixednutz-app-server:2.0.2.3

ENV VERSION=1.0.0

LABEL version="1.0.0"\
    maintainer="tfes8@yahoo.com"\
    description="TF Emily Website"

# Copy the script and Spring Boot "uberjar" that is built by Maven into the Docker image
ADD messages.properties .

# Install prereq's
RUN chmod +x start.sh

CMD ["./start.sh"]
