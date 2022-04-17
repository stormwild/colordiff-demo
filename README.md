# Colordiff Demo

## Overview

Setup 

```
sudo apt-get install colordiff -y

echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in metus ut erat tempor dictum. Ut massa ex, pretium at quam in, sagittis efficitur nulla." >> file1.md

echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in metus ut erat tempor dictum. Ut massa ex, pretium at quam in, sagittis efficitur nulla. In finibus massa facilisis gravida egestas. Nullam sem mi, porttitor ac aliquet nec, tempor et nulla." >> file2.md

colordiff -Nru file1.md file2.md
```

Output

```diff
$ colordiff -Nru file1.md file2.md
--- file1.md    2022-04-17 18:36:10.009286500 +0800
+++ file2.md    2022-04-17 18:36:35.319286500 +0800
@@ -1 +1 @@
-Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in metus ut erat tempor dictum. Ut massa ex, pretium at quam in, sagittis efficitur nulla.
+Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in metus ut erat tempor dictum. Ut massa ex, pretium at quam in, sagittis efficitur nulla. In finibus massa facilisis gravida egestas. Nullam sem mi, porttitor ac aliquet nec, tempor et nulla.
```
 
Build and run Docker

```sh
docker build -t stormwild/colordiff-demo .
docker run stormwild/colordiff-demo
```

Output

```diff
$ docker run stormwild/colordiff-demo
--- file1.md    2022-04-17 10:36:10.009286500 +0000
+++ file2.md    2022-04-17 10:36:35.319286500 +0000
@@ -1 +1 @@
-Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in metus ut erat tempor dictum. Ut massa ex, pretium at quam in, sagittis efficitur nulla.
+Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in metus ut erat tempor dictum. Ut massa ex, pretium at quam in, sagittis efficitur nulla. In finibus massa facilisis gravida egestas. Nullam sem mi, porttitor ac aliquet nec, tempor et nulla.
```

```
docker image ls | grep stormwild/colordiff-demo

docker image rm stormwild/colordiff-demo
```

[How to Reduce Docker Image Size: 6 Optimization Methods](https://stackoverflow.com/questions/64804749/why-is-docker-build-not-showing-any-output-from-commands)


