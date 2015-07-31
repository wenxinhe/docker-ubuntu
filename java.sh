case $(uname -m) in
    i386|i686)
        JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386
        ;;
    x86_64)
        JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
        ;;
    armv7l)
        JAVA_HOME=/usr/lib/jvm/jdk-8-oracle-arm-vfp-hflt
        ;;
    *)
        echo Unknown $(uname -m)
        exit 6
        ;;
esac

export JAVA_HOME=$JAVA_HOME
export PATH=$JAVA_HOME/bin:$PATH
