; ModuleID = 'drivers/firmware/dmi-id.c'
source_filename = "drivers/firmware/dmi-id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init..kmod_dmi_id__205_264_dmi_id_init\22, \22a\22\09\09"
module asm "__initcall__kmod_dmi_id__205_264_dmi_id_init3:\09\09\09"
module asm ".long\09__initstub__kmod_dmi_id__205_264_dmi_id_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmi_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mafield = type { ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }

@__UNIQUE_ID___addressable___initstub__kmod_dmi_id__205_264_dmi_id_init3206 = internal global ptr @__initstub__kmod_dmi_id__205_264_dmi_id_init3, section ".discard.addressable", align 8, !dbg !0
@dmi_available = external dso_local global i32, align 4
@dmi_class = internal global %struct.class { ptr @.str.40, ptr null, ptr null, ptr @dmi_dev_uevent, ptr null, ptr null, ptr @dmi_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !1832
@dmi_dev = internal global ptr null, align 8, !dbg !1836
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1, !dbg !1635
@sys_dmi_attribute_groups = internal global [2 x ptr] [ptr @sys_dmi_attribute_group, ptr null], align 16, !dbg !1838
@sys_dmi_bios_vendor_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 1 }, align 8, !dbg !1643
@sys_dmi_attributes = internal global [25 x ptr] zeroinitializer, align 16, !dbg !1648
@sys_dmi_bios_version_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 2 }, align 8, !dbg !1658
@sys_dmi_bios_date_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 3 }, align 8, !dbg !1665
@sys_dmi_bios_release_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 4 }, align 8, !dbg !1669
@sys_dmi_ec_firmware_release_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 5 }, align 8, !dbg !1676
@sys_dmi_sys_vendor_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 6 }, align 8, !dbg !1683
@sys_dmi_product_name_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 7 }, align 8, !dbg !1687
@sys_dmi_product_version_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 8 }, align 8, !dbg !1692
@sys_dmi_product_serial_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 256 }, ptr @sys_dmi_field_show, ptr null }, i32 9 }, align 8, !dbg !1699
@sys_dmi_product_uuid_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 256 }, ptr @sys_dmi_field_show, ptr null }, i32 10 }, align 8, !dbg !1703
@sys_dmi_product_family_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 12 }, align 8, !dbg !1707
@sys_dmi_product_sku_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 11 }, align 8, !dbg !1711
@sys_dmi_board_vendor_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 13 }, align 8, !dbg !1715
@sys_dmi_board_name_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 14 }, align 8, !dbg !1719
@sys_dmi_board_version_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 15 }, align 8, !dbg !1726
@sys_dmi_board_serial_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 256 }, ptr @sys_dmi_field_show, ptr null }, i32 16 }, align 8, !dbg !1730
@sys_dmi_board_asset_tag_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 17 }, align 8, !dbg !1734
@sys_dmi_chassis_vendor_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 18 }, align 8, !dbg !1738
@sys_dmi_chassis_type_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 19 }, align 8, !dbg !1742
@sys_dmi_chassis_version_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 20 }, align 8, !dbg !1746
@sys_dmi_chassis_serial_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 256 }, ptr @sys_dmi_field_show, ptr null }, i32 21 }, align 8, !dbg !1750
@sys_dmi_chassis_asset_tag_attr = internal global %struct.dmi_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @sys_dmi_field_show, ptr null }, i32 22 }, align 8, !dbg !1757
@sys_dmi_modalias_attr = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @sys_dmi_modalias_show, ptr null }, align 8, !dbg !1764
@.str.1 = private unnamed_addr constant [12 x i8] c"bios_vendor\00", align 1, !dbg !1638
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1645
@.str.3 = private unnamed_addr constant [13 x i8] c"bios_version\00", align 1, !dbg !1653
@.str.4 = private unnamed_addr constant [10 x i8] c"bios_date\00", align 1, !dbg !1660
@.str.5 = private unnamed_addr constant [13 x i8] c"bios_release\00", align 1, !dbg !1667
@.str.6 = private unnamed_addr constant [20 x i8] c"ec_firmware_release\00", align 1, !dbg !1671
@.str.7 = private unnamed_addr constant [11 x i8] c"sys_vendor\00", align 1, !dbg !1678
@.str.8 = private unnamed_addr constant [13 x i8] c"product_name\00", align 1, !dbg !1685
@.str.9 = private unnamed_addr constant [16 x i8] c"product_version\00", align 1, !dbg !1689
@.str.10 = private unnamed_addr constant [15 x i8] c"product_serial\00", align 1, !dbg !1694
@.str.11 = private unnamed_addr constant [13 x i8] c"product_uuid\00", align 1, !dbg !1701
@.str.12 = private unnamed_addr constant [15 x i8] c"product_family\00", align 1, !dbg !1705
@.str.13 = private unnamed_addr constant [12 x i8] c"product_sku\00", align 1, !dbg !1709
@.str.14 = private unnamed_addr constant [13 x i8] c"board_vendor\00", align 1, !dbg !1713
@.str.15 = private unnamed_addr constant [11 x i8] c"board_name\00", align 1, !dbg !1717
@.str.16 = private unnamed_addr constant [14 x i8] c"board_version\00", align 1, !dbg !1721
@.str.17 = private unnamed_addr constant [13 x i8] c"board_serial\00", align 1, !dbg !1728
@.str.18 = private unnamed_addr constant [16 x i8] c"board_asset_tag\00", align 1, !dbg !1732
@.str.19 = private unnamed_addr constant [15 x i8] c"chassis_vendor\00", align 1, !dbg !1736
@.str.20 = private unnamed_addr constant [13 x i8] c"chassis_type\00", align 1, !dbg !1740
@.str.21 = private unnamed_addr constant [16 x i8] c"chassis_version\00", align 1, !dbg !1744
@.str.22 = private unnamed_addr constant [15 x i8] c"chassis_serial\00", align 1, !dbg !1748
@.str.23 = private unnamed_addr constant [18 x i8] c"chassis_asset_tag\00", align 1, !dbg !1752
@.str.24 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1, !dbg !1759
@get_modalias.fields = internal constant [16 x %struct.mafield] [%struct.mafield { ptr @.str.25, i32 1 }, %struct.mafield { ptr @.str.26, i32 2 }, %struct.mafield { ptr @.str.27, i32 3 }, %struct.mafield { ptr @.str.28, i32 4 }, %struct.mafield { ptr @.str.29, i32 5 }, %struct.mafield { ptr @.str.30, i32 6 }, %struct.mafield { ptr @.str.31, i32 7 }, %struct.mafield { ptr @.str.32, i32 8 }, %struct.mafield { ptr @.str.33, i32 13 }, %struct.mafield { ptr @.str.34, i32 14 }, %struct.mafield { ptr @.str.35, i32 15 }, %struct.mafield { ptr @.str.36, i32 18 }, %struct.mafield { ptr @.str.37, i32 19 }, %struct.mafield { ptr @.str.38, i32 20 }, %struct.mafield { ptr @.str.39, i32 11 }, %struct.mafield zeroinitializer], align 16, !dbg !1796
@.str.25 = private unnamed_addr constant [4 x i8] c"bvn\00", align 1, !dbg !1766
@.str.26 = private unnamed_addr constant [4 x i8] c"bvr\00", align 1, !dbg !1768
@.str.27 = private unnamed_addr constant [3 x i8] c"bd\00", align 1, !dbg !1770
@.str.28 = private unnamed_addr constant [3 x i8] c"br\00", align 1, !dbg !1772
@.str.29 = private unnamed_addr constant [4 x i8] c"efr\00", align 1, !dbg !1774
@.str.30 = private unnamed_addr constant [4 x i8] c"svn\00", align 1, !dbg !1776
@.str.31 = private unnamed_addr constant [3 x i8] c"pn\00", align 1, !dbg !1778
@.str.32 = private unnamed_addr constant [4 x i8] c"pvr\00", align 1, !dbg !1780
@.str.33 = private unnamed_addr constant [4 x i8] c"rvn\00", align 1, !dbg !1782
@.str.34 = private unnamed_addr constant [3 x i8] c"rn\00", align 1, !dbg !1784
@.str.35 = private unnamed_addr constant [4 x i8] c"rvr\00", align 1, !dbg !1786
@.str.36 = private unnamed_addr constant [4 x i8] c"cvn\00", align 1, !dbg !1788
@.str.37 = private unnamed_addr constant [3 x i8] c"ct\00", align 1, !dbg !1790
@.str.38 = private unnamed_addr constant [4 x i8] c"cvr\00", align 1, !dbg !1792
@.str.39 = private unnamed_addr constant [4 x i8] c"sku\00", align 1, !dbg !1794
@.str.40 = private unnamed_addr constant [4 x i8] c"dmi\00", align 1, !dbg !1820
@.str.41 = private unnamed_addr constant [6 x i8] c":%s%s\00", align 1, !dbg !1822
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.42 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1827
@.str.43 = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1, !dbg !1834
@sys_dmi_attribute_group = internal global %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sys_dmi_attributes, ptr null }, align 8, !dbg !1841
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_dmi_id__205_264_dmi_id_init3206], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_dmi_id__205_264_dmi_id_init3() #0 section ".init.text" align 16 !dbg !1852 {
entry:
  %call = call i32 @dmi_id_init() #13, !dbg !1853
  ret i32 %call, !dbg !1853
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @dmi_id_init() #0 section ".init.text" align 16 !dbg !1854 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !1859
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1856, metadata !DIExpression()), !dbg !1860
  %0 = load i32, ptr @dmi_available, align 4, !dbg !1861
  %tobool = icmp ne i32 %0, 0, !dbg !1861
  br i1 %tobool, label %if.end, label %if.then, !dbg !1863

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !1864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1864

if.end:                                           ; preds = %entry
  call void @dmi_id_init_attr_table() #13, !dbg !1865
  %call = call i32 @class_register(ptr noundef @dmi_class) #15, !dbg !1866
  store i32 %call, ptr %ret, align 4, !dbg !1867
  %1 = load i32, ptr %ret, align 4, !dbg !1868
  %tobool1 = icmp ne i32 %1, 0, !dbg !1868
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1870

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %ret, align 4, !dbg !1871
  store i32 %2, ptr %retval, align 4, !dbg !1872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1872

if.end3:                                          ; preds = %if.end
  %call4 = call noalias ptr @kzalloc(i64 noundef 728, i32 noundef 3264) #16, !dbg !1873
  store ptr %call4, ptr @dmi_dev, align 8, !dbg !1874
  %3 = load ptr, ptr @dmi_dev, align 8, !dbg !1875
  %tobool5 = icmp ne ptr %3, null, !dbg !1875
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1877

if.then6:                                         ; preds = %if.end3
  store i32 -12, ptr %ret, align 4, !dbg !1878
  br label %fail_class_unregister, !dbg !1880

if.end7:                                          ; preds = %if.end3
  %4 = load ptr, ptr @dmi_dev, align 8, !dbg !1881
  %class = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 30, !dbg !1882
  store ptr @dmi_class, ptr %class, align 8, !dbg !1883
  %5 = load ptr, ptr @dmi_dev, align 8, !dbg !1884
  %call8 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %5, ptr noundef @.str) #15, !dbg !1885
  %6 = load ptr, ptr @dmi_dev, align 8, !dbg !1886
  %groups = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 31, !dbg !1887
  store ptr @sys_dmi_attribute_groups, ptr %groups, align 8, !dbg !1888
  %7 = load ptr, ptr @dmi_dev, align 8, !dbg !1889
  %call9 = call i32 @device_register(ptr noundef %7) #15, !dbg !1890
  store i32 %call9, ptr %ret, align 4, !dbg !1891
  %8 = load i32, ptr %ret, align 4, !dbg !1892
  %tobool10 = icmp ne i32 %8, 0, !dbg !1892
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1894

if.then11:                                        ; preds = %if.end7
  br label %fail_put_dmi_dev, !dbg !1895

if.end12:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !1896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1896

fail_put_dmi_dev:                                 ; preds = %if.then11
  call void @llvm.dbg.label(metadata !1857), !dbg !1897
  %9 = load ptr, ptr @dmi_dev, align 8, !dbg !1898
  call void @put_device(ptr noundef %9) #15, !dbg !1899
  br label %fail_class_unregister, !dbg !1899

fail_class_unregister:                            ; preds = %fail_put_dmi_dev, %if.then6
  call void @llvm.dbg.label(metadata !1858), !dbg !1900
  call void @class_unregister(ptr noundef @dmi_class) #15, !dbg !1901
  %10 = load i32, ptr %ret, align 4, !dbg !1902
  store i32 %10, ptr %retval, align 4, !dbg !1903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1903

cleanup:                                          ; preds = %fail_class_unregister, %if.end12, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !1904
  %11 = load i32, ptr %retval, align 4, !dbg !1904
  ret i32 %11, !dbg !1904
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @dmi_id_init_attr_table() #0 section ".init.text" align 16 !dbg !1905 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1908
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1907, metadata !DIExpression()), !dbg !1909
  store i32 0, ptr %i, align 4, !dbg !1910
  %call = call ptr @dmi_get_system_info(i32 noundef 1) #15, !dbg !1911
  %tobool = icmp ne ptr %call, null, !dbg !1911
  br i1 %tobool, label %if.then, label %if.end, !dbg !1913

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %i, align 4, !dbg !1911
  %inc = add i32 %0, 1, !dbg !1911
  store i32 %inc, ptr %i, align 4, !dbg !1911
  %idxprom = sext i32 %0 to i64, !dbg !1911
  %arrayidx = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom, !dbg !1911
  store ptr @sys_dmi_bios_vendor_attr, ptr %arrayidx, align 8, !dbg !1911
  br label %if.end, !dbg !1911

if.end:                                           ; preds = %if.then, %entry
  %call1 = call ptr @dmi_get_system_info(i32 noundef 2) #15, !dbg !1914
  %tobool2 = icmp ne ptr %call1, null, !dbg !1914
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !1916

if.then3:                                         ; preds = %if.end
  %1 = load i32, ptr %i, align 4, !dbg !1914
  %inc4 = add i32 %1, 1, !dbg !1914
  store i32 %inc4, ptr %i, align 4, !dbg !1914
  %idxprom5 = sext i32 %1 to i64, !dbg !1914
  %arrayidx6 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom5, !dbg !1914
  store ptr @sys_dmi_bios_version_attr, ptr %arrayidx6, align 8, !dbg !1914
  br label %if.end7, !dbg !1914

if.end7:                                          ; preds = %if.then3, %if.end
  %call8 = call ptr @dmi_get_system_info(i32 noundef 3) #15, !dbg !1917
  %tobool9 = icmp ne ptr %call8, null, !dbg !1917
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !1919

if.then10:                                        ; preds = %if.end7
  %2 = load i32, ptr %i, align 4, !dbg !1917
  %inc11 = add i32 %2, 1, !dbg !1917
  store i32 %inc11, ptr %i, align 4, !dbg !1917
  %idxprom12 = sext i32 %2 to i64, !dbg !1917
  %arrayidx13 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom12, !dbg !1917
  store ptr @sys_dmi_bios_date_attr, ptr %arrayidx13, align 8, !dbg !1917
  br label %if.end14, !dbg !1917

if.end14:                                         ; preds = %if.then10, %if.end7
  %call15 = call ptr @dmi_get_system_info(i32 noundef 4) #15, !dbg !1920
  %tobool16 = icmp ne ptr %call15, null, !dbg !1920
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !1922

if.then17:                                        ; preds = %if.end14
  %3 = load i32, ptr %i, align 4, !dbg !1920
  %inc18 = add i32 %3, 1, !dbg !1920
  store i32 %inc18, ptr %i, align 4, !dbg !1920
  %idxprom19 = sext i32 %3 to i64, !dbg !1920
  %arrayidx20 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom19, !dbg !1920
  store ptr @sys_dmi_bios_release_attr, ptr %arrayidx20, align 8, !dbg !1920
  br label %if.end21, !dbg !1920

if.end21:                                         ; preds = %if.then17, %if.end14
  %call22 = call ptr @dmi_get_system_info(i32 noundef 5) #15, !dbg !1923
  %tobool23 = icmp ne ptr %call22, null, !dbg !1923
  br i1 %tobool23, label %if.then24, label %if.end28, !dbg !1925

if.then24:                                        ; preds = %if.end21
  %4 = load i32, ptr %i, align 4, !dbg !1923
  %inc25 = add i32 %4, 1, !dbg !1923
  store i32 %inc25, ptr %i, align 4, !dbg !1923
  %idxprom26 = sext i32 %4 to i64, !dbg !1923
  %arrayidx27 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom26, !dbg !1923
  store ptr @sys_dmi_ec_firmware_release_attr, ptr %arrayidx27, align 8, !dbg !1923
  br label %if.end28, !dbg !1923

if.end28:                                         ; preds = %if.then24, %if.end21
  %call29 = call ptr @dmi_get_system_info(i32 noundef 6) #15, !dbg !1926
  %tobool30 = icmp ne ptr %call29, null, !dbg !1926
  br i1 %tobool30, label %if.then31, label %if.end35, !dbg !1928

if.then31:                                        ; preds = %if.end28
  %5 = load i32, ptr %i, align 4, !dbg !1926
  %inc32 = add i32 %5, 1, !dbg !1926
  store i32 %inc32, ptr %i, align 4, !dbg !1926
  %idxprom33 = sext i32 %5 to i64, !dbg !1926
  %arrayidx34 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom33, !dbg !1926
  store ptr @sys_dmi_sys_vendor_attr, ptr %arrayidx34, align 8, !dbg !1926
  br label %if.end35, !dbg !1926

if.end35:                                         ; preds = %if.then31, %if.end28
  %call36 = call ptr @dmi_get_system_info(i32 noundef 7) #15, !dbg !1929
  %tobool37 = icmp ne ptr %call36, null, !dbg !1929
  br i1 %tobool37, label %if.then38, label %if.end42, !dbg !1931

if.then38:                                        ; preds = %if.end35
  %6 = load i32, ptr %i, align 4, !dbg !1929
  %inc39 = add i32 %6, 1, !dbg !1929
  store i32 %inc39, ptr %i, align 4, !dbg !1929
  %idxprom40 = sext i32 %6 to i64, !dbg !1929
  %arrayidx41 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom40, !dbg !1929
  store ptr @sys_dmi_product_name_attr, ptr %arrayidx41, align 8, !dbg !1929
  br label %if.end42, !dbg !1929

if.end42:                                         ; preds = %if.then38, %if.end35
  %call43 = call ptr @dmi_get_system_info(i32 noundef 8) #15, !dbg !1932
  %tobool44 = icmp ne ptr %call43, null, !dbg !1932
  br i1 %tobool44, label %if.then45, label %if.end49, !dbg !1934

if.then45:                                        ; preds = %if.end42
  %7 = load i32, ptr %i, align 4, !dbg !1932
  %inc46 = add i32 %7, 1, !dbg !1932
  store i32 %inc46, ptr %i, align 4, !dbg !1932
  %idxprom47 = sext i32 %7 to i64, !dbg !1932
  %arrayidx48 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom47, !dbg !1932
  store ptr @sys_dmi_product_version_attr, ptr %arrayidx48, align 8, !dbg !1932
  br label %if.end49, !dbg !1932

if.end49:                                         ; preds = %if.then45, %if.end42
  %call50 = call ptr @dmi_get_system_info(i32 noundef 9) #15, !dbg !1935
  %tobool51 = icmp ne ptr %call50, null, !dbg !1935
  br i1 %tobool51, label %if.then52, label %if.end56, !dbg !1937

if.then52:                                        ; preds = %if.end49
  %8 = load i32, ptr %i, align 4, !dbg !1935
  %inc53 = add i32 %8, 1, !dbg !1935
  store i32 %inc53, ptr %i, align 4, !dbg !1935
  %idxprom54 = sext i32 %8 to i64, !dbg !1935
  %arrayidx55 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom54, !dbg !1935
  store ptr @sys_dmi_product_serial_attr, ptr %arrayidx55, align 8, !dbg !1935
  br label %if.end56, !dbg !1935

if.end56:                                         ; preds = %if.then52, %if.end49
  %call57 = call ptr @dmi_get_system_info(i32 noundef 10) #15, !dbg !1938
  %tobool58 = icmp ne ptr %call57, null, !dbg !1938
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !1940

if.then59:                                        ; preds = %if.end56
  %9 = load i32, ptr %i, align 4, !dbg !1938
  %inc60 = add i32 %9, 1, !dbg !1938
  store i32 %inc60, ptr %i, align 4, !dbg !1938
  %idxprom61 = sext i32 %9 to i64, !dbg !1938
  %arrayidx62 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom61, !dbg !1938
  store ptr @sys_dmi_product_uuid_attr, ptr %arrayidx62, align 8, !dbg !1938
  br label %if.end63, !dbg !1938

if.end63:                                         ; preds = %if.then59, %if.end56
  %call64 = call ptr @dmi_get_system_info(i32 noundef 12) #15, !dbg !1941
  %tobool65 = icmp ne ptr %call64, null, !dbg !1941
  br i1 %tobool65, label %if.then66, label %if.end70, !dbg !1943

