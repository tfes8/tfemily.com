FROM apfesta/mixednutz-app-server:2.1.6

ENV VERSION=1.0.0

LABEL version="1.0.0"\
    maintainer="tfes8@yahoo.com"\
    description="TF Emily Website"

# Copy the script and Spring Boot "uberjar" that is built by Maven into the Docker image
ADD messages.properties .
ADD ads.txt .
ADD templates /templates/

# Install prereq's
RUN chmod +x start.sh

CMD ["./start.sh"]
