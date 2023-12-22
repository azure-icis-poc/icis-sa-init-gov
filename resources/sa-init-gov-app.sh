#!/bin/sh


# [1. Git Clone]----------------------------------------------------------------------#
echo "sa Git Clone"
git clone https://82258624:Bz-rzP-3YZJFRzU4hNxk@gitlab.dspace.kt.co.kr/icis/sa/icis-sa-init-gov

echo "oder Git Clone"
git clone https://82258624:Bz-rzP-3YZJFRzU4hNxk@gitlab.dspace.kt.co.kr/icis/oder/icis-oder-init-gov

echo "bill Git Clone"
git clone https://82258624:Bz-rzP-3YZJFRzU4hNxk@gitlab.dspace.kt.co.kr/icis/bill/icis-bill-init-gov

echo "rater Git Clone"
git clone https://82258624:Bz-rzP-3YZJFRzU4hNxk@gitlab.dspace.kt.co.kr/icis/rater/icis-rater-init-gov


# [2. Git Full % Copy]----------------------------------------------------------------------#
echo "2.  Git Full & File Copy..."
cd /icis-sa-init-gov 

while true; do cd /icis-sa-init-gov; git pull; sleep 2; git checkout dev; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/dev/; git checkout sit; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-app/sit/; git checkout ait; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/ait/; git checkout rat; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/rat/; git checkout bat; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/bat/; cd /icis-oder-init-gov; git pull; sleep 2; git checkout main; sleep 1;  cp -r /icis-oder-init-gov/* /icis-sa-init-gov-oder/ ; sleep 1; cd /icis-bill-init-gov; git pull; sleep 2; git checkout main; sleep 1;  cp -r /icis-bill-init-gov/* /icis-sa-init-gov-bill/ ; sleep 1; cd /icis-rater-init-gov; git pull; sleep 2; git checkout main; sleep 1;  cp -r /icis-rater-init-gov/* /icis-sa-init-gov-rater/ ; sleep 40; done 

# [3. test]----------------------------------------------------------------------#
