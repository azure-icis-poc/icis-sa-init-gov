#!/bin/sh


# [1. Git Clone]----------------------------------------------------------------------#
sleep 5

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

while true; do cd /icis-sa-init-gov; git pull; sleep 2; git checkout dev; sleep 1; cp -rf /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/dev/; git checkout dev-test; sleep 1; cp -rf /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/dev-test/; git checkout sit; sleep 1; cp -rf /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/sit/; git checkout ait; sleep 1; cp -rf /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/ait/; git checkout rat; sleep 1; cp -rf /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/rat/; git checkout bat; sleep 1; cp -r /icis-sa-init-gov/resources/* /icis-sa-init-gov-sa/bat/; cd /icis-oder-init-gov; git pull; sleep 2; git checkout main; sleep 1;  cp -rf /icis-oder-init-gov/* /icis-sa-init-gov-oder/ ; sleep 1; cd /icis-bill-init-gov; git pull; sleep 2; git checkout main; sleep 1;  cp -rf /icis-bill-init-gov/* /icis-sa-init-gov-bill/ ; sleep 1; cd /icis-rater-init-gov; git pull; sleep 2; git checkout main; sleep 1;  cp -rf /icis-rater-init-gov/* /icis-sa-init-gov-rater/ ; sleep 10; done 

# [3. test]----------------------------------------------------------------------#
