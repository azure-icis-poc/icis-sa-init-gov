JAVA_OPTS1="-Xms100m,-Xmx16G,-XX:MaxRAMFraction=1,-XX:+UseG1GC,-XX:+UnlockDiagnosticVMOptions,-XX:InitiatingHeapOccupancyPercent=35,-XX:G1ConcRefinementThreads=20,-Duser.language=ko,-Duser.country=KR"
export JAVA_OPTS="$JAVA_OPTS1" 

JDK_JAVA_OPTIONS1="${JAVA_OPTS}, ${JDK_JAVA_OPTIONS}"
export JDK_JAVA_OPTIONS="$JDK_JAVA_OPTIONS1"

cp -rf /app/resources/sa-gov/e2e-producer.properties /app/resources
cp -rf /app/resources/sa-gov/e2e-collector.properties /app/resources

