; ModuleID = 'lib/kobject.c'
source_filename = "lib/kobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_get_path: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_get_path ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_set_name: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_set_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_init_and_add: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_init_and_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_rename: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_rename ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_move: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_move ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_del: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_del ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_get: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_get_unless_zero: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_get_unless_zero ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_put: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobject_create_and_add: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kobject_create_and_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobj_sysfs_ops: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kobj_sysfs_ops ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kset_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kset_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kset_unregister: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kset_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kset_find_obj: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kset_find_obj ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kset_create_and_add: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kset_create_and_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobj_ns_grab_current: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kobj_ns_grab_current ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kobj_ns_drop: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad kobj_ns_drop ; .previous"

%struct.sysfs_ops = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.2, ptr, i64, i16, i16, ptr, %struct.callback_head }
%struct.rb_node = type { i64, ptr, ptr }
%union.anon.2 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, ptr, i64 }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }

@__UNIQUE_ID___addressable_kobject_get_path191 = internal global ptr @kobject_get_path, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_kobject_set_name192 = internal global ptr @kobject_set_name, section ".discard.addressable", align 8, !dbg !739
@.str = private unnamed_addr constant [25 x i8] c"invalid kobject pointer!\00", align 1, !dbg !741
@.str.1 = private unnamed_addr constant [47 x i8] c"must have a ktype to be initialized properly!\0A\00", align 1, !dbg !746
@.str.2 = private unnamed_addr constant [93 x i8] c"\013kobject: kobject (%p): tried to init an initialized object, something is seriously wrong.\0A\00", align 1, !dbg !751
@.str.3 = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !756
@.str.4 = private unnamed_addr constant [29 x i8] c"\013kobject: kobject (%p): %s\0A\00", align 1, !dbg !759
@__UNIQUE_ID___addressable_kobject_init193 = internal global ptr @kobject_init, section ".discard.addressable", align 8, !dbg !764
@.str.5 = private unnamed_addr constant [99 x i8] c"\013kobject: kobject '%s' (%p): tried to add an uninitialized object, something is seriously wrong.\0A\00", align 1, !dbg !766
@__UNIQUE_ID___addressable_kobject_add194 = internal global ptr @kobject_add, section ".discard.addressable", align 8, !dbg !771
@__UNIQUE_ID___addressable_kobject_init_and_add195 = internal global ptr @kobject_init_and_add, section ".discard.addressable", align 8, !dbg !773
@.str.6 = private unnamed_addr constant [15 x i8] c"DEVPATH_OLD=%s\00", align 1, !dbg !775
@__UNIQUE_ID___addressable_kobject_rename196 = internal global ptr @kobject_rename, section ".discard.addressable", align 8, !dbg !780
@__UNIQUE_ID___addressable_kobject_move197 = internal global ptr @kobject_move, section ".discard.addressable", align 8, !dbg !782
@__UNIQUE_ID___addressable_kobject_del198 = internal global ptr @kobject_del, section ".discard.addressable", align 8, !dbg !784
@.str.7 = private unnamed_addr constant [78 x i8] c"\014kobject: '%s' (%p): is not initialized, yet kobject_get() is being called.\0A\00", align 1, !dbg !786
@.str.8 = private unnamed_addr constant [14 x i8] c"lib/kobject.c\00", align 1, !dbg !791
@__UNIQUE_ID___addressable_kobject_get199 = internal global ptr @kobject_get, section ".discard.addressable", align 8, !dbg !796
@__UNIQUE_ID___addressable_kobject_get_unless_zero200 = internal global ptr @kobject_get_unless_zero, section ".discard.addressable", align 8, !dbg !798
@.str.9 = private unnamed_addr constant [78 x i8] c"\014kobject: '%s' (%p): is not initialized, yet kobject_put() is being called.\0A\00", align 1, !dbg !800
@__UNIQUE_ID___addressable_kobject_put201 = internal global ptr @kobject_put, section ".discard.addressable", align 8, !dbg !802
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !804
@.str.11 = private unnamed_addr constant [38 x i8] c"\014kobject: %s: kobject_add error: %d\0A\00", align 1, !dbg !806
@__func__.kobject_create_and_add = private unnamed_addr constant [23 x i8] c"kobject_create_and_add\00", align 1, !dbg !811
@__UNIQUE_ID___addressable_kobject_create_and_add202 = internal global ptr @kobject_create_and_add, section ".discard.addressable", align 8, !dbg !816
@kobj_sysfs_ops = hidden constant %struct.sysfs_ops { ptr @kobj_attr_show, ptr @kobj_attr_store }, align 8, !dbg !818
@__UNIQUE_ID___addressable_kobj_sysfs_ops203 = internal global ptr @kobj_sysfs_ops, section ".discard.addressable", align 8, !dbg !820
@.str.12 = private unnamed_addr constant [58 x i8] c"\013kobject: must have a ktype to be initialized properly!\0A\00", align 1, !dbg !822
@__UNIQUE_ID___addressable_kset_register204 = internal global ptr @kset_register, section ".discard.addressable", align 8, !dbg !827
@__UNIQUE_ID___addressable_kset_unregister205 = internal global ptr @kset_unregister, section ".discard.addressable", align 8, !dbg !829
@__UNIQUE_ID___addressable_kset_find_obj206 = internal global ptr @kset_find_obj, section ".discard.addressable", align 8, !dbg !831
@__UNIQUE_ID___addressable_kset_create_and_add207 = internal global ptr @kset_create_and_add, section ".discard.addressable", align 8, !dbg !833
@kobj_ns_type_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !882
@kobj_ns_ops_tbl = internal global [2 x ptr] zeroinitializer, align 16, !dbg !839
@__UNIQUE_ID___addressable_kobj_ns_grab_current208 = internal global ptr @kobj_ns_grab_current, section ".discard.addressable", align 8, !dbg !835
@__UNIQUE_ID___addressable_kobj_ns_drop209 = internal global ptr @kobj_ns_drop, section ".discard.addressable", align 8, !dbg !837
@.str.13 = private unnamed_addr constant [39 x i8] c"\013kobject: can not set name properly!\0A\00", align 1, !dbg !844
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.14 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !849
@dynamic_kobj_ktype = internal constant %struct.kobj_type { ptr @dynamic_kobj_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !854
@.str.15 = private unnamed_addr constant [60 x i8] c"kobject: (%p): attempted to be registered with empty name!\0A\00", align 1, !dbg !856
@.str.16 = private unnamed_addr constant [114 x i8] c"\013kobject: %s failed for %s with -EEXIST, don't try to register things with the same name in the same directory.\0A\00", align 1, !dbg !861
@__func__.kobject_add_internal = private unnamed_addr constant [21 x i8] c"kobject_add_internal\00", align 1, !dbg !866
@.str.17 = private unnamed_addr constant [52 x i8] c"\013kobject: %s failed for %s (error: %d parent: %s)\0A\00", align 1, !dbg !869
@.str.18 = private unnamed_addr constant [7 x i8] c"'none'\00", align 1, !dbg !872
@.str.19 = private unnamed_addr constant [23 x i8] c"include/linux/kernfs.h\00", align 1, !dbg !877
@kset_ktype = internal constant %struct.kobj_type { ptr @kset_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr @kset_get_ownership }, align 8, !dbg !880
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID___addressable_kobject_get_path191, ptr @__UNIQUE_ID___addressable_kobject_set_name192, ptr @__UNIQUE_ID___addressable_kobject_init193, ptr @__UNIQUE_ID___addressable_kobject_add194, ptr @__UNIQUE_ID___addressable_kobject_init_and_add195, ptr @__UNIQUE_ID___addressable_kobject_rename196, ptr @__UNIQUE_ID___addressable_kobject_move197, ptr @__UNIQUE_ID___addressable_kobject_del198, ptr @__UNIQUE_ID___addressable_kobject_get199, ptr @__UNIQUE_ID___addressable_kobject_get_unless_zero200, ptr @__UNIQUE_ID___addressable_kobject_put201, ptr @__UNIQUE_ID___addressable_kobject_create_and_add202, ptr @__UNIQUE_ID___addressable_kobj_sysfs_ops203, ptr @__UNIQUE_ID___addressable_kset_register204, ptr @__UNIQUE_ID___addressable_kset_unregister205, ptr @__UNIQUE_ID___addressable_kset_find_obj206, ptr @__UNIQUE_ID___addressable_kset_create_and_add207, ptr @__UNIQUE_ID___addressable_kobj_ns_grab_current208, ptr @__UNIQUE_ID___addressable_kobj_ns_drop209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobject_namespace(ptr noundef %kobj) #0 align 16 !dbg !893 {
entry:
  %retval = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %ns_ops = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !895, metadata !DIExpression()), !dbg !897
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns_ops) #17, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %ns_ops, metadata !896, metadata !DIExpression()), !dbg !899
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !900
  %call = call ptr @kobj_ns_ops(ptr noundef %0) #18, !dbg !901
  store ptr %call, ptr %ns_ops, align 8, !dbg !899
  %1 = load ptr, ptr %ns_ops, align 8, !dbg !902
  %tobool = icmp ne ptr %1, null, !dbg !902
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !904

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %ns_ops, align 8, !dbg !905
  %type = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %2, i32 0, i32 0, !dbg !906
  %3 = load i32, ptr %type, align 8, !dbg !906
  %cmp = icmp eq i32 %3, 0, !dbg !907
  br i1 %cmp, label %if.then, label %if.end, !dbg !908

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !909

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !910
  %ktype = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 4, !dbg !911
  %5 = load ptr, ptr %ktype, align 8, !dbg !911
  %namespace = getelementptr inbounds %struct.kobj_type, ptr %5, i32 0, i32 4, !dbg !912
  %6 = load ptr, ptr %namespace, align 8, !dbg !912
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !913
  %call1 = call ptr %6(ptr noundef %7) #18, !dbg !910
  store ptr %call1, ptr %retval, align 8, !dbg !914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !914

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns_ops) #17, !dbg !915
  %8 = load ptr, ptr %retval, align 8, !dbg !915
  ret ptr %8, !dbg !915
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobj_ns_ops(ptr noundef %kobj) #0 align 16 !dbg !916 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !918, metadata !DIExpression()), !dbg !919
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !920
  %parent = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2, !dbg !921
  %1 = load ptr, ptr %parent, align 8, !dbg !921
  %call = call ptr @kobj_child_ns_ops(ptr noundef %1) #18, !dbg !922
  ret ptr %call, !dbg !923
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kobject_get_ownership(ptr noundef %kobj, ptr noundef %uid, ptr noundef %gid) #0 align 16 !dbg !924 {
entry:
  %kobj.addr = alloca ptr, align 8
  %uid.addr = alloca ptr, align 8
  %gid.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral1 = alloca %struct.kgid_t, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !926, metadata !DIExpression()), !dbg !929
  store ptr %uid, ptr %uid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !927, metadata !DIExpression()), !dbg !930
  store ptr %gid, ptr %gid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !928, metadata !DIExpression()), !dbg !931
  %0 = load ptr, ptr %uid.addr, align 8, !dbg !932
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !933
  store i32 0, ptr %val, align 4, !dbg !933
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !933
  %1 = load ptr, ptr %gid.addr, align 8, !dbg !934
  %val2 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral1, i32 0, i32 0, !dbg !935
  store i32 0, ptr %val2, align 4, !dbg !935
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %.compoundliteral1, i64 4, i1 false), !dbg !935
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !936
  %ktype = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 4, !dbg !938
  %3 = load ptr, ptr %ktype, align 8, !dbg !938
  %get_ownership = getelementptr inbounds %struct.kobj_type, ptr %3, i32 0, i32 5, !dbg !939
  %4 = load ptr, ptr %get_ownership, align 8, !dbg !939
  %tobool = icmp ne ptr %4, null, !dbg !936
  br i1 %tobool, label %if.then, label %if.end, !dbg !940

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !941
  %ktype3 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 4, !dbg !942
  %6 = load ptr, ptr %ktype3, align 8, !dbg !942
  %get_ownership4 = getelementptr inbounds %struct.kobj_type, ptr %6, i32 0, i32 5, !dbg !943
  %7 = load ptr, ptr %get_ownership4, align 8, !dbg !943
  %8 = load ptr, ptr %kobj.addr, align 8, !dbg !944
  %9 = load ptr, ptr %uid.addr, align 8, !dbg !945
  %10 = load ptr, ptr %gid.addr, align 8, !dbg !946
  call void %7(ptr noundef %8, ptr noundef %9, ptr noundef %10) #18, !dbg !941
  br label %if.end, !dbg !941

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !947
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobject_get_path(ptr noundef %kobj, i32 noundef %gfp_mask) #0 align 16 !dbg !948 {
entry:
  %retval = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %path = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !952, metadata !DIExpression()), !dbg !957
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !953, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #17, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %path, metadata !954, metadata !DIExpression()), !dbg !960
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #17, !dbg !961
  call void @llvm.dbg.declare(metadata ptr %len, metadata !955, metadata !DIExpression()), !dbg !962
  br label %retry, !dbg !961

retry:                                            ; preds = %if.then6, %entry
  call void @llvm.dbg.label(metadata !956), !dbg !963
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !964
  %call = call i32 @get_kobj_path_length(ptr noundef %0) #18, !dbg !965
  store i32 %call, ptr %len, align 4, !dbg !966
  %1 = load i32, ptr %len, align 4, !dbg !967
  %cmp = icmp eq i32 %1, 0, !dbg !969
  br i1 %cmp, label %if.then, label %if.end, !dbg !970

if.then:                                          ; preds = %retry
  store ptr null, ptr %retval, align 8, !dbg !971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !971

if.end:                                           ; preds = %retry
  %2 = load i32, ptr %len, align 4, !dbg !972
  %conv = sext i32 %2 to i64, !dbg !972
  %3 = load i32, ptr %gfp_mask.addr, align 4, !dbg !973
  %call1 = call noalias ptr @kzalloc(i64 noundef %conv, i32 noundef %3) #19, !dbg !974
  store ptr %call1, ptr %path, align 8, !dbg !975
  %4 = load ptr, ptr %path, align 8, !dbg !976
  %tobool = icmp ne ptr %4, null, !dbg !976
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !978

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !979

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !980
  %6 = load ptr, ptr %path, align 8, !dbg !982
  %7 = load i32, ptr %len, align 4, !dbg !983
  %call4 = call i32 @fill_kobj_path(ptr noundef %5, ptr noundef %6, i32 noundef %7) #18, !dbg !984
  %tobool5 = icmp ne i32 %call4, 0, !dbg !984
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !985

if.then6:                                         ; preds = %if.end3
  %8 = load ptr, ptr %path, align 8, !dbg !986
  call void @kfree(ptr noundef %8) #18, !dbg !988
  br label %retry, !dbg !989

if.end7:                                          ; preds = %if.end3
  %9 = load ptr, ptr %path, align 8, !dbg !990
  store ptr %9, ptr %retval, align 8, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !991

cleanup:                                          ; preds = %if.end7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #17, !dbg !992
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #17, !dbg !992
  %10 = load ptr, ptr %retval, align 8, !dbg !992
  ret ptr %10, !dbg !992
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_kobj_path_length(ptr noundef %kobj) #0 align 16 !dbg !993 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !995, metadata !DIExpression()), !dbg !998
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #17, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %length, metadata !996, metadata !DIExpression()), !dbg !1000
  store i32 1, ptr %length, align 4, !dbg !1000
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !997, metadata !DIExpression()), !dbg !1002
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1003
  store ptr %0, ptr %parent, align 8, !dbg !1002
  br label %do.body, !dbg !1004

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %parent, align 8, !dbg !1005
  %call = call ptr @kobject_name(ptr noundef %1) #18, !dbg !1008
  %cmp = icmp eq ptr %call, null, !dbg !1009
  br i1 %cmp, label %if.then, label %if.end, !dbg !1010

if.then:                                          ; preds = %do.body
  store i32 0, ptr %retval, align 4, !dbg !1011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1011

if.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %parent, align 8, !dbg !1012
  %call1 = call ptr @kobject_name(ptr noundef %2) #18, !dbg !1013
  %call2 = call i64 @strlen(ptr noundef %call1) #18, !dbg !1014
  %add = add i64 %call2, 1, !dbg !1015
  %3 = load i32, ptr %length, align 4, !dbg !1016
  %conv = sext i32 %3 to i64, !dbg !1016
  %add3 = add i64 %conv, %add, !dbg !1016
  %conv4 = trunc i64 %add3 to i32, !dbg !1016
  store i32 %conv4, ptr %length, align 4, !dbg !1016
  %4 = load ptr, ptr %parent, align 8, !dbg !1017
  %parent5 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 2, !dbg !1018
  %5 = load ptr, ptr %parent5, align 8, !dbg !1018
  store ptr %5, ptr %parent, align 8, !dbg !1019
  br label %do.cond, !dbg !1020

do.cond:                                          ; preds = %if.end
  %6 = load ptr, ptr %parent, align 8, !dbg !1021
  %tobool = icmp ne ptr %6, null, !dbg !1020
  br i1 %tobool, label %do.body, label %do.end, !dbg !1020, !llvm.loop !1022

do.end:                                           ; preds = %do.cond
  %7 = load i32, ptr %length, align 4, !dbg !1026
  store i32 %7, ptr %retval, align 4, !dbg !1027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1027

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !1028
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #17, !dbg !1028
  %8 = load i32, ptr %retval, align 4, !dbg !1028
  ret i32 %8, !dbg !1028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !1029 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1033, metadata !DIExpression()), !dbg !1035
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1034, metadata !DIExpression()), !dbg !1036
  %0 = load i64, ptr %size.addr, align 8, !dbg !1037
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1038
  %or = or i32 %1, 256, !dbg !1039
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !1040
  ret ptr %call, !dbg !1041
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fill_kobj_path(ptr noundef %kobj, ptr noundef %path, i32 noundef %length) #0 align 16 !dbg !1042 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %parent = alloca ptr, align 8
  %cur = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1046, metadata !DIExpression()), !dbg !1054
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !1047, metadata !DIExpression()), !dbg !1055
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1048, metadata !DIExpression()), !dbg !1056
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1049, metadata !DIExpression()), !dbg !1058
  %0 = load i32, ptr %length.addr, align 4, !dbg !1059
  %dec = add i32 %0, -1, !dbg !1059
  store i32 %dec, ptr %length.addr, align 4, !dbg !1059
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !1060
  store ptr %1, ptr %parent, align 8, !dbg !1061
  br label %for.cond, !dbg !1062

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %parent, align 8, !dbg !1063
  %tobool = icmp ne ptr %2, null, !dbg !1064
  br i1 %tobool, label %for.body, label %for.end, !dbg !1064

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur) #17, !dbg !1065
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !1050, metadata !DIExpression()), !dbg !1066
  %3 = load ptr, ptr %parent, align 8, !dbg !1067
  %call = call ptr @kobject_name(ptr noundef %3) #18, !dbg !1068
  %call1 = call i64 @strlen(ptr noundef %call) #18, !dbg !1069
  %conv = trunc i64 %call1 to i32, !dbg !1069
  store i32 %conv, ptr %cur, align 4, !dbg !1066
  %4 = load i32, ptr %cur, align 4, !dbg !1070
  %5 = load i32, ptr %length.addr, align 4, !dbg !1071
  %sub = sub i32 %5, %4, !dbg !1071
  store i32 %sub, ptr %length.addr, align 4, !dbg !1071
  %6 = load i32, ptr %length.addr, align 4, !dbg !1072
  %cmp = icmp sle i32 %6, 0, !dbg !1074
  br i1 %cmp, label %if.then, label %if.end, !dbg !1075

if.then:                                          ; preds = %for.body
  store i32 -22, ptr %retval, align 4, !dbg !1076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1076

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %path.addr, align 8, !dbg !1077
  %8 = load i32, ptr %length.addr, align 4, !dbg !1078
  %idx.ext = sext i32 %8 to i64, !dbg !1079
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.ext, !dbg !1079
  %9 = load ptr, ptr %parent, align 8, !dbg !1080
  %call3 = call ptr @kobject_name(ptr noundef %9) #18, !dbg !1081
  %10 = load i32, ptr %cur, align 4, !dbg !1082
  %conv4 = sext i32 %10 to i64, !dbg !1082
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %call3, i64 %conv4, i1 false), !dbg !1083
  %11 = load ptr, ptr %path.addr, align 8, !dbg !1084
  %12 = load i32, ptr %length.addr, align 4, !dbg !1085
  %dec5 = add i32 %12, -1, !dbg !1085
  store i32 %dec5, ptr %length.addr, align 4, !dbg !1085
  %idx.ext6 = sext i32 %dec5 to i64, !dbg !1086
  %add.ptr7 = getelementptr i8, ptr %11, i64 %idx.ext6, !dbg !1086
  store i8 47, ptr %add.ptr7, align 1, !dbg !1087
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1088
  br label %cleanup, !dbg !1088

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur) #17, !dbg !1088
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1089

for.inc:                                          ; preds = %cleanup.cont
  %13 = load ptr, ptr %parent, align 8, !dbg !1090
  %parent8 = getelementptr inbounds %struct.kobject, ptr %13, i32 0, i32 2, !dbg !1091
  %14 = load ptr, ptr %parent8, align 8, !dbg !1091
  store ptr %14, ptr %parent, align 8, !dbg !1092
  br label %for.cond, !dbg !1093, !llvm.loop !1094

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %tmp, align 4, !dbg !1096
  %15 = load i32, ptr %tmp, align 4, !dbg !1099
  store i32 0, ptr %retval, align 4, !dbg !1100
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !1100

cleanup9:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !1101
  %16 = load i32, ptr %retval, align 4, !dbg !1101
  ret i32 %16, !dbg !1101
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1102 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kobject_set_name_vargs(ptr noundef %kobj, ptr noundef %fmt, ptr noundef %vargs) #0 align 16 !dbg !1105 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %vargs.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1116, metadata !DIExpression()), !dbg !1123
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1117, metadata !DIExpression()), !dbg !1124
  store ptr %vargs, ptr %vargs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vargs.addr, metadata !1118, metadata !DIExpression()), !dbg !1125
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #17, !dbg !1126
  call void @llvm.dbg.declare(metadata ptr %s, metadata !1119, metadata !DIExpression()), !dbg !1127
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1128
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !1130
  %1 = load ptr, ptr %name, align 8, !dbg !1130
  %tobool = icmp ne ptr %1, null, !dbg !1128
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1131

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !1132
  %tobool1 = icmp ne ptr %2, null, !dbg !1132
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1133

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !1134

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %fmt.addr, align 8, !dbg !1135
  %4 = load ptr, ptr %vargs.addr, align 8, !dbg !1136
  %call = call ptr @kvasprintf_const(i32 noundef 3264, ptr noundef %3, ptr noundef %4) #18, !dbg !1137
  store ptr %call, ptr %s, align 8, !dbg !1138
  %5 = load ptr, ptr %s, align 8, !dbg !1139
  %tobool2 = icmp ne ptr %5, null, !dbg !1139
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1141

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !1142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !1142

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %s, align 8, !dbg !1143
  %call5 = call ptr @strchr(ptr noundef %6, i32 noundef 47) #18, !dbg !1144
  %tobool6 = icmp ne ptr %call5, null, !dbg !1144
  br i1 %tobool6, label %if.then7, label %if.end13, !dbg !1145

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #17, !dbg !1146
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1120, metadata !DIExpression()), !dbg !1147
  %7 = load ptr, ptr %s, align 8, !dbg !1148
  %call8 = call noalias ptr @kstrdup(ptr noundef %7, i32 noundef 3264) #18, !dbg !1149
  store ptr %call8, ptr %t, align 8, !dbg !1150
  %8 = load ptr, ptr %s, align 8, !dbg !1151
  call void @kfree_const(ptr noundef %8) #18, !dbg !1152
  %9 = load ptr, ptr %t, align 8, !dbg !1153
  %tobool9 = icmp ne ptr %9, null, !dbg !1153
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1155

if.then10:                                        ; preds = %if.then7
  store i32 -12, ptr %retval, align 4, !dbg !1156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1156

if.end11:                                         ; preds = %if.then7
  %10 = load ptr, ptr %t, align 8, !dbg !1157
  %call12 = call ptr @strreplace(ptr noundef %10, i8 noundef zeroext 47, i8 noundef zeroext 33) #18, !dbg !1158
  store ptr %call12, ptr %s, align 8, !dbg !1159
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1160
  br label %cleanup, !dbg !1160

cleanup:                                          ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #17, !dbg !1160
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end13, !dbg !1161

if.end13:                                         ; preds = %cleanup.cont, %if.end4
  %11 = load ptr, ptr %kobj.addr, align 8, !dbg !1162
  %name14 = getelementptr inbounds %struct.kobject, ptr %11, i32 0, i32 0, !dbg !1163
  %12 = load ptr, ptr %name14, align 8, !dbg !1163
  call void @kfree_const(ptr noundef %12) #18, !dbg !1164
  %13 = load ptr, ptr %s, align 8, !dbg !1165
  %14 = load ptr, ptr %kobj.addr, align 8, !dbg !1166
  %name15 = getelementptr inbounds %struct.kobject, ptr %14, i32 0, i32 0, !dbg !1167
  store ptr %13, ptr %name15, align 8, !dbg !1168
  store i32 0, ptr %retval, align 4, !dbg !1169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !1169

cleanup16:                                        ; preds = %if.end13, %cleanup, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #17, !dbg !1170
  %15 = load i32, ptr %retval, align 4, !dbg !1170
  ret i32 %15, !dbg !1170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1171 dso_local ptr @kvasprintf_const(i32 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1175 dso_local ptr @strchr(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1179 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1182 dso_local void @kfree_const(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1183 dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kobject_set_name(ptr noundef %kobj, ptr noundef %fmt, ...) #0 align 16 !dbg !1186 {
entry:
  %kobj.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %retval1 = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1190, metadata !DIExpression()), !dbg !1200
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1191, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 24, ptr %vargs) #17, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %vargs, metadata !1192, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #17, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1199, metadata !DIExpression()), !dbg !1205
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %vargs, i64 0, i64 0, !dbg !1206
  call void @llvm.va_start(ptr %arraydecay), !dbg !1206
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1207
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !1208
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %vargs, i64 0, i64 0, !dbg !1209
  %call = call i32 @kobject_set_name_vargs(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay2) #18, !dbg !1210
  store i32 %call, ptr %retval1, align 4, !dbg !1211
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %vargs, i64 0, i64 0, !dbg !1212
  call void @llvm.va_end(ptr %arraydecay3), !dbg !1212
  %2 = load i32, ptr %retval1, align 4, !dbg !1213
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #17, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 24, ptr %vargs) #17, !dbg !1214
  ret i32 %2, !dbg !1215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kobject_init(ptr noundef %kobj, ptr noundef %ktype) #0 align 16 !dbg !1216 {
entry:
  %kobj.addr = alloca ptr, align 8
  %ktype.addr = alloca ptr, align 8
  %err_str = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1220, metadata !DIExpression()), !dbg !1224
  store ptr %ktype, ptr %ktype.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ktype.addr, metadata !1221, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.start.p0(i64 8, ptr %err_str) #17, !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %err_str, metadata !1222, metadata !DIExpression()), !dbg !1227
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1228
  %tobool = icmp ne ptr %0, null, !dbg !1228
  br i1 %tobool, label %if.end, label %if.then, !dbg !1230

if.then:                                          ; preds = %entry
  store ptr @.str, ptr %err_str, align 8, !dbg !1231
  br label %error, !dbg !1233

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ktype.addr, align 8, !dbg !1234
  %tobool1 = icmp ne ptr %1, null, !dbg !1234
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1236

if.then2:                                         ; preds = %if.end
  store ptr @.str.1, ptr %err_str, align 8, !dbg !1237
  br label %error, !dbg !1239

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !1240
  %state_initialized = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 7, !dbg !1242
  %bf.load = load i8, ptr %state_initialized, align 4, !dbg !1242
  %bf.clear = and i8 %bf.load, 1, !dbg !1242
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1242
  %tobool4 = icmp ne i32 %bf.cast, 0, !dbg !1240
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1243

if.then5:                                         ; preds = %if.end3
  br label %do.body, !dbg !1244

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !1247

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1247

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !1244
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %3) #20, !dbg !1244
  store i32 %call, ptr %tmp, align 4, !dbg !1247
  %4 = load i32, ptr %tmp, align 4, !dbg !1244
  call void @dump_stack_lvl(ptr noundef @.str.3) #20, !dbg !1249
  br label %if.end6, !dbg !1250

if.end6:                                          ; preds = %do.end, %if.end3
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !1251
  call void @kobject_init_internal(ptr noundef %5) #18, !dbg !1252
  %6 = load ptr, ptr %ktype.addr, align 8, !dbg !1253
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !1254
  %ktype7 = getelementptr inbounds %struct.kobject, ptr %7, i32 0, i32 4, !dbg !1255
  store ptr %6, ptr %ktype7, align 8, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1257

error:                                            ; preds = %if.then2, %if.then
  call void @llvm.dbg.label(metadata !1223), !dbg !1258
  br label %do.body8, !dbg !1259

do.body8:                                         ; preds = %error
  br label %do.cond9, !dbg !1261

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1261

do.end10:                                         ; preds = %do.cond9
  %8 = load ptr, ptr %kobj.addr, align 8, !dbg !1259
  %9 = load ptr, ptr %err_str, align 8, !dbg !1259
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %8, ptr noundef %9) #20, !dbg !1259
  store i32 %call12, ptr %tmp11, align 4, !dbg !1261
  %10 = load i32, ptr %tmp11, align 4, !dbg !1259
  call void @dump_stack_lvl(ptr noundef @.str.3) #20, !dbg !1263
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1264
  br label %cleanup, !dbg !1264

cleanup:                                          ; preds = %do.end10, %if.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %err_str) #17, !dbg !1264
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1264

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1265 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1269 dso_local void @dump_stack_lvl(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kobject_init_internal(ptr noundef %kobj) #0 align 16 !dbg !1272 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1274, metadata !DIExpression()), !dbg !1275
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1276
  %tobool = icmp ne ptr %0, null, !dbg !1276
  br i1 %tobool, label %if.end, label %if.then, !dbg !1278

if.then:                                          ; preds = %entry
  br label %return, !dbg !1279

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !1280
  %kref = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 6, !dbg !1281
  call void @kref_init(ptr noundef %kref) #18, !dbg !1282
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !1283
  %entry1 = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 1, !dbg !1284
  call void @INIT_LIST_HEAD(ptr noundef %entry1) #18, !dbg !1285
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !1286
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 7, !dbg !1287
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !1288
  %bf.clear = and i8 %bf.load, -3, !dbg !1288
  %bf.set = or i8 %bf.clear, 0, !dbg !1288
  store i8 %bf.set, ptr %state_in_sysfs, align 4, !dbg !1288
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !1289
  %state_add_uevent_sent = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 7, !dbg !1290
  %bf.load2 = load i8, ptr %state_add_uevent_sent, align 4, !dbg !1291
  %bf.clear3 = and i8 %bf.load2, -5, !dbg !1291
  %bf.set4 = or i8 %bf.clear3, 0, !dbg !1291
  store i8 %bf.set4, ptr %state_add_uevent_sent, align 4, !dbg !1291
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !1292
  %state_remove_uevent_sent = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 7, !dbg !1293
  %bf.load5 = load i8, ptr %state_remove_uevent_sent, align 4, !dbg !1294
  %bf.clear6 = and i8 %bf.load5, -9, !dbg !1294
  %bf.set7 = or i8 %bf.clear6, 0, !dbg !1294
  store i8 %bf.set7, ptr %state_remove_uevent_sent, align 4, !dbg !1294
  %6 = load ptr, ptr %kobj.addr, align 8, !dbg !1295
  %state_initialized = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 7, !dbg !1296
  %bf.load8 = load i8, ptr %state_initialized, align 4, !dbg !1297
  %bf.clear9 = and i8 %bf.load8, -2, !dbg !1297
  %bf.set10 = or i8 %bf.clear9, 1, !dbg !1297
  store i8 %bf.set10, ptr %state_initialized, align 4, !dbg !1297
  br label %return, !dbg !1298

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1298
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kobject_add(ptr noundef %kobj, ptr noundef %parent, ptr noundef %fmt, ...) #0 align 16 !dbg !1299 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1303, metadata !DIExpression()), !dbg !1308
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1304, metadata !DIExpression()), !dbg !1309
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1305, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #17, !dbg !1311
  call void @llvm.dbg.declare(metadata ptr %args, metadata !1306, metadata !DIExpression()), !dbg !1312
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #17, !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1307, metadata !DIExpression()), !dbg !1314
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1315
  %tobool = icmp ne ptr %0, null, !dbg !1315
  br i1 %tobool, label %if.end, label %if.then, !dbg !1317

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1318

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !1319
  %state_initialized = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7, !dbg !1321
  %bf.load = load i8, ptr %state_initialized, align 4, !dbg !1321
  %bf.clear = and i8 %bf.load, 1, !dbg !1321
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1321
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !1319
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !1322

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !1323

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !1326

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1326

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !1323
  %call = call ptr @kobject_name(ptr noundef %2) #18, !dbg !1323
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !1323
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %call, ptr noundef %3) #20, !dbg !1323
  store i32 %call4, ptr %tmp, align 4, !dbg !1326
  %4 = load i32, ptr %tmp, align 4, !dbg !1323
  call void @dump_stack_lvl(ptr noundef @.str.3) #20, !dbg !1328
  store i32 -22, ptr %retval, align 4, !dbg !1329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1329

if.end5:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1330
  call void @llvm.va_start(ptr %arraydecay), !dbg !1330
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !1331
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !1332
  %7 = load ptr, ptr %fmt.addr, align 8, !dbg !1333
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1334
  %call7 = call i32 @kobject_add_varg(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %arraydecay6) #18, !dbg !1335
  store i32 %call7, ptr %retval1, align 4, !dbg !1336
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1337
  call void @llvm.va_end(ptr %arraydecay8), !dbg !1337
  %8 = load i32, ptr %retval1, align 4, !dbg !1338
  store i32 %8, ptr %retval, align 4, !dbg !1339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1339

cleanup:                                          ; preds = %if.end5, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #17, !dbg !1340
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #17, !dbg !1340
  %9 = load i32, ptr %retval, align 4, !dbg !1340
  ret i32 %9, !dbg !1340
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #8 align 16 !dbg !1341 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1343, metadata !DIExpression()), !dbg !1344
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1345
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !1346
  %1 = load ptr, ptr %name, align 8, !dbg !1346
  ret ptr %1, !dbg !1347
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kobject_add_varg(ptr noundef %kobj, ptr noundef %parent, ptr noundef %fmt, ptr noundef %vargs) #0 align 16 !dbg !1348 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %vargs.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1352, metadata !DIExpression()), !dbg !1357
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1353, metadata !DIExpression()), !dbg !1358
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1354, metadata !DIExpression()), !dbg !1359
  store ptr %vargs, ptr %vargs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vargs.addr, metadata !1355, metadata !DIExpression()), !dbg !1360
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #17, !dbg !1361
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1356, metadata !DIExpression()), !dbg !1362
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1363
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !1364
  %2 = load ptr, ptr %vargs.addr, align 8, !dbg !1365
  %call = call i32 @kobject_set_name_vargs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !1366
  store i32 %call, ptr %retval1, align 4, !dbg !1367
  %3 = load i32, ptr %retval1, align 4, !dbg !1368
  %tobool = icmp ne i32 %3, 0, !dbg !1368
  br i1 %tobool, label %if.then, label %if.end, !dbg !1370

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1371

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1374

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1374

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #20, !dbg !1371
  store i32 %call2, ptr %tmp, align 4, !dbg !1374
  %4 = load i32, ptr %tmp, align 4, !dbg !1371
  %5 = load i32, ptr %retval1, align 4, !dbg !1376
  store i32 %5, ptr %retval, align 4, !dbg !1377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1377

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !1378
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !1379
  %parent3 = getelementptr inbounds %struct.kobject, ptr %7, i32 0, i32 2, !dbg !1380
  store ptr %6, ptr %parent3, align 8, !dbg !1381
  %8 = load ptr, ptr %kobj.addr, align 8, !dbg !1382
  %call4 = call i32 @kobject_add_internal(ptr noundef %8) #18, !dbg !1383
  store i32 %call4, ptr %retval, align 4, !dbg !1384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1384

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #17, !dbg !1385
  %9 = load i32, ptr %retval, align 4, !dbg !1385
  ret i32 %9, !dbg !1385
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kobject_init_and_add(ptr noundef %kobj, ptr noundef %ktype, ptr noundef %parent, ptr noundef %fmt, ...) #0 align 16 !dbg !1386 {
entry:
  %kobj.addr = alloca ptr, align 8
  %ktype.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %retval1 = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1390, metadata !DIExpression()), !dbg !1396
  store ptr %ktype, ptr %ktype.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ktype.addr, metadata !1391, metadata !DIExpression()), !dbg !1397
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1392, metadata !DIExpression()), !dbg !1398
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1393, metadata !DIExpression()), !dbg !1399
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #17, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %args, metadata !1394, metadata !DIExpression()), !dbg !1401
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #17, !dbg !1402
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1395, metadata !DIExpression()), !dbg !1403
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1404
  %1 = load ptr, ptr %ktype.addr, align 8, !dbg !1405
  call void @kobject_init(ptr noundef %0, ptr noundef %1) #18, !dbg !1406
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1407
  call void @llvm.va_start(ptr %arraydecay), !dbg !1407
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !1408
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !1409
  %4 = load ptr, ptr %fmt.addr, align 8, !dbg !1410
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1411
  %call = call i32 @kobject_add_varg(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %arraydecay2) #18, !dbg !1412
  store i32 %call, ptr %retval1, align 4, !dbg !1413
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !1414
  call void @llvm.va_end(ptr %arraydecay3), !dbg !1414
  %5 = load i32, ptr %retval1, align 4, !dbg !1415
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #17, !dbg !1416
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #17, !dbg !1416
  ret i32 %5, !dbg !1417
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kobject_rename(ptr noundef %kobj, ptr noundef %new_name) #0 align 16 !dbg !1418 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %new_name.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %devpath = alloca ptr, align 8
  %dup_name = alloca ptr, align 8
  %name = alloca ptr, align 8
  %devpath_string = alloca ptr, align 8
  %envp = alloca [2 x ptr], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1422, metadata !DIExpression()), !dbg !1432
  store ptr %new_name, ptr %new_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_name.addr, metadata !1423, metadata !DIExpression()), !dbg !1433
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !1434
  call void @llvm.dbg.declare(metadata ptr %error, metadata !1424, metadata !DIExpression()), !dbg !1435
  store i32 0, ptr %error, align 4, !dbg !1435
  call void @llvm.lifetime.start.p0(i64 8, ptr %devpath) #17, !dbg !1436
  call void @llvm.dbg.declare(metadata ptr %devpath, metadata !1425, metadata !DIExpression()), !dbg !1437
  store ptr null, ptr %devpath, align 8, !dbg !1437
  call void @llvm.lifetime.start.p0(i64 8, ptr %dup_name) #17, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %dup_name, metadata !1426, metadata !DIExpression()), !dbg !1439
  store ptr null, ptr %dup_name, align 8, !dbg !1439
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #17, !dbg !1438
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1427, metadata !DIExpression()), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 8, ptr %devpath_string) #17, !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %devpath_string, metadata !1428, metadata !DIExpression()), !dbg !1442
  store ptr null, ptr %devpath_string, align 8, !dbg !1442
  call void @llvm.lifetime.start.p0(i64 16, ptr %envp) #17, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %envp, metadata !1429, metadata !DIExpression()), !dbg !1444
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1445
  %call = call ptr @kobject_get(ptr noundef %0) #18, !dbg !1446
  store ptr %call, ptr %kobj.addr, align 8, !dbg !1447
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !1448
  %tobool = icmp ne ptr %1, null, !dbg !1448
  br i1 %tobool, label %if.end, label %if.then, !dbg !1450

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1451

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !1452
  %parent = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 2, !dbg !1454
  %3 = load ptr, ptr %parent, align 8, !dbg !1454
  %tobool1 = icmp ne ptr %3, null, !dbg !1452
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1455

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !1456
  call void @kobject_put(ptr noundef %4) #18, !dbg !1458
  store i32 -22, ptr %retval, align 4, !dbg !1459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1459

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !1460
  %call4 = call ptr @kobject_get_path(ptr noundef %5, i32 noundef 3264) #18, !dbg !1461
  store ptr %call4, ptr %devpath, align 8, !dbg !1462
  %6 = load ptr, ptr %devpath, align 8, !dbg !1463
  %tobool5 = icmp ne ptr %6, null, !dbg !1463
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1465

if.then6:                                         ; preds = %if.end3
  store i32 -12, ptr %error, align 4, !dbg !1466
  br label %out, !dbg !1468

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %devpath, align 8, !dbg !1469
  %call8 = call i64 @strlen(ptr noundef %7) #18, !dbg !1470
  %add = add i64 %call8, 15, !dbg !1471
  %call9 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3264) #19, !dbg !1472
  store ptr %call9, ptr %devpath_string, align 8, !dbg !1473
  %8 = load ptr, ptr %devpath_string, align 8, !dbg !1474
  %tobool10 = icmp ne ptr %8, null, !dbg !1474
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1476

if.then11:                                        ; preds = %if.end7
  store i32 -12, ptr %error, align 4, !dbg !1477
  br label %out, !dbg !1479

if.end12:                                         ; preds = %if.end7
  %9 = load ptr, ptr %devpath_string, align 8, !dbg !1480
  %10 = load ptr, ptr %devpath, align 8, !dbg !1481
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %9, ptr noundef @.str.6, ptr noundef %10) #18, !dbg !1482
  %11 = load ptr, ptr %devpath_string, align 8, !dbg !1483
  %arrayidx = getelementptr [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !1484
  store ptr %11, ptr %arrayidx, align 16, !dbg !1485
  %arrayidx14 = getelementptr [2 x ptr], ptr %envp, i64 0, i64 1, !dbg !1486
  store ptr null, ptr %arrayidx14, align 8, !dbg !1487
  %12 = load ptr, ptr %new_name.addr, align 8, !dbg !1488
  %call15 = call ptr @kstrdup_const(ptr noundef %12, i32 noundef 3264) #18, !dbg !1489
  store ptr %call15, ptr %dup_name, align 8, !dbg !1490
  store ptr %call15, ptr %name, align 8, !dbg !1491
  %13 = load ptr, ptr %name, align 8, !dbg !1492
  %tobool16 = icmp ne ptr %13, null, !dbg !1492
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1494

if.then17:                                        ; preds = %if.end12
  store i32 -12, ptr %error, align 4, !dbg !1495
  br label %out, !dbg !1497

if.end18:                                         ; preds = %if.end12
  %14 = load ptr, ptr %kobj.addr, align 8, !dbg !1498
  %15 = load ptr, ptr %new_name.addr, align 8, !dbg !1499
  %16 = load ptr, ptr %kobj.addr, align 8, !dbg !1500
  %call19 = call ptr @kobject_namespace(ptr noundef %16) #18, !dbg !1501
  %call20 = call i32 @sysfs_rename_dir_ns(ptr noundef %14, ptr noundef %15, ptr noundef %call19) #18, !dbg !1502
  store i32 %call20, ptr %error, align 4, !dbg !1503
  %17 = load i32, ptr %error, align 4, !dbg !1504
  %tobool21 = icmp ne i32 %17, 0, !dbg !1504
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1506

if.then22:                                        ; preds = %if.end18
  br label %out, !dbg !1507

if.end23:                                         ; preds = %if.end18
  %18 = load ptr, ptr %kobj.addr, align 8, !dbg !1508
  %name24 = getelementptr inbounds %struct.kobject, ptr %18, i32 0, i32 0, !dbg !1509
  %19 = load ptr, ptr %name24, align 8, !dbg !1509
  store ptr %19, ptr %dup_name, align 8, !dbg !1510
  %20 = load ptr, ptr %name, align 8, !dbg !1511
  %21 = load ptr, ptr %kobj.addr, align 8, !dbg !1512
  %name25 = getelementptr inbounds %struct.kobject, ptr %21, i32 0, i32 0, !dbg !1513
  store ptr %20, ptr %name25, align 8, !dbg !1514
  %22 = load ptr, ptr %kobj.addr, align 8, !dbg !1515
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !1516
  %call26 = call i32 @kobject_uevent_env(ptr noundef %22, i32 noundef 3, ptr noundef %arraydecay) #18, !dbg !1517
  br label %out, !dbg !1517

out:                                              ; preds = %if.end23, %if.then22, %if.then17, %if.then11, %if.then6
  call void @llvm.dbg.label(metadata !1431), !dbg !1518
  %23 = load ptr, ptr %dup_name, align 8, !dbg !1519
  call void @kfree_const(ptr noundef %23) #18, !dbg !1520
  %24 = load ptr, ptr %devpath_string, align 8, !dbg !1521
  call void @kfree(ptr noundef %24) #18, !dbg !1522
  %25 = load ptr, ptr %devpath, align 8, !dbg !1523
  call void @kfree(ptr noundef %25) #18, !dbg !1524
  %26 = load ptr, ptr %kobj.addr, align 8, !dbg !1525
  call void @kobject_put(ptr noundef %26) #18, !dbg !1526
  %27 = load i32, ptr %error, align 4, !dbg !1527
  store i32 %27, ptr %retval, align 4, !dbg !1528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1528

cleanup:                                          ; preds = %out, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %envp) #17, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 8, ptr %devpath_string) #17, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #17, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 8, ptr %dup_name) #17, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 8, ptr %devpath) #17, !dbg !1529
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !1529
  %28 = load i32, ptr %retval, align 4, !dbg !1529
  ret i32 %28, !dbg !1529
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobject_get(ptr noundef %kobj) #0 align 16 !dbg !1530 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1534, metadata !DIExpression()), !dbg !1544
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1545
  %tobool = icmp ne ptr %0, null, !dbg !1545
  br i1 %tobool, label %if.then, label %if.end33, !dbg !1546

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !1547
  %state_initialized = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7, !dbg !1548
  %bf.load = load i8, ptr %state_initialized, align 4, !dbg !1548
  %bf.clear = and i8 %bf.load, 1, !dbg !1548
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1548
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !1547
  br i1 %tobool1, label %if.end32, label %if.then2, !dbg !1549

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1550
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1535, metadata !DIExpression()), !dbg !1550
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1550
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !1551
  %tobool3 = icmp ne i32 %2, 0, !dbg !1551
  %lnot = xor i1 %tobool3, true, !dbg !1551
  %lnot4 = xor i1 %lnot, true, !dbg !1551
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1551
  %conv = sext i32 %lnot.ext to i64, !dbg !1551
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1551
  %tobool5 = icmp ne i64 %expval, 0, !dbg !1551
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !1550

if.then6:                                         ; preds = %if.then2
  br label %do.body, !dbg !1551

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !1552

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !1553

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1553

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !1552
  %call = call ptr @kobject_name(ptr noundef %3) #18, !dbg !1552
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !1552
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.7, ptr noundef %call, ptr noundef %4) #18, !dbg !1552
  br label %do.body8, !dbg !1552

do.body8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !1555
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1540, metadata !DIExpression()), !dbg !1555
  store i32 2313, ptr %__flags, align 4, !dbg !1555
  br label %do.body9, !dbg !1555

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !1556

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1556

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !1555

do.body12:                                        ; preds = %do.end11
  %5 = load i32, ptr %__flags, align 4, !dbg !1558
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 642, i32 %5, i64 12) #17, !dbg !1558, !srcloc !1560
  br label %do.cond13, !dbg !1558

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1558

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !1555

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !1561

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1561

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !1552
  br label %do.cond18, !dbg !1555

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !1555

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !1552

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !1563

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1563

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !1552

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !1552

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !1552

if.end:                                           ; preds = %do.end24, %if.then2
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !1550
  %tobool25 = icmp ne i32 %6, 0, !dbg !1550
  %lnot26 = xor i1 %tobool25, true, !dbg !1550
  %lnot28 = xor i1 %lnot26, true, !dbg !1550
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !1550
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !1550
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !1550
  store i64 %expval31, ptr %tmp, align 8, !dbg !1551
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1565
  %7 = load i64, ptr %tmp, align 8, !dbg !1550
  br label %if.end32, !dbg !1565

if.end32:                                         ; preds = %if.end, %if.then
  %8 = load ptr, ptr %kobj.addr, align 8, !dbg !1566
  %kref = getelementptr inbounds %struct.kobject, ptr %8, i32 0, i32 6, !dbg !1567
  call void @kref_get(ptr noundef %kref) #18, !dbg !1568
  br label %if.end33, !dbg !1569

if.end33:                                         ; preds = %if.end32, %entry
  %9 = load ptr, ptr %kobj.addr, align 8, !dbg !1570
  ret ptr %9, !dbg !1571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kobject_put(ptr noundef %kobj) #0 align 16 !dbg !1572 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1574, metadata !DIExpression()), !dbg !1584
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1585
  %tobool = icmp ne ptr %0, null, !dbg !1585
  br i1 %tobool, label %if.then, label %if.end34, !dbg !1586

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !1587
  %state_initialized = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7, !dbg !1588
  %bf.load = load i8, ptr %state_initialized, align 4, !dbg !1588
  %bf.clear = and i8 %bf.load, 1, !dbg !1588
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1588
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !1587
  br i1 %tobool1, label %if.end32, label %if.then2, !dbg !1589

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1575, metadata !DIExpression()), !dbg !1590
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1590
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !1591
  %tobool3 = icmp ne i32 %2, 0, !dbg !1591
  %lnot = xor i1 %tobool3, true, !dbg !1591
  %lnot4 = xor i1 %lnot, true, !dbg !1591
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1591
  %conv = sext i32 %lnot.ext to i64, !dbg !1591
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1591
  %tobool5 = icmp ne i64 %expval, 0, !dbg !1591
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !1590

if.then6:                                         ; preds = %if.then2
  br label %do.body, !dbg !1591

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !1592

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !1593

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1593

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !1592
  %call = call ptr @kobject_name(ptr noundef %3) #18, !dbg !1592
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !1592
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.9, ptr noundef %call, ptr noundef %4) #18, !dbg !1592
  br label %do.body8, !dbg !1592

do.body8:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !1595
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1580, metadata !DIExpression()), !dbg !1595
  store i32 2313, ptr %__flags, align 4, !dbg !1595
  br label %do.body9, !dbg !1595

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !1596

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1596

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !1595

do.body12:                                        ; preds = %do.end11
  %5 = load i32, ptr %__flags, align 4, !dbg !1598
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 736, i32 %5, i64 12) #17, !dbg !1598, !srcloc !1600
  br label %do.cond13, !dbg !1598

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1598

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !1595

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !1601

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1601

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !1592
  br label %do.cond18, !dbg !1595

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !1595

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !1592

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !1603

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !1603

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !1592

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !1592

do.end24:                                         ; preds = %do.cond23
  br label %if.end, !dbg !1592

if.end:                                           ; preds = %do.end24, %if.then2
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !1590
  %tobool25 = icmp ne i32 %6, 0, !dbg !1590
  %lnot26 = xor i1 %tobool25, true, !dbg !1590
  %lnot28 = xor i1 %lnot26, true, !dbg !1590
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !1590
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !1590
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !1590
  store i64 %expval31, ptr %tmp, align 8, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !1605
  %7 = load i64, ptr %tmp, align 8, !dbg !1590
  br label %if.end32, !dbg !1605

if.end32:                                         ; preds = %if.end, %if.then
  %8 = load ptr, ptr %kobj.addr, align 8, !dbg !1606
  %kref = getelementptr inbounds %struct.kobject, ptr %8, i32 0, i32 6, !dbg !1607
  %call33 = call i32 @kref_put(ptr noundef %kref, ptr noundef @kobject_release) #18, !dbg !1608
  br label %if.end34, !dbg !1609

if.end34:                                         ; preds = %if.end32, %entry
  ret void, !dbg !1610
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !1611 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1613, metadata !DIExpression()), !dbg !1618
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1614, metadata !DIExpression()), !dbg !1619
  %0 = load i64, ptr %size.addr, align 8, !dbg !1620
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1621
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1622

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1623
  %tobool = icmp ne i64 %2, 0, !dbg !1623
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1624

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !1625
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1615, metadata !DIExpression()), !dbg !1626
  %3 = load i64, ptr %size.addr, align 8, !dbg !1627
  %cmp = icmp ugt i64 %3, 8192, !dbg !1629
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1630

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1631
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1632
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !1633
  store ptr %call, ptr %retval, align 8, !dbg !1634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1634

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1635
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !1635
  store i32 %call2, ptr %index, align 4, !dbg !1636
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1637
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1638
  %9 = ptrtoint ptr %8 to i64, !dbg !1638
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !1639
  %idxprom = zext i32 %call3 to i64, !dbg !1640
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1640
  %10 = load i32, ptr %index, align 4, !dbg !1641
  %idxprom4 = zext i32 %10 to i64, !dbg !1640
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1640
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1640
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1642
  %13 = load i64, ptr %size.addr, align 8, !dbg !1643
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !1644
  store ptr %call6, ptr %retval, align 8, !dbg !1645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1645

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !1646
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1647
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1648
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !1649
  store ptr %call8, ptr %retval, align 8, !dbg !1650
  br label %return, !dbg !1650

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1651
  ret ptr %16, !dbg !1651
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1652 dso_local i64 @strlen(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1655 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1658 dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1661 dso_local i32 @sysfs_rename_dir_ns(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1664 dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kobject_move(ptr noundef %kobj, ptr noundef %new_parent) #0 align 16 !dbg !1668 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %new_parent.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %old_parent = alloca ptr, align 8
  %devpath = alloca ptr, align 8
  %devpath_string = alloca ptr, align 8
  %envp = alloca [2 x ptr], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1672, metadata !DIExpression()), !dbg !1680
  store ptr %new_parent, ptr %new_parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_parent.addr, metadata !1673, metadata !DIExpression()), !dbg !1681
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !1682
  call void @llvm.dbg.declare(metadata ptr %error, metadata !1674, metadata !DIExpression()), !dbg !1683
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_parent) #17, !dbg !1684
  call void @llvm.dbg.declare(metadata ptr %old_parent, metadata !1675, metadata !DIExpression()), !dbg !1685
  call void @llvm.lifetime.start.p0(i64 8, ptr %devpath) #17, !dbg !1686
  call void @llvm.dbg.declare(metadata ptr %devpath, metadata !1676, metadata !DIExpression()), !dbg !1687
  store ptr null, ptr %devpath, align 8, !dbg !1687
  call void @llvm.lifetime.start.p0(i64 8, ptr %devpath_string) #17, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %devpath_string, metadata !1677, metadata !DIExpression()), !dbg !1689
  store ptr null, ptr %devpath_string, align 8, !dbg !1689
  call void @llvm.lifetime.start.p0(i64 16, ptr %envp) #17, !dbg !1690
  call void @llvm.dbg.declare(metadata ptr %envp, metadata !1678, metadata !DIExpression()), !dbg !1691
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1692
  %call = call ptr @kobject_get(ptr noundef %0) #18, !dbg !1693
  store ptr %call, ptr %kobj.addr, align 8, !dbg !1694
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !1695
  %tobool = icmp ne ptr %1, null, !dbg !1695
  br i1 %tobool, label %if.end, label %if.then, !dbg !1697

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1698
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1698

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %new_parent.addr, align 8, !dbg !1699
  %call1 = call ptr @kobject_get(ptr noundef %2) #18, !dbg !1700
  store ptr %call1, ptr %new_parent.addr, align 8, !dbg !1701
  %3 = load ptr, ptr %new_parent.addr, align 8, !dbg !1702
  %tobool2 = icmp ne ptr %3, null, !dbg !1702
  br i1 %tobool2, label %if.end10, label %if.then3, !dbg !1704

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !1705
  %kset = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 3, !dbg !1708
  %5 = load ptr, ptr %kset, align 8, !dbg !1708
  %tobool4 = icmp ne ptr %5, null, !dbg !1705
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !1709

if.then5:                                         ; preds = %if.then3
  %6 = load ptr, ptr %kobj.addr, align 8, !dbg !1710
  %kset6 = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 3, !dbg !1711
  %7 = load ptr, ptr %kset6, align 8, !dbg !1711
  %kobj7 = getelementptr inbounds %struct.kset, ptr %7, i32 0, i32 2, !dbg !1712
  %call8 = call ptr @kobject_get(ptr noundef %kobj7) #18, !dbg !1713
  store ptr %call8, ptr %new_parent.addr, align 8, !dbg !1714
  br label %if.end9, !dbg !1715

if.end9:                                          ; preds = %if.then5, %if.then3
  br label %if.end10, !dbg !1716

if.end10:                                         ; preds = %if.end9, %if.end
  %8 = load ptr, ptr %kobj.addr, align 8, !dbg !1717
  %call11 = call ptr @kobject_get_path(ptr noundef %8, i32 noundef 3264) #18, !dbg !1718
  store ptr %call11, ptr %devpath, align 8, !dbg !1719
  %9 = load ptr, ptr %devpath, align 8, !dbg !1720
  %tobool12 = icmp ne ptr %9, null, !dbg !1720
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1722

if.then13:                                        ; preds = %if.end10
  store i32 -12, ptr %error, align 4, !dbg !1723
  br label %out, !dbg !1725

if.end14:                                         ; preds = %if.end10
  %10 = load ptr, ptr %devpath, align 8, !dbg !1726
  %call15 = call i64 @strlen(ptr noundef %10) #18, !dbg !1727
  %add = add i64 %call15, 15, !dbg !1728
  %call16 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3264) #19, !dbg !1729
  store ptr %call16, ptr %devpath_string, align 8, !dbg !1730
  %11 = load ptr, ptr %devpath_string, align 8, !dbg !1731
  %tobool17 = icmp ne ptr %11, null, !dbg !1731
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !1733

if.then18:                                        ; preds = %if.end14
  store i32 -12, ptr %error, align 4, !dbg !1734
  br label %out, !dbg !1736

if.end19:                                         ; preds = %if.end14
  %12 = load ptr, ptr %devpath_string, align 8, !dbg !1737
  %13 = load ptr, ptr %devpath, align 8, !dbg !1738
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %12, ptr noundef @.str.6, ptr noundef %13) #18, !dbg !1739
  %14 = load ptr, ptr %devpath_string, align 8, !dbg !1740
  %arrayidx = getelementptr [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !1741
  store ptr %14, ptr %arrayidx, align 16, !dbg !1742
  %arrayidx21 = getelementptr [2 x ptr], ptr %envp, i64 0, i64 1, !dbg !1743
  store ptr null, ptr %arrayidx21, align 8, !dbg !1744
  %15 = load ptr, ptr %kobj.addr, align 8, !dbg !1745
  %16 = load ptr, ptr %new_parent.addr, align 8, !dbg !1746
  %17 = load ptr, ptr %kobj.addr, align 8, !dbg !1747
  %call22 = call ptr @kobject_namespace(ptr noundef %17) #18, !dbg !1748
  %call23 = call i32 @sysfs_move_dir_ns(ptr noundef %15, ptr noundef %16, ptr noundef %call22) #18, !dbg !1749
  store i32 %call23, ptr %error, align 4, !dbg !1750
  %18 = load i32, ptr %error, align 4, !dbg !1751
  %tobool24 = icmp ne i32 %18, 0, !dbg !1751
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1753

if.then25:                                        ; preds = %if.end19
  br label %out, !dbg !1754

if.end26:                                         ; preds = %if.end19
  %19 = load ptr, ptr %kobj.addr, align 8, !dbg !1755
  %parent = getelementptr inbounds %struct.kobject, ptr %19, i32 0, i32 2, !dbg !1756
  %20 = load ptr, ptr %parent, align 8, !dbg !1756
  store ptr %20, ptr %old_parent, align 8, !dbg !1757
  %21 = load ptr, ptr %new_parent.addr, align 8, !dbg !1758
  %22 = load ptr, ptr %kobj.addr, align 8, !dbg !1759
  %parent27 = getelementptr inbounds %struct.kobject, ptr %22, i32 0, i32 2, !dbg !1760
  store ptr %21, ptr %parent27, align 8, !dbg !1761
  store ptr null, ptr %new_parent.addr, align 8, !dbg !1762
  %23 = load ptr, ptr %old_parent, align 8, !dbg !1763
  call void @kobject_put(ptr noundef %23) #18, !dbg !1764
  %24 = load ptr, ptr %kobj.addr, align 8, !dbg !1765
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !1766
  %call28 = call i32 @kobject_uevent_env(ptr noundef %24, i32 noundef 3, ptr noundef %arraydecay) #18, !dbg !1767
  br label %out, !dbg !1767

out:                                              ; preds = %if.end26, %if.then25, %if.then18, %if.then13
  call void @llvm.dbg.label(metadata !1679), !dbg !1768
  %25 = load ptr, ptr %new_parent.addr, align 8, !dbg !1769
  call void @kobject_put(ptr noundef %25) #18, !dbg !1770
  %26 = load ptr, ptr %kobj.addr, align 8, !dbg !1771
  call void @kobject_put(ptr noundef %26) #18, !dbg !1772
  %27 = load ptr, ptr %devpath_string, align 8, !dbg !1773
  call void @kfree(ptr noundef %27) #18, !dbg !1774
  %28 = load ptr, ptr %devpath, align 8, !dbg !1775
  call void @kfree(ptr noundef %28) #18, !dbg !1776
  %29 = load i32, ptr %error, align 4, !dbg !1777
  store i32 %29, ptr %retval, align 4, !dbg !1778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1778

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %envp) #17, !dbg !1779
  call void @llvm.lifetime.end.p0(i64 8, ptr %devpath_string) #17, !dbg !1779
  call void @llvm.lifetime.end.p0(i64 8, ptr %devpath) #17, !dbg !1779
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_parent) #17, !dbg !1779
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !1779
  %30 = load i32, ptr %retval, align 4, !dbg !1779
  ret i32 %30, !dbg !1779
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1780 dso_local i32 @sysfs_move_dir_ns(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kobject_del(ptr noundef %kobj) #0 align 16 !dbg !1783 {
entry:
  %kobj.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !1788
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !1786, metadata !DIExpression()), !dbg !1789
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1790
  %tobool = icmp ne ptr %0, null, !dbg !1790
  br i1 %tobool, label %if.end, label %if.then, !dbg !1792

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1793

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !1794
  %parent1 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 2, !dbg !1795
  %2 = load ptr, ptr %parent1, align 8, !dbg !1795
  store ptr %2, ptr %parent, align 8, !dbg !1796
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !1797
  call void @__kobject_del(ptr noundef %3) #18, !dbg !1798
  %4 = load ptr, ptr %parent, align 8, !dbg !1799
  call void @kobject_put(ptr noundef %4) #18, !dbg !1800
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1801
  br label %cleanup, !dbg !1801

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !1801
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1801

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kobject_del(ptr noundef %kobj) #0 align 16 !dbg !1802 {
entry:
  %kobj.addr = alloca ptr, align 8
  %sd = alloca ptr, align 8
  %ktype = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1804, metadata !DIExpression()), !dbg !1807
  call void @llvm.lifetime.start.p0(i64 8, ptr %sd) #17, !dbg !1808
  call void @llvm.dbg.declare(metadata ptr %sd, metadata !1805, metadata !DIExpression()), !dbg !1809
  call void @llvm.lifetime.start.p0(i64 8, ptr %ktype) #17, !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %ktype, metadata !1806, metadata !DIExpression()), !dbg !1811
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1812
  %sd1 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !1813
  %1 = load ptr, ptr %sd1, align 8, !dbg !1813
  store ptr %1, ptr %sd, align 8, !dbg !1814
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !1815
  %call = call ptr @get_ktype(ptr noundef %2) #18, !dbg !1816
  store ptr %call, ptr %ktype, align 8, !dbg !1817
  %3 = load ptr, ptr %ktype, align 8, !dbg !1818
  %tobool = icmp ne ptr %3, null, !dbg !1818
  br i1 %tobool, label %if.then, label %if.end, !dbg !1820

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !1821
  %5 = load ptr, ptr %ktype, align 8, !dbg !1822
  %default_groups = getelementptr inbounds %struct.kobj_type, ptr %5, i32 0, i32 2, !dbg !1823
  %6 = load ptr, ptr %default_groups, align 8, !dbg !1823
  call void @sysfs_remove_groups(ptr noundef %4, ptr noundef %6) #18, !dbg !1824
  br label %if.end, !dbg !1824

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !1825
  %state_add_uevent_sent = getelementptr inbounds %struct.kobject, ptr %7, i32 0, i32 7, !dbg !1827
  %bf.load = load i8, ptr %state_add_uevent_sent, align 4, !dbg !1827
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !1827
  %bf.clear = and i8 %bf.lshr, 1, !dbg !1827
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1827
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !1825
  br i1 %tobool2, label %land.lhs.true, label %if.end10, !dbg !1828

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %kobj.addr, align 8, !dbg !1829
  %state_remove_uevent_sent = getelementptr inbounds %struct.kobject, ptr %8, i32 0, i32 7, !dbg !1830
  %bf.load3 = load i8, ptr %state_remove_uevent_sent, align 4, !dbg !1830
  %bf.lshr4 = lshr i8 %bf.load3, 3, !dbg !1830
  %bf.clear5 = and i8 %bf.lshr4, 1, !dbg !1830
  %bf.cast6 = zext i8 %bf.clear5 to i32, !dbg !1830
  %tobool7 = icmp ne i32 %bf.cast6, 0, !dbg !1829
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !1831

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, ptr %tmp, align 4, !dbg !1832
  %9 = load i32, ptr %tmp, align 4, !dbg !1836
  %10 = load ptr, ptr %kobj.addr, align 8, !dbg !1837
  %call9 = call i32 @kobject_uevent(ptr noundef %10, i32 noundef 1) #18, !dbg !1838
  br label %if.end10, !dbg !1839

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %if.end
  %11 = load ptr, ptr %kobj.addr, align 8, !dbg !1840
  call void @sysfs_remove_dir(ptr noundef %11) #18, !dbg !1841
  %12 = load ptr, ptr %sd, align 8, !dbg !1842
  call void @sysfs_put(ptr noundef %12) #18, !dbg !1843
  %13 = load ptr, ptr %kobj.addr, align 8, !dbg !1844
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %13, i32 0, i32 7, !dbg !1845
  %bf.load11 = load i8, ptr %state_in_sysfs, align 4, !dbg !1846
  %bf.clear12 = and i8 %bf.load11, -3, !dbg !1846
  %bf.set = or i8 %bf.clear12, 0, !dbg !1846
  store i8 %bf.set, ptr %state_in_sysfs, align 4, !dbg !1846
  %14 = load ptr, ptr %kobj.addr, align 8, !dbg !1847
  call void @kobj_kset_leave(ptr noundef %14) #18, !dbg !1848
  %15 = load ptr, ptr %kobj.addr, align 8, !dbg !1849
  %parent = getelementptr inbounds %struct.kobject, ptr %15, i32 0, i32 2, !dbg !1850
  store ptr null, ptr %parent, align 8, !dbg !1851
  call void @llvm.lifetime.end.p0(i64 8, ptr %ktype) #17, !dbg !1852
  call void @llvm.lifetime.end.p0(i64 8, ptr %sd) #17, !dbg !1852
  ret void, !dbg !1852
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1853 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #8 align 16 !dbg !1857 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !1862, metadata !DIExpression()), !dbg !1863
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !1864
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !1865
  call void @refcount_inc(ptr noundef %refcount) #18, !dbg !1866
  ret void, !dbg !1867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobject_get_unless_zero(ptr noundef %kobj) #0 align 16 !dbg !1868 {
entry:
  %retval = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !1872
  %tobool = icmp ne ptr %0, null, !dbg !1872
  br i1 %tobool, label %if.end, label %if.then, !dbg !1874

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1875
  br label %return, !dbg !1875

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !1876
  %kref = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 6, !dbg !1878
  %call = call i32 @kref_get_unless_zero(ptr noundef %kref) #18, !dbg !1879
  %tobool1 = icmp ne i32 %call, 0, !dbg !1879
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1880

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %kobj.addr, align 8, !dbg !1881
  br label %if.end3, !dbg !1882

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !1883
  store ptr %2, ptr %retval, align 8, !dbg !1884
  br label %return, !dbg !1884

return:                                           ; preds = %if.end3, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1885
  ret ptr %3, !dbg !1885
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_get_unless_zero(ptr noundef %kref) #8 align 16 !dbg !1886 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !1890, metadata !DIExpression()), !dbg !1891
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !1892
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !1893
  %call = call zeroext i1 @refcount_inc_not_zero(ptr noundef %refcount) #18, !dbg !1894
  %conv = zext i1 %call to i32, !dbg !1894
  ret i32 %conv, !dbg !1895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #8 align 16 !dbg !1896 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !1901, metadata !DIExpression()), !dbg !1903
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !1902, metadata !DIExpression()), !dbg !1904
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !1905
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !1907
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #18, !dbg !1908
  br i1 %call, label %if.then, label %if.end, !dbg !1909

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !1910
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !1912
  call void %1(ptr noundef %2) #18, !dbg !1910
  store i32 1, ptr %retval, align 4, !dbg !1913
  br label %return, !dbg !1913

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1914
  br label %return, !dbg !1914

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !1915
  ret i32 %3, !dbg !1915
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kobject_release(ptr noundef %kref) #0 align 16 !dbg !1916 {
entry:
  %kref.addr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !1918, metadata !DIExpression()), !dbg !1922
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #17, !dbg !1923
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !1919, metadata !DIExpression()), !dbg !1924
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1920, metadata !DIExpression()), !dbg !1925
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !1925
  store ptr %0, ptr %__mptr, align 8, !dbg !1925
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1925
  %add.ptr = getelementptr i8, ptr %1, i64 -56, !dbg !1925
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1925
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !1926
  %2 = load ptr, ptr %tmp, align 8, !dbg !1925
  store ptr %2, ptr %kobj, align 8, !dbg !1924
  %3 = load ptr, ptr %kobj, align 8, !dbg !1927
  call void @kobject_cleanup(ptr noundef %3) #18, !dbg !1928
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #17, !dbg !1929
  ret void, !dbg !1929
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobject_create_and_add(ptr noundef %name, ptr noundef %parent) #0 align 16 !dbg !1930 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1934, metadata !DIExpression()), !dbg !1938
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1935, metadata !DIExpression()), !dbg !1939
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #17, !dbg !1940
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !1936, metadata !DIExpression()), !dbg !1941
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #17, !dbg !1942
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1937, metadata !DIExpression()), !dbg !1943
  %call = call ptr @kobject_create() #18, !dbg !1944
  store ptr %call, ptr %kobj, align 8, !dbg !1945
  %0 = load ptr, ptr %kobj, align 8, !dbg !1946
  %tobool = icmp ne ptr %0, null, !dbg !1946
  br i1 %tobool, label %if.end, label %if.then, !dbg !1948

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1949

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj, align 8, !dbg !1950
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !1951
  %3 = load ptr, ptr %name.addr, align 8, !dbg !1952
  %call2 = call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %1, ptr noundef %2, ptr noundef @.str.10, ptr noundef %3) #18, !dbg !1953
  store i32 %call2, ptr %retval1, align 4, !dbg !1954
  %4 = load i32, ptr %retval1, align 4, !dbg !1955
  %tobool3 = icmp ne i32 %4, 0, !dbg !1955
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1957

if.then4:                                         ; preds = %if.end
  br label %do.body, !dbg !1958

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !1961

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1961

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %retval1, align 4, !dbg !1958
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, ptr noundef @__func__.kobject_create_and_add, i32 noundef %5) #20, !dbg !1958
  store i32 %call5, ptr %tmp, align 4, !dbg !1961
  %6 = load i32, ptr %tmp, align 4, !dbg !1958
  %7 = load ptr, ptr %kobj, align 8, !dbg !1963
  call void @kobject_put(ptr noundef %7) #18, !dbg !1964
  store ptr null, ptr %kobj, align 8, !dbg !1965
  br label %if.end6, !dbg !1966

if.end6:                                          ; preds = %do.end, %if.end
  %8 = load ptr, ptr %kobj, align 8, !dbg !1967
  store ptr %8, ptr %retval, align 8, !dbg !1968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1968

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #17, !dbg !1969
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #17, !dbg !1969
  %9 = load ptr, ptr %retval, align 8, !dbg !1969
  ret ptr %9, !dbg !1969
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_create() #0 align 16 !dbg !1970 {
entry:
  %retval = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #17, !dbg !1975
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !1974, metadata !DIExpression()), !dbg !1976
  %call = call noalias ptr @kzalloc(i64 noundef 64, i32 noundef 3264) #19, !dbg !1977
  store ptr %call, ptr %kobj, align 8, !dbg !1978
  %0 = load ptr, ptr %kobj, align 8, !dbg !1979
  %tobool = icmp ne ptr %0, null, !dbg !1979
  br i1 %tobool, label %if.end, label %if.then, !dbg !1981

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1982

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj, align 8, !dbg !1983
  call void @kobject_init(ptr noundef %1, ptr noundef @dynamic_kobj_ktype) #18, !dbg !1984
  %2 = load ptr, ptr %kobj, align 8, !dbg !1985
  store ptr %2, ptr %retval, align 8, !dbg !1986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1986

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #17, !dbg !1987
  %3 = load ptr, ptr %retval, align 8, !dbg !1987
  ret ptr %3, !dbg !1987
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kset_init(ptr noundef %k) #0 align 16 !dbg !1988 {
entry:
  %k.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1992, metadata !DIExpression()), !dbg !1993
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1994
  %kobj = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, !dbg !1995
  call void @kobject_init_internal(ptr noundef %kobj) #18, !dbg !1996
  %1 = load ptr, ptr %k.addr, align 8, !dbg !1997
  %list = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 0, !dbg !1998
  call void @INIT_LIST_HEAD(ptr noundef %list) #18, !dbg !1999
  br label %do.body, !dbg !2000

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %k.addr, align 8, !dbg !2001
  %list_lock = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 1, !dbg !2001
  %call = call ptr @spinlock_check(ptr noundef %list_lock) #18, !dbg !2001
  %3 = load ptr, ptr %k.addr, align 8, !dbg !2001
  %list_lock1 = getelementptr inbounds %struct.kset, ptr %3, i32 0, i32 1, !dbg !2001
  %4 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2001
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %4, i32 0, i32 0, !dbg !2001
  %5 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2001
  %counter = getelementptr inbounds %struct.atomic_t, ptr %5, i32 0, i32 0, !dbg !2001
  store i32 0, ptr %counter, align 4, !dbg !2001
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %list_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2001
  br label %do.end, !dbg !2001

do.end:                                           ; preds = %do.body
  ret void, !dbg !2003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #8 align 16 !dbg !2004 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2009, metadata !DIExpression()), !dbg !2010
  br label %do.body, !dbg !2011

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2012

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2014

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2012

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2016
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2016
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2016
  store volatile ptr %0, ptr %next, align 8, !dbg !2016
  br label %do.end3, !dbg !2016

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2012

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2018

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2019

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2021

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2019

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2023
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2023
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !2023
  store volatile ptr %2, ptr %prev, align 8, !dbg !2023
  br label %do.end9, !dbg !2023

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2019

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !2025
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #11 align 16 !dbg !2026 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2033, metadata !DIExpression()), !dbg !2034
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2035
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2036
  ret ptr %1, !dbg !2037
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kobj_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2038 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %kattr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2040, metadata !DIExpression()), !dbg !2047
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2041, metadata !DIExpression()), !dbg !2048
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2042, metadata !DIExpression()), !dbg !2049
  call void @llvm.lifetime.start.p0(i64 8, ptr %kattr) #17, !dbg !2050
  call void @llvm.dbg.declare(metadata ptr %kattr, metadata !2043, metadata !DIExpression()), !dbg !2051
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2044, metadata !DIExpression()), !dbg !2053
  store i64 -5, ptr %ret, align 8, !dbg !2053
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2045, metadata !DIExpression()), !dbg !2054
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2054
  store ptr %0, ptr %__mptr, align 8, !dbg !2054
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2054
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2054
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2054
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2055
  %2 = load ptr, ptr %tmp, align 8, !dbg !2054
  store ptr %2, ptr %kattr, align 8, !dbg !2056
  %3 = load ptr, ptr %kattr, align 8, !dbg !2057
  %show = getelementptr inbounds %struct.kobj_attribute, ptr %3, i32 0, i32 1, !dbg !2059
  %4 = load ptr, ptr %show, align 8, !dbg !2059
  %tobool = icmp ne ptr %4, null, !dbg !2057
  br i1 %tobool, label %if.then, label %if.end, !dbg !2060

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %kattr, align 8, !dbg !2061
  %show1 = getelementptr inbounds %struct.kobj_attribute, ptr %5, i32 0, i32 1, !dbg !2062
  %6 = load ptr, ptr %show1, align 8, !dbg !2062
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !2063
  %8 = load ptr, ptr %kattr, align 8, !dbg !2064
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2065
  %call = call i64 %6(ptr noundef %7, ptr noundef %8, ptr noundef %9) #18, !dbg !2061
  store i64 %call, ptr %ret, align 8, !dbg !2066
  br label %if.end, !dbg !2067

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, ptr %ret, align 8, !dbg !2068
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %kattr) #17, !dbg !2069
  ret i64 %10, !dbg !2070
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kobj_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !2071 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %kattr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2073, metadata !DIExpression()), !dbg !2081
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2074, metadata !DIExpression()), !dbg !2082
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2075, metadata !DIExpression()), !dbg !2083
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2076, metadata !DIExpression()), !dbg !2084
  call void @llvm.lifetime.start.p0(i64 8, ptr %kattr) #17, !dbg !2085
  call void @llvm.dbg.declare(metadata ptr %kattr, metadata !2077, metadata !DIExpression()), !dbg !2086
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !2087
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2078, metadata !DIExpression()), !dbg !2088
  store i64 -5, ptr %ret, align 8, !dbg !2088
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2089
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2079, metadata !DIExpression()), !dbg !2089
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2089
  store ptr %0, ptr %__mptr, align 8, !dbg !2089
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2089
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2089
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2089
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2090
  %2 = load ptr, ptr %tmp, align 8, !dbg !2089
  store ptr %2, ptr %kattr, align 8, !dbg !2091
  %3 = load ptr, ptr %kattr, align 8, !dbg !2092
  %store = getelementptr inbounds %struct.kobj_attribute, ptr %3, i32 0, i32 2, !dbg !2094
  %4 = load ptr, ptr %store, align 8, !dbg !2094
  %tobool = icmp ne ptr %4, null, !dbg !2092
  br i1 %tobool, label %if.then, label %if.end, !dbg !2095

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %kattr, align 8, !dbg !2096
  %store1 = getelementptr inbounds %struct.kobj_attribute, ptr %5, i32 0, i32 2, !dbg !2097
  %6 = load ptr, ptr %store1, align 8, !dbg !2097
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !2098
  %8 = load ptr, ptr %kattr, align 8, !dbg !2099
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2100
  %10 = load i64, ptr %count.addr, align 8, !dbg !2101
  %call = call i64 %6(ptr noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) #18, !dbg !2096
  store i64 %call, ptr %ret, align 8, !dbg !2102
  br label %if.end, !dbg !2103

if.end:                                           ; preds = %if.then, %entry
  %11 = load i64, ptr %ret, align 8, !dbg !2104
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !2105
  call void @llvm.lifetime.end.p0(i64 8, ptr %kattr) #17, !dbg !2105
  ret i64 %11, !dbg !2106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kset_register(ptr noundef %k) #0 align 16 !dbg !2107 {
entry:
  %retval = alloca i32, align 4
  %k.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !2114
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2112, metadata !DIExpression()), !dbg !2115
  %0 = load ptr, ptr %k.addr, align 8, !dbg !2116
  %tobool = icmp ne ptr %0, null, !dbg !2116
  br i1 %tobool, label %if.end, label %if.then, !dbg !2118

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2119

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %k.addr, align 8, !dbg !2120
  %kobj = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2, !dbg !2122
  %ktype = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4, !dbg !2123
  %2 = load ptr, ptr %ktype, align 8, !dbg !2123
  %tobool1 = icmp ne ptr %2, null, !dbg !2120
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2124

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !2125

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !2128

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2128

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #20, !dbg !2125
  store i32 %call, ptr %tmp, align 4, !dbg !2128
  %3 = load i32, ptr %tmp, align 4, !dbg !2125
  store i32 -22, ptr %retval, align 4, !dbg !2130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2130

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %k.addr, align 8, !dbg !2131
  call void @kset_init(ptr noundef %4) #18, !dbg !2132
  %5 = load ptr, ptr %k.addr, align 8, !dbg !2133
  %kobj4 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2, !dbg !2134
  %call5 = call i32 @kobject_add_internal(ptr noundef %kobj4) #18, !dbg !2135
  store i32 %call5, ptr %err, align 4, !dbg !2136
  %6 = load i32, ptr %err, align 4, !dbg !2137
  %tobool6 = icmp ne i32 %6, 0, !dbg !2137
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !2139

if.then7:                                         ; preds = %if.end3
  %7 = load ptr, ptr %k.addr, align 8, !dbg !2140
  %kobj8 = getelementptr inbounds %struct.kset, ptr %7, i32 0, i32 2, !dbg !2142
  %name = getelementptr inbounds %struct.kobject, ptr %kobj8, i32 0, i32 0, !dbg !2143
  %8 = load ptr, ptr %name, align 8, !dbg !2143
  call void @kfree_const(ptr noundef %8) #18, !dbg !2144
  %9 = load ptr, ptr %k.addr, align 8, !dbg !2145
  %kobj9 = getelementptr inbounds %struct.kset, ptr %9, i32 0, i32 2, !dbg !2146
  %name10 = getelementptr inbounds %struct.kobject, ptr %kobj9, i32 0, i32 0, !dbg !2147
  store ptr null, ptr %name10, align 8, !dbg !2148
  %10 = load i32, ptr %err, align 4, !dbg !2149
  store i32 %10, ptr %retval, align 4, !dbg !2150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2150

if.end11:                                         ; preds = %if.end3
  %11 = load ptr, ptr %k.addr, align 8, !dbg !2151
  %kobj12 = getelementptr inbounds %struct.kset, ptr %11, i32 0, i32 2, !dbg !2152
  %call13 = call i32 @kobject_uevent(ptr noundef %kobj12, i32 noundef 0) #18, !dbg !2153
  store i32 0, ptr %retval, align 4, !dbg !2154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2154

cleanup:                                          ; preds = %if.end11, %if.then7, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !2155
  %12 = load i32, ptr %retval, align 4, !dbg !2155
  ret i32 %12, !dbg !2155
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kobject_add_internal(ptr noundef %kobj) #0 align 16 !dbg !2156 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp47 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2160, metadata !DIExpression()), !dbg !2171
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !2172
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2161, metadata !DIExpression()), !dbg !2173
  store i32 0, ptr %error, align 4, !dbg !2173
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !2174
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !2162, metadata !DIExpression()), !dbg !2175
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2176
  %tobool = icmp ne ptr %0, null, !dbg !2176
  br i1 %tobool, label %if.end, label %if.then, !dbg !2178

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !2179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2179

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !2180
  %name = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 0, !dbg !2181
  %2 = load ptr, ptr %name, align 8, !dbg !2181
  %tobool1 = icmp ne ptr %2, null, !dbg !2180
  br i1 %tobool1, label %lor.lhs.false, label %if.then4, !dbg !2182

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !2183
  %name2 = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 0, !dbg !2184
  %4 = load ptr, ptr %name2, align 8, !dbg !2184
  %arrayidx = getelementptr i8, ptr %4, i64 0, !dbg !2183
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2183
  %tobool3 = icmp ne i8 %5, 0, !dbg !2183
  br i1 %tobool3, label %if.end35, label %if.then4, !dbg !2185

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !2186
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2163, metadata !DIExpression()), !dbg !2186
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !2186
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2187
  %tobool5 = icmp ne i32 %6, 0, !dbg !2187
  %lnot = xor i1 %tobool5, true, !dbg !2187
  %lnot6 = xor i1 %lnot, true, !dbg !2187
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2187
  %conv = sext i32 %lnot.ext to i64, !dbg !2187
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2187
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2187
  br i1 %tobool7, label %if.then8, label %if.end27, !dbg !2186

if.then8:                                         ; preds = %if.then4
  br label %do.body, !dbg !2187

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !2188

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2189

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2189

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !2188
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.15, ptr noundef %7) #18, !dbg !2188
  br label %do.body10, !dbg !2188

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !2191
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2167, metadata !DIExpression()), !dbg !2191
  store i32 2313, ptr %__flags, align 4, !dbg !2191
  br label %do.body11, !dbg !2191

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2192

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2192

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2191

do.body14:                                        ; preds = %do.end13
  %8 = load i32, ptr %__flags, align 4, !dbg !2194
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 221, i32 %8, i64 12) #17, !dbg !2194, !srcloc !2196
  br label %do.cond15, !dbg !2194

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2194

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2191

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2197

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2197

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !2188
  br label %do.cond20, !dbg !2191

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2191

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !2188

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !2199

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2199

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !2188

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !2188

do.end26:                                         ; preds = %do.cond25
  br label %if.end27, !dbg !2188

if.end27:                                         ; preds = %do.end26, %if.then4
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !2186
  %tobool28 = icmp ne i32 %9, 0, !dbg !2186
  %lnot29 = xor i1 %tobool28, true, !dbg !2186
  %lnot31 = xor i1 %lnot29, true, !dbg !2186
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !2186
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !2186
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !2186
  store i64 %expval34, ptr %tmp, align 8, !dbg !2187
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !2201
  %10 = load i64, ptr %tmp, align 8, !dbg !2186
  store i32 -22, ptr %retval, align 4, !dbg !2202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2202

if.end35:                                         ; preds = %lor.lhs.false
  %11 = load ptr, ptr %kobj.addr, align 8, !dbg !2203
  %parent36 = getelementptr inbounds %struct.kobject, ptr %11, i32 0, i32 2, !dbg !2204
  %12 = load ptr, ptr %parent36, align 8, !dbg !2204
  %call = call ptr @kobject_get(ptr noundef %12) #18, !dbg !2205
  store ptr %call, ptr %parent, align 8, !dbg !2206
  %13 = load ptr, ptr %kobj.addr, align 8, !dbg !2207
  %kset = getelementptr inbounds %struct.kobject, ptr %13, i32 0, i32 3, !dbg !2209
  %14 = load ptr, ptr %kset, align 8, !dbg !2209
  %tobool37 = icmp ne ptr %14, null, !dbg !2207
  br i1 %tobool37, label %if.then38, label %if.end46, !dbg !2210

if.then38:                                        ; preds = %if.end35
  %15 = load ptr, ptr %parent, align 8, !dbg !2211
  %tobool39 = icmp ne ptr %15, null, !dbg !2211
  br i1 %tobool39, label %if.end44, label %if.then40, !dbg !2214

if.then40:                                        ; preds = %if.then38
  %16 = load ptr, ptr %kobj.addr, align 8, !dbg !2215
  %kset41 = getelementptr inbounds %struct.kobject, ptr %16, i32 0, i32 3, !dbg !2216
  %17 = load ptr, ptr %kset41, align 8, !dbg !2216
  %kobj42 = getelementptr inbounds %struct.kset, ptr %17, i32 0, i32 2, !dbg !2217
  %call43 = call ptr @kobject_get(ptr noundef %kobj42) #18, !dbg !2218
  store ptr %call43, ptr %parent, align 8, !dbg !2219
  br label %if.end44, !dbg !2220

if.end44:                                         ; preds = %if.then40, %if.then38
  %18 = load ptr, ptr %kobj.addr, align 8, !dbg !2221
  call void @kobj_kset_join(ptr noundef %18) #18, !dbg !2222
  %19 = load ptr, ptr %parent, align 8, !dbg !2223
  %20 = load ptr, ptr %kobj.addr, align 8, !dbg !2224
  %parent45 = getelementptr inbounds %struct.kobject, ptr %20, i32 0, i32 2, !dbg !2225
  store ptr %19, ptr %parent45, align 8, !dbg !2226
  br label %if.end46, !dbg !2227

if.end46:                                         ; preds = %if.end44, %if.end35
  store i32 0, ptr %tmp47, align 4, !dbg !2228
  %21 = load i32, ptr %tmp47, align 4, !dbg !2231
  %22 = load ptr, ptr %kobj.addr, align 8, !dbg !2232
  %call48 = call i32 @create_dir(ptr noundef %22) #18, !dbg !2233
  store i32 %call48, ptr %error, align 4, !dbg !2234
  %23 = load i32, ptr %error, align 4, !dbg !2235
  %tobool49 = icmp ne i32 %23, 0, !dbg !2235
  br i1 %tobool49, label %if.then50, label %if.else69, !dbg !2237

if.then50:                                        ; preds = %if.end46
  %24 = load ptr, ptr %kobj.addr, align 8, !dbg !2238
  call void @kobj_kset_leave(ptr noundef %24) #18, !dbg !2240
  %25 = load ptr, ptr %parent, align 8, !dbg !2241
  call void @kobject_put(ptr noundef %25) #18, !dbg !2242
  %26 = load ptr, ptr %kobj.addr, align 8, !dbg !2243
  %parent51 = getelementptr inbounds %struct.kobject, ptr %26, i32 0, i32 2, !dbg !2244
  store ptr null, ptr %parent51, align 8, !dbg !2245
  %27 = load i32, ptr %error, align 4, !dbg !2246
  %cmp = icmp eq i32 %27, -17, !dbg !2248
  br i1 %cmp, label %if.then53, label %if.else, !dbg !2249

if.then53:                                        ; preds = %if.then50
  br label %do.body54, !dbg !2250

do.body54:                                        ; preds = %if.then53
  br label %do.cond55, !dbg !2252

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !2252

do.end56:                                         ; preds = %do.cond55
  %28 = load ptr, ptr %kobj.addr, align 8, !dbg !2250
  %call58 = call ptr @kobject_name(ptr noundef %28) #18, !dbg !2250
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef @.str.16, ptr noundef @__func__.kobject_add_internal, ptr noundef %call58) #20, !dbg !2250
  store i32 %call59, ptr %tmp57, align 4, !dbg !2252
  %29 = load i32, ptr %tmp57, align 4, !dbg !2250
  br label %if.end68, !dbg !2254

if.else:                                          ; preds = %if.then50
  br label %do.body60, !dbg !2255

do.body60:                                        ; preds = %if.else
  br label %do.cond61, !dbg !2257

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2257

do.end62:                                         ; preds = %do.cond61
  %30 = load ptr, ptr %kobj.addr, align 8, !dbg !2255
  %call64 = call ptr @kobject_name(ptr noundef %30) #18, !dbg !2255
  %31 = load i32, ptr %error, align 4, !dbg !2255
  %32 = load ptr, ptr %parent, align 8, !dbg !2255
  %tobool65 = icmp ne ptr %32, null, !dbg !2255
  br i1 %tobool65, label %cond.true, label %cond.false, !dbg !2255

cond.true:                                        ; preds = %do.end62
  %33 = load ptr, ptr %parent, align 8, !dbg !2255
  %call66 = call ptr @kobject_name(ptr noundef %33) #18, !dbg !2255
  br label %cond.end, !dbg !2255

cond.false:                                       ; preds = %do.end62
  br label %cond.end, !dbg !2255

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call66, %cond.true ], [ @.str.18, %cond.false ], !dbg !2255
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef @.str.17, ptr noundef @__func__.kobject_add_internal, ptr noundef %call64, i32 noundef %31, ptr noundef %cond) #20, !dbg !2255
  store i32 %call67, ptr %tmp63, align 4, !dbg !2257
  %34 = load i32, ptr %tmp63, align 4, !dbg !2255
  br label %if.end68

if.end68:                                         ; preds = %cond.end, %do.end56
  br label %if.end70, !dbg !2259

if.else69:                                        ; preds = %if.end46
  %35 = load ptr, ptr %kobj.addr, align 8, !dbg !2260
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %35, i32 0, i32 7, !dbg !2261
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !2262
  %bf.clear = and i8 %bf.load, -3, !dbg !2262
  %bf.set = or i8 %bf.clear, 2, !dbg !2262
  store i8 %bf.set, ptr %state_in_sysfs, align 4, !dbg !2262
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.end68
  %36 = load i32, ptr %error, align 4, !dbg !2263
  store i32 %36, ptr %retval, align 4, !dbg !2264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2264

cleanup:                                          ; preds = %if.end70, %if.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !2265
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !2265
  %37 = load i32, ptr %retval, align 4, !dbg !2265
  ret i32 %37, !dbg !2265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2266 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kset_unregister(ptr noundef %k) #0 align 16 !dbg !2269 {
entry:
  %k.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !2271, metadata !DIExpression()), !dbg !2272
  %0 = load ptr, ptr %k.addr, align 8, !dbg !2273
  %tobool = icmp ne ptr %0, null, !dbg !2273
  br i1 %tobool, label %if.end, label %if.then, !dbg !2275

if.then:                                          ; preds = %entry
  br label %return, !dbg !2276

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %k.addr, align 8, !dbg !2277
  %kobj = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2, !dbg !2278
  call void @kobject_del(ptr noundef %kobj) #18, !dbg !2279
  %2 = load ptr, ptr %k.addr, align 8, !dbg !2280
  %kobj1 = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 2, !dbg !2281
  call void @kobject_put(ptr noundef %kobj1) #18, !dbg !2282
  br label %return, !dbg !2283

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kset_find_obj(ptr noundef %kset, ptr noundef %name) #0 align 16 !dbg !2284 {
entry:
  %kset.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %k = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %kset, ptr %kset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kset.addr, metadata !2288, metadata !DIExpression()), !dbg !2298
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2289, metadata !DIExpression()), !dbg !2299
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #17, !dbg !2300
  call void @llvm.dbg.declare(metadata ptr %k, metadata !2290, metadata !DIExpression()), !dbg !2301
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !2302
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2291, metadata !DIExpression()), !dbg !2303
  store ptr null, ptr %ret, align 8, !dbg !2303
  %0 = load ptr, ptr %kset.addr, align 8, !dbg !2304
  %list_lock = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 1, !dbg !2305
  call void @spin_lock(ptr noundef %list_lock) #18, !dbg !2306
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2307
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2292, metadata !DIExpression()), !dbg !2307
  %1 = load ptr, ptr %kset.addr, align 8, !dbg !2307
  %list = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 0, !dbg !2307
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !2307
  %2 = load ptr, ptr %next, align 8, !dbg !2307
  store ptr %2, ptr %__mptr, align 8, !dbg !2307
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2307
  %add.ptr = getelementptr i8, ptr %3, i64 -8, !dbg !2307
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2307
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2308
  %4 = load ptr, ptr %tmp, align 8, !dbg !2307
  store ptr %4, ptr %k, align 8, !dbg !2308
  br label %for.cond, !dbg !2308

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %k, align 8, !dbg !2309
  %entry1 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 1, !dbg !2309
  %6 = load ptr, ptr %kset.addr, align 8, !dbg !2309
  %list2 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 0, !dbg !2309
  %cmp = icmp eq ptr %entry1, %list2, !dbg !2309
  %lnot = xor i1 %cmp, true, !dbg !2309
  br i1 %lnot, label %for.body, label %for.end, !dbg !2308

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %k, align 8, !dbg !2310
  %call = call ptr @kobject_name(ptr noundef %7) #18, !dbg !2313
  %tobool = icmp ne ptr %call, null, !dbg !2313
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2314

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %k, align 8, !dbg !2315
  %call3 = call ptr @kobject_name(ptr noundef %8) #18, !dbg !2316
  %9 = load ptr, ptr %name.addr, align 8, !dbg !2317
  %call4 = call i32 @strcmp(ptr noundef %call3, ptr noundef %9) #18, !dbg !2318
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2318
  br i1 %tobool5, label %if.end, label %if.then, !dbg !2319

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %k, align 8, !dbg !2320
  %call6 = call ptr @kobject_get_unless_zero(ptr noundef %10) #18, !dbg !2322
  store ptr %call6, ptr %ret, align 8, !dbg !2323
  br label %for.end, !dbg !2324

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !2325

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #17, !dbg !2326
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !2295, metadata !DIExpression()), !dbg !2326
  %11 = load ptr, ptr %k, align 8, !dbg !2326
  %entry8 = getelementptr inbounds %struct.kobject, ptr %11, i32 0, i32 1, !dbg !2326
  %next9 = getelementptr inbounds %struct.list_head, ptr %entry8, i32 0, i32 0, !dbg !2326
  %12 = load ptr, ptr %next9, align 8, !dbg !2326
  store ptr %12, ptr %__mptr7, align 8, !dbg !2326
  %13 = load ptr, ptr %__mptr7, align 8, !dbg !2326
  %add.ptr11 = getelementptr i8, ptr %13, i64 -8, !dbg !2326
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !2326
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #17, !dbg !2309
  %14 = load ptr, ptr %tmp10, align 8, !dbg !2326
  store ptr %14, ptr %k, align 8, !dbg !2309
  br label %for.cond, !dbg !2309, !llvm.loop !2327

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load ptr, ptr %kset.addr, align 8, !dbg !2329
  %list_lock12 = getelementptr inbounds %struct.kset, ptr %15, i32 0, i32 1, !dbg !2330
  call void @spin_unlock(ptr noundef %list_lock12) #18, !dbg !2331
  %16 = load ptr, ptr %ret, align 8, !dbg !2332
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !2333
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #17, !dbg !2333
  ret ptr %16, !dbg !2334
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #11 align 16 !dbg !2335 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2339, metadata !DIExpression()), !dbg !2340
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2341
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2341
  call void @_raw_spin_lock(ptr noundef %1) #18, !dbg !2341
  ret void, !dbg !2342
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2343 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #11 align 16 !dbg !2346 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2348, metadata !DIExpression()), !dbg !2349
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2350
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2350
  call void @_raw_spin_unlock(ptr noundef %1) #18, !dbg !2350
  ret void, !dbg !2351
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kset_create_and_add(ptr noundef %name, ptr noundef %uevent_ops, ptr noundef %parent_kobj) #0 align 16 !dbg !2352 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %uevent_ops.addr = alloca ptr, align 8
  %parent_kobj.addr = alloca ptr, align 8
  %kset = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2356, metadata !DIExpression()), !dbg !2361
  store ptr %uevent_ops, ptr %uevent_ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uevent_ops.addr, metadata !2357, metadata !DIExpression()), !dbg !2362
  store ptr %parent_kobj, ptr %parent_kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_kobj.addr, metadata !2358, metadata !DIExpression()), !dbg !2363
  call void @llvm.lifetime.start.p0(i64 8, ptr %kset) #17, !dbg !2364
  call void @llvm.dbg.declare(metadata ptr %kset, metadata !2359, metadata !DIExpression()), !dbg !2365
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !2366
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2360, metadata !DIExpression()), !dbg !2367
  %0 = load ptr, ptr %name.addr, align 8, !dbg !2368
  %1 = load ptr, ptr %uevent_ops.addr, align 8, !dbg !2369
  %2 = load ptr, ptr %parent_kobj.addr, align 8, !dbg !2370
  %call = call ptr @kset_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !2371
  store ptr %call, ptr %kset, align 8, !dbg !2372
  %3 = load ptr, ptr %kset, align 8, !dbg !2373
  %tobool = icmp ne ptr %3, null, !dbg !2373
  br i1 %tobool, label %if.end, label %if.then, !dbg !2375

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2376

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %kset, align 8, !dbg !2377
  %call1 = call i32 @kset_register(ptr noundef %4) #18, !dbg !2378
  store i32 %call1, ptr %error, align 4, !dbg !2379
  %5 = load i32, ptr %error, align 4, !dbg !2380
  %tobool2 = icmp ne i32 %5, 0, !dbg !2380
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2382

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %kset, align 8, !dbg !2383
  call void @kfree(ptr noundef %6) #18, !dbg !2385
  store ptr null, ptr %retval, align 8, !dbg !2386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2386

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %kset, align 8, !dbg !2387
  store ptr %7, ptr %retval, align 8, !dbg !2388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2388

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !2389
  call void @llvm.lifetime.end.p0(i64 8, ptr %kset) #17, !dbg !2389
  %8 = load ptr, ptr %retval, align 8, !dbg !2389
  ret ptr %8, !dbg !2389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kset_create(ptr noundef %name, ptr noundef %uevent_ops, ptr noundef %parent_kobj) #0 align 16 !dbg !2390 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %uevent_ops.addr = alloca ptr, align 8
  %parent_kobj.addr = alloca ptr, align 8
  %kset = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2392, metadata !DIExpression()), !dbg !2397
  store ptr %uevent_ops, ptr %uevent_ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uevent_ops.addr, metadata !2393, metadata !DIExpression()), !dbg !2398
  store ptr %parent_kobj, ptr %parent_kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_kobj.addr, metadata !2394, metadata !DIExpression()), !dbg !2399
  call void @llvm.lifetime.start.p0(i64 8, ptr %kset) #17, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %kset, metadata !2395, metadata !DIExpression()), !dbg !2401
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #17, !dbg !2402
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !2396, metadata !DIExpression()), !dbg !2403
  %call = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef 3264) #19, !dbg !2404
  store ptr %call, ptr %kset, align 8, !dbg !2405
  %0 = load ptr, ptr %kset, align 8, !dbg !2406
  %tobool = icmp ne ptr %0, null, !dbg !2406
  br i1 %tobool, label %if.end, label %if.then, !dbg !2408

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2409

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kset, align 8, !dbg !2410
  %kobj = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2, !dbg !2411
  %2 = load ptr, ptr %name.addr, align 8, !dbg !2412
  %call2 = call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %kobj, ptr noundef @.str.10, ptr noundef %2) #18, !dbg !2413
  store i32 %call2, ptr %retval1, align 4, !dbg !2414
  %3 = load i32, ptr %retval1, align 4, !dbg !2415
  %tobool3 = icmp ne i32 %3, 0, !dbg !2415
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2417

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %kset, align 8, !dbg !2418
  call void @kfree(ptr noundef %4) #18, !dbg !2420
  store ptr null, ptr %retval, align 8, !dbg !2421
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2421

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %uevent_ops.addr, align 8, !dbg !2422
  %6 = load ptr, ptr %kset, align 8, !dbg !2423
  %uevent_ops6 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 3, !dbg !2424
  store ptr %5, ptr %uevent_ops6, align 8, !dbg !2425
  %7 = load ptr, ptr %parent_kobj.addr, align 8, !dbg !2426
  %8 = load ptr, ptr %kset, align 8, !dbg !2427
  %kobj7 = getelementptr inbounds %struct.kset, ptr %8, i32 0, i32 2, !dbg !2428
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj7, i32 0, i32 2, !dbg !2429
  store ptr %7, ptr %parent, align 8, !dbg !2430
  %9 = load ptr, ptr %kset, align 8, !dbg !2431
  %kobj8 = getelementptr inbounds %struct.kset, ptr %9, i32 0, i32 2, !dbg !2432
  %ktype = getelementptr inbounds %struct.kobject, ptr %kobj8, i32 0, i32 4, !dbg !2433
  store ptr @kset_ktype, ptr %ktype, align 8, !dbg !2434
  %10 = load ptr, ptr %kset, align 8, !dbg !2435
  %kobj9 = getelementptr inbounds %struct.kset, ptr %10, i32 0, i32 2, !dbg !2436
  %kset10 = getelementptr inbounds %struct.kobject, ptr %kobj9, i32 0, i32 3, !dbg !2437
  store ptr null, ptr %kset10, align 8, !dbg !2438
  %11 = load ptr, ptr %kset, align 8, !dbg !2439
  store ptr %11, ptr %retval, align 8, !dbg !2440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2440

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #17, !dbg !2441
  call void @llvm.lifetime.end.p0(i64 8, ptr %kset) #17, !dbg !2441
  %12 = load ptr, ptr %retval, align 8, !dbg !2441
  ret ptr %12, !dbg !2441
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kobj_ns_type_register(ptr noundef %ops) #0 align 16 !dbg !2442 {
entry:
  %ops.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %error = alloca i32, align 4
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !2446, metadata !DIExpression()), !dbg !2450
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #17, !dbg !2451
  call void @llvm.dbg.declare(metadata ptr %type, metadata !2447, metadata !DIExpression()), !dbg !2452
  %0 = load ptr, ptr %ops.addr, align 8, !dbg !2453
  %type1 = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %0, i32 0, i32 0, !dbg !2454
  %1 = load i32, ptr %type1, align 8, !dbg !2454
  store i32 %1, ptr %type, align 4, !dbg !2452
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2448, metadata !DIExpression()), !dbg !2456
  call void @spin_lock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2457
  store i32 -22, ptr %error, align 4, !dbg !2458
  %2 = load i32, ptr %type, align 4, !dbg !2459
  %call = call zeroext i1 @kobj_ns_type_is_valid(i32 noundef %2) #18, !dbg !2461
  br i1 %call, label %if.end, label %if.then, !dbg !2462

if.then:                                          ; preds = %entry
  br label %out, !dbg !2463

if.end:                                           ; preds = %entry
  store i32 -16, ptr %error, align 4, !dbg !2464
  %3 = load i32, ptr %type, align 4, !dbg !2465
  %idxprom = zext i32 %3 to i64, !dbg !2467
  %arrayidx = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom, !dbg !2467
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2467
  %tobool = icmp ne ptr %4, null, !dbg !2467
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !2468

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !2469

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %error, align 4, !dbg !2470
  %5 = load ptr, ptr %ops.addr, align 8, !dbg !2471
  %6 = load i32, ptr %type, align 4, !dbg !2472
  %idxprom4 = zext i32 %6 to i64, !dbg !2473
  %arrayidx5 = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom4, !dbg !2473
  store ptr %5, ptr %arrayidx5, align 8, !dbg !2474
  br label %out, !dbg !2473

out:                                              ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !2449), !dbg !2475
  call void @spin_unlock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2476
  %7 = load i32, ptr %error, align 4, !dbg !2477
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !2478
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #17, !dbg !2478
  ret i32 %7, !dbg !2479
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kobj_ns_type_is_valid(i32 noundef %type) #0 align 16 !dbg !2480 {
entry:
  %retval = alloca i1, align 1
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2484, metadata !DIExpression()), !dbg !2485
  %0 = load i32, ptr %type.addr, align 4, !dbg !2486
  %cmp = icmp ule i32 %0, 0, !dbg !2488
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2489

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2490
  %cmp1 = icmp uge i32 %1, 2, !dbg !2491
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2492

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !2493
  br label %return, !dbg !2493

if.end:                                           ; preds = %lor.lhs.false
  store i1 true, ptr %retval, align 1, !dbg !2494
  br label %return, !dbg !2494

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !2495
  ret i1 %2, !dbg !2495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @kobj_ns_type_registered(i32 noundef %type) #0 align 16 !dbg !2496 {
entry:
  %type.addr = alloca i32, align 4
  %registered = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.lifetime.start.p0(i64 4, ptr %registered) #17, !dbg !2503
  call void @llvm.dbg.declare(metadata ptr %registered, metadata !2501, metadata !DIExpression()), !dbg !2504
  store i32 0, ptr %registered, align 4, !dbg !2504
  call void @spin_lock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2505
  %0 = load i32, ptr %type.addr, align 4, !dbg !2506
  %call = call zeroext i1 @kobj_ns_type_is_valid(i32 noundef %0) #18, !dbg !2508
  br i1 %call, label %if.then, label %if.end, !dbg !2509

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2510
  %idxprom = zext i32 %1 to i64, !dbg !2511
  %arrayidx = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom, !dbg !2511
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2511
  %cmp = icmp ne ptr %2, null, !dbg !2512
  %conv = zext i1 %cmp to i32, !dbg !2512
  store i32 %conv, ptr %registered, align 4, !dbg !2513
  br label %if.end, !dbg !2514

if.end:                                           ; preds = %if.then, %entry
  call void @spin_unlock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2515
  %3 = load i32, ptr %registered, align 4, !dbg !2516
  call void @llvm.lifetime.end.p0(i64 4, ptr %registered) #17, !dbg !2517
  ret i32 %3, !dbg !2518
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobj_child_ns_ops(ptr noundef %parent) #0 align 16 !dbg !2519 {
entry:
  %parent.addr = alloca ptr, align 8
  %ops = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !2521, metadata !DIExpression()), !dbg !2523
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #17, !dbg !2524
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !2522, metadata !DIExpression()), !dbg !2525
  store ptr null, ptr %ops, align 8, !dbg !2525
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !2526
  %tobool = icmp ne ptr %0, null, !dbg !2526
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2528

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !2529
  %ktype = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 4, !dbg !2530
  %2 = load ptr, ptr %ktype, align 8, !dbg !2530
  %tobool1 = icmp ne ptr %2, null, !dbg !2529
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !2531

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !2532
  %ktype3 = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 4, !dbg !2533
  %4 = load ptr, ptr %ktype3, align 8, !dbg !2533
  %child_ns_type = getelementptr inbounds %struct.kobj_type, ptr %4, i32 0, i32 3, !dbg !2534
  %5 = load ptr, ptr %child_ns_type, align 8, !dbg !2534
  %tobool4 = icmp ne ptr %5, null, !dbg !2532
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2535

if.then:                                          ; preds = %land.lhs.true2
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !2536
  %ktype5 = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 4, !dbg !2537
  %7 = load ptr, ptr %ktype5, align 8, !dbg !2537
  %child_ns_type6 = getelementptr inbounds %struct.kobj_type, ptr %7, i32 0, i32 3, !dbg !2538
  %8 = load ptr, ptr %child_ns_type6, align 8, !dbg !2538
  %9 = load ptr, ptr %parent.addr, align 8, !dbg !2539
  %call = call ptr %8(ptr noundef %9) #18, !dbg !2536
  store ptr %call, ptr %ops, align 8, !dbg !2540
  br label %if.end, !dbg !2541

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %10 = load ptr, ptr %ops, align 8, !dbg !2542
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #17, !dbg !2543
  ret ptr %10, !dbg !2544
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @kobj_ns_current_may_mount(i32 noundef %type) #0 align 16 !dbg !2545 {
entry:
  %type.addr = alloca i32, align 4
  %may_mount = alloca i8, align 1
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 1, ptr %may_mount) #17, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %may_mount, metadata !2548, metadata !DIExpression()), !dbg !2551
  store i8 1, ptr %may_mount, align 1, !dbg !2551
  call void @spin_lock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2552
  %0 = load i32, ptr %type.addr, align 4, !dbg !2553
  %call = call zeroext i1 @kobj_ns_type_is_valid(i32 noundef %0) #18, !dbg !2555
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2556

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2557
  %idxprom = zext i32 %1 to i64, !dbg !2558
  %arrayidx = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom, !dbg !2558
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2558
  %tobool = icmp ne ptr %2, null, !dbg !2558
  br i1 %tobool, label %if.then, label %if.end, !dbg !2559

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %type.addr, align 4, !dbg !2560
  %idxprom1 = zext i32 %3 to i64, !dbg !2561
  %arrayidx2 = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom1, !dbg !2561
  %4 = load ptr, ptr %arrayidx2, align 8, !dbg !2561
  %current_may_mount = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %4, i32 0, i32 1, !dbg !2562
  %5 = load ptr, ptr %current_may_mount, align 8, !dbg !2562
  %call3 = call zeroext i1 %5() #18, !dbg !2561
  %frombool = zext i1 %call3 to i8, !dbg !2563
  store i8 %frombool, ptr %may_mount, align 1, !dbg !2563
  br label %if.end, !dbg !2564

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @spin_unlock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2565
  %6 = load i8, ptr %may_mount, align 1, !dbg !2566, !range !2567, !noundef !296
  %tobool4 = trunc i8 %6 to i1, !dbg !2566
  call void @llvm.lifetime.end.p0(i64 1, ptr %may_mount) #17, !dbg !2568
  ret i1 %tobool4, !dbg !2569
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobj_ns_grab_current(i32 noundef %type) #0 align 16 !dbg !2570 {
entry:
  %type.addr = alloca i32, align 4
  %ns = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #17, !dbg !2577
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !2575, metadata !DIExpression()), !dbg !2578
  store ptr null, ptr %ns, align 8, !dbg !2578
  call void @spin_lock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2579
  %0 = load i32, ptr %type.addr, align 4, !dbg !2580
  %call = call zeroext i1 @kobj_ns_type_is_valid(i32 noundef %0) #18, !dbg !2582
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2583

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2584
  %idxprom = zext i32 %1 to i64, !dbg !2585
  %arrayidx = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom, !dbg !2585
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2585
  %tobool = icmp ne ptr %2, null, !dbg !2585
  br i1 %tobool, label %if.then, label %if.end, !dbg !2586

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %type.addr, align 4, !dbg !2587
  %idxprom1 = zext i32 %3 to i64, !dbg !2588
  %arrayidx2 = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom1, !dbg !2588
  %4 = load ptr, ptr %arrayidx2, align 8, !dbg !2588
  %grab_current_ns = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %4, i32 0, i32 2, !dbg !2589
  %5 = load ptr, ptr %grab_current_ns, align 8, !dbg !2589
  %call3 = call ptr %5() #18, !dbg !2588
  store ptr %call3, ptr %ns, align 8, !dbg !2590
  br label %if.end, !dbg !2591

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @spin_unlock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2592
  %6 = load ptr, ptr %ns, align 8, !dbg !2593
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #17, !dbg !2594
  ret ptr %6, !dbg !2595
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobj_ns_netlink(i32 noundef %type, ptr noundef %sk) #0 align 16 !dbg !2596 {
entry:
  %type.addr = alloca i32, align 4
  %sk.addr = alloca ptr, align 8
  %ns = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2600, metadata !DIExpression()), !dbg !2603
  store ptr %sk, ptr %sk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sk.addr, metadata !2601, metadata !DIExpression()), !dbg !2604
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #17, !dbg !2605
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !2602, metadata !DIExpression()), !dbg !2606
  store ptr null, ptr %ns, align 8, !dbg !2606
  call void @spin_lock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2607
  %0 = load i32, ptr %type.addr, align 4, !dbg !2608
  %call = call zeroext i1 @kobj_ns_type_is_valid(i32 noundef %0) #18, !dbg !2610
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2611

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2612
  %idxprom = zext i32 %1 to i64, !dbg !2613
  %arrayidx = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom, !dbg !2613
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2613
  %tobool = icmp ne ptr %2, null, !dbg !2613
  br i1 %tobool, label %if.then, label %if.end, !dbg !2614

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %type.addr, align 4, !dbg !2615
  %idxprom1 = zext i32 %3 to i64, !dbg !2616
  %arrayidx2 = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom1, !dbg !2616
  %4 = load ptr, ptr %arrayidx2, align 8, !dbg !2616
  %netlink_ns = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %4, i32 0, i32 3, !dbg !2617
  %5 = load ptr, ptr %netlink_ns, align 8, !dbg !2617
  %6 = load ptr, ptr %sk.addr, align 8, !dbg !2618
  %call3 = call ptr %5(ptr noundef %6) #18, !dbg !2616
  store ptr %call3, ptr %ns, align 8, !dbg !2619
  br label %if.end, !dbg !2620

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @spin_unlock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2621
  %7 = load ptr, ptr %ns, align 8, !dbg !2622
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #17, !dbg !2623
  ret ptr %7, !dbg !2624
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @kobj_ns_initial(i32 noundef %type) #0 align 16 !dbg !2625 {
entry:
  %type.addr = alloca i32, align 4
  %ns = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #17, !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !2630, metadata !DIExpression()), !dbg !2633
  store ptr null, ptr %ns, align 8, !dbg !2633
  call void @spin_lock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2634
  %0 = load i32, ptr %type.addr, align 4, !dbg !2635
  %call = call zeroext i1 @kobj_ns_type_is_valid(i32 noundef %0) #18, !dbg !2637
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2638

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2639
  %idxprom = zext i32 %1 to i64, !dbg !2640
  %arrayidx = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom, !dbg !2640
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2640
  %tobool = icmp ne ptr %2, null, !dbg !2640
  br i1 %tobool, label %if.then, label %if.end, !dbg !2641

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr %type.addr, align 4, !dbg !2642
  %idxprom1 = zext i32 %3 to i64, !dbg !2643
  %arrayidx2 = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom1, !dbg !2643
  %4 = load ptr, ptr %arrayidx2, align 8, !dbg !2643
  %initial_ns = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %4, i32 0, i32 4, !dbg !2644
  %5 = load ptr, ptr %initial_ns, align 8, !dbg !2644
  %call3 = call ptr %5() #18, !dbg !2643
  store ptr %call3, ptr %ns, align 8, !dbg !2645
  br label %if.end, !dbg !2646

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @spin_unlock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2647
  %6 = load ptr, ptr %ns, align 8, !dbg !2648
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #17, !dbg !2649
  ret ptr %6, !dbg !2650
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kobj_ns_drop(i32 noundef %type, ptr noundef %ns) #0 align 16 !dbg !2651 {
entry:
  %type.addr = alloca i32, align 4
  %ns.addr = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2655, metadata !DIExpression()), !dbg !2657
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !2656, metadata !DIExpression()), !dbg !2658
  call void @spin_lock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2659
  %0 = load i32, ptr %type.addr, align 4, !dbg !2660
  %call = call zeroext i1 @kobj_ns_type_is_valid(i32 noundef %0) #18, !dbg !2662
  br i1 %call, label %land.lhs.true, label %if.end, !dbg !2663

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2664
  %idxprom = zext i32 %1 to i64, !dbg !2665
  %arrayidx = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom, !dbg !2665
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2665
  %tobool = icmp ne ptr %2, null, !dbg !2665
  br i1 %tobool, label %land.lhs.true1, label %if.end, !dbg !2666

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %type.addr, align 4, !dbg !2667
  %idxprom2 = zext i32 %3 to i64, !dbg !2668
  %arrayidx3 = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom2, !dbg !2668
  %4 = load ptr, ptr %arrayidx3, align 8, !dbg !2668
  %drop_ns = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %4, i32 0, i32 5, !dbg !2669
  %5 = load ptr, ptr %drop_ns, align 8, !dbg !2669
  %tobool4 = icmp ne ptr %5, null, !dbg !2668
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2670

if.then:                                          ; preds = %land.lhs.true1
  %6 = load i32, ptr %type.addr, align 4, !dbg !2671
  %idxprom5 = zext i32 %6 to i64, !dbg !2672
  %arrayidx6 = getelementptr [2 x ptr], ptr @kobj_ns_ops_tbl, i64 0, i64 %idxprom5, !dbg !2672
  %7 = load ptr, ptr %arrayidx6, align 8, !dbg !2672
  %drop_ns7 = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %7, i32 0, i32 5, !dbg !2673
  %8 = load ptr, ptr %drop_ns7, align 8, !dbg !2673
  %9 = load ptr, ptr %ns.addr, align 8, !dbg !2674
  call void %8(ptr noundef %9) #18, !dbg !2672
  br label %if.end, !dbg !2672

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  call void @spin_unlock(ptr noundef @kobj_ns_type_lock) #18, !dbg !2675
  ret void, !dbg !2676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_init(ptr noundef %kref) #8 align 16 !dbg !2677 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !2679, metadata !DIExpression()), !dbg !2680
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !2681
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !2682
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #18, !dbg !2683
  ret void, !dbg !2684
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #8 align 16 !dbg !2685 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2690, metadata !DIExpression()), !dbg !2692
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2691, metadata !DIExpression()), !dbg !2693
  %0 = load ptr, ptr %r.addr, align 8, !dbg !2694
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !2695
  %1 = load i32, ptr %n.addr, align 4, !dbg !2696
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #18, !dbg !2697
  ret void, !dbg !2698
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #11 align 16 !dbg !2699 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2705, metadata !DIExpression()), !dbg !2707
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2706, metadata !DIExpression()), !dbg !2708
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2709
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !2710
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2711
  %2 = load i32, ptr %i.addr, align 4, !dbg !2712
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !2713
  ret void, !dbg !2714
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !2715 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2723, metadata !DIExpression()), !dbg !2725
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2724, metadata !DIExpression()), !dbg !2726
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2727
  %1 = load i64, ptr %size.addr, align 8, !dbg !2728
  %conv = trunc i64 %1 to i32, !dbg !2728
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !2729
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2730
  %3 = load i64, ptr %size.addr, align 8, !dbg !2730
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !2730
  ret void, !dbg !2731
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #11 align 16 !dbg !2732 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2735, metadata !DIExpression()), !dbg !2737
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2736, metadata !DIExpression()), !dbg !2738
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2739
  %1 = load i32, ptr %i.addr, align 4, !dbg !2740
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !2741
  ret void, !dbg !2742
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !2743 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2748, metadata !DIExpression()), !dbg !2750
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2749, metadata !DIExpression()), !dbg !2751
  ret i1 true, !dbg !2752
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !2753 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2758, metadata !DIExpression()), !dbg !2761
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2759, metadata !DIExpression()), !dbg !2762
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2760, metadata !DIExpression()), !dbg !2763
  ret void, !dbg !2764
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #11 align 16 !dbg !2765 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2768, metadata !DIExpression()), !dbg !2770
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2769, metadata !DIExpression()), !dbg !2771
  br label %do.body, !dbg !2772

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !2773
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2773
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2773
  store volatile i32 %0, ptr %counter, align 4, !dbg !2773
  br label %do.end, !dbg !2773

do.end:                                           ; preds = %do.body
  ret void, !dbg !2775
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2776 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !2777 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2781, metadata !DIExpression()), !dbg !2783
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2782, metadata !DIExpression()), !dbg !2784
  %0 = load i64, ptr %size.addr, align 8, !dbg !2785
  %tobool = icmp ne i64 %0, 0, !dbg !2785
  br i1 %tobool, label %if.end, label %if.then, !dbg !2787

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2788
  br label %return, !dbg !2788

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2789
  %cmp = icmp ule i64 %1, 8, !dbg !2791
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2792

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2793
  br label %return, !dbg !2793

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2794
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2796
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2797

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2798
  %cmp4 = icmp ule i64 %3, 96, !dbg !2799
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2800

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2801
  br label %return, !dbg !2801

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2802
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2804
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2805

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2806
  %cmp9 = icmp ule i64 %5, 192, !dbg !2807
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2808

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2809
  br label %return, !dbg !2809

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2810
  %cmp12 = icmp ule i64 %6, 8, !dbg !2812
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2813

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2814
  br label %return, !dbg !2814

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2815
  %cmp15 = icmp ule i64 %7, 16, !dbg !2817
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2818

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2819
  br label %return, !dbg !2819

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2820
  %cmp18 = icmp ule i64 %8, 32, !dbg !2822
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2823

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2824
  br label %return, !dbg !2824

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2825
  %cmp21 = icmp ule i64 %9, 64, !dbg !2827
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2828

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2829
  br label %return, !dbg !2829

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2830
  %cmp24 = icmp ule i64 %10, 128, !dbg !2832
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2833

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2834
  br label %return, !dbg !2834

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2835
  %cmp27 = icmp ule i64 %11, 256, !dbg !2837
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2838

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2839
  br label %return, !dbg !2839

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2840
  %cmp30 = icmp ule i64 %12, 512, !dbg !2842
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2843

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2844
  br label %return, !dbg !2844

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2845
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2847
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2848

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2849
  br label %return, !dbg !2849

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2850
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2852
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2853

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2854
  br label %return, !dbg !2854

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2855
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2857
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2858

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2859
  br label %return, !dbg !2859

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2860
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2862
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2863

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2864
  br label %return, !dbg !2864

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2865
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2867
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2868

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2869
  br label %return, !dbg !2869

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2870
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2872
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2873

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2874
  br label %return, !dbg !2874

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2875
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2877
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2878

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2879
  br label %return, !dbg !2879

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2880
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2882
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2883

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2884
  br label %return, !dbg !2884

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2885
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2887
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2888

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2889
  br label %return, !dbg !2889

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2890
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2892
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2893

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2894
  br label %return, !dbg !2894

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2895
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2897
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2898

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2899
  br label %return, !dbg !2899

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2900
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2902
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2903

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2904
  br label %return, !dbg !2904

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2905, !range !2567, !noundef !296
  %tobool69 = trunc i8 %25 to i1, !dbg !2905
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2907

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2908

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_190() #22, !dbg !2909, !srcloc !2912
  unreachable, !dbg !2909

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2913

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2914

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2915

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2917

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2915

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.14, i32 480, i32 0, i64 12) #17, !dbg !2919, !srcloc !2921
  br label %do.end75, !dbg !2919

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2915

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2922
  br label %return, !dbg !2922

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2923
  ret i32 %26, !dbg !2923
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2924 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !2930 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2934, metadata !DIExpression()), !dbg !2936
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2935, metadata !DIExpression()), !dbg !2937
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2938
  %and = and i32 %0, 17, !dbg !2938
  %cmp = icmp eq i32 %and, 0, !dbg !2938
  %lnot = xor i1 %cmp, true, !dbg !2938
  %lnot1 = xor i1 %lnot, true, !dbg !2938
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2938
  %conv = sext i32 %lnot.ext to i64, !dbg !2938
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2938
  %tobool = icmp ne i64 %expval, 0, !dbg !2938
  br i1 %tobool, label %if.then, label %if.end, !dbg !2940

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2941
  br label %return, !dbg !2941

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2942
  %and2 = and i32 %1, 1, !dbg !2944
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2944
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2945

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2946
  br label %return, !dbg !2946

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2947
  br label %return, !dbg !2947

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2949
  ret i32 %2, !dbg !2949
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2950 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2951 dso_local void @__compiletime_assert_190() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_ktype(ptr noundef %kobj) #8 align 16 !dbg !2954 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2958, metadata !DIExpression()), !dbg !2959
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2960
  %ktype = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4, !dbg !2961
  %1 = load ptr, ptr %ktype, align 8, !dbg !2961
  ret ptr %1, !dbg !2962
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2963 dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2966 dso_local void @sysfs_remove_dir(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sysfs_put(ptr noundef %kn) #8 align 16 !dbg !2967 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !2971, metadata !DIExpression()), !dbg !2972
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !2973
  call void @kernfs_put(ptr noundef %0) #18, !dbg !2974
  ret void, !dbg !2975
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kobj_kset_leave(ptr noundef %kobj) #0 align 16 !dbg !2976 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2978, metadata !DIExpression()), !dbg !2979
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2980
  %kset = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 3, !dbg !2982
  %1 = load ptr, ptr %kset, align 8, !dbg !2982
  %tobool = icmp ne ptr %1, null, !dbg !2980
  br i1 %tobool, label %if.end, label %if.then, !dbg !2983

if.then:                                          ; preds = %entry
  br label %return, !dbg !2984

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !2985
  %kset1 = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 3, !dbg !2986
  %3 = load ptr, ptr %kset1, align 8, !dbg !2986
  %list_lock = getelementptr inbounds %struct.kset, ptr %3, i32 0, i32 1, !dbg !2987
  call void @spin_lock(ptr noundef %list_lock) #18, !dbg !2988
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !2989
  %entry2 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 1, !dbg !2990
  call void @list_del_init(ptr noundef %entry2) #18, !dbg !2991
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !2992
  %kset3 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 3, !dbg !2993
  %6 = load ptr, ptr %kset3, align 8, !dbg !2993
  %list_lock4 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 1, !dbg !2994
  call void @spin_unlock(ptr noundef %list_lock4) #18, !dbg !2995
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !2996
  %kset5 = getelementptr inbounds %struct.kobject, ptr %7, i32 0, i32 3, !dbg !2997
  %8 = load ptr, ptr %kset5, align 8, !dbg !2997
  call void @kset_put(ptr noundef %8) #18, !dbg !2998
  br label %return, !dbg !2999

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2999
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3000 dso_local void @kernfs_put(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #8 align 16 !dbg !3001 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3003, metadata !DIExpression()), !dbg !3004
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3005
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !3006
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3007
  call void @INIT_LIST_HEAD(ptr noundef %1) #18, !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kset_put(ptr noundef %k) #8 align 16 !dbg !3010 {
entry:
  %k.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !3012, metadata !DIExpression()), !dbg !3013
  %0 = load ptr, ptr %k.addr, align 8, !dbg !3014
  %kobj = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, !dbg !3015
  call void @kobject_put(ptr noundef %kobj) #18, !dbg !3016
  ret void, !dbg !3017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #8 align 16 !dbg !3018 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3020, metadata !DIExpression()), !dbg !3021
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3022
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !3024
  br i1 %call, label %if.end, label %if.then, !dbg !3025

if.then:                                          ; preds = %entry
  br label %return, !dbg !3026

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3027
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3028
  %2 = load ptr, ptr %prev, align 8, !dbg !3028
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3029
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3030
  %4 = load ptr, ptr %next, align 8, !dbg !3030
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !3031
  br label %return, !dbg !3032

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3032
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #8 align 16 !dbg !3033 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3037, metadata !DIExpression()), !dbg !3038
  ret i1 true, !dbg !3039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !3040 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3044, metadata !DIExpression()), !dbg !3046
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3045, metadata !DIExpression()), !dbg !3047
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3048
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3049
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3050
  store ptr %0, ptr %prev1, align 8, !dbg !3051
  br label %do.body, !dbg !3052

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3053

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3055

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3053

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3057
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3057
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3057
  store volatile ptr %2, ptr %next4, align 8, !dbg !3057
  br label %do.end5, !dbg !3057

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3053

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3059
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #8 align 16 !dbg !3060 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3064, metadata !DIExpression()), !dbg !3065
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3066
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #18, !dbg !3067
  ret void, !dbg !3068
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !3069 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3073, metadata !DIExpression()), !dbg !3075
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3074, metadata !DIExpression()), !dbg !3076
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3077
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3078
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #18, !dbg !3079
  ret void, !dbg !3080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !3081 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3085, metadata !DIExpression()), !dbg !3089
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3086, metadata !DIExpression()), !dbg !3090
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3087, metadata !DIExpression()), !dbg !3091
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !3092
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3088, metadata !DIExpression()), !dbg !3093
  %0 = load i32, ptr %i.addr, align 4, !dbg !3094
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3095
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3096
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #18, !dbg !3097
  store i32 %call, ptr %old, align 4, !dbg !3093
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3098
  %tobool = icmp ne ptr %2, null, !dbg !3098
  br i1 %tobool, label %if.then, label %if.end, !dbg !3100

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3101
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3102
  store i32 %3, ptr %4, align 4, !dbg !3103
  br label %if.end, !dbg !3104

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3105
  %tobool1 = icmp ne i32 %5, 0, !dbg !3105
  %lnot = xor i1 %tobool1, true, !dbg !3105
  %lnot2 = xor i1 %lnot, true, !dbg !3105
  %lnot3 = xor i1 %lnot2, true, !dbg !3105
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3105
  %conv = sext i32 %lnot.ext to i64, !dbg !3105
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3105
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3105
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !3107

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !3108
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #18, !dbg !3109
  br label %if.end18, !dbg !3109

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !3110
  %cmp = icmp slt i32 %7, 0, !dbg !3110
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3110

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !3110
  %9 = load i32, ptr %i.addr, align 4, !dbg !3110
  %add = add i32 %8, %9, !dbg !3110
  %cmp7 = icmp slt i32 %add, 0, !dbg !3110
  br label %lor.end, !dbg !3110

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !3110
  %lnot11 = xor i1 %lnot9, true, !dbg !3110
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3110
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !3110
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !3110
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !3110
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3112

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3113
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #18, !dbg !3114
  br label %if.end17, !dbg !3114

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !3115
  ret void, !dbg !3115
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #11 align 16 !dbg !3116 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3120, metadata !DIExpression()), !dbg !3122
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3121, metadata !DIExpression()), !dbg !3123
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3124
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !3125
  %1 = load i32, ptr %i.addr, align 4, !dbg !3126
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3127
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #18, !dbg !3128
  ret i32 %call, !dbg !3129
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3130 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !3133 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3135, metadata !DIExpression()), !dbg !3137
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3136, metadata !DIExpression()), !dbg !3138
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3139
  %1 = load i64, ptr %size.addr, align 8, !dbg !3140
  %conv = trunc i64 %1 to i32, !dbg !3140
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !3141
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3142
  %3 = load i64, ptr %size.addr, align 8, !dbg !3142
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !3142
  ret void, !dbg !3143
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #11 align 16 !dbg !3144 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3146, metadata !DIExpression()), !dbg !3148
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3147, metadata !DIExpression()), !dbg !3149
  %0 = load i32, ptr %i.addr, align 4, !dbg !3150
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3151
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #18, !dbg !3152
  ret i32 %call, !dbg !3153
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #11 align 16 !dbg !3154 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3156, metadata !DIExpression()), !dbg !3160
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3157, metadata !DIExpression()), !dbg !3161
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !3162
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3158, metadata !DIExpression()), !dbg !3162
  %0 = load i32, ptr %i.addr, align 4, !dbg !3162
  store i32 %0, ptr %__ret, align 4, !dbg !3162
  %1 = load i32, ptr %__ret, align 4, !dbg !3162
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3162
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3162
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !3162, !srcloc !3163
  store i32 %3, ptr %__ret, align 4, !dbg !3162
  %4 = load i32, ptr %__ret, align 4, !dbg !3162
  store i32 %4, ptr %tmp, align 4, !dbg !3162
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !3164
  %5 = load i32, ptr %tmp, align 4, !dbg !3162
  ret i32 %5, !dbg !3165
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_inc_not_zero(ptr noundef %r) #8 align 16 !dbg !3166 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3170, metadata !DIExpression()), !dbg !3171
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3172
  %call = call zeroext i1 @__refcount_inc_not_zero(ptr noundef %0, ptr noundef null) #18, !dbg !3173
  ret i1 %call, !dbg !3174
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !3175 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3179, metadata !DIExpression()), !dbg !3181
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3180, metadata !DIExpression()), !dbg !3182
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3183
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3184
  %call = call zeroext i1 @__refcount_add_not_zero(i32 noundef 1, ptr noundef %0, ptr noundef %1) #18, !dbg !3185
  ret i1 %call, !dbg !3186
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !3187 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3191, metadata !DIExpression()), !dbg !3195
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3192, metadata !DIExpression()), !dbg !3196
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3193, metadata !DIExpression()), !dbg !3197
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !3198
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3194, metadata !DIExpression()), !dbg !3199
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3200
  %call = call i32 @refcount_read(ptr noundef %0) #18, !dbg !3201
  store i32 %call, ptr %old, align 4, !dbg !3199
  br label %do.body, !dbg !3202

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %old, align 4, !dbg !3203
  %tobool = icmp ne i32 %1, 0, !dbg !3203
  br i1 %tobool, label %if.end, label %if.then, !dbg !3206

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !3207

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !3208

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %r.addr, align 8, !dbg !3209
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %2, i32 0, i32 0, !dbg !3210
  %3 = load i32, ptr %old, align 4, !dbg !3211
  %4 = load i32, ptr %i.addr, align 4, !dbg !3212
  %add = add i32 %3, %4, !dbg !3213
  %call1 = call zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %refs, ptr noundef %old, i32 noundef %add) #18, !dbg !3214
  %lnot = xor i1 %call1, true, !dbg !3215
  br i1 %lnot, label %do.body, label %do.end, !dbg !3208, !llvm.loop !3216

do.end:                                           ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %oldp.addr, align 8, !dbg !3218
  %tobool2 = icmp ne ptr %5, null, !dbg !3218
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3220

if.then3:                                         ; preds = %do.end
  %6 = load i32, ptr %old, align 4, !dbg !3221
  %7 = load ptr, ptr %oldp.addr, align 8, !dbg !3222
  store i32 %6, ptr %7, align 4, !dbg !3223
  br label %if.end4, !dbg !3224

if.end4:                                          ; preds = %if.then3, %do.end
  %8 = load i32, ptr %old, align 4, !dbg !3225
  %cmp = icmp slt i32 %8, 0, !dbg !3225
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3225

lor.rhs:                                          ; preds = %if.end4
  %9 = load i32, ptr %old, align 4, !dbg !3225
  %10 = load i32, ptr %i.addr, align 4, !dbg !3225
  %add5 = add i32 %9, %10, !dbg !3225
  %cmp6 = icmp slt i32 %add5, 0, !dbg !3225
  br label %lor.end, !dbg !3225

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %11 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %11, true, !dbg !3225
  %lnot8 = xor i1 %lnot7, true, !dbg !3225
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !3225
  %conv = sext i32 %lnot.ext to i64, !dbg !3225
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3225
  %tobool9 = icmp ne i64 %expval, 0, !dbg !3225
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3227

if.then10:                                        ; preds = %lor.end
  %12 = load ptr, ptr %r.addr, align 8, !dbg !3228
  call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #18, !dbg !3229
  br label %if.end11, !dbg !3229

if.end11:                                         ; preds = %if.then10, %lor.end
  %13 = load i32, ptr %old, align 4, !dbg !3230
  %tobool12 = icmp ne i32 %13, 0, !dbg !3230
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !3231
  ret i1 %tobool12, !dbg !3232
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #8 align 16 !dbg !3233 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3239, metadata !DIExpression()), !dbg !3240
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3241
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !3242
  %call = call i32 @atomic_read(ptr noundef %refs) #18, !dbg !3243
  ret i32 %call, !dbg !3244
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #11 align 16 !dbg !3245 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3249, metadata !DIExpression()), !dbg !3252
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3250, metadata !DIExpression()), !dbg !3253
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3251, metadata !DIExpression()), !dbg !3254
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3255
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !3256
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3257
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #18, !dbg !3258
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3259
  %3 = load ptr, ptr %old.addr, align 8, !dbg !3260
  %4 = load i32, ptr %new.addr, align 4, !dbg !3261
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %2, ptr noundef %3, i32 noundef %4) #18, !dbg !3262
  ret i1 %call, !dbg !3263
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #11 align 16 !dbg !3264 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3270, metadata !DIExpression()), !dbg !3271
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3272
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #18, !dbg !3273
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3274
  %call = call i32 @raw_atomic_read(ptr noundef %1) #18, !dbg !3275
  ret i32 %call, !dbg !3276
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !3277 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3279, metadata !DIExpression()), !dbg !3281
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3280, metadata !DIExpression()), !dbg !3282
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3283
  %1 = load i64, ptr %size.addr, align 8, !dbg !3284
  %conv = trunc i64 %1 to i32, !dbg !3284
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !3285
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3286
  %3 = load i64, ptr %size.addr, align 8, !dbg !3286
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !3286
  ret void, !dbg !3287
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #11 align 16 !dbg !3288 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3290, metadata !DIExpression()), !dbg !3291
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3292
  %call = call i32 @arch_atomic_read(ptr noundef %0) #18, !dbg !3293
  ret i32 %call, !dbg !3294
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !3295 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3297, metadata !DIExpression()), !dbg !3299
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3298, metadata !DIExpression()), !dbg !3300
  ret i1 true, !dbg !3301
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #11 align 16 !dbg !3302 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3304, metadata !DIExpression()), !dbg !3305
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3306
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !3306
  %1 = load volatile i32, ptr %counter, align 4, !dbg !3306
  ret i32 %1, !dbg !3307
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_relaxed(ptr noundef %v, ptr noundef %old, i32 noundef %new) #11 align 16 !dbg !3308 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3310, metadata !DIExpression()), !dbg !3313
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3311, metadata !DIExpression()), !dbg !3314
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3312, metadata !DIExpression()), !dbg !3315
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3316
  %1 = load ptr, ptr %old.addr, align 8, !dbg !3317
  %2 = load i32, ptr %new.addr, align 4, !dbg !3318
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18, !dbg !3319
  ret i1 %call, !dbg !3320
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #11 align 16 !dbg !3321 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3323, metadata !DIExpression()), !dbg !3332
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !3324, metadata !DIExpression()), !dbg !3333
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3325, metadata !DIExpression()), !dbg !3334
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #17, !dbg !3335
  call void @llvm.dbg.declare(metadata ptr %success, metadata !3326, metadata !DIExpression()), !dbg !3335
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #17, !dbg !3335
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !3328, metadata !DIExpression()), !dbg !3335
  %0 = load ptr, ptr %old.addr, align 8, !dbg !3335
  store ptr %0, ptr %_old, align 8, !dbg !3335
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #17, !dbg !3335
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !3329, metadata !DIExpression()), !dbg !3335
  %1 = load ptr, ptr %_old, align 8, !dbg !3335
  %2 = load i32, ptr %1, align 4, !dbg !3335
  store i32 %2, ptr %__old, align 4, !dbg !3335
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #17, !dbg !3335
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !3330, metadata !DIExpression()), !dbg !3335
  %3 = load i32, ptr %new.addr, align 4, !dbg !3335
  store i32 %3, ptr %__new, align 4, !dbg !3335
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #17, !dbg !3335
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !3331, metadata !DIExpression()), !dbg !3335
  %4 = load ptr, ptr %v.addr, align 8, !dbg !3335
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !3335
  store ptr %counter, ptr %__ptr, align 8, !dbg !3335
  %5 = load ptr, ptr %__ptr, align 8, !dbg !3335
  %6 = load i32, ptr %__old, align 4, !dbg !3335
  %7 = load i32, ptr %__new, align 4, !dbg !3335
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #17, !dbg !3335, !srcloc !3336
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !3335
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !3335
  %9 = icmp ult i8 %asmresult, 2, !dbg !3335
  call void @llvm.assume(i1 %9), !dbg !3335
  store i8 %asmresult, ptr %success, align 1, !dbg !3335
  store i32 %asmresult1, ptr %__old, align 4, !dbg !3335
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #17, !dbg !3335
  %10 = load i8, ptr %success, align 1, !dbg !3337, !range !2567, !noundef !296
  %tobool = trunc i8 %10 to i1, !dbg !3337
  %lnot = xor i1 %tobool, true, !dbg !3337
  %lnot2 = xor i1 %lnot, true, !dbg !3337
  %lnot3 = xor i1 %lnot2, true, !dbg !3337
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3337
  %conv = sext i32 %lnot.ext to i64, !dbg !3337
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3337
  %tobool4 = icmp ne i64 %expval, 0, !dbg !3337
  br i1 %tobool4, label %if.then, label %if.end, !dbg !3335

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !3337
  %12 = load ptr, ptr %_old, align 8, !dbg !3337
  store i32 %11, ptr %12, align 4, !dbg !3337
  br label %if.end, !dbg !3337

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !3335, !range !2567, !noundef !296
  %tobool5 = trunc i8 %13 to i1, !dbg !3335
  %lnot6 = xor i1 %tobool5, true, !dbg !3335
  %lnot8 = xor i1 %lnot6, true, !dbg !3335
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3335
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !3335
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !3335
  store i64 %expval11, ptr %tmp, align 8, !dbg !3337
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #17, !dbg !3339
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #17, !dbg !3339
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #17, !dbg !3339
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #17, !dbg !3339
  %14 = load i64, ptr %tmp, align 8, !dbg !3335
  %tobool12 = icmp ne i64 %14, 0, !dbg !3339
  ret i1 %tobool12, !dbg !3340
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #8 align 16 !dbg !3341 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3343, metadata !DIExpression()), !dbg !3344
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3345
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #18, !dbg !3346
  ret i1 %call, !dbg !3347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !3348 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3350, metadata !DIExpression()), !dbg !3352
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3351, metadata !DIExpression()), !dbg !3353
  %0 = load ptr, ptr %r.addr, align 8, !dbg !3354
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !3355
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #18, !dbg !3356
  ret i1 %call, !dbg !3357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #8 align 16 !dbg !3358 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3360, metadata !DIExpression()), !dbg !3364
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !3361, metadata !DIExpression()), !dbg !3365
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !3362, metadata !DIExpression()), !dbg !3366
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %old, metadata !3363, metadata !DIExpression()), !dbg !3368
  %0 = load i32, ptr %i.addr, align 4, !dbg !3369
  %1 = load ptr, ptr %r.addr, align 8, !dbg !3370
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !3371
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #18, !dbg !3372
  store i32 %call, ptr %old, align 4, !dbg !3368
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !3373
  %tobool = icmp ne ptr %2, null, !dbg !3373
  br i1 %tobool, label %if.then, label %if.end, !dbg !3375

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !3376
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !3377
  store i32 %3, ptr %4, align 4, !dbg !3378
  br label %if.end, !dbg !3379

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !3380
  %6 = load i32, ptr %i.addr, align 4, !dbg !3382
  %cmp = icmp eq i32 %5, %6, !dbg !3383
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !3384

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !3385

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !3387

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !3389

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !3389

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !3387

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !3391

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !3393

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !3393

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !3391, !srcloc !3395
  br label %do.cond7, !dbg !3391

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !3391

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !3387

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !3387

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !3396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3396

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !3397
  %cmp12 = icmp slt i32 %7, 0, !dbg !3397
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !3397

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !3397
  %9 = load i32, ptr %i.addr, align 4, !dbg !3397
  %sub = sub i32 %8, %9, !dbg !3397
  %cmp13 = icmp slt i32 %sub, 0, !dbg !3397
  br label %lor.end, !dbg !3397

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !3397
  %lnot14 = xor i1 %lnot, true, !dbg !3397
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !3397
  %conv = sext i32 %lnot.ext to i64, !dbg !3397
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3397
  %tobool15 = icmp ne i64 %expval, 0, !dbg !3397
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !3399

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !3400
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #18, !dbg !3401
  br label %if.end17, !dbg !3401

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !3402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3402

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !3403
  %12 = load i1, ptr %retval, align 1, !dbg !3403
  ret i1 %12, !dbg !3403
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #11 align 16 !dbg !3404 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3406, metadata !DIExpression()), !dbg !3408
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3407, metadata !DIExpression()), !dbg !3409
  br label %do.body, !dbg !3410

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3411

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3413
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !3414
  %1 = load i32, ptr %i.addr, align 4, !dbg !3415
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3416
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #18, !dbg !3417
  ret i32 %call, !dbg !3418
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #11 align 16 !dbg !3419 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3421, metadata !DIExpression()), !dbg !3423
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3422, metadata !DIExpression()), !dbg !3424
  %0 = load i32, ptr %i.addr, align 4, !dbg !3425
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3426
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #18, !dbg !3427
  ret i32 %call, !dbg !3428
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #11 align 16 !dbg !3429 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !3431, metadata !DIExpression()), !dbg !3435
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3432, metadata !DIExpression()), !dbg !3436
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !3437
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !3433, metadata !DIExpression()), !dbg !3437
  %0 = load i32, ptr %i.addr, align 4, !dbg !3437
  %sub = sub i32 0, %0, !dbg !3437
  store i32 %sub, ptr %__ret, align 4, !dbg !3437
  %1 = load i32, ptr %__ret, align 4, !dbg !3437
  %2 = load ptr, ptr %v.addr, align 8, !dbg !3437
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !3437
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !3437, !srcloc !3438
  store i32 %3, ptr %__ret, align 4, !dbg !3437
  %4 = load i32, ptr %__ret, align 4, !dbg !3437
  store i32 %4, ptr %tmp, align 4, !dbg !3437
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !3439
  %5 = load i32, ptr %tmp, align 4, !dbg !3437
  ret i32 %5, !dbg !3440
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kobject_cleanup(ptr noundef %kobj) #0 align 16 !dbg !3441 {
entry:
  %kobj.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %t = alloca ptr, align 8
  %name = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3443, metadata !DIExpression()), !dbg !3447
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #17, !dbg !3448
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !3444, metadata !DIExpression()), !dbg !3449
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3450
  %parent1 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2, !dbg !3451
  %1 = load ptr, ptr %parent1, align 8, !dbg !3451
  store ptr %1, ptr %parent, align 8, !dbg !3449
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #17, !dbg !3452
  call void @llvm.dbg.declare(metadata ptr %t, metadata !3445, metadata !DIExpression()), !dbg !3453
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !3454
  %call = call ptr @get_ktype(ptr noundef %2) #18, !dbg !3455
  store ptr %call, ptr %t, align 8, !dbg !3453
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #17, !dbg !3456
  call void @llvm.dbg.declare(metadata ptr %name, metadata !3446, metadata !DIExpression()), !dbg !3457
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !3458
  %name2 = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 0, !dbg !3459
  %4 = load ptr, ptr %name2, align 8, !dbg !3459
  store ptr %4, ptr %name, align 8, !dbg !3457
  store i32 0, ptr %tmp, align 4, !dbg !3460
  %5 = load i32, ptr %tmp, align 4, !dbg !3463
  %6 = load ptr, ptr %t, align 8, !dbg !3464
  %tobool = icmp ne ptr %6, null, !dbg !3464
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3466

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %t, align 8, !dbg !3467
  %release = getelementptr inbounds %struct.kobj_type, ptr %7, i32 0, i32 0, !dbg !3468
  %8 = load ptr, ptr %release, align 8, !dbg !3468
  %tobool3 = icmp ne ptr %8, null, !dbg !3467
  br i1 %tobool3, label %if.end, label %if.then, !dbg !3469

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %tmp4, align 4, !dbg !3470
  %9 = load i32, ptr %tmp4, align 4, !dbg !3473
  br label %if.end, !dbg !3474

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %kobj.addr, align 8, !dbg !3475
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %10, i32 0, i32 7, !dbg !3477
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !3477
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !3477
  %bf.clear = and i8 %bf.lshr, 1, !dbg !3477
  %bf.cast = zext i8 %bf.clear to i32, !dbg !3477
  %tobool5 = icmp ne i32 %bf.cast, 0, !dbg !3475
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !3478

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %tmp7, align 4, !dbg !3479
  %11 = load i32, ptr %tmp7, align 4, !dbg !3483
  %12 = load ptr, ptr %kobj.addr, align 8, !dbg !3484
  call void @__kobject_del(ptr noundef %12) #18, !dbg !3485
  br label %if.end8, !dbg !3486

if.else:                                          ; preds = %if.end
  store ptr null, ptr %parent, align 8, !dbg !3487
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %13 = load ptr, ptr %t, align 8, !dbg !3489
  %tobool9 = icmp ne ptr %13, null, !dbg !3489
  br i1 %tobool9, label %land.lhs.true10, label %if.end16, !dbg !3491

land.lhs.true10:                                  ; preds = %if.end8
  %14 = load ptr, ptr %t, align 8, !dbg !3492
  %release11 = getelementptr inbounds %struct.kobj_type, ptr %14, i32 0, i32 0, !dbg !3493
  %15 = load ptr, ptr %release11, align 8, !dbg !3493
  %tobool12 = icmp ne ptr %15, null, !dbg !3492
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !3494

if.then13:                                        ; preds = %land.lhs.true10
  store i32 0, ptr %tmp14, align 4, !dbg !3495
  %16 = load i32, ptr %tmp14, align 4, !dbg !3499
  %17 = load ptr, ptr %t, align 8, !dbg !3500
  %release15 = getelementptr inbounds %struct.kobj_type, ptr %17, i32 0, i32 0, !dbg !3501
  %18 = load ptr, ptr %release15, align 8, !dbg !3501
  %19 = load ptr, ptr %kobj.addr, align 8, !dbg !3502
  call void %18(ptr noundef %19) #18, !dbg !3500
  br label %if.end16, !dbg !3503

if.end16:                                         ; preds = %if.then13, %land.lhs.true10, %if.end8
  %20 = load ptr, ptr %name, align 8, !dbg !3504
  %tobool17 = icmp ne ptr %20, null, !dbg !3504
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !3506

if.then18:                                        ; preds = %if.end16
  store i32 0, ptr %tmp19, align 4, !dbg !3507
  %21 = load i32, ptr %tmp19, align 4, !dbg !3511
  %22 = load ptr, ptr %name, align 8, !dbg !3512
  call void @kfree_const(ptr noundef %22) #18, !dbg !3513
  br label %if.end20, !dbg !3514

if.end20:                                         ; preds = %if.then18, %if.end16
  %23 = load ptr, ptr %parent, align 8, !dbg !3515
  call void @kobject_put(ptr noundef %23) #18, !dbg !3516
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #17, !dbg !3517
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #17, !dbg !3517
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #17, !dbg !3517
  ret void, !dbg !3517
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dynamic_kobj_release(ptr noundef %kobj) #0 align 16 !dbg !3518 {
entry:
  %kobj.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3520, metadata !DIExpression()), !dbg !3521
  store i32 0, ptr %tmp, align 4, !dbg !3522
  %0 = load i32, ptr %tmp, align 4, !dbg !3525
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !3526
  call void @kfree(ptr noundef %1) #18, !dbg !3527
  ret void, !dbg !3528
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kobj_kset_join(ptr noundef %kobj) #0 align 16 !dbg !3529 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3531, metadata !DIExpression()), !dbg !3532
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3533
  %kset = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 3, !dbg !3535
  %1 = load ptr, ptr %kset, align 8, !dbg !3535
  %tobool = icmp ne ptr %1, null, !dbg !3533
  br i1 %tobool, label %if.end, label %if.then, !dbg !3536

if.then:                                          ; preds = %entry
  br label %return, !dbg !3537

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !3538
  %kset1 = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 3, !dbg !3539
  %3 = load ptr, ptr %kset1, align 8, !dbg !3539
  %call = call ptr @kset_get(ptr noundef %3) #18, !dbg !3540
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !3541
  %kset2 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 3, !dbg !3542
  %5 = load ptr, ptr %kset2, align 8, !dbg !3542
  %list_lock = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 1, !dbg !3543
  call void @spin_lock(ptr noundef %list_lock) #18, !dbg !3544
  %6 = load ptr, ptr %kobj.addr, align 8, !dbg !3545
  %entry3 = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 1, !dbg !3546
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !3547
  %kset4 = getelementptr inbounds %struct.kobject, ptr %7, i32 0, i32 3, !dbg !3548
  %8 = load ptr, ptr %kset4, align 8, !dbg !3548
  %list = getelementptr inbounds %struct.kset, ptr %8, i32 0, i32 0, !dbg !3549
  call void @list_add_tail(ptr noundef %entry3, ptr noundef %list) #18, !dbg !3550
  %9 = load ptr, ptr %kobj.addr, align 8, !dbg !3551
  %kset5 = getelementptr inbounds %struct.kobject, ptr %9, i32 0, i32 3, !dbg !3552
  %10 = load ptr, ptr %kset5, align 8, !dbg !3552
  %list_lock6 = getelementptr inbounds %struct.kset, ptr %10, i32 0, i32 1, !dbg !3553
  call void @spin_unlock(ptr noundef %list_lock6) #18, !dbg !3554
  br label %return, !dbg !3555

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @create_dir(ptr noundef %kobj) #0 align 16 !dbg !3556 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %ktype = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3558, metadata !DIExpression()), !dbg !3562
  call void @llvm.lifetime.start.p0(i64 8, ptr %ktype) #17, !dbg !3563
  call void @llvm.dbg.declare(metadata ptr %ktype, metadata !3559, metadata !DIExpression()), !dbg !3564
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3565
  %call = call ptr @get_ktype(ptr noundef %0) #18, !dbg !3566
  store ptr %call, ptr %ktype, align 8, !dbg !3564
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #17, !dbg !3567
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !3560, metadata !DIExpression()), !dbg !3568
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !3569
  call void @llvm.dbg.declare(metadata ptr %error, metadata !3561, metadata !DIExpression()), !dbg !3570
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !3571
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !3572
  %call1 = call ptr @kobject_namespace(ptr noundef %2) #18, !dbg !3573
  %call2 = call i32 @sysfs_create_dir_ns(ptr noundef %1, ptr noundef %call1) #18, !dbg !3574
  store i32 %call2, ptr %error, align 4, !dbg !3575
  %3 = load i32, ptr %error, align 4, !dbg !3576
  %tobool = icmp ne i32 %3, 0, !dbg !3576
  br i1 %tobool, label %if.then, label %if.end, !dbg !3578

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %error, align 4, !dbg !3579
  store i32 %4, ptr %retval, align 4, !dbg !3580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3580

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %ktype, align 8, !dbg !3581
  %tobool3 = icmp ne ptr %5, null, !dbg !3581
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !3583

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %kobj.addr, align 8, !dbg !3584
  %7 = load ptr, ptr %ktype, align 8, !dbg !3586
  %default_groups = getelementptr inbounds %struct.kobj_type, ptr %7, i32 0, i32 2, !dbg !3587
  %8 = load ptr, ptr %default_groups, align 8, !dbg !3587
  %call5 = call i32 @sysfs_create_groups(ptr noundef %6, ptr noundef %8) #18, !dbg !3588
  store i32 %call5, ptr %error, align 4, !dbg !3589
  %9 = load i32, ptr %error, align 4, !dbg !3590
  %tobool6 = icmp ne i32 %9, 0, !dbg !3590
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3592

if.then7:                                         ; preds = %if.then4
  %10 = load ptr, ptr %kobj.addr, align 8, !dbg !3593
  call void @sysfs_remove_dir(ptr noundef %10) #18, !dbg !3595
  %11 = load i32, ptr %error, align 4, !dbg !3596
  store i32 %11, ptr %retval, align 4, !dbg !3597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3597

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !3598

if.end9:                                          ; preds = %if.end8, %if.end
  %12 = load ptr, ptr %kobj.addr, align 8, !dbg !3599
  %sd = getelementptr inbounds %struct.kobject, ptr %12, i32 0, i32 5, !dbg !3600
  %13 = load ptr, ptr %sd, align 8, !dbg !3600
  %call10 = call ptr @sysfs_get(ptr noundef %13) #18, !dbg !3601
  %14 = load ptr, ptr %kobj.addr, align 8, !dbg !3602
  %call11 = call ptr @kobj_child_ns_ops(ptr noundef %14) #18, !dbg !3603
  store ptr %call11, ptr %ops, align 8, !dbg !3604
  %15 = load ptr, ptr %ops, align 8, !dbg !3605
  %tobool12 = icmp ne ptr %15, null, !dbg !3605
  br i1 %tobool12, label %if.then13, label %if.end56, !dbg !3607

if.then13:                                        ; preds = %if.end9
  br label %do.body, !dbg !3608

do.body:                                          ; preds = %if.then13
  %16 = load ptr, ptr %ops, align 8, !dbg !3610
  %type = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %16, i32 0, i32 0, !dbg !3610
  %17 = load i32, ptr %type, align 8, !dbg !3610
  %call14 = call zeroext i1 @kobj_ns_type_is_valid(i32 noundef %17) #18, !dbg !3610
  %lnot = xor i1 %call14, true, !dbg !3610
  %lnot15 = xor i1 %lnot, true, !dbg !3610
  %lnot16 = xor i1 %lnot15, true, !dbg !3610
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !3610
  %conv = sext i32 %lnot.ext to i64, !dbg !3610
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3610
  %tobool17 = icmp ne i64 %expval, 0, !dbg !3610
  br i1 %tobool17, label %if.then18, label %if.end26, !dbg !3613

if.then18:                                        ; preds = %do.body
  br label %do.body19, !dbg !3610

do.body19:                                        ; preds = %if.then18
  br label %do.body20, !dbg !3614

do.body20:                                        ; preds = %do.body19
  br label %do.cond, !dbg !3616

do.cond:                                          ; preds = %do.body20
  br label %do.end, !dbg !3616

do.end:                                           ; preds = %do.cond
  br label %do.body21, !dbg !3614

do.body21:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 97, i32 0, i64 12) #17, !dbg !3618, !srcloc !3620
  br label %do.cond22, !dbg !3618

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !3618

do.end23:                                         ; preds = %do.cond22
  unreachable, !dbg !3614

do.cond24:                                        ; No predecessors!
  br label %do.end25, !dbg !3614

do.end25:                                         ; preds = %do.cond24
  br label %if.end26, !dbg !3614

if.end26:                                         ; preds = %do.end25, %do.body
  br label %do.cond27, !dbg !3613

do.cond27:                                        ; preds = %if.end26
  br label %do.end28, !dbg !3613

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !3621

do.body29:                                        ; preds = %do.end28
  %18 = load ptr, ptr %ops, align 8, !dbg !3622
  %type30 = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %18, i32 0, i32 0, !dbg !3622
  %19 = load i32, ptr %type30, align 8, !dbg !3622
  %call31 = call i32 @kobj_ns_type_registered(i32 noundef %19) #18, !dbg !3622
  %tobool32 = icmp ne i32 %call31, 0, !dbg !3622
  %lnot33 = xor i1 %tobool32, true, !dbg !3622
  %lnot35 = xor i1 %lnot33, true, !dbg !3622
  %lnot37 = xor i1 %lnot35, true, !dbg !3622
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !3622
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !3622
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !3622
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !3622
  br i1 %tobool41, label %if.then42, label %if.end52, !dbg !3625

if.then42:                                        ; preds = %do.body29
  br label %do.body43, !dbg !3622

do.body43:                                        ; preds = %if.then42
  br label %do.body44, !dbg !3626

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !3628

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !3628

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !3626

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 98, i32 0, i64 12) #17, !dbg !3630, !srcloc !3632
  br label %do.cond48, !dbg !3630

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !3630

do.end49:                                         ; preds = %do.cond48
  unreachable, !dbg !3626

do.cond50:                                        ; No predecessors!
  br label %do.end51, !dbg !3626

do.end51:                                         ; preds = %do.cond50
  br label %if.end52, !dbg !3626

if.end52:                                         ; preds = %do.end51, %do.body29
  br label %do.cond53, !dbg !3625

do.cond53:                                        ; preds = %if.end52
  br label %do.end54, !dbg !3625

do.end54:                                         ; preds = %do.cond53
  %20 = load ptr, ptr %kobj.addr, align 8, !dbg !3633
  %sd55 = getelementptr inbounds %struct.kobject, ptr %20, i32 0, i32 5, !dbg !3634
  %21 = load ptr, ptr %sd55, align 8, !dbg !3634
  call void @sysfs_enable_ns(ptr noundef %21) #18, !dbg !3635
  br label %if.end56, !dbg !3636

if.end56:                                         ; preds = %do.end54, %if.end9
  store i32 0, ptr %retval, align 4, !dbg !3637
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3637

cleanup:                                          ; preds = %if.end56, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !3638
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #17, !dbg !3638
  call void @llvm.lifetime.end.p0(i64 8, ptr %ktype) #17, !dbg !3638
  %22 = load i32, ptr %retval, align 4, !dbg !3638
  ret i32 %22, !dbg !3638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kset_get(ptr noundef %k) #8 align 16 !dbg !3639 {
entry:
  %k.addr = alloca ptr, align 8
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !3643, metadata !DIExpression()), !dbg !3644
  %0 = load ptr, ptr %k.addr, align 8, !dbg !3645
  %tobool = icmp ne ptr %0, null, !dbg !3645
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3645

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %k.addr, align 8, !dbg !3646
  %kobj = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2, !dbg !3647
  %call = call ptr @kobject_get(ptr noundef %kobj) #18, !dbg !3648
  %call1 = call ptr @to_kset(ptr noundef %call) #18, !dbg !3649
  br label %cond.end, !dbg !3645

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3645

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call1, %cond.true ], [ null, %cond.false ], !dbg !3645
  ret ptr %cond, !dbg !3650
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #8 align 16 !dbg !3651 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3653, metadata !DIExpression()), !dbg !3655
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3654, metadata !DIExpression()), !dbg !3656
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3657
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3658
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3659
  %2 = load ptr, ptr %prev, align 8, !dbg !3659
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3660
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !3661
  ret void, !dbg !3662
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_kset(ptr noundef %kobj) #8 align 16 !dbg !3663 {
entry:
  %kobj.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3667, metadata !DIExpression()), !dbg !3670
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3671
  %tobool = icmp ne ptr %0, null, !dbg !3671
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3671

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !3672
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3668, metadata !DIExpression()), !dbg !3672
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !3672
  store ptr %1, ptr %__mptr, align 8, !dbg !3672
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3672
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !3672
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3672
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !3673
  %3 = load ptr, ptr %tmp, align 8, !dbg !3672
  br label %cond.end, !dbg !3671

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3671

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !3671
  ret ptr %cond, !dbg !3674
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !3675 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3679, metadata !DIExpression()), !dbg !3682
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3680, metadata !DIExpression()), !dbg !3683
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3681, metadata !DIExpression()), !dbg !3684
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3685
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3687
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3688
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !3689
  br i1 %call, label %if.end, label %if.then, !dbg !3690

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3691

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3692
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3693
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3694
  store ptr %3, ptr %prev1, align 8, !dbg !3695
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3696
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3697
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3698
  store ptr %5, ptr %next2, align 8, !dbg !3699
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3700
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3701
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3702
  store ptr %7, ptr %prev3, align 8, !dbg !3703
  br label %do.body, !dbg !3704

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3705

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3707

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3705

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3709
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3709
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3709
  store volatile ptr %9, ptr %next6, align 8, !dbg !3709
  br label %do.end7, !dbg !3709

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3705

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3711
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #8 align 16 !dbg !3712 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3716, metadata !DIExpression()), !dbg !3719
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3717, metadata !DIExpression()), !dbg !3720
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3718, metadata !DIExpression()), !dbg !3721
  ret i1 true, !dbg !3722
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3723 dso_local i32 @sysfs_create_dir_ns(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3726 dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sysfs_get(ptr noundef %kn) #8 align 16 !dbg !3729 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !3733, metadata !DIExpression()), !dbg !3734
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !3735
  call void @kernfs_get(ptr noundef %0) #18, !dbg !3736
  %1 = load ptr, ptr %kn.addr, align 8, !dbg !3737
  ret ptr %1, !dbg !3738
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sysfs_enable_ns(ptr noundef %kn) #8 align 16 !dbg !3739 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !3741, metadata !DIExpression()), !dbg !3742
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !3743
  call void @kernfs_enable_ns(ptr noundef %0) #18, !dbg !3744
  ret void, !dbg !3745
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3746 dso_local void @kernfs_get(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernfs_enable_ns(ptr noundef %kn) #8 align 16 !dbg !3747 {
entry:
  %kn.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on23 = alloca i32, align 4
  %tmp27 = alloca ptr, align 8
  %__flags46 = alloca i32, align 4
  %tmp59 = alloca i64, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !3749, metadata !DIExpression()), !dbg !3760
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3750, metadata !DIExpression()), !dbg !3761
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !3761
  %call = call i32 @kernfs_type(ptr noundef %0) #18, !dbg !3761
  %cmp = icmp ne i32 %call, 1, !dbg !3761
  %lnot = xor i1 %cmp, true, !dbg !3761
  %lnot1 = xor i1 %lnot, true, !dbg !3761
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3761
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3761
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !3762
  %tobool = icmp ne i32 %1, 0, !dbg !3762
  %lnot2 = xor i1 %tobool, true, !dbg !3762
  %lnot4 = xor i1 %lnot2, true, !dbg !3762
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3762
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3762
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3762
  %tobool6 = icmp ne i64 %expval, 0, !dbg !3762
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3761

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3762

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !3763
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3752, metadata !DIExpression()), !dbg !3763
  store i32 2307, ptr %__flags, align 4, !dbg !3763
  br label %do.body7, !dbg !3763

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !3764

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !3764

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !3763

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !3766
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.19, i32 380, i32 %2, i64 12) #17, !dbg !3766, !srcloc !3768
  br label %do.cond9, !dbg !3766

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3766

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3763

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !3769

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !3769

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !3762
  br label %do.cond14, !dbg !3763

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !3763

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !3763

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3761
  %tobool16 = icmp ne i32 %3, 0, !dbg !3761
  %lnot17 = xor i1 %tobool16, true, !dbg !3761
  %lnot19 = xor i1 %lnot17, true, !dbg !3761
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3761
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3761
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !3761
  store i64 %expval22, ptr %tmp, align 8, !dbg !3762
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !3771
  %4 = load i64, ptr %tmp, align 8, !dbg !3761
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on23) #17, !dbg !3772
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on23, metadata !3755, metadata !DIExpression()), !dbg !3772
  br label %do.body24, !dbg !3773

do.body24:                                        ; preds = %if.end
  br label %do.cond25, !dbg !3775

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !3775

do.end26:                                         ; preds = %do.cond25
  %5 = load ptr, ptr %kn.addr, align 8, !dbg !3773
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7, !dbg !3773
  %children = getelementptr inbounds %struct.kernfs_elem_dir, ptr %6, i32 0, i32 1, !dbg !3773
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %children, i32 0, i32 0, !dbg !3773
  %7 = load volatile ptr, ptr %rb_node, align 8, !dbg !3773
  store ptr %7, ptr %tmp27, align 8, !dbg !3775
  %8 = load ptr, ptr %tmp27, align 8, !dbg !3773
  %cmp28 = icmp eq ptr %8, null, !dbg !3772
  %lnot30 = xor i1 %cmp28, true, !dbg !3772
  %lnot32 = xor i1 %lnot30, true, !dbg !3772
  %lnot34 = xor i1 %lnot32, true, !dbg !3772
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !3772
  store i32 %lnot.ext35, ptr %__ret_warn_on23, align 4, !dbg !3772
  %9 = load i32, ptr %__ret_warn_on23, align 4, !dbg !3777
  %tobool36 = icmp ne i32 %9, 0, !dbg !3777
  %lnot37 = xor i1 %tobool36, true, !dbg !3777
  %lnot39 = xor i1 %lnot37, true, !dbg !3777
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !3777
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !3777
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !3777
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !3777
  br i1 %tobool43, label %if.then44, label %if.end58, !dbg !3772

if.then44:                                        ; preds = %do.end26
  br label %do.body45, !dbg !3777

do.body45:                                        ; preds = %if.then44
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags46) #17, !dbg !3778
  call void @llvm.dbg.declare(metadata ptr %__flags46, metadata !3757, metadata !DIExpression()), !dbg !3778
  store i32 2307, ptr %__flags46, align 4, !dbg !3778
  br label %do.body47, !dbg !3778

do.body47:                                        ; preds = %do.body45
  br label %do.cond48, !dbg !3779

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !3779

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !3778

do.body50:                                        ; preds = %do.end49
  %10 = load i32, ptr %__flags46, align 4, !dbg !3781
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.19, i32 381, i32 %10, i64 12) #17, !dbg !3781, !srcloc !3783
  br label %do.cond51, !dbg !3781

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !3781

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !3778

do.body53:                                        ; preds = %do.end52
  br label %do.cond54, !dbg !3784

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !3784

do.end55:                                         ; preds = %do.cond54
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags46) #17, !dbg !3777
  br label %do.cond56, !dbg !3778

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !3778

do.end57:                                         ; preds = %do.cond56
  br label %if.end58, !dbg !3778

if.end58:                                         ; preds = %do.end57, %do.end26
  %11 = load i32, ptr %__ret_warn_on23, align 4, !dbg !3772
  %tobool60 = icmp ne i32 %11, 0, !dbg !3772
  %lnot61 = xor i1 %tobool60, true, !dbg !3772
  %lnot63 = xor i1 %lnot61, true, !dbg !3772
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !3772
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !3772
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !3772
  store i64 %expval66, ptr %tmp59, align 8, !dbg !3777
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on23) #17, !dbg !3786
  %12 = load i64, ptr %tmp59, align 8, !dbg !3772
  %13 = load ptr, ptr %kn.addr, align 8, !dbg !3787
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 10, !dbg !3788
  %14 = load i16, ptr %flags, align 8, !dbg !3789
  %conv67 = zext i16 %14 to i32, !dbg !3789
  %or = or i32 %conv67, 32, !dbg !3789
  %conv68 = trunc i32 %or to i16, !dbg !3789
  store i16 %conv68, ptr %flags, align 8, !dbg !3789
  ret void, !dbg !3790
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_type(ptr noundef %kn) #8 align 16 !dbg !3791 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !3795, metadata !DIExpression()), !dbg !3796
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !3797
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10, !dbg !3798
  %1 = load i16, ptr %flags, align 8, !dbg !3798
  %conv = zext i16 %1 to i32, !dbg !3797
  %and = and i32 %conv, 15, !dbg !3799
  ret i32 %and, !dbg !3800
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3801 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3805 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kset_release(ptr noundef %kobj) #0 align 16 !dbg !3806 {
entry:
  %kobj.addr = alloca ptr, align 8
  %kset = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3808, metadata !DIExpression()), !dbg !3812
  call void @llvm.lifetime.start.p0(i64 8, ptr %kset) #17, !dbg !3813
  call void @llvm.dbg.declare(metadata ptr %kset, metadata !3809, metadata !DIExpression()), !dbg !3814
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !3815
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3810, metadata !DIExpression()), !dbg !3815
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3815
  store ptr %0, ptr %__mptr, align 8, !dbg !3815
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3815
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3815
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3815
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !3816
  %2 = load ptr, ptr %tmp, align 8, !dbg !3815
  store ptr %2, ptr %kset, align 8, !dbg !3814
  store i32 0, ptr %tmp1, align 4, !dbg !3817
  %3 = load i32, ptr %tmp1, align 4, !dbg !3820
  %4 = load ptr, ptr %kset, align 8, !dbg !3821
  call void @kfree(ptr noundef %4) #18, !dbg !3822
  call void @llvm.lifetime.end.p0(i64 8, ptr %kset) #17, !dbg !3823
  ret void, !dbg !3823
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kset_get_ownership(ptr noundef %kobj, ptr noundef %uid, ptr noundef %gid) #0 align 16 !dbg !3824 {
entry:
  %kobj.addr = alloca ptr, align 8
  %uid.addr = alloca ptr, align 8
  %gid.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3826, metadata !DIExpression()), !dbg !3829
  store ptr %uid, ptr %uid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !3827, metadata !DIExpression()), !dbg !3830
  store ptr %gid, ptr %gid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !3828, metadata !DIExpression()), !dbg !3831
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3832
  %parent = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2, !dbg !3834
  %1 = load ptr, ptr %parent, align 8, !dbg !3834
  %tobool = icmp ne ptr %1, null, !dbg !3832
  br i1 %tobool, label %if.then, label %if.end, !dbg !3835

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !3836
  %parent1 = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 2, !dbg !3837
  %3 = load ptr, ptr %parent1, align 8, !dbg !3837
  %4 = load ptr, ptr %uid.addr, align 8, !dbg !3838
  %5 = load ptr, ptr %gid.addr, align 8, !dbg !3839
  call void @kobject_get_ownership(ptr noundef %3, ptr noundef %4, ptr noundef %5) #18, !dbg !3840
  br label %if.end, !dbg !3840

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3841
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!884, !885, !886, !887, !888, !889, !890, !891}
!llvm.ident = !{!892}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_get_path191", scope: !2, file: !3, line: 171, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.kobject.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/kobject\22 -D KBUILD_BASENAME=\22kobject\22 -D KBUILD_MODNAME=\22kobject\22 -D __KBUILD_MODNAME=kmod_kobject -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/kobject.ll lib/kobject.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !65, globals: !738, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/kobject.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e7848e049604f14d0bc0fd1edbc793f")
!4 = !{!5, !12, !23, !28, !38, !46, !52}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !13, line: 53, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!16 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!17 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!18 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!19 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!20 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!21 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!22 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 10, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "false", value: 0)
!27 = !DIEnumerator(name: "true", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !29, line: 364, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!30 = !{!31, !32, !33, !34, !35, !36, !37}
!31 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!32 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!33 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!34 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!35 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!36 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!37 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !39, line: 119, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!42 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!43 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!44 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!45 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_type", file: !47, line: 94, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!48 = !{!49, !50, !51}
!49 = !DIEnumerator(name: "KERNFS_DIR", value: 1)
!50 = !DIEnumerator(name: "KERNFS_FILE", value: 2)
!51 = !DIEnumerator(name: "KERNFS_LINK", value: 4)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_flag", file: !47, line: 105, baseType: !7, size: 32, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!54 = !DIEnumerator(name: "KERNFS_ACTIVATED", value: 16)
!55 = !DIEnumerator(name: "KERNFS_NS", value: 32)
!56 = !DIEnumerator(name: "KERNFS_HAS_SEQ_SHOW", value: 64)
!57 = !DIEnumerator(name: "KERNFS_HAS_MMAP", value: 128)
!58 = !DIEnumerator(name: "KERNFS_LOCKDEP", value: 256)
!59 = !DIEnumerator(name: "KERNFS_HIDDEN", value: 512)
!60 = !DIEnumerator(name: "KERNFS_SUICIDAL", value: 1024)
!61 = !DIEnumerator(name: "KERNFS_SUICIDED", value: 2048)
!62 = !DIEnumerator(name: "KERNFS_EMPTY_DIR", value: 4096)
!63 = !DIEnumerator(name: "KERNFS_HAS_RELEASE", value: 8192)
!64 = !DIEnumerator(name: "KERNFS_REMOVING", value: 16384)
!65 = !{!66, !67, !69, !712, !210, !714, !716, !718, !719, !723, !84, !735}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !68, line: 154, baseType: !7)
!68 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !13, line: 64, size: 512, elements: !71)
!71 = !{!72, !76, !82, !83, !173, !584, !698, !707, !708, !709, !710, !711}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !13, line: 65, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !70, file: !13, line: 66, baseType: !77, size: 128, offset: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !68, line: 190, size: 128, elements: !78)
!78 = !{!79, !81}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !77, file: !68, line: 191, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !77, file: !68, line: 191, baseType: !80, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !70, file: !13, line: 67, baseType: !69, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !70, file: !13, line: 68, baseType: !84, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !13, line: 168, size: 768, elements: !86)
!86 = !{!87, !88, !132, !133}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !85, file: !13, line: 169, baseType: !77, size: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !85, file: !13, line: 170, baseType: !89, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !90, line: 29, baseType: !91)
!90 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !90, line: 17, size: 32, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !90, line: 18, baseType: !94, size: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !90, line: 18, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !94, file: !90, line: 19, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !98, line: 14, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !97, file: !98, line: 15, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !102, line: 44, baseType: !103)
!102 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !102, line: 14, size: 32, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !102, line: 15, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !102, line: 15, size: 32, elements: !107)
!107 = !{!108, !114, !124}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !106, file: !102, line: 16, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !68, line: 174, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 172, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !110, file: !68, line: 173, baseType: !113, size: 32)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !102, line: 24, baseType: !115, size: 16)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !102, line: 24, size: 16, elements: !116)
!116 = !{!117, !123}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !115, file: !102, line: 25, baseType: !118, size: 8)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !119, line: 17, baseType: !120)
!119 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !121, line: 21, baseType: !122)
!121 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !115, file: !102, line: 26, baseType: !118, size: 8, offset: 8)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !102, line: 28, baseType: !125, size: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !102, line: 28, size: 32, elements: !126)
!126 = !{!127, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !125, file: !102, line: 29, baseType: !128, size: 16)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !119, line: 19, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !121, line: 24, baseType: !130)
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !125, file: !102, line: 30, baseType: !128, size: 16, offset: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !85, file: !13, line: 171, baseType: !70, size: 512, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !85, file: !13, line: 172, baseType: !134, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !13, line: 133, size: 192, elements: !137)
!137 = !{!138, !145, !150}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !136, file: !13, line: 134, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!113, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !13, line: 135, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!73, !143}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !136, file: !13, line: 136, baseType: !151, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!113, !143, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !13, line: 125, size: 20736, elements: !157)
!157 = !{!158, !163, !167, !168, !172}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !156, file: !13, line: 126, baseType: !159, size: 192)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 192, elements: !161)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!161 = !{!162}
!162 = !DISubrange(count: 3)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !156, file: !13, line: 127, baseType: !164, size: 4096, offset: 192)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 4096, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !156, file: !13, line: 128, baseType: !113, size: 32, offset: 4288)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !156, file: !13, line: 129, baseType: !169, size: 16384, offset: 4320)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 16384, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 2048)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !156, file: !13, line: 130, baseType: !113, size: 32, offset: 20704)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !70, file: !13, line: 69, baseType: !174, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !13, line: 116, size: 384, elements: !177)
!177 = !{!178, !182, !211, !528, !561, !565}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !176, file: !13, line: 117, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !69}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !176, file: !13, line: 118, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !186, line: 254, size: 128, elements: !187)
!186 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!187 = !{!188, !203}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !185, file: !186, line: 255, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !69, !197, !160}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !68, line: 66, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !194, line: 73, baseType: !195)
!194 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !194, line: 15, baseType: !196)
!196 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !186, line: 30, size: 128, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !186, line: 31, baseType: !73, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !198, file: !186, line: 32, baseType: !202, size: 16, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !68, line: 24, baseType: !130)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !185, file: !186, line: 256, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!192, !69, !197, !73, !207}
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 61, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !194, line: 72, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !194, line: 16, baseType: !210)
!210 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !176, file: !13, line: 119, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !186, line: 84, size: 320, elements: !216)
!216 = !{!217, !218, !222, !524, !526}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !186, line: 85, baseType: !73, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !215, file: !186, line: 86, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!202, !69, !197, !113}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !215, file: !186, line: 88, baseType: !223, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!202, !69, !226, !113}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !186, line: 175, size: 512, elements: !228)
!228 = !{!229, !230, !231, !232, !239, !249, !250}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !227, file: !186, line: 176, baseType: !198, size: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !227, file: !186, line: 177, baseType: !207, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !227, file: !186, line: 178, baseType: !66, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !227, file: !186, line: 179, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !238, line: 32, flags: DIFlagFwdDecl)
!238 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!239 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !227, file: !186, line: 180, baseType: !240, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!192, !243, !69, !226, !160, !246, !207}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !245, line: 537, flags: DIFlagFwdDecl)
!245 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !68, line: 52, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !194, line: 88, baseType: !248)
!248 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !227, file: !186, line: 182, baseType: !240, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !227, file: !186, line: 184, baseType: !251, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!113, !243, !69, !226, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !238, line: 625, size: 1344, elements: !256)
!256 = !{!257, !274, !473, !479, !486, !487, !492, !495, !507, !508, !511, !515, !516, !517, !518, !519, !522}
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !238, line: 628, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !238, line: 628, size: 128, elements: !259)
!259 = !{!260, !265}
!260 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !238, line: 629, baseType: !261, size: 128)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !238, line: 629, size: 128, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !261, file: !238, line: 631, baseType: !210, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !261, file: !238, line: 632, baseType: !210, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !258, file: !238, line: 635, baseType: !266, size: 128, align: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !68, line: 232, size: 128, align: 64, elements: !267)
!267 = !{!268, !270}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !68, line: 233, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !266, file: !68, line: 234, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !269}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !255, file: !238, line: 639, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !238, line: 733, size: 10240, elements: !277)
!277 = !{!278, !469}
!278 = !DIDerivedType(tag: DW_TAG_member, scope: !276, file: !238, line: 734, baseType: !279, size: 10240)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !276, file: !238, line: 734, size: 10240, elements: !280)
!280 = !{!281, !285, !299, !303, !304, !305, !306, !307, !308, !316, !317, !318, !327, !328, !337, !338, !339, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !386, !400, !403, !435, !436, !437, !440, !443, !444, !447, !448, !449, !456, !457}
!281 = !DIDerivedType(tag: DW_TAG_member, scope: !279, file: !238, line: 739, baseType: !282, size: 512, align: 512)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !279, file: !238, line: 739, size: 512, align: 512, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !282, file: !238, line: 747, baseType: !109, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !279, file: !238, line: 750, baseType: !286, size: 128, offset: 512)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !287, line: 218, size: 128, elements: !288)
!287 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!288 = !{!289, !297, !298}
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !286, file: !287, line: 219, baseType: !290, size: 32)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !286, file: !287, line: 219, size: 32, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !290, file: !287, line: 220, baseType: !89, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !290, file: !287, line: 221, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !287, line: 197, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 197, elements: !296)
!296 = !{}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !286, file: !287, line: 223, baseType: !7, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !286, file: !287, line: 224, baseType: !66, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !279, file: !238, line: 752, baseType: !300, size: 64, offset: 640)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!210, !243, !210, !210, !210, !210}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !279, file: !238, line: 756, baseType: !210, size: 64, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !279, file: !238, line: 757, baseType: !210, size: 64, offset: 768)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !279, file: !238, line: 760, baseType: !210, size: 64, offset: 832)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !279, file: !238, line: 761, baseType: !210, size: 64, offset: 896)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !279, file: !238, line: 763, baseType: !210, size: 64, offset: 960)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !279, file: !238, line: 764, baseType: !309, size: 64, offset: 1024)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !245, line: 299, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 299, size: 64, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !311, file: !245, line: 299, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !315, line: 18, baseType: !210)
!315 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !279, file: !238, line: 773, baseType: !109, size: 32, offset: 1088)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !279, file: !238, line: 785, baseType: !109, size: 32, offset: 1120)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !279, file: !238, line: 795, baseType: !319, size: 64, offset: 1152)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !238, line: 726, size: 128, elements: !321)
!321 = !{!322, !326}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !320, file: !238, line: 727, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !119, line: 23, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !121, line: 31, baseType: !325)
!325 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !320, file: !238, line: 728, baseType: !113, size: 32, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !279, file: !238, line: 801, baseType: !210, size: 64, offset: 1216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !279, file: !238, line: 804, baseType: !329, size: 64, offset: 1280)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !330, line: 13, baseType: !331)
!330 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !68, line: 181, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 179, size: 64, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !332, file: !68, line: 180, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !119, line: 22, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !121, line: 30, baseType: !248)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !279, file: !238, line: 806, baseType: !113, size: 32, offset: 1344)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !279, file: !238, line: 808, baseType: !89, size: 32, offset: 1376)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !279, file: !238, line: 823, baseType: !340, size: 320, offset: 1408)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !341, line: 48, size: 320, elements: !342)
!341 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!342 = !{!343, !344, !345, !350, !352}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !340, file: !341, line: 49, baseType: !329, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !340, file: !341, line: 55, baseType: !329, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !340, file: !341, line: 57, baseType: !346, size: 32, offset: 128)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !347, line: 15, size: 32, elements: !348)
!347 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !346, file: !347, line: 20, baseType: !109, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !340, file: !341, line: 59, baseType: !351, size: 32, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !98, line: 23, baseType: !97)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !340, file: !341, line: 60, baseType: !77, size: 128, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !279, file: !238, line: 825, baseType: !77, size: 128, offset: 1728)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !279, file: !238, line: 845, baseType: !113, size: 32, offset: 1856)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !279, file: !238, line: 849, baseType: !210, size: 64, offset: 1920)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !279, file: !238, line: 850, baseType: !210, size: 64, offset: 1984)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !279, file: !238, line: 852, baseType: !210, size: 64, offset: 2048)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !279, file: !238, line: 853, baseType: !210, size: 64, offset: 2112)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !279, file: !238, line: 854, baseType: !331, size: 64, offset: 2176)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !279, file: !238, line: 855, baseType: !210, size: 64, offset: 2240)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !279, file: !238, line: 856, baseType: !210, size: 64, offset: 2304)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !279, file: !238, line: 857, baseType: !210, size: 64, offset: 2368)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !279, file: !238, line: 858, baseType: !210, size: 64, offset: 2432)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !279, file: !238, line: 865, baseType: !365, size: 32, offset: 2496)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !366, line: 69, baseType: !367)
!366 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !366, line: 64, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !367, file: !366, line: 65, baseType: !7, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !279, file: !238, line: 867, baseType: !89, size: 32, offset: 2528)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !279, file: !238, line: 869, baseType: !210, size: 64, offset: 2560)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !279, file: !238, line: 869, baseType: !210, size: 64, offset: 2624)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !279, file: !238, line: 869, baseType: !210, size: 64, offset: 2688)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !279, file: !238, line: 869, baseType: !210, size: 64, offset: 2752)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !279, file: !238, line: 870, baseType: !210, size: 64, offset: 2816)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !279, file: !238, line: 870, baseType: !210, size: 64, offset: 2880)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !279, file: !238, line: 870, baseType: !210, size: 64, offset: 2944)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !279, file: !238, line: 871, baseType: !210, size: 64, offset: 3008)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !279, file: !238, line: 871, baseType: !210, size: 64, offset: 3072)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !279, file: !238, line: 871, baseType: !210, size: 64, offset: 3136)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !279, file: !238, line: 871, baseType: !210, size: 64, offset: 3200)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !279, file: !238, line: 873, baseType: !383, size: 3328, offset: 3264)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 3328, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 52)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !279, file: !238, line: 875, baseType: !387, size: 1280, offset: 6592)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1280, elements: !398)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !389, line: 22, size: 320, elements: !390)
!389 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!390 = !{!391, !392, !393, !394}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !388, file: !389, line: 23, baseType: !351, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !388, file: !389, line: 24, baseType: !335, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !388, file: !389, line: 26, baseType: !77, size: 128, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !388, file: !389, line: 28, baseType: !395, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !119, line: 20, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !121, line: 26, baseType: !113)
!398 = !{!399}
!399 = !DISubrange(count: 4)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !279, file: !238, line: 877, baseType: !401, size: 64, offset: 7872)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !238, line: 877, flags: DIFlagFwdDecl)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !279, file: !238, line: 880, baseType: !404, size: 1088, offset: 7936)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !405, line: 72, baseType: !406)
!405 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 23, size: 1088, elements: !407)
!407 = !{!408, !409, !410, !411, !412, !415, !416, !424, !425, !429, !430, !431}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !406, file: !405, line: 28, baseType: !323, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !406, file: !405, line: 38, baseType: !331, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !406, file: !405, line: 40, baseType: !210, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !406, file: !405, line: 43, baseType: !340, size: 320, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !406, file: !405, line: 44, baseType: !413, size: 64, offset: 512)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !405, line: 44, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !405, line: 48, baseType: !210, size: 64, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !406, file: !405, line: 59, baseType: !417, size: 256, offset: 640)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !418, line: 66, size: 256, elements: !419)
!418 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!419 = !{!420, !421, !422, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !417, file: !418, line: 67, baseType: !329, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !417, file: !418, line: 68, baseType: !351, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !417, file: !418, line: 70, baseType: !346, size: 32, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !417, file: !418, line: 72, baseType: !77, size: 128, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !406, file: !405, line: 60, baseType: !66, size: 64, offset: 896)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !406, file: !405, line: 61, baseType: !426, size: 64, offset: 960)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !405, line: 61, flags: DIFlagFwdDecl)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !406, file: !405, line: 63, baseType: !109, size: 32, offset: 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !406, file: !405, line: 69, baseType: !128, size: 16, offset: 1056)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !406, file: !405, line: 70, baseType: !432, size: 16, offset: 1072)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !119, line: 18, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !121, line: 23, baseType: !434)
!434 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !238, line: 882, baseType: !210, size: 64, offset: 9024)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !279, file: !238, line: 885, baseType: !89, size: 32, offset: 9088)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !279, file: !238, line: 886, baseType: !438, size: 64, offset: 9152)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !238, line: 732, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !279, file: !238, line: 901, baseType: !441, size: 64, offset: 9216)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !238, line: 901, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !279, file: !238, line: 904, baseType: !243, size: 64, offset: 9280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !279, file: !238, line: 906, baseType: !445, size: 64, offset: 9344)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !238, line: 906, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !279, file: !238, line: 930, baseType: !109, size: 32, offset: 9408)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !279, file: !238, line: 933, baseType: !109, size: 32, offset: 9440)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !279, file: !238, line: 935, baseType: !450, size: 64, offset: 9472)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !451, line: 103, size: 64, elements: !452)
!451 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !450, file: !451, line: 104, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !451, line: 101, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !279, file: !238, line: 940, baseType: !329, size: 64, offset: 9536)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !279, file: !238, line: 942, baseType: !458, size: 256, offset: 9600)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !459, line: 98, size: 256, elements: !460)
!459 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!460 = !{!461, !462, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !458, file: !459, line: 99, baseType: !329, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !458, file: !459, line: 100, baseType: !77, size: 128, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !458, file: !459, line: 101, baseType: !464, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !459, line: 21, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !276, file: !238, line: 986, baseType: !470, offset: 10240)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: -1)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !255, file: !238, line: 640, baseType: !474, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !245, line: 297, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !245, line: 297, size: 64, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !475, file: !245, line: 297, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !315, line: 19, baseType: !210)
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !238, line: 646, baseType: !480, size: 64, offset: 256)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !238, line: 646, size: 64, elements: !481)
!481 = !{!482, !485}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !480, file: !238, line: 647, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !238, line: 542, baseType: !210)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !480, file: !238, line: 648, baseType: !484, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !255, file: !238, line: 666, baseType: !113, size: 32, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !255, file: !238, line: 667, baseType: !488, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !238, line: 579, size: 320, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !489, file: !238, line: 580, baseType: !340, size: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !255, file: !238, line: 670, baseType: !493, size: 8, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !68, line: 35, baseType: !494)
!494 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !255, file: !238, line: 681, baseType: !496, size: 256, offset: 512)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !255, file: !238, line: 678, size: 256, elements: !497)
!497 = !{!498, !506}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !496, file: !238, line: 679, baseType: !499, size: 192, align: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !500, line: 5, size: 192, align: 64, elements: !501)
!500 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!501 = !{!502, !503, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !499, file: !500, line: 6, baseType: !210, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !499, file: !500, line: 7, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !499, file: !500, line: 8, baseType: !504, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !496, file: !238, line: 680, baseType: !210, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !255, file: !238, line: 689, baseType: !77, size: 128, offset: 768)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !255, file: !238, line: 691, baseType: !509, size: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !238, line: 691, flags: DIFlagFwdDecl)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !255, file: !238, line: 694, baseType: !512, size: 64, offset: 960)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !238, line: 694, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !255, file: !238, line: 697, baseType: !210, size: 64, offset: 1024)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !255, file: !238, line: 699, baseType: !243, size: 64, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !255, file: !238, line: 700, baseType: !66, size: 64, offset: 1152)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !255, file: !238, line: 711, baseType: !329, size: 64, offset: 1216)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !255, file: !238, line: 717, baseType: !520, size: 64, offset: 1280)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !238, line: 717, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !255, file: !238, line: 722, baseType: !523, offset: 1344)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !238, line: 570, elements: !296)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !215, file: !186, line: 90, baseType: !525, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !215, file: !186, line: 91, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !176, file: !13, line: 120, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !143}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !535)
!535 = !{!536, !537, !541, !545, !553, !557}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !534, file: !6, line: 40, baseType: !5, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !534, file: !6, line: 41, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!493}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !534, file: !6, line: 42, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!66}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !534, file: !6, line: 43, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!549, !551}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !534, file: !6, line: 44, baseType: !554, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!549}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !534, file: !6, line: 45, baseType: !558, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !66}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !176, file: !13, line: 121, baseType: !562, size: 64, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!549, !143}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !176, file: !13, line: 122, baseType: !566, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !143, !569, !577}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !571, line: 23, baseType: !572)
!571 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 21, size: 32, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !572, file: !571, line: 22, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !68, line: 37, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !194, line: 49, baseType: !7)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !571, line: 28, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 26, size: 32, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !579, file: !571, line: 27, baseType: !582, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !68, line: 38, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !194, line: 50, baseType: !7)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !70, file: !13, line: 70, baseType: !585, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !47, line: 190, size: 1152, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595, !690, !691, !692, !693, !694, !697}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !586, file: !47, line: 191, baseType: !109, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !586, file: !47, line: 192, baseType: !109, size: 32, offset: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !586, file: !47, line: 202, baseType: !585, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !586, file: !47, line: 203, baseType: !73, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !586, file: !47, line: 205, baseType: !499, size: 192, align: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !586, file: !47, line: 207, baseType: !549, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !586, file: !47, line: 208, baseType: !7, size: 32, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !47, line: 209, baseType: !596, size: 256, offset: 512)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !586, file: !47, line: 209, size: 256, elements: !597)
!597 = !{!598, !610, !614}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !596, file: !47, line: 210, baseType: !599, size: 256)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !47, line: 153, size: 256, elements: !600)
!600 = !{!601, !602, !606, !609}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !599, file: !47, line: 154, baseType: !210, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !599, file: !47, line: 156, baseType: !603, size: 64, offset: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !500, line: 12, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !603, file: !500, line: 13, baseType: !504, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !599, file: !47, line: 162, baseType: !607, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !47, line: 162, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !599, file: !47, line: 167, baseType: !210, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !596, file: !47, line: 211, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !47, line: 170, size: 64, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !611, file: !47, line: 171, baseType: !585, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !596, file: !47, line: 212, baseType: !615, size: 256)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !47, line: 174, size: 256, elements: !616)
!616 = !{!617, !685, !688, !689}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !615, file: !47, line: 175, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !47, line: 271, size: 768, elements: !621)
!621 = !{!622, !645, !649, !653, !658, !662, !666, !670, !671, !672, !673, !681}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !620, file: !47, line: 276, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!113, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !47, line: 251, size: 1216, elements: !628)
!628 = !{!629, !630, !631, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !627, file: !47, line: 253, baseType: !585, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !627, file: !47, line: 254, baseType: !243, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !627, file: !47, line: 255, baseType: !632, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !634, line: 66, flags: DIFlagFwdDecl)
!634 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!635 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !627, file: !47, line: 256, baseType: !66, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !627, file: !47, line: 259, baseType: !417, size: 256, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !627, file: !47, line: 260, baseType: !417, size: 256, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !627, file: !47, line: 261, baseType: !113, size: 32, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !627, file: !47, line: 262, baseType: !77, size: 128, offset: 832)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !627, file: !47, line: 263, baseType: !160, size: 64, offset: 960)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !627, file: !47, line: 265, baseType: !207, size: 64, offset: 1024)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !627, file: !47, line: 266, baseType: !493, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !627, file: !47, line: 267, baseType: !493, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !627, file: !47, line: 268, baseType: !512, size: 64, offset: 1152)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !620, file: !47, line: 277, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !626}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !620, file: !47, line: 290, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!113, !632, !66}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !620, file: !47, line: 292, baseType: !654, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!66, !632, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !620, file: !47, line: 293, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!66, !632, !66, !657}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !620, file: !47, line: 294, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !632, !66}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !620, file: !47, line: 296, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!192, !626, !160, !207, !246}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !620, file: !47, line: 306, baseType: !207, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !620, file: !47, line: 313, baseType: !493, size: 8, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !620, file: !47, line: 314, baseType: !667, size: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !620, file: !47, line: 317, baseType: !674, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!677, !626, !679}
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !678, line: 59, baseType: !7)
!678 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !47, line: 31, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !620, file: !47, line: 320, baseType: !682, size: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!113, !626, !254}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !615, file: !47, line: 176, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !47, line: 35, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !615, file: !47, line: 177, baseType: !246, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !615, file: !47, line: 178, baseType: !585, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !586, file: !47, line: 215, baseType: !66, size: 64, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !586, file: !47, line: 221, baseType: !323, size: 64, offset: 832)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !47, line: 223, baseType: !130, size: 16, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !586, file: !47, line: 224, baseType: !202, size: 16, offset: 912)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !586, file: !47, line: 225, baseType: !695, size: 64, offset: 960)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !47, line: 36, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !586, file: !47, line: 227, baseType: !266, size: 128, align: 64, offset: 1024)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !70, file: !13, line: 71, baseType: !699, size: 32, offset: 448)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !700, line: 19, size: 32, elements: !701)
!700 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !699, file: !700, line: 20, baseType: !703, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !39, line: 113, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !39, line: 111, size: 32, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !704, file: !39, line: 112, baseType: !109, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !70, file: !13, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !70, file: !13, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !70, file: !13, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !70, file: !13, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !70, file: !13, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !119, line: 21, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !121, line: 27, baseType: !7)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_attribute", file: !13, line: 139, size: 256, elements: !725)
!725 = !{!726, !727, !731}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !724, file: !13, line: 140, baseType: !198, size: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !724, file: !13, line: 141, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!192, !69, !723, !160}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !724, file: !13, line: 143, baseType: !732, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!192, !69, !723, !73, !207}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !504)
!738 = !{!0, !739, !741, !746, !751, !756, !759, !764, !766, !771, !773, !775, !780, !782, !784, !786, !791, !796, !798, !800, !802, !804, !806, !811, !816, !818, !820, !822, !827, !829, !831, !833, !835, !837, !839, !844, !849, !854, !856, !861, !866, !869, !872, !877, !880, !882}
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_set_name192", scope: !2, file: !3, line: 319, type: !66, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !3, line: 338, type: !743, isLocal: true, isDefinition: true)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 200, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 25)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !3, line: 342, type: !748, isLocal: true, isDefinition: true)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 376, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 47)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !753, isLocal: true, isDefinition: true)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 744, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 93)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !3, line: 349, type: !758, isLocal: true, isDefinition: true)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 24, elements: !161)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 357, type: !761, isLocal: true, isDefinition: true)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 232, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 29)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_init193", scope: !2, file: !3, line: 360, type: !66, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 420, type: !768, isLocal: true, isDefinition: true)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 792, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 99)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_add194", scope: !2, file: !3, line: 431, type: !66, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_init_and_add195", scope: !2, file: !3, line: 462, type: !66, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !3, line: 500, type: !777, isLocal: true, isDefinition: true)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 120, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 15)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_rename196", scope: !2, file: !3, line: 531, type: !66, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_move197", scope: !2, file: !3, line: 584, type: !66, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_del198", scope: !2, file: !3, line: 630, type: !66, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !3, line: 640, type: !788, isLocal: true, isDefinition: true)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 624, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 78)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(scope: null, file: !3, line: 640, type: !793, isLocal: true, isDefinition: true)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 112, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 14)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_get199", scope: !2, file: !3, line: 647, type: !66, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_get_unless_zero200", scope: !2, file: !3, line: 657, type: !66, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !3, line: 734, type: !788, isLocal: true, isDefinition: true)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_put201", scope: !2, file: !3, line: 740, type: !66, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !3, line: 798, type: !758, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !3, line: 800, type: !808, isLocal: true, isDefinition: true)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 304, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 38)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !3, line: 800, type: !813, isLocal: true, isDefinition: true)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 184, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 23)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobject_create_and_add202", scope: !2, file: !3, line: 806, type: !66, isLocal: true, isDefinition: true)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(name: "kobj_sysfs_ops", scope: !2, file: !3, line: 844, type: !184, isLocal: false, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobj_sysfs_ops203", scope: !2, file: !3, line: 848, type: !66, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !3, line: 865, type: !824, isLocal: true, isDefinition: true)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 464, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 58)
!827 = !DIGlobalVariableExpression(var: !828, expr: !DIExpression())
!828 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kset_register204", scope: !2, file: !3, line: 880, type: !66, isLocal: true, isDefinition: true)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kset_unregister205", scope: !2, file: !3, line: 893, type: !66, isLocal: true, isDefinition: true)
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kset_find_obj206", scope: !2, file: !3, line: 921, type: !66, isLocal: true, isDefinition: true)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kset_create_and_add207", scope: !2, file: !3, line: 1018, type: !66, isLocal: true, isDefinition: true)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobj_ns_grab_current208", scope: !2, file: !3, line: 1097, type: !66, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kobj_ns_drop209", scope: !2, file: !3, line: 1131, type: !66, isLocal: true, isDefinition: true)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(name: "kobj_ns_ops_tbl", scope: !2, file: !3, line: 1022, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 128, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 2)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !3, line: 370, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 312, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 39)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !29, line: 480, type: !851, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 168, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 21)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "dynamic_kobj_ktype", scope: !2, file: !3, line: 748, type: !175, isLocal: true, isDefinition: true)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !3, line: 219, type: !858, isLocal: true, isDefinition: true)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 480, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 60)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !863, isLocal: true, isDefinition: true)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 912, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 114)
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !868, isLocal: true, isDefinition: true)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 168, elements: !852)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !871, isLocal: true, isDefinition: true)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 416, elements: !384)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !874, isLocal: true, isDefinition: true)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 56, elements: !875)
!875 = !{!876}
!876 = !DISubrange(count: 7)
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(scope: null, file: !47, line: 380, type: !879, isLocal: true, isDefinition: true)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 184, elements: !814)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "kset_ktype", scope: !2, file: !3, line: 937, type: !175, isLocal: true, isDefinition: true)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(name: "kobj_ns_type_lock", scope: !2, file: !3, line: 1021, type: !89, isLocal: true, isDefinition: true)
!884 = !{i32 7, !"Dwarf Version", i32 5}
!885 = !{i32 2, !"Debug Info Version", i32 3}
!886 = !{i32 1, !"wchar_size", i32 2}
!887 = !{i32 8, !"cf-protection-branch", i32 1}
!888 = !{i32 4, !"function_return_thunk_extern", i32 1}
!889 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!890 = !{i32 1, !"Code Model", i32 2}
!891 = !{i32 1, !"override-stack-alignment", i32 8}
!892 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!893 = distinct !DISubprogram(name: "kobject_namespace", scope: !3, file: !3, line: 30, type: !563, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !894)
!894 = !{!895, !896}
!895 = !DILocalVariable(name: "kobj", arg: 1, scope: !893, file: !3, line: 30, type: !143)
!896 = !DILocalVariable(name: "ns_ops", scope: !893, file: !3, line: 32, type: !532)
!897 = !DILocation(line: 30, column: 53, scope: !893)
!898 = !DILocation(line: 32, column: 2, scope: !893)
!899 = !DILocation(line: 32, column: 40, scope: !893)
!900 = !DILocation(line: 32, column: 61, scope: !893)
!901 = !DILocation(line: 32, column: 49, scope: !893)
!902 = !DILocation(line: 34, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !893, file: !3, line: 34, column: 6)
!904 = !DILocation(line: 34, column: 14, scope: !903)
!905 = !DILocation(line: 34, column: 17, scope: !903)
!906 = !DILocation(line: 34, column: 25, scope: !903)
!907 = !DILocation(line: 34, column: 30, scope: !903)
!908 = !DILocation(line: 34, column: 6, scope: !893)
!909 = !DILocation(line: 35, column: 3, scope: !903)
!910 = !DILocation(line: 37, column: 9, scope: !893)
!911 = !DILocation(line: 37, column: 15, scope: !893)
!912 = !DILocation(line: 37, column: 22, scope: !893)
!913 = !DILocation(line: 37, column: 32, scope: !893)
!914 = !DILocation(line: 37, column: 2, scope: !893)
!915 = !DILocation(line: 38, column: 1, scope: !893)
!916 = distinct !DISubprogram(name: "kobj_ns_ops", scope: !3, file: !3, line: 1069, type: !530, scopeLine: 1070, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!917 = !{!918}
!918 = !DILocalVariable(name: "kobj", arg: 1, scope: !916, file: !3, line: 1069, type: !143)
!919 = !DILocation(line: 1069, column: 73, scope: !916)
!920 = !DILocation(line: 1071, column: 27, scope: !916)
!921 = !DILocation(line: 1071, column: 33, scope: !916)
!922 = !DILocation(line: 1071, column: 9, scope: !916)
!923 = !DILocation(line: 1071, column: 2, scope: !916)
!924 = distinct !DISubprogram(name: "kobject_get_ownership", scope: !3, file: !3, line: 50, type: !567, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !925)
!925 = !{!926, !927, !928}
!926 = !DILocalVariable(name: "kobj", arg: 1, scope: !924, file: !3, line: 50, type: !143)
!927 = !DILocalVariable(name: "uid", arg: 2, scope: !924, file: !3, line: 50, type: !569)
!928 = !DILocalVariable(name: "gid", arg: 3, scope: !924, file: !3, line: 50, type: !577)
!929 = !DILocation(line: 50, column: 50, scope: !924)
!930 = !DILocation(line: 50, column: 64, scope: !924)
!931 = !DILocation(line: 50, column: 77, scope: !924)
!932 = !DILocation(line: 52, column: 3, scope: !924)
!933 = !DILocation(line: 52, column: 9, scope: !924)
!934 = !DILocation(line: 53, column: 3, scope: !924)
!935 = !DILocation(line: 53, column: 9, scope: !924)
!936 = !DILocation(line: 55, column: 6, scope: !937)
!937 = distinct !DILexicalBlock(scope: !924, file: !3, line: 55, column: 6)
!938 = !DILocation(line: 55, column: 12, scope: !937)
!939 = !DILocation(line: 55, column: 19, scope: !937)
!940 = !DILocation(line: 55, column: 6, scope: !924)
!941 = !DILocation(line: 56, column: 3, scope: !937)
!942 = !DILocation(line: 56, column: 9, scope: !937)
!943 = !DILocation(line: 56, column: 16, scope: !937)
!944 = !DILocation(line: 56, column: 30, scope: !937)
!945 = !DILocation(line: 56, column: 36, scope: !937)
!946 = !DILocation(line: 56, column: 41, scope: !937)
!947 = !DILocation(line: 57, column: 1, scope: !924)
!948 = distinct !DISubprogram(name: "kobject_get_path", scope: !3, file: !3, line: 152, type: !949, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!160, !143, !67}
!951 = !{!952, !953, !954, !955, !956}
!952 = !DILocalVariable(name: "kobj", arg: 1, scope: !948, file: !3, line: 152, type: !143)
!953 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !948, file: !3, line: 152, type: !67)
!954 = !DILocalVariable(name: "path", scope: !948, file: !3, line: 154, type: !160)
!955 = !DILocalVariable(name: "len", scope: !948, file: !3, line: 155, type: !113)
!956 = !DILabel(scope: !948, name: "retry", file: !3, line: 157)
!957 = !DILocation(line: 152, column: 46, scope: !948)
!958 = !DILocation(line: 152, column: 58, scope: !948)
!959 = !DILocation(line: 154, column: 2, scope: !948)
!960 = !DILocation(line: 154, column: 8, scope: !948)
!961 = !DILocation(line: 155, column: 2, scope: !948)
!962 = !DILocation(line: 155, column: 6, scope: !948)
!963 = !DILocation(line: 157, column: 1, scope: !948)
!964 = !DILocation(line: 158, column: 29, scope: !948)
!965 = !DILocation(line: 158, column: 8, scope: !948)
!966 = !DILocation(line: 158, column: 6, scope: !948)
!967 = !DILocation(line: 159, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !948, file: !3, line: 159, column: 6)
!969 = !DILocation(line: 159, column: 10, scope: !968)
!970 = !DILocation(line: 159, column: 6, scope: !948)
!971 = !DILocation(line: 160, column: 3, scope: !968)
!972 = !DILocation(line: 161, column: 17, scope: !948)
!973 = !DILocation(line: 161, column: 22, scope: !948)
!974 = !DILocation(line: 161, column: 9, scope: !948)
!975 = !DILocation(line: 161, column: 7, scope: !948)
!976 = !DILocation(line: 162, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !948, file: !3, line: 162, column: 6)
!978 = !DILocation(line: 162, column: 6, scope: !948)
!979 = !DILocation(line: 163, column: 3, scope: !977)
!980 = !DILocation(line: 164, column: 21, scope: !981)
!981 = distinct !DILexicalBlock(scope: !948, file: !3, line: 164, column: 6)
!982 = !DILocation(line: 164, column: 27, scope: !981)
!983 = !DILocation(line: 164, column: 33, scope: !981)
!984 = !DILocation(line: 164, column: 6, scope: !981)
!985 = !DILocation(line: 164, column: 6, scope: !948)
!986 = !DILocation(line: 165, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !981, file: !3, line: 164, column: 39)
!988 = !DILocation(line: 165, column: 3, scope: !987)
!989 = !DILocation(line: 166, column: 3, scope: !987)
!990 = !DILocation(line: 169, column: 9, scope: !948)
!991 = !DILocation(line: 169, column: 2, scope: !948)
!992 = !DILocation(line: 170, column: 1, scope: !948)
!993 = distinct !DISubprogram(name: "get_kobj_path_length", scope: !3, file: !3, line: 106, type: !141, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!994 = !{!995, !996, !997}
!995 = !DILocalVariable(name: "kobj", arg: 1, scope: !993, file: !3, line: 106, type: !143)
!996 = !DILocalVariable(name: "length", scope: !993, file: !3, line: 108, type: !113)
!997 = !DILocalVariable(name: "parent", scope: !993, file: !3, line: 109, type: !143)
!998 = !DILocation(line: 106, column: 55, scope: !993)
!999 = !DILocation(line: 108, column: 2, scope: !993)
!1000 = !DILocation(line: 108, column: 6, scope: !993)
!1001 = !DILocation(line: 109, column: 2, scope: !993)
!1002 = !DILocation(line: 109, column: 24, scope: !993)
!1003 = !DILocation(line: 109, column: 33, scope: !993)
!1004 = !DILocation(line: 115, column: 2, scope: !993)
!1005 = !DILocation(line: 116, column: 20, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 116, column: 7)
!1007 = distinct !DILexicalBlock(scope: !993, file: !3, line: 115, column: 5)
!1008 = !DILocation(line: 116, column: 7, scope: !1006)
!1009 = !DILocation(line: 116, column: 28, scope: !1006)
!1010 = !DILocation(line: 116, column: 7, scope: !1007)
!1011 = !DILocation(line: 117, column: 4, scope: !1006)
!1012 = !DILocation(line: 118, column: 33, scope: !1007)
!1013 = !DILocation(line: 118, column: 20, scope: !1007)
!1014 = !DILocation(line: 118, column: 13, scope: !1007)
!1015 = !DILocation(line: 118, column: 42, scope: !1007)
!1016 = !DILocation(line: 118, column: 10, scope: !1007)
!1017 = !DILocation(line: 119, column: 12, scope: !1007)
!1018 = !DILocation(line: 119, column: 20, scope: !1007)
!1019 = !DILocation(line: 119, column: 10, scope: !1007)
!1020 = !DILocation(line: 120, column: 2, scope: !1007)
!1021 = !DILocation(line: 120, column: 11, scope: !993)
!1022 = distinct !{!1022, !1004, !1023, !1024, !1025}
!1023 = !DILocation(line: 120, column: 17, scope: !993)
!1024 = !{!"llvm.loop.mustprogress"}
!1025 = !{!"llvm.loop.unroll.disable"}
!1026 = !DILocation(line: 121, column: 9, scope: !993)
!1027 = !DILocation(line: 121, column: 2, scope: !993)
!1028 = !DILocation(line: 122, column: 1, scope: !993)
!1029 = distinct !DISubprogram(name: "kzalloc", scope: !29, file: !29, line: 719, type: !1030, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!66, !207, !67}
!1032 = !{!1033, !1034}
!1033 = !DILocalVariable(name: "size", arg: 1, scope: !1029, file: !29, line: 719, type: !207)
!1034 = !DILocalVariable(name: "flags", arg: 2, scope: !1029, file: !29, line: 719, type: !67)
!1035 = !DILocation(line: 719, column: 52, scope: !1029)
!1036 = !DILocation(line: 719, column: 64, scope: !1029)
!1037 = !DILocation(line: 721, column: 17, scope: !1029)
!1038 = !DILocation(line: 721, column: 23, scope: !1029)
!1039 = !DILocation(line: 721, column: 29, scope: !1029)
!1040 = !DILocation(line: 721, column: 9, scope: !1029)
!1041 = !DILocation(line: 721, column: 2, scope: !1029)
!1042 = distinct !DISubprogram(name: "fill_kobj_path", scope: !3, file: !3, line: 124, type: !1043, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!113, !143, !160, !113}
!1045 = !{!1046, !1047, !1048, !1049, !1050}
!1046 = !DILocalVariable(name: "kobj", arg: 1, scope: !1042, file: !3, line: 124, type: !143)
!1047 = !DILocalVariable(name: "path", arg: 2, scope: !1042, file: !3, line: 124, type: !160)
!1048 = !DILocalVariable(name: "length", arg: 3, scope: !1042, file: !3, line: 124, type: !113)
!1049 = !DILocalVariable(name: "parent", scope: !1042, file: !3, line: 126, type: !143)
!1050 = !DILocalVariable(name: "cur", scope: !1051, file: !3, line: 130, type: !113)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 129, column: 55)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 129, column: 2)
!1053 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 129, column: 2)
!1054 = !DILocation(line: 124, column: 49, scope: !1042)
!1055 = !DILocation(line: 124, column: 61, scope: !1042)
!1056 = !DILocation(line: 124, column: 71, scope: !1042)
!1057 = !DILocation(line: 126, column: 2, scope: !1042)
!1058 = !DILocation(line: 126, column: 24, scope: !1042)
!1059 = !DILocation(line: 128, column: 2, scope: !1042)
!1060 = !DILocation(line: 129, column: 16, scope: !1053)
!1061 = !DILocation(line: 129, column: 14, scope: !1053)
!1062 = !DILocation(line: 129, column: 7, scope: !1053)
!1063 = !DILocation(line: 129, column: 22, scope: !1052)
!1064 = !DILocation(line: 129, column: 2, scope: !1053)
!1065 = !DILocation(line: 130, column: 3, scope: !1051)
!1066 = !DILocation(line: 130, column: 7, scope: !1051)
!1067 = !DILocation(line: 130, column: 33, scope: !1051)
!1068 = !DILocation(line: 130, column: 20, scope: !1051)
!1069 = !DILocation(line: 130, column: 13, scope: !1051)
!1070 = !DILocation(line: 132, column: 13, scope: !1051)
!1071 = !DILocation(line: 132, column: 10, scope: !1051)
!1072 = !DILocation(line: 133, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 133, column: 7)
!1074 = !DILocation(line: 133, column: 14, scope: !1073)
!1075 = !DILocation(line: 133, column: 7, scope: !1051)
!1076 = !DILocation(line: 134, column: 4, scope: !1073)
!1077 = !DILocation(line: 135, column: 10, scope: !1051)
!1078 = !DILocation(line: 135, column: 17, scope: !1051)
!1079 = !DILocation(line: 135, column: 15, scope: !1051)
!1080 = !DILocation(line: 135, column: 38, scope: !1051)
!1081 = !DILocation(line: 135, column: 25, scope: !1051)
!1082 = !DILocation(line: 135, column: 47, scope: !1051)
!1083 = !DILocation(line: 135, column: 3, scope: !1051)
!1084 = !DILocation(line: 136, column: 5, scope: !1051)
!1085 = !DILocation(line: 136, column: 12, scope: !1051)
!1086 = !DILocation(line: 136, column: 10, scope: !1051)
!1087 = !DILocation(line: 136, column: 22, scope: !1051)
!1088 = !DILocation(line: 137, column: 2, scope: !1052)
!1089 = !DILocation(line: 137, column: 2, scope: !1051)
!1090 = !DILocation(line: 129, column: 39, scope: !1052)
!1091 = !DILocation(line: 129, column: 47, scope: !1052)
!1092 = !DILocation(line: 129, column: 37, scope: !1052)
!1093 = !DILocation(line: 129, column: 2, scope: !1052)
!1094 = distinct !{!1094, !1064, !1095, !1024, !1025}
!1095 = !DILocation(line: 137, column: 2, scope: !1053)
!1096 = !DILocation(line: 139, column: 2, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 139, column: 2)
!1098 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 139, column: 2)
!1099 = !DILocation(line: 139, column: 2, scope: !1098)
!1100 = !DILocation(line: 142, column: 2, scope: !1042)
!1101 = !DILocation(line: 143, column: 1, scope: !1042)
!1102 = !DISubprogram(name: "kfree", scope: !29, file: !29, line: 227, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !549}
!1105 = distinct !DISubprogram(name: "kobject_set_name_vargs", scope: !3, file: !3, line: 266, type: !1106, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1115)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!113, !69, !73, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1109, file: !3, line: 171, baseType: !7, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1109, file: !3, line: 171, baseType: !7, size: 32, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1109, file: !3, line: 171, baseType: !66, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1109, file: !3, line: 171, baseType: !66, size: 64, offset: 128)
!1115 = !{!1116, !1117, !1118, !1119, !1120}
!1116 = !DILocalVariable(name: "kobj", arg: 1, scope: !1105, file: !3, line: 266, type: !69)
!1117 = !DILocalVariable(name: "fmt", arg: 2, scope: !1105, file: !3, line: 266, type: !73)
!1118 = !DILocalVariable(name: "vargs", arg: 3, scope: !1105, file: !3, line: 267, type: !1108)
!1119 = !DILocalVariable(name: "s", scope: !1105, file: !3, line: 269, type: !73)
!1120 = !DILocalVariable(name: "t", scope: !1121, file: !3, line: 285, type: !160)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 284, column: 22)
!1122 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 284, column: 6)
!1123 = !DILocation(line: 266, column: 44, scope: !1105)
!1124 = !DILocation(line: 266, column: 62, scope: !1105)
!1125 = !DILocation(line: 267, column: 15, scope: !1105)
!1126 = !DILocation(line: 269, column: 2, scope: !1105)
!1127 = !DILocation(line: 269, column: 14, scope: !1105)
!1128 = !DILocation(line: 271, column: 6, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 271, column: 6)
!1130 = !DILocation(line: 271, column: 12, scope: !1129)
!1131 = !DILocation(line: 271, column: 17, scope: !1129)
!1132 = !DILocation(line: 271, column: 21, scope: !1129)
!1133 = !DILocation(line: 271, column: 6, scope: !1105)
!1134 = !DILocation(line: 272, column: 3, scope: !1129)
!1135 = !DILocation(line: 274, column: 35, scope: !1105)
!1136 = !DILocation(line: 274, column: 40, scope: !1105)
!1137 = !DILocation(line: 274, column: 6, scope: !1105)
!1138 = !DILocation(line: 274, column: 4, scope: !1105)
!1139 = !DILocation(line: 275, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 275, column: 6)
!1141 = !DILocation(line: 275, column: 6, scope: !1105)
!1142 = !DILocation(line: 276, column: 3, scope: !1140)
!1143 = !DILocation(line: 284, column: 13, scope: !1122)
!1144 = !DILocation(line: 284, column: 6, scope: !1122)
!1145 = !DILocation(line: 284, column: 6, scope: !1105)
!1146 = !DILocation(line: 285, column: 3, scope: !1121)
!1147 = !DILocation(line: 285, column: 9, scope: !1121)
!1148 = !DILocation(line: 287, column: 15, scope: !1121)
!1149 = !DILocation(line: 287, column: 7, scope: !1121)
!1150 = !DILocation(line: 287, column: 5, scope: !1121)
!1151 = !DILocation(line: 288, column: 15, scope: !1121)
!1152 = !DILocation(line: 288, column: 3, scope: !1121)
!1153 = !DILocation(line: 289, column: 8, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 289, column: 7)
!1155 = !DILocation(line: 289, column: 7, scope: !1121)
!1156 = !DILocation(line: 290, column: 4, scope: !1154)
!1157 = !DILocation(line: 291, column: 18, scope: !1121)
!1158 = !DILocation(line: 291, column: 7, scope: !1121)
!1159 = !DILocation(line: 291, column: 5, scope: !1121)
!1160 = !DILocation(line: 292, column: 2, scope: !1122)
!1161 = !DILocation(line: 292, column: 2, scope: !1121)
!1162 = !DILocation(line: 293, column: 14, scope: !1105)
!1163 = !DILocation(line: 293, column: 20, scope: !1105)
!1164 = !DILocation(line: 293, column: 2, scope: !1105)
!1165 = !DILocation(line: 294, column: 15, scope: !1105)
!1166 = !DILocation(line: 294, column: 2, scope: !1105)
!1167 = !DILocation(line: 294, column: 8, scope: !1105)
!1168 = !DILocation(line: 294, column: 13, scope: !1105)
!1169 = !DILocation(line: 296, column: 2, scope: !1105)
!1170 = !DILocation(line: 297, column: 1, scope: !1105)
!1171 = !DISubprogram(name: "kvasprintf_const", scope: !1172, file: !1172, line: 18, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1172 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!73, !67, !73, !1108}
!1175 = !DISubprogram(name: "strchr", scope: !1176, file: !1176, line: 100, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1176 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!160, !73, !113}
!1179 = !DISubprogram(name: "kstrdup", scope: !1176, file: !1176, line: 216, type: !1180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!160, !73, !67}
!1182 = !DISubprogram(name: "kfree_const", scope: !1176, file: !1176, line: 214, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1183 = !DISubprogram(name: "strreplace", scope: !1176, file: !1176, line: 212, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!160, !160, !75, !75}
!1186 = distinct !DISubprogram(name: "kobject_set_name", scope: !3, file: !3, line: 308, type: !1187, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!113, !69, !73, null}
!1189 = !{!1190, !1191, !1192, !1199}
!1190 = !DILocalVariable(name: "kobj", arg: 1, scope: !1186, file: !3, line: 308, type: !69)
!1191 = !DILocalVariable(name: "fmt", arg: 2, scope: !1186, file: !3, line: 308, type: !73)
!1192 = !DILocalVariable(name: "vargs", scope: !1186, file: !3, line: 310, type: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1194, line: 5, baseType: !1195)
!1194 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !1196)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1109, size: 192, elements: !1197)
!1197 = !{!1198}
!1198 = !DISubrange(count: 1)
!1199 = !DILocalVariable(name: "retval", scope: !1186, file: !3, line: 311, type: !113)
!1200 = !DILocation(line: 308, column: 38, scope: !1186)
!1201 = !DILocation(line: 308, column: 56, scope: !1186)
!1202 = !DILocation(line: 310, column: 2, scope: !1186)
!1203 = !DILocation(line: 310, column: 10, scope: !1186)
!1204 = !DILocation(line: 311, column: 2, scope: !1186)
!1205 = !DILocation(line: 311, column: 6, scope: !1186)
!1206 = !DILocation(line: 313, column: 2, scope: !1186)
!1207 = !DILocation(line: 314, column: 34, scope: !1186)
!1208 = !DILocation(line: 314, column: 40, scope: !1186)
!1209 = !DILocation(line: 314, column: 45, scope: !1186)
!1210 = !DILocation(line: 314, column: 11, scope: !1186)
!1211 = !DILocation(line: 314, column: 9, scope: !1186)
!1212 = !DILocation(line: 315, column: 2, scope: !1186)
!1213 = !DILocation(line: 317, column: 9, scope: !1186)
!1214 = !DILocation(line: 318, column: 1, scope: !1186)
!1215 = !DILocation(line: 317, column: 2, scope: !1186)
!1216 = distinct !DISubprogram(name: "kobject_init", scope: !3, file: !3, line: 333, type: !1217, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !69, !174}
!1219 = !{!1220, !1221, !1222, !1223}
!1220 = !DILocalVariable(name: "kobj", arg: 1, scope: !1216, file: !3, line: 333, type: !69)
!1221 = !DILocalVariable(name: "ktype", arg: 2, scope: !1216, file: !3, line: 333, type: !174)
!1222 = !DILocalVariable(name: "err_str", scope: !1216, file: !3, line: 335, type: !160)
!1223 = !DILabel(scope: !1216, name: "error", file: !3, line: 356)
!1224 = !DILocation(line: 333, column: 35, scope: !1216)
!1225 = !DILocation(line: 333, column: 65, scope: !1216)
!1226 = !DILocation(line: 335, column: 2, scope: !1216)
!1227 = !DILocation(line: 335, column: 8, scope: !1216)
!1228 = !DILocation(line: 337, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 337, column: 6)
!1230 = !DILocation(line: 337, column: 6, scope: !1216)
!1231 = !DILocation(line: 338, column: 11, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 337, column: 13)
!1233 = !DILocation(line: 339, column: 3, scope: !1232)
!1234 = !DILocation(line: 341, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 341, column: 6)
!1236 = !DILocation(line: 341, column: 6, scope: !1216)
!1237 = !DILocation(line: 342, column: 11, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 341, column: 14)
!1239 = !DILocation(line: 343, column: 3, scope: !1238)
!1240 = !DILocation(line: 345, column: 6, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 345, column: 6)
!1242 = !DILocation(line: 345, column: 12, scope: !1241)
!1243 = !DILocation(line: 345, column: 6, scope: !1216)
!1244 = !DILocation(line: 347, column: 3, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 347, column: 3)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 345, column: 31)
!1247 = !DILocation(line: 347, column: 3, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 347, column: 3)
!1249 = !DILocation(line: 349, column: 3, scope: !1246)
!1250 = !DILocation(line: 350, column: 2, scope: !1246)
!1251 = !DILocation(line: 352, column: 24, scope: !1216)
!1252 = !DILocation(line: 352, column: 2, scope: !1216)
!1253 = !DILocation(line: 353, column: 16, scope: !1216)
!1254 = !DILocation(line: 353, column: 2, scope: !1216)
!1255 = !DILocation(line: 353, column: 8, scope: !1216)
!1256 = !DILocation(line: 353, column: 14, scope: !1216)
!1257 = !DILocation(line: 354, column: 2, scope: !1216)
!1258 = !DILocation(line: 356, column: 1, scope: !1216)
!1259 = !DILocation(line: 357, column: 2, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 357, column: 2)
!1261 = !DILocation(line: 357, column: 2, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 357, column: 2)
!1263 = !DILocation(line: 358, column: 2, scope: !1216)
!1264 = !DILocation(line: 359, column: 1, scope: !1216)
!1265 = !DISubprogram(name: "_printk", scope: !1266, file: !1266, line: 153, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1266 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!113, !73, null}
!1269 = !DISubprogram(name: "dump_stack_lvl", scope: !1266, file: !1266, line: 192, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !73}
!1272 = distinct !DISubprogram(name: "kobject_init_internal", scope: !3, file: !3, line: 197, type: !180, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1273)
!1273 = !{!1274}
!1274 = !DILocalVariable(name: "kobj", arg: 1, scope: !1272, file: !3, line: 197, type: !69)
!1275 = !DILocation(line: 197, column: 51, scope: !1272)
!1276 = !DILocation(line: 199, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 199, column: 6)
!1278 = !DILocation(line: 199, column: 6, scope: !1272)
!1279 = !DILocation(line: 200, column: 3, scope: !1277)
!1280 = !DILocation(line: 201, column: 13, scope: !1272)
!1281 = !DILocation(line: 201, column: 19, scope: !1272)
!1282 = !DILocation(line: 201, column: 2, scope: !1272)
!1283 = !DILocation(line: 202, column: 18, scope: !1272)
!1284 = !DILocation(line: 202, column: 24, scope: !1272)
!1285 = !DILocation(line: 202, column: 2, scope: !1272)
!1286 = !DILocation(line: 203, column: 2, scope: !1272)
!1287 = !DILocation(line: 203, column: 8, scope: !1272)
!1288 = !DILocation(line: 203, column: 23, scope: !1272)
!1289 = !DILocation(line: 204, column: 2, scope: !1272)
!1290 = !DILocation(line: 204, column: 8, scope: !1272)
!1291 = !DILocation(line: 204, column: 30, scope: !1272)
!1292 = !DILocation(line: 205, column: 2, scope: !1272)
!1293 = !DILocation(line: 205, column: 8, scope: !1272)
!1294 = !DILocation(line: 205, column: 33, scope: !1272)
!1295 = !DILocation(line: 206, column: 2, scope: !1272)
!1296 = !DILocation(line: 206, column: 8, scope: !1272)
!1297 = !DILocation(line: 206, column: 26, scope: !1272)
!1298 = !DILocation(line: 207, column: 1, scope: !1272)
!1299 = distinct !DISubprogram(name: "kobject_add", scope: !3, file: !3, line: 410, type: !1300, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!113, !69, !69, !73, null}
!1302 = !{!1303, !1304, !1305, !1306, !1307}
!1303 = !DILocalVariable(name: "kobj", arg: 1, scope: !1299, file: !3, line: 410, type: !69)
!1304 = !DILocalVariable(name: "parent", arg: 2, scope: !1299, file: !3, line: 410, type: !69)
!1305 = !DILocalVariable(name: "fmt", arg: 3, scope: !1299, file: !3, line: 411, type: !73)
!1306 = !DILocalVariable(name: "args", scope: !1299, file: !3, line: 413, type: !1193)
!1307 = !DILocalVariable(name: "retval", scope: !1299, file: !3, line: 414, type: !113)
!1308 = !DILocation(line: 410, column: 33, scope: !1299)
!1309 = !DILocation(line: 410, column: 55, scope: !1299)
!1310 = !DILocation(line: 411, column: 15, scope: !1299)
!1311 = !DILocation(line: 413, column: 2, scope: !1299)
!1312 = !DILocation(line: 413, column: 10, scope: !1299)
!1313 = !DILocation(line: 414, column: 2, scope: !1299)
!1314 = !DILocation(line: 414, column: 6, scope: !1299)
!1315 = !DILocation(line: 416, column: 7, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 416, column: 6)
!1317 = !DILocation(line: 416, column: 6, scope: !1299)
!1318 = !DILocation(line: 417, column: 3, scope: !1316)
!1319 = !DILocation(line: 419, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 419, column: 6)
!1321 = !DILocation(line: 419, column: 13, scope: !1320)
!1322 = !DILocation(line: 419, column: 6, scope: !1299)
!1323 = !DILocation(line: 420, column: 3, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 420, column: 3)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 419, column: 32)
!1326 = !DILocation(line: 420, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 420, column: 3)
!1328 = !DILocation(line: 422, column: 3, scope: !1325)
!1329 = !DILocation(line: 423, column: 3, scope: !1325)
!1330 = !DILocation(line: 425, column: 2, scope: !1299)
!1331 = !DILocation(line: 426, column: 28, scope: !1299)
!1332 = !DILocation(line: 426, column: 34, scope: !1299)
!1333 = !DILocation(line: 426, column: 42, scope: !1299)
!1334 = !DILocation(line: 426, column: 47, scope: !1299)
!1335 = !DILocation(line: 426, column: 11, scope: !1299)
!1336 = !DILocation(line: 426, column: 9, scope: !1299)
!1337 = !DILocation(line: 427, column: 2, scope: !1299)
!1338 = !DILocation(line: 429, column: 9, scope: !1299)
!1339 = !DILocation(line: 429, column: 2, scope: !1299)
!1340 = !DILocation(line: 430, column: 1, scope: !1299)
!1341 = distinct !DISubprogram(name: "kobject_name", scope: !13, file: !13, line: 87, type: !148, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1342)
!1342 = !{!1343}
!1343 = !DILocalVariable(name: "kobj", arg: 1, scope: !1341, file: !13, line: 87, type: !143)
!1344 = !DILocation(line: 87, column: 62, scope: !1341)
!1345 = !DILocation(line: 89, column: 9, scope: !1341)
!1346 = !DILocation(line: 89, column: 15, scope: !1341)
!1347 = !DILocation(line: 89, column: 2, scope: !1341)
!1348 = distinct !DISubprogram(name: "kobject_add_varg", scope: !3, file: !3, line: 362, type: !1349, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!113, !69, !69, !73, !1108}
!1351 = !{!1352, !1353, !1354, !1355, !1356}
!1352 = !DILocalVariable(name: "kobj", arg: 1, scope: !1348, file: !3, line: 362, type: !69)
!1353 = !DILocalVariable(name: "parent", arg: 2, scope: !1348, file: !3, line: 363, type: !69)
!1354 = !DILocalVariable(name: "fmt", arg: 3, scope: !1348, file: !3, line: 364, type: !73)
!1355 = !DILocalVariable(name: "vargs", arg: 4, scope: !1348, file: !3, line: 364, type: !1108)
!1356 = !DILocalVariable(name: "retval", scope: !1348, file: !3, line: 366, type: !113)
!1357 = !DILocation(line: 362, column: 60, scope: !1348)
!1358 = !DILocation(line: 363, column: 25, scope: !1348)
!1359 = !DILocation(line: 364, column: 21, scope: !1348)
!1360 = !DILocation(line: 364, column: 34, scope: !1348)
!1361 = !DILocation(line: 366, column: 2, scope: !1348)
!1362 = !DILocation(line: 366, column: 6, scope: !1348)
!1363 = !DILocation(line: 368, column: 34, scope: !1348)
!1364 = !DILocation(line: 368, column: 40, scope: !1348)
!1365 = !DILocation(line: 368, column: 45, scope: !1348)
!1366 = !DILocation(line: 368, column: 11, scope: !1348)
!1367 = !DILocation(line: 368, column: 9, scope: !1348)
!1368 = !DILocation(line: 369, column: 6, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 369, column: 6)
!1370 = !DILocation(line: 369, column: 6, scope: !1348)
!1371 = !DILocation(line: 370, column: 3, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 370, column: 3)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 369, column: 14)
!1374 = !DILocation(line: 370, column: 3, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 370, column: 3)
!1376 = !DILocation(line: 371, column: 10, scope: !1373)
!1377 = !DILocation(line: 371, column: 3, scope: !1373)
!1378 = !DILocation(line: 373, column: 17, scope: !1348)
!1379 = !DILocation(line: 373, column: 2, scope: !1348)
!1380 = !DILocation(line: 373, column: 8, scope: !1348)
!1381 = !DILocation(line: 373, column: 15, scope: !1348)
!1382 = !DILocation(line: 374, column: 30, scope: !1348)
!1383 = !DILocation(line: 374, column: 9, scope: !1348)
!1384 = !DILocation(line: 374, column: 2, scope: !1348)
!1385 = !DILocation(line: 375, column: 1, scope: !1348)
!1386 = distinct !DISubprogram(name: "kobject_init_and_add", scope: !3, file: !3, line: 448, type: !1387, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!113, !69, !174, !69, !73, null}
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395}
!1390 = !DILocalVariable(name: "kobj", arg: 1, scope: !1386, file: !3, line: 448, type: !69)
!1391 = !DILocalVariable(name: "ktype", arg: 2, scope: !1386, file: !3, line: 448, type: !174)
!1392 = !DILocalVariable(name: "parent", arg: 3, scope: !1386, file: !3, line: 449, type: !69)
!1393 = !DILocalVariable(name: "fmt", arg: 4, scope: !1386, file: !3, line: 449, type: !73)
!1394 = !DILocalVariable(name: "args", scope: !1386, file: !3, line: 451, type: !1193)
!1395 = !DILocalVariable(name: "retval", scope: !1386, file: !3, line: 452, type: !113)
!1396 = !DILocation(line: 448, column: 42, scope: !1386)
!1397 = !DILocation(line: 448, column: 72, scope: !1386)
!1398 = !DILocation(line: 449, column: 21, scope: !1386)
!1399 = !DILocation(line: 449, column: 41, scope: !1386)
!1400 = !DILocation(line: 451, column: 2, scope: !1386)
!1401 = !DILocation(line: 451, column: 10, scope: !1386)
!1402 = !DILocation(line: 452, column: 2, scope: !1386)
!1403 = !DILocation(line: 452, column: 6, scope: !1386)
!1404 = !DILocation(line: 454, column: 15, scope: !1386)
!1405 = !DILocation(line: 454, column: 21, scope: !1386)
!1406 = !DILocation(line: 454, column: 2, scope: !1386)
!1407 = !DILocation(line: 456, column: 2, scope: !1386)
!1408 = !DILocation(line: 457, column: 28, scope: !1386)
!1409 = !DILocation(line: 457, column: 34, scope: !1386)
!1410 = !DILocation(line: 457, column: 42, scope: !1386)
!1411 = !DILocation(line: 457, column: 47, scope: !1386)
!1412 = !DILocation(line: 457, column: 11, scope: !1386)
!1413 = !DILocation(line: 457, column: 9, scope: !1386)
!1414 = !DILocation(line: 458, column: 2, scope: !1386)
!1415 = !DILocation(line: 460, column: 9, scope: !1386)
!1416 = !DILocation(line: 461, column: 1, scope: !1386)
!1417 = !DILocation(line: 460, column: 2, scope: !1386)
!1418 = distinct !DISubprogram(name: "kobject_rename", scope: !3, file: !3, line: 474, type: !1419, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!113, !69, !73}
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1431}
!1422 = !DILocalVariable(name: "kobj", arg: 1, scope: !1418, file: !3, line: 474, type: !69)
!1423 = !DILocalVariable(name: "new_name", arg: 2, scope: !1418, file: !3, line: 474, type: !73)
!1424 = !DILocalVariable(name: "error", scope: !1418, file: !3, line: 476, type: !113)
!1425 = !DILocalVariable(name: "devpath", scope: !1418, file: !3, line: 477, type: !73)
!1426 = !DILocalVariable(name: "dup_name", scope: !1418, file: !3, line: 478, type: !73)
!1427 = !DILocalVariable(name: "name", scope: !1418, file: !3, line: 478, type: !73)
!1428 = !DILocalVariable(name: "devpath_string", scope: !1418, file: !3, line: 479, type: !160)
!1429 = !DILocalVariable(name: "envp", scope: !1418, file: !3, line: 480, type: !1430)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, elements: !842)
!1431 = !DILabel(scope: !1418, name: "out", file: !3, line: 523)
!1432 = !DILocation(line: 474, column: 36, scope: !1418)
!1433 = !DILocation(line: 474, column: 54, scope: !1418)
!1434 = !DILocation(line: 476, column: 2, scope: !1418)
!1435 = !DILocation(line: 476, column: 6, scope: !1418)
!1436 = !DILocation(line: 477, column: 2, scope: !1418)
!1437 = !DILocation(line: 477, column: 14, scope: !1418)
!1438 = !DILocation(line: 478, column: 2, scope: !1418)
!1439 = !DILocation(line: 478, column: 14, scope: !1418)
!1440 = !DILocation(line: 478, column: 32, scope: !1418)
!1441 = !DILocation(line: 479, column: 2, scope: !1418)
!1442 = !DILocation(line: 479, column: 8, scope: !1418)
!1443 = !DILocation(line: 480, column: 2, scope: !1418)
!1444 = !DILocation(line: 480, column: 8, scope: !1418)
!1445 = !DILocation(line: 482, column: 21, scope: !1418)
!1446 = !DILocation(line: 482, column: 9, scope: !1418)
!1447 = !DILocation(line: 482, column: 7, scope: !1418)
!1448 = !DILocation(line: 483, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 483, column: 6)
!1450 = !DILocation(line: 483, column: 6, scope: !1418)
!1451 = !DILocation(line: 484, column: 3, scope: !1449)
!1452 = !DILocation(line: 485, column: 7, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 485, column: 6)
!1454 = !DILocation(line: 485, column: 13, scope: !1453)
!1455 = !DILocation(line: 485, column: 6, scope: !1418)
!1456 = !DILocation(line: 486, column: 15, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 485, column: 21)
!1458 = !DILocation(line: 486, column: 3, scope: !1457)
!1459 = !DILocation(line: 487, column: 3, scope: !1457)
!1460 = !DILocation(line: 490, column: 29, scope: !1418)
!1461 = !DILocation(line: 490, column: 12, scope: !1418)
!1462 = !DILocation(line: 490, column: 10, scope: !1418)
!1463 = !DILocation(line: 491, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 491, column: 6)
!1465 = !DILocation(line: 491, column: 6, scope: !1418)
!1466 = !DILocation(line: 492, column: 9, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 491, column: 16)
!1468 = !DILocation(line: 493, column: 3, scope: !1467)
!1469 = !DILocation(line: 495, column: 34, scope: !1418)
!1470 = !DILocation(line: 495, column: 27, scope: !1418)
!1471 = !DILocation(line: 495, column: 43, scope: !1418)
!1472 = !DILocation(line: 495, column: 19, scope: !1418)
!1473 = !DILocation(line: 495, column: 17, scope: !1418)
!1474 = !DILocation(line: 496, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 496, column: 6)
!1476 = !DILocation(line: 496, column: 6, scope: !1418)
!1477 = !DILocation(line: 497, column: 9, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 496, column: 23)
!1479 = !DILocation(line: 498, column: 3, scope: !1478)
!1480 = !DILocation(line: 500, column: 10, scope: !1418)
!1481 = !DILocation(line: 500, column: 44, scope: !1418)
!1482 = !DILocation(line: 500, column: 2, scope: !1418)
!1483 = !DILocation(line: 501, column: 12, scope: !1418)
!1484 = !DILocation(line: 501, column: 2, scope: !1418)
!1485 = !DILocation(line: 501, column: 10, scope: !1418)
!1486 = !DILocation(line: 502, column: 2, scope: !1418)
!1487 = !DILocation(line: 502, column: 10, scope: !1418)
!1488 = !DILocation(line: 504, column: 34, scope: !1418)
!1489 = !DILocation(line: 504, column: 20, scope: !1418)
!1490 = !DILocation(line: 504, column: 18, scope: !1418)
!1491 = !DILocation(line: 504, column: 7, scope: !1418)
!1492 = !DILocation(line: 505, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 505, column: 6)
!1494 = !DILocation(line: 505, column: 6, scope: !1418)
!1495 = !DILocation(line: 506, column: 9, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 505, column: 13)
!1497 = !DILocation(line: 507, column: 3, scope: !1496)
!1498 = !DILocation(line: 510, column: 30, scope: !1418)
!1499 = !DILocation(line: 510, column: 36, scope: !1418)
!1500 = !DILocation(line: 510, column: 64, scope: !1418)
!1501 = !DILocation(line: 510, column: 46, scope: !1418)
!1502 = !DILocation(line: 510, column: 10, scope: !1418)
!1503 = !DILocation(line: 510, column: 8, scope: !1418)
!1504 = !DILocation(line: 511, column: 6, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 511, column: 6)
!1506 = !DILocation(line: 511, column: 6, scope: !1418)
!1507 = !DILocation(line: 512, column: 3, scope: !1505)
!1508 = !DILocation(line: 515, column: 13, scope: !1418)
!1509 = !DILocation(line: 515, column: 19, scope: !1418)
!1510 = !DILocation(line: 515, column: 11, scope: !1418)
!1511 = !DILocation(line: 516, column: 15, scope: !1418)
!1512 = !DILocation(line: 516, column: 2, scope: !1418)
!1513 = !DILocation(line: 516, column: 8, scope: !1418)
!1514 = !DILocation(line: 516, column: 13, scope: !1418)
!1515 = !DILocation(line: 521, column: 21, scope: !1418)
!1516 = !DILocation(line: 521, column: 38, scope: !1418)
!1517 = !DILocation(line: 521, column: 2, scope: !1418)
!1518 = !DILocation(line: 523, column: 1, scope: !1418)
!1519 = !DILocation(line: 524, column: 14, scope: !1418)
!1520 = !DILocation(line: 524, column: 2, scope: !1418)
!1521 = !DILocation(line: 525, column: 8, scope: !1418)
!1522 = !DILocation(line: 525, column: 2, scope: !1418)
!1523 = !DILocation(line: 526, column: 8, scope: !1418)
!1524 = !DILocation(line: 526, column: 2, scope: !1418)
!1525 = !DILocation(line: 527, column: 14, scope: !1418)
!1526 = !DILocation(line: 527, column: 2, scope: !1418)
!1527 = !DILocation(line: 529, column: 9, scope: !1418)
!1528 = !DILocation(line: 529, column: 2, scope: !1418)
!1529 = !DILocation(line: 530, column: 1, scope: !1418)
!1530 = distinct !DISubprogram(name: "kobject_get", scope: !3, file: !3, line: 636, type: !1531, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!69, !69}
!1533 = !{!1534, !1535, !1540}
!1534 = !DILocalVariable(name: "kobj", arg: 1, scope: !1530, file: !3, line: 636, type: !69)
!1535 = !DILocalVariable(name: "__ret_warn_on", scope: !1536, file: !3, line: 640, type: !113)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 640, column: 4)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 639, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 638, column: 12)
!1539 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 638, column: 6)
!1540 = !DILocalVariable(name: "__flags", scope: !1541, file: !3, line: 640, type: !113)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 640, column: 4)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 640, column: 4)
!1543 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 640, column: 4)
!1544 = !DILocation(line: 636, column: 45, scope: !1530)
!1545 = !DILocation(line: 638, column: 6, scope: !1539)
!1546 = !DILocation(line: 638, column: 6, scope: !1530)
!1547 = !DILocation(line: 639, column: 8, scope: !1537)
!1548 = !DILocation(line: 639, column: 14, scope: !1537)
!1549 = !DILocation(line: 639, column: 7, scope: !1538)
!1550 = !DILocation(line: 640, column: 4, scope: !1536)
!1551 = !DILocation(line: 640, column: 4, scope: !1543)
!1552 = !DILocation(line: 640, column: 4, scope: !1542)
!1553 = !DILocation(line: 640, column: 4, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 640, column: 4)
!1555 = !DILocation(line: 640, column: 4, scope: !1541)
!1556 = !DILocation(line: 640, column: 4, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 640, column: 4)
!1558 = !DILocation(line: 640, column: 4, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 640, column: 4)
!1560 = !{i64 2152236147, i64 2152236176, i64 2152236222, i64 2152236280, i64 2152236334, i64 2152236388, i64 2152236443, i64 2152236474, i64 2152236782, i64 2152236788, i64 2152236835, i64 2152236858, i64 2152236884}
!1561 = !DILocation(line: 640, column: 4, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 640, column: 4)
!1563 = !DILocation(line: 640, column: 4, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 640, column: 4)
!1565 = !DILocation(line: 640, column: 4, scope: !1537)
!1566 = !DILocation(line: 643, column: 13, scope: !1538)
!1567 = !DILocation(line: 643, column: 19, scope: !1538)
!1568 = !DILocation(line: 643, column: 3, scope: !1538)
!1569 = !DILocation(line: 644, column: 2, scope: !1538)
!1570 = !DILocation(line: 645, column: 9, scope: !1530)
!1571 = !DILocation(line: 645, column: 2, scope: !1530)
!1572 = distinct !DISubprogram(name: "kobject_put", scope: !3, file: !3, line: 730, type: !180, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1573)
!1573 = !{!1574, !1575, !1580}
!1574 = !DILocalVariable(name: "kobj", arg: 1, scope: !1572, file: !3, line: 730, type: !69)
!1575 = !DILocalVariable(name: "__ret_warn_on", scope: !1576, file: !3, line: 734, type: !113)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 734, column: 4)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 733, column: 7)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 732, column: 12)
!1579 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 732, column: 6)
!1580 = !DILocalVariable(name: "__flags", scope: !1581, file: !3, line: 734, type: !113)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 734, column: 4)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 734, column: 4)
!1583 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 734, column: 4)
!1584 = !DILocation(line: 730, column: 34, scope: !1572)
!1585 = !DILocation(line: 732, column: 6, scope: !1579)
!1586 = !DILocation(line: 732, column: 6, scope: !1572)
!1587 = !DILocation(line: 733, column: 8, scope: !1577)
!1588 = !DILocation(line: 733, column: 14, scope: !1577)
!1589 = !DILocation(line: 733, column: 7, scope: !1578)
!1590 = !DILocation(line: 734, column: 4, scope: !1576)
!1591 = !DILocation(line: 734, column: 4, scope: !1583)
!1592 = !DILocation(line: 734, column: 4, scope: !1582)
!1593 = !DILocation(line: 734, column: 4, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 734, column: 4)
!1595 = !DILocation(line: 734, column: 4, scope: !1581)
!1596 = !DILocation(line: 734, column: 4, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 734, column: 4)
!1598 = !DILocation(line: 734, column: 4, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 734, column: 4)
!1600 = !{i64 2152244847, i64 2152244876, i64 2152244922, i64 2152244980, i64 2152245034, i64 2152245088, i64 2152245143, i64 2152245174, i64 2152245482, i64 2152245488, i64 2152245535, i64 2152245558, i64 2152245584}
!1601 = !DILocation(line: 734, column: 4, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 734, column: 4)
!1603 = !DILocation(line: 734, column: 4, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 734, column: 4)
!1605 = !DILocation(line: 734, column: 4, scope: !1577)
!1606 = !DILocation(line: 737, column: 13, scope: !1578)
!1607 = !DILocation(line: 737, column: 19, scope: !1578)
!1608 = !DILocation(line: 737, column: 3, scope: !1578)
!1609 = !DILocation(line: 738, column: 2, scope: !1578)
!1610 = !DILocation(line: 739, column: 1, scope: !1572)
!1611 = distinct !DISubprogram(name: "kmalloc", scope: !29, file: !29, line: 591, type: !1030, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1612)
!1612 = !{!1613, !1614, !1615}
!1613 = !DILocalVariable(name: "size", arg: 1, scope: !1611, file: !29, line: 591, type: !207)
!1614 = !DILocalVariable(name: "flags", arg: 2, scope: !1611, file: !29, line: 591, type: !67)
!1615 = !DILocalVariable(name: "index", scope: !1616, file: !29, line: 594, type: !7)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !29, line: 593, column: 42)
!1617 = distinct !DILexicalBlock(scope: !1611, file: !29, line: 593, column: 6)
!1618 = !DILocation(line: 591, column: 61, scope: !1611)
!1619 = !DILocation(line: 591, column: 73, scope: !1611)
!1620 = !DILocation(line: 593, column: 27, scope: !1617)
!1621 = !DILocation(line: 593, column: 6, scope: !1617)
!1622 = !DILocation(line: 593, column: 33, scope: !1617)
!1623 = !DILocation(line: 593, column: 36, scope: !1617)
!1624 = !DILocation(line: 593, column: 6, scope: !1611)
!1625 = !DILocation(line: 594, column: 3, scope: !1616)
!1626 = !DILocation(line: 594, column: 16, scope: !1616)
!1627 = !DILocation(line: 596, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1616, file: !29, line: 596, column: 7)
!1629 = !DILocation(line: 596, column: 12, scope: !1628)
!1630 = !DILocation(line: 596, column: 7, scope: !1616)
!1631 = !DILocation(line: 597, column: 25, scope: !1628)
!1632 = !DILocation(line: 597, column: 31, scope: !1628)
!1633 = !DILocation(line: 597, column: 11, scope: !1628)
!1634 = !DILocation(line: 597, column: 4, scope: !1628)
!1635 = !DILocation(line: 599, column: 11, scope: !1616)
!1636 = !DILocation(line: 599, column: 9, scope: !1616)
!1637 = !DILocation(line: 601, column: 33, scope: !1616)
!1638 = !DILocation(line: 601, column: 40, scope: !1616)
!1639 = !DILocation(line: 601, column: 20, scope: !1616)
!1640 = !DILocation(line: 601, column: 5, scope: !1616)
!1641 = !DILocation(line: 601, column: 51, scope: !1616)
!1642 = !DILocation(line: 602, column: 5, scope: !1616)
!1643 = !DILocation(line: 602, column: 12, scope: !1616)
!1644 = !DILocation(line: 600, column: 10, scope: !1616)
!1645 = !DILocation(line: 600, column: 3, scope: !1616)
!1646 = !DILocation(line: 603, column: 2, scope: !1617)
!1647 = !DILocation(line: 604, column: 19, scope: !1611)
!1648 = !DILocation(line: 604, column: 25, scope: !1611)
!1649 = !DILocation(line: 604, column: 9, scope: !1611)
!1650 = !DILocation(line: 604, column: 2, scope: !1611)
!1651 = !DILocation(line: 605, column: 1, scope: !1611)
!1652 = !DISubprogram(name: "strlen", scope: !1176, file: !1176, line: 128, type: !1653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!210, !73}
!1655 = !DISubprogram(name: "sprintf", scope: !1172, file: !1172, line: 10, type: !1656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!113, !160, !73, null}
!1658 = !DISubprogram(name: "kstrdup_const", scope: !1176, file: !1176, line: 217, type: !1659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!73, !73, !67}
!1661 = !DISubprogram(name: "sysfs_rename_dir_ns", scope: !186, file: !186, line: 263, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!113, !69, !73, !549}
!1664 = !DISubprogram(name: "kobject_uevent_env", scope: !13, file: !13, line: 215, type: !1665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!113, !69, !12, !1667}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1668 = distinct !DISubprogram(name: "kobject_move", scope: !3, file: !3, line: 538, type: !1669, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1671)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!113, !69, !69}
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1672 = !DILocalVariable(name: "kobj", arg: 1, scope: !1668, file: !3, line: 538, type: !69)
!1673 = !DILocalVariable(name: "new_parent", arg: 2, scope: !1668, file: !3, line: 538, type: !69)
!1674 = !DILocalVariable(name: "error", scope: !1668, file: !3, line: 540, type: !113)
!1675 = !DILocalVariable(name: "old_parent", scope: !1668, file: !3, line: 541, type: !69)
!1676 = !DILocalVariable(name: "devpath", scope: !1668, file: !3, line: 542, type: !73)
!1677 = !DILocalVariable(name: "devpath_string", scope: !1668, file: !3, line: 543, type: !160)
!1678 = !DILocalVariable(name: "envp", scope: !1668, file: !3, line: 544, type: !1430)
!1679 = !DILabel(scope: !1668, name: "out", file: !3, line: 577)
!1680 = !DILocation(line: 538, column: 34, scope: !1668)
!1681 = !DILocation(line: 538, column: 56, scope: !1668)
!1682 = !DILocation(line: 540, column: 2, scope: !1668)
!1683 = !DILocation(line: 540, column: 6, scope: !1668)
!1684 = !DILocation(line: 541, column: 2, scope: !1668)
!1685 = !DILocation(line: 541, column: 18, scope: !1668)
!1686 = !DILocation(line: 542, column: 2, scope: !1668)
!1687 = !DILocation(line: 542, column: 14, scope: !1668)
!1688 = !DILocation(line: 543, column: 2, scope: !1668)
!1689 = !DILocation(line: 543, column: 8, scope: !1668)
!1690 = !DILocation(line: 544, column: 2, scope: !1668)
!1691 = !DILocation(line: 544, column: 8, scope: !1668)
!1692 = !DILocation(line: 546, column: 21, scope: !1668)
!1693 = !DILocation(line: 546, column: 9, scope: !1668)
!1694 = !DILocation(line: 546, column: 7, scope: !1668)
!1695 = !DILocation(line: 547, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 547, column: 6)
!1697 = !DILocation(line: 547, column: 6, scope: !1668)
!1698 = !DILocation(line: 548, column: 3, scope: !1696)
!1699 = !DILocation(line: 549, column: 27, scope: !1668)
!1700 = !DILocation(line: 549, column: 15, scope: !1668)
!1701 = !DILocation(line: 549, column: 13, scope: !1668)
!1702 = !DILocation(line: 550, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 550, column: 6)
!1704 = !DILocation(line: 550, column: 6, scope: !1668)
!1705 = !DILocation(line: 551, column: 7, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 551, column: 7)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 550, column: 19)
!1708 = !DILocation(line: 551, column: 13, scope: !1706)
!1709 = !DILocation(line: 551, column: 7, scope: !1707)
!1710 = !DILocation(line: 552, column: 30, scope: !1706)
!1711 = !DILocation(line: 552, column: 36, scope: !1706)
!1712 = !DILocation(line: 552, column: 42, scope: !1706)
!1713 = !DILocation(line: 552, column: 17, scope: !1706)
!1714 = !DILocation(line: 552, column: 15, scope: !1706)
!1715 = !DILocation(line: 552, column: 4, scope: !1706)
!1716 = !DILocation(line: 553, column: 2, scope: !1707)
!1717 = !DILocation(line: 556, column: 29, scope: !1668)
!1718 = !DILocation(line: 556, column: 12, scope: !1668)
!1719 = !DILocation(line: 556, column: 10, scope: !1668)
!1720 = !DILocation(line: 557, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 557, column: 6)
!1722 = !DILocation(line: 557, column: 6, scope: !1668)
!1723 = !DILocation(line: 558, column: 9, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 557, column: 16)
!1725 = !DILocation(line: 559, column: 3, scope: !1724)
!1726 = !DILocation(line: 561, column: 34, scope: !1668)
!1727 = !DILocation(line: 561, column: 27, scope: !1668)
!1728 = !DILocation(line: 561, column: 43, scope: !1668)
!1729 = !DILocation(line: 561, column: 19, scope: !1668)
!1730 = !DILocation(line: 561, column: 17, scope: !1668)
!1731 = !DILocation(line: 562, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 562, column: 6)
!1733 = !DILocation(line: 562, column: 6, scope: !1668)
!1734 = !DILocation(line: 563, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 562, column: 23)
!1736 = !DILocation(line: 564, column: 3, scope: !1735)
!1737 = !DILocation(line: 566, column: 10, scope: !1668)
!1738 = !DILocation(line: 566, column: 44, scope: !1668)
!1739 = !DILocation(line: 566, column: 2, scope: !1668)
!1740 = !DILocation(line: 567, column: 12, scope: !1668)
!1741 = !DILocation(line: 567, column: 2, scope: !1668)
!1742 = !DILocation(line: 567, column: 10, scope: !1668)
!1743 = !DILocation(line: 568, column: 2, scope: !1668)
!1744 = !DILocation(line: 568, column: 10, scope: !1668)
!1745 = !DILocation(line: 569, column: 28, scope: !1668)
!1746 = !DILocation(line: 569, column: 34, scope: !1668)
!1747 = !DILocation(line: 569, column: 64, scope: !1668)
!1748 = !DILocation(line: 569, column: 46, scope: !1668)
!1749 = !DILocation(line: 569, column: 10, scope: !1668)
!1750 = !DILocation(line: 569, column: 8, scope: !1668)
!1751 = !DILocation(line: 570, column: 6, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 570, column: 6)
!1753 = !DILocation(line: 570, column: 6, scope: !1668)
!1754 = !DILocation(line: 571, column: 3, scope: !1752)
!1755 = !DILocation(line: 572, column: 15, scope: !1668)
!1756 = !DILocation(line: 572, column: 21, scope: !1668)
!1757 = !DILocation(line: 572, column: 13, scope: !1668)
!1758 = !DILocation(line: 573, column: 17, scope: !1668)
!1759 = !DILocation(line: 573, column: 2, scope: !1668)
!1760 = !DILocation(line: 573, column: 8, scope: !1668)
!1761 = !DILocation(line: 573, column: 15, scope: !1668)
!1762 = !DILocation(line: 574, column: 13, scope: !1668)
!1763 = !DILocation(line: 575, column: 14, scope: !1668)
!1764 = !DILocation(line: 575, column: 2, scope: !1668)
!1765 = !DILocation(line: 576, column: 21, scope: !1668)
!1766 = !DILocation(line: 576, column: 38, scope: !1668)
!1767 = !DILocation(line: 576, column: 2, scope: !1668)
!1768 = !DILocation(line: 577, column: 1, scope: !1668)
!1769 = !DILocation(line: 578, column: 14, scope: !1668)
!1770 = !DILocation(line: 578, column: 2, scope: !1668)
!1771 = !DILocation(line: 579, column: 14, scope: !1668)
!1772 = !DILocation(line: 579, column: 2, scope: !1668)
!1773 = !DILocation(line: 580, column: 8, scope: !1668)
!1774 = !DILocation(line: 580, column: 2, scope: !1668)
!1775 = !DILocation(line: 581, column: 8, scope: !1668)
!1776 = !DILocation(line: 581, column: 2, scope: !1668)
!1777 = !DILocation(line: 582, column: 9, scope: !1668)
!1778 = !DILocation(line: 582, column: 2, scope: !1668)
!1779 = !DILocation(line: 583, column: 1, scope: !1668)
!1780 = !DISubprogram(name: "sysfs_move_dir_ns", scope: !186, file: !186, line: 265, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!113, !69, !69, !549}
!1783 = distinct !DISubprogram(name: "kobject_del", scope: !3, file: !3, line: 619, type: !180, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1784)
!1784 = !{!1785, !1786}
!1785 = !DILocalVariable(name: "kobj", arg: 1, scope: !1783, file: !3, line: 619, type: !69)
!1786 = !DILocalVariable(name: "parent", scope: !1783, file: !3, line: 621, type: !69)
!1787 = !DILocation(line: 619, column: 34, scope: !1783)
!1788 = !DILocation(line: 621, column: 2, scope: !1783)
!1789 = !DILocation(line: 621, column: 18, scope: !1783)
!1790 = !DILocation(line: 623, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 623, column: 6)
!1792 = !DILocation(line: 623, column: 6, scope: !1783)
!1793 = !DILocation(line: 624, column: 3, scope: !1791)
!1794 = !DILocation(line: 626, column: 11, scope: !1783)
!1795 = !DILocation(line: 626, column: 17, scope: !1783)
!1796 = !DILocation(line: 626, column: 9, scope: !1783)
!1797 = !DILocation(line: 627, column: 16, scope: !1783)
!1798 = !DILocation(line: 627, column: 2, scope: !1783)
!1799 = !DILocation(line: 628, column: 14, scope: !1783)
!1800 = !DILocation(line: 628, column: 2, scope: !1783)
!1801 = !DILocation(line: 629, column: 1, scope: !1783)
!1802 = distinct !DISubprogram(name: "__kobject_del", scope: !3, file: !3, line: 586, type: !180, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1803)
!1803 = !{!1804, !1805, !1806}
!1804 = !DILocalVariable(name: "kobj", arg: 1, scope: !1802, file: !3, line: 586, type: !69)
!1805 = !DILocalVariable(name: "sd", scope: !1802, file: !3, line: 588, type: !585)
!1806 = !DILocalVariable(name: "ktype", scope: !1802, file: !3, line: 589, type: !174)
!1807 = !DILocation(line: 586, column: 43, scope: !1802)
!1808 = !DILocation(line: 588, column: 2, scope: !1802)
!1809 = !DILocation(line: 588, column: 22, scope: !1802)
!1810 = !DILocation(line: 589, column: 2, scope: !1802)
!1811 = !DILocation(line: 589, column: 26, scope: !1802)
!1812 = !DILocation(line: 591, column: 7, scope: !1802)
!1813 = !DILocation(line: 591, column: 13, scope: !1802)
!1814 = !DILocation(line: 591, column: 5, scope: !1802)
!1815 = !DILocation(line: 592, column: 20, scope: !1802)
!1816 = !DILocation(line: 592, column: 10, scope: !1802)
!1817 = !DILocation(line: 592, column: 8, scope: !1802)
!1818 = !DILocation(line: 594, column: 6, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 594, column: 6)
!1820 = !DILocation(line: 594, column: 6, scope: !1802)
!1821 = !DILocation(line: 595, column: 23, scope: !1819)
!1822 = !DILocation(line: 595, column: 29, scope: !1819)
!1823 = !DILocation(line: 595, column: 36, scope: !1819)
!1824 = !DILocation(line: 595, column: 3, scope: !1819)
!1825 = !DILocation(line: 598, column: 6, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 598, column: 6)
!1827 = !DILocation(line: 598, column: 12, scope: !1826)
!1828 = !DILocation(line: 598, column: 34, scope: !1826)
!1829 = !DILocation(line: 598, column: 38, scope: !1826)
!1830 = !DILocation(line: 598, column: 44, scope: !1826)
!1831 = !DILocation(line: 598, column: 6, scope: !1802)
!1832 = !DILocation(line: 599, column: 3, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 599, column: 3)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 599, column: 3)
!1835 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 598, column: 70)
!1836 = !DILocation(line: 599, column: 3, scope: !1834)
!1837 = !DILocation(line: 601, column: 18, scope: !1835)
!1838 = !DILocation(line: 601, column: 3, scope: !1835)
!1839 = !DILocation(line: 602, column: 2, scope: !1835)
!1840 = !DILocation(line: 604, column: 19, scope: !1802)
!1841 = !DILocation(line: 604, column: 2, scope: !1802)
!1842 = !DILocation(line: 605, column: 12, scope: !1802)
!1843 = !DILocation(line: 605, column: 2, scope: !1802)
!1844 = !DILocation(line: 607, column: 2, scope: !1802)
!1845 = !DILocation(line: 607, column: 8, scope: !1802)
!1846 = !DILocation(line: 607, column: 23, scope: !1802)
!1847 = !DILocation(line: 608, column: 18, scope: !1802)
!1848 = !DILocation(line: 608, column: 2, scope: !1802)
!1849 = !DILocation(line: 609, column: 2, scope: !1802)
!1850 = !DILocation(line: 609, column: 8, scope: !1802)
!1851 = !DILocation(line: 609, column: 15, scope: !1802)
!1852 = !DILocation(line: 610, column: 1, scope: !1802)
!1853 = !DISubprogram(name: "__warn_printk", scope: !1854, file: !1854, line: 93, type: !1855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1854 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !73, null}
!1857 = distinct !DISubprogram(name: "kref_get", scope: !700, file: !700, line: 43, type: !1858, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1861)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!1861 = !{!1862}
!1862 = !DILocalVariable(name: "kref", arg: 1, scope: !1857, file: !700, line: 43, type: !1860)
!1863 = !DILocation(line: 43, column: 42, scope: !1857)
!1864 = !DILocation(line: 45, column: 16, scope: !1857)
!1865 = !DILocation(line: 45, column: 22, scope: !1857)
!1866 = !DILocation(line: 45, column: 2, scope: !1857)
!1867 = !DILocation(line: 46, column: 1, scope: !1857)
!1868 = distinct !DISubprogram(name: "kobject_get_unless_zero", scope: !3, file: !3, line: 649, type: !1531, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1869)
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "kobj", arg: 1, scope: !1868, file: !3, line: 649, type: !69)
!1871 = !DILocation(line: 649, column: 71, scope: !1868)
!1872 = !DILocation(line: 651, column: 7, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 651, column: 6)
!1874 = !DILocation(line: 651, column: 6, scope: !1868)
!1875 = !DILocation(line: 652, column: 3, scope: !1873)
!1876 = !DILocation(line: 653, column: 29, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 653, column: 6)
!1878 = !DILocation(line: 653, column: 35, scope: !1877)
!1879 = !DILocation(line: 653, column: 7, scope: !1877)
!1880 = !DILocation(line: 653, column: 6, scope: !1868)
!1881 = !DILocation(line: 654, column: 8, scope: !1877)
!1882 = !DILocation(line: 654, column: 3, scope: !1877)
!1883 = !DILocation(line: 655, column: 9, scope: !1868)
!1884 = !DILocation(line: 655, column: 2, scope: !1868)
!1885 = !DILocation(line: 656, column: 1, scope: !1868)
!1886 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !700, file: !700, line: 109, type: !1887, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!113, !1860}
!1889 = !{!1890}
!1890 = !DILocalVariable(name: "kref", arg: 1, scope: !1886, file: !700, line: 109, type: !1860)
!1891 = !DILocation(line: 109, column: 66, scope: !1886)
!1892 = !DILocation(line: 111, column: 32, scope: !1886)
!1893 = !DILocation(line: 111, column: 38, scope: !1886)
!1894 = !DILocation(line: 111, column: 9, scope: !1886)
!1895 = !DILocation(line: 111, column: 2, scope: !1886)
!1896 = distinct !DISubprogram(name: "kref_put", scope: !700, file: !700, line: 62, type: !1897, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1900)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!113, !1860, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1900 = !{!1901, !1902}
!1901 = !DILocalVariable(name: "kref", arg: 1, scope: !1896, file: !700, line: 62, type: !1860)
!1902 = !DILocalVariable(name: "release", arg: 2, scope: !1896, file: !700, line: 62, type: !1899)
!1903 = !DILocation(line: 62, column: 41, scope: !1896)
!1904 = !DILocation(line: 62, column: 54, scope: !1896)
!1905 = !DILocation(line: 64, column: 29, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1896, file: !700, line: 64, column: 6)
!1907 = !DILocation(line: 64, column: 35, scope: !1906)
!1908 = !DILocation(line: 64, column: 6, scope: !1906)
!1909 = !DILocation(line: 64, column: 6, scope: !1896)
!1910 = !DILocation(line: 65, column: 3, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !700, line: 64, column: 46)
!1912 = !DILocation(line: 65, column: 11, scope: !1911)
!1913 = !DILocation(line: 66, column: 3, scope: !1911)
!1914 = !DILocation(line: 68, column: 2, scope: !1896)
!1915 = !DILocation(line: 69, column: 1, scope: !1896)
!1916 = distinct !DISubprogram(name: "kobject_release", scope: !3, file: !3, line: 709, type: !1858, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DILocalVariable(name: "kref", arg: 1, scope: !1916, file: !3, line: 709, type: !1860)
!1919 = !DILocalVariable(name: "kobj", scope: !1916, file: !3, line: 711, type: !69)
!1920 = !DILocalVariable(name: "__mptr", scope: !1921, file: !3, line: 711, type: !66)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 711, column: 25)
!1922 = !DILocation(line: 709, column: 42, scope: !1916)
!1923 = !DILocation(line: 711, column: 2, scope: !1916)
!1924 = !DILocation(line: 711, column: 18, scope: !1916)
!1925 = !DILocation(line: 711, column: 25, scope: !1921)
!1926 = !DILocation(line: 711, column: 25, scope: !1916)
!1927 = !DILocation(line: 720, column: 18, scope: !1916)
!1928 = !DILocation(line: 720, column: 2, scope: !1916)
!1929 = !DILocation(line: 722, column: 1, scope: !1916)
!1930 = distinct !DISubprogram(name: "kobject_create_and_add", scope: !3, file: !3, line: 789, type: !1931, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!69, !73, !69}
!1933 = !{!1934, !1935, !1936, !1937}
!1934 = !DILocalVariable(name: "name", arg: 1, scope: !1930, file: !3, line: 789, type: !73)
!1935 = !DILocalVariable(name: "parent", arg: 2, scope: !1930, file: !3, line: 789, type: !69)
!1936 = !DILocalVariable(name: "kobj", scope: !1930, file: !3, line: 791, type: !69)
!1937 = !DILocalVariable(name: "retval", scope: !1930, file: !3, line: 792, type: !113)
!1938 = !DILocation(line: 789, column: 52, scope: !1930)
!1939 = !DILocation(line: 789, column: 74, scope: !1930)
!1940 = !DILocation(line: 791, column: 2, scope: !1930)
!1941 = !DILocation(line: 791, column: 18, scope: !1930)
!1942 = !DILocation(line: 792, column: 2, scope: !1930)
!1943 = !DILocation(line: 792, column: 6, scope: !1930)
!1944 = !DILocation(line: 794, column: 9, scope: !1930)
!1945 = !DILocation(line: 794, column: 7, scope: !1930)
!1946 = !DILocation(line: 795, column: 7, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 795, column: 6)
!1948 = !DILocation(line: 795, column: 6, scope: !1930)
!1949 = !DILocation(line: 796, column: 3, scope: !1947)
!1950 = !DILocation(line: 798, column: 23, scope: !1930)
!1951 = !DILocation(line: 798, column: 29, scope: !1930)
!1952 = !DILocation(line: 798, column: 43, scope: !1930)
!1953 = !DILocation(line: 798, column: 11, scope: !1930)
!1954 = !DILocation(line: 798, column: 9, scope: !1930)
!1955 = !DILocation(line: 799, column: 6, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 799, column: 6)
!1957 = !DILocation(line: 799, column: 6, scope: !1930)
!1958 = !DILocation(line: 800, column: 3, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 800, column: 3)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 799, column: 14)
!1961 = !DILocation(line: 800, column: 3, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 800, column: 3)
!1963 = !DILocation(line: 801, column: 15, scope: !1960)
!1964 = !DILocation(line: 801, column: 3, scope: !1960)
!1965 = !DILocation(line: 802, column: 8, scope: !1960)
!1966 = !DILocation(line: 803, column: 2, scope: !1960)
!1967 = !DILocation(line: 804, column: 9, scope: !1930)
!1968 = !DILocation(line: 804, column: 2, scope: !1930)
!1969 = !DILocation(line: 805, column: 1, scope: !1930)
!1970 = distinct !DISubprogram(name: "kobject_create", scope: !3, file: !3, line: 764, type: !1971, scopeLine: 765, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!69}
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "kobj", scope: !1970, file: !3, line: 766, type: !69)
!1975 = !DILocation(line: 766, column: 2, scope: !1970)
!1976 = !DILocation(line: 766, column: 18, scope: !1970)
!1977 = !DILocation(line: 768, column: 9, scope: !1970)
!1978 = !DILocation(line: 768, column: 7, scope: !1970)
!1979 = !DILocation(line: 769, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 769, column: 6)
!1981 = !DILocation(line: 769, column: 6, scope: !1970)
!1982 = !DILocation(line: 770, column: 3, scope: !1980)
!1983 = !DILocation(line: 772, column: 15, scope: !1970)
!1984 = !DILocation(line: 772, column: 2, scope: !1970)
!1985 = !DILocation(line: 773, column: 9, scope: !1970)
!1986 = !DILocation(line: 773, column: 2, scope: !1970)
!1987 = !DILocation(line: 774, column: 1, scope: !1970)
!1988 = distinct !DISubprogram(name: "kset_init", scope: !3, file: !3, line: 812, type: !1989, scopeLine: 813, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !84}
!1991 = !{!1992}
!1992 = !DILocalVariable(name: "k", arg: 1, scope: !1988, file: !3, line: 812, type: !84)
!1993 = !DILocation(line: 812, column: 29, scope: !1988)
!1994 = !DILocation(line: 814, column: 25, scope: !1988)
!1995 = !DILocation(line: 814, column: 28, scope: !1988)
!1996 = !DILocation(line: 814, column: 2, scope: !1988)
!1997 = !DILocation(line: 815, column: 18, scope: !1988)
!1998 = !DILocation(line: 815, column: 21, scope: !1988)
!1999 = !DILocation(line: 815, column: 2, scope: !1988)
!2000 = !DILocation(line: 816, column: 2, scope: !1988)
!2001 = !DILocation(line: 816, column: 2, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 816, column: 2)
!2003 = !DILocation(line: 817, column: 1, scope: !1988)
!2004 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2005, file: !2005, line: 35, type: !2006, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2008)
!2005 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !80}
!2008 = !{!2009}
!2009 = !DILocalVariable(name: "list", arg: 1, scope: !2004, file: !2005, line: 35, type: !80)
!2010 = !DILocation(line: 35, column: 53, scope: !2004)
!2011 = !DILocation(line: 37, column: 2, scope: !2004)
!2012 = !DILocation(line: 37, column: 2, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2004, file: !2005, line: 37, column: 2)
!2014 = !DILocation(line: 37, column: 2, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2013, file: !2005, line: 37, column: 2)
!2016 = !DILocation(line: 37, column: 2, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !2005, line: 37, column: 2)
!2018 = !DILocation(line: 38, column: 2, scope: !2004)
!2019 = !DILocation(line: 38, column: 2, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2004, file: !2005, line: 38, column: 2)
!2021 = !DILocation(line: 38, column: 2, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2020, file: !2005, line: 38, column: 2)
!2023 = !DILocation(line: 38, column: 2, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !2005, line: 38, column: 2)
!2025 = !DILocation(line: 39, column: 1, scope: !2004)
!2026 = distinct !DISubprogram(name: "spinlock_check", scope: !2027, file: !2027, line: 324, type: !2028, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2027 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!2032 = !{!2033}
!2033 = !DILocalVariable(name: "lock", arg: 1, scope: !2026, file: !2027, line: 324, type: !2031)
!2034 = !DILocation(line: 324, column: 67, scope: !2026)
!2035 = !DILocation(line: 326, column: 10, scope: !2026)
!2036 = !DILocation(line: 326, column: 16, scope: !2026)
!2037 = !DILocation(line: 326, column: 2, scope: !2026)
!2038 = distinct !DISubprogram(name: "kobj_attr_show", scope: !3, file: !3, line: 820, type: !190, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2039 = !{!2040, !2041, !2042, !2043, !2044, !2045}
!2040 = !DILocalVariable(name: "kobj", arg: 1, scope: !2038, file: !3, line: 820, type: !69)
!2041 = !DILocalVariable(name: "attr", arg: 2, scope: !2038, file: !3, line: 820, type: !197)
!2042 = !DILocalVariable(name: "buf", arg: 3, scope: !2038, file: !3, line: 821, type: !160)
!2043 = !DILocalVariable(name: "kattr", scope: !2038, file: !3, line: 823, type: !723)
!2044 = !DILocalVariable(name: "ret", scope: !2038, file: !3, line: 824, type: !192)
!2045 = !DILocalVariable(name: "__mptr", scope: !2046, file: !3, line: 826, type: !66)
!2046 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 826, column: 10)
!2047 = !DILocation(line: 820, column: 47, scope: !2038)
!2048 = !DILocation(line: 820, column: 71, scope: !2038)
!2049 = !DILocation(line: 821, column: 16, scope: !2038)
!2050 = !DILocation(line: 823, column: 2, scope: !2038)
!2051 = !DILocation(line: 823, column: 25, scope: !2038)
!2052 = !DILocation(line: 824, column: 2, scope: !2038)
!2053 = !DILocation(line: 824, column: 10, scope: !2038)
!2054 = !DILocation(line: 826, column: 10, scope: !2046)
!2055 = !DILocation(line: 826, column: 10, scope: !2038)
!2056 = !DILocation(line: 826, column: 8, scope: !2038)
!2057 = !DILocation(line: 827, column: 6, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 827, column: 6)
!2059 = !DILocation(line: 827, column: 13, scope: !2058)
!2060 = !DILocation(line: 827, column: 6, scope: !2038)
!2061 = !DILocation(line: 828, column: 9, scope: !2058)
!2062 = !DILocation(line: 828, column: 16, scope: !2058)
!2063 = !DILocation(line: 828, column: 21, scope: !2058)
!2064 = !DILocation(line: 828, column: 27, scope: !2058)
!2065 = !DILocation(line: 828, column: 34, scope: !2058)
!2066 = !DILocation(line: 828, column: 7, scope: !2058)
!2067 = !DILocation(line: 828, column: 3, scope: !2058)
!2068 = !DILocation(line: 829, column: 9, scope: !2038)
!2069 = !DILocation(line: 830, column: 1, scope: !2038)
!2070 = !DILocation(line: 829, column: 2, scope: !2038)
!2071 = distinct !DISubprogram(name: "kobj_attr_store", scope: !3, file: !3, line: 832, type: !205, scopeLine: 834, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2073 = !DILocalVariable(name: "kobj", arg: 1, scope: !2071, file: !3, line: 832, type: !69)
!2074 = !DILocalVariable(name: "attr", arg: 2, scope: !2071, file: !3, line: 832, type: !197)
!2075 = !DILocalVariable(name: "buf", arg: 3, scope: !2071, file: !3, line: 833, type: !73)
!2076 = !DILocalVariable(name: "count", arg: 4, scope: !2071, file: !3, line: 833, type: !207)
!2077 = !DILocalVariable(name: "kattr", scope: !2071, file: !3, line: 835, type: !723)
!2078 = !DILocalVariable(name: "ret", scope: !2071, file: !3, line: 836, type: !192)
!2079 = !DILocalVariable(name: "__mptr", scope: !2080, file: !3, line: 838, type: !66)
!2080 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 838, column: 10)
!2081 = !DILocation(line: 832, column: 48, scope: !2071)
!2082 = !DILocation(line: 832, column: 72, scope: !2071)
!2083 = !DILocation(line: 833, column: 23, scope: !2071)
!2084 = !DILocation(line: 833, column: 35, scope: !2071)
!2085 = !DILocation(line: 835, column: 2, scope: !2071)
!2086 = !DILocation(line: 835, column: 25, scope: !2071)
!2087 = !DILocation(line: 836, column: 2, scope: !2071)
!2088 = !DILocation(line: 836, column: 10, scope: !2071)
!2089 = !DILocation(line: 838, column: 10, scope: !2080)
!2090 = !DILocation(line: 838, column: 10, scope: !2071)
!2091 = !DILocation(line: 838, column: 8, scope: !2071)
!2092 = !DILocation(line: 839, column: 6, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 839, column: 6)
!2094 = !DILocation(line: 839, column: 13, scope: !2093)
!2095 = !DILocation(line: 839, column: 6, scope: !2071)
!2096 = !DILocation(line: 840, column: 9, scope: !2093)
!2097 = !DILocation(line: 840, column: 16, scope: !2093)
!2098 = !DILocation(line: 840, column: 22, scope: !2093)
!2099 = !DILocation(line: 840, column: 28, scope: !2093)
!2100 = !DILocation(line: 840, column: 35, scope: !2093)
!2101 = !DILocation(line: 840, column: 40, scope: !2093)
!2102 = !DILocation(line: 840, column: 7, scope: !2093)
!2103 = !DILocation(line: 840, column: 3, scope: !2093)
!2104 = !DILocation(line: 841, column: 9, scope: !2071)
!2105 = !DILocation(line: 842, column: 1, scope: !2071)
!2106 = !DILocation(line: 841, column: 2, scope: !2071)
!2107 = distinct !DISubprogram(name: "kset_register", scope: !3, file: !3, line: 857, type: !2108, scopeLine: 858, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!113, !84}
!2110 = !{!2111, !2112}
!2111 = !DILocalVariable(name: "k", arg: 1, scope: !2107, file: !3, line: 857, type: !84)
!2112 = !DILocalVariable(name: "err", scope: !2107, file: !3, line: 859, type: !113)
!2113 = !DILocation(line: 857, column: 32, scope: !2107)
!2114 = !DILocation(line: 859, column: 2, scope: !2107)
!2115 = !DILocation(line: 859, column: 6, scope: !2107)
!2116 = !DILocation(line: 861, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 861, column: 6)
!2118 = !DILocation(line: 861, column: 6, scope: !2107)
!2119 = !DILocation(line: 862, column: 3, scope: !2117)
!2120 = !DILocation(line: 864, column: 7, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 864, column: 6)
!2122 = !DILocation(line: 864, column: 10, scope: !2121)
!2123 = !DILocation(line: 864, column: 15, scope: !2121)
!2124 = !DILocation(line: 864, column: 6, scope: !2107)
!2125 = !DILocation(line: 865, column: 3, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 865, column: 3)
!2127 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 864, column: 22)
!2128 = !DILocation(line: 865, column: 3, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 865, column: 3)
!2130 = !DILocation(line: 866, column: 3, scope: !2127)
!2131 = !DILocation(line: 869, column: 12, scope: !2107)
!2132 = !DILocation(line: 869, column: 2, scope: !2107)
!2133 = !DILocation(line: 870, column: 30, scope: !2107)
!2134 = !DILocation(line: 870, column: 33, scope: !2107)
!2135 = !DILocation(line: 870, column: 8, scope: !2107)
!2136 = !DILocation(line: 870, column: 6, scope: !2107)
!2137 = !DILocation(line: 871, column: 6, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 871, column: 6)
!2139 = !DILocation(line: 871, column: 6, scope: !2107)
!2140 = !DILocation(line: 872, column: 15, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 871, column: 11)
!2142 = !DILocation(line: 872, column: 18, scope: !2141)
!2143 = !DILocation(line: 872, column: 23, scope: !2141)
!2144 = !DILocation(line: 872, column: 3, scope: !2141)
!2145 = !DILocation(line: 874, column: 3, scope: !2141)
!2146 = !DILocation(line: 874, column: 6, scope: !2141)
!2147 = !DILocation(line: 874, column: 11, scope: !2141)
!2148 = !DILocation(line: 874, column: 16, scope: !2141)
!2149 = !DILocation(line: 875, column: 10, scope: !2141)
!2150 = !DILocation(line: 875, column: 3, scope: !2141)
!2151 = !DILocation(line: 877, column: 18, scope: !2107)
!2152 = !DILocation(line: 877, column: 21, scope: !2107)
!2153 = !DILocation(line: 877, column: 2, scope: !2107)
!2154 = !DILocation(line: 878, column: 2, scope: !2107)
!2155 = !DILocation(line: 879, column: 1, scope: !2107)
!2156 = distinct !DISubprogram(name: "kobject_add_internal", scope: !3, file: !3, line: 210, type: !2157, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!113, !69}
!2159 = !{!2160, !2161, !2162, !2163, !2167}
!2160 = !DILocalVariable(name: "kobj", arg: 1, scope: !2156, file: !3, line: 210, type: !69)
!2161 = !DILocalVariable(name: "error", scope: !2156, file: !3, line: 212, type: !113)
!2162 = !DILocalVariable(name: "parent", scope: !2156, file: !3, line: 213, type: !69)
!2163 = !DILocalVariable(name: "__ret_warn_on", scope: !2164, file: !3, line: 219, type: !113)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 219, column: 3)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 218, column: 37)
!2166 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 218, column: 6)
!2167 = !DILocalVariable(name: "__flags", scope: !2168, file: !3, line: 219, type: !113)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 219, column: 3)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 219, column: 3)
!2170 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 219, column: 3)
!2171 = !DILocation(line: 210, column: 49, scope: !2156)
!2172 = !DILocation(line: 212, column: 2, scope: !2156)
!2173 = !DILocation(line: 212, column: 6, scope: !2156)
!2174 = !DILocation(line: 213, column: 2, scope: !2156)
!2175 = !DILocation(line: 213, column: 18, scope: !2156)
!2176 = !DILocation(line: 215, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 215, column: 6)
!2178 = !DILocation(line: 215, column: 6, scope: !2156)
!2179 = !DILocation(line: 216, column: 3, scope: !2177)
!2180 = !DILocation(line: 218, column: 7, scope: !2166)
!2181 = !DILocation(line: 218, column: 13, scope: !2166)
!2182 = !DILocation(line: 218, column: 18, scope: !2166)
!2183 = !DILocation(line: 218, column: 22, scope: !2166)
!2184 = !DILocation(line: 218, column: 28, scope: !2166)
!2185 = !DILocation(line: 218, column: 6, scope: !2156)
!2186 = !DILocation(line: 219, column: 3, scope: !2164)
!2187 = !DILocation(line: 219, column: 3, scope: !2170)
!2188 = !DILocation(line: 219, column: 3, scope: !2169)
!2189 = !DILocation(line: 219, column: 3, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 219, column: 3)
!2191 = !DILocation(line: 219, column: 3, scope: !2168)
!2192 = !DILocation(line: 219, column: 3, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 219, column: 3)
!2194 = !DILocation(line: 219, column: 3, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 219, column: 3)
!2196 = !{i64 2152215169, i64 2152215198, i64 2152215244, i64 2152215302, i64 2152215356, i64 2152215410, i64 2152215465, i64 2152215496, i64 2152215804, i64 2152215810, i64 2152215857, i64 2152215880, i64 2152215906}
!2197 = !DILocation(line: 219, column: 3, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 219, column: 3)
!2199 = !DILocation(line: 219, column: 3, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 219, column: 3)
!2201 = !DILocation(line: 219, column: 3, scope: !2165)
!2202 = !DILocation(line: 222, column: 3, scope: !2165)
!2203 = !DILocation(line: 225, column: 23, scope: !2156)
!2204 = !DILocation(line: 225, column: 29, scope: !2156)
!2205 = !DILocation(line: 225, column: 11, scope: !2156)
!2206 = !DILocation(line: 225, column: 9, scope: !2156)
!2207 = !DILocation(line: 228, column: 6, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 228, column: 6)
!2209 = !DILocation(line: 228, column: 12, scope: !2208)
!2210 = !DILocation(line: 228, column: 6, scope: !2156)
!2211 = !DILocation(line: 229, column: 8, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 229, column: 7)
!2213 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 228, column: 18)
!2214 = !DILocation(line: 229, column: 7, scope: !2213)
!2215 = !DILocation(line: 230, column: 26, scope: !2212)
!2216 = !DILocation(line: 230, column: 32, scope: !2212)
!2217 = !DILocation(line: 230, column: 38, scope: !2212)
!2218 = !DILocation(line: 230, column: 13, scope: !2212)
!2219 = !DILocation(line: 230, column: 11, scope: !2212)
!2220 = !DILocation(line: 230, column: 4, scope: !2212)
!2221 = !DILocation(line: 231, column: 18, scope: !2213)
!2222 = !DILocation(line: 231, column: 3, scope: !2213)
!2223 = !DILocation(line: 232, column: 18, scope: !2213)
!2224 = !DILocation(line: 232, column: 3, scope: !2213)
!2225 = !DILocation(line: 232, column: 9, scope: !2213)
!2226 = !DILocation(line: 232, column: 16, scope: !2213)
!2227 = !DILocation(line: 233, column: 2, scope: !2213)
!2228 = !DILocation(line: 235, column: 2, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 235, column: 2)
!2230 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 235, column: 2)
!2231 = !DILocation(line: 235, column: 2, scope: !2230)
!2232 = !DILocation(line: 240, column: 21, scope: !2156)
!2233 = !DILocation(line: 240, column: 10, scope: !2156)
!2234 = !DILocation(line: 240, column: 8, scope: !2156)
!2235 = !DILocation(line: 241, column: 6, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 241, column: 6)
!2237 = !DILocation(line: 241, column: 6, scope: !2156)
!2238 = !DILocation(line: 242, column: 19, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 241, column: 13)
!2240 = !DILocation(line: 242, column: 3, scope: !2239)
!2241 = !DILocation(line: 243, column: 15, scope: !2239)
!2242 = !DILocation(line: 243, column: 3, scope: !2239)
!2243 = !DILocation(line: 244, column: 3, scope: !2239)
!2244 = !DILocation(line: 244, column: 9, scope: !2239)
!2245 = !DILocation(line: 244, column: 16, scope: !2239)
!2246 = !DILocation(line: 247, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 247, column: 7)
!2248 = !DILocation(line: 247, column: 13, scope: !2247)
!2249 = !DILocation(line: 247, column: 7, scope: !2239)
!2250 = !DILocation(line: 248, column: 4, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 248, column: 4)
!2252 = !DILocation(line: 248, column: 4, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 248, column: 4)
!2254 = !DILocation(line: 248, column: 4, scope: !2247)
!2255 = !DILocation(line: 251, column: 4, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 251, column: 4)
!2257 = !DILocation(line: 251, column: 4, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 251, column: 4)
!2259 = !DILocation(line: 254, column: 2, scope: !2239)
!2260 = !DILocation(line: 255, column: 3, scope: !2236)
!2261 = !DILocation(line: 255, column: 9, scope: !2236)
!2262 = !DILocation(line: 255, column: 24, scope: !2236)
!2263 = !DILocation(line: 257, column: 9, scope: !2156)
!2264 = !DILocation(line: 257, column: 2, scope: !2156)
!2265 = !DILocation(line: 258, column: 1, scope: !2156)
!2266 = !DISubprogram(name: "kobject_uevent", scope: !13, file: !13, line: 214, type: !2267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!113, !69, !12}
!2269 = distinct !DISubprogram(name: "kset_unregister", scope: !3, file: !3, line: 886, type: !1989, scopeLine: 887, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2270)
!2270 = !{!2271}
!2271 = !DILocalVariable(name: "k", arg: 1, scope: !2269, file: !3, line: 886, type: !84)
!2272 = !DILocation(line: 886, column: 35, scope: !2269)
!2273 = !DILocation(line: 888, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 888, column: 6)
!2275 = !DILocation(line: 888, column: 6, scope: !2269)
!2276 = !DILocation(line: 889, column: 3, scope: !2274)
!2277 = !DILocation(line: 890, column: 15, scope: !2269)
!2278 = !DILocation(line: 890, column: 18, scope: !2269)
!2279 = !DILocation(line: 890, column: 2, scope: !2269)
!2280 = !DILocation(line: 891, column: 15, scope: !2269)
!2281 = !DILocation(line: 891, column: 18, scope: !2269)
!2282 = !DILocation(line: 891, column: 2, scope: !2269)
!2283 = !DILocation(line: 892, column: 1, scope: !2269)
!2284 = distinct !DISubprogram(name: "kset_find_obj", scope: !3, file: !3, line: 904, type: !2285, scopeLine: 905, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!69, !84, !73}
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2295}
!2288 = !DILocalVariable(name: "kset", arg: 1, scope: !2284, file: !3, line: 904, type: !84)
!2289 = !DILocalVariable(name: "name", arg: 2, scope: !2284, file: !3, line: 904, type: !73)
!2290 = !DILocalVariable(name: "k", scope: !2284, file: !3, line: 906, type: !69)
!2291 = !DILocalVariable(name: "ret", scope: !2284, file: !3, line: 907, type: !69)
!2292 = !DILocalVariable(name: "__mptr", scope: !2293, file: !3, line: 911, type: !66)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 911, column: 2)
!2294 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 911, column: 2)
!2295 = !DILocalVariable(name: "__mptr", scope: !2296, file: !3, line: 911, type: !66)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 911, column: 2)
!2297 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 911, column: 2)
!2298 = !DILocation(line: 904, column: 44, scope: !2284)
!2299 = !DILocation(line: 904, column: 62, scope: !2284)
!2300 = !DILocation(line: 906, column: 2, scope: !2284)
!2301 = !DILocation(line: 906, column: 18, scope: !2284)
!2302 = !DILocation(line: 907, column: 2, scope: !2284)
!2303 = !DILocation(line: 907, column: 18, scope: !2284)
!2304 = !DILocation(line: 909, column: 13, scope: !2284)
!2305 = !DILocation(line: 909, column: 19, scope: !2284)
!2306 = !DILocation(line: 909, column: 2, scope: !2284)
!2307 = !DILocation(line: 911, column: 2, scope: !2293)
!2308 = !DILocation(line: 911, column: 2, scope: !2294)
!2309 = !DILocation(line: 911, column: 2, scope: !2297)
!2310 = !DILocation(line: 912, column: 20, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 912, column: 7)
!2312 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 911, column: 45)
!2313 = !DILocation(line: 912, column: 7, scope: !2311)
!2314 = !DILocation(line: 912, column: 23, scope: !2311)
!2315 = !DILocation(line: 912, column: 47, scope: !2311)
!2316 = !DILocation(line: 912, column: 34, scope: !2311)
!2317 = !DILocation(line: 912, column: 51, scope: !2311)
!2318 = !DILocation(line: 912, column: 27, scope: !2311)
!2319 = !DILocation(line: 912, column: 7, scope: !2312)
!2320 = !DILocation(line: 913, column: 34, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 912, column: 58)
!2322 = !DILocation(line: 913, column: 10, scope: !2321)
!2323 = !DILocation(line: 913, column: 8, scope: !2321)
!2324 = !DILocation(line: 914, column: 4, scope: !2321)
!2325 = !DILocation(line: 916, column: 2, scope: !2312)
!2326 = !DILocation(line: 911, column: 2, scope: !2296)
!2327 = distinct !{!2327, !2308, !2328, !1024, !1025}
!2328 = !DILocation(line: 916, column: 2, scope: !2294)
!2329 = !DILocation(line: 918, column: 15, scope: !2284)
!2330 = !DILocation(line: 918, column: 21, scope: !2284)
!2331 = !DILocation(line: 918, column: 2, scope: !2284)
!2332 = !DILocation(line: 919, column: 9, scope: !2284)
!2333 = !DILocation(line: 920, column: 1, scope: !2284)
!2334 = !DILocation(line: 919, column: 2, scope: !2284)
!2335 = distinct !DISubprogram(name: "spin_lock", scope: !2027, file: !2027, line: 349, type: !2336, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2338)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2031}
!2338 = !{!2339}
!2339 = !DILocalVariable(name: "lock", arg: 1, scope: !2335, file: !2027, line: 349, type: !2031)
!2340 = !DILocation(line: 349, column: 51, scope: !2335)
!2341 = !DILocation(line: 351, column: 2, scope: !2335)
!2342 = !DILocation(line: 352, column: 1, scope: !2335)
!2343 = !DISubprogram(name: "strcmp", scope: !1176, file: !1176, line: 88, type: !2344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!113, !73, !73}
!2346 = distinct !DISubprogram(name: "spin_unlock", scope: !2027, file: !2027, line: 389, type: !2336, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2347)
!2347 = !{!2348}
!2348 = !DILocalVariable(name: "lock", arg: 1, scope: !2346, file: !2027, line: 389, type: !2031)
!2349 = !DILocation(line: 389, column: 53, scope: !2346)
!2350 = !DILocation(line: 391, column: 2, scope: !2346)
!2351 = !DILocation(line: 392, column: 1, scope: !2346)
!2352 = distinct !DISubprogram(name: "kset_create_and_add", scope: !3, file: !3, line: 1001, type: !2353, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!84, !73, !134, !69}
!2355 = !{!2356, !2357, !2358, !2359, !2360}
!2356 = !DILocalVariable(name: "name", arg: 1, scope: !2352, file: !3, line: 1001, type: !73)
!2357 = !DILocalVariable(name: "uevent_ops", arg: 2, scope: !2352, file: !3, line: 1002, type: !134)
!2358 = !DILocalVariable(name: "parent_kobj", arg: 3, scope: !2352, file: !3, line: 1003, type: !69)
!2359 = !DILocalVariable(name: "kset", scope: !2352, file: !3, line: 1005, type: !84)
!2360 = !DILocalVariable(name: "error", scope: !2352, file: !3, line: 1006, type: !113)
!2361 = !DILocation(line: 1001, column: 46, scope: !2352)
!2362 = !DILocation(line: 1002, column: 36, scope: !2352)
!2363 = !DILocation(line: 1003, column: 22, scope: !2352)
!2364 = !DILocation(line: 1005, column: 2, scope: !2352)
!2365 = !DILocation(line: 1005, column: 15, scope: !2352)
!2366 = !DILocation(line: 1006, column: 2, scope: !2352)
!2367 = !DILocation(line: 1006, column: 6, scope: !2352)
!2368 = !DILocation(line: 1008, column: 21, scope: !2352)
!2369 = !DILocation(line: 1008, column: 27, scope: !2352)
!2370 = !DILocation(line: 1008, column: 39, scope: !2352)
!2371 = !DILocation(line: 1008, column: 9, scope: !2352)
!2372 = !DILocation(line: 1008, column: 7, scope: !2352)
!2373 = !DILocation(line: 1009, column: 7, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 1009, column: 6)
!2375 = !DILocation(line: 1009, column: 6, scope: !2352)
!2376 = !DILocation(line: 1010, column: 3, scope: !2374)
!2377 = !DILocation(line: 1011, column: 24, scope: !2352)
!2378 = !DILocation(line: 1011, column: 10, scope: !2352)
!2379 = !DILocation(line: 1011, column: 8, scope: !2352)
!2380 = !DILocation(line: 1012, column: 6, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 1012, column: 6)
!2382 = !DILocation(line: 1012, column: 6, scope: !2352)
!2383 = !DILocation(line: 1013, column: 9, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 1012, column: 13)
!2385 = !DILocation(line: 1013, column: 3, scope: !2384)
!2386 = !DILocation(line: 1014, column: 3, scope: !2384)
!2387 = !DILocation(line: 1016, column: 9, scope: !2352)
!2388 = !DILocation(line: 1016, column: 2, scope: !2352)
!2389 = !DILocation(line: 1017, column: 1, scope: !2352)
!2390 = distinct !DISubprogram(name: "kset_create", scope: !3, file: !3, line: 958, type: !2353, scopeLine: 961, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2391)
!2391 = !{!2392, !2393, !2394, !2395, !2396}
!2392 = !DILocalVariable(name: "name", arg: 1, scope: !2390, file: !3, line: 958, type: !73)
!2393 = !DILocalVariable(name: "uevent_ops", arg: 2, scope: !2390, file: !3, line: 959, type: !134)
!2394 = !DILocalVariable(name: "parent_kobj", arg: 3, scope: !2390, file: !3, line: 960, type: !69)
!2395 = !DILocalVariable(name: "kset", scope: !2390, file: !3, line: 962, type: !84)
!2396 = !DILocalVariable(name: "retval", scope: !2390, file: !3, line: 963, type: !113)
!2397 = !DILocation(line: 958, column: 45, scope: !2390)
!2398 = !DILocation(line: 959, column: 35, scope: !2390)
!2399 = !DILocation(line: 960, column: 21, scope: !2390)
!2400 = !DILocation(line: 962, column: 2, scope: !2390)
!2401 = !DILocation(line: 962, column: 15, scope: !2390)
!2402 = !DILocation(line: 963, column: 2, scope: !2390)
!2403 = !DILocation(line: 963, column: 6, scope: !2390)
!2404 = !DILocation(line: 965, column: 9, scope: !2390)
!2405 = !DILocation(line: 965, column: 7, scope: !2390)
!2406 = !DILocation(line: 966, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 966, column: 6)
!2408 = !DILocation(line: 966, column: 6, scope: !2390)
!2409 = !DILocation(line: 967, column: 3, scope: !2407)
!2410 = !DILocation(line: 968, column: 29, scope: !2390)
!2411 = !DILocation(line: 968, column: 35, scope: !2390)
!2412 = !DILocation(line: 968, column: 47, scope: !2390)
!2413 = !DILocation(line: 968, column: 11, scope: !2390)
!2414 = !DILocation(line: 968, column: 9, scope: !2390)
!2415 = !DILocation(line: 969, column: 6, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 969, column: 6)
!2417 = !DILocation(line: 969, column: 6, scope: !2390)
!2418 = !DILocation(line: 970, column: 9, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 969, column: 14)
!2420 = !DILocation(line: 970, column: 3, scope: !2419)
!2421 = !DILocation(line: 971, column: 3, scope: !2419)
!2422 = !DILocation(line: 973, column: 21, scope: !2390)
!2423 = !DILocation(line: 973, column: 2, scope: !2390)
!2424 = !DILocation(line: 973, column: 8, scope: !2390)
!2425 = !DILocation(line: 973, column: 19, scope: !2390)
!2426 = !DILocation(line: 974, column: 22, scope: !2390)
!2427 = !DILocation(line: 974, column: 2, scope: !2390)
!2428 = !DILocation(line: 974, column: 8, scope: !2390)
!2429 = !DILocation(line: 974, column: 13, scope: !2390)
!2430 = !DILocation(line: 974, column: 20, scope: !2390)
!2431 = !DILocation(line: 981, column: 2, scope: !2390)
!2432 = !DILocation(line: 981, column: 8, scope: !2390)
!2433 = !DILocation(line: 981, column: 13, scope: !2390)
!2434 = !DILocation(line: 981, column: 19, scope: !2390)
!2435 = !DILocation(line: 982, column: 2, scope: !2390)
!2436 = !DILocation(line: 982, column: 8, scope: !2390)
!2437 = !DILocation(line: 982, column: 13, scope: !2390)
!2438 = !DILocation(line: 982, column: 18, scope: !2390)
!2439 = !DILocation(line: 984, column: 9, scope: !2390)
!2440 = !DILocation(line: 984, column: 2, scope: !2390)
!2441 = !DILocation(line: 985, column: 1, scope: !2390)
!2442 = distinct !DISubprogram(name: "kobj_ns_type_register", scope: !3, file: !3, line: 1024, type: !2443, scopeLine: 1025, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!113, !532}
!2445 = !{!2446, !2447, !2448, !2449}
!2446 = !DILocalVariable(name: "ops", arg: 1, scope: !2442, file: !3, line: 1024, type: !532)
!2447 = !DILocalVariable(name: "type", scope: !2442, file: !3, line: 1026, type: !5)
!2448 = !DILocalVariable(name: "error", scope: !2442, file: !3, line: 1027, type: !113)
!2449 = !DILabel(scope: !2442, name: "out", file: !3, line: 1042)
!2450 = !DILocation(line: 1024, column: 65, scope: !2442)
!2451 = !DILocation(line: 1026, column: 2, scope: !2442)
!2452 = !DILocation(line: 1026, column: 20, scope: !2442)
!2453 = !DILocation(line: 1026, column: 27, scope: !2442)
!2454 = !DILocation(line: 1026, column: 32, scope: !2442)
!2455 = !DILocation(line: 1027, column: 2, scope: !2442)
!2456 = !DILocation(line: 1027, column: 6, scope: !2442)
!2457 = !DILocation(line: 1029, column: 2, scope: !2442)
!2458 = !DILocation(line: 1031, column: 8, scope: !2442)
!2459 = !DILocation(line: 1032, column: 29, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1032, column: 6)
!2461 = !DILocation(line: 1032, column: 7, scope: !2460)
!2462 = !DILocation(line: 1032, column: 6, scope: !2442)
!2463 = !DILocation(line: 1033, column: 3, scope: !2460)
!2464 = !DILocation(line: 1035, column: 8, scope: !2442)
!2465 = !DILocation(line: 1036, column: 22, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1036, column: 6)
!2467 = !DILocation(line: 1036, column: 6, scope: !2466)
!2468 = !DILocation(line: 1036, column: 6, scope: !2442)
!2469 = !DILocation(line: 1037, column: 3, scope: !2466)
!2470 = !DILocation(line: 1039, column: 8, scope: !2442)
!2471 = !DILocation(line: 1040, column: 26, scope: !2442)
!2472 = !DILocation(line: 1040, column: 18, scope: !2442)
!2473 = !DILocation(line: 1040, column: 2, scope: !2442)
!2474 = !DILocation(line: 1040, column: 24, scope: !2442)
!2475 = !DILocation(line: 1042, column: 1, scope: !2442)
!2476 = !DILocation(line: 1043, column: 2, scope: !2442)
!2477 = !DILocation(line: 1044, column: 9, scope: !2442)
!2478 = !DILocation(line: 1045, column: 1, scope: !2442)
!2479 = !DILocation(line: 1044, column: 2, scope: !2442)
!2480 = distinct !DISubprogram(name: "kobj_ns_type_is_valid", scope: !3, file: !3, line: 59, type: !2481, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!493, !5}
!2483 = !{!2484}
!2484 = !DILocalVariable(name: "type", arg: 1, scope: !2480, file: !3, line: 59, type: !5)
!2485 = !DILocation(line: 59, column: 53, scope: !2480)
!2486 = !DILocation(line: 61, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 61, column: 6)
!2488 = !DILocation(line: 61, column: 12, scope: !2487)
!2489 = !DILocation(line: 61, column: 34, scope: !2487)
!2490 = !DILocation(line: 61, column: 38, scope: !2487)
!2491 = !DILocation(line: 61, column: 43, scope: !2487)
!2492 = !DILocation(line: 61, column: 6, scope: !2480)
!2493 = !DILocation(line: 62, column: 3, scope: !2487)
!2494 = !DILocation(line: 64, column: 2, scope: !2480)
!2495 = !DILocation(line: 65, column: 1, scope: !2480)
!2496 = distinct !DISubprogram(name: "kobj_ns_type_registered", scope: !3, file: !3, line: 1047, type: !2497, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!113, !5}
!2499 = !{!2500, !2501}
!2500 = !DILocalVariable(name: "type", arg: 1, scope: !2496, file: !3, line: 1047, type: !5)
!2501 = !DILocalVariable(name: "registered", scope: !2496, file: !3, line: 1049, type: !113)
!2502 = !DILocation(line: 1047, column: 47, scope: !2496)
!2503 = !DILocation(line: 1049, column: 2, scope: !2496)
!2504 = !DILocation(line: 1049, column: 6, scope: !2496)
!2505 = !DILocation(line: 1051, column: 2, scope: !2496)
!2506 = !DILocation(line: 1052, column: 28, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 1052, column: 6)
!2508 = !DILocation(line: 1052, column: 6, scope: !2507)
!2509 = !DILocation(line: 1052, column: 6, scope: !2496)
!2510 = !DILocation(line: 1053, column: 32, scope: !2507)
!2511 = !DILocation(line: 1053, column: 16, scope: !2507)
!2512 = !DILocation(line: 1053, column: 38, scope: !2507)
!2513 = !DILocation(line: 1053, column: 14, scope: !2507)
!2514 = !DILocation(line: 1053, column: 3, scope: !2507)
!2515 = !DILocation(line: 1054, column: 2, scope: !2496)
!2516 = !DILocation(line: 1056, column: 9, scope: !2496)
!2517 = !DILocation(line: 1057, column: 1, scope: !2496)
!2518 = !DILocation(line: 1056, column: 2, scope: !2496)
!2519 = distinct !DISubprogram(name: "kobj_child_ns_ops", scope: !3, file: !3, line: 1059, type: !530, scopeLine: 1060, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!2520 = !{!2521, !2522}
!2521 = !DILocalVariable(name: "parent", arg: 1, scope: !2519, file: !3, line: 1059, type: !143)
!2522 = !DILocalVariable(name: "ops", scope: !2519, file: !3, line: 1061, type: !532)
!2523 = !DILocation(line: 1059, column: 79, scope: !2519)
!2524 = !DILocation(line: 1061, column: 2, scope: !2519)
!2525 = !DILocation(line: 1061, column: 40, scope: !2519)
!2526 = !DILocation(line: 1063, column: 6, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1063, column: 6)
!2528 = !DILocation(line: 1063, column: 13, scope: !2527)
!2529 = !DILocation(line: 1063, column: 16, scope: !2527)
!2530 = !DILocation(line: 1063, column: 24, scope: !2527)
!2531 = !DILocation(line: 1063, column: 30, scope: !2527)
!2532 = !DILocation(line: 1063, column: 33, scope: !2527)
!2533 = !DILocation(line: 1063, column: 41, scope: !2527)
!2534 = !DILocation(line: 1063, column: 48, scope: !2527)
!2535 = !DILocation(line: 1063, column: 6, scope: !2519)
!2536 = !DILocation(line: 1064, column: 9, scope: !2527)
!2537 = !DILocation(line: 1064, column: 17, scope: !2527)
!2538 = !DILocation(line: 1064, column: 24, scope: !2527)
!2539 = !DILocation(line: 1064, column: 38, scope: !2527)
!2540 = !DILocation(line: 1064, column: 7, scope: !2527)
!2541 = !DILocation(line: 1064, column: 3, scope: !2527)
!2542 = !DILocation(line: 1066, column: 9, scope: !2519)
!2543 = !DILocation(line: 1067, column: 1, scope: !2519)
!2544 = !DILocation(line: 1066, column: 2, scope: !2519)
!2545 = distinct !DISubprogram(name: "kobj_ns_current_may_mount", scope: !3, file: !3, line: 1074, type: !2481, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2546)
!2546 = !{!2547, !2548}
!2547 = !DILocalVariable(name: "type", arg: 1, scope: !2545, file: !3, line: 1074, type: !5)
!2548 = !DILocalVariable(name: "may_mount", scope: !2545, file: !3, line: 1076, type: !493)
!2549 = !DILocation(line: 1074, column: 50, scope: !2545)
!2550 = !DILocation(line: 1076, column: 2, scope: !2545)
!2551 = !DILocation(line: 1076, column: 7, scope: !2545)
!2552 = !DILocation(line: 1078, column: 2, scope: !2545)
!2553 = !DILocation(line: 1079, column: 28, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 1079, column: 6)
!2555 = !DILocation(line: 1079, column: 6, scope: !2554)
!2556 = !DILocation(line: 1079, column: 34, scope: !2554)
!2557 = !DILocation(line: 1079, column: 53, scope: !2554)
!2558 = !DILocation(line: 1079, column: 37, scope: !2554)
!2559 = !DILocation(line: 1079, column: 6, scope: !2545)
!2560 = !DILocation(line: 1080, column: 31, scope: !2554)
!2561 = !DILocation(line: 1080, column: 15, scope: !2554)
!2562 = !DILocation(line: 1080, column: 38, scope: !2554)
!2563 = !DILocation(line: 1080, column: 13, scope: !2554)
!2564 = !DILocation(line: 1080, column: 3, scope: !2554)
!2565 = !DILocation(line: 1081, column: 2, scope: !2545)
!2566 = !DILocation(line: 1083, column: 9, scope: !2545)
!2567 = !{i8 0, i8 2}
!2568 = !DILocation(line: 1084, column: 1, scope: !2545)
!2569 = !DILocation(line: 1083, column: 2, scope: !2545)
!2570 = distinct !DISubprogram(name: "kobj_ns_grab_current", scope: !3, file: !3, line: 1086, type: !2571, scopeLine: 1087, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!66, !5}
!2573 = !{!2574, !2575}
!2574 = !DILocalVariable(name: "type", arg: 1, scope: !2570, file: !3, line: 1086, type: !5)
!2575 = !DILocalVariable(name: "ns", scope: !2570, file: !3, line: 1088, type: !66)
!2576 = !DILocation(line: 1086, column: 46, scope: !2570)
!2577 = !DILocation(line: 1088, column: 2, scope: !2570)
!2578 = !DILocation(line: 1088, column: 8, scope: !2570)
!2579 = !DILocation(line: 1090, column: 2, scope: !2570)
!2580 = !DILocation(line: 1091, column: 28, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1091, column: 6)
!2582 = !DILocation(line: 1091, column: 6, scope: !2581)
!2583 = !DILocation(line: 1091, column: 34, scope: !2581)
!2584 = !DILocation(line: 1091, column: 53, scope: !2581)
!2585 = !DILocation(line: 1091, column: 37, scope: !2581)
!2586 = !DILocation(line: 1091, column: 6, scope: !2570)
!2587 = !DILocation(line: 1092, column: 24, scope: !2581)
!2588 = !DILocation(line: 1092, column: 8, scope: !2581)
!2589 = !DILocation(line: 1092, column: 31, scope: !2581)
!2590 = !DILocation(line: 1092, column: 6, scope: !2581)
!2591 = !DILocation(line: 1092, column: 3, scope: !2581)
!2592 = !DILocation(line: 1093, column: 2, scope: !2570)
!2593 = !DILocation(line: 1095, column: 9, scope: !2570)
!2594 = !DILocation(line: 1096, column: 1, scope: !2570)
!2595 = !DILocation(line: 1095, column: 2, scope: !2570)
!2596 = distinct !DISubprogram(name: "kobj_ns_netlink", scope: !3, file: !3, line: 1099, type: !2597, scopeLine: 1100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!549, !5, !551}
!2599 = !{!2600, !2601, !2602}
!2600 = !DILocalVariable(name: "type", arg: 1, scope: !2596, file: !3, line: 1099, type: !5)
!2601 = !DILocalVariable(name: "sk", arg: 2, scope: !2596, file: !3, line: 1099, type: !551)
!2602 = !DILocalVariable(name: "ns", scope: !2596, file: !3, line: 1101, type: !549)
!2603 = !DILocation(line: 1099, column: 47, scope: !2596)
!2604 = !DILocation(line: 1099, column: 66, scope: !2596)
!2605 = !DILocation(line: 1101, column: 2, scope: !2596)
!2606 = !DILocation(line: 1101, column: 14, scope: !2596)
!2607 = !DILocation(line: 1103, column: 2, scope: !2596)
!2608 = !DILocation(line: 1104, column: 28, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1104, column: 6)
!2610 = !DILocation(line: 1104, column: 6, scope: !2609)
!2611 = !DILocation(line: 1104, column: 34, scope: !2609)
!2612 = !DILocation(line: 1104, column: 53, scope: !2609)
!2613 = !DILocation(line: 1104, column: 37, scope: !2609)
!2614 = !DILocation(line: 1104, column: 6, scope: !2596)
!2615 = !DILocation(line: 1105, column: 24, scope: !2609)
!2616 = !DILocation(line: 1105, column: 8, scope: !2609)
!2617 = !DILocation(line: 1105, column: 31, scope: !2609)
!2618 = !DILocation(line: 1105, column: 42, scope: !2609)
!2619 = !DILocation(line: 1105, column: 6, scope: !2609)
!2620 = !DILocation(line: 1105, column: 3, scope: !2609)
!2621 = !DILocation(line: 1106, column: 2, scope: !2596)
!2622 = !DILocation(line: 1108, column: 9, scope: !2596)
!2623 = !DILocation(line: 1109, column: 1, scope: !2596)
!2624 = !DILocation(line: 1108, column: 2, scope: !2596)
!2625 = distinct !DISubprogram(name: "kobj_ns_initial", scope: !3, file: !3, line: 1111, type: !2626, scopeLine: 1112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!549, !5}
!2628 = !{!2629, !2630}
!2629 = !DILocalVariable(name: "type", arg: 1, scope: !2625, file: !3, line: 1111, type: !5)
!2630 = !DILocalVariable(name: "ns", scope: !2625, file: !3, line: 1113, type: !549)
!2631 = !DILocation(line: 1111, column: 47, scope: !2625)
!2632 = !DILocation(line: 1113, column: 2, scope: !2625)
!2633 = !DILocation(line: 1113, column: 14, scope: !2625)
!2634 = !DILocation(line: 1115, column: 2, scope: !2625)
!2635 = !DILocation(line: 1116, column: 28, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1116, column: 6)
!2637 = !DILocation(line: 1116, column: 6, scope: !2636)
!2638 = !DILocation(line: 1116, column: 34, scope: !2636)
!2639 = !DILocation(line: 1116, column: 53, scope: !2636)
!2640 = !DILocation(line: 1116, column: 37, scope: !2636)
!2641 = !DILocation(line: 1116, column: 6, scope: !2625)
!2642 = !DILocation(line: 1117, column: 24, scope: !2636)
!2643 = !DILocation(line: 1117, column: 8, scope: !2636)
!2644 = !DILocation(line: 1117, column: 31, scope: !2636)
!2645 = !DILocation(line: 1117, column: 6, scope: !2636)
!2646 = !DILocation(line: 1117, column: 3, scope: !2636)
!2647 = !DILocation(line: 1118, column: 2, scope: !2625)
!2648 = !DILocation(line: 1120, column: 9, scope: !2625)
!2649 = !DILocation(line: 1121, column: 1, scope: !2625)
!2650 = !DILocation(line: 1120, column: 2, scope: !2625)
!2651 = distinct !DISubprogram(name: "kobj_ns_drop", scope: !3, file: !3, line: 1123, type: !2652, scopeLine: 1124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{null, !5, !66}
!2654 = !{!2655, !2656}
!2655 = !DILocalVariable(name: "type", arg: 1, scope: !2651, file: !3, line: 1123, type: !5)
!2656 = !DILocalVariable(name: "ns", arg: 2, scope: !2651, file: !3, line: 1123, type: !66)
!2657 = !DILocation(line: 1123, column: 37, scope: !2651)
!2658 = !DILocation(line: 1123, column: 49, scope: !2651)
!2659 = !DILocation(line: 1125, column: 2, scope: !2651)
!2660 = !DILocation(line: 1126, column: 28, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1126, column: 6)
!2662 = !DILocation(line: 1126, column: 6, scope: !2661)
!2663 = !DILocation(line: 1126, column: 34, scope: !2661)
!2664 = !DILocation(line: 1127, column: 22, scope: !2661)
!2665 = !DILocation(line: 1127, column: 6, scope: !2661)
!2666 = !DILocation(line: 1127, column: 28, scope: !2661)
!2667 = !DILocation(line: 1127, column: 47, scope: !2661)
!2668 = !DILocation(line: 1127, column: 31, scope: !2661)
!2669 = !DILocation(line: 1127, column: 54, scope: !2661)
!2670 = !DILocation(line: 1126, column: 6, scope: !2651)
!2671 = !DILocation(line: 1128, column: 19, scope: !2661)
!2672 = !DILocation(line: 1128, column: 3, scope: !2661)
!2673 = !DILocation(line: 1128, column: 26, scope: !2661)
!2674 = !DILocation(line: 1128, column: 34, scope: !2661)
!2675 = !DILocation(line: 1129, column: 2, scope: !2651)
!2676 = !DILocation(line: 1130, column: 1, scope: !2651)
!2677 = distinct !DISubprogram(name: "kref_init", scope: !700, file: !700, line: 29, type: !1858, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2678)
!2678 = !{!2679}
!2679 = !DILocalVariable(name: "kref", arg: 1, scope: !2677, file: !700, line: 29, type: !1860)
!2680 = !DILocation(line: 29, column: 43, scope: !2677)
!2681 = !DILocation(line: 31, column: 16, scope: !2677)
!2682 = !DILocation(line: 31, column: 22, scope: !2677)
!2683 = !DILocation(line: 31, column: 2, scope: !2677)
!2684 = !DILocation(line: 32, column: 1, scope: !2677)
!2685 = distinct !DISubprogram(name: "refcount_set", scope: !39, file: !39, line: 134, type: !2686, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2689)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !2688, !113}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!2689 = !{!2690, !2691}
!2690 = !DILocalVariable(name: "r", arg: 1, scope: !2685, file: !39, line: 134, type: !2688)
!2691 = !DILocalVariable(name: "n", arg: 2, scope: !2685, file: !39, line: 134, type: !113)
!2692 = !DILocation(line: 134, column: 45, scope: !2685)
!2693 = !DILocation(line: 134, column: 52, scope: !2685)
!2694 = !DILocation(line: 136, column: 14, scope: !2685)
!2695 = !DILocation(line: 136, column: 17, scope: !2685)
!2696 = !DILocation(line: 136, column: 23, scope: !2685)
!2697 = !DILocation(line: 136, column: 2, scope: !2685)
!2698 = !DILocation(line: 137, column: 1, scope: !2685)
!2699 = distinct !DISubprogram(name: "atomic_set", scope: !2700, file: !2700, line: 65, type: !2701, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2704)
!2700 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !2703, !113}
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2704 = !{!2705, !2706}
!2705 = !DILocalVariable(name: "v", arg: 1, scope: !2699, file: !2700, line: 65, type: !2703)
!2706 = !DILocalVariable(name: "i", arg: 2, scope: !2699, file: !2700, line: 65, type: !113)
!2707 = !DILocation(line: 65, column: 22, scope: !2699)
!2708 = !DILocation(line: 65, column: 29, scope: !2699)
!2709 = !DILocation(line: 67, column: 26, scope: !2699)
!2710 = !DILocation(line: 67, column: 2, scope: !2699)
!2711 = !DILocation(line: 68, column: 17, scope: !2699)
!2712 = !DILocation(line: 68, column: 20, scope: !2699)
!2713 = !DILocation(line: 68, column: 2, scope: !2699)
!2714 = !DILocation(line: 69, column: 1, scope: !2699)
!2715 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2716, file: !2716, line: 80, type: !2717, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2722)
!2716 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !2719, !207}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2721)
!2721 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2722 = !{!2723, !2724}
!2723 = !DILocalVariable(name: "v", arg: 1, scope: !2715, file: !2716, line: 80, type: !2719)
!2724 = !DILocalVariable(name: "size", arg: 2, scope: !2715, file: !2716, line: 80, type: !207)
!2725 = !DILocation(line: 80, column: 74, scope: !2715)
!2726 = !DILocation(line: 80, column: 84, scope: !2715)
!2727 = !DILocation(line: 82, column: 20, scope: !2715)
!2728 = !DILocation(line: 82, column: 23, scope: !2715)
!2729 = !DILocation(line: 82, column: 2, scope: !2715)
!2730 = !DILocation(line: 83, column: 2, scope: !2715)
!2731 = !DILocation(line: 84, column: 1, scope: !2715)
!2732 = distinct !DISubprogram(name: "raw_atomic_set", scope: !2733, file: !2733, line: 488, type: !2701, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2734)
!2733 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2734 = !{!2735, !2736}
!2735 = !DILocalVariable(name: "v", arg: 1, scope: !2732, file: !2733, line: 488, type: !2703)
!2736 = !DILocalVariable(name: "i", arg: 2, scope: !2732, file: !2733, line: 488, type: !113)
!2737 = !DILocation(line: 488, column: 26, scope: !2732)
!2738 = !DILocation(line: 488, column: 33, scope: !2732)
!2739 = !DILocation(line: 490, column: 18, scope: !2732)
!2740 = !DILocation(line: 490, column: 21, scope: !2732)
!2741 = !DILocation(line: 490, column: 2, scope: !2732)
!2742 = !DILocation(line: 491, column: 1, scope: !2732)
!2743 = distinct !DISubprogram(name: "kasan_check_write", scope: !2744, file: !2744, line: 44, type: !2745, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2747)
!2744 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!493, !2719, !7}
!2747 = !{!2748, !2749}
!2748 = !DILocalVariable(name: "p", arg: 1, scope: !2743, file: !2744, line: 44, type: !2719)
!2749 = !DILocalVariable(name: "size", arg: 2, scope: !2743, file: !2744, line: 44, type: !7)
!2750 = !DILocation(line: 44, column: 59, scope: !2743)
!2751 = !DILocation(line: 44, column: 75, scope: !2743)
!2752 = !DILocation(line: 46, column: 2, scope: !2743)
!2753 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2754, file: !2754, line: 229, type: !2755, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2757)
!2754 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2755 = !DISubroutineType(types: !2756)
!2756 = !{null, !2719, !207, !113}
!2757 = !{!2758, !2759, !2760}
!2758 = !DILocalVariable(name: "ptr", arg: 1, scope: !2753, file: !2754, line: 229, type: !2719)
!2759 = !DILocalVariable(name: "size", arg: 2, scope: !2753, file: !2754, line: 229, type: !207)
!2760 = !DILocalVariable(name: "type", arg: 3, scope: !2753, file: !2754, line: 230, type: !113)
!2761 = !DILocation(line: 229, column: 60, scope: !2753)
!2762 = !DILocation(line: 229, column: 72, scope: !2753)
!2763 = !DILocation(line: 230, column: 15, scope: !2753)
!2764 = !DILocation(line: 230, column: 23, scope: !2753)
!2765 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2766, file: !2766, line: 26, type: !2701, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2767)
!2766 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2767 = !{!2768, !2769}
!2768 = !DILocalVariable(name: "v", arg: 1, scope: !2765, file: !2766, line: 26, type: !2703)
!2769 = !DILocalVariable(name: "i", arg: 2, scope: !2765, file: !2766, line: 26, type: !113)
!2770 = !DILocation(line: 26, column: 55, scope: !2765)
!2771 = !DILocation(line: 26, column: 62, scope: !2765)
!2772 = !DILocation(line: 28, column: 2, scope: !2765)
!2773 = !DILocation(line: 28, column: 2, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2765, file: !2766, line: 28, column: 2)
!2775 = !DILocation(line: 29, column: 1, scope: !2765)
!2776 = !DISubprogram(name: "kmalloc_large", scope: !29, file: !29, line: 531, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2777 = distinct !DISubprogram(name: "__kmalloc_index", scope: !29, file: !29, line: 444, type: !2778, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!7, !207, !493}
!2780 = !{!2781, !2782}
!2781 = !DILocalVariable(name: "size", arg: 1, scope: !2777, file: !29, line: 444, type: !207)
!2782 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2777, file: !29, line: 445, type: !493)
!2783 = !DILocation(line: 444, column: 60, scope: !2777)
!2784 = !DILocation(line: 445, column: 16, scope: !2777)
!2785 = !DILocation(line: 447, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 447, column: 6)
!2787 = !DILocation(line: 447, column: 6, scope: !2777)
!2788 = !DILocation(line: 448, column: 3, scope: !2786)
!2789 = !DILocation(line: 450, column: 6, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 450, column: 6)
!2791 = !DILocation(line: 450, column: 11, scope: !2790)
!2792 = !DILocation(line: 450, column: 6, scope: !2777)
!2793 = !DILocation(line: 451, column: 3, scope: !2790)
!2794 = !DILocation(line: 453, column: 32, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 453, column: 6)
!2796 = !DILocation(line: 453, column: 37, scope: !2795)
!2797 = !DILocation(line: 453, column: 42, scope: !2795)
!2798 = !DILocation(line: 453, column: 45, scope: !2795)
!2799 = !DILocation(line: 453, column: 50, scope: !2795)
!2800 = !DILocation(line: 453, column: 6, scope: !2777)
!2801 = !DILocation(line: 454, column: 3, scope: !2795)
!2802 = !DILocation(line: 455, column: 32, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 455, column: 6)
!2804 = !DILocation(line: 455, column: 37, scope: !2803)
!2805 = !DILocation(line: 455, column: 43, scope: !2803)
!2806 = !DILocation(line: 455, column: 46, scope: !2803)
!2807 = !DILocation(line: 455, column: 51, scope: !2803)
!2808 = !DILocation(line: 455, column: 6, scope: !2777)
!2809 = !DILocation(line: 456, column: 3, scope: !2803)
!2810 = !DILocation(line: 457, column: 6, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 457, column: 6)
!2812 = !DILocation(line: 457, column: 11, scope: !2811)
!2813 = !DILocation(line: 457, column: 6, scope: !2777)
!2814 = !DILocation(line: 457, column: 26, scope: !2811)
!2815 = !DILocation(line: 458, column: 6, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 458, column: 6)
!2817 = !DILocation(line: 458, column: 11, scope: !2816)
!2818 = !DILocation(line: 458, column: 6, scope: !2777)
!2819 = !DILocation(line: 458, column: 26, scope: !2816)
!2820 = !DILocation(line: 459, column: 6, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 459, column: 6)
!2822 = !DILocation(line: 459, column: 11, scope: !2821)
!2823 = !DILocation(line: 459, column: 6, scope: !2777)
!2824 = !DILocation(line: 459, column: 26, scope: !2821)
!2825 = !DILocation(line: 460, column: 6, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 460, column: 6)
!2827 = !DILocation(line: 460, column: 11, scope: !2826)
!2828 = !DILocation(line: 460, column: 6, scope: !2777)
!2829 = !DILocation(line: 460, column: 26, scope: !2826)
!2830 = !DILocation(line: 461, column: 6, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 461, column: 6)
!2832 = !DILocation(line: 461, column: 11, scope: !2831)
!2833 = !DILocation(line: 461, column: 6, scope: !2777)
!2834 = !DILocation(line: 461, column: 26, scope: !2831)
!2835 = !DILocation(line: 462, column: 6, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 462, column: 6)
!2837 = !DILocation(line: 462, column: 11, scope: !2836)
!2838 = !DILocation(line: 462, column: 6, scope: !2777)
!2839 = !DILocation(line: 462, column: 26, scope: !2836)
!2840 = !DILocation(line: 463, column: 6, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 463, column: 6)
!2842 = !DILocation(line: 463, column: 11, scope: !2841)
!2843 = !DILocation(line: 463, column: 6, scope: !2777)
!2844 = !DILocation(line: 463, column: 26, scope: !2841)
!2845 = !DILocation(line: 464, column: 6, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 464, column: 6)
!2847 = !DILocation(line: 464, column: 11, scope: !2846)
!2848 = !DILocation(line: 464, column: 6, scope: !2777)
!2849 = !DILocation(line: 464, column: 26, scope: !2846)
!2850 = !DILocation(line: 465, column: 6, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 465, column: 6)
!2852 = !DILocation(line: 465, column: 11, scope: !2851)
!2853 = !DILocation(line: 465, column: 6, scope: !2777)
!2854 = !DILocation(line: 465, column: 26, scope: !2851)
!2855 = !DILocation(line: 466, column: 6, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 466, column: 6)
!2857 = !DILocation(line: 466, column: 11, scope: !2856)
!2858 = !DILocation(line: 466, column: 6, scope: !2777)
!2859 = !DILocation(line: 466, column: 26, scope: !2856)
!2860 = !DILocation(line: 467, column: 6, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 467, column: 6)
!2862 = !DILocation(line: 467, column: 11, scope: !2861)
!2863 = !DILocation(line: 467, column: 6, scope: !2777)
!2864 = !DILocation(line: 467, column: 26, scope: !2861)
!2865 = !DILocation(line: 468, column: 6, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 468, column: 6)
!2867 = !DILocation(line: 468, column: 11, scope: !2866)
!2868 = !DILocation(line: 468, column: 6, scope: !2777)
!2869 = !DILocation(line: 468, column: 26, scope: !2866)
!2870 = !DILocation(line: 469, column: 6, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 469, column: 6)
!2872 = !DILocation(line: 469, column: 11, scope: !2871)
!2873 = !DILocation(line: 469, column: 6, scope: !2777)
!2874 = !DILocation(line: 469, column: 26, scope: !2871)
!2875 = !DILocation(line: 470, column: 6, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 470, column: 6)
!2877 = !DILocation(line: 470, column: 11, scope: !2876)
!2878 = !DILocation(line: 470, column: 6, scope: !2777)
!2879 = !DILocation(line: 470, column: 26, scope: !2876)
!2880 = !DILocation(line: 471, column: 6, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 471, column: 6)
!2882 = !DILocation(line: 471, column: 11, scope: !2881)
!2883 = !DILocation(line: 471, column: 6, scope: !2777)
!2884 = !DILocation(line: 471, column: 26, scope: !2881)
!2885 = !DILocation(line: 472, column: 6, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 472, column: 6)
!2887 = !DILocation(line: 472, column: 11, scope: !2886)
!2888 = !DILocation(line: 472, column: 6, scope: !2777)
!2889 = !DILocation(line: 472, column: 26, scope: !2886)
!2890 = !DILocation(line: 473, column: 6, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 473, column: 6)
!2892 = !DILocation(line: 473, column: 11, scope: !2891)
!2893 = !DILocation(line: 473, column: 6, scope: !2777)
!2894 = !DILocation(line: 473, column: 26, scope: !2891)
!2895 = !DILocation(line: 474, column: 6, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 474, column: 6)
!2897 = !DILocation(line: 474, column: 11, scope: !2896)
!2898 = !DILocation(line: 474, column: 6, scope: !2777)
!2899 = !DILocation(line: 474, column: 27, scope: !2896)
!2900 = !DILocation(line: 475, column: 6, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 475, column: 6)
!2902 = !DILocation(line: 475, column: 11, scope: !2901)
!2903 = !DILocation(line: 475, column: 6, scope: !2777)
!2904 = !DILocation(line: 475, column: 32, scope: !2901)
!2905 = !DILocation(line: 477, column: 50, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2777, file: !29, line: 477, column: 6)
!2907 = !DILocation(line: 477, column: 6, scope: !2777)
!2908 = !DILocation(line: 478, column: 3, scope: !2906)
!2909 = !DILocation(line: 478, column: 3, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !29, line: 478, column: 3)
!2911 = distinct !DILexicalBlock(scope: !2906, file: !29, line: 478, column: 3)
!2912 = !{i32 -2142770966}
!2913 = !DILocation(line: 478, column: 3, scope: !2911)
!2914 = !DILocation(line: 480, column: 3, scope: !2906)
!2915 = !DILocation(line: 480, column: 3, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2906, file: !29, line: 480, column: 3)
!2917 = !DILocation(line: 480, column: 3, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2916, file: !29, line: 480, column: 3)
!2919 = !DILocation(line: 480, column: 3, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2916, file: !29, line: 480, column: 3)
!2921 = !{i64 2152196533, i64 2152196562, i64 2152196608, i64 2152196666, i64 2152196720, i64 2152196774, i64 2152196829, i64 2152196860}
!2922 = !DILocation(line: 483, column: 2, scope: !2777)
!2923 = !DILocation(line: 484, column: 1, scope: !2777)
!2924 = !DISubprogram(name: "kmalloc_trace", scope: !29, file: !29, line: 525, type: !2925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!66, !2927, !67, !207}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2929, line: 11, flags: DIFlagFwdDecl)
!2929 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2930 = distinct !DISubprogram(name: "kmalloc_type", scope: !29, file: !29, line: 401, type: !2931, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!28, !67, !210}
!2933 = !{!2934, !2935}
!2934 = !DILocalVariable(name: "flags", arg: 1, scope: !2930, file: !29, line: 401, type: !67)
!2935 = !DILocalVariable(name: "caller", arg: 2, scope: !2930, file: !29, line: 401, type: !210)
!2936 = !DILocation(line: 401, column: 67, scope: !2930)
!2937 = !DILocation(line: 401, column: 88, scope: !2930)
!2938 = !DILocation(line: 407, column: 6, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2930, file: !29, line: 407, column: 6)
!2940 = !DILocation(line: 407, column: 6, scope: !2930)
!2941 = !DILocation(line: 413, column: 3, scope: !2939)
!2942 = !DILocation(line: 423, column: 38, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2930, file: !29, line: 423, column: 6)
!2944 = !DILocation(line: 423, column: 44, scope: !2943)
!2945 = !DILocation(line: 423, column: 6, scope: !2930)
!2946 = !DILocation(line: 424, column: 3, scope: !2943)
!2947 = !DILocation(line: 426, column: 3, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2930, file: !29, line: 425, column: 6)
!2949 = !DILocation(line: 429, column: 1, scope: !2930)
!2950 = !DISubprogram(name: "__kmalloc", scope: !29, file: !29, line: 488, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2951 = !DISubprogram(name: "__compiletime_assert_190", scope: !29, file: !29, line: 478, type: !2952, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null}
!2954 = distinct !DISubprogram(name: "get_ktype", scope: !13, file: !13, line: 196, type: !2955, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!174, !143}
!2957 = !{!2958}
!2958 = !DILocalVariable(name: "kobj", arg: 1, scope: !2954, file: !13, line: 196, type: !143)
!2959 = !DILocation(line: 196, column: 71, scope: !2954)
!2960 = !DILocation(line: 198, column: 9, scope: !2954)
!2961 = !DILocation(line: 198, column: 15, scope: !2954)
!2962 = !DILocation(line: 198, column: 2, scope: !2954)
!2963 = !DISubprogram(name: "sysfs_remove_groups", scope: !186, file: !186, line: 317, type: !2964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{null, !69, !212}
!2966 = !DISubprogram(name: "sysfs_remove_dir", scope: !186, file: !186, line: 262, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2967 = distinct !DISubprogram(name: "sysfs_put", scope: !186, file: !186, line: 655, type: !2968, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{null, !585}
!2970 = !{!2971}
!2971 = !DILocalVariable(name: "kn", arg: 1, scope: !2967, file: !186, line: 655, type: !585)
!2972 = !DILocation(line: 655, column: 50, scope: !2967)
!2973 = !DILocation(line: 657, column: 13, scope: !2967)
!2974 = !DILocation(line: 657, column: 2, scope: !2967)
!2975 = !DILocation(line: 658, column: 1, scope: !2967)
!2976 = distinct !DISubprogram(name: "kobj_kset_leave", scope: !3, file: !3, line: 186, type: !180, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2977)
!2977 = !{!2978}
!2978 = !DILocalVariable(name: "kobj", arg: 1, scope: !2976, file: !3, line: 186, type: !69)
!2979 = !DILocation(line: 186, column: 45, scope: !2976)
!2980 = !DILocation(line: 188, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 188, column: 6)
!2982 = !DILocation(line: 188, column: 13, scope: !2981)
!2983 = !DILocation(line: 188, column: 6, scope: !2976)
!2984 = !DILocation(line: 189, column: 3, scope: !2981)
!2985 = !DILocation(line: 191, column: 13, scope: !2976)
!2986 = !DILocation(line: 191, column: 19, scope: !2976)
!2987 = !DILocation(line: 191, column: 25, scope: !2976)
!2988 = !DILocation(line: 191, column: 2, scope: !2976)
!2989 = !DILocation(line: 192, column: 17, scope: !2976)
!2990 = !DILocation(line: 192, column: 23, scope: !2976)
!2991 = !DILocation(line: 192, column: 2, scope: !2976)
!2992 = !DILocation(line: 193, column: 15, scope: !2976)
!2993 = !DILocation(line: 193, column: 21, scope: !2976)
!2994 = !DILocation(line: 193, column: 27, scope: !2976)
!2995 = !DILocation(line: 193, column: 2, scope: !2976)
!2996 = !DILocation(line: 194, column: 11, scope: !2976)
!2997 = !DILocation(line: 194, column: 17, scope: !2976)
!2998 = !DILocation(line: 194, column: 2, scope: !2976)
!2999 = !DILocation(line: 195, column: 1, scope: !2976)
!3000 = !DISubprogram(name: "kernfs_put", scope: !47, file: !47, line: 407, type: !2968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3001 = distinct !DISubprogram(name: "list_del_init", scope: !2005, file: !2005, line: 285, type: !2006, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3002)
!3002 = !{!3003}
!3003 = !DILocalVariable(name: "entry", arg: 1, scope: !3001, file: !2005, line: 285, type: !80)
!3004 = !DILocation(line: 285, column: 52, scope: !3001)
!3005 = !DILocation(line: 287, column: 19, scope: !3001)
!3006 = !DILocation(line: 287, column: 2, scope: !3001)
!3007 = !DILocation(line: 288, column: 17, scope: !3001)
!3008 = !DILocation(line: 288, column: 2, scope: !3001)
!3009 = !DILocation(line: 289, column: 1, scope: !3001)
!3010 = distinct !DISubprogram(name: "kset_put", scope: !13, file: !13, line: 191, type: !1989, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3011)
!3011 = !{!3012}
!3012 = !DILocalVariable(name: "k", arg: 1, scope: !3010, file: !13, line: 191, type: !84)
!3013 = !DILocation(line: 191, column: 42, scope: !3010)
!3014 = !DILocation(line: 193, column: 15, scope: !3010)
!3015 = !DILocation(line: 193, column: 18, scope: !3010)
!3016 = !DILocation(line: 193, column: 2, scope: !3010)
!3017 = !DILocation(line: 194, column: 1, scope: !3010)
!3018 = distinct !DISubprogram(name: "__list_del_entry", scope: !2005, file: !2005, line: 213, type: !2006, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3019)
!3019 = !{!3020}
!3020 = !DILocalVariable(name: "entry", arg: 1, scope: !3018, file: !2005, line: 213, type: !80)
!3021 = !DILocation(line: 213, column: 55, scope: !3018)
!3022 = !DILocation(line: 215, column: 30, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3018, file: !2005, line: 215, column: 6)
!3024 = !DILocation(line: 215, column: 7, scope: !3023)
!3025 = !DILocation(line: 215, column: 6, scope: !3018)
!3026 = !DILocation(line: 216, column: 3, scope: !3023)
!3027 = !DILocation(line: 218, column: 13, scope: !3018)
!3028 = !DILocation(line: 218, column: 20, scope: !3018)
!3029 = !DILocation(line: 218, column: 26, scope: !3018)
!3030 = !DILocation(line: 218, column: 33, scope: !3018)
!3031 = !DILocation(line: 218, column: 2, scope: !3018)
!3032 = !DILocation(line: 219, column: 1, scope: !3018)
!3033 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2005, file: !2005, line: 134, type: !3034, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!493, !80}
!3036 = !{!3037}
!3037 = !DILocalVariable(name: "entry", arg: 1, scope: !3033, file: !2005, line: 134, type: !80)
!3038 = !DILocation(line: 134, column: 61, scope: !3033)
!3039 = !DILocation(line: 136, column: 2, scope: !3033)
!3040 = distinct !DISubprogram(name: "__list_del", scope: !2005, file: !2005, line: 193, type: !3041, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !80, !80}
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "prev", arg: 1, scope: !3040, file: !2005, line: 193, type: !80)
!3045 = !DILocalVariable(name: "next", arg: 2, scope: !3040, file: !2005, line: 193, type: !80)
!3046 = !DILocation(line: 193, column: 50, scope: !3040)
!3047 = !DILocation(line: 193, column: 75, scope: !3040)
!3048 = !DILocation(line: 195, column: 15, scope: !3040)
!3049 = !DILocation(line: 195, column: 2, scope: !3040)
!3050 = !DILocation(line: 195, column: 8, scope: !3040)
!3051 = !DILocation(line: 195, column: 13, scope: !3040)
!3052 = !DILocation(line: 196, column: 2, scope: !3040)
!3053 = !DILocation(line: 196, column: 2, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3040, file: !2005, line: 196, column: 2)
!3055 = !DILocation(line: 196, column: 2, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3054, file: !2005, line: 196, column: 2)
!3057 = !DILocation(line: 196, column: 2, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3054, file: !2005, line: 196, column: 2)
!3059 = !DILocation(line: 197, column: 1, scope: !3040)
!3060 = distinct !DISubprogram(name: "refcount_inc", scope: !39, file: !39, line: 265, type: !3061, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null, !2688}
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "r", arg: 1, scope: !3060, file: !39, line: 265, type: !2688)
!3065 = !DILocation(line: 265, column: 45, scope: !3060)
!3066 = !DILocation(line: 267, column: 17, scope: !3060)
!3067 = !DILocation(line: 267, column: 2, scope: !3060)
!3068 = !DILocation(line: 268, column: 1, scope: !3060)
!3069 = distinct !DISubprogram(name: "__refcount_inc", scope: !39, file: !39, line: 248, type: !3070, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !2688, !718}
!3072 = !{!3073, !3074}
!3073 = !DILocalVariable(name: "r", arg: 1, scope: !3069, file: !39, line: 248, type: !2688)
!3074 = !DILocalVariable(name: "oldp", arg: 2, scope: !3069, file: !39, line: 248, type: !718)
!3075 = !DILocation(line: 248, column: 47, scope: !3069)
!3076 = !DILocation(line: 248, column: 55, scope: !3069)
!3077 = !DILocation(line: 250, column: 20, scope: !3069)
!3078 = !DILocation(line: 250, column: 23, scope: !3069)
!3079 = !DILocation(line: 250, column: 2, scope: !3069)
!3080 = !DILocation(line: 251, column: 1, scope: !3069)
!3081 = distinct !DISubprogram(name: "__refcount_add", scope: !39, file: !39, line: 191, type: !3082, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !113, !2688, !718}
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DILocalVariable(name: "i", arg: 1, scope: !3081, file: !39, line: 191, type: !113)
!3086 = !DILocalVariable(name: "r", arg: 2, scope: !3081, file: !39, line: 191, type: !2688)
!3087 = !DILocalVariable(name: "oldp", arg: 3, scope: !3081, file: !39, line: 191, type: !718)
!3088 = !DILocalVariable(name: "old", scope: !3081, file: !39, line: 193, type: !113)
!3089 = !DILocation(line: 191, column: 39, scope: !3081)
!3090 = !DILocation(line: 191, column: 54, scope: !3081)
!3091 = !DILocation(line: 191, column: 62, scope: !3081)
!3092 = !DILocation(line: 193, column: 2, scope: !3081)
!3093 = !DILocation(line: 193, column: 6, scope: !3081)
!3094 = !DILocation(line: 193, column: 37, scope: !3081)
!3095 = !DILocation(line: 193, column: 41, scope: !3081)
!3096 = !DILocation(line: 193, column: 44, scope: !3081)
!3097 = !DILocation(line: 193, column: 12, scope: !3081)
!3098 = !DILocation(line: 195, column: 6, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3081, file: !39, line: 195, column: 6)
!3100 = !DILocation(line: 195, column: 6, scope: !3081)
!3101 = !DILocation(line: 196, column: 11, scope: !3099)
!3102 = !DILocation(line: 196, column: 4, scope: !3099)
!3103 = !DILocation(line: 196, column: 9, scope: !3099)
!3104 = !DILocation(line: 196, column: 3, scope: !3099)
!3105 = !DILocation(line: 198, column: 6, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3081, file: !39, line: 198, column: 6)
!3107 = !DILocation(line: 198, column: 6, scope: !3081)
!3108 = !DILocation(line: 199, column: 26, scope: !3106)
!3109 = !DILocation(line: 199, column: 3, scope: !3106)
!3110 = !DILocation(line: 200, column: 11, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3106, file: !39, line: 200, column: 11)
!3112 = !DILocation(line: 200, column: 11, scope: !3106)
!3113 = !DILocation(line: 201, column: 26, scope: !3111)
!3114 = !DILocation(line: 201, column: 3, scope: !3111)
!3115 = !DILocation(line: 202, column: 1, scope: !3081)
!3116 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !2700, file: !2700, line: 250, type: !3117, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!113, !113, !2703}
!3119 = !{!3120, !3121}
!3120 = !DILocalVariable(name: "i", arg: 1, scope: !3116, file: !2700, line: 250, type: !113)
!3121 = !DILocalVariable(name: "v", arg: 2, scope: !3116, file: !2700, line: 250, type: !2703)
!3122 = !DILocation(line: 250, column: 30, scope: !3116)
!3123 = !DILocation(line: 250, column: 43, scope: !3116)
!3124 = !DILocation(line: 252, column: 31, scope: !3116)
!3125 = !DILocation(line: 252, column: 2, scope: !3116)
!3126 = !DILocation(line: 253, column: 38, scope: !3116)
!3127 = !DILocation(line: 253, column: 41, scope: !3116)
!3128 = !DILocation(line: 253, column: 9, scope: !3116)
!3129 = !DILocation(line: 253, column: 2, scope: !3116)
!3130 = !DISubprogram(name: "refcount_warn_saturate", scope: !39, file: !39, line: 127, type: !3131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !2688, !38}
!3133 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2716, file: !2716, line: 94, type: !2717, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3134)
!3134 = !{!3135, !3136}
!3135 = !DILocalVariable(name: "v", arg: 1, scope: !3133, file: !2716, line: 94, type: !2719)
!3136 = !DILocalVariable(name: "size", arg: 2, scope: !3133, file: !2716, line: 94, type: !207)
!3137 = !DILocation(line: 94, column: 79, scope: !3133)
!3138 = !DILocation(line: 94, column: 89, scope: !3133)
!3139 = !DILocation(line: 96, column: 20, scope: !3133)
!3140 = !DILocation(line: 96, column: 23, scope: !3133)
!3141 = !DILocation(line: 96, column: 2, scope: !3133)
!3142 = !DILocation(line: 97, column: 2, scope: !3133)
!3143 = !DILocation(line: 98, column: 1, scope: !3133)
!3144 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !2733, file: !2733, line: 731, type: !3117, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3145)
!3145 = !{!3146, !3147}
!3146 = !DILocalVariable(name: "i", arg: 1, scope: !3144, file: !2733, line: 731, type: !113)
!3147 = !DILocalVariable(name: "v", arg: 2, scope: !3144, file: !2733, line: 731, type: !2703)
!3148 = !DILocation(line: 731, column: 34, scope: !3144)
!3149 = !DILocation(line: 731, column: 47, scope: !3144)
!3150 = !DILocation(line: 736, column: 31, scope: !3144)
!3151 = !DILocation(line: 736, column: 34, scope: !3144)
!3152 = !DILocation(line: 736, column: 9, scope: !3144)
!3153 = !DILocation(line: 736, column: 2, scope: !3144)
!3154 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !2766, file: !2766, line: 95, type: !3117, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3155)
!3155 = !{!3156, !3157, !3158}
!3156 = !DILocalVariable(name: "i", arg: 1, scope: !3154, file: !2766, line: 95, type: !113)
!3157 = !DILocalVariable(name: "v", arg: 2, scope: !3154, file: !2766, line: 95, type: !2703)
!3158 = !DILocalVariable(name: "__ret", scope: !3159, file: !2766, line: 97, type: !113)
!3159 = distinct !DILexicalBlock(scope: !3154, file: !2766, line: 97, column: 9)
!3160 = !DILocation(line: 95, column: 54, scope: !3154)
!3161 = !DILocation(line: 95, column: 67, scope: !3154)
!3162 = !DILocation(line: 97, column: 9, scope: !3159)
!3163 = !{i64 2148543586, i64 2148543625, i64 2148543646, i64 2148543683, i64 2148543706, i64 2148543715}
!3164 = !DILocation(line: 97, column: 9, scope: !3154)
!3165 = !DILocation(line: 97, column: 2, scope: !3154)
!3166 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !39, file: !39, line: 243, type: !3167, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!493, !2688}
!3169 = !{!3170}
!3170 = !DILocalVariable(name: "r", arg: 1, scope: !3166, file: !39, line: 243, type: !2688)
!3171 = !DILocation(line: 243, column: 67, scope: !3166)
!3172 = !DILocation(line: 245, column: 33, scope: !3166)
!3173 = !DILocation(line: 245, column: 9, scope: !3166)
!3174 = !DILocation(line: 245, column: 2, scope: !3166)
!3175 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !39, file: !39, line: 225, type: !3176, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!493, !2688, !718}
!3178 = !{!3179, !3180}
!3179 = !DILocalVariable(name: "r", arg: 1, scope: !3175, file: !39, line: 225, type: !2688)
!3180 = !DILocalVariable(name: "oldp", arg: 2, scope: !3175, file: !39, line: 225, type: !718)
!3181 = !DILocation(line: 225, column: 69, scope: !3175)
!3182 = !DILocation(line: 225, column: 77, scope: !3175)
!3183 = !DILocation(line: 227, column: 36, scope: !3175)
!3184 = !DILocation(line: 227, column: 39, scope: !3175)
!3185 = !DILocation(line: 227, column: 9, scope: !3175)
!3186 = !DILocation(line: 227, column: 2, scope: !3175)
!3187 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !39, file: !39, line: 150, type: !3188, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!493, !113, !2688, !718}
!3190 = !{!3191, !3192, !3193, !3194}
!3191 = !DILocalVariable(name: "i", arg: 1, scope: !3187, file: !39, line: 150, type: !113)
!3192 = !DILocalVariable(name: "r", arg: 2, scope: !3187, file: !39, line: 150, type: !2688)
!3193 = !DILocalVariable(name: "oldp", arg: 3, scope: !3187, file: !39, line: 150, type: !718)
!3194 = !DILocalVariable(name: "old", scope: !3187, file: !39, line: 152, type: !113)
!3195 = !DILocation(line: 150, column: 61, scope: !3187)
!3196 = !DILocation(line: 150, column: 76, scope: !3187)
!3197 = !DILocation(line: 150, column: 84, scope: !3187)
!3198 = !DILocation(line: 152, column: 2, scope: !3187)
!3199 = !DILocation(line: 152, column: 6, scope: !3187)
!3200 = !DILocation(line: 152, column: 26, scope: !3187)
!3201 = !DILocation(line: 152, column: 12, scope: !3187)
!3202 = !DILocation(line: 154, column: 2, scope: !3187)
!3203 = !DILocation(line: 155, column: 8, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !39, line: 155, column: 7)
!3205 = distinct !DILexicalBlock(scope: !3187, file: !39, line: 154, column: 5)
!3206 = !DILocation(line: 155, column: 7, scope: !3205)
!3207 = !DILocation(line: 156, column: 4, scope: !3204)
!3208 = !DILocation(line: 157, column: 2, scope: !3205)
!3209 = !DILocation(line: 157, column: 40, scope: !3187)
!3210 = !DILocation(line: 157, column: 43, scope: !3187)
!3211 = !DILocation(line: 157, column: 55, scope: !3187)
!3212 = !DILocation(line: 157, column: 61, scope: !3187)
!3213 = !DILocation(line: 157, column: 59, scope: !3187)
!3214 = !DILocation(line: 157, column: 12, scope: !3187)
!3215 = !DILocation(line: 157, column: 11, scope: !3187)
!3216 = distinct !{!3216, !3202, !3217, !1024, !1025}
!3217 = !DILocation(line: 157, column: 63, scope: !3187)
!3218 = !DILocation(line: 159, column: 6, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3187, file: !39, line: 159, column: 6)
!3220 = !DILocation(line: 159, column: 6, scope: !3187)
!3221 = !DILocation(line: 160, column: 11, scope: !3219)
!3222 = !DILocation(line: 160, column: 4, scope: !3219)
!3223 = !DILocation(line: 160, column: 9, scope: !3219)
!3224 = !DILocation(line: 160, column: 3, scope: !3219)
!3225 = !DILocation(line: 162, column: 6, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3187, file: !39, line: 162, column: 6)
!3227 = !DILocation(line: 162, column: 6, scope: !3187)
!3228 = !DILocation(line: 163, column: 26, scope: !3226)
!3229 = !DILocation(line: 163, column: 3, scope: !3226)
!3230 = !DILocation(line: 165, column: 9, scope: !3187)
!3231 = !DILocation(line: 166, column: 1, scope: !3187)
!3232 = !DILocation(line: 165, column: 2, scope: !3187)
!3233 = distinct !DISubprogram(name: "refcount_read", scope: !39, file: !39, line: 145, type: !3234, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3238)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!7, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!3238 = !{!3239}
!3239 = !DILocalVariable(name: "r", arg: 1, scope: !3233, file: !39, line: 145, type: !3236)
!3240 = !DILocation(line: 145, column: 60, scope: !3233)
!3241 = !DILocation(line: 147, column: 22, scope: !3233)
!3242 = !DILocation(line: 147, column: 25, scope: !3233)
!3243 = !DILocation(line: 147, column: 9, scope: !3233)
!3244 = !DILocation(line: 147, column: 2, scope: !3233)
!3245 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !2700, file: !2700, line: 1335, type: !3246, scopeLine: 1336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!493, !2703, !718, !113}
!3248 = !{!3249, !3250, !3251}
!3249 = !DILocalVariable(name: "v", arg: 1, scope: !3245, file: !2700, line: 1335, type: !2703)
!3250 = !DILocalVariable(name: "old", arg: 2, scope: !3245, file: !2700, line: 1335, type: !718)
!3251 = !DILocalVariable(name: "new", arg: 3, scope: !3245, file: !2700, line: 1335, type: !113)
!3252 = !DILocation(line: 1335, column: 38, scope: !3245)
!3253 = !DILocation(line: 1335, column: 46, scope: !3245)
!3254 = !DILocation(line: 1335, column: 55, scope: !3245)
!3255 = !DILocation(line: 1337, column: 31, scope: !3245)
!3256 = !DILocation(line: 1337, column: 2, scope: !3245)
!3257 = !DILocation(line: 1338, column: 31, scope: !3245)
!3258 = !DILocation(line: 1338, column: 2, scope: !3245)
!3259 = !DILocation(line: 1339, column: 40, scope: !3245)
!3260 = !DILocation(line: 1339, column: 43, scope: !3245)
!3261 = !DILocation(line: 1339, column: 48, scope: !3245)
!3262 = !DILocation(line: 1339, column: 9, scope: !3245)
!3263 = !DILocation(line: 1339, column: 2, scope: !3245)
!3264 = distinct !DISubprogram(name: "atomic_read", scope: !2700, file: !2700, line: 30, type: !3265, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3269)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!113, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3269 = !{!3270}
!3270 = !DILocalVariable(name: "v", arg: 1, scope: !3264, file: !2700, line: 30, type: !3267)
!3271 = !DILocation(line: 30, column: 29, scope: !3264)
!3272 = !DILocation(line: 32, column: 25, scope: !3264)
!3273 = !DILocation(line: 32, column: 2, scope: !3264)
!3274 = !DILocation(line: 33, column: 25, scope: !3264)
!3275 = !DILocation(line: 33, column: 9, scope: !3264)
!3276 = !DILocation(line: 33, column: 2, scope: !3264)
!3277 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2716, file: !2716, line: 66, type: !2717, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3278)
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "v", arg: 1, scope: !3277, file: !2716, line: 66, type: !2719)
!3280 = !DILocalVariable(name: "size", arg: 2, scope: !3277, file: !2716, line: 66, type: !207)
!3281 = !DILocation(line: 66, column: 73, scope: !3277)
!3282 = !DILocation(line: 66, column: 83, scope: !3277)
!3283 = !DILocation(line: 68, column: 19, scope: !3277)
!3284 = !DILocation(line: 68, column: 22, scope: !3277)
!3285 = !DILocation(line: 68, column: 2, scope: !3277)
!3286 = !DILocation(line: 69, column: 2, scope: !3277)
!3287 = !DILocation(line: 70, column: 1, scope: !3277)
!3288 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2733, file: !2733, line: 442, type: !3265, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3289)
!3289 = !{!3290}
!3290 = !DILocalVariable(name: "v", arg: 1, scope: !3288, file: !2733, line: 442, type: !3267)
!3291 = !DILocation(line: 442, column: 33, scope: !3288)
!3292 = !DILocation(line: 444, column: 26, scope: !3288)
!3293 = !DILocation(line: 444, column: 9, scope: !3288)
!3294 = !DILocation(line: 444, column: 2, scope: !3288)
!3295 = distinct !DISubprogram(name: "kasan_check_read", scope: !2744, file: !2744, line: 40, type: !2745, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3296)
!3296 = !{!3297, !3298}
!3297 = !DILocalVariable(name: "p", arg: 1, scope: !3295, file: !2744, line: 40, type: !2719)
!3298 = !DILocalVariable(name: "size", arg: 2, scope: !3295, file: !2744, line: 40, type: !7)
!3299 = !DILocation(line: 40, column: 58, scope: !3295)
!3300 = !DILocation(line: 40, column: 74, scope: !3295)
!3301 = !DILocation(line: 42, column: 2, scope: !3295)
!3302 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2766, file: !2766, line: 17, type: !3265, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3303)
!3303 = !{!3304}
!3304 = !DILocalVariable(name: "v", arg: 1, scope: !3302, file: !2766, line: 17, type: !3267)
!3305 = !DILocation(line: 17, column: 61, scope: !3302)
!3306 = !DILocation(line: 23, column: 9, scope: !3302)
!3307 = !DILocation(line: 23, column: 2, scope: !3302)
!3308 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_relaxed", scope: !2733, file: !2733, line: 2207, type: !3246, scopeLine: 2208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3309)
!3309 = !{!3310, !3311, !3312}
!3310 = !DILocalVariable(name: "v", arg: 1, scope: !3308, file: !2733, line: 2207, type: !2703)
!3311 = !DILocalVariable(name: "old", arg: 2, scope: !3308, file: !2733, line: 2207, type: !718)
!3312 = !DILocalVariable(name: "new", arg: 3, scope: !3308, file: !2733, line: 2207, type: !113)
!3313 = !DILocation(line: 2207, column: 42, scope: !3308)
!3314 = !DILocation(line: 2207, column: 50, scope: !3308)
!3315 = !DILocation(line: 2207, column: 59, scope: !3308)
!3316 = !DILocation(line: 2212, column: 33, scope: !3308)
!3317 = !DILocation(line: 2212, column: 36, scope: !3308)
!3318 = !DILocation(line: 2212, column: 41, scope: !3308)
!3319 = !DILocation(line: 2212, column: 9, scope: !3308)
!3320 = !DILocation(line: 2212, column: 2, scope: !3308)
!3321 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !2766, file: !2766, line: 113, type: !3246, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3322)
!3322 = !{!3323, !3324, !3325, !3326, !3328, !3329, !3330, !3331}
!3323 = !DILocalVariable(name: "v", arg: 1, scope: !3321, file: !2766, line: 113, type: !2703)
!3324 = !DILocalVariable(name: "old", arg: 2, scope: !3321, file: !2766, line: 113, type: !718)
!3325 = !DILocalVariable(name: "new", arg: 3, scope: !3321, file: !2766, line: 113, type: !113)
!3326 = !DILocalVariable(name: "success", scope: !3327, file: !2766, line: 115, type: !493)
!3327 = distinct !DILexicalBlock(scope: !3321, file: !2766, line: 115, column: 9)
!3328 = !DILocalVariable(name: "_old", scope: !3327, file: !2766, line: 115, type: !718)
!3329 = !DILocalVariable(name: "__old", scope: !3327, file: !2766, line: 115, type: !113)
!3330 = !DILocalVariable(name: "__new", scope: !3327, file: !2766, line: 115, type: !113)
!3331 = !DILocalVariable(name: "__ptr", scope: !3327, file: !2766, line: 115, type: !719)
!3332 = !DILocation(line: 113, column: 63, scope: !3321)
!3333 = !DILocation(line: 113, column: 71, scope: !3321)
!3334 = !DILocation(line: 113, column: 80, scope: !3321)
!3335 = !DILocation(line: 115, column: 9, scope: !3327)
!3336 = !{i64 2148551478, i64 2148551517, i64 2148551538, i64 2148551575, i64 2148551598, i64 2148551607, i64 2148551905}
!3337 = !DILocation(line: 115, column: 9, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3327, file: !2766, line: 115, column: 9)
!3339 = !DILocation(line: 115, column: 9, scope: !3321)
!3340 = !DILocation(line: 115, column: 2, scope: !3321)
!3341 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !39, file: !39, line: 331, type: !3167, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3342)
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "r", arg: 1, scope: !3341, file: !39, line: 331, type: !2688)
!3344 = !DILocation(line: 331, column: 67, scope: !3341)
!3345 = !DILocation(line: 333, column: 33, scope: !3341)
!3346 = !DILocation(line: 333, column: 9, scope: !3341)
!3347 = !DILocation(line: 333, column: 2, scope: !3341)
!3348 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !39, file: !39, line: 313, type: !3176, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3349)
!3349 = !{!3350, !3351}
!3350 = !DILocalVariable(name: "r", arg: 1, scope: !3348, file: !39, line: 313, type: !2688)
!3351 = !DILocalVariable(name: "oldp", arg: 2, scope: !3348, file: !39, line: 313, type: !718)
!3352 = !DILocation(line: 313, column: 69, scope: !3348)
!3353 = !DILocation(line: 313, column: 77, scope: !3348)
!3354 = !DILocation(line: 315, column: 36, scope: !3348)
!3355 = !DILocation(line: 315, column: 39, scope: !3348)
!3356 = !DILocation(line: 315, column: 9, scope: !3348)
!3357 = !DILocation(line: 315, column: 2, scope: !3348)
!3358 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !39, file: !39, line: 270, type: !3188, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3359)
!3359 = !{!3360, !3361, !3362, !3363}
!3360 = !DILocalVariable(name: "i", arg: 1, scope: !3358, file: !39, line: 270, type: !113)
!3361 = !DILocalVariable(name: "r", arg: 2, scope: !3358, file: !39, line: 270, type: !2688)
!3362 = !DILocalVariable(name: "oldp", arg: 3, scope: !3358, file: !39, line: 270, type: !718)
!3363 = !DILocalVariable(name: "old", scope: !3358, file: !39, line: 272, type: !113)
!3364 = !DILocation(line: 270, column: 61, scope: !3358)
!3365 = !DILocation(line: 270, column: 76, scope: !3358)
!3366 = !DILocation(line: 270, column: 84, scope: !3358)
!3367 = !DILocation(line: 272, column: 2, scope: !3358)
!3368 = !DILocation(line: 272, column: 6, scope: !3358)
!3369 = !DILocation(line: 272, column: 37, scope: !3358)
!3370 = !DILocation(line: 272, column: 41, scope: !3358)
!3371 = !DILocation(line: 272, column: 44, scope: !3358)
!3372 = !DILocation(line: 272, column: 12, scope: !3358)
!3373 = !DILocation(line: 274, column: 6, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3358, file: !39, line: 274, column: 6)
!3375 = !DILocation(line: 274, column: 6, scope: !3358)
!3376 = !DILocation(line: 275, column: 11, scope: !3374)
!3377 = !DILocation(line: 275, column: 4, scope: !3374)
!3378 = !DILocation(line: 275, column: 9, scope: !3374)
!3379 = !DILocation(line: 275, column: 3, scope: !3374)
!3380 = !DILocation(line: 277, column: 6, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3358, file: !39, line: 277, column: 6)
!3382 = !DILocation(line: 277, column: 13, scope: !3381)
!3383 = !DILocation(line: 277, column: 10, scope: !3381)
!3384 = !DILocation(line: 277, column: 6, scope: !3358)
!3385 = !DILocation(line: 278, column: 3, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3381, file: !39, line: 277, column: 16)
!3387 = !DILocation(line: 278, column: 3, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3386, file: !39, line: 278, column: 3)
!3389 = !DILocation(line: 278, column: 3, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3388, file: !39, line: 278, column: 3)
!3391 = !DILocation(line: 278, column: 3, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !39, line: 278, column: 3)
!3393 = !DILocation(line: 278, column: 3, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3392, file: !39, line: 278, column: 3)
!3395 = !{i64 2150418147}
!3396 = !DILocation(line: 279, column: 3, scope: !3386)
!3397 = !DILocation(line: 282, column: 6, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3358, file: !39, line: 282, column: 6)
!3399 = !DILocation(line: 282, column: 6, scope: !3358)
!3400 = !DILocation(line: 283, column: 26, scope: !3398)
!3401 = !DILocation(line: 283, column: 3, scope: !3398)
!3402 = !DILocation(line: 285, column: 2, scope: !3358)
!3403 = !DILocation(line: 286, column: 1, scope: !3358)
!3404 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !2700, file: !2700, line: 397, type: !3117, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3405)
!3405 = !{!3406, !3407}
!3406 = !DILocalVariable(name: "i", arg: 1, scope: !3404, file: !2700, line: 397, type: !113)
!3407 = !DILocalVariable(name: "v", arg: 2, scope: !3404, file: !2700, line: 397, type: !2703)
!3408 = !DILocation(line: 397, column: 30, scope: !3404)
!3409 = !DILocation(line: 397, column: 43, scope: !3404)
!3410 = !DILocation(line: 399, column: 2, scope: !3404)
!3411 = !DILocation(line: 399, column: 2, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3404, file: !2700, line: 399, column: 2)
!3413 = !DILocation(line: 400, column: 31, scope: !3404)
!3414 = !DILocation(line: 400, column: 2, scope: !3404)
!3415 = !DILocation(line: 401, column: 38, scope: !3404)
!3416 = !DILocation(line: 401, column: 41, scope: !3404)
!3417 = !DILocation(line: 401, column: 9, scope: !3404)
!3418 = !DILocation(line: 401, column: 2, scope: !3404)
!3419 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !2733, file: !2733, line: 928, type: !3117, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3420)
!3420 = !{!3421, !3422}
!3421 = !DILocalVariable(name: "i", arg: 1, scope: !3419, file: !2733, line: 928, type: !113)
!3422 = !DILocalVariable(name: "v", arg: 2, scope: !3419, file: !2733, line: 928, type: !2703)
!3423 = !DILocation(line: 928, column: 34, scope: !3419)
!3424 = !DILocation(line: 928, column: 47, scope: !3419)
!3425 = !DILocation(line: 936, column: 31, scope: !3419)
!3426 = !DILocation(line: 936, column: 34, scope: !3419)
!3427 = !DILocation(line: 936, column: 9, scope: !3419)
!3428 = !DILocation(line: 936, column: 2, scope: !3419)
!3429 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !2766, file: !2766, line: 101, type: !3117, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3430)
!3430 = !{!3431, !3432, !3433}
!3431 = !DILocalVariable(name: "i", arg: 1, scope: !3429, file: !2766, line: 101, type: !113)
!3432 = !DILocalVariable(name: "v", arg: 2, scope: !3429, file: !2766, line: 101, type: !2703)
!3433 = !DILocalVariable(name: "__ret", scope: !3434, file: !2766, line: 103, type: !113)
!3434 = distinct !DILexicalBlock(scope: !3429, file: !2766, line: 103, column: 9)
!3435 = !DILocation(line: 101, column: 54, scope: !3429)
!3436 = !DILocation(line: 101, column: 67, scope: !3429)
!3437 = !DILocation(line: 103, column: 9, scope: !3434)
!3438 = !{i64 2148545771, i64 2148545810, i64 2148545831, i64 2148545868, i64 2148545891, i64 2148545900}
!3439 = !DILocation(line: 103, column: 9, scope: !3429)
!3440 = !DILocation(line: 103, column: 2, scope: !3429)
!3441 = distinct !DISubprogram(name: "kobject_cleanup", scope: !3, file: !3, line: 663, type: !180, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3442)
!3442 = !{!3443, !3444, !3445, !3446}
!3443 = !DILocalVariable(name: "kobj", arg: 1, scope: !3441, file: !3, line: 663, type: !69)
!3444 = !DILocalVariable(name: "parent", scope: !3441, file: !3, line: 665, type: !69)
!3445 = !DILocalVariable(name: "t", scope: !3441, file: !3, line: 666, type: !174)
!3446 = !DILocalVariable(name: "name", scope: !3441, file: !3, line: 667, type: !73)
!3447 = !DILocation(line: 663, column: 45, scope: !3441)
!3448 = !DILocation(line: 665, column: 2, scope: !3441)
!3449 = !DILocation(line: 665, column: 18, scope: !3441)
!3450 = !DILocation(line: 665, column: 27, scope: !3441)
!3451 = !DILocation(line: 665, column: 33, scope: !3441)
!3452 = !DILocation(line: 666, column: 2, scope: !3441)
!3453 = !DILocation(line: 666, column: 26, scope: !3441)
!3454 = !DILocation(line: 666, column: 40, scope: !3441)
!3455 = !DILocation(line: 666, column: 30, scope: !3441)
!3456 = !DILocation(line: 667, column: 2, scope: !3441)
!3457 = !DILocation(line: 667, column: 14, scope: !3441)
!3458 = !DILocation(line: 667, column: 21, scope: !3441)
!3459 = !DILocation(line: 667, column: 27, scope: !3441)
!3460 = !DILocation(line: 669, column: 2, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 669, column: 2)
!3462 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 669, column: 2)
!3463 = !DILocation(line: 669, column: 2, scope: !3462)
!3464 = !DILocation(line: 672, column: 6, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 672, column: 6)
!3466 = !DILocation(line: 672, column: 8, scope: !3465)
!3467 = !DILocation(line: 672, column: 12, scope: !3465)
!3468 = !DILocation(line: 672, column: 15, scope: !3465)
!3469 = !DILocation(line: 672, column: 6, scope: !3441)
!3470 = !DILocation(line: 673, column: 3, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 673, column: 3)
!3472 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 673, column: 3)
!3473 = !DILocation(line: 673, column: 3, scope: !3472)
!3474 = !DILocation(line: 673, column: 3, scope: !3465)
!3475 = !DILocation(line: 677, column: 6, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 677, column: 6)
!3477 = !DILocation(line: 677, column: 12, scope: !3476)
!3478 = !DILocation(line: 677, column: 6, scope: !3441)
!3479 = !DILocation(line: 678, column: 3, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 678, column: 3)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 678, column: 3)
!3482 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 677, column: 28)
!3483 = !DILocation(line: 678, column: 3, scope: !3481)
!3484 = !DILocation(line: 680, column: 17, scope: !3482)
!3485 = !DILocation(line: 680, column: 3, scope: !3482)
!3486 = !DILocation(line: 681, column: 2, scope: !3482)
!3487 = !DILocation(line: 683, column: 10, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3476, file: !3, line: 681, column: 9)
!3489 = !DILocation(line: 686, column: 6, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 686, column: 6)
!3491 = !DILocation(line: 686, column: 8, scope: !3490)
!3492 = !DILocation(line: 686, column: 11, scope: !3490)
!3493 = !DILocation(line: 686, column: 14, scope: !3490)
!3494 = !DILocation(line: 686, column: 6, scope: !3441)
!3495 = !DILocation(line: 687, column: 3, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 687, column: 3)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 687, column: 3)
!3498 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 686, column: 23)
!3499 = !DILocation(line: 687, column: 3, scope: !3497)
!3500 = !DILocation(line: 689, column: 3, scope: !3498)
!3501 = !DILocation(line: 689, column: 6, scope: !3498)
!3502 = !DILocation(line: 689, column: 14, scope: !3498)
!3503 = !DILocation(line: 690, column: 2, scope: !3498)
!3504 = !DILocation(line: 693, column: 6, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 693, column: 6)
!3506 = !DILocation(line: 693, column: 6, scope: !3441)
!3507 = !DILocation(line: 694, column: 3, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 694, column: 3)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 694, column: 3)
!3510 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 693, column: 12)
!3511 = !DILocation(line: 694, column: 3, scope: !3509)
!3512 = !DILocation(line: 695, column: 15, scope: !3510)
!3513 = !DILocation(line: 695, column: 3, scope: !3510)
!3514 = !DILocation(line: 696, column: 2, scope: !3510)
!3515 = !DILocation(line: 698, column: 14, scope: !3441)
!3516 = !DILocation(line: 698, column: 2, scope: !3441)
!3517 = !DILocation(line: 699, column: 1, scope: !3441)
!3518 = distinct !DISubprogram(name: "dynamic_kobj_release", scope: !3, file: !3, line: 742, type: !180, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3519)
!3519 = !{!3520}
!3520 = !DILocalVariable(name: "kobj", arg: 1, scope: !3518, file: !3, line: 742, type: !69)
!3521 = !DILocation(line: 742, column: 50, scope: !3518)
!3522 = !DILocation(line: 744, column: 2, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 744, column: 2)
!3524 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 744, column: 2)
!3525 = !DILocation(line: 744, column: 2, scope: !3524)
!3526 = !DILocation(line: 745, column: 8, scope: !3518)
!3527 = !DILocation(line: 745, column: 2, scope: !3518)
!3528 = !DILocation(line: 746, column: 1, scope: !3518)
!3529 = distinct !DISubprogram(name: "kobj_kset_join", scope: !3, file: !3, line: 174, type: !180, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3530)
!3530 = !{!3531}
!3531 = !DILocalVariable(name: "kobj", arg: 1, scope: !3529, file: !3, line: 174, type: !69)
!3532 = !DILocation(line: 174, column: 44, scope: !3529)
!3533 = !DILocation(line: 176, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 176, column: 6)
!3535 = !DILocation(line: 176, column: 13, scope: !3534)
!3536 = !DILocation(line: 176, column: 6, scope: !3529)
!3537 = !DILocation(line: 177, column: 3, scope: !3534)
!3538 = !DILocation(line: 179, column: 11, scope: !3529)
!3539 = !DILocation(line: 179, column: 17, scope: !3529)
!3540 = !DILocation(line: 179, column: 2, scope: !3529)
!3541 = !DILocation(line: 180, column: 13, scope: !3529)
!3542 = !DILocation(line: 180, column: 19, scope: !3529)
!3543 = !DILocation(line: 180, column: 25, scope: !3529)
!3544 = !DILocation(line: 180, column: 2, scope: !3529)
!3545 = !DILocation(line: 181, column: 17, scope: !3529)
!3546 = !DILocation(line: 181, column: 23, scope: !3529)
!3547 = !DILocation(line: 181, column: 31, scope: !3529)
!3548 = !DILocation(line: 181, column: 37, scope: !3529)
!3549 = !DILocation(line: 181, column: 43, scope: !3529)
!3550 = !DILocation(line: 181, column: 2, scope: !3529)
!3551 = !DILocation(line: 182, column: 15, scope: !3529)
!3552 = !DILocation(line: 182, column: 21, scope: !3529)
!3553 = !DILocation(line: 182, column: 27, scope: !3529)
!3554 = !DILocation(line: 182, column: 2, scope: !3529)
!3555 = !DILocation(line: 183, column: 1, scope: !3529)
!3556 = distinct !DISubprogram(name: "create_dir", scope: !3, file: !3, line: 67, type: !2157, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3557)
!3557 = !{!3558, !3559, !3560, !3561}
!3558 = !DILocalVariable(name: "kobj", arg: 1, scope: !3556, file: !3, line: 67, type: !69)
!3559 = !DILocalVariable(name: "ktype", scope: !3556, file: !3, line: 69, type: !174)
!3560 = !DILocalVariable(name: "ops", scope: !3556, file: !3, line: 70, type: !532)
!3561 = !DILocalVariable(name: "error", scope: !3556, file: !3, line: 71, type: !113)
!3562 = !DILocation(line: 67, column: 39, scope: !3556)
!3563 = !DILocation(line: 69, column: 2, scope: !3556)
!3564 = !DILocation(line: 69, column: 26, scope: !3556)
!3565 = !DILocation(line: 69, column: 44, scope: !3556)
!3566 = !DILocation(line: 69, column: 34, scope: !3556)
!3567 = !DILocation(line: 70, column: 2, scope: !3556)
!3568 = !DILocation(line: 70, column: 40, scope: !3556)
!3569 = !DILocation(line: 71, column: 2, scope: !3556)
!3570 = !DILocation(line: 71, column: 6, scope: !3556)
!3571 = !DILocation(line: 73, column: 30, scope: !3556)
!3572 = !DILocation(line: 73, column: 54, scope: !3556)
!3573 = !DILocation(line: 73, column: 36, scope: !3556)
!3574 = !DILocation(line: 73, column: 10, scope: !3556)
!3575 = !DILocation(line: 73, column: 8, scope: !3556)
!3576 = !DILocation(line: 74, column: 6, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 74, column: 6)
!3578 = !DILocation(line: 74, column: 6, scope: !3556)
!3579 = !DILocation(line: 75, column: 10, scope: !3577)
!3580 = !DILocation(line: 75, column: 3, scope: !3577)
!3581 = !DILocation(line: 77, column: 6, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 77, column: 6)
!3583 = !DILocation(line: 77, column: 6, scope: !3556)
!3584 = !DILocation(line: 78, column: 31, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 77, column: 13)
!3586 = !DILocation(line: 78, column: 37, scope: !3585)
!3587 = !DILocation(line: 78, column: 44, scope: !3585)
!3588 = !DILocation(line: 78, column: 11, scope: !3585)
!3589 = !DILocation(line: 78, column: 9, scope: !3585)
!3590 = !DILocation(line: 79, column: 7, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 79, column: 7)
!3592 = !DILocation(line: 79, column: 7, scope: !3585)
!3593 = !DILocation(line: 80, column: 21, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 79, column: 14)
!3595 = !DILocation(line: 80, column: 4, scope: !3594)
!3596 = !DILocation(line: 81, column: 11, scope: !3594)
!3597 = !DILocation(line: 81, column: 4, scope: !3594)
!3598 = !DILocation(line: 83, column: 2, scope: !3585)
!3599 = !DILocation(line: 89, column: 12, scope: !3556)
!3600 = !DILocation(line: 89, column: 18, scope: !3556)
!3601 = !DILocation(line: 89, column: 2, scope: !3556)
!3602 = !DILocation(line: 95, column: 26, scope: !3556)
!3603 = !DILocation(line: 95, column: 8, scope: !3556)
!3604 = !DILocation(line: 95, column: 6, scope: !3556)
!3605 = !DILocation(line: 96, column: 6, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 96, column: 6)
!3607 = !DILocation(line: 96, column: 6, scope: !3556)
!3608 = !DILocation(line: 97, column: 3, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 96, column: 11)
!3610 = !DILocation(line: 97, column: 3, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 97, column: 3)
!3612 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 97, column: 3)
!3613 = !DILocation(line: 97, column: 3, scope: !3612)
!3614 = !DILocation(line: 97, column: 3, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 97, column: 3)
!3616 = !DILocation(line: 97, column: 3, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 97, column: 3)
!3618 = !DILocation(line: 97, column: 3, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 97, column: 3)
!3620 = !{i64 2152206342, i64 2152206371, i64 2152206417, i64 2152206475, i64 2152206529, i64 2152206583, i64 2152206638, i64 2152206669}
!3621 = !DILocation(line: 98, column: 3, scope: !3609)
!3622 = !DILocation(line: 98, column: 3, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !3, line: 98, column: 3)
!3624 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 98, column: 3)
!3625 = !DILocation(line: 98, column: 3, scope: !3624)
!3626 = !DILocation(line: 98, column: 3, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 98, column: 3)
!3628 = !DILocation(line: 98, column: 3, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 98, column: 3)
!3630 = !DILocation(line: 98, column: 3, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 98, column: 3)
!3632 = !{i64 2152207363, i64 2152207392, i64 2152207438, i64 2152207496, i64 2152207550, i64 2152207604, i64 2152207659, i64 2152207690}
!3633 = !DILocation(line: 100, column: 19, scope: !3609)
!3634 = !DILocation(line: 100, column: 25, scope: !3609)
!3635 = !DILocation(line: 100, column: 3, scope: !3609)
!3636 = !DILocation(line: 101, column: 2, scope: !3609)
!3637 = !DILocation(line: 103, column: 2, scope: !3556)
!3638 = !DILocation(line: 104, column: 1, scope: !3556)
!3639 = distinct !DISubprogram(name: "kset_get", scope: !13, file: !13, line: 186, type: !3640, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!84, !84}
!3642 = !{!3643}
!3643 = !DILocalVariable(name: "k", arg: 1, scope: !3639, file: !13, line: 186, type: !84)
!3644 = !DILocation(line: 186, column: 50, scope: !3639)
!3645 = !DILocation(line: 188, column: 9, scope: !3639)
!3646 = !DILocation(line: 188, column: 34, scope: !3639)
!3647 = !DILocation(line: 188, column: 37, scope: !3639)
!3648 = !DILocation(line: 188, column: 21, scope: !3639)
!3649 = !DILocation(line: 188, column: 13, scope: !3639)
!3650 = !DILocation(line: 188, column: 2, scope: !3639)
!3651 = distinct !DISubprogram(name: "list_add_tail", scope: !2005, file: !2005, line: 181, type: !3041, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3652)
!3652 = !{!3653, !3654}
!3653 = !DILocalVariable(name: "new", arg: 1, scope: !3651, file: !2005, line: 181, type: !80)
!3654 = !DILocalVariable(name: "head", arg: 2, scope: !3651, file: !2005, line: 181, type: !80)
!3655 = !DILocation(line: 181, column: 52, scope: !3651)
!3656 = !DILocation(line: 181, column: 75, scope: !3651)
!3657 = !DILocation(line: 183, column: 13, scope: !3651)
!3658 = !DILocation(line: 183, column: 18, scope: !3651)
!3659 = !DILocation(line: 183, column: 24, scope: !3651)
!3660 = !DILocation(line: 183, column: 30, scope: !3651)
!3661 = !DILocation(line: 183, column: 2, scope: !3651)
!3662 = !DILocation(line: 184, column: 1, scope: !3651)
!3663 = distinct !DISubprogram(name: "to_kset", scope: !13, file: !13, line: 181, type: !3664, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!84, !69}
!3666 = !{!3667, !3668}
!3667 = !DILocalVariable(name: "kobj", arg: 1, scope: !3663, file: !13, line: 181, type: !69)
!3668 = !DILocalVariable(name: "__mptr", scope: !3669, file: !13, line: 183, type: !66)
!3669 = distinct !DILexicalBlock(scope: !3663, file: !13, line: 183, column: 16)
!3670 = !DILocation(line: 181, column: 52, scope: !3663)
!3671 = !DILocation(line: 183, column: 9, scope: !3663)
!3672 = !DILocation(line: 183, column: 16, scope: !3669)
!3673 = !DILocation(line: 183, column: 16, scope: !3663)
!3674 = !DILocation(line: 183, column: 2, scope: !3663)
!3675 = distinct !DISubprogram(name: "__list_add", scope: !2005, file: !2005, line: 146, type: !3676, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !80, !80, !80}
!3678 = !{!3679, !3680, !3681}
!3679 = !DILocalVariable(name: "new", arg: 1, scope: !3675, file: !2005, line: 146, type: !80)
!3680 = !DILocalVariable(name: "prev", arg: 2, scope: !3675, file: !2005, line: 147, type: !80)
!3681 = !DILocalVariable(name: "next", arg: 3, scope: !3675, file: !2005, line: 148, type: !80)
!3682 = !DILocation(line: 146, column: 49, scope: !3675)
!3683 = !DILocation(line: 147, column: 28, scope: !3675)
!3684 = !DILocation(line: 148, column: 28, scope: !3675)
!3685 = !DILocation(line: 150, column: 24, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3675, file: !2005, line: 150, column: 6)
!3687 = !DILocation(line: 150, column: 29, scope: !3686)
!3688 = !DILocation(line: 150, column: 35, scope: !3686)
!3689 = !DILocation(line: 150, column: 7, scope: !3686)
!3690 = !DILocation(line: 150, column: 6, scope: !3675)
!3691 = !DILocation(line: 151, column: 3, scope: !3686)
!3692 = !DILocation(line: 153, column: 15, scope: !3675)
!3693 = !DILocation(line: 153, column: 2, scope: !3675)
!3694 = !DILocation(line: 153, column: 8, scope: !3675)
!3695 = !DILocation(line: 153, column: 13, scope: !3675)
!3696 = !DILocation(line: 154, column: 14, scope: !3675)
!3697 = !DILocation(line: 154, column: 2, scope: !3675)
!3698 = !DILocation(line: 154, column: 7, scope: !3675)
!3699 = !DILocation(line: 154, column: 12, scope: !3675)
!3700 = !DILocation(line: 155, column: 14, scope: !3675)
!3701 = !DILocation(line: 155, column: 2, scope: !3675)
!3702 = !DILocation(line: 155, column: 7, scope: !3675)
!3703 = !DILocation(line: 155, column: 12, scope: !3675)
!3704 = !DILocation(line: 156, column: 2, scope: !3675)
!3705 = !DILocation(line: 156, column: 2, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3675, file: !2005, line: 156, column: 2)
!3707 = !DILocation(line: 156, column: 2, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3706, file: !2005, line: 156, column: 2)
!3709 = !DILocation(line: 156, column: 2, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3706, file: !2005, line: 156, column: 2)
!3711 = !DILocation(line: 157, column: 1, scope: !3675)
!3712 = distinct !DISubprogram(name: "__list_add_valid", scope: !2005, file: !2005, line: 128, type: !3713, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!493, !80, !80, !80}
!3715 = !{!3716, !3717, !3718}
!3716 = !DILocalVariable(name: "new", arg: 1, scope: !3712, file: !2005, line: 128, type: !80)
!3717 = !DILocalVariable(name: "prev", arg: 2, scope: !3712, file: !2005, line: 129, type: !80)
!3718 = !DILocalVariable(name: "next", arg: 3, scope: !3712, file: !2005, line: 130, type: !80)
!3719 = !DILocation(line: 128, column: 55, scope: !3712)
!3720 = !DILocation(line: 129, column: 23, scope: !3712)
!3721 = !DILocation(line: 130, column: 23, scope: !3712)
!3722 = !DILocation(line: 132, column: 2, scope: !3712)
!3723 = !DISubprogram(name: "sysfs_create_dir_ns", scope: !186, file: !186, line: 261, type: !3724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!113, !69, !549}
!3726 = !DISubprogram(name: "sysfs_create_groups", scope: !186, file: !186, line: 309, type: !3727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!113, !69, !212}
!3729 = distinct !DISubprogram(name: "sysfs_get", scope: !186, file: !186, line: 649, type: !3730, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!585, !585}
!3732 = !{!3733}
!3733 = !DILocalVariable(name: "kn", arg: 1, scope: !3729, file: !186, line: 649, type: !585)
!3734 = !DILocation(line: 649, column: 65, scope: !3729)
!3735 = !DILocation(line: 651, column: 13, scope: !3729)
!3736 = !DILocation(line: 651, column: 2, scope: !3729)
!3737 = !DILocation(line: 652, column: 9, scope: !3729)
!3738 = !DILocation(line: 652, column: 2, scope: !3729)
!3739 = distinct !DISubprogram(name: "sysfs_enable_ns", scope: !186, file: !186, line: 340, type: !2968, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3740)
!3740 = !{!3741}
!3741 = !DILocalVariable(name: "kn", arg: 1, scope: !3739, file: !186, line: 340, type: !585)
!3742 = !DILocation(line: 340, column: 56, scope: !3739)
!3743 = !DILocation(line: 342, column: 26, scope: !3739)
!3744 = !DILocation(line: 342, column: 9, scope: !3739)
!3745 = !DILocation(line: 342, column: 2, scope: !3739)
!3746 = !DISubprogram(name: "kernfs_get", scope: !47, file: !47, line: 406, type: !2968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3747 = distinct !DISubprogram(name: "kernfs_enable_ns", scope: !47, file: !47, line: 378, type: !2968, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3748)
!3748 = !{!3749, !3750, !3752, !3755, !3757}
!3749 = !DILocalVariable(name: "kn", arg: 1, scope: !3747, file: !47, line: 378, type: !585)
!3750 = !DILocalVariable(name: "__ret_warn_on", scope: !3751, file: !47, line: 380, type: !113)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !47, line: 380, column: 2)
!3752 = !DILocalVariable(name: "__flags", scope: !3753, file: !47, line: 380, type: !113)
!3753 = distinct !DILexicalBlock(scope: !3754, file: !47, line: 380, column: 2)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !47, line: 380, column: 2)
!3755 = !DILocalVariable(name: "__ret_warn_on", scope: !3756, file: !47, line: 381, type: !113)
!3756 = distinct !DILexicalBlock(scope: !3747, file: !47, line: 381, column: 2)
!3757 = !DILocalVariable(name: "__flags", scope: !3758, file: !47, line: 381, type: !113)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !47, line: 381, column: 2)
!3759 = distinct !DILexicalBlock(scope: !3756, file: !47, line: 381, column: 2)
!3760 = !DILocation(line: 378, column: 57, scope: !3747)
!3761 = !DILocation(line: 380, column: 2, scope: !3751)
!3762 = !DILocation(line: 380, column: 2, scope: !3754)
!3763 = !DILocation(line: 380, column: 2, scope: !3753)
!3764 = !DILocation(line: 380, column: 2, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3753, file: !47, line: 380, column: 2)
!3766 = !DILocation(line: 380, column: 2, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3753, file: !47, line: 380, column: 2)
!3768 = !{i64 2152056757, i64 2152056786, i64 2152056832, i64 2152056890, i64 2152056944, i64 2152056998, i64 2152057053, i64 2152057084, i64 2152057392, i64 2152057398, i64 2152057445, i64 2152057468, i64 2152057494}
!3769 = !DILocation(line: 380, column: 2, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3753, file: !47, line: 380, column: 2)
!3771 = !DILocation(line: 380, column: 2, scope: !3747)
!3772 = !DILocation(line: 381, column: 2, scope: !3756)
!3773 = !DILocation(line: 381, column: 2, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3756, file: !47, line: 381, column: 2)
!3775 = !DILocation(line: 381, column: 2, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3774, file: !47, line: 381, column: 2)
!3777 = !DILocation(line: 381, column: 2, scope: !3759)
!3778 = !DILocation(line: 381, column: 2, scope: !3758)
!3779 = !DILocation(line: 381, column: 2, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3758, file: !47, line: 381, column: 2)
!3781 = !DILocation(line: 381, column: 2, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3758, file: !47, line: 381, column: 2)
!3783 = !{i64 2152062799, i64 2152062828, i64 2152062874, i64 2152062932, i64 2152062986, i64 2152063040, i64 2152063095, i64 2152063126, i64 2152063434, i64 2152063440, i64 2152063487, i64 2152063510, i64 2152063536}
!3784 = !DILocation(line: 381, column: 2, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3758, file: !47, line: 381, column: 2)
!3786 = !DILocation(line: 381, column: 2, scope: !3747)
!3787 = !DILocation(line: 382, column: 2, scope: !3747)
!3788 = !DILocation(line: 382, column: 6, scope: !3747)
!3789 = !DILocation(line: 382, column: 12, scope: !3747)
!3790 = !DILocation(line: 383, column: 1, scope: !3747)
!3791 = distinct !DISubprogram(name: "kernfs_type", scope: !47, file: !47, line: 337, type: !3792, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3794)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!46, !585}
!3794 = !{!3795}
!3795 = !DILocalVariable(name: "kn", arg: 1, scope: !3791, file: !47, line: 337, type: !585)
!3796 = !DILocation(line: 337, column: 69, scope: !3791)
!3797 = !DILocation(line: 339, column: 9, scope: !3791)
!3798 = !DILocation(line: 339, column: 13, scope: !3791)
!3799 = !DILocation(line: 339, column: 19, scope: !3791)
!3800 = !DILocation(line: 339, column: 2, scope: !3791)
!3801 = !DISubprogram(name: "_raw_spin_lock", scope: !3802, file: !3802, line: 22, type: !3803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3802 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !2030}
!3805 = !DISubprogram(name: "_raw_spin_unlock", scope: !3802, file: !3802, line: 39, type: !3803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3806 = distinct !DISubprogram(name: "kset_release", scope: !3, file: !3, line: 923, type: !180, scopeLine: 924, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3807)
!3807 = !{!3808, !3809, !3810}
!3808 = !DILocalVariable(name: "kobj", arg: 1, scope: !3806, file: !3, line: 923, type: !69)
!3809 = !DILocalVariable(name: "kset", scope: !3806, file: !3, line: 925, type: !84)
!3810 = !DILocalVariable(name: "__mptr", scope: !3811, file: !3, line: 925, type: !66)
!3811 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 925, column: 22)
!3812 = !DILocation(line: 923, column: 42, scope: !3806)
!3813 = !DILocation(line: 925, column: 2, scope: !3806)
!3814 = !DILocation(line: 925, column: 15, scope: !3806)
!3815 = !DILocation(line: 925, column: 22, scope: !3811)
!3816 = !DILocation(line: 925, column: 22, scope: !3806)
!3817 = !DILocation(line: 926, column: 2, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 926, column: 2)
!3819 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 926, column: 2)
!3820 = !DILocation(line: 926, column: 2, scope: !3819)
!3821 = !DILocation(line: 928, column: 8, scope: !3806)
!3822 = !DILocation(line: 928, column: 2, scope: !3806)
!3823 = !DILocation(line: 929, column: 1, scope: !3806)
!3824 = distinct !DISubprogram(name: "kset_get_ownership", scope: !3, file: !3, line: 931, type: !567, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3825)
!3825 = !{!3826, !3827, !3828}
!3826 = !DILocalVariable(name: "kobj", arg: 1, scope: !3824, file: !3, line: 931, type: !143)
!3827 = !DILocalVariable(name: "uid", arg: 2, scope: !3824, file: !3, line: 931, type: !569)
!3828 = !DILocalVariable(name: "gid", arg: 3, scope: !3824, file: !3, line: 931, type: !577)
!3829 = !DILocation(line: 931, column: 54, scope: !3824)
!3830 = !DILocation(line: 931, column: 68, scope: !3824)
!3831 = !DILocation(line: 931, column: 81, scope: !3824)
!3832 = !DILocation(line: 933, column: 6, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 933, column: 6)
!3834 = !DILocation(line: 933, column: 12, scope: !3833)
!3835 = !DILocation(line: 933, column: 6, scope: !3824)
!3836 = !DILocation(line: 934, column: 25, scope: !3833)
!3837 = !DILocation(line: 934, column: 31, scope: !3833)
!3838 = !DILocation(line: 934, column: 39, scope: !3833)
!3839 = !DILocation(line: 934, column: 44, scope: !3833)
!3840 = !DILocation(line: 934, column: 3, scope: !3833)
!3841 = !DILocation(line: 935, column: 1, scope: !3824)
