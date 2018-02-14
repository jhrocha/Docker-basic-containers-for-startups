#!/bin/bash

if [ -f /.postgres_pass_modified ]; then
    echo "PostgreSQL 'postgres' user pass already modified!"
    exit 0
fi

POSTGRES_PASS="postgres"
_word=$( [ ${POSTGRES_PASS} ] && echo "preset" || echo "random" )
service postgresql restart 
echo "=> Modifying 'postgres' user with a ${_word} password in PostgreSQL"
sudo -u postgres psql -U postgres -d postgres -c "alter user postgres with password '$POSTGRES_PASS';"
echo "=> Done!"
touch /.postgres_pass_modified

echo "========================================================================"
echo "You can now connect to this PostgreSQL Server using:"
echo ""
echo "    psql -h <host> -p <port> --username=postgres"
echo "and enter the password '$POSTGRES_PASS' when prompted"
echo ""
echo "Please remember to change the above password as soon as possible!"
echo "========================================================================"