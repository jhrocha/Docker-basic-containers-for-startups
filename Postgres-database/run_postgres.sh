#!/bin/bash
if [ ! -f /.postgres_pass_modified ]; then
	/postgres-pass.sh
        exit 0
fi