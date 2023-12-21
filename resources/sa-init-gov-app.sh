#!/bin/sh


# [1. Git Clone]----------------------------------------------------------------------#
echo "1. Git Clone"
git clone https://82258624:Bz-rzP-3YZJFRzU4hNxk@gitlab.dspace.kt.co.kr/icis/sa/icis-sa-init-gov



# [2. Git Full % Copy]----------------------------------------------------------------------#
echo "2.  Git Full & File Copy..."
cd /icis-sa-init-gov 

while true; do git pull; git checkout dev; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-app/dev/; git checkout sit; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-app/sit/; git checkout ait; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-app/ait/; git checkout rat; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-app/rat/; git checkout bat; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-app/bat/; git checkout test; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-app/test/; sleep 10;  done 

# [3. test]----------------------------------------------------------------------#
