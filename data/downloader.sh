#!/bin/sh
if [ -d ds105 ]; then
	echo "ds105 direcotry already exists, please remove the directory and run make again"
else
	wget https://www.ocf.berkeley.edu/~imran/ds105_cond.zip && \
	unzip ds105_cond.zip                          && \
	rm ds105_cond.zip							   && \
	wget https://nipy.bic.berkeley.edu/rcsds/ds105_mnifunc.tar --no-check-certificate && \
	tar xvf ds105_mnifunc.tar && \
	rm ds105_mnifunc.tar
fi
