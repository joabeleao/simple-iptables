# simple-iptables
Basic iptables firewall for different type of services

### settings:

use the txt files to add trusted or unreliable addresses and/or allowed ports

    ips_allow.txt
    ips_blocked.txt
    ports_allow.txt

to the telephony focused firewall file there are two additional files with allowed addresses/ports:

    ips_customers.txt
    ips_brasil.txt

### usage:

	./firewall {start|stop|restart}

### install as service:

    ./install.sh
