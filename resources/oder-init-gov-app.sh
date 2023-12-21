#!/bin/sh


# [1. Git Clone]----------------------------------------------------------------------#
echo "1. Git Clone"
git clone https://82258624:Bz-rzP-3YZJFRzU4hNxk@gitlab.dspace.kt.co.kr/icis/sa/icis-oder-init-gov.git



# [2. Git Full % Copy]----------------------------------------------------------------------#
echo "2.  Git Full & File Copy..."
cd /icis-oder-init-gov

while true; do git pull;  sleep 1; cp -r /icis-oder-init-gov/test/* /icis-oder-init-gov-app/test/; done 

# [3. test]----------------------------------------------------------------------#
