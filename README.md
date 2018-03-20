# kubler-dock

[Kubler](https://github.com/edannenberg/kubler) namespace(s) for several images I use from time to time.

To use it, for example to build `dnscrypt-proxy2` image, do on the kubler working directory:
```
$ sudo bash kubler.sh -w $THISREPO/kubler-dock/dock/kubler-spin build kubler-spin/dnscrypt-proxy2
```

Some arm support might come at some point. Previously had it with the folling changes on kubler.

```patch
diff --git a/lib/bob-core/Dockerfile.template b/lib/bob-core/Dockerfile.template
index 3e56fdb..51309dc 100644
--- a/lib/bob-core/Dockerfile.template
+++ b/lib/bob-core/Dockerfile.template
@@ -1,6 +1,8 @@
 FROM ${BOB_CURRENT_STAGE3_ID}
 LABEL maintainer ${MAINTAINER}
 
+ADD qemu-arm-static /usr/bin/qemu-arm-static
+
 RUN set -x && \
     echo 'GENTOO_MIRRORS="http://distfiles.gentoo.org/"' >> /etc/portage/make.conf && \
     mkdir -p /etc/portage/repos.conf /usr/portage && \
diff --git a/lib/engine/docker.sh b/lib/engine/docker.sh
index cf357eb..cbf2909 100644
--- a/lib/engine/docker.sh
+++ b/lib/engine/docker.sh
@@ -336,7 +337,7 @@ function build_core() {
     mkdir -p "${__expand_image_id}"
 
     # copy build-root.sh and emerge defaults so we can access it via dockerfile context
-    cp -r "${_script_dir}"/lib/bob-core/{*.sh,etc,Dockerfile.template} "${__expand_image_id}/"
+    cp -r "${_script_dir}"/lib/bob-core/* "${__expand_image_id}/"
 
     generate_dockerfile "${__expand_image_id}"
     build_image "${builder_id}-core" "${_BUILDER_PATH}"
```