if.then66:                                        ; preds = %if.end63
  %10 = load i32, ptr %i, align 4, !dbg !1941
  %inc67 = add i32 %10, 1, !dbg !1941
  store i32 %inc67, ptr %i, align 4, !dbg !1941
  %idxprom68 = sext i32 %10 to i64, !dbg !1941
  %arrayidx69 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom68, !dbg !1941
  store ptr @sys_dmi_product_family_attr, ptr %arrayidx69, align 8, !dbg !1941
  br label %if.end70, !dbg !1941

if.end70:                                         ; preds = %if.then66, %if.end63
  %call71 = call ptr @dmi_get_system_info(i32 noundef 11) #15, !dbg !1944
  %tobool72 = icmp ne ptr %call71, null, !dbg !1944
  br i1 %tobool72, label %if.then73, label %if.end77, !dbg !1946

if.then73:                                        ; preds = %if.end70
  %11 = load i32, ptr %i, align 4, !dbg !1944
  %inc74 = add i32 %11, 1, !dbg !1944
  store i32 %inc74, ptr %i, align 4, !dbg !1944
  %idxprom75 = sext i32 %11 to i64, !dbg !1944
  %arrayidx76 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom75, !dbg !1944
  store ptr @sys_dmi_product_sku_attr, ptr %arrayidx76, align 8, !dbg !1944
  br label %if.end77, !dbg !1944

if.end77:                                         ; preds = %if.then73, %if.end70
  %call78 = call ptr @dmi_get_system_info(i32 noundef 13) #15, !dbg !1947
  %tobool79 = icmp ne ptr %call78, null, !dbg !1947
  br i1 %tobool79, label %if.then80, label %if.end84, !dbg !1949

if.then80:                                        ; preds = %if.end77
  %12 = load i32, ptr %i, align 4, !dbg !1947
  %inc81 = add i32 %12, 1, !dbg !1947
  store i32 %inc81, ptr %i, align 4, !dbg !1947
  %idxprom82 = sext i32 %12 to i64, !dbg !1947
  %arrayidx83 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom82, !dbg !1947
  store ptr @sys_dmi_board_vendor_attr, ptr %arrayidx83, align 8, !dbg !1947
  br label %if.end84, !dbg !1947

if.end84:                                         ; preds = %if.then80, %if.end77
  %call85 = call ptr @dmi_get_system_info(i32 noundef 14) #15, !dbg !1950
  %tobool86 = icmp ne ptr %call85, null, !dbg !1950
  br i1 %tobool86, label %if.then87, label %if.end91, !dbg !1952

if.then87:                                        ; preds = %if.end84
  %13 = load i32, ptr %i, align 4, !dbg !1950
  %inc88 = add i32 %13, 1, !dbg !1950
  store i32 %inc88, ptr %i, align 4, !dbg !1950
  %idxprom89 = sext i32 %13 to i64, !dbg !1950
  %arrayidx90 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom89, !dbg !1950
  store ptr @sys_dmi_board_name_attr, ptr %arrayidx90, align 8, !dbg !1950
  br label %if.end91, !dbg !1950

if.end91:                                         ; preds = %if.then87, %if.end84
  %call92 = call ptr @dmi_get_system_info(i32 noundef 15) #15, !dbg !1953
  %tobool93 = icmp ne ptr %call92, null, !dbg !1953
  br i1 %tobool93, label %if.then94, label %if.end98, !dbg !1955

if.then94:                                        ; preds = %if.end91
  %14 = load i32, ptr %i, align 4, !dbg !1953
  %inc95 = add i32 %14, 1, !dbg !1953
  store i32 %inc95, ptr %i, align 4, !dbg !1953
  %idxprom96 = sext i32 %14 to i64, !dbg !1953
  %arrayidx97 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom96, !dbg !1953
  store ptr @sys_dmi_board_version_attr, ptr %arrayidx97, align 8, !dbg !1953
  br label %if.end98, !dbg !1953

if.end98:                                         ; preds = %if.then94, %if.end91
  %call99 = call ptr @dmi_get_system_info(i32 noundef 16) #15, !dbg !1956
  %tobool100 = icmp ne ptr %call99, null, !dbg !1956
  br i1 %tobool100, label %if.then101, label %if.end105, !dbg !1958

if.then101:                                       ; preds = %if.end98
  %15 = load i32, ptr %i, align 4, !dbg !1956
  %inc102 = add i32 %15, 1, !dbg !1956
  store i32 %inc102, ptr %i, align 4, !dbg !1956
  %idxprom103 = sext i32 %15 to i64, !dbg !1956
  %arrayidx104 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom103, !dbg !1956
  store ptr @sys_dmi_board_serial_attr, ptr %arrayidx104, align 8, !dbg !1956
  br label %if.end105, !dbg !1956

if.end105:                                        ; preds = %if.then101, %if.end98
  %call106 = call ptr @dmi_get_system_info(i32 noundef 17) #15, !dbg !1959
  %tobool107 = icmp ne ptr %call106, null, !dbg !1959
  br i1 %tobool107, label %if.then108, label %if.end112, !dbg !1961

if.then108:                                       ; preds = %if.end105
  %16 = load i32, ptr %i, align 4, !dbg !1959
  %inc109 = add i32 %16, 1, !dbg !1959
  store i32 %inc109, ptr %i, align 4, !dbg !1959
  %idxprom110 = sext i32 %16 to i64, !dbg !1959
  %arrayidx111 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom110, !dbg !1959
  store ptr @sys_dmi_board_asset_tag_attr, ptr %arrayidx111, align 8, !dbg !1959
  br label %if.end112, !dbg !1959

if.end112:                                        ; preds = %if.then108, %if.end105
  %call113 = call ptr @dmi_get_system_info(i32 noundef 18) #15, !dbg !1962
  %tobool114 = icmp ne ptr %call113, null, !dbg !1962
  br i1 %tobool114, label %if.then115, label %if.end119, !dbg !1964

if.then115:                                       ; preds = %if.end112
  %17 = load i32, ptr %i, align 4, !dbg !1962
  %inc116 = add i32 %17, 1, !dbg !1962
  store i32 %inc116, ptr %i, align 4, !dbg !1962
  %idxprom117 = sext i32 %17 to i64, !dbg !1962
  %arrayidx118 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom117, !dbg !1962
  store ptr @sys_dmi_chassis_vendor_attr, ptr %arrayidx118, align 8, !dbg !1962
  br label %if.end119, !dbg !1962

if.end119:                                        ; preds = %if.then115, %if.end112
  %call120 = call ptr @dmi_get_system_info(i32 noundef 19) #15, !dbg !1965
  %tobool121 = icmp ne ptr %call120, null, !dbg !1965
  br i1 %tobool121, label %if.then122, label %if.end126, !dbg !1967

if.then122:                                       ; preds = %if.end119
  %18 = load i32, ptr %i, align 4, !dbg !1965
  %inc123 = add i32 %18, 1, !dbg !1965
  store i32 %inc123, ptr %i, align 4, !dbg !1965
  %idxprom124 = sext i32 %18 to i64, !dbg !1965
  %arrayidx125 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom124, !dbg !1965
  store ptr @sys_dmi_chassis_type_attr, ptr %arrayidx125, align 8, !dbg !1965
  br label %if.end126, !dbg !1965

if.end126:                                        ; preds = %if.then122, %if.end119
  %call127 = call ptr @dmi_get_system_info(i32 noundef 20) #15, !dbg !1968
  %tobool128 = icmp ne ptr %call127, null, !dbg !1968
  br i1 %tobool128, label %if.then129, label %if.end133, !dbg !1970

if.then129:                                       ; preds = %if.end126
  %19 = load i32, ptr %i, align 4, !dbg !1968
  %inc130 = add i32 %19, 1, !dbg !1968
  store i32 %inc130, ptr %i, align 4, !dbg !1968
  %idxprom131 = sext i32 %19 to i64, !dbg !1968
  %arrayidx132 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom131, !dbg !1968
  store ptr @sys_dmi_chassis_version_attr, ptr %arrayidx132, align 8, !dbg !1968
  br label %if.end133, !dbg !1968

if.end133:                                        ; preds = %if.then129, %if.end126
  %call134 = call ptr @dmi_get_system_info(i32 noundef 21) #15, !dbg !1971
  %tobool135 = icmp ne ptr %call134, null, !dbg !1971
  br i1 %tobool135, label %if.then136, label %if.end140, !dbg !1973

if.then136:                                       ; preds = %if.end133
  %20 = load i32, ptr %i, align 4, !dbg !1971
  %inc137 = add i32 %20, 1, !dbg !1971
  store i32 %inc137, ptr %i, align 4, !dbg !1971
  %idxprom138 = sext i32 %20 to i64, !dbg !1971
  %arrayidx139 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom138, !dbg !1971
  store ptr @sys_dmi_chassis_serial_attr, ptr %arrayidx139, align 8, !dbg !1971
  br label %if.end140, !dbg !1971

if.end140:                                        ; preds = %if.then136, %if.end133
  %call141 = call ptr @dmi_get_system_info(i32 noundef 22) #15, !dbg !1974
  %tobool142 = icmp ne ptr %call141, null, !dbg !1974
  br i1 %tobool142, label %if.then143, label %if.end147, !dbg !1976

if.then143:                                       ; preds = %if.end140
  %21 = load i32, ptr %i, align 4, !dbg !1974
  %inc144 = add i32 %21, 1, !dbg !1974
  store i32 %inc144, ptr %i, align 4, !dbg !1974
  %idxprom145 = sext i32 %21 to i64, !dbg !1974
  %arrayidx146 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom145, !dbg !1974
  store ptr @sys_dmi_chassis_asset_tag_attr, ptr %arrayidx146, align 8, !dbg !1974
  br label %if.end147, !dbg !1974

if.end147:                                        ; preds = %if.then143, %if.end140
  %22 = load i32, ptr %i, align 4, !dbg !1977
  %inc148 = add i32 %22, 1, !dbg !1977
  store i32 %inc148, ptr %i, align 4, !dbg !1977
  %idxprom149 = sext i32 %22 to i64, !dbg !1978
  %arrayidx150 = getelementptr [25 x ptr], ptr @sys_dmi_attributes, i64 0, i64 %idxprom149, !dbg !1978
  store ptr @sys_dmi_modalias_attr, ptr %arrayidx150, align 8, !dbg !1979
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1980
  ret void, !dbg !1980
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1981 dso_local i32 @class_register(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !1984 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1988, metadata !DIExpression()), !dbg !1990
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1989, metadata !DIExpression()), !dbg !1991
  %0 = load i64, ptr %size.addr, align 8, !dbg !1992
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1993
  %or = or i32 %1, 256, !dbg !1994
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1995
  ret ptr %call, !dbg !1996
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1997 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2000 dso_local i32 @device_register(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2001 dso_local void @put_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2002 dso_local void @class_unregister(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2003 dso_local ptr @dmi_get_system_info(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sys_dmi_field_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #5 align 16 !dbg !2007 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %field = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2009, metadata !DIExpression()), !dbg !2016
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2010, metadata !DIExpression()), !dbg !2017
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !2011, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 4, ptr %field) #14, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %field, metadata !2012, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2013, metadata !DIExpression()), !dbg !2021
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2021
  store ptr %0, ptr %__mptr, align 8, !dbg !2021
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2021
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2021
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2021
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2022
  %2 = load ptr, ptr %tmp, align 8, !dbg !2021
  %field1 = getelementptr inbounds %struct.dmi_device_attribute, ptr %2, i32 0, i32 1, !dbg !2023
  %3 = load i32, ptr %field1, align 8, !dbg !2023
  store i32 %3, ptr %field, align 4, !dbg !2020
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #14, !dbg !2024
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2015, metadata !DIExpression()), !dbg !2025
  %4 = load ptr, ptr %page.addr, align 8, !dbg !2026
  %5 = load i32, ptr %field, align 4, !dbg !2027
  %call = call ptr @dmi_get_system_info(i32 noundef %5) #15, !dbg !2028
  %call2 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %4, i64 noundef 4096, ptr noundef @.str.2, ptr noundef %call) #15, !dbg !2029
  %conv = sext i32 %call2 to i64, !dbg !2029
  store i64 %conv, ptr %len, align 8, !dbg !2030
  %6 = load ptr, ptr %page.addr, align 8, !dbg !2031
  %7 = load i64, ptr %len, align 8, !dbg !2032
  %sub = sub i64 %7, 1, !dbg !2033
  %arrayidx = getelementptr i8, ptr %6, i64 %sub, !dbg !2031
  store i8 10, ptr %arrayidx, align 1, !dbg !2034
  %8 = load i64, ptr %len, align 8, !dbg !2035
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #14, !dbg !2036
  call void @llvm.lifetime.end.p0(i64 4, ptr %field) #14, !dbg !2036
  ret i64 %8, !dbg !2037
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2038 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sys_dmi_modalias_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %page) #5 align 16 !dbg !2042 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %r = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2044, metadata !DIExpression()), !dbg !2048
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2045, metadata !DIExpression()), !dbg !2049
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !2046, metadata !DIExpression()), !dbg !2050
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #14, !dbg !2051
  call void @llvm.dbg.declare(metadata ptr %r, metadata !2047, metadata !DIExpression()), !dbg !2052
  %0 = load ptr, ptr %page.addr, align 8, !dbg !2053
  %call = call i64 @get_modalias(ptr noundef %0, i64 noundef 4095) #15, !dbg !2054
  store i64 %call, ptr %r, align 8, !dbg !2055
  %1 = load ptr, ptr %page.addr, align 8, !dbg !2056
  %2 = load i64, ptr %r, align 8, !dbg !2057
  %arrayidx = getelementptr i8, ptr %1, i64 %2, !dbg !2056
  store i8 10, ptr %arrayidx, align 1, !dbg !2058
  %3 = load ptr, ptr %page.addr, align 8, !dbg !2059
  %4 = load i64, ptr %r, align 8, !dbg !2060
  %add = add i64 %4, 1, !dbg !2061
  %arrayidx1 = getelementptr i8, ptr %3, i64 %add, !dbg !2059
  store i8 0, ptr %arrayidx1, align 1, !dbg !2062
  %5 = load i64, ptr %r, align 8, !dbg !2063
  %add2 = add i64 %5, 1, !dbg !2064
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #14, !dbg !2065
  ret i64 %add2, !dbg !2066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_modalias(ptr noundef %buffer, i64 noundef %buffer_size) #5 align 16 !dbg !1798 {
entry:
  %buffer.addr = alloca ptr, align 8
  %buffer_size.addr = alloca i64, align 8
  %l = alloca i64, align 8
  %left = alloca i64, align 8
  %p = alloca ptr, align 8
  %f = alloca ptr, align 8
  %c = alloca ptr, align 8
  %t = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1802, metadata !DIExpression()), !dbg !2067
  store i64 %buffer_size, ptr %buffer_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer_size.addr, metadata !1803, metadata !DIExpression()), !dbg !2068
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #14, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %l, metadata !1804, metadata !DIExpression()), !dbg !2070
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #14, !dbg !2069
  call void @llvm.dbg.declare(metadata ptr %left, metadata !1805, metadata !DIExpression()), !dbg !2071
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !2072
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1806, metadata !DIExpression()), !dbg !2073
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #14, !dbg !2074
  call void @llvm.dbg.declare(metadata ptr %f, metadata !1807, metadata !DIExpression()), !dbg !2075
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !2076
  %call = call ptr @strcpy(ptr noundef %0, ptr noundef @.str.40) #15, !dbg !2077
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !2078
  %add.ptr = getelementptr i8, ptr %1, i64 3, !dbg !2079
  store ptr %add.ptr, ptr %p, align 8, !dbg !2080
  %2 = load i64, ptr %buffer_size.addr, align 8, !dbg !2081
  %sub = sub i64 %2, 4, !dbg !2082
  store i64 %sub, ptr %left, align 8, !dbg !2083
  store ptr @get_modalias.fields, ptr %f, align 8, !dbg !2084
  br label %for.cond, !dbg !2085

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %f, align 8, !dbg !2086
  %prefix = getelementptr inbounds %struct.mafield, ptr %3, i32 0, i32 0, !dbg !2087
  %4 = load ptr, ptr %prefix, align 8, !dbg !2087
  %tobool = icmp ne ptr %4, null, !dbg !2086
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2088

land.rhs:                                         ; preds = %for.cond
  %5 = load i64, ptr %left, align 8, !dbg !2089
  %cmp = icmp sgt i64 %5, 0, !dbg !2090
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !2091
  br i1 %6, label %for.body, label %for.end, !dbg !2092

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #14, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1814, metadata !DIExpression()), !dbg !2094
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #14, !dbg !2095
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1818, metadata !DIExpression()), !dbg !2096
  %7 = load ptr, ptr %f, align 8, !dbg !2097
  %field = getelementptr inbounds %struct.mafield, ptr %7, i32 0, i32 1, !dbg !2098
  %8 = load i32, ptr %field, align 8, !dbg !2098
  %call1 = call ptr @dmi_get_system_info(i32 noundef %8) #15, !dbg !2099
  store ptr %call1, ptr %c, align 8, !dbg !2100
  %9 = load ptr, ptr %c, align 8, !dbg !2101
  %tobool2 = icmp ne ptr %9, null, !dbg !2101
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2103

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2104

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %c, align 8, !dbg !2105
  %call3 = call i64 @strlen(ptr noundef %10) #15, !dbg !2106
  %add = add i64 %call3, 1, !dbg !2107
  %call4 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3264) #16, !dbg !2108
  store ptr %call4, ptr %t, align 8, !dbg !2109
  %11 = load ptr, ptr %t, align 8, !dbg !2110
  %tobool5 = icmp ne ptr %11, null, !dbg !2110
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2112

if.then6:                                         ; preds = %if.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2113

if.end7:                                          ; preds = %if.end
  %12 = load ptr, ptr %t, align 8, !dbg !2114
  %13 = load ptr, ptr %c, align 8, !dbg !2115
  call void @ascii_filter(ptr noundef %12, ptr noundef %13) #15, !dbg !2116
  %14 = load ptr, ptr %p, align 8, !dbg !2117
  %15 = load i64, ptr %left, align 8, !dbg !2118
  %16 = load ptr, ptr %f, align 8, !dbg !2119
  %prefix8 = getelementptr inbounds %struct.mafield, ptr %16, i32 0, i32 0, !dbg !2120
  %17 = load ptr, ptr %prefix8, align 8, !dbg !2120
  %18 = load ptr, ptr %t, align 8, !dbg !2121
  %call9 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %14, i64 noundef %15, ptr noundef @.str.41, ptr noundef %17, ptr noundef %18) #15, !dbg !2122
  %conv = sext i32 %call9 to i64, !dbg !2122
  store i64 %conv, ptr %l, align 8, !dbg !2123
  %19 = load ptr, ptr %t, align 8, !dbg !2124
  call void @kfree(ptr noundef %19) #15, !dbg !2125
  %20 = load i64, ptr %l, align 8, !dbg !2126
  %21 = load ptr, ptr %p, align 8, !dbg !2127
  %add.ptr10 = getelementptr i8, ptr %21, i64 %20, !dbg !2127
  store ptr %add.ptr10, ptr %p, align 8, !dbg !2127
  %22 = load i64, ptr %l, align 8, !dbg !2128
  %23 = load i64, ptr %left, align 8, !dbg !2129
  %sub11 = sub i64 %23, %22, !dbg !2129
  store i64 %sub11, ptr %left, align 8, !dbg !2129
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2130
  br label %cleanup, !dbg !2130

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #14, !dbg !2130
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #14, !dbg !2130
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2131

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %24 = load ptr, ptr %f, align 8, !dbg !2132
  %incdec.ptr = getelementptr %struct.mafield, ptr %24, i32 1, !dbg !2132
  store ptr %incdec.ptr, ptr %f, align 8, !dbg !2132
  br label %for.cond, !dbg !2133, !llvm.loop !2134

for.end:                                          ; preds = %cleanup, %land.end
  %25 = load ptr, ptr %p, align 8, !dbg !2138
  %arrayidx = getelementptr i8, ptr %25, i64 0, !dbg !2138
  store i8 58, ptr %arrayidx, align 1, !dbg !2139
  %26 = load ptr, ptr %p, align 8, !dbg !2140
  %arrayidx13 = getelementptr i8, ptr %26, i64 1, !dbg !2140
  store i8 0, ptr %arrayidx13, align 1, !dbg !2141
  %27 = load ptr, ptr %p, align 8, !dbg !2142
  %28 = load ptr, ptr %buffer.addr, align 8, !dbg !2143
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64, !dbg !2144
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64, !dbg !2144
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2144
  %add14 = add i64 %sub.ptr.sub, 1, !dbg !2145
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #14, !dbg !2146
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !2146
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #14, !dbg !2146
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #14, !dbg !2146
  ret i64 %add14, !dbg !2147

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2148 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2152 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2154, metadata !DIExpression()), !dbg !2159
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2155, metadata !DIExpression()), !dbg !2160
  %0 = load i64, ptr %size.addr, align 8, !dbg !2161
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2162
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2163

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2164
  %tobool = icmp ne i64 %2, 0, !dbg !2164
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2165

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2166
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2156, metadata !DIExpression()), !dbg !2167
  %3 = load i64, ptr %size.addr, align 8, !dbg !2168
  %cmp = icmp ugt i64 %3, 8192, !dbg !2170
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2171

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2172
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2173
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !2174
  store ptr %call, ptr %retval, align 8, !dbg !2175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2175

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2176
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !2176
  store i32 %call2, ptr %index, align 4, !dbg !2177
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2178
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2179
  %9 = ptrtoint ptr %8 to i64, !dbg !2179
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !2180
  %idxprom = zext i32 %call3 to i64, !dbg !2181
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2181
  %10 = load i32, ptr %index, align 4, !dbg !2182
  %idxprom4 = zext i32 %10 to i64, !dbg !2181
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2181
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2181
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2183
  %13 = load i64, ptr %size.addr, align 8, !dbg !2184
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !2185
  store ptr %call6, ptr %retval, align 8, !dbg !2186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2186

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !2187
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2188
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2189
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !2190
  store ptr %call8, ptr %retval, align 8, !dbg !2191
  br label %return, !dbg !2191

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2192
  ret ptr %16, !dbg !2192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2193 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ascii_filter(ptr noundef %d, ptr noundef %s) #5 align 16 !dbg !2196 {
