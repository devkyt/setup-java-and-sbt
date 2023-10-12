# Setup Java and Sbt

Yet another action to setup Java and Sbt on Linux or MacOS. It uses [GraalVM](https://github.com/graalvm) as a JDK distribution.<br>

## Usage

Here we go:

```yaml
steps:
  - name: Install Java and Sbt
    uses: s8ckerpunch/setup-java-and-sbt@v0.1
    with:
      JAVA_VERSION: "11"
      SBT_VERSION: "1.9.6"
```

Java 17 and Sbt 1.9.6 will be installed be default if you don't specify any values.

**Supported Java Versions**: 8, 11, 17, 19, 20, 21.</br>
**Supported Sbt Versions**: all.
