; ModuleID = 'drivers/char/misc.c'
source_filename = "drivers/char/misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_misc_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad misc_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_misc_deregister: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad misc_deregister ; .previous"
module asm ".section\09\22.initcall4.init..kmod_misc__289_330_misc_init\22, \22a\22\09\09"
module asm "__initcall__kmod_misc__289_330_misc_init4:\09\09\09"
module asm ".long\09__initstub__kmod_misc__289_330_misc_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
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
%struct.file = type { %union.anon.16, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.17, %struct.qspinlock }
%union.anon.17 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.19 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.20 = type { %struct.callback_head }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.22 = type { ptr }

@misc_mtx = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @misc_mtx, i64 16), ptr getelementptr (i8, ptr @misc_mtx, i64 16) } }, align 8, !dbg !0
@misc_list = internal global %struct.list_head { ptr @misc_list, ptr @misc_list }, align 8, !dbg !5010
@misc_class = internal constant %struct.class { ptr @.str.2, ptr null, ptr null, ptr null, ptr @misc_devnode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5017
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !4992
@__UNIQUE_ID___addressable_misc_register287 = internal global ptr @misc_register, section ".discard.addressable", align 8, !dbg !4995
@.str.1 = private unnamed_addr constant [20 x i8] c"drivers/char/misc.c\00", align 1, !dbg !4997
@__UNIQUE_ID___addressable_misc_deregister288 = internal global ptr @misc_deregister, section ".discard.addressable", align 8, !dbg !5000
@__UNIQUE_ID___addressable___initstub__kmod_misc__289_330_misc_init4290 = internal global ptr @__initstub__kmod_misc__289_330_misc_init4, section ".discard.addressable", align 8, !dbg !5002
@misc_minors_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 67108869, ptr null } }, align 8, !dbg !5004
@.str.2 = private unnamed_addr constant [5 x i8] c"misc\00", align 1, !dbg !5012
@misc_seq_ops = internal constant %struct.seq_operations { ptr @misc_seq_start, ptr @misc_seq_stop, ptr @misc_seq_next, ptr @misc_seq_show }, align 8, !dbg !5024
@misc_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @misc_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5031
@.str.3 = private unnamed_addr constant [43 x i8] c"\013unable to get major %d for misc devices\0A\00", align 1, !dbg !5019
@.str.4 = private unnamed_addr constant [8 x i8] c"%3i %s\0A\00", align 1, !dbg !5026
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5028
@.str.6 = private unnamed_addr constant [17 x i8] c"char-major-%d-%d\00", align 1, !dbg !5033
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_misc_register287, ptr @__UNIQUE_ID___addressable_misc_deregister288, ptr @__UNIQUE_ID___addressable___initstub__kmod_misc__289_330_misc_init4290], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @misc_register(ptr noundef %misc) #0 align 16 !dbg !5047 {
entry:
  %retval = alloca i32, align 4
  %misc.addr = alloca ptr, align 8
  %dev = alloca i32, align 4
  %err = alloca i32, align 4
  %is_dynamic = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %c = alloca ptr, align 8
  %i5 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  store ptr %misc, ptr %misc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %misc.addr, metadata !5051, metadata !DIExpression()), !dbg !5068
  call void @llvm.lifetime.start.p0(i64 4, ptr %dev) #8, !dbg !5069
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5052, metadata !DIExpression()), !dbg !5070
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5053, metadata !DIExpression()), !dbg !5072
  store i32 0, ptr %err, align 4, !dbg !5072
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_dynamic) #8, !dbg !5073
  call void @llvm.dbg.declare(metadata ptr %is_dynamic, metadata !5054, metadata !DIExpression()), !dbg !5074
  %0 = load ptr, ptr %misc.addr, align 8, !dbg !5075
  %minor = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 0, !dbg !5076
  %1 = load i32, ptr %minor, align 8, !dbg !5076
  %cmp = icmp eq i32 %1, 255, !dbg !5077
  %frombool = zext i1 %cmp to i8, !dbg !5074
  store i8 %frombool, ptr %is_dynamic, align 1, !dbg !5074
  %2 = load ptr, ptr %misc.addr, align 8, !dbg !5078
  %list = getelementptr inbounds %struct.miscdevice, ptr %2, i32 0, i32 3, !dbg !5079
  call void @INIT_LIST_HEAD(ptr noundef %list) #9, !dbg !5080
  call void @mutex_lock(ptr noundef @misc_mtx) #9, !dbg !5081
  %3 = load i8, ptr %is_dynamic, align 1, !dbg !5082, !range !5083, !noundef !549
  %tobool = trunc i8 %3 to i1, !dbg !5082
  br i1 %tobool, label %if.then, label %if.else, !dbg !5084

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !5085
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5055, metadata !DIExpression()), !dbg !5086
  %4 = load ptr, ptr %misc.addr, align 8, !dbg !5087
  %minor1 = getelementptr inbounds %struct.miscdevice, ptr %4, i32 0, i32 0, !dbg !5088
  %5 = load i32, ptr %minor1, align 8, !dbg !5088
  %call = call i32 @misc_minor_alloc(i32 noundef %5) #9, !dbg !5089
  store i32 %call, ptr %i, align 4, !dbg !5086
  %6 = load i32, ptr %i, align 4, !dbg !5090
  %cmp2 = icmp slt i32 %6, 0, !dbg !5092
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5093

if.then3:                                         ; preds = %if.then
  store i32 -16, ptr %err, align 4, !dbg !5094
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5096

if.end:                                           ; preds = %if.then
  %7 = load i32, ptr %i, align 4, !dbg !5097
  %8 = load ptr, ptr %misc.addr, align 8, !dbg !5098
  %minor4 = getelementptr inbounds %struct.miscdevice, ptr %8, i32 0, i32 0, !dbg !5099
  store i32 %7, ptr %minor4, align 8, !dbg !5100
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5101
  br label %cleanup, !dbg !5101

cleanup:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !5101
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end26, !dbg !5102

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #8, !dbg !5103
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5058, metadata !DIExpression()), !dbg !5104
  call void @llvm.lifetime.start.p0(i64 4, ptr %i5) #8, !dbg !5105
  call void @llvm.dbg.declare(metadata ptr %i5, metadata !5060, metadata !DIExpression()), !dbg !5106
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5107
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5061, metadata !DIExpression()), !dbg !5107
  %9 = load ptr, ptr @misc_list, align 8, !dbg !5107
  store ptr %9, ptr %__mptr, align 8, !dbg !5107
  %10 = load ptr, ptr %__mptr, align 8, !dbg !5107
  %add.ptr = getelementptr i8, ptr %10, i64 -24, !dbg !5107
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5107
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5108
  %11 = load ptr, ptr %tmp, align 8, !dbg !5107
  store ptr %11, ptr %c, align 8, !dbg !5108
  br label %for.cond, !dbg !5108

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load ptr, ptr %c, align 8, !dbg !5109
  %list6 = getelementptr inbounds %struct.miscdevice, ptr %12, i32 0, i32 3, !dbg !5109
  %cmp7 = icmp eq ptr %list6, @misc_list, !dbg !5109
  %lnot = xor i1 %cmp7, true, !dbg !5109
  br i1 %lnot, label %for.body, label %for.end, !dbg !5108

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %c, align 8, !dbg !5110
  %minor8 = getelementptr inbounds %struct.miscdevice, ptr %13, i32 0, i32 0, !dbg !5113
  %14 = load i32, ptr %minor8, align 8, !dbg !5113
  %15 = load ptr, ptr %misc.addr, align 8, !dbg !5114
  %minor9 = getelementptr inbounds %struct.miscdevice, ptr %15, i32 0, i32 0, !dbg !5115
  %16 = load i32, ptr %minor9, align 8, !dbg !5115
  %cmp10 = icmp eq i32 %14, %16, !dbg !5116
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5117

if.then11:                                        ; preds = %for.body
  store i32 -16, ptr %err, align 4, !dbg !5118
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !5120

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !5121

for.inc:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #8, !dbg !5122
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !5064, metadata !DIExpression()), !dbg !5122
  %17 = load ptr, ptr %c, align 8, !dbg !5122
  %list14 = getelementptr inbounds %struct.miscdevice, ptr %17, i32 0, i32 3, !dbg !5122
  %next = getelementptr inbounds %struct.list_head, ptr %list14, i32 0, i32 0, !dbg !5122
  %18 = load ptr, ptr %next, align 8, !dbg !5122
  store ptr %18, ptr %__mptr13, align 8, !dbg !5122
  %19 = load ptr, ptr %__mptr13, align 8, !dbg !5122
  %add.ptr16 = getelementptr i8, ptr %19, i64 -24, !dbg !5122
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !5122
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #8, !dbg !5109
  %20 = load ptr, ptr %tmp15, align 8, !dbg !5122
  store ptr %20, ptr %c, align 8, !dbg !5109
  br label %for.cond, !dbg !5109, !llvm.loop !5123

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %misc.addr, align 8, !dbg !5127
  %minor17 = getelementptr inbounds %struct.miscdevice, ptr %21, i32 0, i32 0, !dbg !5128
  %22 = load i32, ptr %minor17, align 8, !dbg !5128
  %call18 = call i32 @misc_minor_alloc(i32 noundef %22) #9, !dbg !5129
  store i32 %call18, ptr %i5, align 4, !dbg !5130
  %23 = load i32, ptr %i5, align 4, !dbg !5131
  %cmp19 = icmp slt i32 %23, 0, !dbg !5133
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !5134

if.then20:                                        ; preds = %for.end
  store i32 -16, ptr %err, align 4, !dbg !5135
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !5137

if.end21:                                         ; preds = %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5138
  br label %cleanup22, !dbg !5138

cleanup22:                                        ; preds = %if.then20, %if.then11, %if.end21
  call void @llvm.lifetime.end.p0(i64 4, ptr %i5) #8, !dbg !5138
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #8, !dbg !5138
  %cleanup.dest24 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest24, label %cleanup41 [
    i32 0, label %cleanup.cont25
    i32 2, label %out
  ]

cleanup.cont25:                                   ; preds = %cleanup22
  br label %if.end26

if.end26:                                         ; preds = %cleanup.cont25, %cleanup.cont
  %24 = load ptr, ptr %misc.addr, align 8, !dbg !5139
  %minor27 = getelementptr inbounds %struct.miscdevice, ptr %24, i32 0, i32 0, !dbg !5139
  %25 = load i32, ptr %minor27, align 8, !dbg !5139
  %or = or i32 10485760, %25, !dbg !5139
  store i32 %or, ptr %dev, align 4, !dbg !5140
  %26 = load ptr, ptr %misc.addr, align 8, !dbg !5141
  %parent = getelementptr inbounds %struct.miscdevice, ptr %26, i32 0, i32 4, !dbg !5142
  %27 = load ptr, ptr %parent, align 8, !dbg !5142
  %28 = load i32, ptr %dev, align 4, !dbg !5143
  %29 = load ptr, ptr %misc.addr, align 8, !dbg !5144
  %30 = load ptr, ptr %misc.addr, align 8, !dbg !5145
  %groups = getelementptr inbounds %struct.miscdevice, ptr %30, i32 0, i32 6, !dbg !5146
  %31 = load ptr, ptr %groups, align 8, !dbg !5146
  %32 = load ptr, ptr %misc.addr, align 8, !dbg !5147
  %name = getelementptr inbounds %struct.miscdevice, ptr %32, i32 0, i32 1, !dbg !5148
  %33 = load ptr, ptr %name, align 8, !dbg !5148
  %call28 = call ptr (ptr, ptr, i32, ptr, ptr, ptr, ...) @device_create_with_groups(ptr noundef @misc_class, ptr noundef %27, i32 noundef %28, ptr noundef %29, ptr noundef %31, ptr noundef @.str, ptr noundef %33) #9, !dbg !5149
  %34 = load ptr, ptr %misc.addr, align 8, !dbg !5150
  %this_device = getelementptr inbounds %struct.miscdevice, ptr %34, i32 0, i32 5, !dbg !5151
  store ptr %call28, ptr %this_device, align 8, !dbg !5152
  %35 = load ptr, ptr %misc.addr, align 8, !dbg !5153
  %this_device29 = getelementptr inbounds %struct.miscdevice, ptr %35, i32 0, i32 5, !dbg !5155
  %36 = load ptr, ptr %this_device29, align 8, !dbg !5155
  %call30 = call zeroext i1 @IS_ERR(ptr noundef %36) #9, !dbg !5156
  br i1 %call30, label %if.then31, label %if.end39, !dbg !5157

if.then31:                                        ; preds = %if.end26
  %37 = load ptr, ptr %misc.addr, align 8, !dbg !5158
  %minor32 = getelementptr inbounds %struct.miscdevice, ptr %37, i32 0, i32 0, !dbg !5160
  %38 = load i32, ptr %minor32, align 8, !dbg !5160
  call void @misc_minor_free(i32 noundef %38) #9, !dbg !5161
  %39 = load i8, ptr %is_dynamic, align 1, !dbg !5162, !range !5083, !noundef !549
  %tobool33 = trunc i8 %39 to i1, !dbg !5162
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !5164

if.then34:                                        ; preds = %if.then31
  %40 = load ptr, ptr %misc.addr, align 8, !dbg !5165
  %minor35 = getelementptr inbounds %struct.miscdevice, ptr %40, i32 0, i32 0, !dbg !5167
  store i32 255, ptr %minor35, align 8, !dbg !5168
  br label %if.end36, !dbg !5169

if.end36:                                         ; preds = %if.then34, %if.then31
  %41 = load ptr, ptr %misc.addr, align 8, !dbg !5170
  %this_device37 = getelementptr inbounds %struct.miscdevice, ptr %41, i32 0, i32 5, !dbg !5171
  %42 = load ptr, ptr %this_device37, align 8, !dbg !5171
  %call38 = call i64 @PTR_ERR(ptr noundef %42) #9, !dbg !5172
  %conv = trunc i64 %call38 to i32, !dbg !5172
  store i32 %conv, ptr %err, align 4, !dbg !5173
  br label %out, !dbg !5174

if.end39:                                         ; preds = %if.end26
  %43 = load ptr, ptr %misc.addr, align 8, !dbg !5175
  %list40 = getelementptr inbounds %struct.miscdevice, ptr %43, i32 0, i32 3, !dbg !5176
  call void @list_add(ptr noundef %list40, ptr noundef @misc_list) #9, !dbg !5177
  br label %out, !dbg !5177

out:                                              ; preds = %if.end39, %cleanup22, %cleanup, %if.end36
  call void @llvm.dbg.label(metadata !5067), !dbg !5178
  call void @mutex_unlock(ptr noundef @misc_mtx) #9, !dbg !5179
  %44 = load i32, ptr %err, align 4, !dbg !5180
  store i32 %44, ptr %retval, align 4, !dbg !5181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !5181

cleanup41:                                        ; preds = %out, %cleanup22, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_dynamic) #8, !dbg !5182
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !5182
  call void @llvm.lifetime.end.p0(i64 4, ptr %dev) #8, !dbg !5182
  %45 = load i32, ptr %retval, align 4, !dbg !5182
  ret i32 %45, !dbg !5182
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5183 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5188, metadata !DIExpression()), !dbg !5189
  br label %do.body, !dbg !5190

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5191

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5193

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5191

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5195
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5195
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5195
  store volatile ptr %0, ptr %next, align 8, !dbg !5195
  br label %do.end3, !dbg !5195

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5191

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5197

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5198

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5200

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5198

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5202
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5202
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5202
  store volatile ptr %2, ptr %prev, align 8, !dbg !5202
  br label %do.end9, !dbg !5202

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5198

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5204
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5205 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @misc_minor_alloc(i32 noundef %minor) #0 align 16 !dbg !5209 {
entry:
  %minor.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %minor, ptr %minor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minor.addr, metadata !5211, metadata !DIExpression()), !dbg !5213
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !5214
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5212, metadata !DIExpression()), !dbg !5215
  store i32 0, ptr %ret, align 4, !dbg !5215
  %0 = load i32, ptr %minor.addr, align 4, !dbg !5216
  %cmp = icmp eq i32 %0, 255, !dbg !5218
  br i1 %cmp, label %if.then, label %if.else5, !dbg !5219

if.then:                                          ; preds = %entry
  %call = call i32 @ida_alloc_max(ptr noundef @misc_minors_ida, i32 noundef 127, i32 noundef 3264) #9, !dbg !5220
  store i32 %call, ptr %ret, align 4, !dbg !5222
  %1 = load i32, ptr %ret, align 4, !dbg !5223
  %cmp1 = icmp sge i32 %1, 0, !dbg !5225
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !5226

if.then2:                                         ; preds = %if.then
  %2 = load i32, ptr %ret, align 4, !dbg !5227
  %sub = sub i32 128, %2, !dbg !5229
  %sub3 = sub i32 %sub, 1, !dbg !5230
  store i32 %sub3, ptr %ret, align 4, !dbg !5231
  br label %if.end, !dbg !5232

if.else:                                          ; preds = %if.then
  %call4 = call i32 @ida_alloc_range(ptr noundef @misc_minors_ida, i32 noundef 256, i32 noundef 1048575, i32 noundef 3264) #9, !dbg !5233
  store i32 %call4, ptr %ret, align 4, !dbg !5235
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end18, !dbg !5236

if.else5:                                         ; preds = %entry
  %3 = load i32, ptr %minor.addr, align 4, !dbg !5237
  %cmp6 = icmp slt i32 %3, 128, !dbg !5240
  br i1 %cmp6, label %if.then7, label %if.else11, !dbg !5241

if.then7:                                         ; preds = %if.else5
  %4 = load i32, ptr %minor.addr, align 4, !dbg !5242
  %sub8 = sub i32 128, %4, !dbg !5244
  %sub9 = sub i32 %sub8, 1, !dbg !5245
  store i32 %sub9, ptr %minor.addr, align 4, !dbg !5246
  %5 = load i32, ptr %minor.addr, align 4, !dbg !5247
  %6 = load i32, ptr %minor.addr, align 4, !dbg !5248
  %call10 = call i32 @ida_alloc_range(ptr noundef @misc_minors_ida, i32 noundef %5, i32 noundef %6, i32 noundef 3264) #9, !dbg !5249
  store i32 %call10, ptr %ret, align 4, !dbg !5250
  br label %if.end17, !dbg !5251

if.else11:                                        ; preds = %if.else5
  %7 = load i32, ptr %minor.addr, align 4, !dbg !5252
  %cmp12 = icmp sgt i32 %7, 255, !dbg !5254
  br i1 %cmp12, label %if.then13, label %if.else15, !dbg !5255

if.then13:                                        ; preds = %if.else11
  %8 = load i32, ptr %minor.addr, align 4, !dbg !5256
  %9 = load i32, ptr %minor.addr, align 4, !dbg !5258
  %call14 = call i32 @ida_alloc_range(ptr noundef @misc_minors_ida, i32 noundef %8, i32 noundef %9, i32 noundef 3264) #9, !dbg !5259
  store i32 %call14, ptr %ret, align 4, !dbg !5260
  br label %if.end16, !dbg !5261

if.else15:                                        ; preds = %if.else11
  store i32 0, ptr %ret, align 4, !dbg !5262
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  %10 = load i32, ptr %ret, align 4, !dbg !5264
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !5265
  ret i32 %10, !dbg !5266
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5267 dso_local ptr @device_create_with_groups(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5270 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5275, metadata !DIExpression()), !dbg !5276
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5277
  %1 = ptrtoint ptr %0 to i64, !dbg !5277
  %2 = inttoptr i64 %1 to ptr, !dbg !5277
  %3 = ptrtoint ptr %2 to i64, !dbg !5277
  %cmp = icmp uge i64 %3, -4095, !dbg !5277
  %lnot = xor i1 %cmp, true, !dbg !5277
  %lnot1 = xor i1 %lnot, true, !dbg !5277
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5277
  %conv = sext i32 %lnot.ext to i64, !dbg !5277
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5277
  %tobool = icmp ne i64 %expval, 0, !dbg !5277
  ret i1 %tobool, !dbg !5278
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @misc_minor_free(i32 noundef %minor) #0 align 16 !dbg !5279 {
entry:
  %minor.addr = alloca i32, align 4
  store i32 %minor, ptr %minor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minor.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  %0 = load i32, ptr %minor.addr, align 4, !dbg !5283
  %cmp = icmp slt i32 %0, 128, !dbg !5285
  br i1 %cmp, label %if.then, label %if.else, !dbg !5286

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %minor.addr, align 4, !dbg !5287
  %sub = sub i32 128, %1, !dbg !5288
  %sub1 = sub i32 %sub, 1, !dbg !5289
  call void @ida_free(ptr noundef @misc_minors_ida, i32 noundef %sub1) #9, !dbg !5290
  br label %if.end4, !dbg !5290

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %minor.addr, align 4, !dbg !5291
  %cmp2 = icmp sgt i32 %2, 255, !dbg !5293
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5294

if.then3:                                         ; preds = %if.else
  %3 = load i32, ptr %minor.addr, align 4, !dbg !5295
  call void @ida_free(ptr noundef @misc_minors_ida, i32 noundef %3) #9, !dbg !5296
  br label %if.end, !dbg !5296

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void, !dbg !5297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !5298 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5304
  %1 = ptrtoint ptr %0 to i64, !dbg !5305
  ret i64 %1, !dbg !5306
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5307 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5311, metadata !DIExpression()), !dbg !5313
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5312, metadata !DIExpression()), !dbg !5314
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5315
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5316
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5317
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5318
  %3 = load ptr, ptr %next, align 8, !dbg !5318
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9, !dbg !5319
  ret void, !dbg !5320
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5321 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @misc_deregister(ptr noundef %misc) #0 align 16 !dbg !5322 {
entry:
  %misc.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %misc, ptr %misc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %misc.addr, metadata !5326, metadata !DIExpression()), !dbg !5333
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5334
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5327, metadata !DIExpression()), !dbg !5334
  %0 = load ptr, ptr %misc.addr, align 8, !dbg !5334
  %list = getelementptr inbounds %struct.miscdevice, ptr %0, i32 0, i32 3, !dbg !5334
  %call = call i32 @list_empty(ptr noundef %list) #9, !dbg !5334
  %tobool = icmp ne i32 %call, 0, !dbg !5334
  %lnot = xor i1 %tobool, true, !dbg !5334
  %lnot1 = xor i1 %lnot, true, !dbg !5334
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5334
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5334
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5335
  %tobool2 = icmp ne i32 %1, 0, !dbg !5335
  %lnot3 = xor i1 %tobool2, true, !dbg !5335
  %lnot5 = xor i1 %lnot3, true, !dbg !5335
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5335
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5335
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5335
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5335
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5334

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5335

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !5336
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5330, metadata !DIExpression()), !dbg !5336
  store i32 2305, ptr %__flags, align 4, !dbg !5336
  br label %do.body8, !dbg !5336

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5337

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5337

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5336

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5339
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 296, i32 %2, i64 12) #8, !dbg !5339, !srcloc !5341
  br label %do.cond10, !dbg !5339

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5339

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5336

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5342

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5342

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !5335
  br label %do.cond15, !dbg !5336

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5336

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5336

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5334
  %tobool17 = icmp ne i32 %3, 0, !dbg !5334
  %lnot18 = xor i1 %tobool17, true, !dbg !5334
  %lnot20 = xor i1 %lnot18, true, !dbg !5334
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5334
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5334
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5334
  store i64 %expval23, ptr %tmp, align 8, !dbg !5335
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5344
  %4 = load i64, ptr %tmp, align 8, !dbg !5334
  %tobool24 = icmp ne i64 %4, 0, !dbg !5344
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5345

if.then25:                                        ; preds = %if.end
  br label %return, !dbg !5346

if.end26:                                         ; preds = %if.end
  call void @mutex_lock(ptr noundef @misc_mtx) #9, !dbg !5347
  %5 = load ptr, ptr %misc.addr, align 8, !dbg !5348
  %list27 = getelementptr inbounds %struct.miscdevice, ptr %5, i32 0, i32 3, !dbg !5349
  call void @list_del(ptr noundef %list27) #9, !dbg !5350
  %6 = load ptr, ptr %misc.addr, align 8, !dbg !5351
  %minor = getelementptr inbounds %struct.miscdevice, ptr %6, i32 0, i32 0, !dbg !5351
  %7 = load i32, ptr %minor, align 8, !dbg !5351
  %or = or i32 10485760, %7, !dbg !5351
  call void @device_destroy(ptr noundef @misc_class, i32 noundef %or) #9, !dbg !5352
  %8 = load ptr, ptr %misc.addr, align 8, !dbg !5353
  %minor28 = getelementptr inbounds %struct.miscdevice, ptr %8, i32 0, i32 0, !dbg !5354
  %9 = load i32, ptr %minor28, align 8, !dbg !5354
  call void @misc_minor_free(i32 noundef %9) #9, !dbg !5355
  call void @mutex_unlock(ptr noundef @misc_mtx) #9, !dbg !5356
  br label %return, !dbg !5357

return:                                           ; preds = %if.end26, %if.then25
  ret void, !dbg !5357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !5358 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  br label %do.body, !dbg !5366

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5368

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5366
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5366
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5366
  store ptr %1, ptr %tmp, align 8, !dbg !5368
  %2 = load ptr, ptr %tmp, align 8, !dbg !5366
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5370
  %cmp = icmp eq ptr %2, %3, !dbg !5371
  %conv = zext i1 %cmp to i32, !dbg !5371
  ret i32 %conv, !dbg !5372
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !5373 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5377
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !5378
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5379
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5380
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5381
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5382
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5383
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5384
  ret void, !dbg !5385
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5386 dso_local void @device_destroy(ptr noundef, i32 noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_misc__289_330_misc_init4() #6 section ".init.text" align 16 !dbg !5389 {
entry:
  %call = call i32 @misc_init() #10, !dbg !5390
  ret i32 %call, !dbg !5390
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @misc_init() #6 section ".init.text" align 16 !dbg !5391 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !5397
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5393, metadata !DIExpression()), !dbg !5398
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5394, metadata !DIExpression()), !dbg !5400
  %call = call ptr @proc_create_seq_private(ptr noundef @.str.2, i16 noundef zeroext 0, ptr noundef null, ptr noundef @misc_seq_ops, i32 noundef 0, ptr noundef null) #9, !dbg !5401
  store ptr %call, ptr %ret, align 8, !dbg !5402
  %call1 = call i32 @class_register(ptr noundef @misc_class) #9, !dbg !5403
  store i32 %call1, ptr %err, align 4, !dbg !5404
  %0 = load i32, ptr %err, align 4, !dbg !5405
  %tobool = icmp ne i32 %0, 0, !dbg !5405
  br i1 %tobool, label %if.then, label %if.end, !dbg !5407

if.then:                                          ; preds = %entry
  br label %fail_remove, !dbg !5408

if.end:                                           ; preds = %entry
  store i32 -5, ptr %err, align 4, !dbg !5409
  %call2 = call i32 @register_chrdev(i32 noundef 10, ptr noundef @.str.2, ptr noundef @misc_fops) #9, !dbg !5410
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5410
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5412

if.then4:                                         ; preds = %if.end
  br label %fail_printk, !dbg !5413

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5414

fail_printk:                                      ; preds = %if.then4
  call void @llvm.dbg.label(metadata !5395), !dbg !5415
  br label %do.body, !dbg !5416

do.body:                                          ; preds = %fail_printk
  br label %do.cond, !dbg !5418

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5418

do.end:                                           ; preds = %do.cond
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef 10) #10, !dbg !5416
  store i32 %call6, ptr %tmp, align 4, !dbg !5418
  %1 = load i32, ptr %tmp, align 4, !dbg !5416
  call void @class_unregister(ptr noundef @misc_class) #9, !dbg !5420
  br label %fail_remove, !dbg !5420

fail_remove:                                      ; preds = %do.end, %if.then
  call void @llvm.dbg.label(metadata !5396), !dbg !5421
  %2 = load ptr, ptr %ret, align 8, !dbg !5422
  %tobool7 = icmp ne ptr %2, null, !dbg !5422
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5424

if.then8:                                         ; preds = %fail_remove
  call void @remove_proc_entry(ptr noundef @.str.2, ptr noundef null) #9, !dbg !5425
  br label %if.end9, !dbg !5425

if.end9:                                          ; preds = %if.then8, %fail_remove
  %3 = load i32, ptr %err, align 4, !dbg !5426
  store i32 %3, ptr %retval, align 4, !dbg !5427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5427

cleanup:                                          ; preds = %if.end9, %if.end5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !5428
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !5428
  %4 = load i32, ptr %retval, align 4, !dbg !5428
  ret i32 %4, !dbg !5428
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ida_alloc_max(ptr noundef %ida, i32 noundef %max, i32 noundef %gfp) #3 align 16 !dbg !5429 {
entry:
  %ida.addr = alloca ptr, align 8
  %max.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !5434, metadata !DIExpression()), !dbg !5437
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !5435, metadata !DIExpression()), !dbg !5438
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5436, metadata !DIExpression()), !dbg !5439
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !5440
  %1 = load i32, ptr %max.addr, align 4, !dbg !5441
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !5442
  %call = call i32 @ida_alloc_range(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2) #9, !dbg !5443
  ret i32 %call, !dbg !5444
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5445 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @misc_devnode(ptr noundef %dev, ptr noundef %mode) #0 align 16 !dbg !5448 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5450, metadata !DIExpression()), !dbg !5455
  store ptr %mode, ptr %mode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !5451, metadata !DIExpression()), !dbg !5456
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #8, !dbg !5457
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5452, metadata !DIExpression()), !dbg !5458
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5459
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #9, !dbg !5460
  store ptr %call, ptr %c, align 8, !dbg !5458
  %1 = load ptr, ptr %mode.addr, align 8, !dbg !5461
  %tobool = icmp ne ptr %1, null, !dbg !5461
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5463

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %c, align 8, !dbg !5464
  %mode1 = getelementptr inbounds %struct.miscdevice, ptr %2, i32 0, i32 8, !dbg !5465
  %3 = load i16, ptr %mode1, align 8, !dbg !5465
  %conv = zext i16 %3 to i32, !dbg !5464
  %tobool2 = icmp ne i32 %conv, 0, !dbg !5464
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5466

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %c, align 8, !dbg !5467
  %mode3 = getelementptr inbounds %struct.miscdevice, ptr %4, i32 0, i32 8, !dbg !5468
  %5 = load i16, ptr %mode3, align 8, !dbg !5468
  %6 = load ptr, ptr %mode.addr, align 8, !dbg !5469
  store i16 %5, ptr %6, align 2, !dbg !5470
  br label %if.end, !dbg !5471

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load ptr, ptr %c, align 8, !dbg !5472
  %nodename = getelementptr inbounds %struct.miscdevice, ptr %7, i32 0, i32 7, !dbg !5474
  %8 = load ptr, ptr %nodename, align 8, !dbg !5474
  %tobool4 = icmp ne ptr %8, null, !dbg !5472
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !5475

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %c, align 8, !dbg !5476
  %nodename6 = getelementptr inbounds %struct.miscdevice, ptr %9, i32 0, i32 7, !dbg !5477
  %10 = load ptr, ptr %nodename6, align 8, !dbg !5477
  %call7 = call noalias ptr @kstrdup(ptr noundef %10, i32 noundef 3264) #9, !dbg !5478
  store ptr %call7, ptr %retval, align 8, !dbg !5479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5479

if.end8:                                          ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5480

cleanup:                                          ; preds = %if.end8, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #8, !dbg !5481
  %11 = load ptr, ptr %retval, align 8, !dbg !5481
  ret ptr %11, !dbg !5481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #3 align 16 !dbg !5482 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5488
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !5489
  %1 = load ptr, ptr %driver_data, align 8, !dbg !5489
  ret ptr %1, !dbg !5490
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5491 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5495 dso_local void @ida_free(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5498 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5502, metadata !DIExpression()), !dbg !5505
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5503, metadata !DIExpression()), !dbg !5506
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5504, metadata !DIExpression()), !dbg !5507
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5508
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5510
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5511
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !5512
  br i1 %call, label %if.end, label %if.then, !dbg !5513

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5514

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5515
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5516
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5517
  store ptr %3, ptr %prev1, align 8, !dbg !5518
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5519
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5520
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5521
  store ptr %5, ptr %next2, align 8, !dbg !5522
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5523
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5524
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5525
  store ptr %7, ptr %prev3, align 8, !dbg !5526
  br label %do.body, !dbg !5527

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5528

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5530

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5528

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5532
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5532
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5532
  store volatile ptr %9, ptr %next6, align 8, !dbg !5532
  br label %do.end7, !dbg !5532

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5528

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5534
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5535 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5539, metadata !DIExpression()), !dbg !5542
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5540, metadata !DIExpression()), !dbg !5543
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5541, metadata !DIExpression()), !dbg !5544
  ret i1 true, !dbg !5545
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !5546 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5548, metadata !DIExpression()), !dbg !5549
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5550
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !5552
  br i1 %call, label %if.end, label %if.then, !dbg !5553

if.then:                                          ; preds = %entry
  br label %return, !dbg !5554

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5555
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5556
  %2 = load ptr, ptr %prev, align 8, !dbg !5556
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5557
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5558
  %4 = load ptr, ptr %next, align 8, !dbg !5558
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !5559
  br label %return, !dbg !5560

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5560
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !5561 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  ret i1 true, !dbg !5567
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5568 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5570, metadata !DIExpression()), !dbg !5572
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5571, metadata !DIExpression()), !dbg !5573
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5574
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5575
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5576
  store ptr %0, ptr %prev1, align 8, !dbg !5577
  br label %do.body, !dbg !5578

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5579

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5581

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5579

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5583
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5583
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5583
  store volatile ptr %2, ptr %next4, align 8, !dbg !5583
  br label %do.end5, !dbg !5583

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5579

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5585
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5586 dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5589 dso_local i32 @class_register(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @register_chrdev(i32 noundef %major, ptr noundef %name, ptr noundef %fops) #3 align 16 !dbg !5592 {
entry:
  %major.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  store i32 %major, ptr %major.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %major.addr, metadata !5596, metadata !DIExpression()), !dbg !5599
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5597, metadata !DIExpression()), !dbg !5600
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !5598, metadata !DIExpression()), !dbg !5601
  %0 = load i32, ptr %major.addr, align 4, !dbg !5602
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5603
  %2 = load ptr, ptr %fops.addr, align 8, !dbg !5604
  %call = call i32 @__register_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef %1, ptr noundef %2) #9, !dbg !5605
  ret i32 %call, !dbg !5606
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5607 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5611 dso_local void @class_unregister(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5612 dso_local void @remove_proc_entry(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @misc_seq_start(ptr noundef %seq, ptr noundef %pos) #0 align 16 !dbg !5615 {
entry:
  %seq.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5617, metadata !DIExpression()), !dbg !5619
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5618, metadata !DIExpression()), !dbg !5620
  call void @mutex_lock(ptr noundef @misc_mtx) #9, !dbg !5621
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !5622
  %1 = load i64, ptr %0, align 8, !dbg !5623
  %call = call ptr @seq_list_start(ptr noundef @misc_list, i64 noundef %1) #9, !dbg !5624
  ret ptr %call, !dbg !5625
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @misc_seq_stop(ptr noundef %seq, ptr noundef %v) #0 align 16 !dbg !5626 {
entry:
  %seq.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5628, metadata !DIExpression()), !dbg !5630
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5629, metadata !DIExpression()), !dbg !5631
  call void @mutex_unlock(ptr noundef @misc_mtx) #9, !dbg !5632
  ret void, !dbg !5633
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @misc_seq_next(ptr noundef %seq, ptr noundef %v, ptr noundef %pos) #0 align 16 !dbg !5634 {
entry:
  %seq.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5636, metadata !DIExpression()), !dbg !5639
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5637, metadata !DIExpression()), !dbg !5640
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5638, metadata !DIExpression()), !dbg !5641
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5642
  %1 = load ptr, ptr %pos.addr, align 8, !dbg !5643
  %call = call ptr @seq_list_next(ptr noundef %0, ptr noundef @misc_list, ptr noundef %1) #9, !dbg !5644
  ret ptr %call, !dbg !5645
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @misc_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 16 !dbg !5646 {
entry:
  %seq.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !5648, metadata !DIExpression()), !dbg !5653
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5649, metadata !DIExpression()), !dbg !5654
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5650, metadata !DIExpression()), !dbg !5656
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5657
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5651, metadata !DIExpression()), !dbg !5657
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5657
  store ptr %0, ptr %__mptr, align 8, !dbg !5657
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5657
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !5657
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5657
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5658
  %2 = load ptr, ptr %tmp, align 8, !dbg !5657
  store ptr %2, ptr %p, align 8, !dbg !5656
  %3 = load ptr, ptr %seq.addr, align 8, !dbg !5659
  %4 = load ptr, ptr %p, align 8, !dbg !5660
  %minor = getelementptr inbounds %struct.miscdevice, ptr %4, i32 0, i32 0, !dbg !5661
  %5 = load i32, ptr %minor, align 8, !dbg !5661
  %6 = load ptr, ptr %p, align 8, !dbg !5662
  %name = getelementptr inbounds %struct.miscdevice, ptr %6, i32 0, i32 1, !dbg !5663
  %7 = load ptr, ptr %name, align 8, !dbg !5663
  %tobool = icmp ne ptr %7, null, !dbg !5662
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5662

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %p, align 8, !dbg !5664
  %name1 = getelementptr inbounds %struct.miscdevice, ptr %8, i32 0, i32 1, !dbg !5665
  %9 = load ptr, ptr %name1, align 8, !dbg !5665
  br label %cond.end, !dbg !5662

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5662

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ @.str.5, %cond.false ], !dbg !5662
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.4, i32 noundef %5, ptr noundef %cond) #9, !dbg !5666
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !5667
  ret i32 0, !dbg !5668
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5669 dso_local ptr @seq_list_start(ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5672 dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5675 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5678 dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @misc_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5681 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %minor = alloca i32, align 4
  %c = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %err = alloca i32, align 4
  %new_fops = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__mptr37 = alloca ptr, align 8
  %tmp40 = alloca ptr, align 8
  %__file = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5683, metadata !DIExpression()), !dbg !5707
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5684, metadata !DIExpression()), !dbg !5708
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #8, !dbg !5709
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !5685, metadata !DIExpression()), !dbg !5710
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5711
  %call = call i32 @iminor(ptr noundef %0) #9, !dbg !5712
  store i32 %call, ptr %minor, align 4, !dbg !5710
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #8, !dbg !5713
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5686, metadata !DIExpression()), !dbg !5714
  store ptr null, ptr %c, align 8, !dbg !5714
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #8, !dbg !5713
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !5687, metadata !DIExpression()), !dbg !5715
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !5716
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5688, metadata !DIExpression()), !dbg !5717
  store i32 -19, ptr %err, align 4, !dbg !5717
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_fops) #8, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %new_fops, metadata !5689, metadata !DIExpression()), !dbg !5719
  store ptr null, ptr %new_fops, align 8, !dbg !5719
  call void @mutex_lock(ptr noundef @misc_mtx) #9, !dbg !5720
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5721
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5690, metadata !DIExpression()), !dbg !5721
  %1 = load ptr, ptr @misc_list, align 8, !dbg !5721
  store ptr %1, ptr %__mptr, align 8, !dbg !5721
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5721
  %add.ptr = getelementptr i8, ptr %2, i64 -24, !dbg !5721
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5721
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5722
  %3 = load ptr, ptr %tmp, align 8, !dbg !5721
  store ptr %3, ptr %iter, align 8, !dbg !5722
  br label %for.cond, !dbg !5722

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %iter, align 8, !dbg !5723
  %list = getelementptr inbounds %struct.miscdevice, ptr %4, i32 0, i32 3, !dbg !5723
  %cmp = icmp eq ptr %list, @misc_list, !dbg !5723
  %lnot = xor i1 %cmp, true, !dbg !5723
  br i1 %lnot, label %for.body, label %for.end, !dbg !5722

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %iter, align 8, !dbg !5724
  %minor1 = getelementptr inbounds %struct.miscdevice, ptr %5, i32 0, i32 0, !dbg !5727
  %6 = load i32, ptr %minor1, align 8, !dbg !5727
  %7 = load i32, ptr %minor, align 4, !dbg !5728
  %cmp2 = icmp ne i32 %6, %7, !dbg !5729
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5730

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5731

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %iter, align 8, !dbg !5732
  store ptr %8, ptr %c, align 8, !dbg !5733
  %9 = load ptr, ptr %iter, align 8, !dbg !5734
  %fops = getelementptr inbounds %struct.miscdevice, ptr %9, i32 0, i32 2, !dbg !5734
  %10 = load ptr, ptr %fops, align 8, !dbg !5734
  %tobool = icmp ne ptr %10, null, !dbg !5734
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !5734

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %iter, align 8, !dbg !5734
  %fops3 = getelementptr inbounds %struct.miscdevice, ptr %11, i32 0, i32 2, !dbg !5734
  %12 = load ptr, ptr %fops3, align 8, !dbg !5734
  %owner = getelementptr inbounds %struct.file_operations, ptr %12, i32 0, i32 0, !dbg !5734
  %13 = load ptr, ptr %owner, align 8, !dbg !5734
  %call4 = call zeroext i1 @try_module_get(ptr noundef %13) #9, !dbg !5734
  br i1 %call4, label %cond.true, label %cond.false, !dbg !5734

cond.true:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %iter, align 8, !dbg !5734
  %fops5 = getelementptr inbounds %struct.miscdevice, ptr %14, i32 0, i32 2, !dbg !5734
  %15 = load ptr, ptr %fops5, align 8, !dbg !5734
  br label %cond.end, !dbg !5734

cond.false:                                       ; preds = %land.lhs.true, %if.end
  br label %cond.end, !dbg !5734

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %15, %cond.true ], [ null, %cond.false ], !dbg !5734
  store ptr %cond, ptr %new_fops, align 8, !dbg !5735
  br label %for.end, !dbg !5736

for.inc:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #8, !dbg !5737
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5693, metadata !DIExpression()), !dbg !5737
  %16 = load ptr, ptr %iter, align 8, !dbg !5737
  %list7 = getelementptr inbounds %struct.miscdevice, ptr %16, i32 0, i32 3, !dbg !5737
  %next = getelementptr inbounds %struct.list_head, ptr %list7, i32 0, i32 0, !dbg !5737
  %17 = load ptr, ptr %next, align 8, !dbg !5737
  store ptr %17, ptr %__mptr6, align 8, !dbg !5737
  %18 = load ptr, ptr %__mptr6, align 8, !dbg !5737
  %add.ptr9 = getelementptr i8, ptr %18, i64 -24, !dbg !5737
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !5737
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #8, !dbg !5723
  %19 = load ptr, ptr %tmp8, align 8, !dbg !5737
  store ptr %19, ptr %iter, align 8, !dbg !5723
  br label %for.cond, !dbg !5723, !llvm.loop !5738

for.end:                                          ; preds = %cond.end, %for.cond
  %20 = load ptr, ptr %new_fops, align 8, !dbg !5740
  %tobool10 = icmp ne ptr %20, null, !dbg !5740
  br i1 %tobool10, label %if.end46, label %if.then11, !dbg !5741

if.then11:                                        ; preds = %for.end
  call void @mutex_unlock(ptr noundef @misc_mtx) #9, !dbg !5742
  %21 = load i32, ptr %minor, align 4, !dbg !5743
  %call12 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.6, i32 noundef 10, i32 noundef %21) #9, !dbg !5743
  call void @mutex_lock(ptr noundef @misc_mtx) #9, !dbg !5744
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #8, !dbg !5745
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !5696, metadata !DIExpression()), !dbg !5745
  %22 = load ptr, ptr @misc_list, align 8, !dbg !5745
  store ptr %22, ptr %__mptr13, align 8, !dbg !5745
  %23 = load ptr, ptr %__mptr13, align 8, !dbg !5745
  %add.ptr15 = getelementptr i8, ptr %23, i64 -24, !dbg !5745
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !5745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #8, !dbg !5746
  %24 = load ptr, ptr %tmp14, align 8, !dbg !5745
  store ptr %24, ptr %iter, align 8, !dbg !5746
  br label %for.cond16, !dbg !5746

for.cond16:                                       ; preds = %for.inc36, %if.then11
  %25 = load ptr, ptr %iter, align 8, !dbg !5747
  %list17 = getelementptr inbounds %struct.miscdevice, ptr %25, i32 0, i32 3, !dbg !5747
  %cmp18 = icmp eq ptr %list17, @misc_list, !dbg !5747
  %lnot19 = xor i1 %cmp18, true, !dbg !5747
  br i1 %lnot19, label %for.body20, label %for.end42, !dbg !5746

for.body20:                                       ; preds = %for.cond16
  %26 = load ptr, ptr %iter, align 8, !dbg !5748
  %minor21 = getelementptr inbounds %struct.miscdevice, ptr %26, i32 0, i32 0, !dbg !5751
  %27 = load i32, ptr %minor21, align 8, !dbg !5751
  %28 = load i32, ptr %minor, align 4, !dbg !5752
  %cmp22 = icmp ne i32 %27, %28, !dbg !5753
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5754

if.then23:                                        ; preds = %for.body20
  br label %for.inc36, !dbg !5755

if.end24:                                         ; preds = %for.body20
  %29 = load ptr, ptr %iter, align 8, !dbg !5756
  store ptr %29, ptr %c, align 8, !dbg !5757
  %30 = load ptr, ptr %iter, align 8, !dbg !5758
  %fops25 = getelementptr inbounds %struct.miscdevice, ptr %30, i32 0, i32 2, !dbg !5758
  %31 = load ptr, ptr %fops25, align 8, !dbg !5758
  %tobool26 = icmp ne ptr %31, null, !dbg !5758
  br i1 %tobool26, label %land.lhs.true27, label %cond.false33, !dbg !5758

land.lhs.true27:                                  ; preds = %if.end24
  %32 = load ptr, ptr %iter, align 8, !dbg !5758
  %fops28 = getelementptr inbounds %struct.miscdevice, ptr %32, i32 0, i32 2, !dbg !5758
  %33 = load ptr, ptr %fops28, align 8, !dbg !5758
  %owner29 = getelementptr inbounds %struct.file_operations, ptr %33, i32 0, i32 0, !dbg !5758
  %34 = load ptr, ptr %owner29, align 8, !dbg !5758
  %call30 = call zeroext i1 @try_module_get(ptr noundef %34) #9, !dbg !5758
  br i1 %call30, label %cond.true31, label %cond.false33, !dbg !5758

cond.true31:                                      ; preds = %land.lhs.true27
  %35 = load ptr, ptr %iter, align 8, !dbg !5758
  %fops32 = getelementptr inbounds %struct.miscdevice, ptr %35, i32 0, i32 2, !dbg !5758
  %36 = load ptr, ptr %fops32, align 8, !dbg !5758
  br label %cond.end34, !dbg !5758

cond.false33:                                     ; preds = %land.lhs.true27, %if.end24
  br label %cond.end34, !dbg !5758

cond.end34:                                       ; preds = %cond.false33, %cond.true31
  %cond35 = phi ptr [ %36, %cond.true31 ], [ null, %cond.false33 ], !dbg !5758
  store ptr %cond35, ptr %new_fops, align 8, !dbg !5759
  br label %for.end42, !dbg !5760

for.inc36:                                        ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr37) #8, !dbg !5761
  call void @llvm.dbg.declare(metadata ptr %__mptr37, metadata !5701, metadata !DIExpression()), !dbg !5761
  %37 = load ptr, ptr %iter, align 8, !dbg !5761
  %list38 = getelementptr inbounds %struct.miscdevice, ptr %37, i32 0, i32 3, !dbg !5761
  %next39 = getelementptr inbounds %struct.list_head, ptr %list38, i32 0, i32 0, !dbg !5761
  %38 = load ptr, ptr %next39, align 8, !dbg !5761
  store ptr %38, ptr %__mptr37, align 8, !dbg !5761
  %39 = load ptr, ptr %__mptr37, align 8, !dbg !5761
  %add.ptr41 = getelementptr i8, ptr %39, i64 -24, !dbg !5761
  store ptr %add.ptr41, ptr %tmp40, align 8, !dbg !5761
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr37) #8, !dbg !5747
  %40 = load ptr, ptr %tmp40, align 8, !dbg !5761
  store ptr %40, ptr %iter, align 8, !dbg !5747
  br label %for.cond16, !dbg !5747, !llvm.loop !5762

for.end42:                                        ; preds = %cond.end34, %for.cond16
  %41 = load ptr, ptr %new_fops, align 8, !dbg !5764
  %tobool43 = icmp ne ptr %41, null, !dbg !5764
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !5766

if.then44:                                        ; preds = %for.end42
  br label %fail, !dbg !5767

if.end45:                                         ; preds = %for.end42
  br label %if.end46, !dbg !5768

if.end46:                                         ; preds = %if.end45, %for.end
  %42 = load ptr, ptr %c, align 8, !dbg !5769
  %43 = load ptr, ptr %file.addr, align 8, !dbg !5770
  %private_data = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 15, !dbg !5771
  store ptr %42, ptr %private_data, align 8, !dbg !5772
  store i32 0, ptr %err, align 4, !dbg !5773
  br label %do.body, !dbg !5774

do.body:                                          ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 8, ptr %__file) #8, !dbg !5775
  call void @llvm.dbg.declare(metadata ptr %__file, metadata !5704, metadata !DIExpression()), !dbg !5775
  %44 = load ptr, ptr %file.addr, align 8, !dbg !5775
  store ptr %44, ptr %__file, align 8, !dbg !5775
  br label %do.body47, !dbg !5775

do.body47:                                        ; preds = %do.body
  %45 = load ptr, ptr %__file, align 8, !dbg !5776
  %f_op = getelementptr inbounds %struct.file, ptr %45, i32 0, i32 12, !dbg !5776
  %46 = load ptr, ptr %f_op, align 8, !dbg !5776
  %tobool48 = icmp ne ptr %46, null, !dbg !5776
  br i1 %tobool48, label %if.then49, label %if.end52, !dbg !5779

if.then49:                                        ; preds = %do.body47
  %47 = load ptr, ptr %__file, align 8, !dbg !5776
  %f_op50 = getelementptr inbounds %struct.file, ptr %47, i32 0, i32 12, !dbg !5776
  %48 = load ptr, ptr %f_op50, align 8, !dbg !5776
  %owner51 = getelementptr inbounds %struct.file_operations, ptr %48, i32 0, i32 0, !dbg !5776
  %49 = load ptr, ptr %owner51, align 8, !dbg !5776
  call void @module_put(ptr noundef %49) #9, !dbg !5776
  br label %if.end52, !dbg !5776

if.end52:                                         ; preds = %if.then49, %do.body47
  br label %do.cond, !dbg !5779

do.cond:                                          ; preds = %if.end52
  br label %do.end, !dbg !5779

do.end:                                           ; preds = %do.cond
  br label %do.body53, !dbg !5775

do.body53:                                        ; preds = %do.end
  %50 = load ptr, ptr %new_fops, align 8, !dbg !5780
  %51 = load ptr, ptr %__file, align 8, !dbg !5780
  %f_op54 = getelementptr inbounds %struct.file, ptr %51, i32 0, i32 12, !dbg !5780
  store ptr %50, ptr %f_op54, align 8, !dbg !5780
  %tobool55 = icmp ne ptr %50, null, !dbg !5780
  %lnot56 = xor i1 %tobool55, true, !dbg !5780
  %lnot57 = xor i1 %lnot56, true, !dbg !5780
  %lnot58 = xor i1 %lnot57, true, !dbg !5780
  %lnot.ext = zext i1 %lnot58 to i32, !dbg !5780
  %conv = sext i32 %lnot.ext to i64, !dbg !5780
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5780
  %tobool59 = icmp ne i64 %expval, 0, !dbg !5780
  br i1 %tobool59, label %if.then60, label %if.end70, !dbg !5783

if.then60:                                        ; preds = %do.body53
  br label %do.body61, !dbg !5780

do.body61:                                        ; preds = %if.then60
  br label %do.body62, !dbg !5784

do.body62:                                        ; preds = %do.body61
  br label %do.cond63, !dbg !5786

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !5786

do.end64:                                         ; preds = %do.cond63
  br label %do.body65, !dbg !5784

do.body65:                                        ; preds = %do.end64
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 177, i32 0, i64 12) #8, !dbg !5788, !srcloc !5790
  br label %do.cond66, !dbg !5788

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !5788

do.end67:                                         ; preds = %do.cond66
  unreachable, !dbg !5784

do.cond68:                                        ; No predecessors!
  br label %do.end69, !dbg !5784

do.end69:                                         ; preds = %do.cond68
  br label %if.end70, !dbg !5784

if.end70:                                         ; preds = %do.end69, %do.body53
  br label %do.cond71, !dbg !5783

do.cond71:                                        ; preds = %if.end70
  br label %do.end72, !dbg !5783

do.end72:                                         ; preds = %do.cond71
  call void @llvm.lifetime.end.p0(i64 8, ptr %__file) #8, !dbg !5774
  br label %do.cond73, !dbg !5775

do.cond73:                                        ; preds = %do.end72
  br label %do.end74, !dbg !5775

do.end74:                                         ; preds = %do.cond73
  %52 = load ptr, ptr %file.addr, align 8, !dbg !5791
  %f_op75 = getelementptr inbounds %struct.file, ptr %52, i32 0, i32 12, !dbg !5793
  %53 = load ptr, ptr %f_op75, align 8, !dbg !5793
  %open = getelementptr inbounds %struct.file_operations, ptr %53, i32 0, i32 13, !dbg !5794
  %54 = load ptr, ptr %open, align 8, !dbg !5794
  %tobool76 = icmp ne ptr %54, null, !dbg !5791
  br i1 %tobool76, label %if.then77, label %if.end81, !dbg !5795

if.then77:                                        ; preds = %do.end74
  %55 = load ptr, ptr %file.addr, align 8, !dbg !5796
  %f_op78 = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 12, !dbg !5797
  %56 = load ptr, ptr %f_op78, align 8, !dbg !5797
  %open79 = getelementptr inbounds %struct.file_operations, ptr %56, i32 0, i32 13, !dbg !5798
  %57 = load ptr, ptr %open79, align 8, !dbg !5798
  %58 = load ptr, ptr %inode.addr, align 8, !dbg !5799
  %59 = load ptr, ptr %file.addr, align 8, !dbg !5800
  %call80 = call i32 %57(ptr noundef %58, ptr noundef %59) #9, !dbg !5796
  store i32 %call80, ptr %err, align 4, !dbg !5801
  br label %if.end81, !dbg !5802

if.end81:                                         ; preds = %if.then77, %do.end74
  br label %fail, !dbg !5794

fail:                                             ; preds = %if.end81, %if.then44
  call void @llvm.dbg.label(metadata !5706), !dbg !5803
  call void @mutex_unlock(ptr noundef @misc_mtx) #9, !dbg !5804
  %60 = load i32, ptr %err, align 4, !dbg !5805
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_fops) #8, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #8, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #8, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #8, !dbg !5806
  ret i32 %60, !dbg !5807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iminor(ptr noundef %inode) #3 align 16 !dbg !5808 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5812, metadata !DIExpression()), !dbg !5813
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5814
  %i_rdev = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, !dbg !5814
  %1 = load i32, ptr %i_rdev, align 4, !dbg !5814
  %and = and i32 %1, 1048575, !dbg !5814
  ret i32 %and, !dbg !5815
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5816 dso_local zeroext i1 @try_module_get(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5819 dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5823 dso_local void @module_put(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045}
!llvm.ident = !{!5046}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "misc_mtx", scope: !2, file: !3, line: 58, type: !630, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/char/.misc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/char/misc\22 -D KBUILD_BASENAME=\22misc\22 -D KBUILD_MODNAME=\22misc\22 -D __KBUILD_MODNAME=kmod_misc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/char/misc.ll drivers/char/misc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !4991, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/misc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "24c4f9328edbbccb42be25c60e31599f")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !49, !56, !64, !72, !78, !87, !92, !97, !103, !111, !127, !134, !141}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !44, line: 45, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!47 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!48 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !50, line: 487, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!53 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!54 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!55 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !57, line: 620, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!60 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!61 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!62 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!63 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !57, line: 597, baseType: !65, size: 32, elements: !66)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!68 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!69 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!70 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!71 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !73, line: 26, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !50, line: 547, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86}
!80 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!81 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!82 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!83 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!84 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!85 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!86 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !50, line: 564, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91}
!89 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!90 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!91 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !50, line: 577, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!95 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!96 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !50, line: 503, baseType: !7, size: 32, elements: !98)
!98 = !{!99, !100, !101, !102}
!99 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!100 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!101 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!102 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !104, line: 68, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!105 = !{!106, !107, !108, !109, !110}
!106 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!107 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!108 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!109 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!110 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !112, line: 1325, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!114 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!115 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!116 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!117 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!118 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!119 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!120 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!121 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!122 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!123 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!124 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!125 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!126 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !128, line: 51, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!131 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!132 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!133 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !135, line: 15, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!138 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!139 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!140 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !{!147, !148, !4987, !1074, !315, !301, !4989, !163, !7}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !150, line: 79, size: 640, elements: !151)
!150 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a69389defd2997053c089e14bd956b02")
!151 = !{!152, !153, !157, !4981, !4982, !4983, !4984, !4985, !4986}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !149, file: !150, line: 80, baseType: !65, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !150, line: 81, baseType: !154, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !149, file: !150, line: 82, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !161)
!161 = !{!162, !4863, !4867, !4871, !4875, !4876, !4877, !4883, !4896, !4900, !4904, !4905, !4909, !4910, !4914, !4919, !4920, !4924, !4928, !4934, !4935, !4939, !4940, !4944, !4948, !4949, !4954, !4958, !4962, !4966, !4970, !4971, !4977}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !160, file: !14, line: 1915, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !165)
!165 = !{!166, !167, !174, !178, !4540, !4566, !4567, !4568, !4569, !4573, !4576, !4577, !4578, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4645, !4649, !4667, !4684, !4685, !4686, !4687, !4696, !4719, !4720, !4723, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4737, !4738, !4824, !4832, !4833, !4834, !4835, !4839, !4840, !4844, !4845, !4846, !4847, !4849, !4850, !4851, !4858, !4859, !4860, !4862}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !164, file: !6, line: 403, baseType: !5, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !164, file: !6, line: 406, baseType: !168, size: 128, offset: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !169, line: 190, size: 128, elements: !170)
!169 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!170 = !{!171, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !169, line: 191, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !168, file: !169, line: 191, baseType: !172, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !6, line: 409, baseType: !175, size: 448, offset: 192)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 448, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 56)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !164, file: !6, line: 417, baseType: !179, size: 768, offset: 640)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !180)
!180 = !{!181, !4534, !4535, !4536, !4539}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !179, file: !6, line: 46, baseType: !182, size: 512)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !183, line: 64, size: 512, elements: !184)
!183 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!184 = !{!185, !186, !187, !189, !278, !4437, !4528, !4529, !4530, !4531, !4532, !4533}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !183, line: 65, baseType: !154, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !182, file: !183, line: 66, baseType: !168, size: 128, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !182, file: !183, line: 67, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !182, file: !183, line: 68, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !183, line: 168, size: 768, elements: !192)
!192 = !{!193, !194, !237, !238}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !191, file: !183, line: 169, baseType: !168, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !191, file: !183, line: 170, baseType: !195, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !196, line: 29, baseType: !197)
!196 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !196, line: 17, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !196, line: 18, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !196, line: 18, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !200, file: !196, line: 19, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !204, line: 14, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !203, file: !204, line: 15, baseType: !207, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !208, line: 44, baseType: !209)
!208 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !208, line: 14, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !208, line: 15, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !208, line: 15, size: 32, elements: !213)
!213 = !{!214, !219, !229}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !212, file: !208, line: 16, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !169, line: 174, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 172, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !216, file: !169, line: 173, baseType: !65, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !208, line: 24, baseType: !220, size: 16)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !212, file: !208, line: 24, size: 16, elements: !221)
!221 = !{!222, !228}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !220, file: !208, line: 25, baseType: !223, size: 8)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !224, line: 17, baseType: !225)
!224 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !226, line: 21, baseType: !227)
!226 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !220, file: !208, line: 26, baseType: !223, size: 8, offset: 8)
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !208, line: 28, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !212, file: !208, line: 28, size: 32, elements: !231)
!231 = !{!232, !236}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !230, file: !208, line: 29, baseType: !233, size: 16)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !224, line: 19, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !226, line: 24, baseType: !235)
!235 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !230, file: !208, line: 30, baseType: !233, size: 16, offset: 16)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !191, file: !183, line: 171, baseType: !182, size: 512, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !191, file: !183, line: 172, baseType: !239, size: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !183, line: 133, size: 192, elements: !242)
!242 = !{!243, !250, !255}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !241, file: !183, line: 134, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!65, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !183, line: 135, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!154, !248}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !241, file: !183, line: 136, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!65, !248, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !183, line: 125, size: 20736, elements: !262)
!262 = !{!263, !268, !272, !273, !277}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !261, file: !183, line: 126, baseType: !264, size: 192)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 192, elements: !266)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!266 = !{!267}
!267 = !DISubrange(count: 3)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !261, file: !183, line: 127, baseType: !269, size: 4096, offset: 192)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 4096, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !261, file: !183, line: 128, baseType: !65, size: 32, offset: 4288)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !261, file: !183, line: 129, baseType: !274, size: 16384, offset: 4320)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 16384, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 2048)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !261, file: !183, line: 130, baseType: !65, size: 32, offset: 20704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !182, file: !183, line: 69, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !183, line: 116, size: 384, elements: !282)
!282 = !{!283, !287, !316, !4425, !4429, !4433}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !281, file: !183, line: 117, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !188}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !281, file: !183, line: 118, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !291, line: 254, size: 128, elements: !292)
!291 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!292 = !{!293, !308}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !290, file: !291, line: 255, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !188, !302, !265}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !169, line: 66, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !299, line: 73, baseType: !300)
!299 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !299, line: 15, baseType: !301)
!301 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !291, line: 30, size: 128, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !291, line: 31, baseType: !154, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !303, file: !291, line: 32, baseType: !307, size: 16, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !169, line: 24, baseType: !235)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !290, file: !291, line: 256, baseType: !309, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!297, !188, !302, !154, !312}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !169, line: 61, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !299, line: 72, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !299, line: 16, baseType: !315)
!315 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !281, file: !183, line: 119, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !291, line: 84, size: 320, elements: !321)
!321 = !{!322, !323, !327, !4421, !4423}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !291, line: 85, baseType: !154, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !320, file: !291, line: 86, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!307, !188, !302, !65}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !320, file: !291, line: 88, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!307, !188, !331, !65}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !291, line: 175, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !4412, !4416, !4417}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !332, file: !291, line: 176, baseType: !303, size: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !332, file: !291, line: 177, baseType: !312, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !332, file: !291, line: 178, baseType: !147, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !332, file: !291, line: 179, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !343)
!343 = !{!344, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4406, !4407, !4408, !4409, !4410, !4411}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !342, file: !14, line: 473, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !347)
!347 = !{!348, !349, !350, !358, !359, !366, !367, !370, !371, !4157, !4158, !4159, !4160, !4161, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4201, !4204, !4205, !4206, !4213, !4214, !4215, !4216}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !346, file: !14, line: 642, baseType: !307, size: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !346, file: !14, line: 643, baseType: !235, size: 16, offset: 16)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !346, file: !14, line: 644, baseType: !351, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !352, line: 23, baseType: !353)
!352 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 21, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !353, file: !352, line: 22, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !169, line: 37, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !299, line: 49, baseType: !7)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !346, file: !14, line: 645, baseType: !168, size: 128, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !346, file: !14, line: 646, baseType: !360, size: 32, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !352, line: 28, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 26, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !361, file: !352, line: 27, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !169, line: 38, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !299, line: 50, baseType: !7)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !346, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !346, file: !14, line: 650, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !346, file: !14, line: 651, baseType: !368, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !346, file: !14, line: 654, baseType: !372, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !375)
!375 = !{!376, !3985, !3995, !3999, !4003, !4007, !4011, !4015, !4019, !4023, !4027, !4028, !4032, !4036, !4073, !4102, !4106, !4112, !4116, !4120, !4124, !4128, !4132, !4138, !4142}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !374, file: !14, line: 1967, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!380, !345, !380, !7}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !382, line: 82, size: 1536, elements: !383)
!382 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!383 = !{!384, !385, !395, !403, !404, !424, !425, !429, !442, !3968, !3969, !3970, !3971, !3977, !3978, !3979}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !381, file: !382, line: 84, baseType: !7, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !381, file: !382, line: 85, baseType: !386, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !387, line: 275, baseType: !388)
!387 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !387, line: 275, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !388, file: !387, line: 275, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !387, line: 69, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !387, line: 64, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !392, file: !387, line: 65, baseType: !7, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !381, file: !382, line: 86, baseType: !396, size: 128, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !397, line: 38, size: 128, elements: !398)
!397 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!398 = !{!399, !401}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !397, line: 39, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !396, file: !397, line: 39, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !381, file: !382, line: 87, baseType: !380, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !381, file: !382, line: 88, baseType: !405, size: 128, offset: 256)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !382, line: 49, size: 128, elements: !406)
!406 = !{!407, !421}
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !382, line: 50, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !382, line: 50, size: 64, elements: !409)
!409 = !{!410, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !382, line: 51, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !382, line: 51, size: 64, elements: !412)
!412 = !{!413, !416}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !411, file: !382, line: 52, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !224, line: 21, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !226, line: 27, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !411, file: !382, line: 52, baseType: !414, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !408, file: !382, line: 54, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !224, line: 23, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !226, line: 31, baseType: !420)
!420 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !382, line: 56, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !381, file: !382, line: 89, baseType: !345, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !381, file: !382, line: 91, baseType: !426, size: 256, offset: 448)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 256, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !381, file: !382, line: 94, baseType: !430, size: 64, offset: 704)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !431, line: 25, size: 64, elements: !432)
!431 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !431, line: 26, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !431, line: 26, size: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !434, file: !431, line: 28, baseType: !419, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !431, line: 30, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !434, file: !431, line: 30, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !438, file: !431, line: 31, baseType: !195, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !438, file: !431, line: 32, baseType: !65, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !381, file: !382, line: 95, baseType: !443, size: 64, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !382, line: 128, size: 1024, align: 512, elements: !446)
!446 = !{!447, !451, !452, !459, !465, !469, !473, !477, !478, !482, !486, !3958, !3962}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !445, file: !382, line: 129, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!65, !380, !7}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !445, file: !382, line: 130, baseType: !448, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !445, file: !382, line: 131, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!65, !456, !458}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !445, file: !382, line: 132, baseType: !460, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!65, !456, !7, !154, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !445, file: !382, line: 134, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!65, !456}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !445, file: !382, line: 135, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!65, !380}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !445, file: !382, line: 136, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !380}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !445, file: !382, line: 137, baseType: !474, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !445, file: !382, line: 138, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !380, !345}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !445, file: !382, line: 139, baseType: !483, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!265, !380, !265, !65}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !445, file: !382, line: 140, baseType: !487, size: 64, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !3957}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !492, line: 70, size: 256, elements: !493)
!492 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!493 = !{!494, !495, !3953, !3954}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !491, file: !492, line: 71, baseType: !380, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !491, file: !492, line: 72, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !498)
!498 = !{!499, !500, !503, !504, !505, !509, !558, !1083, !1123, !1208, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1225, !1229, !1230, !1233, !1236, !1239, !1242, !1243, !1244, !1285, !3884, !3885, !3886, !3887, !3888, !3889, !3892, !3894, !3901, !3902, !3903, !3904, !3905, !3920, !3921, !3922, !3923, !3924, !3927, !3928, !3929, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !497, file: !14, line: 1191, baseType: !168, size: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !497, file: !14, line: 1192, baseType: !501, size: 32, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !169, line: 21, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !169, line: 18, baseType: !414)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !497, file: !14, line: 1193, baseType: !227, size: 8, offset: 160)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !497, file: !14, line: 1194, baseType: !315, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !497, file: !14, line: 1195, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !169, line: 52, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !299, line: 88, baseType: !508)
!508 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !497, file: !14, line: 1196, baseType: !510, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !512)
!512 = !{!513, !514, !515, !522, !526, !530, !534, !535, !536, !546, !550, !551, !552, !554, !555, !556, !557}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !511, file: !14, line: 2367, baseType: !154, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !511, file: !14, line: 2368, baseType: !65, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !511, file: !14, line: 2376, baseType: !516, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!65, !519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !521, line: 32, flags: DIFlagFwdDecl)
!521 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!522 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !511, file: !14, line: 2377, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !511, file: !14, line: 2378, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!380, !510, !65, !154, !147}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !511, file: !14, line: 2380, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !496}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !511, file: !14, line: 2381, baseType: !163, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !14, line: 2382, baseType: !510, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !511, file: !14, line: 2383, baseType: !537, size: 64, offset: 512)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !169, line: 194, size: 64, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !537, file: !169, line: 195, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !169, line: 198, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !169, line: 199, baseType: !540, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !541, file: !169, line: 199, baseType: !545, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !511, file: !14, line: 2385, baseType: !547, offset: 576)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !548, line: 206, elements: !549)
!548 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!549 = !{}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !511, file: !14, line: 2386, baseType: !547, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !511, file: !14, line: 2387, baseType: !547, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !511, file: !14, line: 2388, baseType: !553, offset: 576)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, elements: !266)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !511, file: !14, line: 2390, baseType: !547, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !511, file: !14, line: 2391, baseType: !547, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !511, file: !14, line: 2392, baseType: !547, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !511, file: !14, line: 2393, baseType: !547, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !497, file: !14, line: 1197, baseType: !559, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !562)
!562 = !{!563, !567, !571, !572, !576, !582, !586, !587, !588, !592, !596, !600, !601, !602, !608, !613, !614, !1007, !1008, !1009, !1010, !1014, !1018, !1065, !1081, !1082}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !561, file: !14, line: 2058, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!345, !496}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !561, file: !14, line: 2059, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !345}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !561, file: !14, line: 2060, baseType: !568, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !561, file: !14, line: 2062, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !345, !65}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !561, file: !14, line: 2063, baseType: !577, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!65, !345, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !561, file: !14, line: 2064, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!65, !345}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !561, file: !14, line: 2065, baseType: !568, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !561, file: !14, line: 2066, baseType: !531, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !561, file: !14, line: 2067, baseType: !589, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!65, !496, !65}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !561, file: !14, line: 2068, baseType: !593, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!65, !496, !13}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !561, file: !14, line: 2069, baseType: !597, size: 64, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!65, !496}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !561, file: !14, line: 2070, baseType: !593, size: 64, offset: 704)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !561, file: !14, line: 2071, baseType: !597, size: 64, offset: 768)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !561, file: !14, line: 2072, baseType: !603, size: 64, offset: 832)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!65, !380, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !561, file: !14, line: 2073, baseType: !609, size: 64, offset: 896)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!65, !496, !612, !265}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !561, file: !14, line: 2074, baseType: !531, size: 64, offset: 960)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !561, file: !14, line: 2076, baseType: !615, size: 64, offset: 1024)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!65, !618, !380}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !620, line: 17, size: 960, elements: !621)
!620 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !650, !672, !673, !1006}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !619, file: !620, line: 18, baseType: !265, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !619, file: !620, line: 19, baseType: !312, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !619, file: !620, line: 20, baseType: !312, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !619, file: !620, line: 21, baseType: !312, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !619, file: !620, line: 22, baseType: !312, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !619, file: !620, line: 23, baseType: !506, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !619, file: !620, line: 24, baseType: !506, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !619, file: !620, line: 25, baseType: !630, size: 256, offset: 448)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !631, line: 66, size: 256, elements: !632)
!631 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!632 = !{!633, !642, !644, !649}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !630, file: !631, line: 67, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !635, line: 13, baseType: !636)
!635 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !169, line: 181, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 179, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !637, file: !169, line: 180, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !224, line: 22, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !226, line: 30, baseType: !508)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !630, file: !631, line: 68, baseType: !643, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !204, line: 23, baseType: !203)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !630, file: !631, line: 70, baseType: !645, size: 32, offset: 96)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !646, line: 15, size: 32, elements: !647)
!646 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !645, file: !646, line: 20, baseType: !215, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !630, file: !631, line: 72, baseType: !168, size: 128, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !619, file: !620, line: 26, baseType: !651, size: 64, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !620, line: 32, size: 256, elements: !654)
!654 = !{!655, !660, !664, !668}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !653, file: !620, line: 33, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!147, !618, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !653, file: !620, line: 34, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !618, !147}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !620, line: 35, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!147, !618, !147, !659}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !653, file: !620, line: 36, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!65, !618, !147}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !619, file: !620, line: 27, baseType: !65, size: 32, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !619, file: !620, line: 28, baseType: !674, size: 64, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !677)
!677 = !{!678, !697, !698, !700, !701, !702, !703, !704, !767, !979, !988, !994, !995, !996, !997, !998, !999, !1001, !1002, !1005}
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !14, line: 995, baseType: !679, size: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !14, line: 995, size: 128, elements: !680)
!680 = !{!681, !687, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !679, file: !14, line: 996, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !683, line: 60, size: 64, elements: !684)
!683 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !682, file: !683, line: 61, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !679, file: !14, line: 997, baseType: !688, size: 128, align: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !169, line: 232, size: 128, align: 64, elements: !689)
!689 = !{!690, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !688, file: !169, line: 233, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !688, file: !169, line: 234, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !691}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !679, file: !14, line: 998, baseType: !7, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !676, file: !14, line: 1005, baseType: !195, size: 32, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !676, file: !14, line: 1006, baseType: !699, size: 32, offset: 160)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !169, line: 156, baseType: !7)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !676, file: !14, line: 1007, baseType: !634, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !676, file: !14, line: 1008, baseType: !630, size: 256, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !676, file: !14, line: 1009, baseType: !506, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !676, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !676, file: !14, line: 1011, baseType: !705, size: 256, offset: 640)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !706)
!706 = !{!707, !728, !763, !764, !765, !766}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !705, file: !14, line: 949, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !709, line: 34, baseType: !710)
!709 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !709, line: 25, size: 64, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !710, file: !709, line: 26, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !714, line: 27, baseType: !715)
!714 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !714, line: 13, size: 64, elements: !716)
!716 = !{!717, !727}
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !714, line: 14, baseType: !718, size: 32)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !714, line: 14, size: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !718, file: !714, line: 15, baseType: !215, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !714, line: 16, baseType: !722, size: 32)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !714, line: 16, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !722, file: !714, line: 18, baseType: !223, size: 8)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !722, file: !714, line: 19, baseType: !726, size: 24, offset: 8)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 24, elements: !266)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !715, file: !714, line: 26, baseType: !207, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !705, file: !14, line: 950, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !731)
!731 = !{!732, !738, !739, !740, !744, !745, !752, !753}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !730, file: !19, line: 61, baseType: !733, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !734, line: 113, baseType: !735)
!734 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !734, line: 111, size: 32, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !735, file: !734, line: 112, baseType: !215, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !730, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !19, line: 63, baseType: !195, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !730, file: !19, line: 65, baseType: !741, size: 256, offset: 128)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 256, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 4)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !730, file: !19, line: 66, baseType: !537, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !730, file: !19, line: 68, baseType: !746, size: 192, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !747, line: 41, baseType: !748)
!747 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !747, line: 37, size: 192, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !747, line: 38, baseType: !195, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !748, file: !747, line: 39, baseType: !168, size: 128, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !730, file: !19, line: 69, baseType: !688, size: 128, align: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !730, file: !19, line: 70, baseType: !754, offset: 768)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, elements: !761)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !755, file: !19, line: 55, baseType: !65, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !755, file: !19, line: 56, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!761 = !{!762}
!762 = !DISubrange(count: -1)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !705, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !705, file: !14, line: 952, baseType: !351, size: 32, offset: 160)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !705, file: !14, line: 952, baseType: !351, size: 32, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !705, file: !14, line: 953, baseType: !65, size: 32, offset: 224)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !676, file: !14, line: 1012, baseType: !768, size: 64, offset: 896)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !771, line: 110, size: 1472, elements: !772)
!771 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !789, !790, !791, !792, !793, !794, !924, !925, !926, !927, !928, !959, !962, !966, !974}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !770, file: !771, line: 111, baseType: !634, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !770, file: !771, line: 112, baseType: !351, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !770, file: !771, line: 113, baseType: !360, size: 32, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !770, file: !771, line: 114, baseType: !351, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !770, file: !771, line: 115, baseType: !360, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !770, file: !771, line: 116, baseType: !351, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !770, file: !771, line: 117, baseType: !360, size: 32, offset: 224)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !770, file: !771, line: 118, baseType: !351, size: 32, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !770, file: !771, line: 119, baseType: !360, size: 32, offset: 288)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !770, file: !771, line: 120, baseType: !7, size: 32, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !770, file: !771, line: 121, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !785, line: 24, baseType: !786)
!785 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !785, line: 24, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !786, file: !785, line: 24, baseType: !418, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !770, file: !771, line: 122, baseType: !784, size: 64, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !770, file: !771, line: 123, baseType: !784, size: 64, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !770, file: !771, line: 124, baseType: !784, size: 64, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !770, file: !771, line: 125, baseType: !784, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !770, file: !771, line: 127, baseType: !227, size: 8, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !770, file: !771, line: 129, baseType: !795, size: 64, offset: 768)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !797, line: 195, size: 1728, elements: !798)
!797 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!798 = !{!799, !800, !805, !817, !826, !829, !830, !837, !838, !839, !840, !843, !844, !845, !847, !848, !888, !909}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !796, file: !797, line: 196, baseType: !733, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !796, file: !797, line: 197, baseType: !801, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !797, line: 28, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !169, line: 104, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !224, line: 20, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !226, line: 26, baseType: !65)
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 198, baseType: !806, size: 192, offset: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 198, size: 192, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !806, file: !797, line: 199, baseType: !168, size: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !806, file: !797, line: 200, baseType: !810, size: 192, align: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !811, line: 5, size: 192, align: 64, elements: !812)
!811 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!812 = !{!813, !814, !816}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !810, file: !811, line: 6, baseType: !315, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !810, file: !811, line: 7, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !810, file: !811, line: 8, baseType: !815, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !796, file: !797, line: 205, baseType: !818, size: 320, offset: 256)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !819, line: 48, size: 320, elements: !820)
!819 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!820 = !{!821, !822, !823, !824, !825}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !818, file: !819, line: 49, baseType: !634, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !818, file: !819, line: 55, baseType: !634, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !818, file: !819, line: 57, baseType: !645, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !818, file: !819, line: 59, baseType: !643, size: 32, offset: 160)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !818, file: !819, line: 60, baseType: !168, size: 128, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !796, file: !797, line: 206, baseType: !827, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !797, line: 206, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !796, file: !797, line: 207, baseType: !147, size: 64, offset: 640)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 208, baseType: !831, size: 64, offset: 704)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 208, size: 64, elements: !832)
!832 = !{!833, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !831, file: !797, line: 209, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !835, line: 8, baseType: !641)
!835 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!836 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !831, file: !797, line: 210, baseType: !834, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !796, file: !797, line: 212, baseType: !834, size: 64, offset: 768)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !796, file: !797, line: 213, baseType: !351, size: 32, offset: 832)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !796, file: !797, line: 214, baseType: !360, size: 32, offset: 864)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !796, file: !797, line: 215, baseType: !841, size: 32, offset: 896)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !797, line: 31, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !169, line: 110, baseType: !414)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !796, file: !797, line: 216, baseType: !235, size: 16, offset: 928)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !796, file: !797, line: 217, baseType: !235, size: 16, offset: 944)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !796, file: !797, line: 221, baseType: !846, size: 16, offset: 960)
!846 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !797, line: 228, baseType: !315, size: 64, offset: 1024)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 245, baseType: !849, size: 320, offset: 1088)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 245, size: 320, elements: !850)
!850 = !{!851, !880}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !849, file: !797, line: 246, baseType: !852, size: 320)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !797, line: 114, size: 320, elements: !853)
!853 = !{!854, !855, !867, !870, !879}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !852, file: !797, line: 116, baseType: !315, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !797, line: 117, baseType: !856, size: 64, offset: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !797, line: 117, size: 64, elements: !857)
!857 = !{!858, !866}
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !797, line: 118, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !856, file: !797, line: 118, size: 64, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !859, file: !797, line: 120, baseType: !233, size: 16)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !859, file: !797, line: 121, baseType: !863, size: 48, offset: 16)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 48, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 6)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !856, file: !797, line: 127, baseType: !315, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !852, file: !797, line: 129, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !797, line: 102, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !852, file: !797, line: 130, baseType: !871, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !797, line: 108, size: 192, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !872, file: !797, line: 109, baseType: !688, size: 128, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !872, file: !797, line: 110, baseType: !733, size: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !872, file: !797, line: 111, baseType: !877, size: 8, offset: 160)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !169, line: 35, baseType: !878)
!878 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !852, file: !797, line: 131, baseType: !154, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !797, line: 247, baseType: !881, size: 320)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !849, file: !797, line: 247, size: 320, elements: !882)
!882 = !{!883, !884, !885, !886, !887}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !881, file: !797, line: 248, baseType: !315, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !881, file: !797, line: 249, baseType: !315, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !881, file: !797, line: 250, baseType: !868, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !881, file: !797, line: 251, baseType: !871, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !881, file: !797, line: 252, baseType: !265, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 260, baseType: !889, size: 256, offset: 1408)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 260, size: 256, elements: !890)
!890 = !{!891, !897}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !889, file: !797, line: 261, baseType: !892, size: 256)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !797, line: 134, size: 256, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !892, file: !797, line: 135, baseType: !147, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !892, file: !797, line: 136, baseType: !896, size: 256)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !742)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !797, line: 262, baseType: !898, size: 256)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !797, line: 262, size: 256, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !898, file: !797, line: 264, baseType: !168, size: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !898, file: !797, line: 265, baseType: !902, size: 128, offset: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !903, line: 22, size: 128, elements: !904)
!903 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!904 = !{!905, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !902, file: !903, line: 23, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !903, line: 23, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !902, file: !903, line: 24, baseType: !315, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !796, file: !797, line: 280, baseType: !910, size: 64, offset: 1664)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !797, line: 176, size: 192, elements: !912)
!912 = !{!913, !922, !923}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !911, file: !797, line: 177, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !797, line: 171, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!65, !795, !918, !920, !795}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !911, file: !797, line: 178, baseType: !795, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !911, file: !797, line: 179, baseType: !868, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !770, file: !771, line: 130, baseType: !795, size: 64, offset: 832)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !770, file: !771, line: 131, baseType: !795, size: 64, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !770, file: !771, line: 132, baseType: !795, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !770, file: !771, line: 135, baseType: !147, size: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !770, file: !771, line: 137, baseType: !929, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !931, line: 14, size: 1088, elements: !932)
!931 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!932 = !{!933, !934, !943, !944, !945, !946, !947, !948}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !930, file: !931, line: 15, baseType: !733, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !930, file: !931, line: 17, baseType: !935, size: 320, offset: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !936, line: 22, size: 320, elements: !937)
!936 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!937 = !{!938, !939, !940, !941}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !935, file: !936, line: 23, baseType: !643, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !935, file: !936, line: 24, baseType: !640, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !935, file: !936, line: 26, baseType: !168, size: 128, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !935, file: !936, line: 28, baseType: !942, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !930, file: !931, line: 19, baseType: !315, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !930, file: !931, line: 20, baseType: !634, size: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !930, file: !931, line: 23, baseType: !541, size: 128, offset: 512)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !930, file: !931, line: 24, baseType: !351, size: 32, offset: 640)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !930, file: !931, line: 29, baseType: !634, size: 64, offset: 704)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !930, file: !931, line: 36, baseType: !949, size: 320, offset: 768)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !950, line: 15, size: 320, elements: !951)
!950 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!951 = !{!952, !953, !954, !955, !956, !957, !958}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !949, file: !950, line: 16, baseType: !643, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !949, file: !950, line: 18, baseType: !65, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !949, file: !950, line: 19, baseType: !65, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !949, file: !950, line: 20, baseType: !65, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !949, file: !950, line: 21, baseType: !65, size: 32, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !949, file: !950, line: 22, baseType: !315, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !950, line: 23, baseType: !315, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !770, file: !771, line: 138, baseType: !960, size: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !352, line: 18, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !770, file: !771, line: 139, baseType: !963, size: 64, offset: 1216)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !965, line: 16, flags: DIFlagFwdDecl)
!965 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!966 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !770, file: !771, line: 140, baseType: !967, size: 64, offset: 1280)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !771, line: 25, size: 64, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !968, file: !771, line: 26, baseType: !215, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !968, file: !771, line: 27, baseType: !65, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !968, file: !771, line: 28, baseType: !973, offset: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, elements: !761)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 142, baseType: !975, size: 128, offset: 1344)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 142, size: 128, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !975, file: !771, line: 143, baseType: !65, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !975, file: !771, line: 144, baseType: !688, size: 128, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !676, file: !14, line: 1013, baseType: !980, size: 256, offset: 960)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !980, file: !14, line: 971, baseType: !315, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !980, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !980, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !980, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !980, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !980, file: !14, line: 976, baseType: !506, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !676, file: !14, line: 1014, baseType: !989, size: 128, offset: 1216)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !990, line: 8, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !989, file: !990, line: 9, baseType: !490, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !989, file: !990, line: 10, baseType: !380, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !676, file: !14, line: 1015, baseType: !345, size: 64, offset: 1344)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !676, file: !14, line: 1016, baseType: !158, size: 64, offset: 1408)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !676, file: !14, line: 1018, baseType: !418, size: 64, offset: 1472)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !676, file: !14, line: 1020, baseType: !147, size: 64, offset: 1536)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !676, file: !14, line: 1023, baseType: !147, size: 64, offset: 1600)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !676, file: !14, line: 1027, baseType: !1000, size: 64, offset: 1664)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !676, file: !14, line: 1029, baseType: !341, size: 64, offset: 1728)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !676, file: !14, line: 1030, baseType: !1003, size: 32, offset: 1792)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1004, line: 8, baseType: !414)
!1004 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !676, file: !14, line: 1031, baseType: !1003, size: 32, offset: 1824)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !619, file: !620, line: 29, baseType: !147, size: 64, offset: 896)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !561, file: !14, line: 2077, baseType: !615, size: 64, offset: 1088)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !561, file: !14, line: 2078, baseType: !615, size: 64, offset: 1152)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !561, file: !14, line: 2079, baseType: !615, size: 64, offset: 1216)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !561, file: !14, line: 2081, baseType: !1011, size: 64, offset: 1280)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!297, !496, !65, !265, !312, !506}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !561, file: !14, line: 2082, baseType: !1015, size: 64, offset: 1344)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!297, !496, !65, !154, !312, !506}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !561, file: !14, line: 2083, baseType: !1019, size: 64, offset: 1408)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!1022, !345}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1050, !1051, !1052}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1024, file: !27, line: 297, baseType: !541, size: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1024, file: !27, line: 298, baseType: !168, size: 128, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1024, file: !27, line: 299, baseType: !168, size: 128, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1024, file: !27, line: 300, baseType: !168, size: 128, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1024, file: !27, line: 301, baseType: !630, size: 256, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1024, file: !27, line: 302, baseType: !195, size: 32, offset: 768)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1024, file: !27, line: 303, baseType: !215, size: 32, offset: 800)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1024, file: !27, line: 304, baseType: !496, size: 64, offset: 832)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1024, file: !27, line: 305, baseType: !1035, size: 64, offset: 896)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1036)
!1036 = !{!1037, !1049}
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !27, line: 69, baseType: !1038, size: 32)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !27, line: 69, size: 32, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1038, file: !27, line: 70, baseType: !351, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1038, file: !27, line: 71, baseType: !360, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1038, file: !27, line: 72, baseType: !1043, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1044, line: 24, baseType: !1045)
!1044 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1044, line: 22, size: 32, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1045, file: !1044, line: 23, baseType: !1048, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1044, line: 20, baseType: !357)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1035, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1024, file: !27, line: 306, baseType: !506, size: 64, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1024, file: !27, line: 307, baseType: !315, size: 64, offset: 1024)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1024, file: !27, line: 308, baseType: !1053, size: 576, offset: 1088)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1054)
!1054 = !{!1055, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1053, file: !27, line: 206, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !508)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1053, file: !27, line: 207, baseType: !1056, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1053, file: !27, line: 208, baseType: !1056, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1053, file: !27, line: 209, baseType: !1056, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1053, file: !27, line: 210, baseType: !1056, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1053, file: !27, line: 211, baseType: !1056, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1053, file: !27, line: 212, baseType: !1056, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1053, file: !27, line: 213, baseType: !834, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1053, file: !27, line: 214, baseType: !834, size: 64, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !561, file: !14, line: 2085, baseType: !1066, size: 64, offset: 1472)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!301, !496, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1071, line: 15, size: 256, elements: !1072)
!1071 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1072 = !{!1073, !1075, !1076, !1077, !1078}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1070, file: !1071, line: 16, baseType: !1074, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !169, line: 154, baseType: !7)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1070, file: !1071, line: 19, baseType: !65, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1070, file: !1071, line: 26, baseType: !315, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1070, file: !1071, line: 33, baseType: !315, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1070, file: !1071, line: 36, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !112, line: 33, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !561, file: !14, line: 2087, baseType: !1066, size: 64, offset: 1536)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !561, file: !14, line: 2089, baseType: !531, size: 64, offset: 1600)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !497, file: !14, line: 1198, baseType: !1084, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1087)
!1087 = !{!1088, !1092, !1096, !1100, !1101, !1102, !1103, !1104, !1109, !1114, !1118}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1086, file: !27, line: 325, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!65, !1023}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1086, file: !27, line: 326, baseType: !1093, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!1023, !496, !65}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1086, file: !27, line: 327, baseType: !1097, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1023}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1086, file: !27, line: 328, baseType: !1089, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1086, file: !27, line: 329, baseType: !1089, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1086, file: !27, line: 330, baseType: !1089, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1086, file: !27, line: 331, baseType: !589, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1086, file: !27, line: 334, baseType: !1105, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!1108, !345}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1086, file: !27, line: 335, baseType: !1110, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!65, !345, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1086, file: !27, line: 337, baseType: !1115, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!65, !345, !1108}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1086, file: !27, line: 339, baseType: !1119, size: 64, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!65, !496, !1122}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !497, file: !14, line: 1199, baseType: !1124, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1127)
!1127 = !{!1128, !1134, !1135, !1139, !1140, !1141, !1156, !1179, !1183, !1184, !1207}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1126, file: !27, line: 431, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!65, !496, !65, !65, !1132}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1126, file: !27, line: 432, baseType: !589, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1126, file: !27, line: 433, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!65, !496, !7}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1126, file: !27, line: 434, baseType: !1136, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1126, file: !27, line: 435, baseType: !589, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1126, file: !27, line: 436, baseType: !1142, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!65, !496, !65, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1146, file: !27, line: 418, baseType: !65, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1146, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1146, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1146, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1146, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1146, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1146, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1146, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1126, file: !27, line: 437, baseType: !1157, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!65, !496, !1035, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1161, file: !27, line: 346, baseType: !65, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1161, file: !27, line: 347, baseType: !418, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1161, file: !27, line: 348, baseType: !418, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1161, file: !27, line: 349, baseType: !418, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1161, file: !27, line: 350, baseType: !418, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1161, file: !27, line: 351, baseType: !418, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1161, file: !27, line: 352, baseType: !418, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1161, file: !27, line: 353, baseType: !640, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1161, file: !27, line: 355, baseType: !640, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1161, file: !27, line: 356, baseType: !65, size: 32, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1161, file: !27, line: 357, baseType: !65, size: 32, offset: 608)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1161, file: !27, line: 358, baseType: !418, size: 64, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1161, file: !27, line: 359, baseType: !418, size: 64, offset: 704)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1161, file: !27, line: 360, baseType: !418, size: 64, offset: 768)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1161, file: !27, line: 361, baseType: !640, size: 64, offset: 832)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1161, file: !27, line: 362, baseType: !65, size: 32, offset: 896)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1126, file: !27, line: 438, baseType: !1180, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!65, !496, !1122, !1160}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1126, file: !27, line: 440, baseType: !1157, size: 64, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1126, file: !27, line: 441, baseType: !1185, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!65, !496, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1189, file: !27, line: 412, baseType: !7, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1189, file: !27, line: 413, baseType: !1193, size: 1344, offset: 64)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 1344, elements: !266)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1206}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !27, line: 398, baseType: !7, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1194, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1194, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1194, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1194, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1194, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1194, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1194, file: !27, line: 406, baseType: !420, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1194, file: !27, line: 407, baseType: !1205, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !169, line: 132, baseType: !418)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1194, file: !27, line: 408, baseType: !1205, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1126, file: !27, line: 442, baseType: !1136, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !497, file: !14, line: 1200, baseType: !1209, size: 64, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !497, file: !14, line: 1201, baseType: !315, size: 64, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !497, file: !14, line: 1202, baseType: !315, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !497, file: !14, line: 1203, baseType: !315, size: 64, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !497, file: !14, line: 1204, baseType: !380, size: 64, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !497, file: !14, line: 1205, baseType: !818, size: 320, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !497, file: !14, line: 1206, baseType: !65, size: 32, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !497, file: !14, line: 1207, baseType: !215, size: 32, offset: 1248)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !497, file: !14, line: 1209, baseType: !147, size: 64, offset: 1280)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !497, file: !14, line: 1211, baseType: !1221, size: 64, offset: 1344)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !497, file: !14, line: 1223, baseType: !1226, size: 64, offset: 1408)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !397, line: 34, size: 64, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1226, file: !397, line: 35, baseType: !400, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !497, file: !14, line: 1224, baseType: !168, size: 128, offset: 1472)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !497, file: !14, line: 1225, baseType: !1231, size: 64, offset: 1600)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !497, file: !14, line: 1226, baseType: !1234, size: 64, offset: 1664)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !497, file: !14, line: 1227, baseType: !1237, size: 64, offset: 1728)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !497, file: !14, line: 1228, baseType: !1240, size: 64, offset: 1792)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !497, file: !14, line: 1229, baseType: !541, size: 128, offset: 1856)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !497, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !497, file: !14, line: 1231, baseType: !1245, size: 2496, offset: 2048)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1251, !1283}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !27, line: 522, baseType: !7, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1245, file: !27, line: 523, baseType: !818, size: 320, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1245, file: !27, line: 524, baseType: !1250, size: 192, offset: 384)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 192, elements: !266)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1245, file: !27, line: 525, baseType: !1252, size: 1728, offset: 576)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1253, size: 1728, elements: !266)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1254)
!1254 = !{!1255, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1253, file: !27, line: 223, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1258)
!1258 = !{!1259, !1260, !1273, !1274}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1257, file: !27, line: 446, baseType: !65, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1257, file: !27, line: 447, baseType: !1261, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1263, file: !27, line: 313, baseType: !589, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1263, file: !27, line: 314, baseType: !589, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1263, file: !27, line: 315, baseType: !589, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1263, file: !27, line: 316, baseType: !589, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1263, file: !27, line: 317, baseType: !1089, size: 64, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1263, file: !27, line: 318, baseType: !1089, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1263, file: !27, line: 319, baseType: !1089, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1263, file: !27, line: 320, baseType: !1119, size: 64, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1257, file: !27, line: 448, baseType: !163, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1257, file: !27, line: 449, baseType: !1256, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1253, file: !27, line: 224, baseType: !65, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1253, file: !27, line: 226, baseType: !168, size: 128, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1253, file: !27, line: 227, baseType: !315, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1253, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1253, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1253, file: !27, line: 230, baseType: !1056, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1253, file: !27, line: 231, baseType: !1056, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1253, file: !27, line: 232, baseType: !147, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1245, file: !27, line: 526, baseType: !1284, size: 192, offset: 2304)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1261, size: 192, elements: !266)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !497, file: !14, line: 1233, baseType: !1286, size: 2368, offset: 4544)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1286, file: !14, line: 1185, baseType: !235, size: 16)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1286, file: !14, line: 1186, baseType: !235, size: 16, offset: 16)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1286, file: !14, line: 1187, baseType: !1291, size: 2304, offset: 64)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1292, size: 2304, elements: !266)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1293, line: 12, size: 768, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1294 = !{!1295, !1303, !1305, !3882, !3883}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1292, file: !1293, line: 13, baseType: !1296, size: 384)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1297, line: 17, size: 384, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1296, file: !1297, line: 18, baseType: !65, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1296, file: !1297, line: 19, baseType: !65, size: 32, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1296, file: !1297, line: 20, baseType: !746, size: 192, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1296, file: !1297, line: 22, baseType: !688, size: 128, align: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1292, file: !1293, line: 14, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1292, file: !1293, line: 15, baseType: !1306, size: 64, offset: 448)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1307, line: 16, size: 64, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1306, file: !1307, line: 17, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1312, line: 746, size: 58368, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1313 = !{!1314, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1394, !1405, !1500, !1504, !1507, !1538, !1539, !1540, !1541, !1552, !1554, !1555, !1556, !1557, !1558, !1559, !1570, !1571, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1588, !1589, !1596, !1597, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1845, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1860, !1861, !1862, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1904, !1910, !1911, !1912, !1913, !1914, !1918, !1921, !1928, !1933, !1936, !1939, !1942, !1946, !2998, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3038, !3039, !3040, !3049, !3057, !3058, !3059, !3060, !3061, !3066, !3067, !3068, !3071, !3072, !3075, !3078, !3081, !3089, !3092, !3093, !3179, !3180, !3181, !3182, !3183, !3189, !3190, !3191, !3192, !3195, !3196, !3199, !3202, !3203, !3206, !3207, !3208, !3211, !3212, !3213, !3216, !3217, !3218, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3250, !3253, !3542, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3554, !3626, !3628, !3629, !3630, !3631, !3632, !3633, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1311, file: !1312, line: 752, baseType: !1315, size: 192)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1316, line: 56, size: 192, elements: !1317)
!1316 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1317 = !{!1318, !1319, !1320, !1321}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1315, file: !1316, line: 57, baseType: !315, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1315, file: !1316, line: 58, baseType: !315, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1315, file: !1316, line: 59, baseType: !414, size: 32, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1315, file: !1316, line: 61, baseType: !414, size: 32, offset: 160)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1311, file: !1312, line: 754, baseType: !7, size: 32, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1311, file: !1312, line: 767, baseType: !147, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1311, file: !1312, line: 768, baseType: !733, size: 32, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1311, file: !1312, line: 770, baseType: !7, size: 32, offset: 352)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1311, file: !1312, line: 771, baseType: !7, size: 32, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1311, file: !1312, line: 774, baseType: !65, size: 32, offset: 416)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1311, file: !1312, line: 775, baseType: !1329, size: 128, offset: 448)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1330, line: 58, size: 128, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1331 = !{!1332, !1333, !1338, !1339}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1329, file: !1330, line: 59, baseType: !682, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !1330, line: 60, baseType: !1334, size: 32, offset: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1329, file: !1330, line: 60, size: 32, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1334, file: !1330, line: 61, baseType: !7, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1334, file: !1330, line: 62, baseType: !215, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1329, file: !1330, line: 65, baseType: !233, size: 16, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1329, file: !1330, line: 65, baseType: !233, size: 16, offset: 112)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1311, file: !1312, line: 776, baseType: !7, size: 32, offset: 576)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1311, file: !1312, line: 777, baseType: !315, size: 64, offset: 640)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1311, file: !1312, line: 778, baseType: !1310, size: 64, offset: 704)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1311, file: !1312, line: 787, baseType: !65, size: 32, offset: 768)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1311, file: !1312, line: 788, baseType: !65, size: 32, offset: 800)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1311, file: !1312, line: 790, baseType: !65, size: 32, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1311, file: !1312, line: 792, baseType: !65, size: 32, offset: 864)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1311, file: !1312, line: 793, baseType: !65, size: 32, offset: 896)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1311, file: !1312, line: 794, baseType: !65, size: 32, offset: 928)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1311, file: !1312, line: 795, baseType: !7, size: 32, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1311, file: !1312, line: 797, baseType: !1351, size: 2048, offset: 1024)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1312, line: 551, size: 2048, elements: !1352)
!1352 = !{!1353, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1373, !1376, !1377, !1378}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1351, file: !1312, line: 553, baseType: !1354, size: 128)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1312, line: 411, size: 128, elements: !1355)
!1355 = !{!1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1354, file: !1312, line: 412, baseType: !315, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1354, file: !1312, line: 413, baseType: !414, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1351, file: !1312, line: 554, baseType: !810, size: 192, align: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1351, file: !1312, line: 555, baseType: !418, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1351, file: !1312, line: 556, baseType: !418, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1351, file: !1312, line: 558, baseType: !168, size: 128, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1351, file: !1312, line: 559, baseType: !7, size: 32, offset: 576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1351, file: !1312, line: 561, baseType: !418, size: 64, offset: 640)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1351, file: !1312, line: 562, baseType: !418, size: 64, offset: 704)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1351, file: !1312, line: 563, baseType: !418, size: 64, offset: 768)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1351, file: !1312, line: 564, baseType: !418, size: 64, offset: 832)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1351, file: !1312, line: 565, baseType: !640, size: 64, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1351, file: !1312, line: 566, baseType: !418, size: 64, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1351, file: !1312, line: 568, baseType: !418, size: 64, offset: 1024)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1351, file: !1312, line: 571, baseType: !65, size: 32, offset: 1088)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1351, file: !1312, line: 572, baseType: !1372, size: 64, offset: 1152)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1351, file: !1312, line: 574, baseType: !1374, size: 64, offset: 1216)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1312, line: 49, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1351, file: !1312, line: 576, baseType: !1374, size: 64, offset: 1280)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1351, file: !1312, line: 578, baseType: !315, size: 64, offset: 1344)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1351, file: !1312, line: 588, baseType: !1379, size: 512, align: 512, offset: 1536)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1312, line: 497, size: 512, align: 512, elements: !1380)
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1379, file: !1312, line: 498, baseType: !418, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1379, file: !1312, line: 499, baseType: !418, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1379, file: !1312, line: 500, baseType: !418, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1379, file: !1312, line: 501, baseType: !414, size: 32, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1379, file: !1312, line: 502, baseType: !414, size: 32, offset: 224)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1379, file: !1312, line: 503, baseType: !315, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1379, file: !1312, line: 504, baseType: !315, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1379, file: !1312, line: 505, baseType: !315, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1379, file: !1312, line: 506, baseType: !1390, size: 64, align: 64, offset: 448)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1312, line: 445, size: 64, align: 64, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1390, file: !1312, line: 446, baseType: !7, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1390, file: !1312, line: 447, baseType: !7, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1311, file: !1312, line: 798, baseType: !1395, size: 384, offset: 3072)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1312, line: 592, size: 384, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1395, file: !1312, line: 593, baseType: !168, size: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1395, file: !1312, line: 594, baseType: !315, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1395, file: !1312, line: 595, baseType: !315, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1395, file: !1312, line: 596, baseType: !7, size: 32, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1395, file: !1312, line: 597, baseType: !235, size: 16, offset: 288)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1395, file: !1312, line: 598, baseType: !235, size: 16, offset: 304)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1395, file: !1312, line: 600, baseType: !1404, size: 64, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1311, file: !1312, line: 799, baseType: !1406, size: 1792, offset: 3456)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1312, line: 610, size: 1792, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1497, !1498}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1406, file: !1312, line: 611, baseType: !810, size: 192, align: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1406, file: !1312, line: 618, baseType: !418, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1406, file: !1312, line: 619, baseType: !418, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1406, file: !1312, line: 620, baseType: !418, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1406, file: !1312, line: 621, baseType: !418, size: 64, offset: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1406, file: !1312, line: 622, baseType: !418, size: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1406, file: !1312, line: 629, baseType: !640, size: 64, offset: 512)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1406, file: !1312, line: 630, baseType: !418, size: 64, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !1312, line: 631, baseType: !7, size: 32, offset: 640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1406, file: !1312, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1406, file: !1312, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1406, file: !1312, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1406, file: !1312, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1406, file: !1312, line: 662, baseType: !1422, size: 512, offset: 704)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1423)
!1423 = !{!1424, !1432, !1433, !1438, !1493, !1494, !1495, !1496}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1422, file: !33, line: 119, baseType: !1425, size: 256)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1426, line: 9, size: 256, elements: !1427)
!1426 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1425, file: !1426, line: 10, baseType: !810, size: 192, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1425, file: !1426, line: 11, baseType: !1430, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1431, line: 29, baseType: !640)
!1431 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1422, file: !33, line: 120, baseType: !1430, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1422, file: !33, line: 121, baseType: !1434, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!32, !1437}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1422, file: !33, line: 122, baseType: !1439, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1441)
!1441 = !{!1442, !1467, !1468, !1471, !1476, !1477, !1488, !1492}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1440, file: !33, line: 160, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1444, file: !33, line: 216, baseType: !643, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1444, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1444, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1444, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1444, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1444, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1444, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1444, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1444, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1444, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1444, file: !33, line: 227, baseType: !235, size: 16, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1444, file: !33, line: 228, baseType: !235, size: 16, offset: 208)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1444, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1444, file: !33, line: 235, baseType: !1430, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1444, file: !33, line: 236, baseType: !1437, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1444, file: !33, line: 237, baseType: !1430, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1444, file: !33, line: 238, baseType: !1437, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1444, file: !33, line: 239, baseType: !1464, size: 4096, align: 512, offset: 512)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 4096, align: 512, elements: !1465)
!1465 = !{!1466}
!1466 = !DISubrange(count: 8)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1440, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1440, file: !33, line: 162, baseType: !1469, size: 32, offset: 96)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !169, line: 32, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !299, line: 96, baseType: !65)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1440, file: !33, line: 163, baseType: !1472, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !387, line: 274, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !387, line: 274, size: 32, elements: !1474)
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1473, file: !387, line: 274, baseType: !391, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1440, file: !33, line: 164, baseType: !1437, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1440, file: !33, line: 165, baseType: !1478, size: 128, offset: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1426, line: 14, size: 128, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1478, file: !1426, line: 15, baseType: !1481, size: 128)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !811, line: 26, size: 128, elements: !1482)
!1482 = !{!1483, !1487}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1481, file: !811, line: 27, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !811, line: 12, size: 64, elements: !1485)
!1485 = !{!1486}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1484, file: !811, line: 13, baseType: !815, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1481, file: !811, line: 28, baseType: !815, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1440, file: !33, line: 166, baseType: !1489, size: 64, offset: 384)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!1430}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1440, file: !33, line: 167, baseType: !1430, size: 64, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1422, file: !33, line: 123, baseType: !223, size: 8, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1422, file: !33, line: 124, baseType: !223, size: 8, offset: 456)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1422, file: !33, line: 125, baseType: !223, size: 8, offset: 464)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1422, file: !33, line: 126, baseType: !223, size: 8, offset: 472)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1406, file: !1312, line: 671, baseType: !1422, size: 512, offset: 1216)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1406, file: !1312, line: 679, baseType: !1499, size: 64, offset: 1728)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1311, file: !1312, line: 800, baseType: !1501, size: 64, offset: 5248)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1312, line: 800, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1311, file: !1312, line: 809, baseType: !1505, size: 64, offset: 5312)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1312, line: 70, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1311, file: !1312, line: 825, baseType: !1508, size: 2048, align: 512, offset: 5632)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1312, line: 509, size: 2048, align: 512, elements: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1508, file: !1312, line: 511, baseType: !418, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1508, file: !1312, line: 512, baseType: !418, size: 64, offset: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1508, file: !1312, line: 513, baseType: !418, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1508, file: !1312, line: 514, baseType: !418, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1508, file: !1312, line: 515, baseType: !418, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1508, file: !1312, line: 516, baseType: !418, size: 64, offset: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1508, file: !1312, line: 518, baseType: !418, size: 64, offset: 384)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1508, file: !1312, line: 519, baseType: !418, size: 64, offset: 448)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1508, file: !1312, line: 520, baseType: !640, size: 64, offset: 512)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1508, file: !1312, line: 522, baseType: !418, size: 64, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1508, file: !1312, line: 523, baseType: !418, size: 64, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1508, file: !1312, line: 524, baseType: !640, size: 64, offset: 704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1508, file: !1312, line: 526, baseType: !640, size: 64, offset: 768)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1508, file: !1312, line: 527, baseType: !418, size: 64, offset: 832)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1508, file: !1312, line: 529, baseType: !418, size: 64, offset: 896)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1508, file: !1312, line: 530, baseType: !418, size: 64, offset: 960)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1508, file: !1312, line: 531, baseType: !418, size: 64, offset: 1024)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1508, file: !1312, line: 532, baseType: !418, size: 64, offset: 1088)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1508, file: !1312, line: 533, baseType: !418, size: 64, offset: 1152)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1508, file: !1312, line: 535, baseType: !418, size: 64, offset: 1216)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1508, file: !1312, line: 536, baseType: !418, size: 64, offset: 1280)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1508, file: !1312, line: 537, baseType: !418, size: 64, offset: 1344)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1508, file: !1312, line: 538, baseType: !418, size: 64, offset: 1408)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1508, file: !1312, line: 539, baseType: !418, size: 64, offset: 1472)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1508, file: !1312, line: 540, baseType: !418, size: 64, offset: 1536)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1508, file: !1312, line: 541, baseType: !418, size: 64, offset: 1600)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1508, file: !1312, line: 542, baseType: !418, size: 64, offset: 1664)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1508, file: !1312, line: 543, baseType: !418, size: 64, offset: 1728)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1311, file: !1312, line: 833, baseType: !7, size: 32, offset: 7680)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1311, file: !1312, line: 836, baseType: !7, size: 32, offset: 7712)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1311, file: !1312, line: 837, baseType: !65, size: 32, offset: 7744)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1311, file: !1312, line: 838, baseType: !1542, size: 64, offset: 7808)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1545, line: 19, baseType: !1546)
!1545 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1545, line: 19, size: 64, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1546, file: !1545, line: 19, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 1)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1311, file: !1312, line: 839, baseType: !1553, size: 64, offset: 7872)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1311, file: !1312, line: 840, baseType: !1544, size: 64, offset: 7936)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1311, file: !1312, line: 841, baseType: !147, size: 64, offset: 8000)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1311, file: !1312, line: 843, baseType: !235, size: 16, offset: 8064)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1311, file: !1312, line: 845, baseType: !235, size: 16, offset: 8080)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1311, file: !1312, line: 848, baseType: !65, size: 32, offset: 8096)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1311, file: !1312, line: 849, baseType: !1560, size: 32, offset: 8128)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1312, line: 718, size: 32, elements: !1561)
!1561 = !{!1562, !1569}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1560, file: !1312, line: 724, baseType: !1563, size: 32)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !1312, line: 719, size: 32, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1563, file: !1312, line: 720, baseType: !223, size: 8)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1563, file: !1312, line: 721, baseType: !223, size: 8, offset: 8)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1563, file: !1312, line: 722, baseType: !223, size: 8, offset: 16)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1563, file: !1312, line: 723, baseType: !223, size: 8, offset: 24)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1560, file: !1312, line: 725, baseType: !414, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1311, file: !1312, line: 850, baseType: !168, size: 128, offset: 8192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1311, file: !1312, line: 851, baseType: !1572, size: 64, offset: 8320)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1312, line: 60, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1311, file: !1312, line: 855, baseType: !315, size: 64, offset: 8384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1311, file: !1312, line: 856, baseType: !223, size: 8, offset: 8448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1311, file: !1312, line: 857, baseType: !223, size: 8, offset: 8456)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1311, file: !1312, line: 858, baseType: !65, size: 32, offset: 8480)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1311, file: !1312, line: 859, baseType: !168, size: 128, offset: 8512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1311, file: !1312, line: 860, baseType: !65, size: 32, offset: 8640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1311, file: !1312, line: 861, baseType: !168, size: 128, offset: 8704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1311, file: !1312, line: 873, baseType: !1582, size: 256, offset: 8832)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1312, line: 376, size: 256, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1582, file: !1312, line: 381, baseType: !315, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1582, file: !1312, line: 384, baseType: !420, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1582, file: !1312, line: 389, baseType: !420, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1582, file: !1312, line: 392, baseType: !420, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1311, file: !1312, line: 875, baseType: !168, size: 128, offset: 9088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1311, file: !1312, line: 877, baseType: !1590, size: 320, offset: 9216)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1591, line: 86, size: 320, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1592 = !{!1593, !1594, !1595}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1590, file: !1591, line: 87, baseType: !65, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1590, file: !1591, line: 88, baseType: !168, size: 128, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1590, file: !1591, line: 89, baseType: !168, size: 128, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1311, file: !1312, line: 878, baseType: !810, size: 192, align: 64, offset: 9536)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1311, file: !1312, line: 881, baseType: !1598, size: 64, offset: 9728)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !112, line: 733, size: 10240, elements: !1600)
!1600 = !{!1601, !1764}
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1599, file: !112, line: 734, baseType: !1602, size: 10240)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1599, file: !112, line: 734, size: 10240, elements: !1603)
!1603 = !{!1604, !1608, !1621, !1626, !1627, !1628, !1629, !1630, !1631, !1640, !1641, !1642, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1681, !1683, !1686, !1733, !1734, !1735, !1738, !1739, !1740, !1743, !1744, !1745, !1751, !1752}
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !112, line: 739, baseType: !1605, size: 512, align: 512)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1602, file: !112, line: 739, size: 512, align: 512, elements: !1606)
!1606 = !{!1607}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1605, file: !112, line: 747, baseType: !215, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1602, file: !112, line: 750, baseType: !1609, size: 128, offset: 512)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1610, line: 218, size: 128, elements: !1611)
!1610 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1611 = !{!1612, !1619, !1620}
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !1610, line: 219, baseType: !1613, size: 32)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !1610, line: 219, size: 32, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1613, file: !1610, line: 220, baseType: !195, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1613, file: !1610, line: 221, baseType: !1617)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1610, line: 197, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1610, line: 197, elements: !549)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1609, file: !1610, line: 223, baseType: !7, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1609, file: !1610, line: 224, baseType: !147, size: 64, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1602, file: !112, line: 752, baseType: !1622, size: 64, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!315, !1625, !315, !315, !315, !315}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1602, file: !112, line: 756, baseType: !315, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1602, file: !112, line: 757, baseType: !315, size: 64, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1602, file: !112, line: 760, baseType: !315, size: 64, offset: 832)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1602, file: !112, line: 761, baseType: !315, size: 64, offset: 896)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1602, file: !112, line: 763, baseType: !315, size: 64, offset: 960)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1602, file: !112, line: 764, baseType: !1632, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1634, line: 299, baseType: !1635)
!1634 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1634, line: 299, size: 64, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1635, file: !1634, line: 299, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1639, line: 18, baseType: !315)
!1639 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1602, file: !112, line: 773, baseType: !215, size: 32, offset: 1088)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1602, file: !112, line: 785, baseType: !215, size: 32, offset: 1120)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1602, file: !112, line: 795, baseType: !1643, size: 64, offset: 1152)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !112, line: 726, size: 128, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1644, file: !112, line: 727, baseType: !418, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1644, file: !112, line: 728, baseType: !65, size: 32, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1602, file: !112, line: 801, baseType: !315, size: 64, offset: 1216)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1602, file: !112, line: 804, baseType: !634, size: 64, offset: 1280)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1602, file: !112, line: 806, baseType: !65, size: 32, offset: 1344)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1602, file: !112, line: 808, baseType: !195, size: 32, offset: 1376)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1602, file: !112, line: 823, baseType: !818, size: 320, offset: 1408)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1602, file: !112, line: 825, baseType: !168, size: 128, offset: 1728)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1602, file: !112, line: 845, baseType: !65, size: 32, offset: 1856)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1602, file: !112, line: 849, baseType: !315, size: 64, offset: 1920)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1602, file: !112, line: 850, baseType: !315, size: 64, offset: 1984)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1602, file: !112, line: 852, baseType: !315, size: 64, offset: 2048)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1602, file: !112, line: 853, baseType: !315, size: 64, offset: 2112)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1602, file: !112, line: 854, baseType: !636, size: 64, offset: 2176)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1602, file: !112, line: 855, baseType: !315, size: 64, offset: 2240)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1602, file: !112, line: 856, baseType: !315, size: 64, offset: 2304)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1602, file: !112, line: 857, baseType: !315, size: 64, offset: 2368)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1602, file: !112, line: 858, baseType: !315, size: 64, offset: 2432)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1602, file: !112, line: 865, baseType: !391, size: 32, offset: 2496)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1602, file: !112, line: 867, baseType: !195, size: 32, offset: 2528)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1602, file: !112, line: 869, baseType: !315, size: 64, offset: 2560)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1602, file: !112, line: 869, baseType: !315, size: 64, offset: 2624)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1602, file: !112, line: 869, baseType: !315, size: 64, offset: 2688)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1602, file: !112, line: 869, baseType: !315, size: 64, offset: 2752)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1602, file: !112, line: 870, baseType: !315, size: 64, offset: 2816)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1602, file: !112, line: 870, baseType: !315, size: 64, offset: 2880)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1602, file: !112, line: 870, baseType: !315, size: 64, offset: 2944)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1602, file: !112, line: 871, baseType: !315, size: 64, offset: 3008)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1602, file: !112, line: 871, baseType: !315, size: 64, offset: 3072)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1602, file: !112, line: 871, baseType: !315, size: 64, offset: 3136)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1602, file: !112, line: 871, baseType: !315, size: 64, offset: 3200)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1602, file: !112, line: 873, baseType: !1678, size: 3328, offset: 3264)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 3328, elements: !1679)
!1679 = !{!1680}
!1680 = !DISubrange(count: 52)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1602, file: !112, line: 875, baseType: !1682, size: 1280, offset: 6592)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 1280, elements: !742)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1602, file: !112, line: 877, baseType: !1684, size: 64, offset: 7872)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !112, line: 877, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1602, file: !112, line: 880, baseType: !1687, size: 1088, offset: 7936)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1688, line: 72, baseType: !1689)
!1688 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1688, line: 23, size: 1088, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1698, !1699, !1700, !1701, !1728, !1729, !1730}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1689, file: !1688, line: 28, baseType: !418, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1689, file: !1688, line: 38, baseType: !636, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1689, file: !1688, line: 40, baseType: !315, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1689, file: !1688, line: 43, baseType: !818, size: 320, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1689, file: !1688, line: 44, baseType: !1696, size: 64, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1688, line: 44, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1689, file: !1688, line: 48, baseType: !315, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1689, file: !1688, line: 59, baseType: !630, size: 256, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1689, file: !1688, line: 60, baseType: !147, size: 64, offset: 896)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1689, file: !1688, line: 61, baseType: !1702, size: 64, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1705, line: 13, size: 1216, elements: !1706)
!1705 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1704, file: !1705, line: 14, baseType: !147, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1704, file: !1705, line: 15, baseType: !315, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1704, file: !1705, line: 17, baseType: !315, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1704, file: !1705, line: 17, baseType: !315, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1704, file: !1705, line: 18, baseType: !315, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1704, file: !1705, line: 18, baseType: !315, size: 64, offset: 320)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1704, file: !1705, line: 19, baseType: !1714, size: 64, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1704, file: !1705, line: 21, baseType: !301, size: 64, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1704, file: !1705, line: 23, baseType: !301, size: 64, offset: 512)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1704, file: !1705, line: 24, baseType: !301, size: 64, offset: 576)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1704, file: !1705, line: 25, baseType: !301, size: 64, offset: 640)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1704, file: !1705, line: 26, baseType: !301, size: 64, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1704, file: !1705, line: 27, baseType: !301, size: 64, offset: 768)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1704, file: !1705, line: 28, baseType: !301, size: 64, offset: 832)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1704, file: !1705, line: 29, baseType: !301, size: 64, offset: 896)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1704, file: !1705, line: 30, baseType: !301, size: 64, offset: 960)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1704, file: !1705, line: 31, baseType: !301, size: 64, offset: 1024)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1704, file: !1705, line: 32, baseType: !301, size: 64, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1704, file: !1705, line: 33, baseType: !301, size: 64, offset: 1152)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1689, file: !1688, line: 63, baseType: !215, size: 32, offset: 1024)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1689, file: !1688, line: 69, baseType: !233, size: 16, offset: 1056)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1689, file: !1688, line: 70, baseType: !1731, size: 16, offset: 1072)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !224, line: 18, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !226, line: 23, baseType: !846)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1602, file: !112, line: 882, baseType: !315, size: 64, offset: 9024)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1602, file: !112, line: 885, baseType: !195, size: 32, offset: 9088)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1602, file: !112, line: 886, baseType: !1736, size: 64, offset: 9152)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !112, line: 732, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1602, file: !112, line: 901, baseType: !960, size: 64, offset: 9216)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1602, file: !112, line: 904, baseType: !1625, size: 64, offset: 9280)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1602, file: !112, line: 906, baseType: !1741, size: 64, offset: 9344)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !112, line: 906, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1602, file: !112, line: 930, baseType: !215, size: 32, offset: 9408)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1602, file: !112, line: 933, baseType: !215, size: 32, offset: 9440)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1602, file: !112, line: 935, baseType: !1746, size: 64, offset: 9472)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !128, line: 103, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1746, file: !128, line: 104, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !128, line: 101, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1602, file: !112, line: 940, baseType: !634, size: 64, offset: 9536)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1602, file: !112, line: 942, baseType: !1753, size: 256, offset: 9600)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1754, line: 98, size: 256, elements: !1755)
!1754 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1755 = !{!1756, !1757, !1758}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1753, file: !1754, line: 99, baseType: !634, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1753, file: !1754, line: 100, baseType: !168, size: 128, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1753, file: !1754, line: 101, baseType: !1759, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1754, line: 21, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{null, !1763}
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1599, file: !112, line: 986, baseType: !1765, offset: 10240)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, elements: !761)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1311, file: !1312, line: 882, baseType: !1598, size: 64, offset: 9792)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1311, file: !1312, line: 884, baseType: !65, size: 32, offset: 9856)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1311, file: !1312, line: 885, baseType: !65, size: 32, offset: 9888)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1311, file: !1312, line: 886, baseType: !65, size: 32, offset: 9920)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1311, file: !1312, line: 888, baseType: !65, size: 32, offset: 9952)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1311, file: !1312, line: 890, baseType: !315, size: 64, offset: 9984)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1311, file: !1312, line: 893, baseType: !7, size: 32, offset: 10048)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1311, file: !1312, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1311, file: !1312, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1311, file: !1312, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1311, file: !1312, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1311, file: !1312, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1311, file: !1312, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1311, file: !1312, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1311, file: !1312, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1311, file: !1312, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1311, file: !1312, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1311, file: !1312, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1311, file: !1312, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1311, file: !1312, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1311, file: !1312, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1311, file: !1312, line: 969, baseType: !315, size: 64, offset: 10176)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1311, file: !1312, line: 971, baseType: !1789, size: 448, offset: 10240)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !1790)
!1790 = !{!1791, !1792, !1797}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1789, file: !38, line: 26, baseType: !315, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1789, file: !38, line: 27, baseType: !1793, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!301, !1796}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1789, file: !38, line: 28, baseType: !1798, size: 320, offset: 128)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1789, file: !38, line: 28, size: 320, elements: !1799)
!1799 = !{!1800, !1810, !1835}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1798, file: !38, line: 37, baseType: !1801, size: 320)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !38, line: 30, size: 320, elements: !1802)
!1802 = !{!1803, !1805, !1806, !1807, !1808, !1809}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1801, file: !38, line: 31, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1801, file: !38, line: 32, baseType: !414, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1801, file: !38, line: 33, baseType: !414, size: 32, offset: 96)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1801, file: !38, line: 34, baseType: !414, size: 32, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1801, file: !38, line: 35, baseType: !418, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1801, file: !38, line: 36, baseType: !1804, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1798, file: !38, line: 47, baseType: !1811, size: 192)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !38, line: 39, size: 192, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1834}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1811, file: !38, line: 40, baseType: !1469, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1811, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1811, file: !38, line: 42, baseType: !1816, size: 64, offset: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1811, file: !38, line: 42, size: 64, elements: !1817)
!1817 = !{!1818, !1826}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1816, file: !38, line: 43, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1821, line: 7, size: 128, elements: !1822)
!1821 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1822 = !{!1823, !1825}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1820, file: !1821, line: 8, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !299, line: 93, baseType: !508)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1820, file: !1821, line: 9, baseType: !508, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1816, file: !38, line: 44, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1829, line: 7, size: 64, elements: !1830)
!1829 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1830 = !{!1831, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1828, file: !1829, line: 8, baseType: !1832, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1829, line: 5, baseType: !803)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1828, file: !1829, line: 9, baseType: !803, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1811, file: !38, line: 46, baseType: !418, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1798, file: !38, line: 55, baseType: !1836, size: 256)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !38, line: 49, size: 256, elements: !1837)
!1837 = !{!1838, !1841, !1842, !1843, !1844}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1836, file: !38, line: 50, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1836, file: !38, line: 51, baseType: !65, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1836, file: !38, line: 52, baseType: !65, size: 32, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1836, file: !38, line: 53, baseType: !315, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1836, file: !38, line: 54, baseType: !315, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1311, file: !1312, line: 973, baseType: !1846, size: 32, offset: 10688)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !169, line: 27, baseType: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !299, line: 28, baseType: !65)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1311, file: !1312, line: 974, baseType: !1846, size: 32, offset: 10720)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1311, file: !1312, line: 978, baseType: !315, size: 64, offset: 10752)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1311, file: !1312, line: 987, baseType: !1310, size: 64, offset: 10816)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1311, file: !1312, line: 990, baseType: !1310, size: 64, offset: 10880)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1311, file: !1312, line: 995, baseType: !168, size: 128, offset: 10944)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1311, file: !1312, line: 996, baseType: !168, size: 128, offset: 11072)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1311, file: !1312, line: 997, baseType: !1310, size: 64, offset: 11200)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1311, file: !1312, line: 1005, baseType: !168, size: 128, offset: 11264)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1311, file: !1312, line: 1006, baseType: !168, size: 128, offset: 11392)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1311, file: !1312, line: 1009, baseType: !729, size: 64, offset: 11520)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1311, file: !1312, line: 1010, baseType: !1859, size: 512, offset: 11584)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 512, elements: !742)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1311, file: !1312, line: 1011, baseType: !168, size: 128, offset: 12096)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1311, file: !1312, line: 1012, baseType: !168, size: 128, offset: 12224)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1311, file: !1312, line: 1014, baseType: !1863, size: 64, offset: 12352)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1865, line: 26, size: 256, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1864, file: !1865, line: 27, baseType: !7, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1864, file: !1865, line: 28, baseType: !1869, size: 192, offset: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1870, line: 43, size: 192, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1869, file: !1870, line: 44, baseType: !643, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1869, file: !1870, line: 45, baseType: !168, size: 128, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1311, file: !1312, line: 1017, baseType: !612, size: 64, offset: 12416)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1311, file: !1312, line: 1020, baseType: !612, size: 64, offset: 12480)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1311, file: !1312, line: 1023, baseType: !147, size: 64, offset: 12544)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1311, file: !1312, line: 1025, baseType: !418, size: 64, offset: 12608)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1311, file: !1312, line: 1026, baseType: !418, size: 64, offset: 12672)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1311, file: !1312, line: 1031, baseType: !418, size: 64, offset: 12736)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1311, file: !1312, line: 1032, baseType: !1881, size: 192, offset: 12800)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1312, line: 324, size: 192, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1881, file: !1312, line: 326, baseType: !418, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1881, file: !1312, line: 327, baseType: !418, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1881, file: !1312, line: 328, baseType: !643, size: 32, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1311, file: !1312, line: 1041, baseType: !315, size: 64, offset: 12992)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1311, file: !1312, line: 1042, baseType: !315, size: 64, offset: 13056)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1311, file: !1312, line: 1045, baseType: !418, size: 64, offset: 13120)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1311, file: !1312, line: 1048, baseType: !418, size: 64, offset: 13184)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1311, file: !1312, line: 1051, baseType: !315, size: 64, offset: 13248)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1311, file: !1312, line: 1052, baseType: !315, size: 64, offset: 13312)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1311, file: !1312, line: 1055, baseType: !1893, size: 640, offset: 13376)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1894, line: 132, size: 640, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1895 = !{!1896, !1902, !1903}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1893, file: !1894, line: 133, baseType: !1897, size: 576)
!1897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1898, size: 576, elements: !266)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1894, line: 117, size: 192, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1898, file: !1894, line: 118, baseType: !418, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1898, file: !1894, line: 119, baseType: !1478, size: 128, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1893, file: !1894, line: 134, baseType: !7, size: 32, offset: 576)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1893, file: !1894, line: 135, baseType: !7, size: 32, offset: 608)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1311, file: !1312, line: 1058, baseType: !1905, size: 448, offset: 14016)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1894, line: 144, size: 448, elements: !1906)
!1906 = !{!1907, !1908, !1909}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1905, file: !1894, line: 145, baseType: !688, size: 128, align: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1905, file: !1894, line: 146, baseType: !630, size: 256, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1905, file: !1894, line: 147, baseType: !7, size: 32, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1311, file: !1312, line: 1064, baseType: !768, size: 64, offset: 14464)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1311, file: !1312, line: 1067, baseType: !768, size: 64, offset: 14528)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1311, file: !1312, line: 1070, baseType: !768, size: 64, offset: 14592)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1311, file: !1312, line: 1074, baseType: !795, size: 64, offset: 14656)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1311, file: !1312, line: 1084, baseType: !1915, size: 128, offset: 14720)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 16)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1311, file: !1312, line: 1086, baseType: !1919, size: 64, offset: 14848)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1312, line: 55, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1311, file: !1312, line: 1089, baseType: !1922, size: 64, offset: 14912)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1923, line: 12, size: 64, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1924 = !{!1925}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1922, file: !1923, line: 13, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1923, line: 8, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1311, file: !1312, line: 1090, baseType: !1929, size: 128, offset: 14976)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1930, line: 13, size: 128, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1931 = !{!1932}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1929, file: !1930, line: 14, baseType: !168, size: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1311, file: !1312, line: 1097, baseType: !1934, size: 64, offset: 15104)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1312, line: 50, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1311, file: !1312, line: 1100, baseType: !1937, size: 64, offset: 15168)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1312, line: 1100, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1311, file: !1312, line: 1103, baseType: !1940, size: 64, offset: 15232)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1312, line: 53, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1311, file: !1312, line: 1107, baseType: !1943, size: 64, offset: 15296)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1945, line: 35, flags: DIFlagFwdDecl)
!1945 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1311, file: !1312, line: 1110, baseType: !1947, size: 64, offset: 15360)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1949, line: 93, size: 8768, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !2000, !2009, !2010, !2012, !2013, !2014, !2929, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2967, !2968, !2975, !2985, !2988, !2989, !2992, !2993, !2994, !2995, !2996, !2997}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1948, file: !1949, line: 94, baseType: !733, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1948, file: !1949, line: 95, baseType: !215, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1948, file: !1949, line: 96, baseType: !65, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1948, file: !1949, line: 97, baseType: !65, size: 32, offset: 96)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1948, file: !1949, line: 98, baseType: !168, size: 128, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1948, file: !1949, line: 100, baseType: !746, size: 192, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1948, file: !1949, line: 103, baseType: !1310, size: 64, offset: 448)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1948, file: !1949, line: 106, baseType: !1959, size: 192, offset: 512)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !965, line: 32, size: 192, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1959, file: !965, line: 33, baseType: !168, size: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1959, file: !965, line: 34, baseType: !1963, size: 64, offset: 128)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1964, line: 25, baseType: !1965)
!1964 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1964, line: 23, size: 64, elements: !1966)
!1966 = !{!1967}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1965, file: !1964, line: 24, baseType: !1549, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1948, file: !1949, line: 109, baseType: !537, size: 64, offset: 704)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1948, file: !1949, line: 112, baseType: !65, size: 32, offset: 768)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1948, file: !1949, line: 114, baseType: !65, size: 32, offset: 800)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1948, file: !1949, line: 115, baseType: !1310, size: 64, offset: 832)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1948, file: !1949, line: 118, baseType: !65, size: 32, offset: 896)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1949, line: 119, baseType: !7, size: 32, offset: 928)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1948, file: !1949, line: 121, baseType: !1975, size: 64, offset: 960)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1949, line: 80, size: 448, elements: !1977)
!1977 = !{!1978, !1979, !1985}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1976, file: !1949, line: 81, baseType: !215, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1976, file: !1949, line: 82, baseType: !1980, size: 128, offset: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1949, line: 75, size: 128, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1980, file: !1949, line: 76, baseType: !1310, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1980, file: !1949, line: 77, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1976, file: !1949, line: 83, baseType: !1864, size: 256, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1948, file: !1949, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1948, file: !1949, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1948, file: !1949, line: 138, baseType: !7, size: 32, offset: 1056)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1948, file: !1949, line: 139, baseType: !168, size: 128, offset: 1088)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1948, file: !1949, line: 142, baseType: !1422, size: 512, offset: 1216)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1948, file: !1949, line: 143, baseType: !1430, size: 64, offset: 1728)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1948, file: !1949, line: 150, baseType: !1993, size: 256, offset: 1792)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1994, size: 256, elements: !1998)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1949, line: 38, size: 128, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1994, file: !1949, line: 39, baseType: !418, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1994, file: !1949, line: 40, baseType: !418, size: 64, offset: 64)
!1998 = !{!1999}
!1999 = !DISubrange(count: 2)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1948, file: !1949, line: 156, baseType: !2001, size: 192, offset: 2048)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1949, line: 66, size: 192, elements: !2002)
!2002 = !{!2003}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2001, file: !1949, line: 67, baseType: !2004, size: 192)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1949, line: 47, size: 192, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2004, file: !1949, line: 48, baseType: !636, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2004, file: !1949, line: 49, baseType: !636, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2004, file: !1949, line: 50, baseType: !636, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1948, file: !1949, line: 160, baseType: !1893, size: 640, offset: 2240)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1948, file: !1949, line: 163, baseType: !2011, size: 256, offset: 2880)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 256, elements: !742)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1948, file: !1949, line: 169, baseType: !729, size: 64, offset: 3136)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1948, file: !1949, line: 172, baseType: !65, size: 32, offset: 3200)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1948, file: !1949, line: 174, baseType: !2015, size: 64, offset: 3264)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2017, line: 193, size: 5248, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!2018 = !{!2019, !2024, !2025, !2517, !2813, !2814, !2815, !2867, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2884, !2885, !2886, !2887, !2888, !2896, !2905, !2906, !2907, !2908, !2909, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2016, file: !2017, line: 194, baseType: !2020, size: 32)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2021, line: 19, size: 32, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2022 = !{!2023}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2020, file: !2021, line: 20, baseType: !733, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2016, file: !2017, line: 195, baseType: !65, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2016, file: !2017, line: 196, baseType: !2026, size: 64, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !50, line: 705, size: 5824, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2034, !2035, !2090, !2160, !2161, !2162, !2163, !2164, !2171, !2274, !2287, !2297, !2301, !2303, !2304, !2305, !2309, !2316, !2317, !2320, !2323, !2327, !2432, !2433, !2434, !2435, !2436, !2437, !2494, !2495, !2496, !2499, !2502, !2511, !2512, !2513, !2514, !2515, !2516}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2027, file: !50, line: 706, baseType: !182, size: 512)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2027, file: !50, line: 707, baseType: !2026, size: 64, offset: 512)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2027, file: !50, line: 709, baseType: !2032, size: 64, offset: 576)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !50, line: 37, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2027, file: !50, line: 711, baseType: !154, size: 64, offset: 640)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2027, file: !50, line: 712, baseType: !2036, size: 64, offset: 704)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !50, line: 89, size: 384, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2048, !2055, !2059}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2038, file: !50, line: 90, baseType: !154, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2038, file: !50, line: 91, baseType: !317, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2038, file: !50, line: 92, baseType: !2043, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!65, !2046, !260}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2027)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2038, file: !50, line: 93, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!265, !2046, !2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2038, file: !50, line: 95, baseType: !2056, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !2026}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2038, file: !50, line: 97, baseType: !2060, size: 64, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2062)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !57, line: 286, size: 1472, elements: !2063)
!2063 = !{!2064, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2062, file: !57, line: 287, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!65, !2026}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2062, file: !57, line: 288, baseType: !2056, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2062, file: !57, line: 289, baseType: !2065, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2062, file: !57, line: 290, baseType: !2065, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2062, file: !57, line: 291, baseType: !2065, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2062, file: !57, line: 292, baseType: !2065, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2062, file: !57, line: 293, baseType: !2065, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2062, file: !57, line: 294, baseType: !2065, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2062, file: !57, line: 295, baseType: !2065, size: 64, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2062, file: !57, line: 296, baseType: !2065, size: 64, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2062, file: !57, line: 297, baseType: !2065, size: 64, offset: 640)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2062, file: !57, line: 298, baseType: !2065, size: 64, offset: 704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2062, file: !57, line: 299, baseType: !2065, size: 64, offset: 768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2062, file: !57, line: 300, baseType: !2065, size: 64, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2062, file: !57, line: 301, baseType: !2065, size: 64, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2062, file: !57, line: 302, baseType: !2065, size: 64, offset: 960)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2062, file: !57, line: 303, baseType: !2065, size: 64, offset: 1024)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2062, file: !57, line: 304, baseType: !2065, size: 64, offset: 1088)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2062, file: !57, line: 305, baseType: !2065, size: 64, offset: 1152)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2062, file: !57, line: 306, baseType: !2065, size: 64, offset: 1216)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2062, file: !57, line: 307, baseType: !2065, size: 64, offset: 1280)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2062, file: !57, line: 308, baseType: !2065, size: 64, offset: 1344)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2062, file: !57, line: 309, baseType: !2065, size: 64, offset: 1408)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2027, file: !50, line: 714, baseType: !2091, size: 64, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2094, line: 80, size: 1344, elements: !2095)
!2094 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2095 = !{!2096, !2097, !2098, !2099, !2100, !2101, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2159}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2093, file: !2094, line: 81, baseType: !154, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2093, file: !2094, line: 82, baseType: !154, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2093, file: !2094, line: 83, baseType: !317, size: 64, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2093, file: !2094, line: 84, baseType: !317, size: 64, offset: 192)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2093, file: !2094, line: 85, baseType: !317, size: 64, offset: 256)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2093, file: !2094, line: 87, baseType: !2102, size: 64, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!65, !2026, !2105}
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !44, line: 96, size: 1152, elements: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2118, !2122, !2123, !2124, !2125, !2126, !2134, !2135, !2136, !2137, !2138, !2139}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2106, file: !44, line: 97, baseType: !154, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2106, file: !44, line: 98, baseType: !2091, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2106, file: !44, line: 100, baseType: !163, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2106, file: !44, line: 101, baseType: !154, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2106, file: !44, line: 103, baseType: !877, size: 8, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2106, file: !44, line: 104, baseType: !43, size: 32, offset: 288)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2106, file: !44, line: 106, baseType: !2115, size: 64, offset: 320)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !44, line: 106, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2106, file: !44, line: 107, baseType: !2119, size: 64, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2121)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !44, line: 107, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2106, file: !44, line: 109, baseType: !2065, size: 64, offset: 448)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2106, file: !44, line: 110, baseType: !2056, size: 64, offset: 512)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2106, file: !44, line: 111, baseType: !2065, size: 64, offset: 576)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2106, file: !44, line: 112, baseType: !2056, size: 64, offset: 640)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2106, file: !44, line: 113, baseType: !2127, size: 64, offset: 704)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!65, !2026, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !57, line: 60, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !57, line: 58, size: 32, elements: !2132)
!2132 = !{!2133}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2131, file: !57, line: 59, baseType: !65, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2106, file: !44, line: 114, baseType: !2065, size: 64, offset: 768)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2106, file: !44, line: 115, baseType: !317, size: 64, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2106, file: !44, line: 116, baseType: !317, size: 64, offset: 896)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2106, file: !44, line: 118, baseType: !2060, size: 64, offset: 960)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2106, file: !44, line: 119, baseType: !2056, size: 64, offset: 1024)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2106, file: !44, line: 121, baseType: !2140, size: 64, offset: 1088)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !44, line: 121, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2093, file: !2094, line: 88, baseType: !2043, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2093, file: !2094, line: 89, baseType: !2065, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2093, file: !2094, line: 90, baseType: !2056, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2093, file: !2094, line: 91, baseType: !2056, size: 64, offset: 576)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2093, file: !2094, line: 92, baseType: !2056, size: 64, offset: 640)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2093, file: !2094, line: 94, baseType: !2065, size: 64, offset: 704)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2093, file: !2094, line: 95, baseType: !2065, size: 64, offset: 768)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2093, file: !2094, line: 97, baseType: !2127, size: 64, offset: 832)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2093, file: !2094, line: 98, baseType: !2065, size: 64, offset: 896)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2093, file: !2094, line: 100, baseType: !2065, size: 64, offset: 960)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2093, file: !2094, line: 102, baseType: !2065, size: 64, offset: 1024)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2093, file: !2094, line: 103, baseType: !2056, size: 64, offset: 1088)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2093, file: !2094, line: 105, baseType: !2060, size: 64, offset: 1152)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2093, file: !2094, line: 107, baseType: !2156, size: 64, offset: 1216)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2094, line: 107, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2093, file: !2094, line: 109, baseType: !877, size: 8, offset: 1280)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2027, file: !50, line: 715, baseType: !2105, size: 64, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2027, file: !50, line: 717, baseType: !147, size: 64, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2027, file: !50, line: 719, baseType: !147, size: 64, offset: 960)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2027, file: !50, line: 721, baseType: !630, size: 256, offset: 1024)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2027, file: !50, line: 725, baseType: !2165, size: 448, offset: 1280)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !50, line: 517, size: 448, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2170}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2165, file: !50, line: 518, baseType: !168, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2165, file: !50, line: 519, baseType: !168, size: 128, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2165, file: !50, line: 520, baseType: !168, size: 128, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2165, file: !50, line: 521, baseType: !49, size: 32, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2027, file: !50, line: 726, baseType: !2172, size: 2496, offset: 1728)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !57, line: 663, size: 2496, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2267, !2271}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2172, file: !57, line: 664, baseType: !2130, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2172, file: !57, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2172, file: !57, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2172, file: !57, line: 667, baseType: !877, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2172, file: !57, line: 668, baseType: !877, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2172, file: !57, line: 669, baseType: !877, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2172, file: !57, line: 670, baseType: !877, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2172, file: !57, line: 671, baseType: !877, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2172, file: !57, line: 672, baseType: !877, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2172, file: !57, line: 673, baseType: !877, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2172, file: !57, line: 674, baseType: !877, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2172, file: !57, line: 675, baseType: !414, size: 32, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2172, file: !57, line: 676, baseType: !195, size: 32, offset: 96)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2172, file: !57, line: 678, baseType: !168, size: 128, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2172, file: !57, line: 679, baseType: !1864, size: 256, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2172, file: !57, line: 680, baseType: !2190, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2192, line: 43, size: 1536, elements: !2193)
!2192 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2201, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2191, file: !2192, line: 44, baseType: !154, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2191, file: !2192, line: 45, baseType: !65, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2191, file: !2192, line: 46, baseType: !168, size: 128, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2191, file: !2192, line: 47, baseType: !195, size: 32, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2191, file: !2192, line: 48, baseType: !2199, size: 64, offset: 320)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !57, line: 629, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2191, file: !2192, line: 49, baseType: !2202, size: 320, offset: 384)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2203, line: 11, size: 320, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2204 = !{!2205, !2206, !2207, !2212}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2202, file: !2203, line: 16, baseType: !541, size: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2202, file: !2203, line: 17, baseType: !315, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2202, file: !2203, line: 18, baseType: !2208, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{null, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2202, file: !2203, line: 19, baseType: !414, size: 32, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2191, file: !2192, line: 50, baseType: !315, size: 64, offset: 704)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2191, file: !2192, line: 51, baseType: !1430, size: 64, offset: 768)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2191, file: !2192, line: 52, baseType: !1430, size: 64, offset: 832)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2191, file: !2192, line: 53, baseType: !1430, size: 64, offset: 896)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2191, file: !2192, line: 54, baseType: !1430, size: 64, offset: 960)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2191, file: !2192, line: 55, baseType: !1430, size: 64, offset: 1024)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2191, file: !2192, line: 56, baseType: !315, size: 64, offset: 1088)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2191, file: !2192, line: 57, baseType: !315, size: 64, offset: 1152)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2191, file: !2192, line: 58, baseType: !315, size: 64, offset: 1216)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2191, file: !2192, line: 59, baseType: !315, size: 64, offset: 1280)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2191, file: !2192, line: 60, baseType: !315, size: 64, offset: 1344)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2191, file: !2192, line: 61, baseType: !2026, size: 64, offset: 1408)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2191, file: !2192, line: 62, baseType: !877, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2191, file: !2192, line: 63, baseType: !877, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2172, file: !57, line: 681, baseType: !877, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2172, file: !57, line: 682, baseType: !877, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2172, file: !57, line: 683, baseType: !877, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2172, file: !57, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2172, file: !57, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2172, file: !57, line: 690, baseType: !1422, size: 512, offset: 640)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2172, file: !57, line: 691, baseType: !418, size: 64, offset: 1152)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2172, file: !57, line: 692, baseType: !1753, size: 256, offset: 1216)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2172, file: !57, line: 693, baseType: !746, size: 192, offset: 1472)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2172, file: !57, line: 694, baseType: !2199, size: 64, offset: 1664)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2172, file: !57, line: 695, baseType: !215, size: 32, offset: 1728)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2172, file: !57, line: 696, baseType: !215, size: 32, offset: 1760)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2172, file: !57, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2172, file: !57, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2172, file: !57, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2172, file: !57, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2172, file: !57, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2172, file: !57, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2172, file: !57, line: 703, baseType: !877, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2172, file: !57, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2172, file: !57, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2172, file: !57, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2172, file: !57, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2172, file: !57, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2172, file: !57, line: 709, baseType: !7, size: 32, offset: 1824)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2172, file: !57, line: 710, baseType: !56, size: 32, offset: 1856)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2172, file: !57, line: 711, baseType: !64, size: 32, offset: 1888)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2172, file: !57, line: 712, baseType: !64, size: 32, offset: 1920)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2172, file: !57, line: 713, baseType: !65, size: 32, offset: 1952)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2172, file: !57, line: 714, baseType: !65, size: 32, offset: 1984)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2172, file: !57, line: 715, baseType: !418, size: 64, offset: 2048)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2172, file: !57, line: 716, baseType: !418, size: 64, offset: 2112)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2172, file: !57, line: 717, baseType: !418, size: 64, offset: 2176)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2172, file: !57, line: 718, baseType: !418, size: 64, offset: 2240)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2172, file: !57, line: 720, baseType: !2262, size: 64, offset: 2304)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !57, line: 632, size: 64, elements: !2264)
!2264 = !{!2265, !2266}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2263, file: !57, line: 633, baseType: !195, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2263, file: !57, line: 634, baseType: !7, size: 32, offset: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2172, file: !57, line: 721, baseType: !2268, size: 64, offset: 2368)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !2026, !803}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2172, file: !57, line: 722, baseType: !2272, size: 64, offset: 2432)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !57, line: 722, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2027, file: !50, line: 727, baseType: !2275, size: 64, offset: 4224)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !57, line: 742, size: 1792, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2284, !2285, !2286}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2276, file: !57, line: 743, baseType: !2062, size: 1472)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2276, file: !57, line: 744, baseType: !2065, size: 64, offset: 1472)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2276, file: !57, line: 745, baseType: !2281, size: 64, offset: 1536)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{null, !2026, !877}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2276, file: !57, line: 746, baseType: !2065, size: 64, offset: 1600)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2276, file: !57, line: 747, baseType: !2056, size: 64, offset: 1664)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2276, file: !57, line: 748, baseType: !2056, size: 64, offset: 1728)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2027, file: !50, line: 736, baseType: !2288, size: 128, offset: 4288)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !50, line: 529, size: 128, elements: !2289)
!2289 = !{!2290, !2294}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2288, file: !50, line: 531, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2293, line: 13, flags: DIFlagFwdDecl)
!2293 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2288, file: !50, line: 532, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !50, line: 49, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2027, file: !50, line: 738, baseType: !2298, size: 64, offset: 4416)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2300)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !50, line: 738, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2027, file: !50, line: 740, baseType: !2302, size: 64, offset: 4480)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2027, file: !50, line: 741, baseType: !418, size: 64, offset: 4544)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2027, file: !50, line: 746, baseType: !418, size: 64, offset: 4608)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2027, file: !50, line: 747, baseType: !2306, size: 64, offset: 4672)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2308)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !50, line: 747, flags: DIFlagFwdDecl)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2027, file: !50, line: 749, baseType: !2310, size: 64, offset: 4736)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !50, line: 428, size: 128, elements: !2312)
!2312 = !{!2313, !2314, !2315}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2311, file: !50, line: 433, baseType: !7, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2311, file: !50, line: 434, baseType: !7, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2311, file: !50, line: 435, baseType: !315, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2027, file: !50, line: 751, baseType: !168, size: 128, offset: 4800)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2027, file: !50, line: 762, baseType: !2318, size: 64, offset: 4928)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !50, line: 762, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2027, file: !50, line: 770, baseType: !2321, offset: 4992)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2322, line: 5, elements: !549)
!2322 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2027, file: !50, line: 772, baseType: !2324, size: 64, offset: 4992)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2326, line: 18, flags: DIFlagFwdDecl)
!2326 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2027, file: !50, line: 773, baseType: !2328, size: 64, offset: 5056)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2330, line: 41, size: 512, elements: !2331)
!2330 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2331 = !{!2332, !2333, !2428, !2429, !2430, !2431}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2329, file: !2330, line: 42, baseType: !2328, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2329, file: !2330, line: 43, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2336)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2330, line: 125, size: 1408, elements: !2337)
!2337 = !{!2338, !2342, !2346, !2352, !2356, !2357, !2362, !2366, !2370, !2375, !2379, !2380, !2384, !2388, !2392, !2403, !2404, !2405, !2406, !2416, !2420, !2424}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2336, file: !2330, line: 126, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!2328, !2328}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2336, file: !2330, line: 127, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !2328}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2336, file: !2330, line: 128, baseType: !2347, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!877, !2350}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2329)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2336, file: !2330, line: 129, baseType: !2353, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!1714, !2350, !2046}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2336, file: !2330, line: 131, baseType: !2347, size: 64, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2336, file: !2330, line: 133, baseType: !2358, size: 64, offset: 320)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!2361, !2350}
!2361 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2330, line: 132, flags: DIFlagFwdDecl)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2336, file: !2330, line: 134, baseType: !2363, size: 64, offset: 384)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!877, !2350, !154}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2336, file: !2330, line: 136, baseType: !2367, size: 64, offset: 448)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!65, !2350, !154, !7, !147, !312}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2336, file: !2330, line: 141, baseType: !2371, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!65, !2350, !154, !2374, !312}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2336, file: !2330, line: 144, baseType: !2376, size: 64, offset: 576)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!154, !2350}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2336, file: !2330, line: 145, baseType: !2376, size: 64, offset: 640)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2336, file: !2330, line: 146, baseType: !2381, size: 64, offset: 704)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2328, !2350}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2336, file: !2330, line: 148, baseType: !2385, size: 64, offset: 768)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!2328, !2350, !2328}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2336, file: !2330, line: 151, baseType: !2389, size: 64, offset: 832)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!2328, !2350, !154}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2336, file: !2330, line: 153, baseType: !2393, size: 64, offset: 896)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!65, !2350, !154, !154, !7, !7, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2330, line: 94, size: 640, elements: !2398)
!2398 = !{!2399, !2400, !2401}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2397, file: !2330, line: 95, baseType: !2328, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2397, file: !2330, line: 96, baseType: !7, size: 32, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2397, file: !2330, line: 97, baseType: !2402, size: 512, offset: 128)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 512, elements: !1465)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2336, file: !2330, line: 158, baseType: !2385, size: 64, offset: 960)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2336, file: !2330, line: 161, baseType: !2381, size: 64, offset: 1024)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2336, file: !2330, line: 163, baseType: !2339, size: 64, offset: 1088)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2336, file: !2330, line: 164, baseType: !2407, size: 64, offset: 1152)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!65, !2350, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2330, line: 73, size: 128, elements: !2412)
!2412 = !{!2413, !2414, !2415}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2411, file: !2330, line: 74, baseType: !7, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2411, file: !2330, line: 75, baseType: !7, size: 32, offset: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2411, file: !2330, line: 76, baseType: !2350, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2336, file: !2330, line: 166, baseType: !2417, size: 64, offset: 1216)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!147, !2328, !65}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2336, file: !2330, line: 167, baseType: !2421, size: 64, offset: 1280)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!65, !2350, !7}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2336, file: !2330, line: 168, baseType: !2425, size: 64, offset: 1344)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!65, !2328}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2329, file: !2330, line: 44, baseType: !2026, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2329, file: !2330, line: 45, baseType: !168, size: 128, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2329, file: !2330, line: 46, baseType: !168, size: 128, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2329, file: !2330, line: 47, baseType: !223, size: 8, offset: 448)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2027, file: !50, line: 776, baseType: !65, size: 32, offset: 5120)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2027, file: !50, line: 778, baseType: !501, size: 32, offset: 5152)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2027, file: !50, line: 779, baseType: !414, size: 32, offset: 5184)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2027, file: !50, line: 781, baseType: !195, size: 32, offset: 5216)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2027, file: !50, line: 782, baseType: !168, size: 128, offset: 5248)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2027, file: !50, line: 784, baseType: !2438, size: 64, offset: 5376)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2440)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2441, line: 52, size: 768, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2451, !2455, !2456, !2457, !2485, !2489, !2493}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2440, file: !2441, line: 53, baseType: !154, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2440, file: !2441, line: 55, baseType: !317, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2440, file: !2441, line: 56, baseType: !317, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2440, file: !2441, line: 58, baseType: !2043, size: 64, offset: 192)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2440, file: !2441, line: 59, baseType: !2448, size: 64, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!265, !2046, !2052}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2440, file: !2441, line: 61, baseType: !2452, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !2438}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2440, file: !2441, line: 62, baseType: !2056, size: 64, offset: 384)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2440, file: !2441, line: 64, baseType: !2065, size: 64, offset: 448)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2440, file: !2441, line: 66, baseType: !2458, size: 64, offset: 512)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !73, line: 39, size: 384, elements: !2461)
!2461 = !{!2462, !2463, !2467, !2471, !2477, !2481}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2460, file: !73, line: 40, baseType: !72, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2460, file: !73, line: 41, baseType: !2464, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!877}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2460, file: !73, line: 42, baseType: !2468, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!147}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2460, file: !73, line: 43, baseType: !2472, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!1714, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !73, line: 19, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2460, file: !73, line: 44, baseType: !2478, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!1714}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2460, file: !73, line: 45, baseType: !2482, size: 64, offset: 320)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{null, !147}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2440, file: !2441, line: 67, baseType: !2486, size: 64, offset: 576)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!1714, !2046}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2440, file: !2441, line: 69, baseType: !2490, size: 64, offset: 640)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2046, !2053, !2054}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2440, file: !2441, line: 71, baseType: !2060, size: 64, offset: 704)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2027, file: !50, line: 785, baseType: !317, size: 64, offset: 5440)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2027, file: !50, line: 787, baseType: !2056, size: 64, offset: 5504)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2027, file: !50, line: 788, baseType: !2497, size: 64, offset: 5568)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !50, line: 46, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2027, file: !50, line: 789, baseType: !2500, size: 64, offset: 5632)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !50, line: 48, flags: DIFlagFwdDecl)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2027, file: !50, line: 791, baseType: !2503, size: 64, offset: 5696)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !50, line: 597, size: 128, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2509, !2510}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2504, file: !50, line: 598, baseType: !78, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2504, file: !50, line: 599, baseType: !87, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2504, file: !50, line: 600, baseType: !92, size: 32, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2504, file: !50, line: 601, baseType: !877, size: 8, offset: 96)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2504, file: !50, line: 602, baseType: !877, size: 8, offset: 104)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2027, file: !50, line: 793, baseType: !97, size: 32, offset: 5760)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2027, file: !50, line: 795, baseType: !877, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2027, file: !50, line: 796, baseType: !877, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2027, file: !50, line: 797, baseType: !877, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2027, file: !50, line: 798, baseType: !877, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2027, file: !50, line: 799, baseType: !877, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2016, file: !2017, line: 197, baseType: !2518, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !2520, line: 441, size: 1472, elements: !2521)
!2520 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!2521 = !{!2522, !2523, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2563, !2564, !2568, !2569, !2571, !2692, !2695, !2696, !2812}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2519, file: !2520, line: 442, baseType: !2020, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !2519, file: !2520, line: 443, baseType: !2524, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2527, line: 14, size: 832, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2526, file: !2527, line: 15, baseType: !182, size: 512)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2526, file: !2527, line: 16, baseType: !163, size: 64, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2526, file: !2527, line: 17, baseType: !158, size: 64, offset: 576)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2526, file: !2527, line: 18, baseType: !168, size: 128, offset: 640)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2526, file: !2527, line: 19, baseType: !501, size: 32, offset: 768)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2526, file: !2527, line: 20, baseType: !7, size: 32, offset: 800)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2519, file: !2520, line: 444, baseType: !163, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !2519, file: !2520, line: 445, baseType: !154, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2519, file: !2520, line: 446, baseType: !154, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !2519, file: !2520, line: 447, baseType: !65, size: 32, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2519, file: !2520, line: 448, baseType: !65, size: 32, offset: 352)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !2519, file: !2520, line: 449, baseType: !65, size: 32, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2519, file: !2520, line: 450, baseType: !7, size: 32, offset: 416)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2519, file: !2520, line: 451, baseType: !846, size: 16, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !2519, file: !2520, line: 452, baseType: !846, size: 16, offset: 464)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !2519, file: !2520, line: 453, baseType: !2545, size: 352, offset: 480)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !2546, line: 30, size: 352, elements: !2547)
!2546 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!2547 = !{!2548, !2550, !2551, !2552, !2553, !2556, !2560, !2562}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2545, file: !2546, line: 31, baseType: !2549, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2546, line: 7, baseType: !7)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2545, file: !2546, line: 32, baseType: !2549, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2545, file: !2546, line: 33, baseType: !2549, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2545, file: !2546, line: 34, baseType: !2549, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2545, file: !2546, line: 35, baseType: !2554, size: 8, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2555, line: 5, baseType: !227)
!2555 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2545, file: !2546, line: 36, baseType: !2557, size: 152, offset: 136)
!2557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2554, size: 152, elements: !2558)
!2558 = !{!2559}
!2559 = !DISubrange(count: 19)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2545, file: !2546, line: 37, baseType: !2561, size: 32, offset: 288)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2555, line: 6, baseType: !7)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2545, file: !2546, line: 38, baseType: !2561, size: 32, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2519, file: !2520, line: 454, baseType: !315, size: 64, offset: 832)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !2519, file: !2520, line: 455, baseType: !2565, size: 64, offset: 896)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2567, line: 12, flags: DIFlagFwdDecl)
!2567 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !2519, file: !2520, line: 456, baseType: !2518, size: 64, offset: 960)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !2519, file: !2520, line: 461, baseType: !2570, size: 64, offset: 1024)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !2519, file: !2520, line: 462, baseType: !2572, size: 64, offset: 1088)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !2575, line: 101, size: 3008, elements: !2576)
!2575 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!2576 = !{!2577, !2609, !2610, !2611, !2633, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2661, !2687, !2688, !2689, !2690, !2691}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2574, file: !2575, line: 102, baseType: !2578, size: 1088)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !2579, line: 35, size: 1088, elements: !2580)
!2579 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!2580 = !{!2581, !2598, !2599, !2600, !2601, !2602, !2606, !2607, !2608}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2578, file: !2579, line: 36, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !2579, line: 10, size: 256, elements: !2584)
!2584 = !{!2585, !2590, !2591, !2592, !2593, !2594, !2595, !2596}
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2583, file: !2579, line: 11, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2583, file: !2579, line: 11, size: 64, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2586, file: !2579, line: 12, baseType: !2582, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2586, file: !2579, line: 13, baseType: !682, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2583, file: !2579, line: 15, baseType: !7, size: 32, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2583, file: !2579, line: 16, baseType: !7, size: 32, offset: 96)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2583, file: !2579, line: 17, baseType: !7, size: 32, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2583, file: !2579, line: 18, baseType: !7, size: 32, offset: 160)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2583, file: !2579, line: 19, baseType: !7, size: 32, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2583, file: !2579, line: 20, baseType: !877, size: 8, offset: 224)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2583, file: !2579, line: 22, baseType: !2597, align: 64, offset: 256)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !761)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2578, file: !2579, line: 37, baseType: !1753, size: 256, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2578, file: !2579, line: 38, baseType: !630, size: 256, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2578, file: !2579, line: 39, baseType: !215, size: 32, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2578, file: !2579, line: 40, baseType: !2583, size: 256, offset: 640)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2578, file: !2579, line: 41, baseType: !2603, size: 64, offset: 896)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !683, line: 56, size: 64, elements: !2604)
!2604 = !{!2605}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2603, file: !683, line: 57, baseType: !686, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2578, file: !2579, line: 42, baseType: !215, size: 32, offset: 960)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2578, file: !2579, line: 43, baseType: !65, size: 32, offset: 992)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2578, file: !2579, line: 44, baseType: !2582, size: 64, offset: 1024)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2574, file: !2575, line: 103, baseType: !2015, size: 64, offset: 1088)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2574, file: !2575, line: 104, baseType: !2015, size: 64, offset: 1152)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2574, file: !2575, line: 105, baseType: !2612, size: 64, offset: 1216)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2614)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !2575, line: 33, size: 320, elements: !2615)
!2615 = !{!2616, !2620, !2624, !2628, !2632}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2614, file: !2575, line: 34, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!877, !2573}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2614, file: !2575, line: 35, baseType: !2621, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2573, !877}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2614, file: !2575, line: 36, baseType: !2625, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{null, !2573}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2614, file: !2575, line: 37, baseType: !2629, size: 64, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!65, !2573, !2015}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2614, file: !2575, line: 38, baseType: !2625, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2574, file: !2575, line: 106, baseType: !2634, size: 64, offset: 1280)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2636)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !2575, line: 41, size: 192, elements: !2637)
!2637 = !{!2638, !2644, !2648}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2636, file: !2575, line: 42, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!312, !2573, !2642, !2642, !312}
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !2636, file: !2575, line: 44, baseType: !2645, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !2573, !2642, !2642, !312}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2636, file: !2575, line: 46, baseType: !2625, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2574, file: !2575, line: 107, baseType: !195, size: 32, offset: 1344)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2574, file: !2575, line: 108, baseType: !65, size: 32, offset: 1376)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2574, file: !2575, line: 109, baseType: !65, size: 32, offset: 1408)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2574, file: !2575, line: 110, baseType: !746, size: 192, offset: 1472)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2574, file: !2575, line: 111, baseType: !746, size: 192, offset: 1664)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2574, file: !2575, line: 112, baseType: !315, size: 64, offset: 1856)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2574, file: !2575, line: 113, baseType: !315, size: 64, offset: 1920)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2574, file: !2575, line: 114, baseType: !227, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2574, file: !2575, line: 115, baseType: !630, size: 256, offset: 2048)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2574, file: !2575, line: 116, baseType: !630, size: 256, offset: 2304)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2574, file: !2575, line: 117, baseType: !2660, size: 64, offset: 2560)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !2574, file: !2575, line: 118, baseType: !2662, size: 192, offset: 2624)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2574, file: !2575, line: 118, size: 192, elements: !2663)
!2663 = !{!2664, !2685}
!2664 = !DIDerivedType(tag: DW_TAG_member, scope: !2662, file: !2575, line: 118, baseType: !2665, size: 192)
!2665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2662, file: !2575, line: 118, size: 192, elements: !2666)
!2666 = !{!2667, !2676, !2677, !2678, !2683, !2684}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !2665, file: !2575, line: 118, baseType: !2668, size: 192)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !2669, line: 44, size: 192, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!2670 = !{!2671, !2672, !2673, !2674, !2675}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2668, file: !2669, line: 45, baseType: !7, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2668, file: !2669, line: 46, baseType: !7, size: 32, offset: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2668, file: !2669, line: 47, baseType: !7, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !2668, file: !2669, line: 48, baseType: !7, size: 32, offset: 96)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2668, file: !2669, line: 49, baseType: !147, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2665, file: !2575, line: 118, baseType: !2660, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !2665, file: !2575, line: 118, baseType: !422, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !2665, file: !2575, line: 118, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, elements: !2681)
!2681 = !{!2682}
!2682 = !DISubrange(count: 0)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2665, file: !2575, line: 118, baseType: !2660, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !2665, file: !2575, line: 118, baseType: !422, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2662, file: !2575, line: 118, baseType: !2686, offset: 192)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !2681)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2574, file: !2575, line: 119, baseType: !7, size: 32, offset: 2816)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2574, file: !2575, line: 120, baseType: !7, size: 32, offset: 2848)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2574, file: !2575, line: 121, baseType: !65, size: 32, offset: 2880)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2574, file: !2575, line: 122, baseType: !2020, size: 32, offset: 2912)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2574, file: !2575, line: 123, baseType: !147, size: 64, offset: 2944)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2519, file: !2520, line: 463, baseType: !2693, size: 64, offset: 1152)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !2519, file: !2520, line: 464, baseType: !147, size: 64, offset: 1216)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2519, file: !2520, line: 470, baseType: !2697, size: 64, offset: 1280)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2699)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !2520, line: 357, size: 2176, elements: !2700)
!2700 = !{!2701, !2705, !2709, !2713, !2717, !2721, !2725, !2726, !2730, !2734, !2735, !2739, !2740, !2744, !2748, !2754, !2755, !2756, !2757, !2758, !2759, !2763, !2764, !2765, !2766, !2770, !2774, !2778, !2782, !2794, !2800, !2806, !2807, !2811}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2699, file: !2520, line: 358, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!2015, !2518, !1625, !65}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2699, file: !2520, line: 360, baseType: !2706, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!65, !2518, !2015}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2699, file: !2520, line: 361, baseType: !2710, size: 64, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !2518, !2015}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2699, file: !2520, line: 362, baseType: !2714, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!65, !2015, !1625}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2699, file: !2520, line: 363, baseType: !2718, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !2015, !1625}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2699, file: !2520, line: 364, baseType: !2722, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !2015}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2699, file: !2520, line: 365, baseType: !2722, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2699, file: !2520, line: 366, baseType: !2727, size: 64, offset: 448)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!297, !2015, !2642, !312}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !2699, file: !2520, line: 367, baseType: !2731, size: 64, offset: 512)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!65, !2015, !223}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !2699, file: !2520, line: 368, baseType: !2722, size: 64, offset: 576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !2699, file: !2520, line: 369, baseType: !2736, size: 64, offset: 640)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!7, !2015}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !2699, file: !2520, line: 370, baseType: !2736, size: 64, offset: 704)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2699, file: !2520, line: 371, baseType: !2741, size: 64, offset: 768)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!65, !2015, !7, !315}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2699, file: !2520, line: 373, baseType: !2745, size: 64, offset: 832)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!301, !2015, !7, !315}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2699, file: !2520, line: 375, baseType: !2749, size: 64, offset: 896)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{null, !2015, !2752}
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2545)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2699, file: !2520, line: 376, baseType: !2722, size: 64, offset: 960)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !2699, file: !2520, line: 377, baseType: !2722, size: 64, offset: 1024)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2699, file: !2520, line: 378, baseType: !2722, size: 64, offset: 1088)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2699, file: !2520, line: 379, baseType: !2722, size: 64, offset: 1152)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2699, file: !2520, line: 380, baseType: !2722, size: 64, offset: 1216)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !2699, file: !2520, line: 381, baseType: !2760, size: 64, offset: 1280)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!65, !2015, !65}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2699, file: !2520, line: 382, baseType: !2722, size: 64, offset: 1344)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !2699, file: !2520, line: 383, baseType: !2760, size: 64, offset: 1408)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !2699, file: !2520, line: 384, baseType: !2722, size: 64, offset: 1472)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !2699, file: !2520, line: 385, baseType: !2767, size: 64, offset: 1536)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2015, !65}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !2699, file: !2520, line: 386, baseType: !2771, size: 64, offset: 1600)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2015, !156}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !2699, file: !2520, line: 387, baseType: !2775, size: 64, offset: 1664)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!65, !2015}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !2699, file: !2520, line: 388, baseType: !2779, size: 64, offset: 1728)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!65, !2015, !7, !7}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !2699, file: !2520, line: 390, baseType: !2783, size: 64, offset: 1792)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!65, !2015, !2786}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !2788, line: 15, size: 64, elements: !2789)
!2788 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!2789 = !{!2790, !2791, !2792, !2793}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !2787, file: !2788, line: 16, baseType: !235, size: 16)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !2787, file: !2788, line: 17, baseType: !235, size: 16, offset: 16)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !2787, file: !2788, line: 18, baseType: !235, size: 16, offset: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !2787, file: !2788, line: 19, baseType: !235, size: 16, offset: 48)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !2699, file: !2520, line: 391, baseType: !2795, size: 64, offset: 1856)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!65, !2015, !2798}
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !2520, line: 16, flags: DIFlagFwdDecl)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !2699, file: !2520, line: 393, baseType: !2801, size: 64, offset: 1920)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!65, !2015, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !2520, line: 17, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !2699, file: !2520, line: 394, baseType: !2801, size: 64, offset: 1984)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2699, file: !2520, line: 395, baseType: !2808, size: 64, offset: 2048)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2015, !618}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !2699, file: !2520, line: 401, baseType: !669, size: 64, offset: 2112)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !2519, file: !2520, line: 471, baseType: !168, size: 128, offset: 1344)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2016, file: !2017, line: 198, baseType: !2573, size: 64, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2016, file: !2017, line: 199, baseType: !2697, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !2016, file: !2017, line: 201, baseType: !2816, size: 64, offset: 320)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !2818, line: 269, size: 128, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!2819 = !{!2820, !2866}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2817, file: !2818, line: 270, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !2818, line: 231, size: 1152, elements: !2823)
!2823 = !{!2824, !2825, !2826, !2827, !2828, !2829, !2835, !2839, !2840, !2841, !2842, !2850, !2851, !2855, !2856, !2860, !2864, !2865}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2822, file: !2818, line: 232, baseType: !265, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2822, file: !2818, line: 233, baseType: !65, size: 32, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2822, file: !2818, line: 238, baseType: !2775, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2822, file: !2818, line: 239, baseType: !2722, size: 64, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2822, file: !2818, line: 240, baseType: !2722, size: 64, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2822, file: !2818, line: 241, baseType: !2830, size: 64, offset: 320)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!297, !2015, !1625, !2833, !312, !2834, !315}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2822, file: !2818, line: 243, baseType: !2836, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!297, !2015, !1625, !2642, !312}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2822, file: !2818, line: 245, baseType: !2741, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2822, file: !2818, line: 247, baseType: !2741, size: 64, offset: 512)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2822, file: !2818, line: 249, baseType: !2749, size: 64, offset: 576)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2822, file: !2818, line: 250, baseType: !2843, size: 64, offset: 640)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!2846, !2015, !1625, !2848}
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2847, line: 59, baseType: !7)
!2847 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !521, line: 31, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2822, file: !2818, line: 252, baseType: !2722, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2822, file: !2818, line: 257, baseType: !2852, size: 64, offset: 768)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{null, !2015, !2642, !2642, !312}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2822, file: !2818, line: 259, baseType: !2722, size: 64, offset: 832)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !2822, file: !2818, line: 260, baseType: !2857, size: 64, offset: 896)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !2015, !877}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !2822, file: !2818, line: 261, baseType: !2861, size: 64, offset: 960)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!312, !2015, !2642, !2642, !312}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !2822, file: !2818, line: 263, baseType: !2852, size: 64, offset: 1024)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2822, file: !2818, line: 266, baseType: !163, size: 64, offset: 1088)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2817, file: !2818, line: 271, baseType: !2015, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !2016, file: !2017, line: 202, baseType: !2868, size: 384, offset: 384)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !2818, line: 17, size: 384, elements: !2869)
!2869 = !{!2870, !2871, !2872, !2873, !2874}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2868, file: !2818, line: 18, baseType: !634, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2868, file: !2818, line: 19, baseType: !643, size: 32, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !2868, file: !2818, line: 20, baseType: !7, size: 32, offset: 96)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2868, file: !2818, line: 21, baseType: !168, size: 128, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2868, file: !2818, line: 22, baseType: !168, size: 128, offset: 256)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !2016, file: !2017, line: 204, baseType: !630, size: 256, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !2016, file: !2017, line: 205, baseType: !630, size: 256, offset: 1024)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !2016, file: !2017, line: 206, baseType: !630, size: 256, offset: 1280)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !2016, file: !2017, line: 207, baseType: !818, size: 320, offset: 1536)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !2016, file: !2017, line: 208, baseType: !630, size: 256, offset: 1856)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2016, file: !2017, line: 209, baseType: !2545, size: 352, offset: 2112)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !2016, file: !2017, line: 209, baseType: !2545, size: 352, offset: 2464)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2016, file: !2017, line: 210, baseType: !2883, size: 512, offset: 2816)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 512, elements: !270)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2016, file: !2017, line: 211, baseType: !315, size: 64, offset: 3328)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2016, file: !2017, line: 212, baseType: !65, size: 32, offset: 3392)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !2016, file: !2017, line: 213, baseType: !7, size: 32, offset: 3424)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !2016, file: !2017, line: 214, baseType: !2787, size: 64, offset: 3456)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !2016, file: !2017, line: 221, baseType: !2889, size: 64, align: 64, offset: 3520)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 216, size: 64, align: 64, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2889, file: !2017, line: 217, baseType: !195, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !2889, file: !2017, line: 218, baseType: !877, size: 8, offset: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !2889, file: !2017, line: 219, baseType: !877, size: 8, offset: 40)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2889, file: !2017, line: 220, baseType: !2895, offset: 64)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, elements: !2681)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !2016, file: !2017, line: 230, baseType: !2897, size: 192, align: 64, offset: 3584)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 223, size: 192, align: 64, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !2897, file: !2017, line: 224, baseType: !729, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !2897, file: !2017, line: 225, baseType: !729, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2897, file: !2017, line: 226, baseType: !195, size: 32, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !2897, file: !2017, line: 227, baseType: !227, size: 8, offset: 160)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !2897, file: !2017, line: 228, baseType: !877, size: 8, offset: 168)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2897, file: !2017, line: 229, baseType: !2895, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !2016, file: !2017, line: 232, baseType: !877, size: 8, offset: 3776)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !2016, file: !2017, line: 233, baseType: !877, size: 8, offset: 3784)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !2016, file: !2017, line: 234, baseType: !65, size: 32, offset: 3808)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2016, file: !2017, line: 236, baseType: !2015, size: 64, offset: 3840)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2016, file: !2017, line: 237, baseType: !2910, size: 64, offset: 3904)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !2912)
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2911, file: !14, line: 1084, baseType: !708, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2911, file: !14, line: 1085, baseType: !65, size: 32, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2911, file: !14, line: 1086, baseType: !65, size: 32, offset: 96)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2911, file: !14, line: 1087, baseType: !2910, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2911, file: !14, line: 1088, baseType: !1625, size: 64, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2911, file: !14, line: 1089, baseType: !688, size: 128, align: 64, offset: 256)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2016, file: !2017, line: 238, baseType: !746, size: 192, offset: 3968)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2016, file: !2017, line: 239, baseType: !746, size: 192, offset: 4160)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !2016, file: !2017, line: 240, baseType: !1753, size: 256, offset: 4352)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !2016, file: !2017, line: 241, baseType: !147, size: 64, offset: 4608)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2016, file: !2017, line: 242, baseType: !147, size: 64, offset: 4672)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !2016, file: !2017, line: 243, baseType: !195, size: 32, offset: 4736)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !2016, file: !2017, line: 244, baseType: !65, size: 32, offset: 4768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2016, file: !2017, line: 245, baseType: !2660, size: 64, offset: 4800)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !2016, file: !2017, line: 247, baseType: !168, size: 128, offset: 4864)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !2016, file: !2017, line: 250, baseType: !1753, size: 256, offset: 4992)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1948, file: !1949, line: 185, baseType: !2930, size: 64, offset: 3328)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !387, line: 860, baseType: !2931)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 853, size: 64, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2931, file: !387, line: 858, baseType: !386, size: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2931, file: !387, line: 859, baseType: !195, size: 32, offset: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1948, file: !1949, line: 186, baseType: !418, size: 64, offset: 3392)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1948, file: !1949, line: 186, baseType: !418, size: 64, offset: 3456)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1948, file: !1949, line: 186, baseType: !418, size: 64, offset: 3520)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1948, file: !1949, line: 186, baseType: !418, size: 64, offset: 3584)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1948, file: !1949, line: 187, baseType: !418, size: 64, offset: 3648)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1948, file: !1949, line: 188, baseType: !418, size: 64, offset: 3712)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1948, file: !1949, line: 189, baseType: !1881, size: 192, offset: 3776)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1948, file: !1949, line: 190, baseType: !315, size: 64, offset: 3968)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1948, file: !1949, line: 190, baseType: !315, size: 64, offset: 4032)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1948, file: !1949, line: 190, baseType: !315, size: 64, offset: 4096)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1948, file: !1949, line: 190, baseType: !315, size: 64, offset: 4160)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1948, file: !1949, line: 191, baseType: !315, size: 64, offset: 4224)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1948, file: !1949, line: 191, baseType: !315, size: 64, offset: 4288)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1948, file: !1949, line: 191, baseType: !315, size: 64, offset: 4352)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1948, file: !1949, line: 191, baseType: !315, size: 64, offset: 4416)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1948, file: !1949, line: 192, baseType: !315, size: 64, offset: 4480)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1948, file: !1949, line: 192, baseType: !315, size: 64, offset: 4544)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1948, file: !1949, line: 192, baseType: !315, size: 64, offset: 4608)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1948, file: !1949, line: 192, baseType: !315, size: 64, offset: 4672)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1948, file: !1949, line: 193, baseType: !315, size: 64, offset: 4736)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1948, file: !1949, line: 193, baseType: !315, size: 64, offset: 4800)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1948, file: !1949, line: 194, baseType: !2957, size: 448, offset: 4864)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2958, line: 12, size: 448, elements: !2959)
!2958 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965, !2966}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2957, file: !2958, line: 15, baseType: !418, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2957, file: !2958, line: 17, baseType: !418, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2957, file: !2958, line: 19, baseType: !418, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2957, file: !2958, line: 21, baseType: !418, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2957, file: !2958, line: 29, baseType: !418, size: 64, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2957, file: !2958, line: 35, baseType: !418, size: 64, offset: 320)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2957, file: !2958, line: 44, baseType: !418, size: 64, offset: 384)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1948, file: !1949, line: 202, baseType: !420, size: 64, offset: 5312)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1948, file: !1949, line: 213, baseType: !2969, size: 2048, offset: 5376)
!2969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2970, size: 2048, elements: !1916)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2971, line: 43, size: 128, elements: !2972)
!2971 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2972 = !{!2973, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2970, file: !2971, line: 44, baseType: !314, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2970, file: !2971, line: 45, baseType: !314, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1948, file: !1949, line: 216, baseType: !2976, size: 448, offset: 7424)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1949, line: 30, size: 448, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2976, file: !1949, line: 31, baseType: !65, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2976, file: !1949, line: 32, baseType: !301, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2976, file: !1949, line: 33, baseType: !315, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2976, file: !1949, line: 34, baseType: !418, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2976, file: !1949, line: 34, baseType: !418, size: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2976, file: !1949, line: 35, baseType: !315, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2976, file: !1949, line: 35, baseType: !315, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1948, file: !1949, line: 219, baseType: !2986, size: 64, offset: 7872)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1949, line: 219, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1948, file: !1949, line: 222, baseType: !7, size: 32, offset: 7936)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1948, file: !1949, line: 223, baseType: !2990, size: 64, offset: 8000)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1949, line: 223, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1948, file: !1949, line: 230, baseType: !877, size: 8, offset: 8064)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1948, file: !1949, line: 231, baseType: !846, size: 16, offset: 8080)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1948, file: !1949, line: 232, baseType: !846, size: 16, offset: 8096)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1948, file: !1949, line: 234, baseType: !1598, size: 64, offset: 8128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1948, file: !1949, line: 237, baseType: !630, size: 256, offset: 8192)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1948, file: !1949, line: 243, baseType: !818, size: 320, offset: 8448)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1311, file: !1312, line: 1111, baseType: !2999, size: 64, offset: 15424)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1949, line: 20, size: 16640, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3000, file: !1949, line: 21, baseType: !195, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3000, file: !1949, line: 22, baseType: !733, size: 32, offset: 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3000, file: !1949, line: 23, baseType: !746, size: 192, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3000, file: !1949, line: 24, baseType: !3006, size: 16384, offset: 256)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3007, size: 16384, elements: !270)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !965, line: 51, size: 256, elements: !3008)
!3008 = !{!3009}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3007, file: !965, line: 52, baseType: !3010, size: 256)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !965, line: 37, size: 256, elements: !3011)
!3011 = !{!3012, !3019, !3020, !3026}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3010, file: !965, line: 39, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3014, line: 83, baseType: !3015)
!3014 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3014, line: 82, baseType: !3017)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !65}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3010, file: !965, line: 40, baseType: !315, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3010, file: !965, line: 46, baseType: !3021, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3014, line: 86, baseType: !3022)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3014, line: 85, baseType: !3024)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3010, file: !965, line: 48, baseType: !1963, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1311, file: !1312, line: 1112, baseType: !1963, size: 64, offset: 15488)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1311, file: !1312, line: 1113, baseType: !1963, size: 64, offset: 15552)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1311, file: !1312, line: 1115, baseType: !1963, size: 64, offset: 15616)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1311, file: !1312, line: 1116, baseType: !1959, size: 192, offset: 15680)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1311, file: !1312, line: 1117, baseType: !315, size: 64, offset: 15872)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1311, file: !1312, line: 1118, baseType: !312, size: 64, offset: 15936)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1311, file: !1312, line: 1119, baseType: !7, size: 32, offset: 16000)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1311, file: !1312, line: 1121, baseType: !691, size: 64, offset: 16064)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1311, file: !1312, line: 1125, baseType: !3036, size: 64, offset: 16128)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1312, line: 43, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1311, file: !1312, line: 1127, baseType: !351, size: 32, offset: 16192)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1311, file: !1312, line: 1128, baseType: !7, size: 32, offset: 16224)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1311, file: !1312, line: 1130, baseType: !3041, size: 128, offset: 16256)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3042, line: 37, size: 128, elements: !3043)
!3042 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3043 = !{!3044, !3045, !3046}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3041, file: !3042, line: 38, baseType: !65, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3041, file: !3042, line: 39, baseType: !215, size: 32, offset: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3041, file: !3042, line: 40, baseType: !3047, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3042, line: 24, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1311, file: !1312, line: 1131, baseType: !3050, size: 256, offset: 16384)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3051, line: 12, size: 256, elements: !3052)
!3051 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3052 = !{!3053, !3054, !3055, !3056}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3050, file: !3051, line: 13, baseType: !265, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3050, file: !3051, line: 14, baseType: !315, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3050, file: !3051, line: 15, baseType: !315, size: 64, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3050, file: !3051, line: 16, baseType: !877, size: 8, offset: 192)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1311, file: !1312, line: 1134, baseType: !418, size: 64, offset: 16640)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1311, file: !1312, line: 1135, baseType: !418, size: 64, offset: 16704)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1311, file: !1312, line: 1138, baseType: !195, size: 32, offset: 16768)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1311, file: !1312, line: 1141, baseType: !643, size: 32, offset: 16800)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1311, file: !1312, line: 1143, baseType: !3062, size: 64, offset: 16832)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1312, line: 735, size: 64, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3062, file: !1312, line: 736, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1311, file: !1312, line: 1147, baseType: !1481, size: 128, offset: 16896)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1311, file: !1312, line: 1149, baseType: !1310, size: 64, offset: 17024)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1311, file: !1312, line: 1151, baseType: !3069, size: 64, offset: 17088)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1312, line: 1151, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1311, file: !1312, line: 1188, baseType: !147, size: 64, offset: 17152)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1311, file: !1312, line: 1191, baseType: !3073, size: 64, offset: 17216)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1312, line: 44, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1311, file: !1312, line: 1194, baseType: !3076, size: 64, offset: 17280)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1312, line: 45, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1311, file: !1312, line: 1197, baseType: !3079, size: 64, offset: 17344)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1312, line: 61, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1311, file: !1312, line: 1199, baseType: !3082, size: 64, offset: 17408)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3084, line: 99, size: 128, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3085 = !{!3086, !3087, !3088}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3083, file: !3084, line: 100, baseType: !634, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3083, file: !3084, line: 101, baseType: !215, size: 32, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3083, file: !3084, line: 103, baseType: !235, size: 16, offset: 96)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1311, file: !1312, line: 1202, baseType: !3090, size: 64, offset: 17472)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1312, line: 48, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1311, file: !1312, line: 1205, baseType: !315, size: 64, offset: 17536)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1311, file: !1312, line: 1206, baseType: !3094, size: 64, offset: 17600)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !965, line: 14, baseType: !3096)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !965, line: 12, size: 384, elements: !3097)
!3097 = !{!3098}
!3098 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !965, line: 13, baseType: !3099, size: 384)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3096, file: !965, line: 13, size: 384, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3099, file: !965, line: 13, baseType: !65, size: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3099, file: !965, line: 13, baseType: !65, size: 32, offset: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3099, file: !965, line: 13, baseType: !65, size: 32, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3099, file: !965, line: 13, baseType: !3105, size: 256, offset: 128)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3106, line: 37, size: 256, elements: !3107)
!3106 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3107 = !{!3108, !3113, !3126, !3132, !3141, !3168, !3173}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3105, file: !3106, line: 42, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !3106, line: 39, size: 64, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3109, file: !3106, line: 40, baseType: !1847, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3109, file: !3106, line: 41, baseType: !357, size: 32, offset: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3105, file: !3106, line: 50, baseType: !3114, size: 192)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !3106, line: 45, size: 192, elements: !3115)
!3115 = !{!3116, !3118, !3119, !3125}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3114, file: !3106, line: 46, baseType: !3117, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !299, line: 95, baseType: !65)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3114, file: !3106, line: 47, baseType: !65, size: 32, offset: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3114, file: !3106, line: 48, baseType: !3120, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3106, line: 11, baseType: !3121)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3106, line: 8, size: 64, elements: !3122)
!3122 = !{!3123, !3124}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3121, file: !3106, line: 9, baseType: !65, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3121, file: !3106, line: 10, baseType: !147, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3114, file: !3106, line: 49, baseType: !65, size: 32, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3105, file: !3106, line: 57, baseType: !3127, size: 128)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !3106, line: 53, size: 128, elements: !3128)
!3128 = !{!3129, !3130, !3131}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3127, file: !3106, line: 54, baseType: !1847, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3127, file: !3106, line: 55, baseType: !357, size: 32, offset: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3127, file: !3106, line: 56, baseType: !3120, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3105, file: !3106, line: 66, baseType: !3133, size: 256)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !3106, line: 60, size: 256, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3138, !3140}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3133, file: !3106, line: 61, baseType: !1847, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3133, file: !3106, line: 62, baseType: !357, size: 32, offset: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3133, file: !3106, line: 63, baseType: !65, size: 32, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3133, file: !3106, line: 64, baseType: !3139, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !299, line: 94, baseType: !300)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3133, file: !3106, line: 65, baseType: !3139, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3105, file: !3106, line: 105, baseType: !3142, size: 256)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !3106, line: 69, size: 256, elements: !3143)
!3143 = !{!3144, !3145}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3142, file: !3106, line: 70, baseType: !147, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3142, file: !3106, line: 79, baseType: !3146, size: 192, offset: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3142, file: !3106, line: 79, size: 192, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3157, !3162}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3146, file: !3106, line: 81, baseType: !65, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3146, file: !3106, line: 86, baseType: !846, size: 16)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3146, file: !3106, line: 92, baseType: !3151, size: 192)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3106, line: 88, size: 192, elements: !3152)
!3152 = !{!3153, !3155, !3156}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3151, file: !3106, line: 89, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 64, elements: !1465)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3151, file: !3106, line: 90, baseType: !147, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3151, file: !3106, line: 91, baseType: !147, size: 64, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3146, file: !3106, line: 97, baseType: !3158, size: 96)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3106, line: 94, size: 96, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3158, file: !3106, line: 95, baseType: !3154, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3158, file: !3106, line: 96, baseType: !415, size: 32, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3146, file: !3106, line: 103, baseType: !3163, size: 128)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3106, line: 99, size: 128, elements: !3164)
!3164 = !{!3165, !3166, !3167}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3163, file: !3106, line: 100, baseType: !315, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3163, file: !3106, line: 101, baseType: !415, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3163, file: !3106, line: 102, baseType: !415, size: 32, offset: 96)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3105, file: !3106, line: 111, baseType: !3169, size: 128)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !3106, line: 108, size: 128, elements: !3170)
!3170 = !{!3171, !3172}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3169, file: !3106, line: 109, baseType: !301, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3169, file: !3106, line: 110, baseType: !65, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3105, file: !3106, line: 118, baseType: !3174, size: 128)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3105, file: !3106, line: 114, size: 128, elements: !3175)
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3174, file: !3106, line: 115, baseType: !147, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3174, file: !3106, line: 116, baseType: !65, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3174, file: !3106, line: 117, baseType: !7, size: 32, offset: 96)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1311, file: !1312, line: 1208, baseType: !2957, size: 448, offset: 17664)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1311, file: !1312, line: 1215, baseType: !418, size: 64, offset: 18112)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1311, file: !1312, line: 1217, baseType: !418, size: 64, offset: 18176)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1311, file: !1312, line: 1219, baseType: !418, size: 64, offset: 18240)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1311, file: !1312, line: 1223, baseType: !3184, size: 64, offset: 18304)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3185, line: 99, baseType: !3186)
!3185 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3185, line: 99, size: 64, elements: !3187)
!3187 = !{!3188}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3186, file: !3185, line: 99, baseType: !1549, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1311, file: !1312, line: 1225, baseType: !386, size: 32, offset: 18368)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1311, file: !1312, line: 1226, baseType: !65, size: 32, offset: 18400)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1311, file: !1312, line: 1227, baseType: !65, size: 32, offset: 18432)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1311, file: !1312, line: 1231, baseType: !3193, size: 64, offset: 18496)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1312, line: 1231, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1311, file: !1312, line: 1233, baseType: !168, size: 128, offset: 18560)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1311, file: !1312, line: 1240, baseType: !3197, size: 64, offset: 18688)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1312, line: 62, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1311, file: !1312, line: 1242, baseType: !3200, size: 64, offset: 18752)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1312, line: 1242, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1311, file: !1312, line: 1244, baseType: !168, size: 128, offset: 18816)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1311, file: !1312, line: 1245, baseType: !3204, size: 64, offset: 18944)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1312, line: 51, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1311, file: !1312, line: 1246, baseType: !630, size: 256, offset: 19008)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1311, file: !1312, line: 1247, baseType: !7, size: 32, offset: 19264)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1311, file: !1312, line: 1250, baseType: !3209, size: 64, offset: 19328)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1312, line: 57, flags: DIFlagFwdDecl)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1311, file: !1312, line: 1251, baseType: !630, size: 256, offset: 19392)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1311, file: !1312, line: 1252, baseType: !168, size: 128, offset: 19648)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1311, file: !1312, line: 1259, baseType: !3214, size: 64, offset: 19776)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !112, line: 717, flags: DIFlagFwdDecl)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1311, file: !1312, line: 1260, baseType: !846, size: 16, offset: 19840)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1311, file: !1312, line: 1261, baseType: !846, size: 16, offset: 19856)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1311, file: !1312, line: 1314, baseType: !3219, size: 64, offset: 19904)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3221, line: 62, size: 256, align: 256, elements: !3222)
!3221 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3220, file: !3221, line: 75, baseType: !415, size: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3220, file: !3221, line: 90, baseType: !415, size: 32, offset: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3220, file: !3221, line: 112, baseType: !419, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3220, file: !3221, line: 132, baseType: !415, size: 32, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3220, file: !3221, line: 140, baseType: !415, size: 32, offset: 160)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3220, file: !3221, line: 149, baseType: !415, size: 32, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3220, file: !3221, line: 154, baseType: !3230, offset: 224)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, elements: !761)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1311, file: !1312, line: 1315, baseType: !414, size: 32, offset: 19968)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1311, file: !1312, line: 1316, baseType: !414, size: 32, offset: 20000)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1311, file: !1312, line: 1321, baseType: !315, size: 64, offset: 20032)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1311, file: !1312, line: 1325, baseType: !65, size: 32, offset: 20096)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1311, file: !1312, line: 1326, baseType: !65, size: 32, offset: 20128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1311, file: !1312, line: 1327, baseType: !65, size: 32, offset: 20160)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1311, file: !1312, line: 1328, baseType: !65, size: 32, offset: 20192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1311, file: !1312, line: 1329, baseType: !688, size: 128, align: 64, offset: 20224)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1311, file: !1312, line: 1332, baseType: !3240, size: 128, offset: 20352)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3241, line: 51, size: 128, elements: !3242)
!3241 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3242 = !{!3243, !3248, !3249}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3240, file: !3241, line: 60, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3245, line: 7, size: 64, elements: !3246)
!3245 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3246 = !{!3247}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3244, file: !3245, line: 12, baseType: !1546, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3240, file: !3241, line: 63, baseType: !877, size: 8, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3240, file: !3241, line: 70, baseType: !877, size: 8, offset: 72)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1311, file: !1312, line: 1335, baseType: !3251, size: 64, offset: 20480)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1312, line: 59, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1311, file: !1312, line: 1337, baseType: !3254, size: 128, offset: 20544)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3241, line: 39, size: 128, elements: !3255)
!3255 = !{!3256, !3540, !3541}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3254, file: !3241, line: 40, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !112, line: 74, size: 512, align: 128, elements: !3259)
!3259 = !{!3260, !3261, !3534, !3539}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3258, file: !112, line: 75, baseType: !315, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !3258, file: !112, line: 83, baseType: !3262, size: 320, offset: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3258, file: !112, line: 83, size: 320, elements: !3263)
!3263 = !{!3264, !3285, !3299, !3303, !3533}
!3264 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !112, line: 84, baseType: !3265, size: 320)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3262, file: !112, line: 84, size: 320, elements: !3266)
!3266 = !{!3267, !3278, !3279, !3284}
!3267 = !DIDerivedType(tag: DW_TAG_member, scope: !3265, file: !112, line: 90, baseType: !3268, size: 128)
!3268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3265, file: !112, line: 90, size: 128, elements: !3269)
!3269 = !{!3270, !3271, !3276, !3277}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3268, file: !112, line: 91, baseType: !168, size: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, scope: !3268, file: !112, line: 94, baseType: !3272, size: 128)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3268, file: !112, line: 94, size: 128, elements: !3273)
!3273 = !{!3274, !3275}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3272, file: !112, line: 96, baseType: !147, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3272, file: !112, line: 98, baseType: !7, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !3268, file: !112, line: 102, baseType: !168, size: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !3268, file: !112, line: 103, baseType: !168, size: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3265, file: !112, line: 106, baseType: !341, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !3265, file: !112, line: 107, baseType: !3280, size: 64, offset: 192)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3265, file: !112, line: 107, size: 64, elements: !3281)
!3281 = !{!3282, !3283}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3280, file: !112, line: 108, baseType: !315, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3280, file: !112, line: 109, baseType: !315, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3265, file: !112, line: 117, baseType: !315, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !112, line: 119, baseType: !3286, size: 320)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3262, file: !112, line: 119, size: 320, elements: !3287)
!3287 = !{!3288, !3289, !3292, !3293, !3294}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3286, file: !112, line: 124, baseType: !315, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3286, file: !112, line: 125, baseType: !3290, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !112, line: 125, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3286, file: !112, line: 126, baseType: !315, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3286, file: !112, line: 127, baseType: !315, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, scope: !3286, file: !112, line: 128, baseType: !3295, size: 64, offset: 256)
!3295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3286, file: !112, line: 128, size: 64, elements: !3296)
!3296 = !{!3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3295, file: !112, line: 133, baseType: !315, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3295, file: !112, line: 138, baseType: !634, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !112, line: 141, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3262, file: !112, line: 141, size: 64, elements: !3301)
!3301 = !{!3302}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3300, file: !112, line: 142, baseType: !315, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !112, line: 144, baseType: !3304, size: 128)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3262, file: !112, line: 144, size: 128, elements: !3305)
!3305 = !{!3306, !3532}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3304, file: !112, line: 146, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !104, line: 126, size: 1216, elements: !3309)
!3309 = !{!3310, !3320, !3341, !3342, !3343, !3344, !3345, !3514, !3515, !3516}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3308, file: !104, line: 127, baseType: !3311, size: 384)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !104, line: 21, size: 384, elements: !3312)
!3312 = !{!3313, !3314, !3316, !3317, !3318, !3319}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3311, file: !104, line: 22, baseType: !315, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3311, file: !104, line: 23, baseType: !3315, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3311, file: !104, line: 24, baseType: !3315, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3311, file: !104, line: 25, baseType: !315, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3311, file: !104, line: 26, baseType: !315, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3311, file: !104, line: 27, baseType: !315, size: 64, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3308, file: !104, line: 128, baseType: !3321, size: 128, offset: 384)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3322, line: 105, size: 128, elements: !3323)
!3322 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3323 = !{!3324, !3325}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3321, file: !3322, line: 110, baseType: !315, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3321, file: !3322, line: 118, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3322, line: 95, size: 448, elements: !3328)
!3328 = !{!3329, !3330, !3336, !3337, !3338, !3339, !3340}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3327, file: !3322, line: 96, baseType: !634, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3327, file: !3322, line: 97, baseType: !3331, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3322, line: 60, baseType: !3333)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !3335}
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3327, file: !3322, line: 98, baseType: !3331, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3327, file: !3322, line: 99, baseType: !877, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3327, file: !3322, line: 100, baseType: !877, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3327, file: !3322, line: 101, baseType: !688, size: 128, align: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3327, file: !3322, line: 102, baseType: !3335, size: 64, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3308, file: !104, line: 129, baseType: !1864, size: 256, offset: 512)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3308, file: !104, line: 130, baseType: !103, size: 32, offset: 768)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3308, file: !104, line: 131, baseType: !7, size: 32, offset: 800)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3308, file: !104, line: 132, baseType: !315, size: 64, offset: 832)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3308, file: !104, line: 133, baseType: !3346, size: 64, offset: 896)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3348)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !104, line: 77, size: 192, elements: !3349)
!3349 = !{!3350, !3354, !3510}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3348, file: !104, line: 83, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !3257}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3348, file: !104, line: 89, baseType: !3355, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!3358, !3359}
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !112, line: 1184, baseType: !7)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3361, line: 512, size: 896, elements: !3362)
!3361 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3362 = !{!3363, !3477, !3478, !3485, !3492, !3502, !3503, !3504, !3506, !3508}
!3363 = !DIDerivedType(tag: DW_TAG_member, scope: !3360, file: !3361, line: 513, baseType: !3364, size: 320)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3360, file: !3361, line: 513, size: 320, elements: !3365)
!3365 = !{!3366, !3473, !3474, !3475, !3476}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3364, file: !3361, line: 514, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !112, line: 625, size: 1344, elements: !3369)
!3369 = !{!3370, !3379, !3380, !3386, !3393, !3394, !3399, !3400, !3405, !3406, !3409, !3466, !3467, !3468, !3469, !3470, !3471}
!3370 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !112, line: 628, baseType: !3371, size: 128)
!3371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !112, line: 628, size: 128, elements: !3372)
!3372 = !{!3373, !3378}
!3373 = !DIDerivedType(tag: DW_TAG_member, scope: !3371, file: !112, line: 629, baseType: !3374, size: 128)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3371, file: !112, line: 629, size: 128, elements: !3375)
!3375 = !{!3376, !3377}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3374, file: !112, line: 631, baseType: !315, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3374, file: !112, line: 632, baseType: !315, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3371, file: !112, line: 635, baseType: !688, size: 128, align: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3368, file: !112, line: 639, baseType: !1598, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3368, file: !112, line: 640, baseType: !3381, size: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1634, line: 297, baseType: !3382)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1634, line: 297, size: 64, elements: !3383)
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3382, file: !1634, line: 297, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1639, line: 19, baseType: !315)
!3386 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !112, line: 646, baseType: !3387, size: 64, offset: 256)
!3387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !112, line: 646, size: 64, elements: !3388)
!3388 = !{!3389, !3392}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3387, file: !112, line: 647, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3391)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !112, line: 542, baseType: !315)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3387, file: !112, line: 648, baseType: !3391, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3368, file: !112, line: 666, baseType: !65, size: 32, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3368, file: !112, line: 667, baseType: !3395, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !112, line: 579, size: 320, elements: !3397)
!3397 = !{!3398}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3396, file: !112, line: 580, baseType: !818, size: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3368, file: !112, line: 670, baseType: !877, size: 8, offset: 448)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3368, file: !112, line: 681, baseType: !3401, size: 256, offset: 512)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3368, file: !112, line: 678, size: 256, elements: !3402)
!3402 = !{!3403, !3404}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3401, file: !112, line: 679, baseType: !810, size: 192, align: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3401, file: !112, line: 680, baseType: !315, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3368, file: !112, line: 689, baseType: !168, size: 128, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3368, file: !112, line: 691, baseType: !3407, size: 64, offset: 896)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !112, line: 691, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3368, file: !112, line: 694, baseType: !3410, size: 64, offset: 960)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3361, line: 563, size: 1024, elements: !3413)
!3413 = !{!3414, !3418, !3419, !3423, !3427, !3431, !3432, !3436, !3440, !3444, !3445, !3446, !3450, !3454, !3458, !3462}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3412, file: !3361, line: 564, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{null, !3367}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3412, file: !3361, line: 569, baseType: !3415, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3412, file: !3361, line: 571, baseType: !3420, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!65, !3367, !315}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3412, file: !3361, line: 572, baseType: !3424, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!65, !3367}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3412, file: !3361, line: 578, baseType: !3428, size: 64, offset: 256)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!65, !3367, !315, !315, !315}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3412, file: !3361, line: 580, baseType: !3355, size: 64, offset: 320)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3412, file: !3361, line: 581, baseType: !3433, size: 64, offset: 384)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!3358, !3359, !7}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3412, file: !3361, line: 582, baseType: !3437, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!3358, !3359, !315, !315}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3412, file: !3361, line: 584, baseType: !3441, size: 64, offset: 512)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!315, !3367}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3412, file: !3361, line: 588, baseType: !3355, size: 64, offset: 576)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3412, file: !3361, line: 591, baseType: !3355, size: 64, offset: 640)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3412, file: !3361, line: 597, baseType: !3447, size: 64, offset: 704)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!65, !3367, !315, !147, !65, !65}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3412, file: !3361, line: 603, baseType: !3451, size: 64, offset: 768)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!154, !3367}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3412, file: !3361, line: 613, baseType: !3455, size: 64, offset: 832)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!65, !3367, !3214}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3412, file: !3361, line: 625, baseType: !3459, size: 64, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!3214, !3367, !315}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3412, file: !3361, line: 633, baseType: !3463, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!3257, !3367, !315}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3368, file: !112, line: 697, baseType: !315, size: 64, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3368, file: !112, line: 699, baseType: !1625, size: 64, offset: 1088)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3368, file: !112, line: 700, baseType: !147, size: 64, offset: 1152)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3368, file: !112, line: 711, baseType: !634, size: 64, offset: 1216)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3368, file: !112, line: 717, baseType: !3214, size: 64, offset: 1280)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3368, file: !112, line: 722, baseType: !3472, offset: 1344)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !112, line: 570, elements: !549)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3364, file: !3361, line: 515, baseType: !1074, size: 32, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3364, file: !3361, line: 516, baseType: !315, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3364, file: !3361, line: 517, baseType: !315, size: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3364, file: !3361, line: 518, baseType: !315, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3360, file: !3361, line: 520, baseType: !111, size: 32, offset: 320)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3360, file: !3361, line: 522, baseType: !3479, size: 64, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1639, line: 22, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1639, line: 22, size: 64, elements: !3482)
!3482 = !{!3483}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3481, file: !1639, line: 22, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1639, line: 15, baseType: !315)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3360, file: !3361, line: 524, baseType: !3486, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1634, line: 372, baseType: !3488)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1634, line: 372, size: 64, elements: !3489)
!3489 = !{!3490}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3488, file: !1634, line: 372, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1639, line: 16, baseType: !315)
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3360, file: !3361, line: 527, baseType: !3493, size: 64, offset: 512)
!3493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3360, file: !3361, line: 527, size: 64, elements: !3494)
!3494 = !{!3495, !3501}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3493, file: !3361, line: 528, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1639, line: 21, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1639, line: 21, size: 64, elements: !3498)
!3498 = !{!3499}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3497, file: !1639, line: 21, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1639, line: 14, baseType: !315)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3493, file: !3361, line: 529, baseType: !3480, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3360, file: !3361, line: 534, baseType: !3257, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3360, file: !3361, line: 535, baseType: !3257, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3360, file: !3361, line: 541, baseType: !3505, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3360, file: !3361, line: 545, baseType: !3507, size: 64, offset: 768)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3360, file: !3361, line: 549, baseType: !3509, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1634, line: 520, baseType: !3257)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3348, file: !104, line: 100, baseType: !3511, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!65, !3307, !315, !315, !65}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3308, file: !104, line: 134, baseType: !147, size: 64, offset: 960)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3308, file: !104, line: 135, baseType: !65, size: 32, offset: 1024)
!3516 = !DIDerivedType(tag: DW_TAG_member, scope: !3308, file: !104, line: 136, baseType: !3517, size: 128, offset: 1088)
!3517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3308, file: !104, line: 136, size: 128, elements: !3518)
!3518 = !{!3519, !3525}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3517, file: !104, line: 137, baseType: !3520, size: 128)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3521, line: 6, size: 128, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3520, file: !3521, line: 7, baseType: !418, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3520, file: !3521, line: 8, baseType: !418, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3517, file: !104, line: 138, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3517, file: !104, line: 138, elements: !3527)
!3527 = !{!3528, !3530}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3526, file: !104, line: 138, baseType: !3529)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3526, file: !104, line: 138, elements: !549)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3526, file: !104, line: 138, baseType: !3531)
!3531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3520, elements: !761)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3304, file: !112, line: 147, baseType: !147, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3262, file: !112, line: 161, baseType: !688, size: 128, align: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, scope: !3258, file: !112, line: 164, baseType: !3535, size: 32, offset: 384)
!3535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3258, file: !112, line: 164, size: 32, elements: !3536)
!3536 = !{!3537, !3538}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3535, file: !112, line: 169, baseType: !215, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3535, file: !112, line: 177, baseType: !7, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3258, file: !112, line: 181, baseType: !215, size: 32, offset: 416)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3254, file: !3241, line: 42, baseType: !415, size: 32, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3254, file: !3241, line: 43, baseType: !415, size: 32, offset: 96)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1311, file: !1312, line: 1340, baseType: !3543, size: 64, offset: 20672)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1312, line: 69, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1311, file: !1312, line: 1351, baseType: !65, size: 32, offset: 20736)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1311, file: !1312, line: 1352, baseType: !65, size: 32, offset: 20768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1311, file: !1312, line: 1354, baseType: !315, size: 64, offset: 20800)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1311, file: !1312, line: 1364, baseType: !418, size: 64, offset: 20864)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1311, file: !1312, line: 1365, baseType: !418, size: 64, offset: 20928)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1311, file: !1312, line: 1412, baseType: !315, size: 64, offset: 20992)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1311, file: !1312, line: 1453, baseType: !3552, size: 64, offset: 21056)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1312, line: 1453, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1311, file: !1312, line: 1457, baseType: !3555, size: 64, offset: 21120)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !128, line: 61, size: 576, elements: !3557)
!3557 = !{!3558, !3559, !3578, !3581, !3582, !3615, !3625}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3556, file: !128, line: 62, baseType: !127, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, scope: !3556, file: !128, line: 64, baseType: !3560, size: 192, offset: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3556, file: !128, line: 64, size: 192, elements: !3561)
!3561 = !{!3562, !3573}
!3562 = !DIDerivedType(tag: DW_TAG_member, scope: !3560, file: !128, line: 65, baseType: !3563, size: 192)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3560, file: !128, line: 65, size: 192, elements: !3564)
!3564 = !{!3565, !3572}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3563, file: !128, line: 66, baseType: !3566, size: 128)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3567, line: 50, size: 128, elements: !3568)
!3567 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3568 = !{!3569, !3570, !3571}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3566, file: !3567, line: 52, baseType: !315, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3566, file: !3567, line: 54, baseType: !7, size: 32, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3566, file: !3567, line: 55, baseType: !7, size: 32, offset: 96)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3563, file: !128, line: 67, baseType: !315, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, scope: !3560, file: !128, line: 70, baseType: !3574, size: 192)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3560, file: !128, line: 70, size: 192, elements: !3575)
!3575 = !{!3576, !3577}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3574, file: !128, line: 71, baseType: !688, size: 128, align: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3574, file: !128, line: 72, baseType: !315, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3556, file: !128, line: 76, baseType: !3579, size: 64, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !128, line: 76, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3556, file: !128, line: 77, baseType: !315, size: 64, offset: 320)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3556, file: !128, line: 79, baseType: !3583, size: 64, offset: 384)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3567, line: 25, size: 256, elements: !3585)
!3585 = !{!3586, !3592, !3596}
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !3567, line: 26, baseType: !3587, size: 128)
!3587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3584, file: !3567, line: 26, size: 128, elements: !3588)
!3588 = !{!3589, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3587, file: !3567, line: 27, baseType: !3590, size: 128)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !1916)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3587, file: !3567, line: 28, baseType: !3590, size: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3584, file: !3567, line: 31, baseType: !3593, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3595)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3567, line: 23, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !3567, line: 33, baseType: !3597, size: 64, offset: 192)
!3597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3584, file: !3567, line: 33, size: 64, elements: !3598)
!3598 = !{!3599, !3605, !3610}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3597, file: !3567, line: 38, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3597, file: !3567, line: 34, size: 64, elements: !3601)
!3601 = !{!3602, !3603, !3604}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3600, file: !3567, line: 35, baseType: !803, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3600, file: !3567, line: 36, baseType: !223, size: 8, offset: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3600, file: !3567, line: 37, baseType: !223, size: 8, offset: 40)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3597, file: !3567, line: 42, baseType: !3606, size: 16)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3597, file: !3567, line: 39, size: 16, elements: !3607)
!3607 = !{!3608, !3609}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3606, file: !3567, line: 40, baseType: !223, size: 8)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3606, file: !3567, line: 41, baseType: !223, size: 8, offset: 8)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3597, file: !3567, line: 46, baseType: !3611, size: 16)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3597, file: !3567, line: 43, size: 16, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3611, file: !3567, line: 44, baseType: !223, size: 8)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3611, file: !3567, line: 45, baseType: !223, size: 8, offset: 8)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3556, file: !128, line: 81, baseType: !3616, size: 64, offset: 448)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !128, line: 85, size: 384, elements: !3618)
!3618 = !{!3619, !3620, !3621, !3622, !3623, !3624}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3617, file: !128, line: 86, baseType: !3579, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3617, file: !128, line: 87, baseType: !315, size: 64, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3617, file: !128, line: 88, baseType: !315, size: 64, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3617, file: !128, line: 89, baseType: !315, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3617, file: !128, line: 90, baseType: !877, size: 8, offset: 256)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3617, file: !128, line: 92, baseType: !3616, size: 64, offset: 320)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3556, file: !128, line: 82, baseType: !7, size: 32, offset: 512)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1311, file: !1312, line: 1463, baseType: !3627, offset: 21184)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1312, line: 739, elements: !549)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1311, file: !1312, line: 1470, baseType: !688, size: 128, align: 64, offset: 21184)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1311, file: !1312, line: 1471, baseType: !733, size: 32, offset: 21312)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1311, file: !1312, line: 1472, baseType: !65, size: 32, offset: 21344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1311, file: !1312, line: 1474, baseType: !1310, size: 64, offset: 21376)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1311, file: !1312, line: 1475, baseType: !2202, size: 320, offset: 21440)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1311, file: !1312, line: 1478, baseType: !3634, size: 64, offset: 21760)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3636, line: 49, size: 512, elements: !3637)
!3636 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3637 = !{!3638, !3639, !3640, !3641, !3642, !3644, !3645, !3646, !3648}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3635, file: !3636, line: 50, baseType: !3634, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3635, file: !3636, line: 51, baseType: !147, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3635, file: !3636, line: 52, baseType: !315, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3635, file: !3636, line: 53, baseType: !315, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3635, file: !3636, line: 54, baseType: !3643, size: 64, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3635, file: !3636, line: 56, baseType: !7, size: 32, offset: 320)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3635, file: !3636, line: 58, baseType: !7, size: 32, offset: 352)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3635, file: !3636, line: 59, baseType: !3647, size: 64, offset: 384)
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !169, line: 159, baseType: !418)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3635, file: !3636, line: 60, baseType: !1714, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1311, file: !1312, line: 1482, baseType: !733, size: 32, offset: 21824)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1311, file: !1312, line: 1489, baseType: !147, size: 64, offset: 21888)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1311, file: !1312, line: 1504, baseType: !147, size: 64, offset: 21952)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1311, file: !1312, line: 1505, baseType: !419, size: 64, offset: 22016)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1311, file: !1312, line: 1506, baseType: !418, size: 64, offset: 22080)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1311, file: !1312, line: 1507, baseType: !419, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1311, file: !1312, line: 1508, baseType: !419, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1311, file: !1312, line: 1509, baseType: !419, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1311, file: !1312, line: 1510, baseType: !688, size: 128, align: 64, offset: 22208)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1311, file: !1312, line: 1511, baseType: !65, size: 32, offset: 22336)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1311, file: !1312, line: 1515, baseType: !2603, size: 64, offset: 22400)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1311, file: !1312, line: 1518, baseType: !2603, size: 64, offset: 22464)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1311, file: !1312, line: 1528, baseType: !688, size: 128, align: 64, offset: 22528)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1311, file: !1312, line: 1552, baseType: !3663, size: 35328, offset: 23040)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3664, line: 430, size: 35328, elements: !3665)
!3664 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3665 = !{!3666, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3695, !3696, !3697, !3698, !3699, !3700, !3703, !3704, !3705, !3706}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3663, file: !3664, line: 432, baseType: !3667, size: 192)
!3667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3668, size: 192, elements: !266)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3669, line: 16, size: 64, elements: !3670)
!3669 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3670 = !{!3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3668, file: !3669, line: 17, baseType: !233, size: 16)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3668, file: !3669, line: 18, baseType: !233, size: 16, offset: 16)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3668, file: !3669, line: 19, baseType: !233, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3668, file: !3669, line: 19, baseType: !233, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3668, file: !3669, line: 19, baseType: !233, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3668, file: !3669, line: 19, baseType: !233, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3668, file: !3669, line: 19, baseType: !233, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3668, file: !3669, line: 20, baseType: !233, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3668, file: !3669, line: 20, baseType: !233, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3668, file: !3669, line: 20, baseType: !233, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3668, file: !3669, line: 20, baseType: !233, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3668, file: !3669, line: 20, baseType: !233, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3668, file: !3669, line: 20, baseType: !233, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3663, file: !3664, line: 436, baseType: !315, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3663, file: !3664, line: 440, baseType: !235, size: 16, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3663, file: !3664, line: 441, baseType: !235, size: 16, offset: 272)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3663, file: !3664, line: 442, baseType: !235, size: 16, offset: 288)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3663, file: !3664, line: 443, baseType: !235, size: 16, offset: 304)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3663, file: !3664, line: 447, baseType: !315, size: 64, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3663, file: !3664, line: 448, baseType: !315, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3663, file: !3664, line: 459, baseType: !3692, size: 256, offset: 448)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3693, size: 256, elements: !742)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3664, line: 428, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3663, file: !3664, line: 461, baseType: !315, size: 64, offset: 704)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3663, file: !3664, line: 463, baseType: !315, size: 64, offset: 768)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3663, file: !3664, line: 465, baseType: !315, size: 64, offset: 832)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3663, file: !3664, line: 466, baseType: !315, size: 64, offset: 896)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3663, file: !3664, line: 467, baseType: !315, size: 64, offset: 960)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3663, file: !3664, line: 473, baseType: !3701, size: 64, offset: 1024)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3664, line: 10, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3663, file: !3664, line: 480, baseType: !315, size: 64, offset: 1088)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3663, file: !3664, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3663, file: !3664, line: 491, baseType: !414, size: 32, offset: 1184)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3663, file: !3664, line: 501, baseType: !3707, size: 33792, offset: 1536)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3708, line: 448, size: 33792, elements: !3709)
!3708 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3709 = !{!3710, !3711, !3712, !3873, !3874, !3880, !3881}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3707, file: !3708, line: 461, baseType: !7, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3707, file: !3708, line: 468, baseType: !315, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3707, file: !3708, line: 476, baseType: !3713, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3708, line: 356, size: 33280, align: 512, elements: !3715)
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3714, file: !3708, line: 358, baseType: !7, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3714, file: !3708, line: 361, baseType: !7, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3714, file: !3708, line: 364, baseType: !418, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3714, file: !3708, line: 367, baseType: !418, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3714, file: !3708, line: 370, baseType: !418, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3714, file: !3708, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3714, file: !3708, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3714, file: !3708, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3714, file: !3708, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3714, file: !3708, line: 397, baseType: !3726, size: 32768, offset: 512)
!3726 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3708, line: 348, size: 32768, elements: !3727)
!3727 = !{!3728, !3743, !3780, !3857, !3869}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3726, file: !3708, line: 349, baseType: !3729, size: 896)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3708, line: 12, size: 896, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3742}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3729, file: !3708, line: 13, baseType: !414, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3729, file: !3708, line: 14, baseType: !414, size: 32, offset: 32)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3729, file: !3708, line: 15, baseType: !414, size: 32, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3729, file: !3708, line: 16, baseType: !414, size: 32, offset: 96)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3729, file: !3708, line: 17, baseType: !414, size: 32, offset: 128)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3729, file: !3708, line: 18, baseType: !414, size: 32, offset: 160)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3729, file: !3708, line: 19, baseType: !414, size: 32, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3729, file: !3708, line: 22, baseType: !3739, size: 640, offset: 224)
!3739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 640, elements: !3740)
!3740 = !{!3741}
!3741 = !DISubrange(count: 20)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3729, file: !3708, line: 25, baseType: !414, size: 32, offset: 864)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3726, file: !3708, line: 350, baseType: !3744, size: 4096, align: 128)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3708, line: 34, size: 4096, align: 128, elements: !3745)
!3745 = !{!3746, !3747, !3748, !3749, !3750, !3765, !3766, !3767, !3769, !3771, !3775}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3744, file: !3708, line: 35, baseType: !233, size: 16)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3744, file: !3708, line: 36, baseType: !233, size: 16, offset: 16)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3744, file: !3708, line: 37, baseType: !233, size: 16, offset: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3744, file: !3708, line: 38, baseType: !233, size: 16, offset: 48)
!3750 = !DIDerivedType(tag: DW_TAG_member, scope: !3744, file: !3708, line: 39, baseType: !3751, size: 128, offset: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3744, file: !3708, line: 39, size: 128, elements: !3752)
!3752 = !{!3753, !3758}
!3753 = !DIDerivedType(tag: DW_TAG_member, scope: !3751, file: !3708, line: 40, baseType: !3754, size: 128)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3751, file: !3708, line: 40, size: 128, elements: !3755)
!3755 = !{!3756, !3757}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3754, file: !3708, line: 41, baseType: !418, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3754, file: !3708, line: 42, baseType: !418, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !3751, file: !3708, line: 44, baseType: !3759, size: 128)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3751, file: !3708, line: 44, size: 128, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3764}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3759, file: !3708, line: 45, baseType: !414, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3759, file: !3708, line: 46, baseType: !414, size: 32, offset: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3759, file: !3708, line: 47, baseType: !414, size: 32, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3759, file: !3708, line: 48, baseType: !414, size: 32, offset: 96)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3744, file: !3708, line: 51, baseType: !414, size: 32, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3744, file: !3708, line: 52, baseType: !414, size: 32, offset: 224)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3744, file: !3708, line: 55, baseType: !3768, size: 1024, offset: 256)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 1024, elements: !427)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3744, file: !3708, line: 58, baseType: !3770, size: 2048, offset: 1280)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 2048, elements: !270)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3744, file: !3708, line: 60, baseType: !3772, size: 384, offset: 3328)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 384, elements: !3773)
!3773 = !{!3774}
!3774 = !DISubrange(count: 12)
!3775 = !DIDerivedType(tag: DW_TAG_member, scope: !3744, file: !3708, line: 62, baseType: !3776, size: 384, offset: 3712)
!3776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3744, file: !3708, line: 62, size: 384, elements: !3777)
!3777 = !{!3778, !3779}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3776, file: !3708, line: 63, baseType: !3772, size: 384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3776, file: !3708, line: 64, baseType: !3772, size: 384)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3726, file: !3708, line: 351, baseType: !3781, size: 1088)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3708, line: 79, size: 1088, elements: !3782)
!3782 = !{!3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3856}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3781, file: !3708, line: 80, baseType: !414, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3781, file: !3708, line: 81, baseType: !414, size: 32, offset: 32)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3781, file: !3708, line: 82, baseType: !414, size: 32, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3781, file: !3708, line: 83, baseType: !414, size: 32, offset: 96)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3781, file: !3708, line: 84, baseType: !414, size: 32, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3781, file: !3708, line: 85, baseType: !414, size: 32, offset: 160)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3781, file: !3708, line: 86, baseType: !414, size: 32, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3781, file: !3708, line: 88, baseType: !3739, size: 640, offset: 224)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3781, file: !3708, line: 89, baseType: !223, size: 8, offset: 864)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3781, file: !3708, line: 90, baseType: !223, size: 8, offset: 872)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3781, file: !3708, line: 91, baseType: !223, size: 8, offset: 880)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3781, file: !3708, line: 92, baseType: !223, size: 8, offset: 888)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3781, file: !3708, line: 93, baseType: !223, size: 8, offset: 896)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3781, file: !3708, line: 94, baseType: !223, size: 8, offset: 904)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3781, file: !3708, line: 95, baseType: !3798, size: 64, offset: 960)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3800, line: 11, size: 128, elements: !3801)
!3800 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3801 = !{!3802, !3803}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3799, file: !3800, line: 12, baseType: !301, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3799, file: !3800, line: 13, baseType: !3804, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3806, line: 103, size: 1344, elements: !3807)
!3806 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3836, !3837, !3838}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3805, file: !3806, line: 109, baseType: !315, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3805, file: !3806, line: 110, baseType: !315, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3805, file: !3806, line: 111, baseType: !315, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3805, file: !3806, line: 112, baseType: !315, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3805, file: !3806, line: 113, baseType: !315, size: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3805, file: !3806, line: 114, baseType: !315, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3805, file: !3806, line: 117, baseType: !315, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3805, file: !3806, line: 118, baseType: !315, size: 64, offset: 448)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3805, file: !3806, line: 119, baseType: !315, size: 64, offset: 512)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3805, file: !3806, line: 120, baseType: !315, size: 64, offset: 576)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3805, file: !3806, line: 121, baseType: !315, size: 64, offset: 640)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3805, file: !3806, line: 122, baseType: !315, size: 64, offset: 704)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3805, file: !3806, line: 123, baseType: !315, size: 64, offset: 768)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3805, file: !3806, line: 124, baseType: !315, size: 64, offset: 832)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3805, file: !3806, line: 125, baseType: !315, size: 64, offset: 896)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3805, file: !3806, line: 139, baseType: !315, size: 64, offset: 960)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3805, file: !3806, line: 142, baseType: !315, size: 64, offset: 1024)
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !3806, line: 144, baseType: !3826, size: 64, offset: 1088)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3805, file: !3806, line: 144, size: 64, elements: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3826, file: !3806, line: 146, baseType: !233, size: 16)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3826, file: !3806, line: 148, baseType: !418, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3826, file: !3806, line: 150, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3806, line: 59, size: 64, elements: !3832)
!3832 = !{!3833, !3834, !3835}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3831, file: !3806, line: 61, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3831, file: !3806, line: 63, baseType: !418, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3831, file: !3806, line: 65, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3805, file: !3806, line: 153, baseType: !315, size: 64, offset: 1152)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3805, file: !3806, line: 154, baseType: !315, size: 64, offset: 1216)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !3806, line: 156, baseType: !3839, size: 64, offset: 1280)
!3839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3805, file: !3806, line: 156, size: 64, elements: !3840)
!3840 = !{!3841, !3842, !3843}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3839, file: !3806, line: 158, baseType: !233, size: 16)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3839, file: !3806, line: 160, baseType: !418, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3839, file: !3806, line: 162, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3806, line: 69, size: 64, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3844, file: !3806, line: 71, baseType: !418, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3844, file: !3806, line: 73, baseType: !418, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3844, file: !3806, line: 75, baseType: !418, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3844, file: !3806, line: 77, baseType: !418, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3844, file: !3806, line: 80, baseType: !418, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3844, file: !3806, line: 83, baseType: !418, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3844, file: !3806, line: 86, baseType: !418, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3844, file: !3806, line: 88, baseType: !418, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3844, file: !3806, line: 93, baseType: !418, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3844, file: !3806, line: 100, baseType: !418, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3781, file: !3708, line: 96, baseType: !414, size: 32, offset: 1024)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3726, file: !3708, line: 352, baseType: !3858, size: 4608, align: 512)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3708, line: 333, size: 4608, align: 512, elements: !3859)
!3859 = !{!3860, !3861, !3868}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3858, file: !3708, line: 334, baseType: !3744, size: 4096, align: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3858, file: !3708, line: 335, baseType: !3862, size: 512, offset: 4096)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3708, line: 312, size: 512, elements: !3863)
!3863 = !{!3864, !3865, !3866}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3862, file: !3708, line: 313, baseType: !418, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3862, file: !3708, line: 314, baseType: !418, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3862, file: !3708, line: 315, baseType: !3867, size: 384, offset: 128)
!3867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !864)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3858, file: !3708, line: 336, baseType: !2597, offset: 4608)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3726, file: !3708, line: 353, baseType: !3870, size: 32768)
!3870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 32768, elements: !3871)
!3871 = !{!3872}
!3872 = !DISubrange(count: 4096)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3707, file: !3708, line: 484, baseType: !3713, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3707, file: !3708, line: 491, baseType: !3875, size: 128, offset: 256)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3708, line: 404, size: 128, elements: !3876)
!3876 = !{!3877, !3878, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3875, file: !3708, line: 424, baseType: !418, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3875, file: !3708, line: 432, baseType: !7, size: 32, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3875, file: !3708, line: 440, baseType: !7, size: 32, offset: 96)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3707, file: !3708, line: 498, baseType: !3875, size: 128, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3707, file: !3708, line: 508, baseType: !3714, size: 33280, align: 512, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1292, file: !1293, line: 16, baseType: !746, size: 192, offset: 512)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1292, file: !1293, line: 17, baseType: !215, size: 32, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !497, file: !14, line: 1240, baseType: !147, size: 64, offset: 6912)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !497, file: !14, line: 1243, baseType: !414, size: 32, offset: 6976)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !497, file: !14, line: 1245, baseType: !834, size: 64, offset: 7040)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !497, file: !14, line: 1246, baseType: !834, size: 64, offset: 7104)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !497, file: !14, line: 1248, baseType: !415, size: 32, offset: 7168)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !497, file: !14, line: 1249, baseType: !3890, size: 64, offset: 7232)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !497, file: !14, line: 1252, baseType: !3893, size: 256, offset: 7296)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 256, elements: !427)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !497, file: !14, line: 1253, baseType: !3895, size: 128, offset: 7552)
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3896, line: 21, baseType: !3897)
!3896 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3896, line: 19, size: 128, elements: !3898)
!3898 = !{!3899}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3897, file: !3896, line: 20, baseType: !3900, size: 128)
!3900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !1916)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !497, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !497, file: !14, line: 1261, baseType: !630, size: 256, offset: 7744)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !497, file: !14, line: 1267, baseType: !154, size: 64, offset: 8000)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !497, file: !14, line: 1269, baseType: !443, size: 64, offset: 8064)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !497, file: !14, line: 1271, baseType: !3906, size: 448, offset: 8128)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1071, line: 63, size: 448, elements: !3907)
!3907 = !{!3908, !3913, !3914, !3915, !3916, !3917, !3918}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3906, file: !1071, line: 64, baseType: !3909, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!315, !3912, !1069}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3906, file: !1071, line: 66, baseType: !3909, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3906, file: !1071, line: 69, baseType: !301, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3906, file: !1071, line: 70, baseType: !65, size: 32, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3906, file: !1071, line: 71, baseType: !7, size: 32, offset: 224)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3906, file: !1071, line: 74, baseType: !168, size: 128, offset: 256)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3906, file: !1071, line: 85, baseType: !3919, size: 64, offset: 384)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !497, file: !14, line: 1274, baseType: !634, size: 64, offset: 8576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !497, file: !14, line: 1280, baseType: !634, size: 64, offset: 8640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !497, file: !14, line: 1283, baseType: !65, size: 32, offset: 8704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !497, file: !14, line: 1286, baseType: !1003, size: 32, offset: 8736)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !497, file: !14, line: 1289, baseType: !3925, size: 64, offset: 8768)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1754, line: 18, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !497, file: !14, line: 1290, baseType: !537, size: 64, offset: 8832)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !497, file: !14, line: 1297, baseType: !960, size: 64, offset: 8896)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !497, file: !14, line: 1304, baseType: !3930, size: 64, offset: 8960)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3931, line: 49, size: 64, elements: !3932)
!3931 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3932 = !{!3933}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3930, file: !3931, line: 50, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3931, line: 41, size: 512, align: 512, elements: !3936)
!3936 = !{!3937, !3938, !3943}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3935, file: !3931, line: 43, baseType: !195, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3935, file: !3931, line: 45, baseType: !3939, size: 192, offset: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3931, line: 29, size: 192, elements: !3940)
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3939, file: !3931, line: 30, baseType: !168, size: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3939, file: !3931, line: 32, baseType: !301, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3935, file: !3931, line: 46, baseType: !301, size: 64, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !497, file: !14, line: 1305, baseType: !3930, size: 64, offset: 9024)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !497, file: !14, line: 1306, baseType: !688, size: 128, align: 64, offset: 9088)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !497, file: !14, line: 1307, baseType: !1753, size: 256, offset: 9216)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !497, file: !14, line: 1309, baseType: !630, size: 256, offset: 9472)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !497, file: !14, line: 1314, baseType: !65, size: 32, offset: 9728)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !497, file: !14, line: 1317, baseType: !195, size: 32, align: 512, offset: 10240)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !497, file: !14, line: 1318, baseType: !168, size: 128, offset: 10304)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !497, file: !14, line: 1320, baseType: !195, size: 32, offset: 10432)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !497, file: !14, line: 1321, baseType: !168, size: 128, offset: 10496)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !491, file: !492, line: 73, baseType: !65, size: 32, offset: 128)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !491, file: !492, line: 74, baseType: !3955, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !785, line: 42, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !445, file: !382, line: 141, baseType: !3959, size: 64, offset: 704)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!65, !1132, !877}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !445, file: !382, line: 142, baseType: !3963, size: 64, offset: 768)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!380, !380, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !381, file: !382, line: 96, baseType: !496, size: 64, offset: 832)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !381, file: !382, line: 97, baseType: !315, size: 64, offset: 896)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !381, file: !382, line: 98, baseType: !147, size: 64, offset: 960)
!3971 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !382, line: 100, baseType: !3972, size: 128, offset: 1024)
!3972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 100, size: 128, elements: !3973)
!3973 = !{!3974, !3975}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3972, file: !382, line: 101, baseType: !168, size: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3972, file: !382, line: 102, baseType: !3976, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !381, file: !382, line: 104, baseType: !168, size: 128, offset: 1152)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !381, file: !382, line: 105, baseType: !168, size: 128, offset: 1280)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !381, file: !382, line: 113, baseType: !3980, size: 128, offset: 1408)
!3980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 109, size: 128, elements: !3981)
!3981 = !{!3982, !3983, !3984}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3980, file: !382, line: 110, baseType: !541, size: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3980, file: !382, line: 111, baseType: !396, size: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3980, file: !382, line: 112, baseType: !688, size: 128, align: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !374, file: !14, line: 1968, baseType: !3986, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!154, !380, !345, !3989}
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3991, line: 10, size: 128, elements: !3992)
!3991 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3992 = !{!3993, !3994}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3990, file: !3991, line: 11, baseType: !2482, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3990, file: !3991, line: 12, baseType: !147, size: 64, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !374, file: !14, line: 1969, baseType: !3996, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!65, !3955, !345, !65}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !374, file: !14, line: 1970, baseType: !4000, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!368, !345, !65, !877}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !374, file: !14, line: 1972, baseType: !4004, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!65, !380, !265, !65}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !374, file: !14, line: 1974, baseType: !4008, size: 64, offset: 320)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!65, !3955, !345, !380, !307, !877}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !374, file: !14, line: 1976, baseType: !4012, size: 64, offset: 384)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!65, !380, !345, !380}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !374, file: !14, line: 1977, baseType: !4016, size: 64, offset: 448)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!65, !345, !380}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !374, file: !14, line: 1978, baseType: !4020, size: 64, offset: 512)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!65, !3955, !345, !380, !154}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !374, file: !14, line: 1980, baseType: !4024, size: 64, offset: 576)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!65, !3955, !345, !380, !307}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !374, file: !14, line: 1982, baseType: !4016, size: 64, offset: 640)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !374, file: !14, line: 1983, baseType: !4029, size: 64, offset: 704)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!65, !3955, !345, !380, !307, !501}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !374, file: !14, line: 1985, baseType: !4033, size: 64, offset: 768)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!65, !3955, !345, !380, !345, !380, !7}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !374, file: !14, line: 1987, baseType: !4037, size: 64, offset: 832)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!65, !3955, !380, !4040}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4055, !4064, !4065, !4070, !4071, !4072}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4041, file: !14, line: 227, baseType: !7, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4041, file: !14, line: 228, baseType: !307, size: 16, offset: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !14, line: 241, baseType: !4046, size: 32, offset: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4041, file: !14, line: 241, size: 32, elements: !4047)
!4047 = !{!4048, !4049}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4046, file: !14, line: 242, baseType: !351, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4046, file: !14, line: 243, baseType: !4050, size: 32)
!4050 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4051, line: 16, baseType: !4052)
!4051 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4051, line: 14, size: 32, elements: !4053)
!4053 = !{!4054}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4052, file: !4051, line: 15, baseType: !356, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, scope: !4041, file: !14, line: 245, baseType: !4056, size: 32, offset: 96)
!4056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4041, file: !14, line: 245, size: 32, elements: !4057)
!4057 = !{!4058, !4059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4056, file: !14, line: 246, baseType: !360, size: 32)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4056, file: !14, line: 247, baseType: !4060, size: 32)
!4060 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4051, line: 20, baseType: !4061)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4051, line: 18, size: 32, elements: !4062)
!4062 = !{!4063}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4061, file: !4051, line: 19, baseType: !364, size: 32)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4041, file: !14, line: 249, baseType: !506, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4041, file: !14, line: 250, baseType: !4066, size: 128, offset: 192)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !835, line: 13, size: 128, elements: !4067)
!4067 = !{!4068, !4069}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4066, file: !835, line: 14, baseType: !834, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4066, file: !835, line: 15, baseType: !301, size: 64, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4041, file: !14, line: 251, baseType: !4066, size: 128, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4041, file: !14, line: 252, baseType: !4066, size: 128, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4041, file: !14, line: 259, baseType: !1625, size: 64, offset: 576)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !374, file: !14, line: 1988, baseType: !4074, size: 64, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!65, !3955, !1132, !4077, !414, !7}
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4079, line: 22, size: 1280, elements: !4080)
!4079 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4080 = !{!4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4078, file: !4079, line: 23, baseType: !414, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4078, file: !4079, line: 24, baseType: !307, size: 16, offset: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4078, file: !4079, line: 25, baseType: !7, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4078, file: !4079, line: 26, baseType: !842, size: 32, offset: 96)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4078, file: !4079, line: 27, baseType: !418, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4078, file: !4079, line: 28, baseType: !418, size: 64, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4078, file: !4079, line: 41, baseType: !418, size: 64, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4078, file: !4079, line: 42, baseType: !501, size: 32, offset: 320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4078, file: !4079, line: 43, baseType: !501, size: 32, offset: 352)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4078, file: !4079, line: 44, baseType: !351, size: 32, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4078, file: !4079, line: 45, baseType: !360, size: 32, offset: 416)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4078, file: !4079, line: 46, baseType: !506, size: 64, offset: 448)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4078, file: !4079, line: 47, baseType: !4066, size: 128, offset: 512)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4078, file: !4079, line: 48, baseType: !4066, size: 128, offset: 640)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4078, file: !4079, line: 49, baseType: !4066, size: 128, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4078, file: !4079, line: 50, baseType: !4066, size: 128, offset: 896)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4078, file: !4079, line: 51, baseType: !418, size: 64, offset: 1024)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4078, file: !4079, line: 52, baseType: !418, size: 64, offset: 1088)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4078, file: !4079, line: 53, baseType: !414, size: 32, offset: 1152)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4078, file: !4079, line: 54, baseType: !414, size: 32, offset: 1184)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4078, file: !4079, line: 55, baseType: !418, size: 64, offset: 1216)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !374, file: !14, line: 1990, baseType: !4103, size: 64, offset: 960)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!297, !380, !265, !312}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !374, file: !14, line: 1991, baseType: !4107, size: 64, offset: 1024)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!65, !345, !4110, !418, !418}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !374, file: !14, line: 1993, baseType: !4113, size: 64, offset: 1088)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!65, !345, !65}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !374, file: !14, line: 1994, baseType: !4117, size: 64, offset: 1152)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!65, !345, !380, !1625, !7, !307}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !374, file: !14, line: 1997, baseType: !4121, size: 64, offset: 1216)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!65, !3955, !345, !1625, !307}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !374, file: !14, line: 1999, baseType: !4125, size: 64, offset: 1280)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!368, !3955, !380, !65}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !374, file: !14, line: 2001, baseType: !4129, size: 64, offset: 1344)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!65, !3955, !380, !368, !65}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !374, file: !14, line: 2003, baseType: !4133, size: 64, offset: 1408)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!65, !3955, !380, !4136}
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !374, file: !14, line: 2005, baseType: !4139, size: 64, offset: 1472)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!65, !380, !4136}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !374, file: !14, line: 2006, baseType: !4143, size: 64, offset: 1536)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!4146, !345}
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4148)
!4148 = !{!4149, !4156}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4147, file: !14, line: 3193, baseType: !4150, size: 128)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !4151, line: 296, size: 128, elements: !4152)
!4151 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!4152 = !{!4153, !4154, !4155}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !4150, file: !4151, line: 297, baseType: !195, size: 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !4150, file: !4151, line: 299, baseType: !1074, size: 32, offset: 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !4150, file: !4151, line: 300, baseType: !147, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4147, file: !14, line: 3194, baseType: !414, size: 32, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !346, file: !14, line: 655, baseType: !496, size: 64, offset: 448)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !346, file: !14, line: 656, baseType: !341, size: 64, offset: 512)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !346, file: !14, line: 659, baseType: !147, size: 64, offset: 576)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !346, file: !14, line: 663, baseType: !315, size: 64, offset: 640)
!4161 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !14, line: 671, baseType: !4162, size: 32, offset: 704)
!4162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !14, line: 671, size: 32, elements: !4163)
!4163 = !{!4164, !4166}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4162, file: !14, line: 672, baseType: !4165, size: 32)
!4165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4162, file: !14, line: 673, baseType: !7, size: 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !346, file: !14, line: 675, baseType: !501, size: 32, offset: 736)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !346, file: !14, line: 676, baseType: !506, size: 64, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !346, file: !14, line: 677, baseType: !4066, size: 128, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !346, file: !14, line: 678, baseType: !4066, size: 128, offset: 960)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !346, file: !14, line: 679, baseType: !4066, size: 128, offset: 1088)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !346, file: !14, line: 680, baseType: !195, size: 32, offset: 1216)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !346, file: !14, line: 681, baseType: !235, size: 16, offset: 1248)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !346, file: !14, line: 682, baseType: !223, size: 8, offset: 1264)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !346, file: !14, line: 683, baseType: !223, size: 8, offset: 1272)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !346, file: !14, line: 684, baseType: !1205, size: 64, offset: 1280)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !346, file: !14, line: 691, baseType: !315, size: 64, offset: 1344)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !346, file: !14, line: 692, baseType: !818, size: 320, offset: 1408)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !346, file: !14, line: 694, baseType: !315, size: 64, offset: 1728)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !346, file: !14, line: 695, baseType: !315, size: 64, offset: 1792)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !346, file: !14, line: 697, baseType: !541, size: 128, offset: 1856)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !346, file: !14, line: 698, baseType: !168, size: 128, offset: 1984)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !346, file: !14, line: 707, baseType: !168, size: 128, offset: 2112)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !346, file: !14, line: 708, baseType: !168, size: 128, offset: 2240)
!4185 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !14, line: 709, baseType: !4186, size: 128, offset: 2368)
!4186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !14, line: 709, size: 128, elements: !4187)
!4187 = !{!4188, !4189}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4186, file: !14, line: 710, baseType: !537, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4186, file: !14, line: 711, baseType: !688, size: 128, align: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !346, file: !14, line: 713, baseType: !636, size: 64, offset: 2496)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !346, file: !14, line: 714, baseType: !636, size: 64, offset: 2560)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !346, file: !14, line: 715, baseType: !215, size: 32, offset: 2624)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !346, file: !14, line: 716, baseType: !215, size: 32, offset: 2656)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !346, file: !14, line: 717, baseType: !215, size: 32, offset: 2688)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !346, file: !14, line: 719, baseType: !215, size: 32, offset: 2720)
!4196 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !14, line: 721, baseType: !4197, size: 64, offset: 2752)
!4197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !14, line: 721, size: 64, elements: !4198)
!4198 = !{!4199, !4200}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4197, file: !14, line: 722, baseType: !158, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4197, file: !14, line: 723, baseType: !568, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !346, file: !14, line: 725, baseType: !4202, size: 64, offset: 2816)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !346, file: !14, line: 726, baseType: !342, size: 1536, align: 64, offset: 2880)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !346, file: !14, line: 727, baseType: !168, size: 128, offset: 4416)
!4206 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !14, line: 728, baseType: !4207, size: 64, offset: 4544)
!4207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !14, line: 728, size: 64, elements: !4208)
!4208 = !{!4209, !4210, !4211, !4212}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4207, file: !14, line: 729, baseType: !3251, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4207, file: !14, line: 730, baseType: !2525, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4207, file: !14, line: 731, baseType: !265, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4207, file: !14, line: 732, baseType: !7, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !346, file: !14, line: 735, baseType: !415, size: 32, offset: 4608)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !346, file: !14, line: 738, baseType: !415, size: 32, offset: 4640)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !346, file: !14, line: 739, baseType: !3890, size: 64, offset: 4672)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !346, file: !14, line: 750, baseType: !147, size: 64, offset: 4736)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !342, file: !14, line: 474, baseType: !4150, size: 128, offset: 64)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !342, file: !14, line: 475, baseType: !818, size: 320, offset: 192)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !342, file: !14, line: 476, baseType: !1074, size: 32, offset: 512)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !342, file: !14, line: 477, baseType: !215, size: 32, offset: 544)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !342, file: !14, line: 482, baseType: !1481, size: 128, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !342, file: !14, line: 483, baseType: !315, size: 64, offset: 704)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !342, file: !14, line: 484, baseType: !315, size: 64, offset: 768)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !342, file: !14, line: 485, baseType: !4225, size: 64, offset: 832)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4227)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4228)
!4228 = !{!4229, !4233, !4303, !4307, !4311, !4317, !4321, !4325, !4330, !4334, !4338, !4342, !4370, !4374, !4378, !4382, !4387, !4391, !4398, !4402}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4227, file: !14, line: 405, baseType: !4230, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!65, !3257, !580}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4227, file: !14, line: 406, baseType: !4234, size: 64, offset: 64)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!65, !1625, !4237}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !112, line: 293, size: 1536, elements: !4239)
!4239 = !{!4240, !4270, !4284}
!4240 = !DIDerivedType(tag: DW_TAG_member, scope: !4238, file: !112, line: 295, baseType: !4241, size: 512)
!4241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4238, file: !112, line: 295, size: 512, elements: !4242)
!4242 = !{!4243, !4269}
!4243 = !DIDerivedType(tag: DW_TAG_member, scope: !4241, file: !112, line: 296, baseType: !4244, size: 448)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4241, file: !112, line: 296, size: 448, elements: !4245)
!4245 = !{!4246, !4247, !4256, !4257, !4258, !4267, !4268}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4244, file: !112, line: 298, baseType: !315, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, scope: !4244, file: !112, line: 299, baseType: !4248, size: 128, offset: 64)
!4248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4244, file: !112, line: 299, size: 128, elements: !4249)
!4249 = !{!4250, !4251}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4248, file: !112, line: 300, baseType: !168, size: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, scope: !4248, file: !112, line: 302, baseType: !4252, size: 128)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4248, file: !112, line: 302, size: 128, elements: !4253)
!4253 = !{!4254, !4255}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4252, file: !112, line: 303, baseType: !147, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4252, file: !112, line: 305, baseType: !7, size: 32, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4244, file: !112, line: 310, baseType: !341, size: 64, offset: 192)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4244, file: !112, line: 311, baseType: !315, size: 64, offset: 256)
!4258 = !DIDerivedType(tag: DW_TAG_member, scope: !4244, file: !112, line: 312, baseType: !4259, size: 64, offset: 320)
!4259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4244, file: !112, line: 312, size: 64, elements: !4260)
!4260 = !{!4261, !4262}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4259, file: !112, line: 313, baseType: !147, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4259, file: !112, line: 314, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !112, line: 257, baseType: !4264)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 255, size: 64, elements: !4265)
!4265 = !{!4266}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4264, file: !112, line: 256, baseType: !315, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4244, file: !112, line: 316, baseType: !215, size: 32, offset: 384)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4244, file: !112, line: 317, baseType: !215, size: 32, offset: 416)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4241, file: !112, line: 323, baseType: !3258, size: 512, align: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, scope: !4238, file: !112, line: 325, baseType: !4271, size: 512, offset: 512)
!4271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4238, file: !112, line: 325, size: 512, elements: !4272)
!4272 = !{!4273, !4283}
!4273 = !DIDerivedType(tag: DW_TAG_member, scope: !4271, file: !112, line: 326, baseType: !4274, size: 320)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4271, file: !112, line: 326, size: 320, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4279, !4280, !4281, !4282}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4274, file: !112, line: 327, baseType: !315, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4274, file: !112, line: 328, baseType: !315, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4274, file: !112, line: 329, baseType: !315, size: 64, offset: 128)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4274, file: !112, line: 331, baseType: !215, size: 32, offset: 192)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4274, file: !112, line: 332, baseType: !215, size: 32, offset: 224)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4274, file: !112, line: 333, baseType: !215, size: 32, offset: 256)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4274, file: !112, line: 335, baseType: !7, size: 32, offset: 288)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4271, file: !112, line: 339, baseType: !3258, size: 512, align: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, scope: !4238, file: !112, line: 341, baseType: !4285, size: 512, offset: 1024)
!4285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4238, file: !112, line: 341, size: 512, elements: !4286)
!4286 = !{!4287, !4296, !4302}
!4287 = !DIDerivedType(tag: DW_TAG_member, scope: !4285, file: !112, line: 342, baseType: !4288, size: 384)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !112, line: 342, size: 384, elements: !4289)
!4289 = !{!4290, !4291, !4292, !4293, !4294, !4295}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4288, file: !112, line: 343, baseType: !315, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4288, file: !112, line: 344, baseType: !315, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4288, file: !112, line: 346, baseType: !147, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4288, file: !112, line: 347, baseType: !147, size: 64, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4288, file: !112, line: 348, baseType: !147, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4288, file: !112, line: 349, baseType: !147, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_member, scope: !4285, file: !112, line: 352, baseType: !4297, size: 256)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4285, file: !112, line: 352, size: 256, elements: !4298)
!4298 = !{!4299, !4300, !4301}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4297, file: !112, line: 353, baseType: !315, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4297, file: !112, line: 354, baseType: !315, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4297, file: !112, line: 356, baseType: !168, size: 128, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4285, file: !112, line: 359, baseType: !3258, size: 512, align: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4227, file: !14, line: 409, baseType: !4304, size: 64, offset: 128)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!65, !341, !580}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4227, file: !14, line: 412, baseType: !4308, size: 64, offset: 192)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!877, !341, !4237}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4227, file: !14, line: 414, baseType: !4312, size: 64, offset: 256)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{null, !4315}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4227, file: !14, line: 416, baseType: !4318, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!65, !1625, !341, !506, !7, !3643, !2834}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4227, file: !14, line: 419, baseType: !4322, size: 64, offset: 384)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!65, !1625, !341, !506, !7, !7, !3257, !147}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4227, file: !14, line: 424, baseType: !4326, size: 64, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!4329, !341, !4329}
!4329 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !169, line: 131, baseType: !418)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4227, file: !14, line: 425, baseType: !4331, size: 64, offset: 512)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{null, !4237, !312, !312}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4227, file: !14, line: 426, baseType: !4335, size: 64, offset: 576)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!877, !4237, !1074}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4227, file: !14, line: 427, baseType: !4339, size: 64, offset: 640)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !4237}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4227, file: !14, line: 428, baseType: !4343, size: 64, offset: 704)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!297, !4346, !4368}
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4355, !4356, !4357, !4358}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4347, file: !14, line: 374, baseType: !1625, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4347, file: !14, line: 375, baseType: !506, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4347, file: !14, line: 376, baseType: !4352, size: 64, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{null, !4346, !301}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4347, file: !14, line: 377, baseType: !147, size: 64, offset: 192)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4347, file: !14, line: 378, baseType: !65, size: 32, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4347, file: !14, line: 379, baseType: !233, size: 16, offset: 288)
!4358 = !DIDerivedType(tag: DW_TAG_member, scope: !4347, file: !14, line: 380, baseType: !4359, size: 64, offset: 320)
!4359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4347, file: !14, line: 380, size: 64, elements: !4360)
!4360 = !{!4361, !4364}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4359, file: !14, line: 386, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4359, file: !14, line: 395, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!297, !147}
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4227, file: !14, line: 433, baseType: !4371, size: 64, offset: 768)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!65, !341, !4237, !4237, !134}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4227, file: !14, line: 435, baseType: !4375, size: 64, offset: 832)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!65, !4237}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4227, file: !14, line: 436, baseType: !4379, size: 64, offset: 896)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!877, !4237, !312, !312}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4227, file: !14, line: 438, baseType: !4383, size: 64, offset: 960)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !4237, !4386, !4386}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4227, file: !14, line: 439, baseType: !4388, size: 64, offset: 1024)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!65, !341, !3257}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4227, file: !14, line: 442, baseType: !4392, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!65, !4395, !1625, !4397}
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4227, file: !14, line: 444, baseType: !4399, size: 64, offset: 1152)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{null, !1625}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4227, file: !14, line: 445, baseType: !4403, size: 64, offset: 1216)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!65, !4346, !4368}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !14, line: 486, baseType: !315, size: 64, offset: 896)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !342, file: !14, line: 487, baseType: !818, size: 320, offset: 960)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !342, file: !14, line: 488, baseType: !1003, size: 32, offset: 1280)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !342, file: !14, line: 489, baseType: !195, size: 32, offset: 1312)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !342, file: !14, line: 490, baseType: !168, size: 128, offset: 1344)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !342, file: !14, line: 491, baseType: !147, size: 64, offset: 1472)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !332, file: !291, line: 180, baseType: !4413, size: 64, offset: 320)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!297, !1625, !188, !331, !265, !506, !312}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !332, file: !291, line: 182, baseType: !4413, size: 64, offset: 384)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !332, file: !291, line: 184, baseType: !4418, size: 64, offset: 448)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!65, !1625, !188, !331, !3367}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !320, file: !291, line: 90, baseType: !4422, size: 64, offset: 192)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !320, file: !291, line: 91, baseType: !4424, size: 64, offset: 256)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !281, file: !183, line: 120, baseType: !4426, size: 64, offset: 192)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!2458, !248}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !281, file: !183, line: 121, baseType: !4430, size: 64, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!1714, !248}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !281, file: !183, line: 122, baseType: !4434, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !248, !2053, !2054}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !182, file: !183, line: 70, baseType: !4438, size: 64, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !521, line: 190, size: 1152, elements: !4440)
!4440 = !{!4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4520, !4521, !4522, !4523, !4524, !4527}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4439, file: !521, line: 191, baseType: !215, size: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4439, file: !521, line: 192, baseType: !215, size: 32, offset: 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4439, file: !521, line: 202, baseType: !4438, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4439, file: !521, line: 203, baseType: !154, size: 64, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4439, file: !521, line: 205, baseType: !810, size: 192, align: 64, offset: 192)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4439, file: !521, line: 207, baseType: !1714, size: 64, offset: 384)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4439, file: !521, line: 208, baseType: !7, size: 32, offset: 448)
!4448 = !DIDerivedType(tag: DW_TAG_member, scope: !4439, file: !521, line: 209, baseType: !4449, size: 256, offset: 512)
!4449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4439, file: !521, line: 209, size: 256, elements: !4450)
!4450 = !{!4451, !4460, !4464}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4449, file: !521, line: 210, baseType: !4452, size: 256)
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !521, line: 153, size: 256, elements: !4453)
!4453 = !{!4454, !4455, !4456, !4459}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4452, file: !521, line: 154, baseType: !315, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4452, file: !521, line: 156, baseType: !1484, size: 64, offset: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4452, file: !521, line: 162, baseType: !4457, size: 64, offset: 128)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !521, line: 162, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4452, file: !521, line: 167, baseType: !315, size: 64, offset: 192)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4449, file: !521, line: 211, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !521, line: 170, size: 64, elements: !4462)
!4462 = !{!4463}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4461, file: !521, line: 171, baseType: !4438, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4449, file: !521, line: 212, baseType: !4465, size: 256)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !521, line: 174, size: 256, elements: !4466)
!4466 = !{!4467, !4515, !4518, !4519}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4465, file: !521, line: 175, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4470)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !521, line: 271, size: 768, elements: !4471)
!4471 = !{!4472, !4492, !4496, !4497, !4498, !4499, !4500, !4504, !4505, !4506, !4507, !4511}
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4470, file: !521, line: 276, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!65, !4476}
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !521, line: 251, size: 1216, elements: !4478)
!4478 = !{!4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4477, file: !521, line: 253, baseType: !4438, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4477, file: !521, line: 254, baseType: !1625, size: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4477, file: !521, line: 255, baseType: !618, size: 64, offset: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4477, file: !521, line: 256, baseType: !147, size: 64, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4477, file: !521, line: 259, baseType: !630, size: 256, offset: 256)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4477, file: !521, line: 260, baseType: !630, size: 256, offset: 512)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4477, file: !521, line: 261, baseType: !65, size: 32, offset: 768)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4477, file: !521, line: 262, baseType: !168, size: 128, offset: 832)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4477, file: !521, line: 263, baseType: !265, size: 64, offset: 960)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4477, file: !521, line: 265, baseType: !312, size: 64, offset: 1024)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4477, file: !521, line: 266, baseType: !877, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4477, file: !521, line: 267, baseType: !877, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4477, file: !521, line: 268, baseType: !3410, size: 64, offset: 1152)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4470, file: !521, line: 277, baseType: !4493, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !4476}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4470, file: !521, line: 290, baseType: !669, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4470, file: !521, line: 292, baseType: !656, size: 64, offset: 192)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4470, file: !521, line: 293, baseType: !665, size: 64, offset: 256)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4470, file: !521, line: 294, baseType: !661, size: 64, offset: 320)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4470, file: !521, line: 296, baseType: !4501, size: 64, offset: 384)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!297, !4476, !265, !312, !506}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4470, file: !521, line: 306, baseType: !312, size: 64, offset: 448)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4470, file: !521, line: 313, baseType: !877, size: 8, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4470, file: !521, line: 314, baseType: !4501, size: 64, offset: 576)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4470, file: !521, line: 317, baseType: !4508, size: 64, offset: 640)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!2846, !4476, !2848}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4470, file: !521, line: 320, baseType: !4512, size: 64, offset: 704)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!65, !4476, !3367}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4465, file: !521, line: 176, baseType: !4516, size: 64, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !521, line: 35, flags: DIFlagFwdDecl)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4465, file: !521, line: 177, baseType: !506, size: 64, offset: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4465, file: !521, line: 178, baseType: !4438, size: 64, offset: 192)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4439, file: !521, line: 215, baseType: !147, size: 64, offset: 768)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4439, file: !521, line: 221, baseType: !418, size: 64, offset: 832)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4439, file: !521, line: 223, baseType: !235, size: 16, offset: 896)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4439, file: !521, line: 224, baseType: !307, size: 16, offset: 912)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4439, file: !521, line: 225, baseType: !4525, size: 64, offset: 960)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !521, line: 36, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4439, file: !521, line: 227, baseType: !688, size: 128, align: 64, offset: 1024)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !182, file: !183, line: 71, baseType: !2020, size: 32, offset: 448)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !182, file: !183, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !182, file: !183, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !182, file: !183, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !182, file: !183, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !182, file: !183, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !179, file: !6, line: 47, baseType: !163, size: 64, offset: 512)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !179, file: !6, line: 48, baseType: !188, size: 64, offset: 576)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !179, file: !6, line: 49, baseType: !4537, size: 64, offset: 640)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !179, file: !6, line: 50, baseType: !1863, size: 64, offset: 704)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !164, file: !6, line: 418, baseType: !4541, size: 64, offset: 1408)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4543)
!4543 = !{!4544, !4545, !4550, !4554, !4558, !4562}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4542, file: !6, line: 54, baseType: !303, size: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4542, file: !6, line: 55, baseType: !4546, size: 64, offset: 128)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!297, !4541, !4549, !265}
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4542, file: !6, line: 57, baseType: !4551, size: 64, offset: 192)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!297, !4541, !4549, !154, !312}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4542, file: !6, line: 59, baseType: !4555, size: 64, offset: 256)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{null, !163, !154}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4542, file: !6, line: 60, baseType: !4559, size: 64, offset: 320)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!65, !163}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4542, file: !6, line: 61, baseType: !4563, size: 64, offset: 384)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !163}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !164, file: !6, line: 419, baseType: !154, size: 64, offset: 1472)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !164, file: !6, line: 420, baseType: !154, size: 64, offset: 1536)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !164, file: !6, line: 421, baseType: !188, size: 64, offset: 1600)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !164, file: !6, line: 424, baseType: !4570, size: 64, offset: 1664)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4572)
!4572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !164, file: !6, line: 425, baseType: !4574, size: 64, offset: 1728)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !164, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !164, file: !6, line: 435, baseType: !630, size: 256, offset: 1856)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !164, file: !6, line: 437, baseType: !4579, size: 64, offset: 2112)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4581, line: 69, size: 320, elements: !4582)
!4581 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4582 = !{!4583, !4584, !4585, !4602, !4604, !4608, !4609}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4580, file: !4581, line: 70, baseType: !154, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4580, file: !4581, line: 71, baseType: !163, size: 64, offset: 64)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4580, file: !4581, line: 72, baseType: !4586, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4588)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4581, line: 47, size: 256, elements: !4589)
!4589 = !{!4590, !4591, !4597, !4601}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4588, file: !4581, line: 49, baseType: !7, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4588, file: !4581, line: 51, baseType: !4592, size: 64, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!65, !154, !4595}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4580)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4588, file: !4581, line: 53, baseType: !4598, size: 64, offset: 128)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!65, !265, !4595}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4588, file: !4581, line: 55, baseType: !2482, size: 64, offset: 192)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4580, file: !4581, line: 73, baseType: !4603, size: 16, offset: 192)
!4603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4580, file: !4581, line: 74, baseType: !4605, size: 8, offset: 208)
!4605 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !224, line: 16, baseType: !4606)
!4606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !226, line: 20, baseType: !4607)
!4607 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4580, file: !4581, line: 75, baseType: !223, size: 8, offset: 216)
!4609 = !DIDerivedType(tag: DW_TAG_member, scope: !4580, file: !4581, line: 76, baseType: !4610, size: 64, offset: 256)
!4610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4580, file: !4581, line: 76, size: 64, elements: !4611)
!4611 = !{!4612, !4613, !4620}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4610, file: !4581, line: 77, baseType: !147, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4610, file: !4581, line: 78, baseType: !4614, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4616)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4581, line: 86, size: 128, elements: !4617)
!4617 = !{!4618, !4619}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4616, file: !4581, line: 87, baseType: !7, size: 32)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4616, file: !4581, line: 88, baseType: !265, size: 64, offset: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4610, file: !4581, line: 79, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4623)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4581, line: 92, size: 256, elements: !4624)
!4624 = !{!4625, !4626, !4627, !4628, !4629}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4623, file: !4581, line: 94, baseType: !7, size: 32)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4623, file: !4581, line: 95, baseType: !7, size: 32, offset: 32)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4623, file: !4581, line: 96, baseType: !1304, size: 64, offset: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4623, file: !4581, line: 97, baseType: !4586, size: 64, offset: 128)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4623, file: !4581, line: 98, baseType: !147, size: 64, offset: 192)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !164, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !164, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !164, file: !6, line: 442, baseType: !4570, size: 64, offset: 2240)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !164, file: !6, line: 443, baseType: !4574, size: 64, offset: 2304)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !164, file: !6, line: 444, baseType: !877, size: 8, offset: 2368)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !164, file: !6, line: 451, baseType: !877, size: 8, offset: 2376)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !164, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !164, file: !6, line: 455, baseType: !4638, size: 64, offset: 2432)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4640, line: 23, size: 96, elements: !4641)
!4640 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4641 = !{!4642, !4643, !4644}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4639, file: !4640, line: 24, baseType: !65, size: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4639, file: !4640, line: 24, baseType: !65, size: 32, offset: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4639, file: !4640, line: 24, baseType: !65, size: 32, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !164, file: !6, line: 458, baseType: !4646, size: 64, offset: 2496)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!65}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !164, file: !6, line: 460, baseType: !4650, size: 4032, align: 512, offset: 2560)
!4650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4651, size: 4032, elements: !4665)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4652)
!4652 = !{!4653, !4654, !4655}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4651, file: !6, line: 363, baseType: !147, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4651, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4651, file: !6, line: 367, baseType: !4656, size: 448, offset: 128)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4657)
!4657 = !{!4658, !4659}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4656, file: !6, line: 320, baseType: !163, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4656, file: !6, line: 321, baseType: !4660, size: 384, offset: 64)
!4660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4661, line: 40, size: 384, elements: !4662)
!4661 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4662 = !{!4663}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4660, file: !4661, line: 41, baseType: !4664, size: 384, align: 64)
!4664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 384, align: 64, elements: !1998)
!4665 = !{!4666}
!4666 = !DISubrange(count: 7)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !164, file: !6, line: 463, baseType: !4668, size: 192, offset: 6592)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4669, line: 8, size: 192, elements: !4670)
!4669 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4670 = !{!4671, !4672, !4673}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4668, file: !4669, line: 10, baseType: !7, size: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4668, file: !4669, line: 11, baseType: !612, size: 64, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4668, file: !4669, line: 12, baseType: !4674, size: 64, offset: 128)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4676, line: 59, size: 48, elements: !4677)
!4676 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4677 = !{!4678, !4679, !4680, !4681, !4682, !4683}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4675, file: !4676, line: 60, baseType: !1731, size: 16)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4675, file: !4676, line: 61, baseType: !1731, size: 16, offset: 16)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4675, file: !4676, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4675, file: !4676, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4675, file: !4676, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4675, file: !4676, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !164, file: !6, line: 465, baseType: !315, size: 64, offset: 6784)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !164, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !164, file: !6, line: 470, baseType: !168, size: 128, offset: 6912)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !164, file: !6, line: 471, baseType: !4688, size: 64, offset: 7040)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4690, line: 33, size: 96, elements: !4691)
!4690 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4691 = !{!4692, !4693, !4694, !4695}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4689, file: !4690, line: 37, baseType: !65, size: 32)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4689, file: !4690, line: 43, baseType: !65, size: 32, offset: 32)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4689, file: !4690, line: 45, baseType: !235, size: 16, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4689, file: !4690, line: 47, baseType: !235, size: 16, offset: 80)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !164, file: !6, line: 476, baseType: !4697, size: 64, offset: 7104)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4699)
!4699 = !{!4700, !4716, !4717, !4718}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4698, file: !6, line: 379, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4703, line: 204, baseType: !4704)
!4703 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4703, line: 197, size: 192, elements: !4705)
!4705 = !{!4706, !4708, !4709, !4710, !4712, !4714}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4704, file: !4703, line: 198, baseType: !4707, size: 32)
!4707 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4703, line: 21, baseType: !415)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4704, file: !4703, line: 199, baseType: !227, size: 8, offset: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4704, file: !4703, line: 200, baseType: !227, size: 8, offset: 40)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4704, file: !4703, line: 201, baseType: !4711, size: 16, offset: 48)
!4711 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4703, line: 17, baseType: !234)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4704, file: !4703, line: 202, baseType: !4713, size: 64, offset: 64)
!4713 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4703, line: 16, baseType: !419)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4704, file: !4703, line: 203, baseType: !4715, size: 64, offset: 128)
!4715 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4703, line: 22, baseType: !419)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4698, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4698, file: !6, line: 381, baseType: !265, size: 64, offset: 128)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4698, file: !6, line: 382, baseType: !265, size: 64, offset: 192)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !164, file: !6, line: 477, baseType: !4698, size: 256, offset: 7168)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !164, file: !6, line: 480, baseType: !4721, size: 64, offset: 7424)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !164, file: !6, line: 483, baseType: !4724, size: 64, offset: 7488)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !164, file: !6, line: 488, baseType: !265, size: 64, offset: 7552)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !164, file: !6, line: 492, baseType: !147, size: 64, offset: 7616)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !164, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !164, file: !6, line: 495, baseType: !147, size: 64, offset: 7744)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !164, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !164, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !164, file: !6, line: 500, baseType: !4733, size: 64, offset: 7872)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4735, line: 45, baseType: !4736)
!4735 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !164, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !164, file: !6, line: 504, baseType: !4739, size: 64, offset: 8000)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4742, line: 96, size: 192, elements: !4743)
!4742 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4743 = !{!4744, !4745, !4788, !4790}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4741, file: !4742, line: 97, baseType: !7, size: 32)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4741, file: !4742, line: 98, baseType: !4746, size: 64, offset: 64)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4742, line: 24, size: 3072, elements: !4748)
!4748 = !{!4749, !4751, !4752, !4753, !4754, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4785, !4786, !4787}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4747, file: !4742, line: 26, baseType: !4750, size: 128)
!4750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 128, elements: !1998)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4747, file: !4742, line: 27, baseType: !4750, size: 128, offset: 128)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4747, file: !4742, line: 28, baseType: !65, size: 32, offset: 256)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4747, file: !4742, line: 31, baseType: !195, size: 32, align: 512, offset: 512)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4747, file: !4742, line: 32, baseType: !4755, size: 960, offset: 576)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4756, line: 206, size: 960, elements: !4757)
!4756 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4757 = !{!4758, !4759, !4762, !4764, !4765, !4767}
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4755, file: !4756, line: 207, baseType: !691, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4755, file: !4756, line: 208, baseType: !4760, size: 256, offset: 64)
!4760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4761, size: 256, elements: !742)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4755, file: !4756, line: 209, baseType: !4763, size: 256, offset: 320)
!4763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !742)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4755, file: !4756, line: 213, baseType: !301, size: 64, offset: 576)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4755, file: !4756, line: 215, baseType: !4766, size: 256, offset: 640)
!4766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !742)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4755, file: !4756, line: 216, baseType: !223, size: 8, offset: 896)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4747, file: !4742, line: 33, baseType: !315, size: 64, offset: 1536)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4747, file: !4742, line: 34, baseType: !315, size: 64, offset: 1600)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4747, file: !4742, line: 35, baseType: !877, size: 8, offset: 1664)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4747, file: !4742, line: 36, baseType: !2202, size: 320, offset: 1728)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4747, file: !4742, line: 37, baseType: !1753, size: 256, offset: 2048)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4747, file: !4742, line: 38, baseType: !688, size: 128, align: 64, offset: 2304)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4747, file: !4742, line: 39, baseType: !4775, size: 64, offset: 2432)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4742, line: 49, size: 768, elements: !4777)
!4777 = !{!4778, !4779, !4780, !4781, !4782, !4783, !4784}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4776, file: !4742, line: 50, baseType: !195, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4776, file: !4742, line: 51, baseType: !4763, size: 256, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4776, file: !4742, line: 53, baseType: !4763, size: 256, offset: 320)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4776, file: !4742, line: 54, baseType: !315, size: 64, offset: 576)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4776, file: !4742, line: 55, baseType: !4775, size: 64, offset: 640)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4776, file: !4742, line: 56, baseType: !65, size: 32, offset: 704)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4776, file: !4742, line: 57, baseType: !65, size: 32, offset: 736)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4747, file: !4742, line: 40, baseType: !315, size: 64, offset: 2496)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4747, file: !4742, line: 42, baseType: !65, size: 32, offset: 2560)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4747, file: !4742, line: 43, baseType: !4740, size: 64, offset: 2624)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4741, file: !4742, line: 99, baseType: !4789, offset: 128)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !548, line: 211, elements: !549)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4741, file: !4742, line: 100, baseType: !4791, size: 64, offset: 128)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4742, line: 63, size: 3008, elements: !4793)
!4793 = !{!4794, !4795, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4823}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4792, file: !4742, line: 64, baseType: !4775, size: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4792, file: !4742, line: 65, baseType: !4796, size: 192, offset: 64)
!4796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4775, size: 192, elements: !266)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4792, file: !4742, line: 67, baseType: !65, size: 32, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4792, file: !4742, line: 68, baseType: !630, size: 256, offset: 320)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4792, file: !4742, line: 69, baseType: !195, size: 32, offset: 576)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4792, file: !4742, line: 70, baseType: !630, size: 256, offset: 640)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4792, file: !4742, line: 71, baseType: !315, size: 64, offset: 896)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4792, file: !4742, line: 72, baseType: !315, size: 64, offset: 960)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4792, file: !4742, line: 73, baseType: !315, size: 64, offset: 1024)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4792, file: !4742, line: 74, baseType: !315, size: 64, offset: 1088)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4792, file: !4742, line: 75, baseType: !315, size: 64, offset: 1152)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4792, file: !4742, line: 76, baseType: !315, size: 64, offset: 1216)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4792, file: !4742, line: 77, baseType: !315, size: 64, offset: 1280)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4792, file: !4742, line: 78, baseType: !315, size: 64, offset: 1344)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4792, file: !4742, line: 79, baseType: !877, size: 8, offset: 1408)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4792, file: !4742, line: 80, baseType: !315, size: 64, offset: 1472)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4792, file: !4742, line: 81, baseType: !630, size: 256, offset: 1536)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4792, file: !4742, line: 82, baseType: !1864, size: 256, offset: 1792)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4792, file: !4742, line: 84, baseType: !215, size: 32, offset: 2048)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4792, file: !4742, line: 87, baseType: !315, size: 64, offset: 2112)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4792, file: !4742, line: 88, baseType: !315, size: 64, offset: 2176)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4792, file: !4742, line: 89, baseType: !4817, size: 704, offset: 2240)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1754, line: 111, size: 704, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4822}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4817, file: !1754, line: 112, baseType: !1753, size: 256)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4817, file: !1754, line: 113, baseType: !2202, size: 320, offset: 256)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4817, file: !1754, line: 116, baseType: !3925, size: 64, offset: 576)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4817, file: !1754, line: 117, baseType: !65, size: 32, offset: 640)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4792, file: !4742, line: 90, baseType: !4740, size: 64, offset: 2944)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !164, file: !6, line: 515, baseType: !4825, size: 64, offset: 8064)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4827, line: 117, size: 128, elements: !4828)
!4827 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4828 = !{!4829, !4830, !4831}
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4826, file: !4827, line: 118, baseType: !803, size: 32)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4826, file: !4827, line: 119, baseType: !803, size: 32, offset: 32)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4826, file: !4827, line: 120, baseType: !301, size: 64, offset: 64)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !164, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !164, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !164, file: !6, line: 520, baseType: !2374, size: 64, offset: 8192)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !164, file: !6, line: 523, baseType: !4836, size: 64, offset: 8256)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !164, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !164, file: !6, line: 525, baseType: !4841, size: 64, offset: 8384)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !164, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !164, file: !6, line: 533, baseType: !147, size: 64, offset: 8512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !164, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !164, file: !6, line: 535, baseType: !4848, size: 64, offset: 8640)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !164, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !164, file: !6, line: 539, baseType: !65, size: 32, offset: 8736)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !164, file: !6, line: 540, baseType: !4852, size: 64, offset: 8768)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4854, line: 32, size: 64, elements: !4855)
!4854 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4855 = !{!4856, !4857}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4853, file: !4854, line: 33, baseType: !803, size: 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4853, file: !4854, line: 34, baseType: !803, size: 32, offset: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !164, file: !6, line: 563, baseType: !168, size: 128, offset: 8832)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !164, file: !6, line: 565, baseType: !168, size: 128, offset: 8960)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !164, file: !6, line: 568, baseType: !4861, size: 64, offset: 9088)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !164, file: !6, line: 570, baseType: !215, size: 32, offset: 9152)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !160, file: !14, line: 1916, baseType: !4864, size: 64, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!506, !1625, !506, !65}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !160, file: !14, line: 1917, baseType: !4868, size: 64, offset: 128)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!297, !1625, !265, !312, !659}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !160, file: !14, line: 1918, baseType: !4872, size: 64, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!297, !1625, !154, !312, !659}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !160, file: !14, line: 1919, baseType: !4343, size: 64, offset: 256)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !160, file: !14, line: 1920, baseType: !4343, size: 64, offset: 320)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !160, file: !14, line: 1921, baseType: !4878, size: 64, offset: 384)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!65, !4346, !4881, !7}
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !160, file: !14, line: 1923, baseType: !4884, size: 64, offset: 448)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!65, !1625, !4887}
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !4889)
!4889 = !{!4890, !4895}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4888, file: !14, line: 1859, baseType: !4891, size: 64)
!4891 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !4892)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!877, !4887, !154, !65, !506, !418, !7}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4888, file: !14, line: 1860, baseType: !506, size: 64, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !160, file: !14, line: 1924, baseType: !4897, size: 64, offset: 512)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!2846, !1625, !2848}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !160, file: !14, line: 1925, baseType: !4901, size: 64, offset: 576)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!301, !1625, !7, !315}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !160, file: !14, line: 1926, baseType: !4901, size: 64, offset: 640)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !160, file: !14, line: 1927, baseType: !4906, size: 64, offset: 704)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!65, !1625, !3367}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !160, file: !14, line: 1928, baseType: !315, size: 64, offset: 768)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !160, file: !14, line: 1929, baseType: !4911, size: 64, offset: 832)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!65, !345, !1625}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !160, file: !14, line: 1930, baseType: !4915, size: 64, offset: 896)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!65, !1625, !4918}
!4918 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !147)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !160, file: !14, line: 1931, baseType: !4911, size: 64, offset: 960)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !160, file: !14, line: 1932, baseType: !4921, size: 64, offset: 1024)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!65, !1625, !506, !506, !65}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !160, file: !14, line: 1933, baseType: !4925, size: 64, offset: 1088)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!65, !65, !1625, !65}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !160, file: !14, line: 1934, baseType: !4929, size: 64, offset: 1152)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!65, !1625, !65, !4932}
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !160, file: !14, line: 1935, baseType: !1622, size: 64, offset: 1216)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !160, file: !14, line: 1936, baseType: !4936, size: 64, offset: 1280)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!65, !65}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !160, file: !14, line: 1937, baseType: !4929, size: 64, offset: 1344)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !160, file: !14, line: 1938, baseType: !4941, size: 64, offset: 1408)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!297, !3251, !1625, !659, !312, !7}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !160, file: !14, line: 1939, baseType: !4945, size: 64, offset: 1472)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!297, !1625, !659, !3251, !312, !7}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !160, file: !14, line: 1940, baseType: !4399, size: 64, offset: 1536)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !160, file: !14, line: 1941, baseType: !4950, size: 64, offset: 1600)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!65, !1625, !65, !4953, !2834}
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !160, file: !14, line: 1942, baseType: !4955, size: 64, offset: 1664)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DISubroutineType(types: !4957)
!4957 = !{!301, !1625, !65, !506, !506}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !160, file: !14, line: 1944, baseType: !4959, size: 64, offset: 1728)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{null, !618, !1625}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !160, file: !14, line: 1948, baseType: !4963, size: 64, offset: 1792)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!297, !1625, !506, !1625, !506, !312, !7}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !160, file: !14, line: 1950, baseType: !4967, size: 64, offset: 1856)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!506, !1625, !506, !1625, !506, !506, !7}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !160, file: !14, line: 1953, baseType: !4921, size: 64, offset: 1920)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !160, file: !14, line: 1954, baseType: !4972, size: 64, offset: 1984)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!65, !4975, !7}
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !160, file: !14, line: 1955, baseType: !4978, size: 64, offset: 2048)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!65, !4975, !4881, !7}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !149, file: !150, line: 83, baseType: !168, size: 128, offset: 192)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !149, file: !150, line: 84, baseType: !2026, size: 64, offset: 320)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !149, file: !150, line: 85, baseType: !2026, size: 64, offset: 384)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !149, file: !150, line: 86, baseType: !317, size: 64, offset: 448)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !149, file: !150, line: 87, baseType: !154, size: 64, offset: 512)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !149, file: !150, line: 88, baseType: !307, size: 16, offset: 576)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4988)
!4991 = !{!4992, !4995, !4997, !5000, !5002, !0, !5004, !5010, !5012, !5017, !5019, !5024, !5026, !5028, !5031, !5033}
!4992 = !DIGlobalVariableExpression(var: !4993, expr: !DIExpression())
!4993 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !4994, isLocal: true, isDefinition: true)
!4994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 24, elements: !266)
!4995 = !DIGlobalVariableExpression(var: !4996, expr: !DIExpression())
!4996 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_misc_register287", scope: !2, file: !3, line: 284, type: !147, isLocal: true, isDefinition: true)
!4997 = !DIGlobalVariableExpression(var: !4998, expr: !DIExpression())
!4998 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !4999, isLocal: true, isDefinition: true)
!4999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 160, elements: !3740)
!5000 = !DIGlobalVariableExpression(var: !5001, expr: !DIExpression())
!5001 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_misc_deregister288", scope: !2, file: !3, line: 305, type: !147, isLocal: true, isDefinition: true)
!5002 = !DIGlobalVariableExpression(var: !5003, expr: !DIExpression())
!5003 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_misc__289_330_misc_init4290", scope: !2, file: !3, line: 330, type: !147, isLocal: true, isDefinition: true)
!5004 = !DIGlobalVariableExpression(var: !5005, expr: !DIExpression())
!5005 = distinct !DIGlobalVariable(name: "misc_minors_ida", scope: !2, file: !3, line: 64, type: !5006, isLocal: true, isDefinition: true)
!5006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !5007, line: 246, size: 128, elements: !5008)
!5007 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!5008 = !{!5009}
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5006, file: !5007, line: 247, baseType: !4150, size: 128)
!5010 = !DIGlobalVariableExpression(var: !5011, expr: !DIExpression())
!5011 = distinct !DIGlobalVariable(name: "misc_list", scope: !2, file: !3, line: 57, type: !168, isLocal: true, isDefinition: true)
!5012 = !DIGlobalVariableExpression(var: !5013, expr: !DIExpression())
!5013 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !5014, isLocal: true, isDefinition: true)
!5014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 40, elements: !5015)
!5015 = !{!5016}
!5016 = !DISubrange(count: 5)
!5017 = !DIGlobalVariableExpression(var: !5018, expr: !DIExpression())
!5018 = distinct !DIGlobalVariable(name: "misc_class", scope: !2, file: !3, line: 196, type: !2439, isLocal: true, isDefinition: true)
!5019 = !DIGlobalVariableExpression(var: !5020, expr: !DIExpression())
!5020 = distinct !DIGlobalVariable(scope: null, file: !3, line: 323, type: !5021, isLocal: true, isDefinition: true)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 344, elements: !5022)
!5022 = !{!5023}
!5023 = !DISubrange(count: 43)
!5024 = !DIGlobalVariableExpression(var: !5025, expr: !DIExpression())
!5025 = distinct !DIGlobalVariable(name: "misc_seq_ops", scope: !2, file: !3, line: 128, type: !652, isLocal: true, isDefinition: true)
!5026 = !DIGlobalVariableExpression(var: !5027, expr: !DIExpression())
!5027 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !3154, isLocal: true, isDefinition: true)
!5028 = !DIGlobalVariableExpression(var: !5029, expr: !DIExpression())
!5029 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !5030, isLocal: true, isDefinition: true)
!5030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 8, elements: !1550)
!5031 = !DIGlobalVariableExpression(var: !5032, expr: !DIExpression())
!5032 = distinct !DIGlobalVariable(name: "misc_fops", scope: !2, file: !3, line: 201, type: !159, isLocal: true, isDefinition: true)
!5033 = !DIGlobalVariableExpression(var: !5034, expr: !DIExpression())
!5034 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !5035, isLocal: true, isDefinition: true)
!5035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 136, elements: !5036)
!5036 = !{!5037}
!5037 = !DISubrange(count: 17)
!5038 = !{i32 7, !"Dwarf Version", i32 5}
!5039 = !{i32 2, !"Debug Info Version", i32 3}
!5040 = !{i32 1, !"wchar_size", i32 2}
!5041 = !{i32 8, !"cf-protection-branch", i32 1}
!5042 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5043 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5044 = !{i32 1, !"Code Model", i32 2}
!5045 = !{i32 1, !"override-stack-alignment", i32 8}
!5046 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5047 = distinct !DISubprogram(name: "misc_register", scope: !3, file: !3, line: 225, type: !5048, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5050)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!65, !148}
!5050 = !{!5051, !5052, !5053, !5054, !5055, !5058, !5060, !5061, !5064, !5067}
!5051 = !DILocalVariable(name: "misc", arg: 1, scope: !5047, file: !3, line: 225, type: !148)
!5052 = !DILocalVariable(name: "dev", scope: !5047, file: !3, line: 227, type: !501)
!5053 = !DILocalVariable(name: "err", scope: !5047, file: !3, line: 228, type: !65)
!5054 = !DILocalVariable(name: "is_dynamic", scope: !5047, file: !3, line: 229, type: !877)
!5055 = !DILocalVariable(name: "i", scope: !5056, file: !3, line: 236, type: !65)
!5056 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 235, column: 18)
!5057 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 235, column: 6)
!5058 = !DILocalVariable(name: "c", scope: !5059, file: !3, line: 244, type: !148)
!5059 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 243, column: 9)
!5060 = !DILocalVariable(name: "i", scope: !5059, file: !3, line: 245, type: !65)
!5061 = !DILocalVariable(name: "__mptr", scope: !5062, file: !3, line: 247, type: !147)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 247, column: 3)
!5063 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 247, column: 3)
!5064 = !DILocalVariable(name: "__mptr", scope: !5065, file: !3, line: 247, type: !147)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 247, column: 3)
!5066 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 247, column: 3)
!5067 = !DILabel(scope: !5047, name: "out", file: !3, line: 280)
!5068 = !DILocation(line: 225, column: 38, scope: !5047)
!5069 = !DILocation(line: 227, column: 2, scope: !5047)
!5070 = !DILocation(line: 227, column: 8, scope: !5047)
!5071 = !DILocation(line: 228, column: 2, scope: !5047)
!5072 = !DILocation(line: 228, column: 6, scope: !5047)
!5073 = !DILocation(line: 229, column: 2, scope: !5047)
!5074 = !DILocation(line: 229, column: 7, scope: !5047)
!5075 = !DILocation(line: 229, column: 21, scope: !5047)
!5076 = !DILocation(line: 229, column: 27, scope: !5047)
!5077 = !DILocation(line: 229, column: 33, scope: !5047)
!5078 = !DILocation(line: 231, column: 18, scope: !5047)
!5079 = !DILocation(line: 231, column: 24, scope: !5047)
!5080 = !DILocation(line: 231, column: 2, scope: !5047)
!5081 = !DILocation(line: 233, column: 2, scope: !5047)
!5082 = !DILocation(line: 235, column: 6, scope: !5057)
!5083 = !{i8 0, i8 2}
!5084 = !DILocation(line: 235, column: 6, scope: !5047)
!5085 = !DILocation(line: 236, column: 3, scope: !5056)
!5086 = !DILocation(line: 236, column: 7, scope: !5056)
!5087 = !DILocation(line: 236, column: 28, scope: !5056)
!5088 = !DILocation(line: 236, column: 34, scope: !5056)
!5089 = !DILocation(line: 236, column: 11, scope: !5056)
!5090 = !DILocation(line: 238, column: 7, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 238, column: 7)
!5092 = !DILocation(line: 238, column: 9, scope: !5091)
!5093 = !DILocation(line: 238, column: 7, scope: !5056)
!5094 = !DILocation(line: 239, column: 8, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 238, column: 14)
!5096 = !DILocation(line: 240, column: 4, scope: !5095)
!5097 = !DILocation(line: 242, column: 17, scope: !5056)
!5098 = !DILocation(line: 242, column: 3, scope: !5056)
!5099 = !DILocation(line: 242, column: 9, scope: !5056)
!5100 = !DILocation(line: 242, column: 15, scope: !5056)
!5101 = !DILocation(line: 243, column: 2, scope: !5057)
!5102 = !DILocation(line: 243, column: 2, scope: !5056)
!5103 = !DILocation(line: 244, column: 3, scope: !5059)
!5104 = !DILocation(line: 244, column: 22, scope: !5059)
!5105 = !DILocation(line: 245, column: 3, scope: !5059)
!5106 = !DILocation(line: 245, column: 7, scope: !5059)
!5107 = !DILocation(line: 247, column: 3, scope: !5062)
!5108 = !DILocation(line: 247, column: 3, scope: !5063)
!5109 = !DILocation(line: 247, column: 3, scope: !5066)
!5110 = !DILocation(line: 248, column: 8, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 248, column: 8)
!5112 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 247, column: 44)
!5113 = !DILocation(line: 248, column: 11, scope: !5111)
!5114 = !DILocation(line: 248, column: 20, scope: !5111)
!5115 = !DILocation(line: 248, column: 26, scope: !5111)
!5116 = !DILocation(line: 248, column: 17, scope: !5111)
!5117 = !DILocation(line: 248, column: 8, scope: !5112)
!5118 = !DILocation(line: 249, column: 9, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 248, column: 33)
!5120 = !DILocation(line: 250, column: 5, scope: !5119)
!5121 = !DILocation(line: 252, column: 3, scope: !5112)
!5122 = !DILocation(line: 247, column: 3, scope: !5065)
!5123 = distinct !{!5123, !5108, !5124, !5125, !5126}
!5124 = !DILocation(line: 252, column: 3, scope: !5063)
!5125 = !{!"llvm.loop.mustprogress"}
!5126 = !{!"llvm.loop.unroll.disable"}
!5127 = !DILocation(line: 254, column: 24, scope: !5059)
!5128 = !DILocation(line: 254, column: 30, scope: !5059)
!5129 = !DILocation(line: 254, column: 7, scope: !5059)
!5130 = !DILocation(line: 254, column: 5, scope: !5059)
!5131 = !DILocation(line: 255, column: 7, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5059, file: !3, line: 255, column: 7)
!5133 = !DILocation(line: 255, column: 9, scope: !5132)
!5134 = !DILocation(line: 255, column: 7, scope: !5059)
!5135 = !DILocation(line: 256, column: 8, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 255, column: 14)
!5137 = !DILocation(line: 257, column: 4, scope: !5136)
!5138 = !DILocation(line: 259, column: 2, scope: !5057)
!5139 = !DILocation(line: 261, column: 8, scope: !5047)
!5140 = !DILocation(line: 261, column: 6, scope: !5047)
!5141 = !DILocation(line: 264, column: 42, scope: !5047)
!5142 = !DILocation(line: 264, column: 48, scope: !5047)
!5143 = !DILocation(line: 264, column: 56, scope: !5047)
!5144 = !DILocation(line: 265, column: 8, scope: !5047)
!5145 = !DILocation(line: 265, column: 14, scope: !5047)
!5146 = !DILocation(line: 265, column: 20, scope: !5047)
!5147 = !DILocation(line: 265, column: 34, scope: !5047)
!5148 = !DILocation(line: 265, column: 40, scope: !5047)
!5149 = !DILocation(line: 264, column: 3, scope: !5047)
!5150 = !DILocation(line: 263, column: 2, scope: !5047)
!5151 = !DILocation(line: 263, column: 8, scope: !5047)
!5152 = !DILocation(line: 263, column: 20, scope: !5047)
!5153 = !DILocation(line: 266, column: 13, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 266, column: 6)
!5155 = !DILocation(line: 266, column: 19, scope: !5154)
!5156 = !DILocation(line: 266, column: 6, scope: !5154)
!5157 = !DILocation(line: 266, column: 6, scope: !5047)
!5158 = !DILocation(line: 267, column: 19, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 266, column: 33)
!5160 = !DILocation(line: 267, column: 25, scope: !5159)
!5161 = !DILocation(line: 267, column: 3, scope: !5159)
!5162 = !DILocation(line: 268, column: 7, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 268, column: 7)
!5164 = !DILocation(line: 268, column: 7, scope: !5159)
!5165 = !DILocation(line: 269, column: 4, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 268, column: 19)
!5167 = !DILocation(line: 269, column: 10, scope: !5166)
!5168 = !DILocation(line: 269, column: 16, scope: !5166)
!5169 = !DILocation(line: 270, column: 3, scope: !5166)
!5170 = !DILocation(line: 271, column: 17, scope: !5159)
!5171 = !DILocation(line: 271, column: 23, scope: !5159)
!5172 = !DILocation(line: 271, column: 9, scope: !5159)
!5173 = !DILocation(line: 271, column: 7, scope: !5159)
!5174 = !DILocation(line: 272, column: 3, scope: !5159)
!5175 = !DILocation(line: 279, column: 12, scope: !5047)
!5176 = !DILocation(line: 279, column: 18, scope: !5047)
!5177 = !DILocation(line: 279, column: 2, scope: !5047)
!5178 = !DILocation(line: 280, column: 2, scope: !5047)
!5179 = !DILocation(line: 281, column: 2, scope: !5047)
!5180 = !DILocation(line: 282, column: 9, scope: !5047)
!5181 = !DILocation(line: 282, column: 2, scope: !5047)
!5182 = !DILocation(line: 283, column: 1, scope: !5047)
!5183 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5184, file: !5184, line: 35, type: !5185, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5187)
!5184 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5185 = !DISubroutineType(types: !5186)
!5186 = !{null, !172}
!5187 = !{!5188}
!5188 = !DILocalVariable(name: "list", arg: 1, scope: !5183, file: !5184, line: 35, type: !172)
!5189 = !DILocation(line: 35, column: 53, scope: !5183)
!5190 = !DILocation(line: 37, column: 2, scope: !5183)
!5191 = !DILocation(line: 37, column: 2, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5183, file: !5184, line: 37, column: 2)
!5193 = !DILocation(line: 37, column: 2, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5192, file: !5184, line: 37, column: 2)
!5195 = !DILocation(line: 37, column: 2, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5192, file: !5184, line: 37, column: 2)
!5197 = !DILocation(line: 38, column: 2, scope: !5183)
!5198 = !DILocation(line: 38, column: 2, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5183, file: !5184, line: 38, column: 2)
!5200 = !DILocation(line: 38, column: 2, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5199, file: !5184, line: 38, column: 2)
!5202 = !DILocation(line: 38, column: 2, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5199, file: !5184, line: 38, column: 2)
!5204 = !DILocation(line: 39, column: 1, scope: !5183)
!5205 = !DISubprogram(name: "mutex_lock", scope: !631, file: !631, line: 227, type: !5206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{null, !5208}
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!5209 = distinct !DISubprogram(name: "misc_minor_alloc", scope: !3, file: !3, line: 66, type: !4937, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5210)
!5210 = !{!5211, !5212}
!5211 = !DILocalVariable(name: "minor", arg: 1, scope: !5209, file: !3, line: 66, type: !65)
!5212 = !DILocalVariable(name: "ret", scope: !5209, file: !3, line: 68, type: !65)
!5213 = !DILocation(line: 66, column: 33, scope: !5209)
!5214 = !DILocation(line: 68, column: 2, scope: !5209)
!5215 = !DILocation(line: 68, column: 6, scope: !5209)
!5216 = !DILocation(line: 70, column: 6, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 70, column: 6)
!5218 = !DILocation(line: 70, column: 12, scope: !5217)
!5219 = !DILocation(line: 70, column: 6, scope: !5209)
!5220 = !DILocation(line: 72, column: 9, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 70, column: 35)
!5222 = !DILocation(line: 72, column: 7, scope: !5221)
!5223 = !DILocation(line: 73, column: 7, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 73, column: 7)
!5225 = !DILocation(line: 73, column: 11, scope: !5224)
!5226 = !DILocation(line: 73, column: 7, scope: !5221)
!5227 = !DILocation(line: 74, column: 27, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 73, column: 17)
!5229 = !DILocation(line: 74, column: 25, scope: !5228)
!5230 = !DILocation(line: 74, column: 31, scope: !5228)
!5231 = !DILocation(line: 74, column: 8, scope: !5228)
!5232 = !DILocation(line: 75, column: 3, scope: !5228)
!5233 = !DILocation(line: 76, column: 10, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 75, column: 10)
!5235 = !DILocation(line: 76, column: 8, scope: !5234)
!5236 = !DILocation(line: 79, column: 2, scope: !5221)
!5237 = !DILocation(line: 81, column: 7, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 81, column: 7)
!5239 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 79, column: 9)
!5240 = !DILocation(line: 81, column: 13, scope: !5238)
!5241 = !DILocation(line: 81, column: 7, scope: !5239)
!5242 = !DILocation(line: 82, column: 29, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 81, column: 31)
!5244 = !DILocation(line: 82, column: 27, scope: !5243)
!5245 = !DILocation(line: 82, column: 35, scope: !5243)
!5246 = !DILocation(line: 82, column: 10, scope: !5243)
!5247 = !DILocation(line: 83, column: 44, scope: !5243)
!5248 = !DILocation(line: 83, column: 51, scope: !5243)
!5249 = !DILocation(line: 83, column: 10, scope: !5243)
!5250 = !DILocation(line: 83, column: 8, scope: !5243)
!5251 = !DILocation(line: 84, column: 3, scope: !5243)
!5252 = !DILocation(line: 84, column: 14, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 84, column: 14)
!5254 = !DILocation(line: 84, column: 20, scope: !5253)
!5255 = !DILocation(line: 84, column: 14, scope: !5238)
!5256 = !DILocation(line: 85, column: 44, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 84, column: 42)
!5258 = !DILocation(line: 85, column: 51, scope: !5257)
!5259 = !DILocation(line: 85, column: 10, scope: !5257)
!5260 = !DILocation(line: 85, column: 8, scope: !5257)
!5261 = !DILocation(line: 86, column: 3, scope: !5257)
!5262 = !DILocation(line: 88, column: 8, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 86, column: 10)
!5264 = !DILocation(line: 91, column: 9, scope: !5209)
!5265 = !DILocation(line: 92, column: 1, scope: !5209)
!5266 = !DILocation(line: 91, column: 2, scope: !5209)
!5267 = !DISubprogram(name: "device_create_with_groups", scope: !50, file: !50, line: 1184, type: !5268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!2026, !2438, !2026, !501, !147, !317, !154, null}
!5270 = distinct !DISubprogram(name: "IS_ERR", scope: !5271, file: !5271, line: 59, type: !5272, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5274)
!5271 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!877, !1714}
!5274 = !{!5275}
!5275 = !DILocalVariable(name: "ptr", arg: 1, scope: !5270, file: !5271, line: 59, type: !1714)
!5276 = !DILocation(line: 59, column: 60, scope: !5270)
!5277 = !DILocation(line: 61, column: 9, scope: !5270)
!5278 = !DILocation(line: 61, column: 2, scope: !5270)
!5279 = distinct !DISubprogram(name: "misc_minor_free", scope: !3, file: !3, line: 94, type: !3017, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5280)
!5280 = !{!5281}
!5281 = !DILocalVariable(name: "minor", arg: 1, scope: !5279, file: !3, line: 94, type: !65)
!5282 = !DILocation(line: 94, column: 33, scope: !5279)
!5283 = !DILocation(line: 96, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 96, column: 6)
!5285 = !DILocation(line: 96, column: 12, scope: !5284)
!5286 = !DILocation(line: 96, column: 6, scope: !5279)
!5287 = !DILocation(line: 97, column: 47, scope: !5284)
!5288 = !DILocation(line: 97, column: 45, scope: !5284)
!5289 = !DILocation(line: 97, column: 53, scope: !5284)
!5290 = !DILocation(line: 97, column: 3, scope: !5284)
!5291 = !DILocation(line: 98, column: 11, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 98, column: 11)
!5293 = !DILocation(line: 98, column: 17, scope: !5292)
!5294 = !DILocation(line: 98, column: 11, scope: !5284)
!5295 = !DILocation(line: 99, column: 30, scope: !5292)
!5296 = !DILocation(line: 99, column: 3, scope: !5292)
!5297 = !DILocation(line: 100, column: 1, scope: !5279)
!5298 = distinct !DISubprogram(name: "PTR_ERR", scope: !5271, file: !5271, line: 49, type: !5299, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5301)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!301, !1714}
!5301 = !{!5302}
!5302 = !DILocalVariable(name: "ptr", arg: 1, scope: !5298, file: !5271, line: 49, type: !1714)
!5303 = !DILocation(line: 49, column: 61, scope: !5298)
!5304 = !DILocation(line: 51, column: 16, scope: !5298)
!5305 = !DILocation(line: 51, column: 9, scope: !5298)
!5306 = !DILocation(line: 51, column: 2, scope: !5298)
!5307 = distinct !DISubprogram(name: "list_add", scope: !5184, file: !5184, line: 167, type: !5308, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5310)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{null, !172, !172}
!5310 = !{!5311, !5312}
!5311 = !DILocalVariable(name: "new", arg: 1, scope: !5307, file: !5184, line: 167, type: !172)
!5312 = !DILocalVariable(name: "head", arg: 2, scope: !5307, file: !5184, line: 167, type: !172)
!5313 = !DILocation(line: 167, column: 47, scope: !5307)
!5314 = !DILocation(line: 167, column: 70, scope: !5307)
!5315 = !DILocation(line: 169, column: 13, scope: !5307)
!5316 = !DILocation(line: 169, column: 18, scope: !5307)
!5317 = !DILocation(line: 169, column: 24, scope: !5307)
!5318 = !DILocation(line: 169, column: 30, scope: !5307)
!5319 = !DILocation(line: 169, column: 2, scope: !5307)
!5320 = !DILocation(line: 170, column: 1, scope: !5307)
!5321 = !DISubprogram(name: "mutex_unlock", scope: !631, file: !631, line: 246, type: !5206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5322 = distinct !DISubprogram(name: "misc_deregister", scope: !3, file: !3, line: 294, type: !5323, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5325)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{null, !148}
!5325 = !{!5326, !5327, !5330}
!5326 = !DILocalVariable(name: "misc", arg: 1, scope: !5322, file: !3, line: 294, type: !148)
!5327 = !DILocalVariable(name: "__ret_warn_on", scope: !5328, file: !3, line: 296, type: !65)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 296, column: 6)
!5329 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 296, column: 6)
!5330 = !DILocalVariable(name: "__flags", scope: !5331, file: !3, line: 296, type: !65)
!5331 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 296, column: 6)
!5332 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 296, column: 6)
!5333 = !DILocation(line: 294, column: 41, scope: !5322)
!5334 = !DILocation(line: 296, column: 6, scope: !5328)
!5335 = !DILocation(line: 296, column: 6, scope: !5332)
!5336 = !DILocation(line: 296, column: 6, scope: !5331)
!5337 = !DILocation(line: 296, column: 6, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 296, column: 6)
!5339 = !DILocation(line: 296, column: 6, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 296, column: 6)
!5341 = !{i64 2154667455, i64 2154667484, i64 2154667530, i64 2154667588, i64 2154667642, i64 2154667696, i64 2154667751, i64 2154667782, i64 2154668090, i64 2154668096, i64 2154668143, i64 2154668166, i64 2154668192}
!5342 = !DILocation(line: 296, column: 6, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 296, column: 6)
!5344 = !DILocation(line: 296, column: 6, scope: !5329)
!5345 = !DILocation(line: 296, column: 6, scope: !5322)
!5346 = !DILocation(line: 297, column: 3, scope: !5329)
!5347 = !DILocation(line: 299, column: 2, scope: !5322)
!5348 = !DILocation(line: 300, column: 12, scope: !5322)
!5349 = !DILocation(line: 300, column: 18, scope: !5322)
!5350 = !DILocation(line: 300, column: 2, scope: !5322)
!5351 = !DILocation(line: 301, column: 30, scope: !5322)
!5352 = !DILocation(line: 301, column: 2, scope: !5322)
!5353 = !DILocation(line: 302, column: 18, scope: !5322)
!5354 = !DILocation(line: 302, column: 24, scope: !5322)
!5355 = !DILocation(line: 302, column: 2, scope: !5322)
!5356 = !DILocation(line: 303, column: 2, scope: !5322)
!5357 = !DILocation(line: 304, column: 1, scope: !5322)
!5358 = distinct !DISubprogram(name: "list_empty", scope: !5184, file: !5184, line: 371, type: !5359, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5363)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!65, !5361}
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!5363 = !{!5364}
!5364 = !DILocalVariable(name: "head", arg: 1, scope: !5358, file: !5184, line: 371, type: !5361)
!5365 = !DILocation(line: 371, column: 54, scope: !5358)
!5366 = !DILocation(line: 373, column: 9, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5358, file: !5184, line: 373, column: 9)
!5368 = !DILocation(line: 373, column: 9, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5367, file: !5184, line: 373, column: 9)
!5370 = !DILocation(line: 373, column: 34, scope: !5358)
!5371 = !DILocation(line: 373, column: 31, scope: !5358)
!5372 = !DILocation(line: 373, column: 2, scope: !5358)
!5373 = distinct !DISubprogram(name: "list_del", scope: !5184, file: !5184, line: 227, type: !5185, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5374)
!5374 = !{!5375}
!5375 = !DILocalVariable(name: "entry", arg: 1, scope: !5373, file: !5184, line: 227, type: !172)
!5376 = !DILocation(line: 227, column: 47, scope: !5373)
!5377 = !DILocation(line: 229, column: 19, scope: !5373)
!5378 = !DILocation(line: 229, column: 2, scope: !5373)
!5379 = !DILocation(line: 230, column: 2, scope: !5373)
!5380 = !DILocation(line: 230, column: 9, scope: !5373)
!5381 = !DILocation(line: 230, column: 14, scope: !5373)
!5382 = !DILocation(line: 231, column: 2, scope: !5373)
!5383 = !DILocation(line: 231, column: 9, scope: !5373)
!5384 = !DILocation(line: 231, column: 14, scope: !5373)
!5385 = !DILocation(line: 232, column: 1, scope: !5373)
!5386 = !DISubprogram(name: "device_destroy", scope: !50, file: !50, line: 1187, type: !5387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{null, !2438, !501}
!5389 = distinct !DISubprogram(name: "__initstub__kmod_misc__289_330_misc_init4", scope: !3, file: !3, line: 330, type: !4647, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5390 = !DILocation(line: 330, column: 1, scope: !5389)
!5391 = distinct !DISubprogram(name: "misc_init", scope: !3, file: !3, line: 307, type: !4647, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5392)
!5392 = !{!5393, !5394, !5395, !5396}
!5393 = !DILocalVariable(name: "err", scope: !5391, file: !3, line: 309, type: !65)
!5394 = !DILocalVariable(name: "ret", scope: !5391, file: !3, line: 310, type: !2565)
!5395 = !DILabel(scope: !5391, name: "fail_printk", file: !3, line: 322)
!5396 = !DILabel(scope: !5391, name: "fail_remove", file: !3, line: 325)
!5397 = !DILocation(line: 309, column: 2, scope: !5391)
!5398 = !DILocation(line: 309, column: 6, scope: !5391)
!5399 = !DILocation(line: 310, column: 2, scope: !5391)
!5400 = !DILocation(line: 310, column: 25, scope: !5391)
!5401 = !DILocation(line: 312, column: 8, scope: !5391)
!5402 = !DILocation(line: 312, column: 6, scope: !5391)
!5403 = !DILocation(line: 313, column: 8, scope: !5391)
!5404 = !DILocation(line: 313, column: 6, scope: !5391)
!5405 = !DILocation(line: 314, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 314, column: 6)
!5407 = !DILocation(line: 314, column: 6, scope: !5391)
!5408 = !DILocation(line: 315, column: 3, scope: !5406)
!5409 = !DILocation(line: 317, column: 6, scope: !5391)
!5410 = !DILocation(line: 318, column: 6, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 318, column: 6)
!5412 = !DILocation(line: 318, column: 6, scope: !5391)
!5413 = !DILocation(line: 319, column: 3, scope: !5411)
!5414 = !DILocation(line: 320, column: 2, scope: !5391)
!5415 = !DILocation(line: 322, column: 1, scope: !5391)
!5416 = !DILocation(line: 323, column: 2, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 323, column: 2)
!5418 = !DILocation(line: 323, column: 2, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 323, column: 2)
!5420 = !DILocation(line: 324, column: 2, scope: !5391)
!5421 = !DILocation(line: 325, column: 1, scope: !5391)
!5422 = !DILocation(line: 326, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 326, column: 6)
!5424 = !DILocation(line: 326, column: 6, scope: !5391)
!5425 = !DILocation(line: 327, column: 3, scope: !5423)
!5426 = !DILocation(line: 328, column: 9, scope: !5391)
!5427 = !DILocation(line: 328, column: 2, scope: !5391)
!5428 = !DILocation(line: 329, column: 1, scope: !5391)
!5429 = distinct !DISubprogram(name: "ida_alloc_max", scope: !5007, file: !5007, line: 309, type: !5430, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5433)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!65, !5432, !7, !1074}
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5433 = !{!5434, !5435, !5436}
!5434 = !DILocalVariable(name: "ida", arg: 1, scope: !5429, file: !5007, line: 309, type: !5432)
!5435 = !DILocalVariable(name: "max", arg: 2, scope: !5429, file: !5007, line: 309, type: !7)
!5436 = !DILocalVariable(name: "gfp", arg: 3, scope: !5429, file: !5007, line: 309, type: !1074)
!5437 = !DILocation(line: 309, column: 45, scope: !5429)
!5438 = !DILocation(line: 309, column: 63, scope: !5429)
!5439 = !DILocation(line: 309, column: 74, scope: !5429)
!5440 = !DILocation(line: 311, column: 25, scope: !5429)
!5441 = !DILocation(line: 311, column: 33, scope: !5429)
!5442 = !DILocation(line: 311, column: 38, scope: !5429)
!5443 = !DILocation(line: 311, column: 9, scope: !5429)
!5444 = !DILocation(line: 311, column: 2, scope: !5429)
!5445 = !DISubprogram(name: "ida_alloc_range", scope: !5007, file: !5007, line: 257, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!65, !5432, !7, !7, !1074}
!5448 = distinct !DISubprogram(name: "misc_devnode", scope: !3, file: !3, line: 185, type: !2449, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5449)
!5449 = !{!5450, !5451, !5452}
!5450 = !DILocalVariable(name: "dev", arg: 1, scope: !5448, file: !3, line: 185, type: !2046)
!5451 = !DILocalVariable(name: "mode", arg: 2, scope: !5448, file: !3, line: 185, type: !2052)
!5452 = !DILocalVariable(name: "c", scope: !5448, file: !3, line: 187, type: !5453)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!5455 = !DILocation(line: 185, column: 48, scope: !5448)
!5456 = !DILocation(line: 185, column: 62, scope: !5448)
!5457 = !DILocation(line: 187, column: 2, scope: !5448)
!5458 = !DILocation(line: 187, column: 27, scope: !5448)
!5459 = !DILocation(line: 187, column: 47, scope: !5448)
!5460 = !DILocation(line: 187, column: 31, scope: !5448)
!5461 = !DILocation(line: 189, column: 6, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 189, column: 6)
!5463 = !DILocation(line: 189, column: 11, scope: !5462)
!5464 = !DILocation(line: 189, column: 14, scope: !5462)
!5465 = !DILocation(line: 189, column: 17, scope: !5462)
!5466 = !DILocation(line: 189, column: 6, scope: !5448)
!5467 = !DILocation(line: 190, column: 11, scope: !5462)
!5468 = !DILocation(line: 190, column: 14, scope: !5462)
!5469 = !DILocation(line: 190, column: 4, scope: !5462)
!5470 = !DILocation(line: 190, column: 9, scope: !5462)
!5471 = !DILocation(line: 190, column: 3, scope: !5462)
!5472 = !DILocation(line: 191, column: 6, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 191, column: 6)
!5474 = !DILocation(line: 191, column: 9, scope: !5473)
!5475 = !DILocation(line: 191, column: 6, scope: !5448)
!5476 = !DILocation(line: 192, column: 18, scope: !5473)
!5477 = !DILocation(line: 192, column: 21, scope: !5473)
!5478 = !DILocation(line: 192, column: 10, scope: !5473)
!5479 = !DILocation(line: 192, column: 3, scope: !5473)
!5480 = !DILocation(line: 193, column: 2, scope: !5448)
!5481 = !DILocation(line: 194, column: 1, scope: !5448)
!5482 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !50, file: !50, line: 916, type: !5483, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5485)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!147, !2046}
!5485 = !{!5486}
!5486 = !DILocalVariable(name: "dev", arg: 1, scope: !5482, file: !50, line: 916, type: !2046)
!5487 = !DILocation(line: 916, column: 58, scope: !5482)
!5488 = !DILocation(line: 918, column: 9, scope: !5482)
!5489 = !DILocation(line: 918, column: 14, scope: !5482)
!5490 = !DILocation(line: 918, column: 2, scope: !5482)
!5491 = !DISubprogram(name: "kstrdup", scope: !5492, file: !5492, line: 216, type: !5493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5492 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!265, !154, !1074}
!5495 = !DISubprogram(name: "ida_free", scope: !5007, file: !5007, line: 258, type: !5496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{null, !5432, !7}
!5498 = distinct !DISubprogram(name: "__list_add", scope: !5184, file: !5184, line: 146, type: !5499, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5501)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{null, !172, !172, !172}
!5501 = !{!5502, !5503, !5504}
!5502 = !DILocalVariable(name: "new", arg: 1, scope: !5498, file: !5184, line: 146, type: !172)
!5503 = !DILocalVariable(name: "prev", arg: 2, scope: !5498, file: !5184, line: 147, type: !172)
!5504 = !DILocalVariable(name: "next", arg: 3, scope: !5498, file: !5184, line: 148, type: !172)
!5505 = !DILocation(line: 146, column: 49, scope: !5498)
!5506 = !DILocation(line: 147, column: 28, scope: !5498)
!5507 = !DILocation(line: 148, column: 28, scope: !5498)
!5508 = !DILocation(line: 150, column: 24, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5498, file: !5184, line: 150, column: 6)
!5510 = !DILocation(line: 150, column: 29, scope: !5509)
!5511 = !DILocation(line: 150, column: 35, scope: !5509)
!5512 = !DILocation(line: 150, column: 7, scope: !5509)
!5513 = !DILocation(line: 150, column: 6, scope: !5498)
!5514 = !DILocation(line: 151, column: 3, scope: !5509)
!5515 = !DILocation(line: 153, column: 15, scope: !5498)
!5516 = !DILocation(line: 153, column: 2, scope: !5498)
!5517 = !DILocation(line: 153, column: 8, scope: !5498)
!5518 = !DILocation(line: 153, column: 13, scope: !5498)
!5519 = !DILocation(line: 154, column: 14, scope: !5498)
!5520 = !DILocation(line: 154, column: 2, scope: !5498)
!5521 = !DILocation(line: 154, column: 7, scope: !5498)
!5522 = !DILocation(line: 154, column: 12, scope: !5498)
!5523 = !DILocation(line: 155, column: 14, scope: !5498)
!5524 = !DILocation(line: 155, column: 2, scope: !5498)
!5525 = !DILocation(line: 155, column: 7, scope: !5498)
!5526 = !DILocation(line: 155, column: 12, scope: !5498)
!5527 = !DILocation(line: 156, column: 2, scope: !5498)
!5528 = !DILocation(line: 156, column: 2, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5498, file: !5184, line: 156, column: 2)
!5530 = !DILocation(line: 156, column: 2, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5529, file: !5184, line: 156, column: 2)
!5532 = !DILocation(line: 156, column: 2, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5529, file: !5184, line: 156, column: 2)
!5534 = !DILocation(line: 157, column: 1, scope: !5498)
!5535 = distinct !DISubprogram(name: "__list_add_valid", scope: !5184, file: !5184, line: 128, type: !5536, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5538)
!5536 = !DISubroutineType(types: !5537)
!5537 = !{!877, !172, !172, !172}
!5538 = !{!5539, !5540, !5541}
!5539 = !DILocalVariable(name: "new", arg: 1, scope: !5535, file: !5184, line: 128, type: !172)
!5540 = !DILocalVariable(name: "prev", arg: 2, scope: !5535, file: !5184, line: 129, type: !172)
!5541 = !DILocalVariable(name: "next", arg: 3, scope: !5535, file: !5184, line: 130, type: !172)
!5542 = !DILocation(line: 128, column: 55, scope: !5535)
!5543 = !DILocation(line: 129, column: 23, scope: !5535)
!5544 = !DILocation(line: 130, column: 23, scope: !5535)
!5545 = !DILocation(line: 132, column: 2, scope: !5535)
!5546 = distinct !DISubprogram(name: "__list_del_entry", scope: !5184, file: !5184, line: 213, type: !5185, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5547)
!5547 = !{!5548}
!5548 = !DILocalVariable(name: "entry", arg: 1, scope: !5546, file: !5184, line: 213, type: !172)
!5549 = !DILocation(line: 213, column: 55, scope: !5546)
!5550 = !DILocation(line: 215, column: 30, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5546, file: !5184, line: 215, column: 6)
!5552 = !DILocation(line: 215, column: 7, scope: !5551)
!5553 = !DILocation(line: 215, column: 6, scope: !5546)
!5554 = !DILocation(line: 216, column: 3, scope: !5551)
!5555 = !DILocation(line: 218, column: 13, scope: !5546)
!5556 = !DILocation(line: 218, column: 20, scope: !5546)
!5557 = !DILocation(line: 218, column: 26, scope: !5546)
!5558 = !DILocation(line: 218, column: 33, scope: !5546)
!5559 = !DILocation(line: 218, column: 2, scope: !5546)
!5560 = !DILocation(line: 219, column: 1, scope: !5546)
!5561 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5184, file: !5184, line: 134, type: !5562, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5564)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!877, !172}
!5564 = !{!5565}
!5565 = !DILocalVariable(name: "entry", arg: 1, scope: !5561, file: !5184, line: 134, type: !172)
!5566 = !DILocation(line: 134, column: 61, scope: !5561)
!5567 = !DILocation(line: 136, column: 2, scope: !5561)
!5568 = distinct !DISubprogram(name: "__list_del", scope: !5184, file: !5184, line: 193, type: !5308, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5569)
!5569 = !{!5570, !5571}
!5570 = !DILocalVariable(name: "prev", arg: 1, scope: !5568, file: !5184, line: 193, type: !172)
!5571 = !DILocalVariable(name: "next", arg: 2, scope: !5568, file: !5184, line: 193, type: !172)
!5572 = !DILocation(line: 193, column: 50, scope: !5568)
!5573 = !DILocation(line: 193, column: 75, scope: !5568)
!5574 = !DILocation(line: 195, column: 15, scope: !5568)
!5575 = !DILocation(line: 195, column: 2, scope: !5568)
!5576 = !DILocation(line: 195, column: 8, scope: !5568)
!5577 = !DILocation(line: 195, column: 13, scope: !5568)
!5578 = !DILocation(line: 196, column: 2, scope: !5568)
!5579 = !DILocation(line: 196, column: 2, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5568, file: !5184, line: 196, column: 2)
!5581 = !DILocation(line: 196, column: 2, scope: !5582)
!5582 = distinct !DILexicalBlock(scope: !5580, file: !5184, line: 196, column: 2)
!5583 = !DILocation(line: 196, column: 2, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5580, file: !5184, line: 196, column: 2)
!5585 = !DILocation(line: 197, column: 1, scope: !5568)
!5586 = !DISubprogram(name: "proc_create_seq_private", scope: !2567, file: !2567, line: 92, type: !5587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5587 = !DISubroutineType(types: !5588)
!5588 = !{!2565, !154, !307, !2565, !651, !7, !147}
!5589 = !DISubprogram(name: "class_register", scope: !2441, file: !2441, line: 80, type: !5590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!65, !2438}
!5592 = distinct !DISubprogram(name: "register_chrdev", scope: !14, file: !14, line: 2602, type: !5593, scopeLine: 2604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5595)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!65, !7, !154, !158}
!5595 = !{!5596, !5597, !5598}
!5596 = !DILocalVariable(name: "major", arg: 1, scope: !5592, file: !14, line: 2602, type: !7)
!5597 = !DILocalVariable(name: "name", arg: 2, scope: !5592, file: !14, line: 2602, type: !154)
!5598 = !DILocalVariable(name: "fops", arg: 3, scope: !5592, file: !14, line: 2603, type: !158)
!5599 = !DILocation(line: 2602, column: 48, scope: !5592)
!5600 = !DILocation(line: 2602, column: 67, scope: !5592)
!5601 = !DILocation(line: 2603, column: 37, scope: !5592)
!5602 = !DILocation(line: 2605, column: 27, scope: !5592)
!5603 = !DILocation(line: 2605, column: 42, scope: !5592)
!5604 = !DILocation(line: 2605, column: 48, scope: !5592)
!5605 = !DILocation(line: 2605, column: 9, scope: !5592)
!5606 = !DILocation(line: 2605, column: 2, scope: !5592)
!5607 = !DISubprogram(name: "_printk", scope: !5608, file: !5608, line: 153, type: !5609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5608 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!65, !154, null}
!5611 = !DISubprogram(name: "class_unregister", scope: !2441, file: !2441, line: 81, type: !2453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5612 = !DISubprogram(name: "remove_proc_entry", scope: !2567, file: !2567, line: 125, type: !5613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5613 = !DISubroutineType(types: !5614)
!5614 = !{null, !154, !2565}
!5615 = distinct !DISubprogram(name: "misc_seq_start", scope: !3, file: !3, line: 103, type: !657, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5616)
!5616 = !{!5617, !5618}
!5617 = !DILocalVariable(name: "seq", arg: 1, scope: !5615, file: !3, line: 103, type: !618)
!5618 = !DILocalVariable(name: "pos", arg: 2, scope: !5615, file: !3, line: 103, type: !659)
!5619 = !DILocation(line: 103, column: 46, scope: !5615)
!5620 = !DILocation(line: 103, column: 59, scope: !5615)
!5621 = !DILocation(line: 105, column: 2, scope: !5615)
!5622 = !DILocation(line: 106, column: 37, scope: !5615)
!5623 = !DILocation(line: 106, column: 36, scope: !5615)
!5624 = !DILocation(line: 106, column: 9, scope: !5615)
!5625 = !DILocation(line: 106, column: 2, scope: !5615)
!5626 = distinct !DISubprogram(name: "misc_seq_stop", scope: !3, file: !3, line: 114, type: !662, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5627)
!5627 = !{!5628, !5629}
!5628 = !DILocalVariable(name: "seq", arg: 1, scope: !5626, file: !3, line: 114, type: !618)
!5629 = !DILocalVariable(name: "v", arg: 2, scope: !5626, file: !3, line: 114, type: !147)
!5630 = !DILocation(line: 114, column: 44, scope: !5626)
!5631 = !DILocation(line: 114, column: 55, scope: !5626)
!5632 = !DILocation(line: 116, column: 2, scope: !5626)
!5633 = !DILocation(line: 117, column: 1, scope: !5626)
!5634 = distinct !DISubprogram(name: "misc_seq_next", scope: !3, file: !3, line: 109, type: !666, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5635)
!5635 = !{!5636, !5637, !5638}
!5636 = !DILocalVariable(name: "seq", arg: 1, scope: !5634, file: !3, line: 109, type: !618)
!5637 = !DILocalVariable(name: "v", arg: 2, scope: !5634, file: !3, line: 109, type: !147)
!5638 = !DILocalVariable(name: "pos", arg: 3, scope: !5634, file: !3, line: 109, type: !659)
!5639 = !DILocation(line: 109, column: 45, scope: !5634)
!5640 = !DILocation(line: 109, column: 56, scope: !5634)
!5641 = !DILocation(line: 109, column: 67, scope: !5634)
!5642 = !DILocation(line: 111, column: 23, scope: !5634)
!5643 = !DILocation(line: 111, column: 38, scope: !5634)
!5644 = !DILocation(line: 111, column: 9, scope: !5634)
!5645 = !DILocation(line: 111, column: 2, scope: !5634)
!5646 = distinct !DISubprogram(name: "misc_seq_show", scope: !3, file: !3, line: 119, type: !670, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5647)
!5647 = !{!5648, !5649, !5650, !5651}
!5648 = !DILocalVariable(name: "seq", arg: 1, scope: !5646, file: !3, line: 119, type: !618)
!5649 = !DILocalVariable(name: "v", arg: 2, scope: !5646, file: !3, line: 119, type: !147)
!5650 = !DILocalVariable(name: "p", scope: !5646, file: !3, line: 121, type: !5453)
!5651 = !DILocalVariable(name: "__mptr", scope: !5652, file: !3, line: 121, type: !147)
!5652 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 121, column: 31)
!5653 = !DILocation(line: 119, column: 43, scope: !5646)
!5654 = !DILocation(line: 119, column: 54, scope: !5646)
!5655 = !DILocation(line: 121, column: 2, scope: !5646)
!5656 = !DILocation(line: 121, column: 27, scope: !5646)
!5657 = !DILocation(line: 121, column: 31, scope: !5652)
!5658 = !DILocation(line: 121, column: 31, scope: !5646)
!5659 = !DILocation(line: 123, column: 13, scope: !5646)
!5660 = !DILocation(line: 123, column: 30, scope: !5646)
!5661 = !DILocation(line: 123, column: 33, scope: !5646)
!5662 = !DILocation(line: 123, column: 40, scope: !5646)
!5663 = !DILocation(line: 123, column: 43, scope: !5646)
!5664 = !DILocation(line: 123, column: 50, scope: !5646)
!5665 = !DILocation(line: 123, column: 53, scope: !5646)
!5666 = !DILocation(line: 123, column: 2, scope: !5646)
!5667 = !DILocation(line: 125, column: 1, scope: !5646)
!5668 = !DILocation(line: 124, column: 2, scope: !5646)
!5669 = !DISubprogram(name: "seq_list_start", scope: !620, file: !620, line: 274, type: !5670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5670 = !DISubroutineType(types: !5671)
!5671 = !{!172, !172, !506}
!5672 = !DISubprogram(name: "seq_list_next", scope: !620, file: !620, line: 278, type: !5673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!172, !147, !172, !659}
!5675 = !DISubprogram(name: "seq_printf", scope: !620, file: !620, line: 119, type: !5676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{null, !618, !154, null}
!5678 = !DISubprogram(name: "__register_chrdev", scope: !14, file: !14, line: 2594, type: !5679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{!65, !7, !7, !7, !154, !158}
!5681 = distinct !DISubprogram(name: "misc_open", scope: !3, file: !3, line: 136, type: !4912, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5682)
!5682 = !{!5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5693, !5696, !5701, !5704, !5706}
!5683 = !DILocalVariable(name: "inode", arg: 1, scope: !5681, file: !3, line: 136, type: !345)
!5684 = !DILocalVariable(name: "file", arg: 2, scope: !5681, file: !3, line: 136, type: !1625)
!5685 = !DILocalVariable(name: "minor", scope: !5681, file: !3, line: 138, type: !65)
!5686 = !DILocalVariable(name: "c", scope: !5681, file: !3, line: 139, type: !148)
!5687 = !DILocalVariable(name: "iter", scope: !5681, file: !3, line: 139, type: !148)
!5688 = !DILocalVariable(name: "err", scope: !5681, file: !3, line: 140, type: !65)
!5689 = !DILocalVariable(name: "new_fops", scope: !5681, file: !3, line: 141, type: !158)
!5690 = !DILocalVariable(name: "__mptr", scope: !5691, file: !3, line: 145, type: !147)
!5691 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 145, column: 2)
!5692 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 145, column: 2)
!5693 = !DILocalVariable(name: "__mptr", scope: !5694, file: !3, line: 145, type: !147)
!5694 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 145, column: 2)
!5695 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 145, column: 2)
!5696 = !DILocalVariable(name: "__mptr", scope: !5697, file: !3, line: 158, type: !147)
!5697 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 158, column: 3)
!5698 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 158, column: 3)
!5699 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 153, column: 17)
!5700 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 153, column: 6)
!5701 = !DILocalVariable(name: "__mptr", scope: !5702, file: !3, line: 158, type: !147)
!5702 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 158, column: 3)
!5703 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 158, column: 3)
!5704 = !DILocalVariable(name: "__file", scope: !5705, file: !3, line: 177, type: !1625)
!5705 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 177, column: 2)
!5706 = !DILabel(scope: !5681, name: "fail", file: !3, line: 180)
!5707 = !DILocation(line: 136, column: 36, scope: !5681)
!5708 = !DILocation(line: 136, column: 56, scope: !5681)
!5709 = !DILocation(line: 138, column: 2, scope: !5681)
!5710 = !DILocation(line: 138, column: 6, scope: !5681)
!5711 = !DILocation(line: 138, column: 21, scope: !5681)
!5712 = !DILocation(line: 138, column: 14, scope: !5681)
!5713 = !DILocation(line: 139, column: 2, scope: !5681)
!5714 = !DILocation(line: 139, column: 21, scope: !5681)
!5715 = !DILocation(line: 139, column: 32, scope: !5681)
!5716 = !DILocation(line: 140, column: 2, scope: !5681)
!5717 = !DILocation(line: 140, column: 6, scope: !5681)
!5718 = !DILocation(line: 141, column: 2, scope: !5681)
!5719 = !DILocation(line: 141, column: 32, scope: !5681)
!5720 = !DILocation(line: 143, column: 2, scope: !5681)
!5721 = !DILocation(line: 145, column: 2, scope: !5691)
!5722 = !DILocation(line: 145, column: 2, scope: !5692)
!5723 = !DILocation(line: 145, column: 2, scope: !5695)
!5724 = !DILocation(line: 146, column: 7, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 146, column: 7)
!5726 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 145, column: 46)
!5727 = !DILocation(line: 146, column: 13, scope: !5725)
!5728 = !DILocation(line: 146, column: 22, scope: !5725)
!5729 = !DILocation(line: 146, column: 19, scope: !5725)
!5730 = !DILocation(line: 146, column: 7, scope: !5726)
!5731 = !DILocation(line: 147, column: 4, scope: !5725)
!5732 = !DILocation(line: 148, column: 7, scope: !5726)
!5733 = !DILocation(line: 148, column: 5, scope: !5726)
!5734 = !DILocation(line: 149, column: 14, scope: !5726)
!5735 = !DILocation(line: 149, column: 12, scope: !5726)
!5736 = !DILocation(line: 150, column: 3, scope: !5726)
!5737 = !DILocation(line: 145, column: 2, scope: !5694)
!5738 = distinct !{!5738, !5722, !5739, !5125, !5126}
!5739 = !DILocation(line: 151, column: 2, scope: !5692)
!5740 = !DILocation(line: 153, column: 7, scope: !5700)
!5741 = !DILocation(line: 153, column: 6, scope: !5681)
!5742 = !DILocation(line: 154, column: 3, scope: !5699)
!5743 = !DILocation(line: 155, column: 3, scope: !5699)
!5744 = !DILocation(line: 156, column: 3, scope: !5699)
!5745 = !DILocation(line: 158, column: 3, scope: !5697)
!5746 = !DILocation(line: 158, column: 3, scope: !5698)
!5747 = !DILocation(line: 158, column: 3, scope: !5703)
!5748 = !DILocation(line: 159, column: 8, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 159, column: 8)
!5750 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 158, column: 47)
!5751 = !DILocation(line: 159, column: 14, scope: !5749)
!5752 = !DILocation(line: 159, column: 23, scope: !5749)
!5753 = !DILocation(line: 159, column: 20, scope: !5749)
!5754 = !DILocation(line: 159, column: 8, scope: !5750)
!5755 = !DILocation(line: 160, column: 5, scope: !5749)
!5756 = !DILocation(line: 161, column: 8, scope: !5750)
!5757 = !DILocation(line: 161, column: 6, scope: !5750)
!5758 = !DILocation(line: 162, column: 15, scope: !5750)
!5759 = !DILocation(line: 162, column: 13, scope: !5750)
!5760 = !DILocation(line: 163, column: 4, scope: !5750)
!5761 = !DILocation(line: 158, column: 3, scope: !5702)
!5762 = distinct !{!5762, !5746, !5763, !5125, !5126}
!5763 = !DILocation(line: 164, column: 3, scope: !5698)
!5764 = !DILocation(line: 165, column: 8, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 165, column: 7)
!5766 = !DILocation(line: 165, column: 7, scope: !5699)
!5767 = !DILocation(line: 166, column: 4, scope: !5765)
!5768 = !DILocation(line: 167, column: 2, scope: !5699)
!5769 = !DILocation(line: 174, column: 23, scope: !5681)
!5770 = !DILocation(line: 174, column: 2, scope: !5681)
!5771 = !DILocation(line: 174, column: 8, scope: !5681)
!5772 = !DILocation(line: 174, column: 21, scope: !5681)
!5773 = !DILocation(line: 176, column: 6, scope: !5681)
!5774 = !DILocation(line: 177, column: 2, scope: !5681)
!5775 = !DILocation(line: 177, column: 2, scope: !5705)
!5776 = !DILocation(line: 177, column: 2, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5778, file: !3, line: 177, column: 2)
!5778 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 177, column: 2)
!5779 = !DILocation(line: 177, column: 2, scope: !5778)
!5780 = !DILocation(line: 177, column: 2, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5782, file: !3, line: 177, column: 2)
!5782 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 177, column: 2)
!5783 = !DILocation(line: 177, column: 2, scope: !5782)
!5784 = !DILocation(line: 177, column: 2, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 177, column: 2)
!5786 = !DILocation(line: 177, column: 2, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 177, column: 2)
!5788 = !DILocation(line: 177, column: 2, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 177, column: 2)
!5790 = !{i64 2154661289, i64 2154661318, i64 2154661364, i64 2154661422, i64 2154661476, i64 2154661530, i64 2154661585, i64 2154661616}
!5791 = !DILocation(line: 178, column: 6, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 178, column: 6)
!5793 = !DILocation(line: 178, column: 12, scope: !5792)
!5794 = !DILocation(line: 178, column: 18, scope: !5792)
!5795 = !DILocation(line: 178, column: 6, scope: !5681)
!5796 = !DILocation(line: 179, column: 9, scope: !5792)
!5797 = !DILocation(line: 179, column: 15, scope: !5792)
!5798 = !DILocation(line: 179, column: 21, scope: !5792)
!5799 = !DILocation(line: 179, column: 26, scope: !5792)
!5800 = !DILocation(line: 179, column: 33, scope: !5792)
!5801 = !DILocation(line: 179, column: 7, scope: !5792)
!5802 = !DILocation(line: 179, column: 3, scope: !5792)
!5803 = !DILocation(line: 180, column: 1, scope: !5681)
!5804 = !DILocation(line: 181, column: 2, scope: !5681)
!5805 = !DILocation(line: 182, column: 9, scope: !5681)
!5806 = !DILocation(line: 183, column: 1, scope: !5681)
!5807 = !DILocation(line: 182, column: 2, scope: !5681)
!5808 = distinct !DISubprogram(name: "iminor", scope: !14, file: !14, line: 938, type: !5809, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5811)
!5809 = !DISubroutineType(types: !5810)
!5810 = !{!7, !3966}
!5811 = !{!5812}
!5812 = !DILocalVariable(name: "inode", arg: 1, scope: !5808, file: !14, line: 938, type: !3966)
!5813 = !DILocation(line: 938, column: 51, scope: !5808)
!5814 = !DILocation(line: 940, column: 9, scope: !5808)
!5815 = !DILocation(line: 940, column: 2, scope: !5808)
!5816 = !DISubprogram(name: "try_module_get", scope: !6, file: !6, line: 696, type: !5817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5817 = !DISubroutineType(types: !5818)
!5818 = !{!877, !163}
!5819 = !DISubprogram(name: "__request_module", scope: !5820, file: !5820, line: 24, type: !5821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5820 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6022a92e643474d91bec12d05ea4184")
!5821 = !DISubroutineType(types: !5822)
!5822 = !{!65, !877, !154, null}
!5823 = !DISubprogram(name: "module_put", scope: !6, file: !6, line: 706, type: !4564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
