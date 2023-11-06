#!/bin/sh



# [1. JVM Option Set]----------------------------------------------------------------------#
echo "JVM Option Set..."
export JAVA_OPTS="-XX:+UseG1GC,-XX:+UnlockDiagnosticVMOptions,-XX:InitiatingHeapOccupancyPercent=35,-XX:G1ConcRefinementThreads=20,-Duser.language=ko,-Duser.country=KR"

export JDK_JAVA_OPTIONS="${JAVA_OPTS}, ${JDK_JAVA_OPTIONS}"



# [2. resources File Copy]----------------------------------------------------------------------#
echo "JVM Option Set..."
cp -rf /app/resources/sa-gov/e2e-producer.properties /app/resources
cp -rf /app/resources/sa-gov/e2e-collector.properties /app/resources



# [3. 24by7 Mode]----------------------------------------------------------------------#
echo "24by7 Mode Set..."
export MODE_24BY7=N


# [4. App Copy]----------------------------------------------------------------------#
echo "App Copy..."
cp -rf /app/*.jar /app/icis-app.jar


# [5. App execution]----------------------------------------------------------------------#
java -jar /app/icis-app.jar
