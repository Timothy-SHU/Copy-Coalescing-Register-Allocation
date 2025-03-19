; ModuleID = 'kernel/module/kmod.c'
source_filename = "kernel/module/kmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___request_module: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __request_module ; .previous"

%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }

@modprobe_path = hidden global [256 x i8] c"/sbin/modprobe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16, !dbg !0
@.str = private unnamed_addr constant [21 x i8] c"kernel/module/kmod.c\00", align 1, !dbg !143
@kmod_concurrent_max = internal global %struct.semaphore { %struct.raw_spinlock zeroinitializer, i32 50, %struct.list_head { ptr getelementptr (i8, ptr @kmod_concurrent_max, i64 8), ptr getelementptr (i8, ptr @kmod_concurrent_max, i64 8) } }, align 8, !dbg !204
@__request_module._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !148
@__func__.__request_module = private unnamed_addr constant [17 x i8] c"__request_module\00", align 1, !dbg !192
@.str.1 = private unnamed_addr constant [106 x i8] c"\014request_module: modprobe %s cannot be processed, kmod busy with %d threads for more than %d seconds now\00", align 1, !dbg !197
@__UNIQUE_ID___addressable___request_module395 = internal global ptr @__request_module, section ".discard.addressable", align 8, !dbg !202
@__tracepoint_module_request = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [30 x i8] c"include/trace/events/module.h\00", align 1, !dbg !212
@trace_module_request.__UNIQUE_ID___addressable___SCK__tp_func_module_request389 = internal global ptr @__SCK__tp_func_module_request, section ".discard.addressable", align 8, !dbg !218
@__SCK__tp_func_module_request = external dso_local global %struct.static_call_key, align 8
@trace_module_request.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace390 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !251
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@call_modprobe.envp = internal global [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr null], align 16, !dbg !268
@.str.3 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1, !dbg !253
@.str.4 = private unnamed_addr constant [11 x i8] c"TERM=linux\00", align 1, !dbg !258
@.str.5 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/usr/sbin:/bin:/usr/bin\00", align 1, !dbg !263
@.str.6 = private unnamed_addr constant [3 x i8] c"-q\00", align 1, !dbg !705
@.str.7 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !710
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !712
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable___request_module395, ptr @trace_module_request.__UNIQUE_ID___addressable___SCK__tp_func_module_request389, ptr @trace_module_request.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace390], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__request_module(i1 noundef zeroext %wait, ptr noundef %fmt, ...) #0 align 16 !dbg !150 {
entry:
  %retval = alloca i32, align 4
  %wait.addr = alloca i8, align 1
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %module_name = alloca [56 x i8], align 16
  %ret = alloca i32, align 4
  %dup_ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %frombool = zext i1 %wait to i8
  store i8 %frombool, ptr %wait.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !156, metadata !DIExpression()), !dbg !727
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !157, metadata !DIExpression()), !dbg !728
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #17, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %args, metadata !158, metadata !DIExpression()), !dbg !730
  call void @llvm.lifetime.start.p0(i64 56, ptr %module_name) #17, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %module_name, metadata !169, metadata !DIExpression()), !dbg !732
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !173, metadata !DIExpression()), !dbg !734
  call void @llvm.lifetime.start.p0(i64 4, ptr %dup_ret) #17, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %dup_ret, metadata !174, metadata !DIExpression()), !dbg !735
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !736
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !175, metadata !DIExpression()), !dbg !736
  %0 = load i8, ptr %wait.addr, align 1, !dbg !736, !range !737, !noundef !738
  %tobool = trunc i8 %0 to i1, !dbg !736
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !736

land.rhs:                                         ; preds = %entry
  %call = call zeroext i1 @current_is_async() #18, !dbg !736
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %call, %land.rhs ], !dbg !739
  %lnot = xor i1 %1, true, !dbg !736
  %lnot1 = xor i1 %lnot, true, !dbg !736
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !736
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !736
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !740
  %tobool2 = icmp ne i32 %2, 0, !dbg !740
  %lnot3 = xor i1 %tobool2, true, !dbg !740
  %lnot5 = xor i1 %lnot3, true, !dbg !740
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !740
  %conv = sext i32 %lnot.ext6 to i64, !dbg !740
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !740
  %tobool7 = icmp ne i64 %expval, 0, !dbg !740
  br i1 %tobool7, label %if.then, label %if.end, !dbg !736

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !740

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !741
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !177, metadata !DIExpression()), !dbg !741
  store i32 2307, ptr %__flags, align 4, !dbg !741
  br label %do.body8, !dbg !741

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !742

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !742

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !741

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !744
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 144, i32 %3, i64 12) #17, !dbg !744, !srcloc !746
  br label %do.cond10, !dbg !744

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !744

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !741

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !747

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !747

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !740
  br label %do.cond15, !dbg !741

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !741

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !741

if.end:                                           ; preds = %do.end16, %land.end
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !736
  %tobool17 = icmp ne i32 %4, 0, !dbg !736
  %lnot18 = xor i1 %tobool17, true, !dbg !736
  %lnot20 = xor i1 %lnot18, true, !dbg !736
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !736
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !736
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !736
  store i64 %expval23, ptr %tmp, align 8, !dbg !740
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !749
  %5 = load i64, ptr %tmp, align 8, !dbg !736
  %6 = load i8, ptr @modprobe_path, align 16, !dbg !750
  %tobool24 = icmp ne i8 %6, 0, !dbg !750
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !752

if.then25:                                        ; preds = %if.end
  store i32 -2, ptr %retval, align 4, !dbg !753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !753

if.end26:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !754
  call void @llvm.va_start(ptr %arraydecay), !dbg !754
  %arraydecay27 = getelementptr inbounds [56 x i8], ptr %module_name, i64 0, i64 0, !dbg !755
  %7 = load ptr, ptr %fmt.addr, align 8, !dbg !756
  %arraydecay28 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !757
  %call29 = call i32 @vsnprintf(ptr noundef %arraydecay27, i64 noundef 56, ptr noundef %7, ptr noundef %arraydecay28) #18, !dbg !758
  store i32 %call29, ptr %ret, align 4, !dbg !759
  %arraydecay30 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !760
  call void @llvm.va_end(ptr %arraydecay30), !dbg !760
  %8 = load i32, ptr %ret, align 4, !dbg !761
  %conv31 = sext i32 %8 to i64, !dbg !761
  %cmp = icmp uge i64 %conv31, 56, !dbg !763
  br i1 %cmp, label %if.then33, label %if.end34, !dbg !764

if.then33:                                        ; preds = %if.end26
  store i32 -36, ptr %retval, align 4, !dbg !765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !765

if.end34:                                         ; preds = %if.end26
  %arraydecay35 = getelementptr inbounds [56 x i8], ptr %module_name, i64 0, i64 0, !dbg !766
  %call36 = call i32 @security_kernel_module_request(ptr noundef %arraydecay35) #18, !dbg !767
  store i32 %call36, ptr %ret, align 4, !dbg !768
  %9 = load i32, ptr %ret, align 4, !dbg !769
  %tobool37 = icmp ne i32 %9, 0, !dbg !769
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !771

if.then38:                                        ; preds = %if.end34
  %10 = load i32, ptr %ret, align 4, !dbg !772
  store i32 %10, ptr %retval, align 4, !dbg !773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !773

if.end39:                                         ; preds = %if.end34
  %call40 = call i32 @down_timeout(ptr noundef @kmod_concurrent_max, i64 noundef 5000) #18, !dbg !774
  store i32 %call40, ptr %ret, align 4, !dbg !775
  %11 = load i32, ptr %ret, align 4, !dbg !776
  %tobool41 = icmp ne i32 %11, 0, !dbg !776
  br i1 %tobool41, label %if.then42, label %if.end53, !dbg !778

if.then42:                                        ; preds = %if.end39
  %call43 = call i32 @___ratelimit(ptr noundef @__request_module._rs, ptr noundef @__func__.__request_module) #18, !dbg !779
  %tobool44 = icmp ne i32 %call43, 0, !dbg !779
  br i1 %tobool44, label %if.then45, label %if.end52, !dbg !783

if.then45:                                        ; preds = %if.then42
  br label %do.body46, !dbg !784

do.body46:                                        ; preds = %if.then45
  br label %do.cond47, !dbg !786

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !786

do.end48:                                         ; preds = %do.cond47
  %arraydecay50 = getelementptr inbounds [56 x i8], ptr %module_name, i64 0, i64 0, !dbg !784
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %arraydecay50, i32 noundef 50, i32 noundef 5) #19, !dbg !784
  store i32 %call51, ptr %tmp49, align 4, !dbg !786
  %12 = load i32, ptr %tmp49, align 4, !dbg !784
  br label %if.end52, !dbg !779

if.end52:                                         ; preds = %do.end48, %if.then42
  %13 = load i32, ptr %ret, align 4, !dbg !788
  store i32 %13, ptr %retval, align 4, !dbg !789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !789

if.end53:                                         ; preds = %if.end39
  %arraydecay54 = getelementptr inbounds [56 x i8], ptr %module_name, i64 0, i64 0, !dbg !790
  %14 = load i8, ptr %wait.addr, align 1, !dbg !791, !range !737, !noundef !738
  %tobool55 = trunc i8 %14 to i1, !dbg !791
  %15 = call ptr @llvm.returnaddress(i32 0), !dbg !792
  %16 = ptrtoint ptr %15 to i64, !dbg !792
  call void @trace_module_request(ptr noundef %arraydecay54, i1 noundef zeroext %tobool55, i64 noundef %16) #18, !dbg !793
  %arraydecay56 = getelementptr inbounds [56 x i8], ptr %module_name, i64 0, i64 0, !dbg !794
  %17 = load i8, ptr %wait.addr, align 1, !dbg !796, !range !737, !noundef !738
  %tobool57 = trunc i8 %17 to i1, !dbg !796
  %call58 = call zeroext i1 @kmod_dup_request_exists_wait(ptr noundef %arraydecay56, i1 noundef zeroext %tobool57, ptr noundef %dup_ret) #18, !dbg !797
  br i1 %call58, label %if.then59, label %if.end60, !dbg !798

if.then59:                                        ; preds = %if.end53
  %18 = load i32, ptr %dup_ret, align 4, !dbg !799
  store i32 %18, ptr %ret, align 4, !dbg !801
  br label %out, !dbg !802

if.end60:                                         ; preds = %if.end53
  %arraydecay61 = getelementptr inbounds [56 x i8], ptr %module_name, i64 0, i64 0, !dbg !803
  %19 = load i8, ptr %wait.addr, align 1, !dbg !804, !range !737, !noundef !738
  %tobool62 = trunc i8 %19 to i1, !dbg !804
  %20 = zext i1 %tobool62 to i64, !dbg !804
  %cond = select i1 %tobool62, i32 2, i32 1, !dbg !804
  %call64 = call i32 @call_modprobe(ptr noundef %arraydecay61, i32 noundef %cond) #18, !dbg !805
  store i32 %call64, ptr %ret, align 4, !dbg !806
  br label %out, !dbg !807

out:                                              ; preds = %if.end60, %if.then59
  call void @llvm.dbg.label(metadata !180), !dbg !808
  call void @up(ptr noundef @kmod_concurrent_max) #18, !dbg !809
  %21 = load i32, ptr %ret, align 4, !dbg !810
  store i32 %21, ptr %retval, align 4, !dbg !811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !811

