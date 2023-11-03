JAVA_OPTS="-Xms100m,-Xmx16G,-XX:MaxRAMFraction=1,-XX:+UseG1GC,-XX:+UnlockDiagnosticVMOptions,-XX:InitiatingHeapOccupancyPercent=35,-XX:G1ConcRefinementThreads=20,-Duser.language=ko,-Duser.country=KR"
JDK_JAVA_OPTIONS="${JAVA_OPTS} ${JDK_JAVA_OPTIONS}"
export JDK_JAVA_OPTIONS

export aaa=111
export bbb=222

cp -rf /app/resources/sa-gov /app/resources


