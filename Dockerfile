FROM returnproject/makedatacube:v01
# Please note that the definition file for returnproject/makedatacube
# can be found at https://github.com/RETURN-project/makeDataCube/blob/master/inst/docker/Dockerfile

WORKDIR /root/src/makeDataCube

# Copy the required credential files
COPY .netrc /root
COPY .boto /root
COPY .laads /root
