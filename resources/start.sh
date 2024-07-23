#!/bin/sh


# [1. JVM Option Set]----------------------------------------------------------------------#
echo "1. JVM Option Set"

export JAVA_OPTS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=80.0 -XX:InitialRAMPercentage=50.0 -XX:+UseG1GC -XX:MaxGCPauseMillis=200 -XX:InitiatingHeapOccupancyPercent=45 -XX:+UseStringDeduplication -XX:+DisableExplicitGC -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp/heapdumps/${NODENAME}_${NAMESPACE}_${DEPLOYMENT}_$(date +%Y%m%d_%H%M%S)_${POD_NAME}_heapdump.hprof -Duser.timezone=Asia/Seoul"

export JAVA_OPTS_CUSTOM="-Xms256m -Xmx16G -XX:+UseG1GC -XX:+UnlockDiagnosticVMOptions -XX:InitiatingHeapOccupancyPercent=35 -XX:G1ConcRefinementThreads=20 -Duser.language=ko, -Duser.country=KR"

if echo "${JDK_JAVA_OPTIONS}" | grep -q "\-Xmx"; then
    export JDK_JAVA_OPTIONS="${JAVA_OPTS_CUSTOM} ${JAVA_TOOL_OPTIONS} ${JDK_JAVA_OPTIONS} ${JAVA_OPTS_AGENT}"
    echo "${JDK_JAVA_OPTIONS}";
else
    export JDK_JAVA_OPTIONS="${JAVA_OPTS} ${JAVA_TOOL_OPTIONS} ${JDK_JAVA_OPTIONS} ${JAVA_OPTS_AGENT}"
    echo "${JDK_JAVA_OPTIONS}";
fi

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