cleanup:                                          ; preds = %out, %if.end52, %if.then38, %if.then33, %if.then25
  call void @llvm.lifetime.end.p0(i64 4, ptr %dup_ret) #17, !dbg !812
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !812
  call void @llvm.lifetime.end.p0(i64 56, ptr %module_name) #17, !dbg !812
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #17, !dbg !812
  %22 = load i32, ptr %retval, align 4, !dbg !812
  ret i32 %22, !dbg !812
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !813 dso_local zeroext i1 @current_is_async() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !817 dso_local i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !822 dso_local i32 @security_kernel_module_request(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !826 dso_local i32 @down_timeout(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !830 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !834 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_module_request(ptr noundef %name, i1 noundef zeroext %wait, i64 noundef %ip) #7 align 16 !dbg !220 {
entry:
  %name.addr = alloca ptr, align 8
  %wait.addr = alloca i8, align 1
  %ip.addr = alloca i64, align 8
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu387 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !225, metadata !DIExpression()), !dbg !838
  %frombool = zext i1 %wait to i8
  store i8 %frombool, ptr %wait.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !226, metadata !DIExpression()), !dbg !838
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !227, metadata !DIExpression()), !dbg !838
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_request, i32 0, i32 1)) #18, !dbg !839
  br i1 %call, label %if.then, label %if.end69, !dbg !838

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !839

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #17, !dbg !840
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !228, metadata !DIExpression()), !dbg !840
  store i32 0, ptr %__idx, align 4, !dbg !840
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #17, !dbg !841
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !231, metadata !DIExpression()), !dbg !841
  br label %do.body1, !dbg !841

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #17, !dbg !842
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !234, metadata !DIExpression()), !dbg !842
  store ptr null, ptr %__vpp_verify, align 8, !dbg !842
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !842
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #17, !dbg !841
  br label %do.cond, !dbg !842

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !842

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #17, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !238, metadata !DIExpression()), !dbg !843
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 2)) #17, !dbg !843, !srcloc !844
  store i32 %1, ptr %pfo_val__, align 4, !dbg !843
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !843
  %conv = zext i32 %2 to i64, !dbg !843
  %conv2 = trunc i64 %conv to i32, !dbg !843
  store i32 %conv2, ptr %tmp, align 4, !dbg !843
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #17, !dbg !841
  %3 = load i32, ptr %tmp, align 4, !dbg !843
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !841
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !841
  store i32 %4, ptr %tmp3, align 4, !dbg !841
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #17, !dbg !845
  %5 = load i32, ptr %tmp3, align 4, !dbg !841
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #18, !dbg !845
  br i1 %call4, label %if.end, label %if.then5, !dbg !840

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !845

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !240, metadata !DIExpression()), !dbg !846
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !846
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !847
  %tobool = icmp ne i32 %6, 0, !dbg !847
  %lnot = xor i1 %tobool, true, !dbg !847
  %lnot6 = xor i1 %lnot, true, !dbg !847
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !847
  %conv7 = sext i32 %lnot.ext to i64, !dbg !847
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !847
  %tobool8 = icmp ne i64 %expval, 0, !dbg !847
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !846

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !847

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !848
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !243, metadata !DIExpression()), !dbg !848
  store i32 2307, ptr %__flags, align 4, !dbg !848
  br label %do.body11, !dbg !848

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !849

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !849

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !848

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !851
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 127, i32 %7, i64 12) #17, !dbg !851, !srcloc !853
  br label %do.cond15, !dbg !851

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !851

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !848

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !854

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !854

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !847
  br label %do.cond20, !dbg !848

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !848

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !848

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !846
  %tobool24 = icmp ne i32 %8, 0, !dbg !846
  %lnot25 = xor i1 %tobool24, true, !dbg !846
  %lnot27 = xor i1 %lnot25, true, !dbg !846
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !846
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !846
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !846
  store i64 %expval30, ptr %tmp23, align 8, !dbg !847
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !856
  %9 = load i64, ptr %tmp23, align 8, !dbg !846
  %tobool31 = icmp ne i64 %9, 0, !dbg !856
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !840

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !856

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !840

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !857
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !857, !srcloc !859
  br label %do.cond35, !dbg !857

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !857

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !840

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #17, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !246, metadata !DIExpression()), !dbg !860
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #17, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !248, metadata !DIExpression()), !dbg !860
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu387) #17, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu387, metadata !249, metadata !DIExpression()), !dbg !861
  br label %do.body38, !dbg !862

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !864

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !864

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_module_request, i32 0, i32 8), align 8, !dbg !862
  store ptr %10, ptr %tmp41, align 8, !dbg !864
  %11 = load ptr, ptr %tmp41, align 8, !dbg !862
  store ptr %11, ptr %__UNIQUE_ID_rcu387, align 8, !dbg !861
  %12 = load ptr, ptr %__UNIQUE_ID_rcu387, align 8, !dbg !861
  store ptr %12, ptr %tmp42, align 8, !dbg !861
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu387) #17, !dbg !860
  %13 = load ptr, ptr %tmp42, align 8, !dbg !861
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !860
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !866
  %tobool43 = icmp ne ptr %14, null, !dbg !866
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !860

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !868
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !868
  %16 = load ptr, ptr %data, align 8, !dbg !868
  store ptr %16, ptr %__data, align 8, !dbg !868
  store ptr @__SCT__tp_func_module_request, ptr %tmp45, align 8, !dbg !870
  %17 = load ptr, ptr %tmp45, align 8, !dbg !870
  %18 = load ptr, ptr %__data, align 8, !dbg !868
  %19 = load ptr, ptr %name.addr, align 8, !dbg !868
  %20 = load i8, ptr %wait.addr, align 1, !dbg !868, !range !737, !noundef !738
  %tobool46 = trunc i8 %20 to i1, !dbg !868
  %21 = load i64, ptr %ip.addr, align 8, !dbg !868
  %call47 = call i32 %17(ptr noundef %18, ptr noundef %19, i1 noundef zeroext %tobool46, i64 noundef %21) #18, !dbg !868
  br label %if.end48, !dbg !868

if.end48:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #17, !dbg !840
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #17, !dbg !840
  br label %do.cond49, !dbg !860

do.cond49:                                        ; preds = %if.end48
  br label %do.end50, !dbg !860

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !840

do.body51:                                        ; preds = %do.end50
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !872, !srcloc !874
  %call52 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !875
  %lnot53 = xor i1 %call52, true, !dbg !875
  %lnot55 = xor i1 %lnot53, true, !dbg !875
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !875
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !875
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !875
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !875
  br i1 %tobool59, label %if.then60, label %if.end64, !dbg !872

if.then60:                                        ; preds = %do.body51
  br label %do.body61, !dbg !875

do.body61:                                        ; preds = %if.then60
  %22 = call i64 @llvm.read_register.i64(metadata !717), !dbg !877
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #17, !dbg !877, !srcloc !879
  call void @llvm.write_register.i64(metadata !717, i64 %23), !dbg !877
  br label %do.cond62, !dbg !877

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !877

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !877

if.end64:                                         ; preds = %do.end63, %do.body51
  br label %do.cond65, !dbg !872

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !872

do.end66:                                         ; preds = %do.cond65
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !839
  br label %cleanup, !dbg !839

cleanup:                                          ; preds = %do.end66, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #17, !dbg !839
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end69
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end68, !dbg !840

do.end68:                                         ; preds = %cleanup.cont
  br label %if.end69, !dbg !840

if.end69:                                         ; preds = %cleanup, %do.end68, %entry
  ret void, !dbg !838

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kmod_dup_request_exists_wait(ptr noundef %module_name, i1 noundef zeroext %wait, ptr noundef %dup_ret) #7 align 16 !dbg !880 {
entry:
  %module_name.addr = alloca ptr, align 8
  %wait.addr = alloca i8, align 1
  %dup_ret.addr = alloca ptr, align 8
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !885, metadata !DIExpression()), !dbg !888
  %frombool = zext i1 %wait to i8
  store i8 %frombool, ptr %wait.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !886, metadata !DIExpression()), !dbg !889
  store ptr %dup_ret, ptr %dup_ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dup_ret.addr, metadata !887, metadata !DIExpression()), !dbg !890
  ret i1 false, !dbg !891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @call_modprobe(ptr noundef %orig_module_name, i32 noundef %wait) #0 align 16 !dbg !270 {
entry:
  %retval = alloca i32, align 4
  %orig_module_name.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %module_name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %argv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %orig_module_name, ptr %orig_module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %orig_module_name.addr, metadata !274, metadata !DIExpression()), !dbg !892
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !275, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #17, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %info, metadata !276, metadata !DIExpression()), !dbg !895
  call void @llvm.lifetime.start.p0(i64 8, ptr %module_name) #17, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %module_name, metadata !698, metadata !DIExpression()), !dbg !897
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !699, metadata !DIExpression()), !dbg !899
  call void @llvm.lifetime.start.p0(i64 8, ptr %argv) #17, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %argv, metadata !700, metadata !DIExpression()), !dbg !901
  %call = call noalias ptr @kmalloc(i64 noundef 40, i32 noundef 3264) #20, !dbg !902
  store ptr %call, ptr %argv, align 8, !dbg !901
  %0 = load ptr, ptr %argv, align 8, !dbg !903
  %tobool = icmp ne ptr %0, null, !dbg !903
  br i1 %tobool, label %if.end, label %if.then, !dbg !905

if.then:                                          ; preds = %entry
  br label %out, !dbg !906

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %orig_module_name.addr, align 8, !dbg !907
  %call1 = call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #18, !dbg !908
  store ptr %call1, ptr %module_name, align 8, !dbg !909
  %2 = load ptr, ptr %module_name, align 8, !dbg !910
  %tobool2 = icmp ne ptr %2, null, !dbg !910
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !912

if.then3:                                         ; preds = %if.end
  br label %free_argv, !dbg !913

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %argv, align 8, !dbg !914
  %arrayidx = getelementptr ptr, ptr %3, i64 0, !dbg !914
  store ptr @modprobe_path, ptr %arrayidx, align 8, !dbg !915
  %4 = load ptr, ptr %argv, align 8, !dbg !916
  %arrayidx5 = getelementptr ptr, ptr %4, i64 1, !dbg !916
  store ptr @.str.6, ptr %arrayidx5, align 8, !dbg !917
  %5 = load ptr, ptr %argv, align 8, !dbg !918
  %arrayidx6 = getelementptr ptr, ptr %5, i64 2, !dbg !918
  store ptr @.str.7, ptr %arrayidx6, align 8, !dbg !919
  %6 = load ptr, ptr %module_name, align 8, !dbg !920
  %7 = load ptr, ptr %argv, align 8, !dbg !921
  %arrayidx7 = getelementptr ptr, ptr %7, i64 3, !dbg !921
  store ptr %6, ptr %arrayidx7, align 8, !dbg !922
  %8 = load ptr, ptr %argv, align 8, !dbg !923
  %arrayidx8 = getelementptr ptr, ptr %8, i64 4, !dbg !923
  store ptr null, ptr %arrayidx8, align 8, !dbg !924
  %9 = load ptr, ptr %argv, align 8, !dbg !925
  %call9 = call ptr @call_usermodehelper_setup(ptr noundef @modprobe_path, ptr noundef %9, ptr noundef @call_modprobe.envp, i32 noundef 3264, ptr noundef null, ptr noundef @free_modprobe_argv, ptr noundef null) #18, !dbg !926
  store ptr %call9, ptr %info, align 8, !dbg !927
  %10 = load ptr, ptr %info, align 8, !dbg !928
  %tobool10 = icmp ne ptr %10, null, !dbg !928
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !930

if.then11:                                        ; preds = %if.end4
  br label %free_module_name, !dbg !931

if.end12:                                         ; preds = %if.end4
  %11 = load ptr, ptr %info, align 8, !dbg !932
  %12 = load i32, ptr %wait.addr, align 4, !dbg !933
  %or = or i32 %12, 4, !dbg !934
  %call13 = call i32 @call_usermodehelper_exec(ptr noundef %11, i32 noundef %or) #18, !dbg !935
  store i32 %call13, ptr %ret, align 4, !dbg !936
  %13 = load ptr, ptr %orig_module_name.addr, align 8, !dbg !937
  %14 = load i32, ptr %ret, align 4, !dbg !938
  call void @kmod_dup_request_announce(ptr noundef %13, i32 noundef %14) #18, !dbg !939
  %15 = load i32, ptr %ret, align 4, !dbg !940
  store i32 %15, ptr %retval, align 4, !dbg !941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !941

free_module_name:                                 ; preds = %if.then11
  call void @llvm.dbg.label(metadata !701), !dbg !942
  %16 = load ptr, ptr %module_name, align 8, !dbg !943
  call void @kfree(ptr noundef %16) #18, !dbg !944
  br label %free_argv, !dbg !944

free_argv:                                        ; preds = %free_module_name, %if.then3
  call void @llvm.dbg.label(metadata !702), !dbg !945
  %17 = load ptr, ptr %argv, align 8, !dbg !946
  call void @kfree(ptr noundef %17) #18, !dbg !947
  br label %out, !dbg !947

out:                                              ; preds = %free_argv, %if.then
  call void @llvm.dbg.label(metadata !703), !dbg !948
  %18 = load ptr, ptr %orig_module_name.addr, align 8, !dbg !949
  call void @kmod_dup_request_announce(ptr noundef %18, i32 noundef -12) #18, !dbg !950
  store i32 -12, ptr %retval, align 4, !dbg !951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !951