entry:
  %d.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2200, metadata !DIExpression()), !dbg !2202
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2201, metadata !DIExpression()), !dbg !2203
  br label %for.cond, !dbg !2204

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2205
  %1 = load i8, ptr %0, align 1, !dbg !2208
  %tobool = icmp ne i8 %1, 0, !dbg !2209
  br i1 %tobool, label %for.body, label %for.end, !dbg !2209

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8, !dbg !2210
  %3 = load i8, ptr %2, align 1, !dbg !2212
  %conv = zext i8 %3 to i32, !dbg !2212
  %cmp = icmp sgt i32 %conv, 32, !dbg !2213
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2214

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %s.addr, align 8, !dbg !2215
  %5 = load i8, ptr %4, align 1, !dbg !2216
  %conv2 = zext i8 %5 to i32, !dbg !2216
  %cmp3 = icmp slt i32 %conv2, 127, !dbg !2217
  br i1 %cmp3, label %land.lhs.true5, label %if.end, !dbg !2218

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %s.addr, align 8, !dbg !2219
  %7 = load i8, ptr %6, align 1, !dbg !2220
  %conv6 = zext i8 %7 to i32, !dbg !2220
  %cmp7 = icmp ne i32 %conv6, 58, !dbg !2221
  br i1 %cmp7, label %if.then, label %if.end, !dbg !2222

if.then:                                          ; preds = %land.lhs.true5
  %8 = load ptr, ptr %s.addr, align 8, !dbg !2223
  %9 = load i8, ptr %8, align 1, !dbg !2224
  %10 = load ptr, ptr %d.addr, align 8, !dbg !2225
  %incdec.ptr = getelementptr i8, ptr %10, i32 1, !dbg !2225
  store ptr %incdec.ptr, ptr %d.addr, align 8, !dbg !2225
  store i8 %9, ptr %10, align 1, !dbg !2226
  br label %if.end, !dbg !2227

if.end:                                           ; preds = %if.then, %land.lhs.true5, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2228

for.inc:                                          ; preds = %if.end
  %11 = load ptr, ptr %s.addr, align 8, !dbg !2229
  %incdec.ptr9 = getelementptr i8, ptr %11, i32 1, !dbg !2229
  store ptr %incdec.ptr9, ptr %s.addr, align 8, !dbg !2229
  br label %for.cond, !dbg !2230, !llvm.loop !2231

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %d.addr, align 8, !dbg !2233
  store i8 0, ptr %12, align 1, !dbg !2234
  ret void, !dbg !2235
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2236 dso_local void @kfree(ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2239 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2240 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2244, metadata !DIExpression()), !dbg !2246
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2245, metadata !DIExpression()), !dbg !2247
  %0 = load i64, ptr %size.addr, align 8, !dbg !2248
  %tobool = icmp ne i64 %0, 0, !dbg !2248
  br i1 %tobool, label %if.end, label %if.then, !dbg !2250

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2251
  br label %return, !dbg !2251

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2252
  %cmp = icmp ule i64 %1, 8, !dbg !2254
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2255

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2256
  br label %return, !dbg !2256

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2257
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2259
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2260

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2261
  %cmp4 = icmp ule i64 %3, 96, !dbg !2262
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2263

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2264
  br label %return, !dbg !2264

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2265
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2267
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2268

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2269
  %cmp9 = icmp ule i64 %5, 192, !dbg !2270
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2271

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2272
  br label %return, !dbg !2272

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2273
  %cmp12 = icmp ule i64 %6, 8, !dbg !2275
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2276

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2277
  br label %return, !dbg !2277

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2278
  %cmp15 = icmp ule i64 %7, 16, !dbg !2280
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2281

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2282
  br label %return, !dbg !2282

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2283
  %cmp18 = icmp ule i64 %8, 32, !dbg !2285
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2286

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2287
  br label %return, !dbg !2287

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2288
  %cmp21 = icmp ule i64 %9, 64, !dbg !2290
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2291

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2292
  br label %return, !dbg !2292

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2293
  %cmp24 = icmp ule i64 %10, 128, !dbg !2295
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2296

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2297
  br label %return, !dbg !2297

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2298
  %cmp27 = icmp ule i64 %11, 256, !dbg !2300
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2301

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2302
  br label %return, !dbg !2302

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2303
  %cmp30 = icmp ule i64 %12, 512, !dbg !2305
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2306

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2307
  br label %return, !dbg !2307

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2308
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2310
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2311

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2312
  br label %return, !dbg !2312

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2313
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2315
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2316

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2317
  br label %return, !dbg !2317

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2318
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2320
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2321

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2322
  br label %return, !dbg !2322

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2323
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2325
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2326

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2327
  br label %return, !dbg !2327

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2328
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2330
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2331

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2332
  br label %return, !dbg !2332

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2333
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2335
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2336

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2337
  br label %return, !dbg !2337

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2338
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2340
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2341

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2342
  br label %return, !dbg !2342

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2343
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2345
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2346

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2347
  br label %return, !dbg !2347

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2348
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2350
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2351

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2352
  br label %return, !dbg !2352

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2353
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2355
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2356

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2357
  br label %return, !dbg !2357

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2358
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2360
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2361

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2362
  br label %return, !dbg !2362

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2363
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2365
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2366

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2367
  br label %return, !dbg !2367

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2368, !range !2370, !noundef !367
  %tobool69 = trunc i8 %25 to i1, !dbg !2368
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2371

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2372

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #18, !dbg !2373, !srcloc !2376
  unreachable, !dbg !2373

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2377

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2378

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2379

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2381

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2379

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.42, i32 480, i32 0, i64 12) #14, !dbg !2383, !srcloc !2385
  br label %do.end75, !dbg !2383

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2379

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2386
  br label %return, !dbg !2386

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2387
  ret i32 %26, !dbg !2387
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2388 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2394 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2398, metadata !DIExpression()), !dbg !2400
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2399, metadata !DIExpression()), !dbg !2401
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2402
  %and = and i32 %0, 17, !dbg !2402
  %cmp = icmp eq i32 %and, 0, !dbg !2402
  %lnot = xor i1 %cmp, true, !dbg !2402
  %lnot1 = xor i1 %lnot, true, !dbg !2402
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2402
  %conv = sext i32 %lnot.ext to i64, !dbg !2402
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2402
  %tobool = icmp ne i64 %expval, 0, !dbg !2402
  br i1 %tobool, label %if.then, label %if.end, !dbg !2404

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2405
  br label %return, !dbg !2405

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2406
  %and2 = and i32 %1, 1, !dbg !2408
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2408
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2409

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2410
  br label %return, !dbg !2410

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2411
  br label %return, !dbg !2411

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2413
  ret i32 %2, !dbg !2413
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2414 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2415 dso_local void @__compiletime_assert_204() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dmi_dev_uevent(ptr noundef %dev, ptr noundef %env) #5 align 16 !dbg !2416 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2418, metadata !DIExpression()), !dbg !2421
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #14, !dbg !2423
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2420, metadata !DIExpression()), !dbg !2424
  %0 = load ptr, ptr %env.addr, align 8, !dbg !2425
  %call = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %0, ptr noundef @.str.43) #15, !dbg !2427
  %tobool = icmp ne i32 %call, 0, !dbg !2427
  br i1 %tobool, label %if.then, label %if.end, !dbg !2428

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2429

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %env.addr, align 8, !dbg !2430
  %buf = getelementptr inbounds %struct.kobj_uevent_env, ptr %1, i32 0, i32 3, !dbg !2431
  %2 = load ptr, ptr %env.addr, align 8, !dbg !2432
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, ptr %2, i32 0, i32 4, !dbg !2433
  %3 = load i32, ptr %buflen, align 4, !dbg !2433
  %sub = sub i32 %3, 1, !dbg !2434
  %idxprom = sext i32 %sub to i64, !dbg !2430
  %arrayidx = getelementptr [2048 x i8], ptr %buf, i64 0, i64 %idxprom, !dbg !2430
  %4 = load ptr, ptr %env.addr, align 8, !dbg !2435
  %buflen1 = getelementptr inbounds %struct.kobj_uevent_env, ptr %4, i32 0, i32 4, !dbg !2436
  %5 = load i32, ptr %buflen1, align 4, !dbg !2436
  %conv = sext i32 %5 to i64, !dbg !2435
  %sub2 = sub i64 2048, %conv, !dbg !2437
  %call3 = call i64 @get_modalias(ptr noundef %arrayidx, i64 noundef %sub2) #15, !dbg !2438
  store i64 %call3, ptr %len, align 8, !dbg !2439
  %6 = load i64, ptr %len, align 8, !dbg !2440
  %7 = load ptr, ptr %env.addr, align 8, !dbg !2442
  %buflen4 = getelementptr inbounds %struct.kobj_uevent_env, ptr %7, i32 0, i32 4, !dbg !2443
  %8 = load i32, ptr %buflen4, align 4, !dbg !2443
  %conv5 = sext i32 %8 to i64, !dbg !2442
  %sub6 = sub i64 2048, %conv5, !dbg !2444
  %cmp = icmp uge i64 %6, %sub6, !dbg !2445
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !2446

if.then8:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2447

