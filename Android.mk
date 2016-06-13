
LOCAL_PATH:= $(call my-dir)

common_SRC_FILES:=  \
        src/save.c \
        src/topology/evms.c \
        src/topology/topology.c \
        src/topology/md.c \
        src/topology/dm.c \
        src/topology/ioctl.c \
        src/topology/lvm.c \
        src/topology/sysfs.c \
        src/version.c \
        src/partitions/bsd.c \
        src/partitions/ultrix.c \
        src/partitions/dos.c \
        src/partitions/minix.c \
        src/partitions/partitions.c \
        src/partitions/sgi.c \
        src/partitions/sun.c \
        src/partitions/gpt.c \
        src/partitions/unixware.c \
        src/partitions/mac.c \
        src/partitions/aix.c \
        src/partitions/solaris_x86.c \
        src/cache.c \
        src/init.c \
        src/read.c \
        src/superblocks/reiserfs.c \
        src/superblocks/romfs.c \
        src/superblocks/adaptec_raid.c \
        src/superblocks/nilfs.c \
        src/superblocks/lsi_raid.c \
        src/superblocks/jmicron_raid.c \
        src/superblocks/zfs.c \
        src/superblocks/minix.c \
        src/superblocks/ubifs.c \
        src/superblocks/cramfs.c \
        src/superblocks/bfs.c \
        src/superblocks/ocfs.c \
        src/superblocks/squashfs.c \
        src/superblocks/luks.c \
        src/superblocks/ddf_raid.c \
        src/superblocks/hpfs.c \
        src/superblocks/linux_raid.c \
        src/superblocks/superblocks.c \
        src/superblocks/ext.c \
        src/superblocks/drbd.c \
        src/superblocks/refs.c \
        src/superblocks/drbdproxy_datalog.c \
        src/superblocks/hfs.c \
        src/superblocks/udf.c \
        src/superblocks/xfs.c \
        src/superblocks/netware.c \
        src/superblocks/lvm.c \
        src/superblocks/jfs.c \
        src/superblocks/f2fs.c \
        src/superblocks/sysv.c \
        src/superblocks/promise_raid.c \
        src/superblocks/vmfs.c \
        src/superblocks/ntfs.c \
        src/superblocks/befs.c \
        src/superblocks/swap.c \
        src/superblocks/vfat.c \
        src/superblocks/vxfs.c \
        src/superblocks/btrfs.c \
        src/superblocks/isw_raid.c \
        src/superblocks/highpoint_raid.c \
        src/superblocks/via_raid.c \
        src/superblocks/gfs.c \
        src/superblocks/exfat.c \
        src/superblocks/iso9660.c \
        src/superblocks/silicon_raid.c \
        src/superblocks/bcache.c \
        src/superblocks/ufs.c \
        src/superblocks/drbdmanage.c \
        src/superblocks/nvidia_raid.c \
        src/devname.c \
        src/tag.c \
        src/devno.c \
        src/getsize.c \
        src/resolve.c \
        src/dev.c \
        src/verify.c \
        src/probe.c \
        src/evaluate.c \
        src/llseek.c \
        src/config.c \
        src/encode.c \
        lib/md5.c \
        lib/crc32.c \
        lib/sysfs.c \
        lib/env.c \
        lib/blkdev.c \
        lib/fileutils.c


common_C_INCLUDES += $(LOCAL_PATH)/include

# static library
# =====================================================

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= $(common_SRC_FILES)
LOCAL_C_INCLUDES:= $(common_C_INCLUDES)
LOCAL_MODULE := libblkid-static
LOCAL_PRELINK_MODULE:= false
LOCAL_MODULE_TAGS := optional
include $(BUILD_STATIC_LIBRARY)

# dynamic library
# =====================================================

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES:= $(common_SRC_FILES)
#LOCAL_C_INCLUDES:= $(common_C_INCLUDES)
#LOCAL_MODULE := libblkid
#LOCAL_PRELINK_MODULE:= false
#LOCAL_MODULE_TAGS := optional
#include $(BUILD_SHARED_LIBRARY)

