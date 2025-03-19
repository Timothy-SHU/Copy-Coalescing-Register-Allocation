; ModuleID = 'block/early-lookup.c'
source_filename = "block/early-lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uuidcmp = type { ptr, i32 }
%struct.block_device = type { i64, i64, ptr, ptr, ptr, i64, i8, i8, i8, i8, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, %struct.mutex, ptr, ptr, i8, %struct.device }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.class_dev_iter = type { %struct.klist_iter, ptr, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, %struct.bio_set, i32, i64, %struct.mutex, i32, ptr, %struct.kobject, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64, i32, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"PARTUUID=\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"PARTLABEL=\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1, !dbg !12
@block_class = external dso_local global %struct.class, align 8
@disk_type = external dso_local constant %struct.device_type, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"%s%s %10llu %pg %s\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !27
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [13 x i8] c" driver: %s\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [12 x i8] c" (driver?)\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [15 x i8] c"PARTNROFF=%d%c\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [80 x i8] c"\013VFS: PARTUUID= is invalid.\0AExpected PARTUUID=<valid-uuid-id>[/PARTNROFF=%%d]\0A\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [8 x i8] c"%u:%u%c\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [12 x i8] c"%u:%u:%u:%c\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [9 x i8] c"%02x%02x\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [5 x i8] c"%-9s\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [10 x i8] c"%03x:%05x\00", align 1, !dbg !74

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @early_lookup_bdev(ptr noundef %name, ptr noundef %devt) #0 section ".init.text" align 16 !dbg !4980 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %devt.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4985, metadata !DIExpression()), !dbg !4987
  store ptr %devt, ptr %devt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devt.addr, metadata !4986, metadata !DIExpression()), !dbg !4988
  %0 = load ptr, ptr %name.addr, align 8, !dbg !4989
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef @.str, i64 noundef 9) #7, !dbg !4991
  %cmp = icmp eq i32 %call, 0, !dbg !4992
  br i1 %cmp, label %if.then, label %if.end, !dbg !4993

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4994
  %add.ptr = getelementptr i8, ptr %1, i64 9, !dbg !4995
  %2 = load ptr, ptr %devt.addr, align 8, !dbg !4996
  %call1 = call i32 @devt_from_partuuid(ptr noundef %add.ptr, ptr noundef %2) #8, !dbg !4997
  store i32 %call1, ptr %retval, align 4, !dbg !4998
  br label %return, !dbg !4998

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4999
  %call2 = call i32 @strncmp(ptr noundef %3, ptr noundef @.str.1, i64 noundef 10) #7, !dbg !5001
  %cmp3 = icmp eq i32 %call2, 0, !dbg !5002
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !5003

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %name.addr, align 8, !dbg !5004
  %add.ptr5 = getelementptr i8, ptr %4, i64 10, !dbg !5005
  %5 = load ptr, ptr %devt.addr, align 8, !dbg !5006
  %call6 = call i32 @devt_from_partlabel(ptr noundef %add.ptr5, ptr noundef %5) #8, !dbg !5007
  store i32 %call6, ptr %retval, align 4, !dbg !5008
  br label %return, !dbg !5008

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %name.addr, align 8, !dbg !5009
  %call8 = call i32 @strncmp(ptr noundef %6, ptr noundef @.str.2, i64 noundef 5) #7, !dbg !5011
  %cmp9 = icmp eq i32 %call8, 0, !dbg !5012
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !5013

if.then10:                                        ; preds = %if.end7
  %7 = load ptr, ptr %name.addr, align 8, !dbg !5014
  %add.ptr11 = getelementptr i8, ptr %7, i64 5, !dbg !5015
  %8 = load ptr, ptr %devt.addr, align 8, !dbg !5016
  %call12 = call i32 @devt_from_devname(ptr noundef %add.ptr11, ptr noundef %8) #8, !dbg !5017
  store i32 %call12, ptr %retval, align 4, !dbg !5018
  br label %return, !dbg !5018

if.end13:                                         ; preds = %if.end7
  %9 = load ptr, ptr %name.addr, align 8, !dbg !5019
  %10 = load ptr, ptr %devt.addr, align 8, !dbg !5020
  %call14 = call i32 @devt_from_devnum(ptr noundef %9, ptr noundef %10) #8, !dbg !5021
  store i32 %call14, ptr %retval, align 4, !dbg !5022
  br label %return, !dbg !5022

return:                                           ; preds = %if.end13, %if.then10, %if.then4, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !5023
  ret i32 %11, !dbg !5023
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5024 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @devt_from_partuuid(ptr noundef %uuid_str, ptr noundef %devt) #0 section ".init.text" align 16 !dbg !5028 {
entry:
  %retval = alloca i32, align 4
  %uuid_str.addr = alloca ptr, align 8
  %devt.addr = alloca ptr, align 8
  %cmp = alloca %struct.uuidcmp, align 8
  %dev = alloca ptr, align 8
  %offset = alloca i32, align 4
  %slash = alloca ptr, align 8
  %c = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %tmp28 = alloca i32, align 4
  store ptr %uuid_str, ptr %uuid_str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %uuid_str.addr, metadata !5030, metadata !DIExpression()), !dbg !5050
  store ptr %devt, ptr %devt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devt.addr, metadata !5031, metadata !DIExpression()), !dbg !5051
  call void @llvm.lifetime.start.p0(i64 16, ptr %cmp) #9, !dbg !5052
  call void @llvm.dbg.declare(metadata ptr %cmp, metadata !5032, metadata !DIExpression()), !dbg !5053
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !5054
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5037, metadata !DIExpression()), !dbg !5055
  store ptr null, ptr %dev, align 8, !dbg !5055
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #9, !dbg !5056
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5038, metadata !DIExpression()), !dbg !5057
  store i32 0, ptr %offset, align 4, !dbg !5057
  call void @llvm.lifetime.start.p0(i64 8, ptr %slash) #9, !dbg !5058
  call void @llvm.dbg.declare(metadata ptr %slash, metadata !5039, metadata !DIExpression()), !dbg !5059
  %0 = load ptr, ptr %uuid_str.addr, align 8, !dbg !5060
  %uuid = getelementptr inbounds %struct.uuidcmp, ptr %cmp, i32 0, i32 0, !dbg !5061
  store ptr %0, ptr %uuid, align 8, !dbg !5062
  %1 = load ptr, ptr %uuid_str.addr, align 8, !dbg !5063
  %call = call ptr @strchr(ptr noundef %1, i32 noundef 47) #7, !dbg !5064
  store ptr %call, ptr %slash, align 8, !dbg !5065
  %2 = load ptr, ptr %slash, align 8, !dbg !5066
  %tobool = icmp ne ptr %2, null, !dbg !5066
  br i1 %tobool, label %if.then, label %if.else, !dbg !5067

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #9, !dbg !5068
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5040, metadata !DIExpression()), !dbg !5069
  store i8 0, ptr %c, align 1, !dbg !5069
  %3 = load ptr, ptr %slash, align 8, !dbg !5070
  %add.ptr = getelementptr i8, ptr %3, i64 1, !dbg !5072
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %add.ptr, ptr noundef @.str.9, ptr noundef %offset, ptr noundef %c) #7, !dbg !5073
  %cmp2 = icmp ne i32 %call1, 1, !dbg !5074
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5075

if.then3:                                         ; preds = %if.then
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5076

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %slash, align 8, !dbg !5077
  %5 = load ptr, ptr %uuid_str.addr, align 8, !dbg !5078
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64, !dbg !5079
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64, !dbg !5079
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5079
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !5077
  %len = getelementptr inbounds %struct.uuidcmp, ptr %cmp, i32 0, i32 1, !dbg !5080
  store i32 %conv, ptr %len, align 8, !dbg !5081
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5082
  br label %cleanup, !dbg !5082

cleanup:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #9, !dbg !5082
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup30 [
    i32 0, label %cleanup.cont
    i32 2, label %out_invalid
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !5083

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %uuid_str.addr, align 8, !dbg !5084
  %call4 = call i64 @strlen(ptr noundef %6) #7, !dbg !5086
  %conv5 = trunc i64 %call4 to i32, !dbg !5086
  %len6 = getelementptr inbounds %struct.uuidcmp, ptr %cmp, i32 0, i32 1, !dbg !5087
  store i32 %conv5, ptr %len6, align 8, !dbg !5088
  br label %if.end7

if.end7:                                          ; preds = %if.else, %cleanup.cont
  %len8 = getelementptr inbounds %struct.uuidcmp, ptr %cmp, i32 0, i32 1, !dbg !5089
  %7 = load i32, ptr %len8, align 8, !dbg !5089
  %tobool9 = icmp ne i32 %7, 0, !dbg !5091
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5092

if.then10:                                        ; preds = %if.end7
  br label %out_invalid, !dbg !5093

if.end11:                                         ; preds = %if.end7
  %call12 = call ptr @class_find_device(ptr noundef @block_class, ptr noundef null, ptr noundef %cmp, ptr noundef @match_dev_by_uuid) #7, !dbg !5094
  store ptr %call12, ptr %dev, align 8, !dbg !5095
  %8 = load ptr, ptr %dev, align 8, !dbg !5096
  %tobool13 = icmp ne ptr %8, null, !dbg !5096
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5098

if.then14:                                        ; preds = %if.end11
  store i32 -19, ptr %retval, align 4, !dbg !5099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !5099

if.end15:                                         ; preds = %if.end11
  %9 = load i32, ptr %offset, align 4, !dbg !5100
  %tobool16 = icmp ne i32 %9, 0, !dbg !5100
  br i1 %tobool16, label %if.then17, label %if.else25, !dbg !5101

if.then17:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5102
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5043, metadata !DIExpression()), !dbg !5102
  %10 = load ptr, ptr %dev, align 8, !dbg !5102
  store ptr %10, ptr %__mptr, align 8, !dbg !5102
  %11 = load ptr, ptr %__mptr, align 8, !dbg !5102
  %add.ptr18 = getelementptr i8, ptr %11, i64 -200, !dbg !5102
  store ptr %add.ptr18, ptr %tmp, align 8, !dbg !5102
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5103
  %12 = load ptr, ptr %tmp, align 8, !dbg !5102
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 2, !dbg !5103
  %13 = load ptr, ptr %bd_disk, align 8, !dbg !5103
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #9, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !5047, metadata !DIExpression()), !dbg !5104
  %14 = load ptr, ptr %dev, align 8, !dbg !5104
  store ptr %14, ptr %__mptr19, align 8, !dbg !5104
  %15 = load ptr, ptr %__mptr19, align 8, !dbg !5104
  %add.ptr21 = getelementptr i8, ptr %15, i64 -200, !dbg !5104
  store ptr %add.ptr21, ptr %tmp20, align 8, !dbg !5104
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #9, !dbg !5105
  %16 = load ptr, ptr %tmp20, align 8, !dbg !5104
  %bd_partno = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 7, !dbg !5106
  %17 = load i8, ptr %bd_partno, align 1, !dbg !5106
  %conv22 = zext i8 %17 to i32, !dbg !5105
  %18 = load i32, ptr %offset, align 4, !dbg !5107
  %add = add i32 %conv22, %18, !dbg !5108
  %conv23 = trunc i32 %add to i8, !dbg !5105
  %call24 = call i32 @part_devt(ptr noundef %13, i8 noundef zeroext %conv23) #7, !dbg !5109
  %19 = load ptr, ptr %devt.addr, align 8, !dbg !5110
  store i32 %call24, ptr %19, align 4, !dbg !5111
  br label %if.end27, !dbg !5112

if.else25:                                        ; preds = %if.end15
  %20 = load ptr, ptr %dev, align 8, !dbg !5113
  %devt26 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 26, !dbg !5115
  %21 = load i32, ptr %devt26, align 4, !dbg !5115
  %22 = load ptr, ptr %devt.addr, align 8, !dbg !5116
  store i32 %21, ptr %22, align 4, !dbg !5117
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then17
  %23 = load ptr, ptr %dev, align 8, !dbg !5118
  call void @put_device(ptr noundef %23) #7, !dbg !5119
  store i32 0, ptr %retval, align 4, !dbg !5120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !5120

out_invalid:                                      ; preds = %cleanup, %if.then10
  call void @llvm.dbg.label(metadata !5049), !dbg !5121
  br label %do.body, !dbg !5122

do.body:                                          ; preds = %out_invalid
  br label %do.cond, !dbg !5124

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5124

do.end:                                           ; preds = %do.cond
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.10) #8, !dbg !5122
  store i32 %call29, ptr %tmp28, align 4, !dbg !5124
  %24 = load i32, ptr %tmp28, align 4, !dbg !5122
  store i32 -22, ptr %retval, align 4, !dbg !5126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !5126

cleanup30:                                        ; preds = %do.end, %if.end27, %if.then14, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %slash) #9, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #9, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 16, ptr %cmp) #9, !dbg !5127
  %25 = load i32, ptr %retval, align 4, !dbg !5127
  ret i32 %25, !dbg !5127
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @devt_from_partlabel(ptr noundef %label, ptr noundef %devt) #0 section ".init.text" align 16 !dbg !5128 {
entry:
  %retval = alloca i32, align 4
  %label.addr = alloca ptr, align 8
  %devt.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %label, ptr %label.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %label.addr, metadata !5130, metadata !DIExpression()), !dbg !5133
  store ptr %devt, ptr %devt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devt.addr, metadata !5131, metadata !DIExpression()), !dbg !5134
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !5135
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5132, metadata !DIExpression()), !dbg !5136
  %0 = load ptr, ptr %label.addr, align 8, !dbg !5137
  %call = call ptr @class_find_device(ptr noundef @block_class, ptr noundef null, ptr noundef %0, ptr noundef @match_dev_by_label) #7, !dbg !5138
  store ptr %call, ptr %dev, align 8, !dbg !5139
  %1 = load ptr, ptr %dev, align 8, !dbg !5140
  %tobool = icmp ne ptr %1, null, !dbg !5140
  br i1 %tobool, label %if.end, label %if.then, !dbg !5142

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5143

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev, align 8, !dbg !5144
  %devt1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 26, !dbg !5145
  %3 = load i32, ptr %devt1, align 4, !dbg !5145
  %4 = load ptr, ptr %devt.addr, align 8, !dbg !5146
  store i32 %3, ptr %4, align 4, !dbg !5147
  %5 = load ptr, ptr %dev, align 8, !dbg !5148
  call void @put_device(ptr noundef %5) #7, !dbg !5149
  store i32 0, ptr %retval, align 4, !dbg !5150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5150

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !5151
  %6 = load i32, ptr %retval, align 4, !dbg !5151
  ret i32 %6, !dbg !5151
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @devt_from_devname(ptr noundef %name, ptr noundef %devt) #0 section ".init.text" align 16 !dbg !5152 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %devt.addr = alloca ptr, align 8
  %part = alloca i32, align 4
  %s = alloca [32 x i8], align 16
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5154, metadata !DIExpression()), !dbg !5159
  store ptr %devt, ptr %devt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devt.addr, metadata !5155, metadata !DIExpression()), !dbg !5160
  call void @llvm.lifetime.start.p0(i64 4, ptr %part) #9, !dbg !5161
  call void @llvm.dbg.declare(metadata ptr %part, metadata !5156, metadata !DIExpression()), !dbg !5162
  call void @llvm.lifetime.start.p0(i64 32, ptr %s) #9, !dbg !5163
  call void @llvm.dbg.declare(metadata ptr %s, metadata !5157, metadata !DIExpression()), !dbg !5164
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5158, metadata !DIExpression()), !dbg !5166
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5167
  %call = call i64 @strlen(ptr noundef %0) #7, !dbg !5169
  %cmp = icmp ugt i64 %call, 31, !dbg !5170
  br i1 %cmp, label %if.then, label %if.end, !dbg !5171

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5172

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %s, i64 0, i64 0, !dbg !5173
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5174
  %call1 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef %1) #7, !dbg !5175
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %s, i64 0, i64 0, !dbg !5176
  store ptr %arraydecay2, ptr %p, align 8, !dbg !5178
  br label %for.cond, !dbg !5179

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %p, align 8, !dbg !5180
  %3 = load i8, ptr %2, align 1, !dbg !5182
  %tobool = icmp ne i8 %3, 0, !dbg !5183
  br i1 %tobool, label %for.body, label %for.end, !dbg !5183

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8, !dbg !5184
  %5 = load i8, ptr %4, align 1, !dbg !5187
  %conv = zext i8 %5 to i32, !dbg !5187
  %cmp3 = icmp eq i32 %conv, 47, !dbg !5188
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !5189

if.then5:                                         ; preds = %for.body
  %6 = load ptr, ptr %p, align 8, !dbg !5190
  store i8 33, ptr %6, align 1, !dbg !5191
  br label %if.end6, !dbg !5192

if.end6:                                          ; preds = %if.then5, %for.body
  br label %for.inc, !dbg !5193

for.inc:                                          ; preds = %if.end6
  %7 = load ptr, ptr %p, align 8, !dbg !5194
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !5194
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !5194
  br label %for.cond, !dbg !5195, !llvm.loop !5196

for.end:                                          ; preds = %for.cond
  %arraydecay7 = getelementptr inbounds [32 x i8], ptr %s, i64 0, i64 0, !dbg !5200
  %call8 = call i32 @blk_lookup_devt(ptr noundef %arraydecay7, i32 noundef 0) #8, !dbg !5201
  %8 = load ptr, ptr %devt.addr, align 8, !dbg !5202
  store i32 %call8, ptr %8, align 4, !dbg !5203
  %9 = load ptr, ptr %devt.addr, align 8, !dbg !5204
  %10 = load i32, ptr %9, align 4, !dbg !5206
  %tobool9 = icmp ne i32 %10, 0, !dbg !5206
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5207

if.then10:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !5208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5208

if.end11:                                         ; preds = %for.end
  br label %while.cond, !dbg !5209

while.cond:                                       ; preds = %while.body, %if.end11
  %11 = load ptr, ptr %p, align 8, !dbg !5210
  %arraydecay12 = getelementptr inbounds [32 x i8], ptr %s, i64 0, i64 0, !dbg !5211
  %cmp13 = icmp ugt ptr %11, %arraydecay12, !dbg !5212
  br i1 %cmp13, label %land.rhs, label %land.end, !dbg !5213

land.rhs:                                         ; preds = %while.cond
  %12 = load ptr, ptr %p, align 8, !dbg !5214
  %arrayidx = getelementptr i8, ptr %12, i64 -1, !dbg !5214
  %13 = load i8, ptr %arrayidx, align 1, !dbg !5214
  %conv15 = zext i8 %13 to i32, !dbg !5214
  %call16 = call i32 @isdigit(i32 noundef %conv15) #7, !dbg !5215
  %tobool17 = icmp ne i32 %call16, 0, !dbg !5213
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %tobool17, %land.rhs ], !dbg !5216
  br i1 %14, label %while.body, label %while.end, !dbg !5209

while.body:                                       ; preds = %land.end
  %15 = load ptr, ptr %p, align 8, !dbg !5217
  %incdec.ptr18 = getelementptr i8, ptr %15, i32 -1, !dbg !5217
  store ptr %incdec.ptr18, ptr %p, align 8, !dbg !5217
  br label %while.cond, !dbg !5209, !llvm.loop !5218

while.end:                                        ; preds = %land.end
  %16 = load ptr, ptr %p, align 8, !dbg !5219
  %arraydecay19 = getelementptr inbounds [32 x i8], ptr %s, i64 0, i64 0, !dbg !5221
  %cmp20 = icmp eq ptr %16, %arraydecay19, !dbg !5222
  br i1 %cmp20, label %if.then27, label %lor.lhs.false, !dbg !5223

lor.lhs.false:                                    ; preds = %while.end
  %17 = load ptr, ptr %p, align 8, !dbg !5224
  %18 = load i8, ptr %17, align 1, !dbg !5225
  %tobool22 = icmp ne i8 %18, 0, !dbg !5225
  br i1 %tobool22, label %lor.lhs.false23, label %if.then27, !dbg !5226

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %19 = load ptr, ptr %p, align 8, !dbg !5227
  %20 = load i8, ptr %19, align 1, !dbg !5228
  %conv24 = zext i8 %20 to i32, !dbg !5228
  %cmp25 = icmp eq i32 %conv24, 48, !dbg !5229
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5230

if.then27:                                        ; preds = %lor.lhs.false23, %lor.lhs.false, %while.end
  store i32 -19, ptr %retval, align 4, !dbg !5231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5231

if.end28:                                         ; preds = %lor.lhs.false23
  %21 = load ptr, ptr %p, align 8, !dbg !5232
  %call29 = call i64 @simple_strtoul(ptr noundef %21, ptr noundef null, i32 noundef 10) #7, !dbg !5233
  %conv30 = trunc i64 %call29 to i32, !dbg !5233
  store i32 %conv30, ptr %part, align 4, !dbg !5234
  %22 = load ptr, ptr %p, align 8, !dbg !5235
  store i8 0, ptr %22, align 1, !dbg !5236
  %arraydecay31 = getelementptr inbounds [32 x i8], ptr %s, i64 0, i64 0, !dbg !5237
  %23 = load i32, ptr %part, align 4, !dbg !5238
  %call32 = call i32 @blk_lookup_devt(ptr noundef %arraydecay31, i32 noundef %23) #8, !dbg !5239
  %24 = load ptr, ptr %devt.addr, align 8, !dbg !5240
  store i32 %call32, ptr %24, align 4, !dbg !5241
  %25 = load ptr, ptr %devt.addr, align 8, !dbg !5242
  %26 = load i32, ptr %25, align 4, !dbg !5244
  %tobool33 = icmp ne i32 %26, 0, !dbg !5244
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5245

if.then34:                                        ; preds = %if.end28
  store i32 0, ptr %retval, align 4, !dbg !5246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5246

if.end35:                                         ; preds = %if.end28
  %27 = load ptr, ptr %p, align 8, !dbg !5247
  %arraydecay36 = getelementptr inbounds [32 x i8], ptr %s, i64 0, i64 0, !dbg !5249
  %add.ptr = getelementptr i8, ptr %arraydecay36, i64 2, !dbg !5250
  %cmp37 = icmp ult ptr %27, %add.ptr, !dbg !5251
  br i1 %cmp37, label %if.then49, label %lor.lhs.false39, !dbg !5252

lor.lhs.false39:                                  ; preds = %if.end35
  %28 = load ptr, ptr %p, align 8, !dbg !5253
  %arrayidx40 = getelementptr i8, ptr %28, i64 -2, !dbg !5253
  %29 = load i8, ptr %arrayidx40, align 1, !dbg !5253
  %conv41 = zext i8 %29 to i32, !dbg !5253
  %call42 = call i32 @isdigit(i32 noundef %conv41) #7, !dbg !5254
  %tobool43 = icmp ne i32 %call42, 0, !dbg !5254
  br i1 %tobool43, label %lor.lhs.false44, label %if.then49, !dbg !5255

lor.lhs.false44:                                  ; preds = %lor.lhs.false39
  %30 = load ptr, ptr %p, align 8, !dbg !5256
  %arrayidx45 = getelementptr i8, ptr %30, i64 -1, !dbg !5256
  %31 = load i8, ptr %arrayidx45, align 1, !dbg !5256
  %conv46 = zext i8 %31 to i32, !dbg !5256
  %cmp47 = icmp ne i32 %conv46, 112, !dbg !5257
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !5258

if.then49:                                        ; preds = %lor.lhs.false44, %lor.lhs.false39, %if.end35
  store i32 -19, ptr %retval, align 4, !dbg !5259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5259

if.end50:                                         ; preds = %lor.lhs.false44
  %32 = load ptr, ptr %p, align 8, !dbg !5260
  %arrayidx51 = getelementptr i8, ptr %32, i64 -1, !dbg !5260
  store i8 0, ptr %arrayidx51, align 1, !dbg !5261
  %arraydecay52 = getelementptr inbounds [32 x i8], ptr %s, i64 0, i64 0, !dbg !5262
  %33 = load i32, ptr %part, align 4, !dbg !5263
  %call53 = call i32 @blk_lookup_devt(ptr noundef %arraydecay52, i32 noundef %33) #8, !dbg !5264
  %34 = load ptr, ptr %devt.addr, align 8, !dbg !5265
  store i32 %call53, ptr %34, align 4, !dbg !5266
  %35 = load ptr, ptr %devt.addr, align 8, !dbg !5267
  %36 = load i32, ptr %35, align 4, !dbg !5269
  %tobool54 = icmp ne i32 %36, 0, !dbg !5269
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !5270

if.then55:                                        ; preds = %if.end50
  store i32 0, ptr %retval, align 4, !dbg !5271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5271

if.end56:                                         ; preds = %if.end50
  store i32 -19, ptr %retval, align 4, !dbg !5272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5272

cleanup:                                          ; preds = %if.end56, %if.then55, %if.then49, %if.then34, %if.then27, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 32, ptr %s) #9, !dbg !5273
  call void @llvm.lifetime.end.p0(i64 4, ptr %part) #9, !dbg !5273
  %37 = load i32, ptr %retval, align 4, !dbg !5273
  ret i32 %37, !dbg !5273
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @devt_from_devnum(ptr noundef %name, ptr noundef %devt) #0 section ".init.text" align 16 !dbg !5274 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %devt.addr = alloca ptr, align 8
  %maj = alloca i32, align 4
  %min = alloca i32, align 4
  %offset = alloca i32, align 4
  %p = alloca ptr, align 8
  %dummy = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5276, metadata !DIExpression()), !dbg !5283
  store ptr %devt, ptr %devt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devt.addr, metadata !5277, metadata !DIExpression()), !dbg !5284
  call void @llvm.lifetime.start.p0(i64 4, ptr %maj) #9, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %maj, metadata !5278, metadata !DIExpression()), !dbg !5286
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #9, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %min, metadata !5279, metadata !DIExpression()), !dbg !5287
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #9, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5280, metadata !DIExpression()), !dbg !5288
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !5289
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5281, metadata !DIExpression()), !dbg !5290
  call void @llvm.lifetime.start.p0(i64 1, ptr %dummy) #9, !dbg !5289
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !5282, metadata !DIExpression()), !dbg !5291
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5292
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %0, ptr noundef @.str.11, ptr noundef %maj, ptr noundef %min, ptr noundef %dummy) #7, !dbg !5294
  %cmp = icmp eq i32 %call, 2, !dbg !5295
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5296

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5297
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str.12, ptr noundef %maj, ptr noundef %min, ptr noundef %offset, ptr noundef %dummy) #7, !dbg !5298
  %cmp2 = icmp eq i32 %call1, 3, !dbg !5299
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5300

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %maj, align 4, !dbg !5301
  %shl = shl i32 %2, 20, !dbg !5301
  %3 = load i32, ptr %min, align 4, !dbg !5301
  %or = or i32 %shl, %3, !dbg !5301
  %4 = load ptr, ptr %devt.addr, align 8, !dbg !5303
  store i32 %or, ptr %4, align 4, !dbg !5304
  %5 = load i32, ptr %maj, align 4, !dbg !5305
  %6 = load ptr, ptr %devt.addr, align 8, !dbg !5307
  %7 = load i32, ptr %6, align 4, !dbg !5307
  %shr = lshr i32 %7, 20, !dbg !5307
  %cmp3 = icmp ne i32 %5, %shr, !dbg !5308
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4, !dbg !5309

lor.lhs.false4:                                   ; preds = %if.then
  %8 = load i32, ptr %min, align 4, !dbg !5310
  %9 = load ptr, ptr %devt.addr, align 8, !dbg !5311
  %10 = load i32, ptr %9, align 4, !dbg !5311
  %and = and i32 %10, 1048575, !dbg !5311
  %cmp5 = icmp ne i32 %8, %and, !dbg !5312
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !5313

if.then6:                                         ; preds = %lor.lhs.false4, %if.then
  store i32 -22, ptr %retval, align 4, !dbg !5314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5314

if.end:                                           ; preds = %lor.lhs.false4
  br label %if.end11, !dbg !5315

if.else:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %name.addr, align 8, !dbg !5316
  %call7 = call i64 @simple_strtoul(ptr noundef %11, ptr noundef %p, i32 noundef 16) #7, !dbg !5318
  %conv = trunc i64 %call7 to i32, !dbg !5318
  %call8 = call i32 @new_decode_dev(i32 noundef %conv) #7, !dbg !5319
  %12 = load ptr, ptr %devt.addr, align 8, !dbg !5320
  store i32 %call8, ptr %12, align 4, !dbg !5321
  %13 = load ptr, ptr %p, align 8, !dbg !5322
  %14 = load i8, ptr %13, align 1, !dbg !5324
  %tobool = icmp ne i8 %14, 0, !dbg !5324
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !5325

if.then9:                                         ; preds = %if.else
  store i32 -22, ptr %retval, align 4, !dbg !5326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5326

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5327

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then6
  call void @llvm.lifetime.end.p0(i64 1, ptr %dummy) #9, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #9, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #9, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %maj) #9, !dbg !5328
  %15 = load i32, ptr %retval, align 4, !dbg !5328
  ret i32 %15, !dbg !5328
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @printk_all_partitions() #0 section ".init.text" align 16 !dbg !5329 {
entry:
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca ptr, align 8
  %disk = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %part = alloca ptr, align 8
  %devt_buf = alloca [10 x i8], align 1
  %idx = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #9, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !5331, metadata !DIExpression()), !dbg !5369
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5360, metadata !DIExpression()), !dbg !5371
  call void @class_dev_iter_init(ptr noundef %iter, ptr noundef @block_class, ptr noundef null, ptr noundef @disk_type) #7, !dbg !5372
  br label %while.cond, !dbg !5373

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  %call = call ptr @class_dev_iter_next(ptr noundef %iter) #7, !dbg !5374
  store ptr %call, ptr %dev, align 8, !dbg !5375
  %tobool = icmp ne ptr %call, null, !dbg !5373
  br i1 %tobool, label %while.body, label %while.end, !dbg !5373

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %disk) #9, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %disk, metadata !5361, metadata !DIExpression()), !dbg !5377
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5378
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5363, metadata !DIExpression()), !dbg !5378
  %0 = load ptr, ptr %dev, align 8, !dbg !5378
  store ptr %0, ptr %__mptr, align 8, !dbg !5378
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5378
  %add.ptr = getelementptr i8, ptr %1, i64 -200, !dbg !5378
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5378
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5379
  %2 = load ptr, ptr %tmp, align 8, !dbg !5378
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 2, !dbg !5379
  %3 = load ptr, ptr %bd_disk, align 8, !dbg !5379
  store ptr %3, ptr %disk, align 8, !dbg !5377
  call void @llvm.lifetime.start.p0(i64 8, ptr %part) #9, !dbg !5380
  call void @llvm.dbg.declare(metadata ptr %part, metadata !5365, metadata !DIExpression()), !dbg !5381
  call void @llvm.lifetime.start.p0(i64 10, ptr %devt_buf) #9, !dbg !5382
  call void @llvm.dbg.declare(metadata ptr %devt_buf, metadata !5366, metadata !DIExpression()), !dbg !5383
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #9, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5367, metadata !DIExpression()), !dbg !5385
  %4 = load ptr, ptr %disk, align 8, !dbg !5386
  %call1 = call i64 @get_capacity(ptr noundef %4) #7, !dbg !5388
  %cmp = icmp eq i64 %call1, 0, !dbg !5389
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5390

lor.lhs.false:                                    ; preds = %while.body
  %5 = load ptr, ptr %disk, align 8, !dbg !5391
  %flags = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 12, !dbg !5392
  %6 = load i32, ptr %flags, align 8, !dbg !5392
  %and = and i32 %6, 2, !dbg !5393
  %tobool2 = icmp ne i32 %and, 0, !dbg !5393
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5394

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5395, !llvm.loop !5396

if.end:                                           ; preds = %lor.lhs.false
  call void @rcu_read_lock() #7, !dbg !5398
  store i64 0, ptr %idx, align 8, !dbg !5399
  %7 = load ptr, ptr %disk, align 8, !dbg !5399
  %part_tbl = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 6, !dbg !5399
  %call3 = call ptr @xa_find(ptr noundef %part_tbl, ptr noundef %idx, i64 noundef -1, i32 noundef 8) #7, !dbg !5399
  store ptr %call3, ptr %part, align 8, !dbg !5399
  br label %for.cond, !dbg !5399

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %part, align 8, !dbg !5401
  %tobool4 = icmp ne ptr %8, null, !dbg !5399
  br i1 %tobool4, label %for.body, label %for.end, !dbg !5399

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %part, align 8, !dbg !5403
  %call5 = call i64 @bdev_nr_sectors(ptr noundef %9) #7, !dbg !5406
  %tobool6 = icmp ne i64 %call5, 0, !dbg !5406
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5407

if.then7:                                         ; preds = %for.body
  br label %for.inc, !dbg !5408

if.end8:                                          ; preds = %for.body
  br label %do.body, !dbg !5409

do.body:                                          ; preds = %if.end8
  br label %do.cond, !dbg !5411

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5411

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %part, align 8, !dbg !5409
  %call10 = call zeroext i1 @bdev_is_partition(ptr noundef %10) #7, !dbg !5409
  %11 = zext i1 %call10 to i64, !dbg !5409
  %cond = select i1 %call10, ptr @.str.4, ptr @.str.5, !dbg !5409
  %12 = load ptr, ptr %part, align 8, !dbg !5409
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 10, !dbg !5409
  %13 = load i32, ptr %bd_dev, align 4, !dbg !5409
  %arraydecay = getelementptr inbounds [10 x i8], ptr %devt_buf, i64 0, i64 0, !dbg !5409
  %call11 = call ptr @bdevt_str(i32 noundef %13, ptr noundef %arraydecay) #8, !dbg !5409
  %14 = load ptr, ptr %part, align 8, !dbg !5409
  %call12 = call i64 @bdev_nr_sectors(ptr noundef %14) #7, !dbg !5409
  %shr = lshr i64 %call12, 1, !dbg !5409
  %15 = load ptr, ptr %part, align 8, !dbg !5409
  %16 = load ptr, ptr %part, align 8, !dbg !5409
  %bd_meta_info = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 23, !dbg !5409
  %17 = load ptr, ptr %bd_meta_info, align 8, !dbg !5409
  %tobool13 = icmp ne ptr %17, null, !dbg !5409
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !5409

cond.true:                                        ; preds = %do.end
  %18 = load ptr, ptr %part, align 8, !dbg !5409
  %bd_meta_info14 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 23, !dbg !5409
  %19 = load ptr, ptr %bd_meta_info14, align 8, !dbg !5409
  %uuid = getelementptr inbounds %struct.partition_meta_info, ptr %19, i32 0, i32 0, !dbg !5409
  %arraydecay15 = getelementptr inbounds [37 x i8], ptr %uuid, i64 0, i64 0, !dbg !5409
  br label %cond.end, !dbg !5409

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !5409

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi ptr [ %arraydecay15, %cond.true ], [ @.str.5, %cond.false ], !dbg !5409
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %cond, ptr noundef %call11, i64 noundef %shr, ptr noundef %15, ptr noundef %cond16) #8, !dbg !5409
  store i32 %call17, ptr %tmp9, align 4, !dbg !5411
  %20 = load i32, ptr %tmp9, align 4, !dbg !5409
  %21 = load ptr, ptr %part, align 8, !dbg !5413
  %call18 = call zeroext i1 @bdev_is_partition(ptr noundef %21) #7, !dbg !5415
  br i1 %call18, label %if.then19, label %if.else, !dbg !5416

if.then19:                                        ; preds = %cond.end
  br label %do.body20, !dbg !5417

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !5419

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5419

do.end22:                                         ; preds = %do.cond21
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #8, !dbg !5417
  store i32 %call24, ptr %tmp23, align 4, !dbg !5419
  %22 = load i32, ptr %tmp23, align 4, !dbg !5417
  br label %if.end43, !dbg !5421

if.else:                                          ; preds = %cond.end
  %23 = load ptr, ptr %dev, align 8, !dbg !5422
  %parent = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 1, !dbg !5424
  %24 = load ptr, ptr %parent, align 8, !dbg !5424
  %tobool25 = icmp ne ptr %24, null, !dbg !5422
  br i1 %tobool25, label %land.lhs.true, label %if.else36, !dbg !5425

land.lhs.true:                                    ; preds = %if.else
  %25 = load ptr, ptr %dev, align 8, !dbg !5426
  %parent26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1, !dbg !5427
  %26 = load ptr, ptr %parent26, align 8, !dbg !5427
  %driver = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 6, !dbg !5428
  %27 = load ptr, ptr %driver, align 8, !dbg !5428
  %tobool27 = icmp ne ptr %27, null, !dbg !5426
  br i1 %tobool27, label %if.then28, label %if.else36, !dbg !5429

if.then28:                                        ; preds = %land.lhs.true
  br label %do.body29, !dbg !5430

do.body29:                                        ; preds = %if.then28
  br label %do.cond30, !dbg !5432

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5432

do.end31:                                         ; preds = %do.cond30
  %28 = load ptr, ptr %dev, align 8, !dbg !5430
  %parent33 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 1, !dbg !5430
  %29 = load ptr, ptr %parent33, align 8, !dbg !5430
  %driver34 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 6, !dbg !5430
  %30 = load ptr, ptr %driver34, align 8, !dbg !5430
  %name = getelementptr inbounds %struct.device_driver, ptr %30, i32 0, i32 0, !dbg !5430
  %31 = load ptr, ptr %name, align 8, !dbg !5430
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef %31) #8, !dbg !5430
  store i32 %call35, ptr %tmp32, align 4, !dbg !5432
  %32 = load i32, ptr %tmp32, align 4, !dbg !5430
  br label %if.end42, !dbg !5434

if.else36:                                        ; preds = %land.lhs.true, %if.else
  br label %do.body37, !dbg !5435

do.body37:                                        ; preds = %if.else36
  br label %do.cond38, !dbg !5437

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5437

do.end39:                                         ; preds = %do.cond38
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #8, !dbg !5435
  store i32 %call41, ptr %tmp40, align 4, !dbg !5437
  %33 = load i32, ptr %tmp40, align 4, !dbg !5435
  br label %if.end42

if.end42:                                         ; preds = %do.end39, %do.end31
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %do.end22
  br label %for.inc, !dbg !5439

for.inc:                                          ; preds = %if.end43, %if.then7
  %34 = load ptr, ptr %disk, align 8, !dbg !5401
  %part_tbl44 = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 6, !dbg !5401
  %call45 = call ptr @xa_find_after(ptr noundef %part_tbl44, ptr noundef %idx, i64 noundef -1, i32 noundef 8) #7, !dbg !5401
  store ptr %call45, ptr %part, align 8, !dbg !5401
  br label %for.cond, !dbg !5401, !llvm.loop !5440

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #7, !dbg !5442
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5397
  br label %cleanup, !dbg !5397

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #9, !dbg !5397
  call void @llvm.lifetime.end.p0(i64 10, ptr %devt_buf) #9, !dbg !5397
  call void @llvm.lifetime.end.p0(i64 8, ptr %part) #9, !dbg !5397
  call void @llvm.lifetime.end.p0(i64 8, ptr %disk) #9, !dbg !5397
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5373, !llvm.loop !5396

while.end:                                        ; preds = %while.cond
  call void @class_dev_iter_exit(ptr noundef %iter) #7, !dbg !5443
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !5444
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #9, !dbg !5444
  ret void, !dbg !5444

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5445 dso_local void @class_dev_iter_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5449 dso_local ptr @class_dev_iter_next(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_capacity(ptr noundef %disk) #4 align 16 !dbg !5452 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5458
  %part0 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7, !dbg !5459
  %1 = load ptr, ptr %part0, align 8, !dbg !5459
  %call = call i64 @bdev_nr_sectors(ptr noundef %1) #7, !dbg !5460
  ret i64 %call, !dbg !5461
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !5462 {
entry:
  call void @__rcu_read_lock() #7, !dbg !5464
  br label %do.body, !dbg !5465

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5466

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5468

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5469

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5471
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5472 dso_local ptr @xa_find(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bdev_nr_sectors(ptr noundef %bdev) #4 align 16 !dbg !5475 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5479, metadata !DIExpression()), !dbg !5480
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5481
  %bd_nr_sectors = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 1, !dbg !5482
  %1 = load i64, ptr %bd_nr_sectors, align 8, !dbg !5482
  ret i64 %1, !dbg !5483
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5484 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bdev_is_partition(ptr noundef %bdev) #4 align 16 !dbg !5488 {
entry:
  %bdev.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5492, metadata !DIExpression()), !dbg !5493
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5494
  %bd_partno = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7, !dbg !5495
  %1 = load i8, ptr %bd_partno, align 1, !dbg !5495
  %tobool = icmp ne i8 %1, 0, !dbg !5494
  ret i1 %tobool, !dbg !5496
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @bdevt_str(i32 noundef %devt, ptr noundef %buf) #0 section ".init.text" align 16 !dbg !5497 {
entry:
  %devt.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %tbuf = alloca [10 x i8], align 1
  store i32 %devt, ptr %devt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devt.addr, metadata !5501, metadata !DIExpression()), !dbg !5506
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5502, metadata !DIExpression()), !dbg !5507
  %0 = load i32, ptr %devt.addr, align 4, !dbg !5508
  %shr = lshr i32 %0, 20, !dbg !5508
  %cmp = icmp ule i32 %shr, 255, !dbg !5509
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5510

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %devt.addr, align 4, !dbg !5511
  %and = and i32 %1, 1048575, !dbg !5511
  %cmp1 = icmp ule i32 %and, 255, !dbg !5512
  br i1 %cmp1, label %if.then, label %if.else, !dbg !5513

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 10, ptr %tbuf) #9, !dbg !5514
  call void @llvm.dbg.declare(metadata ptr %tbuf, metadata !5503, metadata !DIExpression()), !dbg !5515
  %arraydecay = getelementptr inbounds [10 x i8], ptr %tbuf, i64 0, i64 0, !dbg !5516
  %2 = load i32, ptr %devt.addr, align 4, !dbg !5517
  %shr2 = lshr i32 %2, 20, !dbg !5517
  %3 = load i32, ptr %devt.addr, align 4, !dbg !5518
  %and3 = and i32 %3, 1048575, !dbg !5518
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 10, ptr noundef @.str.13, i32 noundef %shr2, i32 noundef %and3) #7, !dbg !5519
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5520
  %arraydecay4 = getelementptr inbounds [10 x i8], ptr %tbuf, i64 0, i64 0, !dbg !5521
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %4, i64 noundef 10, ptr noundef @.str.14, ptr noundef %arraydecay4) #7, !dbg !5522
  call void @llvm.lifetime.end.p0(i64 10, ptr %tbuf) #9, !dbg !5523
  br label %if.end, !dbg !5524

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5525
  %6 = load i32, ptr %devt.addr, align 4, !dbg !5526
  %shr6 = lshr i32 %6, 20, !dbg !5526
  %7 = load i32, ptr %devt.addr, align 4, !dbg !5527
  %and7 = and i32 %7, 1048575, !dbg !5527
  %call8 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %5, i64 noundef 10, ptr noundef @.str.15, i32 noundef %shr6, i32 noundef %and7) #7, !dbg !5528
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5529
  ret ptr %8, !dbg !5530
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5531 dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !5532 {
entry:
  br label %do.body, !dbg !5533

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5534

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #7, !dbg !5536
  br label %do.body1, !dbg !5537

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5538

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5540
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5541 dso_local void @class_dev_iter_exit(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5544 dso_local ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5547 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5551 dso_local i64 @strlen(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5554 dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @match_dev_by_uuid(ptr noundef %dev, ptr noundef %data) #0 section ".init.text" align 16 !dbg !5560 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %bdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5562, metadata !DIExpression()), !dbg !5570
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5563, metadata !DIExpression()), !dbg !5571
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #9, !dbg !5572
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5564, metadata !DIExpression()), !dbg !5573
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5574
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5565, metadata !DIExpression()), !dbg !5574
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5574
  store ptr %0, ptr %__mptr, align 8, !dbg !5574
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5574
  %add.ptr = getelementptr i8, ptr %1, i64 -200, !dbg !5574
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5574
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5575
  %2 = load ptr, ptr %tmp, align 8, !dbg !5574
  store ptr %2, ptr %bdev, align 8, !dbg !5573
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmp) #9, !dbg !5576
  call void @llvm.dbg.declare(metadata ptr %cmp, metadata !5567, metadata !DIExpression()), !dbg !5577
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5578
  store ptr %3, ptr %cmp, align 8, !dbg !5577
  %4 = load ptr, ptr %bdev, align 8, !dbg !5579
  %bd_meta_info = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 23, !dbg !5581
  %5 = load ptr, ptr %bd_meta_info, align 8, !dbg !5581
  %tobool = icmp ne ptr %5, null, !dbg !5579
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5582

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %cmp, align 8, !dbg !5583
  %uuid = getelementptr inbounds %struct.uuidcmp, ptr %6, i32 0, i32 0, !dbg !5584
  %7 = load ptr, ptr %uuid, align 8, !dbg !5584
  %8 = load ptr, ptr %bdev, align 8, !dbg !5585
  %bd_meta_info1 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 23, !dbg !5586
  %9 = load ptr, ptr %bd_meta_info1, align 8, !dbg !5586
  %uuid2 = getelementptr inbounds %struct.partition_meta_info, ptr %9, i32 0, i32 0, !dbg !5587
  %arraydecay = getelementptr inbounds [37 x i8], ptr %uuid2, i64 0, i64 0, !dbg !5585
  %10 = load ptr, ptr %cmp, align 8, !dbg !5588
  %len = getelementptr inbounds %struct.uuidcmp, ptr %10, i32 0, i32 1, !dbg !5589
  %11 = load i32, ptr %len, align 8, !dbg !5589
  %conv = sext i32 %11 to i64, !dbg !5588
  %call = call i32 @strncasecmp(ptr noundef %7, ptr noundef %arraydecay, i64 noundef %conv) #7, !dbg !5590
  %tobool3 = icmp ne i32 %call, 0, !dbg !5590
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5591

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5592

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, ptr %retval, align 4, !dbg !5593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5593

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmp) #9, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #9, !dbg !5594
  %12 = load i32, ptr %retval, align 4, !dbg !5594
  ret i32 %12, !dbg !5594
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5595 dso_local i32 @part_devt(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5598 dso_local void @put_device(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5599 dso_local i32 @strncasecmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @match_dev_by_label(ptr noundef %dev, ptr noundef %data) #0 section ".init.text" align 16 !dbg !5602 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %bdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %label = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5604, metadata !DIExpression()), !dbg !5610
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5605, metadata !DIExpression()), !dbg !5611
  call void @llvm.lifetime.start.p0(i64 8, ptr %bdev) #9, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %bdev, metadata !5606, metadata !DIExpression()), !dbg !5613
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5614
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5607, metadata !DIExpression()), !dbg !5614
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5614
  store ptr %0, ptr %__mptr, align 8, !dbg !5614
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5614
  %add.ptr = getelementptr i8, ptr %1, i64 -200, !dbg !5614
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5614
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5615
  %2 = load ptr, ptr %tmp, align 8, !dbg !5614
  store ptr %2, ptr %bdev, align 8, !dbg !5613
  call void @llvm.lifetime.start.p0(i64 8, ptr %label) #9, !dbg !5616
  call void @llvm.dbg.declare(metadata ptr %label, metadata !5609, metadata !DIExpression()), !dbg !5617
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5618
  store ptr %3, ptr %label, align 8, !dbg !5617
  %4 = load ptr, ptr %bdev, align 8, !dbg !5619
  %bd_meta_info = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 23, !dbg !5621
  %5 = load ptr, ptr %bd_meta_info, align 8, !dbg !5621
  %tobool = icmp ne ptr %5, null, !dbg !5619
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5622

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %label, align 8, !dbg !5623
  %7 = load ptr, ptr %bdev, align 8, !dbg !5624
  %bd_meta_info1 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 23, !dbg !5625
  %8 = load ptr, ptr %bd_meta_info1, align 8, !dbg !5625
  %volname = getelementptr inbounds %struct.partition_meta_info, ptr %8, i32 0, i32 1, !dbg !5626
  %arraydecay = getelementptr inbounds [64 x i8], ptr %volname, i64 0, i64 0, !dbg !5624
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef %arraydecay) #7, !dbg !5627
  %tobool2 = icmp ne i32 %call, 0, !dbg !5627
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5628

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5629

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, ptr %retval, align 4, !dbg !5630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5630

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %label) #9, !dbg !5631
  call void @llvm.lifetime.end.p0(i64 8, ptr %bdev) #9, !dbg !5631
  %9 = load i32, ptr %retval, align 4, !dbg !5631
  ret i32 %9, !dbg !5631
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5632 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5635 dso_local ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @blk_lookup_devt(ptr noundef %name, i32 noundef %partno) #0 section ".init.text" align 16 !dbg !5638 {
entry:
  %name.addr = alloca ptr, align 8
  %partno.addr = alloca i32, align 4
  %devt = alloca i32, align 4
  %iter = alloca %struct.class_dev_iter, align 8
  %dev = alloca ptr, align 8
  %disk = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5642, metadata !DIExpression()), !dbg !5651
  store i32 %partno, ptr %partno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %partno.addr, metadata !5643, metadata !DIExpression()), !dbg !5652
  call void @llvm.lifetime.start.p0(i64 4, ptr %devt) #9, !dbg !5653
  call void @llvm.dbg.declare(metadata ptr %devt, metadata !5644, metadata !DIExpression()), !dbg !5654
  store i32 0, ptr %devt, align 4, !dbg !5654
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #9, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !5645, metadata !DIExpression()), !dbg !5656
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #9, !dbg !5657
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5646, metadata !DIExpression()), !dbg !5658
  call void @class_dev_iter_init(ptr noundef %iter, ptr noundef @block_class, ptr noundef null, ptr noundef @disk_type) #7, !dbg !5659
  br label %while.cond, !dbg !5660

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %entry
  %call = call ptr @class_dev_iter_next(ptr noundef %iter) #7, !dbg !5661
  store ptr %call, ptr %dev, align 8, !dbg !5662
  %tobool = icmp ne ptr %call, null, !dbg !5660
  br i1 %tobool, label %while.body, label %while.end, !dbg !5660

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %disk) #9, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %disk, metadata !5647, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #9, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5649, metadata !DIExpression()), !dbg !5665
  %0 = load ptr, ptr %dev, align 8, !dbg !5665
  store ptr %0, ptr %__mptr, align 8, !dbg !5665
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5665
  %add.ptr = getelementptr i8, ptr %1, i64 -200, !dbg !5665
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5665
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #9, !dbg !5666
  %2 = load ptr, ptr %tmp, align 8, !dbg !5665
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 2, !dbg !5666
  %3 = load ptr, ptr %bd_disk, align 8, !dbg !5666
  store ptr %3, ptr %disk, align 8, !dbg !5664
  %4 = load ptr, ptr %dev, align 8, !dbg !5667
  %call1 = call ptr @dev_name(ptr noundef %4) #7, !dbg !5669
  %5 = load ptr, ptr %name.addr, align 8, !dbg !5670
  %call2 = call i32 @strcmp(ptr noundef %call1, ptr noundef %5) #7, !dbg !5671
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5671
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5672

if.then:                                          ; preds = %while.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5673, !llvm.loop !5674

if.end:                                           ; preds = %while.body
  %6 = load i32, ptr %partno.addr, align 4, !dbg !5676
  %7 = load ptr, ptr %disk, align 8, !dbg !5678
  %minors = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 2, !dbg !5679
  %8 = load i32, ptr %minors, align 8, !dbg !5679
  %cmp = icmp slt i32 %6, %8, !dbg !5680
  br i1 %cmp, label %if.then4, label %if.else, !dbg !5681

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %dev, align 8, !dbg !5682
  %devt5 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 26, !dbg !5682
  %10 = load i32, ptr %devt5, align 4, !dbg !5682
  %shr = lshr i32 %10, 20, !dbg !5682
  %shl = shl i32 %shr, 20, !dbg !5682
  %11 = load ptr, ptr %dev, align 8, !dbg !5682
  %devt6 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 26, !dbg !5682
  %12 = load i32, ptr %devt6, align 4, !dbg !5682
  %and = and i32 %12, 1048575, !dbg !5682
  %13 = load i32, ptr %partno.addr, align 4, !dbg !5682
  %add = add i32 %and, %13, !dbg !5682
  %or = or i32 %shl, %add, !dbg !5682
  store i32 %or, ptr %devt, align 4, !dbg !5684
  br label %if.end11, !dbg !5685

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %disk, align 8, !dbg !5686
  %15 = load i32, ptr %partno.addr, align 4, !dbg !5688
  %conv = trunc i32 %15 to i8, !dbg !5688
  %call7 = call i32 @part_devt(ptr noundef %14, i8 noundef zeroext %conv) #7, !dbg !5689
  store i32 %call7, ptr %devt, align 4, !dbg !5690
  %16 = load i32, ptr %devt, align 4, !dbg !5691
  %tobool8 = icmp ne i32 %16, 0, !dbg !5691
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5693

if.then9:                                         ; preds = %if.else
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5694

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5675
  br label %cleanup, !dbg !5675

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %disk) #9, !dbg !5675
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !5660, !llvm.loop !5674

while.end:                                        ; preds = %cleanup, %while.cond
  call void @class_dev_iter_exit(ptr noundef %iter) #7, !dbg !5695
  %17 = load i32, ptr %devt, align 4, !dbg !5696
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #9, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #9, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 4, ptr %devt) #9, !dbg !5697
  ret i32 %17, !dbg !5698

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @isdigit(i32 noundef %c) #4 align 16 !dbg !5699 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !5702, metadata !DIExpression()), !dbg !5703
  %0 = load i32, ptr %c.addr, align 4, !dbg !5704
  %cmp = icmp sle i32 48, %0, !dbg !5705
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5706

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !5707
  %cmp1 = icmp sle i32 %1, 57, !dbg !5708
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !5709
  %land.ext = zext i1 %2 to i32, !dbg !5706
  ret i32 %land.ext, !dbg !5710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5711 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #4 align 16 !dbg !5716 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5722
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !5724
  %1 = load ptr, ptr %init_name, align 8, !dbg !5724
  %tobool = icmp ne ptr %1, null, !dbg !5722
  br i1 %tobool, label %if.then, label %if.end, !dbg !5725

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5726
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !5727
  %3 = load ptr, ptr %init_name1, align 8, !dbg !5727
  store ptr %3, ptr %retval, align 8, !dbg !5728
  br label %return, !dbg !5728

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5729
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !5730
  %call = call ptr @kobject_name(ptr noundef %kobj) #7, !dbg !5731
  store ptr %call, ptr %retval, align 8, !dbg !5732
  br label %return, !dbg !5732

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5733
  ret ptr %5, !dbg !5733
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !5734 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5736, metadata !DIExpression()), !dbg !5737
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5738
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !5739
  %1 = load ptr, ptr %name, align 8, !dbg !5739
  ret ptr %1, !dbg !5740
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @new_decode_dev(i32 noundef %dev) #5 align 16 !dbg !5741 {
entry:
  %dev.addr = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5746, metadata !DIExpression()), !dbg !5749
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #9, !dbg !5750
  call void @llvm.dbg.declare(metadata ptr %major, metadata !5747, metadata !DIExpression()), !dbg !5751
  %0 = load i32, ptr %dev.addr, align 4, !dbg !5752
  %and = and i32 %0, 1048320, !dbg !5753
  %shr = lshr i32 %and, 8, !dbg !5754
  store i32 %shr, ptr %major, align 4, !dbg !5751
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #9, !dbg !5755
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !5748, metadata !DIExpression()), !dbg !5756
  %1 = load i32, ptr %dev.addr, align 4, !dbg !5757
  %and1 = and i32 %1, 255, !dbg !5758
  %2 = load i32, ptr %dev.addr, align 4, !dbg !5759
  %shr2 = lshr i32 %2, 12, !dbg !5760
  %and3 = and i32 %shr2, 1048320, !dbg !5761
  %or = or i32 %and1, %and3, !dbg !5762
  store i32 %or, ptr %minor, align 4, !dbg !5756
  %3 = load i32, ptr %major, align 4, !dbg !5763
  %shl = shl i32 %3, 20, !dbg !5763
  %4 = load i32, ptr %minor, align 4, !dbg !5763
  %or4 = or i32 %shl, %4, !dbg !5763
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #9, !dbg !5764
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #9, !dbg !5764
  ret i32 %or4, !dbg !5765
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5766 dso_local void @__rcu_read_lock() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5767 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5770 dso_local void @__rcu_read_unlock() #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!76}
!llvm.module.flags = !{!4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978}
!llvm.ident = !{!4979}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "block/early-lookup.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4b269a6f3a1f6361de853efb675e3b8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 248, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 250, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 19)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 3)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 299, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 1)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 2)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 13)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 12)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 15)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 80)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 8)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !44, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 9)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 5)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !3, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.early-lookup.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/early-lookup\22 -D KBUILD_BASENAME=\22early_lookup\22 -D KBUILD_MODNAME=\22early_lookup\22 -D __KBUILD_MODNAME=kmod_early_lookup -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/early-lookup.ll block/early-lookup.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !234, globals: !4970, splitDebugInlining: false, nameTableKind: None)
!77 = !{!78, !85, !93, !100, !105, !111, !118, !126, !142, !148, !154, !161, !166, !174, !182, !191, !196, !201, !207, !211, !216, !222, !229}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !79, line: 26, baseType: !80, size: 32, elements: !81)
!79 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!83 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!84 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !86, line: 9, baseType: !80, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!89 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!90 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!91 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!92 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !94, line: 312, baseType: !80, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!97 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!98 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!99 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !101, line: 2052, baseType: !80, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!104 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !106, line: 54, baseType: !80, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "USRQUOTA", value: 0)
!109 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!110 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !112, line: 15, baseType: !80, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!113 = !{!114, !115, !116, !117}
!114 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!115 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!116 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!117 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !119, line: 68, baseType: !80, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!120 = !{!121, !122, !123, !124, !125}
!121 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!122 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!123 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!124 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!125 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !127, line: 1325, baseType: !80, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!129 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!130 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!131 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!132 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!133 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!134 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!135 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!136 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!137 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!138 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!139 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!140 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!141 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !143, line: 1381, baseType: !80, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!146 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!147 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !149, line: 45, baseType: !80, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!152 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!153 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !155, line: 487, baseType: !80, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!156 = !{!157, !158, !159, !160}
!157 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!158 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!159 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!160 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !162, line: 65, baseType: !80, size: 32, elements: !163)
!162 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!163 = !{!164, !165}
!164 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!165 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !167, line: 620, baseType: !80, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!170 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!171 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!172 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!173 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !167, line: 597, baseType: !175, size: 32, elements: !176)
!175 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!176 = !{!177, !178, !179, !180, !181}
!177 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!178 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!179 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!180 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!181 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !155, line: 547, baseType: !80, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190}
!184 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!185 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!186 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!187 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!188 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!189 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!190 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !155, line: 564, baseType: !80, size: 32, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!194 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!195 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !155, line: 577, baseType: !80, size: 32, elements: !197)
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!199 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!200 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !155, line: 503, baseType: !80, size: 32, elements: !202)
!202 = !{!203, !204, !205, !206}
!203 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!204 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!205 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!206 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !143, line: 295, baseType: !80, size: 32, elements: !208)
!208 = !{!209, !210}
!209 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!210 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !143, line: 285, baseType: !80, size: 32, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!214 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!215 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !217, line: 16, baseType: !80, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!218 = !{!219, !220, !221}
!219 = !DIEnumerator(name: "TT_NONE", value: 0)
!220 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!221 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !223, line: 51, baseType: !80, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!224 = !{!225, !226, !227, !228}
!225 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!226 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!227 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!228 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 84, baseType: !80, size: 32, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIEnumerator(name: "GENHD_FL_REMOVABLE", value: 1)
!232 = !DIEnumerator(name: "GENHD_FL_HIDDEN", value: 2)
!233 = !DIEnumerator(name: "GENHD_FL_NO_PART", value: 4)
!234 = !{!235, !236, !4969, !80}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !238, line: 40, size: 7424, elements: !239)
!238 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!239 = !{!240, !248, !249, !4923, !4924, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4967, !4968}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !237, file: !238, line: 41, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !242, line: 131, baseType: !243)
!242 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !244, line: 23, baseType: !245)
!244 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !246, line: 31, baseType: !247)
!246 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!247 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !237, file: !238, line: 42, baseType: !241, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !237, file: !238, line: 43, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !143, line: 128, size: 4544, elements: !252)
!252 = !{!253, !254, !255, !256, !260, !262, !263, !310, !311, !4421, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4895, !4896, !4899, !4902, !4903, !4906, !4907, !4908, !4909}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !251, file: !143, line: 133, baseType: !175, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !251, file: !143, line: 134, baseType: !175, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !251, file: !143, line: 135, baseType: !175, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !251, file: !143, line: 137, baseType: !257, size: 256, offset: 96)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !251, file: !143, line: 139, baseType: !261, size: 16, offset: 352)
!261 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !251, file: !143, line: 140, baseType: !261, size: 16, offset: 368)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !251, file: !143, line: 142, baseType: !264, size: 128, offset: 384)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !265, line: 296, size: 128, elements: !266)
!265 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!266 = !{!267, !307, !309}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !264, file: !265, line: 297, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !269, line: 29, baseType: !270)
!269 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !269, line: 17, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !269, line: 18, baseType: !273, size: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !269, line: 18, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !273, file: !269, line: 19, baseType: !276, size: 32)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !277, line: 14, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !276, file: !277, line: 15, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !281, line: 44, baseType: !282)
!281 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !281, line: 14, size: 32, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !281, line: 15, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !281, line: 15, size: 32, elements: !286)
!286 = !{!287, !292, !300}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !281, line: 16, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !242, line: 174, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 172, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !289, file: !242, line: 173, baseType: !175, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !281, line: 24, baseType: !293, size: 16)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !281, line: 24, size: 16, elements: !294)
!294 = !{!295, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !293, file: !281, line: 25, baseType: !296, size: 8)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !244, line: 17, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !246, line: 21, baseType: !298)
!298 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !293, file: !281, line: 26, baseType: !296, size: 8, offset: 8)
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !281, line: 28, baseType: !301, size: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !281, line: 28, size: 32, elements: !302)
!302 = !{!303, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !301, file: !281, line: 29, baseType: !304, size: 16)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !244, line: 19, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !246, line: 24, baseType: !261)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !301, file: !281, line: 30, baseType: !304, size: 16, offset: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !264, file: !265, line: 299, baseType: !308, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !242, line: 154, baseType: !80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !264, file: !265, line: 300, baseType: !235, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !251, file: !143, line: 143, baseType: !236, size: 64, offset: 512)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !251, file: !143, line: 145, baseType: !312, size: 64, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !143, line: 1388, size: 1152, elements: !315)
!315 = !{!316, !4338, !4342, !4347, !4351, !4355, !4356, !4360, !4361, !4367, !4371, !4372, !4376, !4402, !4407, !4412, !4413, !4417}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !314, file: !143, line: 1389, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !238, line: 265, size: 960, elements: !322)
!322 = !{!323, !324, !325, !328, !329, !330, !332, !333, !341, !343, !346, !347, !350, !354, !355, !358, !359, !360, !361, !4296, !4336}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !321, file: !238, line: 266, baseType: !320, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !321, file: !238, line: 267, baseType: !236, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !321, file: !238, line: 268, baseType: !326, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !238, line: 256, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !246, line: 27, baseType: !80)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !321, file: !238, line: 271, baseType: !261, size: 16, offset: 160)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !321, file: !238, line: 272, baseType: !261, size: 16, offset: 176)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !321, file: !238, line: 273, baseType: !331, size: 8, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !238, line: 97, baseType: !296)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !321, file: !238, line: 274, baseType: !288, size: 32, offset: 224)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !321, file: !238, line: 276, baseType: !334, size: 160, align: 32, offset: 256)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !335, line: 77, size: 160, align: 32, elements: !336)
!335 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!336 = !{!337, !338, !339, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !334, file: !335, line: 78, baseType: !241, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !334, file: !335, line: 80, baseType: !80, size: 32, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !334, file: !335, line: 82, baseType: !80, size: 32, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !334, file: !335, line: 84, baseType: !80, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !321, file: !238, line: 278, baseType: !342, size: 32, offset: 416)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !238, line: 258, baseType: !80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !321, file: !238, line: 279, baseType: !344, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !238, line: 20, baseType: !318)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !321, file: !238, line: 280, baseType: !235, size: 64, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !321, file: !238, line: 288, baseType: !348, size: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !238, line: 288, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !321, file: !238, line: 289, baseType: !351, size: 64, offset: 640)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !238, line: 228, size: 64, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !351, file: !238, line: 229, baseType: !243, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !321, file: !238, line: 291, baseType: !243, size: 64, offset: 704)
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !238, line: 299, baseType: !356, offset: 768)
!356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !238, line: 299, elements: !357)
!357 = !{}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !321, file: !238, line: 305, baseType: !261, size: 16, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !321, file: !238, line: 311, baseType: !261, size: 16, offset: 784)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !321, file: !238, line: 313, baseType: !288, size: 32, offset: 800)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !321, file: !238, line: 315, baseType: !362, size: 64, offset: 832)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !335, line: 31, size: 128, elements: !364)
!364 = !{!365, !4294, !4295}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !363, file: !335, line: 32, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !127, line: 74, size: 512, align: 128, elements: !368)
!368 = !{!369, !371, !4288, !4293}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !127, line: 75, baseType: !370, size: 64)
!370 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !127, line: 83, baseType: !372, size: 320, offset: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !127, line: 83, size: 320, elements: !373)
!373 = !{!374, !4194, !4208, !4212, !4287}
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !127, line: 84, baseType: !375, size: 320)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !127, line: 84, size: 320, elements: !376)
!376 = !{!377, !393, !4188, !4193}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !127, line: 90, baseType: !378, size: 128)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !127, line: 90, size: 128, elements: !379)
!379 = !{!380, !386, !391, !392}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !378, file: !127, line: 91, baseType: !381, size: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !242, line: 190, size: 128, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !242, line: 191, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !381, file: !242, line: 191, baseType: !384, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !127, line: 94, baseType: !387, size: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !127, line: 94, size: 128, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !387, file: !127, line: 96, baseType: !235, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !387, file: !127, line: 98, baseType: !80, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !378, file: !127, line: 102, baseType: !381, size: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !378, file: !127, line: 103, baseType: !381, size: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !375, file: !127, line: 106, baseType: !394, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !101, line: 472, size: 1536, align: 64, elements: !396)
!396 = !{!397, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4182, !4183, !4184, !4185, !4186, !4187}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !395, file: !101, line: 473, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !101, line: 641, size: 4800, elements: !400)
!400 = !{!401, !403, !404, !413, !414, !421, !422, !425, !426, !3961, !3962, !3963, !3964, !3965, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4005, !4008, !4009, !4010, !4019, !4020, !4021, !4022}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !399, file: !101, line: 642, baseType: !402, size: 16)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !242, line: 24, baseType: !261)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !399, file: !101, line: 643, baseType: !261, size: 16, offset: 16)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !399, file: !101, line: 644, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !406, line: 23, baseType: !407)
!406 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 21, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !407, file: !406, line: 22, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !242, line: 37, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !412, line: 49, baseType: !80)
!412 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !399, file: !101, line: 645, baseType: !381, size: 128, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !399, file: !101, line: 646, baseType: !415, size: 32, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !406, line: 28, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 26, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !416, file: !406, line: 27, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !242, line: 38, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !412, line: 50, baseType: !80)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !399, file: !101, line: 647, baseType: !80, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !399, file: !101, line: 650, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !101, line: 607, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !399, file: !101, line: 651, baseType: !423, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !399, file: !101, line: 654, baseType: !427, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !101, line: 1966, size: 2048, align: 512, elements: !430)
!430 = !{!431, !3795, !3805, !3809, !3813, !3817, !3821, !3825, !3829, !3833, !3837, !3838, !3842, !3846, !3883, !3912, !3916, !3922, !3926, !3930, !3934, !3938, !3942, !3948, !3952}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !429, file: !101, line: 1967, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !398, !435, !80}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !437, line: 82, size: 1536, elements: !438)
!437 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!438 = !{!439, !440, !450, !458, !459, !475, !476, !478, !491, !3778, !3779, !3780, !3781, !3787, !3788, !3789}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !436, file: !437, line: 84, baseType: !80, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !436, file: !437, line: 85, baseType: !441, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !442, line: 275, baseType: !443)
!442 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !442, line: 275, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !443, file: !442, line: 275, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !442, line: 69, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !442, line: 64, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !447, file: !442, line: 65, baseType: !80, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !436, file: !437, line: 86, baseType: !451, size: 128, offset: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !452, line: 38, size: 128, elements: !453)
!452 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!453 = !{!454, !456}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !452, line: 39, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !451, file: !452, line: 39, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !436, file: !437, line: 87, baseType: !435, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !436, file: !437, line: 88, baseType: !460, size: 128, offset: 256)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !437, line: 49, size: 128, elements: !461)
!461 = !{!462, !472}
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !437, line: 50, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !437, line: 50, size: 64, elements: !464)
!464 = !{!465, !471}
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !437, line: 51, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !437, line: 51, size: 64, elements: !467)
!467 = !{!468, !470}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !466, file: !437, line: 52, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !244, line: 21, baseType: !327)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !466, file: !437, line: 52, baseType: !469, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !463, file: !437, line: 54, baseType: !243, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !460, file: !437, line: 56, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !436, file: !437, line: 89, baseType: !398, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !436, file: !437, line: 91, baseType: !477, size: 256, offset: 448)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !258)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !436, file: !437, line: 94, baseType: !479, size: 64, offset: 704)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !480, line: 25, size: 64, elements: !481)
!480 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !479, file: !480, line: 26, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !480, line: 26, size: 64, elements: !484)
!484 = !{!485, !486}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !483, file: !480, line: 28, baseType: !245, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !483, file: !480, line: 30, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !483, file: !480, line: 30, size: 64, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !487, file: !480, line: 31, baseType: !268, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !487, file: !480, line: 32, baseType: !175, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !436, file: !437, line: 95, baseType: !492, size: 64, offset: 768)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !437, line: 128, size: 1024, align: 512, elements: !495)
!495 = !{!496, !500, !501, !508, !516, !520, !524, !528, !529, !533, !538, !3768, !3772}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !494, file: !437, line: 129, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!175, !435, !80}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !494, file: !437, line: 130, baseType: !497, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !494, file: !437, line: 131, baseType: !502, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!175, !505, !507}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !494, file: !437, line: 132, baseType: !509, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!175, !505, !80, !512, !514}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !494, file: !437, line: 134, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!175, !505}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !494, file: !437, line: 135, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!175, !435}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !494, file: !437, line: 136, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !435}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !494, file: !437, line: 137, baseType: !525, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !494, file: !437, line: 138, baseType: !530, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !435, !398}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !494, file: !437, line: 139, baseType: !534, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!537, !435, !537, !175}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !494, file: !437, line: 140, baseType: !539, size: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!542, !3767}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !544, line: 70, size: 256, elements: !545)
!544 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!545 = !{!546, !547, !3763, !3764}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !543, file: !544, line: 71, baseType: !435, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !543, file: !544, line: 72, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !101, line: 1190, size: 10752, elements: !550)
!550 = !{!551, !552, !555, !556, !557, !561, !2155, !2289, !2329, !2414, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2431, !2435, !2436, !2437, !2443, !2446, !2449, !2450, !2451, !2492, !3697, !3698, !3699, !3700, !3701, !3702, !3705, !3706, !3713, !3714, !3715, !3716, !3717, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !549, file: !101, line: 1191, baseType: !381, size: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !549, file: !101, line: 1192, baseType: !553, size: 32, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !242, line: 21, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !242, line: 18, baseType: !469)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !549, file: !101, line: 1193, baseType: !298, size: 8, offset: 160)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !549, file: !101, line: 1194, baseType: !370, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !549, file: !101, line: 1195, baseType: !558, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !242, line: 52, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !412, line: 88, baseType: !560)
!560 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !549, file: !101, line: 1196, baseType: !562, size: 64, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !101, line: 2366, size: 576, elements: !564)
!564 = !{!565, !566, !567, !573, !577, !581, !585, !2143, !2144, !2145, !2147, !2148, !2149, !2151, !2152, !2153, !2154}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !563, file: !101, line: 2367, baseType: !512, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !563, file: !101, line: 2368, baseType: !175, size: 32, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !563, file: !101, line: 2376, baseType: !568, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!175, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !544, line: 21, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !563, file: !101, line: 2377, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !101, line: 75, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !563, file: !101, line: 2378, baseType: !578, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!435, !562, !175, !512, !235}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !563, file: !101, line: 2380, baseType: !582, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !548}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !563, file: !101, line: 2381, baseType: !586, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !94, line: 402, size: 9216, align: 512, elements: !588)
!588 = !{!589, !590, !591, !595, !1801, !1827, !1828, !1829, !1830, !1834, !1837, !1838, !1839, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1907, !1911, !1929, !1947, !1948, !1949, !1950, !1959, !1982, !1983, !1986, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !2000, !2001, !2101, !2109, !2110, !2111, !2113, !2117, !2118, !2122, !2123, !2124, !2125, !2127, !2128, !2129, !2136, !2137, !2138, !2142}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !587, file: !94, line: 403, baseType: !93, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !587, file: !94, line: 406, baseType: !381, size: 128, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !94, line: 409, baseType: !592, size: 448, offset: 192)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 56)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !587, file: !94, line: 417, baseType: !596, size: 768, offset: 640)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !94, line: 45, size: 768, elements: !597)
!597 = !{!598, !1784, !1785, !1786, !1789}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !596, file: !94, line: 46, baseType: !599, size: 512)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !600, line: 64, size: 512, elements: !601)
!600 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!601 = !{!602, !603, !604, !606, !650, !1667, !1774, !1779, !1780, !1781, !1782, !1783}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !600, line: 65, baseType: !512, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !599, file: !600, line: 66, baseType: !381, size: 128, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !599, file: !600, line: 67, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !599, file: !600, line: 68, baseType: !607, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !600, line: 168, size: 768, elements: !609)
!609 = !{!610, !611, !612, !613}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !608, file: !600, line: 169, baseType: !381, size: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !608, file: !600, line: 170, baseType: !268, size: 32, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !608, file: !600, line: 171, baseType: !599, size: 512, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !608, file: !600, line: 172, baseType: !614, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !600, line: 133, size: 192, elements: !617)
!617 = !{!618, !625, !630}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !616, file: !600, line: 134, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!175, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !616, file: !600, line: 135, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!512, !623}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !616, file: !600, line: 136, baseType: !631, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!175, !623, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !600, line: 125, size: 20736, elements: !637)
!637 = !{!638, !640, !644, !645, !649}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !636, file: !600, line: 126, baseType: !639, size: 192)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 192, elements: !25)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !636, file: !600, line: 127, baseType: !641, size: 4096, offset: 192)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 4096, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !636, file: !600, line: 128, baseType: !175, size: 32, offset: 4288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !636, file: !600, line: 129, baseType: !646, size: 16384, offset: 4320)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 2048)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !636, file: !600, line: 130, baseType: !175, size: 32, offset: 20704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !599, file: !600, line: 69, baseType: !651, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !600, line: 116, size: 384, elements: !654)
!654 = !{!655, !659, !685, !1626, !1657, !1661}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !653, file: !600, line: 117, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !605}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !653, file: !600, line: 118, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !663, line: 254, size: 128, elements: !664)
!663 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!664 = !{!665, !678}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !662, file: !663, line: 255, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!669, !605, !673, !537}
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !242, line: 66, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !412, line: 73, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !412, line: 15, baseType: !672)
!672 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !663, line: 30, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !674, file: !663, line: 31, baseType: !512, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !674, file: !663, line: 32, baseType: !402, size: 16, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !662, file: !663, line: 256, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!669, !605, !673, !512, !682}
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !242, line: 61, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !412, line: 72, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !412, line: 16, baseType: !370)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !653, file: !600, line: 119, baseType: !686, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !663, line: 84, size: 320, elements: !690)
!690 = !{!691, !692, !696, !1622, !1624}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !689, file: !663, line: 85, baseType: !512, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !689, file: !663, line: 86, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!402, !605, !673, !175}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !689, file: !663, line: 88, baseType: !697, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!402, !605, !700, !175}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !663, line: 175, size: 512, elements: !702)
!702 = !{!703, !704, !705, !706, !710, !1617, !1618}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !701, file: !663, line: 176, baseType: !674, size: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !701, file: !663, line: 177, baseType: !682, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !701, file: !663, line: 178, baseType: !235, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !701, file: !663, line: 179, baseType: !707, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!394}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !701, file: !663, line: 180, baseType: !711, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!669, !714, !605, !700, !537, !558, !682}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !101, line: 994, size: 1856, align: 64, elements: !716)
!716 = !{!717, !736, !737, !739, !748, !761, !762, !763, !835, !1044, !1053, !1059, !1060, !1607, !1608, !1609, !1610, !1612, !1613, !1616}
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !101, line: 995, baseType: !718, size: 128)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !101, line: 995, size: 128, elements: !719)
!719 = !{!720, !726, !735}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !718, file: !101, line: 996, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !722, line: 60, size: 64, elements: !723)
!722 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !722, line: 61, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !718, file: !101, line: 997, baseType: !727, size: 128, align: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !242, line: 232, size: 128, align: 64, elements: !728)
!728 = !{!729, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !242, line: 233, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !727, file: !242, line: 234, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !730}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !718, file: !101, line: 998, baseType: !80, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !715, file: !101, line: 1005, baseType: !268, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !715, file: !101, line: 1006, baseType: !738, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !242, line: 156, baseType: !80)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !715, file: !101, line: 1007, baseType: !740, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !741, line: 13, baseType: !742)
!741 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !242, line: 181, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !242, line: 179, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !743, file: !242, line: 180, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !244, line: 22, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !246, line: 30, baseType: !560)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !715, file: !101, line: 1008, baseType: !749, size: 256, offset: 256)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !750, line: 66, size: 256, elements: !751)
!750 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!751 = !{!752, !753, !755, !760}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !749, file: !750, line: 67, baseType: !740, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !749, file: !750, line: 68, baseType: !754, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !277, line: 23, baseType: !276)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !749, file: !750, line: 70, baseType: !756, size: 32, offset: 96)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !757, line: 15, size: 32, elements: !758)
!757 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !756, file: !757, line: 20, baseType: !288, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !749, file: !750, line: 72, baseType: !381, size: 128, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !715, file: !101, line: 1009, baseType: !558, size: 64, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !715, file: !101, line: 1010, baseType: !80, size: 32, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !715, file: !101, line: 1011, baseType: !764, size: 256, offset: 640)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !101, line: 948, size: 256, elements: !765)
!765 = !{!766, !787, !831, !832, !833, !834}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !764, file: !101, line: 949, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !768, line: 34, baseType: !769)
!768 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !768, line: 25, size: 64, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !769, file: !768, line: 26, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !773, line: 27, baseType: !774)
!773 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !773, line: 13, size: 64, elements: !775)
!775 = !{!776, !786}
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !773, line: 14, baseType: !777, size: 32)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !773, line: 14, size: 32, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !777, file: !773, line: 15, baseType: !288, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !773, line: 16, baseType: !781, size: 32)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !773, line: 16, size: 32, elements: !782)
!782 = !{!783, !784}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !781, file: !773, line: 18, baseType: !296, size: 8)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !781, file: !773, line: 19, baseType: !785, size: 24, offset: 8)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 24, elements: !25)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !774, file: !773, line: 26, baseType: !280, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !764, file: !101, line: 950, baseType: !788, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !86, line: 59, size: 768, elements: !790)
!790 = !{!791, !797, !798, !799, !812, !813, !820, !821}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !789, file: !86, line: 61, baseType: !792, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !793, line: 113, baseType: !794)
!793 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !793, line: 111, size: 32, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !794, file: !793, line: 112, baseType: !288, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !789, file: !86, line: 62, baseType: !80, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !789, file: !86, line: 63, baseType: !268, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !789, file: !86, line: 65, baseType: !800, size: 256, offset: 128)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !801, size: 256, elements: !810)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !242, line: 194, size: 64, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !801, file: !242, line: 195, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !242, line: 198, size: 128, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !805, file: !242, line: 199, baseType: !804, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !805, file: !242, line: 199, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!810 = !{!811}
!811 = !DISubrange(count: 4)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !789, file: !86, line: 66, baseType: !801, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !789, file: !86, line: 68, baseType: !814, size: 192, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !815, line: 41, baseType: !816)
!815 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !815, line: 37, size: 192, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !816, file: !815, line: 38, baseType: !268, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !816, file: !815, line: 39, baseType: !381, size: 128, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !789, file: !86, line: 69, baseType: !727, size: 128, align: 64, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !789, file: !86, line: 70, baseType: !822, offset: 768)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, elements: !829)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !86, line: 54, size: 128, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !823, file: !86, line: 55, baseType: !175, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !823, file: !86, line: 56, baseType: !827, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !86, line: 56, flags: DIFlagFwdDecl)
!829 = !{!830}
!830 = !DISubrange(count: -1)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !764, file: !101, line: 951, baseType: !85, size: 32, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !764, file: !101, line: 952, baseType: !405, size: 32, offset: 160)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !764, file: !101, line: 952, baseType: !405, size: 32, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !764, file: !101, line: 953, baseType: !175, size: 32, offset: 224)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !715, file: !101, line: 1012, baseType: !836, size: 64, offset: 896)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !839, line: 110, size: 1472, elements: !840)
!839 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!840 = !{!841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !857, !858, !859, !860, !861, !862, !989, !990, !991, !992, !993, !1024, !1027, !1031, !1039}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !838, file: !839, line: 111, baseType: !740, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !838, file: !839, line: 112, baseType: !405, size: 32, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !838, file: !839, line: 113, baseType: !415, size: 32, offset: 96)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !838, file: !839, line: 114, baseType: !405, size: 32, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !838, file: !839, line: 115, baseType: !415, size: 32, offset: 160)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !838, file: !839, line: 116, baseType: !405, size: 32, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !838, file: !839, line: 117, baseType: !415, size: 32, offset: 224)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !838, file: !839, line: 118, baseType: !405, size: 32, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !838, file: !839, line: 119, baseType: !415, size: 32, offset: 288)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !838, file: !839, line: 120, baseType: !80, size: 32, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !838, file: !839, line: 121, baseType: !852, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !853, line: 24, baseType: !854)
!853 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !853, line: 24, size: 64, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !854, file: !853, line: 24, baseType: !243, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !838, file: !839, line: 122, baseType: !852, size: 64, offset: 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !838, file: !839, line: 123, baseType: !852, size: 64, offset: 512)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !838, file: !839, line: 124, baseType: !852, size: 64, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !838, file: !839, line: 125, baseType: !852, size: 64, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !838, file: !839, line: 127, baseType: !298, size: 8, offset: 704)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !838, file: !839, line: 129, baseType: !863, size: 64, offset: 768)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !865, line: 195, size: 1728, elements: !866)
!865 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!866 = !{!867, !868, !873, !885, !894, !897, !898, !905, !906, !907, !908, !911, !912, !913, !915, !916, !953, !974}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !864, file: !865, line: 196, baseType: !792, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !864, file: !865, line: 197, baseType: !869, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !865, line: 28, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !242, line: 104, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !244, line: 20, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !246, line: 26, baseType: !175)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 198, baseType: !874, size: 192, offset: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 198, size: 192, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !874, file: !865, line: 199, baseType: !381, size: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !874, file: !865, line: 200, baseType: !878, size: 192, align: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !879, line: 5, size: 192, align: 64, elements: !880)
!879 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!880 = !{!881, !882, !884}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !878, file: !879, line: 6, baseType: !370, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !878, file: !879, line: 7, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !878, file: !879, line: 8, baseType: !883, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !864, file: !865, line: 205, baseType: !886, size: 320, offset: 256)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !887, line: 48, size: 320, elements: !888)
!887 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!888 = !{!889, !890, !891, !892, !893}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !886, file: !887, line: 49, baseType: !740, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !886, file: !887, line: 55, baseType: !740, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !886, file: !887, line: 57, baseType: !756, size: 32, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !886, file: !887, line: 59, baseType: !754, size: 32, offset: 160)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !886, file: !887, line: 60, baseType: !381, size: 128, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !864, file: !865, line: 206, baseType: !895, size: 64, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !865, line: 206, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !864, file: !865, line: 207, baseType: !235, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 208, baseType: !899, size: 64, offset: 704)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 208, size: 64, elements: !900)
!900 = !{!901, !904}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !899, file: !865, line: 209, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !903, line: 8, baseType: !747)
!903 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!904 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !899, file: !865, line: 210, baseType: !902, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !864, file: !865, line: 212, baseType: !902, size: 64, offset: 768)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !864, file: !865, line: 213, baseType: !405, size: 32, offset: 832)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !864, file: !865, line: 214, baseType: !415, size: 32, offset: 864)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !864, file: !865, line: 215, baseType: !909, size: 32, offset: 896)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !865, line: 31, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !242, line: 110, baseType: !469)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !864, file: !865, line: 216, baseType: !261, size: 16, offset: 928)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !864, file: !865, line: 217, baseType: !261, size: 16, offset: 944)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !864, file: !865, line: 221, baseType: !914, size: 16, offset: 960)
!914 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !865, line: 228, baseType: !370, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 245, baseType: !917, size: 320, offset: 1088)
!917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 245, size: 320, elements: !918)
!918 = !{!919, !945}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !917, file: !865, line: 246, baseType: !920, size: 320)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !865, line: 114, size: 320, elements: !921)
!921 = !{!922, !923, !932, !935, !944}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !920, file: !865, line: 116, baseType: !370, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !920, file: !865, line: 117, baseType: !924, size: 64, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !865, line: 117, size: 64, elements: !925)
!925 = !{!926, !931}
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !865, line: 118, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !865, line: 118, size: 64, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !927, file: !865, line: 120, baseType: !304, size: 16)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !927, file: !865, line: 121, baseType: !14, size: 48, offset: 16)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !924, file: !865, line: 127, baseType: !370, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !920, file: !865, line: 129, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !865, line: 102, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !920, file: !865, line: 130, baseType: !936, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !865, line: 108, size: 192, elements: !938)
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !937, file: !865, line: 109, baseType: !727, size: 128, align: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !937, file: !865, line: 110, baseType: !792, size: 32, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !937, file: !865, line: 111, baseType: !942, size: 8, offset: 160)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !242, line: 35, baseType: !943)
!943 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !920, file: !865, line: 131, baseType: !512, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !865, line: 247, baseType: !946, size: 320)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !917, file: !865, line: 247, size: 320, elements: !947)
!947 = !{!948, !949, !950, !951, !952}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !946, file: !865, line: 248, baseType: !370, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !946, file: !865, line: 249, baseType: !370, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !946, file: !865, line: 250, baseType: !933, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !946, file: !865, line: 251, baseType: !936, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !946, file: !865, line: 252, baseType: !537, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !865, line: 260, baseType: !954, size: 256, offset: 1408)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !865, line: 260, size: 256, elements: !955)
!955 = !{!956, !962}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !954, file: !865, line: 261, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !865, line: 134, size: 256, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !957, file: !865, line: 135, baseType: !235, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !957, file: !865, line: 136, baseType: !961, size: 256)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !810)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !865, line: 262, baseType: !963, size: 256)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !865, line: 262, size: 256, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !963, file: !865, line: 264, baseType: !381, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !963, file: !865, line: 265, baseType: !967, size: 128, offset: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !968, line: 22, size: 128, elements: !969)
!968 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!969 = !{!970, !973}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !967, file: !968, line: 23, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !968, line: 23, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !967, file: !968, line: 24, baseType: !370, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !864, file: !865, line: 280, baseType: !975, size: 64, offset: 1664)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !865, line: 176, size: 192, elements: !977)
!977 = !{!978, !987, !988}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !976, file: !865, line: 177, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !865, line: 171, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!175, !863, !983, !985, !863}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !976, file: !865, line: 178, baseType: !863, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !976, file: !865, line: 179, baseType: !933, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !838, file: !839, line: 130, baseType: !863, size: 64, offset: 832)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !838, file: !839, line: 131, baseType: !863, size: 64, offset: 896)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !838, file: !839, line: 132, baseType: !863, size: 64, offset: 960)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !838, file: !839, line: 135, baseType: !235, size: 64, offset: 1024)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !838, file: !839, line: 137, baseType: !994, size: 64, offset: 1088)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !996, line: 14, size: 1088, elements: !997)
!996 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!997 = !{!998, !999, !1008, !1009, !1010, !1011, !1012, !1013}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !995, file: !996, line: 15, baseType: !792, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !995, file: !996, line: 17, baseType: !1000, size: 320, offset: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1001, line: 22, size: 320, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1002 = !{!1003, !1004, !1005, !1006}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1000, file: !1001, line: 23, baseType: !754, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1000, file: !1001, line: 24, baseType: !746, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1000, file: !1001, line: 26, baseType: !381, size: 128, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1000, file: !1001, line: 28, baseType: !1007, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !995, file: !996, line: 19, baseType: !370, size: 64, offset: 384)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !995, file: !996, line: 20, baseType: !740, size: 64, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !995, file: !996, line: 23, baseType: !805, size: 128, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !995, file: !996, line: 24, baseType: !405, size: 32, offset: 640)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !995, file: !996, line: 29, baseType: !740, size: 64, offset: 704)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !995, file: !996, line: 36, baseType: !1014, size: 320, offset: 768)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1015, line: 15, size: 320, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1023}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1014, file: !1015, line: 16, baseType: !754, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1014, file: !1015, line: 18, baseType: !175, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1014, file: !1015, line: 19, baseType: !175, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1014, file: !1015, line: 20, baseType: !175, size: 32, offset: 96)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1014, file: !1015, line: 21, baseType: !175, size: 32, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1014, file: !1015, line: 22, baseType: !370, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !1015, line: 23, baseType: !370, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !838, file: !839, line: 138, baseType: !1025, size: 64, offset: 1152)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !406, line: 18, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !838, file: !839, line: 139, baseType: !1028, size: 64, offset: 1216)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1030, line: 16, flags: DIFlagFwdDecl)
!1030 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !838, file: !839, line: 140, baseType: !1032, size: 64, offset: 1280)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !839, line: 25, size: 64, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1033, file: !839, line: 26, baseType: !288, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1033, file: !839, line: 27, baseType: !175, size: 32, offset: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1033, file: !839, line: 28, baseType: !1038, offset: 64)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, elements: !829)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !839, line: 142, baseType: !1040, size: 128, offset: 1344)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !839, line: 142, size: 128, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1040, file: !839, line: 143, baseType: !175, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1040, file: !839, line: 144, baseType: !727, size: 128, align: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !715, file: !101, line: 1013, baseType: !1045, size: 256, offset: 960)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !101, line: 970, size: 256, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1045, file: !101, line: 971, baseType: !370, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1045, file: !101, line: 972, baseType: !80, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1045, file: !101, line: 973, baseType: !80, size: 32, offset: 96)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1045, file: !101, line: 974, baseType: !80, size: 32, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1045, file: !101, line: 975, baseType: !80, size: 32, offset: 160)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1045, file: !101, line: 976, baseType: !558, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !715, file: !101, line: 1014, baseType: !1054, size: 128, offset: 1216)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1055, line: 8, size: 128, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1054, file: !1055, line: 9, baseType: !542, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1054, file: !1055, line: 10, baseType: !435, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !715, file: !101, line: 1015, baseType: !398, size: 64, offset: 1344)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !715, file: !101, line: 1016, baseType: !1061, size: 64, offset: 1408)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !101, line: 1914, size: 2112, elements: !1064)
!1064 = !{!1065, !1066, !1070, !1075, !1079, !1156, !1157, !1172, !1185, !1193, !1197, !1198, !1526, !1527, !1531, !1536, !1537, !1541, !1545, !1551, !1552, !1556, !1557, !1564, !1568, !1572, !1578, !1582, !1588, !1592, !1596, !1597, !1603}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1063, file: !101, line: 1915, baseType: !586, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1063, file: !101, line: 1916, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!558, !714, !558, !175}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1063, file: !101, line: 1917, baseType: !1071, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!669, !714, !537, !682, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1063, file: !101, line: 1918, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!669, !714, !512, !682, !1074}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1063, file: !101, line: 1919, baseType: !1080, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!669, !1083, !1105}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !101, line: 373, size: 384, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1092, !1093, !1094, !1095}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1084, file: !101, line: 374, baseType: !714, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1084, file: !101, line: 375, baseType: !558, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1084, file: !101, line: 376, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1083, !672}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1084, file: !101, line: 377, baseType: !235, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1084, file: !101, line: 378, baseType: !175, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1084, file: !101, line: 379, baseType: !304, size: 16, offset: 288)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !101, line: 380, baseType: !1096, size: 64, offset: 320)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !101, line: 380, size: 64, elements: !1097)
!1097 = !{!1098, !1101}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1096, file: !101, line: 386, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !101, line: 386, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1096, file: !101, line: 395, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!669, !235}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1107, line: 41, size: 320, elements: !1108)
!1107 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1119, !1151}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1106, file: !1107, line: 42, baseType: !296, size: 8)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1106, file: !1107, line: 43, baseType: !942, size: 8, offset: 8)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1106, file: !1107, line: 44, baseType: !942, size: 8, offset: 16)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1106, file: !1107, line: 45, baseType: !942, size: 8, offset: 24)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1106, file: !1107, line: 46, baseType: !942, size: 8, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !1107, line: 47, baseType: !1115, size: 64, offset: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1107, line: 47, size: 64, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1115, file: !1107, line: 48, baseType: !682, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1115, file: !1107, line: 49, baseType: !175, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !1107, line: 61, baseType: !1120, size: 128, offset: 128)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1107, line: 61, size: 128, elements: !1121)
!1121 = !{!1122, !1128}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1120, file: !1107, line: 67, baseType: !1123, size: 128)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1124, line: 17, size: 128, elements: !1125)
!1124 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1123, file: !1124, line: 19, baseType: !235, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1123, file: !1124, line: 20, baseType: !683, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !1107, line: 68, baseType: !1129, size: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !1107, line: 68, size: 128, elements: !1130)
!1130 = !{!1131, !1150}
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1107, line: 69, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !1107, line: 69, size: 64, elements: !1133)
!1133 = !{!1134, !1137, !1144, !1147, !1149}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1132, file: !1107, line: 71, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1132, file: !1107, line: 72, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1107, line: 17, size: 128, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1140, file: !1107, line: 18, baseType: !235, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1140, file: !1107, line: 19, baseType: !682, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1132, file: !1107, line: 73, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1132, file: !1107, line: 74, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1132, file: !1107, line: 75, baseType: !235, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1129, file: !1107, line: 77, baseType: !682, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !1107, line: 80, baseType: !1152, size: 64, offset: 256)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1107, line: 80, size: 64, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1152, file: !1107, line: 81, baseType: !370, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1152, file: !1107, line: 82, baseType: !558, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1063, file: !101, line: 1920, baseType: !1080, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1063, file: !101, line: 1921, baseType: !1158, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!175, !1083, !1161, !80}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !143, line: 1559, size: 192, elements: !1163)
!1163 = !{!1164, !1167, !1168}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1162, file: !143, line: 1560, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !143, line: 32, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1162, file: !143, line: 1561, baseType: !942, size: 8, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1162, file: !143, line: 1562, baseType: !1169, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !1161}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1063, file: !101, line: 1923, baseType: !1173, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!175, !714, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !101, line: 1858, size: 128, elements: !1178)
!1178 = !{!1179, !1184}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1177, file: !101, line: 1859, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !101, line: 1855, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!942, !1176, !512, !175, !558, !243, !80}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1177, file: !101, line: 1860, baseType: !558, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1063, file: !101, line: 1924, baseType: !1186, size: 64, offset: 512)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!1189, !714, !1191}
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1190, line: 59, baseType: !80)
!1190 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !101, line: 61, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1063, file: !101, line: 1925, baseType: !1194, size: 64, offset: 576)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!672, !714, !80, !370}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1063, file: !101, line: 1926, baseType: !1194, size: 64, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1063, file: !101, line: 1927, baseType: !1199, size: 64, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!175, !714, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !127, line: 625, size: 1344, elements: !1204)
!1204 = !{!1205, !1214, !1382, !1388, !1395, !1396, !1401, !1402, !1407, !1408, !1411, !1519, !1520, !1521, !1522, !1523, !1524}
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !127, line: 628, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !127, line: 628, size: 128, elements: !1207)
!1207 = !{!1208, !1213}
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !127, line: 629, baseType: !1209, size: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1206, file: !127, line: 629, size: 128, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1209, file: !127, line: 631, baseType: !370, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1209, file: !127, line: 632, baseType: !370, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1206, file: !127, line: 635, baseType: !727, size: 128, align: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1203, file: !127, line: 639, baseType: !1215, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !127, line: 733, size: 10240, elements: !1217)
!1217 = !{!1218, !1380}
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !127, line: 734, baseType: !1219, size: 10240)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !127, line: 734, size: 10240, elements: !1220)
!1220 = !{!1221, !1225, !1238, !1242, !1243, !1244, !1245, !1246, !1247, !1256, !1257, !1258, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1297, !1299, !1302, !1349, !1350, !1351, !1354, !1355, !1356, !1359, !1360, !1361, !1367, !1368}
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !127, line: 739, baseType: !1222, size: 512, align: 512)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1219, file: !127, line: 739, size: 512, align: 512, elements: !1223)
!1223 = !{!1224}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1222, file: !127, line: 747, baseType: !288, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1219, file: !127, line: 750, baseType: !1226, size: 128, offset: 512)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1227, line: 218, size: 128, elements: !1228)
!1227 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1228 = !{!1229, !1236, !1237}
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !1227, line: 219, baseType: !1230, size: 32)
!1230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !1227, line: 219, size: 32, elements: !1231)
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1230, file: !1227, line: 220, baseType: !268, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1230, file: !1227, line: 221, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1227, line: 197, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1227, line: 197, elements: !357)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1226, file: !1227, line: 223, baseType: !80, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1226, file: !1227, line: 224, baseType: !235, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1219, file: !127, line: 752, baseType: !1239, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!370, !714, !370, !370, !370, !370}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1219, file: !127, line: 756, baseType: !370, size: 64, offset: 704)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1219, file: !127, line: 757, baseType: !370, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1219, file: !127, line: 760, baseType: !370, size: 64, offset: 832)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1219, file: !127, line: 761, baseType: !370, size: 64, offset: 896)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1219, file: !127, line: 763, baseType: !370, size: 64, offset: 960)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1219, file: !127, line: 764, baseType: !1248, size: 64, offset: 1024)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1250, line: 299, baseType: !1251)
!1250 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1250, line: 299, size: 64, elements: !1252)
!1252 = !{!1253}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1251, file: !1250, line: 299, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1255, line: 18, baseType: !370)
!1255 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1219, file: !127, line: 773, baseType: !288, size: 32, offset: 1088)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1219, file: !127, line: 785, baseType: !288, size: 32, offset: 1120)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1219, file: !127, line: 795, baseType: !1259, size: 64, offset: 1152)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !127, line: 726, size: 128, elements: !1261)
!1261 = !{!1262, !1263}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1260, file: !127, line: 727, baseType: !243, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1260, file: !127, line: 728, baseType: !175, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1219, file: !127, line: 801, baseType: !370, size: 64, offset: 1216)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1219, file: !127, line: 804, baseType: !740, size: 64, offset: 1280)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1219, file: !127, line: 806, baseType: !175, size: 32, offset: 1344)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1219, file: !127, line: 808, baseType: !268, size: 32, offset: 1376)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1219, file: !127, line: 823, baseType: !886, size: 320, offset: 1408)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1219, file: !127, line: 825, baseType: !381, size: 128, offset: 1728)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1219, file: !127, line: 845, baseType: !175, size: 32, offset: 1856)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1219, file: !127, line: 849, baseType: !370, size: 64, offset: 1920)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1219, file: !127, line: 850, baseType: !370, size: 64, offset: 1984)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1219, file: !127, line: 852, baseType: !370, size: 64, offset: 2048)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1219, file: !127, line: 853, baseType: !370, size: 64, offset: 2112)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1219, file: !127, line: 854, baseType: !742, size: 64, offset: 2176)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1219, file: !127, line: 855, baseType: !370, size: 64, offset: 2240)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1219, file: !127, line: 856, baseType: !370, size: 64, offset: 2304)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1219, file: !127, line: 857, baseType: !370, size: 64, offset: 2368)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1219, file: !127, line: 858, baseType: !370, size: 64, offset: 2432)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1219, file: !127, line: 865, baseType: !446, size: 32, offset: 2496)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1219, file: !127, line: 867, baseType: !268, size: 32, offset: 2528)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1219, file: !127, line: 869, baseType: !370, size: 64, offset: 2560)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1219, file: !127, line: 869, baseType: !370, size: 64, offset: 2624)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1219, file: !127, line: 869, baseType: !370, size: 64, offset: 2688)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1219, file: !127, line: 869, baseType: !370, size: 64, offset: 2752)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1219, file: !127, line: 870, baseType: !370, size: 64, offset: 2816)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1219, file: !127, line: 870, baseType: !370, size: 64, offset: 2880)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1219, file: !127, line: 870, baseType: !370, size: 64, offset: 2944)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1219, file: !127, line: 871, baseType: !370, size: 64, offset: 3008)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1219, file: !127, line: 871, baseType: !370, size: 64, offset: 3072)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1219, file: !127, line: 871, baseType: !370, size: 64, offset: 3136)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1219, file: !127, line: 871, baseType: !370, size: 64, offset: 3200)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1219, file: !127, line: 873, baseType: !1294, size: 3328, offset: 3264)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 3328, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 52)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1219, file: !127, line: 875, baseType: !1298, size: 1280, offset: 6592)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 1280, elements: !810)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1219, file: !127, line: 877, baseType: !1300, size: 64, offset: 7872)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !127, line: 877, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1219, file: !127, line: 880, baseType: !1303, size: 1088, offset: 7936)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1304, line: 72, baseType: !1305)
!1304 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1304, line: 23, size: 1088, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1314, !1315, !1316, !1317, !1344, !1345, !1346}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1305, file: !1304, line: 28, baseType: !243, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1305, file: !1304, line: 38, baseType: !742, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1305, file: !1304, line: 40, baseType: !370, size: 64, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1305, file: !1304, line: 43, baseType: !886, size: 320, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1305, file: !1304, line: 44, baseType: !1312, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1304, line: 44, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !1304, line: 48, baseType: !370, size: 64, offset: 576)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1305, file: !1304, line: 59, baseType: !749, size: 256, offset: 640)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1305, file: !1304, line: 60, baseType: !235, size: 64, offset: 896)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1305, file: !1304, line: 61, baseType: !1318, size: 64, offset: 960)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1321, line: 13, size: 1216, elements: !1322)
!1321 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1329, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1320, file: !1321, line: 14, baseType: !235, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1320, file: !1321, line: 15, baseType: !370, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1320, file: !1321, line: 17, baseType: !370, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1320, file: !1321, line: 17, baseType: !370, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1320, file: !1321, line: 18, baseType: !370, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1320, file: !1321, line: 18, baseType: !370, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1320, file: !1321, line: 19, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1320, file: !1321, line: 21, baseType: !672, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1320, file: !1321, line: 23, baseType: !672, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1320, file: !1321, line: 24, baseType: !672, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1320, file: !1321, line: 25, baseType: !672, size: 64, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1320, file: !1321, line: 26, baseType: !672, size: 64, offset: 704)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1320, file: !1321, line: 27, baseType: !672, size: 64, offset: 768)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1320, file: !1321, line: 28, baseType: !672, size: 64, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1320, file: !1321, line: 29, baseType: !672, size: 64, offset: 896)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1320, file: !1321, line: 30, baseType: !672, size: 64, offset: 960)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1320, file: !1321, line: 31, baseType: !672, size: 64, offset: 1024)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1320, file: !1321, line: 32, baseType: !672, size: 64, offset: 1088)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1320, file: !1321, line: 33, baseType: !672, size: 64, offset: 1152)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1305, file: !1304, line: 63, baseType: !288, size: 32, offset: 1024)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1305, file: !1304, line: 69, baseType: !304, size: 16, offset: 1056)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1305, file: !1304, line: 70, baseType: !1347, size: 16, offset: 1072)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !244, line: 18, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !246, line: 23, baseType: !914)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1219, file: !127, line: 882, baseType: !370, size: 64, offset: 9024)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1219, file: !127, line: 885, baseType: !268, size: 32, offset: 9088)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1219, file: !127, line: 886, baseType: !1352, size: 64, offset: 9152)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !127, line: 732, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1219, file: !127, line: 901, baseType: !1025, size: 64, offset: 9216)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1219, file: !127, line: 904, baseType: !714, size: 64, offset: 9280)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1219, file: !127, line: 906, baseType: !1357, size: 64, offset: 9344)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !127, line: 906, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1219, file: !127, line: 930, baseType: !288, size: 32, offset: 9408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1219, file: !127, line: 933, baseType: !288, size: 32, offset: 9440)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1219, file: !127, line: 935, baseType: !1362, size: 64, offset: 9472)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !223, line: 103, size: 64, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1362, file: !223, line: 104, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !223, line: 101, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1219, file: !127, line: 940, baseType: !740, size: 64, offset: 9536)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1219, file: !127, line: 942, baseType: !1369, size: 256, offset: 9600)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1370, line: 98, size: 256, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1369, file: !1370, line: 99, baseType: !740, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1369, file: !1370, line: 100, baseType: !381, size: 128, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1369, file: !1370, line: 101, baseType: !1375, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1370, line: 21, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1216, file: !127, line: 986, baseType: !1381, offset: 10240)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, elements: !829)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1203, file: !127, line: 640, baseType: !1383, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1250, line: 297, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1250, line: 297, size: 64, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1384, file: !1250, line: 297, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1255, line: 19, baseType: !370)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !127, line: 646, baseType: !1389, size: 64, offset: 256)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !127, line: 646, size: 64, elements: !1390)
!1390 = !{!1391, !1394}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1389, file: !127, line: 647, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !127, line: 542, baseType: !370)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1389, file: !127, line: 648, baseType: !1393, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1203, file: !127, line: 666, baseType: !175, size: 32, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1203, file: !127, line: 667, baseType: !1397, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !127, line: 579, size: 320, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1398, file: !127, line: 580, baseType: !886, size: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1203, file: !127, line: 670, baseType: !942, size: 8, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1203, file: !127, line: 681, baseType: !1403, size: 256, offset: 512)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1203, file: !127, line: 678, size: 256, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1403, file: !127, line: 679, baseType: !878, size: 192, align: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1403, file: !127, line: 680, baseType: !370, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1203, file: !127, line: 689, baseType: !381, size: 128, offset: 768)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1203, file: !127, line: 691, baseType: !1409, size: 64, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !127, line: 691, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1203, file: !127, line: 694, baseType: !1412, size: 64, offset: 960)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1415, line: 563, size: 1024, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1416 = !{!1417, !1421, !1422, !1426, !1430, !1434, !1483, !1487, !1491, !1495, !1496, !1497, !1501, !1505, !1511, !1515}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1414, file: !1415, line: 564, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1202}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1414, file: !1415, line: 569, baseType: !1418, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1414, file: !1415, line: 571, baseType: !1423, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!175, !1202, !370}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1414, file: !1415, line: 572, baseType: !1427, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!175, !1202}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1414, file: !1415, line: 578, baseType: !1431, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!175, !1202, !370, !370, !370}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1414, file: !1415, line: 580, baseType: !1435, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !127, line: 1184, baseType: !80)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1415, line: 512, size: 896, elements: !1441)
!1441 = !{!1442, !1450, !1451, !1458, !1465, !1475, !1476, !1477, !1479, !1481}
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1415, line: 513, baseType: !1443, size: 320)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1440, file: !1415, line: 513, size: 320, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1443, file: !1415, line: 514, baseType: !1202, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1443, file: !1415, line: 515, baseType: !308, size: 32, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1443, file: !1415, line: 516, baseType: !370, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1443, file: !1415, line: 517, baseType: !370, size: 64, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1443, file: !1415, line: 518, baseType: !370, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1440, file: !1415, line: 520, baseType: !126, size: 32, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1440, file: !1415, line: 522, baseType: !1452, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1255, line: 22, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1255, line: 22, size: 64, elements: !1455)
!1455 = !{!1456}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1454, file: !1255, line: 22, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1255, line: 15, baseType: !370)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1440, file: !1415, line: 524, baseType: !1459, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1250, line: 372, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1250, line: 372, size: 64, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1461, file: !1250, line: 372, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1255, line: 16, baseType: !370)
!1465 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1415, line: 527, baseType: !1466, size: 64, offset: 512)
!1466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1415, line: 527, size: 64, elements: !1467)
!1467 = !{!1468, !1474}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1466, file: !1415, line: 528, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1255, line: 21, baseType: !1470)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1255, line: 21, size: 64, elements: !1471)
!1471 = !{!1472}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1470, file: !1255, line: 21, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1255, line: 14, baseType: !370)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1466, file: !1415, line: 529, baseType: !1453, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1440, file: !1415, line: 534, baseType: !366, size: 64, offset: 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1440, file: !1415, line: 535, baseType: !366, size: 64, offset: 640)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1440, file: !1415, line: 541, baseType: !1478, size: 64, offset: 704)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1440, file: !1415, line: 545, baseType: !1480, size: 64, offset: 768)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1440, file: !1415, line: 549, baseType: !1482, size: 64, offset: 832)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1250, line: 520, baseType: !366)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1414, file: !1415, line: 581, baseType: !1484, size: 64, offset: 384)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!1438, !1439, !80}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1414, file: !1415, line: 582, baseType: !1488, size: 64, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1438, !1439, !370, !370}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1414, file: !1415, line: 584, baseType: !1492, size: 64, offset: 512)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!370, !1202}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1414, file: !1415, line: 588, baseType: !1435, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1414, file: !1415, line: 591, baseType: !1435, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1414, file: !1415, line: 597, baseType: !1498, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!175, !1202, !370, !235, !175, !175}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1414, file: !1415, line: 603, baseType: !1502, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!512, !1202}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1414, file: !1415, line: 613, baseType: !1506, size: 64, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!175, !1202, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !127, line: 717, flags: DIFlagFwdDecl)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1414, file: !1415, line: 625, baseType: !1512, size: 64, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1509, !1202, !370}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1414, file: !1415, line: 633, baseType: !1516, size: 64, offset: 960)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!366, !1202, !370}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1203, file: !127, line: 697, baseType: !370, size: 64, offset: 1024)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1203, file: !127, line: 699, baseType: !714, size: 64, offset: 1088)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1203, file: !127, line: 700, baseType: !235, size: 64, offset: 1152)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1203, file: !127, line: 711, baseType: !740, size: 64, offset: 1216)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1203, file: !127, line: 717, baseType: !1509, size: 64, offset: 1280)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1203, file: !127, line: 722, baseType: !1525, offset: 1344)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !127, line: 570, elements: !357)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1063, file: !101, line: 1928, baseType: !370, size: 64, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1063, file: !101, line: 1929, baseType: !1528, size: 64, offset: 832)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!175, !398, !714}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1063, file: !101, line: 1930, baseType: !1532, size: 64, offset: 896)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!175, !714, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !101, line: 1061, baseType: !235)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1063, file: !101, line: 1931, baseType: !1528, size: 64, offset: 960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1063, file: !101, line: 1932, baseType: !1538, size: 64, offset: 1024)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!175, !714, !558, !558, !175}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1063, file: !101, line: 1933, baseType: !1542, size: 64, offset: 1088)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!175, !175, !714, !175}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !101, line: 1934, baseType: !1546, size: 64, offset: 1152)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!175, !714, !175, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !101, line: 1063, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1063, file: !101, line: 1935, baseType: !1239, size: 64, offset: 1216)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1063, file: !101, line: 1936, baseType: !1553, size: 64, offset: 1280)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!175, !175}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1063, file: !101, line: 1937, baseType: !1546, size: 64, offset: 1344)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1063, file: !101, line: 1938, baseType: !1558, size: 64, offset: 1408)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!669, !1561, !714, !1074, !682, !80}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1563, line: 59, flags: DIFlagFwdDecl)
!1563 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1063, file: !101, line: 1939, baseType: !1565, size: 64, offset: 1472)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!669, !714, !1074, !1561, !682, !80}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1063, file: !101, line: 1940, baseType: !1569, size: 64, offset: 1536)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !714}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1063, file: !101, line: 1941, baseType: !1573, size: 64, offset: 1600)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!175, !714, !175, !1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1063, file: !101, line: 1942, baseType: !1579, size: 64, offset: 1664)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!672, !714, !175, !558, !558}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1063, file: !101, line: 1944, baseType: !1583, size: 64, offset: 1728)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1586, !714}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1563, line: 66, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1063, file: !101, line: 1948, baseType: !1589, size: 64, offset: 1792)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!669, !714, !558, !714, !558, !682, !80}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1063, file: !101, line: 1950, baseType: !1593, size: 64, offset: 1856)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!558, !714, !558, !714, !558, !558, !80}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1063, file: !101, line: 1953, baseType: !1538, size: 64, offset: 1920)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1063, file: !101, line: 1954, baseType: !1598, size: 64, offset: 1984)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!175, !1601, !80}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !101, line: 1911, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1063, file: !101, line: 1955, baseType: !1604, size: 64, offset: 2048)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!175, !1601, !1161, !80}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !715, file: !101, line: 1018, baseType: !243, size: 64, offset: 1472)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !715, file: !101, line: 1020, baseType: !235, size: 64, offset: 1536)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !715, file: !101, line: 1023, baseType: !235, size: 64, offset: 1600)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !715, file: !101, line: 1027, baseType: !1611, size: 64, offset: 1664)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !715, file: !101, line: 1029, baseType: !394, size: 64, offset: 1728)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !715, file: !101, line: 1030, baseType: !1614, size: 32, offset: 1792)
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1615, line: 8, baseType: !469)
!1615 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !715, file: !101, line: 1031, baseType: !1614, size: 32, offset: 1824)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !701, file: !663, line: 182, baseType: !711, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !701, file: !663, line: 184, baseType: !1619, size: 64, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!175, !714, !605, !700, !1202}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !689, file: !663, line: 90, baseType: !1623, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !689, file: !663, line: 91, baseType: !1625, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !653, file: !600, line: 120, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1630, !623}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !79, line: 39, size: 384, elements: !1633)
!1633 = !{!1634, !1635, !1639, !1643, !1649, !1653}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1632, file: !79, line: 40, baseType: !78, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1632, file: !79, line: 41, baseType: !1636, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!942}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1632, file: !79, line: 42, baseType: !1640, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!235}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1632, file: !79, line: 43, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1330, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !79, line: 19, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1632, file: !79, line: 44, baseType: !1650, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1330}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1632, file: !79, line: 45, baseType: !1654, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !235}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !653, file: !600, line: 121, baseType: !1658, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!1330, !623}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !653, file: !600, line: 122, baseType: !1662, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{null, !623, !1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !599, file: !600, line: 70, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1670, line: 190, size: 1152, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1766, !1767, !1768, !1769, !1770, !1773}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1669, file: !1670, line: 191, baseType: !288, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1669, file: !1670, line: 192, baseType: !288, size: 32, offset: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1669, file: !1670, line: 202, baseType: !1668, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1669, file: !1670, line: 203, baseType: !512, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1669, file: !1670, line: 205, baseType: !878, size: 192, align: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1669, file: !1670, line: 207, baseType: !1330, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1669, file: !1670, line: 208, baseType: !80, size: 32, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1670, line: 209, baseType: !1680, size: 256, offset: 512)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !1670, line: 209, size: 256, elements: !1681)
!1681 = !{!1682, !1694, !1698}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1680, file: !1670, line: 210, baseType: !1683, size: 256)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1670, line: 153, size: 256, elements: !1684)
!1684 = !{!1685, !1686, !1690, !1693}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1683, file: !1670, line: 154, baseType: !370, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1683, file: !1670, line: 156, baseType: !1687, size: 64, offset: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !879, line: 12, size: 64, elements: !1688)
!1688 = !{!1689}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1687, file: !879, line: 13, baseType: !883, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1683, file: !1670, line: 162, baseType: !1691, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1670, line: 162, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1683, file: !1670, line: 167, baseType: !370, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1680, file: !1670, line: 211, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1670, line: 170, size: 64, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1695, file: !1670, line: 171, baseType: !1668, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1680, file: !1670, line: 212, baseType: !1699, size: 256)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1670, line: 174, size: 256, elements: !1700)
!1700 = !{!1701, !1761, !1764, !1765}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1699, file: !1670, line: 175, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1670, line: 271, size: 768, elements: !1705)
!1705 = !{!1706, !1726, !1730, !1734, !1738, !1742, !1746, !1750, !1751, !1752, !1753, !1757}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1704, file: !1670, line: 276, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!175, !1710}
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1670, line: 251, size: 1216, elements: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1711, file: !1670, line: 253, baseType: !1668, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1711, file: !1670, line: 254, baseType: !714, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1711, file: !1670, line: 255, baseType: !1586, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1711, file: !1670, line: 256, baseType: !235, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1711, file: !1670, line: 259, baseType: !749, size: 256, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1711, file: !1670, line: 260, baseType: !749, size: 256, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1711, file: !1670, line: 261, baseType: !175, size: 32, offset: 768)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1711, file: !1670, line: 262, baseType: !381, size: 128, offset: 832)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1711, file: !1670, line: 263, baseType: !537, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1711, file: !1670, line: 265, baseType: !682, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1711, file: !1670, line: 266, baseType: !942, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1711, file: !1670, line: 267, baseType: !942, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1711, file: !1670, line: 268, baseType: !1412, size: 64, offset: 1152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1704, file: !1670, line: 277, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !1710}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1704, file: !1670, line: 290, baseType: !1731, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!175, !1586, !235}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1704, file: !1670, line: 292, baseType: !1735, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!235, !1586, !1074}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1704, file: !1670, line: 293, baseType: !1739, size: 64, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!235, !1586, !235, !1074}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1704, file: !1670, line: 294, baseType: !1743, size: 64, offset: 320)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !1586, !235}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1704, file: !1670, line: 296, baseType: !1747, size: 64, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!669, !1710, !537, !682, !558}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1704, file: !1670, line: 306, baseType: !682, size: 64, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1704, file: !1670, line: 313, baseType: !942, size: 8, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1704, file: !1670, line: 314, baseType: !1747, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1704, file: !1670, line: 317, baseType: !1754, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!1189, !1710, !1191}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1704, file: !1670, line: 320, baseType: !1758, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!175, !1710, !1202}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1699, file: !1670, line: 176, baseType: !1762, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1670, line: 35, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1699, file: !1670, line: 177, baseType: !558, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1699, file: !1670, line: 178, baseType: !1668, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1669, file: !1670, line: 215, baseType: !235, size: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1669, file: !1670, line: 221, baseType: !243, size: 64, offset: 832)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1669, file: !1670, line: 223, baseType: !261, size: 16, offset: 896)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1669, file: !1670, line: 224, baseType: !402, size: 16, offset: 912)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1669, file: !1670, line: 225, baseType: !1771, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1670, line: 36, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1669, file: !1670, line: 227, baseType: !727, size: 128, align: 64, offset: 1024)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !599, file: !600, line: 71, baseType: !1775, size: 32, offset: 448)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1776, line: 19, size: 32, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1777 = !{!1778}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1775, file: !1776, line: 20, baseType: !792, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !599, file: !600, line: 73, baseType: !80, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !599, file: !600, line: 74, baseType: !80, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !599, file: !600, line: 75, baseType: !80, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !599, file: !600, line: 76, baseType: !80, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !599, file: !600, line: 77, baseType: !80, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !596, file: !94, line: 47, baseType: !586, size: 64, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !596, file: !94, line: 48, baseType: !605, size: 64, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !596, file: !94, line: 49, baseType: !1787, size: 64, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !94, line: 49, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !596, file: !94, line: 50, baseType: !1790, size: 64, offset: 704)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1792, line: 26, size: 256, elements: !1793)
!1792 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1791, file: !1792, line: 27, baseType: !80, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1791, file: !1792, line: 28, baseType: !1796, size: 192, offset: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1797, line: 43, size: 192, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1796, file: !1797, line: 44, baseType: !754, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1796, file: !1797, line: 45, baseType: !381, size: 128, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !587, file: !94, line: 418, baseType: !1802, size: 64, offset: 1408)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !94, line: 53, size: 448, elements: !1804)
!1804 = !{!1805, !1806, !1811, !1815, !1819, !1823}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1803, file: !94, line: 54, baseType: !674, size: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1803, file: !94, line: 55, baseType: !1807, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!669, !1802, !1810, !537}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1803, file: !94, line: 57, baseType: !1812, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!669, !1802, !1810, !512, !682}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1803, file: !94, line: 59, baseType: !1816, size: 64, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !586, !512}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1803, file: !94, line: 60, baseType: !1820, size: 64, offset: 320)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!175, !586}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1803, file: !94, line: 61, baseType: !1824, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !586}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !587, file: !94, line: 419, baseType: !512, size: 64, offset: 1472)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !587, file: !94, line: 420, baseType: !512, size: 64, offset: 1536)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !587, file: !94, line: 421, baseType: !605, size: 64, offset: 1600)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !587, file: !94, line: 424, baseType: !1831, size: 64, offset: 1664)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !94, line: 424, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !587, file: !94, line: 425, baseType: !1835, size: 64, offset: 1728)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !587, file: !94, line: 426, baseType: !80, size: 32, offset: 1792)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !587, file: !94, line: 435, baseType: !749, size: 256, offset: 1856)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !587, file: !94, line: 437, baseType: !1840, size: 64, offset: 2112)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1842, line: 69, size: 320, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1843 = !{!1844, !1845, !1846, !1863, !1865, !1869, !1870}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1841, file: !1842, line: 70, baseType: !512, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1841, file: !1842, line: 71, baseType: !586, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1841, file: !1842, line: 72, baseType: !1847, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1842, line: 47, size: 256, elements: !1850)
!1850 = !{!1851, !1852, !1858, !1862}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1849, file: !1842, line: 49, baseType: !80, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1849, file: !1842, line: 51, baseType: !1853, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!175, !512, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1841)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1849, file: !1842, line: 53, baseType: !1859, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!175, !537, !1856}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1849, file: !1842, line: 55, baseType: !1654, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1841, file: !1842, line: 73, baseType: !1864, size: 16, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1841, file: !1842, line: 74, baseType: !1866, size: 8, offset: 208)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !244, line: 16, baseType: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !246, line: 20, baseType: !1868)
!1868 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !1842, line: 75, baseType: !296, size: 8, offset: 216)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1842, line: 76, baseType: !1871, size: 64, offset: 256)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1841, file: !1842, line: 76, size: 64, elements: !1872)
!1872 = !{!1873, !1874, !1881}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1871, file: !1842, line: 77, baseType: !235, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1871, file: !1842, line: 78, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1842, line: 86, size: 128, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1877, file: !1842, line: 87, baseType: !80, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1877, file: !1842, line: 88, baseType: !537, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1871, file: !1842, line: 79, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1842, line: 92, size: 256, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1890, !1891}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1884, file: !1842, line: 94, baseType: !80, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1884, file: !1842, line: 95, baseType: !80, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1884, file: !1842, line: 96, baseType: !1889, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1884, file: !1842, line: 97, baseType: !1847, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1884, file: !1842, line: 98, baseType: !235, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !587, file: !94, line: 438, baseType: !80, size: 32, offset: 2176)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !587, file: !94, line: 441, baseType: !80, size: 32, offset: 2208)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !587, file: !94, line: 442, baseType: !1831, size: 64, offset: 2240)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !587, file: !94, line: 443, baseType: !1835, size: 64, offset: 2304)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !587, file: !94, line: 444, baseType: !942, size: 8, offset: 2368)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !587, file: !94, line: 451, baseType: !942, size: 8, offset: 2376)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !587, file: !94, line: 454, baseType: !80, size: 32, offset: 2400)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !587, file: !94, line: 455, baseType: !1900, size: 64, offset: 2432)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1902, line: 23, size: 96, elements: !1903)
!1902 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1903 = !{!1904, !1905, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1901, file: !1902, line: 24, baseType: !175, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1901, file: !1902, line: 24, baseType: !175, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1901, file: !1902, line: 24, baseType: !175, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !587, file: !94, line: 458, baseType: !1908, size: 64, offset: 2496)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!175}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !587, file: !94, line: 460, baseType: !1912, size: 4032, align: 512, offset: 2560)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 4032, elements: !1927)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !94, line: 362, size: 576, elements: !1914)
!1914 = !{!1915, !1916, !1917}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1913, file: !94, line: 363, baseType: !235, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1913, file: !94, line: 364, baseType: !80, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1913, file: !94, line: 367, baseType: !1918, size: 448, offset: 128)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !94, line: 319, size: 448, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1918, file: !94, line: 320, baseType: !586, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1918, file: !94, line: 321, baseType: !1922, size: 384, offset: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1923, line: 40, size: 384, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1924 = !{!1925}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1922, file: !1923, line: 41, baseType: !1926, size: 384, align: 64)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 384, align: 64, elements: !35)
!1927 = !{!1928}
!1928 = !DISubrange(count: 7)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !587, file: !94, line: 463, baseType: !1930, size: 192, offset: 6592)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1931, line: 8, size: 192, elements: !1932)
!1931 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1932 = !{!1933, !1934, !1936}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1930, file: !1931, line: 10, baseType: !80, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1930, file: !1931, line: 11, baseType: !1935, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1930, file: !1931, line: 12, baseType: !1937, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1939, line: 59, size: 48, elements: !1940)
!1939 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1938, file: !1939, line: 60, baseType: !1347, size: 16)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1938, file: !1939, line: 61, baseType: !1347, size: 16, offset: 16)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1938, file: !1939, line: 63, baseType: !80, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1938, file: !1939, line: 64, baseType: !80, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1938, file: !1939, line: 65, baseType: !80, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1938, file: !1939, line: 66, baseType: !80, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !587, file: !94, line: 465, baseType: !370, size: 64, offset: 6784)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !587, file: !94, line: 469, baseType: !80, size: 32, offset: 6848)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !587, file: !94, line: 470, baseType: !381, size: 128, offset: 6912)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !587, file: !94, line: 471, baseType: !1951, size: 64, offset: 7040)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1953, line: 33, size: 96, elements: !1954)
!1953 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1954 = !{!1955, !1956, !1957, !1958}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1952, file: !1953, line: 37, baseType: !175, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1952, file: !1953, line: 43, baseType: !175, size: 32, offset: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1952, file: !1953, line: 45, baseType: !261, size: 16, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1952, file: !1953, line: 47, baseType: !261, size: 16, offset: 80)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !587, file: !94, line: 476, baseType: !1960, size: 64, offset: 7104)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !94, line: 378, size: 256, elements: !1962)
!1962 = !{!1963, !1979, !1980, !1981}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1961, file: !94, line: 379, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1966, line: 204, baseType: !1967)
!1966 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1966, line: 197, size: 192, elements: !1968)
!1968 = !{!1969, !1971, !1972, !1973, !1975, !1977}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1967, file: !1966, line: 198, baseType: !1970, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1966, line: 21, baseType: !327)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1967, file: !1966, line: 199, baseType: !298, size: 8, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1967, file: !1966, line: 200, baseType: !298, size: 8, offset: 40)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1967, file: !1966, line: 201, baseType: !1974, size: 16, offset: 48)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1966, line: 17, baseType: !305)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1967, file: !1966, line: 202, baseType: !1976, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1966, line: 16, baseType: !245)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1967, file: !1966, line: 203, baseType: !1978, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1966, line: 22, baseType: !245)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1961, file: !94, line: 380, baseType: !80, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1961, file: !94, line: 381, baseType: !537, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1961, file: !94, line: 382, baseType: !537, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !587, file: !94, line: 477, baseType: !1961, size: 256, offset: 7168)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !587, file: !94, line: 480, baseType: !1984, size: 64, offset: 7424)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !94, line: 480, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !587, file: !94, line: 483, baseType: !1987, size: 64, offset: 7488)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !94, line: 483, flags: DIFlagFwdDecl)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !587, file: !94, line: 488, baseType: !537, size: 64, offset: 7552)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !587, file: !94, line: 492, baseType: !235, size: 64, offset: 7616)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !587, file: !94, line: 493, baseType: !80, size: 32, offset: 7680)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !587, file: !94, line: 495, baseType: !235, size: 64, offset: 7744)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !587, file: !94, line: 496, baseType: !80, size: 32, offset: 7808)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !587, file: !94, line: 499, baseType: !80, size: 32, offset: 7840)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !587, file: !94, line: 500, baseType: !1996, size: 64, offset: 7872)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1998, line: 45, baseType: !1999)
!1998 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !587, file: !94, line: 503, baseType: !80, size: 32, offset: 7936)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !587, file: !94, line: 504, baseType: !2002, size: 64, offset: 8000)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2005, line: 96, size: 192, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2006 = !{!2007, !2008, !2062, !2065}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2004, file: !2005, line: 97, baseType: !80, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2004, file: !2005, line: 98, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2005, line: 24, size: 3072, elements: !2011)
!2011 = !{!2012, !2014, !2015, !2016, !2017, !2031, !2032, !2033, !2034, !2046, !2047, !2048, !2059, !2060, !2061}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2010, file: !2005, line: 26, baseType: !2013, size: 128)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 128, elements: !35)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2010, file: !2005, line: 27, baseType: !2013, size: 128, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2010, file: !2005, line: 28, baseType: !175, size: 32, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2010, file: !2005, line: 31, baseType: !268, size: 32, align: 512, offset: 512)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2010, file: !2005, line: 32, baseType: !2018, size: 960, offset: 576)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2019, line: 206, size: 960, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2020 = !{!2021, !2022, !2025, !2027, !2028, !2030}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2018, file: !2019, line: 207, baseType: !730, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2018, file: !2019, line: 208, baseType: !2023, size: 256, offset: 64)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 256, elements: !810)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2018, file: !2019, line: 209, baseType: !2026, size: 256, offset: 320)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 256, elements: !810)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2018, file: !2019, line: 213, baseType: !672, size: 64, offset: 576)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2018, file: !2019, line: 215, baseType: !2029, size: 256, offset: 640)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 256, elements: !810)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2018, file: !2019, line: 216, baseType: !296, size: 8, offset: 896)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2010, file: !2005, line: 33, baseType: !370, size: 64, offset: 1536)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2010, file: !2005, line: 34, baseType: !370, size: 64, offset: 1600)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2010, file: !2005, line: 35, baseType: !942, size: 8, offset: 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2010, file: !2005, line: 36, baseType: !2035, size: 320, offset: 1728)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2036, line: 11, size: 320, elements: !2037)
!2036 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2037 = !{!2038, !2039, !2040, !2045}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2035, file: !2036, line: 16, baseType: !805, size: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2035, file: !2036, line: 17, baseType: !370, size: 64, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2035, file: !2036, line: 18, baseType: !2041, size: 64, offset: 192)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !2044}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2035, file: !2036, line: 19, baseType: !469, size: 32, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2010, file: !2005, line: 37, baseType: !1369, size: 256, offset: 2048)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2010, file: !2005, line: 38, baseType: !727, size: 128, align: 64, offset: 2304)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2010, file: !2005, line: 39, baseType: !2049, size: 64, offset: 2432)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2005, line: 49, size: 768, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2050, file: !2005, line: 50, baseType: !268, size: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2050, file: !2005, line: 51, baseType: !2026, size: 256, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2050, file: !2005, line: 53, baseType: !2026, size: 256, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2050, file: !2005, line: 54, baseType: !370, size: 64, offset: 576)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2050, file: !2005, line: 55, baseType: !2049, size: 64, offset: 640)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2050, file: !2005, line: 56, baseType: !175, size: 32, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2050, file: !2005, line: 57, baseType: !175, size: 32, offset: 736)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2010, file: !2005, line: 40, baseType: !370, size: 64, offset: 2496)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2010, file: !2005, line: 42, baseType: !175, size: 32, offset: 2560)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2010, file: !2005, line: 43, baseType: !2003, size: 64, offset: 2624)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2004, file: !2005, line: 99, baseType: !2063, offset: 128)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2064, line: 211, elements: !357)
!2064 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2004, file: !2005, line: 100, baseType: !2066, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2005, line: 63, size: 3008, elements: !2068)
!2068 = !{!2069, !2070, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2100}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2067, file: !2005, line: 64, baseType: !2049, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2067, file: !2005, line: 65, baseType: !2071, size: 192, offset: 64)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2049, size: 192, elements: !25)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2067, file: !2005, line: 67, baseType: !175, size: 32, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2067, file: !2005, line: 68, baseType: !749, size: 256, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2067, file: !2005, line: 69, baseType: !268, size: 32, offset: 576)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2067, file: !2005, line: 70, baseType: !749, size: 256, offset: 640)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2067, file: !2005, line: 71, baseType: !370, size: 64, offset: 896)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2067, file: !2005, line: 72, baseType: !370, size: 64, offset: 960)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2067, file: !2005, line: 73, baseType: !370, size: 64, offset: 1024)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2067, file: !2005, line: 74, baseType: !370, size: 64, offset: 1088)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2067, file: !2005, line: 75, baseType: !370, size: 64, offset: 1152)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2067, file: !2005, line: 76, baseType: !370, size: 64, offset: 1216)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2067, file: !2005, line: 77, baseType: !370, size: 64, offset: 1280)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2067, file: !2005, line: 78, baseType: !370, size: 64, offset: 1344)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2067, file: !2005, line: 79, baseType: !942, size: 8, offset: 1408)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2067, file: !2005, line: 80, baseType: !370, size: 64, offset: 1472)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2067, file: !2005, line: 81, baseType: !749, size: 256, offset: 1536)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2067, file: !2005, line: 82, baseType: !1791, size: 256, offset: 1792)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2067, file: !2005, line: 84, baseType: !288, size: 32, offset: 2048)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2067, file: !2005, line: 87, baseType: !370, size: 64, offset: 2112)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2067, file: !2005, line: 88, baseType: !370, size: 64, offset: 2176)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2067, file: !2005, line: 89, baseType: !2092, size: 704, offset: 2240)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1370, line: 111, size: 704, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2099}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2092, file: !1370, line: 112, baseType: !1369, size: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2092, file: !1370, line: 113, baseType: !2035, size: 320, offset: 256)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2092, file: !1370, line: 116, baseType: !2097, size: 64, offset: 576)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1370, line: 18, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2092, file: !1370, line: 117, baseType: !175, size: 32, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2067, file: !2005, line: 90, baseType: !2003, size: 64, offset: 2944)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !587, file: !94, line: 515, baseType: !2102, size: 64, offset: 8064)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2104, line: 117, size: 128, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2105 = !{!2106, !2107, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2103, file: !2104, line: 118, baseType: !871, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2103, file: !2104, line: 119, baseType: !871, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2103, file: !2104, line: 120, baseType: !672, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !587, file: !94, line: 516, baseType: !80, size: 32, offset: 8128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !587, file: !94, line: 519, baseType: !80, size: 32, offset: 8160)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !587, file: !94, line: 520, baseType: !2112, size: 64, offset: 8192)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !587, file: !94, line: 523, baseType: !2114, size: 64, offset: 8256)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !94, line: 523, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !587, file: !94, line: 524, baseType: !80, size: 32, offset: 8320)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !587, file: !94, line: 525, baseType: !2119, size: 64, offset: 8384)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !94, line: 525, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !587, file: !94, line: 526, baseType: !80, size: 32, offset: 8448)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !587, file: !94, line: 533, baseType: !235, size: 64, offset: 8512)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !587, file: !94, line: 534, baseType: !80, size: 32, offset: 8576)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !587, file: !94, line: 535, baseType: !2126, size: 64, offset: 8640)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !587, file: !94, line: 536, baseType: !80, size: 32, offset: 8704)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !587, file: !94, line: 539, baseType: !175, size: 32, offset: 8736)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !587, file: !94, line: 540, baseType: !2130, size: 64, offset: 8768)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2132, line: 32, size: 64, elements: !2133)
!2132 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2131, file: !2132, line: 33, baseType: !871, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2131, file: !2132, line: 34, baseType: !871, size: 32, offset: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !587, file: !94, line: 563, baseType: !381, size: 128, offset: 8832)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !587, file: !94, line: 565, baseType: !381, size: 128, offset: 8960)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !587, file: !94, line: 568, baseType: !2139, size: 64, offset: 9088)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !587, file: !94, line: 570, baseType: !288, size: 32, offset: 9152)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !563, file: !101, line: 2382, baseType: !562, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !563, file: !101, line: 2383, baseType: !801, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !563, file: !101, line: 2385, baseType: !2146, offset: 576)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2064, line: 206, elements: !357)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !563, file: !101, line: 2386, baseType: !2146, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !563, file: !101, line: 2387, baseType: !2146, offset: 576)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !563, file: !101, line: 2388, baseType: !2150, offset: 576)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2146, elements: !25)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !563, file: !101, line: 2390, baseType: !2146, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !563, file: !101, line: 2391, baseType: !2146, offset: 576)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !563, file: !101, line: 2392, baseType: !2146, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !563, file: !101, line: 2393, baseType: !2146, offset: 576)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !549, file: !101, line: 1197, baseType: !2156, size: 64, offset: 384)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !101, line: 2057, size: 1664, elements: !2159)
!2159 = !{!2160, !2164, !2168, !2169, !2173, !2179, !2183, !2184, !2185, !2189, !2193, !2197, !2198, !2199, !2205, !2209, !2210, !2214, !2215, !2216, !2217, !2221, !2225, !2272, !2287, !2288}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2158, file: !101, line: 2058, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!398, !548}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2158, file: !101, line: 2059, baseType: !2165, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !398}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2158, file: !101, line: 2060, baseType: !2165, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2158, file: !101, line: 2062, baseType: !2170, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !398, !175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2158, file: !101, line: 2063, baseType: !2174, size: 64, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!175, !398, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !101, line: 309, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2158, file: !101, line: 2064, baseType: !2180, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!175, !398}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2158, file: !101, line: 2065, baseType: !2165, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2158, file: !101, line: 2066, baseType: !582, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2158, file: !101, line: 2067, baseType: !2186, size: 64, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!175, !548, !175}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2158, file: !101, line: 2068, baseType: !2190, size: 64, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!175, !548, !100}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2158, file: !101, line: 2069, baseType: !2194, size: 64, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!175, !548}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2158, file: !101, line: 2070, baseType: !2190, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2158, file: !101, line: 2071, baseType: !2194, size: 64, offset: 768)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2158, file: !101, line: 2072, baseType: !2200, size: 64, offset: 832)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!175, !435, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !101, line: 62, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2158, file: !101, line: 2073, baseType: !2206, size: 64, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!175, !548, !1935, !537}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2158, file: !101, line: 2074, baseType: !582, size: 64, offset: 960)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2158, file: !101, line: 2076, baseType: !2211, size: 64, offset: 1024)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!175, !1586, !435}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2158, file: !101, line: 2077, baseType: !2211, size: 64, offset: 1088)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2158, file: !101, line: 2078, baseType: !2211, size: 64, offset: 1152)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2158, file: !101, line: 2079, baseType: !2211, size: 64, offset: 1216)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2158, file: !101, line: 2081, baseType: !2218, size: 64, offset: 1280)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!669, !548, !175, !537, !682, !558}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2158, file: !101, line: 2082, baseType: !2222, size: 64, offset: 1344)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!669, !548, !175, !512, !682, !558}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2158, file: !101, line: 2083, baseType: !2226, size: 64, offset: 1408)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2229, !398}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !106, line: 296, size: 1664, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2257, !2258, !2259}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2231, file: !106, line: 297, baseType: !805, size: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2231, file: !106, line: 298, baseType: !381, size: 128, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2231, file: !106, line: 299, baseType: !381, size: 128, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2231, file: !106, line: 300, baseType: !381, size: 128, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2231, file: !106, line: 301, baseType: !749, size: 256, offset: 512)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2231, file: !106, line: 302, baseType: !268, size: 32, offset: 768)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2231, file: !106, line: 303, baseType: !288, size: 32, offset: 800)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2231, file: !106, line: 304, baseType: !548, size: 64, offset: 832)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2231, file: !106, line: 305, baseType: !2242, size: 64, offset: 896)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !106, line: 68, size: 64, elements: !2243)
!2243 = !{!2244, !2256}
!2244 = !DIDerivedType(tag: DW_TAG_member, scope: !2242, file: !106, line: 69, baseType: !2245, size: 32)
!2245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2242, file: !106, line: 69, size: 32, elements: !2246)
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2245, file: !106, line: 70, baseType: !405, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2245, file: !106, line: 71, baseType: !415, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2245, file: !106, line: 72, baseType: !2250, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2251, line: 24, baseType: !2252)
!2251 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2251, line: 22, size: 32, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2252, file: !2251, line: 23, baseType: !2255, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2251, line: 20, baseType: !411)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2242, file: !106, line: 74, baseType: !105, size: 32, offset: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2231, file: !106, line: 306, baseType: !558, size: 64, offset: 960)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2231, file: !106, line: 307, baseType: !370, size: 64, offset: 1024)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2231, file: !106, line: 308, baseType: !2260, size: 576, offset: 1088)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !106, line: 205, size: 576, elements: !2261)
!2261 = !{!2262, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2260, file: !106, line: 206, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !106, line: 66, baseType: !560)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2260, file: !106, line: 207, baseType: !2263, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2260, file: !106, line: 208, baseType: !2263, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2260, file: !106, line: 209, baseType: !2263, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2260, file: !106, line: 210, baseType: !2263, size: 64, offset: 256)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2260, file: !106, line: 211, baseType: !2263, size: 64, offset: 320)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2260, file: !106, line: 212, baseType: !2263, size: 64, offset: 384)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2260, file: !106, line: 213, baseType: !902, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2260, file: !106, line: 214, baseType: !902, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2158, file: !101, line: 2085, baseType: !2273, size: 64, offset: 1472)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!672, !548, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2278, line: 15, size: 256, elements: !2279)
!2278 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2279 = !{!2280, !2281, !2282, !2283, !2284}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2277, file: !2278, line: 16, baseType: !308, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2277, file: !2278, line: 19, baseType: !175, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2277, file: !2278, line: 26, baseType: !370, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2277, file: !2278, line: 33, baseType: !370, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2277, file: !2278, line: 36, baseType: !2285, size: 64, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2278, line: 36, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2158, file: !101, line: 2087, baseType: !2273, size: 64, offset: 1536)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2158, file: !101, line: 2089, baseType: !582, size: 64, offset: 1600)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !549, file: !101, line: 1198, baseType: !2290, size: 64, offset: 448)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !106, line: 324, size: 704, elements: !2293)
!2293 = !{!2294, !2298, !2302, !2306, !2307, !2308, !2309, !2310, !2315, !2320, !2324}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2292, file: !106, line: 325, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!175, !2230}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2292, file: !106, line: 326, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!2230, !548, !175}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2292, file: !106, line: 327, baseType: !2303, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !2230}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2292, file: !106, line: 328, baseType: !2295, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2292, file: !106, line: 329, baseType: !2295, size: 64, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2292, file: !106, line: 330, baseType: !2295, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2292, file: !106, line: 331, baseType: !2186, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2292, file: !106, line: 334, baseType: !2311, size: 64, offset: 448)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2314, !398}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2292, file: !106, line: 335, baseType: !2316, size: 64, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!175, !398, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2292, file: !106, line: 337, baseType: !2321, size: 64, offset: 576)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!175, !398, !2314}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2292, file: !106, line: 339, baseType: !2325, size: 64, offset: 640)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!175, !548, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !549, file: !101, line: 1199, baseType: !2330, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2332)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !106, line: 430, size: 704, elements: !2333)
!2333 = !{!2334, !2340, !2341, !2345, !2346, !2347, !2362, !2385, !2389, !2390, !2413}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2332, file: !106, line: 431, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!175, !548, !175, !175, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1054)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2332, file: !106, line: 432, baseType: !2186, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2332, file: !106, line: 433, baseType: !2342, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!175, !548, !80}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2332, file: !106, line: 434, baseType: !2342, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2332, file: !106, line: 435, baseType: !2186, size: 64, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2332, file: !106, line: 436, baseType: !2348, size: 64, offset: 320)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!175, !548, !175, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !106, line: 417, size: 256, elements: !2353)
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2352, file: !106, line: 418, baseType: !175, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2352, file: !106, line: 419, baseType: !80, size: 32, offset: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2352, file: !106, line: 420, baseType: !80, size: 32, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2352, file: !106, line: 422, baseType: !80, size: 32, offset: 96)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2352, file: !106, line: 423, baseType: !80, size: 32, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2352, file: !106, line: 424, baseType: !80, size: 32, offset: 160)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2352, file: !106, line: 425, baseType: !80, size: 32, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2352, file: !106, line: 426, baseType: !80, size: 32, offset: 224)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2332, file: !106, line: 437, baseType: !2363, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!175, !548, !2242, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !106, line: 345, size: 960, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2367, file: !106, line: 346, baseType: !175, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2367, file: !106, line: 347, baseType: !243, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2367, file: !106, line: 348, baseType: !243, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2367, file: !106, line: 349, baseType: !243, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2367, file: !106, line: 350, baseType: !243, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2367, file: !106, line: 351, baseType: !243, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2367, file: !106, line: 352, baseType: !243, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2367, file: !106, line: 353, baseType: !746, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2367, file: !106, line: 355, baseType: !746, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2367, file: !106, line: 356, baseType: !175, size: 32, offset: 576)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2367, file: !106, line: 357, baseType: !175, size: 32, offset: 608)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2367, file: !106, line: 358, baseType: !243, size: 64, offset: 640)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2367, file: !106, line: 359, baseType: !243, size: 64, offset: 704)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2367, file: !106, line: 360, baseType: !243, size: 64, offset: 768)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2367, file: !106, line: 361, baseType: !746, size: 64, offset: 832)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2367, file: !106, line: 362, baseType: !175, size: 32, offset: 896)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2332, file: !106, line: 438, baseType: !2386, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!175, !548, !2328, !2366}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2332, file: !106, line: 440, baseType: !2363, size: 64, offset: 512)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2332, file: !106, line: 441, baseType: !2391, size: 64, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!175, !548, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !106, line: 411, size: 1408, elements: !2396)
!2396 = !{!2397, !2398}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2395, file: !106, line: 412, baseType: !80, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2395, file: !106, line: 413, baseType: !2399, size: 1344, offset: 64)
!2399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2400, size: 1344, elements: !25)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !106, line: 397, size: 448, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2412}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2400, file: !106, line: 398, baseType: !80, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2400, file: !106, line: 399, baseType: !80, size: 32, offset: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2400, file: !106, line: 401, baseType: !80, size: 32, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2400, file: !106, line: 402, baseType: !80, size: 32, offset: 96)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2400, file: !106, line: 403, baseType: !80, size: 32, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2400, file: !106, line: 404, baseType: !80, size: 32, offset: 160)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2400, file: !106, line: 405, baseType: !80, size: 32, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2400, file: !106, line: 406, baseType: !247, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2400, file: !106, line: 407, baseType: !2411, size: 64, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !242, line: 132, baseType: !243)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2400, file: !106, line: 408, baseType: !2411, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2332, file: !106, line: 442, baseType: !2342, size: 64, offset: 640)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !549, file: !101, line: 1200, baseType: !2415, size: 64, offset: 576)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2417)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !101, line: 54, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !549, file: !101, line: 1201, baseType: !370, size: 64, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !549, file: !101, line: 1202, baseType: !370, size: 64, offset: 704)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !549, file: !101, line: 1203, baseType: !370, size: 64, offset: 768)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !549, file: !101, line: 1204, baseType: !435, size: 64, offset: 832)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !549, file: !101, line: 1205, baseType: !886, size: 320, offset: 896)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !549, file: !101, line: 1206, baseType: !175, size: 32, offset: 1216)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !549, file: !101, line: 1207, baseType: !288, size: 32, offset: 1248)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !549, file: !101, line: 1209, baseType: !235, size: 64, offset: 1280)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !549, file: !101, line: 1211, baseType: !2427, size: 64, offset: 1344)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2430)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !101, line: 1211, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !549, file: !101, line: 1223, baseType: !2432, size: 64, offset: 1408)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !452, line: 34, size: 64, elements: !2433)
!2433 = !{!2434}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2432, file: !452, line: 35, baseType: !455, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !549, file: !101, line: 1224, baseType: !381, size: 128, offset: 1472)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !549, file: !101, line: 1225, baseType: !236, size: 64, offset: 1600)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !549, file: !101, line: 1226, baseType: !2438, size: 64, offset: 1664)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !143, line: 1495, size: 128, elements: !2440)
!2440 = !{!2441, !2442}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2439, file: !143, line: 1496, baseType: !236, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !2439, file: !143, line: 1497, baseType: !235, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !549, file: !101, line: 1227, baseType: !2444, size: 64, offset: 1728)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !101, line: 50, flags: DIFlagFwdDecl)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !549, file: !101, line: 1228, baseType: !2447, size: 64, offset: 1792)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !101, line: 1228, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !549, file: !101, line: 1229, baseType: !805, size: 128, offset: 1856)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !549, file: !101, line: 1230, baseType: !80, size: 32, offset: 1984)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !549, file: !101, line: 1231, baseType: !2452, size: 2496, offset: 2048)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !106, line: 521, size: 2496, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2458, !2490}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2452, file: !106, line: 522, baseType: !80, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2452, file: !106, line: 523, baseType: !886, size: 320, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2452, file: !106, line: 524, baseType: !2457, size: 192, offset: 384)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 192, elements: !25)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2452, file: !106, line: 525, baseType: !2459, size: 1728, offset: 576)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2460, size: 1728, elements: !25)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !106, line: 222, size: 576, elements: !2461)
!2461 = !{!2462, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2460, file: !106, line: 223, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !106, line: 445, size: 256, elements: !2465)
!2465 = !{!2466, !2467, !2480, !2481}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2464, file: !106, line: 446, baseType: !175, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2464, file: !106, line: 447, baseType: !2468, size: 64, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2470)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !106, line: 312, size: 512, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2470, file: !106, line: 313, baseType: !2186, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2470, file: !106, line: 314, baseType: !2186, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2470, file: !106, line: 315, baseType: !2186, size: 64, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2470, file: !106, line: 316, baseType: !2186, size: 64, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2470, file: !106, line: 317, baseType: !2295, size: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2470, file: !106, line: 318, baseType: !2295, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2470, file: !106, line: 319, baseType: !2295, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2470, file: !106, line: 320, baseType: !2325, size: 64, offset: 448)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2464, file: !106, line: 448, baseType: !586, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2464, file: !106, line: 449, baseType: !2463, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2460, file: !106, line: 224, baseType: !175, size: 32, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2460, file: !106, line: 226, baseType: !381, size: 128, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2460, file: !106, line: 227, baseType: !370, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2460, file: !106, line: 228, baseType: !80, size: 32, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2460, file: !106, line: 229, baseType: !80, size: 32, offset: 352)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2460, file: !106, line: 230, baseType: !2263, size: 64, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2460, file: !106, line: 231, baseType: !2263, size: 64, offset: 448)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2460, file: !106, line: 232, baseType: !235, size: 64, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2452, file: !106, line: 526, baseType: !2491, size: 192, offset: 2304)
!2491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2468, size: 192, elements: !25)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !549, file: !101, line: 1233, baseType: !2493, size: 2368, offset: 4544)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !101, line: 1184, size: 2368, elements: !2494)
!2494 = !{!2495, !2496, !2497}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2493, file: !101, line: 1185, baseType: !261, size: 16)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2493, file: !101, line: 1186, baseType: !261, size: 16, offset: 16)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2493, file: !101, line: 1187, baseType: !2498, size: 2304, offset: 64)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2499, size: 2304, elements: !25)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2500, line: 12, size: 768, elements: !2501)
!2500 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2501 = !{!2502, !2510, !2511, !3695, !3696}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2499, file: !2500, line: 13, baseType: !2503, size: 384)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2504, line: 17, size: 384, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2503, file: !2504, line: 18, baseType: !175, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2503, file: !2504, line: 19, baseType: !175, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2503, file: !2504, line: 20, baseType: !814, size: 192, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2503, file: !2504, line: 22, baseType: !727, size: 128, align: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2499, file: !2500, line: 14, baseType: !1889, size: 64, offset: 384)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2499, file: !2500, line: 15, baseType: !2512, size: 64, offset: 448)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2513, line: 16, size: 64, elements: !2514)
!2513 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2514 = !{!2515}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2512, file: !2513, line: 17, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1563, line: 746, size: 58368, elements: !2518)
!2518 = !{!2519, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2599, !2610, !2700, !2704, !2707, !2738, !2739, !2740, !2741, !2750, !2752, !2753, !2754, !2755, !2756, !2757, !2768, !2769, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2786, !2787, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2875, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2923, !2929, !2930, !2931, !2932, !2933, !2937, !2940, !2947, !2952, !2955, !2958, !2961, !2964, !3102, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3140, !3141, !3142, !3151, !3159, !3160, !3161, !3162, !3163, !3168, !3169, !3170, !3173, !3174, !3181, !3192, !3195, !3203, !3206, !3207, !3292, !3293, !3294, !3295, !3296, !3302, !3303, !3304, !3305, !3308, !3309, !3312, !3315, !3316, !3319, !3320, !3321, !3324, !3325, !3326, !3327, !3328, !3329, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3361, !3362, !3368, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3450, !3452, !3453, !3454, !3455, !3456, !3457, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3474, !3475, !3476}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2517, file: !1563, line: 752, baseType: !2520, size: 192)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2521, line: 56, size: 192, elements: !2522)
!2521 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2522 = !{!2523, !2524, !2525, !2526}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2520, file: !2521, line: 57, baseType: !370, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2520, file: !2521, line: 58, baseType: !370, size: 64, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2520, file: !2521, line: 59, baseType: !469, size: 32, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2520, file: !2521, line: 61, baseType: !469, size: 32, offset: 160)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2517, file: !1563, line: 754, baseType: !80, size: 32, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2517, file: !1563, line: 767, baseType: !235, size: 64, offset: 256)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2517, file: !1563, line: 768, baseType: !792, size: 32, offset: 320)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2517, file: !1563, line: 770, baseType: !80, size: 32, offset: 352)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2517, file: !1563, line: 771, baseType: !80, size: 32, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2517, file: !1563, line: 774, baseType: !175, size: 32, offset: 416)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2517, file: !1563, line: 775, baseType: !2534, size: 128, offset: 448)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2535, line: 58, size: 128, elements: !2536)
!2535 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2536 = !{!2537, !2538, !2543, !2544}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2534, file: !2535, line: 59, baseType: !721, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, scope: !2534, file: !2535, line: 60, baseType: !2539, size: 32, offset: 64)
!2539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2534, file: !2535, line: 60, size: 32, elements: !2540)
!2540 = !{!2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2539, file: !2535, line: 61, baseType: !80, size: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2539, file: !2535, line: 62, baseType: !288, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2534, file: !2535, line: 65, baseType: !304, size: 16, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2534, file: !2535, line: 65, baseType: !304, size: 16, offset: 112)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2517, file: !1563, line: 776, baseType: !80, size: 32, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2517, file: !1563, line: 777, baseType: !370, size: 64, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2517, file: !1563, line: 778, baseType: !2516, size: 64, offset: 704)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2517, file: !1563, line: 787, baseType: !175, size: 32, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2517, file: !1563, line: 788, baseType: !175, size: 32, offset: 800)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2517, file: !1563, line: 790, baseType: !175, size: 32, offset: 832)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2517, file: !1563, line: 792, baseType: !175, size: 32, offset: 864)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2517, file: !1563, line: 793, baseType: !175, size: 32, offset: 896)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2517, file: !1563, line: 794, baseType: !175, size: 32, offset: 928)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2517, file: !1563, line: 795, baseType: !80, size: 32, offset: 960)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2517, file: !1563, line: 797, baseType: !2556, size: 2048, offset: 1024)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1563, line: 551, size: 2048, elements: !2557)
!2557 = !{!2558, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2578, !2581, !2582, !2583}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2556, file: !1563, line: 553, baseType: !2559, size: 128)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1563, line: 411, size: 128, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2559, file: !1563, line: 412, baseType: !370, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2559, file: !1563, line: 413, baseType: !469, size: 32, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2556, file: !1563, line: 554, baseType: !878, size: 192, align: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2556, file: !1563, line: 555, baseType: !243, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2556, file: !1563, line: 556, baseType: !243, size: 64, offset: 384)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2556, file: !1563, line: 558, baseType: !381, size: 128, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2556, file: !1563, line: 559, baseType: !80, size: 32, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2556, file: !1563, line: 561, baseType: !243, size: 64, offset: 640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2556, file: !1563, line: 562, baseType: !243, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2556, file: !1563, line: 563, baseType: !243, size: 64, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2556, file: !1563, line: 564, baseType: !243, size: 64, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2556, file: !1563, line: 565, baseType: !746, size: 64, offset: 896)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2556, file: !1563, line: 566, baseType: !243, size: 64, offset: 960)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2556, file: !1563, line: 568, baseType: !243, size: 64, offset: 1024)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2556, file: !1563, line: 571, baseType: !175, size: 32, offset: 1088)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2556, file: !1563, line: 572, baseType: !2577, size: 64, offset: 1152)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2556, file: !1563, line: 574, baseType: !2579, size: 64, offset: 1216)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1563, line: 49, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2556, file: !1563, line: 576, baseType: !2579, size: 64, offset: 1280)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2556, file: !1563, line: 578, baseType: !370, size: 64, offset: 1344)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2556, file: !1563, line: 588, baseType: !2584, size: 512, align: 512, offset: 1536)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1563, line: 497, size: 512, align: 512, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2584, file: !1563, line: 498, baseType: !243, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2584, file: !1563, line: 499, baseType: !243, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2584, file: !1563, line: 500, baseType: !243, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2584, file: !1563, line: 501, baseType: !469, size: 32, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2584, file: !1563, line: 502, baseType: !469, size: 32, offset: 224)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2584, file: !1563, line: 503, baseType: !370, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2584, file: !1563, line: 504, baseType: !370, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2584, file: !1563, line: 505, baseType: !370, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2584, file: !1563, line: 506, baseType: !2595, size: 64, align: 64, offset: 448)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1563, line: 445, size: 64, align: 64, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2595, file: !1563, line: 446, baseType: !80, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2595, file: !1563, line: 447, baseType: !80, size: 32, offset: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2517, file: !1563, line: 798, baseType: !2600, size: 384, offset: 3072)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1563, line: 592, size: 384, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2600, file: !1563, line: 593, baseType: !381, size: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2600, file: !1563, line: 594, baseType: !370, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2600, file: !1563, line: 595, baseType: !370, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2600, file: !1563, line: 596, baseType: !80, size: 32, offset: 256)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2600, file: !1563, line: 597, baseType: !261, size: 16, offset: 288)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2600, file: !1563, line: 598, baseType: !261, size: 16, offset: 304)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2600, file: !1563, line: 600, baseType: !2609, size: 64, offset: 320)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2517, file: !1563, line: 799, baseType: !2611, size: 1792, offset: 3456)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1563, line: 610, size: 1792, elements: !2612)
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2697, !2698}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2611, file: !1563, line: 611, baseType: !878, size: 192, align: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2611, file: !1563, line: 618, baseType: !243, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2611, file: !1563, line: 619, baseType: !243, size: 64, offset: 256)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2611, file: !1563, line: 620, baseType: !243, size: 64, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2611, file: !1563, line: 621, baseType: !243, size: 64, offset: 384)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2611, file: !1563, line: 622, baseType: !243, size: 64, offset: 448)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2611, file: !1563, line: 629, baseType: !746, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2611, file: !1563, line: 630, baseType: !243, size: 64, offset: 576)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2611, file: !1563, line: 631, baseType: !80, size: 32, offset: 640)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2611, file: !1563, line: 653, baseType: !80, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2611, file: !1563, line: 654, baseType: !80, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2611, file: !1563, line: 655, baseType: !80, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2611, file: !1563, line: 656, baseType: !80, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2611, file: !1563, line: 662, baseType: !2627, size: 512, offset: 704)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !162, line: 118, size: 512, elements: !2628)
!2628 = !{!2629, !2637, !2638, !2643, !2693, !2694, !2695, !2696}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2627, file: !162, line: 119, baseType: !2630, size: 256)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2631, line: 9, size: 256, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2630, file: !2631, line: 10, baseType: !878, size: 192, align: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2630, file: !2631, line: 11, baseType: !2635, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2636, line: 29, baseType: !746)
!2636 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2627, file: !162, line: 120, baseType: !2635, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2627, file: !162, line: 121, baseType: !2639, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!161, !2642}
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2627, file: !162, line: 122, baseType: !2644, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !162, line: 159, size: 512, align: 512, elements: !2646)
!2646 = !{!2647, !2670, !2671, !2674, !2679, !2680, !2688, !2692}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2645, file: !162, line: 160, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !162, line: 215, size: 4608, align: 512, elements: !2650)
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2649, file: !162, line: 216, baseType: !754, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2649, file: !162, line: 217, baseType: !80, size: 32, offset: 32)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2649, file: !162, line: 218, baseType: !80, size: 32, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2649, file: !162, line: 219, baseType: !80, size: 32, offset: 96)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2649, file: !162, line: 220, baseType: !80, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2649, file: !162, line: 221, baseType: !80, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2649, file: !162, line: 222, baseType: !80, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2649, file: !162, line: 223, baseType: !80, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2649, file: !162, line: 224, baseType: !80, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2649, file: !162, line: 226, baseType: !80, size: 32, offset: 160)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2649, file: !162, line: 227, baseType: !261, size: 16, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2649, file: !162, line: 228, baseType: !261, size: 16, offset: 208)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2649, file: !162, line: 229, baseType: !80, size: 32, offset: 224)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2649, file: !162, line: 235, baseType: !2635, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2649, file: !162, line: 236, baseType: !2642, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2649, file: !162, line: 237, baseType: !2635, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2649, file: !162, line: 238, baseType: !2642, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2649, file: !162, line: 239, baseType: !2669, size: 4096, align: 512, offset: 512)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2645, size: 4096, align: 512, elements: !60)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2645, file: !162, line: 161, baseType: !80, size: 32, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2645, file: !162, line: 162, baseType: !2672, size: 32, offset: 96)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !242, line: 32, baseType: !2673)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !412, line: 96, baseType: !175)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2645, file: !162, line: 163, baseType: !2675, size: 32, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !442, line: 274, baseType: !2676)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !442, line: 274, size: 32, elements: !2677)
!2677 = !{!2678}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2676, file: !442, line: 274, baseType: !446, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2645, file: !162, line: 164, baseType: !2642, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2645, file: !162, line: 165, baseType: !2681, size: 128, offset: 256)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2631, line: 14, size: 128, elements: !2682)
!2682 = !{!2683}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2681, file: !2631, line: 15, baseType: !2684, size: 128)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !879, line: 26, size: 128, elements: !2685)
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2684, file: !879, line: 27, baseType: !1687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2684, file: !879, line: 28, baseType: !883, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2645, file: !162, line: 166, baseType: !2689, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!2635}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2645, file: !162, line: 167, baseType: !2635, size: 64, offset: 448)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2627, file: !162, line: 123, baseType: !296, size: 8, offset: 448)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2627, file: !162, line: 124, baseType: !296, size: 8, offset: 456)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2627, file: !162, line: 125, baseType: !296, size: 8, offset: 464)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2627, file: !162, line: 126, baseType: !296, size: 8, offset: 472)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2611, file: !1563, line: 671, baseType: !2627, size: 512, offset: 1216)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2611, file: !1563, line: 679, baseType: !2699, size: 64, offset: 1728)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2517, file: !1563, line: 800, baseType: !2701, size: 64, offset: 5248)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2703)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1563, line: 800, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2517, file: !1563, line: 809, baseType: !2705, size: 64, offset: 5312)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1563, line: 70, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2517, file: !1563, line: 825, baseType: !2708, size: 2048, align: 512, offset: 5632)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1563, line: 509, size: 2048, align: 512, elements: !2709)
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2708, file: !1563, line: 511, baseType: !243, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2708, file: !1563, line: 512, baseType: !243, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2708, file: !1563, line: 513, baseType: !243, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2708, file: !1563, line: 514, baseType: !243, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2708, file: !1563, line: 515, baseType: !243, size: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2708, file: !1563, line: 516, baseType: !243, size: 64, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2708, file: !1563, line: 518, baseType: !243, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2708, file: !1563, line: 519, baseType: !243, size: 64, offset: 448)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2708, file: !1563, line: 520, baseType: !746, size: 64, offset: 512)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2708, file: !1563, line: 522, baseType: !243, size: 64, offset: 576)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2708, file: !1563, line: 523, baseType: !243, size: 64, offset: 640)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2708, file: !1563, line: 524, baseType: !746, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2708, file: !1563, line: 526, baseType: !746, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2708, file: !1563, line: 527, baseType: !243, size: 64, offset: 832)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2708, file: !1563, line: 529, baseType: !243, size: 64, offset: 896)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2708, file: !1563, line: 530, baseType: !243, size: 64, offset: 960)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2708, file: !1563, line: 531, baseType: !243, size: 64, offset: 1024)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2708, file: !1563, line: 532, baseType: !243, size: 64, offset: 1088)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2708, file: !1563, line: 533, baseType: !243, size: 64, offset: 1152)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2708, file: !1563, line: 535, baseType: !243, size: 64, offset: 1216)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2708, file: !1563, line: 536, baseType: !243, size: 64, offset: 1280)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2708, file: !1563, line: 537, baseType: !243, size: 64, offset: 1344)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2708, file: !1563, line: 538, baseType: !243, size: 64, offset: 1408)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2708, file: !1563, line: 539, baseType: !243, size: 64, offset: 1472)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2708, file: !1563, line: 540, baseType: !243, size: 64, offset: 1536)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2708, file: !1563, line: 541, baseType: !243, size: 64, offset: 1600)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2708, file: !1563, line: 542, baseType: !243, size: 64, offset: 1664)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2708, file: !1563, line: 543, baseType: !243, size: 64, offset: 1728)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2517, file: !1563, line: 833, baseType: !80, size: 32, offset: 7680)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2517, file: !1563, line: 836, baseType: !80, size: 32, offset: 7712)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2517, file: !1563, line: 837, baseType: !175, size: 32, offset: 7744)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2517, file: !1563, line: 838, baseType: !2742, size: 64, offset: 7808)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2745, line: 19, baseType: !2746)
!2745 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2745, line: 19, size: 64, elements: !2747)
!2747 = !{!2748}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2746, file: !2745, line: 19, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 64, elements: !30)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2517, file: !1563, line: 839, baseType: !2751, size: 64, offset: 7872)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2517, file: !1563, line: 840, baseType: !2744, size: 64, offset: 7936)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2517, file: !1563, line: 841, baseType: !235, size: 64, offset: 8000)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2517, file: !1563, line: 843, baseType: !261, size: 16, offset: 8064)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2517, file: !1563, line: 845, baseType: !261, size: 16, offset: 8080)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2517, file: !1563, line: 848, baseType: !175, size: 32, offset: 8096)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2517, file: !1563, line: 849, baseType: !2758, size: 32, offset: 8128)
!2758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1563, line: 718, size: 32, elements: !2759)
!2759 = !{!2760, !2767}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2758, file: !1563, line: 724, baseType: !2761, size: 32)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !1563, line: 719, size: 32, elements: !2762)
!2762 = !{!2763, !2764, !2765, !2766}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2761, file: !1563, line: 720, baseType: !296, size: 8)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2761, file: !1563, line: 721, baseType: !296, size: 8, offset: 8)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2761, file: !1563, line: 722, baseType: !296, size: 8, offset: 16)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2761, file: !1563, line: 723, baseType: !296, size: 8, offset: 24)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2758, file: !1563, line: 725, baseType: !469, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2517, file: !1563, line: 850, baseType: !381, size: 128, offset: 8192)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2517, file: !1563, line: 851, baseType: !2770, size: 64, offset: 8320)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1563, line: 60, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2517, file: !1563, line: 855, baseType: !370, size: 64, offset: 8384)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2517, file: !1563, line: 856, baseType: !296, size: 8, offset: 8448)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2517, file: !1563, line: 857, baseType: !296, size: 8, offset: 8456)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2517, file: !1563, line: 858, baseType: !175, size: 32, offset: 8480)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2517, file: !1563, line: 859, baseType: !381, size: 128, offset: 8512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2517, file: !1563, line: 860, baseType: !175, size: 32, offset: 8640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2517, file: !1563, line: 861, baseType: !381, size: 128, offset: 8704)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2517, file: !1563, line: 873, baseType: !2780, size: 256, offset: 8832)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1563, line: 376, size: 256, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2780, file: !1563, line: 381, baseType: !370, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2780, file: !1563, line: 384, baseType: !247, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2780, file: !1563, line: 389, baseType: !247, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2780, file: !1563, line: 392, baseType: !247, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2517, file: !1563, line: 875, baseType: !381, size: 128, offset: 9088)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2517, file: !1563, line: 877, baseType: !2788, size: 320, offset: 9216)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2789, line: 86, size: 320, elements: !2790)
!2789 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2790 = !{!2791, !2792, !2793}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2788, file: !2789, line: 87, baseType: !175, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2788, file: !2789, line: 88, baseType: !381, size: 128, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2788, file: !2789, line: 89, baseType: !381, size: 128, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2517, file: !1563, line: 878, baseType: !878, size: 192, align: 64, offset: 9536)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2517, file: !1563, line: 881, baseType: !1215, size: 64, offset: 9728)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2517, file: !1563, line: 882, baseType: !1215, size: 64, offset: 9792)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2517, file: !1563, line: 884, baseType: !175, size: 32, offset: 9856)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2517, file: !1563, line: 885, baseType: !175, size: 32, offset: 9888)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2517, file: !1563, line: 886, baseType: !175, size: 32, offset: 9920)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2517, file: !1563, line: 888, baseType: !175, size: 32, offset: 9952)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2517, file: !1563, line: 890, baseType: !370, size: 64, offset: 9984)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2517, file: !1563, line: 893, baseType: !80, size: 32, offset: 10048)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2517, file: !1563, line: 896, baseType: !80, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2517, file: !1563, line: 897, baseType: !80, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2517, file: !1563, line: 898, baseType: !80, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2517, file: !1563, line: 899, baseType: !80, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2517, file: !1563, line: 919, baseType: !80, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2517, file: !1563, line: 922, baseType: !80, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2517, file: !1563, line: 923, baseType: !80, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2517, file: !1563, line: 925, baseType: !80, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2517, file: !1563, line: 939, baseType: !80, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2517, file: !1563, line: 941, baseType: !80, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2517, file: !1563, line: 944, baseType: !80, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2517, file: !1563, line: 956, baseType: !80, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2517, file: !1563, line: 962, baseType: !80, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2517, file: !1563, line: 966, baseType: !80, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2517, file: !1563, line: 969, baseType: !370, size: 64, offset: 10176)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2517, file: !1563, line: 971, baseType: !2819, size: 448, offset: 10240)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !217, line: 25, size: 448, elements: !2820)
!2820 = !{!2821, !2822, !2827}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2819, file: !217, line: 26, baseType: !370, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2819, file: !217, line: 27, baseType: !2823, size: 64, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!672, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2819, file: !217, line: 28, baseType: !2828, size: 320, offset: 128)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2819, file: !217, line: 28, size: 320, elements: !2829)
!2829 = !{!2830, !2840, !2865}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2828, file: !217, line: 37, baseType: !2831, size: 320)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2828, file: !217, line: 30, size: 320, elements: !2832)
!2832 = !{!2833, !2835, !2836, !2837, !2838, !2839}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2831, file: !217, line: 31, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2831, file: !217, line: 32, baseType: !469, size: 32, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2831, file: !217, line: 33, baseType: !469, size: 32, offset: 96)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2831, file: !217, line: 34, baseType: !469, size: 32, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2831, file: !217, line: 35, baseType: !243, size: 64, offset: 192)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2831, file: !217, line: 36, baseType: !2834, size: 64, offset: 256)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2828, file: !217, line: 47, baseType: !2841, size: 192)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2828, file: !217, line: 39, size: 192, elements: !2842)
!2842 = !{!2843, !2844, !2845, !2864}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2841, file: !217, line: 40, baseType: !2672, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2841, file: !217, line: 41, baseType: !216, size: 32, offset: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !217, line: 42, baseType: !2846, size: 64, offset: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2841, file: !217, line: 42, size: 64, elements: !2847)
!2847 = !{!2848, !2856}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2846, file: !217, line: 43, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2851, line: 7, size: 128, elements: !2852)
!2851 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2852 = !{!2853, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2850, file: !2851, line: 8, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !412, line: 93, baseType: !560)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2850, file: !2851, line: 9, baseType: !560, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2846, file: !217, line: 44, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2859, line: 7, size: 64, elements: !2860)
!2859 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2860 = !{!2861, !2863}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2858, file: !2859, line: 8, baseType: !2862, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2859, line: 5, baseType: !871)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2858, file: !2859, line: 9, baseType: !871, size: 32, offset: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2841, file: !217, line: 46, baseType: !243, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2828, file: !217, line: 55, baseType: !2866, size: 256)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2828, file: !217, line: 49, size: 256, elements: !2867)
!2867 = !{!2868, !2871, !2872, !2873, !2874}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2866, file: !217, line: 50, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !217, line: 14, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2866, file: !217, line: 51, baseType: !175, size: 32, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2866, file: !217, line: 52, baseType: !175, size: 32, offset: 96)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2866, file: !217, line: 53, baseType: !370, size: 64, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2866, file: !217, line: 54, baseType: !370, size: 64, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2517, file: !1563, line: 973, baseType: !2876, size: 32, offset: 10688)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !242, line: 27, baseType: !2877)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !412, line: 28, baseType: !175)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2517, file: !1563, line: 974, baseType: !2876, size: 32, offset: 10720)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2517, file: !1563, line: 978, baseType: !370, size: 64, offset: 10752)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2517, file: !1563, line: 987, baseType: !2516, size: 64, offset: 10816)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2517, file: !1563, line: 990, baseType: !2516, size: 64, offset: 10880)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2517, file: !1563, line: 995, baseType: !381, size: 128, offset: 10944)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2517, file: !1563, line: 996, baseType: !381, size: 128, offset: 11072)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2517, file: !1563, line: 997, baseType: !2516, size: 64, offset: 11200)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2517, file: !1563, line: 1005, baseType: !381, size: 128, offset: 11264)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2517, file: !1563, line: 1006, baseType: !381, size: 128, offset: 11392)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2517, file: !1563, line: 1009, baseType: !788, size: 64, offset: 11520)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2517, file: !1563, line: 1010, baseType: !2889, size: 512, offset: 11584)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 512, elements: !810)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2517, file: !1563, line: 1011, baseType: !381, size: 128, offset: 12096)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2517, file: !1563, line: 1012, baseType: !381, size: 128, offset: 12224)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2517, file: !1563, line: 1014, baseType: !1790, size: 64, offset: 12352)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2517, file: !1563, line: 1017, baseType: !1935, size: 64, offset: 12416)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2517, file: !1563, line: 1020, baseType: !1935, size: 64, offset: 12480)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2517, file: !1563, line: 1023, baseType: !235, size: 64, offset: 12544)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2517, file: !1563, line: 1025, baseType: !243, size: 64, offset: 12608)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2517, file: !1563, line: 1026, baseType: !243, size: 64, offset: 12672)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2517, file: !1563, line: 1031, baseType: !243, size: 64, offset: 12736)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2517, file: !1563, line: 1032, baseType: !2900, size: 192, offset: 12800)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1563, line: 324, size: 192, elements: !2901)
!2901 = !{!2902, !2903, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2900, file: !1563, line: 326, baseType: !243, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2900, file: !1563, line: 327, baseType: !243, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2900, file: !1563, line: 328, baseType: !754, size: 32, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2517, file: !1563, line: 1041, baseType: !370, size: 64, offset: 12992)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2517, file: !1563, line: 1042, baseType: !370, size: 64, offset: 13056)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2517, file: !1563, line: 1045, baseType: !243, size: 64, offset: 13120)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2517, file: !1563, line: 1048, baseType: !243, size: 64, offset: 13184)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2517, file: !1563, line: 1051, baseType: !370, size: 64, offset: 13248)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2517, file: !1563, line: 1052, baseType: !370, size: 64, offset: 13312)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2517, file: !1563, line: 1055, baseType: !2912, size: 640, offset: 13376)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2913, line: 132, size: 640, elements: !2914)
!2913 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2914 = !{!2915, !2921, !2922}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2912, file: !2913, line: 133, baseType: !2916, size: 576)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2917, size: 576, elements: !25)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2913, line: 117, size: 192, elements: !2918)
!2918 = !{!2919, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2917, file: !2913, line: 118, baseType: !243, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2917, file: !2913, line: 119, baseType: !2681, size: 128, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2912, file: !2913, line: 134, baseType: !80, size: 32, offset: 576)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2912, file: !2913, line: 135, baseType: !80, size: 32, offset: 608)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2517, file: !1563, line: 1058, baseType: !2924, size: 448, offset: 14016)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2913, line: 144, size: 448, elements: !2925)
!2925 = !{!2926, !2927, !2928}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2924, file: !2913, line: 145, baseType: !727, size: 128, align: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2924, file: !2913, line: 146, baseType: !749, size: 256, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2924, file: !2913, line: 147, baseType: !80, size: 32, offset: 384)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2517, file: !1563, line: 1064, baseType: !836, size: 64, offset: 14464)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2517, file: !1563, line: 1067, baseType: !836, size: 64, offset: 14528)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2517, file: !1563, line: 1070, baseType: !836, size: 64, offset: 14592)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2517, file: !1563, line: 1074, baseType: !863, size: 64, offset: 14656)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2517, file: !1563, line: 1084, baseType: !2934, size: 128, offset: 14720)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2935)
!2935 = !{!2936}
!2936 = !DISubrange(count: 16)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2517, file: !1563, line: 1086, baseType: !2938, size: 64, offset: 14848)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1563, line: 55, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2517, file: !1563, line: 1089, baseType: !2941, size: 64, offset: 14912)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2942, line: 12, size: 64, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2943 = !{!2944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2941, file: !2942, line: 13, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2942, line: 8, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2517, file: !1563, line: 1090, baseType: !2948, size: 128, offset: 14976)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2949, line: 13, size: 128, elements: !2950)
!2949 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2950 = !{!2951}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2948, file: !2949, line: 14, baseType: !381, size: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2517, file: !1563, line: 1097, baseType: !2953, size: 64, offset: 15104)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1563, line: 50, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2517, file: !1563, line: 1100, baseType: !2956, size: 64, offset: 15168)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1563, line: 1100, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2517, file: !1563, line: 1103, baseType: !2959, size: 64, offset: 15232)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1563, line: 53, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2517, file: !1563, line: 1107, baseType: !2962, size: 64, offset: 15296)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1563, line: 56, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2517, file: !1563, line: 1110, baseType: !2965, size: 64, offset: 15360)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2967, line: 93, size: 8768, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3016, !3025, !3026, !3028, !3029, !3030, !3033, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3071, !3072, !3079, !3089, !3092, !3093, !3096, !3097, !3098, !3099, !3100, !3101}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2966, file: !2967, line: 94, baseType: !792, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2966, file: !2967, line: 95, baseType: !288, size: 32, offset: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2966, file: !2967, line: 96, baseType: !175, size: 32, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2966, file: !2967, line: 97, baseType: !175, size: 32, offset: 96)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2966, file: !2967, line: 98, baseType: !381, size: 128, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2966, file: !2967, line: 100, baseType: !814, size: 192, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2966, file: !2967, line: 103, baseType: !2516, size: 64, offset: 448)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2966, file: !2967, line: 106, baseType: !2977, size: 192, offset: 512)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1030, line: 32, size: 192, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2977, file: !1030, line: 33, baseType: !381, size: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2977, file: !1030, line: 34, baseType: !2981, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2982, line: 25, baseType: !2983)
!2982 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2982, line: 23, size: 64, elements: !2984)
!2984 = !{!2985}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2983, file: !2982, line: 24, baseType: !2749, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2966, file: !2967, line: 109, baseType: !801, size: 64, offset: 704)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2966, file: !2967, line: 112, baseType: !175, size: 32, offset: 768)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2966, file: !2967, line: 114, baseType: !175, size: 32, offset: 800)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2966, file: !2967, line: 115, baseType: !2516, size: 64, offset: 832)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2966, file: !2967, line: 118, baseType: !175, size: 32, offset: 896)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2966, file: !2967, line: 119, baseType: !80, size: 32, offset: 928)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2966, file: !2967, line: 121, baseType: !2993, size: 64, offset: 960)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2967, line: 80, size: 448, elements: !2995)
!2995 = !{!2996, !2997, !3003}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2994, file: !2967, line: 81, baseType: !288, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2994, file: !2967, line: 82, baseType: !2998, size: 128, offset: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2967, line: 75, size: 128, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2998, file: !2967, line: 76, baseType: !2516, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2998, file: !2967, line: 77, baseType: !3002, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2994, file: !2967, line: 83, baseType: !1791, size: 256, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2966, file: !2967, line: 132, baseType: !80, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2966, file: !2967, line: 133, baseType: !80, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2966, file: !2967, line: 138, baseType: !80, size: 32, offset: 1056)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2966, file: !2967, line: 139, baseType: !381, size: 128, offset: 1088)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2966, file: !2967, line: 142, baseType: !2627, size: 512, offset: 1216)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2966, file: !2967, line: 143, baseType: !2635, size: 64, offset: 1728)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2966, file: !2967, line: 150, baseType: !3011, size: 256, offset: 1792)
!3011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3012, size: 256, elements: !35)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2967, line: 38, size: 128, elements: !3013)
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3012, file: !2967, line: 39, baseType: !243, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3012, file: !2967, line: 40, baseType: !243, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2966, file: !2967, line: 156, baseType: !3017, size: 192, offset: 2048)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2967, line: 66, size: 192, elements: !3018)
!3018 = !{!3019}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3017, file: !2967, line: 67, baseType: !3020, size: 192)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2967, line: 47, size: 192, elements: !3021)
!3021 = !{!3022, !3023, !3024}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3020, file: !2967, line: 48, baseType: !742, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3020, file: !2967, line: 49, baseType: !742, size: 64, offset: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3020, file: !2967, line: 50, baseType: !742, size: 64, offset: 128)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2966, file: !2967, line: 160, baseType: !2912, size: 640, offset: 2240)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2966, file: !2967, line: 163, baseType: !3027, size: 256, offset: 2880)
!3027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 256, elements: !810)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2966, file: !2967, line: 169, baseType: !788, size: 64, offset: 3136)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2966, file: !2967, line: 172, baseType: !175, size: 32, offset: 3200)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2966, file: !2967, line: 174, baseType: !3031, size: 64, offset: 3264)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2967, line: 174, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2966, file: !2967, line: 185, baseType: !3034, size: 64, offset: 3328)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !442, line: 860, baseType: !3035)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 853, size: 64, elements: !3036)
!3036 = !{!3037, !3038}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3035, file: !442, line: 858, baseType: !441, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3035, file: !442, line: 859, baseType: !268, size: 32, offset: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2966, file: !2967, line: 186, baseType: !243, size: 64, offset: 3392)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2966, file: !2967, line: 186, baseType: !243, size: 64, offset: 3456)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2966, file: !2967, line: 186, baseType: !243, size: 64, offset: 3520)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2966, file: !2967, line: 186, baseType: !243, size: 64, offset: 3584)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2966, file: !2967, line: 187, baseType: !243, size: 64, offset: 3648)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2966, file: !2967, line: 188, baseType: !243, size: 64, offset: 3712)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2966, file: !2967, line: 189, baseType: !2900, size: 192, offset: 3776)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2966, file: !2967, line: 190, baseType: !370, size: 64, offset: 3968)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2966, file: !2967, line: 190, baseType: !370, size: 64, offset: 4032)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2966, file: !2967, line: 190, baseType: !370, size: 64, offset: 4096)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2966, file: !2967, line: 190, baseType: !370, size: 64, offset: 4160)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2966, file: !2967, line: 191, baseType: !370, size: 64, offset: 4224)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2966, file: !2967, line: 191, baseType: !370, size: 64, offset: 4288)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2966, file: !2967, line: 191, baseType: !370, size: 64, offset: 4352)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2966, file: !2967, line: 191, baseType: !370, size: 64, offset: 4416)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2966, file: !2967, line: 192, baseType: !370, size: 64, offset: 4480)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2966, file: !2967, line: 192, baseType: !370, size: 64, offset: 4544)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2966, file: !2967, line: 192, baseType: !370, size: 64, offset: 4608)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2966, file: !2967, line: 192, baseType: !370, size: 64, offset: 4672)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2966, file: !2967, line: 193, baseType: !370, size: 64, offset: 4736)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2966, file: !2967, line: 193, baseType: !370, size: 64, offset: 4800)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2966, file: !2967, line: 194, baseType: !3061, size: 448, offset: 4864)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3062, line: 12, size: 448, elements: !3063)
!3062 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3063 = !{!3064, !3065, !3066, !3067, !3068, !3069, !3070}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3061, file: !3062, line: 15, baseType: !243, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3061, file: !3062, line: 17, baseType: !243, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3061, file: !3062, line: 19, baseType: !243, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3061, file: !3062, line: 21, baseType: !243, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3061, file: !3062, line: 29, baseType: !243, size: 64, offset: 256)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3061, file: !3062, line: 35, baseType: !243, size: 64, offset: 320)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3061, file: !3062, line: 44, baseType: !243, size: 64, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2966, file: !2967, line: 202, baseType: !247, size: 64, offset: 5312)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2966, file: !2967, line: 213, baseType: !3073, size: 2048, offset: 5376)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3074, size: 2048, elements: !2935)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3075, line: 43, size: 128, elements: !3076)
!3075 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3074, file: !3075, line: 44, baseType: !684, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3074, file: !3075, line: 45, baseType: !684, size: 64, offset: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2966, file: !2967, line: 216, baseType: !3080, size: 448, offset: 7424)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2967, line: 30, size: 448, elements: !3081)
!3081 = !{!3082, !3083, !3084, !3085, !3086, !3087, !3088}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3080, file: !2967, line: 31, baseType: !175, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3080, file: !2967, line: 32, baseType: !672, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3080, file: !2967, line: 33, baseType: !370, size: 64, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3080, file: !2967, line: 34, baseType: !243, size: 64, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3080, file: !2967, line: 34, baseType: !243, size: 64, offset: 256)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3080, file: !2967, line: 35, baseType: !370, size: 64, offset: 320)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3080, file: !2967, line: 35, baseType: !370, size: 64, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2966, file: !2967, line: 219, baseType: !3090, size: 64, offset: 7872)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2967, line: 219, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2966, file: !2967, line: 222, baseType: !80, size: 32, offset: 7936)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2966, file: !2967, line: 223, baseType: !3094, size: 64, offset: 8000)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2967, line: 223, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2966, file: !2967, line: 230, baseType: !942, size: 8, offset: 8064)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2966, file: !2967, line: 231, baseType: !914, size: 16, offset: 8080)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2966, file: !2967, line: 232, baseType: !914, size: 16, offset: 8096)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2966, file: !2967, line: 234, baseType: !1215, size: 64, offset: 8128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2966, file: !2967, line: 237, baseType: !749, size: 256, offset: 8192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2966, file: !2967, line: 243, baseType: !886, size: 320, offset: 8448)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2517, file: !1563, line: 1111, baseType: !3103, size: 64, offset: 15424)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2967, line: 20, size: 16640, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3109}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3104, file: !2967, line: 21, baseType: !268, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3104, file: !2967, line: 22, baseType: !792, size: 32, offset: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3104, file: !2967, line: 23, baseType: !814, size: 192, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3104, file: !2967, line: 24, baseType: !3110, size: 16384, offset: 256)
!3110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3111, size: 16384, elements: !642)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1030, line: 51, size: 256, elements: !3112)
!3112 = !{!3113}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3111, file: !1030, line: 52, baseType: !3114, size: 256)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1030, line: 37, size: 256, elements: !3115)
!3115 = !{!3116, !3123, !3124, !3128}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3114, file: !1030, line: 39, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3118, line: 83, baseType: !3119)
!3118 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3118, line: 82, baseType: !3121)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !175}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3114, file: !1030, line: 40, baseType: !370, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3114, file: !1030, line: 46, baseType: !3125, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3118, line: 86, baseType: !3126)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3118, line: 85, baseType: !2140)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3114, file: !1030, line: 48, baseType: !2981, size: 64, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2517, file: !1563, line: 1112, baseType: !2981, size: 64, offset: 15488)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2517, file: !1563, line: 1113, baseType: !2981, size: 64, offset: 15552)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2517, file: !1563, line: 1115, baseType: !2981, size: 64, offset: 15616)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2517, file: !1563, line: 1116, baseType: !2977, size: 192, offset: 15680)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2517, file: !1563, line: 1117, baseType: !370, size: 64, offset: 15872)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2517, file: !1563, line: 1118, baseType: !682, size: 64, offset: 15936)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2517, file: !1563, line: 1119, baseType: !80, size: 32, offset: 16000)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2517, file: !1563, line: 1121, baseType: !730, size: 64, offset: 16064)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2517, file: !1563, line: 1125, baseType: !3138, size: 64, offset: 16128)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1563, line: 43, flags: DIFlagFwdDecl)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2517, file: !1563, line: 1127, baseType: !405, size: 32, offset: 16192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2517, file: !1563, line: 1128, baseType: !80, size: 32, offset: 16224)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2517, file: !1563, line: 1130, baseType: !3143, size: 128, offset: 16256)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3144, line: 37, size: 128, elements: !3145)
!3144 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3145 = !{!3146, !3147, !3148}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3143, file: !3144, line: 38, baseType: !175, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3143, file: !3144, line: 39, baseType: !288, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3143, file: !3144, line: 40, baseType: !3149, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3144, line: 24, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2517, file: !1563, line: 1131, baseType: !3152, size: 256, offset: 16384)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3153, line: 12, size: 256, elements: !3154)
!3153 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3152, file: !3153, line: 13, baseType: !537, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3152, file: !3153, line: 14, baseType: !370, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3152, file: !3153, line: 15, baseType: !370, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3152, file: !3153, line: 16, baseType: !942, size: 8, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2517, file: !1563, line: 1134, baseType: !243, size: 64, offset: 16640)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2517, file: !1563, line: 1135, baseType: !243, size: 64, offset: 16704)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2517, file: !1563, line: 1138, baseType: !268, size: 32, offset: 16768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2517, file: !1563, line: 1141, baseType: !754, size: 32, offset: 16800)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2517, file: !1563, line: 1143, baseType: !3164, size: 64, offset: 16832)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1563, line: 735, size: 64, elements: !3165)
!3165 = !{!3166}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3164, file: !1563, line: 736, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2517, file: !1563, line: 1147, baseType: !2684, size: 128, offset: 16896)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2517, file: !1563, line: 1149, baseType: !2516, size: 64, offset: 17024)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2517, file: !1563, line: 1151, baseType: !3171, size: 64, offset: 17088)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1563, line: 1151, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2517, file: !1563, line: 1188, baseType: !235, size: 64, offset: 17152)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2517, file: !1563, line: 1191, baseType: !3175, size: 64, offset: 17216)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !3177, line: 550, size: 128, elements: !3178)
!3177 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3176, file: !3177, line: 551, baseType: !320, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3176, file: !3177, line: 552, baseType: !320, size: 64, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2517, file: !1563, line: 1194, baseType: !3182, size: 64, offset: 17280)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !143, line: 976, size: 320, elements: !3184)
!3184 = !{!3185, !3186, !3187, !3188, !3189, !3190, !3191}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3183, file: !143, line: 977, baseType: !1165, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3183, file: !143, line: 980, baseType: !1165, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3183, file: !143, line: 981, baseType: !261, size: 16, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3183, file: !143, line: 983, baseType: !261, size: 16, offset: 144)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3183, file: !143, line: 985, baseType: !942, size: 8, offset: 160)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3183, file: !143, line: 986, baseType: !942, size: 8, offset: 168)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3183, file: !143, line: 988, baseType: !381, size: 128, offset: 192)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2517, file: !1563, line: 1197, baseType: !3193, size: 64, offset: 17344)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1563, line: 61, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2517, file: !1563, line: 1199, baseType: !3196, size: 64, offset: 17408)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3198, line: 99, size: 128, elements: !3199)
!3198 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3199 = !{!3200, !3201, !3202}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3197, file: !3198, line: 100, baseType: !740, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3197, file: !3198, line: 101, baseType: !288, size: 32, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3197, file: !3198, line: 103, baseType: !261, size: 16, offset: 96)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2517, file: !1563, line: 1202, baseType: !3204, size: 64, offset: 17472)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1563, line: 48, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2517, file: !1563, line: 1205, baseType: !370, size: 64, offset: 17536)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2517, file: !1563, line: 1206, baseType: !3208, size: 64, offset: 17600)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1030, line: 14, baseType: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1030, line: 12, size: 384, elements: !3211)
!3211 = !{!3212}
!3212 = !DIDerivedType(tag: DW_TAG_member, scope: !3210, file: !1030, line: 13, baseType: !3213, size: 384)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3210, file: !1030, line: 13, size: 384, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3213, file: !1030, line: 13, baseType: !175, size: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3213, file: !1030, line: 13, baseType: !175, size: 32, offset: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3213, file: !1030, line: 13, baseType: !175, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3213, file: !1030, line: 13, baseType: !3219, size: 256, offset: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3220, line: 37, size: 256, elements: !3221)
!3220 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3221 = !{!3222, !3227, !3240, !3246, !3255, !3281, !3286}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3219, file: !3220, line: 42, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !3220, line: 39, size: 64, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3223, file: !3220, line: 40, baseType: !2877, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3223, file: !3220, line: 41, baseType: !411, size: 32, offset: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3219, file: !3220, line: 50, baseType: !3228, size: 192)
!3228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !3220, line: 45, size: 192, elements: !3229)
!3229 = !{!3230, !3232, !3233, !3239}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3228, file: !3220, line: 46, baseType: !3231, size: 32)
!3231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !412, line: 95, baseType: !175)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3228, file: !3220, line: 47, baseType: !175, size: 32, offset: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3228, file: !3220, line: 48, baseType: !3234, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3220, line: 11, baseType: !3235)
!3235 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3220, line: 8, size: 64, elements: !3236)
!3236 = !{!3237, !3238}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3235, file: !3220, line: 9, baseType: !175, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3235, file: !3220, line: 10, baseType: !235, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3228, file: !3220, line: 49, baseType: !175, size: 32, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3219, file: !3220, line: 57, baseType: !3241, size: 128)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !3220, line: 53, size: 128, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3241, file: !3220, line: 54, baseType: !2877, size: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3241, file: !3220, line: 55, baseType: !411, size: 32, offset: 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3241, file: !3220, line: 56, baseType: !3234, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3219, file: !3220, line: 66, baseType: !3247, size: 256)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !3220, line: 60, size: 256, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3252, !3254}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3247, file: !3220, line: 61, baseType: !2877, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3247, file: !3220, line: 62, baseType: !411, size: 32, offset: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3247, file: !3220, line: 63, baseType: !175, size: 32, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3247, file: !3220, line: 64, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !412, line: 94, baseType: !671)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3247, file: !3220, line: 65, baseType: !3253, size: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3219, file: !3220, line: 105, baseType: !3256, size: 256)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !3220, line: 69, size: 256, elements: !3257)
!3257 = !{!3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3256, file: !3220, line: 70, baseType: !235, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !3220, line: 79, baseType: !3260, size: 192, offset: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3256, file: !3220, line: 79, size: 192, elements: !3261)
!3261 = !{!3262, !3263, !3264, !3270, !3275}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3260, file: !3220, line: 81, baseType: !175, size: 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3260, file: !3220, line: 86, baseType: !914, size: 16)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3260, file: !3220, line: 92, baseType: !3265, size: 192)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !3220, line: 88, size: 192, elements: !3266)
!3266 = !{!3267, !3268, !3269}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3265, file: !3220, line: 89, baseType: !59, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3265, file: !3220, line: 90, baseType: !235, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3265, file: !3220, line: 91, baseType: !235, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3260, file: !3220, line: 97, baseType: !3271, size: 96)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !3220, line: 94, size: 96, elements: !3272)
!3272 = !{!3273, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3271, file: !3220, line: 95, baseType: !59, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3271, file: !3220, line: 96, baseType: !327, size: 32, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3260, file: !3220, line: 103, baseType: !3276, size: 128)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !3220, line: 99, size: 128, elements: !3277)
!3277 = !{!3278, !3279, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3276, file: !3220, line: 100, baseType: !370, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3276, file: !3220, line: 101, baseType: !327, size: 32, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3276, file: !3220, line: 102, baseType: !327, size: 32, offset: 96)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3219, file: !3220, line: 111, baseType: !3282, size: 128)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !3220, line: 108, size: 128, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3282, file: !3220, line: 109, baseType: !672, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3282, file: !3220, line: 110, baseType: !175, size: 32, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3219, file: !3220, line: 118, baseType: !3287, size: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !3220, line: 114, size: 128, elements: !3288)
!3288 = !{!3289, !3290, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3287, file: !3220, line: 115, baseType: !235, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3287, file: !3220, line: 116, baseType: !175, size: 32, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3287, file: !3220, line: 117, baseType: !80, size: 32, offset: 96)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2517, file: !1563, line: 1208, baseType: !3061, size: 448, offset: 17664)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2517, file: !1563, line: 1215, baseType: !243, size: 64, offset: 18112)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2517, file: !1563, line: 1217, baseType: !243, size: 64, offset: 18176)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2517, file: !1563, line: 1219, baseType: !243, size: 64, offset: 18240)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2517, file: !1563, line: 1223, baseType: !3297, size: 64, offset: 18304)
!3297 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3298, line: 99, baseType: !3299)
!3298 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3298, line: 99, size: 64, elements: !3300)
!3300 = !{!3301}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3299, file: !3298, line: 99, baseType: !2749, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2517, file: !1563, line: 1225, baseType: !441, size: 32, offset: 18368)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2517, file: !1563, line: 1226, baseType: !175, size: 32, offset: 18400)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2517, file: !1563, line: 1227, baseType: !175, size: 32, offset: 18432)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2517, file: !1563, line: 1231, baseType: !3306, size: 64, offset: 18496)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1563, line: 1231, flags: DIFlagFwdDecl)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2517, file: !1563, line: 1233, baseType: !381, size: 128, offset: 18560)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2517, file: !1563, line: 1240, baseType: !3310, size: 64, offset: 18688)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1563, line: 62, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2517, file: !1563, line: 1242, baseType: !3313, size: 64, offset: 18752)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1563, line: 1242, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2517, file: !1563, line: 1244, baseType: !381, size: 128, offset: 18816)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2517, file: !1563, line: 1245, baseType: !3317, size: 64, offset: 18944)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1563, line: 51, flags: DIFlagFwdDecl)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2517, file: !1563, line: 1246, baseType: !749, size: 256, offset: 19008)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2517, file: !1563, line: 1247, baseType: !80, size: 32, offset: 19264)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2517, file: !1563, line: 1250, baseType: !3322, size: 64, offset: 19328)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1563, line: 57, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2517, file: !1563, line: 1251, baseType: !749, size: 256, offset: 19392)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2517, file: !1563, line: 1252, baseType: !381, size: 128, offset: 19648)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2517, file: !1563, line: 1259, baseType: !1509, size: 64, offset: 19776)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2517, file: !1563, line: 1260, baseType: !914, size: 16, offset: 19840)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2517, file: !1563, line: 1261, baseType: !914, size: 16, offset: 19856)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2517, file: !1563, line: 1314, baseType: !3330, size: 64, offset: 19904)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3332, line: 62, size: 256, align: 256, elements: !3333)
!3332 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3331, file: !3332, line: 75, baseType: !327, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3331, file: !3332, line: 90, baseType: !327, size: 32, offset: 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3331, file: !3332, line: 112, baseType: !245, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !3332, line: 132, baseType: !327, size: 32, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3331, file: !3332, line: 140, baseType: !327, size: 32, offset: 160)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3331, file: !3332, line: 149, baseType: !327, size: 32, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3331, file: !3332, line: 154, baseType: !3341, offset: 224)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !829)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2517, file: !1563, line: 1315, baseType: !469, size: 32, offset: 19968)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2517, file: !1563, line: 1316, baseType: !469, size: 32, offset: 20000)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2517, file: !1563, line: 1321, baseType: !370, size: 64, offset: 20032)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2517, file: !1563, line: 1325, baseType: !175, size: 32, offset: 20096)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2517, file: !1563, line: 1326, baseType: !175, size: 32, offset: 20128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2517, file: !1563, line: 1327, baseType: !175, size: 32, offset: 20160)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2517, file: !1563, line: 1328, baseType: !175, size: 32, offset: 20192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2517, file: !1563, line: 1329, baseType: !727, size: 128, align: 64, offset: 20224)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2517, file: !1563, line: 1332, baseType: !3351, size: 128, offset: 20352)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3352, line: 51, size: 128, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3353 = !{!3354, !3359, !3360}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3351, file: !3352, line: 60, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3356, line: 7, size: 64, elements: !3357)
!3356 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3357 = !{!3358}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3355, file: !3356, line: 12, baseType: !2746, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3351, file: !3352, line: 63, baseType: !942, size: 8, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3351, file: !3352, line: 70, baseType: !942, size: 8, offset: 72)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2517, file: !1563, line: 1335, baseType: !1561, size: 64, offset: 20480)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2517, file: !1563, line: 1337, baseType: !3363, size: 128, offset: 20544)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3352, line: 39, size: 128, elements: !3364)
!3364 = !{!3365, !3366, !3367}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3363, file: !3352, line: 40, baseType: !366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3363, file: !3352, line: 42, baseType: !327, size: 32, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3363, file: !3352, line: 43, baseType: !327, size: 32, offset: 96)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2517, file: !1563, line: 1340, baseType: !3369, size: 64, offset: 20672)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1563, line: 69, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2517, file: !1563, line: 1351, baseType: !175, size: 32, offset: 20736)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2517, file: !1563, line: 1352, baseType: !175, size: 32, offset: 20768)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2517, file: !1563, line: 1354, baseType: !370, size: 64, offset: 20800)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2517, file: !1563, line: 1364, baseType: !243, size: 64, offset: 20864)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2517, file: !1563, line: 1365, baseType: !243, size: 64, offset: 20928)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2517, file: !1563, line: 1412, baseType: !370, size: 64, offset: 20992)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2517, file: !1563, line: 1453, baseType: !250, size: 64, offset: 21056)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2517, file: !1563, line: 1457, baseType: !3379, size: 64, offset: 21120)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !223, line: 61, size: 576, elements: !3381)
!3381 = !{!3382, !3383, !3402, !3405, !3406, !3439, !3449}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3380, file: !223, line: 62, baseType: !222, size: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !3380, file: !223, line: 64, baseType: !3384, size: 192, offset: 64)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3380, file: !223, line: 64, size: 192, elements: !3385)
!3385 = !{!3386, !3397}
!3386 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !223, line: 65, baseType: !3387, size: 192)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3384, file: !223, line: 65, size: 192, elements: !3388)
!3388 = !{!3389, !3396}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3387, file: !223, line: 66, baseType: !3390, size: 128)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3391, line: 50, size: 128, elements: !3392)
!3391 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3392 = !{!3393, !3394, !3395}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3390, file: !3391, line: 52, baseType: !370, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3390, file: !3391, line: 54, baseType: !80, size: 32, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3390, file: !3391, line: 55, baseType: !80, size: 32, offset: 96)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3387, file: !223, line: 67, baseType: !370, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3384, file: !223, line: 70, baseType: !3398, size: 192)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3384, file: !223, line: 70, size: 192, elements: !3399)
!3399 = !{!3400, !3401}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3398, file: !223, line: 71, baseType: !727, size: 128, align: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3398, file: !223, line: 72, baseType: !370, size: 64, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3380, file: !223, line: 76, baseType: !3403, size: 64, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !223, line: 76, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3380, file: !223, line: 77, baseType: !370, size: 64, offset: 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3380, file: !223, line: 79, baseType: !3407, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3391, line: 25, size: 256, elements: !3409)
!3409 = !{!3410, !3416, !3420}
!3410 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !3391, line: 26, baseType: !3411, size: 128)
!3411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3408, file: !3391, line: 26, size: 128, elements: !3412)
!3412 = !{!3413, !3415}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3411, file: !3391, line: 27, baseType: !3414, size: 128)
!3414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !2935)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3411, file: !3391, line: 28, baseType: !3414, size: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3408, file: !3391, line: 31, baseType: !3417, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3419)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3391, line: 23, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !3391, line: 33, baseType: !3421, size: 64, offset: 192)
!3421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3408, file: !3391, line: 33, size: 64, elements: !3422)
!3422 = !{!3423, !3429, !3434}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3421, file: !3391, line: 38, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3421, file: !3391, line: 34, size: 64, elements: !3425)
!3425 = !{!3426, !3427, !3428}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3424, file: !3391, line: 35, baseType: !871, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3424, file: !3391, line: 36, baseType: !296, size: 8, offset: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3424, file: !3391, line: 37, baseType: !296, size: 8, offset: 40)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3421, file: !3391, line: 42, baseType: !3430, size: 16)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3421, file: !3391, line: 39, size: 16, elements: !3431)
!3431 = !{!3432, !3433}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3430, file: !3391, line: 40, baseType: !296, size: 8)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3430, file: !3391, line: 41, baseType: !296, size: 8, offset: 8)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3421, file: !3391, line: 46, baseType: !3435, size: 16)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3421, file: !3391, line: 43, size: 16, elements: !3436)
!3436 = !{!3437, !3438}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3435, file: !3391, line: 44, baseType: !296, size: 8)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3435, file: !3391, line: 45, baseType: !296, size: 8, offset: 8)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3380, file: !223, line: 81, baseType: !3440, size: 64, offset: 448)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !223, line: 85, size: 384, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3441, file: !223, line: 86, baseType: !3403, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3441, file: !223, line: 87, baseType: !370, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3441, file: !223, line: 88, baseType: !370, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3441, file: !223, line: 89, baseType: !370, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3441, file: !223, line: 90, baseType: !942, size: 8, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3441, file: !223, line: 92, baseType: !3440, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3380, file: !223, line: 82, baseType: !80, size: 32, offset: 512)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2517, file: !1563, line: 1463, baseType: !3451, offset: 21184)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1563, line: 739, elements: !357)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2517, file: !1563, line: 1470, baseType: !727, size: 128, align: 64, offset: 21184)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2517, file: !1563, line: 1471, baseType: !792, size: 32, offset: 21312)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2517, file: !1563, line: 1472, baseType: !175, size: 32, offset: 21344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2517, file: !1563, line: 1474, baseType: !2516, size: 64, offset: 21376)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2517, file: !1563, line: 1475, baseType: !2035, size: 320, offset: 21440)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2517, file: !1563, line: 1478, baseType: !3458, size: 64, offset: 21760)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1563, line: 1478, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2517, file: !1563, line: 1482, baseType: !792, size: 32, offset: 21824)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2517, file: !1563, line: 1489, baseType: !235, size: 64, offset: 21888)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2517, file: !1563, line: 1504, baseType: !235, size: 64, offset: 21952)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2517, file: !1563, line: 1505, baseType: !245, size: 64, offset: 22016)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2517, file: !1563, line: 1506, baseType: !243, size: 64, offset: 22080)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2517, file: !1563, line: 1507, baseType: !245, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2517, file: !1563, line: 1508, baseType: !245, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2517, file: !1563, line: 1509, baseType: !245, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2517, file: !1563, line: 1510, baseType: !727, size: 128, align: 64, offset: 22208)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2517, file: !1563, line: 1511, baseType: !175, size: 32, offset: 22336)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2517, file: !1563, line: 1515, baseType: !3471, size: 64, offset: 22400)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !722, line: 56, size: 64, elements: !3472)
!3472 = !{!3473}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3471, file: !722, line: 57, baseType: !725, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2517, file: !1563, line: 1518, baseType: !3471, size: 64, offset: 22464)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2517, file: !1563, line: 1528, baseType: !727, size: 128, align: 64, offset: 22528)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2517, file: !1563, line: 1552, baseType: !3477, size: 35328, offset: 23040)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3478, line: 430, size: 35328, elements: !3479)
!3478 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3479 = !{!3480, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3509, !3510, !3511, !3512, !3513, !3514, !3517, !3518, !3519, !3520}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3477, file: !3478, line: 432, baseType: !3481, size: 192)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3482, size: 192, elements: !25)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3483, line: 16, size: 64, elements: !3484)
!3483 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3484 = !{!3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3482, file: !3483, line: 17, baseType: !304, size: 16)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3482, file: !3483, line: 18, baseType: !304, size: 16, offset: 16)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3482, file: !3483, line: 19, baseType: !304, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3482, file: !3483, line: 19, baseType: !304, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3482, file: !3483, line: 19, baseType: !304, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3482, file: !3483, line: 19, baseType: !304, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3482, file: !3483, line: 19, baseType: !304, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3482, file: !3483, line: 20, baseType: !304, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3482, file: !3483, line: 20, baseType: !304, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3482, file: !3483, line: 20, baseType: !304, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3482, file: !3483, line: 20, baseType: !304, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3482, file: !3483, line: 20, baseType: !304, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3482, file: !3483, line: 20, baseType: !304, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3477, file: !3478, line: 436, baseType: !370, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3477, file: !3478, line: 440, baseType: !261, size: 16, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3477, file: !3478, line: 441, baseType: !261, size: 16, offset: 272)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3477, file: !3478, line: 442, baseType: !261, size: 16, offset: 288)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3477, file: !3478, line: 443, baseType: !261, size: 16, offset: 304)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3477, file: !3478, line: 447, baseType: !370, size: 64, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3477, file: !3478, line: 448, baseType: !370, size: 64, offset: 384)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3477, file: !3478, line: 459, baseType: !3506, size: 256, offset: 448)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3507, size: 256, elements: !810)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3478, line: 428, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3477, file: !3478, line: 461, baseType: !370, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3477, file: !3478, line: 463, baseType: !370, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3477, file: !3478, line: 465, baseType: !370, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3477, file: !3478, line: 466, baseType: !370, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3477, file: !3478, line: 467, baseType: !370, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3477, file: !3478, line: 473, baseType: !3515, size: 64, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3478, line: 10, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3477, file: !3478, line: 480, baseType: !370, size: 64, offset: 1088)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3477, file: !3478, line: 482, baseType: !80, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3477, file: !3478, line: 491, baseType: !469, size: 32, offset: 1184)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3477, file: !3478, line: 501, baseType: !3521, size: 33792, offset: 1536)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3522, line: 448, size: 33792, elements: !3523)
!3522 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3523 = !{!3524, !3525, !3526, !3686, !3687, !3693, !3694}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3521, file: !3522, line: 461, baseType: !80, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3521, file: !3522, line: 468, baseType: !370, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3521, file: !3522, line: 476, baseType: !3527, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3522, line: 356, size: 33280, align: 512, elements: !3529)
!3529 = !{!3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3528, file: !3522, line: 358, baseType: !80, size: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3528, file: !3522, line: 361, baseType: !80, size: 32, offset: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3528, file: !3522, line: 364, baseType: !243, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3528, file: !3522, line: 367, baseType: !243, size: 64, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3528, file: !3522, line: 370, baseType: !243, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3528, file: !3522, line: 373, baseType: !80, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3528, file: !3522, line: 376, baseType: !80, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3528, file: !3522, line: 391, baseType: !80, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3528, file: !3522, line: 394, baseType: !80, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3528, file: !3522, line: 397, baseType: !3540, size: 32768, offset: 512)
!3540 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3522, line: 348, size: 32768, elements: !3541)
!3541 = !{!3542, !3557, !3592, !3669, !3682}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3540, file: !3522, line: 349, baseType: !3543, size: 896)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3522, line: 12, size: 896, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3556}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3543, file: !3522, line: 13, baseType: !469, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3543, file: !3522, line: 14, baseType: !469, size: 32, offset: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3543, file: !3522, line: 15, baseType: !469, size: 32, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3543, file: !3522, line: 16, baseType: !469, size: 32, offset: 96)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3543, file: !3522, line: 17, baseType: !469, size: 32, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3543, file: !3522, line: 18, baseType: !469, size: 32, offset: 160)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3543, file: !3522, line: 19, baseType: !469, size: 32, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3543, file: !3522, line: 22, baseType: !3553, size: 640, offset: 224)
!3553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 640, elements: !3554)
!3554 = !{!3555}
!3555 = !DISubrange(count: 20)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3543, file: !3522, line: 25, baseType: !469, size: 32, offset: 864)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3540, file: !3522, line: 350, baseType: !3558, size: 4096, align: 128)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3522, line: 34, size: 4096, align: 128, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3579, !3580, !3581, !3583, !3585, !3587}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3558, file: !3522, line: 35, baseType: !304, size: 16)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3558, file: !3522, line: 36, baseType: !304, size: 16, offset: 16)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3558, file: !3522, line: 37, baseType: !304, size: 16, offset: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3558, file: !3522, line: 38, baseType: !304, size: 16, offset: 48)
!3564 = !DIDerivedType(tag: DW_TAG_member, scope: !3558, file: !3522, line: 39, baseType: !3565, size: 128, offset: 64)
!3565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3558, file: !3522, line: 39, size: 128, elements: !3566)
!3566 = !{!3567, !3572}
!3567 = !DIDerivedType(tag: DW_TAG_member, scope: !3565, file: !3522, line: 40, baseType: !3568, size: 128)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3565, file: !3522, line: 40, size: 128, elements: !3569)
!3569 = !{!3570, !3571}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3568, file: !3522, line: 41, baseType: !243, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3568, file: !3522, line: 42, baseType: !243, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, scope: !3565, file: !3522, line: 44, baseType: !3573, size: 128)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3565, file: !3522, line: 44, size: 128, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3573, file: !3522, line: 45, baseType: !469, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3573, file: !3522, line: 46, baseType: !469, size: 32, offset: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3573, file: !3522, line: 47, baseType: !469, size: 32, offset: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3573, file: !3522, line: 48, baseType: !469, size: 32, offset: 96)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3558, file: !3522, line: 51, baseType: !469, size: 32, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3558, file: !3522, line: 52, baseType: !469, size: 32, offset: 224)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3558, file: !3522, line: 55, baseType: !3582, size: 1024, offset: 256)
!3582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 1024, elements: !258)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3558, file: !3522, line: 58, baseType: !3584, size: 2048, offset: 1280)
!3584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 2048, elements: !642)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3558, file: !3522, line: 60, baseType: !3586, size: 384, offset: 3328)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 384, elements: !45)
!3587 = !DIDerivedType(tag: DW_TAG_member, scope: !3558, file: !3522, line: 62, baseType: !3588, size: 384, offset: 3712)
!3588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3558, file: !3522, line: 62, size: 384, elements: !3589)
!3589 = !{!3590, !3591}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3588, file: !3522, line: 63, baseType: !3586, size: 384)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3588, file: !3522, line: 64, baseType: !3586, size: 384)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3540, file: !3522, line: 351, baseType: !3593, size: 1088)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3522, line: 79, size: 1088, elements: !3594)
!3594 = !{!3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3668}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3593, file: !3522, line: 80, baseType: !469, size: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3593, file: !3522, line: 81, baseType: !469, size: 32, offset: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3593, file: !3522, line: 82, baseType: !469, size: 32, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3593, file: !3522, line: 83, baseType: !469, size: 32, offset: 96)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3593, file: !3522, line: 84, baseType: !469, size: 32, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3593, file: !3522, line: 85, baseType: !469, size: 32, offset: 160)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3593, file: !3522, line: 86, baseType: !469, size: 32, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3593, file: !3522, line: 88, baseType: !3553, size: 640, offset: 224)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3593, file: !3522, line: 89, baseType: !296, size: 8, offset: 864)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3593, file: !3522, line: 90, baseType: !296, size: 8, offset: 872)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3593, file: !3522, line: 91, baseType: !296, size: 8, offset: 880)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3593, file: !3522, line: 92, baseType: !296, size: 8, offset: 888)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3593, file: !3522, line: 93, baseType: !296, size: 8, offset: 896)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3593, file: !3522, line: 94, baseType: !296, size: 8, offset: 904)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3593, file: !3522, line: 95, baseType: !3610, size: 64, offset: 960)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3612, line: 11, size: 128, elements: !3613)
!3612 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3611, file: !3612, line: 12, baseType: !672, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3611, file: !3612, line: 13, baseType: !3616, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3618, line: 103, size: 1344, elements: !3619)
!3618 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3648, !3649, !3650}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3617, file: !3618, line: 109, baseType: !370, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3617, file: !3618, line: 110, baseType: !370, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3617, file: !3618, line: 111, baseType: !370, size: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3617, file: !3618, line: 112, baseType: !370, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3617, file: !3618, line: 113, baseType: !370, size: 64, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3617, file: !3618, line: 114, baseType: !370, size: 64, offset: 320)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3617, file: !3618, line: 117, baseType: !370, size: 64, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3617, file: !3618, line: 118, baseType: !370, size: 64, offset: 448)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3617, file: !3618, line: 119, baseType: !370, size: 64, offset: 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3617, file: !3618, line: 120, baseType: !370, size: 64, offset: 576)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3617, file: !3618, line: 121, baseType: !370, size: 64, offset: 640)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3617, file: !3618, line: 122, baseType: !370, size: 64, offset: 704)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3617, file: !3618, line: 123, baseType: !370, size: 64, offset: 768)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3617, file: !3618, line: 124, baseType: !370, size: 64, offset: 832)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3617, file: !3618, line: 125, baseType: !370, size: 64, offset: 896)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3617, file: !3618, line: 139, baseType: !370, size: 64, offset: 960)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3617, file: !3618, line: 142, baseType: !370, size: 64, offset: 1024)
!3637 = !DIDerivedType(tag: DW_TAG_member, scope: !3617, file: !3618, line: 144, baseType: !3638, size: 64, offset: 1088)
!3638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3617, file: !3618, line: 144, size: 64, elements: !3639)
!3639 = !{!3640, !3641, !3642}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3638, file: !3618, line: 146, baseType: !304, size: 16)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3638, file: !3618, line: 148, baseType: !243, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3638, file: !3618, line: 150, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3618, line: 59, size: 64, elements: !3644)
!3644 = !{!3645, !3646, !3647}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3643, file: !3618, line: 61, baseType: !243, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3643, file: !3618, line: 63, baseType: !243, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3643, file: !3618, line: 65, baseType: !243, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3617, file: !3618, line: 153, baseType: !370, size: 64, offset: 1152)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3617, file: !3618, line: 154, baseType: !370, size: 64, offset: 1216)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3617, file: !3618, line: 156, baseType: !3651, size: 64, offset: 1280)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3617, file: !3618, line: 156, size: 64, elements: !3652)
!3652 = !{!3653, !3654, !3655}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3651, file: !3618, line: 158, baseType: !304, size: 16)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3651, file: !3618, line: 160, baseType: !243, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3651, file: !3618, line: 162, baseType: !3656, size: 64)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3618, line: 69, size: 64, elements: !3657)
!3657 = !{!3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3656, file: !3618, line: 71, baseType: !243, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3656, file: !3618, line: 73, baseType: !243, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3656, file: !3618, line: 75, baseType: !243, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3656, file: !3618, line: 77, baseType: !243, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3656, file: !3618, line: 80, baseType: !243, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3656, file: !3618, line: 83, baseType: !243, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3656, file: !3618, line: 86, baseType: !243, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3656, file: !3618, line: 88, baseType: !243, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3656, file: !3618, line: 93, baseType: !243, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3656, file: !3618, line: 100, baseType: !243, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3593, file: !3522, line: 96, baseType: !469, size: 32, offset: 1024)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3540, file: !3522, line: 352, baseType: !3670, size: 4608, align: 512)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3522, line: 333, size: 4608, align: 512, elements: !3671)
!3671 = !{!3672, !3673, !3680}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3670, file: !3522, line: 334, baseType: !3558, size: 4096, align: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3670, file: !3522, line: 335, baseType: !3674, size: 512, offset: 4096)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3522, line: 312, size: 512, elements: !3675)
!3675 = !{!3676, !3677, !3678}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3674, file: !3522, line: 313, baseType: !243, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3674, file: !3522, line: 314, baseType: !243, size: 64, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3674, file: !3522, line: 315, baseType: !3679, size: 384, offset: 128)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 384, elements: !15)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3670, file: !3522, line: 336, baseType: !3681, offset: 4608)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, elements: !829)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3540, file: !3522, line: 353, baseType: !3683, size: 32768)
!3683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 32768, elements: !3684)
!3684 = !{!3685}
!3685 = !DISubrange(count: 4096)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3521, file: !3522, line: 484, baseType: !3527, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3521, file: !3522, line: 491, baseType: !3688, size: 128, offset: 256)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3522, line: 404, size: 128, elements: !3689)
!3689 = !{!3690, !3691, !3692}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3688, file: !3522, line: 424, baseType: !243, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3688, file: !3522, line: 432, baseType: !80, size: 32, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3688, file: !3522, line: 440, baseType: !80, size: 32, offset: 96)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3521, file: !3522, line: 498, baseType: !3688, size: 128, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3521, file: !3522, line: 508, baseType: !3528, size: 33280, align: 512, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2499, file: !2500, line: 16, baseType: !814, size: 192, offset: 512)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2499, file: !2500, line: 17, baseType: !288, size: 32, offset: 704)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !549, file: !101, line: 1240, baseType: !235, size: 64, offset: 6912)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !549, file: !101, line: 1243, baseType: !469, size: 32, offset: 6976)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !549, file: !101, line: 1245, baseType: !902, size: 64, offset: 7040)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !549, file: !101, line: 1246, baseType: !902, size: 64, offset: 7104)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !549, file: !101, line: 1248, baseType: !327, size: 32, offset: 7168)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !549, file: !101, line: 1249, baseType: !3703, size: 64, offset: 7232)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !101, line: 634, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !549, file: !101, line: 1252, baseType: !257, size: 256, offset: 7296)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !549, file: !101, line: 1253, baseType: !3707, size: 128, offset: 7552)
!3707 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3708, line: 21, baseType: !3709)
!3708 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3708, line: 19, size: 128, elements: !3710)
!3710 = !{!3711}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3709, file: !3708, line: 20, baseType: !3712, size: 128)
!3712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !2935)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !549, file: !101, line: 1255, baseType: !80, size: 32, offset: 7680)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !549, file: !101, line: 1261, baseType: !749, size: 256, offset: 7744)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !549, file: !101, line: 1267, baseType: !512, size: 64, offset: 8000)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !549, file: !101, line: 1269, baseType: !492, size: 64, offset: 8064)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !549, file: !101, line: 1271, baseType: !3718, size: 448, offset: 8128)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2278, line: 63, size: 448, elements: !3719)
!3719 = !{!3720, !3725, !3726, !3727, !3728, !3729, !3730}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3718, file: !2278, line: 64, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!370, !3724, !2276}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3718, file: !2278, line: 66, baseType: !3721, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3718, file: !2278, line: 69, baseType: !672, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3718, file: !2278, line: 70, baseType: !175, size: 32, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3718, file: !2278, line: 71, baseType: !80, size: 32, offset: 224)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3718, file: !2278, line: 74, baseType: !381, size: 128, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3718, file: !2278, line: 85, baseType: !3731, size: 64, offset: 384)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !549, file: !101, line: 1274, baseType: !740, size: 64, offset: 8576)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !549, file: !101, line: 1280, baseType: !740, size: 64, offset: 8640)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !549, file: !101, line: 1283, baseType: !175, size: 32, offset: 8704)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !549, file: !101, line: 1286, baseType: !1614, size: 32, offset: 8736)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !549, file: !101, line: 1289, baseType: !2097, size: 64, offset: 8768)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !549, file: !101, line: 1290, baseType: !801, size: 64, offset: 8832)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !549, file: !101, line: 1297, baseType: !1025, size: 64, offset: 8896)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !549, file: !101, line: 1304, baseType: !3740, size: 64, offset: 8960)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3741, line: 49, size: 64, elements: !3742)
!3741 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3742 = !{!3743}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3740, file: !3741, line: 50, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3741, line: 41, size: 512, align: 512, elements: !3746)
!3746 = !{!3747, !3748, !3753}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3745, file: !3741, line: 43, baseType: !268, size: 32)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3745, file: !3741, line: 45, baseType: !3749, size: 192, offset: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3741, line: 29, size: 192, elements: !3750)
!3750 = !{!3751, !3752}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3749, file: !3741, line: 30, baseType: !381, size: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3749, file: !3741, line: 32, baseType: !672, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3745, file: !3741, line: 46, baseType: !672, size: 64, offset: 256)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !549, file: !101, line: 1305, baseType: !3740, size: 64, offset: 9024)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !549, file: !101, line: 1306, baseType: !727, size: 128, align: 64, offset: 9088)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !549, file: !101, line: 1307, baseType: !1369, size: 256, offset: 9216)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !549, file: !101, line: 1309, baseType: !749, size: 256, offset: 9472)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !549, file: !101, line: 1314, baseType: !175, size: 32, offset: 9728)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !549, file: !101, line: 1317, baseType: !268, size: 32, align: 512, offset: 10240)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !549, file: !101, line: 1318, baseType: !381, size: 128, offset: 10304)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !549, file: !101, line: 1320, baseType: !268, size: 32, offset: 10432)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !549, file: !101, line: 1321, baseType: !381, size: 128, offset: 10496)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !543, file: !544, line: 73, baseType: !175, size: 32, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !543, file: !544, line: 74, baseType: !3765, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !853, line: 42, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !494, file: !437, line: 141, baseType: !3769, size: 64, offset: 704)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!175, !2338, !942}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !494, file: !437, line: 142, baseType: !3773, size: 64, offset: 768)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!435, !435, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !436, file: !437, line: 96, baseType: !548, size: 64, offset: 832)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !436, file: !437, line: 97, baseType: !370, size: 64, offset: 896)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !436, file: !437, line: 98, baseType: !235, size: 64, offset: 960)
!3781 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !437, line: 100, baseType: !3782, size: 128, offset: 1024)
!3782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !437, line: 100, size: 128, elements: !3783)
!3783 = !{!3784, !3785}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3782, file: !437, line: 101, baseType: !381, size: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3782, file: !437, line: 102, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !436, file: !437, line: 104, baseType: !381, size: 128, offset: 1152)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !436, file: !437, line: 105, baseType: !381, size: 128, offset: 1280)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !436, file: !437, line: 113, baseType: !3790, size: 128, offset: 1408)
!3790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !437, line: 109, size: 128, elements: !3791)
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3790, file: !437, line: 110, baseType: !805, size: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3790, file: !437, line: 111, baseType: !451, size: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3790, file: !437, line: 112, baseType: !727, size: 128, align: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !429, file: !101, line: 1968, baseType: !3796, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!512, !435, !398, !3799}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3801, line: 10, size: 128, elements: !3802)
!3801 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3802 = !{!3803, !3804}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3800, file: !3801, line: 11, baseType: !1654, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3800, file: !3801, line: 12, baseType: !235, size: 64, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !429, file: !101, line: 1969, baseType: !3806, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!175, !3765, !398, !175}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !429, file: !101, line: 1970, baseType: !3810, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!423, !398, !175, !942}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !429, file: !101, line: 1972, baseType: !3814, size: 64, offset: 256)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!175, !435, !537, !175}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !429, file: !101, line: 1974, baseType: !3818, size: 64, offset: 320)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!175, !3765, !398, !435, !402, !942}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !429, file: !101, line: 1976, baseType: !3822, size: 64, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!175, !435, !398, !435}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !429, file: !101, line: 1977, baseType: !3826, size: 64, offset: 448)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!175, !398, !435}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !429, file: !101, line: 1978, baseType: !3830, size: 64, offset: 512)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!175, !3765, !398, !435, !512}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !429, file: !101, line: 1980, baseType: !3834, size: 64, offset: 576)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!175, !3765, !398, !435, !402}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !429, file: !101, line: 1982, baseType: !3826, size: 64, offset: 640)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !429, file: !101, line: 1983, baseType: !3839, size: 64, offset: 704)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!175, !3765, !398, !435, !402, !553}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !429, file: !101, line: 1985, baseType: !3843, size: 64, offset: 768)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!175, !3765, !398, !435, !398, !435, !80}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !429, file: !101, line: 1987, baseType: !3847, size: 64, offset: 832)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!175, !3765, !435, !3850}
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !101, line: 226, size: 640, elements: !3852)
!3852 = !{!3853, !3854, !3855, !3865, !3874, !3875, !3880, !3881, !3882}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3851, file: !101, line: 227, baseType: !80, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3851, file: !101, line: 228, baseType: !402, size: 16, offset: 32)
!3855 = !DIDerivedType(tag: DW_TAG_member, scope: !3851, file: !101, line: 241, baseType: !3856, size: 32, offset: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3851, file: !101, line: 241, size: 32, elements: !3857)
!3857 = !{!3858, !3859}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3856, file: !101, line: 242, baseType: !405, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3856, file: !101, line: 243, baseType: !3860, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3861, line: 16, baseType: !3862)
!3861 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3861, line: 14, size: 32, elements: !3863)
!3863 = !{!3864}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3862, file: !3861, line: 15, baseType: !410, size: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, scope: !3851, file: !101, line: 245, baseType: !3866, size: 32, offset: 96)
!3866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3851, file: !101, line: 245, size: 32, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3866, file: !101, line: 246, baseType: !415, size: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3866, file: !101, line: 247, baseType: !3870, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3861, line: 20, baseType: !3871)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3861, line: 18, size: 32, elements: !3872)
!3872 = !{!3873}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3871, file: !3861, line: 19, baseType: !419, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3851, file: !101, line: 249, baseType: !558, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3851, file: !101, line: 250, baseType: !3876, size: 128, offset: 192)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !903, line: 13, size: 128, elements: !3877)
!3877 = !{!3878, !3879}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3876, file: !903, line: 14, baseType: !902, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3876, file: !903, line: 15, baseType: !672, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3851, file: !101, line: 251, baseType: !3876, size: 128, offset: 320)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3851, file: !101, line: 252, baseType: !3876, size: 128, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3851, file: !101, line: 259, baseType: !714, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !429, file: !101, line: 1988, baseType: !3884, size: 64, offset: 896)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!175, !3765, !2338, !3887, !469, !80}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3889, line: 22, size: 1280, elements: !3890)
!3889 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3888, file: !3889, line: 23, baseType: !469, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3888, file: !3889, line: 24, baseType: !402, size: 16, offset: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3888, file: !3889, line: 25, baseType: !80, size: 32, offset: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3888, file: !3889, line: 26, baseType: !910, size: 32, offset: 96)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3888, file: !3889, line: 27, baseType: !243, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3888, file: !3889, line: 28, baseType: !243, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3888, file: !3889, line: 41, baseType: !243, size: 64, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3888, file: !3889, line: 42, baseType: !553, size: 32, offset: 320)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3888, file: !3889, line: 43, baseType: !553, size: 32, offset: 352)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3888, file: !3889, line: 44, baseType: !405, size: 32, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3888, file: !3889, line: 45, baseType: !415, size: 32, offset: 416)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3888, file: !3889, line: 46, baseType: !558, size: 64, offset: 448)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3888, file: !3889, line: 47, baseType: !3876, size: 128, offset: 512)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3888, file: !3889, line: 48, baseType: !3876, size: 128, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3888, file: !3889, line: 49, baseType: !3876, size: 128, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3888, file: !3889, line: 50, baseType: !3876, size: 128, offset: 896)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3888, file: !3889, line: 51, baseType: !243, size: 64, offset: 1024)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3888, file: !3889, line: 52, baseType: !243, size: 64, offset: 1088)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3888, file: !3889, line: 53, baseType: !469, size: 32, offset: 1152)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3888, file: !3889, line: 54, baseType: !469, size: 32, offset: 1184)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3888, file: !3889, line: 55, baseType: !243, size: 64, offset: 1216)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !429, file: !101, line: 1990, baseType: !3913, size: 64, offset: 960)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!669, !435, !537, !682}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !429, file: !101, line: 1991, baseType: !3917, size: 64, offset: 1024)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!175, !398, !3920, !243, !243}
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !101, line: 55, flags: DIFlagFwdDecl)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !429, file: !101, line: 1993, baseType: !3923, size: 64, offset: 1088)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!175, !398, !175}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !429, file: !101, line: 1994, baseType: !3927, size: 64, offset: 1152)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!175, !398, !435, !714, !80, !402}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !429, file: !101, line: 1997, baseType: !3931, size: 64, offset: 1216)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!175, !3765, !398, !714, !402}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !429, file: !101, line: 1999, baseType: !3935, size: 64, offset: 1280)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!423, !3765, !435, !175}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !429, file: !101, line: 2001, baseType: !3939, size: 64, offset: 1344)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!175, !3765, !435, !423, !175}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !429, file: !101, line: 2003, baseType: !3943, size: 64, offset: 1408)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!175, !3765, !435, !3946}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !101, line: 76, flags: DIFlagFwdDecl)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !429, file: !101, line: 2005, baseType: !3949, size: 64, offset: 1472)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!175, !435, !3946}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !429, file: !101, line: 2006, baseType: !3953, size: 64, offset: 1536)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!3956, !398}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !101, line: 3192, size: 192, elements: !3958)
!3958 = !{!3959, !3960}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3957, file: !101, line: 3193, baseType: !264, size: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3957, file: !101, line: 3194, baseType: !469, size: 32, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !399, file: !101, line: 655, baseType: !548, size: 64, offset: 448)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !399, file: !101, line: 656, baseType: !394, size: 64, offset: 512)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !399, file: !101, line: 659, baseType: !235, size: 64, offset: 576)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !399, file: !101, line: 663, baseType: !370, size: 64, offset: 640)
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !101, line: 671, baseType: !3966, size: 32, offset: 704)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !101, line: 671, size: 32, elements: !3967)
!3967 = !{!3968, !3970}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3966, file: !101, line: 672, baseType: !3969, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3966, file: !101, line: 673, baseType: !80, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !399, file: !101, line: 675, baseType: !553, size: 32, offset: 736)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !399, file: !101, line: 676, baseType: !558, size: 64, offset: 768)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !399, file: !101, line: 677, baseType: !3876, size: 128, offset: 832)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !399, file: !101, line: 678, baseType: !3876, size: 128, offset: 960)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !399, file: !101, line: 679, baseType: !3876, size: 128, offset: 1088)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !399, file: !101, line: 680, baseType: !268, size: 32, offset: 1216)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !399, file: !101, line: 681, baseType: !261, size: 16, offset: 1248)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !399, file: !101, line: 682, baseType: !296, size: 8, offset: 1264)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !399, file: !101, line: 683, baseType: !296, size: 8, offset: 1272)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !399, file: !101, line: 684, baseType: !2411, size: 64, offset: 1280)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !399, file: !101, line: 691, baseType: !370, size: 64, offset: 1344)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !399, file: !101, line: 692, baseType: !886, size: 320, offset: 1408)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !399, file: !101, line: 694, baseType: !370, size: 64, offset: 1728)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !399, file: !101, line: 695, baseType: !370, size: 64, offset: 1792)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !399, file: !101, line: 697, baseType: !805, size: 128, offset: 1856)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !399, file: !101, line: 698, baseType: !381, size: 128, offset: 1984)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !399, file: !101, line: 707, baseType: !381, size: 128, offset: 2112)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !399, file: !101, line: 708, baseType: !381, size: 128, offset: 2240)
!3989 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !101, line: 709, baseType: !3990, size: 128, offset: 2368)
!3990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !101, line: 709, size: 128, elements: !3991)
!3991 = !{!3992, !3993}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3990, file: !101, line: 710, baseType: !801, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3990, file: !101, line: 711, baseType: !727, size: 128, align: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !399, file: !101, line: 713, baseType: !742, size: 64, offset: 2496)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !399, file: !101, line: 714, baseType: !742, size: 64, offset: 2560)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !399, file: !101, line: 715, baseType: !288, size: 32, offset: 2624)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !399, file: !101, line: 716, baseType: !288, size: 32, offset: 2656)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !399, file: !101, line: 717, baseType: !288, size: 32, offset: 2688)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !399, file: !101, line: 719, baseType: !288, size: 32, offset: 2720)
!4000 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !101, line: 721, baseType: !4001, size: 64, offset: 2752)
!4001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !101, line: 721, size: 64, elements: !4002)
!4002 = !{!4003, !4004}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4001, file: !101, line: 722, baseType: !1061, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4001, file: !101, line: 723, baseType: !2165, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !399, file: !101, line: 725, baseType: !4006, size: 64, offset: 2816)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !101, line: 725, flags: DIFlagFwdDecl)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !399, file: !101, line: 726, baseType: !395, size: 1536, align: 64, offset: 2880)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !399, file: !101, line: 727, baseType: !381, size: 128, offset: 4416)
!4010 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !101, line: 728, baseType: !4011, size: 64, offset: 4544)
!4011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !101, line: 728, size: 64, elements: !4012)
!4012 = !{!4013, !4014, !4017, !4018}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4011, file: !101, line: 729, baseType: !1561, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4011, file: !101, line: 730, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !101, line: 730, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4011, file: !101, line: 731, baseType: !537, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4011, file: !101, line: 732, baseType: !80, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !399, file: !101, line: 735, baseType: !327, size: 32, offset: 4608)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !399, file: !101, line: 738, baseType: !327, size: 32, offset: 4640)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !399, file: !101, line: 739, baseType: !3703, size: 64, offset: 4672)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !399, file: !101, line: 750, baseType: !235, size: 64, offset: 4736)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !395, file: !101, line: 474, baseType: !264, size: 128, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !395, file: !101, line: 475, baseType: !886, size: 320, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !395, file: !101, line: 476, baseType: !308, size: 32, offset: 512)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !395, file: !101, line: 477, baseType: !288, size: 32, offset: 544)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !395, file: !101, line: 482, baseType: !2684, size: 128, offset: 576)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !395, file: !101, line: 483, baseType: !370, size: 64, offset: 704)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !395, file: !101, line: 484, baseType: !370, size: 64, offset: 768)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !395, file: !101, line: 485, baseType: !4031, size: 64, offset: 832)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !101, line: 404, size: 1280, elements: !4034)
!4034 = !{!4035, !4039, !4109, !4113, !4117, !4123, !4128, !4132, !4136, !4140, !4144, !4148, !4149, !4153, !4157, !4161, !4166, !4170, !4177, !4178}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4033, file: !101, line: 405, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!175, !366, !2177}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4033, file: !101, line: 406, baseType: !4040, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!175, !714, !4043}
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !127, line: 293, size: 1536, elements: !4045)
!4045 = !{!4046, !4076, !4090}
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !127, line: 295, baseType: !4047, size: 512)
!4047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4044, file: !127, line: 295, size: 512, elements: !4048)
!4048 = !{!4049, !4075}
!4049 = !DIDerivedType(tag: DW_TAG_member, scope: !4047, file: !127, line: 296, baseType: !4050, size: 448)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4047, file: !127, line: 296, size: 448, elements: !4051)
!4051 = !{!4052, !4053, !4062, !4063, !4064, !4073, !4074}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4050, file: !127, line: 298, baseType: !370, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4050, file: !127, line: 299, baseType: !4054, size: 128, offset: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !127, line: 299, size: 128, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4054, file: !127, line: 300, baseType: !381, size: 128)
!4057 = !DIDerivedType(tag: DW_TAG_member, scope: !4054, file: !127, line: 302, baseType: !4058, size: 128)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !127, line: 302, size: 128, elements: !4059)
!4059 = !{!4060, !4061}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4058, file: !127, line: 303, baseType: !235, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4058, file: !127, line: 305, baseType: !80, size: 32, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4050, file: !127, line: 310, baseType: !394, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4050, file: !127, line: 311, baseType: !370, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_member, scope: !4050, file: !127, line: 312, baseType: !4065, size: 64, offset: 320)
!4065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !127, line: 312, size: 64, elements: !4066)
!4066 = !{!4067, !4068}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4065, file: !127, line: 313, baseType: !235, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4065, file: !127, line: 314, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !127, line: 257, baseType: !4070)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 255, size: 64, elements: !4071)
!4071 = !{!4072}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4070, file: !127, line: 256, baseType: !370, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4050, file: !127, line: 316, baseType: !288, size: 32, offset: 384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4050, file: !127, line: 317, baseType: !288, size: 32, offset: 416)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4047, file: !127, line: 323, baseType: !367, size: 512, align: 128)
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !127, line: 325, baseType: !4077, size: 512, offset: 512)
!4077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4044, file: !127, line: 325, size: 512, elements: !4078)
!4078 = !{!4079, !4089}
!4079 = !DIDerivedType(tag: DW_TAG_member, scope: !4077, file: !127, line: 326, baseType: !4080, size: 320)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4077, file: !127, line: 326, size: 320, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4085, !4086, !4087, !4088}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4080, file: !127, line: 327, baseType: !370, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4080, file: !127, line: 328, baseType: !370, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4080, file: !127, line: 329, baseType: !370, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4080, file: !127, line: 331, baseType: !288, size: 32, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4080, file: !127, line: 332, baseType: !288, size: 32, offset: 224)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4080, file: !127, line: 333, baseType: !288, size: 32, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4080, file: !127, line: 335, baseType: !80, size: 32, offset: 288)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4077, file: !127, line: 339, baseType: !367, size: 512, align: 128)
!4090 = !DIDerivedType(tag: DW_TAG_member, scope: !4044, file: !127, line: 341, baseType: !4091, size: 512, offset: 1024)
!4091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4044, file: !127, line: 341, size: 512, elements: !4092)
!4092 = !{!4093, !4102, !4108}
!4093 = !DIDerivedType(tag: DW_TAG_member, scope: !4091, file: !127, line: 342, baseType: !4094, size: 384)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4091, file: !127, line: 342, size: 384, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4094, file: !127, line: 343, baseType: !370, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4094, file: !127, line: 344, baseType: !370, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4094, file: !127, line: 346, baseType: !235, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4094, file: !127, line: 347, baseType: !235, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4094, file: !127, line: 348, baseType: !235, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4094, file: !127, line: 349, baseType: !235, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_member, scope: !4091, file: !127, line: 352, baseType: !4103, size: 256)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4091, file: !127, line: 352, size: 256, elements: !4104)
!4104 = !{!4105, !4106, !4107}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4103, file: !127, line: 353, baseType: !370, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4103, file: !127, line: 354, baseType: !370, size: 64, offset: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4103, file: !127, line: 356, baseType: !381, size: 128, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4091, file: !127, line: 359, baseType: !367, size: 512, align: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4033, file: !101, line: 409, baseType: !4110, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!175, !394, !2177}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4033, file: !101, line: 412, baseType: !4114, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!942, !394, !4043}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4033, file: !101, line: 414, baseType: !4118, size: 64, offset: 256)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4121}
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !101, line: 310, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4033, file: !101, line: 416, baseType: !4124, size: 64, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!175, !714, !394, !558, !80, !4127, !1577}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4033, file: !101, line: 419, baseType: !4129, size: 64, offset: 384)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!175, !714, !394, !558, !80, !80, !366, !235}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4033, file: !101, line: 424, baseType: !4133, size: 64, offset: 448)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!241, !394, !241}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4033, file: !101, line: 425, baseType: !4137, size: 64, offset: 512)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !4043, !682, !682}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4033, file: !101, line: 426, baseType: !4141, size: 64, offset: 576)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!942, !4043, !308}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4033, file: !101, line: 427, baseType: !4145, size: 64, offset: 640)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{null, !4043}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4033, file: !101, line: 428, baseType: !1080, size: 64, offset: 704)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4033, file: !101, line: 433, baseType: !4150, size: 64, offset: 768)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!175, !394, !4043, !4043, !111}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4033, file: !101, line: 435, baseType: !4154, size: 64, offset: 832)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!175, !4043}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4033, file: !101, line: 436, baseType: !4158, size: 64, offset: 896)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!942, !4043, !682, !682}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4033, file: !101, line: 438, baseType: !4162, size: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !4043, !4165, !4165}
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4033, file: !101, line: 439, baseType: !4167, size: 64, offset: 1024)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!175, !394, !366}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4033, file: !101, line: 442, baseType: !4171, size: 64, offset: 1088)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!175, !4174, !714, !4176}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !101, line: 66, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4033, file: !101, line: 444, baseType: !1569, size: 64, offset: 1152)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4033, file: !101, line: 445, baseType: !4179, size: 64, offset: 1216)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!175, !1083, !1105}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !101, line: 486, baseType: !370, size: 64, offset: 896)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !395, file: !101, line: 487, baseType: !886, size: 320, offset: 960)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !395, file: !101, line: 488, baseType: !1614, size: 32, offset: 1280)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !395, file: !101, line: 489, baseType: !268, size: 32, offset: 1312)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !395, file: !101, line: 490, baseType: !381, size: 128, offset: 1344)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !395, file: !101, line: 491, baseType: !235, size: 64, offset: 1472)
!4188 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !127, line: 107, baseType: !4189, size: 64, offset: 192)
!4189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !127, line: 107, size: 64, elements: !4190)
!4190 = !{!4191, !4192}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4189, file: !127, line: 108, baseType: !370, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4189, file: !127, line: 109, baseType: !370, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !375, file: !127, line: 117, baseType: !370, size: 64, offset: 256)
!4194 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !127, line: 119, baseType: !4195, size: 320)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !127, line: 119, size: 320, elements: !4196)
!4196 = !{!4197, !4198, !4201, !4202, !4203}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4195, file: !127, line: 124, baseType: !370, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4195, file: !127, line: 125, baseType: !4199, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !127, line: 125, flags: DIFlagFwdDecl)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4195, file: !127, line: 126, baseType: !370, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4195, file: !127, line: 127, baseType: !370, size: 64, offset: 192)
!4203 = !DIDerivedType(tag: DW_TAG_member, scope: !4195, file: !127, line: 128, baseType: !4204, size: 64, offset: 256)
!4204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4195, file: !127, line: 128, size: 64, elements: !4205)
!4205 = !{!4206, !4207}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4204, file: !127, line: 133, baseType: !370, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4204, file: !127, line: 138, baseType: !740, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !127, line: 141, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !127, line: 141, size: 64, elements: !4210)
!4210 = !{!4211}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4209, file: !127, line: 142, baseType: !370, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !127, line: 144, baseType: !4213, size: 128)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !127, line: 144, size: 128, elements: !4214)
!4214 = !{!4215, !4286}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4213, file: !127, line: 146, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !119, line: 126, size: 1216, elements: !4218)
!4218 = !{!4219, !4229, !4250, !4251, !4252, !4253, !4254, !4268, !4269, !4270}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4217, file: !119, line: 127, baseType: !4220, size: 384)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !119, line: 21, size: 384, elements: !4221)
!4221 = !{!4222, !4223, !4225, !4226, !4227, !4228}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4220, file: !119, line: 22, baseType: !370, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4220, file: !119, line: 23, baseType: !4224, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4220, file: !119, line: 24, baseType: !4224, size: 64, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4220, file: !119, line: 25, baseType: !370, size: 64, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4220, file: !119, line: 26, baseType: !370, size: 64, offset: 256)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4220, file: !119, line: 27, baseType: !370, size: 64, offset: 320)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4217, file: !119, line: 128, baseType: !4230, size: 128, offset: 384)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4231, line: 105, size: 128, elements: !4232)
!4231 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4232 = !{!4233, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4230, file: !4231, line: 110, baseType: !370, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4230, file: !4231, line: 118, baseType: !4235, size: 64, offset: 64)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4231, line: 95, size: 448, elements: !4237)
!4237 = !{!4238, !4239, !4245, !4246, !4247, !4248, !4249}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4236, file: !4231, line: 96, baseType: !740, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4236, file: !4231, line: 97, baseType: !4240, size: 64, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4231, line: 60, baseType: !4242)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{null, !4244}
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4236, file: !4231, line: 98, baseType: !4240, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4236, file: !4231, line: 99, baseType: !942, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4236, file: !4231, line: 100, baseType: !942, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4236, file: !4231, line: 101, baseType: !727, size: 128, align: 64, offset: 256)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4236, file: !4231, line: 102, baseType: !4244, size: 64, offset: 384)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4217, file: !119, line: 129, baseType: !1791, size: 256, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4217, file: !119, line: 130, baseType: !118, size: 32, offset: 768)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4217, file: !119, line: 131, baseType: !80, size: 32, offset: 800)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4217, file: !119, line: 132, baseType: !370, size: 64, offset: 832)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4217, file: !119, line: 133, baseType: !4255, size: 64, offset: 896)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4257)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !119, line: 77, size: 192, elements: !4258)
!4258 = !{!4259, !4263, !4264}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4257, file: !119, line: 83, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{null, !366}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4257, file: !119, line: 89, baseType: !1435, size: 64, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4257, file: !119, line: 100, baseType: !4265, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!175, !4216, !370, !370, !175}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4217, file: !119, line: 134, baseType: !235, size: 64, offset: 960)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4217, file: !119, line: 135, baseType: !175, size: 32, offset: 1024)
!4270 = !DIDerivedType(tag: DW_TAG_member, scope: !4217, file: !119, line: 136, baseType: !4271, size: 128, offset: 1088)
!4271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4217, file: !119, line: 136, size: 128, elements: !4272)
!4272 = !{!4273, !4279}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4271, file: !119, line: 137, baseType: !4274, size: 128)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4275, line: 6, size: 128, elements: !4276)
!4275 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4276 = !{!4277, !4278}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4274, file: !4275, line: 7, baseType: !243, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4274, file: !4275, line: 8, baseType: !243, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, scope: !4271, file: !119, line: 138, baseType: !4280)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4271, file: !119, line: 138, elements: !4281)
!4281 = !{!4282, !4284}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4280, file: !119, line: 138, baseType: !4283)
!4283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4280, file: !119, line: 138, elements: !357)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4280, file: !119, line: 138, baseType: !4285)
!4285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4274, elements: !829)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4213, file: !127, line: 147, baseType: !235, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !372, file: !127, line: 161, baseType: !727, size: 128, align: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !127, line: 164, baseType: !4289, size: 32, offset: 384)
!4289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !127, line: 164, size: 32, elements: !4290)
!4290 = !{!4291, !4292}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4289, file: !127, line: 169, baseType: !288, size: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4289, file: !127, line: 177, baseType: !80, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !367, file: !127, line: 181, baseType: !288, size: 32, offset: 416)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !363, file: !335, line: 33, baseType: !80, size: 32, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !363, file: !335, line: 34, baseType: !80, size: 32, offset: 96)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !321, file: !238, line: 317, baseType: !4297, size: 64, offset: 896)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !3177, line: 678, size: 1984, elements: !4299)
!4299 = !{!4300, !4304, !4305, !4308, !4329, !4330, !4331, !4332, !4333, !4334, !4335}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !4298, file: !3177, line: 679, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4303, line: 325, flags: DIFlagFwdDecl)
!4303 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !4298, file: !3177, line: 680, baseType: !80, size: 32, offset: 64)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !4298, file: !3177, line: 685, baseType: !4306, size: 64, offset: 128)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !3177, line: 685, flags: DIFlagFwdDecl)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !4298, file: !3177, line: 687, baseType: !4309, size: 576, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !4310, line: 26, baseType: !4311)
!4310 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !4310, line: 16, size: 576, elements: !4312)
!4312 = !{!4313, !4314, !4315, !4316, !4317, !4318, !4323, !4328}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4311, file: !4310, line: 17, baseType: !268, size: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !4311, file: !4310, line: 18, baseType: !175, size: 32, offset: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !4311, file: !4310, line: 19, baseType: !175, size: 32, offset: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4311, file: !4310, line: 20, baseType: !1577, size: 64, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !4311, file: !4310, line: 22, baseType: !235, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4311, file: !4310, line: 23, baseType: !4319, size: 64, offset: 256)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !4310, line: 13, baseType: !4321)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{!235, !308, !235}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4311, file: !4310, line: 24, baseType: !4324, size: 64, offset: 320)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !4310, line: 14, baseType: !4326)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{null, !235, !235}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4311, file: !4310, line: 25, baseType: !814, size: 192, offset: 384)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !4298, file: !3177, line: 688, baseType: !4309, size: 576, offset: 768)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !4298, file: !3177, line: 694, baseType: !80, size: 32, offset: 1344)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !4298, file: !3177, line: 699, baseType: !268, size: 32, offset: 1376)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !4298, file: !3177, line: 700, baseType: !3176, size: 128, offset: 1408)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !4298, file: !3177, line: 701, baseType: !1369, size: 256, offset: 1536)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !4298, file: !3177, line: 702, baseType: !2097, size: 64, offset: 1792)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !4298, file: !3177, line: 707, baseType: !805, size: 128, offset: 1856)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !321, file: !238, line: 324, baseType: !4337, offset: 960)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, elements: !829)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !314, file: !143, line: 1390, baseType: !4339, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!175, !320, !1161, !80}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !314, file: !143, line: 1392, baseType: !4343, size: 64, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!175, !250, !4346}
!4346 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !143, line: 115, baseType: !80)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !314, file: !143, line: 1393, baseType: !4348, size: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{null, !250}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !314, file: !143, line: 1394, baseType: !4352, size: 64, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!175, !236, !4346, !80, !370}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !314, file: !143, line: 1396, baseType: !4352, size: 64, offset: 320)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !314, file: !143, line: 1398, baseType: !4357, size: 64, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!80, !250, !80}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !314, file: !143, line: 1400, baseType: !4348, size: 64, offset: 448)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !314, file: !143, line: 1401, baseType: !4362, size: 64, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!175, !236, !4365}
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !101, line: 56, flags: DIFlagFwdDecl)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !314, file: !143, line: 1402, baseType: !4368, size: 64, offset: 576)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!175, !236, !942}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !314, file: !143, line: 1403, baseType: !4348, size: 64, offset: 640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !314, file: !143, line: 1405, baseType: !4373, size: 64, offset: 704)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = !DISubroutineType(types: !4375)
!4375 = !{null, !236, !370}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !314, file: !143, line: 1406, baseType: !4377, size: 64, offset: 768)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!175, !250, !241, !80, !4380, !235}
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !143, line: 342, baseType: !4381)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!175, !4384, !80, !235}
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !4386, line: 106, size: 512, elements: !4387)
!4386 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!4387 = !{!4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4397, !4398}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4385, file: !4386, line: 107, baseType: !245, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4385, file: !4386, line: 108, baseType: !245, size: 64, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4385, file: !4386, line: 109, baseType: !245, size: 64, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4385, file: !4386, line: 110, baseType: !297, size: 8, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !4385, file: !4386, line: 111, baseType: !297, size: 8, offset: 200)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !4385, file: !4386, line: 112, baseType: !297, size: 8, offset: 208)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4385, file: !4386, line: 113, baseType: !297, size: 8, offset: 216)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !4385, file: !4386, line: 114, baseType: !4396, size: 32, offset: 224)
!4396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 32, elements: !810)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !4385, file: !4386, line: 115, baseType: !245, size: 64, offset: 256)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4385, file: !4386, line: 116, baseType: !4399, size: 192, offset: 320)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 192, elements: !4400)
!4400 = !{!4401}
!4401 = !DISubrange(count: 24)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !314, file: !143, line: 1408, baseType: !4403, size: 64, offset: 832)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!537, !250, !4406}
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !314, file: !143, line: 1410, baseType: !4408, size: 64, offset: 896)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!175, !250, !4411, !142}
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !314, file: !143, line: 1412, baseType: !586, size: 64, offset: 960)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !314, file: !143, line: 1413, baseType: !4414, size: 64, offset: 1024)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4416)
!4416 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !143, line: 37, flags: DIFlagFwdDecl)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !314, file: !143, line: 1420, baseType: !4418, size: 64, offset: 1088)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!175, !250, !4176}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !251, file: !143, line: 146, baseType: !4422, size: 64, offset: 640)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !143, line: 391, size: 7296, elements: !4424)
!4424 = !{!4425, !4426, !4429, !4430, !4433, !4436, !4437, !4441, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4814, !4815, !4816, !4817, !4818, !4819, !4852, !4853, !4854, !4857, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4876, !4877, !4878, !4879, !4880, !4881}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !4423, file: !143, line: 392, baseType: !1165, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !4423, file: !143, line: 393, baseType: !4427, size: 64, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !143, line: 30, flags: DIFlagFwdDecl)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !4423, file: !143, line: 395, baseType: !4230, size: 128, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4423, file: !143, line: 397, baseType: !4431, size: 64, offset: 256)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !143, line: 39, flags: DIFlagFwdDecl)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !4423, file: !143, line: 398, baseType: !4434, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !143, line: 38, flags: DIFlagFwdDecl)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !4423, file: !143, line: 399, baseType: !749, size: 256, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !4423, file: !143, line: 401, baseType: !4438, size: 64, offset: 640)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4440)
!4440 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !143, line: 401, flags: DIFlagFwdDecl)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !4423, file: !143, line: 404, baseType: !4442, size: 64, offset: 704)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !143, line: 404, flags: DIFlagFwdDecl)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !4423, file: !143, line: 406, baseType: !80, size: 32, offset: 768)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !4423, file: !143, line: 409, baseType: !264, size: 128, offset: 832)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !4423, file: !143, line: 410, baseType: !80, size: 32, offset: 960)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !4423, file: !143, line: 416, baseType: !235, size: 64, offset: 1024)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !4423, file: !143, line: 421, baseType: !370, size: 64, offset: 1088)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !4423, file: !143, line: 426, baseType: !288, size: 32, offset: 1152)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4423, file: !143, line: 432, baseType: !175, size: 32, offset: 1184)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !4423, file: !143, line: 434, baseType: !268, size: 32, offset: 1216)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !4423, file: !143, line: 436, baseType: !250, size: 64, offset: 1280)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !4423, file: !143, line: 438, baseType: !792, size: 32, offset: 1344)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !4423, file: !143, line: 443, baseType: !605, size: 64, offset: 1408)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4423, file: !143, line: 450, baseType: !4456, size: 64, offset: 1472)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !155, line: 705, size: 5824, elements: !4458)
!4458 = !{!4459, !4460, !4461, !4464, !4465, !4517, !4587, !4588, !4589, !4590, !4591, !4598, !4690, !4703, !4713, !4717, !4719, !4720, !4721, !4725, !4732, !4733, !4736, !4739, !4743, !4746, !4747, !4748, !4749, !4750, !4751, !4781, !4782, !4783, !4786, !4789, !4798, !4799, !4800, !4801, !4802, !4803}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4457, file: !155, line: 706, baseType: !599, size: 512)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4457, file: !155, line: 707, baseType: !4456, size: 64, offset: 512)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4457, file: !155, line: 709, baseType: !4462, size: 64, offset: 576)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !155, line: 37, flags: DIFlagFwdDecl)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4457, file: !155, line: 711, baseType: !512, size: 64, offset: 640)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4457, file: !155, line: 712, baseType: !4466, size: 64, offset: 704)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4468)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !155, line: 89, size: 384, elements: !4469)
!4469 = !{!4470, !4471, !4472, !4478, !4482, !4486}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4468, file: !155, line: 90, baseType: !512, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4468, file: !155, line: 91, baseType: !686, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4468, file: !155, line: 92, baseType: !4473, size: 64, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!175, !4476, !635}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4457)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4468, file: !155, line: 93, baseType: !4479, size: 64, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!537, !4476, !4406, !1665, !1666}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4468, file: !155, line: 95, baseType: !4483, size: 64, offset: 256)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !4456}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4468, file: !155, line: 97, baseType: !4487, size: 64, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4489)
!4489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !167, line: 286, size: 1472, elements: !4490)
!4490 = !{!4491, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4489, file: !167, line: 287, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!175, !4456}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4489, file: !167, line: 288, baseType: !4483, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4489, file: !167, line: 289, baseType: !4492, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4489, file: !167, line: 290, baseType: !4492, size: 64, offset: 192)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4489, file: !167, line: 291, baseType: !4492, size: 64, offset: 256)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4489, file: !167, line: 292, baseType: !4492, size: 64, offset: 320)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4489, file: !167, line: 293, baseType: !4492, size: 64, offset: 384)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4489, file: !167, line: 294, baseType: !4492, size: 64, offset: 448)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4489, file: !167, line: 295, baseType: !4492, size: 64, offset: 512)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4489, file: !167, line: 296, baseType: !4492, size: 64, offset: 576)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4489, file: !167, line: 297, baseType: !4492, size: 64, offset: 640)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4489, file: !167, line: 298, baseType: !4492, size: 64, offset: 704)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4489, file: !167, line: 299, baseType: !4492, size: 64, offset: 768)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4489, file: !167, line: 300, baseType: !4492, size: 64, offset: 832)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4489, file: !167, line: 301, baseType: !4492, size: 64, offset: 896)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4489, file: !167, line: 302, baseType: !4492, size: 64, offset: 960)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4489, file: !167, line: 303, baseType: !4492, size: 64, offset: 1024)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4489, file: !167, line: 304, baseType: !4492, size: 64, offset: 1088)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4489, file: !167, line: 305, baseType: !4492, size: 64, offset: 1152)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4489, file: !167, line: 306, baseType: !4492, size: 64, offset: 1216)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4489, file: !167, line: 307, baseType: !4492, size: 64, offset: 1280)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4489, file: !167, line: 308, baseType: !4492, size: 64, offset: 1344)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4489, file: !167, line: 309, baseType: !4492, size: 64, offset: 1408)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4457, file: !155, line: 714, baseType: !4518, size: 64, offset: 768)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4520)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4521, line: 80, size: 1344, elements: !4522)
!4521 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4522 = !{!4523, !4524, !4525, !4526, !4527, !4528, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4586}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4520, file: !4521, line: 81, baseType: !512, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4520, file: !4521, line: 82, baseType: !512, size: 64, offset: 64)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4520, file: !4521, line: 83, baseType: !686, size: 64, offset: 128)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4520, file: !4521, line: 84, baseType: !686, size: 64, offset: 192)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4520, file: !4521, line: 85, baseType: !686, size: 64, offset: 256)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4520, file: !4521, line: 87, baseType: !4529, size: 64, offset: 320)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!175, !4456, !4532}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !149, line: 96, size: 1152, elements: !4534)
!4534 = !{!4535, !4536, !4537, !4538, !4539, !4540, !4541, !4545, !4549, !4550, !4551, !4552, !4553, !4561, !4562, !4563, !4564, !4565, !4566}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4533, file: !149, line: 97, baseType: !512, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4533, file: !149, line: 98, baseType: !4518, size: 64, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4533, file: !149, line: 100, baseType: !586, size: 64, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4533, file: !149, line: 101, baseType: !512, size: 64, offset: 192)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4533, file: !149, line: 103, baseType: !942, size: 8, offset: 256)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4533, file: !149, line: 104, baseType: !148, size: 32, offset: 288)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4533, file: !149, line: 106, baseType: !4542, size: 64, offset: 320)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4544)
!4544 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !149, line: 106, flags: DIFlagFwdDecl)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4533, file: !149, line: 107, baseType: !4546, size: 64, offset: 384)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4548)
!4548 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !149, line: 107, flags: DIFlagFwdDecl)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4533, file: !149, line: 109, baseType: !4492, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4533, file: !149, line: 110, baseType: !4483, size: 64, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4533, file: !149, line: 111, baseType: !4492, size: 64, offset: 576)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4533, file: !149, line: 112, baseType: !4483, size: 64, offset: 640)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4533, file: !149, line: 113, baseType: !4554, size: 64, offset: 704)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!175, !4456, !4557}
!4557 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !167, line: 60, baseType: !4558)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !167, line: 58, size: 32, elements: !4559)
!4559 = !{!4560}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4558, file: !167, line: 59, baseType: !175, size: 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4533, file: !149, line: 114, baseType: !4492, size: 64, offset: 768)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4533, file: !149, line: 115, baseType: !686, size: 64, offset: 832)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4533, file: !149, line: 116, baseType: !686, size: 64, offset: 896)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4533, file: !149, line: 118, baseType: !4487, size: 64, offset: 960)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4533, file: !149, line: 119, baseType: !4483, size: 64, offset: 1024)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4533, file: !149, line: 121, baseType: !4567, size: 64, offset: 1088)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !149, line: 121, flags: DIFlagFwdDecl)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4520, file: !4521, line: 88, baseType: !4473, size: 64, offset: 384)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4520, file: !4521, line: 89, baseType: !4492, size: 64, offset: 448)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4520, file: !4521, line: 90, baseType: !4483, size: 64, offset: 512)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4520, file: !4521, line: 91, baseType: !4483, size: 64, offset: 576)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4520, file: !4521, line: 92, baseType: !4483, size: 64, offset: 640)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4520, file: !4521, line: 94, baseType: !4492, size: 64, offset: 704)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4520, file: !4521, line: 95, baseType: !4492, size: 64, offset: 768)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4520, file: !4521, line: 97, baseType: !4554, size: 64, offset: 832)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4520, file: !4521, line: 98, baseType: !4492, size: 64, offset: 896)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4520, file: !4521, line: 100, baseType: !4492, size: 64, offset: 960)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4520, file: !4521, line: 102, baseType: !4492, size: 64, offset: 1024)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4520, file: !4521, line: 103, baseType: !4483, size: 64, offset: 1088)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4520, file: !4521, line: 105, baseType: !4487, size: 64, offset: 1152)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4520, file: !4521, line: 107, baseType: !4583, size: 64, offset: 1216)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4585)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4521, line: 107, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4520, file: !4521, line: 109, baseType: !942, size: 8, offset: 1280)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4457, file: !155, line: 715, baseType: !4532, size: 64, offset: 832)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4457, file: !155, line: 717, baseType: !235, size: 64, offset: 896)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4457, file: !155, line: 719, baseType: !235, size: 64, offset: 960)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4457, file: !155, line: 721, baseType: !749, size: 256, offset: 1024)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4457, file: !155, line: 725, baseType: !4592, size: 448, offset: 1280)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !155, line: 517, size: 448, elements: !4593)
!4593 = !{!4594, !4595, !4596, !4597}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4592, file: !155, line: 518, baseType: !381, size: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4592, file: !155, line: 519, baseType: !381, size: 128, offset: 128)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4592, file: !155, line: 520, baseType: !381, size: 128, offset: 256)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4592, file: !155, line: 521, baseType: !154, size: 32, offset: 384)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4457, file: !155, line: 726, baseType: !4599, size: 2496, offset: 1728)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !167, line: 663, size: 2496, elements: !4600)
!4600 = !{!4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4683, !4687}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4599, file: !167, line: 664, baseType: !4557, size: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4599, file: !167, line: 665, baseType: !80, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4599, file: !167, line: 666, baseType: !80, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4599, file: !167, line: 667, baseType: !942, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4599, file: !167, line: 668, baseType: !942, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4599, file: !167, line: 669, baseType: !942, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4599, file: !167, line: 670, baseType: !942, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4599, file: !167, line: 671, baseType: !942, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4599, file: !167, line: 672, baseType: !942, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4599, file: !167, line: 673, baseType: !942, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4599, file: !167, line: 674, baseType: !942, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4599, file: !167, line: 675, baseType: !469, size: 32, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4599, file: !167, line: 676, baseType: !268, size: 32, offset: 96)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4599, file: !167, line: 678, baseType: !381, size: 128, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4599, file: !167, line: 679, baseType: !1791, size: 256, offset: 256)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4599, file: !167, line: 680, baseType: !4617, size: 64, offset: 512)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4619, line: 43, size: 1536, elements: !4620)
!4619 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4620 = !{!4621, !4622, !4623, !4624, !4625, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4618, file: !4619, line: 44, baseType: !512, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4618, file: !4619, line: 45, baseType: !175, size: 32, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4618, file: !4619, line: 46, baseType: !381, size: 128, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4618, file: !4619, line: 47, baseType: !268, size: 32, offset: 256)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4618, file: !4619, line: 48, baseType: !4626, size: 64, offset: 320)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !167, line: 629, flags: DIFlagFwdDecl)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4618, file: !4619, line: 49, baseType: !2035, size: 320, offset: 384)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4618, file: !4619, line: 50, baseType: !370, size: 64, offset: 704)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4618, file: !4619, line: 51, baseType: !2635, size: 64, offset: 768)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4618, file: !4619, line: 52, baseType: !2635, size: 64, offset: 832)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4618, file: !4619, line: 53, baseType: !2635, size: 64, offset: 896)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4618, file: !4619, line: 54, baseType: !2635, size: 64, offset: 960)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4618, file: !4619, line: 55, baseType: !2635, size: 64, offset: 1024)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4618, file: !4619, line: 56, baseType: !370, size: 64, offset: 1088)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4618, file: !4619, line: 57, baseType: !370, size: 64, offset: 1152)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4618, file: !4619, line: 58, baseType: !370, size: 64, offset: 1216)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4618, file: !4619, line: 59, baseType: !370, size: 64, offset: 1280)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4618, file: !4619, line: 60, baseType: !370, size: 64, offset: 1344)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4618, file: !4619, line: 61, baseType: !4456, size: 64, offset: 1408)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4618, file: !4619, line: 62, baseType: !942, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4618, file: !4619, line: 63, baseType: !942, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4599, file: !167, line: 681, baseType: !942, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4599, file: !167, line: 682, baseType: !942, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4599, file: !167, line: 683, baseType: !942, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4599, file: !167, line: 684, baseType: !80, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4599, file: !167, line: 685, baseType: !80, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4599, file: !167, line: 690, baseType: !2627, size: 512, offset: 640)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4599, file: !167, line: 691, baseType: !243, size: 64, offset: 1152)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4599, file: !167, line: 692, baseType: !1369, size: 256, offset: 1216)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4599, file: !167, line: 693, baseType: !814, size: 192, offset: 1472)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4599, file: !167, line: 694, baseType: !4626, size: 64, offset: 1664)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4599, file: !167, line: 695, baseType: !288, size: 32, offset: 1728)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4599, file: !167, line: 696, baseType: !288, size: 32, offset: 1760)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4599, file: !167, line: 697, baseType: !80, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4599, file: !167, line: 698, baseType: !80, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4599, file: !167, line: 699, baseType: !80, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4599, file: !167, line: 700, baseType: !80, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4599, file: !167, line: 701, baseType: !80, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4599, file: !167, line: 702, baseType: !80, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4599, file: !167, line: 703, baseType: !942, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4599, file: !167, line: 704, baseType: !80, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4599, file: !167, line: 705, baseType: !80, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4599, file: !167, line: 706, baseType: !80, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4599, file: !167, line: 707, baseType: !80, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4599, file: !167, line: 708, baseType: !80, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4599, file: !167, line: 709, baseType: !80, size: 32, offset: 1824)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4599, file: !167, line: 710, baseType: !166, size: 32, offset: 1856)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4599, file: !167, line: 711, baseType: !174, size: 32, offset: 1888)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4599, file: !167, line: 712, baseType: !174, size: 32, offset: 1920)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4599, file: !167, line: 713, baseType: !175, size: 32, offset: 1952)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4599, file: !167, line: 714, baseType: !175, size: 32, offset: 1984)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4599, file: !167, line: 715, baseType: !243, size: 64, offset: 2048)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4599, file: !167, line: 716, baseType: !243, size: 64, offset: 2112)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4599, file: !167, line: 717, baseType: !243, size: 64, offset: 2176)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4599, file: !167, line: 718, baseType: !243, size: 64, offset: 2240)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4599, file: !167, line: 720, baseType: !4678, size: 64, offset: 2304)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !167, line: 632, size: 64, elements: !4680)
!4680 = !{!4681, !4682}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4679, file: !167, line: 633, baseType: !268, size: 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4679, file: !167, line: 634, baseType: !80, size: 32, offset: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4599, file: !167, line: 721, baseType: !4684, size: 64, offset: 2368)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{null, !4456, !871}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4599, file: !167, line: 722, baseType: !4688, size: 64, offset: 2432)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !167, line: 722, flags: DIFlagFwdDecl)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4457, file: !155, line: 727, baseType: !4691, size: 64, offset: 4224)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !167, line: 742, size: 1792, elements: !4693)
!4693 = !{!4694, !4695, !4696, !4700, !4701, !4702}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4692, file: !167, line: 743, baseType: !4489, size: 1472)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4692, file: !167, line: 744, baseType: !4492, size: 64, offset: 1472)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4692, file: !167, line: 745, baseType: !4697, size: 64, offset: 1536)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{null, !4456, !942}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4692, file: !167, line: 746, baseType: !4492, size: 64, offset: 1600)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4692, file: !167, line: 747, baseType: !4483, size: 64, offset: 1664)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4692, file: !167, line: 748, baseType: !4483, size: 64, offset: 1728)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4457, file: !155, line: 736, baseType: !4704, size: 128, offset: 4288)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !155, line: 529, size: 128, elements: !4705)
!4705 = !{!4706, !4710}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4704, file: !155, line: 531, baseType: !4707, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4709, line: 13, flags: DIFlagFwdDecl)
!4709 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4704, file: !155, line: 532, baseType: !4711, size: 64, offset: 64)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !155, line: 49, flags: DIFlagFwdDecl)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4457, file: !155, line: 738, baseType: !4714, size: 64, offset: 4416)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4716)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !155, line: 738, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4457, file: !155, line: 740, baseType: !4718, size: 64, offset: 4480)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4457, file: !155, line: 741, baseType: !243, size: 64, offset: 4544)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4457, file: !155, line: 746, baseType: !243, size: 64, offset: 4608)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4457, file: !155, line: 747, baseType: !4722, size: 64, offset: 4672)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4724)
!4724 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !155, line: 747, flags: DIFlagFwdDecl)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4457, file: !155, line: 749, baseType: !4726, size: 64, offset: 4736)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !155, line: 428, size: 128, elements: !4728)
!4728 = !{!4729, !4730, !4731}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4727, file: !155, line: 433, baseType: !80, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4727, file: !155, line: 434, baseType: !80, size: 32, offset: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4727, file: !155, line: 435, baseType: !370, size: 64, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4457, file: !155, line: 751, baseType: !381, size: 128, offset: 4800)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4457, file: !155, line: 762, baseType: !4734, size: 64, offset: 4928)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !155, line: 762, flags: DIFlagFwdDecl)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4457, file: !155, line: 770, baseType: !4737, offset: 4992)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4738, line: 5, elements: !357)
!4738 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4457, file: !155, line: 772, baseType: !4740, size: 64, offset: 4992)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4742, line: 18, flags: DIFlagFwdDecl)
!4742 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4457, file: !155, line: 773, baseType: !4744, size: 64, offset: 5056)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4521, line: 22, flags: DIFlagFwdDecl)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4457, file: !155, line: 776, baseType: !175, size: 32, offset: 5120)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4457, file: !155, line: 778, baseType: !553, size: 32, offset: 5152)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4457, file: !155, line: 779, baseType: !469, size: 32, offset: 5184)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4457, file: !155, line: 781, baseType: !268, size: 32, offset: 5216)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4457, file: !155, line: 782, baseType: !381, size: 128, offset: 5248)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4457, file: !155, line: 784, baseType: !4752, size: 64, offset: 5376)
!4752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4753, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4754)
!4754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4755, line: 52, size: 768, elements: !4756)
!4755 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4756 = !{!4757, !4758, !4759, !4760, !4761, !4765, !4769, !4770, !4771, !4772, !4776, !4780}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4754, file: !4755, line: 53, baseType: !512, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4754, file: !4755, line: 55, baseType: !686, size: 64, offset: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4754, file: !4755, line: 56, baseType: !686, size: 64, offset: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4754, file: !4755, line: 58, baseType: !4473, size: 64, offset: 192)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4754, file: !4755, line: 59, baseType: !4762, size: 64, offset: 256)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!537, !4476, !4406}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4754, file: !4755, line: 61, baseType: !4766, size: 64, offset: 320)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{null, !4752}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4754, file: !4755, line: 62, baseType: !4483, size: 64, offset: 384)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4754, file: !4755, line: 64, baseType: !4492, size: 64, offset: 448)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4754, file: !4755, line: 66, baseType: !1630, size: 64, offset: 512)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4754, file: !4755, line: 67, baseType: !4773, size: 64, offset: 576)
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4774, size: 64)
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!1330, !4476}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4754, file: !4755, line: 69, baseType: !4777, size: 64, offset: 640)
!4777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4778, size: 64)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{null, !4476, !1665, !1666}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4754, file: !4755, line: 71, baseType: !4487, size: 64, offset: 704)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4457, file: !155, line: 785, baseType: !686, size: 64, offset: 5440)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4457, file: !155, line: 787, baseType: !4483, size: 64, offset: 5504)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4457, file: !155, line: 788, baseType: !4784, size: 64, offset: 5568)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !155, line: 46, flags: DIFlagFwdDecl)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4457, file: !155, line: 789, baseType: !4787, size: 64, offset: 5632)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !155, line: 48, flags: DIFlagFwdDecl)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4457, file: !155, line: 791, baseType: !4790, size: 64, offset: 5696)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !155, line: 597, size: 128, elements: !4792)
!4792 = !{!4793, !4794, !4795, !4796, !4797}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4791, file: !155, line: 598, baseType: !182, size: 32)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4791, file: !155, line: 599, baseType: !191, size: 32, offset: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4791, file: !155, line: 600, baseType: !196, size: 32, offset: 64)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4791, file: !155, line: 601, baseType: !942, size: 8, offset: 96)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4791, file: !155, line: 602, baseType: !942, size: 8, offset: 104)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4457, file: !155, line: 793, baseType: !201, size: 32, offset: 5760)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4457, file: !155, line: 795, baseType: !942, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4457, file: !155, line: 796, baseType: !942, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4457, file: !155, line: 797, baseType: !942, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4457, file: !155, line: 798, baseType: !942, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4457, file: !155, line: 799, baseType: !942, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !4423, file: !143, line: 451, baseType: !174, size: 32, offset: 1536)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !4423, file: !143, line: 457, baseType: !370, size: 64, offset: 1600)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !4423, file: !143, line: 459, baseType: !80, size: 32, offset: 1664)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !4423, file: !143, line: 466, baseType: !80, size: 32, offset: 1696)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4423, file: !143, line: 468, baseType: !2035, size: 320, offset: 1728)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !4423, file: !143, line: 469, baseType: !1369, size: 256, offset: 2048)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !4423, file: !143, line: 471, baseType: !288, size: 32, offset: 2304)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !4423, file: !143, line: 473, baseType: !4812, size: 64, offset: 2368)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !143, line: 473, flags: DIFlagFwdDecl)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !4423, file: !143, line: 475, baseType: !381, size: 128, offset: 2432)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !4423, file: !143, line: 477, baseType: !2749, size: 64, offset: 2560)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !4423, file: !143, line: 478, baseType: !348, size: 64, offset: 2624)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !4423, file: !143, line: 479, baseType: !381, size: 128, offset: 2688)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !4423, file: !143, line: 480, baseType: !749, size: 256, offset: 2816)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !4423, file: !143, line: 483, baseType: !4820, size: 960, offset: 3072)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !143, line: 300, size: 960, elements: !4821)
!4821 = !{!4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !4820, file: !143, line: 301, baseType: !207, size: 32)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !4820, file: !143, line: 302, baseType: !370, size: 64, offset: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !4820, file: !143, line: 303, baseType: !370, size: 64, offset: 128)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !4820, file: !143, line: 305, baseType: !80, size: 32, offset: 192)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !4820, file: !143, line: 306, baseType: !80, size: 32, offset: 224)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !4820, file: !143, line: 307, baseType: !80, size: 32, offset: 256)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !4820, file: !143, line: 308, baseType: !80, size: 32, offset: 288)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !4820, file: !143, line: 309, baseType: !80, size: 32, offset: 320)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4820, file: !143, line: 310, baseType: !80, size: 32, offset: 352)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !4820, file: !143, line: 311, baseType: !80, size: 32, offset: 384)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !4820, file: !143, line: 312, baseType: !80, size: 32, offset: 416)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !4820, file: !143, line: 313, baseType: !80, size: 32, offset: 448)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !4820, file: !143, line: 314, baseType: !80, size: 32, offset: 480)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !4820, file: !143, line: 315, baseType: !80, size: 32, offset: 512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !4820, file: !143, line: 316, baseType: !80, size: 32, offset: 544)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !4820, file: !143, line: 317, baseType: !80, size: 32, offset: 576)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !4820, file: !143, line: 318, baseType: !80, size: 32, offset: 608)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !4820, file: !143, line: 319, baseType: !80, size: 32, offset: 640)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !4820, file: !143, line: 320, baseType: !80, size: 32, offset: 672)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !4820, file: !143, line: 321, baseType: !80, size: 32, offset: 704)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !4820, file: !143, line: 322, baseType: !80, size: 32, offset: 736)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !4820, file: !143, line: 323, baseType: !80, size: 32, offset: 768)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !4820, file: !143, line: 325, baseType: !261, size: 16, offset: 800)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !4820, file: !143, line: 326, baseType: !261, size: 16, offset: 816)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !4820, file: !143, line: 327, baseType: !261, size: 16, offset: 832)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !4820, file: !143, line: 329, baseType: !298, size: 8, offset: 848)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !4820, file: !143, line: 330, baseType: !298, size: 8, offset: 856)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !4820, file: !143, line: 331, baseType: !298, size: 8, offset: 864)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !4820, file: !143, line: 332, baseType: !211, size: 32, offset: 896)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !4820, file: !143, line: 339, baseType: !80, size: 32, offset: 928)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !4423, file: !143, line: 485, baseType: !80, size: 32, offset: 4032)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4423, file: !143, line: 487, baseType: !175, size: 32, offset: 4064)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !4423, file: !143, line: 489, baseType: !4855, size: 64, offset: 4096)
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4856 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !143, line: 31, flags: DIFlagFwdDecl)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !4423, file: !143, line: 494, baseType: !4858, size: 64, offset: 4160)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !143, line: 35, flags: DIFlagFwdDecl)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !4423, file: !143, line: 495, baseType: !381, size: 128, offset: 4224)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !4423, file: !143, line: 497, baseType: !381, size: 128, offset: 4352)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !4423, file: !143, line: 498, baseType: !268, size: 32, offset: 4480)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !4423, file: !143, line: 499, baseType: !2092, size: 704, offset: 4544)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !4423, file: !143, line: 501, baseType: !749, size: 256, offset: 5248)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !4423, file: !143, line: 502, baseType: !749, size: 256, offset: 5504)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !4423, file: !143, line: 508, baseType: !381, size: 128, offset: 5760)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !4423, file: !143, line: 509, baseType: !268, size: 32, offset: 5888)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !4423, file: !143, line: 511, baseType: !175, size: 32, offset: 5920)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4423, file: !143, line: 517, baseType: !727, size: 128, align: 64, offset: 5952)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !4423, file: !143, line: 518, baseType: !814, size: 192, offset: 6080)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !4423, file: !143, line: 523, baseType: !749, size: 256, offset: 6272)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !4423, file: !143, line: 525, baseType: !175, size: 32, offset: 6528)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !4423, file: !143, line: 527, baseType: !4874, size: 64, offset: 6592)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !143, line: 527, flags: DIFlagFwdDecl)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !4423, file: !143, line: 528, baseType: !381, size: 128, offset: 6656)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !4423, file: !143, line: 530, baseType: !435, size: 64, offset: 6784)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !4423, file: !143, line: 531, baseType: !435, size: 64, offset: 6848)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !4423, file: !143, line: 532, baseType: !435, size: 64, offset: 6912)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4423, file: !143, line: 536, baseType: !749, size: 256, offset: 6976)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !4423, file: !143, line: 538, baseType: !942, size: 8, offset: 7232)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !251, file: !143, line: 147, baseType: !235, size: 64, offset: 704)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !251, file: !143, line: 149, baseType: !4298, size: 1984, offset: 768)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !143, line: 151, baseType: !175, size: 32, offset: 2752)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !251, file: !143, line: 152, baseType: !370, size: 64, offset: 2816)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !251, file: !143, line: 161, baseType: !749, size: 256, offset: 2880)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !251, file: !143, line: 162, baseType: !80, size: 32, offset: 3136)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !251, file: !143, line: 164, baseType: !2444, size: 64, offset: 3200)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !251, file: !143, line: 165, baseType: !599, size: 512, offset: 3264)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !251, file: !143, line: 166, baseType: !605, size: 64, offset: 3776)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !251, file: !143, line: 168, baseType: !381, size: 128, offset: 3840)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !251, file: !143, line: 170, baseType: !4893, size: 64, offset: 3968)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !143, line: 170, flags: DIFlagFwdDecl)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !251, file: !143, line: 171, baseType: !288, size: 32, offset: 4032)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !251, file: !143, line: 172, baseType: !4897, size: 64, offset: 4096)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !143, line: 104, flags: DIFlagFwdDecl)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !251, file: !143, line: 197, baseType: !4900, size: 64, offset: 4160)
!4900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4901, size: 64)
!4901 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !143, line: 197, flags: DIFlagFwdDecl)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !251, file: !143, line: 199, baseType: !175, size: 32, offset: 4224)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !251, file: !143, line: 200, baseType: !4904, size: 64, offset: 4288)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !143, line: 105, flags: DIFlagFwdDecl)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !251, file: !143, line: 201, baseType: !2063, offset: 4352)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !251, file: !143, line: 202, baseType: !243, size: 64, offset: 4352)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !251, file: !143, line: 203, baseType: !4346, size: 32, offset: 4416)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !251, file: !143, line: 209, baseType: !4910, size: 64, offset: 4480)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !143, line: 384, size: 576, elements: !4912)
!4912 = !{!4913, !4914, !4915, !4916}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4911, file: !143, line: 385, baseType: !599, size: 512)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !4911, file: !143, line: 386, baseType: !942, size: 8, offset: 512)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !4911, file: !143, line: 387, baseType: !80, size: 32, offset: 544)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !4911, file: !143, line: 388, baseType: !4917, offset: 576)
!4917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4918, elements: !829)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !143, line: 378, size: 640, elements: !4919)
!4919 = !{!4920, !4921, !4922}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4918, file: !143, line: 379, baseType: !599, size: 512)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !4918, file: !143, line: 380, baseType: !241, size: 64, offset: 512)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !4918, file: !143, line: 381, baseType: !241, size: 64, offset: 576)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !237, file: !238, line: 44, baseType: !4422, size: 64, offset: 192)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !237, file: !238, line: 45, baseType: !4925, size: 64, offset: 256)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !238, line: 45, flags: DIFlagFwdDecl)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !237, file: !238, line: 46, baseType: !370, size: 64, offset: 320)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !237, file: !238, line: 47, baseType: !942, size: 8, offset: 384)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !237, file: !238, line: 48, baseType: !296, size: 8, offset: 392)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !237, file: !238, line: 49, baseType: !942, size: 8, offset: 400)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !237, file: !238, line: 50, baseType: !942, size: 8, offset: 408)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !237, file: !238, line: 51, baseType: !553, size: 32, offset: 416)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !237, file: !238, line: 52, baseType: !288, size: 32, offset: 448)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !237, file: !238, line: 53, baseType: !268, size: 32, offset: 480)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !237, file: !238, line: 54, baseType: !398, size: 64, offset: 512)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !237, file: !238, line: 55, baseType: !235, size: 64, offset: 576)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !237, file: !238, line: 56, baseType: !235, size: 64, offset: 640)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !237, file: !238, line: 57, baseType: !4939, size: 64, offset: 704)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4941)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !143, line: 1477, size: 128, elements: !4942)
!4942 = !{!4943, !4947}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !4941, file: !143, line: 1478, baseType: !4944, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{null, !236, !942}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4941, file: !143, line: 1483, baseType: !4948, size: 64, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{null, !236}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !237, file: !238, line: 58, baseType: !749, size: 256, offset: 768)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !237, file: !238, line: 60, baseType: !175, size: 32, offset: 1024)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !237, file: !238, line: 61, baseType: !175, size: 32, offset: 1056)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !237, file: !238, line: 62, baseType: !605, size: 64, offset: 1088)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !237, file: !238, line: 65, baseType: !749, size: 256, offset: 1152)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !237, file: !238, line: 66, baseType: !548, size: 64, offset: 1408)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !237, file: !238, line: 68, baseType: !4958, size: 64, offset: 1472)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !143, line: 63, size: 808, elements: !4960)
!4960 = !{!4961, !4965}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !4959, file: !143, line: 64, baseType: !4962, size: 296)
!4962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !4963)
!4963 = !{!4964}
!4964 = !DISubrange(count: 37)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !4959, file: !143, line: 65, baseType: !4966, size: 512, offset: 296)
!4966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 512, elements: !642)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !237, file: !238, line: 72, baseType: !942, size: 8, offset: 1536)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !237, file: !238, line: 77, baseType: !4457, size: 5824, offset: 1600)
!4969 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_mark_t", file: !265, line: 250, baseType: !80)
!4970 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !64, !69, !74}
!4971 = !{i32 7, !"Dwarf Version", i32 5}
!4972 = !{i32 2, !"Debug Info Version", i32 3}
!4973 = !{i32 1, !"wchar_size", i32 2}
!4974 = !{i32 8, !"cf-protection-branch", i32 1}
!4975 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4976 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4977 = !{i32 1, !"Code Model", i32 2}
!4978 = !{i32 1, !"override-stack-alignment", i32 8}
!4979 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4980 = distinct !DISubprogram(name: "early_lookup_bdev", scope: !2, file: !2, line: 244, type: !4981, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !4984)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!175, !512, !4983}
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!4984 = !{!4985, !4986}
!4985 = !DILocalVariable(name: "name", arg: 1, scope: !4980, file: !2, line: 244, type: !512)
!4986 = !DILocalVariable(name: "devt", arg: 2, scope: !4980, file: !2, line: 244, type: !4983)
!4987 = !DILocation(line: 244, column: 42, scope: !4980)
!4988 = !DILocation(line: 244, column: 55, scope: !4980)
!4989 = !DILocation(line: 246, column: 14, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 246, column: 6)
!4991 = !DILocation(line: 246, column: 6, scope: !4990)
!4992 = !DILocation(line: 246, column: 36, scope: !4990)
!4993 = !DILocation(line: 246, column: 6, scope: !4980)
!4994 = !DILocation(line: 247, column: 29, scope: !4990)
!4995 = !DILocation(line: 247, column: 34, scope: !4990)
!4996 = !DILocation(line: 247, column: 39, scope: !4990)
!4997 = !DILocation(line: 247, column: 10, scope: !4990)
!4998 = !DILocation(line: 247, column: 3, scope: !4990)
!4999 = !DILocation(line: 248, column: 14, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 248, column: 6)
!5001 = !DILocation(line: 248, column: 6, scope: !5000)
!5002 = !DILocation(line: 248, column: 38, scope: !5000)
!5003 = !DILocation(line: 248, column: 6, scope: !4980)
!5004 = !DILocation(line: 249, column: 30, scope: !5000)
!5005 = !DILocation(line: 249, column: 35, scope: !5000)
!5006 = !DILocation(line: 249, column: 41, scope: !5000)
!5007 = !DILocation(line: 249, column: 10, scope: !5000)
!5008 = !DILocation(line: 249, column: 3, scope: !5000)
!5009 = !DILocation(line: 250, column: 14, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4980, file: !2, line: 250, column: 6)
!5011 = !DILocation(line: 250, column: 6, scope: !5010)
!5012 = !DILocation(line: 250, column: 32, scope: !5010)
!5013 = !DILocation(line: 250, column: 6, scope: !4980)
!5014 = !DILocation(line: 251, column: 28, scope: !5010)
!5015 = !DILocation(line: 251, column: 33, scope: !5010)
!5016 = !DILocation(line: 251, column: 38, scope: !5010)
!5017 = !DILocation(line: 251, column: 10, scope: !5010)
!5018 = !DILocation(line: 251, column: 3, scope: !5010)
!5019 = !DILocation(line: 252, column: 26, scope: !4980)
!5020 = !DILocation(line: 252, column: 32, scope: !4980)
!5021 = !DILocation(line: 252, column: 9, scope: !4980)
!5022 = !DILocation(line: 252, column: 2, scope: !4980)
!5023 = !DILocation(line: 253, column: 1, scope: !4980)
!5024 = !DISubprogram(name: "strncmp", scope: !5025, file: !5025, line: 91, type: !5026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5025 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!175, !512, !512, !683}
!5028 = distinct !DISubprogram(name: "devt_from_partuuid", scope: !2, file: !2, line: 46, type: !4981, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5029)
!5029 = !{!5030, !5031, !5032, !5037, !5038, !5039, !5040, !5043, !5047, !5049}
!5030 = !DILocalVariable(name: "uuid_str", arg: 1, scope: !5028, file: !2, line: 46, type: !512)
!5031 = !DILocalVariable(name: "devt", arg: 2, scope: !5028, file: !2, line: 46, type: !4983)
!5032 = !DILocalVariable(name: "cmp", scope: !5028, file: !2, line: 48, type: !5033)
!5033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uuidcmp", file: !2, line: 9, size: 128, elements: !5034)
!5034 = !{!5035, !5036}
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5033, file: !2, line: 10, baseType: !512, size: 64)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5033, file: !2, line: 11, baseType: !175, size: 32, offset: 64)
!5037 = !DILocalVariable(name: "dev", scope: !5028, file: !2, line: 49, type: !4456)
!5038 = !DILocalVariable(name: "offset", scope: !5028, file: !2, line: 50, type: !175)
!5039 = !DILocalVariable(name: "slash", scope: !5028, file: !2, line: 51, type: !537)
!5040 = !DILocalVariable(name: "c", scope: !5041, file: !2, line: 58, type: !4)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !2, line: 57, column: 13)
!5042 = distinct !DILexicalBlock(scope: !5028, file: !2, line: 57, column: 6)
!5043 = !DILocalVariable(name: "__mptr", scope: !5044, file: !2, line: 80, type: !235)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !2, line: 80, column: 21)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !2, line: 75, column: 14)
!5046 = distinct !DILexicalBlock(scope: !5028, file: !2, line: 75, column: 6)
!5047 = !DILocalVariable(name: "__mptr", scope: !5048, file: !2, line: 81, type: !235)
!5048 = distinct !DILexicalBlock(scope: !5045, file: !2, line: 81, column: 7)
!5049 = !DILabel(scope: !5028, name: "out_invalid", file: !2, line: 89)
!5050 = !DILocation(line: 46, column: 50, scope: !5028)
!5051 = !DILocation(line: 46, column: 67, scope: !5028)
!5052 = !DILocation(line: 48, column: 2, scope: !5028)
!5053 = !DILocation(line: 48, column: 17, scope: !5028)
!5054 = !DILocation(line: 49, column: 2, scope: !5028)
!5055 = !DILocation(line: 49, column: 17, scope: !5028)
!5056 = !DILocation(line: 50, column: 2, scope: !5028)
!5057 = !DILocation(line: 50, column: 6, scope: !5028)
!5058 = !DILocation(line: 51, column: 2, scope: !5028)
!5059 = !DILocation(line: 51, column: 8, scope: !5028)
!5060 = !DILocation(line: 53, column: 13, scope: !5028)
!5061 = !DILocation(line: 53, column: 6, scope: !5028)
!5062 = !DILocation(line: 53, column: 11, scope: !5028)
!5063 = !DILocation(line: 55, column: 17, scope: !5028)
!5064 = !DILocation(line: 55, column: 10, scope: !5028)
!5065 = !DILocation(line: 55, column: 8, scope: !5028)
!5066 = !DILocation(line: 57, column: 6, scope: !5042)
!5067 = !DILocation(line: 57, column: 6, scope: !5028)
!5068 = !DILocation(line: 58, column: 3, scope: !5041)
!5069 = !DILocation(line: 58, column: 8, scope: !5041)
!5070 = !DILocation(line: 61, column: 14, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5041, file: !2, line: 61, column: 7)
!5072 = !DILocation(line: 61, column: 20, scope: !5071)
!5073 = !DILocation(line: 61, column: 7, scope: !5071)
!5074 = !DILocation(line: 61, column: 56, scope: !5071)
!5075 = !DILocation(line: 61, column: 7, scope: !5041)
!5076 = !DILocation(line: 62, column: 4, scope: !5071)
!5077 = !DILocation(line: 63, column: 13, scope: !5041)
!5078 = !DILocation(line: 63, column: 21, scope: !5041)
!5079 = !DILocation(line: 63, column: 19, scope: !5041)
!5080 = !DILocation(line: 63, column: 7, scope: !5041)
!5081 = !DILocation(line: 63, column: 11, scope: !5041)
!5082 = !DILocation(line: 64, column: 2, scope: !5042)
!5083 = !DILocation(line: 64, column: 2, scope: !5041)
!5084 = !DILocation(line: 65, column: 20, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5042, file: !2, line: 64, column: 9)
!5086 = !DILocation(line: 65, column: 13, scope: !5085)
!5087 = !DILocation(line: 65, column: 7, scope: !5085)
!5088 = !DILocation(line: 65, column: 11, scope: !5085)
!5089 = !DILocation(line: 68, column: 11, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5028, file: !2, line: 68, column: 6)
!5091 = !DILocation(line: 68, column: 7, scope: !5090)
!5092 = !DILocation(line: 68, column: 6, scope: !5028)
!5093 = !DILocation(line: 69, column: 3, scope: !5090)
!5094 = !DILocation(line: 71, column: 8, scope: !5028)
!5095 = !DILocation(line: 71, column: 6, scope: !5028)
!5096 = !DILocation(line: 72, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5028, file: !2, line: 72, column: 6)
!5098 = !DILocation(line: 72, column: 6, scope: !5028)
!5099 = !DILocation(line: 73, column: 3, scope: !5097)
!5100 = !DILocation(line: 75, column: 6, scope: !5046)
!5101 = !DILocation(line: 75, column: 6, scope: !5028)
!5102 = !DILocation(line: 80, column: 21, scope: !5044)
!5103 = !DILocation(line: 80, column: 21, scope: !5045)
!5104 = !DILocation(line: 81, column: 7, scope: !5048)
!5105 = !DILocation(line: 81, column: 7, scope: !5045)
!5106 = !DILocation(line: 81, column: 25, scope: !5045)
!5107 = !DILocation(line: 81, column: 37, scope: !5045)
!5108 = !DILocation(line: 81, column: 35, scope: !5045)
!5109 = !DILocation(line: 80, column: 11, scope: !5045)
!5110 = !DILocation(line: 80, column: 4, scope: !5045)
!5111 = !DILocation(line: 80, column: 9, scope: !5045)
!5112 = !DILocation(line: 82, column: 2, scope: !5045)
!5113 = !DILocation(line: 83, column: 11, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5046, file: !2, line: 82, column: 9)
!5115 = !DILocation(line: 83, column: 16, scope: !5114)
!5116 = !DILocation(line: 83, column: 4, scope: !5114)
!5117 = !DILocation(line: 83, column: 9, scope: !5114)
!5118 = !DILocation(line: 86, column: 13, scope: !5028)
!5119 = !DILocation(line: 86, column: 2, scope: !5028)
!5120 = !DILocation(line: 87, column: 2, scope: !5028)
!5121 = !DILocation(line: 89, column: 1, scope: !5028)
!5122 = !DILocation(line: 90, column: 2, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5028, file: !2, line: 90, column: 2)
!5124 = !DILocation(line: 90, column: 2, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5123, file: !2, line: 90, column: 2)
!5126 = !DILocation(line: 92, column: 2, scope: !5028)
!5127 = !DILocation(line: 93, column: 1, scope: !5028)
!5128 = distinct !DISubprogram(name: "devt_from_partlabel", scope: !2, file: !2, line: 112, type: !4981, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5129)
!5129 = !{!5130, !5131, !5132}
!5130 = !DILocalVariable(name: "label", arg: 1, scope: !5128, file: !2, line: 112, type: !512)
!5131 = !DILocalVariable(name: "devt", arg: 2, scope: !5128, file: !2, line: 112, type: !4983)
!5132 = !DILocalVariable(name: "dev", scope: !5128, file: !2, line: 114, type: !4456)
!5133 = !DILocation(line: 112, column: 51, scope: !5128)
!5134 = !DILocation(line: 112, column: 65, scope: !5128)
!5135 = !DILocation(line: 114, column: 2, scope: !5128)
!5136 = !DILocation(line: 114, column: 17, scope: !5128)
!5137 = !DILocation(line: 116, column: 46, scope: !5128)
!5138 = !DILocation(line: 116, column: 8, scope: !5128)
!5139 = !DILocation(line: 116, column: 6, scope: !5128)
!5140 = !DILocation(line: 117, column: 7, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 117, column: 6)
!5142 = !DILocation(line: 117, column: 6, scope: !5128)
!5143 = !DILocation(line: 118, column: 3, scope: !5141)
!5144 = !DILocation(line: 119, column: 10, scope: !5128)
!5145 = !DILocation(line: 119, column: 15, scope: !5128)
!5146 = !DILocation(line: 119, column: 3, scope: !5128)
!5147 = !DILocation(line: 119, column: 8, scope: !5128)
!5148 = !DILocation(line: 120, column: 13, scope: !5128)
!5149 = !DILocation(line: 120, column: 2, scope: !5128)
!5150 = !DILocation(line: 121, column: 2, scope: !5128)
!5151 = !DILocation(line: 122, column: 1, scope: !5128)
!5152 = distinct !DISubprogram(name: "devt_from_devname", scope: !2, file: !2, line: 153, type: !4981, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5153)
!5153 = !{!5154, !5155, !5156, !5157, !5158}
!5154 = !DILocalVariable(name: "name", arg: 1, scope: !5152, file: !2, line: 153, type: !512)
!5155 = !DILocalVariable(name: "devt", arg: 2, scope: !5152, file: !2, line: 153, type: !4983)
!5156 = !DILocalVariable(name: "part", scope: !5152, file: !2, line: 155, type: !175)
!5157 = !DILocalVariable(name: "s", scope: !5152, file: !2, line: 156, type: !257)
!5158 = !DILocalVariable(name: "p", scope: !5152, file: !2, line: 157, type: !537)
!5159 = !DILocation(line: 153, column: 49, scope: !5152)
!5160 = !DILocation(line: 153, column: 62, scope: !5152)
!5161 = !DILocation(line: 155, column: 2, scope: !5152)
!5162 = !DILocation(line: 155, column: 6, scope: !5152)
!5163 = !DILocation(line: 156, column: 2, scope: !5152)
!5164 = !DILocation(line: 156, column: 7, scope: !5152)
!5165 = !DILocation(line: 157, column: 2, scope: !5152)
!5166 = !DILocation(line: 157, column: 8, scope: !5152)
!5167 = !DILocation(line: 159, column: 13, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 159, column: 6)
!5169 = !DILocation(line: 159, column: 6, scope: !5168)
!5170 = !DILocation(line: 159, column: 19, scope: !5168)
!5171 = !DILocation(line: 159, column: 6, scope: !5152)
!5172 = !DILocation(line: 160, column: 3, scope: !5168)
!5173 = !DILocation(line: 161, column: 9, scope: !5152)
!5174 = !DILocation(line: 161, column: 12, scope: !5152)
!5175 = !DILocation(line: 161, column: 2, scope: !5152)
!5176 = !DILocation(line: 162, column: 11, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 162, column: 2)
!5178 = !DILocation(line: 162, column: 9, scope: !5177)
!5179 = !DILocation(line: 162, column: 7, scope: !5177)
!5180 = !DILocation(line: 162, column: 15, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5177, file: !2, line: 162, column: 2)
!5182 = !DILocation(line: 162, column: 14, scope: !5181)
!5183 = !DILocation(line: 162, column: 2, scope: !5177)
!5184 = !DILocation(line: 163, column: 8, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5186, file: !2, line: 163, column: 7)
!5186 = distinct !DILexicalBlock(scope: !5181, file: !2, line: 162, column: 23)
!5187 = !DILocation(line: 163, column: 7, scope: !5185)
!5188 = !DILocation(line: 163, column: 10, scope: !5185)
!5189 = !DILocation(line: 163, column: 7, scope: !5186)
!5190 = !DILocation(line: 164, column: 5, scope: !5185)
!5191 = !DILocation(line: 164, column: 7, scope: !5185)
!5192 = !DILocation(line: 164, column: 4, scope: !5185)
!5193 = !DILocation(line: 165, column: 2, scope: !5186)
!5194 = !DILocation(line: 162, column: 19, scope: !5181)
!5195 = !DILocation(line: 162, column: 2, scope: !5181)
!5196 = distinct !{!5196, !5183, !5197, !5198, !5199}
!5197 = !DILocation(line: 165, column: 2, scope: !5177)
!5198 = !{!"llvm.loop.mustprogress"}
!5199 = !{!"llvm.loop.unroll.disable"}
!5200 = !DILocation(line: 167, column: 26, scope: !5152)
!5201 = !DILocation(line: 167, column: 10, scope: !5152)
!5202 = !DILocation(line: 167, column: 3, scope: !5152)
!5203 = !DILocation(line: 167, column: 8, scope: !5152)
!5204 = !DILocation(line: 168, column: 7, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 168, column: 6)
!5206 = !DILocation(line: 168, column: 6, scope: !5205)
!5207 = !DILocation(line: 168, column: 6, scope: !5152)
!5208 = !DILocation(line: 169, column: 3, scope: !5205)
!5209 = !DILocation(line: 175, column: 2, scope: !5152)
!5210 = !DILocation(line: 175, column: 9, scope: !5152)
!5211 = !DILocation(line: 175, column: 13, scope: !5152)
!5212 = !DILocation(line: 175, column: 11, scope: !5152)
!5213 = !DILocation(line: 175, column: 15, scope: !5152)
!5214 = !DILocation(line: 175, column: 26, scope: !5152)
!5215 = !DILocation(line: 175, column: 18, scope: !5152)
!5216 = !DILocation(line: 0, scope: !5152)
!5217 = !DILocation(line: 176, column: 4, scope: !5152)
!5218 = distinct !{!5218, !5209, !5217, !5198, !5199}
!5219 = !DILocation(line: 177, column: 6, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 177, column: 6)
!5221 = !DILocation(line: 177, column: 11, scope: !5220)
!5222 = !DILocation(line: 177, column: 8, scope: !5220)
!5223 = !DILocation(line: 177, column: 13, scope: !5220)
!5224 = !DILocation(line: 177, column: 18, scope: !5220)
!5225 = !DILocation(line: 177, column: 17, scope: !5220)
!5226 = !DILocation(line: 177, column: 20, scope: !5220)
!5227 = !DILocation(line: 177, column: 24, scope: !5220)
!5228 = !DILocation(line: 177, column: 23, scope: !5220)
!5229 = !DILocation(line: 177, column: 26, scope: !5220)
!5230 = !DILocation(line: 177, column: 6, scope: !5152)
!5231 = !DILocation(line: 178, column: 3, scope: !5220)
!5232 = !DILocation(line: 181, column: 24, scope: !5152)
!5233 = !DILocation(line: 181, column: 9, scope: !5152)
!5234 = !DILocation(line: 181, column: 7, scope: !5152)
!5235 = !DILocation(line: 182, column: 3, scope: !5152)
!5236 = !DILocation(line: 182, column: 5, scope: !5152)
!5237 = !DILocation(line: 183, column: 26, scope: !5152)
!5238 = !DILocation(line: 183, column: 29, scope: !5152)
!5239 = !DILocation(line: 183, column: 10, scope: !5152)
!5240 = !DILocation(line: 183, column: 3, scope: !5152)
!5241 = !DILocation(line: 183, column: 8, scope: !5152)
!5242 = !DILocation(line: 184, column: 7, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 184, column: 6)
!5244 = !DILocation(line: 184, column: 6, scope: !5243)
!5245 = !DILocation(line: 184, column: 6, scope: !5152)
!5246 = !DILocation(line: 185, column: 3, scope: !5243)
!5247 = !DILocation(line: 188, column: 6, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 188, column: 6)
!5249 = !DILocation(line: 188, column: 10, scope: !5248)
!5250 = !DILocation(line: 188, column: 12, scope: !5248)
!5251 = !DILocation(line: 188, column: 8, scope: !5248)
!5252 = !DILocation(line: 188, column: 16, scope: !5248)
!5253 = !DILocation(line: 188, column: 28, scope: !5248)
!5254 = !DILocation(line: 188, column: 20, scope: !5248)
!5255 = !DILocation(line: 188, column: 35, scope: !5248)
!5256 = !DILocation(line: 188, column: 38, scope: !5248)
!5257 = !DILocation(line: 188, column: 44, scope: !5248)
!5258 = !DILocation(line: 188, column: 6, scope: !5152)
!5259 = !DILocation(line: 189, column: 3, scope: !5248)
!5260 = !DILocation(line: 190, column: 2, scope: !5152)
!5261 = !DILocation(line: 190, column: 8, scope: !5152)
!5262 = !DILocation(line: 191, column: 26, scope: !5152)
!5263 = !DILocation(line: 191, column: 29, scope: !5152)
!5264 = !DILocation(line: 191, column: 10, scope: !5152)
!5265 = !DILocation(line: 191, column: 3, scope: !5152)
!5266 = !DILocation(line: 191, column: 8, scope: !5152)
!5267 = !DILocation(line: 192, column: 7, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 192, column: 6)
!5269 = !DILocation(line: 192, column: 6, scope: !5268)
!5270 = !DILocation(line: 192, column: 6, scope: !5152)
!5271 = !DILocation(line: 193, column: 3, scope: !5268)
!5272 = !DILocation(line: 194, column: 2, scope: !5152)
!5273 = !DILocation(line: 195, column: 1, scope: !5152)
!5274 = distinct !DISubprogram(name: "devt_from_devnum", scope: !2, file: !2, line: 197, type: !4981, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5275)
!5275 = !{!5276, !5277, !5278, !5279, !5280, !5281, !5282}
!5276 = !DILocalVariable(name: "name", arg: 1, scope: !5274, file: !2, line: 197, type: !512)
!5277 = !DILocalVariable(name: "devt", arg: 2, scope: !5274, file: !2, line: 197, type: !4983)
!5278 = !DILocalVariable(name: "maj", scope: !5274, file: !2, line: 199, type: !80)
!5279 = !DILocalVariable(name: "min", scope: !5274, file: !2, line: 199, type: !80)
!5280 = !DILocalVariable(name: "offset", scope: !5274, file: !2, line: 199, type: !80)
!5281 = !DILocalVariable(name: "p", scope: !5274, file: !2, line: 200, type: !537)
!5282 = !DILocalVariable(name: "dummy", scope: !5274, file: !2, line: 200, type: !4)
!5283 = !DILocation(line: 197, column: 48, scope: !5274)
!5284 = !DILocation(line: 197, column: 61, scope: !5274)
!5285 = !DILocation(line: 199, column: 2, scope: !5274)
!5286 = !DILocation(line: 199, column: 11, scope: !5274)
!5287 = !DILocation(line: 199, column: 16, scope: !5274)
!5288 = !DILocation(line: 199, column: 21, scope: !5274)
!5289 = !DILocation(line: 200, column: 2, scope: !5274)
!5290 = !DILocation(line: 200, column: 8, scope: !5274)
!5291 = !DILocation(line: 200, column: 11, scope: !5274)
!5292 = !DILocation(line: 202, column: 13, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5274, file: !2, line: 202, column: 6)
!5294 = !DILocation(line: 202, column: 6, scope: !5293)
!5295 = !DILocation(line: 202, column: 50, scope: !5293)
!5296 = !DILocation(line: 202, column: 55, scope: !5293)
!5297 = !DILocation(line: 203, column: 13, scope: !5293)
!5298 = !DILocation(line: 203, column: 6, scope: !5293)
!5299 = !DILocation(line: 203, column: 63, scope: !5293)
!5300 = !DILocation(line: 202, column: 6, scope: !5274)
!5301 = !DILocation(line: 204, column: 11, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5293, file: !2, line: 203, column: 69)
!5303 = !DILocation(line: 204, column: 4, scope: !5302)
!5304 = !DILocation(line: 204, column: 9, scope: !5302)
!5305 = !DILocation(line: 205, column: 7, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 205, column: 7)
!5307 = !DILocation(line: 205, column: 14, scope: !5306)
!5308 = !DILocation(line: 205, column: 11, scope: !5306)
!5309 = !DILocation(line: 205, column: 27, scope: !5306)
!5310 = !DILocation(line: 205, column: 30, scope: !5306)
!5311 = !DILocation(line: 205, column: 37, scope: !5306)
!5312 = !DILocation(line: 205, column: 34, scope: !5306)
!5313 = !DILocation(line: 205, column: 7, scope: !5302)
!5314 = !DILocation(line: 206, column: 4, scope: !5306)
!5315 = !DILocation(line: 207, column: 2, scope: !5302)
!5316 = !DILocation(line: 208, column: 41, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5293, file: !2, line: 207, column: 9)
!5318 = !DILocation(line: 208, column: 26, scope: !5317)
!5319 = !DILocation(line: 208, column: 11, scope: !5317)
!5320 = !DILocation(line: 208, column: 4, scope: !5317)
!5321 = !DILocation(line: 208, column: 9, scope: !5317)
!5322 = !DILocation(line: 209, column: 8, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5317, file: !2, line: 209, column: 7)
!5324 = !DILocation(line: 209, column: 7, scope: !5323)
!5325 = !DILocation(line: 209, column: 7, scope: !5317)
!5326 = !DILocation(line: 210, column: 4, scope: !5323)
!5327 = !DILocation(line: 213, column: 2, scope: !5274)
!5328 = !DILocation(line: 214, column: 1, scope: !5274)
!5329 = distinct !DISubprogram(name: "printk_all_partitions", scope: !2, file: !2, line: 272, type: !2140, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5330)
!5330 = !{!5331, !5360, !5361, !5363, !5365, !5366, !5367}
!5331 = !DILocalVariable(name: "iter", scope: !5329, file: !2, line: 274, type: !5332)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_dev_iter", file: !4755, line: 74, size: 256, elements: !5333)
!5333 = !{!5334, !5356, !5357}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "ki", scope: !5332, file: !4755, line: 75, baseType: !5335, size: 128)
!5335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_iter", file: !5336, line: 54, size: 128, elements: !5337)
!5336 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!5337 = !{!5338, !5355}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "i_klist", scope: !5335, file: !5336, line: 55, baseType: !5339, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !5336, line: 18, size: 320, align: 64, elements: !5341)
!5341 = !{!5342, !5343, !5344, !5354}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !5340, file: !5336, line: 19, baseType: !268, size: 32)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !5340, file: !5336, line: 20, baseType: !381, size: 128, offset: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5340, file: !5336, line: 21, baseType: !5345, size: 64, offset: 192)
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5346, size: 64)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !5348}
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !5336, line: 37, size: 256, elements: !5350)
!5350 = !{!5351, !5352, !5353}
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !5349, file: !5336, line: 38, baseType: !235, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !5349, file: !5336, line: 39, baseType: !381, size: 128, offset: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !5349, file: !5336, line: 40, baseType: !1775, size: 32, offset: 192)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5340, file: !5336, line: 22, baseType: !5345, size: 64, offset: 256)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "i_cur", scope: !5335, file: !5336, line: 56, baseType: !5348, size: 64, offset: 64)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5332, file: !4755, line: 76, baseType: !4466, size: 64, offset: 128)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5332, file: !4755, line: 77, baseType: !5358, size: 64, offset: 192)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !4755, line: 77, flags: DIFlagFwdDecl)
!5360 = !DILocalVariable(name: "dev", scope: !5329, file: !2, line: 275, type: !4456)
!5361 = !DILocalVariable(name: "disk", scope: !5362, file: !2, line: 279, type: !250)
!5362 = distinct !DILexicalBlock(scope: !5329, file: !2, line: 278, column: 45)
!5363 = !DILocalVariable(name: "__mptr", scope: !5364, file: !2, line: 279, type: !235)
!5364 = distinct !DILexicalBlock(scope: !5362, file: !2, line: 279, column: 26)
!5365 = !DILocalVariable(name: "part", scope: !5362, file: !2, line: 280, type: !236)
!5366 = !DILocalVariable(name: "devt_buf", scope: !5362, file: !2, line: 281, type: !3)
!5367 = !DILocalVariable(name: "idx", scope: !5362, file: !2, line: 282, type: !370)
!5368 = !DILocation(line: 274, column: 2, scope: !5329)
!5369 = !DILocation(line: 274, column: 24, scope: !5329)
!5370 = !DILocation(line: 275, column: 2, scope: !5329)
!5371 = !DILocation(line: 275, column: 17, scope: !5329)
!5372 = !DILocation(line: 277, column: 2, scope: !5329)
!5373 = !DILocation(line: 278, column: 2, scope: !5329)
!5374 = !DILocation(line: 278, column: 16, scope: !5329)
!5375 = !DILocation(line: 278, column: 14, scope: !5329)
!5376 = !DILocation(line: 279, column: 3, scope: !5362)
!5377 = !DILocation(line: 279, column: 19, scope: !5362)
!5378 = !DILocation(line: 279, column: 26, scope: !5364)
!5379 = !DILocation(line: 279, column: 26, scope: !5362)
!5380 = !DILocation(line: 280, column: 3, scope: !5362)
!5381 = !DILocation(line: 280, column: 24, scope: !5362)
!5382 = !DILocation(line: 281, column: 3, scope: !5362)
!5383 = !DILocation(line: 281, column: 8, scope: !5362)
!5384 = !DILocation(line: 282, column: 3, scope: !5362)
!5385 = !DILocation(line: 282, column: 17, scope: !5362)
!5386 = !DILocation(line: 288, column: 20, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5362, file: !2, line: 288, column: 7)
!5388 = !DILocation(line: 288, column: 7, scope: !5387)
!5389 = !DILocation(line: 288, column: 26, scope: !5387)
!5390 = !DILocation(line: 288, column: 31, scope: !5387)
!5391 = !DILocation(line: 288, column: 35, scope: !5387)
!5392 = !DILocation(line: 288, column: 41, scope: !5387)
!5393 = !DILocation(line: 288, column: 47, scope: !5387)
!5394 = !DILocation(line: 288, column: 7, scope: !5362)
!5395 = !DILocation(line: 289, column: 4, scope: !5387)
!5396 = distinct !{!5396, !5373, !5397, !5198, !5199}
!5397 = !DILocation(line: 314, column: 2, scope: !5329)
!5398 = !DILocation(line: 295, column: 3, scope: !5362)
!5399 = !DILocation(line: 296, column: 3, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5362, file: !2, line: 296, column: 3)
!5401 = !DILocation(line: 296, column: 3, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5400, file: !2, line: 296, column: 3)
!5403 = !DILocation(line: 297, column: 25, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5405, file: !2, line: 297, column: 8)
!5405 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 296, column: 43)
!5406 = !DILocation(line: 297, column: 9, scope: !5404)
!5407 = !DILocation(line: 297, column: 8, scope: !5405)
!5408 = !DILocation(line: 298, column: 5, scope: !5404)
!5409 = !DILocation(line: 299, column: 4, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5405, file: !2, line: 299, column: 4)
!5411 = !DILocation(line: 299, column: 4, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5410, file: !2, line: 299, column: 4)
!5413 = !DILocation(line: 305, column: 26, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5405, file: !2, line: 305, column: 8)
!5415 = !DILocation(line: 305, column: 8, scope: !5414)
!5416 = !DILocation(line: 305, column: 8, scope: !5405)
!5417 = !DILocation(line: 306, column: 5, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5414, file: !2, line: 306, column: 5)
!5419 = !DILocation(line: 306, column: 5, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5418, file: !2, line: 306, column: 5)
!5421 = !DILocation(line: 306, column: 5, scope: !5414)
!5422 = !DILocation(line: 307, column: 13, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5414, file: !2, line: 307, column: 13)
!5424 = !DILocation(line: 307, column: 18, scope: !5423)
!5425 = !DILocation(line: 307, column: 25, scope: !5423)
!5426 = !DILocation(line: 307, column: 28, scope: !5423)
!5427 = !DILocation(line: 307, column: 33, scope: !5423)
!5428 = !DILocation(line: 307, column: 41, scope: !5423)
!5429 = !DILocation(line: 307, column: 13, scope: !5414)
!5430 = !DILocation(line: 308, column: 5, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5423, file: !2, line: 308, column: 5)
!5432 = !DILocation(line: 308, column: 5, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5431, file: !2, line: 308, column: 5)
!5434 = !DILocation(line: 308, column: 5, scope: !5423)
!5435 = !DILocation(line: 311, column: 5, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5423, file: !2, line: 311, column: 5)
!5437 = !DILocation(line: 311, column: 5, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5436, file: !2, line: 311, column: 5)
!5439 = !DILocation(line: 312, column: 3, scope: !5405)
!5440 = distinct !{!5440, !5399, !5441, !5198, !5199}
!5441 = !DILocation(line: 312, column: 3, scope: !5400)
!5442 = !DILocation(line: 313, column: 3, scope: !5362)
!5443 = !DILocation(line: 315, column: 2, scope: !5329)
!5444 = !DILocation(line: 316, column: 1, scope: !5329)
!5445 = !DISubprogram(name: "class_dev_iter_init", scope: !4755, file: !4755, line: 92, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{null, !5448, !4752, !4476, !4466}
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5449 = !DISubprogram(name: "class_dev_iter_next", scope: !4755, file: !4755, line: 94, type: !5450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!4456, !5448}
!5452 = distinct !DISubprogram(name: "get_capacity", scope: !143, file: !143, line: 788, type: !5453, scopeLine: 789, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5455)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!241, !250}
!5455 = !{!5456}
!5456 = !DILocalVariable(name: "disk", arg: 1, scope: !5452, file: !143, line: 788, type: !250)
!5457 = !DILocation(line: 788, column: 53, scope: !5452)
!5458 = !DILocation(line: 790, column: 25, scope: !5452)
!5459 = !DILocation(line: 790, column: 31, scope: !5452)
!5460 = !DILocation(line: 790, column: 9, scope: !5452)
!5461 = !DILocation(line: 790, column: 2, scope: !5452)
!5462 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5463, file: !5463, line: 782, type: !2140, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!5463 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5464 = !DILocation(line: 784, column: 2, scope: !5462)
!5465 = !DILocation(line: 786, column: 2, scope: !5462)
!5466 = !DILocation(line: 786, column: 2, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5462, file: !5463, line: 786, column: 2)
!5468 = !DILocation(line: 787, column: 2, scope: !5462)
!5469 = !DILocation(line: 787, column: 2, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5462, file: !5463, line: 787, column: 2)
!5471 = !DILocation(line: 789, column: 1, scope: !5462)
!5472 = !DISubprogram(name: "xa_find", scope: !265, file: !265, line: 359, type: !5473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5473 = !DISubroutineType(types: !5474)
!5474 = !{!235, !1148, !2126, !370, !4969}
!5475 = distinct !DISubprogram(name: "bdev_nr_sectors", scope: !143, file: !143, line: 778, type: !5476, scopeLine: 779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5478)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!241, !236}
!5478 = !{!5479}
!5479 = !DILocalVariable(name: "bdev", arg: 1, scope: !5475, file: !143, line: 778, type: !236)
!5480 = !DILocation(line: 778, column: 61, scope: !5475)
!5481 = !DILocation(line: 780, column: 9, scope: !5475)
!5482 = !DILocation(line: 780, column: 15, scope: !5475)
!5483 = !DILocation(line: 780, column: 2, scope: !5475)
!5484 = !DISubprogram(name: "_printk", scope: !5485, file: !5485, line: 153, type: !5486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5485 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!175, !512, null}
!5488 = distinct !DISubprogram(name: "bdev_is_partition", scope: !143, file: !143, line: 1084, type: !5489, scopeLine: 1085, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5491)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!942, !236}
!5491 = !{!5492}
!5492 = !DILocalVariable(name: "bdev", arg: 1, scope: !5488, file: !143, line: 1084, type: !236)
!5493 = !DILocation(line: 1084, column: 59, scope: !5488)
!5494 = !DILocation(line: 1086, column: 9, scope: !5488)
!5495 = !DILocation(line: 1086, column: 15, scope: !5488)
!5496 = !DILocation(line: 1086, column: 2, scope: !5488)
!5497 = distinct !DISubprogram(name: "bdevt_str", scope: !2, file: !2, line: 255, type: !5498, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5500)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!537, !553, !537}
!5500 = !{!5501, !5502, !5503}
!5501 = !DILocalVariable(name: "devt", arg: 1, scope: !5497, file: !2, line: 255, type: !553)
!5502 = !DILocalVariable(name: "buf", arg: 2, scope: !5497, file: !2, line: 255, type: !537)
!5503 = !DILocalVariable(name: "tbuf", scope: !5504, file: !2, line: 258, type: !3)
!5504 = distinct !DILexicalBlock(scope: !5505, file: !2, line: 257, column: 50)
!5505 = distinct !DILexicalBlock(scope: !5497, file: !2, line: 257, column: 6)
!5506 = !DILocation(line: 255, column: 37, scope: !5497)
!5507 = !DILocation(line: 255, column: 49, scope: !5497)
!5508 = !DILocation(line: 257, column: 6, scope: !5505)
!5509 = !DILocation(line: 257, column: 18, scope: !5505)
!5510 = !DILocation(line: 257, column: 26, scope: !5505)
!5511 = !DILocation(line: 257, column: 29, scope: !5505)
!5512 = !DILocation(line: 257, column: 41, scope: !5505)
!5513 = !DILocation(line: 257, column: 6, scope: !5497)
!5514 = !DILocation(line: 258, column: 3, scope: !5504)
!5515 = !DILocation(line: 258, column: 8, scope: !5504)
!5516 = !DILocation(line: 259, column: 12, scope: !5504)
!5517 = !DILocation(line: 259, column: 42, scope: !5504)
!5518 = !DILocation(line: 259, column: 55, scope: !5504)
!5519 = !DILocation(line: 259, column: 3, scope: !5504)
!5520 = !DILocation(line: 260, column: 12, scope: !5504)
!5521 = !DILocation(line: 260, column: 37, scope: !5504)
!5522 = !DILocation(line: 260, column: 3, scope: !5504)
!5523 = !DILocation(line: 261, column: 2, scope: !5505)
!5524 = !DILocation(line: 261, column: 2, scope: !5504)
!5525 = !DILocation(line: 262, column: 12, scope: !5505)
!5526 = !DILocation(line: 262, column: 42, scope: !5505)
!5527 = !DILocation(line: 262, column: 55, scope: !5505)
!5528 = !DILocation(line: 262, column: 3, scope: !5505)
!5529 = !DILocation(line: 264, column: 9, scope: !5497)
!5530 = !DILocation(line: 264, column: 2, scope: !5497)
!5531 = !DISubprogram(name: "xa_find_after", scope: !265, file: !265, line: 361, type: !5473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5532 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5463, file: !5463, line: 813, type: !2140, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76)
!5533 = !DILocation(line: 815, column: 2, scope: !5532)
!5534 = !DILocation(line: 815, column: 2, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5532, file: !5463, line: 815, column: 2)
!5536 = !DILocation(line: 818, column: 2, scope: !5532)
!5537 = !DILocation(line: 819, column: 2, scope: !5532)
!5538 = !DILocation(line: 819, column: 2, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5532, file: !5463, line: 819, column: 2)
!5540 = !DILocation(line: 820, column: 1, scope: !5532)
!5541 = !DISubprogram(name: "class_dev_iter_exit", scope: !4755, file: !4755, line: 95, type: !5542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5542 = !DISubroutineType(types: !5543)
!5543 = !{null, !5448}
!5544 = !DISubprogram(name: "strchr", scope: !5025, file: !5025, line: 100, type: !5545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5545 = !DISubroutineType(types: !5546)
!5546 = !{!537, !512, !175}
!5547 = !DISubprogram(name: "sscanf", scope: !5548, file: !5548, line: 20, type: !5549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5548 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!175, !512, !512, null}
!5551 = !DISubprogram(name: "strlen", scope: !5025, file: !5025, line: 128, type: !5552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!370, !512}
!5554 = !DISubprogram(name: "class_find_device", scope: !4755, file: !4755, line: 99, type: !5555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{!4456, !4752, !4476, !1330, !5557}
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5558, size: 64)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{!175, !4456, !1330}
!5560 = distinct !DISubprogram(name: "match_dev_by_uuid", scope: !2, file: !2, line: 21, type: !5558, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5561)
!5561 = !{!5562, !5563, !5564, !5565, !5567}
!5562 = !DILocalVariable(name: "dev", arg: 1, scope: !5560, file: !2, line: 21, type: !4456)
!5563 = !DILocalVariable(name: "data", arg: 2, scope: !5560, file: !2, line: 21, type: !1330)
!5564 = !DILocalVariable(name: "bdev", scope: !5560, file: !2, line: 23, type: !236)
!5565 = !DILocalVariable(name: "__mptr", scope: !5566, file: !2, line: 23, type: !235)
!5566 = distinct !DILexicalBlock(scope: !5560, file: !2, line: 23, column: 30)
!5567 = !DILocalVariable(name: "cmp", scope: !5560, file: !2, line: 24, type: !5568)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5033)
!5570 = !DILocation(line: 21, column: 52, scope: !5560)
!5571 = !DILocation(line: 21, column: 69, scope: !5560)
!5572 = !DILocation(line: 23, column: 2, scope: !5560)
!5573 = !DILocation(line: 23, column: 23, scope: !5560)
!5574 = !DILocation(line: 23, column: 30, scope: !5566)
!5575 = !DILocation(line: 23, column: 30, scope: !5560)
!5576 = !DILocation(line: 24, column: 2, scope: !5560)
!5577 = !DILocation(line: 24, column: 24, scope: !5560)
!5578 = !DILocation(line: 24, column: 30, scope: !5560)
!5579 = !DILocation(line: 26, column: 7, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5560, file: !2, line: 26, column: 6)
!5581 = !DILocation(line: 26, column: 13, scope: !5580)
!5582 = !DILocation(line: 26, column: 26, scope: !5580)
!5583 = !DILocation(line: 27, column: 18, scope: !5580)
!5584 = !DILocation(line: 27, column: 23, scope: !5580)
!5585 = !DILocation(line: 27, column: 29, scope: !5580)
!5586 = !DILocation(line: 27, column: 35, scope: !5580)
!5587 = !DILocation(line: 27, column: 49, scope: !5580)
!5588 = !DILocation(line: 27, column: 55, scope: !5580)
!5589 = !DILocation(line: 27, column: 60, scope: !5580)
!5590 = !DILocation(line: 27, column: 6, scope: !5580)
!5591 = !DILocation(line: 26, column: 6, scope: !5560)
!5592 = !DILocation(line: 28, column: 3, scope: !5580)
!5593 = !DILocation(line: 29, column: 2, scope: !5560)
!5594 = !DILocation(line: 30, column: 1, scope: !5560)
!5595 = !DISubprogram(name: "part_devt", scope: !143, file: !143, line: 844, type: !5596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5596 = !DISubroutineType(types: !5597)
!5597 = !{!553, !250, !296}
!5598 = !DISubprogram(name: "put_device", scope: !155, file: !155, line: 1231, type: !4484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5599 = !DISubprogram(name: "strncasecmp", scope: !5025, file: !5025, line: 97, type: !5600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!175, !512, !512, !682}
!5602 = distinct !DISubprogram(name: "match_dev_by_label", scope: !2, file: !2, line: 102, type: !5558, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5603)
!5603 = !{!5604, !5605, !5606, !5607, !5609}
!5604 = !DILocalVariable(name: "dev", arg: 1, scope: !5602, file: !2, line: 102, type: !4456)
!5605 = !DILocalVariable(name: "data", arg: 2, scope: !5602, file: !2, line: 102, type: !1330)
!5606 = !DILocalVariable(name: "bdev", scope: !5602, file: !2, line: 104, type: !236)
!5607 = !DILocalVariable(name: "__mptr", scope: !5608, file: !2, line: 104, type: !235)
!5608 = distinct !DILexicalBlock(scope: !5602, file: !2, line: 104, column: 30)
!5609 = !DILocalVariable(name: "label", scope: !5602, file: !2, line: 105, type: !512)
!5610 = !DILocation(line: 102, column: 53, scope: !5602)
!5611 = !DILocation(line: 102, column: 70, scope: !5602)
!5612 = !DILocation(line: 104, column: 2, scope: !5602)
!5613 = !DILocation(line: 104, column: 23, scope: !5602)
!5614 = !DILocation(line: 104, column: 30, scope: !5608)
!5615 = !DILocation(line: 104, column: 30, scope: !5602)
!5616 = !DILocation(line: 105, column: 2, scope: !5602)
!5617 = !DILocation(line: 105, column: 14, scope: !5602)
!5618 = !DILocation(line: 105, column: 22, scope: !5602)
!5619 = !DILocation(line: 107, column: 7, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5602, file: !2, line: 107, column: 6)
!5621 = !DILocation(line: 107, column: 13, scope: !5620)
!5622 = !DILocation(line: 107, column: 26, scope: !5620)
!5623 = !DILocation(line: 107, column: 36, scope: !5620)
!5624 = !DILocation(line: 107, column: 43, scope: !5620)
!5625 = !DILocation(line: 107, column: 49, scope: !5620)
!5626 = !DILocation(line: 107, column: 63, scope: !5620)
!5627 = !DILocation(line: 107, column: 29, scope: !5620)
!5628 = !DILocation(line: 107, column: 6, scope: !5602)
!5629 = !DILocation(line: 108, column: 3, scope: !5620)
!5630 = !DILocation(line: 109, column: 2, scope: !5602)
!5631 = !DILocation(line: 110, column: 1, scope: !5602)
!5632 = !DISubprogram(name: "strcmp", scope: !5025, file: !5025, line: 88, type: !5633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5633 = !DISubroutineType(types: !5634)
!5634 = !{!175, !512, !512}
!5635 = !DISubprogram(name: "strcpy", scope: !5025, file: !5025, line: 63, type: !5636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5636 = !DISubroutineType(types: !5637)
!5637 = !{!537, !537, !512}
!5638 = distinct !DISubprogram(name: "blk_lookup_devt", scope: !2, file: !2, line: 124, type: !5639, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5641)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!553, !512, !175}
!5641 = !{!5642, !5643, !5644, !5645, !5646, !5647, !5649}
!5642 = !DILocalVariable(name: "name", arg: 1, scope: !5638, file: !2, line: 124, type: !512)
!5643 = !DILocalVariable(name: "partno", arg: 2, scope: !5638, file: !2, line: 124, type: !175)
!5644 = !DILocalVariable(name: "devt", scope: !5638, file: !2, line: 126, type: !553)
!5645 = !DILocalVariable(name: "iter", scope: !5638, file: !2, line: 127, type: !5332)
!5646 = !DILocalVariable(name: "dev", scope: !5638, file: !2, line: 128, type: !4456)
!5647 = !DILocalVariable(name: "disk", scope: !5648, file: !2, line: 132, type: !250)
!5648 = distinct !DILexicalBlock(scope: !5638, file: !2, line: 131, column: 45)
!5649 = !DILocalVariable(name: "__mptr", scope: !5650, file: !2, line: 132, type: !235)
!5650 = distinct !DILexicalBlock(scope: !5648, file: !2, line: 132, column: 26)
!5651 = !DILocation(line: 124, column: 49, scope: !5638)
!5652 = !DILocation(line: 124, column: 59, scope: !5638)
!5653 = !DILocation(line: 126, column: 2, scope: !5638)
!5654 = !DILocation(line: 126, column: 8, scope: !5638)
!5655 = !DILocation(line: 127, column: 2, scope: !5638)
!5656 = !DILocation(line: 127, column: 24, scope: !5638)
!5657 = !DILocation(line: 128, column: 2, scope: !5638)
!5658 = !DILocation(line: 128, column: 17, scope: !5638)
!5659 = !DILocation(line: 130, column: 2, scope: !5638)
!5660 = !DILocation(line: 131, column: 2, scope: !5638)
!5661 = !DILocation(line: 131, column: 16, scope: !5638)
!5662 = !DILocation(line: 131, column: 14, scope: !5638)
!5663 = !DILocation(line: 132, column: 3, scope: !5648)
!5664 = !DILocation(line: 132, column: 19, scope: !5648)
!5665 = !DILocation(line: 132, column: 26, scope: !5650)
!5666 = !DILocation(line: 132, column: 26, scope: !5648)
!5667 = !DILocation(line: 134, column: 23, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5648, file: !2, line: 134, column: 7)
!5669 = !DILocation(line: 134, column: 14, scope: !5668)
!5670 = !DILocation(line: 134, column: 29, scope: !5668)
!5671 = !DILocation(line: 134, column: 7, scope: !5668)
!5672 = !DILocation(line: 134, column: 7, scope: !5648)
!5673 = !DILocation(line: 135, column: 4, scope: !5668)
!5674 = distinct !{!5674, !5660, !5675, !5198, !5199}
!5675 = !DILocation(line: 148, column: 2, scope: !5638)
!5676 = !DILocation(line: 137, column: 7, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5648, file: !2, line: 137, column: 7)
!5678 = !DILocation(line: 137, column: 16, scope: !5677)
!5679 = !DILocation(line: 137, column: 22, scope: !5677)
!5680 = !DILocation(line: 137, column: 14, scope: !5677)
!5681 = !DILocation(line: 137, column: 7, scope: !5648)
!5682 = !DILocation(line: 141, column: 11, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5677, file: !2, line: 137, column: 30)
!5684 = !DILocation(line: 141, column: 9, scope: !5683)
!5685 = !DILocation(line: 143, column: 3, scope: !5683)
!5686 = !DILocation(line: 144, column: 21, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5677, file: !2, line: 143, column: 10)
!5688 = !DILocation(line: 144, column: 27, scope: !5687)
!5689 = !DILocation(line: 144, column: 11, scope: !5687)
!5690 = !DILocation(line: 144, column: 9, scope: !5687)
!5691 = !DILocation(line: 145, column: 8, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5687, file: !2, line: 145, column: 8)
!5693 = !DILocation(line: 145, column: 8, scope: !5687)
!5694 = !DILocation(line: 146, column: 5, scope: !5692)
!5695 = !DILocation(line: 149, column: 2, scope: !5638)
!5696 = !DILocation(line: 150, column: 9, scope: !5638)
!5697 = !DILocation(line: 151, column: 1, scope: !5638)
!5698 = !DILocation(line: 150, column: 2, scope: !5638)
!5699 = distinct !DISubprogram(name: "isdigit", scope: !5700, file: !5700, line: 43, type: !1554, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5701)
!5700 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!5701 = !{!5702}
!5702 = !DILocalVariable(name: "c", arg: 1, scope: !5699, file: !5700, line: 43, type: !175)
!5703 = !DILocation(line: 43, column: 31, scope: !5699)
!5704 = !DILocation(line: 45, column: 16, scope: !5699)
!5705 = !DILocation(line: 45, column: 13, scope: !5699)
!5706 = !DILocation(line: 45, column: 18, scope: !5699)
!5707 = !DILocation(line: 45, column: 21, scope: !5699)
!5708 = !DILocation(line: 45, column: 23, scope: !5699)
!5709 = !DILocation(line: 0, scope: !5699)
!5710 = !DILocation(line: 45, column: 2, scope: !5699)
!5711 = !DISubprogram(name: "simple_strtoul", scope: !5712, file: !5712, line: 145, type: !5713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5712 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!370, !512, !5715, !80}
!5715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!5716 = distinct !DISubprogram(name: "dev_name", scope: !155, file: !155, line: 858, type: !5717, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5719)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!512, !4476}
!5719 = !{!5720}
!5720 = !DILocalVariable(name: "dev", arg: 1, scope: !5716, file: !155, line: 858, type: !4476)
!5721 = !DILocation(line: 858, column: 57, scope: !5716)
!5722 = !DILocation(line: 861, column: 6, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5716, file: !155, line: 861, column: 6)
!5724 = !DILocation(line: 861, column: 11, scope: !5723)
!5725 = !DILocation(line: 861, column: 6, scope: !5716)
!5726 = !DILocation(line: 862, column: 10, scope: !5723)
!5727 = !DILocation(line: 862, column: 15, scope: !5723)
!5728 = !DILocation(line: 862, column: 3, scope: !5723)
!5729 = !DILocation(line: 864, column: 23, scope: !5716)
!5730 = !DILocation(line: 864, column: 28, scope: !5716)
!5731 = !DILocation(line: 864, column: 9, scope: !5716)
!5732 = !DILocation(line: 864, column: 2, scope: !5716)
!5733 = !DILocation(line: 865, column: 1, scope: !5716)
!5734 = distinct !DISubprogram(name: "kobject_name", scope: !600, file: !600, line: 87, type: !628, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5735)
!5735 = !{!5736}
!5736 = !DILocalVariable(name: "kobj", arg: 1, scope: !5734, file: !600, line: 87, type: !623)
!5737 = !DILocation(line: 87, column: 62, scope: !5734)
!5738 = !DILocation(line: 89, column: 9, scope: !5734)
!5739 = !DILocation(line: 89, column: 15, scope: !5734)
!5740 = !DILocation(line: 89, column: 2, scope: !5734)
!5741 = distinct !DISubprogram(name: "new_decode_dev", scope: !5742, file: !5742, line: 46, type: !5743, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !5745)
!5742 = !DIFile(filename: "./include/linux/kdev_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4069c7bb69bcdf1e01b1b06b87483f5")
!5743 = !DISubroutineType(types: !5744)
!5744 = !{!553, !469}
!5745 = !{!5746, !5747, !5748}
!5746 = !DILocalVariable(name: "dev", arg: 1, scope: !5741, file: !5742, line: 46, type: !469)
!5747 = !DILocalVariable(name: "major", scope: !5741, file: !5742, line: 48, type: !80)
!5748 = !DILocalVariable(name: "minor", scope: !5741, file: !5742, line: 49, type: !80)
!5749 = !DILocation(line: 46, column: 49, scope: !5741)
!5750 = !DILocation(line: 48, column: 2, scope: !5741)
!5751 = !DILocation(line: 48, column: 11, scope: !5741)
!5752 = !DILocation(line: 48, column: 20, scope: !5741)
!5753 = !DILocation(line: 48, column: 24, scope: !5741)
!5754 = !DILocation(line: 48, column: 35, scope: !5741)
!5755 = !DILocation(line: 49, column: 2, scope: !5741)
!5756 = !DILocation(line: 49, column: 11, scope: !5741)
!5757 = !DILocation(line: 49, column: 20, scope: !5741)
!5758 = !DILocation(line: 49, column: 24, scope: !5741)
!5759 = !DILocation(line: 49, column: 36, scope: !5741)
!5760 = !DILocation(line: 49, column: 40, scope: !5741)
!5761 = !DILocation(line: 49, column: 47, scope: !5741)
!5762 = !DILocation(line: 49, column: 32, scope: !5741)
!5763 = !DILocation(line: 50, column: 9, scope: !5741)
!5764 = !DILocation(line: 51, column: 1, scope: !5741)
!5765 = !DILocation(line: 50, column: 2, scope: !5741)
!5766 = !DISubprogram(name: "__rcu_read_lock", scope: !5463, file: !5463, line: 74, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5767 = !DISubprogram(name: "snprintf", scope: !5548, file: !5548, line: 12, type: !5768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!175, !537, !682, !512, null}
!5770 = !DISubprogram(name: "__rcu_read_unlock", scope: !5463, file: !5463, line: 75, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