if.end9:                                          ; preds = %if.end
  %9 = load i64, ptr %len, align 8, !dbg !2448
  %10 = load ptr, ptr %env.addr, align 8, !dbg !2449
  %buflen10 = getelementptr inbounds %struct.kobj_uevent_env, ptr %10, i32 0, i32 4, !dbg !2450
  %11 = load i32, ptr %buflen10, align 4, !dbg !2451
  %conv11 = sext i32 %11 to i64, !dbg !2451
  %add = add i64 %conv11, %9, !dbg !2451
  %conv12 = trunc i64 %add to i32, !dbg !2451
  store i32 %conv12, ptr %buflen10, align 4, !dbg !2451
  store i32 0, ptr %retval, align 4, !dbg !2452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2452

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #14, !dbg !2453
  %12 = load i32, ptr %retval, align 4, !dbg !2453
  ret i32 %12, !dbg !2453
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dmi_dev_release(ptr noundef %dev) #5 align 16 !dbg !2454 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2456, metadata !DIExpression()), !dbg !2457
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2458
  call void @kfree(ptr noundef %0) #15, !dbg !2459
  ret void, !dbg !2460
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2461 dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!llvm.ident = !{!1851}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_dmi_id__205_264_dmi_id_init3206", scope: !2, file: !3, line: 264, type: !122, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/.dmi-id.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/firmware/dmi-id\22 -D KBUILD_BASENAME=\22dmi_id\22 -D KBUILD_MODNAME=\22dmi_id\22 -D __KBUILD_MODNAME=kmod_dmi_id -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/dmi-id.ll drivers/firmware/dmi-id.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !121, globals: !1634, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/dmi-id.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9825158fe0f5e04147003d79ed643c2")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !106, !111}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!56 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!57 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!58 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!59 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!60 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!61 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!65 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!66 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!70 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!76 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!77 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dmi_field", file: !79, line: 553, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!81 = !DIEnumerator(name: "DMI_NONE", value: 0)
!82 = !DIEnumerator(name: "DMI_BIOS_VENDOR", value: 1)
!83 = !DIEnumerator(name: "DMI_BIOS_VERSION", value: 2)
!84 = !DIEnumerator(name: "DMI_BIOS_DATE", value: 3)
!85 = !DIEnumerator(name: "DMI_BIOS_RELEASE", value: 4)
!86 = !DIEnumerator(name: "DMI_EC_FIRMWARE_RELEASE", value: 5)
!87 = !DIEnumerator(name: "DMI_SYS_VENDOR", value: 6)
!88 = !DIEnumerator(name: "DMI_PRODUCT_NAME", value: 7)
!89 = !DIEnumerator(name: "DMI_PRODUCT_VERSION", value: 8)
!90 = !DIEnumerator(name: "DMI_PRODUCT_SERIAL", value: 9)
!91 = !DIEnumerator(name: "DMI_PRODUCT_UUID", value: 10)
!92 = !DIEnumerator(name: "DMI_PRODUCT_SKU", value: 11)
!93 = !DIEnumerator(name: "DMI_PRODUCT_FAMILY", value: 12)
!94 = !DIEnumerator(name: "DMI_BOARD_VENDOR", value: 13)
!95 = !DIEnumerator(name: "DMI_BOARD_NAME", value: 14)
!96 = !DIEnumerator(name: "DMI_BOARD_VERSION", value: 15)
!97 = !DIEnumerator(name: "DMI_BOARD_SERIAL", value: 16)
!98 = !DIEnumerator(name: "DMI_BOARD_ASSET_TAG", value: 17)
!99 = !DIEnumerator(name: "DMI_CHASSIS_VENDOR", value: 18)
!100 = !DIEnumerator(name: "DMI_CHASSIS_TYPE", value: 19)
!101 = !DIEnumerator(name: "DMI_CHASSIS_VERSION", value: 20)
!102 = !DIEnumerator(name: "DMI_CHASSIS_SERIAL", value: 21)
!103 = !DIEnumerator(name: "DMI_CHASSIS_ASSET_TAG", value: 22)
!104 = !DIEnumerator(name: "DMI_STRING_MAX", value: 23)
!105 = !DIEnumerator(name: "DMI_OEM_STRING", value: 24)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 10, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "false", value: 0)
!110 = !DIEnumerator(name: "true", value: 1)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !112, line: 364, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!113 = !{!114, !115, !116, !117, !118, !119, !120}
!114 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!115 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!116 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!117 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!118 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!119 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!120 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!121 = !{!122, !123, !125, !281}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 154, baseType: !7)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_device_attribute", file: !3, line: 15, size: 320, elements: !127)
!127 = !{!128, !1633}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attr", scope: !126, file: !3, line: 16, baseType: !129, size: 256)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !130)
!130 = !{!131, !142, !1629}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !129, file: !26, line: 107, baseType: !132, size: 128)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !133, line: 30, size: 128, elements: !134)
!133 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!134 = !{!135, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !133, line: 31, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !132, file: !133, line: 32, baseType: !140, size: 16, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 24, baseType: !141)
!141 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !129, file: !26, line: 108, baseType: !143, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !151, !1628, !242}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 66, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !148, line: 73, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !148, line: 15, baseType: !150)
!150 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !153)
!153 = !{!154, !806, !807, !810, !811, !864, !1331, !1332, !1333, !1334, !1335, !1342, !1512, !1525, !1535, !1539, !1541, !1542, !1543, !1547, !1554, !1555, !1558, !1561, !1565, !1568, !1569, !1572, !1573, !1574, !1575, !1605, !1606, !1607, !1610, !1613, !1622, !1623, !1624, !1625, !1626, !1627}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !152, file: !26, line: 706, baseType: !155, size: 512)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !156, line: 64, size: 512, elements: !157)
!156 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!157 = !{!158, !159, !165, !167, !255, !676, !791, !801, !802, !803, !804, !805}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !155, file: !156, line: 65, baseType: !136, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !155, file: !156, line: 66, baseType: !160, size: 128, offset: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 190, size: 128, elements: !161)
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !160, file: !124, line: 191, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !160, file: !124, line: 191, baseType: !163, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !155, file: !156, line: 67, baseType: !166, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !155, file: !156, line: 68, baseType: !168, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !156, line: 168, size: 768, elements: !170)
!170 = !{!171, !172, !214, !215}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !169, file: !156, line: 169, baseType: !160, size: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !169, file: !156, line: 170, baseType: !173, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !174, line: 29, baseType: !175)
!174 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !174, line: 17, size: 32, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !174, line: 18, baseType: !178, size: 32)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !174, line: 18, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !178, file: !174, line: 19, baseType: !181, size: 32)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !182, line: 14, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !181, file: !182, line: 15, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !186, line: 44, baseType: !187)
!186 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !186, line: 14, size: 32, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !187, file: !186, line: 15, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !187, file: !186, line: 15, size: 32, elements: !191)
!191 = !{!192, !197, !207}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !190, file: !186, line: 16, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 174, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 172, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !194, file: !124, line: 173, baseType: !46, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !186, line: 24, baseType: !198, size: 16)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !186, line: 24, size: 16, elements: !199)
!199 = !{!200, !206}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !198, file: !186, line: 25, baseType: !201, size: 8)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !202, line: 17, baseType: !203)
!202 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !204, line: 21, baseType: !205)
!204 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!205 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !198, file: !186, line: 26, baseType: !201, size: 8, offset: 8)
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !186, line: 28, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !186, line: 28, size: 32, elements: !209)
!209 = !{!210, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !208, file: !186, line: 29, baseType: !211, size: 16)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !202, line: 19, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !204, line: 24, baseType: !141)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !208, file: !186, line: 30, baseType: !211, size: 16, offset: 16)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !169, file: !156, line: 171, baseType: !155, size: 512, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !169, file: !156, line: 172, baseType: !216, size: 64, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !156, line: 133, size: 192, elements: !219)
!219 = !{!220, !227, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !218, file: !156, line: 134, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!46, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !156, line: 135, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!136, !225}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !218, file: !156, line: 136, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!46, !225, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !156, line: 125, size: 20736, elements: !239)
!239 = !{!240, !245, !249, !250, !254}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !238, file: !156, line: 126, baseType: !241, size: 192)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, elements: !243)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!243 = !{!244}
!244 = !DISubrange(count: 3)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !238, file: !156, line: 127, baseType: !246, size: 4096, offset: 192)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 4096, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !238, file: !156, line: 128, baseType: !46, size: 32, offset: 4288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !238, file: !156, line: 129, baseType: !251, size: 16384, offset: 4320)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16384, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 2048)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !238, file: !156, line: 130, baseType: !46, size: 32, offset: 20704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !155, file: !156, line: 69, baseType: !256, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !156, line: 116, size: 384, elements: !259)
!259 = !{!260, !264, !282, !623, !654, !658}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !258, file: !156, line: 117, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !166}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !258, file: !156, line: 118, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !133, line: 254, size: 128, elements: !268)
!268 = !{!269, !274}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !267, file: !133, line: 255, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!146, !166, !273, !242}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !267, file: !133, line: 256, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!146, !166, !273, !136, !278}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 61, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !148, line: 72, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !148, line: 16, baseType: !281)
!281 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !258, file: !156, line: 119, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !133, line: 84, size: 320, elements: !287)
!287 = !{!288, !289, !293, !619, !621}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !133, line: 85, baseType: !136, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !286, file: !133, line: 86, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!140, !166, !273, !46}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !286, file: !133, line: 88, baseType: !294, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!140, !166, !297, !46}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !133, line: 175, size: 512, elements: !299)
!299 = !{!300, !301, !302, !303, !310, !320, !321}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !298, file: !133, line: 176, baseType: !132, size: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !298, file: !133, line: 177, baseType: !278, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !298, file: !133, line: 178, baseType: !122, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !298, file: !133, line: 179, baseType: !304, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !309, line: 32, flags: DIFlagFwdDecl)
!309 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!310 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !298, file: !133, line: 180, baseType: !311, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!146, !314, !166, !297, !242, !317, !278}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !316, line: 537, flags: DIFlagFwdDecl)
!316 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 52, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !148, line: 88, baseType: !319)
!319 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !298, file: !133, line: 182, baseType: !311, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !298, file: !133, line: 184, baseType: !322, size: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!46, !314, !166, !297, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !309, line: 625, size: 1344, elements: !327)
!327 = !{!328, !345, !568, !574, !581, !582, !587, !590, !602, !603, !606, !610, !611, !612, !613, !614, !617}
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !309, line: 628, baseType: !329, size: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !309, line: 628, size: 128, elements: !330)
!330 = !{!331, !336}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !309, line: 629, baseType: !332, size: 128)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !329, file: !309, line: 629, size: 128, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !332, file: !309, line: 631, baseType: !281, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !332, file: !309, line: 632, baseType: !281, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !329, file: !309, line: 635, baseType: !337, size: 128, align: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 232, size: 128, align: 64, elements: !338)
!338 = !{!339, !341}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !124, line: 233, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !337, file: !124, line: 234, baseType: !342, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !340}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !326, file: !309, line: 639, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !309, line: 733, size: 10240, elements: !348)
!348 = !{!349, !564}
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !309, line: 734, baseType: !350, size: 10240)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !347, file: !309, line: 734, size: 10240, elements: !351)
!351 = !{!352, !356, !370, !374, !375, !376, !377, !378, !379, !387, !388, !389, !398, !399, !408, !409, !410, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !457, !471, !474, !529, !530, !531, !534, !538, !539, !542, !543, !544, !551, !552}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !309, line: 739, baseType: !353, size: 512, align: 512)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !309, line: 739, size: 512, align: 512, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !353, file: !309, line: 747, baseType: !193, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !350, file: !309, line: 750, baseType: !357, size: 128, offset: 512)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !358, line: 218, size: 128, elements: !359)
!358 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!359 = !{!360, !368, !369}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !358, line: 219, baseType: !361, size: 32)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !358, line: 219, size: 32, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !361, file: !358, line: 220, baseType: !173, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !361, file: !358, line: 221, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !358, line: 197, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 197, elements: !367)
!367 = !{}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !357, file: !358, line: 223, baseType: !7, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !357, file: !358, line: 224, baseType: !122, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !350, file: !309, line: 752, baseType: !371, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!281, !314, !281, !281, !281, !281}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !350, file: !309, line: 756, baseType: !281, size: 64, offset: 704)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !350, file: !309, line: 757, baseType: !281, size: 64, offset: 768)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !350, file: !309, line: 760, baseType: !281, size: 64, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !350, file: !309, line: 761, baseType: !281, size: 64, offset: 896)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !350, file: !309, line: 763, baseType: !281, size: 64, offset: 960)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !350, file: !309, line: 764, baseType: !380, size: 64, offset: 1024)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !316, line: 299, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 299, size: 64, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !382, file: !316, line: 299, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !386, line: 18, baseType: !281)
!386 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!387 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !350, file: !309, line: 773, baseType: !193, size: 32, offset: 1088)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !350, file: !309, line: 785, baseType: !193, size: 32, offset: 1120)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !350, file: !309, line: 795, baseType: !390, size: 64, offset: 1152)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !309, line: 726, size: 128, elements: !392)
!392 = !{!393, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !391, file: !309, line: 727, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !202, line: 23, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !204, line: 31, baseType: !396)
!396 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !391, file: !309, line: 728, baseType: !46, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !350, file: !309, line: 801, baseType: !281, size: 64, offset: 1216)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !350, file: !309, line: 804, baseType: !400, size: 64, offset: 1280)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !401, line: 13, baseType: !402)
!401 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 181, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 179, size: 64, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !403, file: !124, line: 180, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !202, line: 22, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !204, line: 30, baseType: !319)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !350, file: !309, line: 806, baseType: !46, size: 32, offset: 1344)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !350, file: !309, line: 808, baseType: !173, size: 32, offset: 1376)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !350, file: !309, line: 823, baseType: !411, size: 320, offset: 1408)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !412, line: 48, size: 320, elements: !413)
!412 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!413 = !{!414, !415, !416, !421, !423}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !411, file: !412, line: 49, baseType: !400, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !411, file: !412, line: 55, baseType: !400, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !411, file: !412, line: 57, baseType: !417, size: 32, offset: 128)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !418, line: 15, size: 32, elements: !419)
!418 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !417, file: !418, line: 20, baseType: !193, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !411, file: !412, line: 59, baseType: !422, size: 32, offset: 160)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !182, line: 23, baseType: !181)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !411, file: !412, line: 60, baseType: !160, size: 128, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !350, file: !309, line: 825, baseType: !160, size: 128, offset: 1728)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !350, file: !309, line: 845, baseType: !46, size: 32, offset: 1856)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !350, file: !309, line: 849, baseType: !281, size: 64, offset: 1920)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !350, file: !309, line: 850, baseType: !281, size: 64, offset: 1984)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !350, file: !309, line: 852, baseType: !281, size: 64, offset: 2048)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !350, file: !309, line: 853, baseType: !281, size: 64, offset: 2112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !350, file: !309, line: 854, baseType: !402, size: 64, offset: 2176)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !350, file: !309, line: 855, baseType: !281, size: 64, offset: 2240)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !350, file: !309, line: 856, baseType: !281, size: 64, offset: 2304)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !350, file: !309, line: 857, baseType: !281, size: 64, offset: 2368)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !350, file: !309, line: 858, baseType: !281, size: 64, offset: 2432)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !350, file: !309, line: 865, baseType: !436, size: 32, offset: 2496)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !437, line: 69, baseType: !438)
!437 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !437, line: 64, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !438, file: !437, line: 65, baseType: !7, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !350, file: !309, line: 867, baseType: !173, size: 32, offset: 2528)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !350, file: !309, line: 869, baseType: !281, size: 64, offset: 2560)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !350, file: !309, line: 869, baseType: !281, size: 64, offset: 2624)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !350, file: !309, line: 869, baseType: !281, size: 64, offset: 2688)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !350, file: !309, line: 869, baseType: !281, size: 64, offset: 2752)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !350, file: !309, line: 870, baseType: !281, size: 64, offset: 2816)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !350, file: !309, line: 870, baseType: !281, size: 64, offset: 2880)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !350, file: !309, line: 870, baseType: !281, size: 64, offset: 2944)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !350, file: !309, line: 871, baseType: !281, size: 64, offset: 3008)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !350, file: !309, line: 871, baseType: !281, size: 64, offset: 3072)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !350, file: !309, line: 871, baseType: !281, size: 64, offset: 3136)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !350, file: !309, line: 871, baseType: !281, size: 64, offset: 3200)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !350, file: !309, line: 873, baseType: !454, size: 3328, offset: 3264)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 3328, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 52)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !350, file: !309, line: 875, baseType: !458, size: 1280, offset: 6592)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 1280, elements: !469)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !460, line: 22, size: 320, elements: !461)
!460 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!461 = !{!462, !463, !464, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !459, file: !460, line: 23, baseType: !422, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !459, file: !460, line: 24, baseType: !406, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !459, file: !460, line: 26, baseType: !160, size: 128, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !459, file: !460, line: 28, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !202, line: 20, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !204, line: 26, baseType: !46)
!469 = !{!470}
!470 = !DISubrange(count: 4)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !350, file: !309, line: 877, baseType: !472, size: 64, offset: 7872)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !309, line: 877, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !350, file: !309, line: 880, baseType: !475, size: 1088, offset: 7936)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !476, line: 72, baseType: !477)
!476 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 23, size: 1088, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !486, !487, !495, !496, !523, !524, !525}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !477, file: !476, line: 28, baseType: !394, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !477, file: !476, line: 38, baseType: !402, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !477, file: !476, line: 40, baseType: !281, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !477, file: !476, line: 43, baseType: !411, size: 320, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !477, file: !476, line: 44, baseType: !484, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !476, line: 44, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !476, line: 48, baseType: !281, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !477, file: !476, line: 59, baseType: !488, size: 256, offset: 640)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !489, line: 66, size: 256, elements: !490)
!489 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!490 = !{!491, !492, !493, !494}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !488, file: !489, line: 67, baseType: !400, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !488, file: !489, line: 68, baseType: !422, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !488, file: !489, line: 70, baseType: !417, size: 32, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !488, file: !489, line: 72, baseType: !160, size: 128, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !477, file: !476, line: 60, baseType: !122, size: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !477, file: !476, line: 61, baseType: !497, size: 64, offset: 960)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !500, line: 13, size: 1216, elements: !501)
!500 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!501 = !{!502, !503, !504, !505, !506, !507, !508, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !499, file: !500, line: 14, baseType: !122, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !499, file: !500, line: 15, baseType: !281, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !499, file: !500, line: 17, baseType: !281, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !499, file: !500, line: 17, baseType: !281, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !499, file: !500, line: 18, baseType: !281, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !499, file: !500, line: 18, baseType: !281, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !499, file: !500, line: 19, baseType: !509, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !499, file: !500, line: 21, baseType: !150, size: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !499, file: !500, line: 23, baseType: !150, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !499, file: !500, line: 24, baseType: !150, size: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !499, file: !500, line: 25, baseType: !150, size: 64, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !499, file: !500, line: 26, baseType: !150, size: 64, offset: 704)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !499, file: !500, line: 27, baseType: !150, size: 64, offset: 768)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !499, file: !500, line: 28, baseType: !150, size: 64, offset: 832)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !499, file: !500, line: 29, baseType: !150, size: 64, offset: 896)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !499, file: !500, line: 30, baseType: !150, size: 64, offset: 960)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !499, file: !500, line: 31, baseType: !150, size: 64, offset: 1024)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !499, file: !500, line: 32, baseType: !150, size: 64, offset: 1088)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !499, file: !500, line: 33, baseType: !150, size: 64, offset: 1152)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !477, file: !476, line: 63, baseType: !193, size: 32, offset: 1024)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !477, file: !476, line: 69, baseType: !211, size: 16, offset: 1056)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !477, file: !476, line: 70, baseType: !526, size: 16, offset: 1072)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !202, line: 18, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !204, line: 23, baseType: !528)
!528 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !350, file: !309, line: 882, baseType: !281, size: 64, offset: 9024)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !350, file: !309, line: 885, baseType: !173, size: 32, offset: 9088)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !350, file: !309, line: 886, baseType: !532, size: 64, offset: 9152)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !309, line: 732, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !350, file: !309, line: 901, baseType: !535, size: 64, offset: 9216)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !537, line: 18, flags: DIFlagFwdDecl)
!537 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!538 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !350, file: !309, line: 904, baseType: !314, size: 64, offset: 9280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !350, file: !309, line: 906, baseType: !540, size: 64, offset: 9344)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !309, line: 906, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !350, file: !309, line: 930, baseType: !193, size: 32, offset: 9408)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !350, file: !309, line: 933, baseType: !193, size: 32, offset: 9440)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !350, file: !309, line: 935, baseType: !545, size: 64, offset: 9472)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !546, line: 103, size: 64, elements: !547)
!546 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !545, file: !546, line: 104, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !546, line: 101, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !350, file: !309, line: 940, baseType: !400, size: 64, offset: 9536)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !350, file: !309, line: 942, baseType: !553, size: 256, offset: 9600)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !554, line: 98, size: 256, elements: !555)
!554 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !553, file: !554, line: 99, baseType: !400, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !553, file: !554, line: 100, baseType: !160, size: 128, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !553, file: !554, line: 101, baseType: !559, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !554, line: 21, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !347, file: !309, line: 986, baseType: !565, offset: 10240)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: -1)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !326, file: !309, line: 640, baseType: !569, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !316, line: 297, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !316, line: 297, size: 64, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !570, file: !316, line: 297, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !386, line: 19, baseType: !281)
!574 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !309, line: 646, baseType: !575, size: 64, offset: 256)
!575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !309, line: 646, size: 64, elements: !576)
!576 = !{!577, !580}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !575, file: !309, line: 647, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !309, line: 542, baseType: !281)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !575, file: !309, line: 648, baseType: !579, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !326, file: !309, line: 666, baseType: !46, size: 32, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !326, file: !309, line: 667, baseType: !583, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !309, line: 579, size: 320, elements: !585)
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !584, file: !309, line: 580, baseType: !411, size: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !326, file: !309, line: 670, baseType: !588, size: 8, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 35, baseType: !589)
!589 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !326, file: !309, line: 681, baseType: !591, size: 256, offset: 512)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !309, line: 678, size: 256, elements: !592)
!592 = !{!593, !601}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !591, file: !309, line: 679, baseType: !594, size: 192, align: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !595, line: 5, size: 192, align: 64, elements: !596)
!595 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!596 = !{!597, !598, !600}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !594, file: !595, line: 6, baseType: !281, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !594, file: !595, line: 7, baseType: !599, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !594, file: !595, line: 8, baseType: !599, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !591, file: !309, line: 680, baseType: !281, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !326, file: !309, line: 689, baseType: !160, size: 128, offset: 768)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !326, file: !309, line: 691, baseType: !604, size: 64, offset: 896)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !309, line: 691, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !326, file: !309, line: 694, baseType: !607, size: 64, offset: 960)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !309, line: 694, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !326, file: !309, line: 697, baseType: !281, size: 64, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !326, file: !309, line: 699, baseType: !314, size: 64, offset: 1088)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !326, file: !309, line: 700, baseType: !122, size: 64, offset: 1152)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !326, file: !309, line: 711, baseType: !400, size: 64, offset: 1216)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !326, file: !309, line: 717, baseType: !615, size: 64, offset: 1280)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !309, line: 717, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !326, file: !309, line: 722, baseType: !618, offset: 1344)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !309, line: 570, elements: !367)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !286, file: !133, line: 90, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !286, file: !133, line: 91, baseType: !622, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !258, file: !156, line: 120, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!627, !225}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !630)
!630 = !{!631, !632, !636, !640, !646, !650}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !6, line: 40, baseType: !5, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !629, file: !6, line: 41, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!588}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !629, file: !6, line: 42, baseType: !637, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!122}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !629, file: !6, line: 43, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!509, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !629, file: !6, line: 44, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!509}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !629, file: !6, line: 45, baseType: !651, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !122}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !258, file: !156, line: 121, baseType: !655, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!509, !225}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !258, file: !156, line: 122, baseType: !659, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !225, !662, !669}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !537, line: 23, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 21, size: 32, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !664, file: !537, line: 22, baseType: !667, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 37, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !148, line: 49, baseType: !7)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !537, line: 28, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 26, size: 32, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !671, file: !537, line: 27, baseType: !674, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 38, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !148, line: 50, baseType: !7)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !155, file: !156, line: 70, baseType: !677, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !679, line: 190, size: 1152, elements: !680)
!679 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !783, !784, !785, !786, !787, !790}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !678, file: !679, line: 191, baseType: !193, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !678, file: !679, line: 192, baseType: !193, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !678, file: !679, line: 202, baseType: !677, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !678, file: !679, line: 203, baseType: !136, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !678, file: !679, line: 205, baseType: !594, size: 192, align: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !678, file: !679, line: 207, baseType: !509, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !678, file: !679, line: 208, baseType: !7, size: 32, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !679, line: 209, baseType: !689, size: 256, offset: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !679, line: 209, size: 256, elements: !690)
!690 = !{!691, !703, !707}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !689, file: !679, line: 210, baseType: !692, size: 256)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !679, line: 153, size: 256, elements: !693)
!693 = !{!694, !695, !699, !702}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !692, file: !679, line: 154, baseType: !281, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !692, file: !679, line: 156, baseType: !696, size: 64, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !595, line: 12, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !696, file: !595, line: 13, baseType: !599, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !692, file: !679, line: 162, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !679, line: 162, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !692, file: !679, line: 167, baseType: !281, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !689, file: !679, line: 211, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !679, line: 170, size: 64, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !704, file: !679, line: 171, baseType: !677, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !689, file: !679, line: 212, baseType: !708, size: 256)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !679, line: 174, size: 256, elements: !709)
!709 = !{!710, !778, !781, !782}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !708, file: !679, line: 175, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !679, line: 271, size: 768, elements: !714)
!714 = !{!715, !738, !742, !746, !751, !755, !759, !763, !764, !765, !766, !774}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !713, file: !679, line: 276, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!46, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !679, line: 251, size: 1216, elements: !721)
!721 = !{!722, !723, !724, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !720, file: !679, line: 253, baseType: !677, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !720, file: !679, line: 254, baseType: !314, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !720, file: !679, line: 255, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !727, line: 66, flags: DIFlagFwdDecl)
!727 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!728 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !720, file: !679, line: 256, baseType: !122, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !720, file: !679, line: 259, baseType: !488, size: 256, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !720, file: !679, line: 260, baseType: !488, size: 256, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !720, file: !679, line: 261, baseType: !46, size: 32, offset: 768)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !720, file: !679, line: 262, baseType: !160, size: 128, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !720, file: !679, line: 263, baseType: !242, size: 64, offset: 960)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !720, file: !679, line: 265, baseType: !278, size: 64, offset: 1024)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !720, file: !679, line: 266, baseType: !588, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !720, file: !679, line: 267, baseType: !588, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !720, file: !679, line: 268, baseType: !607, size: 64, offset: 1152)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !713, file: !679, line: 277, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !719}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !713, file: !679, line: 290, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!46, !725, !122}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !713, file: !679, line: 292, baseType: !747, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!122, !725, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !713, file: !679, line: 293, baseType: !752, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!122, !725, !122, !750}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !713, file: !679, line: 294, baseType: !756, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !725, !122}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !713, file: !679, line: 296, baseType: !760, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!146, !719, !242, !278, !317}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !713, file: !679, line: 306, baseType: !278, size: 64, offset: 448)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !713, file: !679, line: 313, baseType: !588, size: 8, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !713, file: !679, line: 314, baseType: !760, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !713, file: !679, line: 317, baseType: !767, size: 64, offset: 640)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!770, !719, !772}
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !771, line: 59, baseType: !7)
!771 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !679, line: 31, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !713, file: !679, line: 320, baseType: !775, size: 64, offset: 704)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!46, !719, !325}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !708, file: !679, line: 176, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !679, line: 35, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !708, file: !679, line: 177, baseType: !317, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !708, file: !679, line: 178, baseType: !677, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !678, file: !679, line: 215, baseType: !122, size: 64, offset: 768)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !678, file: !679, line: 221, baseType: !394, size: 64, offset: 832)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !679, line: 223, baseType: !141, size: 16, offset: 896)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !678, file: !679, line: 224, baseType: !140, size: 16, offset: 912)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !678, file: !679, line: 225, baseType: !788, size: 64, offset: 960)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !679, line: 36, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !678, file: !679, line: 227, baseType: !337, size: 128, align: 64, offset: 1024)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !155, file: !156, line: 71, baseType: !792, size: 32, offset: 448)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !793, line: 19, size: 32, elements: !794)
!793 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !792, file: !793, line: 20, baseType: !796, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !797, line: 113, baseType: !798)
!797 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !797, line: 111, size: 32, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !798, file: !797, line: 112, baseType: !193, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !155, file: !156, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !155, file: !156, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !155, file: !156, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !155, file: !156, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !155, file: !156, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !26, line: 707, baseType: !151, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !152, file: !26, line: 709, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !152, file: !26, line: 711, baseType: !136, size: 64, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !26, line: 712, baseType: !812, size: 64, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !815)
!815 = !{!816, !817, !818, !824, !829, !833}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !814, file: !26, line: 90, baseType: !136, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !814, file: !26, line: 91, baseType: !283, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !814, file: !26, line: 92, baseType: !819, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!46, !822, !237}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !814, file: !26, line: 93, baseType: !825, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!242, !822, !828, !662, !669}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !814, file: !26, line: 95, baseType: !830, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !151}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !814, file: !26, line: 97, baseType: !834, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !837)
!837 = !{!838, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !836, file: !38, line: 287, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!46, !151}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !836, file: !38, line: 288, baseType: !830, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !836, file: !38, line: 289, baseType: !839, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !836, file: !38, line: 290, baseType: !839, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !836, file: !38, line: 291, baseType: !839, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !836, file: !38, line: 292, baseType: !839, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !836, file: !38, line: 293, baseType: !839, size: 64, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !836, file: !38, line: 294, baseType: !839, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !836, file: !38, line: 295, baseType: !839, size: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !836, file: !38, line: 296, baseType: !839, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !836, file: !38, line: 297, baseType: !839, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !836, file: !38, line: 298, baseType: !839, size: 64, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !836, file: !38, line: 299, baseType: !839, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !836, file: !38, line: 300, baseType: !839, size: 64, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !836, file: !38, line: 301, baseType: !839, size: 64, offset: 896)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !836, file: !38, line: 302, baseType: !839, size: 64, offset: 960)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !836, file: !38, line: 303, baseType: !839, size: 64, offset: 1024)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !836, file: !38, line: 304, baseType: !839, size: 64, offset: 1088)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !836, file: !38, line: 305, baseType: !839, size: 64, offset: 1152)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !836, file: !38, line: 306, baseType: !839, size: 64, offset: 1216)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !836, file: !38, line: 307, baseType: !839, size: 64, offset: 1280)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !836, file: !38, line: 308, baseType: !839, size: 64, offset: 1344)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !836, file: !38, line: 309, baseType: !839, size: 64, offset: 1408)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !152, file: !26, line: 714, baseType: !865, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !868, line: 80, size: 1344, elements: !869)
!868 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!869 = !{!870, !871, !872, !873, !874, !875, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1330}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !867, file: !868, line: 81, baseType: !136, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !867, file: !868, line: 82, baseType: !136, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !867, file: !868, line: 83, baseType: !283, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !867, file: !868, line: 84, baseType: !283, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !867, file: !868, line: 85, baseType: !283, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !867, file: !868, line: 87, baseType: !876, size: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!46, !151, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !881)
!881 = !{!882, !883, !884, !1262, !1263, !1264, !1265, !1280, !1293, !1294, !1295, !1296, !1297, !1305, !1306, !1307, !1308, !1309, !1310}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !880, file: !20, line: 97, baseType: !136, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !880, file: !20, line: 98, baseType: !865, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !880, file: !20, line: 100, baseType: !885, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !887)
!887 = !{!888, !889, !890, !894, !915, !941, !942, !943, !944, !948, !951, !952, !953, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1016, !1020, !1040, !1058, !1059, !1060, !1061, !1070, !1094, !1095, !1098, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1112, !1113, !1220, !1228, !1229, !1230, !1232, !1236, !1237, !1241, !1242, !1243, !1244, !1246, !1247, !1248, !1255, !1256, !1257, !1261}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !886, file: !13, line: 403, baseType: !12, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !886, file: !13, line: 406, baseType: !160, size: 128, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !886, file: !13, line: 409, baseType: !891, size: 448, offset: 192)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 448, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 56)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !886, file: !13, line: 417, baseType: !895, size: 768, offset: 640)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !896)
!896 = !{!897, !898, !899, !900, !903}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !895, file: !13, line: 46, baseType: !155, size: 512)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !895, file: !13, line: 47, baseType: !885, size: 64, offset: 512)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !895, file: !13, line: 48, baseType: !166, size: 64, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !895, file: !13, line: 49, baseType: !901, size: 64, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !895, file: !13, line: 50, baseType: !904, size: 64, offset: 704)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !906, line: 26, size: 256, elements: !907)
!906 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !905, file: !906, line: 27, baseType: !7, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !905, file: !906, line: 28, baseType: !910, size: 192, offset: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !911, line: 43, size: 192, elements: !912)
!911 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !910, file: !911, line: 44, baseType: !422, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !910, file: !911, line: 45, baseType: !160, size: 128, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !886, file: !13, line: 418, baseType: !916, size: 64, offset: 1408)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !918)
!918 = !{!919, !920, !925, !929, !933, !937}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !917, file: !13, line: 54, baseType: !132, size: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !917, file: !13, line: 55, baseType: !921, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!146, !916, !924, !242}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !917, file: !13, line: 57, baseType: !926, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!146, !916, !924, !136, !278}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !917, file: !13, line: 59, baseType: !930, size: 64, offset: 256)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !885, !136}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !917, file: !13, line: 60, baseType: !934, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!46, !885}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !917, file: !13, line: 61, baseType: !938, size: 64, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !885}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !886, file: !13, line: 419, baseType: !136, size: 64, offset: 1472)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !886, file: !13, line: 420, baseType: !136, size: 64, offset: 1536)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !886, file: !13, line: 421, baseType: !166, size: 64, offset: 1600)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !886, file: !13, line: 424, baseType: !945, size: 64, offset: 1664)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !886, file: !13, line: 425, baseType: !949, size: 64, offset: 1728)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !886, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !886, file: !13, line: 435, baseType: !488, size: 256, offset: 1856)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !886, file: !13, line: 437, baseType: !954, size: 64, offset: 2112)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !956, line: 69, size: 320, elements: !957)
!956 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!957 = !{!958, !959, !960, !977, !979, !983, !984}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !955, file: !956, line: 70, baseType: !136, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !955, file: !956, line: 71, baseType: !885, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !955, file: !956, line: 72, baseType: !961, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !956, line: 47, size: 256, elements: !964)
!964 = !{!965, !966, !972, !976}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !956, line: 49, baseType: !7, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !963, file: !956, line: 51, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!46, !136, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !963, file: !956, line: 53, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!46, !242, !970}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !963, file: !956, line: 55, baseType: !651, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !955, file: !956, line: 73, baseType: !978, size: 16, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !955, file: !956, line: 74, baseType: !980, size: 8, offset: 208)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !202, line: 16, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !204, line: 20, baseType: !982)
!982 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !955, file: !956, line: 75, baseType: !201, size: 8, offset: 216)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !956, line: 76, baseType: !985, size: 64, offset: 256)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !955, file: !956, line: 76, size: 64, elements: !986)
!986 = !{!987, !988, !995}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !985, file: !956, line: 77, baseType: !122, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !985, file: !956, line: 78, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !956, line: 86, size: 128, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !991, file: !956, line: 87, baseType: !7, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !991, file: !956, line: 88, baseType: !242, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !985, file: !956, line: 79, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !956, line: 92, size: 256, elements: !999)
!999 = !{!1000, !1001, !1002, !1004, !1005}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !998, file: !956, line: 94, baseType: !7, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !998, file: !956, line: 95, baseType: !7, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !998, file: !956, line: 96, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !998, file: !956, line: 97, baseType: !961, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !998, file: !956, line: 98, baseType: !122, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !886, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !886, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !886, file: !13, line: 442, baseType: !945, size: 64, offset: 2240)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !886, file: !13, line: 443, baseType: !949, size: 64, offset: 2304)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !886, file: !13, line: 444, baseType: !588, size: 8, offset: 2368)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !886, file: !13, line: 451, baseType: !588, size: 8, offset: 2376)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !886, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !886, file: !13, line: 455, baseType: !1014, size: 64, offset: 2432)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !886, file: !13, line: 458, baseType: !1017, size: 64, offset: 2496)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!46}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !886, file: !13, line: 460, baseType: !1021, size: 4032, align: 512, offset: 2560)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 4032, elements: !1038)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1023)
!1023 = !{!1024, !1025, !1026}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1022, file: !13, line: 363, baseType: !122, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1022, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1022, file: !13, line: 367, baseType: !1027, size: 448, offset: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1027, file: !13, line: 320, baseType: !885, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1027, file: !13, line: 321, baseType: !1031, size: 384, offset: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1032, line: 40, size: 384, elements: !1033)
!1032 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1031, file: !1032, line: 41, baseType: !1035, size: 384, align: 64)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 384, align: 64, elements: !1036)
!1036 = !{!1037}
!1037 = !DISubrange(count: 2)
!1038 = !{!1039}
!1039 = !DISubrange(count: 7)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !886, file: !13, line: 463, baseType: !1041, size: 192, offset: 6592)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1042, line: 8, size: 192, elements: !1043)
!1042 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1043 = !{!1044, !1045, !1047}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1041, file: !1042, line: 10, baseType: !7, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1041, file: !1042, line: 11, baseType: !1046, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1041, file: !1042, line: 12, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1050, line: 59, size: 48, elements: !1051)
!1050 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1049, file: !1050, line: 60, baseType: !526, size: 16)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1049, file: !1050, line: 61, baseType: !526, size: 16, offset: 16)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1049, file: !1050, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1049, file: !1050, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1049, file: !1050, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1049, file: !1050, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !886, file: !13, line: 465, baseType: !281, size: 64, offset: 6784)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !886, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !886, file: !13, line: 470, baseType: !160, size: 128, offset: 6912)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !886, file: !13, line: 471, baseType: !1062, size: 64, offset: 7040)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1064, line: 33, size: 96, elements: !1065)
!1064 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1065 = !{!1066, !1067, !1068, !1069}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1063, file: !1064, line: 37, baseType: !46, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1063, file: !1064, line: 43, baseType: !46, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1063, file: !1064, line: 45, baseType: !141, size: 16, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !1064, line: 47, baseType: !141, size: 16, offset: 80)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !886, file: !13, line: 476, baseType: !1071, size: 64, offset: 7104)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1073)
!1073 = !{!1074, !1091, !1092, !1093}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1072, file: !13, line: 379, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1077, line: 204, baseType: !1078)
!1077 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1077, line: 197, size: 192, elements: !1079)
!1079 = !{!1080, !1083, !1084, !1085, !1087, !1089}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1078, file: !1077, line: 198, baseType: !1081, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1077, line: 21, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !204, line: 27, baseType: !7)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1078, file: !1077, line: 199, baseType: !205, size: 8, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1078, file: !1077, line: 200, baseType: !205, size: 8, offset: 40)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1078, file: !1077, line: 201, baseType: !1086, size: 16, offset: 48)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1077, line: 17, baseType: !212)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1078, file: !1077, line: 202, baseType: !1088, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1077, line: 16, baseType: !395)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1078, file: !1077, line: 203, baseType: !1090, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1077, line: 22, baseType: !395)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1072, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1072, file: !13, line: 381, baseType: !242, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1072, file: !13, line: 382, baseType: !242, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !886, file: !13, line: 477, baseType: !1072, size: 256, offset: 7168)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !886, file: !13, line: 480, baseType: !1096, size: 64, offset: 7424)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !886, file: !13, line: 483, baseType: !1099, size: 64, offset: 7488)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !886, file: !13, line: 488, baseType: !242, size: 64, offset: 7552)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !886, file: !13, line: 492, baseType: !122, size: 64, offset: 7616)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !886, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !886, file: !13, line: 495, baseType: !122, size: 64, offset: 7744)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !886, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !886, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !886, file: !13, line: 500, baseType: !1108, size: 64, offset: 7872)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1110, line: 45, baseType: !1111)
!1110 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !886, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !886, file: !13, line: 504, baseType: !1114, size: 64, offset: 8000)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1117, line: 96, size: 192, elements: !1118)
!1117 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1118 = !{!1119, !1120, !1181, !1184}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1116, file: !1117, line: 97, baseType: !7, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1116, file: !1117, line: 98, baseType: !1121, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1117, line: 24, size: 3072, elements: !1123)
!1123 = !{!1124, !1126, !1127, !1128, !1129, !1143, !1144, !1145, !1146, !1165, !1166, !1167, !1178, !1179, !1180}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1122, file: !1117, line: 26, baseType: !1125, size: 128)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 128, elements: !1036)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1122, file: !1117, line: 27, baseType: !1125, size: 128, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1122, file: !1117, line: 28, baseType: !46, size: 32, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1122, file: !1117, line: 31, baseType: !173, size: 32, align: 512, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1122, file: !1117, line: 32, baseType: !1130, size: 960, offset: 576)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1131, line: 206, size: 960, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1132 = !{!1133, !1134, !1137, !1139, !1140, !1142}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1130, file: !1131, line: 207, baseType: !340, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1130, file: !1131, line: 208, baseType: !1135, size: 256, offset: 64)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 256, elements: !469)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1130, file: !1131, line: 209, baseType: !1138, size: 256, offset: 320)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 256, elements: !469)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1130, file: !1131, line: 213, baseType: !150, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1130, file: !1131, line: 215, baseType: !1141, size: 256, offset: 640)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !469)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !1131, line: 216, baseType: !201, size: 8, offset: 896)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1122, file: !1117, line: 33, baseType: !281, size: 64, offset: 1536)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1122, file: !1117, line: 34, baseType: !281, size: 64, offset: 1600)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1122, file: !1117, line: 35, baseType: !588, size: 8, offset: 1664)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1122, file: !1117, line: 36, baseType: !1147, size: 320, offset: 1728)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1148, line: 11, size: 320, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1149 = !{!1150, !1157, !1158, !1163}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1147, file: !1148, line: 16, baseType: !1151, size: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 198, size: 128, elements: !1152)
!1152 = !{!1153, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1151, file: !124, line: 199, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1151, file: !124, line: 199, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1147, file: !1148, line: 17, baseType: !281, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1147, file: !1148, line: 18, baseType: !1159, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1147, file: !1148, line: 19, baseType: !1164, size: 32, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !202, line: 21, baseType: !1082)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1122, file: !1117, line: 37, baseType: !553, size: 256, offset: 2048)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1122, file: !1117, line: 38, baseType: !337, size: 128, align: 64, offset: 2304)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1122, file: !1117, line: 39, baseType: !1168, size: 64, offset: 2432)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1117, line: 49, size: 768, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1169, file: !1117, line: 50, baseType: !173, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1169, file: !1117, line: 51, baseType: !1138, size: 256, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1169, file: !1117, line: 53, baseType: !1138, size: 256, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1169, file: !1117, line: 54, baseType: !281, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1169, file: !1117, line: 55, baseType: !1168, size: 64, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1169, file: !1117, line: 56, baseType: !46, size: 32, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1169, file: !1117, line: 57, baseType: !46, size: 32, offset: 736)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1122, file: !1117, line: 40, baseType: !281, size: 64, offset: 2496)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1122, file: !1117, line: 42, baseType: !46, size: 32, offset: 2560)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1122, file: !1117, line: 43, baseType: !1115, size: 64, offset: 2624)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1116, file: !1117, line: 99, baseType: !1182, offset: 128)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1183, line: 211, elements: !367)
!1183 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1116, file: !1117, line: 100, baseType: !1185, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1117, line: 63, size: 3008, elements: !1187)
!1187 = !{!1188, !1189, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1219}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1186, file: !1117, line: 64, baseType: !1168, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1186, file: !1117, line: 65, baseType: !1190, size: 192, offset: 64)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1168, size: 192, elements: !243)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1186, file: !1117, line: 67, baseType: !46, size: 32, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1186, file: !1117, line: 68, baseType: !488, size: 256, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1186, file: !1117, line: 69, baseType: !173, size: 32, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1186, file: !1117, line: 70, baseType: !488, size: 256, offset: 640)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1186, file: !1117, line: 71, baseType: !281, size: 64, offset: 896)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1186, file: !1117, line: 72, baseType: !281, size: 64, offset: 960)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1186, file: !1117, line: 73, baseType: !281, size: 64, offset: 1024)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1186, file: !1117, line: 74, baseType: !281, size: 64, offset: 1088)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1186, file: !1117, line: 75, baseType: !281, size: 64, offset: 1152)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1186, file: !1117, line: 76, baseType: !281, size: 64, offset: 1216)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1186, file: !1117, line: 77, baseType: !281, size: 64, offset: 1280)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1186, file: !1117, line: 78, baseType: !281, size: 64, offset: 1344)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1186, file: !1117, line: 79, baseType: !588, size: 8, offset: 1408)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1186, file: !1117, line: 80, baseType: !281, size: 64, offset: 1472)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1186, file: !1117, line: 81, baseType: !488, size: 256, offset: 1536)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1186, file: !1117, line: 82, baseType: !905, size: 256, offset: 1792)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1186, file: !1117, line: 84, baseType: !193, size: 32, offset: 2048)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1186, file: !1117, line: 87, baseType: !281, size: 64, offset: 2112)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1186, file: !1117, line: 88, baseType: !281, size: 64, offset: 2176)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1186, file: !1117, line: 89, baseType: !1211, size: 704, offset: 2240)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !554, line: 111, size: 704, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1218}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1211, file: !554, line: 112, baseType: !553, size: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1211, file: !554, line: 113, baseType: !1147, size: 320, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1211, file: !554, line: 116, baseType: !1216, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !554, line: 18, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1211, file: !554, line: 117, baseType: !46, size: 32, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1186, file: !1117, line: 90, baseType: !1115, size: 64, offset: 2944)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !886, file: !13, line: 515, baseType: !1221, size: 64, offset: 8064)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1223, line: 117, size: 128, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1224 = !{!1225, !1226, !1227}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1222, file: !1223, line: 118, baseType: !467, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1222, file: !1223, line: 119, baseType: !467, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1222, file: !1223, line: 120, baseType: !150, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !886, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !886, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !886, file: !13, line: 520, baseType: !1231, size: 64, offset: 8192)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !886, file: !13, line: 523, baseType: !1233, size: 64, offset: 8256)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !886, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !886, file: !13, line: 525, baseType: !1238, size: 64, offset: 8384)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !886, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !886, file: !13, line: 533, baseType: !122, size: 64, offset: 8512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !886, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !886, file: !13, line: 535, baseType: !1245, size: 64, offset: 8640)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !886, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !886, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !886, file: !13, line: 540, baseType: !1249, size: 64, offset: 8768)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1251, line: 32, size: 64, elements: !1252)
!1251 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1250, file: !1251, line: 33, baseType: !467, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1250, file: !1251, line: 34, baseType: !467, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !886, file: !13, line: 563, baseType: !160, size: 128, offset: 8832)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !886, file: !13, line: 565, baseType: !160, size: 128, offset: 8960)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !886, file: !13, line: 568, baseType: !1258, size: 64, offset: 9088)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !886, file: !13, line: 570, baseType: !193, size: 32, offset: 9152)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !880, file: !20, line: 101, baseType: !136, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !880, file: !20, line: 103, baseType: !588, size: 8, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !880, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !880, file: !20, line: 106, baseType: !1266, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !79, line: 282, size: 1600, elements: !1269)
!1269 = !{!1270, !1274, !1275, !1279}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1268, file: !79, line: 283, baseType: !1271, size: 256)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1268, file: !79, line: 284, baseType: !1271, size: 256, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1268, file: !79, line: 285, baseType: !1276, size: 1024, offset: 512)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 1024, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1268, file: !79, line: 286, baseType: !509, size: 64, offset: 1536)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !880, file: !20, line: 107, baseType: !1281, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !79, line: 217, size: 256, elements: !1284)
!1284 = !{!1285, !1289, !1291, !1292}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1283, file: !79, line: 218, baseType: !1286, size: 128)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 128, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 16)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1283, file: !79, line: 219, baseType: !1290, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !79, line: 15, baseType: !281)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1283, file: !79, line: 220, baseType: !1082, size: 32, offset: 192)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1283, file: !79, line: 221, baseType: !1082, size: 32, offset: 224)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !880, file: !20, line: 109, baseType: !839, size: 64, offset: 448)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !880, file: !20, line: 110, baseType: !830, size: 64, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !880, file: !20, line: 111, baseType: !839, size: 64, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !880, file: !20, line: 112, baseType: !830, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !880, file: !20, line: 113, baseType: !1298, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!46, !151, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1303)
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1302, file: !38, line: 59, baseType: !46, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !880, file: !20, line: 114, baseType: !839, size: 64, offset: 768)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !880, file: !20, line: 115, baseType: !283, size: 64, offset: 832)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !880, file: !20, line: 116, baseType: !283, size: 64, offset: 896)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !880, file: !20, line: 118, baseType: !834, size: 64, offset: 960)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !880, file: !20, line: 119, baseType: !830, size: 64, offset: 1024)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !880, file: !20, line: 121, baseType: !1311, size: 64, offset: 1088)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !867, file: !868, line: 88, baseType: !819, size: 64, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !867, file: !868, line: 89, baseType: !839, size: 64, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !867, file: !868, line: 90, baseType: !830, size: 64, offset: 512)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !867, file: !868, line: 91, baseType: !830, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !867, file: !868, line: 92, baseType: !830, size: 64, offset: 640)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !867, file: !868, line: 94, baseType: !839, size: 64, offset: 704)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !867, file: !868, line: 95, baseType: !839, size: 64, offset: 768)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !867, file: !868, line: 97, baseType: !1298, size: 64, offset: 832)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !867, file: !868, line: 98, baseType: !839, size: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !867, file: !868, line: 100, baseType: !839, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !867, file: !868, line: 102, baseType: !839, size: 64, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !867, file: !868, line: 103, baseType: !830, size: 64, offset: 1088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !867, file: !868, line: 105, baseType: !834, size: 64, offset: 1152)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !867, file: !868, line: 107, baseType: !1327, size: 64, offset: 1216)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1329)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !868, line: 107, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !867, file: !868, line: 109, baseType: !588, size: 8, offset: 1280)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !152, file: !26, line: 715, baseType: !879, size: 64, offset: 832)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !152, file: !26, line: 717, baseType: !122, size: 64, offset: 896)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !152, file: !26, line: 719, baseType: !122, size: 64, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !152, file: !26, line: 721, baseType: !488, size: 256, offset: 1024)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !152, file: !26, line: 725, baseType: !1336, size: 448, offset: 1280)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1336, file: !26, line: 518, baseType: !160, size: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1336, file: !26, line: 519, baseType: !160, size: 128, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1336, file: !26, line: 520, baseType: !160, size: 128, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1336, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !152, file: !26, line: 726, baseType: !1343, size: 2496, offset: 1728)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1389, !1390, !1391, !1392, !1393, !1394, !1465, !1466, !1467, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1505, !1509}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1343, file: !38, line: 664, baseType: !1301, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1343, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1343, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1343, file: !38, line: 667, baseType: !588, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1343, file: !38, line: 668, baseType: !588, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1343, file: !38, line: 669, baseType: !588, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1343, file: !38, line: 670, baseType: !588, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1343, file: !38, line: 671, baseType: !588, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1343, file: !38, line: 672, baseType: !588, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1343, file: !38, line: 673, baseType: !588, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1343, file: !38, line: 674, baseType: !588, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1343, file: !38, line: 675, baseType: !1164, size: 32, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1343, file: !38, line: 676, baseType: !173, size: 32, offset: 96)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1343, file: !38, line: 678, baseType: !160, size: 128, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1343, file: !38, line: 679, baseType: !905, size: 256, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1343, file: !38, line: 680, baseType: !1361, size: 64, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1363, line: 43, size: 1536, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1372, !1373, !1374, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1362, file: !1363, line: 44, baseType: !136, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1362, file: !1363, line: 45, baseType: !46, size: 32, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1362, file: !1363, line: 46, baseType: !160, size: 128, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1362, file: !1363, line: 47, baseType: !173, size: 32, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1362, file: !1363, line: 48, baseType: !1370, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1362, file: !1363, line: 49, baseType: !1147, size: 320, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1362, file: !1363, line: 50, baseType: !281, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1362, file: !1363, line: 51, baseType: !1375, size: 64, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1376, line: 29, baseType: !406)
!1376 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1362, file: !1363, line: 52, baseType: !1375, size: 64, offset: 832)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1362, file: !1363, line: 53, baseType: !1375, size: 64, offset: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1362, file: !1363, line: 54, baseType: !1375, size: 64, offset: 960)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1362, file: !1363, line: 55, baseType: !1375, size: 64, offset: 1024)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1362, file: !1363, line: 56, baseType: !281, size: 64, offset: 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1362, file: !1363, line: 57, baseType: !281, size: 64, offset: 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1362, file: !1363, line: 58, baseType: !281, size: 64, offset: 1216)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1362, file: !1363, line: 59, baseType: !281, size: 64, offset: 1280)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1362, file: !1363, line: 60, baseType: !281, size: 64, offset: 1344)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1362, file: !1363, line: 61, baseType: !151, size: 64, offset: 1408)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1362, file: !1363, line: 62, baseType: !588, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1362, file: !1363, line: 63, baseType: !588, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1343, file: !38, line: 681, baseType: !588, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1343, file: !38, line: 682, baseType: !588, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1343, file: !38, line: 683, baseType: !588, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1343, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1343, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1343, file: !38, line: 690, baseType: !1395, size: 512, offset: 640)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1396)
!1396 = !{!1397, !1403, !1404, !1409, !1461, !1462, !1463, !1464}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1395, file: !33, line: 119, baseType: !1398, size: 256)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1399, line: 9, size: 256, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1398, file: !1399, line: 10, baseType: !594, size: 192, align: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1398, file: !1399, line: 11, baseType: !1375, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1395, file: !33, line: 120, baseType: !1375, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1395, file: !33, line: 121, baseType: !1405, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!32, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1395, file: !33, line: 122, baseType: !1410, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1412)
!1412 = !{!1413, !1438, !1439, !1442, !1447, !1448, !1456, !1460}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1411, file: !33, line: 160, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1415, file: !33, line: 216, baseType: !422, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1415, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1415, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1415, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1415, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1415, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1415, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1415, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1415, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1415, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1415, file: !33, line: 227, baseType: !141, size: 16, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1415, file: !33, line: 228, baseType: !141, size: 16, offset: 208)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1415, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1415, file: !33, line: 235, baseType: !1375, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1415, file: !33, line: 236, baseType: !1408, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1415, file: !33, line: 237, baseType: !1375, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1415, file: !33, line: 238, baseType: !1408, size: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1415, file: !33, line: 239, baseType: !1435, size: 4096, align: 512, offset: 512)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1411, size: 4096, align: 512, elements: !1436)
!1436 = !{!1437}
!1437 = !DISubrange(count: 8)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1411, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1411, file: !33, line: 162, baseType: !1440, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 32, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !148, line: 96, baseType: !46)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1411, file: !33, line: 163, baseType: !1443, size: 32, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !437, line: 274, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !437, line: 274, size: 32, elements: !1445)
!1445 = !{!1446}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1444, file: !437, line: 274, baseType: !436, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1411, file: !33, line: 164, baseType: !1408, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1411, file: !33, line: 165, baseType: !1449, size: 128, offset: 256)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1399, line: 14, size: 128, elements: !1450)
!1450 = !{!1451}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1449, file: !1399, line: 15, baseType: !1452, size: 128)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !595, line: 26, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1452, file: !595, line: 27, baseType: !696, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1452, file: !595, line: 28, baseType: !599, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1411, file: !33, line: 166, baseType: !1457, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!1375}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1411, file: !33, line: 167, baseType: !1375, size: 64, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1395, file: !33, line: 123, baseType: !201, size: 8, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1395, file: !33, line: 124, baseType: !201, size: 8, offset: 456)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1395, file: !33, line: 125, baseType: !201, size: 8, offset: 464)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1395, file: !33, line: 126, baseType: !201, size: 8, offset: 472)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1343, file: !38, line: 691, baseType: !394, size: 64, offset: 1152)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1343, file: !38, line: 692, baseType: !553, size: 256, offset: 1216)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1343, file: !38, line: 693, baseType: !1468, size: 192, offset: 1472)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1469, line: 41, baseType: !1470)
!1469 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1469, line: 37, size: 192, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1470, file: !1469, line: 38, baseType: !173, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1470, file: !1469, line: 39, baseType: !160, size: 128, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1343, file: !38, line: 694, baseType: !1370, size: 64, offset: 1664)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1343, file: !38, line: 695, baseType: !193, size: 32, offset: 1728)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1343, file: !38, line: 696, baseType: !193, size: 32, offset: 1760)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1343, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1343, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1343, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1343, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1343, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1343, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1343, file: !38, line: 703, baseType: !588, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1343, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1343, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1343, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1343, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1343, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1343, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1343, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1343, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1343, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1343, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1343, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1343, file: !38, line: 715, baseType: !394, size: 64, offset: 2048)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1343, file: !38, line: 716, baseType: !394, size: 64, offset: 2112)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1343, file: !38, line: 717, baseType: !394, size: 64, offset: 2176)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1343, file: !38, line: 718, baseType: !394, size: 64, offset: 2240)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1343, file: !38, line: 720, baseType: !1500, size: 64, offset: 2304)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !38, line: 633, baseType: !173, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1501, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1343, file: !38, line: 721, baseType: !1506, size: 64, offset: 2368)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !151, !467}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1343, file: !38, line: 722, baseType: !1510, size: 64, offset: 2432)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !152, file: !26, line: 727, baseType: !1513, size: 64, offset: 4224)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1522, !1523, !1524}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1514, file: !38, line: 743, baseType: !836, size: 1472)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1514, file: !38, line: 744, baseType: !839, size: 64, offset: 1472)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1514, file: !38, line: 745, baseType: !1519, size: 64, offset: 1536)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !151, !588}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1514, file: !38, line: 746, baseType: !839, size: 64, offset: 1600)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1514, file: !38, line: 747, baseType: !830, size: 64, offset: 1664)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1514, file: !38, line: 748, baseType: !830, size: 64, offset: 1728)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !152, file: !26, line: 736, baseType: !1526, size: 128, offset: 4288)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1527)
!1527 = !{!1528, !1532}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1526, file: !26, line: 531, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1531, line: 13, flags: DIFlagFwdDecl)
!1531 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1526, file: !26, line: 532, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !152, file: !26, line: 738, baseType: !1536, size: 64, offset: 4416)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !152, file: !26, line: 740, baseType: !1540, size: 64, offset: 4480)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !152, file: !26, line: 741, baseType: !394, size: 64, offset: 4544)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !152, file: !26, line: 746, baseType: !394, size: 64, offset: 4608)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !152, file: !26, line: 747, baseType: !1544, size: 64, offset: 4672)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1546)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !152, file: !26, line: 749, baseType: !1548, size: 64, offset: 4736)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1550)
!1550 = !{!1551, !1552, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1549, file: !26, line: 433, baseType: !7, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1549, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1549, file: !26, line: 435, baseType: !281, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !152, file: !26, line: 751, baseType: !160, size: 128, offset: 4800)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !152, file: !26, line: 762, baseType: !1556, size: 64, offset: 4928)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !152, file: !26, line: 770, baseType: !1559, offset: 4992)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1560, line: 5, elements: !367)
!1560 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !152, file: !26, line: 772, baseType: !1562, size: 64, offset: 4992)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1564, line: 18, flags: DIFlagFwdDecl)
!1564 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !152, file: !26, line: 773, baseType: !1566, size: 64, offset: 5056)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !868, line: 22, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !152, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !152, file: !26, line: 778, baseType: !1570, size: 32, offset: 5152)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 21, baseType: !1571)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !124, line: 18, baseType: !1164)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !152, file: !26, line: 779, baseType: !1164, size: 32, offset: 5184)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !152, file: !26, line: 781, baseType: !173, size: 32, offset: 5216)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !152, file: !26, line: 782, baseType: !160, size: 128, offset: 5248)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !152, file: !26, line: 784, baseType: !1576, size: 64, offset: 5376)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1579, line: 52, size: 768, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1589, !1593, !1594, !1595, !1596, !1600, !1604}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1578, file: !1579, line: 53, baseType: !136, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1578, file: !1579, line: 55, baseType: !283, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1578, file: !1579, line: 56, baseType: !283, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1578, file: !1579, line: 58, baseType: !819, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1578, file: !1579, line: 59, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!242, !822, !828}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1578, file: !1579, line: 61, baseType: !1590, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1576}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1578, file: !1579, line: 62, baseType: !830, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1578, file: !1579, line: 64, baseType: !839, size: 64, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1578, file: !1579, line: 66, baseType: !627, size: 64, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1578, file: !1579, line: 67, baseType: !1597, size: 64, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!509, !822}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1578, file: !1579, line: 69, baseType: !1601, size: 64, offset: 640)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !822, !662, !669}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1578, file: !1579, line: 71, baseType: !834, size: 64, offset: 704)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !152, file: !26, line: 785, baseType: !283, size: 64, offset: 5440)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !152, file: !26, line: 787, baseType: !830, size: 64, offset: 5504)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !152, file: !26, line: 788, baseType: !1608, size: 64, offset: 5568)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !152, file: !26, line: 789, baseType: !1611, size: 64, offset: 5632)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !152, file: !26, line: 791, baseType: !1614, size: 64, offset: 5696)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1615, file: !26, line: 598, baseType: !53, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1615, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1615, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1615, file: !26, line: 601, baseType: !588, size: 8, offset: 96)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1615, file: !26, line: 602, baseType: !588, size: 8, offset: 104)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !152, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !152, file: !26, line: 795, baseType: !588, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !152, file: !26, line: 796, baseType: !588, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !152, file: !26, line: 797, baseType: !588, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !152, file: !26, line: 798, baseType: !588, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !152, file: !26, line: 799, baseType: !588, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !129, file: !26, line: 110, baseType: !1630, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!146, !151, !1628, !136, !278}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !126, file: !3, line: 17, baseType: !46, size: 32, offset: 256)
!1634 = !{!0, !1635, !1638, !1643, !1645, !1648, !1653, !1658, !1660, !1665, !1667, !1669, !1671, !1676, !1678, !1683, !1685, !1687, !1689, !1692, !1694, !1699, !1701, !1703, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !1721, !1726, !1728, !1730, !1732, !1734, !1736, !1738, !1740, !1742, !1744, !1746, !1748, !1750, !1752, !1757, !1759, !1764, !1766, !1768, !1770, !1772, !1774, !1776, !1778, !1780, !1782, !1784, !1786, !1788, !1790, !1792, !1794, !1796, !1820, !1822, !1827, !1832, !1834, !1836, !1838, !1841}
!1635 = !DIGlobalVariableExpression(var: !1636, expr: !DIExpression())
!1636 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !1637, isLocal: true, isDefinition: true)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 24, elements: !243)
!1638 = !DIGlobalVariableExpression(var: !1639, expr: !DIExpression())
!1639 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !1640, isLocal: true, isDefinition: true)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 96, elements: !1641)
!1641 = !{!1642}
!1642 = !DISubrange(count: 12)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(name: "sys_dmi_bios_vendor_attr", scope: !2, file: !3, line: 41, type: !126, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !1647, isLocal: true, isDefinition: true)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 32, elements: !469)
!1648 = !DIGlobalVariableExpression(var: !1649, expr: !DIExpression())
!1649 = distinct !DIGlobalVariable(name: "sys_dmi_attributes", scope: !2, file: !3, line: 147, type: !1650, isLocal: true, isDefinition: true)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 1600, elements: !1651)
!1651 = !{!1652}
!1652 = !DISubrange(count: 25)
!1653 = !DIGlobalVariableExpression(var: !1654, expr: !DIExpression())
!1654 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !1655, isLocal: true, isDefinition: true)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 104, elements: !1656)
!1656 = !{!1657}
!1657 = !DISubrange(count: 13)
!1658 = !DIGlobalVariableExpression(var: !1659, expr: !DIExpression())
!1659 = distinct !DIGlobalVariable(name: "sys_dmi_bios_version_attr", scope: !2, file: !3, line: 42, type: !126, isLocal: true, isDefinition: true)
!1660 = !DIGlobalVariableExpression(var: !1661, expr: !DIExpression())
!1661 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !1662, isLocal: true, isDefinition: true)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 80, elements: !1663)
!1663 = !{!1664}
!1664 = !DISubrange(count: 10)
!1665 = !DIGlobalVariableExpression(var: !1666, expr: !DIExpression())
!1666 = distinct !DIGlobalVariable(name: "sys_dmi_bios_date_attr", scope: !2, file: !3, line: 43, type: !126, isLocal: true, isDefinition: true)
!1667 = !DIGlobalVariableExpression(var: !1668, expr: !DIExpression())
!1668 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !1655, isLocal: true, isDefinition: true)
!1669 = !DIGlobalVariableExpression(var: !1670, expr: !DIExpression())
!1670 = distinct !DIGlobalVariable(name: "sys_dmi_bios_release_attr", scope: !2, file: !3, line: 45, type: !126, isLocal: true, isDefinition: true)
!1671 = !DIGlobalVariableExpression(var: !1672, expr: !DIExpression())
!1672 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !1673, isLocal: true, isDefinition: true)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 160, elements: !1674)
!1674 = !{!1675}
!1675 = !DISubrange(count: 20)
!1676 = !DIGlobalVariableExpression(var: !1677, expr: !DIExpression())
!1677 = distinct !DIGlobalVariable(name: "sys_dmi_ec_firmware_release_attr", scope: !2, file: !3, line: 46, type: !126, isLocal: true, isDefinition: true)
!1678 = !DIGlobalVariableExpression(var: !1679, expr: !DIExpression())
!1679 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !1680, isLocal: true, isDefinition: true)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 88, elements: !1681)
!1681 = !{!1682}
!1682 = !DISubrange(count: 11)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(name: "sys_dmi_sys_vendor_attr", scope: !2, file: !3, line: 44, type: !126, isLocal: true, isDefinition: true)
!1685 = !DIGlobalVariableExpression(var: !1686, expr: !DIExpression())
!1686 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !1655, isLocal: true, isDefinition: true)
!1687 = !DIGlobalVariableExpression(var: !1688, expr: !DIExpression())
!1688 = distinct !DIGlobalVariable(name: "sys_dmi_product_name_attr", scope: !2, file: !3, line: 47, type: !126, isLocal: true, isDefinition: true)
!1689 = !DIGlobalVariableExpression(var: !1690, expr: !DIExpression())
!1690 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !1691, isLocal: true, isDefinition: true)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, elements: !1287)
!1692 = !DIGlobalVariableExpression(var: !1693, expr: !DIExpression())
!1693 = distinct !DIGlobalVariable(name: "sys_dmi_product_version_attr", scope: !2, file: !3, line: 48, type: !126, isLocal: true, isDefinition: true)
!1694 = !DIGlobalVariableExpression(var: !1695, expr: !DIExpression())
!1695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !1696, isLocal: true, isDefinition: true)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 120, elements: !1697)
!1697 = !{!1698}
!1698 = !DISubrange(count: 15)
!1699 = !DIGlobalVariableExpression(var: !1700, expr: !DIExpression())
!1700 = distinct !DIGlobalVariable(name: "sys_dmi_product_serial_attr", scope: !2, file: !3, line: 49, type: !126, isLocal: true, isDefinition: true)
!1701 = !DIGlobalVariableExpression(var: !1702, expr: !DIExpression())
!1702 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !1655, isLocal: true, isDefinition: true)
!1703 = !DIGlobalVariableExpression(var: !1704, expr: !DIExpression())
!1704 = distinct !DIGlobalVariable(name: "sys_dmi_product_uuid_attr", scope: !2, file: !3, line: 50, type: !126, isLocal: true, isDefinition: true)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !1696, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(name: "sys_dmi_product_family_attr", scope: !2, file: !3, line: 52, type: !126, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !1640, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(name: "sys_dmi_product_sku_attr", scope: !2, file: !3, line: 51, type: !126, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !1655, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "sys_dmi_board_vendor_attr", scope: !2, file: !3, line: 53, type: !126, isLocal: true, isDefinition: true)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !1680, isLocal: true, isDefinition: true)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "sys_dmi_board_name_attr", scope: !2, file: !3, line: 54, type: !126, isLocal: true, isDefinition: true)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !1723, isLocal: true, isDefinition: true)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 112, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 14)
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(name: "sys_dmi_board_version_attr", scope: !2, file: !3, line: 55, type: !126, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !1655, isLocal: true, isDefinition: true)
!1730 = !DIGlobalVariableExpression(var: !1731, expr: !DIExpression())
!1731 = distinct !DIGlobalVariable(name: "sys_dmi_board_serial_attr", scope: !2, file: !3, line: 56, type: !126, isLocal: true, isDefinition: true)
!1732 = !DIGlobalVariableExpression(var: !1733, expr: !DIExpression())
!1733 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !1691, isLocal: true, isDefinition: true)
!1734 = !DIGlobalVariableExpression(var: !1735, expr: !DIExpression())
!1735 = distinct !DIGlobalVariable(name: "sys_dmi_board_asset_tag_attr", scope: !2, file: !3, line: 57, type: !126, isLocal: true, isDefinition: true)
!1736 = !DIGlobalVariableExpression(var: !1737, expr: !DIExpression())
!1737 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !1696, isLocal: true, isDefinition: true)
!1738 = !DIGlobalVariableExpression(var: !1739, expr: !DIExpression())
!1739 = distinct !DIGlobalVariable(name: "sys_dmi_chassis_vendor_attr", scope: !2, file: !3, line: 58, type: !126, isLocal: true, isDefinition: true)
!1740 = !DIGlobalVariableExpression(var: !1741, expr: !DIExpression())
!1741 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !1655, isLocal: true, isDefinition: true)
!1742 = !DIGlobalVariableExpression(var: !1743, expr: !DIExpression())
!1743 = distinct !DIGlobalVariable(name: "sys_dmi_chassis_type_attr", scope: !2, file: !3, line: 59, type: !126, isLocal: true, isDefinition: true)
!1744 = !DIGlobalVariableExpression(var: !1745, expr: !DIExpression())
!1745 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !1691, isLocal: true, isDefinition: true)
!1746 = !DIGlobalVariableExpression(var: !1747, expr: !DIExpression())
!1747 = distinct !DIGlobalVariable(name: "sys_dmi_chassis_version_attr", scope: !2, file: !3, line: 60, type: !126, isLocal: true, isDefinition: true)
!1748 = !DIGlobalVariableExpression(var: !1749, expr: !DIExpression())
!1749 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !1696, isLocal: true, isDefinition: true)
!1750 = !DIGlobalVariableExpression(var: !1751, expr: !DIExpression())
!1751 = distinct !DIGlobalVariable(name: "sys_dmi_chassis_serial_attr", scope: !2, file: !3, line: 61, type: !126, isLocal: true, isDefinition: true)
!1752 = !DIGlobalVariableExpression(var: !1753, expr: !DIExpression())
!1753 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !1754, isLocal: true, isDefinition: true)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 144, elements: !1755)
!1755 = !{!1756}
!1756 = !DISubrange(count: 18)
!1757 = !DIGlobalVariableExpression(var: !1758, expr: !DIExpression())
!1758 = distinct !DIGlobalVariable(name: "sys_dmi_chassis_asset_tag_attr", scope: !2, file: !3, line: 62, type: !126, isLocal: true, isDefinition: true)
!1759 = !DIGlobalVariableExpression(var: !1760, expr: !DIExpression())
!1760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !1761, isLocal: true, isDefinition: true)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 72, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 9)
!1764 = !DIGlobalVariableExpression(var: !1765, expr: !DIExpression())
!1765 = distinct !DIGlobalVariable(name: "sys_dmi_modalias_attr", scope: !2, file: !3, line: 144, type: !129, isLocal: true, isDefinition: true)
!1766 = !DIGlobalVariableExpression(var: !1767, expr: !DIExpression())
!1767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !1647, isLocal: true, isDefinition: true)
!1768 = !DIGlobalVariableExpression(var: !1769, expr: !DIExpression())
!1769 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !1647, isLocal: true, isDefinition: true)
!1770 = !DIGlobalVariableExpression(var: !1771, expr: !DIExpression())
!1771 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !1637, isLocal: true, isDefinition: true)
!1772 = !DIGlobalVariableExpression(var: !1773, expr: !DIExpression())
!1773 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !1637, isLocal: true, isDefinition: true)
!1774 = !DIGlobalVariableExpression(var: !1775, expr: !DIExpression())
!1775 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !1647, isLocal: true, isDefinition: true)
!1776 = !DIGlobalVariableExpression(var: !1777, expr: !DIExpression())
!1777 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !1647, isLocal: true, isDefinition: true)
!1778 = !DIGlobalVariableExpression(var: !1779, expr: !DIExpression())
!1779 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !1637, isLocal: true, isDefinition: true)
!1780 = !DIGlobalVariableExpression(var: !1781, expr: !DIExpression())
!1781 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !1647, isLocal: true, isDefinition: true)
!1782 = !DIGlobalVariableExpression(var: !1783, expr: !DIExpression())
!1783 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !1647, isLocal: true, isDefinition: true)
!1784 = !DIGlobalVariableExpression(var: !1785, expr: !DIExpression())
!1785 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !1637, isLocal: true, isDefinition: true)
!1786 = !DIGlobalVariableExpression(var: !1787, expr: !DIExpression())
!1787 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !1647, isLocal: true, isDefinition: true)
!1788 = !DIGlobalVariableExpression(var: !1789, expr: !DIExpression())
!1789 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !1647, isLocal: true, isDefinition: true)
!1790 = !DIGlobalVariableExpression(var: !1791, expr: !DIExpression())
!1791 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !1637, isLocal: true, isDefinition: true)
!1792 = !DIGlobalVariableExpression(var: !1793, expr: !DIExpression())
!1793 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !1647, isLocal: true, isDefinition: true)
!1794 = !DIGlobalVariableExpression(var: !1795, expr: !DIExpression())
!1795 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !1647, isLocal: true, isDefinition: true)
!1796 = !DIGlobalVariableExpression(var: !1797, expr: !DIExpression())
!1797 = distinct !DIGlobalVariable(name: "fields", scope: !1798, file: !3, line: 83, type: !1819, isLocal: true, isDefinition: true)
!1798 = distinct !DISubprogram(name: "get_modalias", scope: !3, file: !3, line: 74, type: !1799, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1801)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!146, !242, !278}
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1814, !1818}
!1802 = !DILocalVariable(name: "buffer", arg: 1, scope: !1798, file: !3, line: 74, type: !242)
!1803 = !DILocalVariable(name: "buffer_size", arg: 2, scope: !1798, file: !3, line: 74, type: !278)
!1804 = !DILocalVariable(name: "l", scope: !1798, file: !3, line: 102, type: !146)
!1805 = !DILocalVariable(name: "left", scope: !1798, file: !3, line: 102, type: !146)
!1806 = !DILocalVariable(name: "p", scope: !1798, file: !3, line: 103, type: !242)
!1807 = !DILocalVariable(name: "f", scope: !1798, file: !3, line: 104, type: !1808)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mafield", scope: !1798, file: !3, line: 80, size: 128, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1810, file: !3, line: 81, baseType: !136, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !1810, file: !3, line: 82, baseType: !46, size: 32, offset: 64)
!1814 = !DILocalVariable(name: "c", scope: !1815, file: !3, line: 110, type: !136)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 109, column: 47)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 109, column: 2)
!1817 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 109, column: 2)
!1818 = !DILocalVariable(name: "t", scope: !1815, file: !3, line: 111, type: !242)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1809, size: 2048, elements: !1287)
!1820 = !DIGlobalVariableExpression(var: !1821, expr: !DIExpression())
!1821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !1647, isLocal: true, isDefinition: true)
!1822 = !DIGlobalVariableExpression(var: !1823, expr: !DIExpression())
!1823 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !1824, isLocal: true, isDefinition: true)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 48, elements: !1825)
!1825 = !{!1826}
!1826 = !DISubrange(count: 6)
!1827 = !DIGlobalVariableExpression(var: !1828, expr: !DIExpression())
!1828 = distinct !DIGlobalVariable(scope: null, file: !112, line: 480, type: !1829, isLocal: true, isDefinition: true)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 168, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 21)
!1832 = !DIGlobalVariableExpression(var: !1833, expr: !DIExpression())
!1833 = distinct !DIGlobalVariable(name: "dmi_class", scope: !2, file: !3, line: 177, type: !1578, isLocal: true, isDefinition: true)
!1834 = !DIGlobalVariableExpression(var: !1835, expr: !DIExpression())
!1835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !1662, isLocal: true, isDefinition: true)
!1836 = !DIGlobalVariableExpression(var: !1837, expr: !DIExpression())
!1837 = distinct !DIGlobalVariable(name: "dmi_dev", scope: !2, file: !3, line: 183, type: !151, isLocal: true, isDefinition: true)
!1838 = !DIGlobalVariableExpression(var: !1839, expr: !DIExpression())
!1839 = distinct !DIGlobalVariable(name: "sys_dmi_attribute_groups", scope: !2, file: !3, line: 153, type: !1840, isLocal: true, isDefinition: true)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 128, elements: !1036)
!1841 = !DIGlobalVariableExpression(var: !1842, expr: !DIExpression())
!1842 = distinct !DIGlobalVariable(name: "sys_dmi_attribute_group", scope: !2, file: !3, line: 149, type: !286, isLocal: true, isDefinition: true)
!1843 = !{i32 7, !"Dwarf Version", i32 5}
!1844 = !{i32 2, !"Debug Info Version", i32 3}
!1845 = !{i32 1, !"wchar_size", i32 2}
!1846 = !{i32 8, !"cf-protection-branch", i32 1}
!1847 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1848 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1849 = !{i32 1, !"Code Model", i32 2}
!1850 = !{i32 1, !"override-stack-alignment", i32 8}
!1851 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1852 = distinct !DISubprogram(name: "__initstub__kmod_dmi_id__205_264_dmi_id_init3", scope: !3, file: !3, line: 264, type: !1018, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1853 = !DILocation(line: 264, column: 1, scope: !1852)
!1854 = distinct !DISubprogram(name: "dmi_id_init", scope: !3, file: !3, line: 226, type: !1018, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1855)
!1855 = !{!1856, !1857, !1858}
!1856 = !DILocalVariable(name: "ret", scope: !1854, file: !3, line: 228, type: !46)
!1857 = !DILabel(scope: !1854, name: "fail_put_dmi_dev", file: !3, line: 255)
!1858 = !DILabel(scope: !1854, name: "fail_class_unregister", file: !3, line: 258)
!1859 = !DILocation(line: 228, column: 2, scope: !1854)
!1860 = !DILocation(line: 228, column: 6, scope: !1854)
!1861 = !DILocation(line: 230, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 230, column: 6)
!1863 = !DILocation(line: 230, column: 6, scope: !1854)
!1864 = !DILocation(line: 231, column: 3, scope: !1862)
!1865 = !DILocation(line: 233, column: 2, scope: !1854)
!1866 = !DILocation(line: 235, column: 8, scope: !1854)
!1867 = !DILocation(line: 235, column: 6, scope: !1854)
!1868 = !DILocation(line: 236, column: 6, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 236, column: 6)
!1870 = !DILocation(line: 236, column: 6, scope: !1854)
!1871 = !DILocation(line: 237, column: 10, scope: !1869)
!1872 = !DILocation(line: 237, column: 3, scope: !1869)
!1873 = !DILocation(line: 239, column: 12, scope: !1854)
!1874 = !DILocation(line: 239, column: 10, scope: !1854)
!1875 = !DILocation(line: 240, column: 7, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 240, column: 6)
!1877 = !DILocation(line: 240, column: 6, scope: !1854)
!1878 = !DILocation(line: 241, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 240, column: 16)
!1880 = !DILocation(line: 242, column: 3, scope: !1879)
!1881 = !DILocation(line: 245, column: 2, scope: !1854)
!1882 = !DILocation(line: 245, column: 11, scope: !1854)
!1883 = !DILocation(line: 245, column: 17, scope: !1854)
!1884 = !DILocation(line: 246, column: 15, scope: !1854)
!1885 = !DILocation(line: 246, column: 2, scope: !1854)
!1886 = !DILocation(line: 247, column: 2, scope: !1854)
!1887 = !DILocation(line: 247, column: 11, scope: !1854)
!1888 = !DILocation(line: 247, column: 18, scope: !1854)
!1889 = !DILocation(line: 249, column: 24, scope: !1854)
!1890 = !DILocation(line: 249, column: 8, scope: !1854)
!1891 = !DILocation(line: 249, column: 6, scope: !1854)
!1892 = !DILocation(line: 250, column: 6, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 250, column: 6)
!1894 = !DILocation(line: 250, column: 6, scope: !1854)
!1895 = !DILocation(line: 251, column: 3, scope: !1893)
!1896 = !DILocation(line: 253, column: 2, scope: !1854)
!1897 = !DILocation(line: 255, column: 1, scope: !1854)
!1898 = !DILocation(line: 256, column: 13, scope: !1854)
!1899 = !DILocation(line: 256, column: 2, scope: !1854)
!1900 = !DILocation(line: 258, column: 1, scope: !1854)
!1901 = !DILocation(line: 259, column: 2, scope: !1854)
!1902 = !DILocation(line: 261, column: 9, scope: !1854)
!1903 = !DILocation(line: 261, column: 2, scope: !1854)
!1904 = !DILocation(line: 262, column: 1, scope: !1854)
!1905 = distinct !DISubprogram(name: "dmi_id_init_attr_table", scope: !3, file: !3, line: 193, type: !1259, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1906)
!1906 = !{!1907}
!1907 = !DILocalVariable(name: "i", scope: !1905, file: !3, line: 195, type: !46)
!1908 = !DILocation(line: 195, column: 2, scope: !1905)
!1909 = !DILocation(line: 195, column: 6, scope: !1905)
!1910 = !DILocation(line: 200, column: 4, scope: !1905)
!1911 = !DILocation(line: 201, column: 2, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 201, column: 2)
!1913 = !DILocation(line: 201, column: 2, scope: !1905)
!1914 = !DILocation(line: 202, column: 2, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 202, column: 2)
!1916 = !DILocation(line: 202, column: 2, scope: !1905)
!1917 = !DILocation(line: 203, column: 2, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 203, column: 2)
!1919 = !DILocation(line: 203, column: 2, scope: !1905)
!1920 = !DILocation(line: 204, column: 2, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 204, column: 2)
!1922 = !DILocation(line: 204, column: 2, scope: !1905)
!1923 = !DILocation(line: 205, column: 2, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 205, column: 2)
!1925 = !DILocation(line: 205, column: 2, scope: !1905)
!1926 = !DILocation(line: 206, column: 2, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 206, column: 2)
!1928 = !DILocation(line: 206, column: 2, scope: !1905)
!1929 = !DILocation(line: 207, column: 2, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 207, column: 2)
!1931 = !DILocation(line: 207, column: 2, scope: !1905)
!1932 = !DILocation(line: 208, column: 2, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 208, column: 2)
!1934 = !DILocation(line: 208, column: 2, scope: !1905)
!1935 = !DILocation(line: 209, column: 2, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 209, column: 2)
!1937 = !DILocation(line: 209, column: 2, scope: !1905)
!1938 = !DILocation(line: 210, column: 2, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 210, column: 2)
!1940 = !DILocation(line: 210, column: 2, scope: !1905)
!1941 = !DILocation(line: 211, column: 2, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 211, column: 2)
!1943 = !DILocation(line: 211, column: 2, scope: !1905)
!1944 = !DILocation(line: 212, column: 2, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 212, column: 2)
!1946 = !DILocation(line: 212, column: 2, scope: !1905)
!1947 = !DILocation(line: 213, column: 2, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 213, column: 2)
!1949 = !DILocation(line: 213, column: 2, scope: !1905)
!1950 = !DILocation(line: 214, column: 2, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 214, column: 2)
!1952 = !DILocation(line: 214, column: 2, scope: !1905)
!1953 = !DILocation(line: 215, column: 2, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 215, column: 2)
!1955 = !DILocation(line: 215, column: 2, scope: !1905)
!1956 = !DILocation(line: 216, column: 2, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 216, column: 2)
!1958 = !DILocation(line: 216, column: 2, scope: !1905)
!1959 = !DILocation(line: 217, column: 2, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 217, column: 2)
!1961 = !DILocation(line: 217, column: 2, scope: !1905)
!1962 = !DILocation(line: 218, column: 2, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 218, column: 2)
!1964 = !DILocation(line: 218, column: 2, scope: !1905)
!1965 = !DILocation(line: 219, column: 2, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 219, column: 2)
!1967 = !DILocation(line: 219, column: 2, scope: !1905)
!1968 = !DILocation(line: 220, column: 2, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 220, column: 2)
!1970 = !DILocation(line: 220, column: 2, scope: !1905)
!1971 = !DILocation(line: 221, column: 2, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 221, column: 2)
!1973 = !DILocation(line: 221, column: 2, scope: !1905)
!1974 = !DILocation(line: 222, column: 2, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 222, column: 2)
!1976 = !DILocation(line: 222, column: 2, scope: !1905)
!1977 = !DILocation(line: 223, column: 22, scope: !1905)
!1978 = !DILocation(line: 223, column: 2, scope: !1905)
!1979 = !DILocation(line: 223, column: 26, scope: !1905)
!1980 = !DILocation(line: 224, column: 1, scope: !1905)
!1981 = !DISubprogram(name: "class_register", scope: !1579, file: !1579, line: 80, type: !1982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!46, !1576}
!1984 = distinct !DISubprogram(name: "kzalloc", scope: !112, file: !112, line: 719, type: !1985, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!122, !278, !123}
!1987 = !{!1988, !1989}
!1988 = !DILocalVariable(name: "size", arg: 1, scope: !1984, file: !112, line: 719, type: !278)
!1989 = !DILocalVariable(name: "flags", arg: 2, scope: !1984, file: !112, line: 719, type: !123)
!1990 = !DILocation(line: 719, column: 52, scope: !1984)
!1991 = !DILocation(line: 719, column: 64, scope: !1984)
!1992 = !DILocation(line: 721, column: 17, scope: !1984)
!1993 = !DILocation(line: 721, column: 23, scope: !1984)
!1994 = !DILocation(line: 721, column: 29, scope: !1984)
!1995 = !DILocation(line: 721, column: 9, scope: !1984)
!1996 = !DILocation(line: 721, column: 2, scope: !1984)
!1997 = !DISubprogram(name: "dev_set_name", scope: !26, file: !26, line: 879, type: !1998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!46, !151, !136, null}
!2000 = !DISubprogram(name: "device_register", scope: !26, file: !26, line: 1054, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2001 = !DISubprogram(name: "put_device", scope: !26, file: !26, line: 1231, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2002 = !DISubprogram(name: "class_unregister", scope: !1579, file: !1579, line: 81, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2003 = !DISubprogram(name: "dmi_get_system_info", scope: !2004, file: !2004, line: 102, type: !2005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2004 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!136, !46}
!2007 = distinct !DISubprogram(name: "sys_dmi_field_show", scope: !3, file: !3, line: 22, type: !144, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2015}
!2009 = !DILocalVariable(name: "dev", arg: 1, scope: !2007, file: !3, line: 22, type: !151)
!2010 = !DILocalVariable(name: "attr", arg: 2, scope: !2007, file: !3, line: 23, type: !1628)
!2011 = !DILocalVariable(name: "page", arg: 3, scope: !2007, file: !3, line: 24, type: !242)
!2012 = !DILocalVariable(name: "field", scope: !2007, file: !3, line: 26, type: !46)
!2013 = !DILocalVariable(name: "__mptr", scope: !2014, file: !3, line: 26, type: !122)
!2014 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 26, column: 14)
!2015 = !DILocalVariable(name: "len", scope: !2007, file: !3, line: 27, type: !146)
!2016 = !DILocation(line: 22, column: 50, scope: !2007)
!2017 = !DILocation(line: 23, column: 32, scope: !2007)
!2018 = !DILocation(line: 24, column: 13, scope: !2007)
!2019 = !DILocation(line: 26, column: 2, scope: !2007)
!2020 = !DILocation(line: 26, column: 6, scope: !2007)
!2021 = !DILocation(line: 26, column: 14, scope: !2014)
!2022 = !DILocation(line: 26, column: 14, scope: !2007)
!2023 = !DILocation(line: 26, column: 37, scope: !2007)
!2024 = !DILocation(line: 27, column: 2, scope: !2007)
!2025 = !DILocation(line: 27, column: 10, scope: !2007)
!2026 = !DILocation(line: 28, column: 18, scope: !2007)
!2027 = !DILocation(line: 28, column: 63, scope: !2007)
!2028 = !DILocation(line: 28, column: 43, scope: !2007)
!2029 = !DILocation(line: 28, column: 8, scope: !2007)
!2030 = !DILocation(line: 28, column: 6, scope: !2007)
!2031 = !DILocation(line: 29, column: 2, scope: !2007)
!2032 = !DILocation(line: 29, column: 7, scope: !2007)
!2033 = !DILocation(line: 29, column: 10, scope: !2007)
!2034 = !DILocation(line: 29, column: 14, scope: !2007)
!2035 = !DILocation(line: 30, column: 9, scope: !2007)
!2036 = !DILocation(line: 31, column: 1, scope: !2007)
!2037 = !DILocation(line: 30, column: 2, scope: !2007)
!2038 = !DISubprogram(name: "scnprintf", scope: !2039, file: !2039, line: 14, type: !2040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2039 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!46, !242, !278, !136, null}
!2042 = distinct !DISubprogram(name: "sys_dmi_modalias_show", scope: !3, file: !3, line: 134, type: !144, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DILocalVariable(name: "dev", arg: 1, scope: !2042, file: !3, line: 134, type: !151)
!2045 = !DILocalVariable(name: "attr", arg: 2, scope: !2042, file: !3, line: 135, type: !1628)
!2046 = !DILocalVariable(name: "page", arg: 3, scope: !2042, file: !3, line: 135, type: !242)
!2047 = !DILocalVariable(name: "r", scope: !2042, file: !3, line: 137, type: !146)
!2048 = !DILocation(line: 134, column: 53, scope: !2042)
!2049 = !DILocation(line: 135, column: 35, scope: !2042)
!2050 = !DILocation(line: 135, column: 47, scope: !2042)
!2051 = !DILocation(line: 137, column: 2, scope: !2042)
!2052 = !DILocation(line: 137, column: 10, scope: !2042)
!2053 = !DILocation(line: 138, column: 19, scope: !2042)
!2054 = !DILocation(line: 138, column: 6, scope: !2042)
!2055 = !DILocation(line: 138, column: 4, scope: !2042)
!2056 = !DILocation(line: 139, column: 2, scope: !2042)
!2057 = !DILocation(line: 139, column: 7, scope: !2042)
!2058 = !DILocation(line: 139, column: 10, scope: !2042)
!2059 = !DILocation(line: 140, column: 2, scope: !2042)
!2060 = !DILocation(line: 140, column: 7, scope: !2042)
!2061 = !DILocation(line: 140, column: 8, scope: !2042)
!2062 = !DILocation(line: 140, column: 12, scope: !2042)
!2063 = !DILocation(line: 141, column: 9, scope: !2042)
!2064 = !DILocation(line: 141, column: 10, scope: !2042)
!2065 = !DILocation(line: 142, column: 1, scope: !2042)
!2066 = !DILocation(line: 141, column: 2, scope: !2042)
!2067 = !DILocation(line: 74, column: 35, scope: !1798)
!2068 = !DILocation(line: 74, column: 50, scope: !1798)
!2069 = !DILocation(line: 102, column: 2, scope: !1798)
!2070 = !DILocation(line: 102, column: 10, scope: !1798)
!2071 = !DILocation(line: 102, column: 13, scope: !1798)
!2072 = !DILocation(line: 103, column: 2, scope: !1798)
!2073 = !DILocation(line: 103, column: 8, scope: !1798)
!2074 = !DILocation(line: 104, column: 2, scope: !1798)
!2075 = !DILocation(line: 104, column: 24, scope: !1798)
!2076 = !DILocation(line: 106, column: 9, scope: !1798)
!2077 = !DILocation(line: 106, column: 2, scope: !1798)
!2078 = !DILocation(line: 107, column: 6, scope: !1798)
!2079 = !DILocation(line: 107, column: 13, scope: !1798)
!2080 = !DILocation(line: 107, column: 4, scope: !1798)
!2081 = !DILocation(line: 107, column: 25, scope: !1798)
!2082 = !DILocation(line: 107, column: 37, scope: !1798)
!2083 = !DILocation(line: 107, column: 23, scope: !1798)
!2084 = !DILocation(line: 109, column: 9, scope: !1817)
!2085 = !DILocation(line: 109, column: 7, scope: !1817)
!2086 = !DILocation(line: 109, column: 19, scope: !1816)
!2087 = !DILocation(line: 109, column: 22, scope: !1816)
!2088 = !DILocation(line: 109, column: 29, scope: !1816)
!2089 = !DILocation(line: 109, column: 32, scope: !1816)
!2090 = !DILocation(line: 109, column: 37, scope: !1816)
!2091 = !DILocation(line: 0, scope: !1816)
!2092 = !DILocation(line: 109, column: 2, scope: !1817)
!2093 = !DILocation(line: 110, column: 3, scope: !1815)
!2094 = !DILocation(line: 110, column: 15, scope: !1815)
!2095 = !DILocation(line: 111, column: 3, scope: !1815)
!2096 = !DILocation(line: 111, column: 9, scope: !1815)
!2097 = !DILocation(line: 113, column: 27, scope: !1815)
!2098 = !DILocation(line: 113, column: 30, scope: !1815)
!2099 = !DILocation(line: 113, column: 7, scope: !1815)
!2100 = !DILocation(line: 113, column: 5, scope: !1815)
!2101 = !DILocation(line: 114, column: 8, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 114, column: 7)
!2103 = !DILocation(line: 114, column: 7, scope: !1815)
!2104 = !DILocation(line: 115, column: 4, scope: !2102)
!2105 = !DILocation(line: 117, column: 22, scope: !1815)
!2106 = !DILocation(line: 117, column: 15, scope: !1815)
!2107 = !DILocation(line: 117, column: 25, scope: !1815)
!2108 = !DILocation(line: 117, column: 7, scope: !1815)
!2109 = !DILocation(line: 117, column: 5, scope: !1815)
!2110 = !DILocation(line: 118, column: 8, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 118, column: 7)
!2112 = !DILocation(line: 118, column: 7, scope: !1815)
!2113 = !DILocation(line: 119, column: 4, scope: !2111)
!2114 = !DILocation(line: 120, column: 16, scope: !1815)
!2115 = !DILocation(line: 120, column: 19, scope: !1815)
!2116 = !DILocation(line: 120, column: 3, scope: !1815)
!2117 = !DILocation(line: 121, column: 17, scope: !1815)
!2118 = !DILocation(line: 121, column: 20, scope: !1815)
!2119 = !DILocation(line: 121, column: 35, scope: !1815)
!2120 = !DILocation(line: 121, column: 38, scope: !1815)
!2121 = !DILocation(line: 121, column: 46, scope: !1815)
!2122 = !DILocation(line: 121, column: 7, scope: !1815)
!2123 = !DILocation(line: 121, column: 5, scope: !1815)
!2124 = !DILocation(line: 122, column: 9, scope: !1815)
!2125 = !DILocation(line: 122, column: 3, scope: !1815)
!2126 = !DILocation(line: 124, column: 8, scope: !1815)
!2127 = !DILocation(line: 124, column: 5, scope: !1815)
!2128 = !DILocation(line: 125, column: 11, scope: !1815)
!2129 = !DILocation(line: 125, column: 8, scope: !1815)
!2130 = !DILocation(line: 126, column: 2, scope: !1816)
!2131 = !DILocation(line: 126, column: 2, scope: !1815)
!2132 = !DILocation(line: 109, column: 43, scope: !1816)
!2133 = !DILocation(line: 109, column: 2, scope: !1816)
!2134 = distinct !{!2134, !2092, !2135, !2136, !2137}
!2135 = !DILocation(line: 126, column: 2, scope: !1817)
!2136 = !{!"llvm.loop.mustprogress"}
!2137 = !{!"llvm.loop.unroll.disable"}
!2138 = !DILocation(line: 128, column: 2, scope: !1798)
!2139 = !DILocation(line: 128, column: 7, scope: !1798)
!2140 = !DILocation(line: 129, column: 2, scope: !1798)
!2141 = !DILocation(line: 129, column: 7, scope: !1798)
!2142 = !DILocation(line: 131, column: 9, scope: !1798)
!2143 = !DILocation(line: 131, column: 13, scope: !1798)
!2144 = !DILocation(line: 131, column: 11, scope: !1798)
!2145 = !DILocation(line: 131, column: 20, scope: !1798)
!2146 = !DILocation(line: 132, column: 1, scope: !1798)
!2147 = !DILocation(line: 131, column: 2, scope: !1798)
!2148 = !DISubprogram(name: "strcpy", scope: !2149, file: !2149, line: 63, type: !2150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2149 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!242, !242, !136}
!2152 = distinct !DISubprogram(name: "kmalloc", scope: !112, file: !112, line: 591, type: !1985, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2153 = !{!2154, !2155, !2156}
!2154 = !DILocalVariable(name: "size", arg: 1, scope: !2152, file: !112, line: 591, type: !278)
!2155 = !DILocalVariable(name: "flags", arg: 2, scope: !2152, file: !112, line: 591, type: !123)
!2156 = !DILocalVariable(name: "index", scope: !2157, file: !112, line: 594, type: !7)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !112, line: 593, column: 42)
!2158 = distinct !DILexicalBlock(scope: !2152, file: !112, line: 593, column: 6)
!2159 = !DILocation(line: 591, column: 61, scope: !2152)
!2160 = !DILocation(line: 591, column: 73, scope: !2152)
!2161 = !DILocation(line: 593, column: 27, scope: !2158)
!2162 = !DILocation(line: 593, column: 6, scope: !2158)
!2163 = !DILocation(line: 593, column: 33, scope: !2158)
!2164 = !DILocation(line: 593, column: 36, scope: !2158)
!2165 = !DILocation(line: 593, column: 6, scope: !2152)
!2166 = !DILocation(line: 594, column: 3, scope: !2157)
!2167 = !DILocation(line: 594, column: 16, scope: !2157)
!2168 = !DILocation(line: 596, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2157, file: !112, line: 596, column: 7)
!2170 = !DILocation(line: 596, column: 12, scope: !2169)
!2171 = !DILocation(line: 596, column: 7, scope: !2157)
!2172 = !DILocation(line: 597, column: 25, scope: !2169)
!2173 = !DILocation(line: 597, column: 31, scope: !2169)
!2174 = !DILocation(line: 597, column: 11, scope: !2169)
!2175 = !DILocation(line: 597, column: 4, scope: !2169)
!2176 = !DILocation(line: 599, column: 11, scope: !2157)
!2177 = !DILocation(line: 599, column: 9, scope: !2157)
!2178 = !DILocation(line: 601, column: 33, scope: !2157)
!2179 = !DILocation(line: 601, column: 40, scope: !2157)
!2180 = !DILocation(line: 601, column: 20, scope: !2157)
!2181 = !DILocation(line: 601, column: 5, scope: !2157)
!2182 = !DILocation(line: 601, column: 51, scope: !2157)
!2183 = !DILocation(line: 602, column: 5, scope: !2157)
!2184 = !DILocation(line: 602, column: 12, scope: !2157)
!2185 = !DILocation(line: 600, column: 10, scope: !2157)
!2186 = !DILocation(line: 600, column: 3, scope: !2157)
!2187 = !DILocation(line: 603, column: 2, scope: !2158)
!2188 = !DILocation(line: 604, column: 19, scope: !2152)
!2189 = !DILocation(line: 604, column: 25, scope: !2152)
!2190 = !DILocation(line: 604, column: 9, scope: !2152)
!2191 = !DILocation(line: 604, column: 2, scope: !2152)
!2192 = !DILocation(line: 605, column: 1, scope: !2152)
!2193 = !DISubprogram(name: "strlen", scope: !2149, file: !2149, line: 128, type: !2194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!281, !136}
!2196 = distinct !DISubprogram(name: "ascii_filter", scope: !3, file: !3, line: 64, type: !2197, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !242, !136}
!2199 = !{!2200, !2201}
!2200 = !DILocalVariable(name: "d", arg: 1, scope: !2196, file: !3, line: 64, type: !242)
!2201 = !DILocalVariable(name: "s", arg: 2, scope: !2196, file: !3, line: 64, type: !136)
!2202 = !DILocation(line: 64, column: 32, scope: !2196)
!2203 = !DILocation(line: 64, column: 47, scope: !2196)
!2204 = !DILocation(line: 67, column: 2, scope: !2196)
!2205 = !DILocation(line: 67, column: 10, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 67, column: 2)
!2207 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 67, column: 2)
!2208 = !DILocation(line: 67, column: 9, scope: !2206)
!2209 = !DILocation(line: 67, column: 2, scope: !2207)
!2210 = !DILocation(line: 68, column: 8, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 68, column: 7)
!2212 = !DILocation(line: 68, column: 7, scope: !2211)
!2213 = !DILocation(line: 68, column: 10, scope: !2211)
!2214 = !DILocation(line: 68, column: 16, scope: !2211)
!2215 = !DILocation(line: 68, column: 20, scope: !2211)
!2216 = !DILocation(line: 68, column: 19, scope: !2211)
!2217 = !DILocation(line: 68, column: 22, scope: !2211)
!2218 = !DILocation(line: 68, column: 28, scope: !2211)
!2219 = !DILocation(line: 68, column: 32, scope: !2211)
!2220 = !DILocation(line: 68, column: 31, scope: !2211)
!2221 = !DILocation(line: 68, column: 34, scope: !2211)
!2222 = !DILocation(line: 68, column: 7, scope: !2206)
!2223 = !DILocation(line: 69, column: 14, scope: !2211)
!2224 = !DILocation(line: 69, column: 13, scope: !2211)
!2225 = !DILocation(line: 69, column: 7, scope: !2211)
!2226 = !DILocation(line: 69, column: 11, scope: !2211)
!2227 = !DILocation(line: 69, column: 4, scope: !2211)
!2228 = !DILocation(line: 68, column: 37, scope: !2211)
!2229 = !DILocation(line: 67, column: 14, scope: !2206)
!2230 = !DILocation(line: 67, column: 2, scope: !2206)
!2231 = distinct !{!2231, !2209, !2232, !2136, !2137}
!2232 = !DILocation(line: 69, column: 14, scope: !2207)
!2233 = !DILocation(line: 71, column: 3, scope: !2196)
!2234 = !DILocation(line: 71, column: 5, scope: !2196)
!2235 = !DILocation(line: 72, column: 1, scope: !2196)
!2236 = !DISubprogram(name: "kfree", scope: !112, file: !112, line: 227, type: !2237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !509}
!2239 = !DISubprogram(name: "kmalloc_large", scope: !112, file: !112, line: 531, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2240 = distinct !DISubprogram(name: "__kmalloc_index", scope: !112, file: !112, line: 444, type: !2241, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!7, !278, !588}
!2243 = !{!2244, !2245}
!2244 = !DILocalVariable(name: "size", arg: 1, scope: !2240, file: !112, line: 444, type: !278)
!2245 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2240, file: !112, line: 445, type: !588)
!2246 = !DILocation(line: 444, column: 60, scope: !2240)
!2247 = !DILocation(line: 445, column: 16, scope: !2240)
!2248 = !DILocation(line: 447, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 447, column: 6)
!2250 = !DILocation(line: 447, column: 6, scope: !2240)
!2251 = !DILocation(line: 448, column: 3, scope: !2249)
!2252 = !DILocation(line: 450, column: 6, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 450, column: 6)
!2254 = !DILocation(line: 450, column: 11, scope: !2253)
!2255 = !DILocation(line: 450, column: 6, scope: !2240)
!2256 = !DILocation(line: 451, column: 3, scope: !2253)
!2257 = !DILocation(line: 453, column: 32, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 453, column: 6)
!2259 = !DILocation(line: 453, column: 37, scope: !2258)
!2260 = !DILocation(line: 453, column: 42, scope: !2258)
!2261 = !DILocation(line: 453, column: 45, scope: !2258)
!2262 = !DILocation(line: 453, column: 50, scope: !2258)
!2263 = !DILocation(line: 453, column: 6, scope: !2240)
!2264 = !DILocation(line: 454, column: 3, scope: !2258)
!2265 = !DILocation(line: 455, column: 32, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 455, column: 6)
!2267 = !DILocation(line: 455, column: 37, scope: !2266)
!2268 = !DILocation(line: 455, column: 43, scope: !2266)
!2269 = !DILocation(line: 455, column: 46, scope: !2266)
!2270 = !DILocation(line: 455, column: 51, scope: !2266)
!2271 = !DILocation(line: 455, column: 6, scope: !2240)
!2272 = !DILocation(line: 456, column: 3, scope: !2266)
!2273 = !DILocation(line: 457, column: 6, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 457, column: 6)
!2275 = !DILocation(line: 457, column: 11, scope: !2274)
!2276 = !DILocation(line: 457, column: 6, scope: !2240)
!2277 = !DILocation(line: 457, column: 26, scope: !2274)
!2278 = !DILocation(line: 458, column: 6, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 458, column: 6)
!2280 = !DILocation(line: 458, column: 11, scope: !2279)
!2281 = !DILocation(line: 458, column: 6, scope: !2240)
!2282 = !DILocation(line: 458, column: 26, scope: !2279)
!2283 = !DILocation(line: 459, column: 6, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 459, column: 6)
!2285 = !DILocation(line: 459, column: 11, scope: !2284)
!2286 = !DILocation(line: 459, column: 6, scope: !2240)
!2287 = !DILocation(line: 459, column: 26, scope: !2284)
!2288 = !DILocation(line: 460, column: 6, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 460, column: 6)
!2290 = !DILocation(line: 460, column: 11, scope: !2289)
!2291 = !DILocation(line: 460, column: 6, scope: !2240)
!2292 = !DILocation(line: 460, column: 26, scope: !2289)
!2293 = !DILocation(line: 461, column: 6, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 461, column: 6)
!2295 = !DILocation(line: 461, column: 11, scope: !2294)
!2296 = !DILocation(line: 461, column: 6, scope: !2240)
!2297 = !DILocation(line: 461, column: 26, scope: !2294)
!2298 = !DILocation(line: 462, column: 6, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 462, column: 6)
!2300 = !DILocation(line: 462, column: 11, scope: !2299)
!2301 = !DILocation(line: 462, column: 6, scope: !2240)
!2302 = !DILocation(line: 462, column: 26, scope: !2299)
!2303 = !DILocation(line: 463, column: 6, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 463, column: 6)
!2305 = !DILocation(line: 463, column: 11, scope: !2304)
!2306 = !DILocation(line: 463, column: 6, scope: !2240)
!2307 = !DILocation(line: 463, column: 26, scope: !2304)
!2308 = !DILocation(line: 464, column: 6, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 464, column: 6)
!2310 = !DILocation(line: 464, column: 11, scope: !2309)
!2311 = !DILocation(line: 464, column: 6, scope: !2240)
!2312 = !DILocation(line: 464, column: 26, scope: !2309)
!2313 = !DILocation(line: 465, column: 6, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 465, column: 6)
!2315 = !DILocation(line: 465, column: 11, scope: !2314)
!2316 = !DILocation(line: 465, column: 6, scope: !2240)
!2317 = !DILocation(line: 465, column: 26, scope: !2314)
!2318 = !DILocation(line: 466, column: 6, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 466, column: 6)
!2320 = !DILocation(line: 466, column: 11, scope: !2319)
!2321 = !DILocation(line: 466, column: 6, scope: !2240)
!2322 = !DILocation(line: 466, column: 26, scope: !2319)
!2323 = !DILocation(line: 467, column: 6, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 467, column: 6)
!2325 = !DILocation(line: 467, column: 11, scope: !2324)
!2326 = !DILocation(line: 467, column: 6, scope: !2240)
!2327 = !DILocation(line: 467, column: 26, scope: !2324)
!2328 = !DILocation(line: 468, column: 6, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 468, column: 6)
!2330 = !DILocation(line: 468, column: 11, scope: !2329)
!2331 = !DILocation(line: 468, column: 6, scope: !2240)
!2332 = !DILocation(line: 468, column: 26, scope: !2329)
!2333 = !DILocation(line: 469, column: 6, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 469, column: 6)
!2335 = !DILocation(line: 469, column: 11, scope: !2334)
!2336 = !DILocation(line: 469, column: 6, scope: !2240)
!2337 = !DILocation(line: 469, column: 26, scope: !2334)
!2338 = !DILocation(line: 470, column: 6, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 470, column: 6)
!2340 = !DILocation(line: 470, column: 11, scope: !2339)
!2341 = !DILocation(line: 470, column: 6, scope: !2240)
!2342 = !DILocation(line: 470, column: 26, scope: !2339)
!2343 = !DILocation(line: 471, column: 6, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 471, column: 6)
!2345 = !DILocation(line: 471, column: 11, scope: !2344)
!2346 = !DILocation(line: 471, column: 6, scope: !2240)
!2347 = !DILocation(line: 471, column: 26, scope: !2344)
!2348 = !DILocation(line: 472, column: 6, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 472, column: 6)
!2350 = !DILocation(line: 472, column: 11, scope: !2349)
!2351 = !DILocation(line: 472, column: 6, scope: !2240)
!2352 = !DILocation(line: 472, column: 26, scope: !2349)
!2353 = !DILocation(line: 473, column: 6, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 473, column: 6)
!2355 = !DILocation(line: 473, column: 11, scope: !2354)
!2356 = !DILocation(line: 473, column: 6, scope: !2240)
!2357 = !DILocation(line: 473, column: 26, scope: !2354)
!2358 = !DILocation(line: 474, column: 6, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 474, column: 6)
!2360 = !DILocation(line: 474, column: 11, scope: !2359)
!2361 = !DILocation(line: 474, column: 6, scope: !2240)
!2362 = !DILocation(line: 474, column: 27, scope: !2359)
!2363 = !DILocation(line: 475, column: 6, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 475, column: 6)
!2365 = !DILocation(line: 475, column: 11, scope: !2364)
!2366 = !DILocation(line: 475, column: 6, scope: !2240)
!2367 = !DILocation(line: 475, column: 32, scope: !2364)
!2368 = !DILocation(line: 477, column: 50, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2240, file: !112, line: 477, column: 6)
!2370 = !{i8 0, i8 2}
!2371 = !DILocation(line: 477, column: 6, scope: !2240)
!2372 = !DILocation(line: 478, column: 3, scope: !2369)
!2373 = !DILocation(line: 478, column: 3, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !112, line: 478, column: 3)
!2375 = distinct !DILexicalBlock(scope: !2369, file: !112, line: 478, column: 3)
!2376 = !{i32 -2142280993}
!2377 = !DILocation(line: 478, column: 3, scope: !2375)
!2378 = !DILocation(line: 480, column: 3, scope: !2369)
!2379 = !DILocation(line: 480, column: 3, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2369, file: !112, line: 480, column: 3)
!2381 = !DILocation(line: 480, column: 3, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2380, file: !112, line: 480, column: 3)
!2383 = !DILocation(line: 480, column: 3, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2380, file: !112, line: 480, column: 3)
!2385 = !{i64 2152686506, i64 2152686535, i64 2152686581, i64 2152686639, i64 2152686693, i64 2152686747, i64 2152686802, i64 2152686833}
!2386 = !DILocation(line: 483, column: 2, scope: !2240)
!2387 = !DILocation(line: 484, column: 1, scope: !2240)
!2388 = !DISubprogram(name: "kmalloc_trace", scope: !112, file: !112, line: 525, type: !2389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!122, !2391, !123, !278}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2393, line: 11, flags: DIFlagFwdDecl)
!2393 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2394 = distinct !DISubprogram(name: "kmalloc_type", scope: !112, file: !112, line: 401, type: !2395, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!111, !123, !281}
!2397 = !{!2398, !2399}
!2398 = !DILocalVariable(name: "flags", arg: 1, scope: !2394, file: !112, line: 401, type: !123)
!2399 = !DILocalVariable(name: "caller", arg: 2, scope: !2394, file: !112, line: 401, type: !281)
!2400 = !DILocation(line: 401, column: 67, scope: !2394)
!2401 = !DILocation(line: 401, column: 88, scope: !2394)
!2402 = !DILocation(line: 407, column: 6, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2394, file: !112, line: 407, column: 6)
!2404 = !DILocation(line: 407, column: 6, scope: !2394)
!2405 = !DILocation(line: 413, column: 3, scope: !2403)
!2406 = !DILocation(line: 423, column: 38, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2394, file: !112, line: 423, column: 6)
!2408 = !DILocation(line: 423, column: 44, scope: !2407)
!2409 = !DILocation(line: 423, column: 6, scope: !2394)
!2410 = !DILocation(line: 424, column: 3, scope: !2407)
!2411 = !DILocation(line: 426, column: 3, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2394, file: !112, line: 425, column: 6)
!2413 = !DILocation(line: 429, column: 1, scope: !2394)
!2414 = !DISubprogram(name: "__kmalloc", scope: !112, file: !112, line: 488, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2415 = !DISubprogram(name: "__compiletime_assert_204", scope: !112, file: !112, line: 478, type: !1259, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2416 = distinct !DISubprogram(name: "dmi_dev_uevent", scope: !3, file: !3, line: 158, type: !820, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2417)
!2417 = !{!2418, !2419, !2420}
!2418 = !DILocalVariable(name: "dev", arg: 1, scope: !2416, file: !3, line: 158, type: !822)
!2419 = !DILocalVariable(name: "env", arg: 2, scope: !2416, file: !3, line: 158, type: !237)
!2420 = !DILocalVariable(name: "len", scope: !2416, file: !3, line: 160, type: !146)
!2421 = !DILocation(line: 158, column: 48, scope: !2416)
!2422 = !DILocation(line: 158, column: 77, scope: !2416)
!2423 = !DILocation(line: 160, column: 2, scope: !2416)
!2424 = !DILocation(line: 160, column: 10, scope: !2416)
!2425 = !DILocation(line: 162, column: 21, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 162, column: 6)
!2427 = !DILocation(line: 162, column: 6, scope: !2426)
!2428 = !DILocation(line: 162, column: 6, scope: !2416)
!2429 = !DILocation(line: 163, column: 3, scope: !2426)
!2430 = !DILocation(line: 164, column: 22, scope: !2416)
!2431 = !DILocation(line: 164, column: 27, scope: !2416)
!2432 = !DILocation(line: 164, column: 31, scope: !2416)
!2433 = !DILocation(line: 164, column: 36, scope: !2416)
!2434 = !DILocation(line: 164, column: 43, scope: !2416)
!2435 = !DILocation(line: 165, column: 26, scope: !2416)
!2436 = !DILocation(line: 165, column: 31, scope: !2416)
!2437 = !DILocation(line: 165, column: 24, scope: !2416)
!2438 = !DILocation(line: 164, column: 8, scope: !2416)
!2439 = !DILocation(line: 164, column: 6, scope: !2416)
!2440 = !DILocation(line: 166, column: 6, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 166, column: 6)
!2442 = !DILocation(line: 166, column: 33, scope: !2441)
!2443 = !DILocation(line: 166, column: 38, scope: !2441)
!2444 = !DILocation(line: 166, column: 31, scope: !2441)
!2445 = !DILocation(line: 166, column: 10, scope: !2441)
!2446 = !DILocation(line: 166, column: 6, scope: !2416)
!2447 = !DILocation(line: 167, column: 3, scope: !2441)
!2448 = !DILocation(line: 168, column: 17, scope: !2416)
!2449 = !DILocation(line: 168, column: 2, scope: !2416)
!2450 = !DILocation(line: 168, column: 7, scope: !2416)
!2451 = !DILocation(line: 168, column: 14, scope: !2416)
!2452 = !DILocation(line: 169, column: 2, scope: !2416)
!2453 = !DILocation(line: 170, column: 1, scope: !2416)
!2454 = distinct !DISubprogram(name: "dmi_dev_release", scope: !3, file: !3, line: 172, type: !831, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2455 = !{!2456}
!2456 = !DILocalVariable(name: "dev", arg: 1, scope: !2454, file: !3, line: 172, type: !151)
!2457 = !DILocation(line: 172, column: 44, scope: !2454)
!2458 = !DILocation(line: 174, column: 8, scope: !2454)
!2459 = !DILocation(line: 174, column: 2, scope: !2454)
!2460 = !DILocation(line: 175, column: 1, scope: !2454)
!2461 = !DISubprogram(name: "add_uevent_var", scope: !156, file: !156, line: 220, type: !2462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!46, !237, !136, null}
