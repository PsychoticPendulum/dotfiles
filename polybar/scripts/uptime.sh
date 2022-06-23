#! /bin/bash

uptime -p | sed s/" days,"/"d"/g | sed s/" day."/"d"/g | sed s/" hours,"/"h"/g | sed s/" hour,"/"h"/g | sed s/" minutes"/"m"/g | sed s/" minute"/"m"/g
