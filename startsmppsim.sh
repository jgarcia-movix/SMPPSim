# $Header: /var/cvsroot/SMPPSim2/startsmppsim.sh,v 1.6 2005/12/09 17:35:32 martin Exp $
#! /bin/bash

echo "Enter SMPP PORT"
read SMPP_PORT

echo "Enter HTTP PORT"
read HTTP_PORT

rm -rf smppsim*.log.*

java -Djava.net.preferIPv4Stack=true -Djava.util.logging.config.file=conf/logging.properties -jar smppsim.jar conf/smppsim.props ${SMPP_PORT} ${HTTP_PORT}