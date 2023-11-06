JAVA_OPTS=-Xms100m,-Xmx16G,-XX:MaxRAMFraction=1,-XX:+UseG1GC,-XX:+UnlockDiagnosticVMOptions,-XX:InitiatingHeapOccupancyPercent=35,-XX:G1ConcRefinementThreads=20,-Duser.language=ko,-Duser.country=KR
export JAVA_OPTS

JDK_JAVA_OPTIONS=${JAVA_OPTS},${JDK_JAVA_OPTIONS}
export JDK_JAVA_OPTIONS

cp -rf /app/resources/sa-gov/e2e-producer.properties /app/resources
cp -rf /app/resources/sa-gov/e2e-collector.properties /app/resources

