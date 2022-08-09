function javav
  set -x JAVA_HOME (/usr/libexec/java_home -v$argv)
  java -version
end