cleanup:                                          ; preds = %out, %if.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr %argv) #17, !dbg !952
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %module_name) #17, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #17, !dbg !952
  %19 = load i32, ptr %retval, align 4, !dbg !952
  ret i32 %19, !dbg !952
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !953 dso_local void @up(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #8 align 16 !dbg !956 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !979, metadata !DIExpression()), !dbg !980
  %0 = load ptr, ptr %key.addr, align 8, !dbg !981
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #18, !dbg !982
  ret i1 %call, !dbg !983
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #7 align 16 !dbg !984 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !988, metadata !DIExpression()), !dbg !989
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !990
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #18, !dbg !991
  ret i1 %call, !dbg !992
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #8 align 16 !dbg !993 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !998, metadata !DIExpression()), !dbg !1006
  br label %do.body, !dbg !1007

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #17, !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !999, metadata !DIExpression()), !dbg !1008
  %0 = load i32, ptr %val.addr, align 4, !dbg !1008
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1008
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1008

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !1008
  %cmp = icmp eq i32 %2, 1, !dbg !1008
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1008

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !1008
  %cmp1 = icmp eq i32 %3, -1, !dbg !1008
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1008

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !1008
  br label %cond.end, !dbg !1008

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !1008

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !1008
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1008
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !1009
  %cmp2 = icmp eq i32 %5, 1, !dbg !1009
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1008

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !1010, !srcloc !1012
  br label %if.end8, !dbg !1009

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !1013
  %cmp3 = icmp eq i32 %6, -1, !dbg !1013
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1009

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !1014, !srcloc !1016
  br label %if.end, !dbg !1013

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !1013

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #17, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1002, metadata !DIExpression()), !dbg !1017
  %7 = load i32, ptr %val.addr, align 4, !dbg !1017
  %conv = sext i32 %7 to i64, !dbg !1017
  %and = and i64 %conv, 4294967295, !dbg !1017
  %conv7 = trunc i64 %and to i32, !dbg !1017
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !1017
  %8 = load i32, ptr %pto_val__, align 4, !dbg !1017
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !1017, !srcloc !1018
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #17, !dbg !1013
  br label %do.cond, !dbg !1017

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1017

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #17, !dbg !1007
  br label %do.end10, !dbg !1008

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !1019
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_module_request(ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #8 align 16 !dbg !1020 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #17, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1022, metadata !DIExpression()), !dbg !1024
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #17, !dbg !1024, !srcloc !1025
  %1 = icmp ult i8 %0, 2, !dbg !1024
  call void @llvm.assume(i1 %1), !dbg !1024
  store i8 %0, ptr %c, align 1, !dbg !1024
  %2 = load i8, ptr %c, align 1, !dbg !1024, !range !737, !noundef !738
  %tobool = trunc i8 %2 to i1, !dbg !1024
  %frombool = zext i1 %tobool to i8, !dbg !1024
  store i8 %frombool, ptr %tmp, align 1, !dbg !1024
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #17, !dbg !1026
  %3 = load i8, ptr %tmp, align 1, !dbg !1024, !range !737, !noundef !738
  %tobool1 = trunc i8 %3 to i1, !dbg !1024
  ret i1 %tobool1, !dbg !1027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #8 align 16 !dbg !1028 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1033, metadata !DIExpression()), !dbg !1036
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !1034, metadata !DIExpression()), !dbg !1037
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1038
  %1 = load i8, ptr %branch.addr, align 1, !dbg !1039, !range !737, !noundef !738
  %tobool = trunc i8 %1 to i1, !dbg !1039
  %conv = zext i1 %tobool to i32, !dbg !1039
  %or = or i32 2, %conv, !dbg !1040
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #17
          to label %asm.fallthrough [label %l_yes], !dbg !1041, !srcloc !1042

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1043
  br label %return, !dbg !1043

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !1035), !dbg !1044
  store i1 true, ptr %retval, align 1, !dbg !1045
  br label %return, !dbg !1045

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !1046
  ret i1 %2, !dbg !1046
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #8 align 16 !dbg !1047 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1051, metadata !DIExpression()), !dbg !1053
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !1052, metadata !DIExpression()), !dbg !1054
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1055
  %call = call i32 @cpumask_check(i32 noundef %0) #18, !dbg !1055
  %conv = zext i32 %call to i64, !dbg !1055
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !1055
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !1055
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1055
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #18, !dbg !1055
  ret i1 %call1, !dbg !1056
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1057 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1065, metadata !DIExpression()), !dbg !1067
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1066, metadata !DIExpression()), !dbg !1068
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1069
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1070
  %div = udiv i64 %1, 64, !dbg !1070
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1071
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !1072
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1073
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1074
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !1075
  ret i1 %call, !dbg !1076
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #8 align 16 !dbg !1077 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1081, metadata !DIExpression()), !dbg !1082
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1083
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #18, !dbg !1084
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1085
  ret i32 %1, !dbg !1086
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !1087 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1095, metadata !DIExpression()), !dbg !1097
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1096, metadata !DIExpression()), !dbg !1098
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1099
  %1 = load i64, ptr %size.addr, align 8, !dbg !1100
  %conv = trunc i64 %1 to i32, !dbg !1100
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !1101
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1102
  %3 = load i64, ptr %size.addr, align 8, !dbg !1102
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !1102
  ret void, !dbg !1103
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1104 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1107, metadata !DIExpression()), !dbg !1109
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1108, metadata !DIExpression()), !dbg !1110
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1111
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1112
  br i1 %1, label %cond.true, label %cond.false, !dbg !1112

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1113
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1114
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !1115
  %conv = zext i1 %call to i32, !dbg !1115
  br label %cond.end, !dbg !1112

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1116
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1117
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !1118
  %conv2 = zext i1 %call1 to i32, !dbg !1118
  br label %cond.end, !dbg !1112

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1112
  %tobool = icmp ne i32 %cond, 0, !dbg !1112
  ret i1 %tobool, !dbg !1119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !1120 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1125, metadata !DIExpression()), !dbg !1127
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1126, metadata !DIExpression()), !dbg !1128
  ret i1 true, !dbg !1129
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !1130 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1135, metadata !DIExpression()), !dbg !1138
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1136, metadata !DIExpression()), !dbg !1139
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1137, metadata !DIExpression()), !dbg !1140
  ret void, !dbg !1141
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1142 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1146, metadata !DIExpression()), !dbg !1148
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1147, metadata !DIExpression()), !dbg !1149
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1150
  %and = and i64 %0, 63, !dbg !1151
  %shl = shl i64 1, %and, !dbg !1152
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1153
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1154
  %shr = ashr i64 %2, 6, !dbg !1155
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1153
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1153
  %and1 = and i64 %shl, %3, !dbg !1156
  %cmp = icmp ne i64 %and1, 0, !dbg !1157
  ret i1 %cmp, !dbg !1158
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !1159 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1161, metadata !DIExpression()), !dbg !1164
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1162, metadata !DIExpression()), !dbg !1165
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !1166
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1163, metadata !DIExpression()), !dbg !1167
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1168
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1169
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !1170, !srcloc !1171
  %3 = icmp ult i8 %2, 2, !dbg !1170
  call void @llvm.assume(i1 %3), !dbg !1170
  store i8 %2, ptr %oldbit, align 1, !dbg !1170
  %4 = load i8, ptr %oldbit, align 1, !dbg !1172, !range !737, !noundef !738
  %tobool = trunc i8 %4 to i1, !dbg !1172
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !1173
  ret i1 %tobool, !dbg !1174
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #8 align 16 !dbg !1175 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1179, metadata !DIExpression()), !dbg !1181
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1180, metadata !DIExpression()), !dbg !1182
  ret void, !dbg !1183
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !1184 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1188, metadata !DIExpression()), !dbg !1193
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1189, metadata !DIExpression()), !dbg !1194
  %0 = load i64, ptr %size.addr, align 8, !dbg !1195
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1196
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1197

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1198
  %tobool = icmp ne i64 %2, 0, !dbg !1198
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1199

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1190, metadata !DIExpression()), !dbg !1201
  %3 = load i64, ptr %size.addr, align 8, !dbg !1202
  %cmp = icmp ugt i64 %3, 8192, !dbg !1204
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1205

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1206
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1207
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !1208
  store ptr %call, ptr %retval, align 8, !dbg !1209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1209

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1210
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !1210
  store i32 %call2, ptr %index, align 4, !dbg !1211
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1212
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1213
  %9 = ptrtoint ptr %8 to i64, !dbg !1213
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !1214
  %idxprom = zext i32 %call3 to i64, !dbg !1215
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1215
  %10 = load i32, ptr %index, align 4, !dbg !1216
  %idxprom4 = zext i32 %10 to i64, !dbg !1215
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1215
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1215
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1217
  %13 = load i64, ptr %size.addr, align 8, !dbg !1218
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !1219
  store ptr %call6, ptr %retval, align 8, !dbg !1220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1220

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !1221
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1222
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1223
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !1224
  store ptr %call8, ptr %retval, align 8, !dbg !1225
  br label %return, !dbg !1225

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1226
  ret ptr %16, !dbg !1226
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1227 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1231 dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_modprobe_argv(ptr noundef %info) #0 align 16 !dbg !1234 {
entry:
  %info.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1236, metadata !DIExpression()), !dbg !1237
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1238
  %argv = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 3, !dbg !1239
  %1 = load ptr, ptr %argv, align 8, !dbg !1239
  %arrayidx = getelementptr ptr, ptr %1, i64 3, !dbg !1238
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1238
  call void @kfree(ptr noundef %2) #18, !dbg !1240
  %3 = load ptr, ptr %info.addr, align 8, !dbg !1241
  %argv1 = getelementptr inbounds %struct.subprocess_info, ptr %3, i32 0, i32 3, !dbg !1242
  %4 = load ptr, ptr %argv1, align 8, !dbg !1242
  call void @kfree(ptr noundef %4) #18, !dbg !1243
  ret void, !dbg !1244
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1245 dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmod_dup_request_announce(ptr noundef %module_name, i32 noundef %ret) #7 align 16 !dbg !1248 {
entry:
  %module_name.addr = alloca ptr, align 8
  %ret.addr = alloca i32, align 4
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !1252, metadata !DIExpression()), !dbg !1254
  store i32 %ret, ptr %ret.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !1253, metadata !DIExpression()), !dbg !1255
  ret void, !dbg !1256
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1257 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1260 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !1261 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1265, metadata !DIExpression()), !dbg !1267
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1266, metadata !DIExpression()), !dbg !1268
  %0 = load i64, ptr %size.addr, align 8, !dbg !1269
  %tobool = icmp ne i64 %0, 0, !dbg !1269
  br i1 %tobool, label %if.end, label %if.then, !dbg !1271

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1272
  br label %return, !dbg !1272

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1273
  %cmp = icmp ule i64 %1, 8, !dbg !1275
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1276

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1277
  br label %return, !dbg !1277

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1278
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1280
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1281

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1282
  %cmp4 = icmp ule i64 %3, 96, !dbg !1283
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1284

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1285
  br label %return, !dbg !1285

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1286
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1288
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1289

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1290
  %cmp9 = icmp ule i64 %5, 192, !dbg !1291
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1292

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1293
  br label %return, !dbg !1293

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1294
  %cmp12 = icmp ule i64 %6, 8, !dbg !1296
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1297

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1298
  br label %return, !dbg !1298

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1299
  %cmp15 = icmp ule i64 %7, 16, !dbg !1301
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1302

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1303
  br label %return, !dbg !1303

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1304
  %cmp18 = icmp ule i64 %8, 32, !dbg !1306
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1307

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1308
  br label %return, !dbg !1308

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1309
  %cmp21 = icmp ule i64 %9, 64, !dbg !1311
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1312

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1313
  br label %return, !dbg !1313

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1314
  %cmp24 = icmp ule i64 %10, 128, !dbg !1316
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1317

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1318
  br label %return, !dbg !1318

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1319
  %cmp27 = icmp ule i64 %11, 256, !dbg !1321
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1322

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1323
  br label %return, !dbg !1323

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1324
  %cmp30 = icmp ule i64 %12, 512, !dbg !1326
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1327

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1328
  br label %return, !dbg !1328

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1329
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1331
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1332

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1333
  br label %return, !dbg !1333

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1334
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1336
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1337

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1338
  br label %return, !dbg !1338

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1339
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1341
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1342

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1343
  br label %return, !dbg !1343

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1344
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1346
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1347

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1348
  br label %return, !dbg !1348

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1349
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1351
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1352

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1353
  br label %return, !dbg !1353

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1354
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1356
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1357

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1358
  br label %return, !dbg !1358

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1359
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1361
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1362

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1363
  br label %return, !dbg !1363

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1364
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1366
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1367

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1368
  br label %return, !dbg !1368

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1369
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1371
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1372

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1373
  br label %return, !dbg !1373

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1374
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1376
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1377

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1378
  br label %return, !dbg !1378

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1379
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1381
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1382

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1383
  br label %return, !dbg !1383

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1384
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1386
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1387

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1388
  br label %return, !dbg !1388

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1389, !range !737, !noundef !738
  %tobool69 = trunc i8 %25 to i1, !dbg !1389
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1391

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1392

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_255() #22, !dbg !1393, !srcloc !1396
  unreachable, !dbg !1393

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1397

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1398

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1399

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1401

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1399

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #17, !dbg !1403, !srcloc !1405
  br label %do.end75, !dbg !1403

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1399

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1406
  br label %return, !dbg !1406

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1407
  ret i32 %26, !dbg !1407
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1408 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !1414 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1418, metadata !DIExpression()), !dbg !1420
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1419, metadata !DIExpression()), !dbg !1421
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1422
  %and = and i32 %0, 17, !dbg !1422
  %cmp = icmp eq i32 %and, 0, !dbg !1422
  %lnot = xor i1 %cmp, true, !dbg !1422
  %lnot1 = xor i1 %lnot, true, !dbg !1422
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1422
  %conv = sext i32 %lnot.ext to i64, !dbg !1422
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1422
  %tobool = icmp ne i64 %expval, 0, !dbg !1422
  br i1 %tobool, label %if.then, label %if.end, !dbg !1424

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1425
  br label %return, !dbg !1425

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1426
  %and2 = and i32 %1, 1, !dbg !1428
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1428
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1429

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1430
  br label %return, !dbg !1430

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1431
  br label %return, !dbg !1431

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1433
  ret i32 %2, !dbg !1433
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1434 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1435 dso_local void @__compiletime_assert_255() #16

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!717}
!llvm.module.flags = !{!718, !719, !720, !721, !722, !723, !724, !725}
!llvm.ident = !{!726}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "modprobe_path", scope: !2, file: !3, line: 64, type: !714, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/module/.kmod.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/module/kmod\22 -D KBUILD_BASENAME=\22kmod\22 -D KBUILD_MODNAME=\22kmod\22 -D __KBUILD_MODNAME=kmod_kmod -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/module/kmod.ll kernel/module/kmod.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !117, globals: !142, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/module/kmod.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "88e56cbaf8d83796dc39e11164e285f5")
!4 = !{!5, !11, !107}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !7, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !19, !21, !23, !27, !28, !44, !102, !103}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !22, size: 32, offset: 128)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !24, size: 16, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !31)
!31 = !DISubroutineType(types: !32)
!32 = !{!22, !33, !22, !20, !34, !40}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 61, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !37, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !25, line: 52, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !37, line: 88, baseType: !43)
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !47)
!47 = !{!48, !53}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !46, file: !12, line: 118, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !25, line: 174, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 172, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !50, file: !25, line: 173, baseType: !22, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !46, file: !12, line: 119, baseType: !54, size: 192, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !55, line: 37, size: 192, elements: !57)
!57 = !{!58, !96}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !56, file: !55, line: 38, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !60, line: 29, baseType: !61)
!60 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !60, line: 17, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !61, file: !60, line: 18, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !60, line: 18, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !64, file: !60, line: 19, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !68, line: 14, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !67, file: !68, line: 15, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !72, line: 44, baseType: !73)
!72 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !72, line: 14, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 15, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 15, size: 32, elements: !77)
!77 = !{!78, !79, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !76, file: !72, line: 16, baseType: !49, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 24, baseType: !80, size: 16)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 24, size: 16, elements: !81)
!81 = !{!82, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !80, file: !72, line: 25, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !80, file: !72, line: 26, baseType: !83, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !72, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !72, line: 28, size: 32, elements: !91)
!91 = !{!92, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !72, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !26)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !72, line: 30, baseType: !93, size: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !56, file: !55, line: 39, baseType: !97, size: 128, offset: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !25, line: 190, size: 128, elements: !98)
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !25, line: 191, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !97, file: !25, line: 191, baseType: !100, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !20, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !20, size: 64, offset: 448)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !108, line: 364, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!109 = !{!110, !111, !112, !113, !114, !115, !116}
!110 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!111 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!112 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!113 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!114 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!115 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!116 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!117 = !{!39, !20, !118, !22, !119, !122, !129, !138, !7, !139, !141}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !124, line: 26, size: 192, elements: !125)
!124 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!125 = !{!126, !127, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !123, file: !124, line: 27, baseType: !20, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !123, file: !124, line: 28, baseType: !20, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !123, file: !124, line: 29, baseType: !22, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !132, line: 19, size: 64, elements: !133)
!132 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !131, file: !132, line: 19, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 1)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !25, line: 154, baseType: !7)
!142 = !{!0, !143, !148, !192, !197, !202, !204, !212, !218, !251, !253, !258, !263, !268, !705, !710, !712}
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 168, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 21)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "_rs", scope: !150, file: !3, line: 161, type: !181, isLocal: true, isDefinition: true)
!150 = distinct !DISubprogram(name: "__request_module", scope: !3, file: !3, line: 132, type: !151, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !155)
!151 = !DISubroutineType(types: !152)
!152 = !{!22, !153, !16, null}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !25, line: 35, baseType: !154)
!154 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!155 = !{!156, !157, !158, !169, !173, !174, !175, !177, !180}
!156 = !DILocalVariable(name: "wait", arg: 1, scope: !150, file: !3, line: 132, type: !153)
!157 = !DILocalVariable(name: "fmt", arg: 2, scope: !150, file: !3, line: 132, type: !16)
!158 = !DILocalVariable(name: "args", scope: !150, file: !3, line: 134, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !160, line: 5, baseType: !161)
!160 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !162)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 192, elements: !136)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !163, file: !3, line: 134, baseType: !7, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !163, file: !3, line: 134, baseType: !7, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !163, file: !3, line: 134, baseType: !20, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !163, file: !3, line: 134, baseType: !20, size: 64, offset: 128)
!169 = !DILocalVariable(name: "module_name", scope: !150, file: !3, line: 135, type: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 448, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 56)
!173 = !DILocalVariable(name: "ret", scope: !150, file: !3, line: 136, type: !22)
!174 = !DILocalVariable(name: "dup_ret", scope: !150, file: !3, line: 136, type: !22)
!175 = !DILocalVariable(name: "__ret_warn_on", scope: !176, file: !3, line: 144, type: !22)
!176 = distinct !DILexicalBlock(scope: !150, file: !3, line: 144, column: 2)
!177 = !DILocalVariable(name: "__flags", scope: !178, file: !3, line: 144, type: !22)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 144, column: 2)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 144, column: 2)
!180 = !DILabel(scope: !150, name: "out", file: !3, line: 175)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !182, line: 15, size: 320, elements: !183)
!182 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!183 = !{!184, !186, !187, !188, !189, !190, !191}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !181, file: !182, line: 16, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !68, line: 23, baseType: !67)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !181, file: !182, line: 18, baseType: !22, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !181, file: !182, line: 19, baseType: !22, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !181, file: !182, line: 20, baseType: !22, size: 32, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !181, file: !182, line: 21, baseType: !22, size: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !181, file: !182, line: 22, baseType: !39, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !182, line: 23, baseType: !39, size: 64, offset: 256)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 136, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 17)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 848, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 106)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___request_module395", scope: !2, file: !3, line: 180, type: !20, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "kmod_concurrent_max", scope: !2, file: !3, line: 47, type: !206, isLocal: true, isDefinition: true)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !207, line: 15, size: 192, elements: !208)
!207 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a6d1be1d1ca9e1e7e6ce72ef8c4c814f")
!208 = !{!209, !210, !211}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !206, file: !207, line: 16, baseType: !185, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !206, file: !207, line: 17, baseType: !7, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !206, file: !207, line: 18, baseType: !97, size: 128, offset: 64)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !214, line: 107, type: !215, isLocal: true, isDefinition: true)
!214 = !DIFile(filename: "./include/trace/events/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3094b6929a45c5110e60d325b80a079a")
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 240, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 30)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_module_request389", scope: !220, file: !214, line: 107, type: !20, isLocal: true, isDefinition: true)
!220 = distinct !DISubprogram(name: "trace_module_request", scope: !214, file: !214, line: 107, type: !221, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !224)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !223, !153, !39}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!224 = !{!225, !226, !227, !228, !231, !234, !238, !240, !243, !246, !248, !249}
!225 = !DILocalVariable(name: "name", arg: 1, scope: !220, file: !214, line: 107, type: !223)
!226 = !DILocalVariable(name: "wait", arg: 2, scope: !220, file: !214, line: 107, type: !153)
!227 = !DILocalVariable(name: "ip", arg: 3, scope: !220, file: !214, line: 107, type: !39)
!228 = !DILocalVariable(name: "__idx", scope: !229, file: !214, line: 107, type: !22)
!229 = distinct !DILexicalBlock(scope: !230, file: !214, line: 107, column: 1)
!230 = distinct !DILexicalBlock(scope: !220, file: !214, line: 107, column: 1)
!231 = !DILocalVariable(name: "pscr_ret__", scope: !232, file: !214, line: 107, type: !22)
!232 = distinct !DILexicalBlock(scope: !233, file: !214, line: 107, column: 1)
!233 = distinct !DILexicalBlock(scope: !229, file: !214, line: 107, column: 1)
!234 = !DILocalVariable(name: "__vpp_verify", scope: !235, file: !214, line: 107, type: !236)
!235 = distinct !DILexicalBlock(scope: !232, file: !214, line: 107, column: 1)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!238 = !DILocalVariable(name: "pfo_val__", scope: !239, file: !214, line: 107, type: !139)
!239 = distinct !DILexicalBlock(scope: !232, file: !214, line: 107, column: 1)
!240 = !DILocalVariable(name: "__ret_warn_on", scope: !241, file: !214, line: 107, type: !22)
!241 = distinct !DILexicalBlock(scope: !242, file: !214, line: 107, column: 1)
!242 = distinct !DILexicalBlock(scope: !229, file: !214, line: 107, column: 1)
!243 = !DILocalVariable(name: "__flags", scope: !244, file: !214, line: 107, type: !22)
!244 = distinct !DILexicalBlock(scope: !245, file: !214, line: 107, column: 1)
!245 = distinct !DILexicalBlock(scope: !241, file: !214, line: 107, column: 1)
!246 = !DILocalVariable(name: "it_func_ptr", scope: !247, file: !214, line: 107, type: !122)
!247 = distinct !DILexicalBlock(scope: !229, file: !214, line: 107, column: 1)
!248 = !DILocalVariable(name: "__data", scope: !247, file: !214, line: 107, type: !20)
!249 = !DILocalVariable(name: "__UNIQUE_ID_rcu387", scope: !250, file: !214, line: 107, type: !122)
!250 = distinct !DILexicalBlock(scope: !247, file: !214, line: 107, column: 1)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace390", scope: !220, file: !214, line: 107, type: !20, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !255, isLocal: true, isDefinition: true)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 56, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 7)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 88, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 11)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 280, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 35)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "envp", scope: !270, file: !3, line: 75, type: !704, isLocal: true, isDefinition: true)
!270 = distinct !DISubprogram(name: "call_modprobe", scope: !3, file: !3, line: 72, type: !271, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!22, !223, !22}
!273 = !{!274, !275, !276, !698, !699, !700, !701, !702, !703}
!274 = !DILocalVariable(name: "orig_module_name", arg: 1, scope: !270, file: !3, line: 72, type: !223)
!275 = !DILocalVariable(name: "wait", arg: 2, scope: !270, file: !3, line: 72, type: !22)
!276 = !DILocalVariable(name: "info", scope: !270, file: !3, line: 74, type: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subprocess_info", file: !279, line: 20, size: 768, elements: !280)
!279 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9ecec28201063d5e3b04c190bc92649")
!280 = !{!281, !301, !313, !314, !316, !317, !318, !319, !693, !697}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !278, file: !279, line: 21, baseType: !282, size: 256)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !283, line: 98, size: 256, elements: !284)
!283 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!284 = !{!285, !294, !295}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !282, file: !283, line: 99, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !287, line: 13, baseType: !288)
!287 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !25, line: 181, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 179, size: 64, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !289, file: !25, line: 180, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !43)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !282, file: !283, line: 100, baseType: !97, size: 128, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !282, file: !283, line: 101, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !283, line: 21, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !278, file: !279, line: 22, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !304, line: 26, size: 256, elements: !305)
!304 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !303, file: !304, line: 27, baseType: !7, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !303, file: !304, line: 28, baseType: !308, size: 192, offset: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !309, line: 43, size: 192, elements: !310)
!309 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !308, file: !309, line: 44, baseType: !185, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !308, file: !309, line: 45, baseType: !97, size: 128, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !278, file: !279, line: 23, baseType: !16, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !278, file: !279, line: 24, baseType: !315, size: 64, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !278, file: !279, line: 25, baseType: !315, size: 64, offset: 448)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !278, file: !279, line: 26, baseType: !22, size: 32, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !278, file: !279, line: 27, baseType: !22, size: 32, offset: 544)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !278, file: !279, line: 28, baseType: !320, size: 64, offset: 576)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!22, !277, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !325, line: 110, size: 1472, elements: !326)
!325 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!326 = !{!327, !328, !336, !343, !344, !345, !346, !347, !348, !349, !350, !359, !360, !361, !362, !363, !364, !511, !512, !513, !514, !515, !542, !677, !678, !688}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !324, file: !325, line: 111, baseType: !286, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !324, file: !325, line: 112, baseType: !329, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !330, line: 23, baseType: !331)
!330 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 21, size: 32, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !331, file: !330, line: 22, baseType: !334, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !25, line: 37, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !37, line: 49, baseType: !7)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !324, file: !325, line: 113, baseType: !337, size: 32, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !330, line: 28, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 26, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !338, file: !330, line: 27, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !25, line: 38, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !37, line: 50, baseType: !7)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !324, file: !325, line: 114, baseType: !329, size: 32, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !324, file: !325, line: 115, baseType: !337, size: 32, offset: 160)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !324, file: !325, line: 116, baseType: !329, size: 32, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !324, file: !325, line: 117, baseType: !337, size: 32, offset: 224)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !324, file: !325, line: 118, baseType: !329, size: 32, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !324, file: !325, line: 119, baseType: !337, size: 32, offset: 288)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !324, file: !325, line: 120, baseType: !7, size: 32, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !324, file: !325, line: 121, baseType: !351, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !352, line: 24, baseType: !353)
!352 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 24, size: 64, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !353, file: !352, line: 24, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !84, line: 23, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !86, line: 31, baseType: !358)
!358 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !324, file: !325, line: 122, baseType: !351, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !324, file: !325, line: 123, baseType: !351, size: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !324, file: !325, line: 124, baseType: !351, size: 64, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !324, file: !325, line: 125, baseType: !351, size: 64, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !324, file: !325, line: 127, baseType: !87, size: 8, offset: 704)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !324, file: !325, line: 129, baseType: !365, size: 64, offset: 768)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !367, line: 195, size: 1728, elements: !368)
!367 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!368 = !{!369, !375, !380, !392, !405, !408, !409, !416, !417, !418, !419, !422, !423, !424, !426, !427, !473, !496}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !366, file: !367, line: 196, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !371, line: 113, baseType: !372)
!371 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !371, line: 111, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !372, file: !371, line: 112, baseType: !49, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !366, file: !367, line: 197, baseType: !376, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !367, line: 28, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 104, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !84, line: 20, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !86, line: 26, baseType: !22)
!380 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !367, line: 198, baseType: !381, size: 192, offset: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !367, line: 198, size: 192, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !381, file: !367, line: 199, baseType: !97, size: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !381, file: !367, line: 200, baseType: !385, size: 192, align: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !386, line: 5, size: 192, align: 64, elements: !387)
!386 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!387 = !{!388, !389, !391}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !385, file: !386, line: 6, baseType: !39, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !385, file: !386, line: 7, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !385, file: !386, line: 8, baseType: !390, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !366, file: !367, line: 205, baseType: !393, size: 320, offset: 256)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !394, line: 48, size: 320, elements: !395)
!394 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!395 = !{!396, !397, !398, !403, !404}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !393, file: !394, line: 49, baseType: !286, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !393, file: !394, line: 55, baseType: !286, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !393, file: !394, line: 57, baseType: !399, size: 32, offset: 128)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !400, line: 15, size: 32, elements: !401)
!400 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !399, file: !400, line: 20, baseType: !49, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !393, file: !394, line: 59, baseType: !185, size: 32, offset: 160)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !393, file: !394, line: 60, baseType: !97, size: 128, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !366, file: !367, line: 206, baseType: !406, size: 64, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !367, line: 206, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !366, file: !367, line: 207, baseType: !20, size: 64, offset: 640)
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !367, line: 208, baseType: !410, size: 64, offset: 704)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !367, line: 208, size: 64, elements: !411)
!411 = !{!412, !415}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !410, file: !367, line: 209, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !414, line: 8, baseType: !293)
!414 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!415 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !410, file: !367, line: 210, baseType: !413, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !366, file: !367, line: 212, baseType: !413, size: 64, offset: 768)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !366, file: !367, line: 213, baseType: !329, size: 32, offset: 832)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !366, file: !367, line: 214, baseType: !337, size: 32, offset: 864)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !366, file: !367, line: 215, baseType: !420, size: 32, offset: 896)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !367, line: 31, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 110, baseType: !139)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !366, file: !367, line: 216, baseType: !26, size: 16, offset: 928)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !366, file: !367, line: 217, baseType: !26, size: 16, offset: 944)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !367, line: 221, baseType: !425, size: 16, offset: 960)
!425 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !367, line: 228, baseType: !39, size: 64, offset: 1024)
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !367, line: 245, baseType: !428, size: 320, offset: 1088)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !367, line: 245, size: 320, elements: !429)
!429 = !{!430, !465}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !428, file: !367, line: 246, baseType: !431, size: 320)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !367, line: 114, size: 320, elements: !432)
!432 = !{!433, !434, !446, !449, !464}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !431, file: !367, line: 116, baseType: !39, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !367, line: 117, baseType: !435, size: 64, offset: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !367, line: 117, size: 64, elements: !436)
!436 = !{!437, !445}
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !367, line: 118, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !435, file: !367, line: 118, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !438, file: !367, line: 120, baseType: !93, size: 16)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !438, file: !367, line: 121, baseType: !442, size: 48, offset: 16)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 48, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 6)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !435, file: !367, line: 127, baseType: !39, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !431, file: !367, line: 129, baseType: !447, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !367, line: 102, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !431, file: !367, line: 130, baseType: !450, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !367, line: 108, size: 192, elements: !452)
!452 = !{!453, !462, !463}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !451, file: !367, line: 109, baseType: !454, size: 128, align: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !25, line: 232, size: 128, align: 64, elements: !455)
!455 = !{!456, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !454, file: !25, line: 233, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !454, file: !25, line: 234, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !457}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !451, file: !367, line: 110, baseType: !370, size: 32, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !451, file: !367, line: 111, baseType: !153, size: 8, offset: 160)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !431, file: !367, line: 131, baseType: !16, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !367, line: 247, baseType: !466, size: 320)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !367, line: 247, size: 320, elements: !467)
!467 = !{!468, !469, !470, !471, !472}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !466, file: !367, line: 248, baseType: !39, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !466, file: !367, line: 249, baseType: !39, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !367, line: 250, baseType: !447, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !466, file: !367, line: 251, baseType: !450, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !466, file: !367, line: 252, baseType: !223, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !367, line: 260, baseType: !474, size: 256, offset: 1408)
!474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !367, line: 260, size: 256, elements: !475)
!475 = !{!476, !484}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !474, file: !367, line: 261, baseType: !477, size: 256)
!477 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !367, line: 134, size: 256, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !477, file: !367, line: 135, baseType: !20, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !477, file: !367, line: 136, baseType: !481, size: 256)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 4)
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !367, line: 262, baseType: !485, size: 256)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !474, file: !367, line: 262, size: 256, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !485, file: !367, line: 264, baseType: !97, size: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !485, file: !367, line: 265, baseType: !489, size: 128, offset: 128)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !490, line: 22, size: 128, elements: !491)
!490 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!491 = !{!492, !495}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !489, file: !490, line: 23, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !490, line: 23, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !489, file: !490, line: 24, baseType: !39, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !366, file: !367, line: 280, baseType: !497, size: 64, offset: 1664)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !367, line: 176, size: 192, elements: !499)
!499 = !{!500, !509, !510}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !498, file: !367, line: 177, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !367, line: 171, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!22, !365, !505, !507, !365}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !498, file: !367, line: 178, baseType: !365, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !498, file: !367, line: 179, baseType: !447, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !324, file: !325, line: 130, baseType: !365, size: 64, offset: 832)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !324, file: !325, line: 131, baseType: !365, size: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !324, file: !325, line: 132, baseType: !365, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !324, file: !325, line: 135, baseType: !20, size: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !324, file: !325, line: 137, baseType: !516, size: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !518, line: 14, size: 1088, elements: !519)
!518 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!519 = !{!520, !521, !530, !531, !532, !539, !540, !541}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !517, file: !518, line: 15, baseType: !370, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !517, file: !518, line: 17, baseType: !522, size: 320, offset: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !523, line: 22, size: 320, elements: !524)
!523 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!524 = !{!525, !526, !527, !528}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !523, line: 23, baseType: !185, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !522, file: !523, line: 24, baseType: !292, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !522, file: !523, line: 26, baseType: !97, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !522, file: !523, line: 28, baseType: !529, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !517, file: !518, line: 19, baseType: !39, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !517, file: !518, line: 20, baseType: !286, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !517, file: !518, line: 23, baseType: !533, size: 128, offset: 512)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !25, line: 198, size: 128, elements: !534)
!534 = !{!535, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !25, line: 199, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !533, file: !25, line: 199, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !517, file: !518, line: 24, baseType: !329, size: 32, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !517, file: !518, line: 29, baseType: !286, size: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !517, file: !518, line: 36, baseType: !181, size: 320, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !324, file: !325, line: 138, baseType: !543, size: 64, offset: 1152)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !545, line: 68, size: 4800, elements: !546)
!545 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!546 = !{!547, !569, !570, !571, !572, !573, !574, !575, !586, !587, !588, !589, !590, !591, !592, !657, !658, !672, !675}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !544, file: !545, line: 69, baseType: !548, size: 576)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !545, line: 23, size: 576, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !548, file: !545, line: 24, baseType: !139, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !545, line: 25, baseType: !552, size: 512, offset: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !545, line: 25, size: 512, elements: !553)
!553 = !{!554, !563}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !552, file: !545, line: 26, baseType: !555, size: 480)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 480, elements: !561)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !545, line: 17, size: 96, elements: !557)
!557 = !{!558, !559, !560}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !556, file: !545, line: 18, baseType: !139, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !556, file: !545, line: 19, baseType: !139, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !556, file: !545, line: 20, baseType: !139, size: 32, offset: 64)
!561 = !{!562}
!562 = !DISubrange(count: 5)
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !545, line: 27, baseType: !564, size: 128)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !552, file: !545, line: 27, size: 128, elements: !565)
!565 = !{!566, !568}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !564, file: !545, line: 28, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !564, file: !545, line: 29, baseType: !567, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !544, file: !545, line: 70, baseType: !548, size: 576, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !544, file: !545, line: 71, baseType: !548, size: 576, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !544, file: !545, line: 72, baseType: !543, size: 64, offset: 1728)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !544, file: !545, line: 73, baseType: !22, size: 32, offset: 1792)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !544, file: !545, line: 74, baseType: !329, size: 32, offset: 1824)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !544, file: !545, line: 75, baseType: !337, size: 32, offset: 1856)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !544, file: !545, line: 76, baseType: !576, size: 192, offset: 1920)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !577, line: 9, size: 192, elements: !578)
!577 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!578 = !{!579, !580, !584, !585}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !576, file: !577, line: 10, baseType: !286, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !576, file: !577, line: 11, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !577, line: 7, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !576, file: !577, line: 12, baseType: !7, size: 32, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !576, file: !577, line: 13, baseType: !370, size: 32, offset: 160)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !545, line: 77, baseType: !39, size: 64, offset: 2112)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !544, file: !545, line: 80, baseType: !153, size: 8, offset: 2176)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !544, file: !545, line: 88, baseType: !97, size: 128, offset: 2240)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !544, file: !545, line: 89, baseType: !365, size: 64, offset: 2368)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !544, file: !545, line: 90, baseType: !393, size: 320, offset: 2432)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !544, file: !545, line: 97, baseType: !282, size: 256, offset: 2752)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !544, file: !545, line: 99, baseType: !593, size: 768, offset: 3008)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !594)
!594 = !{!595, !600}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !593, file: !12, line: 200, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!22, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !593, file: !12, line: 201, baseType: !601, size: 704, offset: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !602)
!602 = !{!603, !653}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !601, file: !12, line: 195, baseType: !604, size: 640)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !605)
!605 = !{!606, !618, !619, !620, !640, !641, !643, !649}
!606 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !12, line: 174, baseType: !607, size: 192)
!607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !12, line: 174, size: 192, elements: !608)
!608 = !{!609, !617}
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !12, line: 175, baseType: !610, size: 192)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !607, file: !12, line: 175, size: 192, elements: !611)
!611 = !{!612, !613, !614, !615, !616}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !610, file: !12, line: 176, baseType: !33, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !610, file: !12, line: 177, baseType: !22, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !610, file: !12, line: 178, baseType: !22, size: 32, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !610, file: !12, line: 179, baseType: !22, size: 32, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !610, file: !12, line: 180, baseType: !22, size: 32, offset: 160)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !607, file: !12, line: 182, baseType: !454, size: 128, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !604, file: !12, line: 184, baseType: !302, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !604, file: !12, line: 185, baseType: !33, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !604, file: !12, line: 186, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !623)
!623 = !{!624, !625, !629, !636}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !622, file: !12, line: 205, baseType: !593, size: 768)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !622, file: !12, line: 206, baseType: !626, size: 64, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!599, !621}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !622, file: !12, line: 207, baseType: !630, size: 64, offset: 832)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !633, !634, !635}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !622, file: !12, line: 209, baseType: !637, size: 64, offset: 896)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!22, !633, !33}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !604, file: !12, line: 187, baseType: !599, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !604, file: !12, line: 188, baseType: !642, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !12, line: 189, baseType: !644, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !12, line: 158, baseType: !385, size: 192, align: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !645, file: !12, line: 159, baseType: !633, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !604, file: !12, line: 190, baseType: !650, size: 64, offset: 576)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !25, line: 194, size: 64, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !650, file: !25, line: 195, baseType: !536, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !601, file: !12, line: 196, baseType: !654, size: 64, offset: 640)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !386, line: 12, size: 64, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !654, file: !386, line: 13, baseType: !390, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !544, file: !545, line: 100, baseType: !633, size: 64, offset: 3776)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !544, file: !545, line: 102, baseType: !659, size: 64, offset: 3840)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !545, line: 107, size: 1152, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !670}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !545, line: 108, baseType: !533, size: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !660, file: !545, line: 109, baseType: !543, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !660, file: !545, line: 110, baseType: !329, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !660, file: !545, line: 111, baseType: !49, size: 32, offset: 224)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !660, file: !545, line: 112, baseType: !667, size: 640, offset: 256)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 640, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 10)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !660, file: !545, line: 113, baseType: !671, size: 256, offset: 896)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !482)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !544, file: !545, line: 103, baseType: !673, size: 640, offset: 3904)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 640, elements: !668)
!674 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !544, file: !545, line: 104, baseType: !676, size: 256, offset: 4544)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 256, elements: !482)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !324, file: !325, line: 139, baseType: !659, size: 64, offset: 1216)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !324, file: !325, line: 140, baseType: !679, size: 64, offset: 1280)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !325, line: 25, size: 64, elements: !681)
!681 = !{!682, !683, !684}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !680, file: !325, line: 26, baseType: !49, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !680, file: !325, line: 27, baseType: !22, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !680, file: !325, line: 28, baseType: !685, offset: 64)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: -1)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !325, line: 142, baseType: !689, size: 128, offset: 1344)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !325, line: 142, size: 128, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !689, file: !325, line: 143, baseType: !22, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !689, file: !325, line: 144, baseType: !454, size: 128, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !278, file: !279, line: 29, baseType: !694, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !277}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !278, file: !279, line: 30, baseType: !20, size: 64, offset: 704)
!698 = !DILocalVariable(name: "module_name", scope: !270, file: !3, line: 81, type: !223)
!699 = !DILocalVariable(name: "ret", scope: !270, file: !3, line: 82, type: !22)
!700 = !DILocalVariable(name: "argv", scope: !270, file: !3, line: 84, type: !315)
!701 = !DILabel(scope: !270, name: "free_module_name", file: !3, line: 107)
!702 = !DILabel(scope: !270, name: "free_argv", file: !3, line: 109)
!703 = !DILabel(scope: !270, name: "out", file: !3, line: 111)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !482)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 3)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !707, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !108, line: 480, type: !145, isLocal: true, isDefinition: true)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 256)
!717 = !{!"rsp"}
!718 = !{i32 7, !"Dwarf Version", i32 5}
!719 = !{i32 2, !"Debug Info Version", i32 3}
!720 = !{i32 1, !"wchar_size", i32 2}
!721 = !{i32 8, !"cf-protection-branch", i32 1}
!722 = !{i32 4, !"function_return_thunk_extern", i32 1}
!723 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!724 = !{i32 1, !"Code Model", i32 2}
!725 = !{i32 1, !"override-stack-alignment", i32 8}
!726 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!727 = !DILocation(line: 132, column: 27, scope: !150)
!728 = !DILocation(line: 132, column: 45, scope: !150)
!729 = !DILocation(line: 134, column: 2, scope: !150)
!730 = !DILocation(line: 134, column: 10, scope: !150)
!731 = !DILocation(line: 135, column: 2, scope: !150)
!732 = !DILocation(line: 135, column: 7, scope: !150)
!733 = !DILocation(line: 136, column: 2, scope: !150)
!734 = !DILocation(line: 136, column: 6, scope: !150)
!735 = !DILocation(line: 136, column: 11, scope: !150)
!736 = !DILocation(line: 144, column: 2, scope: !176)
!737 = !{i8 0, i8 2}
!738 = !{}
!739 = !DILocation(line: 0, scope: !176)
!740 = !DILocation(line: 144, column: 2, scope: !179)
!741 = !DILocation(line: 144, column: 2, scope: !178)
!742 = !DILocation(line: 144, column: 2, scope: !743)
!743 = distinct !DILexicalBlock(scope: !178, file: !3, line: 144, column: 2)
!744 = !DILocation(line: 144, column: 2, scope: !745)
!745 = distinct !DILexicalBlock(scope: !178, file: !3, line: 144, column: 2)
!746 = !{i64 2156191694, i64 2156191723, i64 2156191769, i64 2156191827, i64 2156191881, i64 2156191935, i64 2156191990, i64 2156192021, i64 2156192329, i64 2156192335, i64 2156192382, i64 2156192405, i64 2156192431}
!747 = !DILocation(line: 144, column: 2, scope: !748)
!748 = distinct !DILexicalBlock(scope: !178, file: !3, line: 144, column: 2)
!749 = !DILocation(line: 144, column: 2, scope: !150)
!750 = !DILocation(line: 146, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !150, file: !3, line: 146, column: 6)
!752 = !DILocation(line: 146, column: 6, scope: !150)
!753 = !DILocation(line: 147, column: 3, scope: !751)
!754 = !DILocation(line: 149, column: 2, scope: !150)
!755 = !DILocation(line: 150, column: 18, scope: !150)
!756 = !DILocation(line: 150, column: 48, scope: !150)
!757 = !DILocation(line: 150, column: 53, scope: !150)
!758 = !DILocation(line: 150, column: 8, scope: !150)
!759 = !DILocation(line: 150, column: 6, scope: !150)
!760 = !DILocation(line: 151, column: 2, scope: !150)
!761 = !DILocation(line: 152, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !150, file: !3, line: 152, column: 6)
!763 = !DILocation(line: 152, column: 10, scope: !762)
!764 = !DILocation(line: 152, column: 6, scope: !150)
!765 = !DILocation(line: 153, column: 3, scope: !762)
!766 = !DILocation(line: 155, column: 39, scope: !150)
!767 = !DILocation(line: 155, column: 8, scope: !150)
!768 = !DILocation(line: 155, column: 6, scope: !150)
!769 = !DILocation(line: 156, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !150, file: !3, line: 156, column: 6)
!771 = !DILocation(line: 156, column: 6, scope: !150)
!772 = !DILocation(line: 157, column: 10, scope: !770)
!773 = !DILocation(line: 157, column: 3, scope: !770)
!774 = !DILocation(line: 159, column: 8, scope: !150)
!775 = !DILocation(line: 159, column: 6, scope: !150)
!776 = !DILocation(line: 160, column: 6, scope: !777)
!777 = distinct !DILexicalBlock(scope: !150, file: !3, line: 160, column: 6)
!778 = !DILocation(line: 160, column: 6, scope: !150)
!779 = !DILocation(line: 161, column: 3, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 161, column: 3)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 161, column: 3)
!782 = distinct !DILexicalBlock(scope: !777, file: !3, line: 160, column: 11)
!783 = !DILocation(line: 161, column: 3, scope: !781)
!784 = !DILocation(line: 161, column: 3, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !3, line: 161, column: 3)
!786 = !DILocation(line: 161, column: 3, scope: !787)
!787 = distinct !DILexicalBlock(scope: !785, file: !3, line: 161, column: 3)
!788 = !DILocation(line: 163, column: 10, scope: !782)
!789 = !DILocation(line: 163, column: 3, scope: !782)
!790 = !DILocation(line: 166, column: 23, scope: !150)
!791 = !DILocation(line: 166, column: 36, scope: !150)
!792 = !DILocation(line: 166, column: 42, scope: !150)
!793 = !DILocation(line: 166, column: 2, scope: !150)
!794 = !DILocation(line: 168, column: 35, scope: !795)
!795 = distinct !DILexicalBlock(scope: !150, file: !3, line: 168, column: 6)
!796 = !DILocation(line: 168, column: 48, scope: !795)
!797 = !DILocation(line: 168, column: 6, scope: !795)
!798 = !DILocation(line: 168, column: 6, scope: !150)
!799 = !DILocation(line: 169, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !795, file: !3, line: 168, column: 65)
!801 = !DILocation(line: 169, column: 7, scope: !800)
!802 = !DILocation(line: 170, column: 3, scope: !800)
!803 = !DILocation(line: 173, column: 22, scope: !150)
!804 = !DILocation(line: 173, column: 35, scope: !150)
!805 = !DILocation(line: 173, column: 8, scope: !150)
!806 = !DILocation(line: 173, column: 6, scope: !150)
!807 = !DILocation(line: 173, column: 2, scope: !150)
!808 = !DILocation(line: 175, column: 1, scope: !150)
!809 = !DILocation(line: 176, column: 2, scope: !150)
!810 = !DILocation(line: 178, column: 9, scope: !150)
!811 = !DILocation(line: 178, column: 2, scope: !150)
!812 = !DILocation(line: 179, column: 1, scope: !150)
!813 = !DISubprogram(name: "current_is_async", scope: !814, file: !814, line: 122, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!814 = !DIFile(filename: "./include/linux/async.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec3d14405de96b2cececccfaaedbde0e")
!815 = !DISubroutineType(types: !816)
!816 = !{!153}
!817 = !DISubprogram(name: "vsnprintf", scope: !818, file: !818, line: 13, type: !819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!818 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!819 = !DISubroutineType(types: !820)
!820 = !{!22, !223, !35, !16, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!822 = !DISubprogram(name: "security_kernel_module_request", scope: !823, file: !823, line: 416, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!823 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!824 = !DISubroutineType(types: !825)
!825 = !{!22, !223}
!826 = !DISubprogram(name: "down_timeout", scope: !207, file: !207, line: 48, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!827 = !DISubroutineType(types: !828)
!828 = !{!22, !829, !674}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!830 = !DISubprogram(name: "___ratelimit", scope: !182, file: !182, line: 44, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!831 = !DISubroutineType(types: !832)
!832 = !{!22, !833, !16}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!834 = !DISubprogram(name: "_printk", scope: !835, file: !835, line: 153, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!835 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!836 = !DISubroutineType(types: !837)
!837 = !{!22, !16, null}
!838 = !DILocation(line: 107, column: 1, scope: !220)
!839 = !DILocation(line: 107, column: 1, scope: !230)
!840 = !DILocation(line: 107, column: 1, scope: !229)
!841 = !DILocation(line: 107, column: 1, scope: !232)
!842 = !DILocation(line: 107, column: 1, scope: !235)
!843 = !DILocation(line: 107, column: 1, scope: !239)
!844 = !{i64 2156139112}
!845 = !DILocation(line: 107, column: 1, scope: !233)
!846 = !DILocation(line: 107, column: 1, scope: !241)
!847 = !DILocation(line: 107, column: 1, scope: !245)
!848 = !DILocation(line: 107, column: 1, scope: !244)
!849 = !DILocation(line: 107, column: 1, scope: !850)
!850 = distinct !DILexicalBlock(scope: !244, file: !214, line: 107, column: 1)
!851 = !DILocation(line: 107, column: 1, scope: !852)
!852 = distinct !DILexicalBlock(scope: !244, file: !214, line: 107, column: 1)
!853 = !{i64 2156140318, i64 2156140347, i64 2156140393, i64 2156140451, i64 2156140505, i64 2156140559, i64 2156140614, i64 2156140645, i64 2156140953, i64 2156140959, i64 2156141006, i64 2156141029, i64 2156141055}
!854 = !DILocation(line: 107, column: 1, scope: !855)
!855 = distinct !DILexicalBlock(scope: !244, file: !214, line: 107, column: 1)
!856 = !DILocation(line: 107, column: 1, scope: !242)
!857 = !DILocation(line: 107, column: 1, scope: !858)
!858 = distinct !DILexicalBlock(scope: !229, file: !214, line: 107, column: 1)
!859 = !{i64 2156141409}
!860 = !DILocation(line: 107, column: 1, scope: !247)
!861 = !DILocation(line: 107, column: 1, scope: !250)
!862 = !DILocation(line: 107, column: 1, scope: !863)
!863 = distinct !DILexicalBlock(scope: !250, file: !214, line: 107, column: 1)
!864 = !DILocation(line: 107, column: 1, scope: !865)
!865 = distinct !DILexicalBlock(scope: !863, file: !214, line: 107, column: 1)
!866 = !DILocation(line: 107, column: 1, scope: !867)
!867 = distinct !DILexicalBlock(scope: !247, file: !214, line: 107, column: 1)
!868 = !DILocation(line: 107, column: 1, scope: !869)
!869 = distinct !DILexicalBlock(scope: !867, file: !214, line: 107, column: 1)
!870 = !DILocation(line: 107, column: 1, scope: !871)
!871 = distinct !DILexicalBlock(scope: !869, file: !214, line: 107, column: 1)
!872 = !DILocation(line: 107, column: 1, scope: !873)
!873 = distinct !DILexicalBlock(scope: !229, file: !214, line: 107, column: 1)
!874 = !{i64 2156147778}
!875 = !DILocation(line: 107, column: 1, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !214, line: 107, column: 1)
!877 = !DILocation(line: 107, column: 1, scope: !878)
!878 = distinct !DILexicalBlock(scope: !876, file: !214, line: 107, column: 1)
!879 = !{i64 2156147937}
!880 = distinct !DISubprogram(name: "kmod_dup_request_exists_wait", scope: !881, file: !881, line: 241, type: !882, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !884)
!881 = !DIFile(filename: "kernel/module/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90211cd71019263d9071e3fe8acaefa7")
!882 = !DISubroutineType(types: !883)
!883 = !{!153, !223, !153, !118}
!884 = !{!885, !886, !887}
!885 = !DILocalVariable(name: "module_name", arg: 1, scope: !880, file: !881, line: 241, type: !223)
!886 = !DILocalVariable(name: "wait", arg: 2, scope: !880, file: !881, line: 241, type: !153)
!887 = !DILocalVariable(name: "dup_ret", arg: 3, scope: !880, file: !881, line: 241, type: !118)
!888 = !DILocation(line: 241, column: 55, scope: !880)
!889 = !DILocation(line: 241, column: 73, scope: !880)
!890 = !DILocation(line: 241, column: 84, scope: !880)
!891 = !DILocation(line: 243, column: 2, scope: !880)
!892 = !DILocation(line: 72, column: 32, scope: !270)
!893 = !DILocation(line: 72, column: 54, scope: !270)
!894 = !DILocation(line: 74, column: 2, scope: !270)
!895 = !DILocation(line: 74, column: 26, scope: !270)
!896 = !DILocation(line: 81, column: 2, scope: !270)
!897 = !DILocation(line: 81, column: 8, scope: !270)
!898 = !DILocation(line: 82, column: 2, scope: !270)
!899 = !DILocation(line: 82, column: 6, scope: !270)
!900 = !DILocation(line: 84, column: 2, scope: !270)
!901 = !DILocation(line: 84, column: 9, scope: !270)
!902 = !DILocation(line: 84, column: 16, scope: !270)
!903 = !DILocation(line: 85, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !270, file: !3, line: 85, column: 6)
!905 = !DILocation(line: 85, column: 6, scope: !270)
!906 = !DILocation(line: 86, column: 3, scope: !904)
!907 = !DILocation(line: 88, column: 24, scope: !270)
!908 = !DILocation(line: 88, column: 16, scope: !270)
!909 = !DILocation(line: 88, column: 14, scope: !270)
!910 = !DILocation(line: 89, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !270, file: !3, line: 89, column: 6)
!912 = !DILocation(line: 89, column: 6, scope: !270)
!913 = !DILocation(line: 90, column: 3, scope: !911)
!914 = !DILocation(line: 92, column: 2, scope: !270)
!915 = !DILocation(line: 92, column: 10, scope: !270)
!916 = !DILocation(line: 93, column: 2, scope: !270)
!917 = !DILocation(line: 93, column: 10, scope: !270)
!918 = !DILocation(line: 94, column: 2, scope: !270)
!919 = !DILocation(line: 94, column: 10, scope: !270)
!920 = !DILocation(line: 95, column: 12, scope: !270)
!921 = !DILocation(line: 95, column: 2, scope: !270)
!922 = !DILocation(line: 95, column: 10, scope: !270)
!923 = !DILocation(line: 96, column: 2, scope: !270)
!924 = !DILocation(line: 96, column: 10, scope: !270)
!925 = !DILocation(line: 98, column: 50, scope: !270)
!926 = !DILocation(line: 98, column: 9, scope: !270)
!927 = !DILocation(line: 98, column: 7, scope: !270)
!928 = !DILocation(line: 100, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !270, file: !3, line: 100, column: 6)
!930 = !DILocation(line: 100, column: 6, scope: !270)
!931 = !DILocation(line: 101, column: 3, scope: !929)
!932 = !DILocation(line: 103, column: 33, scope: !270)
!933 = !DILocation(line: 103, column: 39, scope: !270)
!934 = !DILocation(line: 103, column: 44, scope: !270)
!935 = !DILocation(line: 103, column: 8, scope: !270)
!936 = !DILocation(line: 103, column: 6, scope: !270)
!937 = !DILocation(line: 104, column: 28, scope: !270)
!938 = !DILocation(line: 104, column: 46, scope: !270)
!939 = !DILocation(line: 104, column: 2, scope: !270)
!940 = !DILocation(line: 105, column: 9, scope: !270)
!941 = !DILocation(line: 105, column: 2, scope: !270)
!942 = !DILocation(line: 107, column: 1, scope: !270)
!943 = !DILocation(line: 108, column: 8, scope: !270)
!944 = !DILocation(line: 108, column: 2, scope: !270)
!945 = !DILocation(line: 109, column: 1, scope: !270)
!946 = !DILocation(line: 110, column: 8, scope: !270)
!947 = !DILocation(line: 110, column: 2, scope: !270)
!948 = !DILocation(line: 111, column: 1, scope: !270)
!949 = !DILocation(line: 112, column: 28, scope: !270)
!950 = !DILocation(line: 112, column: 2, scope: !270)
!951 = !DILocation(line: 113, column: 2, scope: !270)
!952 = !DILocation(line: 114, column: 1, scope: !270)
!953 = !DISubprogram(name: "up", scope: !207, file: !207, line: 49, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !829}
!956 = distinct !DISubprogram(name: "static_key_false", scope: !957, file: !957, line: 205, type: !958, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!957 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!958 = !DISubroutineType(types: !959)
!959 = !{!153, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !957, line: 85, size: 128, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !961, file: !957, line: 86, baseType: !49, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !957, line: 101, baseType: !965, size: 64, offset: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !957, line: 101, size: 64, elements: !966)
!966 = !{!967, !968, !975}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !965, file: !957, line: 102, baseType: !39, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !965, file: !957, line: 103, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !957, line: 117, size: 128, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !970, file: !957, line: 118, baseType: !378, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !970, file: !957, line: 119, baseType: !378, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !970, file: !957, line: 120, baseType: !674, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !965, file: !957, line: 104, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !957, line: 104, flags: DIFlagFwdDecl)
!978 = !{!979}
!979 = !DILocalVariable(name: "key", arg: 1, scope: !956, file: !957, line: 205, type: !960)
!980 = !DILocation(line: 205, column: 65, scope: !956)
!981 = !DILocation(line: 207, column: 28, scope: !956)
!982 = !DILocation(line: 207, column: 9, scope: !956)
!983 = !DILocation(line: 207, column: 2, scope: !956)
!984 = distinct !DISubprogram(name: "cpu_online", scope: !132, file: !132, line: 1080, type: !985, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!153, !7}
!987 = !{!988}
!988 = !DILocalVariable(name: "cpu", arg: 1, scope: !984, file: !132, line: 1080, type: !7)
!989 = !DILocation(line: 1080, column: 44, scope: !984)
!990 = !DILocation(line: 1082, column: 26, scope: !984)
!991 = !DILocation(line: 1082, column: 9, scope: !984)
!992 = !DILocation(line: 1082, column: 2, scope: !984)
!993 = distinct !DISubprogram(name: "__preempt_count_add", scope: !994, file: !994, line: 78, type: !995, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !997)
!994 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!995 = !DISubroutineType(types: !996)
!996 = !{null, !22}
!997 = !{!998, !999, !1002}
!998 = !DILocalVariable(name: "val", arg: 1, scope: !993, file: !994, line: 78, type: !22)
!999 = !DILocalVariable(name: "pao_ID__", scope: !1000, file: !994, line: 80, type: !1001)
!1000 = distinct !DILexicalBlock(scope: !993, file: !994, line: 80, column: 2)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1002 = !DILocalVariable(name: "pto_val__", scope: !1003, file: !994, line: 80, type: !139)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !994, line: 80, column: 2)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !994, line: 80, column: 2)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !994, line: 80, column: 2)
!1006 = !DILocation(line: 78, column: 53, scope: !993)
!1007 = !DILocation(line: 80, column: 2, scope: !993)
!1008 = !DILocation(line: 80, column: 2, scope: !1000)
!1009 = !DILocation(line: 80, column: 2, scope: !1005)
!1010 = !DILocation(line: 80, column: 2, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !994, line: 80, column: 2)
!1012 = !{i64 2149617938}
!1013 = !DILocation(line: 80, column: 2, scope: !1004)
!1014 = !DILocation(line: 80, column: 2, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1004, file: !994, line: 80, column: 2)
!1016 = !{i64 2149618233}
!1017 = !DILocation(line: 80, column: 2, scope: !1003)
!1018 = !{i64 2149618938}
!1019 = !DILocation(line: 81, column: 1, scope: !993)
!1020 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !994, file: !994, line: 93, type: !815, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1021)
!1021 = !{!1022}
!1022 = !DILocalVariable(name: "c", scope: !1023, file: !994, line: 95, type: !153)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !994, line: 95, column: 9)
!1024 = !DILocation(line: 95, column: 9, scope: !1023)
!1025 = !{i64 2149622294, i64 2149622387}
!1026 = !DILocation(line: 95, column: 9, scope: !1020)
!1027 = !DILocation(line: 95, column: 2, scope: !1020)
!1028 = distinct !DISubprogram(name: "arch_static_branch", scope: !1029, file: !1029, line: 25, type: !1030, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1029 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!153, !960, !153}
!1032 = !{!1033, !1034, !1035}
!1033 = !DILocalVariable(name: "key", arg: 1, scope: !1028, file: !1029, line: 25, type: !960)
!1034 = !DILocalVariable(name: "branch", arg: 2, scope: !1028, file: !1029, line: 25, type: !153)
!1035 = !DILabel(scope: !1028, name: "l_yes", file: !1029, line: 33)
!1036 = !DILocation(line: 25, column: 67, scope: !1028)
!1037 = !DILocation(line: 25, column: 77, scope: !1028)
!1038 = !DILocation(line: 30, column: 13, scope: !1028)
!1039 = !DILocation(line: 30, column: 28, scope: !1028)
!1040 = !DILocation(line: 30, column: 26, scope: !1028)
!1041 = !DILocation(line: 27, column: 2, scope: !1028)
!1042 = !{i64 643351, i64 643395, i64 2148128078, i64 2148128099, i64 2148128125, i64 2148128158, i64 2148128192, i64 2148128216}
!1043 = !DILocation(line: 32, column: 2, scope: !1028)
!1044 = !DILocation(line: 33, column: 1, scope: !1028)
!1045 = !DILocation(line: 34, column: 2, scope: !1028)
!1046 = !DILocation(line: 35, column: 1, scope: !1028)
!1047 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !132, file: !132, line: 502, type: !1048, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!153, !22, !129}
!1050 = !{!1051, !1052}
!1051 = !DILocalVariable(name: "cpu", arg: 1, scope: !1047, file: !132, line: 502, type: !22)
!1052 = !DILocalVariable(name: "cpumask", arg: 2, scope: !1047, file: !132, line: 502, type: !129)
!1053 = !DILocation(line: 502, column: 50, scope: !1047)
!1054 = !DILocation(line: 502, column: 77, scope: !1047)
!1055 = !DILocation(line: 504, column: 9, scope: !1047)
!1056 = !DILocation(line: 504, column: 2, scope: !1047)
!1057 = distinct !DISubprogram(name: "_test_bit", scope: !1058, file: !1058, line: 139, type: !1059, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1058 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!153, !39, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!1064 = !{!1065, !1066}
!1065 = !DILocalVariable(name: "nr", arg: 1, scope: !1057, file: !1058, line: 139, type: !39)
!1066 = !DILocalVariable(name: "addr", arg: 2, scope: !1057, file: !1058, line: 139, type: !1061)
!1067 = !DILocation(line: 139, column: 25, scope: !1057)
!1068 = !DILocation(line: 139, column: 59, scope: !1057)
!1069 = !DILocation(line: 141, column: 25, scope: !1057)
!1070 = !DILocation(line: 141, column: 32, scope: !1057)
!1071 = !DILocation(line: 141, column: 30, scope: !1057)
!1072 = !DILocation(line: 141, column: 2, scope: !1057)
!1073 = !DILocation(line: 142, column: 23, scope: !1057)
!1074 = !DILocation(line: 142, column: 27, scope: !1057)
!1075 = !DILocation(line: 142, column: 9, scope: !1057)
!1076 = !DILocation(line: 142, column: 2, scope: !1057)
!1077 = distinct !DISubprogram(name: "cpumask_check", scope: !132, file: !132, line: 148, type: !1078, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1080)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!7, !7}
!1080 = !{!1081}
!1081 = !DILocalVariable(name: "cpu", arg: 1, scope: !1077, file: !132, line: 148, type: !7)
!1082 = !DILocation(line: 148, column: 64, scope: !1077)
!1083 = !DILocation(line: 150, column: 20, scope: !1077)
!1084 = !DILocation(line: 150, column: 2, scope: !1077)
!1085 = !DILocation(line: 151, column: 9, scope: !1077)
!1086 = !DILocation(line: 151, column: 2, scope: !1077)
!1087 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1088, file: !1088, line: 66, type: !1089, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1094)
!1088 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1091, !35}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1094 = !{!1095, !1096}
!1095 = !DILocalVariable(name: "v", arg: 1, scope: !1087, file: !1088, line: 66, type: !1091)
!1096 = !DILocalVariable(name: "size", arg: 2, scope: !1087, file: !1088, line: 66, type: !35)
!1097 = !DILocation(line: 66, column: 73, scope: !1087)
!1098 = !DILocation(line: 66, column: 83, scope: !1087)
!1099 = !DILocation(line: 68, column: 19, scope: !1087)
!1100 = !DILocation(line: 68, column: 22, scope: !1087)
!1101 = !DILocation(line: 68, column: 2, scope: !1087)
!1102 = !DILocation(line: 69, column: 2, scope: !1087)
!1103 = !DILocation(line: 70, column: 1, scope: !1087)
!1104 = distinct !DISubprogram(name: "arch_test_bit", scope: !1105, file: !1105, line: 237, type: !1059, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1105 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1106 = !{!1107, !1108}
!1107 = !DILocalVariable(name: "nr", arg: 1, scope: !1104, file: !1105, line: 237, type: !39)
!1108 = !DILocalVariable(name: "addr", arg: 2, scope: !1104, file: !1105, line: 237, type: !1061)
!1109 = !DILocation(line: 237, column: 29, scope: !1104)
!1110 = !DILocation(line: 237, column: 63, scope: !1104)
!1111 = !DILocation(line: 239, column: 30, scope: !1104)
!1112 = !DILocation(line: 239, column: 9, scope: !1104)
!1113 = !DILocation(line: 239, column: 54, scope: !1104)
!1114 = !DILocation(line: 239, column: 58, scope: !1104)
!1115 = !DILocation(line: 239, column: 36, scope: !1104)
!1116 = !DILocation(line: 240, column: 26, scope: !1104)
!1117 = !DILocation(line: 240, column: 30, scope: !1104)
!1118 = !DILocation(line: 240, column: 8, scope: !1104)
!1119 = !DILocation(line: 239, column: 2, scope: !1104)
!1120 = distinct !DISubprogram(name: "kasan_check_read", scope: !1121, file: !1121, line: 40, type: !1122, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1124)
!1121 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!153, !1091, !7}
!1124 = !{!1125, !1126}
!1125 = !DILocalVariable(name: "p", arg: 1, scope: !1120, file: !1121, line: 40, type: !1091)
!1126 = !DILocalVariable(name: "size", arg: 2, scope: !1120, file: !1121, line: 40, type: !7)
!1127 = !DILocation(line: 40, column: 58, scope: !1120)
!1128 = !DILocation(line: 40, column: 74, scope: !1120)
!1129 = !DILocation(line: 42, column: 2, scope: !1120)
!1130 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1131, file: !1131, line: 229, type: !1132, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1134)
!1131 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !1091, !35, !22}
!1134 = !{!1135, !1136, !1137}
!1135 = !DILocalVariable(name: "ptr", arg: 1, scope: !1130, file: !1131, line: 229, type: !1091)
!1136 = !DILocalVariable(name: "size", arg: 2, scope: !1130, file: !1131, line: 229, type: !35)
!1137 = !DILocalVariable(name: "type", arg: 3, scope: !1130, file: !1131, line: 230, type: !22)
!1138 = !DILocation(line: 229, column: 60, scope: !1130)
!1139 = !DILocation(line: 229, column: 72, scope: !1130)
!1140 = !DILocation(line: 230, column: 15, scope: !1130)
!1141 = !DILocation(line: 230, column: 23, scope: !1130)
!1142 = distinct !DISubprogram(name: "constant_test_bit", scope: !1105, file: !1105, line: 204, type: !1143, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1145)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!153, !674, !1061}
!1145 = !{!1146, !1147}
!1146 = !DILocalVariable(name: "nr", arg: 1, scope: !1142, file: !1105, line: 204, type: !674)
!1147 = !DILocalVariable(name: "addr", arg: 2, scope: !1142, file: !1105, line: 204, type: !1061)
!1148 = !DILocation(line: 204, column: 52, scope: !1142)
!1149 = !DILocation(line: 204, column: 86, scope: !1142)
!1150 = !DILocation(line: 206, column: 19, scope: !1142)
!1151 = !DILocation(line: 206, column: 22, scope: !1142)
!1152 = !DILocation(line: 206, column: 15, scope: !1142)
!1153 = !DILocation(line: 207, column: 4, scope: !1142)
!1154 = !DILocation(line: 207, column: 9, scope: !1142)
!1155 = !DILocation(line: 207, column: 12, scope: !1142)
!1156 = !DILocation(line: 206, column: 44, scope: !1142)
!1157 = !DILocation(line: 207, column: 37, scope: !1142)
!1158 = !DILocation(line: 206, column: 2, scope: !1142)
!1159 = distinct !DISubprogram(name: "variable_test_bit", scope: !1105, file: !1105, line: 224, type: !1143, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DILocalVariable(name: "nr", arg: 1, scope: !1159, file: !1105, line: 224, type: !674)
!1162 = !DILocalVariable(name: "addr", arg: 2, scope: !1159, file: !1105, line: 224, type: !1061)
!1163 = !DILocalVariable(name: "oldbit", scope: !1159, file: !1105, line: 226, type: !153)
!1164 = !DILocation(line: 224, column: 52, scope: !1159)
!1165 = !DILocation(line: 224, column: 86, scope: !1159)
!1166 = !DILocation(line: 226, column: 2, scope: !1159)
!1167 = !DILocation(line: 226, column: 7, scope: !1159)
!1168 = !DILocation(line: 231, column: 33, scope: !1159)
!1169 = !DILocation(line: 231, column: 46, scope: !1159)
!1170 = !DILocation(line: 228, column: 2, scope: !1159)
!1171 = !{i64 2148345374, i64 2148345448}
!1172 = !DILocation(line: 233, column: 9, scope: !1159)
!1173 = !DILocation(line: 234, column: 1, scope: !1159)
!1174 = !DILocation(line: 233, column: 2, scope: !1159)
!1175 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !132, file: !132, line: 140, type: !1176, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1178)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !7, !7}
!1178 = !{!1179, !1180}
!1179 = !DILocalVariable(name: "cpu", arg: 1, scope: !1175, file: !132, line: 140, type: !7)
!1180 = !DILocalVariable(name: "bits", arg: 2, scope: !1175, file: !132, line: 140, type: !7)
!1181 = !DILocation(line: 140, column: 60, scope: !1175)
!1182 = !DILocation(line: 140, column: 78, scope: !1175)
!1183 = !DILocation(line: 145, column: 1, scope: !1175)
!1184 = distinct !DISubprogram(name: "kmalloc", scope: !108, file: !108, line: 591, type: !1185, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!20, !35, !141}
!1187 = !{!1188, !1189, !1190}
!1188 = !DILocalVariable(name: "size", arg: 1, scope: !1184, file: !108, line: 591, type: !35)
!1189 = !DILocalVariable(name: "flags", arg: 2, scope: !1184, file: !108, line: 591, type: !141)
!1190 = !DILocalVariable(name: "index", scope: !1191, file: !108, line: 594, type: !7)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !108, line: 593, column: 42)
!1192 = distinct !DILexicalBlock(scope: !1184, file: !108, line: 593, column: 6)
!1193 = !DILocation(line: 591, column: 61, scope: !1184)
!1194 = !DILocation(line: 591, column: 73, scope: !1184)
!1195 = !DILocation(line: 593, column: 27, scope: !1192)
!1196 = !DILocation(line: 593, column: 6, scope: !1192)
!1197 = !DILocation(line: 593, column: 33, scope: !1192)
!1198 = !DILocation(line: 593, column: 36, scope: !1192)
!1199 = !DILocation(line: 593, column: 6, scope: !1184)
!1200 = !DILocation(line: 594, column: 3, scope: !1191)
!1201 = !DILocation(line: 594, column: 16, scope: !1191)
!1202 = !DILocation(line: 596, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1191, file: !108, line: 596, column: 7)
!1204 = !DILocation(line: 596, column: 12, scope: !1203)
!1205 = !DILocation(line: 596, column: 7, scope: !1191)
!1206 = !DILocation(line: 597, column: 25, scope: !1203)
!1207 = !DILocation(line: 597, column: 31, scope: !1203)
!1208 = !DILocation(line: 597, column: 11, scope: !1203)
!1209 = !DILocation(line: 597, column: 4, scope: !1203)
!1210 = !DILocation(line: 599, column: 11, scope: !1191)
!1211 = !DILocation(line: 599, column: 9, scope: !1191)
!1212 = !DILocation(line: 601, column: 33, scope: !1191)
!1213 = !DILocation(line: 601, column: 40, scope: !1191)
!1214 = !DILocation(line: 601, column: 20, scope: !1191)
!1215 = !DILocation(line: 601, column: 5, scope: !1191)
!1216 = !DILocation(line: 601, column: 51, scope: !1191)
!1217 = !DILocation(line: 602, column: 5, scope: !1191)
!1218 = !DILocation(line: 602, column: 12, scope: !1191)
!1219 = !DILocation(line: 600, column: 10, scope: !1191)
!1220 = !DILocation(line: 600, column: 3, scope: !1191)
!1221 = !DILocation(line: 603, column: 2, scope: !1192)
!1222 = !DILocation(line: 604, column: 19, scope: !1184)
!1223 = !DILocation(line: 604, column: 25, scope: !1184)
!1224 = !DILocation(line: 604, column: 9, scope: !1184)
!1225 = !DILocation(line: 604, column: 2, scope: !1184)
!1226 = !DILocation(line: 605, column: 1, scope: !1184)
!1227 = !DISubprogram(name: "kstrdup", scope: !1228, file: !1228, line: 216, type: !1229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1228 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!223, !16, !141}
!1231 = !DISubprogram(name: "call_usermodehelper_setup", scope: !279, file: !279, line: 37, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!277, !16, !315, !315, !141, !320, !694, !20}
!1234 = distinct !DISubprogram(name: "free_modprobe_argv", scope: !3, file: !3, line: 66, type: !695, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1235)
!1235 = !{!1236}
!1236 = !DILocalVariable(name: "info", arg: 1, scope: !1234, file: !3, line: 66, type: !277)
!1237 = !DILocation(line: 66, column: 56, scope: !1234)
!1238 = !DILocation(line: 68, column: 8, scope: !1234)
!1239 = !DILocation(line: 68, column: 14, scope: !1234)
!1240 = !DILocation(line: 68, column: 2, scope: !1234)
!1241 = !DILocation(line: 69, column: 8, scope: !1234)
!1242 = !DILocation(line: 69, column: 14, scope: !1234)
!1243 = !DILocation(line: 69, column: 2, scope: !1234)
!1244 = !DILocation(line: 70, column: 1, scope: !1234)
!1245 = !DISubprogram(name: "call_usermodehelper_exec", scope: !279, file: !279, line: 43, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!22, !277, !22}
!1248 = distinct !DISubprogram(name: "kmod_dup_request_announce", scope: !881, file: !881, line: 246, type: !1249, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !223, !22}
!1251 = !{!1252, !1253}
!1252 = !DILocalVariable(name: "module_name", arg: 1, scope: !1248, file: !881, line: 246, type: !223)
!1253 = !DILocalVariable(name: "ret", arg: 2, scope: !1248, file: !881, line: 246, type: !22)
!1254 = !DILocation(line: 246, column: 52, scope: !1248)
!1255 = !DILocation(line: 246, column: 69, scope: !1248)
!1256 = !DILocation(line: 248, column: 1, scope: !1248)
!1257 = !DISubprogram(name: "kfree", scope: !108, file: !108, line: 227, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !236}
!1260 = !DISubprogram(name: "kmalloc_large", scope: !108, file: !108, line: 531, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = distinct !DISubprogram(name: "__kmalloc_index", scope: !108, file: !108, line: 444, type: !1262, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1264)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!7, !35, !153}
!1264 = !{!1265, !1266}
!1265 = !DILocalVariable(name: "size", arg: 1, scope: !1261, file: !108, line: 444, type: !35)
!1266 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1261, file: !108, line: 445, type: !153)
!1267 = !DILocation(line: 444, column: 60, scope: !1261)
!1268 = !DILocation(line: 445, column: 16, scope: !1261)
!1269 = !DILocation(line: 447, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 447, column: 6)
!1271 = !DILocation(line: 447, column: 6, scope: !1261)
!1272 = !DILocation(line: 448, column: 3, scope: !1270)
!1273 = !DILocation(line: 450, column: 6, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 450, column: 6)
!1275 = !DILocation(line: 450, column: 11, scope: !1274)
!1276 = !DILocation(line: 450, column: 6, scope: !1261)
!1277 = !DILocation(line: 451, column: 3, scope: !1274)
!1278 = !DILocation(line: 453, column: 32, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 453, column: 6)
!1280 = !DILocation(line: 453, column: 37, scope: !1279)
!1281 = !DILocation(line: 453, column: 42, scope: !1279)
!1282 = !DILocation(line: 453, column: 45, scope: !1279)
!1283 = !DILocation(line: 453, column: 50, scope: !1279)
!1284 = !DILocation(line: 453, column: 6, scope: !1261)
!1285 = !DILocation(line: 454, column: 3, scope: !1279)
!1286 = !DILocation(line: 455, column: 32, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 455, column: 6)
!1288 = !DILocation(line: 455, column: 37, scope: !1287)
!1289 = !DILocation(line: 455, column: 43, scope: !1287)
!1290 = !DILocation(line: 455, column: 46, scope: !1287)
!1291 = !DILocation(line: 455, column: 51, scope: !1287)
!1292 = !DILocation(line: 455, column: 6, scope: !1261)
!1293 = !DILocation(line: 456, column: 3, scope: !1287)
!1294 = !DILocation(line: 457, column: 6, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 457, column: 6)
!1296 = !DILocation(line: 457, column: 11, scope: !1295)
!1297 = !DILocation(line: 457, column: 6, scope: !1261)
!1298 = !DILocation(line: 457, column: 26, scope: !1295)
!1299 = !DILocation(line: 458, column: 6, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 458, column: 6)
!1301 = !DILocation(line: 458, column: 11, scope: !1300)
!1302 = !DILocation(line: 458, column: 6, scope: !1261)
!1303 = !DILocation(line: 458, column: 26, scope: !1300)
!1304 = !DILocation(line: 459, column: 6, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 459, column: 6)
!1306 = !DILocation(line: 459, column: 11, scope: !1305)
!1307 = !DILocation(line: 459, column: 6, scope: !1261)
!1308 = !DILocation(line: 459, column: 26, scope: !1305)
!1309 = !DILocation(line: 460, column: 6, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 460, column: 6)
!1311 = !DILocation(line: 460, column: 11, scope: !1310)
!1312 = !DILocation(line: 460, column: 6, scope: !1261)
!1313 = !DILocation(line: 460, column: 26, scope: !1310)
!1314 = !DILocation(line: 461, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 461, column: 6)
!1316 = !DILocation(line: 461, column: 11, scope: !1315)
!1317 = !DILocation(line: 461, column: 6, scope: !1261)
!1318 = !DILocation(line: 461, column: 26, scope: !1315)
!1319 = !DILocation(line: 462, column: 6, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 462, column: 6)
!1321 = !DILocation(line: 462, column: 11, scope: !1320)
!1322 = !DILocation(line: 462, column: 6, scope: !1261)
!1323 = !DILocation(line: 462, column: 26, scope: !1320)
!1324 = !DILocation(line: 463, column: 6, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 463, column: 6)
!1326 = !DILocation(line: 463, column: 11, scope: !1325)
!1327 = !DILocation(line: 463, column: 6, scope: !1261)
!1328 = !DILocation(line: 463, column: 26, scope: !1325)
!1329 = !DILocation(line: 464, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 464, column: 6)
!1331 = !DILocation(line: 464, column: 11, scope: !1330)
!1332 = !DILocation(line: 464, column: 6, scope: !1261)
!1333 = !DILocation(line: 464, column: 26, scope: !1330)
!1334 = !DILocation(line: 465, column: 6, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 465, column: 6)
!1336 = !DILocation(line: 465, column: 11, scope: !1335)
!1337 = !DILocation(line: 465, column: 6, scope: !1261)
!1338 = !DILocation(line: 465, column: 26, scope: !1335)
!1339 = !DILocation(line: 466, column: 6, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 466, column: 6)
!1341 = !DILocation(line: 466, column: 11, scope: !1340)
!1342 = !DILocation(line: 466, column: 6, scope: !1261)
!1343 = !DILocation(line: 466, column: 26, scope: !1340)
!1344 = !DILocation(line: 467, column: 6, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 467, column: 6)
!1346 = !DILocation(line: 467, column: 11, scope: !1345)
!1347 = !DILocation(line: 467, column: 6, scope: !1261)
!1348 = !DILocation(line: 467, column: 26, scope: !1345)
!1349 = !DILocation(line: 468, column: 6, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 468, column: 6)
!1351 = !DILocation(line: 468, column: 11, scope: !1350)
!1352 = !DILocation(line: 468, column: 6, scope: !1261)
!1353 = !DILocation(line: 468, column: 26, scope: !1350)
!1354 = !DILocation(line: 469, column: 6, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 469, column: 6)
!1356 = !DILocation(line: 469, column: 11, scope: !1355)
!1357 = !DILocation(line: 469, column: 6, scope: !1261)
!1358 = !DILocation(line: 469, column: 26, scope: !1355)
!1359 = !DILocation(line: 470, column: 6, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 470, column: 6)
!1361 = !DILocation(line: 470, column: 11, scope: !1360)
!1362 = !DILocation(line: 470, column: 6, scope: !1261)
!1363 = !DILocation(line: 470, column: 26, scope: !1360)
!1364 = !DILocation(line: 471, column: 6, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 471, column: 6)
!1366 = !DILocation(line: 471, column: 11, scope: !1365)
!1367 = !DILocation(line: 471, column: 6, scope: !1261)
!1368 = !DILocation(line: 471, column: 26, scope: !1365)
!1369 = !DILocation(line: 472, column: 6, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 472, column: 6)
!1371 = !DILocation(line: 472, column: 11, scope: !1370)
!1372 = !DILocation(line: 472, column: 6, scope: !1261)
!1373 = !DILocation(line: 472, column: 26, scope: !1370)
!1374 = !DILocation(line: 473, column: 6, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 473, column: 6)
!1376 = !DILocation(line: 473, column: 11, scope: !1375)
!1377 = !DILocation(line: 473, column: 6, scope: !1261)
!1378 = !DILocation(line: 473, column: 26, scope: !1375)
!1379 = !DILocation(line: 474, column: 6, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 474, column: 6)
!1381 = !DILocation(line: 474, column: 11, scope: !1380)
!1382 = !DILocation(line: 474, column: 6, scope: !1261)
!1383 = !DILocation(line: 474, column: 27, scope: !1380)
!1384 = !DILocation(line: 475, column: 6, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 475, column: 6)
!1386 = !DILocation(line: 475, column: 11, scope: !1385)
!1387 = !DILocation(line: 475, column: 6, scope: !1261)
!1388 = !DILocation(line: 475, column: 32, scope: !1385)
!1389 = !DILocation(line: 477, column: 50, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1261, file: !108, line: 477, column: 6)
!1391 = !DILocation(line: 477, column: 6, scope: !1261)
!1392 = !DILocation(line: 478, column: 3, scope: !1390)
!1393 = !DILocation(line: 478, column: 3, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !108, line: 478, column: 3)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !108, line: 478, column: 3)
!1396 = !{i32 -2141412896}
!1397 = !DILocation(line: 478, column: 3, scope: !1395)
!1398 = !DILocation(line: 480, column: 3, scope: !1390)
!1399 = !DILocation(line: 480, column: 3, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1390, file: !108, line: 480, column: 3)
!1401 = !DILocation(line: 480, column: 3, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 480, column: 3)
!1403 = !DILocation(line: 480, column: 3, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !108, line: 480, column: 3)
!1405 = !{i64 2153554603, i64 2153554632, i64 2153554678, i64 2153554736, i64 2153554790, i64 2153554844, i64 2153554899, i64 2153554930}
!1406 = !DILocation(line: 483, column: 2, scope: !1261)
!1407 = !DILocation(line: 484, column: 1, scope: !1261)
!1408 = !DISubprogram(name: "kmalloc_trace", scope: !108, file: !108, line: 525, type: !1409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!20, !1411, !141, !35}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1413, line: 325, flags: DIFlagFwdDecl)
!1413 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1414 = distinct !DISubprogram(name: "kmalloc_type", scope: !108, file: !108, line: 401, type: !1415, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!107, !141, !39}
!1417 = !{!1418, !1419}
!1418 = !DILocalVariable(name: "flags", arg: 1, scope: !1414, file: !108, line: 401, type: !141)
!1419 = !DILocalVariable(name: "caller", arg: 2, scope: !1414, file: !108, line: 401, type: !39)
!1420 = !DILocation(line: 401, column: 67, scope: !1414)
!1421 = !DILocation(line: 401, column: 88, scope: !1414)
!1422 = !DILocation(line: 407, column: 6, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1414, file: !108, line: 407, column: 6)
!1424 = !DILocation(line: 407, column: 6, scope: !1414)
!1425 = !DILocation(line: 413, column: 3, scope: !1423)
!1426 = !DILocation(line: 423, column: 38, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1414, file: !108, line: 423, column: 6)
!1428 = !DILocation(line: 423, column: 44, scope: !1427)
!1429 = !DILocation(line: 423, column: 6, scope: !1414)
!1430 = !DILocation(line: 424, column: 3, scope: !1427)
!1431 = !DILocation(line: 426, column: 3, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1414, file: !108, line: 425, column: 6)
!1433 = !DILocation(line: 429, column: 1, scope: !1414)
!1434 = !DISubprogram(name: "__kmalloc", scope: !108, file: !108, line: 488, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1435 = !DISubprogram(name: "__compiletime_assert_255", scope: !108, file: !108, line: 478, type: !1436, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null}
