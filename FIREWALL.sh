#!/bin/bash
#Set the location for the backup file, IP address of the Palo Alto device, and the API key.
echo "DAILY BACKUP OF PALO ALTO CONFIG FILE"
echo
curl -o <LOCATION FOR BACKUP FILE>/`date +%F`-PALO_ALTO-backup.xml  -k -H "Accept: application/xml" -H "Content-Type: application/xml" -X GET "https://PALO ALTO MGMT IP/api/?type=export&category=configuration&key=<PALO ALTO DEVICE API KEY>"
echo
echo "Done..."
echo
