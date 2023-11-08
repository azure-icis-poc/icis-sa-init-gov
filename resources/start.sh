#!/bin/sh


# [1. JVM Option Set]----------------------------------------------------------------------#
echo "1. JVM Option Set"
export JAVA_OPTS="-Xms256m -Xmx16G -XX:+UseG1GC -XX:+UnlockDiagnosticVMOptions -XX:InitiatingHeapOccupancyPercent=35 -XX:G1ConcRefinementThreads=20 -Duser.language=ko, -Duser.country=KR"
export JDK_JAVA_OPTIONS="${JAVA_OPTS}, ${JAVA_TOOL_OPTIONS}, ${JDK_JAVA_OPTIONS}"



# [2. resources File Copy]----------------------------------------------------------------------#
echo "2. resources File Copy..."
cp -rf /app/resources/sa-gov/e2e-producer.properties /app/resources
cp -rf /app/resources/sa-gov/e2e-collector.properties /app/resources
cp -rf /app/resources/sa-gov/truststore.jks /app/resources


# [3. 24by7 Mode]----------------------------------------------------------------------#
echo "3. 24by7 Mode..."
export MODE_24BY7=N



# [4. App execution]----------------------------------------------------------------------#
echo "4. App execution..."
echo "app main class {$APP_MAIN_CLASS}"
#java -cp /app/resources:/app/classes:/app/libs/* com.kt.icis.PPonApplication
#java -cp /app/resources:/app/classes:/app/libs/* com.kt.icis.BackendApplication
#java -cp /app/resources:/app/classes:/app/libs/* com.kt.icistr.rater.server.accounting.AccountingServer
java -cp /app/resources:/app/classes:/app/libs/* $APP_MAIN_CLASS
