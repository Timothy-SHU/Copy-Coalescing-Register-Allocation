; ModuleID = 'drivers/base/swnode.c'
source_filename = "drivers/base/swnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_is_software_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad is_software_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_to_software_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad to_software_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_fwnode: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad software_node_fwnode ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_property_entries_dup: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad property_entries_dup ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_property_entries_free: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad property_entries_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_find_by_name: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad software_node_find_by_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_register_node_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad software_node_register_node_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_unregister_node_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad software_node_unregister_node_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad software_node_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_software_node_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad software_node_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fwnode_create_software_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fwnode_create_software_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fwnode_remove_software_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fwnode_remove_software_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_add_software_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad device_add_software_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_remove_software_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad device_remove_software_node ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_device_create_managed_software_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad device_create_managed_software_node ; .previous"
module asm ".section\09\22.initcall2.init..kmod_swnode__222_1109_software_node_init\22, \22a\22\09\09"
module asm "__initcall__kmod_swnode__222_1109_software_node_init2:\09\09\09"
module asm ".long\09__initstub__kmod_swnode__222_1109_software_node_init2 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.swnode = type { %struct.kobject, %struct.fwnode_handle, ptr, i32, %struct.ida, %struct.list_head, %struct.list_head, ptr, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.property_entry = type { ptr, i64, i8, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.software_node = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.software_node_ref_args = type { ptr, i32, [8 x i64] }
%struct.fwnode_reference_args = type { ptr, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, ptr }

@software_node_ops = internal constant %struct.fwnode_operations { ptr @software_node_get, ptr @software_node_put, ptr null, ptr null, ptr null, ptr null, ptr @software_node_property_present, ptr @software_node_read_int_array, ptr @software_node_read_string_array, ptr @software_node_get_name, ptr @software_node_get_name_prefix, ptr @software_node_get_parent, ptr @software_node_get_next_child, ptr @software_node_get_named_child_node, ptr @software_node_get_reference_args, ptr @software_node_graph_get_next_endpoint, ptr @software_node_graph_get_remote_endpoint, ptr @software_node_graph_get_port_parent, ptr @software_node_graph_parse_endpoint, ptr null, ptr null, ptr null }, align 8, !dbg !0
@__UNIQUE_ID___addressable_is_software_node205 = internal global ptr @is_software_node, section ".discard.addressable", align 8, !dbg !1794
@__UNIQUE_ID___addressable_to_software_node206 = internal global ptr @to_software_node, section ".discard.addressable", align 8, !dbg !1796
@__UNIQUE_ID___addressable_software_node_fwnode207 = internal global ptr @software_node_fwnode, section ".discard.addressable", align 8, !dbg !1798
@__UNIQUE_ID___addressable_property_entries_dup210 = internal global ptr @property_entries_dup, section ".discard.addressable", align 8, !dbg !1800
@__UNIQUE_ID___addressable_property_entries_free211 = internal global ptr @property_entries_free, section ".discard.addressable", align 8, !dbg !1802
@swnode_kset = internal global ptr null, align 8, !dbg !1835
@__UNIQUE_ID___addressable_software_node_find_by_name212 = internal global ptr @software_node_find_by_name, section ".discard.addressable", align 8, !dbg !1804
@__UNIQUE_ID___addressable_software_node_register_node_group213 = internal global ptr @software_node_register_node_group, section ".discard.addressable", align 8, !dbg !1806
@__UNIQUE_ID___addressable_software_node_unregister_node_group214 = internal global ptr @software_node_unregister_node_group, section ".discard.addressable", align 8, !dbg !1808
@__UNIQUE_ID___addressable_software_node_register215 = internal global ptr @software_node_register, section ".discard.addressable", align 8, !dbg !1810
@__UNIQUE_ID___addressable_software_node_unregister216 = internal global ptr @software_node_unregister, section ".discard.addressable", align 8, !dbg !1812
@__UNIQUE_ID___addressable_fwnode_create_software_node217 = internal global ptr @fwnode_create_software_node, section ".discard.addressable", align 8, !dbg !1814
@__UNIQUE_ID___addressable_fwnode_remove_software_node218 = internal global ptr @fwnode_remove_software_node, section ".discard.addressable", align 8, !dbg !1816
@__UNIQUE_ID___addressable_device_add_software_node219 = internal global ptr @device_add_software_node, section ".discard.addressable", align 8, !dbg !1818
@__UNIQUE_ID___addressable_device_remove_software_node220 = internal global ptr @device_remove_software_node, section ".discard.addressable", align 8, !dbg !1820
@__UNIQUE_ID___addressable_device_create_managed_software_node221 = internal global ptr @device_create_managed_software_node, section ".discard.addressable", align 8, !dbg !1822
@.str = private unnamed_addr constant [14 x i8] c"software_node\00", align 1, !dbg !1824
@__UNIQUE_ID___addressable___initstub__kmod_swnode__222_1109_software_node_init2223 = internal global ptr @__initstub__kmod_swnode__222_1109_software_node_init2, section ".discard.addressable", align 8, !dbg !1829
@swnode_root_ids = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 67108869, ptr null } }, align 8, !dbg !1873
@__exitcall_software_node_exit = internal global ptr @software_node_exit, section ".exitcall.exit", align 8, !dbg !1831
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1837
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !1842
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !1845
@.str.4 = private unnamed_addr constant [6 x i8] c"ports\00", align 1, !dbg !1848
@.str.5 = private unnamed_addr constant [6 x i8] c"port@\00", align 1, !dbg !1853
@.str.6 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1, !dbg !1855
@software_node_type = internal constant %struct.kobj_type { ptr @software_node_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !1866
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !1860
@.str.8 = private unnamed_addr constant [7 x i8] c"node%d\00", align 1, !dbg !1863
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"software_nodes\00", align 1, !dbg !1868
@kernel_kobj = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID___addressable_is_software_node205, ptr @__UNIQUE_ID___addressable_to_software_node206, ptr @__UNIQUE_ID___addressable_software_node_fwnode207, ptr @__UNIQUE_ID___addressable_property_entries_dup210, ptr @__UNIQUE_ID___addressable_property_entries_free211, ptr @__UNIQUE_ID___addressable_software_node_find_by_name212, ptr @__UNIQUE_ID___addressable_software_node_register_node_group213, ptr @__UNIQUE_ID___addressable_software_node_unregister_node_group214, ptr @__UNIQUE_ID___addressable_software_node_register215, ptr @__UNIQUE_ID___addressable_software_node_unregister216, ptr @__UNIQUE_ID___addressable_fwnode_create_software_node217, ptr @__UNIQUE_ID___addressable_fwnode_remove_software_node218, ptr @__UNIQUE_ID___addressable_device_add_software_node219, ptr @__UNIQUE_ID___addressable_device_remove_software_node220, ptr @__UNIQUE_ID___addressable_device_create_managed_software_node221, ptr @__UNIQUE_ID___addressable___initstub__kmod_swnode__222_1109_software_node_init2223, ptr @software_node_exit, ptr @__exitcall_software_node_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @is_software_node(ptr noundef %fwnode) #0 align 16 !dbg !1884 {
entry:
  %fwnode.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !1886, metadata !DIExpression()), !dbg !1887
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !1888
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #17, !dbg !1889
  br i1 %call, label %land.end, label %land.rhs, !dbg !1890

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !1891
  %ops = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1, !dbg !1892
  %2 = load ptr, ptr %ops, align 8, !dbg !1892
  %cmp = icmp eq ptr %2, @software_node_ops, !dbg !1893
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !1894
  ret i1 %3, !dbg !1895
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #2 align 16 !dbg !1896 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1901, metadata !DIExpression()), !dbg !1902
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1903
  %tobool = icmp ne ptr %0, null, !dbg !1903
  %lnot = xor i1 %tobool, true, !dbg !1903
  %lnot1 = xor i1 %lnot, true, !dbg !1903
  %lnot2 = xor i1 %lnot1, true, !dbg !1903
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1903
  %conv = sext i32 %lnot.ext to i64, !dbg !1903
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1903
  %tobool3 = icmp ne i64 %expval, 0, !dbg !1903
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !1904

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !1905
  %2 = ptrtoint ptr %1 to i64, !dbg !1905
  %3 = inttoptr i64 %2 to ptr, !dbg !1905
  %4 = ptrtoint ptr %3 to i64, !dbg !1905
  %cmp = icmp uge i64 %4, -4095, !dbg !1905
  %lnot5 = xor i1 %cmp, true, !dbg !1905
  %lnot7 = xor i1 %lnot5, true, !dbg !1905
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1905
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !1905
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !1905
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !1904
  br label %lor.end, !dbg !1904

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !1906
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @to_software_node(ptr noundef %fwnode) #0 align 16 !dbg !1907 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !1911, metadata !DIExpression()), !dbg !1919
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !1912, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !1922
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !1915, metadata !DIExpression()), !dbg !1922
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !1922
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !1922
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !1922
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !1922
  br i1 %call, label %cond.true, label %cond.false, !dbg !1922

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !1923
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1917, metadata !DIExpression()), !dbg !1923
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !1923
  store ptr %2, ptr %__mptr, align 8, !dbg !1923
  %3 = load ptr, ptr %__mptr, align 8, !dbg !1923
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !1923
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !1922
  %4 = load ptr, ptr %tmp1, align 8, !dbg !1923
  br label %cond.end, !dbg !1922

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1922

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !1922
  store ptr %cond, ptr %tmp, align 8, !dbg !1922
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !1924
  %5 = load ptr, ptr %tmp, align 8, !dbg !1922
  store ptr %5, ptr %swnode, align 8, !dbg !1921
  %6 = load ptr, ptr %swnode, align 8, !dbg !1925
  %tobool = icmp ne ptr %6, null, !dbg !1925
  br i1 %tobool, label %cond.true2, label %cond.false3, !dbg !1925

cond.true2:                                       ; preds = %cond.end
  %7 = load ptr, ptr %swnode, align 8, !dbg !1926
  %node = getelementptr inbounds %struct.swnode, ptr %7, i32 0, i32 2, !dbg !1927
  %8 = load ptr, ptr %node, align 8, !dbg !1927
  br label %cond.end4, !dbg !1925

cond.false3:                                      ; preds = %cond.end
  br label %cond.end4, !dbg !1925

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi ptr [ %8, %cond.true2 ], [ null, %cond.false3 ], !dbg !1925
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !1928
  ret ptr %cond5, !dbg !1929
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @software_node_fwnode(ptr noundef %node) #0 align 16 !dbg !1930 {
entry:
  %node.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1934, metadata !DIExpression()), !dbg !1936
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !1937
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !1935, metadata !DIExpression()), !dbg !1938
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1939
  %call = call ptr @software_node_to_swnode(ptr noundef %0) #17, !dbg !1940
  store ptr %call, ptr %swnode, align 8, !dbg !1938
  %1 = load ptr, ptr %swnode, align 8, !dbg !1941
  %tobool = icmp ne ptr %1, null, !dbg !1941
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1941

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %swnode, align 8, !dbg !1942
  %fwnode = getelementptr inbounds %struct.swnode, ptr %2, i32 0, i32 1, !dbg !1943
  br label %cond.end, !dbg !1941

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1941

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %fwnode, %cond.true ], [ null, %cond.false ], !dbg !1941
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !1944
  ret ptr %cond, !dbg !1945
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_to_swnode(ptr noundef %node) #0 align 16 !dbg !1946 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %k = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1950, metadata !DIExpression()), !dbg !1962
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !1963
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !1951, metadata !DIExpression()), !dbg !1964
  store ptr null, ptr %swnode, align 8, !dbg !1964
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #18, !dbg !1965
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1952, metadata !DIExpression()), !dbg !1966
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1967
  %tobool = icmp ne ptr %0, null, !dbg !1967
  br i1 %tobool, label %if.end, label %if.then, !dbg !1969

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1970

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @swnode_kset, align 8, !dbg !1971
  %list_lock = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 1, !dbg !1972
  call void @spin_lock(ptr noundef %list_lock) #17, !dbg !1973
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !1974
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1953, metadata !DIExpression()), !dbg !1974
  %2 = load ptr, ptr @swnode_kset, align 8, !dbg !1974
  %list = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 0, !dbg !1974
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !1974
  %3 = load ptr, ptr %next, align 8, !dbg !1974
  store ptr %3, ptr %__mptr, align 8, !dbg !1974
  %4 = load ptr, ptr %__mptr, align 8, !dbg !1974
  %add.ptr = getelementptr i8, ptr %4, i64 -8, !dbg !1974
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1974
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !1975
  %5 = load ptr, ptr %tmp, align 8, !dbg !1974
  store ptr %5, ptr %k, align 8, !dbg !1975
  br label %for.cond, !dbg !1975

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %k, align 8, !dbg !1976
  %entry1 = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 1, !dbg !1976
  %7 = load ptr, ptr @swnode_kset, align 8, !dbg !1976
  %list2 = getelementptr inbounds %struct.kset, ptr %7, i32 0, i32 0, !dbg !1976
  %cmp = icmp eq ptr %entry1, %list2, !dbg !1976
  %lnot = xor i1 %cmp, true, !dbg !1976
  br i1 %lnot, label %for.body, label %for.end, !dbg !1975

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #18, !dbg !1977
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !1956, metadata !DIExpression()), !dbg !1977
  %8 = load ptr, ptr %k, align 8, !dbg !1977
  store ptr %8, ptr %__mptr3, align 8, !dbg !1977
  %9 = load ptr, ptr %__mptr3, align 8, !dbg !1977
  %add.ptr5 = getelementptr i8, ptr %9, i64 0, !dbg !1977
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !1977
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #18, !dbg !1978
  %10 = load ptr, ptr %tmp4, align 8, !dbg !1977
  store ptr %10, ptr %swnode, align 8, !dbg !1979
  %11 = load ptr, ptr %swnode, align 8, !dbg !1980
  %node6 = getelementptr inbounds %struct.swnode, ptr %11, i32 0, i32 2, !dbg !1982
  %12 = load ptr, ptr %node6, align 8, !dbg !1982
  %13 = load ptr, ptr %node.addr, align 8, !dbg !1983
  %cmp7 = icmp eq ptr %12, %13, !dbg !1984
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1985

if.then8:                                         ; preds = %for.body
  br label %for.end, !dbg !1986

if.end9:                                          ; preds = %for.body
  store ptr null, ptr %swnode, align 8, !dbg !1987
  br label %for.inc, !dbg !1988

for.inc:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #18, !dbg !1989
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !1960, metadata !DIExpression()), !dbg !1989
  %14 = load ptr, ptr %k, align 8, !dbg !1989
  %entry11 = getelementptr inbounds %struct.kobject, ptr %14, i32 0, i32 1, !dbg !1989
  %next12 = getelementptr inbounds %struct.list_head, ptr %entry11, i32 0, i32 0, !dbg !1989
  %15 = load ptr, ptr %next12, align 8, !dbg !1989
  store ptr %15, ptr %__mptr10, align 8, !dbg !1989
  %16 = load ptr, ptr %__mptr10, align 8, !dbg !1989
  %add.ptr14 = getelementptr i8, ptr %16, i64 -8, !dbg !1989
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !1989
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #18, !dbg !1976
  %17 = load ptr, ptr %tmp13, align 8, !dbg !1989
  store ptr %17, ptr %k, align 8, !dbg !1976
  br label %for.cond, !dbg !1976, !llvm.loop !1990

for.end:                                          ; preds = %if.then8, %for.cond
  %18 = load ptr, ptr @swnode_kset, align 8, !dbg !1994
  %list_lock15 = getelementptr inbounds %struct.kset, ptr %18, i32 0, i32 1, !dbg !1995
  call void @spin_unlock(ptr noundef %list_lock15) #17, !dbg !1996
  %19 = load ptr, ptr %swnode, align 8, !dbg !1997
  store ptr %19, ptr %retval, align 8, !dbg !1998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1998

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #18, !dbg !1999
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !1999
  %20 = load ptr, ptr %retval, align 8, !dbg !1999
  ret ptr %20, !dbg !1999
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @property_entries_dup(ptr noundef %properties) #0 align 16 !dbg !2000 {
entry:
  %retval = alloca ptr, align 8
  %properties.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %properties, ptr %properties.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %properties.addr, metadata !2005, metadata !DIExpression()), !dbg !2010
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2006, metadata !DIExpression()), !dbg !2012
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2013
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2007, metadata !DIExpression()), !dbg !2014
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #18, !dbg !2013
  call void @llvm.dbg.declare(metadata ptr %n, metadata !2008, metadata !DIExpression()), !dbg !2015
  store i32 0, ptr %n, align 4, !dbg !2015
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2016
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2009, metadata !DIExpression()), !dbg !2017
  %0 = load ptr, ptr %properties.addr, align 8, !dbg !2018
  %tobool = icmp ne ptr %0, null, !dbg !2018
  br i1 %tobool, label %if.end, label %if.then, !dbg !2020

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2021

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !2022

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load ptr, ptr %properties.addr, align 8, !dbg !2023
  %2 = load i32, ptr %n, align 4, !dbg !2024
  %idxprom = sext i32 %2 to i64, !dbg !2023
  %arrayidx = getelementptr %struct.property_entry, ptr %1, i64 %idxprom, !dbg !2023
  %name = getelementptr inbounds %struct.property_entry, ptr %arrayidx, i32 0, i32 0, !dbg !2025
  %3 = load ptr, ptr %name, align 8, !dbg !2025
  %tobool1 = icmp ne ptr %3, null, !dbg !2022
  br i1 %tobool1, label %while.body, label %while.end, !dbg !2022

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %n, align 4, !dbg !2026
  %inc = add i32 %4, 1, !dbg !2026
  store i32 %inc, ptr %n, align 4, !dbg !2026
  br label %while.cond, !dbg !2022, !llvm.loop !2027

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %n, align 4, !dbg !2028
  %add = add i32 %5, 1, !dbg !2029
  %conv = sext i32 %add to i64, !dbg !2028
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 32, i32 noundef 3264) #19, !dbg !2030
  store ptr %call, ptr %p, align 8, !dbg !2031
  %6 = load ptr, ptr %p, align 8, !dbg !2032
  %tobool2 = icmp ne ptr %6, null, !dbg !2032
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !2034

if.then3:                                         ; preds = %while.end
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !2035
  store ptr %call4, ptr %retval, align 8, !dbg !2036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2036

if.end5:                                          ; preds = %while.end
  store i32 0, ptr %i, align 4, !dbg !2037
  br label %for.cond, !dbg !2039

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load i32, ptr %i, align 4, !dbg !2040
  %8 = load i32, ptr %n, align 4, !dbg !2042
  %cmp = icmp slt i32 %7, %8, !dbg !2043
  br i1 %cmp, label %for.body, label %for.end, !dbg !2044

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %p, align 8, !dbg !2045
  %10 = load i32, ptr %i, align 4, !dbg !2047
  %idxprom7 = sext i32 %10 to i64, !dbg !2045
  %arrayidx8 = getelementptr %struct.property_entry, ptr %9, i64 %idxprom7, !dbg !2045
  %11 = load ptr, ptr %properties.addr, align 8, !dbg !2048
  %12 = load i32, ptr %i, align 4, !dbg !2049
  %idxprom9 = sext i32 %12 to i64, !dbg !2048
  %arrayidx10 = getelementptr %struct.property_entry, ptr %11, i64 %idxprom9, !dbg !2048
  %call11 = call i32 @property_entry_copy_data(ptr noundef %arrayidx8, ptr noundef %arrayidx10) #17, !dbg !2050
  store i32 %call11, ptr %ret, align 4, !dbg !2051
  %13 = load i32, ptr %ret, align 4, !dbg !2052
  %tobool12 = icmp ne i32 %13, 0, !dbg !2052
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !2054

if.then13:                                        ; preds = %for.body
  br label %while.cond14, !dbg !2055

while.cond14:                                     ; preds = %while.body17, %if.then13
  %14 = load i32, ptr %i, align 4, !dbg !2057
  %dec = add i32 %14, -1, !dbg !2057
  store i32 %dec, ptr %i, align 4, !dbg !2057
  %cmp15 = icmp sge i32 %dec, 0, !dbg !2058
  br i1 %cmp15, label %while.body17, label %while.end20, !dbg !2055

while.body17:                                     ; preds = %while.cond14
  %15 = load ptr, ptr %p, align 8, !dbg !2059
  %16 = load i32, ptr %i, align 4, !dbg !2060
  %idxprom18 = sext i32 %16 to i64, !dbg !2059
  %arrayidx19 = getelementptr %struct.property_entry, ptr %15, i64 %idxprom18, !dbg !2059
  call void @property_entry_free_data(ptr noundef %arrayidx19) #17, !dbg !2061
  br label %while.cond14, !dbg !2055, !llvm.loop !2062

while.end20:                                      ; preds = %while.cond14
  %17 = load ptr, ptr %p, align 8, !dbg !2064
  call void @kfree(ptr noundef %17) #17, !dbg !2065
  %18 = load i32, ptr %ret, align 4, !dbg !2066
  %conv21 = sext i32 %18 to i64, !dbg !2066
  %call22 = call ptr @ERR_PTR(i64 noundef %conv21) #17, !dbg !2067
  store ptr %call22, ptr %retval, align 8, !dbg !2068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2068

if.end23:                                         ; preds = %for.body
  br label %for.inc, !dbg !2069

for.inc:                                          ; preds = %if.end23
  %19 = load i32, ptr %i, align 4, !dbg !2070
  %inc24 = add i32 %19, 1, !dbg !2070
  store i32 %inc24, ptr %i, align 4, !dbg !2070
  br label %for.cond, !dbg !2071, !llvm.loop !2072

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %p, align 8, !dbg !2074
  store ptr %20, ptr %retval, align 8, !dbg !2075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2075

cleanup:                                          ; preds = %for.end, %while.end20, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #18, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2076
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !2076
  %21 = load ptr, ptr %retval, align 8, !dbg !2076
  ret ptr %21, !dbg !2076
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !2077 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2081, metadata !DIExpression()), !dbg !2084
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2082, metadata !DIExpression()), !dbg !2085
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2083, metadata !DIExpression()), !dbg !2086
  %0 = load i64, ptr %n.addr, align 8, !dbg !2087
  %1 = load i64, ptr %size.addr, align 8, !dbg !2088
  %2 = load i32, ptr %flags.addr, align 4, !dbg !2089
  %or = or i32 %2, 256, !dbg !2090
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #19, !dbg !2091
  ret ptr %call, !dbg !2092
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #2 align 16 !dbg !2093 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !2097, metadata !DIExpression()), !dbg !2098
  %0 = load i64, ptr %error.addr, align 8, !dbg !2099
  %1 = inttoptr i64 %0 to ptr, !dbg !2100
  ret ptr %1, !dbg !2101
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @property_entry_copy_data(ptr noundef %dst, ptr noundef %src) #0 align 16 !dbg !2102 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %pointer = alloca ptr, align 8
  %dst_ptr = alloca ptr, align 8
  %nval = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2106, metadata !DIExpression()), !dbg !2111
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2107, metadata !DIExpression()), !dbg !2112
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer) #18, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %pointer, metadata !2108, metadata !DIExpression()), !dbg !2114
  %0 = load ptr, ptr %src.addr, align 8, !dbg !2115
  %call = call ptr @property_get_pointer(ptr noundef %0) #17, !dbg !2116
  store ptr %call, ptr %pointer, align 8, !dbg !2114
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_ptr) #18, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %dst_ptr, metadata !2109, metadata !DIExpression()), !dbg !2118
  call void @llvm.lifetime.start.p0(i64 8, ptr %nval) #18, !dbg !2119
  call void @llvm.dbg.declare(metadata ptr %nval, metadata !2110, metadata !DIExpression()), !dbg !2120
  %1 = load ptr, ptr %src.addr, align 8, !dbg !2121
  %is_inline = getelementptr inbounds %struct.property_entry, ptr %1, i32 0, i32 2, !dbg !2123
  %2 = load i8, ptr %is_inline, align 8, !dbg !2123, !range !2124, !noundef !356
  %tobool = trunc i8 %2 to i1, !dbg !2123
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2125

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %src.addr, align 8, !dbg !2126
  %length = getelementptr inbounds %struct.property_entry, ptr %3, i32 0, i32 1, !dbg !2127
  %4 = load i64, ptr %length, align 8, !dbg !2127
  %tobool1 = icmp ne i64 %4, 0, !dbg !2126
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2128

if.then:                                          ; preds = %land.lhs.true
  store i32 -61, ptr %retval, align 4, !dbg !2129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2129

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %src.addr, align 8, !dbg !2130
  %type = getelementptr inbounds %struct.property_entry, ptr %5, i32 0, i32 3, !dbg !2132
  %6 = load i32, ptr %type, align 4, !dbg !2132
  %cmp = icmp eq i32 %6, 5, !dbg !2133
  br i1 %cmp, label %land.lhs.true2, label %if.end6, !dbg !2134

land.lhs.true2:                                   ; preds = %if.end
  %7 = load ptr, ptr %src.addr, align 8, !dbg !2135
  %is_inline3 = getelementptr inbounds %struct.property_entry, ptr %7, i32 0, i32 2, !dbg !2136
  %8 = load i8, ptr %is_inline3, align 8, !dbg !2136, !range !2124, !noundef !356
  %tobool4 = trunc i8 %8 to i1, !dbg !2136
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2137

if.then5:                                         ; preds = %land.lhs.true2
  store i32 -22, ptr %retval, align 4, !dbg !2138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2138

if.end6:                                          ; preds = %land.lhs.true2, %if.end
  %9 = load ptr, ptr %src.addr, align 8, !dbg !2139
  %length7 = getelementptr inbounds %struct.property_entry, ptr %9, i32 0, i32 1, !dbg !2141
  %10 = load i64, ptr %length7, align 8, !dbg !2141
  %cmp8 = icmp ule i64 %10, 8, !dbg !2142
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !2143

if.then9:                                         ; preds = %if.end6
  %11 = load ptr, ptr %dst.addr, align 8, !dbg !2144
  %12 = getelementptr inbounds %struct.property_entry, ptr %11, i32 0, i32 4, !dbg !2146
  store ptr %12, ptr %dst_ptr, align 8, !dbg !2147
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !2148
  %is_inline10 = getelementptr inbounds %struct.property_entry, ptr %13, i32 0, i32 2, !dbg !2149
  store i8 1, ptr %is_inline10, align 8, !dbg !2150
  br label %if.end16, !dbg !2151

if.else:                                          ; preds = %if.end6
  %14 = load ptr, ptr %src.addr, align 8, !dbg !2152
  %length11 = getelementptr inbounds %struct.property_entry, ptr %14, i32 0, i32 1, !dbg !2154
  %15 = load i64, ptr %length11, align 8, !dbg !2154
  %call12 = call noalias ptr @kmalloc(i64 noundef %15, i32 noundef 3264) #20, !dbg !2155
  store ptr %call12, ptr %dst_ptr, align 8, !dbg !2156
  %16 = load ptr, ptr %dst_ptr, align 8, !dbg !2157
  %tobool13 = icmp ne ptr %16, null, !dbg !2157
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2159

if.then14:                                        ; preds = %if.else
  store i32 -12, ptr %retval, align 4, !dbg !2160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2160

if.end15:                                         ; preds = %if.else
  %17 = load ptr, ptr %dst_ptr, align 8, !dbg !2161
  %18 = load ptr, ptr %dst.addr, align 8, !dbg !2162
  %19 = getelementptr inbounds %struct.property_entry, ptr %18, i32 0, i32 4, !dbg !2163
  store ptr %17, ptr %19, align 8, !dbg !2164
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then9
  %20 = load ptr, ptr %src.addr, align 8, !dbg !2165
  %type17 = getelementptr inbounds %struct.property_entry, ptr %20, i32 0, i32 3, !dbg !2167
  %21 = load i32, ptr %type17, align 4, !dbg !2167
  %cmp18 = icmp eq i32 %21, 4, !dbg !2168
  br i1 %cmp18, label %if.then19, label %if.else28, !dbg !2169

if.then19:                                        ; preds = %if.end16
  %22 = load ptr, ptr %src.addr, align 8, !dbg !2170
  %length20 = getelementptr inbounds %struct.property_entry, ptr %22, i32 0, i32 1, !dbg !2172
  %23 = load i64, ptr %length20, align 8, !dbg !2172
  %div = udiv i64 %23, 8, !dbg !2173
  store i64 %div, ptr %nval, align 8, !dbg !2174
  %24 = load ptr, ptr %dst_ptr, align 8, !dbg !2175
  %25 = load ptr, ptr %pointer, align 8, !dbg !2177
  %26 = load i64, ptr %nval, align 8, !dbg !2178
  %call21 = call zeroext i1 @property_copy_string_array(ptr noundef %24, ptr noundef %25, i64 noundef %26) #17, !dbg !2179
  br i1 %call21, label %if.end27, label %if.then22, !dbg !2180

if.then22:                                        ; preds = %if.then19
  %27 = load ptr, ptr %dst.addr, align 8, !dbg !2181
  %is_inline23 = getelementptr inbounds %struct.property_entry, ptr %27, i32 0, i32 2, !dbg !2184
  %28 = load i8, ptr %is_inline23, align 8, !dbg !2184, !range !2124, !noundef !356
  %tobool24 = trunc i8 %28 to i1, !dbg !2184
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !2185

if.then25:                                        ; preds = %if.then22
  %29 = load ptr, ptr %dst.addr, align 8, !dbg !2186
  %30 = getelementptr inbounds %struct.property_entry, ptr %29, i32 0, i32 4, !dbg !2187
  %31 = load ptr, ptr %30, align 8, !dbg !2187
  call void @kfree(ptr noundef %31) #17, !dbg !2188
  br label %if.end26, !dbg !2188

if.end26:                                         ; preds = %if.then25, %if.then22
  store i32 -12, ptr %retval, align 4, !dbg !2189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2189

if.end27:                                         ; preds = %if.then19
  br label %if.end30, !dbg !2190

if.else28:                                        ; preds = %if.end16
  %32 = load ptr, ptr %dst_ptr, align 8, !dbg !2191
  %33 = load ptr, ptr %pointer, align 8, !dbg !2193
  %34 = load ptr, ptr %src.addr, align 8, !dbg !2194
  %length29 = getelementptr inbounds %struct.property_entry, ptr %34, i32 0, i32 1, !dbg !2195
  %35 = load i64, ptr %length29, align 8, !dbg !2195
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %33, i64 %35, i1 false), !dbg !2196
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.end27
  %36 = load ptr, ptr %src.addr, align 8, !dbg !2197
  %length31 = getelementptr inbounds %struct.property_entry, ptr %36, i32 0, i32 1, !dbg !2198
  %37 = load i64, ptr %length31, align 8, !dbg !2198
  %38 = load ptr, ptr %dst.addr, align 8, !dbg !2199
  %length32 = getelementptr inbounds %struct.property_entry, ptr %38, i32 0, i32 1, !dbg !2200
  store i64 %37, ptr %length32, align 8, !dbg !2201
  %39 = load ptr, ptr %src.addr, align 8, !dbg !2202
  %type33 = getelementptr inbounds %struct.property_entry, ptr %39, i32 0, i32 3, !dbg !2203
  %40 = load i32, ptr %type33, align 4, !dbg !2203
  %41 = load ptr, ptr %dst.addr, align 8, !dbg !2204
  %type34 = getelementptr inbounds %struct.property_entry, ptr %41, i32 0, i32 3, !dbg !2205
  store i32 %40, ptr %type34, align 4, !dbg !2206
  %42 = load ptr, ptr %src.addr, align 8, !dbg !2207
  %name = getelementptr inbounds %struct.property_entry, ptr %42, i32 0, i32 0, !dbg !2208
  %43 = load ptr, ptr %name, align 8, !dbg !2208
  %call35 = call noalias ptr @kstrdup(ptr noundef %43, i32 noundef 3264) #17, !dbg !2209
  %44 = load ptr, ptr %dst.addr, align 8, !dbg !2210
  %name36 = getelementptr inbounds %struct.property_entry, ptr %44, i32 0, i32 0, !dbg !2211
  store ptr %call35, ptr %name36, align 8, !dbg !2212
  %45 = load ptr, ptr %dst.addr, align 8, !dbg !2213
  %name37 = getelementptr inbounds %struct.property_entry, ptr %45, i32 0, i32 0, !dbg !2215
  %46 = load ptr, ptr %name37, align 8, !dbg !2215
  %tobool38 = icmp ne ptr %46, null, !dbg !2213
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !2216

if.then39:                                        ; preds = %if.end30
  %47 = load ptr, ptr %dst.addr, align 8, !dbg !2217
  call void @property_entry_free_data(ptr noundef %47) #17, !dbg !2219
  store i32 -12, ptr %retval, align 4, !dbg !2220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2220

if.end40:                                         ; preds = %if.end30
  store i32 0, ptr %retval, align 4, !dbg !2221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2221

cleanup:                                          ; preds = %if.end40, %if.then39, %if.end26, %if.then14, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nval) #18, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_ptr) #18, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer) #18, !dbg !2222
  %48 = load i32, ptr %retval, align 4, !dbg !2222
  ret i32 %48, !dbg !2222
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @property_entry_free_data(ptr noundef %p) #0 align 16 !dbg !2223 {
entry:
  %p.addr = alloca ptr, align 8
  %src_str = alloca ptr, align 8
  %i = alloca i64, align 8
  %nval = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2227, metadata !DIExpression()), !dbg !2233
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_str) #18, !dbg !2234
  call void @llvm.dbg.declare(metadata ptr %src_str, metadata !2228, metadata !DIExpression()), !dbg !2235
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2231, metadata !DIExpression()), !dbg !2237
  call void @llvm.lifetime.start.p0(i64 8, ptr %nval) #18, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %nval, metadata !2232, metadata !DIExpression()), !dbg !2238
  %0 = load ptr, ptr %p.addr, align 8, !dbg !2239
  %type = getelementptr inbounds %struct.property_entry, ptr %0, i32 0, i32 3, !dbg !2241
  %1 = load i32, ptr %type, align 4, !dbg !2241
  %cmp = icmp eq i32 %1, 4, !dbg !2242
  br i1 %cmp, label %if.then, label %if.end, !dbg !2243

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !2244
  %call = call ptr @property_get_pointer(ptr noundef %2) #17, !dbg !2246
  store ptr %call, ptr %src_str, align 8, !dbg !2247
  %3 = load ptr, ptr %p.addr, align 8, !dbg !2248
  %length = getelementptr inbounds %struct.property_entry, ptr %3, i32 0, i32 1, !dbg !2249
  %4 = load i64, ptr %length, align 8, !dbg !2249
  %div = udiv i64 %4, 8, !dbg !2250
  store i64 %div, ptr %nval, align 8, !dbg !2251
  store i64 0, ptr %i, align 8, !dbg !2252
  br label %for.cond, !dbg !2254

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i64, ptr %i, align 8, !dbg !2255
  %6 = load i64, ptr %nval, align 8, !dbg !2257
  %cmp1 = icmp ult i64 %5, %6, !dbg !2258
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2259

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %src_str, align 8, !dbg !2260
  %8 = load i64, ptr %i, align 8, !dbg !2261
  %arrayidx = getelementptr ptr, ptr %7, i64 %8, !dbg !2260
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !2260
  call void @kfree(ptr noundef %9) #17, !dbg !2262
  br label %for.inc, !dbg !2262

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8, !dbg !2263
  %inc = add i64 %10, 1, !dbg !2263
  store i64 %inc, ptr %i, align 8, !dbg !2263
  br label %for.cond, !dbg !2264, !llvm.loop !2265

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !2267

if.end:                                           ; preds = %for.end, %entry
  %11 = load ptr, ptr %p.addr, align 8, !dbg !2268
  %is_inline = getelementptr inbounds %struct.property_entry, ptr %11, i32 0, i32 2, !dbg !2270
  %12 = load i8, ptr %is_inline, align 8, !dbg !2270, !range !2124, !noundef !356
  %tobool = trunc i8 %12 to i1, !dbg !2270
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2271

if.then2:                                         ; preds = %if.end
  %13 = load ptr, ptr %p.addr, align 8, !dbg !2272
  %14 = getelementptr inbounds %struct.property_entry, ptr %13, i32 0, i32 4, !dbg !2273
  %15 = load ptr, ptr %14, align 8, !dbg !2273
  call void @kfree(ptr noundef %15) #17, !dbg !2274
  br label %if.end3, !dbg !2274

if.end3:                                          ; preds = %if.then2, %if.end
  %16 = load ptr, ptr %p.addr, align 8, !dbg !2275
  %name = getelementptr inbounds %struct.property_entry, ptr %16, i32 0, i32 0, !dbg !2276
  %17 = load ptr, ptr %name, align 8, !dbg !2276
  call void @kfree(ptr noundef %17) #17, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 8, ptr %nval) #18, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18, !dbg !2278
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_str) #18, !dbg !2278
  ret void, !dbg !2278
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2279 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @property_entries_free(ptr noundef %properties) #0 align 16 !dbg !2282 {
entry:
  %properties.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %properties, ptr %properties.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %properties.addr, metadata !2284, metadata !DIExpression()), !dbg !2286
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !2287
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2285, metadata !DIExpression()), !dbg !2288
  %0 = load ptr, ptr %properties.addr, align 8, !dbg !2289
  %tobool = icmp ne ptr %0, null, !dbg !2289
  br i1 %tobool, label %if.end, label %if.then, !dbg !2291

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2292

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %properties.addr, align 8, !dbg !2293
  store ptr %1, ptr %p, align 8, !dbg !2295
  br label %for.cond, !dbg !2296

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %p, align 8, !dbg !2297
  %name = getelementptr inbounds %struct.property_entry, ptr %2, i32 0, i32 0, !dbg !2299
  %3 = load ptr, ptr %name, align 8, !dbg !2299
  %tobool1 = icmp ne ptr %3, null, !dbg !2300
  br i1 %tobool1, label %for.body, label %for.end, !dbg !2300

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8, !dbg !2301
  call void @property_entry_free_data(ptr noundef %4) #17, !dbg !2302
  br label %for.inc, !dbg !2302

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %p, align 8, !dbg !2303
  %incdec.ptr = getelementptr %struct.property_entry, ptr %5, i32 1, !dbg !2303
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !2303
  br label %for.cond, !dbg !2304, !llvm.loop !2305

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %properties.addr, align 8, !dbg !2307
  call void @kfree(ptr noundef %6) #17, !dbg !2308
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2309
  br label %cleanup, !dbg !2309

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !2309
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2309

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @software_node_find_by_name(ptr noundef %parent, ptr noundef %name) #0 align 16 !dbg !2310 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %k = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2314, metadata !DIExpression()), !dbg !2327
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2315, metadata !DIExpression()), !dbg !2328
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !2329
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !2316, metadata !DIExpression()), !dbg !2330
  store ptr null, ptr %swnode, align 8, !dbg !2330
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #18, !dbg !2331
  call void @llvm.dbg.declare(metadata ptr %k, metadata !2317, metadata !DIExpression()), !dbg !2332
  %0 = load ptr, ptr %name.addr, align 8, !dbg !2333
  %tobool = icmp ne ptr %0, null, !dbg !2333
  br i1 %tobool, label %if.end, label %if.then, !dbg !2335

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2336

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @swnode_kset, align 8, !dbg !2337
  %list_lock = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 1, !dbg !2338
  call void @spin_lock(ptr noundef %list_lock) #17, !dbg !2339
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2340
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2318, metadata !DIExpression()), !dbg !2340
  %2 = load ptr, ptr @swnode_kset, align 8, !dbg !2340
  %list = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 0, !dbg !2340
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !2340
  %3 = load ptr, ptr %next, align 8, !dbg !2340
  store ptr %3, ptr %__mptr, align 8, !dbg !2340
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2340
  %add.ptr = getelementptr i8, ptr %4, i64 -8, !dbg !2340
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2340
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2341
  %5 = load ptr, ptr %tmp, align 8, !dbg !2340
  store ptr %5, ptr %k, align 8, !dbg !2341
  br label %for.cond, !dbg !2341

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %k, align 8, !dbg !2342
  %entry1 = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 1, !dbg !2342
  %7 = load ptr, ptr @swnode_kset, align 8, !dbg !2342
  %list2 = getelementptr inbounds %struct.kset, ptr %7, i32 0, i32 0, !dbg !2342
  %cmp = icmp eq ptr %entry1, %list2, !dbg !2342
  %lnot = xor i1 %cmp, true, !dbg !2342
  br i1 %lnot, label %for.body, label %for.end, !dbg !2341

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #18, !dbg !2343
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !2321, metadata !DIExpression()), !dbg !2343
  %8 = load ptr, ptr %k, align 8, !dbg !2343
  store ptr %8, ptr %__mptr3, align 8, !dbg !2343
  %9 = load ptr, ptr %__mptr3, align 8, !dbg !2343
  %add.ptr5 = getelementptr i8, ptr %9, i64 0, !dbg !2343
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !2343
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #18, !dbg !2344
  %10 = load ptr, ptr %tmp4, align 8, !dbg !2343
  store ptr %10, ptr %swnode, align 8, !dbg !2345
  %11 = load ptr, ptr %parent.addr, align 8, !dbg !2346
  %12 = load ptr, ptr %swnode, align 8, !dbg !2348
  %node = getelementptr inbounds %struct.swnode, ptr %12, i32 0, i32 2, !dbg !2349
  %13 = load ptr, ptr %node, align 8, !dbg !2349
  %parent6 = getelementptr inbounds %struct.software_node, ptr %13, i32 0, i32 1, !dbg !2350
  %14 = load ptr, ptr %parent6, align 8, !dbg !2350
  %cmp7 = icmp eq ptr %11, %14, !dbg !2351
  br i1 %cmp7, label %land.lhs.true, label %if.end17, !dbg !2352

land.lhs.true:                                    ; preds = %for.body
  %15 = load ptr, ptr %swnode, align 8, !dbg !2353
  %node8 = getelementptr inbounds %struct.swnode, ptr %15, i32 0, i32 2, !dbg !2354
  %16 = load ptr, ptr %node8, align 8, !dbg !2354
  %name9 = getelementptr inbounds %struct.software_node, ptr %16, i32 0, i32 0, !dbg !2355
  %17 = load ptr, ptr %name9, align 8, !dbg !2355
  %tobool10 = icmp ne ptr %17, null, !dbg !2353
  br i1 %tobool10, label %land.lhs.true11, label %if.end17, !dbg !2356

land.lhs.true11:                                  ; preds = %land.lhs.true
  %18 = load ptr, ptr %name.addr, align 8, !dbg !2357
  %19 = load ptr, ptr %swnode, align 8, !dbg !2358
  %node12 = getelementptr inbounds %struct.swnode, ptr %19, i32 0, i32 2, !dbg !2359
  %20 = load ptr, ptr %node12, align 8, !dbg !2359
  %name13 = getelementptr inbounds %struct.software_node, ptr %20, i32 0, i32 0, !dbg !2360
  %21 = load ptr, ptr %name13, align 8, !dbg !2360
  %call = call i32 @strcmp(ptr noundef %18, ptr noundef %21) #17, !dbg !2361
  %tobool14 = icmp ne i32 %call, 0, !dbg !2361
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !2362

if.then15:                                        ; preds = %land.lhs.true11
  %22 = load ptr, ptr %swnode, align 8, !dbg !2363
  %kobj = getelementptr inbounds %struct.swnode, ptr %22, i32 0, i32 0, !dbg !2365
  %call16 = call ptr @kobject_get(ptr noundef %kobj) #17, !dbg !2366
  br label %for.end, !dbg !2367

if.end17:                                         ; preds = %land.lhs.true11, %land.lhs.true, %for.body
  store ptr null, ptr %swnode, align 8, !dbg !2368
  br label %for.inc, !dbg !2369

for.inc:                                          ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #18, !dbg !2370
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !2325, metadata !DIExpression()), !dbg !2370
  %23 = load ptr, ptr %k, align 8, !dbg !2370
  %entry19 = getelementptr inbounds %struct.kobject, ptr %23, i32 0, i32 1, !dbg !2370
  %next20 = getelementptr inbounds %struct.list_head, ptr %entry19, i32 0, i32 0, !dbg !2370
  %24 = load ptr, ptr %next20, align 8, !dbg !2370
  store ptr %24, ptr %__mptr18, align 8, !dbg !2370
  %25 = load ptr, ptr %__mptr18, align 8, !dbg !2370
  %add.ptr22 = getelementptr i8, ptr %25, i64 -8, !dbg !2370
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !2370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #18, !dbg !2342
  %26 = load ptr, ptr %tmp21, align 8, !dbg !2370
  store ptr %26, ptr %k, align 8, !dbg !2342
  br label %for.cond, !dbg !2342, !llvm.loop !2371

for.end:                                          ; preds = %if.then15, %for.cond
  %27 = load ptr, ptr @swnode_kset, align 8, !dbg !2373
  %list_lock23 = getelementptr inbounds %struct.kset, ptr %27, i32 0, i32 1, !dbg !2374
  call void @spin_unlock(ptr noundef %list_lock23) #17, !dbg !2375
  %28 = load ptr, ptr %swnode, align 8, !dbg !2376
  %tobool24 = icmp ne ptr %28, null, !dbg !2376
  br i1 %tobool24, label %cond.true, label %cond.false, !dbg !2376

cond.true:                                        ; preds = %for.end
  %29 = load ptr, ptr %swnode, align 8, !dbg !2377
  %node25 = getelementptr inbounds %struct.swnode, ptr %29, i32 0, i32 2, !dbg !2378
  %30 = load ptr, ptr %node25, align 8, !dbg !2378
  br label %cond.end, !dbg !2376

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !2376

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %30, %cond.true ], [ null, %cond.false ], !dbg !2376
  store ptr %cond, ptr %retval, align 8, !dbg !2379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2379

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #18, !dbg !2380
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !2380
  %31 = load ptr, ptr %retval, align 8, !dbg !2380
  ret ptr %31, !dbg !2380
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !2381 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2387, metadata !DIExpression()), !dbg !2388
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2389
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2389
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !2389
  ret void, !dbg !2390
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2391 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2395 dso_local ptr @kobject_get(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !2398 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2400, metadata !DIExpression()), !dbg !2401
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2402
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2402
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !2402
  ret void, !dbg !2403
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @software_node_register_node_group(ptr noundef %node_group) #0 align 16 !dbg !2404 {
entry:
  %retval = alloca i32, align 4
  %node_group.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node_group, ptr %node_group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node_group.addr, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2410, metadata !DIExpression()), !dbg !2414
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2415
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2411, metadata !DIExpression()), !dbg !2416
  %0 = load ptr, ptr %node_group.addr, align 8, !dbg !2417
  %tobool = icmp ne ptr %0, null, !dbg !2417
  br i1 %tobool, label %if.end, label %if.then, !dbg !2419

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2420

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !2421
  br label %for.cond, !dbg !2423

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %node_group.addr, align 8, !dbg !2424
  %2 = load i32, ptr %i, align 4, !dbg !2426
  %idxprom = zext i32 %2 to i64, !dbg !2424
  %arrayidx = getelementptr ptr, ptr %1, i64 %idxprom, !dbg !2424
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2424
  %tobool1 = icmp ne ptr %3, null, !dbg !2427
  br i1 %tobool1, label %for.body, label %for.end, !dbg !2427

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %node_group.addr, align 8, !dbg !2428
  %5 = load i32, ptr %i, align 4, !dbg !2430
  %idxprom2 = zext i32 %5 to i64, !dbg !2428
  %arrayidx3 = getelementptr ptr, ptr %4, i64 %idxprom2, !dbg !2428
  %6 = load ptr, ptr %arrayidx3, align 8, !dbg !2428
  %call = call i32 @software_node_register(ptr noundef %6) #17, !dbg !2431
  store i32 %call, ptr %ret, align 4, !dbg !2432
  %7 = load i32, ptr %ret, align 4, !dbg !2433
  %tobool4 = icmp ne i32 %7, 0, !dbg !2433
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2435

if.then5:                                         ; preds = %for.body
  %8 = load ptr, ptr %node_group.addr, align 8, !dbg !2436
  call void @software_node_unregister_node_group(ptr noundef %8) #17, !dbg !2438
  %9 = load i32, ptr %ret, align 4, !dbg !2439
  store i32 %9, ptr %retval, align 4, !dbg !2440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2440

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !2441

for.inc:                                          ; preds = %if.end6
  %10 = load i32, ptr %i, align 4, !dbg !2442
  %inc = add i32 %10, 1, !dbg !2442
  store i32 %inc, ptr %i, align 4, !dbg !2442
  br label %for.cond, !dbg !2443, !llvm.loop !2444

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2446

cleanup:                                          ; preds = %for.end, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2447
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2447
  %11 = load i32, ptr %retval, align 4, !dbg !2447
  ret i32 %11, !dbg !2447
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @software_node_register(ptr noundef %node) #0 align 16 !dbg !2448 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #18, !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !2453, metadata !DIExpression()), !dbg !2456
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2457
  %parent1 = getelementptr inbounds %struct.software_node, ptr %0, i32 0, i32 1, !dbg !2458
  %1 = load ptr, ptr %parent1, align 8, !dbg !2458
  %call = call ptr @software_node_to_swnode(ptr noundef %1) #17, !dbg !2459
  store ptr %call, ptr %parent, align 8, !dbg !2456
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2460
  %call2 = call ptr @software_node_to_swnode(ptr noundef %2) #17, !dbg !2462
  %tobool = icmp ne ptr %call2, null, !dbg !2462
  br i1 %tobool, label %if.then, label %if.end, !dbg !2463

if.then:                                          ; preds = %entry
  store i32 -17, ptr %retval, align 4, !dbg !2464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2464

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !2465
  %parent3 = getelementptr inbounds %struct.software_node, ptr %3, i32 0, i32 1, !dbg !2467
  %4 = load ptr, ptr %parent3, align 8, !dbg !2467
  %tobool4 = icmp ne ptr %4, null, !dbg !2465
  br i1 %tobool4, label %land.lhs.true, label %if.end7, !dbg !2468

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %parent, align 8, !dbg !2469
  %tobool5 = icmp ne ptr %5, null, !dbg !2469
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2470

if.then6:                                         ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !2471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2471

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %6 = load ptr, ptr %node.addr, align 8, !dbg !2472
  %7 = load ptr, ptr %parent, align 8, !dbg !2473
  %call8 = call ptr @swnode_register(ptr noundef %6, ptr noundef %7, i32 noundef 0) #17, !dbg !2474
  %call9 = call i32 @PTR_ERR_OR_ZERO(ptr noundef %call8) #17, !dbg !2475
  store i32 %call9, ptr %retval, align 4, !dbg !2476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2476

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #18, !dbg !2477
  %8 = load i32, ptr %retval, align 4, !dbg !2477
  ret i32 %8, !dbg !2477
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @software_node_unregister_node_group(ptr noundef %node_group) #0 align 16 !dbg !2478 {
entry:
  %node_group.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node_group, ptr %node_group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node_group.addr, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !2485
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2483, metadata !DIExpression()), !dbg !2486
  store i32 0, ptr %i, align 4, !dbg !2486
  %0 = load ptr, ptr %node_group.addr, align 8, !dbg !2487
  %tobool = icmp ne ptr %0, null, !dbg !2487
  br i1 %tobool, label %if.end, label %if.then, !dbg !2489

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2490

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !2491

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load ptr, ptr %node_group.addr, align 8, !dbg !2492
  %2 = load i32, ptr %i, align 4, !dbg !2493
  %idxprom = zext i32 %2 to i64, !dbg !2492
  %arrayidx = getelementptr ptr, ptr %1, i64 %idxprom, !dbg !2492
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !2492
  %tobool1 = icmp ne ptr %3, null, !dbg !2491
  br i1 %tobool1, label %while.body, label %while.end, !dbg !2491

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %i, align 4, !dbg !2494
  %inc = add i32 %4, 1, !dbg !2494
  store i32 %inc, ptr %i, align 4, !dbg !2494
  br label %while.cond, !dbg !2491, !llvm.loop !2495

while.end:                                        ; preds = %while.cond
  br label %while.cond2, !dbg !2496

while.cond2:                                      ; preds = %while.body4, %while.end
  %5 = load i32, ptr %i, align 4, !dbg !2497
  %dec = add i32 %5, -1, !dbg !2497
  store i32 %dec, ptr %i, align 4, !dbg !2497
  %tobool3 = icmp ne i32 %5, 0, !dbg !2496
  br i1 %tobool3, label %while.body4, label %while.end7, !dbg !2496

while.body4:                                      ; preds = %while.cond2
  %6 = load ptr, ptr %node_group.addr, align 8, !dbg !2498
  %7 = load i32, ptr %i, align 4, !dbg !2499
  %idxprom5 = zext i32 %7 to i64, !dbg !2498
  %arrayidx6 = getelementptr ptr, ptr %6, i64 %idxprom5, !dbg !2498
  %8 = load ptr, ptr %arrayidx6, align 8, !dbg !2498
  call void @software_node_unregister(ptr noundef %8) #17, !dbg !2500
  br label %while.cond2, !dbg !2496, !llvm.loop !2501

while.end7:                                       ; preds = %while.cond2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2503
  br label %cleanup, !dbg !2503

cleanup:                                          ; preds = %while.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !2503
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2503

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @software_node_unregister(ptr noundef %node) #0 align 16 !dbg !2504 {
entry:
  %node.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2508, metadata !DIExpression()), !dbg !2510
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !2511
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !2509, metadata !DIExpression()), !dbg !2512
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2513
  %call = call ptr @software_node_to_swnode(ptr noundef %0) #17, !dbg !2514
  store ptr %call, ptr %swnode, align 8, !dbg !2515
  %1 = load ptr, ptr %swnode, align 8, !dbg !2516
  %tobool = icmp ne ptr %1, null, !dbg !2516
  br i1 %tobool, label %if.then, label %if.end, !dbg !2518

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %swnode, align 8, !dbg !2519
  %fwnode = getelementptr inbounds %struct.swnode, ptr %2, i32 0, i32 1, !dbg !2520
  call void @fwnode_remove_software_node(ptr noundef %fwnode) #17, !dbg !2521
  br label %if.end, !dbg !2521

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !2522
  ret void, !dbg !2522
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PTR_ERR_OR_ZERO(ptr noundef %ptr) #2 align 16 !dbg !2523 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2527, metadata !DIExpression()), !dbg !2528
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2529
  %call = call zeroext i1 @IS_ERR(ptr noundef %0) #17, !dbg !2531
  br i1 %call, label %if.then, label %if.else, !dbg !2532

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !2533
  %call1 = call i64 @PTR_ERR(ptr noundef %1) #17, !dbg !2534
  %conv = trunc i64 %call1 to i32, !dbg !2534
  store i32 %conv, ptr %retval, align 4, !dbg !2535
  br label %return, !dbg !2535

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2536
  br label %return, !dbg !2536

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2537
  ret i32 %2, !dbg !2537
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @swnode_register(ptr noundef %node, ptr noundef %parent, i32 noundef %allocated) #0 align 16 !dbg !2538 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %allocated.addr = alloca i32, align 4
  %swnode = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2542, metadata !DIExpression()), !dbg !2547
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2543, metadata !DIExpression()), !dbg !2548
  store i32 %allocated, ptr %allocated.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %allocated.addr, metadata !2544, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !2545, metadata !DIExpression()), !dbg !2551
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2552
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2546, metadata !DIExpression()), !dbg !2553
  %call = call noalias ptr @kzalloc(i64 noundef 208, i32 noundef 3264) #20, !dbg !2554
  store ptr %call, ptr %swnode, align 8, !dbg !2555
  %0 = load ptr, ptr %swnode, align 8, !dbg !2556
  %tobool = icmp ne ptr %0, null, !dbg !2556
  br i1 %tobool, label %if.end, label %if.then, !dbg !2558

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !2559
  store ptr %call1, ptr %retval, align 8, !dbg !2560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2560

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !2561
  %tobool2 = icmp ne ptr %1, null, !dbg !2561
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2561

cond.true:                                        ; preds = %if.end
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !2561
  %child_ids = getelementptr inbounds %struct.swnode, ptr %2, i32 0, i32 4, !dbg !2561
  br label %cond.end, !dbg !2561

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2561

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %child_ids, %cond.true ], [ @swnode_root_ids, %cond.false ], !dbg !2561
  %call3 = call i32 @ida_alloc_range(ptr noundef %cond, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17, !dbg !2561
  store i32 %call3, ptr %ret, align 4, !dbg !2562
  %3 = load i32, ptr %ret, align 4, !dbg !2563
  %cmp = icmp slt i32 %3, 0, !dbg !2565
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !2566

if.then4:                                         ; preds = %cond.end
  %4 = load ptr, ptr %swnode, align 8, !dbg !2567
  call void @kfree(ptr noundef %4) #17, !dbg !2569
  %5 = load i32, ptr %ret, align 4, !dbg !2570
  %conv = sext i32 %5 to i64, !dbg !2570
  %call5 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !2571
  store ptr %call5, ptr %retval, align 8, !dbg !2572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2572

if.end6:                                          ; preds = %cond.end
  %6 = load i32, ptr %ret, align 4, !dbg !2573
  %7 = load ptr, ptr %swnode, align 8, !dbg !2574
  %id = getelementptr inbounds %struct.swnode, ptr %7, i32 0, i32 3, !dbg !2575
  store i32 %6, ptr %id, align 8, !dbg !2576
  %8 = load ptr, ptr %node.addr, align 8, !dbg !2577
  %9 = load ptr, ptr %swnode, align 8, !dbg !2578
  %node7 = getelementptr inbounds %struct.swnode, ptr %9, i32 0, i32 2, !dbg !2579
  store ptr %8, ptr %node7, align 8, !dbg !2580
  %10 = load ptr, ptr %parent.addr, align 8, !dbg !2581
  %11 = load ptr, ptr %swnode, align 8, !dbg !2582
  %parent8 = getelementptr inbounds %struct.swnode, ptr %11, i32 0, i32 7, !dbg !2583
  store ptr %10, ptr %parent8, align 8, !dbg !2584
  %12 = load ptr, ptr @swnode_kset, align 8, !dbg !2585
  %13 = load ptr, ptr %swnode, align 8, !dbg !2586
  %kobj = getelementptr inbounds %struct.swnode, ptr %13, i32 0, i32 0, !dbg !2587
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 3, !dbg !2588
  store ptr %12, ptr %kset, align 8, !dbg !2589
  %14 = load ptr, ptr %swnode, align 8, !dbg !2590
  %fwnode = getelementptr inbounds %struct.swnode, ptr %14, i32 0, i32 1, !dbg !2591
  call void @fwnode_init(ptr noundef %fwnode, ptr noundef @software_node_ops) #17, !dbg !2592
  %15 = load ptr, ptr %swnode, align 8, !dbg !2593
  %child_ids9 = getelementptr inbounds %struct.swnode, ptr %15, i32 0, i32 4, !dbg !2594
  call void @ida_init(ptr noundef %child_ids9) #17, !dbg !2595
  %16 = load ptr, ptr %swnode, align 8, !dbg !2596
  %entry10 = getelementptr inbounds %struct.swnode, ptr %16, i32 0, i32 5, !dbg !2597
  call void @INIT_LIST_HEAD(ptr noundef %entry10) #17, !dbg !2598
  %17 = load ptr, ptr %swnode, align 8, !dbg !2599
  %children = getelementptr inbounds %struct.swnode, ptr %17, i32 0, i32 6, !dbg !2600
  call void @INIT_LIST_HEAD(ptr noundef %children) #17, !dbg !2601
  %18 = load ptr, ptr %node.addr, align 8, !dbg !2602
  %name = getelementptr inbounds %struct.software_node, ptr %18, i32 0, i32 0, !dbg !2604
  %19 = load ptr, ptr %name, align 8, !dbg !2604
  %tobool11 = icmp ne ptr %19, null, !dbg !2602
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !2605

if.then12:                                        ; preds = %if.end6
  %20 = load ptr, ptr %swnode, align 8, !dbg !2606
  %kobj13 = getelementptr inbounds %struct.swnode, ptr %20, i32 0, i32 0, !dbg !2607
  %21 = load ptr, ptr %parent.addr, align 8, !dbg !2608
  %tobool14 = icmp ne ptr %21, null, !dbg !2608
  br i1 %tobool14, label %cond.true15, label %cond.false17, !dbg !2608

cond.true15:                                      ; preds = %if.then12
  %22 = load ptr, ptr %parent.addr, align 8, !dbg !2609
  %kobj16 = getelementptr inbounds %struct.swnode, ptr %22, i32 0, i32 0, !dbg !2610
  br label %cond.end18, !dbg !2608

cond.false17:                                     ; preds = %if.then12
  br label %cond.end18, !dbg !2608

cond.end18:                                       ; preds = %cond.false17, %cond.true15
  %cond19 = phi ptr [ %kobj16, %cond.true15 ], [ null, %cond.false17 ], !dbg !2608
  %23 = load ptr, ptr %node.addr, align 8, !dbg !2611
  %name20 = getelementptr inbounds %struct.software_node, ptr %23, i32 0, i32 0, !dbg !2612
  %24 = load ptr, ptr %name20, align 8, !dbg !2612
  %call21 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj13, ptr noundef @software_node_type, ptr noundef %cond19, ptr noundef @.str.7, ptr noundef %24) #17, !dbg !2613
  store i32 %call21, ptr %ret, align 4, !dbg !2614
  br label %if.end31, !dbg !2615

if.else:                                          ; preds = %if.end6
  %25 = load ptr, ptr %swnode, align 8, !dbg !2616
  %kobj22 = getelementptr inbounds %struct.swnode, ptr %25, i32 0, i32 0, !dbg !2617
  %26 = load ptr, ptr %parent.addr, align 8, !dbg !2618
  %tobool23 = icmp ne ptr %26, null, !dbg !2618
  br i1 %tobool23, label %cond.true24, label %cond.false26, !dbg !2618

cond.true24:                                      ; preds = %if.else
  %27 = load ptr, ptr %parent.addr, align 8, !dbg !2619
  %kobj25 = getelementptr inbounds %struct.swnode, ptr %27, i32 0, i32 0, !dbg !2620
  br label %cond.end27, !dbg !2618

cond.false26:                                     ; preds = %if.else
  br label %cond.end27, !dbg !2618

cond.end27:                                       ; preds = %cond.false26, %cond.true24
  %cond28 = phi ptr [ %kobj25, %cond.true24 ], [ null, %cond.false26 ], !dbg !2618
  %28 = load ptr, ptr %swnode, align 8, !dbg !2621
  %id29 = getelementptr inbounds %struct.swnode, ptr %28, i32 0, i32 3, !dbg !2622
  %29 = load i32, ptr %id29, align 8, !dbg !2622
  %call30 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj22, ptr noundef @software_node_type, ptr noundef %cond28, ptr noundef @.str.8, i32 noundef %29) #17, !dbg !2623
  store i32 %call30, ptr %ret, align 4, !dbg !2624
  br label %if.end31

if.end31:                                         ; preds = %cond.end27, %cond.end18
  %30 = load i32, ptr %ret, align 4, !dbg !2625
  %tobool32 = icmp ne i32 %30, 0, !dbg !2625
  br i1 %tobool32, label %if.then33, label %if.end37, !dbg !2627

if.then33:                                        ; preds = %if.end31
  %31 = load ptr, ptr %swnode, align 8, !dbg !2628
  %kobj34 = getelementptr inbounds %struct.swnode, ptr %31, i32 0, i32 0, !dbg !2630
  call void @kobject_put(ptr noundef %kobj34) #17, !dbg !2631
  %32 = load i32, ptr %ret, align 4, !dbg !2632
  %conv35 = sext i32 %32 to i64, !dbg !2632
  %call36 = call ptr @ERR_PTR(i64 noundef %conv35) #17, !dbg !2633
  store ptr %call36, ptr %retval, align 8, !dbg !2634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2634

if.end37:                                         ; preds = %if.end31
  %33 = load i32, ptr %allocated.addr, align 4, !dbg !2635
  %34 = load ptr, ptr %swnode, align 8, !dbg !2636
  %allocated38 = getelementptr inbounds %struct.swnode, ptr %34, i32 0, i32 8, !dbg !2637
  %35 = trunc i32 %33 to i8, !dbg !2638
  %bf.load = load i8, ptr %allocated38, align 8, !dbg !2638
  %bf.value = and i8 %35, 1, !dbg !2638
  %bf.clear = and i8 %bf.load, -2, !dbg !2638
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !2638
  store i8 %bf.set, ptr %allocated38, align 8, !dbg !2638
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !2638
  %36 = load ptr, ptr %parent.addr, align 8, !dbg !2639
  %tobool39 = icmp ne ptr %36, null, !dbg !2639
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !2641

if.then40:                                        ; preds = %if.end37
  %37 = load ptr, ptr %swnode, align 8, !dbg !2642
  %entry41 = getelementptr inbounds %struct.swnode, ptr %37, i32 0, i32 5, !dbg !2643
  %38 = load ptr, ptr %parent.addr, align 8, !dbg !2644
  %children42 = getelementptr inbounds %struct.swnode, ptr %38, i32 0, i32 6, !dbg !2645
  call void @list_add_tail(ptr noundef %entry41, ptr noundef %children42) #17, !dbg !2646
  br label %if.end43, !dbg !2646

if.end43:                                         ; preds = %if.then40, %if.end37
  %39 = load ptr, ptr %swnode, align 8, !dbg !2647
  %kobj44 = getelementptr inbounds %struct.swnode, ptr %39, i32 0, i32 0, !dbg !2648
  %call45 = call i32 @kobject_uevent(ptr noundef %kobj44, i32 noundef 0) #17, !dbg !2649
  %40 = load ptr, ptr %swnode, align 8, !dbg !2650
  %fwnode46 = getelementptr inbounds %struct.swnode, ptr %40, i32 0, i32 1, !dbg !2651
  store ptr %fwnode46, ptr %retval, align 8, !dbg !2652
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2652

cleanup:                                          ; preds = %if.end43, %if.then33, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2653
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !2653
  %41 = load ptr, ptr %retval, align 8, !dbg !2653
  ret ptr %41, !dbg !2653
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fwnode_remove_software_node(ptr noundef %fwnode) #0 align 16 !dbg !2654 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !2656, metadata !DIExpression()), !dbg !2662
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !2663
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !2657, metadata !DIExpression()), !dbg !2664
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !2665
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !2658, metadata !DIExpression()), !dbg !2665
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !2665
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !2665
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !2665
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !2665
  br i1 %call, label %cond.true, label %cond.false, !dbg !2665

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2666
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2660, metadata !DIExpression()), !dbg !2666
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !2666
  store ptr %2, ptr %__mptr, align 8, !dbg !2666
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2666
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !2666
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2666
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2665
  %4 = load ptr, ptr %tmp1, align 8, !dbg !2666
  br label %cond.end, !dbg !2665

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2665

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !2665
  store ptr %cond, ptr %tmp, align 8, !dbg !2665
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !2667
  %5 = load ptr, ptr %tmp, align 8, !dbg !2665
  store ptr %5, ptr %swnode, align 8, !dbg !2664
  %6 = load ptr, ptr %swnode, align 8, !dbg !2668
  %tobool = icmp ne ptr %6, null, !dbg !2668
  br i1 %tobool, label %if.end, label %if.then, !dbg !2670

if.then:                                          ; preds = %cond.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2671

if.end:                                           ; preds = %cond.end
  %7 = load ptr, ptr %swnode, align 8, !dbg !2672
  %kobj = getelementptr inbounds %struct.swnode, ptr %7, i32 0, i32 0, !dbg !2673
  call void @kobject_put(ptr noundef %kobj) #17, !dbg !2674
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2675
  br label %cleanup, !dbg !2675

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !2675
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2675

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @fwnode_create_software_node(ptr noundef %properties, ptr noundef %parent) #0 align 16 !dbg !2676 {
entry:
  %retval = alloca ptr, align 8
  %properties.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %fwnode = alloca ptr, align 8
  %node = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %properties, ptr %properties.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %properties.addr, metadata !2680, metadata !DIExpression()), !dbg !2690
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2681, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 8, ptr %fwnode) #18, !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %fwnode, metadata !2682, metadata !DIExpression()), !dbg !2693
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2683, metadata !DIExpression()), !dbg !2695
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2685, metadata !DIExpression()), !dbg !2697
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !2698
  %call = call zeroext i1 @IS_ERR(ptr noundef %0) #17, !dbg !2700
  br i1 %call, label %if.then, label %if.end, !dbg !2701

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !2702
  %call1 = call ptr @ERR_CAST(ptr noundef %1) #17, !dbg !2703
  store ptr %call1, ptr %retval, align 8, !dbg !2704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2704

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !2705
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !2686, metadata !DIExpression()), !dbg !2705
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !2705
  store ptr %2, ptr %__to_swnode_fwnode, align 8, !dbg !2705
  %3 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !2705
  %call2 = call zeroext i1 @is_software_node(ptr noundef %3) #17, !dbg !2705
  br i1 %call2, label %cond.true, label %cond.false, !dbg !2705

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2706
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2688, metadata !DIExpression()), !dbg !2706
  %4 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !2706
  store ptr %4, ptr %__mptr, align 8, !dbg !2706
  %5 = load ptr, ptr %__mptr, align 8, !dbg !2706
  %add.ptr = getelementptr i8, ptr %5, i64 -64, !dbg !2706
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !2706
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2705
  %6 = load ptr, ptr %tmp3, align 8, !dbg !2706
  br label %cond.end, !dbg !2705

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2705

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ null, %cond.false ], !dbg !2705
  store ptr %cond, ptr %tmp, align 8, !dbg !2705
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !2707
  %7 = load ptr, ptr %tmp, align 8, !dbg !2705
  store ptr %7, ptr %p, align 8, !dbg !2708
  %8 = load ptr, ptr %parent.addr, align 8, !dbg !2709
  %tobool = icmp ne ptr %8, null, !dbg !2709
  br i1 %tobool, label %land.lhs.true, label %if.end7, !dbg !2711

land.lhs.true:                                    ; preds = %cond.end
  %9 = load ptr, ptr %p, align 8, !dbg !2712
  %tobool4 = icmp ne ptr %9, null, !dbg !2712
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2713

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call ptr @ERR_PTR(i64 noundef -22) #17, !dbg !2714
  store ptr %call6, ptr %retval, align 8, !dbg !2715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2715

if.end7:                                          ; preds = %land.lhs.true, %cond.end
  %10 = load ptr, ptr %properties.addr, align 8, !dbg !2716
  %call8 = call ptr @software_node_alloc(ptr noundef %10) #17, !dbg !2717
  store ptr %call8, ptr %node, align 8, !dbg !2718
  %11 = load ptr, ptr %node, align 8, !dbg !2719
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %11) #17, !dbg !2721
  br i1 %call9, label %if.then10, label %if.end12, !dbg !2722

if.then10:                                        ; preds = %if.end7
  %12 = load ptr, ptr %node, align 8, !dbg !2723
  %call11 = call ptr @ERR_CAST(ptr noundef %12) #17, !dbg !2724
  store ptr %call11, ptr %retval, align 8, !dbg !2725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2725

if.end12:                                         ; preds = %if.end7
  %13 = load ptr, ptr %p, align 8, !dbg !2726
  %tobool13 = icmp ne ptr %13, null, !dbg !2726
  br i1 %tobool13, label %cond.true14, label %cond.false16, !dbg !2726

cond.true14:                                      ; preds = %if.end12
  %14 = load ptr, ptr %p, align 8, !dbg !2727
  %node15 = getelementptr inbounds %struct.swnode, ptr %14, i32 0, i32 2, !dbg !2728
  %15 = load ptr, ptr %node15, align 8, !dbg !2728
  br label %cond.end17, !dbg !2726

cond.false16:                                     ; preds = %if.end12
  br label %cond.end17, !dbg !2726

cond.end17:                                       ; preds = %cond.false16, %cond.true14
  %cond18 = phi ptr [ %15, %cond.true14 ], [ null, %cond.false16 ], !dbg !2726
  %16 = load ptr, ptr %node, align 8, !dbg !2729
  %parent19 = getelementptr inbounds %struct.software_node, ptr %16, i32 0, i32 1, !dbg !2730
  store ptr %cond18, ptr %parent19, align 8, !dbg !2731
  %17 = load ptr, ptr %node, align 8, !dbg !2732
  %18 = load ptr, ptr %p, align 8, !dbg !2733
  %call20 = call ptr @swnode_register(ptr noundef %17, ptr noundef %18, i32 noundef 1) #17, !dbg !2734
  store ptr %call20, ptr %fwnode, align 8, !dbg !2735
  %19 = load ptr, ptr %fwnode, align 8, !dbg !2736
  %call21 = call zeroext i1 @IS_ERR(ptr noundef %19) #17, !dbg !2738
  br i1 %call21, label %if.then22, label %if.end23, !dbg !2739

if.then22:                                        ; preds = %cond.end17
  %20 = load ptr, ptr %node, align 8, !dbg !2740
  call void @software_node_free(ptr noundef %20) #17, !dbg !2741
  br label %if.end23, !dbg !2741

if.end23:                                         ; preds = %if.then22, %cond.end17
  %21 = load ptr, ptr %fwnode, align 8, !dbg !2742
  store ptr %21, ptr %retval, align 8, !dbg !2743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2743

cleanup:                                          ; preds = %if.end23, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 8, ptr %fwnode) #18, !dbg !2744
  %22 = load ptr, ptr %retval, align 8, !dbg !2744
  ret ptr %22, !dbg !2744
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #2 align 16 !dbg !2745 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2747, metadata !DIExpression()), !dbg !2748
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2749
  %1 = ptrtoint ptr %0 to i64, !dbg !2749
  %2 = inttoptr i64 %1 to ptr, !dbg !2749
  %3 = ptrtoint ptr %2 to i64, !dbg !2749
  %cmp = icmp uge i64 %3, -4095, !dbg !2749
  %lnot = xor i1 %cmp, true, !dbg !2749
  %lnot1 = xor i1 %lnot, true, !dbg !2749
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2749
  %conv = sext i32 %lnot.ext to i64, !dbg !2749
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2749
  %tobool = icmp ne i64 %expval, 0, !dbg !2749
  ret i1 %tobool, !dbg !2750
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_CAST(ptr noundef %ptr) #2 align 16 !dbg !2751 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2757
  ret ptr %0, !dbg !2758
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_alloc(ptr noundef %properties) #0 align 16 !dbg !2759 {
entry:
  %retval = alloca ptr, align 8
  %properties.addr = alloca ptr, align 8
  %props = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %properties, ptr %properties.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %properties.addr, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.lifetime.start.p0(i64 8, ptr %props) #18, !dbg !2767
  call void @llvm.dbg.declare(metadata ptr %props, metadata !2764, metadata !DIExpression()), !dbg !2768
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #18, !dbg !2769
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2765, metadata !DIExpression()), !dbg !2770
  %0 = load ptr, ptr %properties.addr, align 8, !dbg !2771
  %call = call ptr @property_entries_dup(ptr noundef %0) #17, !dbg !2772
  store ptr %call, ptr %props, align 8, !dbg !2773
  %1 = load ptr, ptr %props, align 8, !dbg !2774
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #17, !dbg !2776
  br i1 %call1, label %if.then, label %if.end, !dbg !2777

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %props, align 8, !dbg !2778
  %call2 = call ptr @ERR_CAST(ptr noundef %2) #17, !dbg !2779
  store ptr %call2, ptr %retval, align 8, !dbg !2780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2780

if.end:                                           ; preds = %entry
  %call3 = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #20, !dbg !2781
  store ptr %call3, ptr %node, align 8, !dbg !2782
  %3 = load ptr, ptr %node, align 8, !dbg !2783
  %tobool = icmp ne ptr %3, null, !dbg !2783
  br i1 %tobool, label %if.end6, label %if.then4, !dbg !2785

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %props, align 8, !dbg !2786
  call void @property_entries_free(ptr noundef %4) #17, !dbg !2788
  %call5 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !2789
  store ptr %call5, ptr %retval, align 8, !dbg !2790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2790

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %props, align 8, !dbg !2791
  %6 = load ptr, ptr %node, align 8, !dbg !2792
  %properties7 = getelementptr inbounds %struct.software_node, ptr %6, i32 0, i32 2, !dbg !2793
  store ptr %5, ptr %properties7, align 8, !dbg !2794
  %7 = load ptr, ptr %node, align 8, !dbg !2795
  store ptr %7, ptr %retval, align 8, !dbg !2796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2796

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #18, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %props) #18, !dbg !2797
  %8 = load ptr, ptr %retval, align 8, !dbg !2797
  ret ptr %8, !dbg !2797
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @software_node_free(ptr noundef %node) #0 align 16 !dbg !2798 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2802
  %properties = getelementptr inbounds %struct.software_node, ptr %0, i32 0, i32 2, !dbg !2803
  %1 = load ptr, ptr %properties, align 8, !dbg !2803
  call void @property_entries_free(ptr noundef %1) #17, !dbg !2804
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2805
  call void @kfree(ptr noundef %2) #17, !dbg !2806
  ret void, !dbg !2807
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2808 dso_local void @kobject_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @device_add_software_node(ptr noundef %dev, ptr noundef %node) #0 align 16 !dbg !2809 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2813, metadata !DIExpression()), !dbg !2817
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2814, metadata !DIExpression()), !dbg !2818
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !2819
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !2815, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2816, metadata !DIExpression()), !dbg !2822
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2823
  %call = call ptr @dev_to_swnode(ptr noundef %0) #17, !dbg !2825
  %tobool = icmp ne ptr %call, null, !dbg !2825
  br i1 %tobool, label %if.then, label %if.end, !dbg !2826

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !2827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2827

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !2828
  %call1 = call ptr @software_node_to_swnode(ptr noundef %1) #17, !dbg !2829
  store ptr %call1, ptr %swnode, align 8, !dbg !2830
  %2 = load ptr, ptr %swnode, align 8, !dbg !2831
  %tobool2 = icmp ne ptr %2, null, !dbg !2831
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !2833

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %swnode, align 8, !dbg !2834
  %kobj = getelementptr inbounds %struct.swnode, ptr %3, i32 0, i32 0, !dbg !2836
  %call4 = call ptr @kobject_get(ptr noundef %kobj) #17, !dbg !2837
  br label %if.end10, !dbg !2838

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr %node.addr, align 8, !dbg !2839
  %call5 = call i32 @software_node_register(ptr noundef %4) #17, !dbg !2841
  store i32 %call5, ptr %ret, align 4, !dbg !2842
  %5 = load i32, ptr %ret, align 4, !dbg !2843
  %tobool6 = icmp ne i32 %5, 0, !dbg !2843
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2845

if.then7:                                         ; preds = %if.else
  %6 = load i32, ptr %ret, align 4, !dbg !2846
  store i32 %6, ptr %retval, align 4, !dbg !2847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2847

if.end8:                                          ; preds = %if.else
  %7 = load ptr, ptr %node.addr, align 8, !dbg !2848
  %call9 = call ptr @software_node_to_swnode(ptr noundef %7) #17, !dbg !2849
  store ptr %call9, ptr %swnode, align 8, !dbg !2850
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.then3
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2851
  %9 = load ptr, ptr %swnode, align 8, !dbg !2852
  %fwnode = getelementptr inbounds %struct.swnode, ptr %9, i32 0, i32 1, !dbg !2853
  call void @set_secondary_fwnode(ptr noundef %8, ptr noundef %fwnode) #17, !dbg !2854
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2855
  %call11 = call i32 @device_is_registered(ptr noundef %10) #17, !dbg !2857
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2857
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !2858

if.then13:                                        ; preds = %if.end10
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !2859
  call void @software_node_notify(ptr noundef %11) #17, !dbg !2860
  br label %if.end14, !dbg !2860

if.end14:                                         ; preds = %if.then13, %if.end10
  store i32 0, ptr %retval, align 4, !dbg !2861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2861

cleanup:                                          ; preds = %if.end14, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2862
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !2862
  %12 = load i32, ptr %retval, align 4, !dbg !2862
  ret i32 %12, !dbg !2862
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_to_swnode(ptr noundef %dev) #2 align 16 !dbg !2863 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %fwnode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2867, metadata !DIExpression()), !dbg !2873
  call void @llvm.lifetime.start.p0(i64 8, ptr %fwnode) #18, !dbg !2874
  call void @llvm.dbg.declare(metadata ptr %fwnode, metadata !2868, metadata !DIExpression()), !dbg !2875
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2876
  %call = call ptr @__dev_fwnode(ptr noundef %0) #17, !dbg !2876
  store ptr %call, ptr %fwnode, align 8, !dbg !2875
  %1 = load ptr, ptr %fwnode, align 8, !dbg !2877
  %tobool = icmp ne ptr %1, null, !dbg !2877
  br i1 %tobool, label %if.end, label %if.then, !dbg !2879

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2880

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %fwnode, align 8, !dbg !2881
  %call1 = call zeroext i1 @is_software_node(ptr noundef %2) #17, !dbg !2883
  br i1 %call1, label %if.end3, label %if.then2, !dbg !2884

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %fwnode, align 8, !dbg !2885
  %secondary = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 0, !dbg !2886
  %4 = load ptr, ptr %secondary, align 8, !dbg !2886
  store ptr %4, ptr %fwnode, align 8, !dbg !2887
  br label %if.end3, !dbg !2888

if.end3:                                          ; preds = %if.then2, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !2889
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !2869, metadata !DIExpression()), !dbg !2889
  %5 = load ptr, ptr %fwnode, align 8, !dbg !2889
  store ptr %5, ptr %__to_swnode_fwnode, align 8, !dbg !2889
  %6 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !2889
  %call4 = call zeroext i1 @is_software_node(ptr noundef %6) #17, !dbg !2889
  br i1 %call4, label %cond.true, label %cond.false, !dbg !2889

cond.true:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !2890
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2871, metadata !DIExpression()), !dbg !2890
  %7 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !2890
  store ptr %7, ptr %__mptr, align 8, !dbg !2890
  %8 = load ptr, ptr %__mptr, align 8, !dbg !2890
  %add.ptr = getelementptr i8, ptr %8, i64 -64, !dbg !2890
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !2890
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !2889
  %9 = load ptr, ptr %tmp5, align 8, !dbg !2890
  br label %cond.end, !dbg !2889

cond.false:                                       ; preds = %if.end3
  br label %cond.end, !dbg !2889

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ null, %cond.false ], !dbg !2889
  store ptr %cond, ptr %tmp, align 8, !dbg !2889
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !2891
  %10 = load ptr, ptr %tmp, align 8, !dbg !2889
  store ptr %10, ptr %retval, align 8, !dbg !2892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2892

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fwnode) #18, !dbg !2893
  %11 = load ptr, ptr %retval, align 8, !dbg !2893
  ret ptr %11, !dbg !2893
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2894 dso_local void @set_secondary_fwnode(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @device_is_registered(ptr noundef %dev) #2 align 16 !dbg !2897 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2899, metadata !DIExpression()), !dbg !2900
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2901
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2902
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 7, !dbg !2903
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !2903
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !2903
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2903
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2903
  ret i32 %bf.cast, !dbg !2904
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @software_node_notify(ptr noundef %dev) #0 align 16 !dbg !2905 {
entry:
  %dev.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2907, metadata !DIExpression()), !dbg !2910
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !2911
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !2908, metadata !DIExpression()), !dbg !2912
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !2913
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2909, metadata !DIExpression()), !dbg !2914
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2915
  %call = call ptr @dev_to_swnode(ptr noundef %0) #17, !dbg !2916
  store ptr %call, ptr %swnode, align 8, !dbg !2917
  %1 = load ptr, ptr %swnode, align 8, !dbg !2918
  %tobool = icmp ne ptr %1, null, !dbg !2918
  br i1 %tobool, label %if.end, label %if.then, !dbg !2920

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2921

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2922
  %kobj = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 0, !dbg !2923
  %3 = load ptr, ptr %swnode, align 8, !dbg !2924
  %kobj1 = getelementptr inbounds %struct.swnode, ptr %3, i32 0, i32 0, !dbg !2925
  %call2 = call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %kobj1, ptr noundef @.str) #17, !dbg !2926
  store i32 %call2, ptr %ret, align 4, !dbg !2927
  %4 = load i32, ptr %ret, align 4, !dbg !2928
  %tobool3 = icmp ne i32 %4, 0, !dbg !2928
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2930

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2931

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %swnode, align 8, !dbg !2932
  %kobj6 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 0, !dbg !2933
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2934
  %kobj7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 0, !dbg !2935
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2936
  %call8 = call ptr @dev_name(ptr noundef %7) #17, !dbg !2937
  %call9 = call i32 @sysfs_create_link(ptr noundef %kobj6, ptr noundef %kobj7, ptr noundef %call8) #17, !dbg !2938
  store i32 %call9, ptr %ret, align 4, !dbg !2939
  %8 = load i32, ptr %ret, align 4, !dbg !2940
  %tobool10 = icmp ne i32 %8, 0, !dbg !2940
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !2942

if.then11:                                        ; preds = %if.end5
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2943
  %kobj12 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 0, !dbg !2945
  call void @sysfs_remove_link(ptr noundef %kobj12, ptr noundef @.str) #17, !dbg !2946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2947

if.end13:                                         ; preds = %if.end5
  %10 = load ptr, ptr %swnode, align 8, !dbg !2948
  %kobj14 = getelementptr inbounds %struct.swnode, ptr %10, i32 0, i32 0, !dbg !2949
  %call15 = call ptr @kobject_get(ptr noundef %kobj14) #17, !dbg !2950
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2951
  br label %cleanup, !dbg !2951

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !2951
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !2951
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2951

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @device_remove_software_node(ptr noundef %dev) #0 align 16 !dbg !2952 {
entry:
  %dev.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !2957
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !2955, metadata !DIExpression()), !dbg !2958
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2959
  %call = call ptr @dev_to_swnode(ptr noundef %0) #17, !dbg !2960
  store ptr %call, ptr %swnode, align 8, !dbg !2961
  %1 = load ptr, ptr %swnode, align 8, !dbg !2962
  %tobool = icmp ne ptr %1, null, !dbg !2962
  br i1 %tobool, label %if.end, label %if.then, !dbg !2964

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2965

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2966
  %call1 = call i32 @device_is_registered(ptr noundef %2) #17, !dbg !2968
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2968
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2969

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2970
  call void @software_node_notify_remove(ptr noundef %3) #17, !dbg !2971
  br label %if.end4, !dbg !2971

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2972
  call void @set_secondary_fwnode(ptr noundef %4, ptr noundef null) #17, !dbg !2973
  %5 = load ptr, ptr %swnode, align 8, !dbg !2974
  %kobj = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 0, !dbg !2975
  call void @kobject_put(ptr noundef %kobj) #17, !dbg !2976
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2977
  br label %cleanup, !dbg !2977

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !2977
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2977

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @software_node_notify_remove(ptr noundef %dev) #0 align 16 !dbg !2978 {
entry:
  %dev.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2980, metadata !DIExpression()), !dbg !2982
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !2983
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !2981, metadata !DIExpression()), !dbg !2984
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2985
  %call = call ptr @dev_to_swnode(ptr noundef %0) #17, !dbg !2986
  store ptr %call, ptr %swnode, align 8, !dbg !2987
  %1 = load ptr, ptr %swnode, align 8, !dbg !2988
  %tobool = icmp ne ptr %1, null, !dbg !2988
  br i1 %tobool, label %if.end, label %if.then, !dbg !2990

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2991

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %swnode, align 8, !dbg !2992
  %kobj = getelementptr inbounds %struct.swnode, ptr %2, i32 0, i32 0, !dbg !2993
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2994
  %call1 = call ptr @dev_name(ptr noundef %3) #17, !dbg !2995
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef %call1) #17, !dbg !2996
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2997
  %kobj2 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !2998
  call void @sysfs_remove_link(ptr noundef %kobj2, ptr noundef @.str) #17, !dbg !2999
  %5 = load ptr, ptr %swnode, align 8, !dbg !3000
  %kobj3 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 0, !dbg !3001
  call void @kobject_put(ptr noundef %kobj3) #17, !dbg !3002
  %6 = load ptr, ptr %swnode, align 8, !dbg !3003
  %managed = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 8, !dbg !3005
  %bf.load = load i8, ptr %managed, align 8, !dbg !3005
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !3005
  %bf.clear = and i8 %bf.lshr, 1, !dbg !3005
  %bf.cast = zext i8 %bf.clear to i32, !dbg !3005
  %tobool4 = icmp ne i32 %bf.cast, 0, !dbg !3003
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !3006

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !3007
  call void @set_secondary_fwnode(ptr noundef %7, ptr noundef null) #17, !dbg !3009
  %8 = load ptr, ptr %swnode, align 8, !dbg !3010
  %kobj6 = getelementptr inbounds %struct.swnode, ptr %8, i32 0, i32 0, !dbg !3011
  call void @kobject_put(ptr noundef %kobj6) #17, !dbg !3012
  br label %if.end7, !dbg !3013

if.end7:                                          ; preds = %if.then5, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3014
  br label %cleanup, !dbg !3014

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3014
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3014

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @device_create_managed_software_node(ptr noundef %dev, ptr noundef %properties, ptr noundef %parent) #0 align 16 !dbg !3015 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %properties.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %fwnode = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3019, metadata !DIExpression()), !dbg !3028
  store ptr %properties, ptr %properties.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %properties.addr, metadata !3020, metadata !DIExpression()), !dbg !3029
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !3021, metadata !DIExpression()), !dbg !3030
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !3031
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3022, metadata !DIExpression()), !dbg !3032
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !3033
  %call = call ptr @software_node_fwnode(ptr noundef %0) #17, !dbg !3034
  store ptr %call, ptr %p, align 8, !dbg !3032
  call void @llvm.lifetime.start.p0(i64 8, ptr %fwnode) #18, !dbg !3035
  call void @llvm.dbg.declare(metadata ptr %fwnode, metadata !3023, metadata !DIExpression()), !dbg !3036
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !3037
  %tobool = icmp ne ptr %1, null, !dbg !3037
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3039

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %p, align 8, !dbg !3040
  %tobool1 = icmp ne ptr %2, null, !dbg !3040
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3041

if.then:                                          ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !3042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3042

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %properties.addr, align 8, !dbg !3043
  %4 = load ptr, ptr %p, align 8, !dbg !3044
  %call2 = call ptr @fwnode_create_software_node(ptr noundef %3, ptr noundef %4) #17, !dbg !3045
  store ptr %call2, ptr %fwnode, align 8, !dbg !3046
  %5 = load ptr, ptr %fwnode, align 8, !dbg !3047
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %5) #17, !dbg !3049
  br i1 %call3, label %if.then4, label %if.end6, !dbg !3050

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %fwnode, align 8, !dbg !3051
  %call5 = call i64 @PTR_ERR(ptr noundef %6) #17, !dbg !3052
  %conv = trunc i64 %call5 to i32, !dbg !3052
  store i32 %conv, ptr %retval, align 4, !dbg !3053
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3053

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3054
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3024, metadata !DIExpression()), !dbg !3054
  %7 = load ptr, ptr %fwnode, align 8, !dbg !3054
  store ptr %7, ptr %__to_swnode_fwnode, align 8, !dbg !3054
  %8 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3054
  %call7 = call zeroext i1 @is_software_node(ptr noundef %8) #17, !dbg !3054
  br i1 %call7, label %cond.true, label %cond.false, !dbg !3054

cond.true:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3055
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3026, metadata !DIExpression()), !dbg !3055
  %9 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3055
  store ptr %9, ptr %__mptr, align 8, !dbg !3055
  %10 = load ptr, ptr %__mptr, align 8, !dbg !3055
  %add.ptr = getelementptr i8, ptr %10, i64 -64, !dbg !3055
  store ptr %add.ptr, ptr %tmp9, align 8, !dbg !3055
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3054
  %11 = load ptr, ptr %tmp9, align 8, !dbg !3055
  br label %cond.end, !dbg !3054

cond.false:                                       ; preds = %if.end6
  br label %cond.end, !dbg !3054

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %11, %cond.true ], [ null, %cond.false ], !dbg !3054
  store ptr %cond, ptr %tmp, align 8, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3056
  %12 = load ptr, ptr %tmp, align 8, !dbg !3054
  %managed = getelementptr inbounds %struct.swnode, ptr %12, i32 0, i32 8, !dbg !3057
  %bf.load = load i8, ptr %managed, align 8, !dbg !3058
  %bf.clear = and i8 %bf.load, -3, !dbg !3058
  %bf.set = or i8 %bf.clear, 2, !dbg !3058
  store i8 %bf.set, ptr %managed, align 8, !dbg !3058
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !3059
  %14 = load ptr, ptr %fwnode, align 8, !dbg !3060
  call void @set_secondary_fwnode(ptr noundef %13, ptr noundef %14) #17, !dbg !3061
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !3062
  %call10 = call i32 @device_is_registered(ptr noundef %15) #17, !dbg !3064
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3064
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3065

if.then12:                                        ; preds = %cond.end
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !3066
  call void @software_node_notify(ptr noundef %16) #17, !dbg !3067
  br label %if.end13, !dbg !3067

if.end13:                                         ; preds = %if.then12, %cond.end
  store i32 0, ptr %retval, align 4, !dbg !3068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3068

cleanup:                                          ; preds = %if.end13, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fwnode) #18, !dbg !3069
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !3069
  %17 = load i32, ptr %retval, align 4, !dbg !3069
  ret i32 %17, !dbg !3069
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #2 align 16 !dbg !3070 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3074, metadata !DIExpression()), !dbg !3075
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !3076
  %1 = ptrtoint ptr %0 to i64, !dbg !3077
  ret i64 %1, !dbg !3078
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3079 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #2 align 16 !dbg !3082 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3086, metadata !DIExpression()), !dbg !3087
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3088
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !3090
  %1 = load ptr, ptr %init_name, align 8, !dbg !3090
  %tobool = icmp ne ptr %1, null, !dbg !3088
  br i1 %tobool, label %if.then, label %if.end, !dbg !3091

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !3092
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !3093
  %3 = load ptr, ptr %init_name1, align 8, !dbg !3093
  store ptr %3, ptr %retval, align 8, !dbg !3094
  br label %return, !dbg !3094

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !3095
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !3096
  %call = call ptr @kobject_name(ptr noundef %kobj) #17, !dbg !3097
  store ptr %call, ptr %retval, align 8, !dbg !3098
  br label %return, !dbg !3098

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !3099
  ret ptr %5, !dbg !3099
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3100 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #5

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_swnode__222_1109_software_node_init2() #7 section ".init.text" align 16 !dbg !3103 {
entry:
  %call = call i32 @software_node_init() #21, !dbg !3104
  ret i32 %call, !dbg !3104
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @software_node_init() #7 section ".init.text" align 16 !dbg !3105 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @kernel_kobj, align 8, !dbg !3106
  %call = call ptr @kset_create_and_add(ptr noundef @.str.9, ptr noundef null, ptr noundef %0) #17, !dbg !3107
  store ptr %call, ptr @swnode_kset, align 8, !dbg !3108
  %1 = load ptr, ptr @swnode_kset, align 8, !dbg !3109
  %tobool = icmp ne ptr %1, null, !dbg !3109
  br i1 %tobool, label %if.end, label %if.then, !dbg !3111

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !3112
  br label %return, !dbg !3112

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3113
  br label %return, !dbg !3113

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3114
  ret i32 %2, !dbg !3114
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @software_node_exit() #7 section ".exit.text" align 16 !dbg !3115 {
entry:
  call void @ida_destroy(ptr noundef @swnode_root_ids) #17, !dbg !3116
  %0 = load ptr, ptr @swnode_kset, align 8, !dbg !3117
  call void @kset_unregister(ptr noundef %0) #17, !dbg !3118
  ret void, !dbg !3119
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3120 dso_local void @ida_destroy(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3124 dso_local void @kset_unregister(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !3127 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3129, metadata !DIExpression()), !dbg !3133
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3130, metadata !DIExpression()), !dbg !3134
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3131, metadata !DIExpression()), !dbg !3135
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #18, !dbg !3136
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !3132, metadata !DIExpression()), !dbg !3137
  %0 = load i64, ptr %n.addr, align 8, !dbg !3138
  %1 = load i64, ptr %size.addr, align 8, !dbg !3138
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !3138
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !3138
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !3138
  store i64 %4, ptr %bytes, align 8, !dbg !3138
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !3138
  %lnot = xor i1 %call, true, !dbg !3138
  %lnot1 = xor i1 %lnot, true, !dbg !3138
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3138
  %conv = sext i32 %lnot.ext to i64, !dbg !3138
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3138
  %tobool = icmp ne i64 %expval, 0, !dbg !3138
  br i1 %tobool, label %if.then, label %if.end, !dbg !3140

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3141

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !3142
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !3144
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !3145

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !3146
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3147
  br i1 %8, label %if.then2, label %if.end4, !dbg !3148

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !3149
  %10 = load i32, ptr %flags.addr, align 4, !dbg !3150
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !3151
  store ptr %call3, ptr %retval, align 8, !dbg !3152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3152

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !3153
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3154
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !3155
  store ptr %call5, ptr %retval, align 8, !dbg !3156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3156

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #18, !dbg !3157
  %13 = load ptr, ptr %retval, align 8, !dbg !3157
  ret ptr %13, !dbg !3157
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #2 align 16 !dbg !3158 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !3165, !range !2124, !noundef !356
  %tobool = trunc i8 %0 to i1, !dbg !3165
  %lnot = xor i1 %tobool, true, !dbg !3165
  %lnot1 = xor i1 %lnot, true, !dbg !3165
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3165
  %conv = sext i32 %lnot.ext to i64, !dbg !3165
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3165
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3165
  ret i1 %tobool2, !dbg !3166
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !3167 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3171, metadata !DIExpression()), !dbg !3176
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3172, metadata !DIExpression()), !dbg !3177
  %0 = load i64, ptr %size.addr, align 8, !dbg !3178
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3179
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3180

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3181
  %tobool = icmp ne i64 %2, 0, !dbg !3181
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3182

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !3183
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3173, metadata !DIExpression()), !dbg !3184
  %3 = load i64, ptr %size.addr, align 8, !dbg !3185
  %cmp = icmp ugt i64 %3, 8192, !dbg !3187
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3188

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3189
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3190
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !3191
  store ptr %call, ptr %retval, align 8, !dbg !3192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3192

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3193
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !3193
  store i32 %call2, ptr %index, align 4, !dbg !3194
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3195
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3196
  %9 = ptrtoint ptr %8 to i64, !dbg !3196
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !3197
  %idxprom = zext i32 %call3 to i64, !dbg !3198
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3198
  %10 = load i32, ptr %index, align 4, !dbg !3199
  %idxprom4 = zext i32 %10 to i64, !dbg !3198
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3198
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3198
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3200
  %13 = load i64, ptr %size.addr, align 8, !dbg !3201
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !3202
  store ptr %call6, ptr %retval, align 8, !dbg !3203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3203

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !3204
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3205
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3206
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !3207
  store ptr %call8, ptr %retval, align 8, !dbg !3208
  br label %return, !dbg !3208

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3209
  ret ptr %16, !dbg !3209
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3210 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3211 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !3212 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3216, metadata !DIExpression()), !dbg !3218
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3217, metadata !DIExpression()), !dbg !3219
  %0 = load i64, ptr %size.addr, align 8, !dbg !3220
  %tobool = icmp ne i64 %0, 0, !dbg !3220
  br i1 %tobool, label %if.end, label %if.then, !dbg !3222

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3223
  br label %return, !dbg !3223

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3224
  %cmp = icmp ule i64 %1, 8, !dbg !3226
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3227

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3228
  br label %return, !dbg !3228

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3229
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3231
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3232

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3233
  %cmp4 = icmp ule i64 %3, 96, !dbg !3234
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3235

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3236
  br label %return, !dbg !3236

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3237
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3239
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3240

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3241
  %cmp9 = icmp ule i64 %5, 192, !dbg !3242
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3243

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3244
  br label %return, !dbg !3244

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3245
  %cmp12 = icmp ule i64 %6, 8, !dbg !3247
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3248

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3249
  br label %return, !dbg !3249

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3250
  %cmp15 = icmp ule i64 %7, 16, !dbg !3252
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3253

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3254
  br label %return, !dbg !3254

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3255
  %cmp18 = icmp ule i64 %8, 32, !dbg !3257
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3258

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3259
  br label %return, !dbg !3259

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3260
  %cmp21 = icmp ule i64 %9, 64, !dbg !3262
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3263

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3264
  br label %return, !dbg !3264

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3265
  %cmp24 = icmp ule i64 %10, 128, !dbg !3267
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3268

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3269
  br label %return, !dbg !3269

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3270
  %cmp27 = icmp ule i64 %11, 256, !dbg !3272
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3273

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3274
  br label %return, !dbg !3274

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3275
  %cmp30 = icmp ule i64 %12, 512, !dbg !3277
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3278

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3279
  br label %return, !dbg !3279

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3280
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3282
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3283

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3284
  br label %return, !dbg !3284

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3285
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3287
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3288

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3289
  br label %return, !dbg !3289

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3290
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3292
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3293

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3294
  br label %return, !dbg !3294

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3295
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3297
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3298

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3299
  br label %return, !dbg !3299

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3300
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3302
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3303

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3304
  br label %return, !dbg !3304

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3305
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3307
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3308

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3309
  br label %return, !dbg !3309

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3310
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3312
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3313

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3314
  br label %return, !dbg !3314

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3315
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3317
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3318

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3319
  br label %return, !dbg !3319

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3320
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3322
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3323

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3324
  br label %return, !dbg !3324

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3325
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3327
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3328

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3329
  br label %return, !dbg !3329

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3330
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3332
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3333

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3334
  br label %return, !dbg !3334

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3335
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3337
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3338

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3339
  br label %return, !dbg !3339

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3340, !range !2124, !noundef !356
  %tobool69 = trunc i8 %25 to i1, !dbg !3340
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3342

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3343

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #23, !dbg !3344, !srcloc !3347
  unreachable, !dbg !3344

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3348

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3349

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3350

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3352

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3350

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #18, !dbg !3354, !srcloc !3356
  br label %do.end75, !dbg !3354

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3350

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3357
  br label %return, !dbg !3357

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3358
  ret i32 %26, !dbg !3358
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3359 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !3365 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3369, metadata !DIExpression()), !dbg !3371
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3370, metadata !DIExpression()), !dbg !3372
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3373
  %and = and i32 %0, 17, !dbg !3373
  %cmp = icmp eq i32 %and, 0, !dbg !3373
  %lnot = xor i1 %cmp, true, !dbg !3373
  %lnot1 = xor i1 %lnot, true, !dbg !3373
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3373
  %conv = sext i32 %lnot.ext to i64, !dbg !3373
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3373
  %tobool = icmp ne i64 %expval, 0, !dbg !3373
  br i1 %tobool, label %if.then, label %if.end, !dbg !3375

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3376
  br label %return, !dbg !3376

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3377
  %and2 = and i32 %1, 1, !dbg !3379
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3379
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3380

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3381
  br label %return, !dbg !3381

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3382
  br label %return, !dbg !3382

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3384
  ret i32 %2, !dbg !3384
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3385 dso_local void @__compiletime_assert_204() #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @property_get_pointer(ptr noundef %prop) #0 align 16 !dbg !3386 {
entry:
  %retval = alloca ptr, align 8
  %prop.addr = alloca ptr, align 8
  store ptr %prop, ptr %prop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prop.addr, metadata !3390, metadata !DIExpression()), !dbg !3391
  %0 = load ptr, ptr %prop.addr, align 8, !dbg !3392
  %length = getelementptr inbounds %struct.property_entry, ptr %0, i32 0, i32 1, !dbg !3394
  %1 = load i64, ptr %length, align 8, !dbg !3394
  %tobool = icmp ne i64 %1, 0, !dbg !3392
  br i1 %tobool, label %if.end, label %if.then, !dbg !3395

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3396
  br label %return, !dbg !3396

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %prop.addr, align 8, !dbg !3397
  %is_inline = getelementptr inbounds %struct.property_entry, ptr %2, i32 0, i32 2, !dbg !3398
  %3 = load i8, ptr %is_inline, align 8, !dbg !3398, !range !2124, !noundef !356
  %tobool1 = trunc i8 %3 to i1, !dbg !3398
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !3397

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %prop.addr, align 8, !dbg !3399
  %5 = getelementptr inbounds %struct.property_entry, ptr %4, i32 0, i32 4, !dbg !3400
  br label %cond.end, !dbg !3397

cond.false:                                       ; preds = %if.end
  %6 = load ptr, ptr %prop.addr, align 8, !dbg !3401
  %7 = getelementptr inbounds %struct.property_entry, ptr %6, i32 0, i32 4, !dbg !3402
  %8 = load ptr, ptr %7, align 8, !dbg !3402
  br label %cond.end, !dbg !3397

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ %8, %cond.false ], !dbg !3397
  store ptr %cond, ptr %retval, align 8, !dbg !3403
  br label %return, !dbg !3403

return:                                           ; preds = %cond.end, %if.then
  %9 = load ptr, ptr %retval, align 8, !dbg !3404
  ret ptr %9, !dbg !3404
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @property_copy_string_array(ptr noundef %dst_ptr, ptr noundef %src_ptr, i64 noundef %nval) #0 align 16 !dbg !3405 {
entry:
  %retval = alloca i1, align 1
  %dst_ptr.addr = alloca ptr, align 8
  %src_ptr.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst_ptr, ptr %dst_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst_ptr.addr, metadata !3409, metadata !DIExpression()), !dbg !3413
  store ptr %src_ptr, ptr %src_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_ptr.addr, metadata !3410, metadata !DIExpression()), !dbg !3414
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !3411, metadata !DIExpression()), !dbg !3415
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !3416
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3412, metadata !DIExpression()), !dbg !3417
  store i32 0, ptr %i, align 4, !dbg !3418
  br label %for.cond, !dbg !3420

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !3421
  %conv = sext i32 %0 to i64, !dbg !3421
  %1 = load i64, ptr %nval.addr, align 8, !dbg !3423
  %cmp = icmp ult i64 %conv, %1, !dbg !3424
  br i1 %cmp, label %for.body, label %for.end, !dbg !3425

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %src_ptr.addr, align 8, !dbg !3426
  %3 = load i32, ptr %i, align 4, !dbg !3428
  %idxprom = sext i32 %3 to i64, !dbg !3426
  %arrayidx = getelementptr ptr, ptr %2, i64 %idxprom, !dbg !3426
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !3426
  %call = call noalias ptr @kstrdup(ptr noundef %4, i32 noundef 3264) #17, !dbg !3429
  %5 = load ptr, ptr %dst_ptr.addr, align 8, !dbg !3430
  %6 = load i32, ptr %i, align 4, !dbg !3431
  %idxprom2 = sext i32 %6 to i64, !dbg !3430
  %arrayidx3 = getelementptr ptr, ptr %5, i64 %idxprom2, !dbg !3430
  store ptr %call, ptr %arrayidx3, align 8, !dbg !3432
  %7 = load ptr, ptr %dst_ptr.addr, align 8, !dbg !3433
  %8 = load i32, ptr %i, align 4, !dbg !3435
  %idxprom4 = sext i32 %8 to i64, !dbg !3433
  %arrayidx5 = getelementptr ptr, ptr %7, i64 %idxprom4, !dbg !3433
  %9 = load ptr, ptr %arrayidx5, align 8, !dbg !3433
  %tobool = icmp ne ptr %9, null, !dbg !3433
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3436

land.lhs.true:                                    ; preds = %for.body
  %10 = load ptr, ptr %src_ptr.addr, align 8, !dbg !3437
  %11 = load i32, ptr %i, align 4, !dbg !3438
  %idxprom6 = sext i32 %11 to i64, !dbg !3437
  %arrayidx7 = getelementptr ptr, ptr %10, i64 %idxprom6, !dbg !3437
  %12 = load ptr, ptr %arrayidx7, align 8, !dbg !3437
  %tobool8 = icmp ne ptr %12, null, !dbg !3437
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3439

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond, !dbg !3440

while.cond:                                       ; preds = %while.body, %if.then
  %13 = load i32, ptr %i, align 4, !dbg !3442
  %dec = add i32 %13, -1, !dbg !3442
  store i32 %dec, ptr %i, align 4, !dbg !3442
  %cmp9 = icmp sge i32 %dec, 0, !dbg !3443
  br i1 %cmp9, label %while.body, label %while.end, !dbg !3440

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %dst_ptr.addr, align 8, !dbg !3444
  %15 = load i32, ptr %i, align 4, !dbg !3445
  %idxprom11 = sext i32 %15 to i64, !dbg !3444
  %arrayidx12 = getelementptr ptr, ptr %14, i64 %idxprom11, !dbg !3444
  %16 = load ptr, ptr %arrayidx12, align 8, !dbg !3444
  call void @kfree(ptr noundef %16) #17, !dbg !3446
  br label %while.cond, !dbg !3440, !llvm.loop !3447

while.end:                                        ; preds = %while.cond
  store i1 false, ptr %retval, align 1, !dbg !3449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3449

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3450

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !dbg !3451
  %inc = add i32 %17, 1, !dbg !3451
  store i32 %inc, ptr %i, align 4, !dbg !3451
  br label %for.cond, !dbg !3452, !llvm.loop !3453

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !3455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3455

cleanup:                                          ; preds = %for.end, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !3456
  %18 = load i1, ptr %retval, align 1, !dbg !3456
  ret i1 %18, !dbg !3456
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3457 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_get(ptr noundef %fwnode) #0 align 16 !dbg !3460 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3462, metadata !DIExpression()), !dbg !3468
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3469
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3463, metadata !DIExpression()), !dbg !3470
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3471
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3464, metadata !DIExpression()), !dbg !3471
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3471
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3471
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3471
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3471
  br i1 %call, label %cond.true, label %cond.false, !dbg !3471

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3472
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3466, metadata !DIExpression()), !dbg !3472
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3472
  store ptr %2, ptr %__mptr, align 8, !dbg !3472
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3472
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3472
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3472
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3471
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3472
  br label %cond.end, !dbg !3471

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3471

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3471
  store ptr %cond, ptr %tmp, align 8, !dbg !3471
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3473
  %5 = load ptr, ptr %tmp, align 8, !dbg !3471
  store ptr %5, ptr %swnode, align 8, !dbg !3470
  %6 = load ptr, ptr %swnode, align 8, !dbg !3474
  %kobj = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 0, !dbg !3475
  %call2 = call ptr @kobject_get(ptr noundef %kobj) #17, !dbg !3476
  %7 = load ptr, ptr %swnode, align 8, !dbg !3477
  %fwnode3 = getelementptr inbounds %struct.swnode, ptr %7, i32 0, i32 1, !dbg !3478
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3479
  ret ptr %fwnode3, !dbg !3480
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @software_node_put(ptr noundef %fwnode) #0 align 16 !dbg !3481 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3483, metadata !DIExpression()), !dbg !3489
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3490
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3484, metadata !DIExpression()), !dbg !3491
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3492
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3485, metadata !DIExpression()), !dbg !3492
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3492
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3492
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3492
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3492
  br i1 %call, label %cond.true, label %cond.false, !dbg !3492

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3493
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3487, metadata !DIExpression()), !dbg !3493
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3493
  store ptr %2, ptr %__mptr, align 8, !dbg !3493
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3493
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3493
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3493
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3492
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3493
  br label %cond.end, !dbg !3492

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3492

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3492
  store ptr %cond, ptr %tmp, align 8, !dbg !3492
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3494
  %5 = load ptr, ptr %tmp, align 8, !dbg !3492
  store ptr %5, ptr %swnode, align 8, !dbg !3491
  %6 = load ptr, ptr %swnode, align 8, !dbg !3495
  %kobj = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 0, !dbg !3496
  call void @kobject_put(ptr noundef %kobj) #17, !dbg !3497
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3498
  ret void, !dbg !3498
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @software_node_property_present(ptr noundef %fwnode, ptr noundef %propname) #0 align 16 !dbg !3499 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3501, metadata !DIExpression()), !dbg !3508
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !3502, metadata !DIExpression()), !dbg !3509
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3510
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3503, metadata !DIExpression()), !dbg !3511
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3504, metadata !DIExpression()), !dbg !3512
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3512
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3512
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3512
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3512
  br i1 %call, label %cond.true, label %cond.false, !dbg !3512

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3513
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3506, metadata !DIExpression()), !dbg !3513
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3513
  store ptr %2, ptr %__mptr, align 8, !dbg !3513
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3513
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3513
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3513
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3512
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3513
  br label %cond.end, !dbg !3512

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3512

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3512
  store ptr %cond, ptr %tmp, align 8, !dbg !3512
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3514
  %5 = load ptr, ptr %tmp, align 8, !dbg !3512
  store ptr %5, ptr %swnode, align 8, !dbg !3511
  %6 = load ptr, ptr %swnode, align 8, !dbg !3515
  %node = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 2, !dbg !3516
  %7 = load ptr, ptr %node, align 8, !dbg !3516
  %properties = getelementptr inbounds %struct.software_node, ptr %7, i32 0, i32 2, !dbg !3517
  %8 = load ptr, ptr %properties, align 8, !dbg !3517
  %9 = load ptr, ptr %propname.addr, align 8, !dbg !3518
  %call2 = call ptr @property_entry_get(ptr noundef %8, ptr noundef %9) #17, !dbg !3519
  %tobool = icmp ne ptr %call2, null, !dbg !3520
  %lnot = xor i1 %tobool, true, !dbg !3520
  %lnot3 = xor i1 %lnot, true, !dbg !3521
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3522
  ret i1 %lnot3, !dbg !3523
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @software_node_read_int_array(ptr noundef %fwnode, ptr noundef %propname, i32 noundef %elem_size, ptr noundef %val, i64 noundef %nval) #0 align 16 !dbg !3524 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %elem_size.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3526, metadata !DIExpression()), !dbg !3536
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !3527, metadata !DIExpression()), !dbg !3537
  store i32 %elem_size, ptr %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %elem_size.addr, metadata !3528, metadata !DIExpression()), !dbg !3538
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3529, metadata !DIExpression()), !dbg !3539
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !3530, metadata !DIExpression()), !dbg !3540
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3541
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3531, metadata !DIExpression()), !dbg !3542
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3543
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3532, metadata !DIExpression()), !dbg !3543
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3543
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3543
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3543
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3543
  br i1 %call, label %cond.true, label %cond.false, !dbg !3543

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3544
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3534, metadata !DIExpression()), !dbg !3544
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3544
  store ptr %2, ptr %__mptr, align 8, !dbg !3544
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3544
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3544
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3544
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3543
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3544
  br label %cond.end, !dbg !3543

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3543

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3543
  store ptr %cond, ptr %tmp, align 8, !dbg !3543
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3545
  %5 = load ptr, ptr %tmp, align 8, !dbg !3543
  store ptr %5, ptr %swnode, align 8, !dbg !3542
  %6 = load ptr, ptr %swnode, align 8, !dbg !3546
  %node = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 2, !dbg !3547
  %7 = load ptr, ptr %node, align 8, !dbg !3547
  %properties = getelementptr inbounds %struct.software_node, ptr %7, i32 0, i32 2, !dbg !3548
  %8 = load ptr, ptr %properties, align 8, !dbg !3548
  %9 = load ptr, ptr %propname.addr, align 8, !dbg !3549
  %10 = load i32, ptr %elem_size.addr, align 4, !dbg !3550
  %11 = load ptr, ptr %val.addr, align 8, !dbg !3551
  %12 = load i64, ptr %nval.addr, align 8, !dbg !3552
  %call2 = call i32 @property_entry_read_int_array(ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11, i64 noundef %12) #17, !dbg !3553
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3554
  ret i32 %call2, !dbg !3555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @software_node_read_string_array(ptr noundef %fwnode, ptr noundef %propname, ptr noundef %val, i64 noundef %nval) #0 align 16 !dbg !3556 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3558, metadata !DIExpression()), !dbg !3567
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !3559, metadata !DIExpression()), !dbg !3568
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3560, metadata !DIExpression()), !dbg !3569
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !3561, metadata !DIExpression()), !dbg !3570
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3571
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3562, metadata !DIExpression()), !dbg !3572
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3573
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3563, metadata !DIExpression()), !dbg !3573
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3573
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3573
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3573
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3573
  br i1 %call, label %cond.true, label %cond.false, !dbg !3573

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3574
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3565, metadata !DIExpression()), !dbg !3574
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3574
  store ptr %2, ptr %__mptr, align 8, !dbg !3574
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3574
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3574
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3574
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3573
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3574
  br label %cond.end, !dbg !3573

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3573

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3573
  store ptr %cond, ptr %tmp, align 8, !dbg !3573
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3575
  %5 = load ptr, ptr %tmp, align 8, !dbg !3573
  store ptr %5, ptr %swnode, align 8, !dbg !3572
  %6 = load ptr, ptr %swnode, align 8, !dbg !3576
  %node = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 2, !dbg !3577
  %7 = load ptr, ptr %node, align 8, !dbg !3577
  %properties = getelementptr inbounds %struct.software_node, ptr %7, i32 0, i32 2, !dbg !3578
  %8 = load ptr, ptr %properties, align 8, !dbg !3578
  %9 = load ptr, ptr %propname.addr, align 8, !dbg !3579
  %10 = load ptr, ptr %val.addr, align 8, !dbg !3580
  %11 = load i64, ptr %nval.addr, align 8, !dbg !3581
  %call2 = call i32 @property_entry_read_string_array(ptr noundef %8, ptr noundef %9, ptr noundef %10, i64 noundef %11) #17, !dbg !3582
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3583
  ret i32 %call2, !dbg !3584
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_get_name(ptr noundef %fwnode) #0 align 16 !dbg !3585 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3587, metadata !DIExpression()), !dbg !3593
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3594
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3588, metadata !DIExpression()), !dbg !3595
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3596
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3589, metadata !DIExpression()), !dbg !3596
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3596
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3596
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3596
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3596
  br i1 %call, label %cond.true, label %cond.false, !dbg !3596

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3597
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3591, metadata !DIExpression()), !dbg !3597
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3597
  store ptr %2, ptr %__mptr, align 8, !dbg !3597
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3597
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3597
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3597
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3596
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3597
  br label %cond.end, !dbg !3596

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3596

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3596
  store ptr %cond, ptr %tmp, align 8, !dbg !3596
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3598
  %5 = load ptr, ptr %tmp, align 8, !dbg !3596
  store ptr %5, ptr %swnode, align 8, !dbg !3595
  %6 = load ptr, ptr %swnode, align 8, !dbg !3599
  %kobj = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 0, !dbg !3600
  %call2 = call ptr @kobject_name(ptr noundef %kobj) #17, !dbg !3601
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3602
  ret ptr %call2, !dbg !3603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_get_name_prefix(ptr noundef %fwnode) #0 align 16 !dbg !3604 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %prefix = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3606, metadata !DIExpression()), !dbg !3609
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #18, !dbg !3610
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix) #18, !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %prefix, metadata !3608, metadata !DIExpression()), !dbg !3613
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3614
  %call = call ptr @fwnode_get_parent(ptr noundef %0) #17, !dbg !3615
  store ptr %call, ptr %parent, align 8, !dbg !3616
  %1 = load ptr, ptr %parent, align 8, !dbg !3617
  %tobool = icmp ne ptr %1, null, !dbg !3617
  br i1 %tobool, label %if.end, label %if.then, !dbg !3619

if.then:                                          ; preds = %entry
  store ptr @.str.2, ptr %retval, align 8, !dbg !3620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3620

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !3621

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load ptr, ptr %parent, align 8, !dbg !3622
  %call1 = call zeroext i1 @is_software_node(ptr noundef %2) #17, !dbg !3623
  br i1 %call1, label %while.body, label %while.end, !dbg !3621

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %parent, align 8, !dbg !3624
  %call2 = call ptr @fwnode_get_next_parent(ptr noundef %3) #17, !dbg !3625
  store ptr %call2, ptr %parent, align 8, !dbg !3626
  br label %while.cond, !dbg !3621, !llvm.loop !3627

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %parent, align 8, !dbg !3629
  %call3 = call ptr @fwnode_get_name_prefix(ptr noundef %4) #17, !dbg !3630
  store ptr %call3, ptr %prefix, align 8, !dbg !3631
  %5 = load ptr, ptr %parent, align 8, !dbg !3632
  call void @fwnode_handle_put(ptr noundef %5) #17, !dbg !3633
  %6 = load ptr, ptr %prefix, align 8, !dbg !3634
  %tobool4 = icmp ne ptr %6, null, !dbg !3634
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !3634

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !3634

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !3634

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ @.str.3, %cond.false ], !dbg !3634
  store ptr %cond, ptr %retval, align 8, !dbg !3635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3635

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix) #18, !dbg !3636
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #18, !dbg !3636
  %7 = load ptr, ptr %retval, align 8, !dbg !3636
  ret ptr %7, !dbg !3636
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_get_parent(ptr noundef %fwnode) #0 align 16 !dbg !3637 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3639, metadata !DIExpression()), !dbg !3645
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3646
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3640, metadata !DIExpression()), !dbg !3647
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3648
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3641, metadata !DIExpression()), !dbg !3648
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3648
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3648
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3648
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3648
  br i1 %call, label %cond.true, label %cond.false, !dbg !3648

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3649
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3643, metadata !DIExpression()), !dbg !3649
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3649
  store ptr %2, ptr %__mptr, align 8, !dbg !3649
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3649
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3649
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3649
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3648
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3649
  br label %cond.end, !dbg !3648

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3648

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3648
  store ptr %cond, ptr %tmp, align 8, !dbg !3648
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3650
  %5 = load ptr, ptr %tmp, align 8, !dbg !3648
  store ptr %5, ptr %swnode, align 8, !dbg !3647
  %6 = load ptr, ptr %swnode, align 8, !dbg !3651
  %tobool = icmp ne ptr %6, null, !dbg !3651
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3653

lor.lhs.false:                                    ; preds = %cond.end
  %7 = load ptr, ptr %swnode, align 8, !dbg !3654
  %parent = getelementptr inbounds %struct.swnode, ptr %7, i32 0, i32 7, !dbg !3655
  %8 = load ptr, ptr %parent, align 8, !dbg !3655
  %tobool2 = icmp ne ptr %8, null, !dbg !3654
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3656

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store ptr null, ptr %retval, align 8, !dbg !3657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3657

if.end:                                           ; preds = %lor.lhs.false
  %9 = load ptr, ptr %swnode, align 8, !dbg !3658
  %parent3 = getelementptr inbounds %struct.swnode, ptr %9, i32 0, i32 7, !dbg !3659
  %10 = load ptr, ptr %parent3, align 8, !dbg !3659
  %fwnode4 = getelementptr inbounds %struct.swnode, ptr %10, i32 0, i32 1, !dbg !3660
  %call5 = call ptr @fwnode_handle_get(ptr noundef %fwnode4) #17, !dbg !3661
  store ptr %call5, ptr %retval, align 8, !dbg !3662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3662

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3663
  %11 = load ptr, ptr %retval, align 8, !dbg !3663
  ret ptr %11, !dbg !3663
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_get_next_child(ptr noundef %fwnode, ptr noundef %child) #0 align 16 !dbg !3664 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %child.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %c = alloca ptr, align 8
  %__to_swnode_fwnode2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr22 = alloca ptr, align 8
  %tmp24 = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3666, metadata !DIExpression()), !dbg !3683
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !3667, metadata !DIExpression()), !dbg !3684
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !3685
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3668, metadata !DIExpression()), !dbg !3686
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3687
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3669, metadata !DIExpression()), !dbg !3687
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3687
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3687
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3687
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3687
  br i1 %call, label %cond.true, label %cond.false, !dbg !3687

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3688
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3671, metadata !DIExpression()), !dbg !3688
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3688
  store ptr %2, ptr %__mptr, align 8, !dbg !3688
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3688
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3688
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3688
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3687
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3688
  br label %cond.end, !dbg !3687

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3687

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3687
  store ptr %cond, ptr %tmp, align 8, !dbg !3687
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3689
  %5 = load ptr, ptr %tmp, align 8, !dbg !3687
  store ptr %5, ptr %p, align 8, !dbg !3686
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #18, !dbg !3690
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3673, metadata !DIExpression()), !dbg !3691
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode2) #18, !dbg !3692
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode2, metadata !3674, metadata !DIExpression()), !dbg !3692
  %6 = load ptr, ptr %child.addr, align 8, !dbg !3692
  store ptr %6, ptr %__to_swnode_fwnode2, align 8, !dbg !3692
  %7 = load ptr, ptr %__to_swnode_fwnode2, align 8, !dbg !3692
  %call4 = call zeroext i1 @is_software_node(ptr noundef %7) #17, !dbg !3692
  br i1 %call4, label %cond.true5, label %cond.false9, !dbg !3692

cond.true5:                                       ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #18, !dbg !3693
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !3676, metadata !DIExpression()), !dbg !3693
  %8 = load ptr, ptr %__to_swnode_fwnode2, align 8, !dbg !3693
  store ptr %8, ptr %__mptr6, align 8, !dbg !3693
  %9 = load ptr, ptr %__mptr6, align 8, !dbg !3693
  %add.ptr8 = getelementptr i8, ptr %9, i64 -64, !dbg !3693
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !3693
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #18, !dbg !3692
  %10 = load ptr, ptr %tmp7, align 8, !dbg !3693
  br label %cond.end10, !dbg !3692

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10, !dbg !3692

cond.end10:                                       ; preds = %cond.false9, %cond.true5
  %cond11 = phi ptr [ %10, %cond.true5 ], [ null, %cond.false9 ], !dbg !3692
  store ptr %cond11, ptr %tmp3, align 8, !dbg !3692
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode2) #18, !dbg !3694
  %11 = load ptr, ptr %tmp3, align 8, !dbg !3692
  store ptr %11, ptr %c, align 8, !dbg !3691
  %12 = load ptr, ptr %p, align 8, !dbg !3695
  %tobool = icmp ne ptr %12, null, !dbg !3695
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3697

lor.lhs.false:                                    ; preds = %cond.end10
  %13 = load ptr, ptr %p, align 8, !dbg !3698
  %children = getelementptr inbounds %struct.swnode, ptr %13, i32 0, i32 6, !dbg !3699
  %call12 = call i32 @list_empty(ptr noundef %children) #17, !dbg !3700
  %tobool13 = icmp ne i32 %call12, 0, !dbg !3700
  br i1 %tobool13, label %if.then, label %lor.lhs.false14, !dbg !3701

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %14 = load ptr, ptr %c, align 8, !dbg !3702
  %tobool15 = icmp ne ptr %14, null, !dbg !3702
  br i1 %tobool15, label %land.lhs.true, label %if.end, !dbg !3703

land.lhs.true:                                    ; preds = %lor.lhs.false14
  %15 = load ptr, ptr %c, align 8, !dbg !3704
  %entry16 = getelementptr inbounds %struct.swnode, ptr %15, i32 0, i32 5, !dbg !3705
  %16 = load ptr, ptr %p, align 8, !dbg !3706
  %children17 = getelementptr inbounds %struct.swnode, ptr %16, i32 0, i32 6, !dbg !3707
  %call18 = call i32 @list_is_last(ptr noundef %entry16, ptr noundef %children17) #17, !dbg !3708
  %tobool19 = icmp ne i32 %call18, 0, !dbg !3708
  br i1 %tobool19, label %if.then, label %if.end, !dbg !3709

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %cond.end10
  %17 = load ptr, ptr %child.addr, align 8, !dbg !3710
  call void @fwnode_handle_put(ptr noundef %17) #17, !dbg !3712
  store ptr null, ptr %retval, align 8, !dbg !3713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3713

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false14
  %18 = load ptr, ptr %c, align 8, !dbg !3714
  %tobool20 = icmp ne ptr %18, null, !dbg !3714
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !3715

if.then21:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #18, !dbg !3716
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !3678, metadata !DIExpression()), !dbg !3716
  %19 = load ptr, ptr %c, align 8, !dbg !3716
  %entry23 = getelementptr inbounds %struct.swnode, ptr %19, i32 0, i32 5, !dbg !3716
  %next = getelementptr inbounds %struct.list_head, ptr %entry23, i32 0, i32 0, !dbg !3716
  %20 = load ptr, ptr %next, align 8, !dbg !3716
  store ptr %20, ptr %__mptr22, align 8, !dbg !3716
  %21 = load ptr, ptr %__mptr22, align 8, !dbg !3716
  %add.ptr25 = getelementptr i8, ptr %21, i64 -160, !dbg !3716
  store ptr %add.ptr25, ptr %tmp24, align 8, !dbg !3716
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #18, !dbg !3717
  %22 = load ptr, ptr %tmp24, align 8, !dbg !3716
  store ptr %22, ptr %c, align 8, !dbg !3718
  br label %if.end31, !dbg !3719

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #18, !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !3681, metadata !DIExpression()), !dbg !3720
  %23 = load ptr, ptr %p, align 8, !dbg !3720
  %children27 = getelementptr inbounds %struct.swnode, ptr %23, i32 0, i32 6, !dbg !3720
  %next28 = getelementptr inbounds %struct.list_head, ptr %children27, i32 0, i32 0, !dbg !3720
  %24 = load ptr, ptr %next28, align 8, !dbg !3720
  store ptr %24, ptr %__mptr26, align 8, !dbg !3720
  %25 = load ptr, ptr %__mptr26, align 8, !dbg !3720
  %add.ptr30 = getelementptr i8, ptr %25, i64 -160, !dbg !3720
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !3720
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #18, !dbg !3721
  %26 = load ptr, ptr %tmp29, align 8, !dbg !3720
  store ptr %26, ptr %c, align 8, !dbg !3722
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then21
  %27 = load ptr, ptr %child.addr, align 8, !dbg !3723
  call void @fwnode_handle_put(ptr noundef %27) #17, !dbg !3724
  %28 = load ptr, ptr %c, align 8, !dbg !3725
  %fwnode32 = getelementptr inbounds %struct.swnode, ptr %28, i32 0, i32 1, !dbg !3726
  %call33 = call ptr @fwnode_handle_get(ptr noundef %fwnode32) #17, !dbg !3727
  store ptr %call33, ptr %retval, align 8, !dbg !3728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3728

cleanup:                                          ; preds = %if.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #18, !dbg !3729
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !3729
  %29 = load ptr, ptr %retval, align 8, !dbg !3729
  ret ptr %29, !dbg !3729
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_get_named_child_node(ptr noundef %fwnode, ptr noundef %childname) #0 align 16 !dbg !3730 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %childname.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %child = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3732, metadata !DIExpression()), !dbg !3746
  store ptr %childname, ptr %childname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %childname.addr, metadata !3733, metadata !DIExpression()), !dbg !3747
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3748
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3734, metadata !DIExpression()), !dbg !3749
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3750
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3735, metadata !DIExpression()), !dbg !3750
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3750
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3750
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3750
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3750
  br i1 %call, label %cond.true, label %cond.false, !dbg !3750

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3751
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3737, metadata !DIExpression()), !dbg !3751
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3751
  store ptr %2, ptr %__mptr, align 8, !dbg !3751
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3751
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3751
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3751
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3750
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3751
  br label %cond.end, !dbg !3750

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3750

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3750
  store ptr %cond, ptr %tmp, align 8, !dbg !3750
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3752
  %5 = load ptr, ptr %tmp, align 8, !dbg !3750
  store ptr %5, ptr %swnode, align 8, !dbg !3749
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #18, !dbg !3753
  call void @llvm.dbg.declare(metadata ptr %child, metadata !3739, metadata !DIExpression()), !dbg !3754
  %6 = load ptr, ptr %swnode, align 8, !dbg !3755
  %tobool = icmp ne ptr %6, null, !dbg !3755
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3757

lor.lhs.false:                                    ; preds = %cond.end
  %7 = load ptr, ptr %swnode, align 8, !dbg !3758
  %children = getelementptr inbounds %struct.swnode, ptr %7, i32 0, i32 6, !dbg !3759
  %call2 = call i32 @list_empty(ptr noundef %children) #17, !dbg !3760
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3760
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3761

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store ptr null, ptr %retval, align 8, !dbg !3762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3762

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #18, !dbg !3763
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !3740, metadata !DIExpression()), !dbg !3763
  %8 = load ptr, ptr %swnode, align 8, !dbg !3763
  %children5 = getelementptr inbounds %struct.swnode, ptr %8, i32 0, i32 6, !dbg !3763
  %next = getelementptr inbounds %struct.list_head, ptr %children5, i32 0, i32 0, !dbg !3763
  %9 = load ptr, ptr %next, align 8, !dbg !3763
  store ptr %9, ptr %__mptr4, align 8, !dbg !3763
  %10 = load ptr, ptr %__mptr4, align 8, !dbg !3763
  %add.ptr7 = getelementptr i8, ptr %10, i64 -160, !dbg !3763
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !3763
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #18, !dbg !3764
  %11 = load ptr, ptr %tmp6, align 8, !dbg !3763
  store ptr %11, ptr %child, align 8, !dbg !3764
  br label %for.cond, !dbg !3764

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load ptr, ptr %child, align 8, !dbg !3765
  %entry8 = getelementptr inbounds %struct.swnode, ptr %12, i32 0, i32 5, !dbg !3765
  %13 = load ptr, ptr %swnode, align 8, !dbg !3765
  %children9 = getelementptr inbounds %struct.swnode, ptr %13, i32 0, i32 6, !dbg !3765
  %cmp = icmp eq ptr %entry8, %children9, !dbg !3765
  %lnot = xor i1 %cmp, true, !dbg !3765
  br i1 %lnot, label %for.body, label %for.end, !dbg !3764

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %childname.addr, align 8, !dbg !3766
  %15 = load ptr, ptr %child, align 8, !dbg !3769
  %kobj = getelementptr inbounds %struct.swnode, ptr %15, i32 0, i32 0, !dbg !3770
  %call10 = call ptr @kobject_name(ptr noundef %kobj) #17, !dbg !3771
  %call11 = call i32 @strcmp(ptr noundef %14, ptr noundef %call10) #17, !dbg !3772
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3772
  br i1 %tobool12, label %if.end17, label %if.then13, !dbg !3773

if.then13:                                        ; preds = %for.body
  %16 = load ptr, ptr %child, align 8, !dbg !3774
  %kobj14 = getelementptr inbounds %struct.swnode, ptr %16, i32 0, i32 0, !dbg !3776
  %call15 = call ptr @kobject_get(ptr noundef %kobj14) #17, !dbg !3777
  %17 = load ptr, ptr %child, align 8, !dbg !3778
  %fwnode16 = getelementptr inbounds %struct.swnode, ptr %17, i32 0, i32 1, !dbg !3779
  store ptr %fwnode16, ptr %retval, align 8, !dbg !3780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3780

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !3781

for.inc:                                          ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #18, !dbg !3782
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !3743, metadata !DIExpression()), !dbg !3782
  %18 = load ptr, ptr %child, align 8, !dbg !3782
  %entry19 = getelementptr inbounds %struct.swnode, ptr %18, i32 0, i32 5, !dbg !3782
  %next20 = getelementptr inbounds %struct.list_head, ptr %entry19, i32 0, i32 0, !dbg !3782
  %19 = load ptr, ptr %next20, align 8, !dbg !3782
  store ptr %19, ptr %__mptr18, align 8, !dbg !3782
  %20 = load ptr, ptr %__mptr18, align 8, !dbg !3782
  %add.ptr22 = getelementptr i8, ptr %20, i64 -160, !dbg !3782
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !3782
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #18, !dbg !3765
  %21 = load ptr, ptr %tmp21, align 8, !dbg !3782
  store ptr %21, ptr %child, align 8, !dbg !3765
  br label %for.cond, !dbg !3765, !llvm.loop !3783

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !3785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3785

cleanup:                                          ; preds = %for.end, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #18, !dbg !3786
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3786
  %22 = load ptr, ptr %retval, align 8, !dbg !3786
  ret ptr %22, !dbg !3786
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @software_node_get_reference_args(ptr noundef %fwnode, ptr noundef %propname, ptr noundef %nargs_prop, i32 noundef %nargs, i32 noundef %index, ptr noundef %args) #0 align 16 !dbg !3787 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %nargs_prop.addr = alloca ptr, align 8
  %nargs.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %args.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %ref_array = alloca ptr, align 8
  %ref = alloca ptr, align 8
  %prop = alloca ptr, align 8
  %refnode = alloca ptr, align 8
  %nargs_prop_val = alloca i32, align 4
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3789, metadata !DIExpression()), !dbg !3814
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !3790, metadata !DIExpression()), !dbg !3815
  store ptr %nargs_prop, ptr %nargs_prop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nargs_prop.addr, metadata !3791, metadata !DIExpression()), !dbg !3816
  store i32 %nargs, ptr %nargs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nargs.addr, metadata !3792, metadata !DIExpression()), !dbg !3817
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3793, metadata !DIExpression()), !dbg !3818
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !3794, metadata !DIExpression()), !dbg !3819
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3820
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3795, metadata !DIExpression()), !dbg !3821
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3822
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3796, metadata !DIExpression()), !dbg !3822
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3822
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3822
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3822
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3822
  br i1 %call, label %cond.true, label %cond.false, !dbg !3822

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3823
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3798, metadata !DIExpression()), !dbg !3823
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3823
  store ptr %2, ptr %__mptr, align 8, !dbg !3823
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3823
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3823
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3823
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3822
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3823
  br label %cond.end, !dbg !3822

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3822

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3822
  store ptr %cond, ptr %tmp, align 8, !dbg !3822
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3824
  %5 = load ptr, ptr %tmp, align 8, !dbg !3822
  store ptr %5, ptr %swnode, align 8, !dbg !3821
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_array) #18, !dbg !3825
  call void @llvm.dbg.declare(metadata ptr %ref_array, metadata !3800, metadata !DIExpression()), !dbg !3826
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #18, !dbg !3827
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !3808, metadata !DIExpression()), !dbg !3828
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #18, !dbg !3829
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !3809, metadata !DIExpression()), !dbg !3830
  call void @llvm.lifetime.start.p0(i64 8, ptr %refnode) #18, !dbg !3831
  call void @llvm.dbg.declare(metadata ptr %refnode, metadata !3810, metadata !DIExpression()), !dbg !3832
  call void @llvm.lifetime.start.p0(i64 4, ptr %nargs_prop_val) #18, !dbg !3833
  call void @llvm.dbg.declare(metadata ptr %nargs_prop_val, metadata !3811, metadata !DIExpression()), !dbg !3834
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #18, !dbg !3835
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3812, metadata !DIExpression()), !dbg !3836
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !3837
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3813, metadata !DIExpression()), !dbg !3838
  %6 = load ptr, ptr %swnode, align 8, !dbg !3839
  %node = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 2, !dbg !3840
  %7 = load ptr, ptr %node, align 8, !dbg !3840
  %properties = getelementptr inbounds %struct.software_node, ptr %7, i32 0, i32 2, !dbg !3841
  %8 = load ptr, ptr %properties, align 8, !dbg !3841
  %9 = load ptr, ptr %propname.addr, align 8, !dbg !3842
  %call2 = call ptr @property_entry_get(ptr noundef %8, ptr noundef %9) #17, !dbg !3843
  store ptr %call2, ptr %prop, align 8, !dbg !3844
  %10 = load ptr, ptr %prop, align 8, !dbg !3845
  %tobool = icmp ne ptr %10, null, !dbg !3845
  br i1 %tobool, label %if.end, label %if.then, !dbg !3847

if.then:                                          ; preds = %cond.end
  store i32 -2, ptr %retval, align 4, !dbg !3848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3848

if.end:                                           ; preds = %cond.end
  %11 = load ptr, ptr %prop, align 8, !dbg !3849
  %type = getelementptr inbounds %struct.property_entry, ptr %11, i32 0, i32 3, !dbg !3851
  %12 = load i32, ptr %type, align 4, !dbg !3851
  %cmp = icmp ne i32 %12, 5, !dbg !3852
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !3853

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3854
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3854

if.end4:                                          ; preds = %if.end
  %13 = load ptr, ptr %prop, align 8, !dbg !3855
  %is_inline = getelementptr inbounds %struct.property_entry, ptr %13, i32 0, i32 2, !dbg !3857
  %14 = load i8, ptr %is_inline, align 8, !dbg !3857, !range !2124, !noundef !356
  %tobool5 = trunc i8 %14 to i1, !dbg !3857
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3858

if.then6:                                         ; preds = %if.end4
  store i32 -22, ptr %retval, align 4, !dbg !3859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3859

if.end7:                                          ; preds = %if.end4
  %15 = load i32, ptr %index.addr, align 4, !dbg !3860
  %conv = zext i32 %15 to i64, !dbg !3860
  %mul = mul i64 %conv, 80, !dbg !3862
  %16 = load ptr, ptr %prop, align 8, !dbg !3863
  %length = getelementptr inbounds %struct.property_entry, ptr %16, i32 0, i32 1, !dbg !3864
  %17 = load i64, ptr %length, align 8, !dbg !3864
  %cmp8 = icmp uge i64 %mul, %17, !dbg !3865
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !3866

if.then10:                                        ; preds = %if.end7
  store i32 -2, ptr %retval, align 4, !dbg !3867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3867

if.end11:                                         ; preds = %if.end7
  %18 = load ptr, ptr %prop, align 8, !dbg !3868
  %19 = getelementptr inbounds %struct.property_entry, ptr %18, i32 0, i32 4, !dbg !3869
  %20 = load ptr, ptr %19, align 8, !dbg !3869
  store ptr %20, ptr %ref_array, align 8, !dbg !3870
  %21 = load ptr, ptr %ref_array, align 8, !dbg !3871
  %22 = load i32, ptr %index.addr, align 4, !dbg !3872
  %idxprom = zext i32 %22 to i64, !dbg !3871
  %arrayidx = getelementptr %struct.software_node_ref_args, ptr %21, i64 %idxprom, !dbg !3871
  store ptr %arrayidx, ptr %ref, align 8, !dbg !3873
  %23 = load ptr, ptr %ref, align 8, !dbg !3874
  %node12 = getelementptr inbounds %struct.software_node_ref_args, ptr %23, i32 0, i32 0, !dbg !3875
  %24 = load ptr, ptr %node12, align 8, !dbg !3875
  %call13 = call ptr @software_node_fwnode(ptr noundef %24) #17, !dbg !3876
  store ptr %call13, ptr %refnode, align 8, !dbg !3877
  %25 = load ptr, ptr %refnode, align 8, !dbg !3878
  %tobool14 = icmp ne ptr %25, null, !dbg !3878
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3880

if.then15:                                        ; preds = %if.end11
  store i32 -2, ptr %retval, align 4, !dbg !3881
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3881

if.end16:                                         ; preds = %if.end11
  %26 = load ptr, ptr %nargs_prop.addr, align 8, !dbg !3882
  %tobool17 = icmp ne ptr %26, null, !dbg !3882
  br i1 %tobool17, label %if.then18, label %if.end25, !dbg !3884

if.then18:                                        ; preds = %if.end16
  %27 = load ptr, ptr %ref, align 8, !dbg !3885
  %node19 = getelementptr inbounds %struct.software_node_ref_args, ptr %27, i32 0, i32 0, !dbg !3887
  %28 = load ptr, ptr %node19, align 8, !dbg !3887
  %properties20 = getelementptr inbounds %struct.software_node, ptr %28, i32 0, i32 2, !dbg !3888
  %29 = load ptr, ptr %properties20, align 8, !dbg !3888
  %30 = load ptr, ptr %nargs_prop.addr, align 8, !dbg !3889
  %call21 = call i32 @property_entry_read_int_array(ptr noundef %29, ptr noundef %30, i32 noundef 4, ptr noundef %nargs_prop_val, i64 noundef 1) #17, !dbg !3890
  store i32 %call21, ptr %error, align 4, !dbg !3891
  %31 = load i32, ptr %error, align 4, !dbg !3892
  %tobool22 = icmp ne i32 %31, 0, !dbg !3892
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3894

if.then23:                                        ; preds = %if.then18
  %32 = load i32, ptr %error, align 4, !dbg !3895
  store i32 %32, ptr %retval, align 4, !dbg !3896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3896

if.end24:                                         ; preds = %if.then18
  %33 = load i32, ptr %nargs_prop_val, align 4, !dbg !3897
  store i32 %33, ptr %nargs.addr, align 4, !dbg !3898
  br label %if.end25, !dbg !3899

if.end25:                                         ; preds = %if.end24, %if.end16
  %34 = load i32, ptr %nargs.addr, align 4, !dbg !3900
  %cmp26 = icmp ugt i32 %34, 8, !dbg !3902
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !3903

if.then28:                                        ; preds = %if.end25
  store i32 -22, ptr %retval, align 4, !dbg !3904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3904

if.end29:                                         ; preds = %if.end25
  %35 = load ptr, ptr %args.addr, align 8, !dbg !3905
  %tobool30 = icmp ne ptr %35, null, !dbg !3905
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !3907

if.then31:                                        ; preds = %if.end29
  store i32 0, ptr %retval, align 4, !dbg !3908
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3908

if.end32:                                         ; preds = %if.end29
  %36 = load ptr, ptr %refnode, align 8, !dbg !3909
  %call33 = call ptr @software_node_get(ptr noundef %36) #17, !dbg !3910
  %37 = load ptr, ptr %args.addr, align 8, !dbg !3911
  %fwnode34 = getelementptr inbounds %struct.fwnode_reference_args, ptr %37, i32 0, i32 0, !dbg !3912
  store ptr %call33, ptr %fwnode34, align 8, !dbg !3913
  %38 = load i32, ptr %nargs.addr, align 4, !dbg !3914
  %39 = load ptr, ptr %args.addr, align 8, !dbg !3915
  %nargs35 = getelementptr inbounds %struct.fwnode_reference_args, ptr %39, i32 0, i32 1, !dbg !3916
  store i32 %38, ptr %nargs35, align 8, !dbg !3917
  store i32 0, ptr %i, align 4, !dbg !3918
  br label %for.cond, !dbg !3920

for.cond:                                         ; preds = %for.inc, %if.end32
  %40 = load i32, ptr %i, align 4, !dbg !3921
  %41 = load i32, ptr %nargs.addr, align 4, !dbg !3923
  %cmp36 = icmp ult i32 %40, %41, !dbg !3924
  br i1 %cmp36, label %for.body, label %for.end, !dbg !3925

for.body:                                         ; preds = %for.cond
  %42 = load ptr, ptr %ref, align 8, !dbg !3926
  %args38 = getelementptr inbounds %struct.software_node_ref_args, ptr %42, i32 0, i32 2, !dbg !3927
  %43 = load i32, ptr %i, align 4, !dbg !3928
  %idxprom39 = sext i32 %43 to i64, !dbg !3926
  %arrayidx40 = getelementptr [8 x i64], ptr %args38, i64 0, i64 %idxprom39, !dbg !3926
  %44 = load i64, ptr %arrayidx40, align 8, !dbg !3926
  %45 = load ptr, ptr %args.addr, align 8, !dbg !3929
  %args41 = getelementptr inbounds %struct.fwnode_reference_args, ptr %45, i32 0, i32 2, !dbg !3930
  %46 = load i32, ptr %i, align 4, !dbg !3931
  %idxprom42 = sext i32 %46 to i64, !dbg !3929
  %arrayidx43 = getelementptr [8 x i64], ptr %args41, i64 0, i64 %idxprom42, !dbg !3929
  store i64 %44, ptr %arrayidx43, align 8, !dbg !3932
  br label %for.inc, !dbg !3929

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4, !dbg !3933
  %inc = add i32 %47, 1, !dbg !3933
  store i32 %inc, ptr %i, align 4, !dbg !3933
  br label %for.cond, !dbg !3934, !llvm.loop !3935

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3937

cleanup:                                          ; preds = %for.end, %if.then31, %if.then28, %if.then23, %if.then15, %if.then10, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #18, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 4, ptr %nargs_prop_val) #18, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %refnode) #18, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #18, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #18, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_array) #18, !dbg !3938
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !3938
  %48 = load i32, ptr %retval, align 4, !dbg !3938
  ret i32 %48, !dbg !3938
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_graph_get_next_endpoint(ptr noundef %fwnode, ptr noundef %endpoint) #0 align 16 !dbg !3939 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %endpoint.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %port = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !3941, metadata !DIExpression()), !dbg !3950
  store ptr %endpoint, ptr %endpoint.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %endpoint.addr, metadata !3942, metadata !DIExpression()), !dbg !3951
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !3952
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !3943, metadata !DIExpression()), !dbg !3953
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3954
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !3944, metadata !DIExpression()), !dbg !3954
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !3954
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !3954
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3954
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !3954
  br i1 %call, label %cond.true, label %cond.false, !dbg !3954

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !3955
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3946, metadata !DIExpression()), !dbg !3955
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !3955
  store ptr %2, ptr %__mptr, align 8, !dbg !3955
  %3 = load ptr, ptr %__mptr, align 8, !dbg !3955
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !3955
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !3955
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !3954
  %4 = load ptr, ptr %tmp1, align 8, !dbg !3955
  br label %cond.end, !dbg !3954

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !3954
  store ptr %cond, ptr %tmp, align 8, !dbg !3954
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !3956
  %5 = load ptr, ptr %tmp, align 8, !dbg !3954
  store ptr %5, ptr %swnode, align 8, !dbg !3953
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #18, !dbg !3957
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3948, metadata !DIExpression()), !dbg !3958
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #18, !dbg !3959
  call void @llvm.dbg.declare(metadata ptr %port, metadata !3949, metadata !DIExpression()), !dbg !3960
  %6 = load ptr, ptr %swnode, align 8, !dbg !3961
  %tobool = icmp ne ptr %6, null, !dbg !3961
  br i1 %tobool, label %if.end, label %if.then, !dbg !3963

if.then:                                          ; preds = %cond.end
  store ptr null, ptr %retval, align 8, !dbg !3964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3964

if.end:                                           ; preds = %cond.end
  %7 = load ptr, ptr %endpoint.addr, align 8, !dbg !3965
  %tobool2 = icmp ne ptr %7, null, !dbg !3965
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !3967

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %endpoint.addr, align 8, !dbg !3968
  %call4 = call ptr @software_node_get_parent(ptr noundef %8) #17, !dbg !3970
  store ptr %call4, ptr %port, align 8, !dbg !3971
  %9 = load ptr, ptr %port, align 8, !dbg !3972
  %call5 = call ptr @software_node_get_parent(ptr noundef %9) #17, !dbg !3973
  store ptr %call5, ptr %parent, align 8, !dbg !3974
  br label %if.end13, !dbg !3975

if.else:                                          ; preds = %if.end
  %10 = load ptr, ptr %fwnode.addr, align 8, !dbg !3976
  %call6 = call ptr @software_node_get_named_child_node(ptr noundef %10, ptr noundef @.str.4) #17, !dbg !3978
  store ptr %call6, ptr %parent, align 8, !dbg !3979
  %11 = load ptr, ptr %parent, align 8, !dbg !3980
  %tobool7 = icmp ne ptr %11, null, !dbg !3980
  br i1 %tobool7, label %if.end11, label %if.then8, !dbg !3982

if.then8:                                         ; preds = %if.else
  %12 = load ptr, ptr %swnode, align 8, !dbg !3983
  %fwnode9 = getelementptr inbounds %struct.swnode, ptr %12, i32 0, i32 1, !dbg !3984
  %call10 = call ptr @software_node_get(ptr noundef %fwnode9) #17, !dbg !3985
  store ptr %call10, ptr %parent, align 8, !dbg !3986
  br label %if.end11, !dbg !3987

if.end11:                                         ; preds = %if.then8, %if.else
  %13 = load ptr, ptr %parent, align 8, !dbg !3988
  %call12 = call ptr @swnode_graph_find_next_port(ptr noundef %13, ptr noundef null) #17, !dbg !3989
  store ptr %call12, ptr %port, align 8, !dbg !3990
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.then3
  br label %for.cond, !dbg !3991

for.cond:                                         ; preds = %for.inc, %if.end13
  %14 = load ptr, ptr %port, align 8, !dbg !3992
  %tobool14 = icmp ne ptr %14, null, !dbg !3995
  br i1 %tobool14, label %for.body, label %for.end, !dbg !3995

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %port, align 8, !dbg !3996
  %16 = load ptr, ptr %endpoint.addr, align 8, !dbg !3998
  %call15 = call ptr @software_node_get_next_child(ptr noundef %15, ptr noundef %16) #17, !dbg !3999
  store ptr %call15, ptr %endpoint.addr, align 8, !dbg !4000
  %17 = load ptr, ptr %endpoint.addr, align 8, !dbg !4001
  %tobool16 = icmp ne ptr %17, null, !dbg !4001
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4003

if.then17:                                        ; preds = %for.body
  %18 = load ptr, ptr %port, align 8, !dbg !4004
  call void @fwnode_handle_put(ptr noundef %18) #17, !dbg !4006
  br label %for.end, !dbg !4007

if.end18:                                         ; preds = %for.body
  br label %for.inc, !dbg !4008

for.inc:                                          ; preds = %if.end18
  %19 = load ptr, ptr %parent, align 8, !dbg !4009
  %20 = load ptr, ptr %port, align 8, !dbg !4010
  %call19 = call ptr @swnode_graph_find_next_port(ptr noundef %19, ptr noundef %20) #17, !dbg !4011
  store ptr %call19, ptr %port, align 8, !dbg !4012
  br label %for.cond, !dbg !4013, !llvm.loop !4014

for.end:                                          ; preds = %if.then17, %for.cond
  %21 = load ptr, ptr %parent, align 8, !dbg !4016
  call void @fwnode_handle_put(ptr noundef %21) #17, !dbg !4017
  %22 = load ptr, ptr %endpoint.addr, align 8, !dbg !4018
  store ptr %22, ptr %retval, align 8, !dbg !4019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4019

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #18, !dbg !4020
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #18, !dbg !4020
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !4020
  %23 = load ptr, ptr %retval, align 8, !dbg !4020
  ret ptr %23, !dbg !4020
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_graph_get_remote_endpoint(ptr noundef %fwnode) #0 align 16 !dbg !4021 {
entry:
  %retval = alloca ptr, align 8
  %fwnode.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %ref = alloca ptr, align 8
  %prop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !4023, metadata !DIExpression()), !dbg !4031
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !4032
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !4024, metadata !DIExpression()), !dbg !4033
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !4034
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !4025, metadata !DIExpression()), !dbg !4034
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !4034
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !4034
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !4034
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !4034
  br i1 %call, label %cond.true, label %cond.false, !dbg !4034

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !4035
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4027, metadata !DIExpression()), !dbg !4035
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !4035
  store ptr %2, ptr %__mptr, align 8, !dbg !4035
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4035
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !4035
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !4035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !4034
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4035
  br label %cond.end, !dbg !4034

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4034

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !4034
  store ptr %cond, ptr %tmp, align 8, !dbg !4034
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !4036
  %5 = load ptr, ptr %tmp, align 8, !dbg !4034
  store ptr %5, ptr %swnode, align 8, !dbg !4033
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #18, !dbg !4037
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !4029, metadata !DIExpression()), !dbg !4038
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #18, !dbg !4039
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !4030, metadata !DIExpression()), !dbg !4040
  %6 = load ptr, ptr %swnode, align 8, !dbg !4041
  %tobool = icmp ne ptr %6, null, !dbg !4041
  br i1 %tobool, label %if.end, label %if.then, !dbg !4043

if.then:                                          ; preds = %cond.end
  store ptr null, ptr %retval, align 8, !dbg !4044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4044

if.end:                                           ; preds = %cond.end
  %7 = load ptr, ptr %swnode, align 8, !dbg !4045
  %node = getelementptr inbounds %struct.swnode, ptr %7, i32 0, i32 2, !dbg !4046
  %8 = load ptr, ptr %node, align 8, !dbg !4046
  %properties = getelementptr inbounds %struct.software_node, ptr %8, i32 0, i32 2, !dbg !4047
  %9 = load ptr, ptr %properties, align 8, !dbg !4047
  %call2 = call ptr @property_entry_get(ptr noundef %9, ptr noundef @.str.6) #17, !dbg !4048
  store ptr %call2, ptr %prop, align 8, !dbg !4049
  %10 = load ptr, ptr %prop, align 8, !dbg !4050
  %tobool3 = icmp ne ptr %10, null, !dbg !4050
  br i1 %tobool3, label %lor.lhs.false, label %if.then6, !dbg !4052

lor.lhs.false:                                    ; preds = %if.end
  %11 = load ptr, ptr %prop, align 8, !dbg !4053
  %type = getelementptr inbounds %struct.property_entry, ptr %11, i32 0, i32 3, !dbg !4054
  %12 = load i32, ptr %type, align 4, !dbg !4054
  %cmp = icmp ne i32 %12, 5, !dbg !4055
  br i1 %cmp, label %if.then6, label %lor.lhs.false4, !dbg !4056

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %13 = load ptr, ptr %prop, align 8, !dbg !4057
  %is_inline = getelementptr inbounds %struct.property_entry, ptr %13, i32 0, i32 2, !dbg !4058
  %14 = load i8, ptr %is_inline, align 8, !dbg !4058, !range !2124, !noundef !356
  %tobool5 = trunc i8 %14 to i1, !dbg !4058
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4059

if.then6:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.end
  store ptr null, ptr %retval, align 8, !dbg !4060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4060

if.end7:                                          ; preds = %lor.lhs.false4
  %15 = load ptr, ptr %prop, align 8, !dbg !4061
  %16 = getelementptr inbounds %struct.property_entry, ptr %15, i32 0, i32 4, !dbg !4062
  %17 = load ptr, ptr %16, align 8, !dbg !4062
  store ptr %17, ptr %ref, align 8, !dbg !4063
  %18 = load ptr, ptr %ref, align 8, !dbg !4064
  %arrayidx = getelementptr %struct.software_node_ref_args, ptr %18, i64 0, !dbg !4064
  %node8 = getelementptr inbounds %struct.software_node_ref_args, ptr %arrayidx, i32 0, i32 0, !dbg !4065
  %19 = load ptr, ptr %node8, align 8, !dbg !4065
  %call9 = call ptr @software_node_fwnode(ptr noundef %19) #17, !dbg !4066
  %call10 = call ptr @software_node_get(ptr noundef %call9) #17, !dbg !4067
  store ptr %call10, ptr %retval, align 8, !dbg !4068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4068

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #18, !dbg !4069
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #18, !dbg !4069
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !4069
  %20 = load ptr, ptr %retval, align 8, !dbg !4069
  ret ptr %20, !dbg !4069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @software_node_graph_get_port_parent(ptr noundef %fwnode) #0 align 16 !dbg !4070 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !4072, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !4079
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !4073, metadata !DIExpression()), !dbg !4080
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !4081
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !4074, metadata !DIExpression()), !dbg !4081
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !4081
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !4081
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !4081
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !4081
  br i1 %call, label %cond.true, label %cond.false, !dbg !4081

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !4082
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4076, metadata !DIExpression()), !dbg !4082
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !4082
  store ptr %2, ptr %__mptr, align 8, !dbg !4082
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4082
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !4082
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !4082
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !4081
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4082
  br label %cond.end, !dbg !4081

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4081

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !4081
  store ptr %cond, ptr %tmp, align 8, !dbg !4081
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !4083
  %5 = load ptr, ptr %tmp, align 8, !dbg !4081
  store ptr %5, ptr %swnode, align 8, !dbg !4080
  %6 = load ptr, ptr %swnode, align 8, !dbg !4084
  %parent = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 7, !dbg !4085
  %7 = load ptr, ptr %parent, align 8, !dbg !4085
  store ptr %7, ptr %swnode, align 8, !dbg !4086
  %8 = load ptr, ptr %swnode, align 8, !dbg !4087
  %tobool = icmp ne ptr %8, null, !dbg !4087
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4089

land.lhs.true:                                    ; preds = %cond.end
  %9 = load ptr, ptr %swnode, align 8, !dbg !4090
  %node = getelementptr inbounds %struct.swnode, ptr %9, i32 0, i32 2, !dbg !4091
  %10 = load ptr, ptr %node, align 8, !dbg !4091
  %name = getelementptr inbounds %struct.software_node, ptr %10, i32 0, i32 0, !dbg !4092
  %11 = load ptr, ptr %name, align 8, !dbg !4092
  %call2 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.4) #17, !dbg !4093
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4093
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4094

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %swnode, align 8, !dbg !4095
  %parent4 = getelementptr inbounds %struct.swnode, ptr %12, i32 0, i32 7, !dbg !4096
  %13 = load ptr, ptr %parent4, align 8, !dbg !4096
  store ptr %13, ptr %swnode, align 8, !dbg !4097
  br label %if.end, !dbg !4098

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end
  %14 = load ptr, ptr %swnode, align 8, !dbg !4099
  %tobool5 = icmp ne ptr %14, null, !dbg !4099
  br i1 %tobool5, label %cond.true6, label %cond.false9, !dbg !4099

cond.true6:                                       ; preds = %if.end
  %15 = load ptr, ptr %swnode, align 8, !dbg !4100
  %fwnode7 = getelementptr inbounds %struct.swnode, ptr %15, i32 0, i32 1, !dbg !4101
  %call8 = call ptr @software_node_get(ptr noundef %fwnode7) #17, !dbg !4102
  br label %cond.end10, !dbg !4099

cond.false9:                                      ; preds = %if.end
  br label %cond.end10, !dbg !4099

cond.end10:                                       ; preds = %cond.false9, %cond.true6
  %cond11 = phi ptr [ %call8, %cond.true6 ], [ null, %cond.false9 ], !dbg !4099
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !4103
  ret ptr %cond11, !dbg !4104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @software_node_graph_parse_endpoint(ptr noundef %fwnode, ptr noundef %endpoint) #0 align 16 !dbg !4105 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca ptr, align 8
  %endpoint.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %parent_name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !4107, metadata !DIExpression()), !dbg !4116
  store ptr %endpoint, ptr %endpoint.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %endpoint.addr, metadata !4108, metadata !DIExpression()), !dbg !4117
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !4118
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !4109, metadata !DIExpression()), !dbg !4119
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !4120
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !4110, metadata !DIExpression()), !dbg !4120
  %0 = load ptr, ptr %fwnode.addr, align 8, !dbg !4120
  store ptr %0, ptr %__to_swnode_fwnode, align 8, !dbg !4120
  %1 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !4120
  %call = call zeroext i1 @is_software_node(ptr noundef %1) #17, !dbg !4120
  br i1 %call, label %cond.true, label %cond.false, !dbg !4120

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !4121
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4112, metadata !DIExpression()), !dbg !4121
  %2 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !4121
  store ptr %2, ptr %__mptr, align 8, !dbg !4121
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4121
  %add.ptr = getelementptr i8, ptr %3, i64 -64, !dbg !4121
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !4121
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !4120
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4121
  br label %cond.end, !dbg !4120

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !4120
  store ptr %cond, ptr %tmp, align 8, !dbg !4120
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !4122
  %5 = load ptr, ptr %tmp, align 8, !dbg !4120
  store ptr %5, ptr %swnode, align 8, !dbg !4119
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_name) #18, !dbg !4123
  call void @llvm.dbg.declare(metadata ptr %parent_name, metadata !4114, metadata !DIExpression()), !dbg !4124
  %6 = load ptr, ptr %swnode, align 8, !dbg !4125
  %parent = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 7, !dbg !4126
  %7 = load ptr, ptr %parent, align 8, !dbg !4126
  %node = getelementptr inbounds %struct.swnode, ptr %7, i32 0, i32 2, !dbg !4127
  %8 = load ptr, ptr %node, align 8, !dbg !4127
  %name = getelementptr inbounds %struct.software_node, ptr %8, i32 0, i32 0, !dbg !4128
  %9 = load ptr, ptr %name, align 8, !dbg !4128
  store ptr %9, ptr %parent_name, align 8, !dbg !4124
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !4129
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4115, metadata !DIExpression()), !dbg !4130
  %10 = load ptr, ptr %parent_name, align 8, !dbg !4131
  %call2 = call i64 @strlen(ptr noundef %10) #17, !dbg !4133
  %cmp = icmp uge i64 5, %call2, !dbg !4134
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4135

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load ptr, ptr %parent_name, align 8, !dbg !4136
  %call3 = call i32 @strncmp(ptr noundef %11, ptr noundef @.str.5, i64 noundef 5) #17, !dbg !4137
  %tobool = icmp ne i32 %call3, 0, !dbg !4137
  br i1 %tobool, label %if.then, label %if.end, !dbg !4138

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -22, ptr %retval, align 4, !dbg !4139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4139

if.end:                                           ; preds = %lor.lhs.false
  %12 = load ptr, ptr %parent_name, align 8, !dbg !4140
  %add.ptr4 = getelementptr i8, ptr %12, i64 5, !dbg !4141
  %13 = load ptr, ptr %endpoint.addr, align 8, !dbg !4142
  %port = getelementptr inbounds %struct.fwnode_endpoint, ptr %13, i32 0, i32 0, !dbg !4143
  %call5 = call i32 @kstrtou32(ptr noundef %add.ptr4, i32 noundef 10, ptr noundef %port) #17, !dbg !4144
  store i32 %call5, ptr %ret, align 4, !dbg !4145
  %14 = load i32, ptr %ret, align 4, !dbg !4146
  %tobool6 = icmp ne i32 %14, 0, !dbg !4146
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4148

if.then7:                                         ; preds = %if.end
  %15 = load i32, ptr %ret, align 4, !dbg !4149
  store i32 %15, ptr %retval, align 4, !dbg !4150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4150

if.end8:                                          ; preds = %if.end
  %16 = load ptr, ptr %swnode, align 8, !dbg !4151
  %id = getelementptr inbounds %struct.swnode, ptr %16, i32 0, i32 3, !dbg !4152
  %17 = load i32, ptr %id, align 8, !dbg !4152
  %18 = load ptr, ptr %endpoint.addr, align 8, !dbg !4153
  %id9 = getelementptr inbounds %struct.fwnode_endpoint, ptr %18, i32 0, i32 1, !dbg !4154
  store i32 %17, ptr %id9, align 4, !dbg !4155
  %19 = load ptr, ptr %fwnode.addr, align 8, !dbg !4156
  %20 = load ptr, ptr %endpoint.addr, align 8, !dbg !4157
  %local_fwnode = getelementptr inbounds %struct.fwnode_endpoint, ptr %20, i32 0, i32 2, !dbg !4158
  store ptr %19, ptr %local_fwnode, align 8, !dbg !4159
  store i32 0, ptr %retval, align 4, !dbg !4160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4160

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !4161
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_name) #18, !dbg !4161
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !4161
  %21 = load i32, ptr %retval, align 4, !dbg !4161
  ret i32 %21, !dbg !4161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @property_entry_get(ptr noundef %prop, ptr noundef %name) #0 align 16 !dbg !4162 {
entry:
  %retval = alloca ptr, align 8
  %prop.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %prop, ptr %prop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prop.addr, metadata !4166, metadata !DIExpression()), !dbg !4168
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4167, metadata !DIExpression()), !dbg !4169
  %0 = load ptr, ptr %prop.addr, align 8, !dbg !4170
  %tobool = icmp ne ptr %0, null, !dbg !4170
  br i1 %tobool, label %if.end, label %if.then, !dbg !4172

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4173
  br label %return, !dbg !4173

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !4174

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %prop.addr, align 8, !dbg !4175
  %name1 = getelementptr inbounds %struct.property_entry, ptr %1, i32 0, i32 0, !dbg !4178
  %2 = load ptr, ptr %name1, align 8, !dbg !4178
  %tobool2 = icmp ne ptr %2, null, !dbg !4179
  br i1 %tobool2, label %for.body, label %for.end, !dbg !4179

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4180
  %4 = load ptr, ptr %prop.addr, align 8, !dbg !4182
  %name3 = getelementptr inbounds %struct.property_entry, ptr %4, i32 0, i32 0, !dbg !4183
  %5 = load ptr, ptr %name3, align 8, !dbg !4183
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %5) #17, !dbg !4184
  %tobool4 = icmp ne i32 %call, 0, !dbg !4184
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4185

if.then5:                                         ; preds = %for.body
  %6 = load ptr, ptr %prop.addr, align 8, !dbg !4186
  store ptr %6, ptr %retval, align 8, !dbg !4187
  br label %return, !dbg !4187

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !4188

for.inc:                                          ; preds = %if.end6
  %7 = load ptr, ptr %prop.addr, align 8, !dbg !4189
  %incdec.ptr = getelementptr %struct.property_entry, ptr %7, i32 1, !dbg !4189
  store ptr %incdec.ptr, ptr %prop.addr, align 8, !dbg !4189
  br label %for.cond, !dbg !4190, !llvm.loop !4191

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !4193
  br label %return, !dbg !4193

return:                                           ; preds = %for.end, %if.then5, %if.then
  %8 = load ptr, ptr %retval, align 8, !dbg !4194
  ret ptr %8, !dbg !4194
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @property_entry_read_int_array(ptr noundef %props, ptr noundef %name, i32 noundef %elem_size, ptr noundef %val, i64 noundef %nval) #0 align 16 !dbg !4195 {
entry:
  %retval = alloca i32, align 4
  %props.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %elem_size.addr = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  %pointer = alloca ptr, align 8
  %length = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %props, ptr %props.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !4199, metadata !DIExpression()), !dbg !4206
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4200, metadata !DIExpression()), !dbg !4207
  store i32 %elem_size, ptr %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %elem_size.addr, metadata !4201, metadata !DIExpression()), !dbg !4208
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4202, metadata !DIExpression()), !dbg !4209
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !4203, metadata !DIExpression()), !dbg !4210
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer) #18, !dbg !4211
  call void @llvm.dbg.declare(metadata ptr %pointer, metadata !4204, metadata !DIExpression()), !dbg !4212
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #18, !dbg !4213
  call void @llvm.dbg.declare(metadata ptr %length, metadata !4205, metadata !DIExpression()), !dbg !4214
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4215
  %tobool = icmp ne ptr %0, null, !dbg !4215
  br i1 %tobool, label %if.end, label %if.then, !dbg !4217

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %props.addr, align 8, !dbg !4218
  %2 = load ptr, ptr %name.addr, align 8, !dbg !4219
  %3 = load i32, ptr %elem_size.addr, align 4, !dbg !4220
  %conv = zext i32 %3 to i64, !dbg !4220
  %call = call i32 @property_entry_count_elems_of_size(ptr noundef %1, ptr noundef %2, i64 noundef %conv) #17, !dbg !4221
  store i32 %call, ptr %retval, align 4, !dbg !4222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4222

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %elem_size.addr, align 4, !dbg !4223
  %conv1 = zext i32 %4 to i64, !dbg !4223
  %call2 = call zeroext i1 @is_power_of_2(i64 noundef %conv1) #24, !dbg !4225
  br i1 %call2, label %lor.lhs.false, label %if.then5, !dbg !4226

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, ptr %elem_size.addr, align 4, !dbg !4227
  %conv3 = zext i32 %5 to i64, !dbg !4227
  %cmp = icmp ugt i64 %conv3, 8, !dbg !4228
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !4229

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -6, ptr %retval, align 4, !dbg !4230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4230

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load i64, ptr %nval.addr, align 8, !dbg !4231
  %7 = load i32, ptr %elem_size.addr, align 4, !dbg !4232
  %conv7 = zext i32 %7 to i64, !dbg !4232
  %mul = mul i64 %6, %conv7, !dbg !4233
  store i64 %mul, ptr %length, align 8, !dbg !4234
  %8 = load ptr, ptr %props.addr, align 8, !dbg !4235
  %9 = load ptr, ptr %name.addr, align 8, !dbg !4236
  %10 = load i64, ptr %length, align 8, !dbg !4237
  %call8 = call ptr @property_entry_find(ptr noundef %8, ptr noundef %9, i64 noundef %10) #17, !dbg !4238
  store ptr %call8, ptr %pointer, align 8, !dbg !4239
  %11 = load ptr, ptr %pointer, align 8, !dbg !4240
  %call9 = call zeroext i1 @IS_ERR(ptr noundef %11) #17, !dbg !4242
  br i1 %call9, label %if.then10, label %if.end13, !dbg !4243

if.then10:                                        ; preds = %if.end6
  %12 = load ptr, ptr %pointer, align 8, !dbg !4244
  %call11 = call i64 @PTR_ERR(ptr noundef %12) #17, !dbg !4245
  %conv12 = trunc i64 %call11 to i32, !dbg !4245
  store i32 %conv12, ptr %retval, align 4, !dbg !4246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4246

if.end13:                                         ; preds = %if.end6
  %13 = load ptr, ptr %val.addr, align 8, !dbg !4247
  %14 = load ptr, ptr %pointer, align 8, !dbg !4248
  %15 = load i64, ptr %length, align 8, !dbg !4249
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %14, i64 %15, i1 false), !dbg !4250
  store i32 0, ptr %retval, align 4, !dbg !4251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4251

cleanup:                                          ; preds = %if.end13, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #18, !dbg !4252
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer) #18, !dbg !4252
  %16 = load i32, ptr %retval, align 4, !dbg !4252
  ret i32 %16, !dbg !4252
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @property_entry_count_elems_of_size(ptr noundef %props, ptr noundef %propname, i64 noundef %length) #0 align 16 !dbg !4253 {
entry:
  %retval = alloca i32, align 4
  %props.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %prop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %props, ptr %props.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !4257, metadata !DIExpression()), !dbg !4261
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !4258, metadata !DIExpression()), !dbg !4262
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4259, metadata !DIExpression()), !dbg !4263
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #18, !dbg !4264
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !4260, metadata !DIExpression()), !dbg !4265
  %0 = load ptr, ptr %props.addr, align 8, !dbg !4266
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !4267
  %call = call ptr @property_entry_get(ptr noundef %0, ptr noundef %1) #17, !dbg !4268
  store ptr %call, ptr %prop, align 8, !dbg !4269
  %2 = load ptr, ptr %prop, align 8, !dbg !4270
  %tobool = icmp ne ptr %2, null, !dbg !4270
  br i1 %tobool, label %if.end, label %if.then, !dbg !4272

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4273

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %prop, align 8, !dbg !4274
  %length1 = getelementptr inbounds %struct.property_entry, ptr %3, i32 0, i32 1, !dbg !4275
  %4 = load i64, ptr %length1, align 8, !dbg !4275
  %5 = load i64, ptr %length.addr, align 8, !dbg !4276
  %div = udiv i64 %4, %5, !dbg !4277
  %conv = trunc i64 %div to i32, !dbg !4274
  store i32 %conv, ptr %retval, align 4, !dbg !4278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4278

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #18, !dbg !4279
  %6 = load i32, ptr %retval, align 4, !dbg !4279
  ret i32 %6, !dbg !4279
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #15 align 16 !dbg !4280 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  %0 = load i64, ptr %n.addr, align 8, !dbg !4287
  %cmp = icmp ne i64 %0, 0, !dbg !4288
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4289

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !4290
  %2 = load i64, ptr %n.addr, align 8, !dbg !4291
  %sub = sub i64 %2, 1, !dbg !4292
  %and = and i64 %1, %sub, !dbg !4293
  %cmp1 = icmp eq i64 %and, 0, !dbg !4294
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !4295
  ret i1 %3, !dbg !4296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @property_entry_find(ptr noundef %props, ptr noundef %propname, i64 noundef %length) #0 align 16 !dbg !4297 {
entry:
  %retval = alloca ptr, align 8
  %props.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %prop = alloca ptr, align 8
  %pointer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %props, ptr %props.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !4301, metadata !DIExpression()), !dbg !4306
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !4302, metadata !DIExpression()), !dbg !4307
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4303, metadata !DIExpression()), !dbg !4308
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #18, !dbg !4309
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !4304, metadata !DIExpression()), !dbg !4310
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer) #18, !dbg !4311
  call void @llvm.dbg.declare(metadata ptr %pointer, metadata !4305, metadata !DIExpression()), !dbg !4312
  %0 = load ptr, ptr %props.addr, align 8, !dbg !4313
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !4314
  %call = call ptr @property_entry_get(ptr noundef %0, ptr noundef %1) #17, !dbg !4315
  store ptr %call, ptr %prop, align 8, !dbg !4316
  %2 = load ptr, ptr %prop, align 8, !dbg !4317
  %tobool = icmp ne ptr %2, null, !dbg !4317
  br i1 %tobool, label %if.end, label %if.then, !dbg !4319

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -22) #17, !dbg !4320
  store ptr %call1, ptr %retval, align 8, !dbg !4321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4321

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %prop, align 8, !dbg !4322
  %call2 = call ptr @property_get_pointer(ptr noundef %3) #17, !dbg !4323
  store ptr %call2, ptr %pointer, align 8, !dbg !4324
  %4 = load ptr, ptr %pointer, align 8, !dbg !4325
  %tobool3 = icmp ne ptr %4, null, !dbg !4325
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4327

if.then4:                                         ; preds = %if.end
  %call5 = call ptr @ERR_PTR(i64 noundef -61) #17, !dbg !4328
  store ptr %call5, ptr %retval, align 8, !dbg !4329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4329

if.end6:                                          ; preds = %if.end
  %5 = load i64, ptr %length.addr, align 8, !dbg !4330
  %6 = load ptr, ptr %prop, align 8, !dbg !4332
  %length7 = getelementptr inbounds %struct.property_entry, ptr %6, i32 0, i32 1, !dbg !4333
  %7 = load i64, ptr %length7, align 8, !dbg !4333
  %cmp = icmp ugt i64 %5, %7, !dbg !4334
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !4335

if.then8:                                         ; preds = %if.end6
  %call9 = call ptr @ERR_PTR(i64 noundef -75) #17, !dbg !4336
  store ptr %call9, ptr %retval, align 8, !dbg !4337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4337

if.end10:                                         ; preds = %if.end6
  %8 = load ptr, ptr %pointer, align 8, !dbg !4338
  store ptr %8, ptr %retval, align 8, !dbg !4339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4339

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer) #18, !dbg !4340
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #18, !dbg !4340
  %9 = load ptr, ptr %retval, align 8, !dbg !4340
  ret ptr %9, !dbg !4340
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @property_entry_read_string_array(ptr noundef %props, ptr noundef %propname, ptr noundef %strings, i64 noundef %nval) #0 align 16 !dbg !4341 {
entry:
  %retval = alloca i32, align 4
  %props.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %strings.addr = alloca ptr, align 8
  %nval.addr = alloca i64, align 8
  %pointer = alloca ptr, align 8
  %length = alloca i64, align 8
  %array_len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x208 = alloca i64, align 8
  %__UNIQUE_ID___y209 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %props, ptr %props.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !4345, metadata !DIExpression()), !dbg !4355
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !4346, metadata !DIExpression()), !dbg !4356
  store ptr %strings, ptr %strings.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %strings.addr, metadata !4347, metadata !DIExpression()), !dbg !4357
  store i64 %nval, ptr %nval.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nval.addr, metadata !4348, metadata !DIExpression()), !dbg !4358
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer) #18, !dbg !4359
  call void @llvm.dbg.declare(metadata ptr %pointer, metadata !4349, metadata !DIExpression()), !dbg !4360
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #18, !dbg !4361
  call void @llvm.dbg.declare(metadata ptr %length, metadata !4350, metadata !DIExpression()), !dbg !4362
  call void @llvm.lifetime.start.p0(i64 4, ptr %array_len) #18, !dbg !4363
  call void @llvm.dbg.declare(metadata ptr %array_len, metadata !4351, metadata !DIExpression()), !dbg !4364
  %0 = load ptr, ptr %props.addr, align 8, !dbg !4365
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !4366
  %call = call i32 @property_entry_count_elems_of_size(ptr noundef %0, ptr noundef %1, i64 noundef 8) #17, !dbg !4367
  store i32 %call, ptr %array_len, align 4, !dbg !4368
  %2 = load i32, ptr %array_len, align 4, !dbg !4369
  %cmp = icmp slt i32 %2, 0, !dbg !4371
  br i1 %cmp, label %if.then, label %if.end, !dbg !4372

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %array_len, align 4, !dbg !4373
  store i32 %3, ptr %retval, align 4, !dbg !4374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4374

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %strings.addr, align 8, !dbg !4375
  %tobool = icmp ne ptr %4, null, !dbg !4375
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4377

if.then1:                                         ; preds = %if.end
  %5 = load i32, ptr %array_len, align 4, !dbg !4378
  store i32 %5, ptr %retval, align 4, !dbg !4379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4379

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x208) #18, !dbg !4380
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x208, metadata !4352, metadata !DIExpression()), !dbg !4380
  %6 = load i64, ptr %nval.addr, align 8, !dbg !4380
  store i64 %6, ptr %__UNIQUE_ID___x208, align 8, !dbg !4380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y209) #18, !dbg !4380
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y209, metadata !4354, metadata !DIExpression()), !dbg !4380
  %7 = load i32, ptr %array_len, align 4, !dbg !4380
  %conv = sext i32 %7 to i64, !dbg !4380
  store i64 %conv, ptr %__UNIQUE_ID___y209, align 8, !dbg !4380
  %8 = load i64, ptr %__UNIQUE_ID___x208, align 8, !dbg !4380
  %9 = load i64, ptr %__UNIQUE_ID___y209, align 8, !dbg !4380
  %cmp3 = icmp ult i64 %8, %9, !dbg !4380
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !4380

cond.true:                                        ; preds = %if.end2
  %10 = load i64, ptr %__UNIQUE_ID___x208, align 8, !dbg !4380
  br label %cond.end, !dbg !4380

cond.false:                                       ; preds = %if.end2
  %11 = load i64, ptr %__UNIQUE_ID___y209, align 8, !dbg !4380
  br label %cond.end, !dbg !4380

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !4380
  store i64 %cond, ptr %tmp, align 8, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y209) #18, !dbg !4381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x208) #18, !dbg !4381
  %12 = load i64, ptr %tmp, align 8, !dbg !4380
  %conv5 = trunc i64 %12 to i32, !dbg !4381
  store i32 %conv5, ptr %array_len, align 4, !dbg !4382
  %13 = load i32, ptr %array_len, align 4, !dbg !4383
  %conv6 = sext i32 %13 to i64, !dbg !4383
  %mul = mul i64 %conv6, 8, !dbg !4384
  store i64 %mul, ptr %length, align 8, !dbg !4385
  %14 = load ptr, ptr %props.addr, align 8, !dbg !4386
  %15 = load ptr, ptr %propname.addr, align 8, !dbg !4387
  %16 = load i64, ptr %length, align 8, !dbg !4388
  %call7 = call ptr @property_entry_find(ptr noundef %14, ptr noundef %15, i64 noundef %16) #17, !dbg !4389
  store ptr %call7, ptr %pointer, align 8, !dbg !4390
  %17 = load ptr, ptr %pointer, align 8, !dbg !4391
  %call8 = call zeroext i1 @IS_ERR(ptr noundef %17) #17, !dbg !4393
  br i1 %call8, label %if.then9, label %if.end12, !dbg !4394

if.then9:                                         ; preds = %cond.end
  %18 = load ptr, ptr %pointer, align 8, !dbg !4395
  %call10 = call i64 @PTR_ERR(ptr noundef %18) #17, !dbg !4396
  %conv11 = trunc i64 %call10 to i32, !dbg !4396
  store i32 %conv11, ptr %retval, align 4, !dbg !4397
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4397

if.end12:                                         ; preds = %cond.end
  %19 = load ptr, ptr %strings.addr, align 8, !dbg !4398
  %20 = load ptr, ptr %pointer, align 8, !dbg !4399
  %21 = load i64, ptr %length, align 8, !dbg !4400
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 1 %20, i64 %21, i1 false), !dbg !4401
  %22 = load i32, ptr %array_len, align 4, !dbg !4402
  store i32 %22, ptr %retval, align 4, !dbg !4403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4403

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %array_len) #18, !dbg !4404
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #18, !dbg !4404
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer) #18, !dbg !4404
  %23 = load i32, ptr %retval, align 4, !dbg !4404
  ret i32 %23, !dbg !4404
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #2 align 16 !dbg !4405 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4409
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !4410
  %1 = load ptr, ptr %name, align 8, !dbg !4410
  ret ptr %1, !dbg !4411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4412 dso_local ptr @fwnode_get_parent(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4413 dso_local ptr @fwnode_get_next_parent(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4414 dso_local ptr @fwnode_get_name_prefix(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4415 dso_local void @fwnode_handle_put(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4416 dso_local ptr @fwnode_handle_get(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #2 align 16 !dbg !4417 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4424, metadata !DIExpression()), !dbg !4425
  br label %do.body, !dbg !4426

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4428

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4426
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4426
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4426
  store ptr %1, ptr %tmp, align 8, !dbg !4428
  %2 = load ptr, ptr %tmp, align 8, !dbg !4426
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4430
  %cmp = icmp eq ptr %2, %3, !dbg !4431
  %conv = zext i1 %cmp to i32, !dbg !4431
  ret i32 %conv, !dbg !4432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_last(ptr noundef %list, ptr noundef %head) #2 align 16 !dbg !4433 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4437, metadata !DIExpression()), !dbg !4439
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4438, metadata !DIExpression()), !dbg !4440
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4441
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4442
  %1 = load ptr, ptr %next, align 8, !dbg !4442
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4443
  %cmp = icmp eq ptr %1, %2, !dbg !4444
  %conv = zext i1 %cmp to i32, !dbg !4444
  ret i32 %conv, !dbg !4445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @swnode_graph_find_next_port(ptr noundef %parent, ptr noundef %port) #0 align 16 !dbg !4446 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  %__to_swnode_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4448, metadata !DIExpression()), !dbg !4457
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !4449, metadata !DIExpression()), !dbg !4458
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #18, !dbg !4459
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4450, metadata !DIExpression()), !dbg !4460
  %0 = load ptr, ptr %port.addr, align 8, !dbg !4461
  store ptr %0, ptr %old, align 8, !dbg !4460
  br label %while.cond, !dbg !4462

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !4463
  %2 = load ptr, ptr %old, align 8, !dbg !4464
  %call = call ptr @software_node_get_next_child(ptr noundef %1, ptr noundef %2) #17, !dbg !4465
  store ptr %call, ptr %port.addr, align 8, !dbg !4466
  %tobool = icmp ne ptr %call, null, !dbg !4462
  br i1 %tobool, label %while.body, label %while.end, !dbg !4462

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !4467
  call void @llvm.dbg.declare(metadata ptr %__to_swnode_fwnode, metadata !4451, metadata !DIExpression()), !dbg !4467
  %3 = load ptr, ptr %port.addr, align 8, !dbg !4467
  store ptr %3, ptr %__to_swnode_fwnode, align 8, !dbg !4467
  %4 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !4467
  %call1 = call zeroext i1 @is_software_node(ptr noundef %4) #17, !dbg !4467
  br i1 %call1, label %cond.true, label %cond.false, !dbg !4467

cond.true:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !4468
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4455, metadata !DIExpression()), !dbg !4468
  %5 = load ptr, ptr %__to_swnode_fwnode, align 8, !dbg !4468
  store ptr %5, ptr %__mptr, align 8, !dbg !4468
  %6 = load ptr, ptr %__mptr, align 8, !dbg !4468
  %add.ptr = getelementptr i8, ptr %6, i64 -64, !dbg !4468
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !4468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !4467
  %7 = load ptr, ptr %tmp2, align 8, !dbg !4468
  br label %cond.end, !dbg !4467

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !4467

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ null, %cond.false ], !dbg !4467
  store ptr %cond, ptr %tmp, align 8, !dbg !4467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_swnode_fwnode) #18, !dbg !4469
  %8 = load ptr, ptr %tmp, align 8, !dbg !4467
  %node = getelementptr inbounds %struct.swnode, ptr %8, i32 0, i32 2, !dbg !4470
  %9 = load ptr, ptr %node, align 8, !dbg !4470
  %name = getelementptr inbounds %struct.software_node, ptr %9, i32 0, i32 0, !dbg !4471
  %10 = load ptr, ptr %name, align 8, !dbg !4471
  %call3 = call i32 @strncmp(ptr noundef %10, ptr noundef @.str.5, i64 noundef 5) #17, !dbg !4472
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4472
  br i1 %tobool4, label %if.end, label %if.then, !dbg !4473

if.then:                                          ; preds = %cond.end
  %11 = load ptr, ptr %port.addr, align 8, !dbg !4474
  store ptr %11, ptr %retval, align 8, !dbg !4475
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4475

if.end:                                           ; preds = %cond.end
  %12 = load ptr, ptr %port.addr, align 8, !dbg !4476
  store ptr %12, ptr %old, align 8, !dbg !4477
  br label %while.cond, !dbg !4462, !llvm.loop !4478

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !4480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4480

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #18, !dbg !4481
  %13 = load ptr, ptr %retval, align 8, !dbg !4481
  ret ptr %13, !dbg !4481
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4482 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4485 dso_local i64 @strlen(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtou32(ptr noundef %s, i32 noundef %base, ptr noundef %res) #2 align 16 !dbg !4488 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4494, metadata !DIExpression()), !dbg !4497
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4495, metadata !DIExpression()), !dbg !4498
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4496, metadata !DIExpression()), !dbg !4499
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4500
  %1 = load i32, ptr %base.addr, align 4, !dbg !4501
  %2 = load ptr, ptr %res.addr, align 8, !dbg !4502
  %call = call i32 @kstrtouint(ptr noundef %0, i32 noundef %1, ptr noundef %2) #17, !dbg !4503
  ret i32 %call, !dbg !4504
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4505 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4508 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4513 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #16 align 16 !dbg !4514 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4516, metadata !DIExpression()), !dbg !4518
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4517, metadata !DIExpression()), !dbg !4519
  %0 = load i64, ptr %size.addr, align 8, !dbg !4520
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4521
  %or = or i32 %1, 256, !dbg !4522
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !4523
  ret ptr %call, !dbg !4524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4525 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fwnode_init(ptr noundef %fwnode, ptr noundef %ops) #2 align 16 !dbg !4528 {
entry:
  %fwnode.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  store ptr %fwnode, ptr %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fwnode.addr, metadata !4532, metadata !DIExpression()), !dbg !4534
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !4533, metadata !DIExpression()), !dbg !4535
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !4536
  %1 = load ptr, ptr %fwnode.addr, align 8, !dbg !4537
  %ops1 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1, !dbg !4538
  store ptr %0, ptr %ops1, align 8, !dbg !4539
  %2 = load ptr, ptr %fwnode.addr, align 8, !dbg !4540
  %consumers = getelementptr inbounds %struct.fwnode_handle, ptr %2, i32 0, i32 4, !dbg !4541
  call void @INIT_LIST_HEAD(ptr noundef %consumers) #17, !dbg !4542
  %3 = load ptr, ptr %fwnode.addr, align 8, !dbg !4543
  %suppliers = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 3, !dbg !4544
  call void @INIT_LIST_HEAD(ptr noundef %suppliers) #17, !dbg !4545
  ret void, !dbg !4546
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ida_init(ptr noundef %ida) #2 align 16 !dbg !4547 {
entry:
  %ida.addr = alloca ptr, align 8
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !4549, metadata !DIExpression()), !dbg !4550
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !4551
  %xa = getelementptr inbounds %struct.ida, ptr %0, i32 0, i32 0, !dbg !4552
  call void @xa_init_flags(ptr noundef %xa, i32 noundef 67108869) #17, !dbg !4553
  ret void, !dbg !4554
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #2 align 16 !dbg !4555 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  br label %do.body, !dbg !4561

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4562

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4564

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4562

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4566
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4566
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4566
  store volatile ptr %0, ptr %next, align 8, !dbg !4566
  br label %do.end3, !dbg !4566

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4562

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4568

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4569

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4571

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4569

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4573
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4573
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4573
  store volatile ptr %2, ptr %prev, align 8, !dbg !4573
  br label %do.end9, !dbg !4573

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4569

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4576 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #2 align 16 !dbg !4579 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4583, metadata !DIExpression()), !dbg !4585
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4584, metadata !DIExpression()), !dbg !4586
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4587
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4588
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4589
  %2 = load ptr, ptr %prev, align 8, !dbg !4589
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4590
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !4591
  ret void, !dbg !4592
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4593 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xa_init_flags(ptr noundef %xa, i32 noundef %flags) #2 align 16 !dbg !4596 {
entry:
  %xa.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %xa, ptr %xa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xa.addr, metadata !4601, metadata !DIExpression()), !dbg !4603
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4602, metadata !DIExpression()), !dbg !4604
  br label %do.body, !dbg !4605

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %xa.addr, align 8, !dbg !4606
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 0, !dbg !4606
  %call = call ptr @spinlock_check(ptr noundef %xa_lock) #17, !dbg !4606
  %1 = load ptr, ptr %xa.addr, align 8, !dbg !4606
  %xa_lock1 = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 0, !dbg !4606
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !4606
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !4606
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4606
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !4606
  store i32 0, ptr %counter, align 4, !dbg !4606
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %xa_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !4606
  br label %do.end, !dbg !4606

do.end:                                           ; preds = %do.body
  %4 = load i32, ptr %flags.addr, align 4, !dbg !4608
  %5 = load ptr, ptr %xa.addr, align 8, !dbg !4609
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %5, i32 0, i32 1, !dbg !4610
  store i32 %4, ptr %xa_flags, align 4, !dbg !4611
  %6 = load ptr, ptr %xa.addr, align 8, !dbg !4612
  %xa_head = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 2, !dbg !4613
  store ptr null, ptr %xa_head, align 8, !dbg !4614
  ret void, !dbg !4615
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !4616 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4622
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4623
  ret ptr %1, !dbg !4624
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @software_node_release(ptr noundef %kobj) #0 align 16 !dbg !4625 {
entry:
  %kobj.addr = alloca ptr, align 8
  %swnode = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4627, metadata !DIExpression()), !dbg !4631
  call void @llvm.lifetime.start.p0(i64 8, ptr %swnode) #18, !dbg !4632
  call void @llvm.dbg.declare(metadata ptr %swnode, metadata !4628, metadata !DIExpression()), !dbg !4633
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !4634
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4629, metadata !DIExpression()), !dbg !4634
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4634
  store ptr %0, ptr %__mptr, align 8, !dbg !4634
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4634
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4634
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4634
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !4635
  %2 = load ptr, ptr %tmp, align 8, !dbg !4634
  store ptr %2, ptr %swnode, align 8, !dbg !4633
  %3 = load ptr, ptr %swnode, align 8, !dbg !4636
  %parent = getelementptr inbounds %struct.swnode, ptr %3, i32 0, i32 7, !dbg !4638
  %4 = load ptr, ptr %parent, align 8, !dbg !4638
  %tobool = icmp ne ptr %4, null, !dbg !4636
  br i1 %tobool, label %if.then, label %if.else, !dbg !4639

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %swnode, align 8, !dbg !4640
  %parent1 = getelementptr inbounds %struct.swnode, ptr %5, i32 0, i32 7, !dbg !4640
  %6 = load ptr, ptr %parent1, align 8, !dbg !4640
  %child_ids = getelementptr inbounds %struct.swnode, ptr %6, i32 0, i32 4, !dbg !4640
  %7 = load ptr, ptr %swnode, align 8, !dbg !4640
  %id = getelementptr inbounds %struct.swnode, ptr %7, i32 0, i32 3, !dbg !4640
  %8 = load i32, ptr %id, align 8, !dbg !4640
  call void @ida_free(ptr noundef %child_ids, i32 noundef %8) #17, !dbg !4640
  %9 = load ptr, ptr %swnode, align 8, !dbg !4642
  %entry2 = getelementptr inbounds %struct.swnode, ptr %9, i32 0, i32 5, !dbg !4643
  call void @list_del(ptr noundef %entry2) #17, !dbg !4644
  br label %if.end, !dbg !4645

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %swnode, align 8, !dbg !4646
  %id3 = getelementptr inbounds %struct.swnode, ptr %10, i32 0, i32 3, !dbg !4646
  %11 = load i32, ptr %id3, align 8, !dbg !4646
  call void @ida_free(ptr noundef @swnode_root_ids, i32 noundef %11) #17, !dbg !4646
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %swnode, align 8, !dbg !4648
  %allocated = getelementptr inbounds %struct.swnode, ptr %12, i32 0, i32 8, !dbg !4650
  %bf.load = load i8, ptr %allocated, align 8, !dbg !4650
  %bf.clear = and i8 %bf.load, 1, !dbg !4650
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4650
  %tobool4 = icmp ne i32 %bf.cast, 0, !dbg !4648
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4651

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %swnode, align 8, !dbg !4652
  %node = getelementptr inbounds %struct.swnode, ptr %13, i32 0, i32 2, !dbg !4653
  %14 = load ptr, ptr %node, align 8, !dbg !4653
  call void @software_node_free(ptr noundef %14) #17, !dbg !4654
  br label %if.end6, !dbg !4654

if.end6:                                          ; preds = %if.then5, %if.end
  %15 = load ptr, ptr %swnode, align 8, !dbg !4655
  %child_ids7 = getelementptr inbounds %struct.swnode, ptr %15, i32 0, i32 4, !dbg !4656
  call void @ida_destroy(ptr noundef %child_ids7) #17, !dbg !4657
  %16 = load ptr, ptr %swnode, align 8, !dbg !4658
  call void @kfree(ptr noundef %16) #17, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 8, ptr %swnode) #18, !dbg !4660
  ret void, !dbg !4660
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4661 dso_local void @ida_free(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #2 align 16 !dbg !4664 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4666, metadata !DIExpression()), !dbg !4667
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4668
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !4669
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4670
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4671
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4672
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4673
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4674
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4675
  ret void, !dbg !4676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #2 align 16 !dbg !4677 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4679, metadata !DIExpression()), !dbg !4680
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4681
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !4683
  br i1 %call, label %if.end, label %if.then, !dbg !4684

if.then:                                          ; preds = %entry
  br label %return, !dbg !4685

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4686
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4687
  %2 = load ptr, ptr %prev, align 8, !dbg !4687
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4688
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4689
  %4 = load ptr, ptr %next, align 8, !dbg !4689
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !4690
  br label %return, !dbg !4691

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4691
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #2 align 16 !dbg !4692 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4696, metadata !DIExpression()), !dbg !4697
  ret i1 true, !dbg !4698
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !4699 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4701, metadata !DIExpression()), !dbg !4703
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4702, metadata !DIExpression()), !dbg !4704
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4705
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4706
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4707
  store ptr %0, ptr %prev1, align 8, !dbg !4708
  br label %do.body, !dbg !4709

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4710

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4712

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4710

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4714
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4714
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4714
  store volatile ptr %2, ptr %next4, align 8, !dbg !4714
  br label %do.end5, !dbg !4714

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4710

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4716
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !4717 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4721, metadata !DIExpression()), !dbg !4724
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4722, metadata !DIExpression()), !dbg !4725
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4723, metadata !DIExpression()), !dbg !4726
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4727
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4729
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4730
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !4731
  br i1 %call, label %if.end, label %if.then, !dbg !4732

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4733

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !4734
  %4 = load ptr, ptr %next.addr, align 8, !dbg !4735
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !4736
  store ptr %3, ptr %prev1, align 8, !dbg !4737
  %5 = load ptr, ptr %next.addr, align 8, !dbg !4738
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4739
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !4740
  store ptr %5, ptr %next2, align 8, !dbg !4741
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !4742
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4743
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !4744
  store ptr %7, ptr %prev3, align 8, !dbg !4745
  br label %do.body, !dbg !4746

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4747

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4749

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4747

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !4751
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !4751
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !4751
  store volatile ptr %9, ptr %next6, align 8, !dbg !4751
  br label %do.end7, !dbg !4751

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4747

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4753
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #2 align 16 !dbg !4754 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4758, metadata !DIExpression()), !dbg !4761
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4759, metadata !DIExpression()), !dbg !4762
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4760, metadata !DIExpression()), !dbg !4763
  ret i1 true, !dbg !4764
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4765 dso_local ptr @__dev_fwnode(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4768 dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone }
attributes #18 = { nounwind }
attributes #19 = { noredzone allocsize(0,1) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }
attributes #24 = { noredzone nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882}
!llvm.ident = !{!1883}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "software_node_ops", scope: !2, file: !3, line: 665, type: !803, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.swnode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/swnode\22 -D KBUILD_BASENAME=\22swnode\22 -D KBUILD_MODNAME=\22swnode\22 -D __KBUILD_MODNAME=kmod_swnode -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/swnode.ll drivers/base/swnode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !1793, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/swnode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19e6dfdd6e84bdc0c11eca886c516b08")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !92, !97, !107, !118}
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
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !79, line: 30, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!82 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!83 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !79, line: 21, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DIEnumerator(name: "DEV_PROP_U8", value: 0)
!87 = !DIEnumerator(name: "DEV_PROP_U16", value: 1)
!88 = !DIEnumerator(name: "DEV_PROP_U32", value: 2)
!89 = !DIEnumerator(name: "DEV_PROP_U64", value: 3)
!90 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4)
!91 = !DIEnumerator(name: "DEV_PROP_REF", value: 5)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 10, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "false", value: 0)
!96 = !DIEnumerator(name: "true", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !98, line: 364, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!99 = !{!100, !101, !102, !103, !104, !105, !106}
!100 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!103 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!104 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!105 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!106 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !108, line: 53, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117}
!110 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!111 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!112 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!113 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!114 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!115 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!116 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!117 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xa_lock_type", file: !119, line: 258, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "XA_LOCK_IRQ", value: 1)
!122 = !DIEnumerator(name: "XA_LOCK_BH", value: 2)
!123 = !{!124, !125, !1781, !143, !270, !267, !1788, !7, !1791, !1792, !256}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swnode", file: !3, line: 16, size: 1664, elements: !127)
!127 = !{!128, !795, !1736, !1771, !1772, !1783, !1784, !1785, !1786, !1787}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !126, file: !3, line: 17, baseType: !129, size: 512)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !108, line: 64, size: 512, elements: !130)
!130 = !{!131, !135, !142, !144, !233, !666, !780, !790, !791, !792, !793, !794}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !108, line: 65, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !129, file: !108, line: 66, baseType: !136, size: 128, offset: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !137, line: 190, size: 128, elements: !138)
!137 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!138 = !{!139, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !137, line: 191, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !136, file: !137, line: 191, baseType: !140, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !129, file: !108, line: 67, baseType: !143, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !129, file: !108, line: 68, baseType: !145, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !108, line: 168, size: 768, elements: !147)
!147 = !{!148, !149, !192, !193}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !146, file: !108, line: 169, baseType: !136, size: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !146, file: !108, line: 170, baseType: !150, size: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !151, line: 29, baseType: !152)
!151 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !151, line: 17, size: 32, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !151, line: 18, baseType: !155, size: 32)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !151, line: 18, size: 32, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !155, file: !151, line: 19, baseType: !158, size: 32)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !159, line: 14, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !158, file: !159, line: 15, baseType: !162, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !163, line: 44, baseType: !164)
!163 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !163, line: 14, size: 32, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !163, line: 15, baseType: !167, size: 32)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !163, line: 15, size: 32, elements: !168)
!168 = !{!169, !174, !184}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !167, file: !163, line: 16, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !137, line: 174, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 172, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !171, file: !137, line: 173, baseType: !46, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !163, line: 24, baseType: !175, size: 16)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !167, file: !163, line: 24, size: 16, elements: !176)
!176 = !{!177, !183}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !175, file: !163, line: 25, baseType: !178, size: 8)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !179, line: 17, baseType: !180)
!179 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !181, line: 21, baseType: !182)
!181 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!182 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !175, file: !163, line: 26, baseType: !178, size: 8, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !163, line: 28, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !167, file: !163, line: 28, size: 32, elements: !186)
!186 = !{!187, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !185, file: !163, line: 29, baseType: !188, size: 16)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !179, line: 19, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !181, line: 24, baseType: !190)
!190 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !185, file: !163, line: 30, baseType: !188, size: 16, offset: 16)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !146, file: !108, line: 171, baseType: !129, size: 512, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !146, file: !108, line: 172, baseType: !194, size: 64, offset: 704)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !108, line: 133, size: 192, elements: !197)
!197 = !{!198, !205, !210}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !196, file: !108, line: 134, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!46, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !108, line: 135, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!132, !203}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !196, file: !108, line: 136, baseType: !211, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!46, !203, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !108, line: 125, size: 20736, elements: !217)
!217 = !{!218, !223, !227, !228, !232}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !216, file: !108, line: 126, baseType: !219, size: 192)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 192, elements: !221)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!221 = !{!222}
!222 = !DISubrange(count: 3)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !216, file: !108, line: 127, baseType: !224, size: 4096, offset: 192)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 4096, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !216, file: !108, line: 128, baseType: !46, size: 32, offset: 4288)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !216, file: !108, line: 129, baseType: !229, size: 16384, offset: 4320)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 16384, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 2048)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !216, file: !108, line: 130, baseType: !46, size: 32, offset: 20704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !129, file: !108, line: 69, baseType: !234, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !108, line: 116, size: 384, elements: !237)
!237 = !{!238, !242, !271, !613, !644, !648}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !236, file: !108, line: 117, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !143}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !236, file: !108, line: 118, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !246, line: 254, size: 128, elements: !247)
!246 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!247 = !{!248, !263}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !245, file: !246, line: 255, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !143, !257, !220}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !137, line: 66, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !254, line: 73, baseType: !255)
!254 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !254, line: 15, baseType: !256)
!256 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !246, line: 30, size: 128, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !246, line: 31, baseType: !132, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !258, file: !246, line: 32, baseType: !262, size: 16, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !137, line: 24, baseType: !190)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !245, file: !246, line: 256, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!252, !143, !257, !132, !267}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 61, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !254, line: 72, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !254, line: 16, baseType: !270)
!270 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !236, file: !108, line: 119, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !246, line: 84, size: 320, elements: !276)
!276 = !{!277, !278, !282, !609, !611}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !246, line: 85, baseType: !132, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !275, file: !246, line: 86, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!262, !143, !257, !46}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !275, file: !246, line: 88, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!262, !143, !286, !46}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !246, line: 175, size: 512, elements: !288)
!288 = !{!289, !290, !291, !292, !299, !309, !310}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !287, file: !246, line: 176, baseType: !258, size: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !287, file: !246, line: 177, baseType: !267, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !287, file: !246, line: 178, baseType: !124, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !287, file: !246, line: 179, baseType: !293, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !298, line: 32, flags: DIFlagFwdDecl)
!298 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!299 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !287, file: !246, line: 180, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!252, !303, !143, !286, !220, !306, !267}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !305, line: 537, flags: DIFlagFwdDecl)
!305 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !137, line: 52, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !254, line: 88, baseType: !308)
!308 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !287, file: !246, line: 182, baseType: !300, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !287, file: !246, line: 184, baseType: !311, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!46, !303, !143, !286, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !298, line: 625, size: 1344, elements: !316)
!316 = !{!317, !334, !557, !563, !570, !571, !576, !579, !591, !592, !595, !599, !600, !601, !602, !603, !607}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !298, line: 628, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !298, line: 628, size: 128, elements: !319)
!319 = !{!320, !325}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !298, line: 629, baseType: !321, size: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !298, line: 629, size: 128, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !321, file: !298, line: 631, baseType: !270, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !321, file: !298, line: 632, baseType: !270, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !318, file: !298, line: 635, baseType: !326, size: 128, align: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !137, line: 232, size: 128, align: 64, elements: !327)
!327 = !{!328, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !137, line: 233, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !326, file: !137, line: 234, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !329}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !315, file: !298, line: 639, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !298, line: 733, size: 10240, elements: !337)
!337 = !{!338, !553}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !298, line: 734, baseType: !339, size: 10240)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !298, line: 734, size: 10240, elements: !340)
!340 = !{!341, !345, !359, !363, !364, !365, !366, !367, !368, !376, !377, !378, !387, !388, !397, !398, !399, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !446, !460, !463, !518, !519, !520, !523, !527, !528, !531, !532, !533, !540, !541}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !298, line: 739, baseType: !342, size: 512, align: 512)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !298, line: 739, size: 512, align: 512, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !342, file: !298, line: 747, baseType: !170, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !339, file: !298, line: 750, baseType: !346, size: 128, offset: 512)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !347, line: 218, size: 128, elements: !348)
!347 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!348 = !{!349, !357, !358}
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !347, line: 219, baseType: !350, size: 32)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !347, line: 219, size: 32, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !350, file: !347, line: 220, baseType: !150, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !350, file: !347, line: 221, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !347, line: 197, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 197, elements: !356)
!356 = !{}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !346, file: !347, line: 223, baseType: !7, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !346, file: !347, line: 224, baseType: !124, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !339, file: !298, line: 752, baseType: !360, size: 64, offset: 640)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!270, !303, !270, !270, !270, !270}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !339, file: !298, line: 756, baseType: !270, size: 64, offset: 704)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !339, file: !298, line: 757, baseType: !270, size: 64, offset: 768)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !339, file: !298, line: 760, baseType: !270, size: 64, offset: 832)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !339, file: !298, line: 761, baseType: !270, size: 64, offset: 896)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !339, file: !298, line: 763, baseType: !270, size: 64, offset: 960)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !339, file: !298, line: 764, baseType: !369, size: 64, offset: 1024)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !305, line: 299, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 299, size: 64, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !371, file: !305, line: 299, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !375, line: 18, baseType: !270)
!375 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !339, file: !298, line: 773, baseType: !170, size: 32, offset: 1088)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !339, file: !298, line: 785, baseType: !170, size: 32, offset: 1120)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !339, file: !298, line: 795, baseType: !379, size: 64, offset: 1152)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !298, line: 726, size: 128, elements: !381)
!381 = !{!382, !386}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !380, file: !298, line: 727, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !179, line: 23, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !181, line: 31, baseType: !385)
!385 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !380, file: !298, line: 728, baseType: !46, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !339, file: !298, line: 801, baseType: !270, size: 64, offset: 1216)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !339, file: !298, line: 804, baseType: !389, size: 64, offset: 1280)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !390, line: 13, baseType: !391)
!390 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !137, line: 181, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 179, size: 64, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !392, file: !137, line: 180, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !179, line: 22, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !181, line: 30, baseType: !308)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !339, file: !298, line: 806, baseType: !46, size: 32, offset: 1344)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !339, file: !298, line: 808, baseType: !150, size: 32, offset: 1376)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !339, file: !298, line: 823, baseType: !400, size: 320, offset: 1408)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !401, line: 48, size: 320, elements: !402)
!401 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!402 = !{!403, !404, !405, !410, !412}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !400, file: !401, line: 49, baseType: !389, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !400, file: !401, line: 55, baseType: !389, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !400, file: !401, line: 57, baseType: !406, size: 32, offset: 128)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !407, line: 15, size: 32, elements: !408)
!407 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !406, file: !407, line: 20, baseType: !170, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !400, file: !401, line: 59, baseType: !411, size: 32, offset: 160)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !159, line: 23, baseType: !158)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !400, file: !401, line: 60, baseType: !136, size: 128, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !339, file: !298, line: 825, baseType: !136, size: 128, offset: 1728)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !339, file: !298, line: 845, baseType: !46, size: 32, offset: 1856)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !339, file: !298, line: 849, baseType: !270, size: 64, offset: 1920)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !339, file: !298, line: 850, baseType: !270, size: 64, offset: 1984)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !339, file: !298, line: 852, baseType: !270, size: 64, offset: 2048)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !339, file: !298, line: 853, baseType: !270, size: 64, offset: 2112)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !339, file: !298, line: 854, baseType: !391, size: 64, offset: 2176)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !339, file: !298, line: 855, baseType: !270, size: 64, offset: 2240)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !339, file: !298, line: 856, baseType: !270, size: 64, offset: 2304)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !339, file: !298, line: 857, baseType: !270, size: 64, offset: 2368)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !339, file: !298, line: 858, baseType: !270, size: 64, offset: 2432)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !339, file: !298, line: 865, baseType: !425, size: 32, offset: 2496)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !426, line: 69, baseType: !427)
!426 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !426, line: 64, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !427, file: !426, line: 65, baseType: !7, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !339, file: !298, line: 867, baseType: !150, size: 32, offset: 2528)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !339, file: !298, line: 869, baseType: !270, size: 64, offset: 2560)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !339, file: !298, line: 869, baseType: !270, size: 64, offset: 2624)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !339, file: !298, line: 869, baseType: !270, size: 64, offset: 2688)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !339, file: !298, line: 869, baseType: !270, size: 64, offset: 2752)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !339, file: !298, line: 870, baseType: !270, size: 64, offset: 2816)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !339, file: !298, line: 870, baseType: !270, size: 64, offset: 2880)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !339, file: !298, line: 870, baseType: !270, size: 64, offset: 2944)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !339, file: !298, line: 871, baseType: !270, size: 64, offset: 3008)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !339, file: !298, line: 871, baseType: !270, size: 64, offset: 3072)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !339, file: !298, line: 871, baseType: !270, size: 64, offset: 3136)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !339, file: !298, line: 871, baseType: !270, size: 64, offset: 3200)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !339, file: !298, line: 873, baseType: !443, size: 3328, offset: 3264)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 3328, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 52)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !339, file: !298, line: 875, baseType: !447, size: 1280, offset: 6592)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 1280, elements: !458)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !449, line: 22, size: 320, elements: !450)
!449 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!450 = !{!451, !452, !453, !454}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !448, file: !449, line: 23, baseType: !411, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !448, file: !449, line: 24, baseType: !395, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !448, file: !449, line: 26, baseType: !136, size: 128, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !448, file: !449, line: 28, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !179, line: 20, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !181, line: 26, baseType: !46)
!458 = !{!459}
!459 = !DISubrange(count: 4)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !339, file: !298, line: 877, baseType: !461, size: 64, offset: 7872)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !298, line: 877, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !339, file: !298, line: 880, baseType: !464, size: 1088, offset: 7936)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !465, line: 72, baseType: !466)
!465 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 23, size: 1088, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !475, !476, !484, !485, !512, !513, !514}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !466, file: !465, line: 28, baseType: !383, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !466, file: !465, line: 38, baseType: !391, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !466, file: !465, line: 40, baseType: !270, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !466, file: !465, line: 43, baseType: !400, size: 320, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !466, file: !465, line: 44, baseType: !473, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !465, line: 44, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !465, line: 48, baseType: !270, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !466, file: !465, line: 59, baseType: !477, size: 256, offset: 640)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !478, line: 66, size: 256, elements: !479)
!478 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!479 = !{!480, !481, !482, !483}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !477, file: !478, line: 67, baseType: !389, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !477, file: !478, line: 68, baseType: !411, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !477, file: !478, line: 70, baseType: !406, size: 32, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !477, file: !478, line: 72, baseType: !136, size: 128, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !466, file: !465, line: 60, baseType: !124, size: 64, offset: 896)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !466, file: !465, line: 61, baseType: !486, size: 64, offset: 960)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !489, line: 13, size: 1216, elements: !490)
!489 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!490 = !{!491, !492, !493, !494, !495, !496, !497, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !488, file: !489, line: 14, baseType: !124, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !488, file: !489, line: 15, baseType: !270, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !488, file: !489, line: 17, baseType: !270, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !488, file: !489, line: 17, baseType: !270, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !488, file: !489, line: 18, baseType: !270, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !488, file: !489, line: 18, baseType: !270, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !488, file: !489, line: 19, baseType: !498, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !488, file: !489, line: 21, baseType: !256, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !488, file: !489, line: 23, baseType: !256, size: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !488, file: !489, line: 24, baseType: !256, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !488, file: !489, line: 25, baseType: !256, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !488, file: !489, line: 26, baseType: !256, size: 64, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !488, file: !489, line: 27, baseType: !256, size: 64, offset: 768)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !488, file: !489, line: 28, baseType: !256, size: 64, offset: 832)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !488, file: !489, line: 29, baseType: !256, size: 64, offset: 896)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !488, file: !489, line: 30, baseType: !256, size: 64, offset: 960)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !488, file: !489, line: 31, baseType: !256, size: 64, offset: 1024)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !488, file: !489, line: 32, baseType: !256, size: 64, offset: 1088)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !488, file: !489, line: 33, baseType: !256, size: 64, offset: 1152)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !466, file: !465, line: 63, baseType: !170, size: 32, offset: 1024)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !466, file: !465, line: 69, baseType: !188, size: 16, offset: 1056)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !466, file: !465, line: 70, baseType: !515, size: 16, offset: 1072)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !179, line: 18, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !181, line: 23, baseType: !517)
!517 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !298, line: 882, baseType: !270, size: 64, offset: 9024)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !339, file: !298, line: 885, baseType: !150, size: 32, offset: 9088)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !339, file: !298, line: 886, baseType: !521, size: 64, offset: 9152)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !298, line: 732, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !339, file: !298, line: 901, baseType: !524, size: 64, offset: 9216)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !526, line: 18, flags: DIFlagFwdDecl)
!526 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!527 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !339, file: !298, line: 904, baseType: !303, size: 64, offset: 9280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !339, file: !298, line: 906, baseType: !529, size: 64, offset: 9344)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !298, line: 906, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !339, file: !298, line: 930, baseType: !170, size: 32, offset: 9408)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !339, file: !298, line: 933, baseType: !170, size: 32, offset: 9440)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !339, file: !298, line: 935, baseType: !534, size: 64, offset: 9472)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !535, line: 103, size: 64, elements: !536)
!535 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !534, file: !535, line: 104, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !535, line: 101, flags: DIFlagFwdDecl)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !339, file: !298, line: 940, baseType: !389, size: 64, offset: 9536)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !339, file: !298, line: 942, baseType: !542, size: 256, offset: 9600)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !543, line: 98, size: 256, elements: !544)
!543 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!544 = !{!545, !546, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !542, file: !543, line: 99, baseType: !389, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !542, file: !543, line: 100, baseType: !136, size: 128, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !542, file: !543, line: 101, baseType: !548, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !543, line: 21, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !336, file: !298, line: 986, baseType: !554, offset: 10240)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: -1)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !315, file: !298, line: 640, baseType: !558, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !305, line: 297, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !305, line: 297, size: 64, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !559, file: !305, line: 297, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !375, line: 19, baseType: !270)
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !298, line: 646, baseType: !564, size: 64, offset: 256)
!564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !298, line: 646, size: 64, elements: !565)
!565 = !{!566, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !564, file: !298, line: 647, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !298, line: 542, baseType: !270)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !564, file: !298, line: 648, baseType: !568, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !315, file: !298, line: 666, baseType: !46, size: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !315, file: !298, line: 667, baseType: !572, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !298, line: 579, size: 320, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !573, file: !298, line: 580, baseType: !400, size: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !315, file: !298, line: 670, baseType: !577, size: 8, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !137, line: 35, baseType: !578)
!578 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !315, file: !298, line: 681, baseType: !580, size: 256, offset: 512)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !298, line: 678, size: 256, elements: !581)
!581 = !{!582, !590}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !580, file: !298, line: 679, baseType: !583, size: 192, align: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !584, line: 5, size: 192, align: 64, elements: !585)
!584 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!585 = !{!586, !587, !589}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !583, file: !584, line: 6, baseType: !270, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !583, file: !584, line: 7, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !583, file: !584, line: 8, baseType: !588, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !580, file: !298, line: 680, baseType: !270, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !315, file: !298, line: 689, baseType: !136, size: 128, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !315, file: !298, line: 691, baseType: !593, size: 64, offset: 896)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !298, line: 691, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !315, file: !298, line: 694, baseType: !596, size: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !298, line: 694, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !315, file: !298, line: 697, baseType: !270, size: 64, offset: 1024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !315, file: !298, line: 699, baseType: !303, size: 64, offset: 1088)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !315, file: !298, line: 700, baseType: !124, size: 64, offset: 1152)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !315, file: !298, line: 711, baseType: !389, size: 64, offset: 1216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !315, file: !298, line: 717, baseType: !604, size: 64, offset: 1280)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !606, line: 54, flags: DIFlagFwdDecl)
!606 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !315, file: !298, line: 722, baseType: !608, offset: 1344)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !298, line: 570, elements: !356)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !275, file: !246, line: 90, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !275, file: !246, line: 91, baseType: !612, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !236, file: !108, line: 120, baseType: !614, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!617, !203}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !620)
!620 = !{!621, !622, !626, !630, !636, !640}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !6, line: 40, baseType: !5, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !619, file: !6, line: 41, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!577}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !619, file: !6, line: 42, baseType: !627, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!124}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !619, file: !6, line: 43, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!498, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !619, file: !6, line: 44, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!498}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !619, file: !6, line: 45, baseType: !641, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !124}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !236, file: !108, line: 121, baseType: !645, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!498, !203}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !236, file: !108, line: 122, baseType: !649, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !203, !652, !659}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !526, line: 23, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 21, size: 32, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !654, file: !526, line: 22, baseType: !657, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !137, line: 37, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !254, line: 49, baseType: !7)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !526, line: 28, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 26, size: 32, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !661, file: !526, line: 27, baseType: !664, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !137, line: 38, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !254, line: 50, baseType: !7)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !129, file: !108, line: 70, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !669, line: 190, size: 1152, elements: !670)
!669 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !772, !773, !774, !775, !776, !779}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !669, line: 191, baseType: !170, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !668, file: !669, line: 192, baseType: !170, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !668, file: !669, line: 202, baseType: !667, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !668, file: !669, line: 203, baseType: !132, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !668, file: !669, line: 205, baseType: !583, size: 192, align: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !668, file: !669, line: 207, baseType: !498, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !668, file: !669, line: 208, baseType: !7, size: 32, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !669, line: 209, baseType: !679, size: 256, offset: 512)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !669, line: 209, size: 256, elements: !680)
!680 = !{!681, !693, !697}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !679, file: !669, line: 210, baseType: !682, size: 256)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !669, line: 153, size: 256, elements: !683)
!683 = !{!684, !685, !689, !692}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !682, file: !669, line: 154, baseType: !270, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !682, file: !669, line: 156, baseType: !686, size: 64, offset: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !584, line: 12, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !686, file: !584, line: 13, baseType: !588, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !682, file: !669, line: 162, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !669, line: 162, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !682, file: !669, line: 167, baseType: !270, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !679, file: !669, line: 211, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !669, line: 170, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !694, file: !669, line: 171, baseType: !667, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !679, file: !669, line: 212, baseType: !698, size: 256)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !669, line: 174, size: 256, elements: !699)
!699 = !{!700, !767, !770, !771}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !698, file: !669, line: 175, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !669, line: 271, size: 768, elements: !704)
!704 = !{!705, !727, !731, !735, !740, !744, !748, !752, !753, !754, !755, !763}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !703, file: !669, line: 276, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!46, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !669, line: 251, size: 1216, elements: !711)
!711 = !{!712, !713, !714, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !710, file: !669, line: 253, baseType: !667, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !710, file: !669, line: 254, baseType: !303, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !710, file: !669, line: 255, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !606, line: 66, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !710, file: !669, line: 256, baseType: !124, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !710, file: !669, line: 259, baseType: !477, size: 256, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !710, file: !669, line: 260, baseType: !477, size: 256, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !710, file: !669, line: 261, baseType: !46, size: 32, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !710, file: !669, line: 262, baseType: !136, size: 128, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !710, file: !669, line: 263, baseType: !220, size: 64, offset: 960)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !710, file: !669, line: 265, baseType: !267, size: 64, offset: 1024)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !710, file: !669, line: 266, baseType: !577, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !710, file: !669, line: 267, baseType: !577, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !710, file: !669, line: 268, baseType: !596, size: 64, offset: 1152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !703, file: !669, line: 277, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !709}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !703, file: !669, line: 290, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!46, !715, !124}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !703, file: !669, line: 292, baseType: !736, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!124, !715, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !703, file: !669, line: 293, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!124, !715, !124, !739}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !703, file: !669, line: 294, baseType: !745, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !715, !124}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !703, file: !669, line: 296, baseType: !749, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!252, !709, !220, !267, !306}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !703, file: !669, line: 306, baseType: !267, size: 64, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !703, file: !669, line: 313, baseType: !577, size: 8, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !703, file: !669, line: 314, baseType: !749, size: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !703, file: !669, line: 317, baseType: !756, size: 64, offset: 640)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!759, !709, !761}
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !760, line: 59, baseType: !7)
!760 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !669, line: 31, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !703, file: !669, line: 320, baseType: !764, size: 64, offset: 704)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!46, !709, !314}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !698, file: !669, line: 176, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !669, line: 35, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !698, file: !669, line: 177, baseType: !306, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !698, file: !669, line: 178, baseType: !667, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !668, file: !669, line: 215, baseType: !124, size: 64, offset: 768)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !668, file: !669, line: 221, baseType: !383, size: 64, offset: 832)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !669, line: 223, baseType: !190, size: 16, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !668, file: !669, line: 224, baseType: !262, size: 16, offset: 912)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !668, file: !669, line: 225, baseType: !777, size: 64, offset: 960)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !669, line: 36, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !668, file: !669, line: 227, baseType: !326, size: 128, align: 64, offset: 1024)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !129, file: !108, line: 71, baseType: !781, size: 32, offset: 448)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !782, line: 19, size: 32, elements: !783)
!782 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !781, file: !782, line: 20, baseType: !785, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !786, line: 113, baseType: !787)
!786 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !786, line: 111, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !787, file: !786, line: 112, baseType: !170, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !129, file: !108, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !129, file: !108, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !129, file: !108, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !129, file: !108, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !129, file: !108, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !126, file: !3, line: 18, baseType: !796, size: 512, offset: 512)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !797, line: 41, size: 512, elements: !798)
!797 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!798 = !{!799, !801, !1732, !1733, !1734, !1735}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !796, file: !797, line: 42, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !796, file: !797, line: 43, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !797, line: 125, size: 1408, elements: !805)
!805 = !{!806, !810, !814, !820, !1662, !1663, !1667, !1671, !1675, !1679, !1683, !1684, !1688, !1692, !1696, !1707, !1708, !1709, !1710, !1720, !1724, !1728}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !804, file: !797, line: 126, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!800, !800}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !804, file: !797, line: 127, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !800}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !804, file: !797, line: 128, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!577, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !804, file: !797, line: 129, baseType: !821, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!498, !818, !824}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !827)
!827 = !{!828, !829, !831, !1350, !1351, !1366, !1367, !1368, !1369, !1370, !1371, !1378, !1548, !1561, !1571, !1575, !1577, !1578, !1579, !1583, !1590, !1591, !1594, !1597, !1601, !1602, !1603, !1606, !1607, !1608, !1609, !1639, !1640, !1641, !1644, !1647, !1656, !1657, !1658, !1659, !1660, !1661}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !826, file: !26, line: 706, baseType: !129, size: 512)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !826, file: !26, line: 707, baseType: !830, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !826, file: !26, line: 709, baseType: !832, size: 64, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !834, line: 108, size: 1728, elements: !835)
!834 = !DIFile(filename: "drivers/base/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5f3031875b0a7d87c5130cddf3a0079")
!835 = !{!836, !853, !854, !855, !856, !857, !858, !1347, !1348, !1349}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "klist_children", scope: !833, file: !834, line: 109, baseType: !837, size: 320, align: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !838, line: 18, size: 320, align: 64, elements: !839)
!838 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!839 = !{!840, !841, !842, !852}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !837, file: !838, line: 19, baseType: !150, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !837, file: !838, line: 20, baseType: !136, size: 128, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !837, file: !838, line: 21, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !846}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !838, line: 37, size: 256, elements: !848)
!848 = !{!849, !850, !851}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !847, file: !838, line: 38, baseType: !124, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !847, file: !838, line: 39, baseType: !136, size: 128, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !847, file: !838, line: 40, baseType: !781, size: 32, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !837, file: !838, line: 22, baseType: !843, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "knode_parent", scope: !833, file: !834, line: 110, baseType: !847, size: 256, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "knode_driver", scope: !833, file: !834, line: 111, baseType: !847, size: 256, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !833, file: !834, line: 112, baseType: !847, size: 256, offset: 832)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "knode_class", scope: !833, file: !834, line: 113, baseType: !847, size: 256, offset: 1088)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe", scope: !833, file: !834, line: 114, baseType: !136, size: 128, offset: 1344)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "async_driver", scope: !833, file: !834, line: 115, baseType: !859, size: 64, offset: 1472)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !861)
!861 = !{!862, !863, !939, !1317, !1318, !1319, !1320, !1324, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !860, file: !20, line: 97, baseType: !132, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !860, file: !20, line: 98, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !867, line: 80, size: 1344, elements: !868)
!867 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!868 = !{!869, !870, !871, !872, !873, !874, !878, !882, !886, !890, !891, !892, !893, !894, !902, !903, !904, !905, !906, !934, !938}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !866, file: !867, line: 81, baseType: !132, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !866, file: !867, line: 82, baseType: !132, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !866, file: !867, line: 83, baseType: !272, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !866, file: !867, line: 84, baseType: !272, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !866, file: !867, line: 85, baseType: !272, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !866, file: !867, line: 87, baseType: !875, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!46, !830, !859}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !866, file: !867, line: 88, baseType: !879, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!46, !824, !215}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !866, file: !867, line: 89, baseType: !883, size: 64, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!46, !830}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !866, file: !867, line: 90, baseType: !887, size: 64, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !830}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !866, file: !867, line: 91, baseType: !887, size: 64, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !866, file: !867, line: 92, baseType: !887, size: 64, offset: 640)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !866, file: !867, line: 94, baseType: !883, size: 64, offset: 704)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !866, file: !867, line: 95, baseType: !883, size: 64, offset: 768)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !866, file: !867, line: 97, baseType: !895, size: 64, offset: 832)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!46, !830, !898}
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !900)
!900 = !{!901}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !899, file: !38, line: 59, baseType: !46, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !866, file: !867, line: 98, baseType: !883, size: 64, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !866, file: !867, line: 100, baseType: !883, size: 64, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !866, file: !867, line: 102, baseType: !883, size: 64, offset: 1024)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !866, file: !867, line: 103, baseType: !887, size: 64, offset: 1088)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !866, file: !867, line: 105, baseType: !907, size: 64, offset: 1152)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !910)
!910 = !{!911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !909, file: !38, line: 287, baseType: !883, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !909, file: !38, line: 288, baseType: !887, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !909, file: !38, line: 289, baseType: !883, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !909, file: !38, line: 290, baseType: !883, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !909, file: !38, line: 291, baseType: !883, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !909, file: !38, line: 292, baseType: !883, size: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !909, file: !38, line: 293, baseType: !883, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !909, file: !38, line: 294, baseType: !883, size: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !909, file: !38, line: 295, baseType: !883, size: 64, offset: 512)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !909, file: !38, line: 296, baseType: !883, size: 64, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !909, file: !38, line: 297, baseType: !883, size: 64, offset: 640)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !909, file: !38, line: 298, baseType: !883, size: 64, offset: 704)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !909, file: !38, line: 299, baseType: !883, size: 64, offset: 768)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !909, file: !38, line: 300, baseType: !883, size: 64, offset: 832)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !909, file: !38, line: 301, baseType: !883, size: 64, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !909, file: !38, line: 302, baseType: !883, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !909, file: !38, line: 303, baseType: !883, size: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !909, file: !38, line: 304, baseType: !883, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !909, file: !38, line: 305, baseType: !883, size: 64, offset: 1152)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !909, file: !38, line: 306, baseType: !883, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !909, file: !38, line: 307, baseType: !883, size: 64, offset: 1280)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !909, file: !38, line: 308, baseType: !883, size: 64, offset: 1344)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !909, file: !38, line: 309, baseType: !883, size: 64, offset: 1408)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !866, file: !867, line: 107, baseType: !935, size: 64, offset: 1216)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !867, line: 107, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !866, file: !867, line: 109, baseType: !577, size: 8, offset: 1280)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !860, file: !20, line: 100, baseType: !940, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !942)
!942 = !{!943, !944, !945, !949, !970, !996, !997, !998, !999, !1003, !1006, !1007, !1008, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1071, !1075, !1095, !1113, !1114, !1115, !1116, !1125, !1149, !1150, !1153, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1167, !1168, !1275, !1283, !1284, !1285, !1287, !1291, !1292, !1296, !1297, !1298, !1299, !1301, !1302, !1303, !1310, !1311, !1312, !1316}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !941, file: !13, line: 403, baseType: !12, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !941, file: !13, line: 406, baseType: !136, size: 128, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !941, file: !13, line: 409, baseType: !946, size: 448, offset: 192)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 448, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 56)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !941, file: !13, line: 417, baseType: !950, size: 768, offset: 640)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !951)
!951 = !{!952, !953, !954, !955, !958}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !950, file: !13, line: 46, baseType: !129, size: 512)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !950, file: !13, line: 47, baseType: !940, size: 64, offset: 512)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !950, file: !13, line: 48, baseType: !143, size: 64, offset: 576)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !950, file: !13, line: 49, baseType: !956, size: 64, offset: 640)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !950, file: !13, line: 50, baseType: !959, size: 64, offset: 704)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !961, line: 26, size: 256, elements: !962)
!961 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !960, file: !961, line: 27, baseType: !7, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !960, file: !961, line: 28, baseType: !965, size: 192, offset: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !966, line: 43, size: 192, elements: !967)
!966 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !965, file: !966, line: 44, baseType: !411, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !965, file: !966, line: 45, baseType: !136, size: 128, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !941, file: !13, line: 418, baseType: !971, size: 64, offset: 1408)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !973)
!973 = !{!974, !975, !980, !984, !988, !992}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !972, file: !13, line: 54, baseType: !258, size: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !972, file: !13, line: 55, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!252, !971, !979, !220}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !972, file: !13, line: 57, baseType: !981, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!252, !971, !979, !132, !267}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !972, file: !13, line: 59, baseType: !985, size: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !940, !132}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !972, file: !13, line: 60, baseType: !989, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!46, !940}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !972, file: !13, line: 61, baseType: !993, size: 64, offset: 384)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !940}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !941, file: !13, line: 419, baseType: !132, size: 64, offset: 1472)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !941, file: !13, line: 420, baseType: !132, size: 64, offset: 1536)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !941, file: !13, line: 421, baseType: !143, size: 64, offset: 1600)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !941, file: !13, line: 424, baseType: !1000, size: 64, offset: 1664)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !941, file: !13, line: 425, baseType: !1004, size: 64, offset: 1728)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !941, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !941, file: !13, line: 435, baseType: !477, size: 256, offset: 1856)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !941, file: !13, line: 437, baseType: !1009, size: 64, offset: 2112)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1011, line: 69, size: 320, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1012 = !{!1013, !1014, !1015, !1032, !1034, !1038, !1039}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1010, file: !1011, line: 70, baseType: !132, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1010, file: !1011, line: 71, baseType: !940, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1010, file: !1011, line: 72, baseType: !1016, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1011, line: 47, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1027, !1031}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1018, file: !1011, line: 49, baseType: !7, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1018, file: !1011, line: 51, baseType: !1022, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!46, !132, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1018, file: !1011, line: 53, baseType: !1028, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!46, !220, !1025}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1018, file: !1011, line: 55, baseType: !641, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1010, file: !1011, line: 73, baseType: !1033, size: 16, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1010, file: !1011, line: 74, baseType: !1035, size: 8, offset: 208)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !179, line: 16, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !181, line: 20, baseType: !1037)
!1037 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !1011, line: 75, baseType: !178, size: 8, offset: 216)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !1011, line: 76, baseType: !1040, size: 64, offset: 256)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1010, file: !1011, line: 76, size: 64, elements: !1041)
!1041 = !{!1042, !1043, !1050}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1040, file: !1011, line: 77, baseType: !124, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1040, file: !1011, line: 78, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1011, line: 86, size: 128, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1046, file: !1011, line: 87, baseType: !7, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1046, file: !1011, line: 88, baseType: !220, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1040, file: !1011, line: 79, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1011, line: 92, size: 256, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1059, !1060}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1053, file: !1011, line: 94, baseType: !7, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1053, file: !1011, line: 95, baseType: !7, size: 32, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1053, file: !1011, line: 96, baseType: !1058, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1053, file: !1011, line: 97, baseType: !1016, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1053, file: !1011, line: 98, baseType: !124, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !941, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !941, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !941, file: !13, line: 442, baseType: !1000, size: 64, offset: 2240)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !941, file: !13, line: 443, baseType: !1004, size: 64, offset: 2304)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !941, file: !13, line: 444, baseType: !577, size: 8, offset: 2368)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !941, file: !13, line: 451, baseType: !577, size: 8, offset: 2376)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !941, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !941, file: !13, line: 455, baseType: !1069, size: 64, offset: 2432)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !941, file: !13, line: 458, baseType: !1072, size: 64, offset: 2496)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!46}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !941, file: !13, line: 460, baseType: !1076, size: 4032, align: 512, offset: 2560)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 4032, elements: !1093)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1077, file: !13, line: 363, baseType: !124, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1077, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1077, file: !13, line: 367, baseType: !1082, size: 448, offset: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1082, file: !13, line: 320, baseType: !940, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1082, file: !13, line: 321, baseType: !1086, size: 384, offset: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1087, line: 40, size: 384, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1086, file: !1087, line: 41, baseType: !1090, size: 384, align: 64)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 384, align: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 2)
!1093 = !{!1094}
!1094 = !DISubrange(count: 7)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !941, file: !13, line: 463, baseType: !1096, size: 192, offset: 6592)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1097, line: 8, size: 192, elements: !1098)
!1097 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1098 = !{!1099, !1100, !1102}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1096, file: !1097, line: 10, baseType: !7, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1096, file: !1097, line: 11, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1096, file: !1097, line: 12, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1105, line: 59, size: 48, elements: !1106)
!1105 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1104, file: !1105, line: 60, baseType: !515, size: 16)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1104, file: !1105, line: 61, baseType: !515, size: 16, offset: 16)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1104, file: !1105, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1104, file: !1105, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1104, file: !1105, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1104, file: !1105, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !941, file: !13, line: 465, baseType: !270, size: 64, offset: 6784)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !941, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !941, file: !13, line: 470, baseType: !136, size: 128, offset: 6912)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !941, file: !13, line: 471, baseType: !1117, size: 64, offset: 7040)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1119, line: 33, size: 96, elements: !1120)
!1119 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1120 = !{!1121, !1122, !1123, !1124}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1118, file: !1119, line: 37, baseType: !46, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1118, file: !1119, line: 43, baseType: !46, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1118, file: !1119, line: 45, baseType: !190, size: 16, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !1119, line: 47, baseType: !190, size: 16, offset: 80)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !941, file: !13, line: 476, baseType: !1126, size: 64, offset: 7104)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1128)
!1128 = !{!1129, !1146, !1147, !1148}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1127, file: !13, line: 379, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1132, line: 204, baseType: !1133)
!1132 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1132, line: 197, size: 192, elements: !1134)
!1134 = !{!1135, !1138, !1139, !1140, !1142, !1144}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1133, file: !1132, line: 198, baseType: !1136, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1132, line: 21, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !181, line: 27, baseType: !7)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1133, file: !1132, line: 199, baseType: !182, size: 8, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1133, file: !1132, line: 200, baseType: !182, size: 8, offset: 40)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1133, file: !1132, line: 201, baseType: !1141, size: 16, offset: 48)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1132, line: 17, baseType: !189)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1133, file: !1132, line: 202, baseType: !1143, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1132, line: 16, baseType: !384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1133, file: !1132, line: 203, baseType: !1145, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1132, line: 22, baseType: !384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1127, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1127, file: !13, line: 381, baseType: !220, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1127, file: !13, line: 382, baseType: !220, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !941, file: !13, line: 477, baseType: !1127, size: 256, offset: 7168)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !941, file: !13, line: 480, baseType: !1151, size: 64, offset: 7424)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !941, file: !13, line: 483, baseType: !1154, size: 64, offset: 7488)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !941, file: !13, line: 488, baseType: !220, size: 64, offset: 7552)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !941, file: !13, line: 492, baseType: !124, size: 64, offset: 7616)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !941, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !941, file: !13, line: 495, baseType: !124, size: 64, offset: 7744)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !941, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !941, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !941, file: !13, line: 500, baseType: !1163, size: 64, offset: 7872)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1165, line: 45, baseType: !1166)
!1165 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !941, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !941, file: !13, line: 504, baseType: !1169, size: 64, offset: 8000)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1172, line: 96, size: 192, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1173 = !{!1174, !1175, !1236, !1239}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1171, file: !1172, line: 97, baseType: !7, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1171, file: !1172, line: 98, baseType: !1176, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1172, line: 24, size: 3072, elements: !1178)
!1178 = !{!1179, !1181, !1182, !1183, !1184, !1198, !1199, !1200, !1201, !1220, !1221, !1222, !1233, !1234, !1235}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1177, file: !1172, line: 26, baseType: !1180, size: 128)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 128, elements: !1091)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1177, file: !1172, line: 27, baseType: !1180, size: 128, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1177, file: !1172, line: 28, baseType: !46, size: 32, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1177, file: !1172, line: 31, baseType: !150, size: 32, align: 512, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1177, file: !1172, line: 32, baseType: !1185, size: 960, offset: 576)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1186, line: 206, size: 960, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1187 = !{!1188, !1189, !1192, !1194, !1195, !1197}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1185, file: !1186, line: 207, baseType: !329, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1185, file: !1186, line: 208, baseType: !1190, size: 256, offset: 64)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 256, elements: !458)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1185, file: !1186, line: 209, baseType: !1193, size: 256, offset: 320)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !458)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1185, file: !1186, line: 213, baseType: !256, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1185, file: !1186, line: 215, baseType: !1196, size: 256, offset: 640)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !458)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1185, file: !1186, line: 216, baseType: !178, size: 8, offset: 896)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1177, file: !1172, line: 33, baseType: !270, size: 64, offset: 1536)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1177, file: !1172, line: 34, baseType: !270, size: 64, offset: 1600)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1177, file: !1172, line: 35, baseType: !577, size: 8, offset: 1664)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1177, file: !1172, line: 36, baseType: !1202, size: 320, offset: 1728)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1203, line: 11, size: 320, elements: !1204)
!1203 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1204 = !{!1205, !1212, !1213, !1218}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1202, file: !1203, line: 16, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !137, line: 198, size: 128, elements: !1207)
!1207 = !{!1208, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1206, file: !137, line: 199, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1206, file: !137, line: 199, baseType: !1211, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1202, file: !1203, line: 17, baseType: !270, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1202, file: !1203, line: 18, baseType: !1214, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1202, file: !1203, line: 19, baseType: !1219, size: 32, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !179, line: 21, baseType: !1137)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1177, file: !1172, line: 37, baseType: !542, size: 256, offset: 2048)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1177, file: !1172, line: 38, baseType: !326, size: 128, align: 64, offset: 2304)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1177, file: !1172, line: 39, baseType: !1223, size: 64, offset: 2432)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1172, line: 49, size: 768, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1224, file: !1172, line: 50, baseType: !150, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1224, file: !1172, line: 51, baseType: !1193, size: 256, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1224, file: !1172, line: 53, baseType: !1193, size: 256, offset: 320)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1224, file: !1172, line: 54, baseType: !270, size: 64, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1224, file: !1172, line: 55, baseType: !1223, size: 64, offset: 640)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1224, file: !1172, line: 56, baseType: !46, size: 32, offset: 704)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1224, file: !1172, line: 57, baseType: !46, size: 32, offset: 736)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1177, file: !1172, line: 40, baseType: !270, size: 64, offset: 2496)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1177, file: !1172, line: 42, baseType: !46, size: 32, offset: 2560)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1177, file: !1172, line: 43, baseType: !1170, size: 64, offset: 2624)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1171, file: !1172, line: 99, baseType: !1237, offset: 128)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1238, line: 211, elements: !356)
!1238 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1171, file: !1172, line: 100, baseType: !1240, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1172, line: 63, size: 3008, elements: !1242)
!1242 = !{!1243, !1244, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1274}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1241, file: !1172, line: 64, baseType: !1223, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1241, file: !1172, line: 65, baseType: !1245, size: 192, offset: 64)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1223, size: 192, elements: !221)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1241, file: !1172, line: 67, baseType: !46, size: 32, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1241, file: !1172, line: 68, baseType: !477, size: 256, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1241, file: !1172, line: 69, baseType: !150, size: 32, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1241, file: !1172, line: 70, baseType: !477, size: 256, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1241, file: !1172, line: 71, baseType: !270, size: 64, offset: 896)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1241, file: !1172, line: 72, baseType: !270, size: 64, offset: 960)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1241, file: !1172, line: 73, baseType: !270, size: 64, offset: 1024)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1241, file: !1172, line: 74, baseType: !270, size: 64, offset: 1088)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1241, file: !1172, line: 75, baseType: !270, size: 64, offset: 1152)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1241, file: !1172, line: 76, baseType: !270, size: 64, offset: 1216)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1241, file: !1172, line: 77, baseType: !270, size: 64, offset: 1280)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1241, file: !1172, line: 78, baseType: !270, size: 64, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1241, file: !1172, line: 79, baseType: !577, size: 8, offset: 1408)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1241, file: !1172, line: 80, baseType: !270, size: 64, offset: 1472)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1241, file: !1172, line: 81, baseType: !477, size: 256, offset: 1536)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1241, file: !1172, line: 82, baseType: !960, size: 256, offset: 1792)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1241, file: !1172, line: 84, baseType: !170, size: 32, offset: 2048)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1241, file: !1172, line: 87, baseType: !270, size: 64, offset: 2112)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1241, file: !1172, line: 88, baseType: !270, size: 64, offset: 2176)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1241, file: !1172, line: 89, baseType: !1266, size: 704, offset: 2240)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !543, line: 111, size: 704, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1273}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1266, file: !543, line: 112, baseType: !542, size: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1266, file: !543, line: 113, baseType: !1202, size: 320, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1266, file: !543, line: 116, baseType: !1271, size: 64, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !543, line: 18, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1266, file: !543, line: 117, baseType: !46, size: 32, offset: 640)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1241, file: !1172, line: 90, baseType: !1170, size: 64, offset: 2944)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !941, file: !13, line: 515, baseType: !1276, size: 64, offset: 8064)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1278, line: 117, size: 128, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1277, file: !1278, line: 118, baseType: !456, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1277, file: !1278, line: 119, baseType: !456, size: 32, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1277, file: !1278, line: 120, baseType: !256, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !941, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !941, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !941, file: !13, line: 520, baseType: !1286, size: 64, offset: 8192)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !941, file: !13, line: 523, baseType: !1288, size: 64, offset: 8256)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !941, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !941, file: !13, line: 525, baseType: !1293, size: 64, offset: 8384)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !941, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !941, file: !13, line: 533, baseType: !124, size: 64, offset: 8512)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !941, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !941, file: !13, line: 535, baseType: !1300, size: 64, offset: 8640)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !941, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !941, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !941, file: !13, line: 540, baseType: !1304, size: 64, offset: 8768)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1306, line: 32, size: 64, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1307 = !{!1308, !1309}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1305, file: !1306, line: 33, baseType: !456, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1305, file: !1306, line: 34, baseType: !456, size: 32, offset: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !941, file: !13, line: 563, baseType: !136, size: 128, offset: 8832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !941, file: !13, line: 565, baseType: !136, size: 128, offset: 8960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !941, file: !13, line: 568, baseType: !1313, size: 64, offset: 9088)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !941, file: !13, line: 570, baseType: !170, size: 32, offset: 9152)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !860, file: !20, line: 101, baseType: !132, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !860, file: !20, line: 103, baseType: !577, size: 8, offset: 256)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !860, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !860, file: !20, line: 106, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !860, file: !20, line: 107, baseType: !1325, size: 64, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1327)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !860, file: !20, line: 109, baseType: !883, size: 64, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !860, file: !20, line: 110, baseType: !887, size: 64, offset: 512)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !860, file: !20, line: 111, baseType: !883, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !860, file: !20, line: 112, baseType: !887, size: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !860, file: !20, line: 113, baseType: !895, size: 64, offset: 704)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !860, file: !20, line: 114, baseType: !883, size: 64, offset: 768)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !860, file: !20, line: 115, baseType: !272, size: 64, offset: 832)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !860, file: !20, line: 116, baseType: !272, size: 64, offset: 896)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !860, file: !20, line: 118, baseType: !907, size: 64, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !860, file: !20, line: 119, baseType: !887, size: 64, offset: 1024)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !860, file: !20, line: 121, baseType: !1339, size: 64, offset: 1088)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !834, line: 78, size: 1216, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1340, file: !834, line: 79, baseType: !129, size: 512)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "klist_devices", scope: !1340, file: !834, line: 80, baseType: !837, size: 320, align: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "knode_bus", scope: !1340, file: !834, line: 81, baseType: !847, size: 256, offset: 832)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1340, file: !834, line: 82, baseType: !979, size: 64, offset: 1088)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1340, file: !834, line: 83, baseType: !859, size: 64, offset: 1152)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_probe_reason", scope: !833, file: !834, line: 116, baseType: !220, size: 64, offset: 1536)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !833, file: !834, line: 117, baseType: !830, size: 64, offset: 1600)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !833, file: !834, line: 118, baseType: !178, size: 1, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !826, file: !26, line: 711, baseType: !132, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !826, file: !26, line: 712, baseType: !1352, size: 64, offset: 704)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1364, !1365}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1354, file: !26, line: 90, baseType: !132, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1354, file: !26, line: 91, baseType: !272, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1354, file: !26, line: 92, baseType: !879, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1354, file: !26, line: 93, baseType: !1360, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!220, !824, !1363, !652, !659}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1354, file: !26, line: 95, baseType: !887, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1354, file: !26, line: 97, baseType: !907, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !826, file: !26, line: 714, baseType: !864, size: 64, offset: 768)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !826, file: !26, line: 715, baseType: !859, size: 64, offset: 832)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !826, file: !26, line: 717, baseType: !124, size: 64, offset: 896)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !826, file: !26, line: 719, baseType: !124, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !826, file: !26, line: 721, baseType: !477, size: 256, offset: 1024)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !826, file: !26, line: 725, baseType: !1372, size: 448, offset: 1280)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1372, file: !26, line: 518, baseType: !136, size: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1372, file: !26, line: 519, baseType: !136, size: 128, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1372, file: !26, line: 520, baseType: !136, size: 128, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1372, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !826, file: !26, line: 726, baseType: !1379, size: 2496, offset: 1728)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1425, !1426, !1427, !1428, !1429, !1430, !1501, !1502, !1503, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1541, !1545}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1379, file: !38, line: 664, baseType: !898, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1379, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1379, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1379, file: !38, line: 667, baseType: !577, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1379, file: !38, line: 668, baseType: !577, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1379, file: !38, line: 669, baseType: !577, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1379, file: !38, line: 670, baseType: !577, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1379, file: !38, line: 671, baseType: !577, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1379, file: !38, line: 672, baseType: !577, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1379, file: !38, line: 673, baseType: !577, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1379, file: !38, line: 674, baseType: !577, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1379, file: !38, line: 675, baseType: !1219, size: 32, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1379, file: !38, line: 676, baseType: !150, size: 32, offset: 96)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1379, file: !38, line: 678, baseType: !136, size: 128, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1379, file: !38, line: 679, baseType: !960, size: 256, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1379, file: !38, line: 680, baseType: !1397, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1399, line: 43, size: 1536, elements: !1400)
!1399 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1408, !1409, !1410, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1398, file: !1399, line: 44, baseType: !132, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1398, file: !1399, line: 45, baseType: !46, size: 32, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1398, file: !1399, line: 46, baseType: !136, size: 128, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1398, file: !1399, line: 47, baseType: !150, size: 32, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1398, file: !1399, line: 48, baseType: !1406, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1398, file: !1399, line: 49, baseType: !1202, size: 320, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1398, file: !1399, line: 50, baseType: !270, size: 64, offset: 704)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1398, file: !1399, line: 51, baseType: !1411, size: 64, offset: 768)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1412, line: 29, baseType: !395)
!1412 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1398, file: !1399, line: 52, baseType: !1411, size: 64, offset: 832)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1398, file: !1399, line: 53, baseType: !1411, size: 64, offset: 896)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1398, file: !1399, line: 54, baseType: !1411, size: 64, offset: 960)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1398, file: !1399, line: 55, baseType: !1411, size: 64, offset: 1024)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1398, file: !1399, line: 56, baseType: !270, size: 64, offset: 1088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1398, file: !1399, line: 57, baseType: !270, size: 64, offset: 1152)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1398, file: !1399, line: 58, baseType: !270, size: 64, offset: 1216)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1398, file: !1399, line: 59, baseType: !270, size: 64, offset: 1280)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1398, file: !1399, line: 60, baseType: !270, size: 64, offset: 1344)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1398, file: !1399, line: 61, baseType: !830, size: 64, offset: 1408)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1398, file: !1399, line: 62, baseType: !577, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1398, file: !1399, line: 63, baseType: !577, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1379, file: !38, line: 681, baseType: !577, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1379, file: !38, line: 682, baseType: !577, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1379, file: !38, line: 683, baseType: !577, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1379, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1379, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1379, file: !38, line: 690, baseType: !1431, size: 512, offset: 640)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1432)
!1432 = !{!1433, !1439, !1440, !1445, !1497, !1498, !1499, !1500}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1431, file: !33, line: 119, baseType: !1434, size: 256)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1435, line: 9, size: 256, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1434, file: !1435, line: 10, baseType: !583, size: 192, align: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1434, file: !1435, line: 11, baseType: !1411, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1431, file: !33, line: 120, baseType: !1411, size: 64, offset: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1431, file: !33, line: 121, baseType: !1441, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!32, !1444}
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1431, file: !33, line: 122, baseType: !1446, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1448)
!1448 = !{!1449, !1474, !1475, !1478, !1483, !1484, !1492, !1496}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1447, file: !33, line: 160, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1451, file: !33, line: 216, baseType: !411, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1451, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1451, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1451, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1451, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1451, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1451, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1451, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1451, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1451, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1451, file: !33, line: 227, baseType: !190, size: 16, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1451, file: !33, line: 228, baseType: !190, size: 16, offset: 208)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1451, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1451, file: !33, line: 235, baseType: !1411, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1451, file: !33, line: 236, baseType: !1444, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1451, file: !33, line: 237, baseType: !1411, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1451, file: !33, line: 238, baseType: !1444, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1451, file: !33, line: 239, baseType: !1471, size: 4096, align: 512, offset: 512)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 4096, align: 512, elements: !1472)
!1472 = !{!1473}
!1473 = !DISubrange(count: 8)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1447, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1447, file: !33, line: 162, baseType: !1476, size: 32, offset: 96)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !137, line: 32, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !254, line: 96, baseType: !46)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1447, file: !33, line: 163, baseType: !1479, size: 32, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !426, line: 274, baseType: !1480)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !426, line: 274, size: 32, elements: !1481)
!1481 = !{!1482}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1480, file: !426, line: 274, baseType: !425, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1447, file: !33, line: 164, baseType: !1444, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1447, file: !33, line: 165, baseType: !1485, size: 128, offset: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1435, line: 14, size: 128, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1485, file: !1435, line: 15, baseType: !1488, size: 128)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !584, line: 26, size: 128, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1488, file: !584, line: 27, baseType: !686, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1488, file: !584, line: 28, baseType: !588, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1447, file: !33, line: 166, baseType: !1493, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1411}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1447, file: !33, line: 167, baseType: !1411, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1431, file: !33, line: 123, baseType: !178, size: 8, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1431, file: !33, line: 124, baseType: !178, size: 8, offset: 456)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1431, file: !33, line: 125, baseType: !178, size: 8, offset: 464)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1431, file: !33, line: 126, baseType: !178, size: 8, offset: 472)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1379, file: !38, line: 691, baseType: !383, size: 64, offset: 1152)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1379, file: !38, line: 692, baseType: !542, size: 256, offset: 1216)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1379, file: !38, line: 693, baseType: !1504, size: 192, offset: 1472)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1505, line: 41, baseType: !1506)
!1505 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1505, line: 37, size: 192, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1506, file: !1505, line: 38, baseType: !150, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1506, file: !1505, line: 39, baseType: !136, size: 128, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1379, file: !38, line: 694, baseType: !1406, size: 64, offset: 1664)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1379, file: !38, line: 695, baseType: !170, size: 32, offset: 1728)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1379, file: !38, line: 696, baseType: !170, size: 32, offset: 1760)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1379, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1379, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1379, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1379, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1379, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1379, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1379, file: !38, line: 703, baseType: !577, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1379, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1379, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1379, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1379, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1379, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1379, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1379, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1379, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1379, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1379, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1379, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1379, file: !38, line: 715, baseType: !383, size: 64, offset: 2048)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1379, file: !38, line: 716, baseType: !383, size: 64, offset: 2112)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1379, file: !38, line: 717, baseType: !383, size: 64, offset: 2176)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1379, file: !38, line: 718, baseType: !383, size: 64, offset: 2240)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1379, file: !38, line: 720, baseType: !1536, size: 64, offset: 2304)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1537, file: !38, line: 633, baseType: !150, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1537, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1379, file: !38, line: 721, baseType: !1542, size: 64, offset: 2368)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !830, !456}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1379, file: !38, line: 722, baseType: !1546, size: 64, offset: 2432)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !826, file: !26, line: 727, baseType: !1549, size: 64, offset: 4224)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1558, !1559, !1560}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1550, file: !38, line: 743, baseType: !909, size: 1472)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1550, file: !38, line: 744, baseType: !883, size: 64, offset: 1472)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1550, file: !38, line: 745, baseType: !1555, size: 64, offset: 1536)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !830, !577}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1550, file: !38, line: 746, baseType: !883, size: 64, offset: 1600)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1550, file: !38, line: 747, baseType: !887, size: 64, offset: 1664)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1550, file: !38, line: 748, baseType: !887, size: 64, offset: 1728)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !826, file: !26, line: 736, baseType: !1562, size: 128, offset: 4288)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1563)
!1563 = !{!1564, !1568}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1562, file: !26, line: 531, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1567, line: 13, flags: DIFlagFwdDecl)
!1567 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1562, file: !26, line: 532, baseType: !1569, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !826, file: !26, line: 738, baseType: !1572, size: 64, offset: 4416)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1574)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !826, file: !26, line: 740, baseType: !1576, size: 64, offset: 4480)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !826, file: !26, line: 741, baseType: !383, size: 64, offset: 4544)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !826, file: !26, line: 746, baseType: !383, size: 64, offset: 4608)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !826, file: !26, line: 747, baseType: !1580, size: 64, offset: 4672)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !826, file: !26, line: 749, baseType: !1584, size: 64, offset: 4736)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1585, file: !26, line: 433, baseType: !7, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1585, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1585, file: !26, line: 435, baseType: !270, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !826, file: !26, line: 751, baseType: !136, size: 128, offset: 4800)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !826, file: !26, line: 762, baseType: !1592, size: 64, offset: 4928)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !826, file: !26, line: 770, baseType: !1595, offset: 4992)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1596, line: 5, elements: !356)
!1596 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !826, file: !26, line: 772, baseType: !1598, size: 64, offset: 4992)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1600, line: 18, flags: DIFlagFwdDecl)
!1600 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !826, file: !26, line: 773, baseType: !800, size: 64, offset: 5056)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !826, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !826, file: !26, line: 778, baseType: !1604, size: 32, offset: 5152)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !137, line: 21, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !137, line: 18, baseType: !1219)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !826, file: !26, line: 779, baseType: !1219, size: 32, offset: 5184)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !826, file: !26, line: 781, baseType: !150, size: 32, offset: 5216)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !826, file: !26, line: 782, baseType: !136, size: 128, offset: 5248)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !826, file: !26, line: 784, baseType: !1610, size: 64, offset: 5376)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1613, line: 52, size: 768, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1623, !1627, !1628, !1629, !1630, !1634, !1638}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1612, file: !1613, line: 53, baseType: !132, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1612, file: !1613, line: 55, baseType: !272, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1612, file: !1613, line: 56, baseType: !272, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1612, file: !1613, line: 58, baseType: !879, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1612, file: !1613, line: 59, baseType: !1620, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!220, !824, !1363}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1612, file: !1613, line: 61, baseType: !1624, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1610}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1612, file: !1613, line: 62, baseType: !887, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1612, file: !1613, line: 64, baseType: !883, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1612, file: !1613, line: 66, baseType: !617, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1612, file: !1613, line: 67, baseType: !1631, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!498, !824}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1612, file: !1613, line: 69, baseType: !1635, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !824, !652, !659}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1612, file: !1613, line: 71, baseType: !907, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !826, file: !26, line: 785, baseType: !272, size: 64, offset: 5440)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !826, file: !26, line: 787, baseType: !887, size: 64, offset: 5504)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !826, file: !26, line: 788, baseType: !1642, size: 64, offset: 5568)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !826, file: !26, line: 789, baseType: !1645, size: 64, offset: 5632)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !826, file: !26, line: 791, baseType: !1648, size: 64, offset: 5696)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1654, !1655}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1649, file: !26, line: 598, baseType: !53, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1649, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1649, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1649, file: !26, line: 601, baseType: !577, size: 8, offset: 96)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1649, file: !26, line: 602, baseType: !577, size: 8, offset: 104)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !826, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !826, file: !26, line: 795, baseType: !577, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !826, file: !26, line: 796, baseType: !577, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !826, file: !26, line: 797, baseType: !577, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !826, file: !26, line: 798, baseType: !577, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !826, file: !26, line: 799, baseType: !577, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !804, file: !797, line: 131, baseType: !815, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !804, file: !797, line: 133, baseType: !1664, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!78, !818}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !804, file: !797, line: 134, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!577, !818, !132}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !804, file: !797, line: 136, baseType: !1672, size: 64, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!46, !818, !132, !7, !124, !267}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !804, file: !797, line: 141, baseType: !1676, size: 64, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!46, !818, !132, !1286, !267}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !804, file: !797, line: 144, baseType: !1680, size: 64, offset: 576)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!132, !818}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !804, file: !797, line: 145, baseType: !1680, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !804, file: !797, line: 146, baseType: !1685, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!800, !818}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !804, file: !797, line: 148, baseType: !1689, size: 64, offset: 768)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!800, !818, !800}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !804, file: !797, line: 151, baseType: !1693, size: 64, offset: 832)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!800, !818, !132}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !804, file: !797, line: 153, baseType: !1697, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!46, !818, !132, !132, !7, !7, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !797, line: 94, size: 640, elements: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1701, file: !797, line: 95, baseType: !800, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1701, file: !797, line: 96, baseType: !7, size: 32, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1701, file: !797, line: 97, baseType: !1706, size: 512, offset: 128)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 512, elements: !1472)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !804, file: !797, line: 158, baseType: !1689, size: 64, offset: 960)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !804, file: !797, line: 161, baseType: !1685, size: 64, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !804, file: !797, line: 163, baseType: !807, size: 64, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !804, file: !797, line: 164, baseType: !1711, size: 64, offset: 1152)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!46, !818, !1714}
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !797, line: 73, size: 128, elements: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1715, file: !797, line: 74, baseType: !7, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1715, file: !797, line: 75, baseType: !7, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1715, file: !797, line: 76, baseType: !818, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !804, file: !797, line: 166, baseType: !1721, size: 64, offset: 1216)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!124, !800, !46}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !804, file: !797, line: 167, baseType: !1725, size: 64, offset: 1280)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!46, !818, !7}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !804, file: !797, line: 168, baseType: !1729, size: 64, offset: 1344)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!46, !800}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !796, file: !797, line: 44, baseType: !830, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !796, file: !797, line: 45, baseType: !136, size: 128, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !796, file: !797, line: 46, baseType: !136, size: 128, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !797, line: 47, baseType: !178, size: 8, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !3, line: 19, baseType: !1737, size: 64, offset: 1024)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "software_node", file: !79, line: 519, size: 192, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1739, file: !79, line: 520, baseType: !132, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1739, file: !79, line: 521, baseType: !1737, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1739, file: !79, line: 522, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !79, line: 338, size: 256, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1752}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1746, file: !79, line: 339, baseType: !132, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1746, file: !79, line: 340, baseType: !267, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !1746, file: !79, line: 341, baseType: !577, size: 8, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1746, file: !79, line: 342, baseType: !84, size: 32, offset: 160)
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !79, line: 343, baseType: !1753, size: 64, offset: 192)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1746, file: !79, line: 343, size: 64, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1753, file: !79, line: 344, baseType: !498, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1753, file: !79, line: 351, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1753, file: !79, line: 345, size: 64, elements: !1758)
!1758 = !{!1759, !1761, !1763, !1765, !1769}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !1757, file: !79, line: 346, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !1472)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !1757, file: !79, line: 347, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !458)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !1757, file: !79, line: 348, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 64, elements: !1091)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !1757, file: !79, line: 349, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 64, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 1)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1757, file: !79, line: 350, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 64, elements: !1767)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !126, file: !3, line: 20, baseType: !46, size: 32, offset: 1088)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "child_ids", scope: !126, file: !3, line: 23, baseType: !1773, size: 128, offset: 1152)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1774, line: 246, size: 128, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1775 = !{!1776}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1773, file: !1774, line: 247, baseType: !1777, size: 128)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !119, line: 296, size: 128, elements: !1778)
!1778 = !{!1779, !1780, !1782}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1777, file: !119, line: 297, baseType: !150, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1777, file: !119, line: 299, baseType: !1781, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !137, line: 154, baseType: !7)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1777, file: !119, line: 300, baseType: !124, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !126, file: !3, line: 24, baseType: !136, size: 128, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !126, file: !3, line: 25, baseType: !136, size: 128, offset: 1408)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !126, file: !3, line: 26, baseType: !125, size: 64, offset: 1536)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !126, file: !3, line: 28, baseType: !7, size: 1, offset: 1600, flags: DIFlagBitField, extraData: i64 1600)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !126, file: !3, line: 29, baseType: !7, size: 1, offset: 1601, flags: DIFlagBitField, extraData: i64 1600)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !140)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_mark_t", file: !119, line: 250, baseType: !7)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1793 = !{!1794, !1796, !1798, !1800, !1802, !1804, !1806, !1808, !1810, !1812, !1814, !1816, !1818, !1820, !1822, !1824, !1829, !1831, !1835, !1837, !0, !1842, !1845, !1848, !1853, !1855, !1860, !1863, !1866, !1868, !1873}
!1794 = !DIGlobalVariableExpression(var: !1795, expr: !DIExpression())
!1795 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_is_software_node205", scope: !2, file: !3, line: 43, type: !124, isLocal: true, isDefinition: true)
!1796 = !DIGlobalVariableExpression(var: !1797, expr: !DIExpression())
!1797 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_to_software_node206", scope: !2, file: !3, line: 96, type: !124, isLocal: true, isDefinition: true)
!1798 = !DIGlobalVariableExpression(var: !1799, expr: !DIExpression())
!1799 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_software_node_fwnode207", scope: !2, file: !3, line: 104, type: !124, isLocal: true, isDefinition: true)
!1800 = !DIGlobalVariableExpression(var: !1801, expr: !DIExpression())
!1801 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_property_entries_dup210", scope: !2, file: !3, line: 340, type: !124, isLocal: true, isDefinition: true)
!1802 = !DIGlobalVariableExpression(var: !1803, expr: !DIExpression())
!1803 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_property_entries_free211", scope: !2, file: !3, line: 361, type: !124, isLocal: true, isDefinition: true)
!1804 = !DIGlobalVariableExpression(var: !1805, expr: !DIExpression())
!1805 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_software_node_find_by_name212", scope: !2, file: !3, line: 720, type: !124, isLocal: true, isDefinition: true)
!1806 = !DIGlobalVariableExpression(var: !1807, expr: !DIExpression())
!1807 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_software_node_register_node_group213", scope: !2, file: !3, line: 853, type: !124, isLocal: true, isDefinition: true)
!1808 = !DIGlobalVariableExpression(var: !1809, expr: !DIExpression())
!1809 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_software_node_unregister_node_group214", scope: !2, file: !3, line: 882, type: !124, isLocal: true, isDefinition: true)
!1810 = !DIGlobalVariableExpression(var: !1811, expr: !DIExpression())
!1811 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_software_node_register215", scope: !2, file: !3, line: 900, type: !124, isLocal: true, isDefinition: true)
!1812 = !DIGlobalVariableExpression(var: !1813, expr: !DIExpression())
!1813 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_software_node_unregister216", scope: !2, file: !3, line: 914, type: !124, isLocal: true, isDefinition: true)
!1814 = !DIGlobalVariableExpression(var: !1815, expr: !DIExpression())
!1815 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fwnode_create_software_node217", scope: !2, file: !3, line: 943, type: !124, isLocal: true, isDefinition: true)
!1816 = !DIGlobalVariableExpression(var: !1817, expr: !DIExpression())
!1817 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fwnode_remove_software_node218", scope: !2, file: !3, line: 954, type: !124, isLocal: true, isDefinition: true)
!1818 = !DIGlobalVariableExpression(var: !1819, expr: !DIExpression())
!1819 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_device_add_software_node219", scope: !2, file: !3, line: 998, type: !124, isLocal: true, isDefinition: true)
!1820 = !DIGlobalVariableExpression(var: !1821, expr: !DIExpression())
!1821 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_device_remove_software_node220", scope: !2, file: !3, line: 1020, type: !124, isLocal: true, isDefinition: true)
!1822 = !DIGlobalVariableExpression(var: !1823, expr: !DIExpression())
!1823 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_device_create_managed_software_node221", scope: !2, file: !3, line: 1060, type: !124, isLocal: true, isDefinition: true)
!1824 = !DIGlobalVariableExpression(var: !1825, expr: !DIExpression())
!1825 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1071, type: !1826, isLocal: true, isDefinition: true)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 112, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: 14)
!1829 = !DIGlobalVariableExpression(var: !1830, expr: !DIExpression())
!1830 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_swnode__222_1109_software_node_init2223", scope: !2, file: !3, line: 1109, type: !124, isLocal: true, isDefinition: true)
!1831 = !DIGlobalVariableExpression(var: !1832, expr: !DIExpression())
!1832 = distinct !DIGlobalVariable(name: "__exitcall_software_node_exit", scope: !2, file: !3, line: 1116, type: !1833, isLocal: true, isDefinition: true)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1834, line: 120, baseType: !1313)
!1834 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1835 = !DIGlobalVariableExpression(var: !1836, expr: !DIExpression())
!1836 = distinct !DIGlobalVariable(name: "swnode_kset", scope: !2, file: !3, line: 33, type: !145, isLocal: true, isDefinition: true)
!1837 = !DIGlobalVariableExpression(var: !1838, expr: !DIExpression())
!1838 = distinct !DIGlobalVariable(scope: null, file: !98, line: 480, type: !1839, isLocal: true, isDefinition: true)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 168, elements: !1840)
!1840 = !{!1841}
!1841 = !DISubrange(count: 21)
!1842 = !DIGlobalVariableExpression(var: !1843, expr: !DIExpression())
!1843 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !1844, isLocal: true, isDefinition: true)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, elements: !1767)
!1845 = !DIGlobalVariableExpression(var: !1846, expr: !DIExpression())
!1846 = distinct !DIGlobalVariable(scope: null, file: !3, line: 437, type: !1847, isLocal: true, isDefinition: true)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 16, elements: !1091)
!1848 = !DIGlobalVariableExpression(var: !1849, expr: !DIExpression())
!1849 = distinct !DIGlobalVariable(scope: null, file: !3, line: 591, type: !1850, isLocal: true, isDefinition: true)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 48, elements: !1851)
!1851 = !{!1852}
!1852 = !DISubrange(count: 6)
!1853 = !DIGlobalVariableExpression(var: !1854, expr: !DIExpression())
!1854 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !1850, isLocal: true, isDefinition: true)
!1855 = !DIGlobalVariableExpression(var: !1856, expr: !DIExpression())
!1856 = distinct !DIGlobalVariable(scope: null, file: !3, line: 621, type: !1857, isLocal: true, isDefinition: true)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 128, elements: !1858)
!1858 = !{!1859}
!1859 = !DISubrange(count: 16)
!1860 = !DIGlobalVariableExpression(var: !1861, expr: !DIExpression())
!1861 = distinct !DIGlobalVariable(scope: null, file: !3, line: 802, type: !1862, isLocal: true, isDefinition: true)
!1862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 24, elements: !221)
!1863 = !DIGlobalVariableExpression(var: !1864, expr: !DIExpression())
!1864 = distinct !DIGlobalVariable(scope: null, file: !3, line: 806, type: !1865, isLocal: true, isDefinition: true)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 56, elements: !1093)
!1866 = !DIGlobalVariableExpression(var: !1867, expr: !DIExpression())
!1867 = distinct !DIGlobalVariable(name: "software_node_type", scope: !2, file: !3, line: 766, type: !235, isLocal: true, isDefinition: true)
!1868 = !DIGlobalVariableExpression(var: !1869, expr: !DIExpression())
!1869 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1104, type: !1870, isLocal: true, isDefinition: true)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 120, elements: !1871)
!1871 = !{!1872}
!1872 = !DISubrange(count: 15)
!1873 = !DIGlobalVariableExpression(var: !1874, expr: !DIExpression())
!1874 = distinct !DIGlobalVariable(name: "swnode_root_ids", scope: !2, file: !3, line: 32, type: !1773, isLocal: true, isDefinition: true)
!1875 = !{i32 7, !"Dwarf Version", i32 5}
!1876 = !{i32 2, !"Debug Info Version", i32 3}
!1877 = !{i32 1, !"wchar_size", i32 2}
!1878 = !{i32 8, !"cf-protection-branch", i32 1}
!1879 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1880 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1881 = !{i32 1, !"Code Model", i32 2}
!1882 = !{i32 1, !"override-stack-alignment", i32 8}
!1883 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1884 = distinct !DISubprogram(name: "is_software_node", scope: !3, file: !3, line: 39, type: !816, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1885)
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "fwnode", arg: 1, scope: !1884, file: !3, line: 39, type: !818)
!1887 = !DILocation(line: 39, column: 51, scope: !1884)
!1888 = !DILocation(line: 41, column: 25, scope: !1884)
!1889 = !DILocation(line: 41, column: 10, scope: !1884)
!1890 = !DILocation(line: 41, column: 33, scope: !1884)
!1891 = !DILocation(line: 41, column: 36, scope: !1884)
!1892 = !DILocation(line: 41, column: 44, scope: !1884)
!1893 = !DILocation(line: 41, column: 48, scope: !1884)
!1894 = !DILocation(line: 0, scope: !1884)
!1895 = !DILocation(line: 41, column: 2, scope: !1884)
!1896 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !1897, file: !1897, line: 70, type: !1898, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1900)
!1897 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!577, !498}
!1900 = !{!1901}
!1901 = !DILocalVariable(name: "ptr", arg: 1, scope: !1896, file: !1897, line: 70, type: !498)
!1902 = !DILocation(line: 70, column: 68, scope: !1896)
!1903 = !DILocation(line: 72, column: 9, scope: !1896)
!1904 = !DILocation(line: 72, column: 24, scope: !1896)
!1905 = !DILocation(line: 72, column: 27, scope: !1896)
!1906 = !DILocation(line: 72, column: 2, scope: !1896)
!1907 = distinct !DISubprogram(name: "to_software_node", scope: !3, file: !3, line: 90, type: !1908, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!1737, !818}
!1910 = !{!1911, !1912, !1915, !1917}
!1911 = !DILocalVariable(name: "fwnode", arg: 1, scope: !1907, file: !3, line: 90, type: !818)
!1912 = !DILocalVariable(name: "swnode", scope: !1907, file: !3, line: 92, type: !1913)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1915 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !1916, file: !3, line: 92, type: !818)
!1916 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 92, column: 32)
!1917 = !DILocalVariable(name: "__mptr", scope: !1918, file: !3, line: 92, type: !124)
!1918 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 92, column: 32)
!1919 = !DILocation(line: 90, column: 74, scope: !1907)
!1920 = !DILocation(line: 92, column: 2, scope: !1907)
!1921 = !DILocation(line: 92, column: 23, scope: !1907)
!1922 = !DILocation(line: 92, column: 32, scope: !1916)
!1923 = !DILocation(line: 92, column: 32, scope: !1918)
!1924 = !DILocation(line: 92, column: 32, scope: !1907)
!1925 = !DILocation(line: 94, column: 9, scope: !1907)
!1926 = !DILocation(line: 94, column: 18, scope: !1907)
!1927 = !DILocation(line: 94, column: 26, scope: !1907)
!1928 = !DILocation(line: 95, column: 1, scope: !1907)
!1929 = !DILocation(line: 94, column: 2, scope: !1907)
!1930 = distinct !DISubprogram(name: "software_node_fwnode", scope: !3, file: !3, line: 98, type: !1931, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!800, !1737}
!1933 = !{!1934, !1935}
!1934 = !DILocalVariable(name: "node", arg: 1, scope: !1930, file: !3, line: 98, type: !1737)
!1935 = !DILocalVariable(name: "swnode", scope: !1930, file: !3, line: 100, type: !125)
!1936 = !DILocation(line: 98, column: 72, scope: !1930)
!1937 = !DILocation(line: 100, column: 2, scope: !1930)
!1938 = !DILocation(line: 100, column: 17, scope: !1930)
!1939 = !DILocation(line: 100, column: 50, scope: !1930)
!1940 = !DILocation(line: 100, column: 26, scope: !1930)
!1941 = !DILocation(line: 102, column: 9, scope: !1930)
!1942 = !DILocation(line: 102, column: 19, scope: !1930)
!1943 = !DILocation(line: 102, column: 27, scope: !1930)
!1944 = !DILocation(line: 103, column: 1, scope: !1930)
!1945 = !DILocation(line: 102, column: 2, scope: !1930)
!1946 = distinct !DISubprogram(name: "software_node_to_swnode", scope: !3, file: !3, line: 68, type: !1947, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!125, !1737}
!1949 = !{!1950, !1951, !1952, !1953, !1956, !1960}
!1950 = !DILocalVariable(name: "node", arg: 1, scope: !1946, file: !3, line: 68, type: !1737)
!1951 = !DILocalVariable(name: "swnode", scope: !1946, file: !3, line: 70, type: !125)
!1952 = !DILocalVariable(name: "k", scope: !1946, file: !3, line: 71, type: !143)
!1953 = !DILocalVariable(name: "__mptr", scope: !1954, file: !3, line: 78, type: !124)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 78, column: 2)
!1955 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 78, column: 2)
!1956 = !DILocalVariable(name: "__mptr", scope: !1957, file: !3, line: 79, type: !124)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 79, column: 12)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 78, column: 52)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 78, column: 2)
!1960 = !DILocalVariable(name: "__mptr", scope: !1961, file: !3, line: 78, type: !124)
!1961 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 78, column: 2)
!1962 = !DILocation(line: 68, column: 53, scope: !1946)
!1963 = !DILocation(line: 70, column: 2, scope: !1946)
!1964 = !DILocation(line: 70, column: 17, scope: !1946)
!1965 = !DILocation(line: 71, column: 2, scope: !1946)
!1966 = !DILocation(line: 71, column: 18, scope: !1946)
!1967 = !DILocation(line: 73, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 73, column: 6)
!1969 = !DILocation(line: 73, column: 6, scope: !1946)
!1970 = !DILocation(line: 74, column: 3, scope: !1968)
!1971 = !DILocation(line: 76, column: 13, scope: !1946)
!1972 = !DILocation(line: 76, column: 26, scope: !1946)
!1973 = !DILocation(line: 76, column: 2, scope: !1946)
!1974 = !DILocation(line: 78, column: 2, scope: !1954)
!1975 = !DILocation(line: 78, column: 2, scope: !1955)
!1976 = !DILocation(line: 78, column: 2, scope: !1959)
!1977 = !DILocation(line: 79, column: 12, scope: !1957)
!1978 = !DILocation(line: 79, column: 12, scope: !1958)
!1979 = !DILocation(line: 79, column: 10, scope: !1958)
!1980 = !DILocation(line: 80, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 80, column: 7)
!1982 = !DILocation(line: 80, column: 15, scope: !1981)
!1983 = !DILocation(line: 80, column: 23, scope: !1981)
!1984 = !DILocation(line: 80, column: 20, scope: !1981)
!1985 = !DILocation(line: 80, column: 7, scope: !1958)
!1986 = !DILocation(line: 81, column: 4, scope: !1981)
!1987 = !DILocation(line: 82, column: 10, scope: !1958)
!1988 = !DILocation(line: 83, column: 2, scope: !1958)
!1989 = !DILocation(line: 78, column: 2, scope: !1961)
!1990 = distinct !{!1990, !1975, !1991, !1992, !1993}
!1991 = !DILocation(line: 83, column: 2, scope: !1955)
!1992 = !{!"llvm.loop.mustprogress"}
!1993 = !{!"llvm.loop.unroll.disable"}
!1994 = !DILocation(line: 85, column: 15, scope: !1946)
!1995 = !DILocation(line: 85, column: 28, scope: !1946)
!1996 = !DILocation(line: 85, column: 2, scope: !1946)
!1997 = !DILocation(line: 87, column: 9, scope: !1946)
!1998 = !DILocation(line: 87, column: 2, scope: !1946)
!1999 = !DILocation(line: 88, column: 1, scope: !1946)
!2000 = distinct !DISubprogram(name: "property_entries_dup", scope: !3, file: !3, line: 312, type: !2001, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2004)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!2003, !1744}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!2004 = !{!2005, !2006, !2007, !2008, !2009}
!2005 = !DILocalVariable(name: "properties", arg: 1, scope: !2000, file: !3, line: 312, type: !1744)
!2006 = !DILocalVariable(name: "p", scope: !2000, file: !3, line: 314, type: !2003)
!2007 = !DILocalVariable(name: "i", scope: !2000, file: !3, line: 315, type: !46)
!2008 = !DILocalVariable(name: "n", scope: !2000, file: !3, line: 315, type: !46)
!2009 = !DILocalVariable(name: "ret", scope: !2000, file: !3, line: 316, type: !46)
!2010 = !DILocation(line: 312, column: 51, scope: !2000)
!2011 = !DILocation(line: 314, column: 2, scope: !2000)
!2012 = !DILocation(line: 314, column: 25, scope: !2000)
!2013 = !DILocation(line: 315, column: 2, scope: !2000)
!2014 = !DILocation(line: 315, column: 6, scope: !2000)
!2015 = !DILocation(line: 315, column: 9, scope: !2000)
!2016 = !DILocation(line: 316, column: 2, scope: !2000)
!2017 = !DILocation(line: 316, column: 6, scope: !2000)
!2018 = !DILocation(line: 318, column: 7, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 318, column: 6)
!2020 = !DILocation(line: 318, column: 6, scope: !2000)
!2021 = !DILocation(line: 319, column: 3, scope: !2019)
!2022 = !DILocation(line: 321, column: 2, scope: !2000)
!2023 = !DILocation(line: 321, column: 9, scope: !2000)
!2024 = !DILocation(line: 321, column: 20, scope: !2000)
!2025 = !DILocation(line: 321, column: 23, scope: !2000)
!2026 = !DILocation(line: 322, column: 4, scope: !2000)
!2027 = distinct !{!2027, !2022, !2026, !1992, !1993}
!2028 = !DILocation(line: 324, column: 14, scope: !2000)
!2029 = !DILocation(line: 324, column: 16, scope: !2000)
!2030 = !DILocation(line: 324, column: 6, scope: !2000)
!2031 = !DILocation(line: 324, column: 4, scope: !2000)
!2032 = !DILocation(line: 325, column: 7, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 325, column: 6)
!2034 = !DILocation(line: 325, column: 6, scope: !2000)
!2035 = !DILocation(line: 326, column: 10, scope: !2033)
!2036 = !DILocation(line: 326, column: 3, scope: !2033)
!2037 = !DILocation(line: 328, column: 9, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 328, column: 2)
!2039 = !DILocation(line: 328, column: 7, scope: !2038)
!2040 = !DILocation(line: 328, column: 14, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 328, column: 2)
!2042 = !DILocation(line: 328, column: 18, scope: !2041)
!2043 = !DILocation(line: 328, column: 16, scope: !2041)
!2044 = !DILocation(line: 328, column: 2, scope: !2038)
!2045 = !DILocation(line: 329, column: 35, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 328, column: 26)
!2047 = !DILocation(line: 329, column: 37, scope: !2046)
!2048 = !DILocation(line: 329, column: 42, scope: !2046)
!2049 = !DILocation(line: 329, column: 53, scope: !2046)
!2050 = !DILocation(line: 329, column: 9, scope: !2046)
!2051 = !DILocation(line: 329, column: 7, scope: !2046)
!2052 = !DILocation(line: 330, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 330, column: 7)
!2054 = !DILocation(line: 330, column: 7, scope: !2046)
!2055 = !DILocation(line: 331, column: 4, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 330, column: 12)
!2057 = !DILocation(line: 331, column: 11, scope: !2056)
!2058 = !DILocation(line: 331, column: 15, scope: !2056)
!2059 = !DILocation(line: 332, column: 31, scope: !2056)
!2060 = !DILocation(line: 332, column: 33, scope: !2056)
!2061 = !DILocation(line: 332, column: 5, scope: !2056)
!2062 = distinct !{!2062, !2055, !2063, !1992, !1993}
!2063 = !DILocation(line: 332, column: 35, scope: !2056)
!2064 = !DILocation(line: 333, column: 10, scope: !2056)
!2065 = !DILocation(line: 333, column: 4, scope: !2056)
!2066 = !DILocation(line: 334, column: 19, scope: !2056)
!2067 = !DILocation(line: 334, column: 11, scope: !2056)
!2068 = !DILocation(line: 334, column: 4, scope: !2056)
!2069 = !DILocation(line: 336, column: 2, scope: !2046)
!2070 = !DILocation(line: 328, column: 22, scope: !2041)
!2071 = !DILocation(line: 328, column: 2, scope: !2041)
!2072 = distinct !{!2072, !2044, !2073, !1992, !1993}
!2073 = !DILocation(line: 336, column: 2, scope: !2038)
!2074 = !DILocation(line: 338, column: 9, scope: !2000)
!2075 = !DILocation(line: 338, column: 2, scope: !2000)
!2076 = !DILocation(line: 339, column: 1, scope: !2000)
!2077 = distinct !DISubprogram(name: "kcalloc", scope: !98, file: !98, line: 666, type: !2078, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!124, !267, !267, !1781}
!2080 = !{!2081, !2082, !2083}
!2081 = !DILocalVariable(name: "n", arg: 1, scope: !2077, file: !98, line: 666, type: !267)
!2082 = !DILocalVariable(name: "size", arg: 2, scope: !2077, file: !98, line: 666, type: !267)
!2083 = !DILocalVariable(name: "flags", arg: 3, scope: !2077, file: !98, line: 666, type: !1781)
!2084 = !DILocation(line: 666, column: 55, scope: !2077)
!2085 = !DILocation(line: 666, column: 65, scope: !2077)
!2086 = !DILocation(line: 666, column: 77, scope: !2077)
!2087 = !DILocation(line: 668, column: 23, scope: !2077)
!2088 = !DILocation(line: 668, column: 26, scope: !2077)
!2089 = !DILocation(line: 668, column: 32, scope: !2077)
!2090 = !DILocation(line: 668, column: 38, scope: !2077)
!2091 = !DILocation(line: 668, column: 9, scope: !2077)
!2092 = !DILocation(line: 668, column: 2, scope: !2077)
!2093 = distinct !DISubprogram(name: "ERR_PTR", scope: !1897, file: !1897, line: 39, type: !2094, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!124, !256}
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "error", arg: 1, scope: !2093, file: !1897, line: 39, type: !256)
!2098 = !DILocation(line: 39, column: 48, scope: !2093)
!2099 = !DILocation(line: 41, column: 18, scope: !2093)
!2100 = !DILocation(line: 41, column: 9, scope: !2093)
!2101 = !DILocation(line: 41, column: 2, scope: !2093)
!2102 = distinct !DISubprogram(name: "property_entry_copy_data", scope: !3, file: !3, line: 251, type: !2103, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!46, !2003, !1744}
!2105 = !{!2106, !2107, !2108, !2109, !2110}
!2106 = !DILocalVariable(name: "dst", arg: 1, scope: !2102, file: !3, line: 251, type: !2003)
!2107 = !DILocalVariable(name: "src", arg: 2, scope: !2102, file: !3, line: 252, type: !1744)
!2108 = !DILocalVariable(name: "pointer", scope: !2102, file: !3, line: 254, type: !498)
!2109 = !DILocalVariable(name: "dst_ptr", scope: !2102, file: !3, line: 255, type: !124)
!2110 = !DILocalVariable(name: "nval", scope: !2102, file: !3, line: 256, type: !267)
!2111 = !DILocation(line: 251, column: 60, scope: !2102)
!2112 = !DILocation(line: 252, column: 38, scope: !2102)
!2113 = !DILocation(line: 254, column: 2, scope: !2102)
!2114 = !DILocation(line: 254, column: 14, scope: !2102)
!2115 = !DILocation(line: 254, column: 45, scope: !2102)
!2116 = !DILocation(line: 254, column: 24, scope: !2102)
!2117 = !DILocation(line: 255, column: 2, scope: !2102)
!2118 = !DILocation(line: 255, column: 8, scope: !2102)
!2119 = !DILocation(line: 256, column: 2, scope: !2102)
!2120 = !DILocation(line: 256, column: 9, scope: !2102)
!2121 = !DILocation(line: 262, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 262, column: 6)
!2123 = !DILocation(line: 262, column: 12, scope: !2122)
!2124 = !{i8 0, i8 2}
!2125 = !DILocation(line: 262, column: 22, scope: !2122)
!2126 = !DILocation(line: 262, column: 26, scope: !2122)
!2127 = !DILocation(line: 262, column: 31, scope: !2122)
!2128 = !DILocation(line: 262, column: 6, scope: !2102)
!2129 = !DILocation(line: 263, column: 3, scope: !2122)
!2130 = !DILocation(line: 269, column: 6, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 269, column: 6)
!2132 = !DILocation(line: 269, column: 11, scope: !2131)
!2133 = !DILocation(line: 269, column: 16, scope: !2131)
!2134 = !DILocation(line: 269, column: 32, scope: !2131)
!2135 = !DILocation(line: 269, column: 35, scope: !2131)
!2136 = !DILocation(line: 269, column: 40, scope: !2131)
!2137 = !DILocation(line: 269, column: 6, scope: !2102)
!2138 = !DILocation(line: 270, column: 3, scope: !2131)
!2139 = !DILocation(line: 272, column: 6, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 272, column: 6)
!2141 = !DILocation(line: 272, column: 11, scope: !2140)
!2142 = !DILocation(line: 272, column: 18, scope: !2140)
!2143 = !DILocation(line: 272, column: 6, scope: !2102)
!2144 = !DILocation(line: 273, column: 14, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 272, column: 41)
!2146 = !DILocation(line: 273, column: 19, scope: !2145)
!2147 = !DILocation(line: 273, column: 11, scope: !2145)
!2148 = !DILocation(line: 274, column: 3, scope: !2145)
!2149 = !DILocation(line: 274, column: 8, scope: !2145)
!2150 = !DILocation(line: 274, column: 18, scope: !2145)
!2151 = !DILocation(line: 275, column: 2, scope: !2145)
!2152 = !DILocation(line: 276, column: 21, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 275, column: 9)
!2154 = !DILocation(line: 276, column: 26, scope: !2153)
!2155 = !DILocation(line: 276, column: 13, scope: !2153)
!2156 = !DILocation(line: 276, column: 11, scope: !2153)
!2157 = !DILocation(line: 277, column: 8, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 277, column: 7)
!2159 = !DILocation(line: 277, column: 7, scope: !2153)
!2160 = !DILocation(line: 278, column: 4, scope: !2158)
!2161 = !DILocation(line: 279, column: 18, scope: !2153)
!2162 = !DILocation(line: 279, column: 3, scope: !2153)
!2163 = !DILocation(line: 279, column: 8, scope: !2153)
!2164 = !DILocation(line: 279, column: 16, scope: !2153)
!2165 = !DILocation(line: 282, column: 6, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 282, column: 6)
!2167 = !DILocation(line: 282, column: 11, scope: !2166)
!2168 = !DILocation(line: 282, column: 16, scope: !2166)
!2169 = !DILocation(line: 282, column: 6, scope: !2102)
!2170 = !DILocation(line: 283, column: 10, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 282, column: 36)
!2172 = !DILocation(line: 283, column: 15, scope: !2171)
!2173 = !DILocation(line: 283, column: 22, scope: !2171)
!2174 = !DILocation(line: 283, column: 8, scope: !2171)
!2175 = !DILocation(line: 284, column: 35, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 284, column: 7)
!2177 = !DILocation(line: 284, column: 44, scope: !2176)
!2178 = !DILocation(line: 284, column: 53, scope: !2176)
!2179 = !DILocation(line: 284, column: 8, scope: !2176)
!2180 = !DILocation(line: 284, column: 7, scope: !2171)
!2181 = !DILocation(line: 285, column: 9, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 285, column: 8)
!2183 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 284, column: 60)
!2184 = !DILocation(line: 285, column: 14, scope: !2182)
!2185 = !DILocation(line: 285, column: 8, scope: !2183)
!2186 = !DILocation(line: 286, column: 11, scope: !2182)
!2187 = !DILocation(line: 286, column: 16, scope: !2182)
!2188 = !DILocation(line: 286, column: 5, scope: !2182)
!2189 = !DILocation(line: 287, column: 4, scope: !2183)
!2190 = !DILocation(line: 289, column: 2, scope: !2171)
!2191 = !DILocation(line: 290, column: 10, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 289, column: 9)
!2193 = !DILocation(line: 290, column: 19, scope: !2192)
!2194 = !DILocation(line: 290, column: 28, scope: !2192)
!2195 = !DILocation(line: 290, column: 33, scope: !2192)
!2196 = !DILocation(line: 290, column: 3, scope: !2192)
!2197 = !DILocation(line: 293, column: 16, scope: !2102)
!2198 = !DILocation(line: 293, column: 21, scope: !2102)
!2199 = !DILocation(line: 293, column: 2, scope: !2102)
!2200 = !DILocation(line: 293, column: 7, scope: !2102)
!2201 = !DILocation(line: 293, column: 14, scope: !2102)
!2202 = !DILocation(line: 294, column: 14, scope: !2102)
!2203 = !DILocation(line: 294, column: 19, scope: !2102)
!2204 = !DILocation(line: 294, column: 2, scope: !2102)
!2205 = !DILocation(line: 294, column: 7, scope: !2102)
!2206 = !DILocation(line: 294, column: 12, scope: !2102)
!2207 = !DILocation(line: 295, column: 22, scope: !2102)
!2208 = !DILocation(line: 295, column: 27, scope: !2102)
!2209 = !DILocation(line: 295, column: 14, scope: !2102)
!2210 = !DILocation(line: 295, column: 2, scope: !2102)
!2211 = !DILocation(line: 295, column: 7, scope: !2102)
!2212 = !DILocation(line: 295, column: 12, scope: !2102)
!2213 = !DILocation(line: 296, column: 7, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 296, column: 6)
!2215 = !DILocation(line: 296, column: 12, scope: !2214)
!2216 = !DILocation(line: 296, column: 6, scope: !2102)
!2217 = !DILocation(line: 297, column: 28, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 296, column: 18)
!2219 = !DILocation(line: 297, column: 3, scope: !2218)
!2220 = !DILocation(line: 298, column: 3, scope: !2218)
!2221 = !DILocation(line: 301, column: 2, scope: !2102)
!2222 = !DILocation(line: 302, column: 1, scope: !2102)
!2223 = distinct !DISubprogram(name: "property_entry_free_data", scope: !3, file: !3, line: 215, type: !2224, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !1744}
!2226 = !{!2227, !2228, !2231, !2232}
!2227 = !DILocalVariable(name: "p", arg: 1, scope: !2223, file: !3, line: 215, type: !1744)
!2228 = !DILocalVariable(name: "src_str", scope: !2223, file: !3, line: 217, type: !2229)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!2231 = !DILocalVariable(name: "i", scope: !2223, file: !3, line: 218, type: !267)
!2232 = !DILocalVariable(name: "nval", scope: !2223, file: !3, line: 218, type: !267)
!2233 = !DILocation(line: 215, column: 67, scope: !2223)
!2234 = !DILocation(line: 217, column: 2, scope: !2223)
!2235 = !DILocation(line: 217, column: 22, scope: !2223)
!2236 = !DILocation(line: 218, column: 2, scope: !2223)
!2237 = !DILocation(line: 218, column: 9, scope: !2223)
!2238 = !DILocation(line: 218, column: 12, scope: !2223)
!2239 = !DILocation(line: 220, column: 6, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 220, column: 6)
!2241 = !DILocation(line: 220, column: 9, scope: !2240)
!2242 = !DILocation(line: 220, column: 14, scope: !2240)
!2243 = !DILocation(line: 220, column: 6, scope: !2223)
!2244 = !DILocation(line: 221, column: 34, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 220, column: 34)
!2246 = !DILocation(line: 221, column: 13, scope: !2245)
!2247 = !DILocation(line: 221, column: 11, scope: !2245)
!2248 = !DILocation(line: 222, column: 10, scope: !2245)
!2249 = !DILocation(line: 222, column: 13, scope: !2245)
!2250 = !DILocation(line: 222, column: 20, scope: !2245)
!2251 = !DILocation(line: 222, column: 8, scope: !2245)
!2252 = !DILocation(line: 223, column: 10, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 223, column: 3)
!2254 = !DILocation(line: 223, column: 8, scope: !2253)
!2255 = !DILocation(line: 223, column: 15, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 223, column: 3)
!2257 = !DILocation(line: 223, column: 19, scope: !2256)
!2258 = !DILocation(line: 223, column: 17, scope: !2256)
!2259 = !DILocation(line: 223, column: 3, scope: !2253)
!2260 = !DILocation(line: 224, column: 10, scope: !2256)
!2261 = !DILocation(line: 224, column: 18, scope: !2256)
!2262 = !DILocation(line: 224, column: 4, scope: !2256)
!2263 = !DILocation(line: 223, column: 26, scope: !2256)
!2264 = !DILocation(line: 223, column: 3, scope: !2256)
!2265 = distinct !{!2265, !2259, !2266, !1992, !1993}
!2266 = !DILocation(line: 224, column: 20, scope: !2253)
!2267 = !DILocation(line: 225, column: 2, scope: !2245)
!2268 = !DILocation(line: 227, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 227, column: 6)
!2270 = !DILocation(line: 227, column: 10, scope: !2269)
!2271 = !DILocation(line: 227, column: 6, scope: !2223)
!2272 = !DILocation(line: 228, column: 9, scope: !2269)
!2273 = !DILocation(line: 228, column: 12, scope: !2269)
!2274 = !DILocation(line: 228, column: 3, scope: !2269)
!2275 = !DILocation(line: 230, column: 8, scope: !2223)
!2276 = !DILocation(line: 230, column: 11, scope: !2223)
!2277 = !DILocation(line: 230, column: 2, scope: !2223)
!2278 = !DILocation(line: 231, column: 1, scope: !2223)
!2279 = !DISubprogram(name: "kfree", scope: !98, file: !98, line: 227, type: !2280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !498}
!2282 = distinct !DISubprogram(name: "property_entries_free", scope: !3, file: !3, line: 349, type: !2224, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2283)
!2283 = !{!2284, !2285}
!2284 = !DILocalVariable(name: "properties", arg: 1, scope: !2282, file: !3, line: 349, type: !1744)
!2285 = !DILocalVariable(name: "p", scope: !2282, file: !3, line: 351, type: !1744)
!2286 = !DILocation(line: 349, column: 57, scope: !2282)
!2287 = !DILocation(line: 351, column: 2, scope: !2282)
!2288 = !DILocation(line: 351, column: 31, scope: !2282)
!2289 = !DILocation(line: 353, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 353, column: 6)
!2291 = !DILocation(line: 353, column: 6, scope: !2282)
!2292 = !DILocation(line: 354, column: 3, scope: !2290)
!2293 = !DILocation(line: 356, column: 11, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 356, column: 2)
!2295 = !DILocation(line: 356, column: 9, scope: !2294)
!2296 = !DILocation(line: 356, column: 7, scope: !2294)
!2297 = !DILocation(line: 356, column: 23, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 356, column: 2)
!2299 = !DILocation(line: 356, column: 26, scope: !2298)
!2300 = !DILocation(line: 356, column: 2, scope: !2294)
!2301 = !DILocation(line: 357, column: 28, scope: !2298)
!2302 = !DILocation(line: 357, column: 3, scope: !2298)
!2303 = !DILocation(line: 356, column: 33, scope: !2298)
!2304 = !DILocation(line: 356, column: 2, scope: !2298)
!2305 = distinct !{!2305, !2300, !2306, !1992, !1993}
!2306 = !DILocation(line: 357, column: 29, scope: !2294)
!2307 = !DILocation(line: 359, column: 8, scope: !2282)
!2308 = !DILocation(line: 359, column: 2, scope: !2282)
!2309 = !DILocation(line: 360, column: 1, scope: !2282)
!2310 = distinct !DISubprogram(name: "software_node_find_by_name", scope: !3, file: !3, line: 696, type: !2311, scopeLine: 697, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!1737, !1737, !132}
!2313 = !{!2314, !2315, !2316, !2317, !2318, !2321, !2325}
!2314 = !DILocalVariable(name: "parent", arg: 1, scope: !2310, file: !3, line: 696, type: !1737)
!2315 = !DILocalVariable(name: "name", arg: 2, scope: !2310, file: !3, line: 696, type: !132)
!2316 = !DILocalVariable(name: "swnode", scope: !2310, file: !3, line: 698, type: !125)
!2317 = !DILocalVariable(name: "k", scope: !2310, file: !3, line: 699, type: !143)
!2318 = !DILocalVariable(name: "__mptr", scope: !2319, file: !3, line: 706, type: !124)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 706, column: 2)
!2320 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 706, column: 2)
!2321 = !DILocalVariable(name: "__mptr", scope: !2322, file: !3, line: 707, type: !124)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 707, column: 12)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 706, column: 52)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 706, column: 2)
!2325 = !DILocalVariable(name: "__mptr", scope: !2326, file: !3, line: 706, type: !124)
!2326 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 706, column: 2)
!2327 = !DILocation(line: 696, column: 56, scope: !2310)
!2328 = !DILocation(line: 696, column: 76, scope: !2310)
!2329 = !DILocation(line: 698, column: 2, scope: !2310)
!2330 = !DILocation(line: 698, column: 17, scope: !2310)
!2331 = !DILocation(line: 699, column: 2, scope: !2310)
!2332 = !DILocation(line: 699, column: 18, scope: !2310)
!2333 = !DILocation(line: 701, column: 7, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 701, column: 6)
!2335 = !DILocation(line: 701, column: 6, scope: !2310)
!2336 = !DILocation(line: 702, column: 3, scope: !2334)
!2337 = !DILocation(line: 704, column: 13, scope: !2310)
!2338 = !DILocation(line: 704, column: 26, scope: !2310)
!2339 = !DILocation(line: 704, column: 2, scope: !2310)
!2340 = !DILocation(line: 706, column: 2, scope: !2319)
!2341 = !DILocation(line: 706, column: 2, scope: !2320)
!2342 = !DILocation(line: 706, column: 2, scope: !2324)
!2343 = !DILocation(line: 707, column: 12, scope: !2322)
!2344 = !DILocation(line: 707, column: 12, scope: !2323)
!2345 = !DILocation(line: 707, column: 10, scope: !2323)
!2346 = !DILocation(line: 708, column: 7, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 708, column: 7)
!2348 = !DILocation(line: 708, column: 17, scope: !2347)
!2349 = !DILocation(line: 708, column: 25, scope: !2347)
!2350 = !DILocation(line: 708, column: 31, scope: !2347)
!2351 = !DILocation(line: 708, column: 14, scope: !2347)
!2352 = !DILocation(line: 708, column: 38, scope: !2347)
!2353 = !DILocation(line: 708, column: 41, scope: !2347)
!2354 = !DILocation(line: 708, column: 49, scope: !2347)
!2355 = !DILocation(line: 708, column: 55, scope: !2347)
!2356 = !DILocation(line: 708, column: 60, scope: !2347)
!2357 = !DILocation(line: 709, column: 15, scope: !2347)
!2358 = !DILocation(line: 709, column: 21, scope: !2347)
!2359 = !DILocation(line: 709, column: 29, scope: !2347)
!2360 = !DILocation(line: 709, column: 35, scope: !2347)
!2361 = !DILocation(line: 709, column: 8, scope: !2347)
!2362 = !DILocation(line: 708, column: 7, scope: !2323)
!2363 = !DILocation(line: 710, column: 17, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 709, column: 42)
!2365 = !DILocation(line: 710, column: 25, scope: !2364)
!2366 = !DILocation(line: 710, column: 4, scope: !2364)
!2367 = !DILocation(line: 711, column: 4, scope: !2364)
!2368 = !DILocation(line: 713, column: 10, scope: !2323)
!2369 = !DILocation(line: 714, column: 2, scope: !2323)
!2370 = !DILocation(line: 706, column: 2, scope: !2326)
!2371 = distinct !{!2371, !2341, !2372, !1992, !1993}
!2372 = !DILocation(line: 714, column: 2, scope: !2320)
!2373 = !DILocation(line: 716, column: 15, scope: !2310)
!2374 = !DILocation(line: 716, column: 28, scope: !2310)
!2375 = !DILocation(line: 716, column: 2, scope: !2310)
!2376 = !DILocation(line: 718, column: 9, scope: !2310)
!2377 = !DILocation(line: 718, column: 18, scope: !2310)
!2378 = !DILocation(line: 718, column: 26, scope: !2310)
!2379 = !DILocation(line: 718, column: 2, scope: !2310)
!2380 = !DILocation(line: 719, column: 1, scope: !2310)
!2381 = distinct !DISubprogram(name: "spin_lock", scope: !2382, file: !2382, line: 349, type: !2383, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2386)
!2382 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !2385}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!2386 = !{!2387}
!2387 = !DILocalVariable(name: "lock", arg: 1, scope: !2381, file: !2382, line: 349, type: !2385)
!2388 = !DILocation(line: 349, column: 51, scope: !2381)
!2389 = !DILocation(line: 351, column: 2, scope: !2381)
!2390 = !DILocation(line: 352, column: 1, scope: !2381)
!2391 = !DISubprogram(name: "strcmp", scope: !2392, file: !2392, line: 88, type: !2393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2392 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!46, !132, !132}
!2395 = !DISubprogram(name: "kobject_get", scope: !108, file: !108, line: 108, type: !2396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!143, !143}
!2398 = distinct !DISubprogram(name: "spin_unlock", scope: !2382, file: !2382, line: 389, type: !2383, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2399 = !{!2400}
!2400 = !DILocalVariable(name: "lock", arg: 1, scope: !2398, file: !2382, line: 389, type: !2385)
!2401 = !DILocation(line: 389, column: 53, scope: !2398)
!2402 = !DILocation(line: 391, column: 2, scope: !2398)
!2403 = !DILocation(line: 392, column: 1, scope: !2398)
!2404 = distinct !DISubprogram(name: "software_node_register_node_group", scope: !3, file: !3, line: 835, type: !2405, scopeLine: 836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2408)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!46, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!2408 = !{!2409, !2410, !2411}
!2409 = !DILocalVariable(name: "node_group", arg: 1, scope: !2404, file: !3, line: 835, type: !2407)
!2410 = !DILocalVariable(name: "i", scope: !2404, file: !3, line: 837, type: !7)
!2411 = !DILocalVariable(name: "ret", scope: !2404, file: !3, line: 838, type: !46)
!2412 = !DILocation(line: 835, column: 68, scope: !2404)
!2413 = !DILocation(line: 837, column: 2, scope: !2404)
!2414 = !DILocation(line: 837, column: 15, scope: !2404)
!2415 = !DILocation(line: 838, column: 2, scope: !2404)
!2416 = !DILocation(line: 838, column: 6, scope: !2404)
!2417 = !DILocation(line: 840, column: 7, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 840, column: 6)
!2419 = !DILocation(line: 840, column: 6, scope: !2404)
!2420 = !DILocation(line: 841, column: 3, scope: !2418)
!2421 = !DILocation(line: 843, column: 9, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 843, column: 2)
!2423 = !DILocation(line: 843, column: 7, scope: !2422)
!2424 = !DILocation(line: 843, column: 14, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 843, column: 2)
!2426 = !DILocation(line: 843, column: 25, scope: !2425)
!2427 = !DILocation(line: 843, column: 2, scope: !2422)
!2428 = !DILocation(line: 844, column: 32, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 843, column: 34)
!2430 = !DILocation(line: 844, column: 43, scope: !2429)
!2431 = !DILocation(line: 844, column: 9, scope: !2429)
!2432 = !DILocation(line: 844, column: 7, scope: !2429)
!2433 = !DILocation(line: 845, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 845, column: 7)
!2435 = !DILocation(line: 845, column: 7, scope: !2429)
!2436 = !DILocation(line: 846, column: 40, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 845, column: 12)
!2438 = !DILocation(line: 846, column: 4, scope: !2437)
!2439 = !DILocation(line: 847, column: 11, scope: !2437)
!2440 = !DILocation(line: 847, column: 4, scope: !2437)
!2441 = !DILocation(line: 849, column: 2, scope: !2429)
!2442 = !DILocation(line: 843, column: 30, scope: !2425)
!2443 = !DILocation(line: 843, column: 2, scope: !2425)
!2444 = distinct !{!2444, !2427, !2445, !1992, !1993}
!2445 = !DILocation(line: 849, column: 2, scope: !2422)
!2446 = !DILocation(line: 851, column: 2, scope: !2404)
!2447 = !DILocation(line: 852, column: 1, scope: !2404)
!2448 = distinct !DISubprogram(name: "software_node_register", scope: !3, file: !3, line: 888, type: !2449, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!46, !1737}
!2451 = !{!2452, !2453}
!2452 = !DILocalVariable(name: "node", arg: 1, scope: !2448, file: !3, line: 888, type: !1737)
!2453 = !DILocalVariable(name: "parent", scope: !2448, file: !3, line: 890, type: !125)
!2454 = !DILocation(line: 888, column: 56, scope: !2448)
!2455 = !DILocation(line: 890, column: 2, scope: !2448)
!2456 = !DILocation(line: 890, column: 17, scope: !2448)
!2457 = !DILocation(line: 890, column: 50, scope: !2448)
!2458 = !DILocation(line: 890, column: 56, scope: !2448)
!2459 = !DILocation(line: 890, column: 26, scope: !2448)
!2460 = !DILocation(line: 892, column: 30, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 892, column: 6)
!2462 = !DILocation(line: 892, column: 6, scope: !2461)
!2463 = !DILocation(line: 892, column: 6, scope: !2448)
!2464 = !DILocation(line: 893, column: 3, scope: !2461)
!2465 = !DILocation(line: 895, column: 6, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 895, column: 6)
!2467 = !DILocation(line: 895, column: 12, scope: !2466)
!2468 = !DILocation(line: 895, column: 19, scope: !2466)
!2469 = !DILocation(line: 895, column: 23, scope: !2466)
!2470 = !DILocation(line: 895, column: 6, scope: !2448)
!2471 = !DILocation(line: 896, column: 3, scope: !2466)
!2472 = !DILocation(line: 898, column: 41, scope: !2448)
!2473 = !DILocation(line: 898, column: 47, scope: !2448)
!2474 = !DILocation(line: 898, column: 25, scope: !2448)
!2475 = !DILocation(line: 898, column: 9, scope: !2448)
!2476 = !DILocation(line: 898, column: 2, scope: !2448)
!2477 = !DILocation(line: 899, column: 1, scope: !2448)
!2478 = distinct !DISubprogram(name: "software_node_unregister_node_group", scope: !3, file: !3, line: 868, type: !2479, scopeLine: 870, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !2407}
!2481 = !{!2482, !2483}
!2482 = !DILocalVariable(name: "node_group", arg: 1, scope: !2478, file: !3, line: 869, type: !2407)
!2483 = !DILocalVariable(name: "i", scope: !2478, file: !3, line: 871, type: !7)
!2484 = !DILocation(line: 869, column: 32, scope: !2478)
!2485 = !DILocation(line: 871, column: 2, scope: !2478)
!2486 = !DILocation(line: 871, column: 15, scope: !2478)
!2487 = !DILocation(line: 873, column: 7, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 873, column: 6)
!2489 = !DILocation(line: 873, column: 6, scope: !2478)
!2490 = !DILocation(line: 874, column: 3, scope: !2488)
!2491 = !DILocation(line: 876, column: 2, scope: !2478)
!2492 = !DILocation(line: 876, column: 9, scope: !2478)
!2493 = !DILocation(line: 876, column: 20, scope: !2478)
!2494 = !DILocation(line: 877, column: 4, scope: !2478)
!2495 = distinct !{!2495, !2491, !2494, !1992, !1993}
!2496 = !DILocation(line: 879, column: 2, scope: !2478)
!2497 = !DILocation(line: 879, column: 10, scope: !2478)
!2498 = !DILocation(line: 880, column: 28, scope: !2478)
!2499 = !DILocation(line: 880, column: 39, scope: !2478)
!2500 = !DILocation(line: 880, column: 3, scope: !2478)
!2501 = distinct !{!2501, !2496, !2502, !1992, !1993}
!2502 = !DILocation(line: 880, column: 41, scope: !2478)
!2503 = !DILocation(line: 881, column: 1, scope: !2478)
!2504 = distinct !DISubprogram(name: "software_node_unregister", scope: !3, file: !3, line: 906, type: !2505, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !1737}
!2507 = !{!2508, !2509}
!2508 = !DILocalVariable(name: "node", arg: 1, scope: !2504, file: !3, line: 906, type: !1737)
!2509 = !DILocalVariable(name: "swnode", scope: !2504, file: !3, line: 908, type: !125)
!2510 = !DILocation(line: 906, column: 59, scope: !2504)
!2511 = !DILocation(line: 908, column: 2, scope: !2504)
!2512 = !DILocation(line: 908, column: 17, scope: !2504)
!2513 = !DILocation(line: 910, column: 35, scope: !2504)
!2514 = !DILocation(line: 910, column: 11, scope: !2504)
!2515 = !DILocation(line: 910, column: 9, scope: !2504)
!2516 = !DILocation(line: 911, column: 6, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 911, column: 6)
!2518 = !DILocation(line: 911, column: 6, scope: !2504)
!2519 = !DILocation(line: 912, column: 32, scope: !2517)
!2520 = !DILocation(line: 912, column: 40, scope: !2517)
!2521 = !DILocation(line: 912, column: 3, scope: !2517)
!2522 = !DILocation(line: 913, column: 1, scope: !2504)
!2523 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !1897, file: !1897, line: 105, type: !2524, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!46, !498}
!2526 = !{!2527}
!2527 = !DILocalVariable(name: "ptr", arg: 1, scope: !2523, file: !1897, line: 105, type: !498)
!2528 = !DILocation(line: 105, column: 68, scope: !2523)
!2529 = !DILocation(line: 107, column: 13, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2523, file: !1897, line: 107, column: 6)
!2531 = !DILocation(line: 107, column: 6, scope: !2530)
!2532 = !DILocation(line: 107, column: 6, scope: !2523)
!2533 = !DILocation(line: 108, column: 18, scope: !2530)
!2534 = !DILocation(line: 108, column: 10, scope: !2530)
!2535 = !DILocation(line: 108, column: 3, scope: !2530)
!2536 = !DILocation(line: 110, column: 3, scope: !2530)
!2537 = !DILocation(line: 111, column: 1, scope: !2523)
!2538 = distinct !DISubprogram(name: "swnode_register", scope: !3, file: !3, line: 772, type: !2539, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2541)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!800, !1737, !125, !7}
!2541 = !{!2542, !2543, !2544, !2545, !2546}
!2542 = !DILocalVariable(name: "node", arg: 1, scope: !2538, file: !3, line: 772, type: !1737)
!2543 = !DILocalVariable(name: "parent", arg: 2, scope: !2538, file: !3, line: 772, type: !125)
!2544 = !DILocalVariable(name: "allocated", arg: 3, scope: !2538, file: !3, line: 773, type: !7)
!2545 = !DILocalVariable(name: "swnode", scope: !2538, file: !3, line: 775, type: !125)
!2546 = !DILocalVariable(name: "ret", scope: !2538, file: !3, line: 776, type: !46)
!2547 = !DILocation(line: 772, column: 45, scope: !2538)
!2548 = !DILocation(line: 772, column: 66, scope: !2538)
!2549 = !DILocation(line: 773, column: 16, scope: !2538)
!2550 = !DILocation(line: 775, column: 2, scope: !2538)
!2551 = !DILocation(line: 775, column: 17, scope: !2538)
!2552 = !DILocation(line: 776, column: 2, scope: !2538)
!2553 = !DILocation(line: 776, column: 6, scope: !2538)
!2554 = !DILocation(line: 778, column: 11, scope: !2538)
!2555 = !DILocation(line: 778, column: 9, scope: !2538)
!2556 = !DILocation(line: 779, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 779, column: 6)
!2558 = !DILocation(line: 779, column: 6, scope: !2538)
!2559 = !DILocation(line: 780, column: 10, scope: !2557)
!2560 = !DILocation(line: 780, column: 3, scope: !2557)
!2561 = !DILocation(line: 782, column: 8, scope: !2538)
!2562 = !DILocation(line: 782, column: 6, scope: !2538)
!2563 = !DILocation(line: 784, column: 6, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 784, column: 6)
!2565 = !DILocation(line: 784, column: 10, scope: !2564)
!2566 = !DILocation(line: 784, column: 6, scope: !2538)
!2567 = !DILocation(line: 785, column: 9, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 784, column: 15)
!2569 = !DILocation(line: 785, column: 3, scope: !2568)
!2570 = !DILocation(line: 786, column: 18, scope: !2568)
!2571 = !DILocation(line: 786, column: 10, scope: !2568)
!2572 = !DILocation(line: 786, column: 3, scope: !2568)
!2573 = !DILocation(line: 789, column: 15, scope: !2538)
!2574 = !DILocation(line: 789, column: 2, scope: !2538)
!2575 = !DILocation(line: 789, column: 10, scope: !2538)
!2576 = !DILocation(line: 789, column: 13, scope: !2538)
!2577 = !DILocation(line: 790, column: 17, scope: !2538)
!2578 = !DILocation(line: 790, column: 2, scope: !2538)
!2579 = !DILocation(line: 790, column: 10, scope: !2538)
!2580 = !DILocation(line: 790, column: 15, scope: !2538)
!2581 = !DILocation(line: 791, column: 19, scope: !2538)
!2582 = !DILocation(line: 791, column: 2, scope: !2538)
!2583 = !DILocation(line: 791, column: 10, scope: !2538)
!2584 = !DILocation(line: 791, column: 17, scope: !2538)
!2585 = !DILocation(line: 792, column: 22, scope: !2538)
!2586 = !DILocation(line: 792, column: 2, scope: !2538)
!2587 = !DILocation(line: 792, column: 10, scope: !2538)
!2588 = !DILocation(line: 792, column: 15, scope: !2538)
!2589 = !DILocation(line: 792, column: 20, scope: !2538)
!2590 = !DILocation(line: 793, column: 15, scope: !2538)
!2591 = !DILocation(line: 793, column: 23, scope: !2538)
!2592 = !DILocation(line: 793, column: 2, scope: !2538)
!2593 = !DILocation(line: 795, column: 12, scope: !2538)
!2594 = !DILocation(line: 795, column: 20, scope: !2538)
!2595 = !DILocation(line: 795, column: 2, scope: !2538)
!2596 = !DILocation(line: 796, column: 18, scope: !2538)
!2597 = !DILocation(line: 796, column: 26, scope: !2538)
!2598 = !DILocation(line: 796, column: 2, scope: !2538)
!2599 = !DILocation(line: 797, column: 18, scope: !2538)
!2600 = !DILocation(line: 797, column: 26, scope: !2538)
!2601 = !DILocation(line: 797, column: 2, scope: !2538)
!2602 = !DILocation(line: 799, column: 6, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 799, column: 6)
!2604 = !DILocation(line: 799, column: 12, scope: !2603)
!2605 = !DILocation(line: 799, column: 6, scope: !2538)
!2606 = !DILocation(line: 800, column: 31, scope: !2603)
!2607 = !DILocation(line: 800, column: 39, scope: !2603)
!2608 = !DILocation(line: 801, column: 9, scope: !2603)
!2609 = !DILocation(line: 801, column: 19, scope: !2603)
!2610 = !DILocation(line: 801, column: 27, scope: !2603)
!2611 = !DILocation(line: 802, column: 15, scope: !2603)
!2612 = !DILocation(line: 802, column: 21, scope: !2603)
!2613 = !DILocation(line: 800, column: 9, scope: !2603)
!2614 = !DILocation(line: 800, column: 7, scope: !2603)
!2615 = !DILocation(line: 800, column: 3, scope: !2603)
!2616 = !DILocation(line: 804, column: 31, scope: !2603)
!2617 = !DILocation(line: 804, column: 39, scope: !2603)
!2618 = !DILocation(line: 805, column: 9, scope: !2603)
!2619 = !DILocation(line: 805, column: 19, scope: !2603)
!2620 = !DILocation(line: 805, column: 27, scope: !2603)
!2621 = !DILocation(line: 806, column: 19, scope: !2603)
!2622 = !DILocation(line: 806, column: 27, scope: !2603)
!2623 = !DILocation(line: 804, column: 9, scope: !2603)
!2624 = !DILocation(line: 804, column: 7, scope: !2603)
!2625 = !DILocation(line: 807, column: 6, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 807, column: 6)
!2627 = !DILocation(line: 807, column: 6, scope: !2538)
!2628 = !DILocation(line: 808, column: 16, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 807, column: 11)
!2630 = !DILocation(line: 808, column: 24, scope: !2629)
!2631 = !DILocation(line: 808, column: 3, scope: !2629)
!2632 = !DILocation(line: 809, column: 18, scope: !2629)
!2633 = !DILocation(line: 809, column: 10, scope: !2629)
!2634 = !DILocation(line: 809, column: 3, scope: !2629)
!2635 = !DILocation(line: 816, column: 22, scope: !2538)
!2636 = !DILocation(line: 816, column: 2, scope: !2538)
!2637 = !DILocation(line: 816, column: 10, scope: !2538)
!2638 = !DILocation(line: 816, column: 20, scope: !2538)
!2639 = !DILocation(line: 818, column: 6, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 818, column: 6)
!2641 = !DILocation(line: 818, column: 6, scope: !2538)
!2642 = !DILocation(line: 819, column: 18, scope: !2640)
!2643 = !DILocation(line: 819, column: 26, scope: !2640)
!2644 = !DILocation(line: 819, column: 34, scope: !2640)
!2645 = !DILocation(line: 819, column: 42, scope: !2640)
!2646 = !DILocation(line: 819, column: 3, scope: !2640)
!2647 = !DILocation(line: 821, column: 18, scope: !2538)
!2648 = !DILocation(line: 821, column: 26, scope: !2538)
!2649 = !DILocation(line: 821, column: 2, scope: !2538)
!2650 = !DILocation(line: 822, column: 10, scope: !2538)
!2651 = !DILocation(line: 822, column: 18, scope: !2538)
!2652 = !DILocation(line: 822, column: 2, scope: !2538)
!2653 = !DILocation(line: 823, column: 1, scope: !2538)
!2654 = distinct !DISubprogram(name: "fwnode_remove_software_node", scope: !3, file: !3, line: 945, type: !812, scopeLine: 946, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2655)
!2655 = !{!2656, !2657, !2658, !2660}
!2656 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2654, file: !3, line: 945, type: !800)
!2657 = !DILocalVariable(name: "swnode", scope: !2654, file: !3, line: 947, type: !125)
!2658 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !2659, file: !3, line: 947, type: !800)
!2659 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 947, column: 26)
!2660 = !DILocalVariable(name: "__mptr", scope: !2661, file: !3, line: 947, type: !124)
!2661 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 947, column: 26)
!2662 = !DILocation(line: 945, column: 56, scope: !2654)
!2663 = !DILocation(line: 947, column: 2, scope: !2654)
!2664 = !DILocation(line: 947, column: 17, scope: !2654)
!2665 = !DILocation(line: 947, column: 26, scope: !2659)
!2666 = !DILocation(line: 947, column: 26, scope: !2661)
!2667 = !DILocation(line: 947, column: 26, scope: !2654)
!2668 = !DILocation(line: 949, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 949, column: 6)
!2670 = !DILocation(line: 949, column: 6, scope: !2654)
!2671 = !DILocation(line: 950, column: 3, scope: !2669)
!2672 = !DILocation(line: 952, column: 15, scope: !2654)
!2673 = !DILocation(line: 952, column: 23, scope: !2654)
!2674 = !DILocation(line: 952, column: 2, scope: !2654)
!2675 = !DILocation(line: 953, column: 1, scope: !2654)
!2676 = distinct !DISubprogram(name: "fwnode_create_software_node", scope: !3, file: !3, line: 917, type: !2677, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!800, !1744, !818}
!2679 = !{!2680, !2681, !2682, !2683, !2685, !2686, !2688}
!2680 = !DILocalVariable(name: "properties", arg: 1, scope: !2676, file: !3, line: 917, type: !1744)
!2681 = !DILocalVariable(name: "parent", arg: 2, scope: !2676, file: !3, line: 918, type: !818)
!2682 = !DILocalVariable(name: "fwnode", scope: !2676, file: !3, line: 920, type: !800)
!2683 = !DILocalVariable(name: "node", scope: !2676, file: !3, line: 921, type: !2684)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!2685 = !DILocalVariable(name: "p", scope: !2676, file: !3, line: 922, type: !125)
!2686 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !2687, file: !3, line: 927, type: !818)
!2687 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 927, column: 6)
!2688 = !DILocalVariable(name: "__mptr", scope: !2689, file: !3, line: 927, type: !124)
!2689 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 927, column: 6)
!2690 = !DILocation(line: 917, column: 58, scope: !2676)
!2691 = !DILocation(line: 918, column: 36, scope: !2676)
!2692 = !DILocation(line: 920, column: 2, scope: !2676)
!2693 = !DILocation(line: 920, column: 24, scope: !2676)
!2694 = !DILocation(line: 921, column: 2, scope: !2676)
!2695 = !DILocation(line: 921, column: 24, scope: !2676)
!2696 = !DILocation(line: 922, column: 2, scope: !2676)
!2697 = !DILocation(line: 922, column: 17, scope: !2676)
!2698 = !DILocation(line: 924, column: 13, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 924, column: 6)
!2700 = !DILocation(line: 924, column: 6, scope: !2699)
!2701 = !DILocation(line: 924, column: 6, scope: !2676)
!2702 = !DILocation(line: 925, column: 19, scope: !2699)
!2703 = !DILocation(line: 925, column: 10, scope: !2699)
!2704 = !DILocation(line: 925, column: 3, scope: !2699)
!2705 = !DILocation(line: 927, column: 6, scope: !2687)
!2706 = !DILocation(line: 927, column: 6, scope: !2689)
!2707 = !DILocation(line: 927, column: 6, scope: !2676)
!2708 = !DILocation(line: 927, column: 4, scope: !2676)
!2709 = !DILocation(line: 928, column: 6, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 928, column: 6)
!2711 = !DILocation(line: 928, column: 13, scope: !2710)
!2712 = !DILocation(line: 928, column: 17, scope: !2710)
!2713 = !DILocation(line: 928, column: 6, scope: !2676)
!2714 = !DILocation(line: 929, column: 10, scope: !2710)
!2715 = !DILocation(line: 929, column: 3, scope: !2710)
!2716 = !DILocation(line: 931, column: 29, scope: !2676)
!2717 = !DILocation(line: 931, column: 9, scope: !2676)
!2718 = !DILocation(line: 931, column: 7, scope: !2676)
!2719 = !DILocation(line: 932, column: 13, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 932, column: 6)
!2721 = !DILocation(line: 932, column: 6, scope: !2720)
!2722 = !DILocation(line: 932, column: 6, scope: !2676)
!2723 = !DILocation(line: 933, column: 19, scope: !2720)
!2724 = !DILocation(line: 933, column: 10, scope: !2720)
!2725 = !DILocation(line: 933, column: 3, scope: !2720)
!2726 = !DILocation(line: 935, column: 17, scope: !2676)
!2727 = !DILocation(line: 935, column: 21, scope: !2676)
!2728 = !DILocation(line: 935, column: 24, scope: !2676)
!2729 = !DILocation(line: 935, column: 2, scope: !2676)
!2730 = !DILocation(line: 935, column: 8, scope: !2676)
!2731 = !DILocation(line: 935, column: 15, scope: !2676)
!2732 = !DILocation(line: 937, column: 27, scope: !2676)
!2733 = !DILocation(line: 937, column: 33, scope: !2676)
!2734 = !DILocation(line: 937, column: 11, scope: !2676)
!2735 = !DILocation(line: 937, column: 9, scope: !2676)
!2736 = !DILocation(line: 938, column: 13, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 938, column: 6)
!2738 = !DILocation(line: 938, column: 6, scope: !2737)
!2739 = !DILocation(line: 938, column: 6, scope: !2676)
!2740 = !DILocation(line: 939, column: 22, scope: !2737)
!2741 = !DILocation(line: 939, column: 3, scope: !2737)
!2742 = !DILocation(line: 941, column: 9, scope: !2676)
!2743 = !DILocation(line: 941, column: 2, scope: !2676)
!2744 = !DILocation(line: 942, column: 1, scope: !2676)
!2745 = distinct !DISubprogram(name: "IS_ERR", scope: !1897, file: !1897, line: 59, type: !1898, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2746)
!2746 = !{!2747}
!2747 = !DILocalVariable(name: "ptr", arg: 1, scope: !2745, file: !1897, line: 59, type: !498)
!2748 = !DILocation(line: 59, column: 60, scope: !2745)
!2749 = !DILocation(line: 61, column: 9, scope: !2745)
!2750 = !DILocation(line: 61, column: 2, scope: !2745)
!2751 = distinct !DISubprogram(name: "ERR_CAST", scope: !1897, file: !1897, line: 82, type: !2752, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2754)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!124, !498}
!2754 = !{!2755}
!2755 = !DILocalVariable(name: "ptr", arg: 1, scope: !2751, file: !1897, line: 82, type: !498)
!2756 = !DILocation(line: 82, column: 64, scope: !2751)
!2757 = !DILocation(line: 85, column: 18, scope: !2751)
!2758 = !DILocation(line: 85, column: 2, scope: !2751)
!2759 = distinct !DISubprogram(name: "software_node_alloc", scope: !3, file: !3, line: 722, type: !2760, scopeLine: 723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!2684, !1744}
!2762 = !{!2763, !2764, !2765}
!2763 = !DILocalVariable(name: "properties", arg: 1, scope: !2759, file: !3, line: 722, type: !1744)
!2764 = !DILocalVariable(name: "props", scope: !2759, file: !3, line: 724, type: !2003)
!2765 = !DILocalVariable(name: "node", scope: !2759, file: !3, line: 725, type: !2684)
!2766 = !DILocation(line: 722, column: 79, scope: !2759)
!2767 = !DILocation(line: 724, column: 2, scope: !2759)
!2768 = !DILocation(line: 724, column: 25, scope: !2759)
!2769 = !DILocation(line: 725, column: 2, scope: !2759)
!2770 = !DILocation(line: 725, column: 24, scope: !2759)
!2771 = !DILocation(line: 727, column: 31, scope: !2759)
!2772 = !DILocation(line: 727, column: 10, scope: !2759)
!2773 = !DILocation(line: 727, column: 8, scope: !2759)
!2774 = !DILocation(line: 728, column: 13, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 728, column: 6)
!2776 = !DILocation(line: 728, column: 6, scope: !2775)
!2777 = !DILocation(line: 728, column: 6, scope: !2759)
!2778 = !DILocation(line: 729, column: 19, scope: !2775)
!2779 = !DILocation(line: 729, column: 10, scope: !2775)
!2780 = !DILocation(line: 729, column: 3, scope: !2775)
!2781 = !DILocation(line: 731, column: 9, scope: !2759)
!2782 = !DILocation(line: 731, column: 7, scope: !2759)
!2783 = !DILocation(line: 732, column: 7, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 732, column: 6)
!2785 = !DILocation(line: 732, column: 6, scope: !2759)
!2786 = !DILocation(line: 733, column: 25, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 732, column: 13)
!2788 = !DILocation(line: 733, column: 3, scope: !2787)
!2789 = !DILocation(line: 734, column: 10, scope: !2787)
!2790 = !DILocation(line: 734, column: 3, scope: !2787)
!2791 = !DILocation(line: 737, column: 21, scope: !2759)
!2792 = !DILocation(line: 737, column: 2, scope: !2759)
!2793 = !DILocation(line: 737, column: 8, scope: !2759)
!2794 = !DILocation(line: 737, column: 19, scope: !2759)
!2795 = !DILocation(line: 739, column: 9, scope: !2759)
!2796 = !DILocation(line: 739, column: 2, scope: !2759)
!2797 = !DILocation(line: 740, column: 1, scope: !2759)
!2798 = distinct !DISubprogram(name: "software_node_free", scope: !3, file: !3, line: 742, type: !2505, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2799)
!2799 = !{!2800}
!2800 = !DILocalVariable(name: "node", arg: 1, scope: !2798, file: !3, line: 742, type: !1737)
!2801 = !DILocation(line: 742, column: 60, scope: !2798)
!2802 = !DILocation(line: 744, column: 24, scope: !2798)
!2803 = !DILocation(line: 744, column: 30, scope: !2798)
!2804 = !DILocation(line: 744, column: 2, scope: !2798)
!2805 = !DILocation(line: 745, column: 8, scope: !2798)
!2806 = !DILocation(line: 745, column: 2, scope: !2798)
!2807 = !DILocation(line: 746, column: 1, scope: !2798)
!2808 = !DISubprogram(name: "kobject_put", scope: !108, file: !108, line: 110, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2809 = distinct !DISubprogram(name: "device_add_software_node", scope: !3, file: !3, line: 965, type: !2810, scopeLine: 966, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!46, !830, !1737}
!2812 = !{!2813, !2814, !2815, !2816}
!2813 = !DILocalVariable(name: "dev", arg: 1, scope: !2809, file: !3, line: 965, type: !830)
!2814 = !DILocalVariable(name: "node", arg: 2, scope: !2809, file: !3, line: 965, type: !1737)
!2815 = !DILocalVariable(name: "swnode", scope: !2809, file: !3, line: 967, type: !125)
!2816 = !DILocalVariable(name: "ret", scope: !2809, file: !3, line: 968, type: !46)
!2817 = !DILocation(line: 965, column: 45, scope: !2809)
!2818 = !DILocation(line: 965, column: 78, scope: !2809)
!2819 = !DILocation(line: 967, column: 2, scope: !2809)
!2820 = !DILocation(line: 967, column: 17, scope: !2809)
!2821 = !DILocation(line: 968, column: 2, scope: !2809)
!2822 = !DILocation(line: 968, column: 6, scope: !2809)
!2823 = !DILocation(line: 971, column: 20, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 971, column: 6)
!2825 = !DILocation(line: 971, column: 6, scope: !2824)
!2826 = !DILocation(line: 971, column: 6, scope: !2809)
!2827 = !DILocation(line: 972, column: 3, scope: !2824)
!2828 = !DILocation(line: 974, column: 35, scope: !2809)
!2829 = !DILocation(line: 974, column: 11, scope: !2809)
!2830 = !DILocation(line: 974, column: 9, scope: !2809)
!2831 = !DILocation(line: 975, column: 6, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 975, column: 6)
!2833 = !DILocation(line: 975, column: 6, scope: !2809)
!2834 = !DILocation(line: 976, column: 16, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 975, column: 14)
!2836 = !DILocation(line: 976, column: 24, scope: !2835)
!2837 = !DILocation(line: 976, column: 3, scope: !2835)
!2838 = !DILocation(line: 977, column: 2, scope: !2835)
!2839 = !DILocation(line: 978, column: 32, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 977, column: 9)
!2841 = !DILocation(line: 978, column: 9, scope: !2840)
!2842 = !DILocation(line: 978, column: 7, scope: !2840)
!2843 = !DILocation(line: 979, column: 7, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 979, column: 7)
!2845 = !DILocation(line: 979, column: 7, scope: !2840)
!2846 = !DILocation(line: 980, column: 11, scope: !2844)
!2847 = !DILocation(line: 980, column: 4, scope: !2844)
!2848 = !DILocation(line: 982, column: 36, scope: !2840)
!2849 = !DILocation(line: 982, column: 12, scope: !2840)
!2850 = !DILocation(line: 982, column: 10, scope: !2840)
!2851 = !DILocation(line: 985, column: 23, scope: !2809)
!2852 = !DILocation(line: 985, column: 29, scope: !2809)
!2853 = !DILocation(line: 985, column: 37, scope: !2809)
!2854 = !DILocation(line: 985, column: 2, scope: !2809)
!2855 = !DILocation(line: 993, column: 27, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 993, column: 6)
!2857 = !DILocation(line: 993, column: 6, scope: !2856)
!2858 = !DILocation(line: 993, column: 6, scope: !2809)
!2859 = !DILocation(line: 994, column: 24, scope: !2856)
!2860 = !DILocation(line: 994, column: 3, scope: !2856)
!2861 = !DILocation(line: 996, column: 2, scope: !2809)
!2862 = !DILocation(line: 997, column: 1, scope: !2809)
!2863 = distinct !DISubprogram(name: "dev_to_swnode", scope: !3, file: !3, line: 54, type: !2864, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!125, !830}
!2866 = !{!2867, !2868, !2869, !2871}
!2867 = !DILocalVariable(name: "dev", arg: 1, scope: !2863, file: !3, line: 54, type: !830)
!2868 = !DILocalVariable(name: "fwnode", scope: !2863, file: !3, line: 56, type: !800)
!2869 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !2870, file: !3, line: 64, type: !800)
!2870 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 64, column: 9)
!2871 = !DILocalVariable(name: "__mptr", scope: !2872, file: !3, line: 64, type: !124)
!2872 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 64, column: 9)
!2873 = !DILocation(line: 54, column: 59, scope: !2863)
!2874 = !DILocation(line: 56, column: 2, scope: !2863)
!2875 = !DILocation(line: 56, column: 24, scope: !2863)
!2876 = !DILocation(line: 56, column: 33, scope: !2863)
!2877 = !DILocation(line: 58, column: 7, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 58, column: 6)
!2879 = !DILocation(line: 58, column: 6, scope: !2863)
!2880 = !DILocation(line: 59, column: 3, scope: !2878)
!2881 = !DILocation(line: 61, column: 24, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 61, column: 6)
!2883 = !DILocation(line: 61, column: 7, scope: !2882)
!2884 = !DILocation(line: 61, column: 6, scope: !2863)
!2885 = !DILocation(line: 62, column: 12, scope: !2882)
!2886 = !DILocation(line: 62, column: 20, scope: !2882)
!2887 = !DILocation(line: 62, column: 10, scope: !2882)
!2888 = !DILocation(line: 62, column: 3, scope: !2882)
!2889 = !DILocation(line: 64, column: 9, scope: !2870)
!2890 = !DILocation(line: 64, column: 9, scope: !2872)
!2891 = !DILocation(line: 64, column: 9, scope: !2863)
!2892 = !DILocation(line: 64, column: 2, scope: !2863)
!2893 = !DILocation(line: 65, column: 1, scope: !2863)
!2894 = !DISubprogram(name: "set_secondary_fwnode", scope: !26, file: !26, line: 1135, type: !2895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !830, !800}
!2897 = distinct !DISubprogram(name: "device_is_registered", scope: !26, file: !26, line: 941, type: !884, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2898)
!2898 = !{!2899}
!2899 = !DILocalVariable(name: "dev", arg: 1, scope: !2897, file: !26, line: 941, type: !830)
!2900 = !DILocation(line: 941, column: 55, scope: !2897)
!2901 = !DILocation(line: 943, column: 9, scope: !2897)
!2902 = !DILocation(line: 943, column: 14, scope: !2897)
!2903 = !DILocation(line: 943, column: 19, scope: !2897)
!2904 = !DILocation(line: 943, column: 2, scope: !2897)
!2905 = distinct !DISubprogram(name: "software_node_notify", scope: !3, file: !3, line: 1062, type: !888, scopeLine: 1063, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2906)
!2906 = !{!2907, !2908, !2909}
!2907 = !DILocalVariable(name: "dev", arg: 1, scope: !2905, file: !3, line: 1062, type: !830)
!2908 = !DILocalVariable(name: "swnode", scope: !2905, file: !3, line: 1064, type: !125)
!2909 = !DILocalVariable(name: "ret", scope: !2905, file: !3, line: 1065, type: !46)
!2910 = !DILocation(line: 1062, column: 42, scope: !2905)
!2911 = !DILocation(line: 1064, column: 2, scope: !2905)
!2912 = !DILocation(line: 1064, column: 17, scope: !2905)
!2913 = !DILocation(line: 1065, column: 2, scope: !2905)
!2914 = !DILocation(line: 1065, column: 6, scope: !2905)
!2915 = !DILocation(line: 1067, column: 25, scope: !2905)
!2916 = !DILocation(line: 1067, column: 11, scope: !2905)
!2917 = !DILocation(line: 1067, column: 9, scope: !2905)
!2918 = !DILocation(line: 1068, column: 7, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 1068, column: 6)
!2920 = !DILocation(line: 1068, column: 6, scope: !2905)
!2921 = !DILocation(line: 1069, column: 3, scope: !2919)
!2922 = !DILocation(line: 1071, column: 27, scope: !2905)
!2923 = !DILocation(line: 1071, column: 32, scope: !2905)
!2924 = !DILocation(line: 1071, column: 39, scope: !2905)
!2925 = !DILocation(line: 1071, column: 47, scope: !2905)
!2926 = !DILocation(line: 1071, column: 8, scope: !2905)
!2927 = !DILocation(line: 1071, column: 6, scope: !2905)
!2928 = !DILocation(line: 1072, column: 6, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 1072, column: 6)
!2930 = !DILocation(line: 1072, column: 6, scope: !2905)
!2931 = !DILocation(line: 1073, column: 3, scope: !2929)
!2932 = !DILocation(line: 1075, column: 27, scope: !2905)
!2933 = !DILocation(line: 1075, column: 35, scope: !2905)
!2934 = !DILocation(line: 1075, column: 42, scope: !2905)
!2935 = !DILocation(line: 1075, column: 47, scope: !2905)
!2936 = !DILocation(line: 1075, column: 62, scope: !2905)
!2937 = !DILocation(line: 1075, column: 53, scope: !2905)
!2938 = !DILocation(line: 1075, column: 8, scope: !2905)
!2939 = !DILocation(line: 1075, column: 6, scope: !2905)
!2940 = !DILocation(line: 1076, column: 6, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 1076, column: 6)
!2942 = !DILocation(line: 1076, column: 6, scope: !2905)
!2943 = !DILocation(line: 1077, column: 22, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1076, column: 11)
!2945 = !DILocation(line: 1077, column: 27, scope: !2944)
!2946 = !DILocation(line: 1077, column: 3, scope: !2944)
!2947 = !DILocation(line: 1078, column: 3, scope: !2944)
!2948 = !DILocation(line: 1081, column: 15, scope: !2905)
!2949 = !DILocation(line: 1081, column: 23, scope: !2905)
!2950 = !DILocation(line: 1081, column: 2, scope: !2905)
!2951 = !DILocation(line: 1082, column: 1, scope: !2905)
!2952 = distinct !DISubprogram(name: "device_remove_software_node", scope: !3, file: !3, line: 1006, type: !888, scopeLine: 1007, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2953)
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "dev", arg: 1, scope: !2952, file: !3, line: 1006, type: !830)
!2955 = !DILocalVariable(name: "swnode", scope: !2952, file: !3, line: 1008, type: !125)
!2956 = !DILocation(line: 1006, column: 49, scope: !2952)
!2957 = !DILocation(line: 1008, column: 2, scope: !2952)
!2958 = !DILocation(line: 1008, column: 17, scope: !2952)
!2959 = !DILocation(line: 1010, column: 25, scope: !2952)
!2960 = !DILocation(line: 1010, column: 11, scope: !2952)
!2961 = !DILocation(line: 1010, column: 9, scope: !2952)
!2962 = !DILocation(line: 1011, column: 7, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1011, column: 6)
!2964 = !DILocation(line: 1011, column: 6, scope: !2952)
!2965 = !DILocation(line: 1012, column: 3, scope: !2963)
!2966 = !DILocation(line: 1014, column: 27, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1014, column: 6)
!2968 = !DILocation(line: 1014, column: 6, scope: !2967)
!2969 = !DILocation(line: 1014, column: 6, scope: !2952)
!2970 = !DILocation(line: 1015, column: 31, scope: !2967)
!2971 = !DILocation(line: 1015, column: 3, scope: !2967)
!2972 = !DILocation(line: 1017, column: 23, scope: !2952)
!2973 = !DILocation(line: 1017, column: 2, scope: !2952)
!2974 = !DILocation(line: 1018, column: 15, scope: !2952)
!2975 = !DILocation(line: 1018, column: 23, scope: !2952)
!2976 = !DILocation(line: 1018, column: 2, scope: !2952)
!2977 = !DILocation(line: 1019, column: 1, scope: !2952)
!2978 = distinct !DISubprogram(name: "software_node_notify_remove", scope: !3, file: !3, line: 1084, type: !888, scopeLine: 1085, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2979)
!2979 = !{!2980, !2981}
!2980 = !DILocalVariable(name: "dev", arg: 1, scope: !2978, file: !3, line: 1084, type: !830)
!2981 = !DILocalVariable(name: "swnode", scope: !2978, file: !3, line: 1086, type: !125)
!2982 = !DILocation(line: 1084, column: 49, scope: !2978)
!2983 = !DILocation(line: 1086, column: 2, scope: !2978)
!2984 = !DILocation(line: 1086, column: 17, scope: !2978)
!2985 = !DILocation(line: 1088, column: 25, scope: !2978)
!2986 = !DILocation(line: 1088, column: 11, scope: !2978)
!2987 = !DILocation(line: 1088, column: 9, scope: !2978)
!2988 = !DILocation(line: 1089, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 1089, column: 6)
!2990 = !DILocation(line: 1089, column: 6, scope: !2978)
!2991 = !DILocation(line: 1090, column: 3, scope: !2989)
!2992 = !DILocation(line: 1092, column: 21, scope: !2978)
!2993 = !DILocation(line: 1092, column: 29, scope: !2978)
!2994 = !DILocation(line: 1092, column: 44, scope: !2978)
!2995 = !DILocation(line: 1092, column: 35, scope: !2978)
!2996 = !DILocation(line: 1092, column: 2, scope: !2978)
!2997 = !DILocation(line: 1093, column: 21, scope: !2978)
!2998 = !DILocation(line: 1093, column: 26, scope: !2978)
!2999 = !DILocation(line: 1093, column: 2, scope: !2978)
!3000 = !DILocation(line: 1094, column: 15, scope: !2978)
!3001 = !DILocation(line: 1094, column: 23, scope: !2978)
!3002 = !DILocation(line: 1094, column: 2, scope: !2978)
!3003 = !DILocation(line: 1096, column: 6, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 1096, column: 6)
!3005 = !DILocation(line: 1096, column: 14, scope: !3004)
!3006 = !DILocation(line: 1096, column: 6, scope: !2978)
!3007 = !DILocation(line: 1097, column: 24, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 1096, column: 23)
!3009 = !DILocation(line: 1097, column: 3, scope: !3008)
!3010 = !DILocation(line: 1098, column: 16, scope: !3008)
!3011 = !DILocation(line: 1098, column: 24, scope: !3008)
!3012 = !DILocation(line: 1098, column: 3, scope: !3008)
!3013 = !DILocation(line: 1099, column: 2, scope: !3008)
!3014 = !DILocation(line: 1100, column: 1, scope: !2978)
!3015 = distinct !DISubprogram(name: "device_create_managed_software_node", scope: !3, file: !3, line: 1038, type: !3016, scopeLine: 1041, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!46, !830, !1744, !1737}
!3018 = !{!3019, !3020, !3021, !3022, !3023, !3024, !3026}
!3019 = !DILocalVariable(name: "dev", arg: 1, scope: !3015, file: !3, line: 1038, type: !830)
!3020 = !DILocalVariable(name: "properties", arg: 2, scope: !3015, file: !3, line: 1039, type: !1744)
!3021 = !DILocalVariable(name: "parent", arg: 3, scope: !3015, file: !3, line: 1040, type: !1737)
!3022 = !DILocalVariable(name: "p", scope: !3015, file: !3, line: 1042, type: !800)
!3023 = !DILocalVariable(name: "fwnode", scope: !3015, file: !3, line: 1043, type: !800)
!3024 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3025, file: !3, line: 1052, type: !800)
!3025 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1052, column: 2)
!3026 = !DILocalVariable(name: "__mptr", scope: !3027, file: !3, line: 1052, type: !124)
!3027 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 1052, column: 2)
!3028 = !DILocation(line: 1038, column: 56, scope: !3015)
!3029 = !DILocation(line: 1039, column: 35, scope: !3015)
!3030 = !DILocation(line: 1040, column: 34, scope: !3015)
!3031 = !DILocation(line: 1042, column: 2, scope: !3015)
!3032 = !DILocation(line: 1042, column: 24, scope: !3015)
!3033 = !DILocation(line: 1042, column: 49, scope: !3015)
!3034 = !DILocation(line: 1042, column: 28, scope: !3015)
!3035 = !DILocation(line: 1043, column: 2, scope: !3015)
!3036 = !DILocation(line: 1043, column: 24, scope: !3015)
!3037 = !DILocation(line: 1045, column: 6, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1045, column: 6)
!3039 = !DILocation(line: 1045, column: 13, scope: !3038)
!3040 = !DILocation(line: 1045, column: 17, scope: !3038)
!3041 = !DILocation(line: 1045, column: 6, scope: !3015)
!3042 = !DILocation(line: 1046, column: 3, scope: !3038)
!3043 = !DILocation(line: 1048, column: 39, scope: !3015)
!3044 = !DILocation(line: 1048, column: 51, scope: !3015)
!3045 = !DILocation(line: 1048, column: 11, scope: !3015)
!3046 = !DILocation(line: 1048, column: 9, scope: !3015)
!3047 = !DILocation(line: 1049, column: 13, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1049, column: 6)
!3049 = !DILocation(line: 1049, column: 6, scope: !3048)
!3050 = !DILocation(line: 1049, column: 6, scope: !3015)
!3051 = !DILocation(line: 1050, column: 18, scope: !3048)
!3052 = !DILocation(line: 1050, column: 10, scope: !3048)
!3053 = !DILocation(line: 1050, column: 3, scope: !3048)
!3054 = !DILocation(line: 1052, column: 2, scope: !3025)
!3055 = !DILocation(line: 1052, column: 2, scope: !3027)
!3056 = !DILocation(line: 1052, column: 2, scope: !3015)
!3057 = !DILocation(line: 1052, column: 21, scope: !3015)
!3058 = !DILocation(line: 1052, column: 29, scope: !3015)
!3059 = !DILocation(line: 1053, column: 23, scope: !3015)
!3060 = !DILocation(line: 1053, column: 28, scope: !3015)
!3061 = !DILocation(line: 1053, column: 2, scope: !3015)
!3062 = !DILocation(line: 1055, column: 27, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1055, column: 6)
!3064 = !DILocation(line: 1055, column: 6, scope: !3063)
!3065 = !DILocation(line: 1055, column: 6, scope: !3015)
!3066 = !DILocation(line: 1056, column: 24, scope: !3063)
!3067 = !DILocation(line: 1056, column: 3, scope: !3063)
!3068 = !DILocation(line: 1058, column: 2, scope: !3015)
!3069 = !DILocation(line: 1059, column: 1, scope: !3015)
!3070 = distinct !DISubprogram(name: "PTR_ERR", scope: !1897, file: !1897, line: 49, type: !3071, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!256, !498}
!3073 = !{!3074}
!3074 = !DILocalVariable(name: "ptr", arg: 1, scope: !3070, file: !1897, line: 49, type: !498)
!3075 = !DILocation(line: 49, column: 61, scope: !3070)
!3076 = !DILocation(line: 51, column: 16, scope: !3070)
!3077 = !DILocation(line: 51, column: 9, scope: !3070)
!3078 = !DILocation(line: 51, column: 2, scope: !3070)
!3079 = !DISubprogram(name: "sysfs_create_link", scope: !246, file: !246, line: 293, type: !3080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!46, !143, !143, !132}
!3082 = distinct !DISubprogram(name: "dev_name", scope: !26, file: !26, line: 858, type: !3083, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3085)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!132, !824}
!3085 = !{!3086}
!3086 = !DILocalVariable(name: "dev", arg: 1, scope: !3082, file: !26, line: 858, type: !824)
!3087 = !DILocation(line: 858, column: 57, scope: !3082)
!3088 = !DILocation(line: 861, column: 6, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3082, file: !26, line: 861, column: 6)
!3090 = !DILocation(line: 861, column: 11, scope: !3089)
!3091 = !DILocation(line: 861, column: 6, scope: !3082)
!3092 = !DILocation(line: 862, column: 10, scope: !3089)
!3093 = !DILocation(line: 862, column: 15, scope: !3089)
!3094 = !DILocation(line: 862, column: 3, scope: !3089)
!3095 = !DILocation(line: 864, column: 23, scope: !3082)
!3096 = !DILocation(line: 864, column: 28, scope: !3082)
!3097 = !DILocation(line: 864, column: 9, scope: !3082)
!3098 = !DILocation(line: 864, column: 2, scope: !3082)
!3099 = !DILocation(line: 865, column: 1, scope: !3082)
!3100 = !DISubprogram(name: "sysfs_remove_link", scope: !246, file: !246, line: 298, type: !3101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !143, !132}
!3103 = distinct !DISubprogram(name: "__initstub__kmod_swnode__222_1109_software_node_init2", scope: !3, file: !3, line: 1109, type: !1073, scopeLine: 1109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3104 = !DILocation(line: 1109, column: 1, scope: !3103)
!3105 = distinct !DISubprogram(name: "software_node_init", scope: !3, file: !3, line: 1102, type: !1073, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3106 = !DILocation(line: 1104, column: 60, scope: !3105)
!3107 = !DILocation(line: 1104, column: 16, scope: !3105)
!3108 = !DILocation(line: 1104, column: 14, scope: !3105)
!3109 = !DILocation(line: 1105, column: 7, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1105, column: 6)
!3111 = !DILocation(line: 1105, column: 6, scope: !3105)
!3112 = !DILocation(line: 1106, column: 3, scope: !3110)
!3113 = !DILocation(line: 1107, column: 2, scope: !3105)
!3114 = !DILocation(line: 1108, column: 1, scope: !3105)
!3115 = distinct !DISubprogram(name: "software_node_exit", scope: !3, file: !3, line: 1111, type: !1314, scopeLine: 1112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3116 = !DILocation(line: 1113, column: 2, scope: !3115)
!3117 = !DILocation(line: 1114, column: 18, scope: !3115)
!3118 = !DILocation(line: 1114, column: 2, scope: !3115)
!3119 = !DILocation(line: 1115, column: 1, scope: !3115)
!3120 = !DISubprogram(name: "ida_destroy", scope: !1774, file: !1774, line: 259, type: !3121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !3123}
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!3124 = !DISubprogram(name: "kset_unregister", scope: !108, file: !108, line: 177, type: !3125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{null, !145}
!3127 = distinct !DISubprogram(name: "kmalloc_array", scope: !98, file: !98, line: 629, type: !2078, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3128)
!3128 = !{!3129, !3130, !3131, !3132}
!3129 = !DILocalVariable(name: "n", arg: 1, scope: !3127, file: !98, line: 629, type: !267)
!3130 = !DILocalVariable(name: "size", arg: 2, scope: !3127, file: !98, line: 629, type: !267)
!3131 = !DILocalVariable(name: "flags", arg: 3, scope: !3127, file: !98, line: 629, type: !1781)
!3132 = !DILocalVariable(name: "bytes", scope: !3127, file: !98, line: 631, type: !267)
!3133 = !DILocation(line: 629, column: 61, scope: !3127)
!3134 = !DILocation(line: 629, column: 71, scope: !3127)
!3135 = !DILocation(line: 629, column: 83, scope: !3127)
!3136 = !DILocation(line: 631, column: 2, scope: !3127)
!3137 = !DILocation(line: 631, column: 9, scope: !3127)
!3138 = !DILocation(line: 633, column: 6, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3127, file: !98, line: 633, column: 6)
!3140 = !DILocation(line: 633, column: 6, scope: !3127)
!3141 = !DILocation(line: 634, column: 3, scope: !3139)
!3142 = !DILocation(line: 635, column: 27, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3127, file: !98, line: 635, column: 6)
!3144 = !DILocation(line: 635, column: 6, scope: !3143)
!3145 = !DILocation(line: 635, column: 30, scope: !3143)
!3146 = !DILocation(line: 635, column: 54, scope: !3143)
!3147 = !DILocation(line: 635, column: 33, scope: !3143)
!3148 = !DILocation(line: 635, column: 6, scope: !3127)
!3149 = !DILocation(line: 636, column: 18, scope: !3143)
!3150 = !DILocation(line: 636, column: 25, scope: !3143)
!3151 = !DILocation(line: 636, column: 10, scope: !3143)
!3152 = !DILocation(line: 636, column: 3, scope: !3143)
!3153 = !DILocation(line: 637, column: 19, scope: !3127)
!3154 = !DILocation(line: 637, column: 26, scope: !3127)
!3155 = !DILocation(line: 637, column: 9, scope: !3127)
!3156 = !DILocation(line: 637, column: 2, scope: !3127)
!3157 = !DILocation(line: 638, column: 1, scope: !3127)
!3158 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3159, file: !3159, line: 51, type: !3160, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3162)
!3159 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!577, !577}
!3162 = !{!3163}
!3163 = !DILocalVariable(name: "overflow", arg: 1, scope: !3158, file: !3159, line: 51, type: !577)
!3164 = !DILocation(line: 51, column: 60, scope: !3158)
!3165 = !DILocation(line: 53, column: 9, scope: !3158)
!3166 = !DILocation(line: 53, column: 2, scope: !3158)
!3167 = distinct !DISubprogram(name: "kmalloc", scope: !98, file: !98, line: 591, type: !3168, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!124, !267, !1781}
!3170 = !{!3171, !3172, !3173}
!3171 = !DILocalVariable(name: "size", arg: 1, scope: !3167, file: !98, line: 591, type: !267)
!3172 = !DILocalVariable(name: "flags", arg: 2, scope: !3167, file: !98, line: 591, type: !1781)
!3173 = !DILocalVariable(name: "index", scope: !3174, file: !98, line: 594, type: !7)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !98, line: 593, column: 42)
!3175 = distinct !DILexicalBlock(scope: !3167, file: !98, line: 593, column: 6)
!3176 = !DILocation(line: 591, column: 61, scope: !3167)
!3177 = !DILocation(line: 591, column: 73, scope: !3167)
!3178 = !DILocation(line: 593, column: 27, scope: !3175)
!3179 = !DILocation(line: 593, column: 6, scope: !3175)
!3180 = !DILocation(line: 593, column: 33, scope: !3175)
!3181 = !DILocation(line: 593, column: 36, scope: !3175)
!3182 = !DILocation(line: 593, column: 6, scope: !3167)
!3183 = !DILocation(line: 594, column: 3, scope: !3174)
!3184 = !DILocation(line: 594, column: 16, scope: !3174)
!3185 = !DILocation(line: 596, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3174, file: !98, line: 596, column: 7)
!3187 = !DILocation(line: 596, column: 12, scope: !3186)
!3188 = !DILocation(line: 596, column: 7, scope: !3174)
!3189 = !DILocation(line: 597, column: 25, scope: !3186)
!3190 = !DILocation(line: 597, column: 31, scope: !3186)
!3191 = !DILocation(line: 597, column: 11, scope: !3186)
!3192 = !DILocation(line: 597, column: 4, scope: !3186)
!3193 = !DILocation(line: 599, column: 11, scope: !3174)
!3194 = !DILocation(line: 599, column: 9, scope: !3174)
!3195 = !DILocation(line: 601, column: 33, scope: !3174)
!3196 = !DILocation(line: 601, column: 40, scope: !3174)
!3197 = !DILocation(line: 601, column: 20, scope: !3174)
!3198 = !DILocation(line: 601, column: 5, scope: !3174)
!3199 = !DILocation(line: 601, column: 51, scope: !3174)
!3200 = !DILocation(line: 602, column: 5, scope: !3174)
!3201 = !DILocation(line: 602, column: 12, scope: !3174)
!3202 = !DILocation(line: 600, column: 10, scope: !3174)
!3203 = !DILocation(line: 600, column: 3, scope: !3174)
!3204 = !DILocation(line: 603, column: 2, scope: !3175)
!3205 = !DILocation(line: 604, column: 19, scope: !3167)
!3206 = !DILocation(line: 604, column: 25, scope: !3167)
!3207 = !DILocation(line: 604, column: 9, scope: !3167)
!3208 = !DILocation(line: 604, column: 2, scope: !3167)
!3209 = !DILocation(line: 605, column: 1, scope: !3167)
!3210 = !DISubprogram(name: "__kmalloc", scope: !98, file: !98, line: 488, type: !3168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3211 = !DISubprogram(name: "kmalloc_large", scope: !98, file: !98, line: 531, type: !3168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3212 = distinct !DISubprogram(name: "__kmalloc_index", scope: !98, file: !98, line: 444, type: !3213, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!7, !267, !577}
!3215 = !{!3216, !3217}
!3216 = !DILocalVariable(name: "size", arg: 1, scope: !3212, file: !98, line: 444, type: !267)
!3217 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3212, file: !98, line: 445, type: !577)
!3218 = !DILocation(line: 444, column: 60, scope: !3212)
!3219 = !DILocation(line: 445, column: 16, scope: !3212)
!3220 = !DILocation(line: 447, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 447, column: 6)
!3222 = !DILocation(line: 447, column: 6, scope: !3212)
!3223 = !DILocation(line: 448, column: 3, scope: !3221)
!3224 = !DILocation(line: 450, column: 6, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 450, column: 6)
!3226 = !DILocation(line: 450, column: 11, scope: !3225)
!3227 = !DILocation(line: 450, column: 6, scope: !3212)
!3228 = !DILocation(line: 451, column: 3, scope: !3225)
!3229 = !DILocation(line: 453, column: 32, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 453, column: 6)
!3231 = !DILocation(line: 453, column: 37, scope: !3230)
!3232 = !DILocation(line: 453, column: 42, scope: !3230)
!3233 = !DILocation(line: 453, column: 45, scope: !3230)
!3234 = !DILocation(line: 453, column: 50, scope: !3230)
!3235 = !DILocation(line: 453, column: 6, scope: !3212)
!3236 = !DILocation(line: 454, column: 3, scope: !3230)
!3237 = !DILocation(line: 455, column: 32, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 455, column: 6)
!3239 = !DILocation(line: 455, column: 37, scope: !3238)
!3240 = !DILocation(line: 455, column: 43, scope: !3238)
!3241 = !DILocation(line: 455, column: 46, scope: !3238)
!3242 = !DILocation(line: 455, column: 51, scope: !3238)
!3243 = !DILocation(line: 455, column: 6, scope: !3212)
!3244 = !DILocation(line: 456, column: 3, scope: !3238)
!3245 = !DILocation(line: 457, column: 6, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 457, column: 6)
!3247 = !DILocation(line: 457, column: 11, scope: !3246)
!3248 = !DILocation(line: 457, column: 6, scope: !3212)
!3249 = !DILocation(line: 457, column: 26, scope: !3246)
!3250 = !DILocation(line: 458, column: 6, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 458, column: 6)
!3252 = !DILocation(line: 458, column: 11, scope: !3251)
!3253 = !DILocation(line: 458, column: 6, scope: !3212)
!3254 = !DILocation(line: 458, column: 26, scope: !3251)
!3255 = !DILocation(line: 459, column: 6, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 459, column: 6)
!3257 = !DILocation(line: 459, column: 11, scope: !3256)
!3258 = !DILocation(line: 459, column: 6, scope: !3212)
!3259 = !DILocation(line: 459, column: 26, scope: !3256)
!3260 = !DILocation(line: 460, column: 6, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 460, column: 6)
!3262 = !DILocation(line: 460, column: 11, scope: !3261)
!3263 = !DILocation(line: 460, column: 6, scope: !3212)
!3264 = !DILocation(line: 460, column: 26, scope: !3261)
!3265 = !DILocation(line: 461, column: 6, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 461, column: 6)
!3267 = !DILocation(line: 461, column: 11, scope: !3266)
!3268 = !DILocation(line: 461, column: 6, scope: !3212)
!3269 = !DILocation(line: 461, column: 26, scope: !3266)
!3270 = !DILocation(line: 462, column: 6, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 462, column: 6)
!3272 = !DILocation(line: 462, column: 11, scope: !3271)
!3273 = !DILocation(line: 462, column: 6, scope: !3212)
!3274 = !DILocation(line: 462, column: 26, scope: !3271)
!3275 = !DILocation(line: 463, column: 6, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 463, column: 6)
!3277 = !DILocation(line: 463, column: 11, scope: !3276)
!3278 = !DILocation(line: 463, column: 6, scope: !3212)
!3279 = !DILocation(line: 463, column: 26, scope: !3276)
!3280 = !DILocation(line: 464, column: 6, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 464, column: 6)
!3282 = !DILocation(line: 464, column: 11, scope: !3281)
!3283 = !DILocation(line: 464, column: 6, scope: !3212)
!3284 = !DILocation(line: 464, column: 26, scope: !3281)
!3285 = !DILocation(line: 465, column: 6, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 465, column: 6)
!3287 = !DILocation(line: 465, column: 11, scope: !3286)
!3288 = !DILocation(line: 465, column: 6, scope: !3212)
!3289 = !DILocation(line: 465, column: 26, scope: !3286)
!3290 = !DILocation(line: 466, column: 6, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 466, column: 6)
!3292 = !DILocation(line: 466, column: 11, scope: !3291)
!3293 = !DILocation(line: 466, column: 6, scope: !3212)
!3294 = !DILocation(line: 466, column: 26, scope: !3291)
!3295 = !DILocation(line: 467, column: 6, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 467, column: 6)
!3297 = !DILocation(line: 467, column: 11, scope: !3296)
!3298 = !DILocation(line: 467, column: 6, scope: !3212)
!3299 = !DILocation(line: 467, column: 26, scope: !3296)
!3300 = !DILocation(line: 468, column: 6, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 468, column: 6)
!3302 = !DILocation(line: 468, column: 11, scope: !3301)
!3303 = !DILocation(line: 468, column: 6, scope: !3212)
!3304 = !DILocation(line: 468, column: 26, scope: !3301)
!3305 = !DILocation(line: 469, column: 6, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 469, column: 6)
!3307 = !DILocation(line: 469, column: 11, scope: !3306)
!3308 = !DILocation(line: 469, column: 6, scope: !3212)
!3309 = !DILocation(line: 469, column: 26, scope: !3306)
!3310 = !DILocation(line: 470, column: 6, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 470, column: 6)
!3312 = !DILocation(line: 470, column: 11, scope: !3311)
!3313 = !DILocation(line: 470, column: 6, scope: !3212)
!3314 = !DILocation(line: 470, column: 26, scope: !3311)
!3315 = !DILocation(line: 471, column: 6, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 471, column: 6)
!3317 = !DILocation(line: 471, column: 11, scope: !3316)
!3318 = !DILocation(line: 471, column: 6, scope: !3212)
!3319 = !DILocation(line: 471, column: 26, scope: !3316)
!3320 = !DILocation(line: 472, column: 6, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 472, column: 6)
!3322 = !DILocation(line: 472, column: 11, scope: !3321)
!3323 = !DILocation(line: 472, column: 6, scope: !3212)
!3324 = !DILocation(line: 472, column: 26, scope: !3321)
!3325 = !DILocation(line: 473, column: 6, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 473, column: 6)
!3327 = !DILocation(line: 473, column: 11, scope: !3326)
!3328 = !DILocation(line: 473, column: 6, scope: !3212)
!3329 = !DILocation(line: 473, column: 26, scope: !3326)
!3330 = !DILocation(line: 474, column: 6, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 474, column: 6)
!3332 = !DILocation(line: 474, column: 11, scope: !3331)
!3333 = !DILocation(line: 474, column: 6, scope: !3212)
!3334 = !DILocation(line: 474, column: 27, scope: !3331)
!3335 = !DILocation(line: 475, column: 6, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 475, column: 6)
!3337 = !DILocation(line: 475, column: 11, scope: !3336)
!3338 = !DILocation(line: 475, column: 6, scope: !3212)
!3339 = !DILocation(line: 475, column: 32, scope: !3336)
!3340 = !DILocation(line: 477, column: 50, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3212, file: !98, line: 477, column: 6)
!3342 = !DILocation(line: 477, column: 6, scope: !3212)
!3343 = !DILocation(line: 478, column: 3, scope: !3341)
!3344 = !DILocation(line: 478, column: 3, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !98, line: 478, column: 3)
!3346 = distinct !DILexicalBlock(scope: !3341, file: !98, line: 478, column: 3)
!3347 = !{i32 -2142265996}
!3348 = !DILocation(line: 478, column: 3, scope: !3346)
!3349 = !DILocation(line: 480, column: 3, scope: !3341)
!3350 = !DILocation(line: 480, column: 3, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3341, file: !98, line: 480, column: 3)
!3352 = !DILocation(line: 480, column: 3, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3351, file: !98, line: 480, column: 3)
!3354 = !DILocation(line: 480, column: 3, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3351, file: !98, line: 480, column: 3)
!3356 = !{i64 2152701503, i64 2152701532, i64 2152701578, i64 2152701636, i64 2152701690, i64 2152701744, i64 2152701799, i64 2152701830}
!3357 = !DILocation(line: 483, column: 2, scope: !3212)
!3358 = !DILocation(line: 484, column: 1, scope: !3212)
!3359 = !DISubprogram(name: "kmalloc_trace", scope: !98, file: !98, line: 525, type: !3360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!124, !3362, !1781, !267}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3364, line: 11, flags: DIFlagFwdDecl)
!3364 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3365 = distinct !DISubprogram(name: "kmalloc_type", scope: !98, file: !98, line: 401, type: !3366, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3368)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!97, !1781, !270}
!3368 = !{!3369, !3370}
!3369 = !DILocalVariable(name: "flags", arg: 1, scope: !3365, file: !98, line: 401, type: !1781)
!3370 = !DILocalVariable(name: "caller", arg: 2, scope: !3365, file: !98, line: 401, type: !270)
!3371 = !DILocation(line: 401, column: 67, scope: !3365)
!3372 = !DILocation(line: 401, column: 88, scope: !3365)
!3373 = !DILocation(line: 407, column: 6, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3365, file: !98, line: 407, column: 6)
!3375 = !DILocation(line: 407, column: 6, scope: !3365)
!3376 = !DILocation(line: 413, column: 3, scope: !3374)
!3377 = !DILocation(line: 423, column: 38, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3365, file: !98, line: 423, column: 6)
!3379 = !DILocation(line: 423, column: 44, scope: !3378)
!3380 = !DILocation(line: 423, column: 6, scope: !3365)
!3381 = !DILocation(line: 424, column: 3, scope: !3378)
!3382 = !DILocation(line: 426, column: 3, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3365, file: !98, line: 425, column: 6)
!3384 = !DILocation(line: 429, column: 1, scope: !3365)
!3385 = !DISubprogram(name: "__compiletime_assert_204", scope: !98, file: !98, line: 478, type: !1314, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3386 = distinct !DISubprogram(name: "property_get_pointer", scope: !3, file: !3, line: 122, type: !3387, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!498, !1744}
!3389 = !{!3390}
!3390 = !DILocalVariable(name: "prop", arg: 1, scope: !3386, file: !3, line: 122, type: !1744)
!3391 = !DILocation(line: 122, column: 70, scope: !3386)
!3392 = !DILocation(line: 124, column: 7, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 124, column: 6)
!3394 = !DILocation(line: 124, column: 13, scope: !3393)
!3395 = !DILocation(line: 124, column: 6, scope: !3386)
!3396 = !DILocation(line: 125, column: 3, scope: !3393)
!3397 = !DILocation(line: 127, column: 9, scope: !3386)
!3398 = !DILocation(line: 127, column: 15, scope: !3386)
!3399 = !DILocation(line: 127, column: 28, scope: !3386)
!3400 = !DILocation(line: 127, column: 34, scope: !3386)
!3401 = !DILocation(line: 127, column: 42, scope: !3386)
!3402 = !DILocation(line: 127, column: 48, scope: !3386)
!3403 = !DILocation(line: 127, column: 2, scope: !3386)
!3404 = !DILocation(line: 128, column: 1, scope: !3386)
!3405 = distinct !DISubprogram(name: "property_copy_string_array", scope: !3, file: !3, line: 233, type: !3406, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3408)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!577, !1286, !2229, !267}
!3408 = !{!3409, !3410, !3411, !3412}
!3409 = !DILocalVariable(name: "dst_ptr", arg: 1, scope: !3405, file: !3, line: 233, type: !1286)
!3410 = !DILocalVariable(name: "src_ptr", arg: 2, scope: !3405, file: !3, line: 234, type: !2229)
!3411 = !DILocalVariable(name: "nval", arg: 3, scope: !3405, file: !3, line: 235, type: !267)
!3412 = !DILocalVariable(name: "i", scope: !3405, file: !3, line: 237, type: !46)
!3413 = !DILocation(line: 233, column: 53, scope: !3405)
!3414 = !DILocation(line: 234, column: 32, scope: !3405)
!3415 = !DILocation(line: 235, column: 19, scope: !3405)
!3416 = !DILocation(line: 237, column: 2, scope: !3405)
!3417 = !DILocation(line: 237, column: 6, scope: !3405)
!3418 = !DILocation(line: 239, column: 9, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 239, column: 2)
!3420 = !DILocation(line: 239, column: 7, scope: !3419)
!3421 = !DILocation(line: 239, column: 14, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 239, column: 2)
!3423 = !DILocation(line: 239, column: 18, scope: !3422)
!3424 = !DILocation(line: 239, column: 16, scope: !3422)
!3425 = !DILocation(line: 239, column: 2, scope: !3419)
!3426 = !DILocation(line: 240, column: 24, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 239, column: 29)
!3428 = !DILocation(line: 240, column: 32, scope: !3427)
!3429 = !DILocation(line: 240, column: 16, scope: !3427)
!3430 = !DILocation(line: 240, column: 3, scope: !3427)
!3431 = !DILocation(line: 240, column: 11, scope: !3427)
!3432 = !DILocation(line: 240, column: 14, scope: !3427)
!3433 = !DILocation(line: 241, column: 8, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 241, column: 7)
!3435 = !DILocation(line: 241, column: 16, scope: !3434)
!3436 = !DILocation(line: 241, column: 19, scope: !3434)
!3437 = !DILocation(line: 241, column: 22, scope: !3434)
!3438 = !DILocation(line: 241, column: 30, scope: !3434)
!3439 = !DILocation(line: 241, column: 7, scope: !3427)
!3440 = !DILocation(line: 242, column: 4, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 241, column: 34)
!3442 = !DILocation(line: 242, column: 11, scope: !3441)
!3443 = !DILocation(line: 242, column: 15, scope: !3441)
!3444 = !DILocation(line: 243, column: 11, scope: !3441)
!3445 = !DILocation(line: 243, column: 19, scope: !3441)
!3446 = !DILocation(line: 243, column: 5, scope: !3441)
!3447 = distinct !{!3447, !3440, !3448, !1992, !1993}
!3448 = !DILocation(line: 243, column: 21, scope: !3441)
!3449 = !DILocation(line: 244, column: 4, scope: !3441)
!3450 = !DILocation(line: 246, column: 2, scope: !3427)
!3451 = !DILocation(line: 239, column: 25, scope: !3422)
!3452 = !DILocation(line: 239, column: 2, scope: !3422)
!3453 = distinct !{!3453, !3425, !3454, !1992, !1993}
!3454 = !DILocation(line: 246, column: 2, scope: !3419)
!3455 = !DILocation(line: 248, column: 2, scope: !3405)
!3456 = !DILocation(line: 249, column: 1, scope: !3405)
!3457 = !DISubprogram(name: "kstrdup", scope: !2392, file: !2392, line: 216, type: !3458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!220, !132, !1781}
!3460 = distinct !DISubprogram(name: "software_node_get", scope: !3, file: !3, line: 366, type: !808, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3461)
!3461 = !{!3462, !3463, !3464, !3466}
!3462 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3460, file: !3, line: 366, type: !800)
!3463 = !DILocalVariable(name: "swnode", scope: !3460, file: !3, line: 368, type: !125)
!3464 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3465, file: !3, line: 368, type: !800)
!3465 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 368, column: 26)
!3466 = !DILocalVariable(name: "__mptr", scope: !3467, file: !3, line: 368, type: !124)
!3467 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 368, column: 26)
!3468 = !DILocation(line: 366, column: 70, scope: !3460)
!3469 = !DILocation(line: 368, column: 2, scope: !3460)
!3470 = !DILocation(line: 368, column: 17, scope: !3460)
!3471 = !DILocation(line: 368, column: 26, scope: !3465)
!3472 = !DILocation(line: 368, column: 26, scope: !3467)
!3473 = !DILocation(line: 368, column: 26, scope: !3460)
!3474 = !DILocation(line: 370, column: 15, scope: !3460)
!3475 = !DILocation(line: 370, column: 23, scope: !3460)
!3476 = !DILocation(line: 370, column: 2, scope: !3460)
!3477 = !DILocation(line: 372, column: 10, scope: !3460)
!3478 = !DILocation(line: 372, column: 18, scope: !3460)
!3479 = !DILocation(line: 373, column: 1, scope: !3460)
!3480 = !DILocation(line: 372, column: 2, scope: !3460)
!3481 = distinct !DISubprogram(name: "software_node_put", scope: !3, file: !3, line: 375, type: !812, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3482)
!3482 = !{!3483, !3484, !3485, !3487}
!3483 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3481, file: !3, line: 375, type: !800)
!3484 = !DILocalVariable(name: "swnode", scope: !3481, file: !3, line: 377, type: !125)
!3485 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3486, file: !3, line: 377, type: !800)
!3486 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 377, column: 26)
!3487 = !DILocalVariable(name: "__mptr", scope: !3488, file: !3, line: 377, type: !124)
!3488 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 377, column: 26)
!3489 = !DILocation(line: 375, column: 53, scope: !3481)
!3490 = !DILocation(line: 377, column: 2, scope: !3481)
!3491 = !DILocation(line: 377, column: 17, scope: !3481)
!3492 = !DILocation(line: 377, column: 26, scope: !3486)
!3493 = !DILocation(line: 377, column: 26, scope: !3488)
!3494 = !DILocation(line: 377, column: 26, scope: !3481)
!3495 = !DILocation(line: 379, column: 15, scope: !3481)
!3496 = !DILocation(line: 379, column: 23, scope: !3481)
!3497 = !DILocation(line: 379, column: 2, scope: !3481)
!3498 = !DILocation(line: 380, column: 1, scope: !3481)
!3499 = distinct !DISubprogram(name: "software_node_property_present", scope: !3, file: !3, line: 382, type: !1669, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3500 = !{!3501, !3502, !3503, !3504, !3506}
!3501 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3499, file: !3, line: 382, type: !818)
!3502 = !DILocalVariable(name: "propname", arg: 2, scope: !3499, file: !3, line: 383, type: !132)
!3503 = !DILocalVariable(name: "swnode", scope: !3499, file: !3, line: 385, type: !125)
!3504 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3505, file: !3, line: 385, type: !818)
!3505 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 385, column: 26)
!3506 = !DILocalVariable(name: "__mptr", scope: !3507, file: !3, line: 385, type: !124)
!3507 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 385, column: 26)
!3508 = !DILocation(line: 382, column: 72, scope: !3499)
!3509 = !DILocation(line: 383, column: 21, scope: !3499)
!3510 = !DILocation(line: 385, column: 2, scope: !3499)
!3511 = !DILocation(line: 385, column: 17, scope: !3499)
!3512 = !DILocation(line: 385, column: 26, scope: !3505)
!3513 = !DILocation(line: 385, column: 26, scope: !3507)
!3514 = !DILocation(line: 385, column: 26, scope: !3499)
!3515 = !DILocation(line: 387, column: 30, scope: !3499)
!3516 = !DILocation(line: 387, column: 38, scope: !3499)
!3517 = !DILocation(line: 387, column: 44, scope: !3499)
!3518 = !DILocation(line: 387, column: 56, scope: !3499)
!3519 = !DILocation(line: 387, column: 11, scope: !3499)
!3520 = !DILocation(line: 387, column: 10, scope: !3499)
!3521 = !DILocation(line: 387, column: 9, scope: !3499)
!3522 = !DILocation(line: 388, column: 1, scope: !3499)
!3523 = !DILocation(line: 387, column: 2, scope: !3499)
!3524 = distinct !DISubprogram(name: "software_node_read_int_array", scope: !3, file: !3, line: 390, type: !1673, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3525)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3534}
!3526 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3524, file: !3, line: 390, type: !818)
!3527 = !DILocalVariable(name: "propname", arg: 2, scope: !3524, file: !3, line: 391, type: !132)
!3528 = !DILocalVariable(name: "elem_size", arg: 3, scope: !3524, file: !3, line: 392, type: !7)
!3529 = !DILocalVariable(name: "val", arg: 4, scope: !3524, file: !3, line: 392, type: !124)
!3530 = !DILocalVariable(name: "nval", arg: 5, scope: !3524, file: !3, line: 393, type: !267)
!3531 = !DILocalVariable(name: "swnode", scope: !3524, file: !3, line: 395, type: !125)
!3532 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3533, file: !3, line: 395, type: !818)
!3533 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 395, column: 26)
!3534 = !DILocalVariable(name: "__mptr", scope: !3535, file: !3, line: 395, type: !124)
!3535 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 395, column: 26)
!3536 = !DILocation(line: 390, column: 69, scope: !3524)
!3537 = !DILocation(line: 391, column: 18, scope: !3524)
!3538 = !DILocation(line: 392, column: 19, scope: !3524)
!3539 = !DILocation(line: 392, column: 36, scope: !3524)
!3540 = !DILocation(line: 393, column: 13, scope: !3524)
!3541 = !DILocation(line: 395, column: 2, scope: !3524)
!3542 = !DILocation(line: 395, column: 17, scope: !3524)
!3543 = !DILocation(line: 395, column: 26, scope: !3533)
!3544 = !DILocation(line: 395, column: 26, scope: !3535)
!3545 = !DILocation(line: 395, column: 26, scope: !3524)
!3546 = !DILocation(line: 397, column: 39, scope: !3524)
!3547 = !DILocation(line: 397, column: 47, scope: !3524)
!3548 = !DILocation(line: 397, column: 53, scope: !3524)
!3549 = !DILocation(line: 397, column: 65, scope: !3524)
!3550 = !DILocation(line: 398, column: 11, scope: !3524)
!3551 = !DILocation(line: 398, column: 22, scope: !3524)
!3552 = !DILocation(line: 398, column: 27, scope: !3524)
!3553 = !DILocation(line: 397, column: 9, scope: !3524)
!3554 = !DILocation(line: 399, column: 1, scope: !3524)
!3555 = !DILocation(line: 397, column: 2, scope: !3524)
!3556 = distinct !DISubprogram(name: "software_node_read_string_array", scope: !3, file: !3, line: 401, type: !1677, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3557)
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3565}
!3558 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3556, file: !3, line: 401, type: !818)
!3559 = !DILocalVariable(name: "propname", arg: 2, scope: !3556, file: !3, line: 402, type: !132)
!3560 = !DILocalVariable(name: "val", arg: 3, scope: !3556, file: !3, line: 403, type: !1286)
!3561 = !DILocalVariable(name: "nval", arg: 4, scope: !3556, file: !3, line: 403, type: !267)
!3562 = !DILocalVariable(name: "swnode", scope: !3556, file: !3, line: 405, type: !125)
!3563 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3564, file: !3, line: 405, type: !818)
!3564 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 405, column: 26)
!3565 = !DILocalVariable(name: "__mptr", scope: !3566, file: !3, line: 405, type: !124)
!3566 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 405, column: 26)
!3567 = !DILocation(line: 401, column: 72, scope: !3556)
!3568 = !DILocation(line: 402, column: 21, scope: !3556)
!3569 = !DILocation(line: 403, column: 22, scope: !3556)
!3570 = !DILocation(line: 403, column: 34, scope: !3556)
!3571 = !DILocation(line: 405, column: 2, scope: !3556)
!3572 = !DILocation(line: 405, column: 17, scope: !3556)
!3573 = !DILocation(line: 405, column: 26, scope: !3564)
!3574 = !DILocation(line: 405, column: 26, scope: !3566)
!3575 = !DILocation(line: 405, column: 26, scope: !3556)
!3576 = !DILocation(line: 407, column: 42, scope: !3556)
!3577 = !DILocation(line: 407, column: 50, scope: !3556)
!3578 = !DILocation(line: 407, column: 56, scope: !3556)
!3579 = !DILocation(line: 408, column: 7, scope: !3556)
!3580 = !DILocation(line: 408, column: 17, scope: !3556)
!3581 = !DILocation(line: 408, column: 22, scope: !3556)
!3582 = !DILocation(line: 407, column: 9, scope: !3556)
!3583 = !DILocation(line: 409, column: 1, scope: !3556)
!3584 = !DILocation(line: 407, column: 2, scope: !3556)
!3585 = distinct !DISubprogram(name: "software_node_get_name", scope: !3, file: !3, line: 412, type: !1681, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3586)
!3586 = !{!3587, !3588, !3589, !3591}
!3587 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3585, file: !3, line: 412, type: !818)
!3588 = !DILocalVariable(name: "swnode", scope: !3585, file: !3, line: 414, type: !1913)
!3589 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3590, file: !3, line: 414, type: !818)
!3590 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 414, column: 32)
!3591 = !DILocalVariable(name: "__mptr", scope: !3592, file: !3, line: 414, type: !124)
!3592 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 414, column: 32)
!3593 = !DILocation(line: 412, column: 52, scope: !3585)
!3594 = !DILocation(line: 414, column: 2, scope: !3585)
!3595 = !DILocation(line: 414, column: 23, scope: !3585)
!3596 = !DILocation(line: 414, column: 32, scope: !3590)
!3597 = !DILocation(line: 414, column: 32, scope: !3592)
!3598 = !DILocation(line: 414, column: 32, scope: !3585)
!3599 = !DILocation(line: 416, column: 23, scope: !3585)
!3600 = !DILocation(line: 416, column: 31, scope: !3585)
!3601 = !DILocation(line: 416, column: 9, scope: !3585)
!3602 = !DILocation(line: 417, column: 1, scope: !3585)
!3603 = !DILocation(line: 416, column: 2, scope: !3585)
!3604 = distinct !DISubprogram(name: "software_node_get_name_prefix", scope: !3, file: !3, line: 420, type: !1681, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3605)
!3605 = !{!3606, !3607, !3608}
!3606 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3604, file: !3, line: 420, type: !818)
!3607 = !DILocalVariable(name: "parent", scope: !3604, file: !3, line: 422, type: !800)
!3608 = !DILocalVariable(name: "prefix", scope: !3604, file: !3, line: 423, type: !132)
!3609 = !DILocation(line: 420, column: 59, scope: !3604)
!3610 = !DILocation(line: 422, column: 2, scope: !3604)
!3611 = !DILocation(line: 422, column: 24, scope: !3604)
!3612 = !DILocation(line: 423, column: 2, scope: !3604)
!3613 = !DILocation(line: 423, column: 14, scope: !3604)
!3614 = !DILocation(line: 425, column: 29, scope: !3604)
!3615 = !DILocation(line: 425, column: 11, scope: !3604)
!3616 = !DILocation(line: 425, column: 9, scope: !3604)
!3617 = !DILocation(line: 426, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 426, column: 6)
!3619 = !DILocation(line: 426, column: 6, scope: !3604)
!3620 = !DILocation(line: 427, column: 3, scope: !3618)
!3621 = !DILocation(line: 430, column: 2, scope: !3604)
!3622 = !DILocation(line: 430, column: 26, scope: !3604)
!3623 = !DILocation(line: 430, column: 9, scope: !3604)
!3624 = !DILocation(line: 431, column: 35, scope: !3604)
!3625 = !DILocation(line: 431, column: 12, scope: !3604)
!3626 = !DILocation(line: 431, column: 10, scope: !3604)
!3627 = distinct !{!3627, !3621, !3628, !1992, !1993}
!3628 = !DILocation(line: 431, column: 41, scope: !3604)
!3629 = !DILocation(line: 433, column: 34, scope: !3604)
!3630 = !DILocation(line: 433, column: 11, scope: !3604)
!3631 = !DILocation(line: 433, column: 9, scope: !3604)
!3632 = !DILocation(line: 434, column: 20, scope: !3604)
!3633 = !DILocation(line: 434, column: 2, scope: !3604)
!3634 = !DILocation(line: 437, column: 9, scope: !3604)
!3635 = !DILocation(line: 437, column: 2, scope: !3604)
!3636 = !DILocation(line: 438, column: 1, scope: !3604)
!3637 = distinct !DISubprogram(name: "software_node_get_parent", scope: !3, file: !3, line: 441, type: !1686, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3638)
!3638 = !{!3639, !3640, !3641, !3643}
!3639 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3637, file: !3, line: 441, type: !818)
!3640 = !DILocalVariable(name: "swnode", scope: !3637, file: !3, line: 443, type: !125)
!3641 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3642, file: !3, line: 443, type: !818)
!3642 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 443, column: 26)
!3643 = !DILocalVariable(name: "__mptr", scope: !3644, file: !3, line: 443, type: !124)
!3644 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 443, column: 26)
!3645 = !DILocation(line: 441, column: 54, scope: !3637)
!3646 = !DILocation(line: 443, column: 2, scope: !3637)
!3647 = !DILocation(line: 443, column: 17, scope: !3637)
!3648 = !DILocation(line: 443, column: 26, scope: !3642)
!3649 = !DILocation(line: 443, column: 26, scope: !3644)
!3650 = !DILocation(line: 443, column: 26, scope: !3637)
!3651 = !DILocation(line: 445, column: 7, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 445, column: 6)
!3653 = !DILocation(line: 445, column: 14, scope: !3652)
!3654 = !DILocation(line: 445, column: 18, scope: !3652)
!3655 = !DILocation(line: 445, column: 26, scope: !3652)
!3656 = !DILocation(line: 445, column: 6, scope: !3637)
!3657 = !DILocation(line: 446, column: 3, scope: !3652)
!3658 = !DILocation(line: 448, column: 28, scope: !3637)
!3659 = !DILocation(line: 448, column: 36, scope: !3637)
!3660 = !DILocation(line: 448, column: 44, scope: !3637)
!3661 = !DILocation(line: 448, column: 9, scope: !3637)
!3662 = !DILocation(line: 448, column: 2, scope: !3637)
!3663 = !DILocation(line: 449, column: 1, scope: !3637)
!3664 = distinct !DISubprogram(name: "software_node_get_next_child", scope: !3, file: !3, line: 452, type: !1690, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3671, !3673, !3674, !3676, !3678, !3681}
!3666 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3664, file: !3, line: 452, type: !818)
!3667 = !DILocalVariable(name: "child", arg: 2, scope: !3664, file: !3, line: 453, type: !800)
!3668 = !DILocalVariable(name: "p", scope: !3664, file: !3, line: 455, type: !125)
!3669 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3670, file: !3, line: 455, type: !818)
!3670 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 455, column: 21)
!3671 = !DILocalVariable(name: "__mptr", scope: !3672, file: !3, line: 455, type: !124)
!3672 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 455, column: 21)
!3673 = !DILocalVariable(name: "c", scope: !3664, file: !3, line: 456, type: !125)
!3674 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3675, file: !3, line: 456, type: !800)
!3675 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 456, column: 21)
!3676 = !DILocalVariable(name: "__mptr", scope: !3677, file: !3, line: 456, type: !124)
!3677 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 456, column: 21)
!3678 = !DILocalVariable(name: "__mptr", scope: !3679, file: !3, line: 465, type: !124)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 465, column: 7)
!3680 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 464, column: 6)
!3681 = !DILocalVariable(name: "__mptr", scope: !3682, file: !3, line: 467, type: !124)
!3682 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 467, column: 7)
!3683 = !DILocation(line: 452, column: 58, scope: !3664)
!3684 = !DILocation(line: 453, column: 31, scope: !3664)
!3685 = !DILocation(line: 455, column: 2, scope: !3664)
!3686 = !DILocation(line: 455, column: 17, scope: !3664)
!3687 = !DILocation(line: 455, column: 21, scope: !3670)
!3688 = !DILocation(line: 455, column: 21, scope: !3672)
!3689 = !DILocation(line: 455, column: 21, scope: !3664)
!3690 = !DILocation(line: 456, column: 2, scope: !3664)
!3691 = !DILocation(line: 456, column: 17, scope: !3664)
!3692 = !DILocation(line: 456, column: 21, scope: !3675)
!3693 = !DILocation(line: 456, column: 21, scope: !3677)
!3694 = !DILocation(line: 456, column: 21, scope: !3664)
!3695 = !DILocation(line: 458, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 458, column: 6)
!3697 = !DILocation(line: 458, column: 9, scope: !3696)
!3698 = !DILocation(line: 458, column: 24, scope: !3696)
!3699 = !DILocation(line: 458, column: 27, scope: !3696)
!3700 = !DILocation(line: 458, column: 12, scope: !3696)
!3701 = !DILocation(line: 458, column: 37, scope: !3696)
!3702 = !DILocation(line: 459, column: 7, scope: !3696)
!3703 = !DILocation(line: 459, column: 9, scope: !3696)
!3704 = !DILocation(line: 459, column: 26, scope: !3696)
!3705 = !DILocation(line: 459, column: 29, scope: !3696)
!3706 = !DILocation(line: 459, column: 37, scope: !3696)
!3707 = !DILocation(line: 459, column: 40, scope: !3696)
!3708 = !DILocation(line: 459, column: 12, scope: !3696)
!3709 = !DILocation(line: 458, column: 6, scope: !3664)
!3710 = !DILocation(line: 460, column: 21, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3696, file: !3, line: 459, column: 52)
!3712 = !DILocation(line: 460, column: 3, scope: !3711)
!3713 = !DILocation(line: 461, column: 3, scope: !3711)
!3714 = !DILocation(line: 464, column: 6, scope: !3680)
!3715 = !DILocation(line: 464, column: 6, scope: !3664)
!3716 = !DILocation(line: 465, column: 7, scope: !3679)
!3717 = !DILocation(line: 465, column: 7, scope: !3680)
!3718 = !DILocation(line: 465, column: 5, scope: !3680)
!3719 = !DILocation(line: 465, column: 3, scope: !3680)
!3720 = !DILocation(line: 467, column: 7, scope: !3682)
!3721 = !DILocation(line: 467, column: 7, scope: !3680)
!3722 = !DILocation(line: 467, column: 5, scope: !3680)
!3723 = !DILocation(line: 469, column: 20, scope: !3664)
!3724 = !DILocation(line: 469, column: 2, scope: !3664)
!3725 = !DILocation(line: 470, column: 28, scope: !3664)
!3726 = !DILocation(line: 470, column: 31, scope: !3664)
!3727 = !DILocation(line: 470, column: 9, scope: !3664)
!3728 = !DILocation(line: 470, column: 2, scope: !3664)
!3729 = !DILocation(line: 471, column: 1, scope: !3664)
!3730 = distinct !DISubprogram(name: "software_node_get_named_child_node", scope: !3, file: !3, line: 474, type: !1694, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3731)
!3731 = !{!3732, !3733, !3734, !3735, !3737, !3739, !3740, !3743}
!3732 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3730, file: !3, line: 474, type: !818)
!3733 = !DILocalVariable(name: "childname", arg: 2, scope: !3730, file: !3, line: 475, type: !132)
!3734 = !DILocalVariable(name: "swnode", scope: !3730, file: !3, line: 477, type: !125)
!3735 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3736, file: !3, line: 477, type: !818)
!3736 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 477, column: 26)
!3737 = !DILocalVariable(name: "__mptr", scope: !3738, file: !3, line: 477, type: !124)
!3738 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 477, column: 26)
!3739 = !DILocalVariable(name: "child", scope: !3730, file: !3, line: 478, type: !125)
!3740 = !DILocalVariable(name: "__mptr", scope: !3741, file: !3, line: 483, type: !124)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 483, column: 2)
!3742 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 483, column: 2)
!3743 = !DILocalVariable(name: "__mptr", scope: !3744, file: !3, line: 483, type: !124)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 483, column: 2)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 483, column: 2)
!3746 = !DILocation(line: 474, column: 64, scope: !3730)
!3747 = !DILocation(line: 475, column: 20, scope: !3730)
!3748 = !DILocation(line: 477, column: 2, scope: !3730)
!3749 = !DILocation(line: 477, column: 17, scope: !3730)
!3750 = !DILocation(line: 477, column: 26, scope: !3736)
!3751 = !DILocation(line: 477, column: 26, scope: !3738)
!3752 = !DILocation(line: 477, column: 26, scope: !3730)
!3753 = !DILocation(line: 478, column: 2, scope: !3730)
!3754 = !DILocation(line: 478, column: 17, scope: !3730)
!3755 = !DILocation(line: 480, column: 7, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 480, column: 6)
!3757 = !DILocation(line: 480, column: 14, scope: !3756)
!3758 = !DILocation(line: 480, column: 29, scope: !3756)
!3759 = !DILocation(line: 480, column: 37, scope: !3756)
!3760 = !DILocation(line: 480, column: 17, scope: !3756)
!3761 = !DILocation(line: 480, column: 6, scope: !3730)
!3762 = !DILocation(line: 481, column: 3, scope: !3756)
!3763 = !DILocation(line: 483, column: 2, scope: !3741)
!3764 = !DILocation(line: 483, column: 2, scope: !3742)
!3765 = !DILocation(line: 483, column: 2, scope: !3745)
!3766 = !DILocation(line: 484, column: 15, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !3, line: 484, column: 7)
!3768 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 483, column: 55)
!3769 = !DILocation(line: 484, column: 40, scope: !3767)
!3770 = !DILocation(line: 484, column: 47, scope: !3767)
!3771 = !DILocation(line: 484, column: 26, scope: !3767)
!3772 = !DILocation(line: 484, column: 8, scope: !3767)
!3773 = !DILocation(line: 484, column: 7, scope: !3768)
!3774 = !DILocation(line: 485, column: 17, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 484, column: 55)
!3776 = !DILocation(line: 485, column: 24, scope: !3775)
!3777 = !DILocation(line: 485, column: 4, scope: !3775)
!3778 = !DILocation(line: 486, column: 12, scope: !3775)
!3779 = !DILocation(line: 486, column: 19, scope: !3775)
!3780 = !DILocation(line: 486, column: 4, scope: !3775)
!3781 = !DILocation(line: 488, column: 2, scope: !3768)
!3782 = !DILocation(line: 483, column: 2, scope: !3744)
!3783 = distinct !{!3783, !3764, !3784, !1992, !1993}
!3784 = !DILocation(line: 488, column: 2, scope: !3742)
!3785 = !DILocation(line: 489, column: 2, scope: !3730)
!3786 = !DILocation(line: 490, column: 1, scope: !3730)
!3787 = distinct !DISubprogram(name: "software_node_get_reference_args", scope: !3, file: !3, line: 493, type: !1698, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3788)
!3788 = !{!3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3798, !3800, !3808, !3809, !3810, !3811, !3812, !3813}
!3789 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3787, file: !3, line: 493, type: !818)
!3790 = !DILocalVariable(name: "propname", arg: 2, scope: !3787, file: !3, line: 494, type: !132)
!3791 = !DILocalVariable(name: "nargs_prop", arg: 3, scope: !3787, file: !3, line: 494, type: !132)
!3792 = !DILocalVariable(name: "nargs", arg: 4, scope: !3787, file: !3, line: 495, type: !7)
!3793 = !DILocalVariable(name: "index", arg: 5, scope: !3787, file: !3, line: 495, type: !7)
!3794 = !DILocalVariable(name: "args", arg: 6, scope: !3787, file: !3, line: 496, type: !1700)
!3795 = !DILocalVariable(name: "swnode", scope: !3787, file: !3, line: 498, type: !125)
!3796 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3797, file: !3, line: 498, type: !818)
!3797 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 498, column: 26)
!3798 = !DILocalVariable(name: "__mptr", scope: !3799, file: !3, line: 498, type: !124)
!3799 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 498, column: 26)
!3800 = !DILocalVariable(name: "ref_array", scope: !3787, file: !3, line: 499, type: !3801)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3803)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "software_node_ref_args", file: !79, line: 316, size: 640, elements: !3804)
!3804 = !{!3805, !3806, !3807}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3803, file: !79, line: 317, baseType: !1737, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3803, file: !79, line: 318, baseType: !7, size: 32, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3803, file: !79, line: 319, baseType: !1706, size: 512, offset: 128)
!3808 = !DILocalVariable(name: "ref", scope: !3787, file: !3, line: 500, type: !3801)
!3809 = !DILocalVariable(name: "prop", scope: !3787, file: !3, line: 501, type: !1744)
!3810 = !DILocalVariable(name: "refnode", scope: !3787, file: !3, line: 502, type: !800)
!3811 = !DILocalVariable(name: "nargs_prop_val", scope: !3787, file: !3, line: 503, type: !1219)
!3812 = !DILocalVariable(name: "error", scope: !3787, file: !3, line: 504, type: !46)
!3813 = !DILocalVariable(name: "i", scope: !3787, file: !3, line: 505, type: !46)
!3814 = !DILocation(line: 493, column: 62, scope: !3787)
!3815 = !DILocation(line: 494, column: 18, scope: !3787)
!3816 = !DILocation(line: 494, column: 40, scope: !3787)
!3817 = !DILocation(line: 495, column: 19, scope: !3787)
!3818 = !DILocation(line: 495, column: 39, scope: !3787)
!3819 = !DILocation(line: 496, column: 36, scope: !3787)
!3820 = !DILocation(line: 498, column: 2, scope: !3787)
!3821 = !DILocation(line: 498, column: 17, scope: !3787)
!3822 = !DILocation(line: 498, column: 26, scope: !3797)
!3823 = !DILocation(line: 498, column: 26, scope: !3799)
!3824 = !DILocation(line: 498, column: 26, scope: !3787)
!3825 = !DILocation(line: 499, column: 2, scope: !3787)
!3826 = !DILocation(line: 499, column: 39, scope: !3787)
!3827 = !DILocation(line: 500, column: 2, scope: !3787)
!3828 = !DILocation(line: 500, column: 39, scope: !3787)
!3829 = !DILocation(line: 501, column: 2, scope: !3787)
!3830 = !DILocation(line: 501, column: 31, scope: !3787)
!3831 = !DILocation(line: 502, column: 2, scope: !3787)
!3832 = !DILocation(line: 502, column: 24, scope: !3787)
!3833 = !DILocation(line: 503, column: 2, scope: !3787)
!3834 = !DILocation(line: 503, column: 6, scope: !3787)
!3835 = !DILocation(line: 504, column: 2, scope: !3787)
!3836 = !DILocation(line: 504, column: 6, scope: !3787)
!3837 = !DILocation(line: 505, column: 2, scope: !3787)
!3838 = !DILocation(line: 505, column: 6, scope: !3787)
!3839 = !DILocation(line: 507, column: 28, scope: !3787)
!3840 = !DILocation(line: 507, column: 36, scope: !3787)
!3841 = !DILocation(line: 507, column: 42, scope: !3787)
!3842 = !DILocation(line: 507, column: 54, scope: !3787)
!3843 = !DILocation(line: 507, column: 9, scope: !3787)
!3844 = !DILocation(line: 507, column: 7, scope: !3787)
!3845 = !DILocation(line: 508, column: 7, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 508, column: 6)
!3847 = !DILocation(line: 508, column: 6, scope: !3787)
!3848 = !DILocation(line: 509, column: 3, scope: !3846)
!3849 = !DILocation(line: 511, column: 6, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 511, column: 6)
!3851 = !DILocation(line: 511, column: 12, scope: !3850)
!3852 = !DILocation(line: 511, column: 17, scope: !3850)
!3853 = !DILocation(line: 511, column: 6, scope: !3787)
!3854 = !DILocation(line: 512, column: 3, scope: !3850)
!3855 = !DILocation(line: 518, column: 6, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 518, column: 6)
!3857 = !DILocation(line: 518, column: 12, scope: !3856)
!3858 = !DILocation(line: 518, column: 6, scope: !3787)
!3859 = !DILocation(line: 519, column: 3, scope: !3856)
!3860 = !DILocation(line: 521, column: 6, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 521, column: 6)
!3862 = !DILocation(line: 521, column: 12, scope: !3861)
!3863 = !DILocation(line: 521, column: 30, scope: !3861)
!3864 = !DILocation(line: 521, column: 36, scope: !3861)
!3865 = !DILocation(line: 521, column: 27, scope: !3861)
!3866 = !DILocation(line: 521, column: 6, scope: !3787)
!3867 = !DILocation(line: 522, column: 3, scope: !3861)
!3868 = !DILocation(line: 524, column: 14, scope: !3787)
!3869 = !DILocation(line: 524, column: 20, scope: !3787)
!3870 = !DILocation(line: 524, column: 12, scope: !3787)
!3871 = !DILocation(line: 525, column: 9, scope: !3787)
!3872 = !DILocation(line: 525, column: 19, scope: !3787)
!3873 = !DILocation(line: 525, column: 6, scope: !3787)
!3874 = !DILocation(line: 527, column: 33, scope: !3787)
!3875 = !DILocation(line: 527, column: 38, scope: !3787)
!3876 = !DILocation(line: 527, column: 12, scope: !3787)
!3877 = !DILocation(line: 527, column: 10, scope: !3787)
!3878 = !DILocation(line: 528, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 528, column: 6)
!3880 = !DILocation(line: 528, column: 6, scope: !3787)
!3881 = !DILocation(line: 529, column: 3, scope: !3879)
!3882 = !DILocation(line: 531, column: 6, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 531, column: 6)
!3884 = !DILocation(line: 531, column: 6, scope: !3787)
!3885 = !DILocation(line: 532, column: 41, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 531, column: 18)
!3887 = !DILocation(line: 532, column: 46, scope: !3886)
!3888 = !DILocation(line: 532, column: 52, scope: !3886)
!3889 = !DILocation(line: 533, column: 13, scope: !3886)
!3890 = !DILocation(line: 532, column: 11, scope: !3886)
!3891 = !DILocation(line: 532, column: 9, scope: !3886)
!3892 = !DILocation(line: 535, column: 7, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 535, column: 7)
!3894 = !DILocation(line: 535, column: 7, scope: !3886)
!3895 = !DILocation(line: 536, column: 11, scope: !3893)
!3896 = !DILocation(line: 536, column: 4, scope: !3893)
!3897 = !DILocation(line: 538, column: 11, scope: !3886)
!3898 = !DILocation(line: 538, column: 9, scope: !3886)
!3899 = !DILocation(line: 539, column: 2, scope: !3886)
!3900 = !DILocation(line: 541, column: 6, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 541, column: 6)
!3902 = !DILocation(line: 541, column: 12, scope: !3901)
!3903 = !DILocation(line: 541, column: 6, scope: !3787)
!3904 = !DILocation(line: 542, column: 3, scope: !3901)
!3905 = !DILocation(line: 544, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 544, column: 6)
!3907 = !DILocation(line: 544, column: 6, scope: !3787)
!3908 = !DILocation(line: 545, column: 3, scope: !3906)
!3909 = !DILocation(line: 547, column: 35, scope: !3787)
!3910 = !DILocation(line: 547, column: 17, scope: !3787)
!3911 = !DILocation(line: 547, column: 2, scope: !3787)
!3912 = !DILocation(line: 547, column: 8, scope: !3787)
!3913 = !DILocation(line: 547, column: 15, scope: !3787)
!3914 = !DILocation(line: 548, column: 16, scope: !3787)
!3915 = !DILocation(line: 548, column: 2, scope: !3787)
!3916 = !DILocation(line: 548, column: 8, scope: !3787)
!3917 = !DILocation(line: 548, column: 14, scope: !3787)
!3918 = !DILocation(line: 550, column: 9, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 550, column: 2)
!3920 = !DILocation(line: 550, column: 7, scope: !3919)
!3921 = !DILocation(line: 550, column: 14, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 550, column: 2)
!3923 = !DILocation(line: 550, column: 18, scope: !3922)
!3924 = !DILocation(line: 550, column: 16, scope: !3922)
!3925 = !DILocation(line: 550, column: 2, scope: !3919)
!3926 = !DILocation(line: 551, column: 19, scope: !3922)
!3927 = !DILocation(line: 551, column: 24, scope: !3922)
!3928 = !DILocation(line: 551, column: 29, scope: !3922)
!3929 = !DILocation(line: 551, column: 3, scope: !3922)
!3930 = !DILocation(line: 551, column: 9, scope: !3922)
!3931 = !DILocation(line: 551, column: 14, scope: !3922)
!3932 = !DILocation(line: 551, column: 17, scope: !3922)
!3933 = !DILocation(line: 550, column: 26, scope: !3922)
!3934 = !DILocation(line: 550, column: 2, scope: !3922)
!3935 = distinct !{!3935, !3925, !3936, !1992, !1993}
!3936 = !DILocation(line: 551, column: 30, scope: !3919)
!3937 = !DILocation(line: 553, column: 2, scope: !3787)
!3938 = !DILocation(line: 554, column: 1, scope: !3787)
!3939 = distinct !DISubprogram(name: "software_node_graph_get_next_endpoint", scope: !3, file: !3, line: 577, type: !1690, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3940)
!3940 = !{!3941, !3942, !3943, !3944, !3946, !3948, !3949}
!3941 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3939, file: !3, line: 577, type: !818)
!3942 = !DILocalVariable(name: "endpoint", arg: 2, scope: !3939, file: !3, line: 578, type: !800)
!3943 = !DILocalVariable(name: "swnode", scope: !3939, file: !3, line: 580, type: !125)
!3944 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3945, file: !3, line: 580, type: !818)
!3945 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 580, column: 26)
!3946 = !DILocalVariable(name: "__mptr", scope: !3947, file: !3, line: 580, type: !124)
!3947 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 580, column: 26)
!3948 = !DILocalVariable(name: "parent", scope: !3939, file: !3, line: 581, type: !800)
!3949 = !DILocalVariable(name: "port", scope: !3939, file: !3, line: 582, type: !800)
!3950 = !DILocation(line: 577, column: 67, scope: !3939)
!3951 = !DILocation(line: 578, column: 33, scope: !3939)
!3952 = !DILocation(line: 580, column: 2, scope: !3939)
!3953 = !DILocation(line: 580, column: 17, scope: !3939)
!3954 = !DILocation(line: 580, column: 26, scope: !3945)
!3955 = !DILocation(line: 580, column: 26, scope: !3947)
!3956 = !DILocation(line: 580, column: 26, scope: !3939)
!3957 = !DILocation(line: 581, column: 2, scope: !3939)
!3958 = !DILocation(line: 581, column: 24, scope: !3939)
!3959 = !DILocation(line: 582, column: 2, scope: !3939)
!3960 = !DILocation(line: 582, column: 24, scope: !3939)
!3961 = !DILocation(line: 584, column: 7, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 584, column: 6)
!3963 = !DILocation(line: 584, column: 6, scope: !3939)
!3964 = !DILocation(line: 585, column: 3, scope: !3962)
!3965 = !DILocation(line: 587, column: 6, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 587, column: 6)
!3967 = !DILocation(line: 587, column: 6, scope: !3939)
!3968 = !DILocation(line: 588, column: 35, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 587, column: 16)
!3970 = !DILocation(line: 588, column: 10, scope: !3969)
!3971 = !DILocation(line: 588, column: 8, scope: !3969)
!3972 = !DILocation(line: 589, column: 37, scope: !3969)
!3973 = !DILocation(line: 589, column: 12, scope: !3969)
!3974 = !DILocation(line: 589, column: 10, scope: !3969)
!3975 = !DILocation(line: 590, column: 2, scope: !3969)
!3976 = !DILocation(line: 591, column: 47, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 590, column: 9)
!3978 = !DILocation(line: 591, column: 12, scope: !3977)
!3979 = !DILocation(line: 591, column: 10, scope: !3977)
!3980 = !DILocation(line: 592, column: 8, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 592, column: 7)
!3982 = !DILocation(line: 592, column: 7, scope: !3977)
!3983 = !DILocation(line: 593, column: 32, scope: !3981)
!3984 = !DILocation(line: 593, column: 40, scope: !3981)
!3985 = !DILocation(line: 593, column: 13, scope: !3981)
!3986 = !DILocation(line: 593, column: 11, scope: !3981)
!3987 = !DILocation(line: 593, column: 4, scope: !3981)
!3988 = !DILocation(line: 595, column: 38, scope: !3977)
!3989 = !DILocation(line: 595, column: 10, scope: !3977)
!3990 = !DILocation(line: 595, column: 8, scope: !3977)
!3991 = !DILocation(line: 598, column: 2, scope: !3939)
!3992 = !DILocation(line: 598, column: 9, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !3, line: 598, column: 2)
!3994 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 598, column: 2)
!3995 = !DILocation(line: 598, column: 2, scope: !3994)
!3996 = !DILocation(line: 599, column: 43, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 598, column: 65)
!3998 = !DILocation(line: 599, column: 49, scope: !3997)
!3999 = !DILocation(line: 599, column: 14, scope: !3997)
!4000 = !DILocation(line: 599, column: 12, scope: !3997)
!4001 = !DILocation(line: 600, column: 7, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 600, column: 7)
!4003 = !DILocation(line: 600, column: 7, scope: !3997)
!4004 = !DILocation(line: 601, column: 22, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 600, column: 17)
!4006 = !DILocation(line: 601, column: 4, scope: !4005)
!4007 = !DILocation(line: 602, column: 4, scope: !4005)
!4008 = !DILocation(line: 604, column: 2, scope: !3997)
!4009 = !DILocation(line: 598, column: 50, scope: !3993)
!4010 = !DILocation(line: 598, column: 58, scope: !3993)
!4011 = !DILocation(line: 598, column: 22, scope: !3993)
!4012 = !DILocation(line: 598, column: 20, scope: !3993)
!4013 = !DILocation(line: 598, column: 2, scope: !3993)
!4014 = distinct !{!4014, !3995, !4015, !1992, !1993}
!4015 = !DILocation(line: 604, column: 2, scope: !3994)
!4016 = !DILocation(line: 606, column: 20, scope: !3939)
!4017 = !DILocation(line: 606, column: 2, scope: !3939)
!4018 = !DILocation(line: 608, column: 9, scope: !3939)
!4019 = !DILocation(line: 608, column: 2, scope: !3939)
!4020 = !DILocation(line: 609, column: 1, scope: !3939)
!4021 = distinct !DISubprogram(name: "software_node_graph_get_remote_endpoint", scope: !3, file: !3, line: 612, type: !1686, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4022)
!4022 = !{!4023, !4024, !4025, !4027, !4029, !4030}
!4023 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4021, file: !3, line: 612, type: !818)
!4024 = !DILocalVariable(name: "swnode", scope: !4021, file: !3, line: 614, type: !125)
!4025 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4026, file: !3, line: 614, type: !818)
!4026 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 614, column: 26)
!4027 = !DILocalVariable(name: "__mptr", scope: !4028, file: !3, line: 614, type: !124)
!4028 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 614, column: 26)
!4029 = !DILocalVariable(name: "ref", scope: !4021, file: !3, line: 615, type: !3801)
!4030 = !DILocalVariable(name: "prop", scope: !4021, file: !3, line: 616, type: !1744)
!4031 = !DILocation(line: 612, column: 69, scope: !4021)
!4032 = !DILocation(line: 614, column: 2, scope: !4021)
!4033 = !DILocation(line: 614, column: 17, scope: !4021)
!4034 = !DILocation(line: 614, column: 26, scope: !4026)
!4035 = !DILocation(line: 614, column: 26, scope: !4028)
!4036 = !DILocation(line: 614, column: 26, scope: !4021)
!4037 = !DILocation(line: 615, column: 2, scope: !4021)
!4038 = !DILocation(line: 615, column: 39, scope: !4021)
!4039 = !DILocation(line: 616, column: 2, scope: !4021)
!4040 = !DILocation(line: 616, column: 31, scope: !4021)
!4041 = !DILocation(line: 618, column: 7, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 618, column: 6)
!4043 = !DILocation(line: 618, column: 6, scope: !4021)
!4044 = !DILocation(line: 619, column: 3, scope: !4042)
!4045 = !DILocation(line: 621, column: 28, scope: !4021)
!4046 = !DILocation(line: 621, column: 36, scope: !4021)
!4047 = !DILocation(line: 621, column: 42, scope: !4021)
!4048 = !DILocation(line: 621, column: 9, scope: !4021)
!4049 = !DILocation(line: 621, column: 7, scope: !4021)
!4050 = !DILocation(line: 622, column: 7, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 622, column: 6)
!4052 = !DILocation(line: 622, column: 12, scope: !4051)
!4053 = !DILocation(line: 622, column: 15, scope: !4051)
!4054 = !DILocation(line: 622, column: 21, scope: !4051)
!4055 = !DILocation(line: 622, column: 26, scope: !4051)
!4056 = !DILocation(line: 622, column: 42, scope: !4051)
!4057 = !DILocation(line: 622, column: 45, scope: !4051)
!4058 = !DILocation(line: 622, column: 51, scope: !4051)
!4059 = !DILocation(line: 622, column: 6, scope: !4021)
!4060 = !DILocation(line: 623, column: 3, scope: !4051)
!4061 = !DILocation(line: 625, column: 8, scope: !4021)
!4062 = !DILocation(line: 625, column: 14, scope: !4021)
!4063 = !DILocation(line: 625, column: 6, scope: !4021)
!4064 = !DILocation(line: 627, column: 48, scope: !4021)
!4065 = !DILocation(line: 627, column: 55, scope: !4021)
!4066 = !DILocation(line: 627, column: 27, scope: !4021)
!4067 = !DILocation(line: 627, column: 9, scope: !4021)
!4068 = !DILocation(line: 627, column: 2, scope: !4021)
!4069 = !DILocation(line: 628, column: 1, scope: !4021)
!4070 = distinct !DISubprogram(name: "software_node_graph_get_port_parent", scope: !3, file: !3, line: 631, type: !808, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4071)
!4071 = !{!4072, !4073, !4074, !4076}
!4072 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4070, file: !3, line: 631, type: !800)
!4073 = !DILocalVariable(name: "swnode", scope: !4070, file: !3, line: 633, type: !125)
!4074 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4075, file: !3, line: 633, type: !800)
!4075 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 633, column: 26)
!4076 = !DILocalVariable(name: "__mptr", scope: !4077, file: !3, line: 633, type: !124)
!4077 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 633, column: 26)
!4078 = !DILocation(line: 631, column: 59, scope: !4070)
!4079 = !DILocation(line: 633, column: 2, scope: !4070)
!4080 = !DILocation(line: 633, column: 17, scope: !4070)
!4081 = !DILocation(line: 633, column: 26, scope: !4075)
!4082 = !DILocation(line: 633, column: 26, scope: !4077)
!4083 = !DILocation(line: 633, column: 26, scope: !4070)
!4084 = !DILocation(line: 635, column: 11, scope: !4070)
!4085 = !DILocation(line: 635, column: 19, scope: !4070)
!4086 = !DILocation(line: 635, column: 9, scope: !4070)
!4087 = !DILocation(line: 636, column: 6, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 636, column: 6)
!4089 = !DILocation(line: 636, column: 13, scope: !4088)
!4090 = !DILocation(line: 636, column: 24, scope: !4088)
!4091 = !DILocation(line: 636, column: 32, scope: !4088)
!4092 = !DILocation(line: 636, column: 38, scope: !4088)
!4093 = !DILocation(line: 636, column: 17, scope: !4088)
!4094 = !DILocation(line: 636, column: 6, scope: !4070)
!4095 = !DILocation(line: 637, column: 12, scope: !4088)
!4096 = !DILocation(line: 637, column: 20, scope: !4088)
!4097 = !DILocation(line: 637, column: 10, scope: !4088)
!4098 = !DILocation(line: 637, column: 3, scope: !4088)
!4099 = !DILocation(line: 639, column: 9, scope: !4070)
!4100 = !DILocation(line: 639, column: 37, scope: !4070)
!4101 = !DILocation(line: 639, column: 45, scope: !4070)
!4102 = !DILocation(line: 639, column: 18, scope: !4070)
!4103 = !DILocation(line: 640, column: 1, scope: !4070)
!4104 = !DILocation(line: 639, column: 2, scope: !4070)
!4105 = distinct !DISubprogram(name: "software_node_graph_parse_endpoint", scope: !3, file: !3, line: 643, type: !1712, scopeLine: 645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4106)
!4106 = !{!4107, !4108, !4109, !4110, !4112, !4114, !4115}
!4107 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4105, file: !3, line: 643, type: !818)
!4108 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4105, file: !3, line: 644, type: !1714)
!4109 = !DILocalVariable(name: "swnode", scope: !4105, file: !3, line: 646, type: !125)
!4110 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4111, file: !3, line: 646, type: !818)
!4111 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 646, column: 26)
!4112 = !DILocalVariable(name: "__mptr", scope: !4113, file: !3, line: 646, type: !124)
!4113 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 646, column: 26)
!4114 = !DILocalVariable(name: "parent_name", scope: !4105, file: !3, line: 647, type: !132)
!4115 = !DILocalVariable(name: "ret", scope: !4105, file: !3, line: 648, type: !46)
!4116 = !DILocation(line: 643, column: 64, scope: !4105)
!4117 = !DILocation(line: 644, column: 32, scope: !4105)
!4118 = !DILocation(line: 646, column: 2, scope: !4105)
!4119 = !DILocation(line: 646, column: 17, scope: !4105)
!4120 = !DILocation(line: 646, column: 26, scope: !4111)
!4121 = !DILocation(line: 646, column: 26, scope: !4113)
!4122 = !DILocation(line: 646, column: 26, scope: !4105)
!4123 = !DILocation(line: 647, column: 2, scope: !4105)
!4124 = !DILocation(line: 647, column: 14, scope: !4105)
!4125 = !DILocation(line: 647, column: 28, scope: !4105)
!4126 = !DILocation(line: 647, column: 36, scope: !4105)
!4127 = !DILocation(line: 647, column: 44, scope: !4105)
!4128 = !DILocation(line: 647, column: 50, scope: !4105)
!4129 = !DILocation(line: 648, column: 2, scope: !4105)
!4130 = !DILocation(line: 648, column: 6, scope: !4105)
!4131 = !DILocation(line: 650, column: 32, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 650, column: 6)
!4133 = !DILocation(line: 650, column: 25, scope: !4132)
!4134 = !DILocation(line: 650, column: 22, scope: !4132)
!4135 = !DILocation(line: 650, column: 45, scope: !4132)
!4136 = !DILocation(line: 651, column: 14, scope: !4132)
!4137 = !DILocation(line: 651, column: 6, scope: !4132)
!4138 = !DILocation(line: 650, column: 6, scope: !4105)
!4139 = !DILocation(line: 652, column: 3, scope: !4132)
!4140 = !DILocation(line: 655, column: 18, scope: !4105)
!4141 = !DILocation(line: 655, column: 30, scope: !4105)
!4142 = !DILocation(line: 655, column: 54, scope: !4105)
!4143 = !DILocation(line: 655, column: 64, scope: !4105)
!4144 = !DILocation(line: 655, column: 8, scope: !4105)
!4145 = !DILocation(line: 655, column: 6, scope: !4105)
!4146 = !DILocation(line: 656, column: 6, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4105, file: !3, line: 656, column: 6)
!4148 = !DILocation(line: 656, column: 6, scope: !4105)
!4149 = !DILocation(line: 657, column: 10, scope: !4147)
!4150 = !DILocation(line: 657, column: 3, scope: !4147)
!4151 = !DILocation(line: 659, column: 17, scope: !4105)
!4152 = !DILocation(line: 659, column: 25, scope: !4105)
!4153 = !DILocation(line: 659, column: 2, scope: !4105)
!4154 = !DILocation(line: 659, column: 12, scope: !4105)
!4155 = !DILocation(line: 659, column: 15, scope: !4105)
!4156 = !DILocation(line: 660, column: 27, scope: !4105)
!4157 = !DILocation(line: 660, column: 2, scope: !4105)
!4158 = !DILocation(line: 660, column: 12, scope: !4105)
!4159 = !DILocation(line: 660, column: 25, scope: !4105)
!4160 = !DILocation(line: 662, column: 2, scope: !4105)
!4161 = !DILocation(line: 663, column: 1, scope: !4105)
!4162 = distinct !DISubprogram(name: "property_entry_get", scope: !3, file: !3, line: 110, type: !4163, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!1744, !1744, !132}
!4165 = !{!4166, !4167}
!4166 = !DILocalVariable(name: "prop", arg: 1, scope: !4162, file: !3, line: 110, type: !1744)
!4167 = !DILocalVariable(name: "name", arg: 2, scope: !4162, file: !3, line: 110, type: !132)
!4168 = !DILocation(line: 110, column: 49, scope: !4162)
!4169 = !DILocation(line: 110, column: 67, scope: !4162)
!4170 = !DILocation(line: 112, column: 7, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 112, column: 6)
!4172 = !DILocation(line: 112, column: 6, scope: !4162)
!4173 = !DILocation(line: 113, column: 3, scope: !4171)
!4174 = !DILocation(line: 115, column: 2, scope: !4162)
!4175 = !DILocation(line: 115, column: 9, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !3, line: 115, column: 2)
!4177 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 115, column: 2)
!4178 = !DILocation(line: 115, column: 15, scope: !4176)
!4179 = !DILocation(line: 115, column: 2, scope: !4177)
!4180 = !DILocation(line: 116, column: 15, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 116, column: 7)
!4182 = !DILocation(line: 116, column: 21, scope: !4181)
!4183 = !DILocation(line: 116, column: 27, scope: !4181)
!4184 = !DILocation(line: 116, column: 8, scope: !4181)
!4185 = !DILocation(line: 116, column: 7, scope: !4176)
!4186 = !DILocation(line: 117, column: 11, scope: !4181)
!4187 = !DILocation(line: 117, column: 4, scope: !4181)
!4188 = !DILocation(line: 116, column: 31, scope: !4181)
!4189 = !DILocation(line: 115, column: 25, scope: !4176)
!4190 = !DILocation(line: 115, column: 2, scope: !4176)
!4191 = distinct !{!4191, !4179, !4192, !1992, !1993}
!4192 = !DILocation(line: 117, column: 11, scope: !4177)
!4193 = !DILocation(line: 119, column: 2, scope: !4162)
!4194 = !DILocation(line: 120, column: 1, scope: !4162)
!4195 = distinct !DISubprogram(name: "property_entry_read_int_array", scope: !3, file: !3, line: 160, type: !4196, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4198)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!46, !1744, !132, !7, !124, !267}
!4198 = !{!4199, !4200, !4201, !4202, !4203, !4204, !4205}
!4199 = !DILocalVariable(name: "props", arg: 1, scope: !4195, file: !3, line: 160, type: !1744)
!4200 = !DILocalVariable(name: "name", arg: 2, scope: !4195, file: !3, line: 161, type: !132)
!4201 = !DILocalVariable(name: "elem_size", arg: 3, scope: !4195, file: !3, line: 162, type: !7)
!4202 = !DILocalVariable(name: "val", arg: 4, scope: !4195, file: !3, line: 162, type: !124)
!4203 = !DILocalVariable(name: "nval", arg: 5, scope: !4195, file: !3, line: 163, type: !267)
!4204 = !DILocalVariable(name: "pointer", scope: !4195, file: !3, line: 165, type: !498)
!4205 = !DILocalVariable(name: "length", scope: !4195, file: !3, line: 166, type: !267)
!4206 = !DILocation(line: 160, column: 71, scope: !4195)
!4207 = !DILocation(line: 161, column: 19, scope: !4195)
!4208 = !DILocation(line: 162, column: 20, scope: !4195)
!4209 = !DILocation(line: 162, column: 37, scope: !4195)
!4210 = !DILocation(line: 163, column: 14, scope: !4195)
!4211 = !DILocation(line: 165, column: 2, scope: !4195)
!4212 = !DILocation(line: 165, column: 14, scope: !4195)
!4213 = !DILocation(line: 166, column: 2, scope: !4195)
!4214 = !DILocation(line: 166, column: 9, scope: !4195)
!4215 = !DILocation(line: 168, column: 7, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 168, column: 6)
!4217 = !DILocation(line: 168, column: 6, scope: !4195)
!4218 = !DILocation(line: 169, column: 45, scope: !4216)
!4219 = !DILocation(line: 169, column: 52, scope: !4216)
!4220 = !DILocation(line: 170, column: 10, scope: !4216)
!4221 = !DILocation(line: 169, column: 10, scope: !4216)
!4222 = !DILocation(line: 169, column: 3, scope: !4216)
!4223 = !DILocation(line: 172, column: 21, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 172, column: 6)
!4225 = !DILocation(line: 172, column: 7, scope: !4224)
!4226 = !DILocation(line: 172, column: 32, scope: !4224)
!4227 = !DILocation(line: 172, column: 35, scope: !4224)
!4228 = !DILocation(line: 172, column: 45, scope: !4224)
!4229 = !DILocation(line: 172, column: 6, scope: !4195)
!4230 = !DILocation(line: 173, column: 3, scope: !4224)
!4231 = !DILocation(line: 175, column: 11, scope: !4195)
!4232 = !DILocation(line: 175, column: 18, scope: !4195)
!4233 = !DILocation(line: 175, column: 16, scope: !4195)
!4234 = !DILocation(line: 175, column: 9, scope: !4195)
!4235 = !DILocation(line: 177, column: 32, scope: !4195)
!4236 = !DILocation(line: 177, column: 39, scope: !4195)
!4237 = !DILocation(line: 177, column: 45, scope: !4195)
!4238 = !DILocation(line: 177, column: 12, scope: !4195)
!4239 = !DILocation(line: 177, column: 10, scope: !4195)
!4240 = !DILocation(line: 178, column: 13, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 178, column: 6)
!4242 = !DILocation(line: 178, column: 6, scope: !4241)
!4243 = !DILocation(line: 178, column: 6, scope: !4195)
!4244 = !DILocation(line: 179, column: 18, scope: !4241)
!4245 = !DILocation(line: 179, column: 10, scope: !4241)
!4246 = !DILocation(line: 179, column: 3, scope: !4241)
!4247 = !DILocation(line: 181, column: 9, scope: !4195)
!4248 = !DILocation(line: 181, column: 14, scope: !4195)
!4249 = !DILocation(line: 181, column: 23, scope: !4195)
!4250 = !DILocation(line: 181, column: 2, scope: !4195)
!4251 = !DILocation(line: 182, column: 2, scope: !4195)
!4252 = !DILocation(line: 183, column: 1, scope: !4195)
!4253 = distinct !DISubprogram(name: "property_entry_count_elems_of_size", scope: !3, file: !3, line: 148, type: !4254, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4256)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!46, !1744, !132, !267}
!4256 = !{!4257, !4258, !4259, !4260}
!4257 = !DILocalVariable(name: "props", arg: 1, scope: !4253, file: !3, line: 148, type: !1744)
!4258 = !DILocalVariable(name: "propname", arg: 2, scope: !4253, file: !3, line: 149, type: !132)
!4259 = !DILocalVariable(name: "length", arg: 3, scope: !4253, file: !3, line: 149, type: !267)
!4260 = !DILocalVariable(name: "prop", scope: !4253, file: !3, line: 151, type: !1744)
!4261 = !DILocation(line: 148, column: 65, scope: !4253)
!4262 = !DILocation(line: 149, column: 20, scope: !4253)
!4263 = !DILocation(line: 149, column: 37, scope: !4253)
!4264 = !DILocation(line: 151, column: 2, scope: !4253)
!4265 = !DILocation(line: 151, column: 31, scope: !4253)
!4266 = !DILocation(line: 153, column: 28, scope: !4253)
!4267 = !DILocation(line: 153, column: 35, scope: !4253)
!4268 = !DILocation(line: 153, column: 9, scope: !4253)
!4269 = !DILocation(line: 153, column: 7, scope: !4253)
!4270 = !DILocation(line: 154, column: 7, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 154, column: 6)
!4272 = !DILocation(line: 154, column: 6, scope: !4253)
!4273 = !DILocation(line: 155, column: 3, scope: !4271)
!4274 = !DILocation(line: 157, column: 9, scope: !4253)
!4275 = !DILocation(line: 157, column: 15, scope: !4253)
!4276 = !DILocation(line: 157, column: 24, scope: !4253)
!4277 = !DILocation(line: 157, column: 22, scope: !4253)
!4278 = !DILocation(line: 157, column: 2, scope: !4253)
!4279 = !DILocation(line: 158, column: 1, scope: !4253)
!4280 = distinct !DISubprogram(name: "is_power_of_2", scope: !4281, file: !4281, line: 45, type: !4282, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4284)
!4281 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!577, !270}
!4284 = !{!4285}
!4285 = !DILocalVariable(name: "n", arg: 1, scope: !4280, file: !4281, line: 45, type: !270)
!4286 = !DILocation(line: 45, column: 34, scope: !4280)
!4287 = !DILocation(line: 47, column: 10, scope: !4280)
!4288 = !DILocation(line: 47, column: 12, scope: !4280)
!4289 = !DILocation(line: 47, column: 17, scope: !4280)
!4290 = !DILocation(line: 47, column: 22, scope: !4280)
!4291 = !DILocation(line: 47, column: 27, scope: !4280)
!4292 = !DILocation(line: 47, column: 29, scope: !4280)
!4293 = !DILocation(line: 47, column: 24, scope: !4280)
!4294 = !DILocation(line: 47, column: 35, scope: !4280)
!4295 = !DILocation(line: 0, scope: !4280)
!4296 = !DILocation(line: 47, column: 2, scope: !4280)
!4297 = distinct !DISubprogram(name: "property_entry_find", scope: !3, file: !3, line: 130, type: !4298, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4300)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!498, !1744, !132, !267}
!4300 = !{!4301, !4302, !4303, !4304, !4305}
!4301 = !DILocalVariable(name: "props", arg: 1, scope: !4297, file: !3, line: 130, type: !1744)
!4302 = !DILocalVariable(name: "propname", arg: 2, scope: !4297, file: !3, line: 131, type: !132)
!4303 = !DILocalVariable(name: "length", arg: 3, scope: !4297, file: !3, line: 131, type: !267)
!4304 = !DILocalVariable(name: "prop", scope: !4297, file: !3, line: 133, type: !1744)
!4305 = !DILocalVariable(name: "pointer", scope: !4297, file: !3, line: 134, type: !498)
!4306 = !DILocation(line: 130, column: 69, scope: !4297)
!4307 = !DILocation(line: 131, column: 24, scope: !4297)
!4308 = !DILocation(line: 131, column: 41, scope: !4297)
!4309 = !DILocation(line: 133, column: 2, scope: !4297)
!4310 = !DILocation(line: 133, column: 31, scope: !4297)
!4311 = !DILocation(line: 134, column: 2, scope: !4297)
!4312 = !DILocation(line: 134, column: 14, scope: !4297)
!4313 = !DILocation(line: 136, column: 28, scope: !4297)
!4314 = !DILocation(line: 136, column: 35, scope: !4297)
!4315 = !DILocation(line: 136, column: 9, scope: !4297)
!4316 = !DILocation(line: 136, column: 7, scope: !4297)
!4317 = !DILocation(line: 137, column: 7, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 137, column: 6)
!4319 = !DILocation(line: 137, column: 6, scope: !4297)
!4320 = !DILocation(line: 138, column: 10, scope: !4318)
!4321 = !DILocation(line: 138, column: 3, scope: !4318)
!4322 = !DILocation(line: 139, column: 33, scope: !4297)
!4323 = !DILocation(line: 139, column: 12, scope: !4297)
!4324 = !DILocation(line: 139, column: 10, scope: !4297)
!4325 = !DILocation(line: 140, column: 7, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 140, column: 6)
!4327 = !DILocation(line: 140, column: 6, scope: !4297)
!4328 = !DILocation(line: 141, column: 10, scope: !4326)
!4329 = !DILocation(line: 141, column: 3, scope: !4326)
!4330 = !DILocation(line: 142, column: 6, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 142, column: 6)
!4332 = !DILocation(line: 142, column: 15, scope: !4331)
!4333 = !DILocation(line: 142, column: 21, scope: !4331)
!4334 = !DILocation(line: 142, column: 13, scope: !4331)
!4335 = !DILocation(line: 142, column: 6, scope: !4297)
!4336 = !DILocation(line: 143, column: 10, scope: !4331)
!4337 = !DILocation(line: 143, column: 3, scope: !4331)
!4338 = !DILocation(line: 144, column: 9, scope: !4297)
!4339 = !DILocation(line: 144, column: 2, scope: !4297)
!4340 = !DILocation(line: 145, column: 1, scope: !4297)
!4341 = distinct !DISubprogram(name: "property_entry_read_string_array", scope: !3, file: !3, line: 185, type: !4342, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4344)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!46, !1744, !132, !1286, !267}
!4344 = !{!4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4354}
!4345 = !DILocalVariable(name: "props", arg: 1, scope: !4341, file: !3, line: 185, type: !1744)
!4346 = !DILocalVariable(name: "propname", arg: 2, scope: !4341, file: !3, line: 186, type: !132)
!4347 = !DILocalVariable(name: "strings", arg: 3, scope: !4341, file: !3, line: 187, type: !1286)
!4348 = !DILocalVariable(name: "nval", arg: 4, scope: !4341, file: !3, line: 187, type: !267)
!4349 = !DILocalVariable(name: "pointer", scope: !4341, file: !3, line: 189, type: !498)
!4350 = !DILocalVariable(name: "length", scope: !4341, file: !3, line: 190, type: !267)
!4351 = !DILocalVariable(name: "array_len", scope: !4341, file: !3, line: 191, type: !46)
!4352 = !DILocalVariable(name: "__UNIQUE_ID___x208", scope: !4353, file: !3, line: 203, type: !267)
!4353 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 203, column: 14)
!4354 = !DILocalVariable(name: "__UNIQUE_ID___y209", scope: !4353, file: !3, line: 203, type: !267)
!4355 = !DILocation(line: 185, column: 74, scope: !4341)
!4356 = !DILocation(line: 186, column: 22, scope: !4341)
!4357 = !DILocation(line: 187, column: 23, scope: !4341)
!4358 = !DILocation(line: 187, column: 39, scope: !4341)
!4359 = !DILocation(line: 189, column: 2, scope: !4341)
!4360 = !DILocation(line: 189, column: 14, scope: !4341)
!4361 = !DILocation(line: 190, column: 2, scope: !4341)
!4362 = !DILocation(line: 190, column: 9, scope: !4341)
!4363 = !DILocation(line: 191, column: 2, scope: !4341)
!4364 = !DILocation(line: 191, column: 6, scope: !4341)
!4365 = !DILocation(line: 194, column: 49, scope: !4341)
!4366 = !DILocation(line: 194, column: 56, scope: !4341)
!4367 = !DILocation(line: 194, column: 14, scope: !4341)
!4368 = !DILocation(line: 194, column: 12, scope: !4341)
!4369 = !DILocation(line: 196, column: 6, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 196, column: 6)
!4371 = !DILocation(line: 196, column: 16, scope: !4370)
!4372 = !DILocation(line: 196, column: 6, scope: !4341)
!4373 = !DILocation(line: 197, column: 10, scope: !4370)
!4374 = !DILocation(line: 197, column: 3, scope: !4370)
!4375 = !DILocation(line: 200, column: 7, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 200, column: 6)
!4377 = !DILocation(line: 200, column: 6, scope: !4341)
!4378 = !DILocation(line: 201, column: 10, scope: !4376)
!4379 = !DILocation(line: 201, column: 3, scope: !4376)
!4380 = !DILocation(line: 203, column: 14, scope: !4353)
!4381 = !DILocation(line: 203, column: 14, scope: !4341)
!4382 = !DILocation(line: 203, column: 12, scope: !4341)
!4383 = !DILocation(line: 204, column: 11, scope: !4341)
!4384 = !DILocation(line: 204, column: 21, scope: !4341)
!4385 = !DILocation(line: 204, column: 9, scope: !4341)
!4386 = !DILocation(line: 206, column: 32, scope: !4341)
!4387 = !DILocation(line: 206, column: 39, scope: !4341)
!4388 = !DILocation(line: 206, column: 49, scope: !4341)
!4389 = !DILocation(line: 206, column: 12, scope: !4341)
!4390 = !DILocation(line: 206, column: 10, scope: !4341)
!4391 = !DILocation(line: 207, column: 13, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 207, column: 6)
!4393 = !DILocation(line: 207, column: 6, scope: !4392)
!4394 = !DILocation(line: 207, column: 6, scope: !4341)
!4395 = !DILocation(line: 208, column: 18, scope: !4392)
!4396 = !DILocation(line: 208, column: 10, scope: !4392)
!4397 = !DILocation(line: 208, column: 3, scope: !4392)
!4398 = !DILocation(line: 210, column: 9, scope: !4341)
!4399 = !DILocation(line: 210, column: 18, scope: !4341)
!4400 = !DILocation(line: 210, column: 27, scope: !4341)
!4401 = !DILocation(line: 210, column: 2, scope: !4341)
!4402 = !DILocation(line: 212, column: 9, scope: !4341)
!4403 = !DILocation(line: 212, column: 2, scope: !4341)
!4404 = !DILocation(line: 213, column: 1, scope: !4341)
!4405 = distinct !DISubprogram(name: "kobject_name", scope: !108, file: !108, line: 87, type: !208, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4406)
!4406 = !{!4407}
!4407 = !DILocalVariable(name: "kobj", arg: 1, scope: !4405, file: !108, line: 87, type: !203)
!4408 = !DILocation(line: 87, column: 62, scope: !4405)
!4409 = !DILocation(line: 89, column: 9, scope: !4405)
!4410 = !DILocation(line: 89, column: 15, scope: !4405)
!4411 = !DILocation(line: 89, column: 2, scope: !4405)
!4412 = !DISubprogram(name: "fwnode_get_parent", scope: !79, file: !79, line: 139, type: !1686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4413 = !DISubprogram(name: "fwnode_get_next_parent", scope: !79, file: !79, line: 140, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4414 = !DISubprogram(name: "fwnode_get_name_prefix", scope: !79, file: !79, line: 137, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4415 = !DISubprogram(name: "fwnode_handle_put", scope: !79, file: !79, line: 182, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4416 = !DISubprogram(name: "fwnode_handle_get", scope: !79, file: !79, line: 181, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4417 = distinct !DISubprogram(name: "list_empty", scope: !4418, file: !4418, line: 371, type: !4419, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4423)
!4418 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!46, !4421}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!4423 = !{!4424}
!4424 = !DILocalVariable(name: "head", arg: 1, scope: !4417, file: !4418, line: 371, type: !4421)
!4425 = !DILocation(line: 371, column: 54, scope: !4417)
!4426 = !DILocation(line: 373, column: 9, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4417, file: !4418, line: 373, column: 9)
!4428 = !DILocation(line: 373, column: 9, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4427, file: !4418, line: 373, column: 9)
!4430 = !DILocation(line: 373, column: 34, scope: !4417)
!4431 = !DILocation(line: 373, column: 31, scope: !4417)
!4432 = !DILocation(line: 373, column: 2, scope: !4417)
!4433 = distinct !DISubprogram(name: "list_is_last", scope: !4418, file: !4418, line: 352, type: !4434, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!46, !4421, !4421}
!4436 = !{!4437, !4438}
!4437 = !DILocalVariable(name: "list", arg: 1, scope: !4433, file: !4418, line: 352, type: !4421)
!4438 = !DILocalVariable(name: "head", arg: 2, scope: !4433, file: !4418, line: 352, type: !4421)
!4439 = !DILocation(line: 352, column: 56, scope: !4433)
!4440 = !DILocation(line: 352, column: 86, scope: !4433)
!4441 = !DILocation(line: 354, column: 9, scope: !4433)
!4442 = !DILocation(line: 354, column: 15, scope: !4433)
!4443 = !DILocation(line: 354, column: 23, scope: !4433)
!4444 = !DILocation(line: 354, column: 20, scope: !4433)
!4445 = !DILocation(line: 354, column: 2, scope: !4433)
!4446 = distinct !DISubprogram(name: "swnode_graph_find_next_port", scope: !3, file: !3, line: 557, type: !1690, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4447)
!4447 = !{!4448, !4449, !4450, !4451, !4455}
!4448 = !DILocalVariable(name: "parent", arg: 1, scope: !4446, file: !3, line: 557, type: !818)
!4449 = !DILocalVariable(name: "port", arg: 2, scope: !4446, file: !3, line: 558, type: !800)
!4450 = !DILocalVariable(name: "old", scope: !4446, file: !3, line: 560, type: !800)
!4451 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4452, file: !3, line: 567, type: !800)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 567, column: 16)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 567, column: 7)
!4454 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 562, column: 61)
!4455 = !DILocalVariable(name: "__mptr", scope: !4456, file: !3, line: 567, type: !124)
!4456 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 567, column: 16)
!4457 = !DILocation(line: 557, column: 57, scope: !4446)
!4458 = !DILocation(line: 558, column: 30, scope: !4446)
!4459 = !DILocation(line: 560, column: 2, scope: !4446)
!4460 = !DILocation(line: 560, column: 24, scope: !4446)
!4461 = !DILocation(line: 560, column: 30, scope: !4446)
!4462 = !DILocation(line: 562, column: 2, scope: !4446)
!4463 = !DILocation(line: 562, column: 46, scope: !4446)
!4464 = !DILocation(line: 562, column: 54, scope: !4446)
!4465 = !DILocation(line: 562, column: 17, scope: !4446)
!4466 = !DILocation(line: 562, column: 15, scope: !4446)
!4467 = !DILocation(line: 567, column: 16, scope: !4452)
!4468 = !DILocation(line: 567, column: 16, scope: !4456)
!4469 = !DILocation(line: 567, column: 16, scope: !4453)
!4470 = !DILocation(line: 567, column: 33, scope: !4453)
!4471 = !DILocation(line: 567, column: 39, scope: !4453)
!4472 = !DILocation(line: 567, column: 8, scope: !4453)
!4473 = !DILocation(line: 567, column: 7, scope: !4454)
!4474 = !DILocation(line: 569, column: 11, scope: !4453)
!4475 = !DILocation(line: 569, column: 4, scope: !4453)
!4476 = !DILocation(line: 570, column: 9, scope: !4454)
!4477 = !DILocation(line: 570, column: 7, scope: !4454)
!4478 = distinct !{!4478, !4462, !4479, !1992, !1993}
!4479 = !DILocation(line: 571, column: 2, scope: !4446)
!4480 = !DILocation(line: 573, column: 2, scope: !4446)
!4481 = !DILocation(line: 574, column: 1, scope: !4446)
!4482 = !DISubprogram(name: "strncmp", scope: !2392, file: !2392, line: 91, type: !4483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!46, !132, !132, !268}
!4485 = !DISubprogram(name: "strlen", scope: !2392, file: !2392, line: 128, type: !4486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!270, !132}
!4488 = distinct !DISubprogram(name: "kstrtou32", scope: !4489, file: !4489, line: 84, type: !4490, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4493)
!4489 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!46, !132, !7, !4492}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!4493 = !{!4494, !4495, !4496}
!4494 = !DILocalVariable(name: "s", arg: 1, scope: !4488, file: !4489, line: 84, type: !132)
!4495 = !DILocalVariable(name: "base", arg: 2, scope: !4488, file: !4489, line: 84, type: !7)
!4496 = !DILocalVariable(name: "res", arg: 3, scope: !4488, file: !4489, line: 84, type: !4492)
!4497 = !DILocation(line: 84, column: 54, scope: !4488)
!4498 = !DILocation(line: 84, column: 70, scope: !4488)
!4499 = !DILocation(line: 84, column: 81, scope: !4488)
!4500 = !DILocation(line: 86, column: 20, scope: !4488)
!4501 = !DILocation(line: 86, column: 23, scope: !4488)
!4502 = !DILocation(line: 86, column: 29, scope: !4488)
!4503 = !DILocation(line: 86, column: 9, scope: !4488)
!4504 = !DILocation(line: 86, column: 2, scope: !4488)
!4505 = !DISubprogram(name: "kstrtouint", scope: !4489, file: !4489, line: 71, type: !4506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!46, !132, !7, !1058}
!4508 = !DISubprogram(name: "_raw_spin_lock", scope: !4509, file: !4509, line: 22, type: !4510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4509 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !4512}
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!4513 = !DISubprogram(name: "_raw_spin_unlock", scope: !4509, file: !4509, line: 39, type: !4510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4514 = distinct !DISubprogram(name: "kzalloc", scope: !98, file: !98, line: 719, type: !3168, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4515)
!4515 = !{!4516, !4517}
!4516 = !DILocalVariable(name: "size", arg: 1, scope: !4514, file: !98, line: 719, type: !267)
!4517 = !DILocalVariable(name: "flags", arg: 2, scope: !4514, file: !98, line: 719, type: !1781)
!4518 = !DILocation(line: 719, column: 52, scope: !4514)
!4519 = !DILocation(line: 719, column: 64, scope: !4514)
!4520 = !DILocation(line: 721, column: 17, scope: !4514)
!4521 = !DILocation(line: 721, column: 23, scope: !4514)
!4522 = !DILocation(line: 721, column: 29, scope: !4514)
!4523 = !DILocation(line: 721, column: 9, scope: !4514)
!4524 = !DILocation(line: 721, column: 2, scope: !4514)
!4525 = !DISubprogram(name: "ida_alloc_range", scope: !1774, file: !1774, line: 257, type: !4526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!46, !3123, !7, !7, !1781}
!4528 = distinct !DISubprogram(name: "fwnode_init", scope: !797, file: !797, line: 192, type: !4529, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4531)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{null, !800, !802}
!4531 = !{!4532, !4533}
!4532 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4528, file: !797, line: 192, type: !800)
!4533 = !DILocalVariable(name: "ops", arg: 2, scope: !4528, file: !797, line: 193, type: !802)
!4534 = !DILocation(line: 192, column: 54, scope: !4528)
!4535 = !DILocation(line: 193, column: 43, scope: !4528)
!4536 = !DILocation(line: 195, column: 16, scope: !4528)
!4537 = !DILocation(line: 195, column: 2, scope: !4528)
!4538 = !DILocation(line: 195, column: 10, scope: !4528)
!4539 = !DILocation(line: 195, column: 14, scope: !4528)
!4540 = !DILocation(line: 196, column: 18, scope: !4528)
!4541 = !DILocation(line: 196, column: 26, scope: !4528)
!4542 = !DILocation(line: 196, column: 2, scope: !4528)
!4543 = !DILocation(line: 197, column: 18, scope: !4528)
!4544 = !DILocation(line: 197, column: 26, scope: !4528)
!4545 = !DILocation(line: 197, column: 2, scope: !4528)
!4546 = !DILocation(line: 198, column: 1, scope: !4528)
!4547 = distinct !DISubprogram(name: "ida_init", scope: !1774, file: !1774, line: 314, type: !3121, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4548)
!4548 = !{!4549}
!4549 = !DILocalVariable(name: "ida", arg: 1, scope: !4547, file: !1774, line: 314, type: !3123)
!4550 = !DILocation(line: 314, column: 41, scope: !4547)
!4551 = !DILocation(line: 316, column: 17, scope: !4547)
!4552 = !DILocation(line: 316, column: 22, scope: !4547)
!4553 = !DILocation(line: 316, column: 2, scope: !4547)
!4554 = !DILocation(line: 317, column: 1, scope: !4547)
!4555 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4418, file: !4418, line: 35, type: !4556, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4558)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{null, !140}
!4558 = !{!4559}
!4559 = !DILocalVariable(name: "list", arg: 1, scope: !4555, file: !4418, line: 35, type: !140)
!4560 = !DILocation(line: 35, column: 53, scope: !4555)
!4561 = !DILocation(line: 37, column: 2, scope: !4555)
!4562 = !DILocation(line: 37, column: 2, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4555, file: !4418, line: 37, column: 2)
!4564 = !DILocation(line: 37, column: 2, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4563, file: !4418, line: 37, column: 2)
!4566 = !DILocation(line: 37, column: 2, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4563, file: !4418, line: 37, column: 2)
!4568 = !DILocation(line: 38, column: 2, scope: !4555)
!4569 = !DILocation(line: 38, column: 2, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4555, file: !4418, line: 38, column: 2)
!4571 = !DILocation(line: 38, column: 2, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4570, file: !4418, line: 38, column: 2)
!4573 = !DILocation(line: 38, column: 2, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4570, file: !4418, line: 38, column: 2)
!4575 = !DILocation(line: 39, column: 1, scope: !4555)
!4576 = !DISubprogram(name: "kobject_init_and_add", scope: !108, file: !108, line: 96, type: !4577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!46, !143, !234, !143, !132, null}
!4579 = distinct !DISubprogram(name: "list_add_tail", scope: !4418, file: !4418, line: 181, type: !4580, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4582)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{null, !140, !140}
!4582 = !{!4583, !4584}
!4583 = !DILocalVariable(name: "new", arg: 1, scope: !4579, file: !4418, line: 181, type: !140)
!4584 = !DILocalVariable(name: "head", arg: 2, scope: !4579, file: !4418, line: 181, type: !140)
!4585 = !DILocation(line: 181, column: 52, scope: !4579)
!4586 = !DILocation(line: 181, column: 75, scope: !4579)
!4587 = !DILocation(line: 183, column: 13, scope: !4579)
!4588 = !DILocation(line: 183, column: 18, scope: !4579)
!4589 = !DILocation(line: 183, column: 24, scope: !4579)
!4590 = !DILocation(line: 183, column: 30, scope: !4579)
!4591 = !DILocation(line: 183, column: 2, scope: !4579)
!4592 = !DILocation(line: 184, column: 1, scope: !4579)
!4593 = !DISubprogram(name: "kobject_uevent", scope: !108, file: !108, line: 214, type: !4594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!46, !143, !107}
!4596 = distinct !DISubprogram(name: "xa_init_flags", scope: !119, file: !119, line: 378, type: !4597, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4600)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{null, !4599, !1781}
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!4600 = !{!4601, !4602}
!4601 = !DILocalVariable(name: "xa", arg: 1, scope: !4596, file: !119, line: 378, type: !4599)
!4602 = !DILocalVariable(name: "flags", arg: 2, scope: !4596, file: !119, line: 378, type: !1781)
!4603 = !DILocation(line: 378, column: 49, scope: !4596)
!4604 = !DILocation(line: 378, column: 59, scope: !4596)
!4605 = !DILocation(line: 380, column: 2, scope: !4596)
!4606 = !DILocation(line: 380, column: 2, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4596, file: !119, line: 380, column: 2)
!4608 = !DILocation(line: 381, column: 17, scope: !4596)
!4609 = !DILocation(line: 381, column: 2, scope: !4596)
!4610 = !DILocation(line: 381, column: 6, scope: !4596)
!4611 = !DILocation(line: 381, column: 15, scope: !4596)
!4612 = !DILocation(line: 382, column: 2, scope: !4596)
!4613 = !DILocation(line: 382, column: 6, scope: !4596)
!4614 = !DILocation(line: 382, column: 14, scope: !4596)
!4615 = !DILocation(line: 383, column: 1, scope: !4596)
!4616 = distinct !DISubprogram(name: "spinlock_check", scope: !2382, file: !2382, line: 324, type: !4617, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4619)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!4512, !2385}
!4619 = !{!4620}
!4620 = !DILocalVariable(name: "lock", arg: 1, scope: !4616, file: !2382, line: 324, type: !2385)
!4621 = !DILocation(line: 324, column: 67, scope: !4616)
!4622 = !DILocation(line: 326, column: 10, scope: !4616)
!4623 = !DILocation(line: 326, column: 16, scope: !4616)
!4624 = !DILocation(line: 326, column: 2, scope: !4616)
!4625 = distinct !DISubprogram(name: "software_node_release", scope: !3, file: !3, line: 748, type: !240, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4626)
!4626 = !{!4627, !4628, !4629}
!4627 = !DILocalVariable(name: "kobj", arg: 1, scope: !4625, file: !3, line: 748, type: !143)
!4628 = !DILocalVariable(name: "swnode", scope: !4625, file: !3, line: 750, type: !125)
!4629 = !DILocalVariable(name: "__mptr", scope: !4630, file: !3, line: 750, type: !124)
!4630 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 750, column: 26)
!4631 = !DILocation(line: 748, column: 51, scope: !4625)
!4632 = !DILocation(line: 750, column: 2, scope: !4625)
!4633 = !DILocation(line: 750, column: 17, scope: !4625)
!4634 = !DILocation(line: 750, column: 26, scope: !4630)
!4635 = !DILocation(line: 750, column: 26, scope: !4625)
!4636 = !DILocation(line: 752, column: 6, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 752, column: 6)
!4638 = !DILocation(line: 752, column: 14, scope: !4637)
!4639 = !DILocation(line: 752, column: 6, scope: !4625)
!4640 = !DILocation(line: 753, column: 3, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 752, column: 22)
!4642 = !DILocation(line: 754, column: 13, scope: !4641)
!4643 = !DILocation(line: 754, column: 21, scope: !4641)
!4644 = !DILocation(line: 754, column: 3, scope: !4641)
!4645 = !DILocation(line: 755, column: 2, scope: !4641)
!4646 = !DILocation(line: 756, column: 3, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 755, column: 9)
!4648 = !DILocation(line: 759, column: 6, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 759, column: 6)
!4650 = !DILocation(line: 759, column: 14, scope: !4649)
!4651 = !DILocation(line: 759, column: 6, scope: !4625)
!4652 = !DILocation(line: 760, column: 22, scope: !4649)
!4653 = !DILocation(line: 760, column: 30, scope: !4649)
!4654 = !DILocation(line: 760, column: 3, scope: !4649)
!4655 = !DILocation(line: 762, column: 15, scope: !4625)
!4656 = !DILocation(line: 762, column: 23, scope: !4625)
!4657 = !DILocation(line: 762, column: 2, scope: !4625)
!4658 = !DILocation(line: 763, column: 8, scope: !4625)
!4659 = !DILocation(line: 763, column: 2, scope: !4625)
!4660 = !DILocation(line: 764, column: 1, scope: !4625)
!4661 = !DISubprogram(name: "ida_free", scope: !1774, file: !1774, line: 258, type: !4662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !3123, !7}
!4664 = distinct !DISubprogram(name: "list_del", scope: !4418, file: !4418, line: 227, type: !4556, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4665)
!4665 = !{!4666}
!4666 = !DILocalVariable(name: "entry", arg: 1, scope: !4664, file: !4418, line: 227, type: !140)
!4667 = !DILocation(line: 227, column: 47, scope: !4664)
!4668 = !DILocation(line: 229, column: 19, scope: !4664)
!4669 = !DILocation(line: 229, column: 2, scope: !4664)
!4670 = !DILocation(line: 230, column: 2, scope: !4664)
!4671 = !DILocation(line: 230, column: 9, scope: !4664)
!4672 = !DILocation(line: 230, column: 14, scope: !4664)
!4673 = !DILocation(line: 231, column: 2, scope: !4664)
!4674 = !DILocation(line: 231, column: 9, scope: !4664)
!4675 = !DILocation(line: 231, column: 14, scope: !4664)
!4676 = !DILocation(line: 232, column: 1, scope: !4664)
!4677 = distinct !DISubprogram(name: "__list_del_entry", scope: !4418, file: !4418, line: 213, type: !4556, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4678)
!4678 = !{!4679}
!4679 = !DILocalVariable(name: "entry", arg: 1, scope: !4677, file: !4418, line: 213, type: !140)
!4680 = !DILocation(line: 213, column: 55, scope: !4677)
!4681 = !DILocation(line: 215, column: 30, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4677, file: !4418, line: 215, column: 6)
!4683 = !DILocation(line: 215, column: 7, scope: !4682)
!4684 = !DILocation(line: 215, column: 6, scope: !4677)
!4685 = !DILocation(line: 216, column: 3, scope: !4682)
!4686 = !DILocation(line: 218, column: 13, scope: !4677)
!4687 = !DILocation(line: 218, column: 20, scope: !4677)
!4688 = !DILocation(line: 218, column: 26, scope: !4677)
!4689 = !DILocation(line: 218, column: 33, scope: !4677)
!4690 = !DILocation(line: 218, column: 2, scope: !4677)
!4691 = !DILocation(line: 219, column: 1, scope: !4677)
!4692 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4418, file: !4418, line: 134, type: !4693, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4695)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{!577, !140}
!4695 = !{!4696}
!4696 = !DILocalVariable(name: "entry", arg: 1, scope: !4692, file: !4418, line: 134, type: !140)
!4697 = !DILocation(line: 134, column: 61, scope: !4692)
!4698 = !DILocation(line: 136, column: 2, scope: !4692)
!4699 = distinct !DISubprogram(name: "__list_del", scope: !4418, file: !4418, line: 193, type: !4580, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4700)
!4700 = !{!4701, !4702}
!4701 = !DILocalVariable(name: "prev", arg: 1, scope: !4699, file: !4418, line: 193, type: !140)
!4702 = !DILocalVariable(name: "next", arg: 2, scope: !4699, file: !4418, line: 193, type: !140)
!4703 = !DILocation(line: 193, column: 50, scope: !4699)
!4704 = !DILocation(line: 193, column: 75, scope: !4699)
!4705 = !DILocation(line: 195, column: 15, scope: !4699)
!4706 = !DILocation(line: 195, column: 2, scope: !4699)
!4707 = !DILocation(line: 195, column: 8, scope: !4699)
!4708 = !DILocation(line: 195, column: 13, scope: !4699)
!4709 = !DILocation(line: 196, column: 2, scope: !4699)
!4710 = !DILocation(line: 196, column: 2, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4699, file: !4418, line: 196, column: 2)
!4712 = !DILocation(line: 196, column: 2, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4711, file: !4418, line: 196, column: 2)
!4714 = !DILocation(line: 196, column: 2, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4711, file: !4418, line: 196, column: 2)
!4716 = !DILocation(line: 197, column: 1, scope: !4699)
!4717 = distinct !DISubprogram(name: "__list_add", scope: !4418, file: !4418, line: 146, type: !4718, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4720)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{null, !140, !140, !140}
!4720 = !{!4721, !4722, !4723}
!4721 = !DILocalVariable(name: "new", arg: 1, scope: !4717, file: !4418, line: 146, type: !140)
!4722 = !DILocalVariable(name: "prev", arg: 2, scope: !4717, file: !4418, line: 147, type: !140)
!4723 = !DILocalVariable(name: "next", arg: 3, scope: !4717, file: !4418, line: 148, type: !140)
!4724 = !DILocation(line: 146, column: 49, scope: !4717)
!4725 = !DILocation(line: 147, column: 28, scope: !4717)
!4726 = !DILocation(line: 148, column: 28, scope: !4717)
!4727 = !DILocation(line: 150, column: 24, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4717, file: !4418, line: 150, column: 6)
!4729 = !DILocation(line: 150, column: 29, scope: !4728)
!4730 = !DILocation(line: 150, column: 35, scope: !4728)
!4731 = !DILocation(line: 150, column: 7, scope: !4728)
!4732 = !DILocation(line: 150, column: 6, scope: !4717)
!4733 = !DILocation(line: 151, column: 3, scope: !4728)
!4734 = !DILocation(line: 153, column: 15, scope: !4717)
!4735 = !DILocation(line: 153, column: 2, scope: !4717)
!4736 = !DILocation(line: 153, column: 8, scope: !4717)
!4737 = !DILocation(line: 153, column: 13, scope: !4717)
!4738 = !DILocation(line: 154, column: 14, scope: !4717)
!4739 = !DILocation(line: 154, column: 2, scope: !4717)
!4740 = !DILocation(line: 154, column: 7, scope: !4717)
!4741 = !DILocation(line: 154, column: 12, scope: !4717)
!4742 = !DILocation(line: 155, column: 14, scope: !4717)
!4743 = !DILocation(line: 155, column: 2, scope: !4717)
!4744 = !DILocation(line: 155, column: 7, scope: !4717)
!4745 = !DILocation(line: 155, column: 12, scope: !4717)
!4746 = !DILocation(line: 156, column: 2, scope: !4717)
!4747 = !DILocation(line: 156, column: 2, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4717, file: !4418, line: 156, column: 2)
!4749 = !DILocation(line: 156, column: 2, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4748, file: !4418, line: 156, column: 2)
!4751 = !DILocation(line: 156, column: 2, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4748, file: !4418, line: 156, column: 2)
!4753 = !DILocation(line: 157, column: 1, scope: !4717)
!4754 = distinct !DISubprogram(name: "__list_add_valid", scope: !4418, file: !4418, line: 128, type: !4755, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4757)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!577, !140, !140, !140}
!4757 = !{!4758, !4759, !4760}
!4758 = !DILocalVariable(name: "new", arg: 1, scope: !4754, file: !4418, line: 128, type: !140)
!4759 = !DILocalVariable(name: "prev", arg: 2, scope: !4754, file: !4418, line: 129, type: !140)
!4760 = !DILocalVariable(name: "next", arg: 3, scope: !4754, file: !4418, line: 130, type: !140)
!4761 = !DILocation(line: 128, column: 55, scope: !4754)
!4762 = !DILocation(line: 129, column: 23, scope: !4754)
!4763 = !DILocation(line: 130, column: 23, scope: !4754)
!4764 = !DILocation(line: 132, column: 2, scope: !4754)
!4765 = !DISubprogram(name: "__dev_fwnode", scope: !79, file: !79, line: 37, type: !4766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!800, !830}
!4768 = !DISubprogram(name: "kset_create_and_add", scope: !108, file: !108, line: 178, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!145, !132, !194, !143}
