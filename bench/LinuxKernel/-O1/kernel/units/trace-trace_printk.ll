; ModuleID = 'kernel/trace/trace_printk.c'
source_filename = "kernel/trace/trace_printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___trace_bprintk: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __trace_bprintk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___ftrace_vbprintk: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __ftrace_vbprintk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___trace_printk: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __trace_printk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___ftrace_vprintk: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __ftrace_vprintk ; .previous"
module asm ".section\09\22.initcall5.init..kmod_trace_printk__324_393_init_trace_printk_function_export\22, \22a\22\09\09"
module asm "__initcall__kmod_trace_printk__324_393_init_trace_printk_function_export5:\09\09\09"
module asm ".long\09__initstub__kmod_trace_printk__324_393_init_trace_printk_function_export5 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcallearly.init..kmod_trace_printk__326_400_init_trace_printk\22, \22a\22\09\09"
module asm "__initcall__kmod_trace_printk__326_400_init_trace_printkearly:\09\09\09"
module asm ".long\09__initstub__kmod_trace_printk__326_400_init_trace_printkearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.trace_bprintk_fmt = type { %struct.list_head, ptr }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@trace_printk_enabled = internal global i8 1, section ".data..read_mostly", align 1, !dbg !0
@__UNIQUE_ID___addressable___trace_bprintk320 = internal global ptr @__trace_bprintk, section ".discard.addressable", align 8, !dbg !329
@__UNIQUE_ID___addressable___ftrace_vbprintk321 = internal global ptr @__ftrace_vbprintk, section ".discard.addressable", align 8, !dbg !331
@__UNIQUE_ID___addressable___trace_printk322 = internal global ptr @__trace_printk, section ".discard.addressable", align 8, !dbg !333
@__UNIQUE_ID___addressable___ftrace_vprintk323 = internal global ptr @__ftrace_vprintk, section ".discard.addressable", align 8, !dbg !335
@__start___tracepoint_str = external dso_local global [0 x ptr], align 8
@__stop___tracepoint_str = external dso_local global [0 x ptr], align 8
@__UNIQUE_ID___addressable___initstub__kmod_trace_printk__324_393_init_trace_printk_function_export5325 = internal global ptr @__initstub__kmod_trace_printk__324_393_init_trace_printk_function_export5, section ".discard.addressable", align 8, !dbg !337
@__UNIQUE_ID___addressable___initstub__kmod_trace_printk__326_400_init_trace_printkearly327 = internal global ptr @__initstub__kmod_trace_printk__326_400_init_trace_printkearly, section ".discard.addressable", align 8, !dbg !339
@.str = private unnamed_addr constant [15 x i8] c"printk_formats\00", align 1, !dbg !341
@ftrace_formats_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @ftrace_formats_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !346
@show_format_seq_ops = internal constant %struct.seq_operations { ptr @t_start, ptr @t_stop, ptr @t_next, ptr @t_show }, align 8, !dbg !6214
@btrace_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @btrace_mutex, i64 16), ptr getelementptr (i8, ptr @btrace_mutex, i64 16) } }, align 8, !dbg !6216
@__stop___trace_bprintk_fmt = external dso_local global [0 x ptr], align 8
@__start___trace_bprintk_fmt = external dso_local global [0 x ptr], align 8
@trace_bprintk_fmt_list = internal global %struct.list_head { ptr @trace_bprintk_fmt_list, ptr @trace_bprintk_fmt_list }, align 8, !dbg !6218
@.str.1 = private unnamed_addr constant [10 x i8] c"0x%lx : \22\00", align 1, !dbg !6220
@.str.2 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1, !dbg !6223
@.str.3 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1, !dbg !6226
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1, !dbg !6228
@.str.5 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1, !dbg !6230
@module_trace_bprintk_format_nb = internal global %struct.notifier_block { ptr @module_trace_bprintk_format_notify, ptr null, i32 0 }, align 8, !dbg !6232
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !6245
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable___trace_bprintk320, ptr @__UNIQUE_ID___addressable___ftrace_vbprintk321, ptr @__UNIQUE_ID___addressable___trace_printk322, ptr @__UNIQUE_ID___addressable___ftrace_vprintk323, ptr @__UNIQUE_ID___addressable___initstub__kmod_trace_printk__324_393_init_trace_printk_function_export5325, ptr @__UNIQUE_ID___addressable___initstub__kmod_trace_printk__326_400_init_trace_printkearly327], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @trace_printk_control(i1 noundef zeroext %enabled) #0 align 16 !dbg !6259 {
entry:
  %enabled.addr = alloca i8, align 1
  %frombool = zext i1 %enabled to i8
  store i8 %frombool, ptr %enabled.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enabled.addr, metadata !6263, metadata !DIExpression()), !dbg !6264
  %0 = load i8, ptr %enabled.addr, align 1, !dbg !6265, !range !6266, !noundef !680
  %tobool = trunc i8 %0 to i1, !dbg !6265
  %frombool1 = zext i1 %tobool to i8, !dbg !6267
  store i8 %frombool1, ptr @trace_printk_enabled, align 1, !dbg !6267
  ret void, !dbg !6268
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__trace_bprintk(i64 noundef %ip, ptr noundef %fmt, ...) #0 align 16 !dbg !6269 {
entry:
  %retval = alloca i32, align 4
  %ip.addr = alloca i64, align 8
  %fmt.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !6273, metadata !DIExpression()), !dbg !6287
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !6274, metadata !DIExpression()), !dbg !6288
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6289
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6275, metadata !DIExpression()), !dbg !6290
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #14, !dbg !6291
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !6276, metadata !DIExpression()), !dbg !6292
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !6293
  %tobool = icmp ne ptr %0, null, !dbg !6293
  %lnot = xor i1 %tobool, true, !dbg !6293
  %lnot1 = xor i1 %lnot, true, !dbg !6293
  %lnot2 = xor i1 %lnot1, true, !dbg !6293
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6293
  %conv = sext i32 %lnot.ext to i64, !dbg !6293
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6293
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6293
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6295

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6296

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @trace_printk_enabled, align 1, !dbg !6297, !range !6266, !noundef !680
  %tobool4 = trunc i8 %1 to i1, !dbg !6297
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6299

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6300

if.end6:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !6301
  call void @llvm.va_start(ptr %arraydecay), !dbg !6301
  %2 = load i64, ptr %ip.addr, align 8, !dbg !6302
  %3 = load ptr, ptr %fmt.addr, align 8, !dbg !6303
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !6304
  %call = call i32 @trace_vbprintk(i64 noundef %2, ptr noundef %3, ptr noundef %arraydecay7) #15, !dbg !6305
  store i32 %call, ptr %ret, align 4, !dbg !6306
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !6307
  call void @llvm.va_end(ptr %arraydecay8), !dbg !6307
  %4 = load i32, ptr %ret, align 4, !dbg !6308
  store i32 %4, ptr %retval, align 4, !dbg !6309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6309

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #14, !dbg !6310
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6310
  %5 = load i32, ptr %retval, align 4, !dbg !6310
  ret i32 %5, !dbg !6310
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6311 dso_local i32 @trace_vbprintk(i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__ftrace_vbprintk(i64 noundef %ip, ptr noundef %fmt, ptr noundef %ap) #0 align 16 !dbg !6315 {
entry:
  %retval = alloca i32, align 4
  %ip.addr = alloca i64, align 8
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !6317, metadata !DIExpression()), !dbg !6320
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !6318, metadata !DIExpression()), !dbg !6321
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !6319, metadata !DIExpression()), !dbg !6322
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !6323
  %tobool = icmp ne ptr %0, null, !dbg !6323
  %lnot = xor i1 %tobool, true, !dbg !6323
  %lnot1 = xor i1 %lnot, true, !dbg !6323
  %lnot2 = xor i1 %lnot1, true, !dbg !6323
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6323
  %conv = sext i32 %lnot.ext to i64, !dbg !6323
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6323
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6323
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6325

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6326
  br label %return, !dbg !6326

if.end:                                           ; preds = %entry
  %1 = load i8, ptr @trace_printk_enabled, align 1, !dbg !6327, !range !6266, !noundef !680
  %tobool4 = trunc i8 %1 to i1, !dbg !6327
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6329

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6330
  br label %return, !dbg !6330

if.end6:                                          ; preds = %if.end
  %2 = load i64, ptr %ip.addr, align 8, !dbg !6331
  %3 = load ptr, ptr %fmt.addr, align 8, !dbg !6332
  %4 = load ptr, ptr %ap.addr, align 8, !dbg !6333
  %call = call i32 @trace_vbprintk(i64 noundef %2, ptr noundef %3, ptr noundef %4) #15, !dbg !6334
  store i32 %call, ptr %retval, align 4, !dbg !6335
  br label %return, !dbg !6335

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6336
  ret i32 %5, !dbg !6336
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__trace_printk(i64 noundef %ip, ptr noundef %fmt, ...) #0 align 16 !dbg !6337 {
entry:
  %retval = alloca i32, align 4
  %ip.addr = alloca i64, align 8
  %fmt.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !6339, metadata !DIExpression()), !dbg !6343
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !6340, metadata !DIExpression()), !dbg !6344
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6345
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6341, metadata !DIExpression()), !dbg !6346
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #14, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !6342, metadata !DIExpression()), !dbg !6348
  %0 = load i8, ptr @trace_printk_enabled, align 1, !dbg !6349, !range !6266, !noundef !680
  %tobool = trunc i8 %0 to i1, !dbg !6349
  br i1 %tobool, label %if.end, label %if.then, !dbg !6351

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6352

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !6353
  call void @llvm.va_start(ptr %arraydecay), !dbg !6353
  %1 = load i64, ptr %ip.addr, align 8, !dbg !6354
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !6355
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !6356
  %call = call i32 @trace_vprintk(i64 noundef %1, ptr noundef %2, ptr noundef %arraydecay1) #15, !dbg !6357
  store i32 %call, ptr %ret, align 4, !dbg !6358
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !6359
  call void @llvm.va_end(ptr %arraydecay2), !dbg !6359
  %3 = load i32, ptr %ret, align 4, !dbg !6360
  store i32 %3, ptr %retval, align 4, !dbg !6361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6361

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #14, !dbg !6362
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6362
  %4 = load i32, ptr %retval, align 4, !dbg !6362
  ret i32 %4, !dbg !6362
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6363 dso_local i32 @trace_vprintk(i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__ftrace_vprintk(i64 noundef %ip, ptr noundef %fmt, ptr noundef %ap) #0 align 16 !dbg !6364 {
entry:
  %retval = alloca i32, align 4
  %ip.addr = alloca i64, align 8
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !6366, metadata !DIExpression()), !dbg !6369
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !6367, metadata !DIExpression()), !dbg !6370
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !6368, metadata !DIExpression()), !dbg !6371
  %0 = load i8, ptr @trace_printk_enabled, align 1, !dbg !6372, !range !6266, !noundef !680
  %tobool = trunc i8 %0 to i1, !dbg !6372
  br i1 %tobool, label %if.end, label %if.then, !dbg !6374

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6375
  br label %return, !dbg !6375

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %ip.addr, align 8, !dbg !6376
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !6377
  %3 = load ptr, ptr %ap.addr, align 8, !dbg !6378
  %call = call i32 @trace_vprintk(i64 noundef %1, ptr noundef %2, ptr noundef %3) #15, !dbg !6379
  store i32 %call, ptr %retval, align 4, !dbg !6380
  br label %return, !dbg !6380

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !6381
  ret i32 %4, !dbg !6381
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @trace_is_tracepoint_string(ptr noundef %str) #0 align 16 !dbg !6382 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !6386, metadata !DIExpression()), !dbg !6388
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !6387, metadata !DIExpression()), !dbg !6390
  store ptr @__start___tracepoint_str, ptr %ptr, align 8, !dbg !6390
  store ptr @__start___tracepoint_str, ptr %ptr, align 8, !dbg !6391
  br label %for.cond, !dbg !6393

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %ptr, align 8, !dbg !6394
  %cmp = icmp ult ptr %0, @__stop___tracepoint_str, !dbg !6396
  br i1 %cmp, label %for.body, label %for.end, !dbg !6397

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %str.addr, align 8, !dbg !6398
  %2 = load ptr, ptr %ptr, align 8, !dbg !6401
  %3 = load ptr, ptr %2, align 8, !dbg !6402
  %cmp1 = icmp eq ptr %1, %3, !dbg !6403
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6404

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !6405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6405

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6406

for.inc:                                          ; preds = %if.end
  %4 = load ptr, ptr %ptr, align 8, !dbg !6407
  %incdec.ptr = getelementptr ptr, ptr %4, i32 1, !dbg !6407
  store ptr %incdec.ptr, ptr %ptr, align 8, !dbg !6407
  br label %for.cond, !dbg !6408, !llvm.loop !6409

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !6413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6413

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !6414
  %5 = load i1, ptr %retval, align 1, !dbg !6414
  ret i1 %5, !dbg !6414
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_trace_printk__324_393_init_trace_printk_function_export5() #6 section ".init.text" align 16 !dbg !6415 {
entry:
  %call = call i32 @init_trace_printk_function_export() #16, !dbg !6416
  ret i32 %call, !dbg !6416
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_trace_printk_function_export() #6 section ".init.text" align 16 !dbg !6417 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6420
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6419, metadata !DIExpression()), !dbg !6421
  %call = call i32 @tracing_init_dentry() #15, !dbg !6422
  store i32 %call, ptr %ret, align 4, !dbg !6423
  %0 = load i32, ptr %ret, align 4, !dbg !6424
  %tobool = icmp ne i32 %0, 0, !dbg !6424
  br i1 %tobool, label %if.then, label %if.end, !dbg !6426

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6427

if.end:                                           ; preds = %entry
  %call1 = call ptr @trace_create_file(ptr noundef @.str, i16 noundef zeroext 288, ptr noundef null, ptr noundef null, ptr noundef @ftrace_formats_fops) #15, !dbg !6428
  store i32 0, ptr %retval, align 4, !dbg !6429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6429

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6430
  %1 = load i32, ptr %retval, align 4, !dbg !6430
  ret i32 %1, !dbg !6430
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_trace_printk__326_400_init_trace_printkearly() #6 section ".init.text" align 16 !dbg !6431 {
entry:
  %call = call i32 @init_trace_printk() #16, !dbg !6432
  ret i32 %call, !dbg !6432
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_trace_printk() #6 section ".init.text" align 16 !dbg !6433 {
entry:
  %call = call i32 @register_module_notifier(ptr noundef @module_trace_bprintk_format_nb) #15, !dbg !6434
  ret i32 %call, !dbg !6435
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6436 dso_local i32 @tracing_init_dentry() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6437 dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ftrace_formats_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6440 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6442, metadata !DIExpression()), !dbg !6445
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6443, metadata !DIExpression()), !dbg !6446
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6447
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6444, metadata !DIExpression()), !dbg !6448
  %call = call i32 @security_locked_down(i32 noundef 26) #15, !dbg !6449
  store i32 %call, ptr %ret, align 4, !dbg !6450
  %0 = load i32, ptr %ret, align 4, !dbg !6451
  %tobool = icmp ne i32 %0, 0, !dbg !6451
  br i1 %tobool, label %if.then, label %if.end, !dbg !6453

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !6454
  store i32 %1, ptr %retval, align 4, !dbg !6455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6455

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6456
  %call1 = call i32 @seq_open(ptr noundef %2, ptr noundef @show_format_seq_ops) #15, !dbg !6457
  store i32 %call1, ptr %retval, align 4, !dbg !6458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6458

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6459
  %3 = load i32, ptr %retval, align 4, !dbg !6459
  ret i32 %3, !dbg !6459
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6460 dso_local i32 @security_locked_down(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6463 dso_local i32 @seq_open(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @t_start(ptr noundef %m, ptr noundef %pos) #0 align 16 !dbg !6466 {
entry:
  %m.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6468, metadata !DIExpression()), !dbg !6470
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6469, metadata !DIExpression()), !dbg !6471
  call void @format_mod_start() #15, !dbg !6472
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !6473
  %call = call ptr @find_next(ptr noundef null, ptr noundef %0) #15, !dbg !6474
  ret ptr %call, !dbg !6475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @t_stop(ptr noundef %m, ptr noundef %p) #0 align 16 !dbg !6476 {
entry:
  %m.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6478, metadata !DIExpression()), !dbg !6480
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6479, metadata !DIExpression()), !dbg !6481
  call void @format_mod_stop() #15, !dbg !6482
  ret void, !dbg !6483
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @t_next(ptr noundef %m, ptr noundef %v, ptr noundef %pos) #0 align 16 !dbg !6484 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6486, metadata !DIExpression()), !dbg !6489
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6487, metadata !DIExpression()), !dbg !6490
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6488, metadata !DIExpression()), !dbg !6491
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !6492
  %1 = load i64, ptr %0, align 8, !dbg !6493
  %inc = add i64 %1, 1, !dbg !6493
  store i64 %inc, ptr %0, align 8, !dbg !6493
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6494
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !6495
  %call = call ptr @find_next(ptr noundef %2, ptr noundef %3) #15, !dbg !6496
  ret ptr %call, !dbg !6497
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @t_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !6498 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %fmt = alloca ptr, align 8
  %str = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6500, metadata !DIExpression()), !dbg !6505
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6501, metadata !DIExpression()), !dbg !6506
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt) #14, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %fmt, metadata !6502, metadata !DIExpression()), !dbg !6508
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6509
  store ptr %0, ptr %fmt, align 8, !dbg !6508
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #14, !dbg !6510
  call void @llvm.dbg.declare(metadata ptr %str, metadata !6503, metadata !DIExpression()), !dbg !6511
  %1 = load ptr, ptr %fmt, align 8, !dbg !6512
  %2 = load ptr, ptr %1, align 8, !dbg !6513
  store ptr %2, ptr %str, align 8, !dbg !6511
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !6514
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6504, metadata !DIExpression()), !dbg !6515
  %3 = load ptr, ptr %fmt, align 8, !dbg !6516
  %4 = load ptr, ptr %3, align 8, !dbg !6518
  %tobool = icmp ne ptr %4, null, !dbg !6518
  br i1 %tobool, label %if.end, label %if.then, !dbg !6519

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6520

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %m.addr, align 8, !dbg !6521
  %6 = load ptr, ptr %fmt, align 8, !dbg !6522
  %7 = load i64, ptr %6, align 8, !dbg !6523
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %7) #15, !dbg !6524
  store i32 0, ptr %i, align 4, !dbg !6525
  br label %for.cond, !dbg !6527

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %str, align 8, !dbg !6528
  %9 = load i32, ptr %i, align 4, !dbg !6530
  %idxprom = sext i32 %9 to i64, !dbg !6528
  %arrayidx = getelementptr i8, ptr %8, i64 %idxprom, !dbg !6528
  %10 = load i8, ptr %arrayidx, align 1, !dbg !6528
  %tobool1 = icmp ne i8 %10, 0, !dbg !6531
  br i1 %tobool1, label %for.body, label %for.end, !dbg !6531

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %str, align 8, !dbg !6532
  %12 = load i32, ptr %i, align 4, !dbg !6534
  %idxprom2 = sext i32 %12 to i64, !dbg !6532
  %arrayidx3 = getelementptr i8, ptr %11, i64 %idxprom2, !dbg !6532
  %13 = load i8, ptr %arrayidx3, align 1, !dbg !6532
  %conv = zext i8 %13 to i32, !dbg !6532
  switch i32 %conv, label %sw.default [
    i32 10, label %sw.bb
    i32 9, label %sw.bb4
    i32 92, label %sw.bb5
    i32 34, label %sw.bb6
  ], !dbg !6535

sw.bb:                                            ; preds = %for.body
  %14 = load ptr, ptr %m.addr, align 8, !dbg !6536
  call void @seq_puts(ptr noundef %14, ptr noundef @.str.2) #15, !dbg !6538
  br label %sw.epilog, !dbg !6539

sw.bb4:                                           ; preds = %for.body
  %15 = load ptr, ptr %m.addr, align 8, !dbg !6540
  call void @seq_puts(ptr noundef %15, ptr noundef @.str.3) #15, !dbg !6541
  br label %sw.epilog, !dbg !6542

sw.bb5:                                           ; preds = %for.body
  %16 = load ptr, ptr %m.addr, align 8, !dbg !6543
  call void @seq_putc(ptr noundef %16, i8 noundef zeroext 92) #15, !dbg !6544
  br label %sw.epilog, !dbg !6545

sw.bb6:                                           ; preds = %for.body
  %17 = load ptr, ptr %m.addr, align 8, !dbg !6546
  call void @seq_puts(ptr noundef %17, ptr noundef @.str.4) #15, !dbg !6547
  br label %sw.epilog, !dbg !6548

sw.default:                                       ; preds = %for.body
  %18 = load ptr, ptr %m.addr, align 8, !dbg !6549
  %19 = load ptr, ptr %str, align 8, !dbg !6550
  %20 = load i32, ptr %i, align 4, !dbg !6551
  %idxprom7 = sext i32 %20 to i64, !dbg !6550
  %arrayidx8 = getelementptr i8, ptr %19, i64 %idxprom7, !dbg !6550
  %21 = load i8, ptr %arrayidx8, align 1, !dbg !6550
  call void @seq_putc(ptr noundef %18, i8 noundef zeroext %21) #15, !dbg !6552
  br label %sw.epilog, !dbg !6553

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb
  br label %for.inc, !dbg !6554

for.inc:                                          ; preds = %sw.epilog
  %22 = load i32, ptr %i, align 4, !dbg !6555
  %inc = add i32 %22, 1, !dbg !6555
  store i32 %inc, ptr %i, align 4, !dbg !6555
  br label %for.cond, !dbg !6556, !llvm.loop !6557

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %m.addr, align 8, !dbg !6559
  call void @seq_puts(ptr noundef %23, ptr noundef @.str.5) #15, !dbg !6560
  store i32 0, ptr %retval, align 4, !dbg !6561
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6561

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !6562
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #14, !dbg !6562
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt) #14, !dbg !6562
  %24 = load i32, ptr %retval, align 4, !dbg !6562
  ret i32 %24, !dbg !6562
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @format_mod_start() #0 align 16 !dbg !6563 {
entry:
  call void @mutex_lock(ptr noundef @btrace_mutex) #15, !dbg !6564
  ret void, !dbg !6565
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_next(ptr noundef %v, ptr noundef %pos) #0 align 16 !dbg !6566 {
entry:
  %retval = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %fmt = alloca ptr, align 8
  %start_index = alloca i32, align 4
  %last_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6570, metadata !DIExpression()), !dbg !6575
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6571, metadata !DIExpression()), !dbg !6576
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt) #14, !dbg !6577
  call void @llvm.dbg.declare(metadata ptr %fmt, metadata !6572, metadata !DIExpression()), !dbg !6578
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6579
  store ptr %0, ptr %fmt, align 8, !dbg !6578
  call void @llvm.lifetime.start.p0(i64 4, ptr %start_index) #14, !dbg !6580
  call void @llvm.dbg.declare(metadata ptr %start_index, metadata !6573, metadata !DIExpression()), !dbg !6581
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_index) #14, !dbg !6582
  call void @llvm.dbg.declare(metadata ptr %last_index, metadata !6574, metadata !DIExpression()), !dbg !6583
  %sub.ptr.div = sdiv exact i64 sub (i64 ptrtoint (ptr @__stop___trace_bprintk_fmt to i64), i64 ptrtoint (ptr @__start___trace_bprintk_fmt to i64)), 8, !dbg !6584
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !6585
  store i32 %conv, ptr %start_index, align 4, !dbg !6586
  %1 = load ptr, ptr %pos.addr, align 8, !dbg !6587
  %2 = load i64, ptr %1, align 8, !dbg !6589
  %3 = load i32, ptr %start_index, align 4, !dbg !6590
  %conv1 = sext i32 %3 to i64, !dbg !6590
  %cmp = icmp slt i64 %2, %conv1, !dbg !6591
  br i1 %cmp, label %if.then, label %if.end, !dbg !6592

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pos.addr, align 8, !dbg !6593
  %5 = load i64, ptr %4, align 8, !dbg !6594
  %add.ptr = getelementptr ptr, ptr @__start___trace_bprintk_fmt, i64 %5, !dbg !6595
  store ptr %add.ptr, ptr %retval, align 8, !dbg !6596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6596

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %start_index, align 4, !dbg !6597
  store i32 %6, ptr %last_index, align 4, !dbg !6598
  %sub.ptr.div3 = sdiv exact i64 sub (i64 ptrtoint (ptr @__stop___tracepoint_str to i64), i64 ptrtoint (ptr @__start___tracepoint_str to i64)), 8, !dbg !6599
  %conv4 = trunc i64 %sub.ptr.div3 to i32, !dbg !6600
  store i32 %conv4, ptr %start_index, align 4, !dbg !6601
  %7 = load ptr, ptr %pos.addr, align 8, !dbg !6602
  %8 = load i64, ptr %7, align 8, !dbg !6604
  %9 = load i32, ptr %last_index, align 4, !dbg !6605
  %10 = load i32, ptr %start_index, align 4, !dbg !6606
  %add = add i32 %9, %10, !dbg !6607
  %conv5 = sext i32 %add to i64, !dbg !6605
  %cmp6 = icmp slt i64 %8, %conv5, !dbg !6608
  br i1 %cmp6, label %if.then8, label %if.end11, !dbg !6609

if.then8:                                         ; preds = %if.end
  %11 = load ptr, ptr %pos.addr, align 8, !dbg !6610
  %12 = load i64, ptr %11, align 8, !dbg !6611
  %13 = load i32, ptr %last_index, align 4, !dbg !6612
  %conv9 = sext i32 %13 to i64, !dbg !6612
  %sub = sub i64 %12, %conv9, !dbg !6613
  %add.ptr10 = getelementptr ptr, ptr @__start___tracepoint_str, i64 %sub, !dbg !6614
  store ptr %add.ptr10, ptr %retval, align 8, !dbg !6615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6615

if.end11:                                         ; preds = %if.end
  %14 = load i32, ptr %last_index, align 4, !dbg !6616
  %15 = load i32, ptr %start_index, align 4, !dbg !6617
  %add12 = add i32 %15, %14, !dbg !6617
  store i32 %add12, ptr %start_index, align 4, !dbg !6617
  %16 = load i32, ptr %start_index, align 4, !dbg !6618
  %17 = load ptr, ptr %v.addr, align 8, !dbg !6619
  %18 = load ptr, ptr %fmt, align 8, !dbg !6620
  %19 = load ptr, ptr %pos.addr, align 8, !dbg !6621
  %call = call ptr @find_next_mod_format(i32 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19) #15, !dbg !6622
  store ptr %call, ptr %retval, align 8, !dbg !6623
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6623

cleanup:                                          ; preds = %if.end11, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_index) #14, !dbg !6624
  call void @llvm.lifetime.end.p0(i64 4, ptr %start_index) #14, !dbg !6624
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt) #14, !dbg !6624
  %20 = load ptr, ptr %retval, align 8, !dbg !6624
  ret ptr %20, !dbg !6624
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6625 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_next_mod_format(i32 noundef %start_index, ptr noundef %v, ptr noundef %fmt, ptr noundef %pos) #0 align 16 !dbg !6629 {
entry:
  %retval = alloca ptr, align 8
  %start_index.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %mod_fmt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr12 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  store i32 %start_index, ptr %start_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start_index.addr, metadata !6633, metadata !DIExpression()), !dbg !6651
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6634, metadata !DIExpression()), !dbg !6652
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !6635, metadata !DIExpression()), !dbg !6653
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6636, metadata !DIExpression()), !dbg !6654
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod_fmt) #14, !dbg !6655
  call void @llvm.dbg.declare(metadata ptr %mod_fmt, metadata !6637, metadata !DIExpression()), !dbg !6656
  %call = call i32 @list_empty(ptr noundef @trace_bprintk_fmt_list) #15, !dbg !6657
  %tobool = icmp ne i32 %call, 0, !dbg !6657
  br i1 %tobool, label %if.then, label %if.end, !dbg !6659

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !6660

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6661
  %tobool1 = icmp ne ptr %0, null, !dbg !6661
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !6662

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, ptr %start_index.addr, align 4, !dbg !6663
  %conv = sext i32 %1 to i64, !dbg !6663
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !6664
  %3 = load i64, ptr %2, align 8, !dbg !6665
  %cmp = icmp eq i64 %conv, %3, !dbg !6666
  br i1 %cmp, label %if.then3, label %if.end16, !dbg !6667

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !6668
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6638, metadata !DIExpression()), !dbg !6669
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6670
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6641, metadata !DIExpression()), !dbg !6670
  %4 = load ptr, ptr @trace_bprintk_fmt_list, align 8, !dbg !6670
  store ptr %4, ptr %__mptr, align 8, !dbg !6670
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6670
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !6670
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6670
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6671
  %6 = load ptr, ptr %tmp, align 8, !dbg !6670
  store ptr %6, ptr %p, align 8, !dbg !6671
  br label %for.cond, !dbg !6671

for.cond:                                         ; preds = %for.inc, %if.then3
  %7 = load ptr, ptr %p, align 8, !dbg !6672
  %list = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %7, i32 0, i32 0, !dbg !6672
  %cmp4 = icmp eq ptr %list, @trace_bprintk_fmt_list, !dbg !6672
  %lnot = xor i1 %cmp4, true, !dbg !6672
  br i1 %lnot, label %for.body, label %for.end, !dbg !6671

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %start_index.addr, align 4, !dbg !6673
  %conv6 = sext i32 %8 to i64, !dbg !6673
  %9 = load ptr, ptr %pos.addr, align 8, !dbg !6676
  %10 = load i64, ptr %9, align 8, !dbg !6677
  %cmp7 = icmp eq i64 %conv6, %10, !dbg !6678
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !6679

if.then9:                                         ; preds = %for.body
  %11 = load ptr, ptr %p, align 8, !dbg !6680
  %fmt10 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %11, i32 0, i32 1, !dbg !6681
  store ptr %fmt10, ptr %retval, align 8, !dbg !6682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6682

if.end11:                                         ; preds = %for.body
  %12 = load i32, ptr %start_index.addr, align 4, !dbg !6683
  %inc = add i32 %12, 1, !dbg !6683
  store i32 %inc, ptr %start_index.addr, align 4, !dbg !6683
  br label %for.inc, !dbg !6684

for.inc:                                          ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #14, !dbg !6685
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !6644, metadata !DIExpression()), !dbg !6685
  %13 = load ptr, ptr %p, align 8, !dbg !6685
  %list13 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %13, i32 0, i32 0, !dbg !6685
  %next = getelementptr inbounds %struct.list_head, ptr %list13, i32 0, i32 0, !dbg !6685
  %14 = load ptr, ptr %next, align 8, !dbg !6685
  store ptr %14, ptr %__mptr12, align 8, !dbg !6685
  %15 = load ptr, ptr %__mptr12, align 8, !dbg !6685
  %add.ptr15 = getelementptr i8, ptr %15, i64 0, !dbg !6685
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !6685
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #14, !dbg !6672
  %16 = load ptr, ptr %tmp14, align 8, !dbg !6685
  store ptr %16, ptr %p, align 8, !dbg !6672
  br label %for.cond, !dbg !6672, !llvm.loop !6686

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !6688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6688

cleanup:                                          ; preds = %for.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !6689
  br label %cleanup32

if.end16:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #14, !dbg !6690
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !6647, metadata !DIExpression()), !dbg !6690
  %17 = load ptr, ptr %v.addr, align 8, !dbg !6690
  store ptr %17, ptr %__mptr17, align 8, !dbg !6690
  %18 = load ptr, ptr %__mptr17, align 8, !dbg !6690
  %add.ptr19 = getelementptr i8, ptr %18, i64 -16, !dbg !6690
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !6690
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #14, !dbg !6691
  %19 = load ptr, ptr %tmp18, align 8, !dbg !6690
  store ptr %19, ptr %mod_fmt, align 8, !dbg !6692
  %20 = load ptr, ptr %mod_fmt, align 8, !dbg !6693
  %list20 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %20, i32 0, i32 0, !dbg !6695
  %next21 = getelementptr inbounds %struct.list_head, ptr %list20, i32 0, i32 0, !dbg !6696
  %21 = load ptr, ptr %next21, align 8, !dbg !6696
  %cmp22 = icmp eq ptr %21, @trace_bprintk_fmt_list, !dbg !6697
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !6698

if.then24:                                        ; preds = %if.end16
  store ptr null, ptr %retval, align 8, !dbg !6699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !6699

if.end25:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #14, !dbg !6700
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !6649, metadata !DIExpression()), !dbg !6700
  %22 = load ptr, ptr %mod_fmt, align 8, !dbg !6700
  %list27 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %22, i32 0, i32 0, !dbg !6700
  %next28 = getelementptr inbounds %struct.list_head, ptr %list27, i32 0, i32 0, !dbg !6700
  %23 = load ptr, ptr %next28, align 8, !dbg !6700
  store ptr %23, ptr %__mptr26, align 8, !dbg !6700
  %24 = load ptr, ptr %__mptr26, align 8, !dbg !6700
  %add.ptr30 = getelementptr i8, ptr %24, i64 0, !dbg !6700
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !6700
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #14, !dbg !6701
  %25 = load ptr, ptr %tmp29, align 8, !dbg !6700
  store ptr %25, ptr %mod_fmt, align 8, !dbg !6702
  %26 = load ptr, ptr %mod_fmt, align 8, !dbg !6703
  %fmt31 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %26, i32 0, i32 1, !dbg !6704
  store ptr %fmt31, ptr %retval, align 8, !dbg !6705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32, !dbg !6705

cleanup32:                                        ; preds = %if.end25, %if.then24, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod_fmt) #14, !dbg !6706
  %27 = load ptr, ptr %retval, align 8, !dbg !6706
  ret ptr %27, !dbg !6706
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #7 align 16 !dbg !6707 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  br label %do.body, !dbg !6716

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6718

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6716
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6716
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6716
  store ptr %1, ptr %tmp, align 8, !dbg !6718
  %2 = load ptr, ptr %tmp, align 8, !dbg !6716
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6720
  %cmp = icmp eq ptr %2, %3, !dbg !6721
  %conv = zext i1 %cmp to i32, !dbg !6721
  ret i32 %conv, !dbg !6722
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @format_mod_stop() #0 align 16 !dbg !6723 {
entry:
  call void @mutex_unlock(ptr noundef @btrace_mutex) #15, !dbg !6724
  ret void, !dbg !6725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6726 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6727 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6730 dso_local void @seq_puts(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6733 dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6736 dso_local i32 @register_module_notifier(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @module_trace_bprintk_format_notify(ptr noundef %self, i64 noundef %val, ptr noundef %data) #0 align 16 !dbg !6739 {
entry:
  %self.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %start = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !6741, metadata !DIExpression()), !dbg !6749
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6742, metadata !DIExpression()), !dbg !6750
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6743, metadata !DIExpression()), !dbg !6751
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #14, !dbg !6752
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !6744, metadata !DIExpression()), !dbg !6753
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6754
  store ptr %0, ptr %mod, align 8, !dbg !6753
  %1 = load ptr, ptr %mod, align 8, !dbg !6755
  %num_trace_bprintk_fmt = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 43, !dbg !6756
  %2 = load i32, ptr %num_trace_bprintk_fmt, align 4, !dbg !6756
  %tobool = icmp ne i32 %2, 0, !dbg !6755
  br i1 %tobool, label %if.then, label %if.end3, !dbg !6757

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #14, !dbg !6758
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6745, metadata !DIExpression()), !dbg !6759
  %3 = load ptr, ptr %mod, align 8, !dbg !6760
  %trace_bprintk_fmt_start = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 44, !dbg !6761
  %4 = load ptr, ptr %trace_bprintk_fmt_start, align 64, !dbg !6761
  store ptr %4, ptr %start, align 8, !dbg !6759
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #14, !dbg !6762
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6748, metadata !DIExpression()), !dbg !6763
  %5 = load ptr, ptr %start, align 8, !dbg !6764
  %6 = load ptr, ptr %mod, align 8, !dbg !6765
  %num_trace_bprintk_fmt1 = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 43, !dbg !6766
  %7 = load i32, ptr %num_trace_bprintk_fmt1, align 4, !dbg !6766
  %idx.ext = zext i32 %7 to i64, !dbg !6767
  %add.ptr = getelementptr ptr, ptr %5, i64 %idx.ext, !dbg !6767
  store ptr %add.ptr, ptr %end, align 8, !dbg !6763
  %8 = load i64, ptr %val.addr, align 8, !dbg !6768
  %cmp = icmp eq i64 %8, 1, !dbg !6770
  br i1 %cmp, label %if.then2, label %if.end, !dbg !6771

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %start, align 8, !dbg !6772
  %10 = load ptr, ptr %end, align 8, !dbg !6773
  call void @hold_module_trace_bprintk_format(ptr noundef %9, ptr noundef %10) #15, !dbg !6774
  br label %if.end, !dbg !6774

if.end:                                           ; preds = %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #14, !dbg !6775
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #14, !dbg !6775
  br label %if.end3, !dbg !6776

if.end3:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #14, !dbg !6777
  ret i32 1, !dbg !6778
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hold_module_trace_bprintk_format(ptr noundef %start, ptr noundef %end) #0 align 16 !dbg !6779 {
entry:
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %fmt = alloca ptr, align 8
  %tb_fmt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6783, metadata !DIExpression()), !dbg !6791
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6784, metadata !DIExpression()), !dbg !6792
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #14, !dbg !6793
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !6785, metadata !DIExpression()), !dbg !6794
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt) #14, !dbg !6795
  call void @llvm.dbg.declare(metadata ptr %fmt, metadata !6786, metadata !DIExpression()), !dbg !6796
  %0 = load ptr, ptr %start.addr, align 8, !dbg !6797
  %1 = load ptr, ptr %end.addr, align 8, !dbg !6799
  %cmp = icmp ne ptr %0, %1, !dbg !6800
  br i1 %cmp, label %if.then, label %if.end, !dbg !6801

if.then:                                          ; preds = %entry
  call void @trace_printk_init_buffers() #15, !dbg !6802
  br label %if.end, !dbg !6802

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_lock(ptr noundef @btrace_mutex) #15, !dbg !6803
  %2 = load ptr, ptr %start.addr, align 8, !dbg !6804
  store ptr %2, ptr %iter, align 8, !dbg !6805
  br label %for.cond, !dbg !6806

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %iter, align 8, !dbg !6807
  %4 = load ptr, ptr %end.addr, align 8, !dbg !6808
  %cmp1 = icmp ult ptr %3, %4, !dbg !6809
  br i1 %cmp1, label %for.body, label %for.end, !dbg !6810

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tb_fmt) #14, !dbg !6811
  call void @llvm.dbg.declare(metadata ptr %tb_fmt, metadata !6787, metadata !DIExpression()), !dbg !6812
  %5 = load ptr, ptr %iter, align 8, !dbg !6813
  %6 = load ptr, ptr %5, align 8, !dbg !6814
  %call = call ptr @lookup_format(ptr noundef %6) #15, !dbg !6815
  store ptr %call, ptr %tb_fmt, align 8, !dbg !6812
  %7 = load ptr, ptr %tb_fmt, align 8, !dbg !6816
  %tobool = icmp ne ptr %7, null, !dbg !6816
  br i1 %tobool, label %if.then2, label %if.end7, !dbg !6818

if.then2:                                         ; preds = %for.body
  %8 = load ptr, ptr %tb_fmt, align 8, !dbg !6819
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %8) #15, !dbg !6822
  br i1 %call3, label %if.end6, label %if.then4, !dbg !6823

if.then4:                                         ; preds = %if.then2
  %9 = load ptr, ptr %tb_fmt, align 8, !dbg !6824
  %fmt5 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %9, i32 0, i32 1, !dbg !6825
  %10 = load ptr, ptr %fmt5, align 8, !dbg !6825
  %11 = load ptr, ptr %iter, align 8, !dbg !6826
  store ptr %10, ptr %11, align 8, !dbg !6827
  br label %if.end6, !dbg !6828

if.end6:                                          ; preds = %if.then4, %if.then2
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6829

if.end7:                                          ; preds = %for.body
  store ptr null, ptr %fmt, align 8, !dbg !6830
  %call8 = call noalias ptr @kmalloc(i64 noundef 24, i32 noundef 3264) #17, !dbg !6831
  store ptr %call8, ptr %tb_fmt, align 8, !dbg !6832
  %12 = load ptr, ptr %tb_fmt, align 8, !dbg !6833
  %tobool9 = icmp ne ptr %12, null, !dbg !6833
  br i1 %tobool9, label %if.then10, label %if.end18, !dbg !6835

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr %iter, align 8, !dbg !6836
  %14 = load ptr, ptr %13, align 8, !dbg !6838
  %call11 = call i64 @strlen(ptr noundef %14) #15, !dbg !6839
  %add = add i64 %call11, 1, !dbg !6840
  %call12 = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3264) #17, !dbg !6841
  store ptr %call12, ptr %fmt, align 8, !dbg !6842
  %15 = load ptr, ptr %fmt, align 8, !dbg !6843
  %tobool13 = icmp ne ptr %15, null, !dbg !6843
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !6845

if.then14:                                        ; preds = %if.then10
  %16 = load ptr, ptr %tb_fmt, align 8, !dbg !6846
  %list = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %16, i32 0, i32 0, !dbg !6848
  call void @list_add_tail(ptr noundef %list, ptr noundef @trace_bprintk_fmt_list) #15, !dbg !6849
  %17 = load ptr, ptr %fmt, align 8, !dbg !6850
  %18 = load ptr, ptr %iter, align 8, !dbg !6851
  %19 = load ptr, ptr %18, align 8, !dbg !6852
  %call15 = call ptr @strcpy(ptr noundef %17, ptr noundef %19) #15, !dbg !6853
  %20 = load ptr, ptr %fmt, align 8, !dbg !6854
  %21 = load ptr, ptr %tb_fmt, align 8, !dbg !6855
  %fmt16 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %21, i32 0, i32 1, !dbg !6856
  store ptr %20, ptr %fmt16, align 8, !dbg !6857
  br label %if.end17, !dbg !6858

if.else:                                          ; preds = %if.then10
  %22 = load ptr, ptr %tb_fmt, align 8, !dbg !6859
  call void @kfree(ptr noundef %22) #15, !dbg !6860
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  br label %if.end18, !dbg !6861

if.end18:                                         ; preds = %if.end17, %if.end7
  %23 = load ptr, ptr %fmt, align 8, !dbg !6862
  %24 = load ptr, ptr %iter, align 8, !dbg !6863
  store ptr %23, ptr %24, align 8, !dbg !6864
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6865
  br label %cleanup, !dbg !6865

cleanup:                                          ; preds = %if.end18, %if.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tb_fmt) #14, !dbg !6865
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6866

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %25 = load ptr, ptr %iter, align 8, !dbg !6867
  %incdec.ptr = getelementptr ptr, ptr %25, i32 1, !dbg !6867
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !6867
  br label %for.cond, !dbg !6868, !llvm.loop !6869

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @btrace_mutex) #15, !dbg !6871
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt) #14, !dbg !6872
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #14, !dbg !6872
  ret void, !dbg !6872

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6873 dso_local void @trace_printk_init_buffers() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @lookup_format(ptr noundef %fmt) #7 align 16 !dbg !6875 {
entry:
  %retval = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !6879, metadata !DIExpression()), !dbg !6887
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #14, !dbg !6888
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6880, metadata !DIExpression()), !dbg !6889
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !6890
  %tobool = icmp ne ptr %0, null, !dbg !6890
  br i1 %tobool, label %if.end, label %if.then, !dbg !6892

if.then:                                          ; preds = %entry
  %call = call ptr @ERR_PTR(i64 noundef -22) #15, !dbg !6893
  store ptr %call, ptr %retval, align 8, !dbg !6894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6894

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6895
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6881, metadata !DIExpression()), !dbg !6895
  %1 = load ptr, ptr @trace_bprintk_fmt_list, align 8, !dbg !6895
  store ptr %1, ptr %__mptr, align 8, !dbg !6895
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6895
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !6895
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6895
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6896
  %3 = load ptr, ptr %tmp, align 8, !dbg !6895
  store ptr %3, ptr %pos, align 8, !dbg !6896
  br label %for.cond, !dbg !6896

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %pos, align 8, !dbg !6897
  %list = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %4, i32 0, i32 0, !dbg !6897
  %cmp = icmp eq ptr %list, @trace_bprintk_fmt_list, !dbg !6897
  %lnot = xor i1 %cmp, true, !dbg !6897
  br i1 %lnot, label %for.body, label %for.end, !dbg !6896

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pos, align 8, !dbg !6898
  %fmt1 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %5, i32 0, i32 1, !dbg !6901
  %6 = load ptr, ptr %fmt1, align 8, !dbg !6901
  %7 = load ptr, ptr %fmt.addr, align 8, !dbg !6902
  %call2 = call i32 @strcmp(ptr noundef %6, ptr noundef %7) #15, !dbg !6903
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6903
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !6904

if.then4:                                         ; preds = %for.body
  %8 = load ptr, ptr %pos, align 8, !dbg !6905
  store ptr %8, ptr %retval, align 8, !dbg !6906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6906

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !6907

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #14, !dbg !6908
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !6884, metadata !DIExpression()), !dbg !6908
  %9 = load ptr, ptr %pos, align 8, !dbg !6908
  %list7 = getelementptr inbounds %struct.trace_bprintk_fmt, ptr %9, i32 0, i32 0, !dbg !6908
  %next = getelementptr inbounds %struct.list_head, ptr %list7, i32 0, i32 0, !dbg !6908
  %10 = load ptr, ptr %next, align 8, !dbg !6908
  store ptr %10, ptr %__mptr6, align 8, !dbg !6908
  %11 = load ptr, ptr %__mptr6, align 8, !dbg !6908
  %add.ptr9 = getelementptr i8, ptr %11, i64 0, !dbg !6908
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !6908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #14, !dbg !6897
  %12 = load ptr, ptr %tmp8, align 8, !dbg !6908
  store ptr %12, ptr %pos, align 8, !dbg !6897
  br label %for.cond, !dbg !6897, !llvm.loop !6909

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !6911
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6911

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #14, !dbg !6912
  %13 = load ptr, ptr %retval, align 8, !dbg !6912
  ret ptr %13, !dbg !6912
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !6913 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6918, metadata !DIExpression()), !dbg !6919
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6920
  %1 = ptrtoint ptr %0 to i64, !dbg !6920
  %2 = inttoptr i64 %1 to ptr, !dbg !6920
  %3 = ptrtoint ptr %2 to i64, !dbg !6920
  %cmp = icmp uge i64 %3, -4095, !dbg !6920
  %lnot = xor i1 %cmp, true, !dbg !6920
  %lnot1 = xor i1 %lnot, true, !dbg !6920
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6920
  %conv = sext i32 %lnot.ext to i64, !dbg !6920
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6920
  %tobool = icmp ne i64 %expval, 0, !dbg !6920
  ret i1 %tobool, !dbg !6921
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6922 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6926, metadata !DIExpression()), !dbg !6931
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6927, metadata !DIExpression()), !dbg !6932
  %0 = load i64, ptr %size.addr, align 8, !dbg !6933
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6934
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6935

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6936
  %tobool = icmp ne i64 %2, 0, !dbg !6936
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6937

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6938
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6928, metadata !DIExpression()), !dbg !6939
  %3 = load i64, ptr %size.addr, align 8, !dbg !6940
  %cmp = icmp ugt i64 %3, 8192, !dbg !6942
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6943

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6944
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6945
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6946
  store ptr %call, ptr %retval, align 8, !dbg !6947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6947

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6948
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6948
  store i32 %call2, ptr %index, align 4, !dbg !6949
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6950
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6951
  %9 = ptrtoint ptr %8 to i64, !dbg !6951
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6952
  %idxprom = zext i32 %call3 to i64, !dbg !6953
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6953
  %10 = load i32, ptr %index, align 4, !dbg !6954
  %idxprom4 = zext i32 %10 to i64, !dbg !6953
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6953
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6953
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6955
  %13 = load i64, ptr %size.addr, align 8, !dbg !6956
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !6957
  store ptr %call6, ptr %retval, align 8, !dbg !6958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6958

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6959
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6960
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6961
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6962
  store ptr %call8, ptr %retval, align 8, !dbg !6963
  br label %return, !dbg !6963

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6964
  ret ptr %16, !dbg !6964
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6965 dso_local i64 @strlen(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !6969 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6973, metadata !DIExpression()), !dbg !6975
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6974, metadata !DIExpression()), !dbg !6976
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6977
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6978
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6979
  %2 = load ptr, ptr %prev, align 8, !dbg !6979
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6980
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #15, !dbg !6981
  ret void, !dbg !6982
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6983 dso_local ptr @strcpy(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6986 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #7 align 16 !dbg !6989 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6993, metadata !DIExpression()), !dbg !6994
  %0 = load i64, ptr %error.addr, align 8, !dbg !6995
  %1 = inttoptr i64 %0 to ptr, !dbg !6996
  ret ptr %1, !dbg !6997
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6998 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7001 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !7002 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7006, metadata !DIExpression()), !dbg !7008
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7007, metadata !DIExpression()), !dbg !7009
  %0 = load i64, ptr %size.addr, align 8, !dbg !7010
  %tobool = icmp ne i64 %0, 0, !dbg !7010
  br i1 %tobool, label %if.end, label %if.then, !dbg !7012

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7013
  br label %return, !dbg !7013

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7014
  %cmp = icmp ule i64 %1, 8, !dbg !7016
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7017

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7018
  br label %return, !dbg !7018

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7019
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7021
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7022

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7023
  %cmp4 = icmp ule i64 %3, 96, !dbg !7024
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7025

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7026
  br label %return, !dbg !7026

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7027
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7029
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7030

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7031
  %cmp9 = icmp ule i64 %5, 192, !dbg !7032
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7033

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7034
  br label %return, !dbg !7034

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7035
  %cmp12 = icmp ule i64 %6, 8, !dbg !7037
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7038

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7039
  br label %return, !dbg !7039

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7040
  %cmp15 = icmp ule i64 %7, 16, !dbg !7042
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7043

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7044
  br label %return, !dbg !7044

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7045
  %cmp18 = icmp ule i64 %8, 32, !dbg !7047
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7048

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7049
  br label %return, !dbg !7049

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7050
  %cmp21 = icmp ule i64 %9, 64, !dbg !7052
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7053

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7054
  br label %return, !dbg !7054

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7055
  %cmp24 = icmp ule i64 %10, 128, !dbg !7057
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7058

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7059
  br label %return, !dbg !7059

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7060
  %cmp27 = icmp ule i64 %11, 256, !dbg !7062
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7063

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7064
  br label %return, !dbg !7064

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7065
  %cmp30 = icmp ule i64 %12, 512, !dbg !7067
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7068

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7069
  br label %return, !dbg !7069

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7070
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7072
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7073

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7074
  br label %return, !dbg !7074

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7075
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7077
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7078

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7079
  br label %return, !dbg !7079

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7080
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7082
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7083

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7084
  br label %return, !dbg !7084

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7085
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7087
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7088

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7089
  br label %return, !dbg !7089

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7090
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7092
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7093

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7094
  br label %return, !dbg !7094

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7095
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7097
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7098

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7099
  br label %return, !dbg !7099

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7100
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7102
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7103

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7104
  br label %return, !dbg !7104

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7105
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7107
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7108

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7109
  br label %return, !dbg !7109

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7110
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7112
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7113

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7114
  br label %return, !dbg !7114

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7115
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7117
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7118

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7119
  br label %return, !dbg !7119

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7120
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7122
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7123

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7124
  br label %return, !dbg !7124

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7125
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7127
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7128

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7129
  br label %return, !dbg !7129

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7130, !range !6266, !noundef !680
  %tobool69 = trunc i8 %25 to i1, !dbg !7130
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7132

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7133

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !7134, !srcloc !7137
  unreachable, !dbg !7134

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7138

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7139

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7140

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7142

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7140

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #14, !dbg !7144, !srcloc !7146
  br label %do.end75, !dbg !7144

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7140

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7147
  br label %return, !dbg !7147

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7148
  ret i32 %26, !dbg !7148
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7149 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !7152 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7156, metadata !DIExpression()), !dbg !7158
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7157, metadata !DIExpression()), !dbg !7159
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7160
  %and = and i32 %0, 17, !dbg !7160
  %cmp = icmp eq i32 %and, 0, !dbg !7160
  %lnot = xor i1 %cmp, true, !dbg !7160
  %lnot1 = xor i1 %lnot, true, !dbg !7160
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7160
  %conv = sext i32 %lnot.ext to i64, !dbg !7160
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7160
  %tobool = icmp ne i64 %expval, 0, !dbg !7160
  br i1 %tobool, label %if.then, label %if.end, !dbg !7162

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7163
  br label %return, !dbg !7163

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7164
  %and2 = and i32 %1, 1, !dbg !7166
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7166
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7167

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7168
  br label %return, !dbg !7168

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7169
  br label %return, !dbg !7169

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7171
  ret i32 %2, !dbg !7171
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7172 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7173 dso_local void @__compiletime_assert_245() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !7174 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7178, metadata !DIExpression()), !dbg !7181
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7179, metadata !DIExpression()), !dbg !7182
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7180, metadata !DIExpression()), !dbg !7183
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7184
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7186
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7187
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15, !dbg !7188
  br i1 %call, label %if.end, label %if.then, !dbg !7189

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7190

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7191
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7192
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7193
  store ptr %3, ptr %prev1, align 8, !dbg !7194
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7195
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7196
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7197
  store ptr %5, ptr %next2, align 8, !dbg !7198
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7199
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7200
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7201
  store ptr %7, ptr %prev3, align 8, !dbg !7202
  br label %do.body, !dbg !7203

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7204

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7206

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7204

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7208
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7208
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7208
  store volatile ptr %9, ptr %next6, align 8, !dbg !7208
  br label %do.end7, !dbg !7208

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7204

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7210
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !7211 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7215, metadata !DIExpression()), !dbg !7218
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7216, metadata !DIExpression()), !dbg !7219
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7217, metadata !DIExpression()), !dbg !7220
  ret i1 true, !dbg !7221
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { cold noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6250, !6251, !6252, !6253, !6254, !6255, !6256, !6257}
!llvm.ident = !{!6258}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "trace_printk_enabled", scope: !2, file: !3, line: 188, type: !1403, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/trace/.trace_printk.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/trace/trace_printk\22 -D KBUILD_BASENAME=\22trace_printk\22 -D KBUILD_MODNAME=\22trace_printk\22 -D __KBUILD_MODNAME=kmod_trace_printk -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/trace/trace_printk.ll kernel/trace/trace_printk.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !316, globals: !328, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/trace/trace_printk.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd139d7b39c97fadc92027d4cb9ecabf")
!4 = !{!5, !11, !16, !112, !118, !134, !141, !149, !156, !163, !169, !180, !186, !192, !199, !207, !214, !220, !229, !234, !239, !245, !254, !262, !267, !273, !306}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !18, file: !17, line: 147, baseType: !7, size: 32, elements: !109)
!17 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !17, line: 135, size: 512, elements: !19)
!19 = !{!20, !24, !26, !28, !32, !33, !49, !107, !108}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !18, file: !17, line: 136, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !17, line: 137, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !18, file: !17, line: 138, baseType: !27, size: 32, offset: 128)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !18, file: !17, line: 139, baseType: !29, size: 16, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !30, line: 24, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !18, file: !17, line: 150, baseType: !16, size: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !18, file: !17, line: 151, baseType: !34, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !17, line: 64, baseType: !36)
!36 = !DISubroutineType(types: !37)
!37 = !{!27, !38, !27, !25, !39, !45}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 61, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !42, line: 72, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !42, line: 16, baseType: !44)
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !30, line: 52, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !42, line: 88, baseType: !48)
!48 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !18, file: !17, line: 152, baseType: !50, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !17, line: 117, size: 256, elements: !52)
!52 = !{!53, !58}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !51, file: !17, line: 118, baseType: !54, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !30, line: 174, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 172, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !55, file: !30, line: 173, baseType: !27, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !51, file: !17, line: 119, baseType: !59, size: 192, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !60, line: 41, baseType: !61)
!60 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !60, line: 37, size: 192, elements: !62)
!62 = !{!63, !101}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !61, file: !60, line: 38, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !65, line: 29, baseType: !66)
!65 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !65, line: 17, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !66, file: !65, line: 18, baseType: !69, size: 32)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !65, line: 18, size: 32, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !69, file: !65, line: 19, baseType: !72, size: 32)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !73, line: 14, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !72, file: !73, line: 15, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !77, line: 44, baseType: !78)
!77 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !77, line: 14, size: 32, elements: !79)
!79 = !{!80}
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !78, file: !77, line: 15, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !77, line: 15, size: 32, elements: !82)
!82 = !{!83, !84, !94}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !77, line: 16, baseType: !54, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 24, baseType: !85, size: 16)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 24, size: 16, elements: !86)
!86 = !{!87, !93}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !85, file: !77, line: 25, baseType: !88, size: 8)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !89, line: 17, baseType: !90)
!89 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !91, line: 21, baseType: !92)
!91 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !85, file: !77, line: 26, baseType: !88, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !77, line: 28, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !77, line: 28, size: 32, elements: !96)
!96 = !{!97, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !95, file: !77, line: 29, baseType: !98, size: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !89, line: 19, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !91, line: 24, baseType: !31)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !95, file: !77, line: 30, baseType: !98, size: 16, offset: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !61, file: !60, line: 39, baseType: !102, size: 128, offset: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !30, line: 190, size: 128, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !30, line: 191, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !30, line: 191, baseType: !105, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !18, file: !17, line: 153, baseType: !25, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !18, file: !17, line: 154, baseType: !25, size: 64, offset: 448)
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!111 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !113, line: 16, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "TT_NONE", value: 0)
!116 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!117 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !119, line: 1325, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!121 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!122 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!123 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!124 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!125 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!126 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!127 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!128 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!129 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!130 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!131 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!132 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!133 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !135, line: 15, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!138 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!139 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!140 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !142, line: 68, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!143 = !{!144, !145, !146, !147, !148}
!144 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!145 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!146 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!147 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!148 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !150, line: 51, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!151 = !{!152, !153, !154, !155}
!152 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!153 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!154 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!155 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !157, line: 312, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!158 = !{!159, !160, !161, !162}
!159 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!160 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!161 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!162 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !164, line: 26, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!167 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!168 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !170, line: 253, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179}
!172 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!173 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!174 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!175 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!176 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!177 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!178 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!179 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !170, line: 158, baseType: !7, size: 32, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!183 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!184 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!185 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !187, line: 45, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!188 = !{!189, !190, !191}
!189 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!190 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!191 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !193, line: 487, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!194 = !{!195, !196, !197, !198}
!195 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!196 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!197 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!198 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !200, line: 620, baseType: !7, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!201 = !{!202, !203, !204, !205, !206}
!202 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!203 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!204 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!205 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!206 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !200, line: 597, baseType: !27, size: 32, elements: !208)
!208 = !{!209, !210, !211, !212, !213}
!209 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!210 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!211 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!212 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!213 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !215, line: 30, baseType: !7, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!216 = !{!217, !218, !219}
!217 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!218 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!219 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !193, line: 547, baseType: !7, size: 32, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228}
!222 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!223 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!224 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!225 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!226 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!227 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!228 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !193, line: 564, baseType: !7, size: 32, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!232 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!233 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !193, line: 577, baseType: !7, size: 32, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!237 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!238 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !193, line: 503, baseType: !7, size: 32, elements: !240)
!240 = !{!241, !242, !243, !244}
!241 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!242 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!243 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!244 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !246, line: 593, baseType: !27, size: 32, elements: !247)
!246 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!247 = !{!248, !249, !250, !251, !252, !253}
!248 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!249 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!250 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!251 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!252 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!253 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !255, line: 9, baseType: !7, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!256 = !{!257, !258, !259, !260, !261}
!257 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!258 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!259 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!260 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!261 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !263, line: 2052, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!264 = !{!265, !266}
!265 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!266 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !268, line: 54, baseType: !7, size: 32, elements: !269)
!268 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!269 = !{!270, !271, !272}
!270 = !DIEnumerator(name: "USRQUOTA", value: 0)
!271 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!272 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !274, line: 107, baseType: !7, size: 32, elements: !275)
!274 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!276 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!277 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!278 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!279 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!280 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!281 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!282 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!283 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!284 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!285 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!286 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!287 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!288 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!289 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!290 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!291 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!292 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!293 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!294 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!295 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!296 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!297 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!298 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!299 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!300 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!301 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!302 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!303 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!304 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!305 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !307, line: 364, baseType: !7, size: 32, elements: !308)
!307 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!308 = !{!309, !310, !311, !312, !313, !314, !315}
!309 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!310 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!311 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!312 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!313 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!314 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!315 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!316 = !{!25, !317, !322, !325, !326, !44, !327}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_bprintk_fmt", file: !3, line: 33, size: 192, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !318, file: !3, line: 34, baseType: !102, size: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !318, file: !3, line: 35, baseType: !21, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !30, line: 154, baseType: !7)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!328 = !{!329, !331, !333, !335, !337, !339, !0, !341, !346, !6214, !6216, !6218, !6220, !6223, !6226, !6228, !6230, !6232, !6245}
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___trace_bprintk320", scope: !2, file: !3, line: 216, type: !25, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___ftrace_vbprintk321", scope: !2, file: !3, line: 228, type: !25, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___trace_printk322", scope: !2, file: !3, line: 243, type: !25, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___ftrace_vprintk323", scope: !2, file: !3, line: 252, type: !25, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_trace_printk__324_393_init_trace_printk_function_export5325", scope: !2, file: !3, line: 393, type: !25, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_trace_printk__326_400_init_trace_printkearly327", scope: !2, file: !3, line: 400, type: !25, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !3, line: 387, type: !343, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 120, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 15)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "ftrace_formats_fops", scope: !2, file: !3, line: 372, type: !348, isLocal: true, isDefinition: true)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !263, line: 1914, size: 2112, elements: !350)
!350 = !{!351, !6096, !6100, !6104, !6108, !6109, !6110, !6116, !6129, !6133, !6137, !6138, !6142, !6143, !6147, !6152, !6153, !6157, !6161, !6167, !6168, !6172, !6173, !6177, !6181, !6182, !6187, !6191, !6195, !6199, !6203, !6204, !6210}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !349, file: !263, line: 1915, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !157, line: 402, size: 9216, align: 512, elements: !354)
!354 = !{!355, !356, !357, !361, !5791, !5817, !5818, !5819, !5820, !5824, !5827, !5828, !5829, !5881, !5882, !5883, !5884, !5885, !5886, !5887, !5888, !5896, !5897, !5915, !5932, !5933, !5934, !5935, !5944, !5967, !5968, !5971, !5974, !5975, !5976, !5977, !5978, !5979, !5980, !5983, !5984, !6069, !6070, !6071, !6072, !6073, !6075, !6076, !6085, !6086, !6087, !6088, !6089, !6090, !6091, !6092, !6093, !6094, !6095}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !157, line: 403, baseType: !156, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !353, file: !157, line: 406, baseType: !102, size: 128, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !157, line: 409, baseType: !358, size: 448, offset: 192)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 448, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 56)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !353, file: !157, line: 417, baseType: !362, size: 768, offset: 640)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !157, line: 45, size: 768, elements: !363)
!363 = !{!364, !5785, !5786, !5787, !5790}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !362, file: !157, line: 46, baseType: !365, size: 512)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !366, line: 64, size: 512, elements: !367)
!366 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!367 = !{!368, !369, !370, !372, !419, !5774, !5775, !5780, !5781, !5782, !5783, !5784}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !366, line: 65, baseType: !21, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !365, file: !366, line: 66, baseType: !102, size: 128, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !365, file: !366, line: 67, baseType: !371, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !365, file: !366, line: 68, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !366, line: 168, size: 768, elements: !375)
!375 = !{!376, !377, !378, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !374, file: !366, line: 169, baseType: !102, size: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !374, file: !366, line: 170, baseType: !64, size: 32, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !374, file: !366, line: 171, baseType: !365, size: 512, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !374, file: !366, line: 172, baseType: !380, size: 64, offset: 704)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !366, line: 133, size: 192, elements: !383)
!383 = !{!384, !391, !396}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !382, file: !366, line: 134, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!27, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !366, line: 135, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!21, !389}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !382, file: !366, line: 136, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!27, !389, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !366, line: 125, size: 20736, elements: !403)
!403 = !{!404, !409, !413, !414, !418}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !402, file: !366, line: 126, baseType: !405, size: 192)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 192, elements: !407)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!407 = !{!408}
!408 = !DISubrange(count: 3)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !402, file: !366, line: 127, baseType: !410, size: 4096, offset: 192)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 4096, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !402, file: !366, line: 128, baseType: !27, size: 32, offset: 4288)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !402, file: !366, line: 129, baseType: !415, size: 16384, offset: 4320)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16384, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 2048)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !402, file: !366, line: 130, baseType: !27, size: 32, offset: 20704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !365, file: !366, line: 69, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !366, line: 116, size: 384, elements: !423)
!423 = !{!424, !428, !451, !5762, !5766, !5770}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !422, file: !366, line: 117, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !371}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !422, file: !366, line: 118, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !432, line: 254, size: 128, elements: !433)
!432 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!433 = !{!434, !447}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !431, file: !432, line: 255, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !371, !442, !406}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !30, line: 66, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !42, line: 73, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !42, line: 15, baseType: !441)
!441 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !432, line: 30, size: 128, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !443, file: !432, line: 31, baseType: !21, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !443, file: !432, line: 32, baseType: !29, size: 16, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !431, file: !432, line: 256, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!438, !371, !442, !21, !40}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !422, file: !366, line: 119, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !432, line: 84, size: 320, elements: !456)
!456 = !{!457, !458, !462, !5758, !5760}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !455, file: !432, line: 85, baseType: !21, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !455, file: !432, line: 86, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!29, !371, !442, !27}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !455, file: !432, line: 88, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!29, !371, !466, !27}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !432, line: 175, size: 512, elements: !468)
!468 = !{!469, !470, !471, !472, !5749, !5753, !5754}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !467, file: !432, line: 176, baseType: !443, size: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !467, file: !432, line: 177, baseType: !40, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !467, file: !432, line: 178, baseType: !25, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !467, file: !432, line: 179, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !263, line: 472, size: 1536, align: 64, elements: !478)
!478 = !{!479, !5554, !5555, !5556, !5557, !5558, !5559, !5560, !5561, !5743, !5744, !5745, !5746, !5747, !5748}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !477, file: !263, line: 473, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !263, line: 641, size: 4800, elements: !482)
!482 = !{!483, !484, !485, !493, !494, !501, !502, !505, !506, !5493, !5494, !5495, !5496, !5497, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5536, !5539, !5540, !5541, !5550, !5551, !5552, !5553}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !481, file: !263, line: 642, baseType: !29, size: 16)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !481, file: !263, line: 643, baseType: !31, size: 16, offset: 16)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !481, file: !263, line: 644, baseType: !486, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !487, line: 23, baseType: !488)
!487 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 21, size: 32, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !488, file: !487, line: 22, baseType: !491, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !30, line: 37, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !42, line: 49, baseType: !7)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !481, file: !263, line: 645, baseType: !102, size: 128, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !481, file: !263, line: 646, baseType: !495, size: 32, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !487, line: 28, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 26, size: 32, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !496, file: !487, line: 27, baseType: !499, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !30, line: 38, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !42, line: 50, baseType: !7)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !481, file: !263, line: 647, baseType: !7, size: 32, offset: 224)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !481, file: !263, line: 650, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !263, line: 607, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !481, file: !263, line: 651, baseType: !503, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !481, file: !263, line: 654, baseType: !507, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !263, line: 1966, size: 2048, align: 512, elements: !510)
!510 = !{!511, !5327, !5337, !5341, !5345, !5349, !5353, !5357, !5361, !5365, !5369, !5370, !5374, !5378, !5415, !5444, !5448, !5454, !5458, !5462, !5466, !5470, !5474, !5480, !5484}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !509, file: !263, line: 1967, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !480, !515, !7}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !517, line: 82, size: 1536, elements: !518)
!517 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!518 = !{!519, !520, !530, !538, !539, !559, !560, !564, !577, !5311, !5312, !5313, !5314, !5319, !5320, !5321}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !516, file: !517, line: 84, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !516, file: !517, line: 85, baseType: !521, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !522, line: 275, baseType: !523)
!522 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !522, line: 275, size: 32, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !523, file: !522, line: 275, baseType: !526, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !522, line: 69, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !522, line: 64, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !527, file: !522, line: 65, baseType: !7, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !516, file: !517, line: 86, baseType: !531, size: 128, offset: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !532, line: 38, size: 128, elements: !533)
!532 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!533 = !{!534, !536}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !532, line: 39, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !531, file: !532, line: 39, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !516, file: !517, line: 87, baseType: !515, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !516, file: !517, line: 88, baseType: !540, size: 128, offset: 256)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !517, line: 49, size: 128, elements: !541)
!541 = !{!542, !556}
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !517, line: 50, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !540, file: !517, line: 50, size: 64, elements: !544)
!544 = !{!545, !552}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !517, line: 51, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !517, line: 51, size: 64, elements: !547)
!547 = !{!548, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !546, file: !517, line: 52, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !89, line: 21, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !91, line: 27, baseType: !7)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !546, file: !517, line: 52, baseType: !549, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !543, file: !517, line: 54, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !89, line: 23, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !91, line: 31, baseType: !555)
!555 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !517, line: 56, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !516, file: !517, line: 89, baseType: !480, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !516, file: !517, line: 91, baseType: !561, size: 256, offset: 448)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !516, file: !517, line: 94, baseType: !565, size: 64, offset: 704)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !566, line: 25, size: 64, elements: !567)
!566 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !565, file: !566, line: 26, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !565, file: !566, line: 26, size: 64, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !569, file: !566, line: 28, baseType: !554, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !569, file: !566, line: 30, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !569, file: !566, line: 30, size: 64, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !573, file: !566, line: 31, baseType: !64, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !573, file: !566, line: 32, baseType: !27, size: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !516, file: !517, line: 95, baseType: !578, size: 64, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !517, line: 128, size: 1024, align: 512, elements: !581)
!581 = !{!582, !586, !587, !594, !600, !604, !608, !612, !613, !617, !621, !5301, !5305}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !580, file: !517, line: 129, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!27, !515, !7}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !580, file: !517, line: 130, baseType: !583, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !580, file: !517, line: 131, baseType: !588, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!27, !591, !593}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !580, file: !517, line: 132, baseType: !595, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!27, !591, !7, !21, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !580, file: !517, line: 134, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!27, !591}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !580, file: !517, line: 135, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!27, !515}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !580, file: !517, line: 136, baseType: !609, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !515}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !580, file: !517, line: 137, baseType: !609, size: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !580, file: !517, line: 138, baseType: !614, size: 64, offset: 512)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !515, !480}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !580, file: !517, line: 139, baseType: !618, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!406, !515, !406, !27}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !580, file: !517, line: 140, baseType: !622, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!625, !5300}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !627, line: 70, size: 256, elements: !628)
!627 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!628 = !{!629, !630, !5296, !5297}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !626, file: !627, line: 71, baseType: !515, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !626, file: !627, line: 72, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !263, line: 1190, size: 10752, elements: !633)
!633 = !{!634, !635, !638, !639, !640, !641, !689, !5006, !5046, !5131, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5148, !5152, !5153, !5156, !5159, !5162, !5165, !5166, !5167, !5208, !5231, !5232, !5233, !5234, !5235, !5236, !5239, !5240, !5246, !5247, !5248, !5249, !5250, !5265, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !632, file: !263, line: 1191, baseType: !102, size: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !632, file: !263, line: 1192, baseType: !636, size: 32, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !30, line: 21, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !30, line: 18, baseType: !549)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !632, file: !263, line: 1193, baseType: !92, size: 8, offset: 160)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !632, file: !263, line: 1194, baseType: !44, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !632, file: !263, line: 1195, baseType: !46, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !632, file: !263, line: 1196, baseType: !642, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !263, line: 2366, size: 576, elements: !644)
!644 = !{!645, !646, !647, !653, !657, !661, !665, !666, !667, !677, !681, !682, !683, !685, !686, !687, !688}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !643, file: !263, line: 2367, baseType: !21, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !643, file: !263, line: 2368, baseType: !27, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !643, file: !263, line: 2376, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!27, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !627, line: 21, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !643, file: !263, line: 2377, baseType: !654, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !263, line: 75, flags: DIFlagFwdDecl)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !643, file: !263, line: 2378, baseType: !658, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!515, !642, !27, !21, !25}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !643, file: !263, line: 2380, baseType: !662, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !631}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !643, file: !263, line: 2381, baseType: !352, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !643, file: !263, line: 2382, baseType: !642, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !643, file: !263, line: 2383, baseType: !668, size: 64, offset: 512)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !30, line: 194, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !668, file: !30, line: 195, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !30, line: 198, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !30, line: 199, baseType: !671, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !672, file: !30, line: 199, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !643, file: !263, line: 2385, baseType: !678, offset: 576)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !679, line: 206, elements: !680)
!679 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!680 = !{}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !643, file: !263, line: 2386, baseType: !678, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !643, file: !263, line: 2387, baseType: !678, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !643, file: !263, line: 2388, baseType: !684, offset: 576)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, elements: !407)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !643, file: !263, line: 2390, baseType: !678, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !643, file: !263, line: 2391, baseType: !678, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !643, file: !263, line: 2392, baseType: !678, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !643, file: !263, line: 2393, baseType: !678, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !632, file: !263, line: 1197, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !263, line: 2057, size: 1664, elements: !693)
!693 = !{!694, !698, !702, !703, !707, !713, !717, !718, !719, !723, !727, !731, !732, !733, !739, !744, !745, !4931, !4932, !4933, !4934, !4938, !4942, !4989, !5004, !5005}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !692, file: !263, line: 2058, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!480, !631}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !692, file: !263, line: 2059, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !480}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !692, file: !263, line: 2060, baseType: !699, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !692, file: !263, line: 2062, baseType: !704, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !480, !27}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !692, file: !263, line: 2063, baseType: !708, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!27, !480, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !263, line: 309, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !692, file: !263, line: 2064, baseType: !714, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!27, !480}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !692, file: !263, line: 2065, baseType: !699, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !692, file: !263, line: 2066, baseType: !662, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !692, file: !263, line: 2067, baseType: !720, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!27, !631, !27}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !692, file: !263, line: 2068, baseType: !724, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!27, !631, !262}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !692, file: !263, line: 2069, baseType: !728, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!27, !631}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !692, file: !263, line: 2070, baseType: !724, size: 64, offset: 704)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !692, file: !263, line: 2071, baseType: !728, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !692, file: !263, line: 2072, baseType: !734, size: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!27, !515, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !263, line: 62, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !692, file: !263, line: 2073, baseType: !740, size: 64, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!27, !631, !743, !406}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !692, file: !263, line: 2074, baseType: !662, size: 64, offset: 960)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !692, file: !263, line: 2076, baseType: !746, size: 64, offset: 1024)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!27, !749, !515}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !751, line: 17, size: 960, elements: !752)
!751 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !781, !802, !803, !4930}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !750, file: !751, line: 18, baseType: !406, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !750, file: !751, line: 19, baseType: !40, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !750, file: !751, line: 20, baseType: !40, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !750, file: !751, line: 21, baseType: !40, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !750, file: !751, line: 22, baseType: !40, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !750, file: !751, line: 23, baseType: !46, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !750, file: !751, line: 24, baseType: !46, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !750, file: !751, line: 25, baseType: !761, size: 256, offset: 448)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !762, line: 66, size: 256, elements: !763)
!762 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!763 = !{!764, !773, !775, !780}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !761, file: !762, line: 67, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !766, line: 13, baseType: !767)
!766 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !30, line: 181, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 179, size: 64, elements: !769)
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !768, file: !30, line: 180, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !89, line: 22, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !91, line: 30, baseType: !48)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !761, file: !762, line: 68, baseType: !774, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !73, line: 23, baseType: !72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !761, file: !762, line: 70, baseType: !776, size: 32, offset: 96)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !777, line: 15, size: 32, elements: !778)
!777 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !776, file: !777, line: 20, baseType: !54, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !761, file: !762, line: 72, baseType: !102, size: 128, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !750, file: !751, line: 26, baseType: !782, size: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !751, line: 32, size: 256, elements: !785)
!785 = !{!786, !790, !794, !798}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !784, file: !751, line: 33, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!25, !749, !45}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !784, file: !751, line: 34, baseType: !791, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !749, !25}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !784, file: !751, line: 35, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!25, !749, !25, !45}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !784, file: !751, line: 36, baseType: !799, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{!27, !749, !25}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !750, file: !751, line: 27, baseType: !27, size: 32, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !750, file: !751, line: 28, baseType: !804, size: 64, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !263, line: 994, size: 1856, align: 64, elements: !807)
!807 = !{!808, !827, !828, !830, !831, !832, !833, !834, !4902, !4903, !4912, !4918, !4919, !4921, !4922, !4923, !4924, !4925, !4926, !4929}
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !806, file: !263, line: 995, baseType: !809, size: 128)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !806, file: !263, line: 995, size: 128, elements: !810)
!810 = !{!811, !817, !826}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !809, file: !263, line: 996, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !813, line: 60, size: 64, elements: !814)
!813 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !812, file: !813, line: 61, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !809, file: !263, line: 997, baseType: !818, size: 128, align: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !30, line: 232, size: 128, align: 64, elements: !819)
!819 = !{!820, !822}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !30, line: 233, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !818, file: !30, line: 234, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !821}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !809, file: !263, line: 998, baseType: !7, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !806, file: !263, line: 1005, baseType: !64, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !806, file: !263, line: 1006, baseType: !829, size: 32, offset: 160)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !30, line: 156, baseType: !7)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !806, file: !263, line: 1007, baseType: !765, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !806, file: !263, line: 1008, baseType: !761, size: 256, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !806, file: !263, line: 1009, baseType: !46, size: 64, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !806, file: !263, line: 1010, baseType: !7, size: 32, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !806, file: !263, line: 1011, baseType: !835, size: 256, offset: 640)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !263, line: 948, size: 256, elements: !836)
!836 = !{!837, !858, !4898, !4899, !4900, !4901}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !835, file: !263, line: 949, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !839, line: 34, baseType: !840)
!839 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !839, line: 25, size: 64, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !840, file: !839, line: 26, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !844, line: 27, baseType: !845)
!844 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !844, line: 13, size: 64, elements: !846)
!846 = !{!847, !857}
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !844, line: 14, baseType: !848, size: 32)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !844, line: 14, size: 32, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !848, file: !844, line: 15, baseType: !54, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !844, line: 16, baseType: !852, size: 32)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !848, file: !844, line: 16, size: 32, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !852, file: !844, line: 18, baseType: !88, size: 8)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !852, file: !844, line: 19, baseType: !856, size: 24, offset: 8)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 24, elements: !407)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !845, file: !844, line: 26, baseType: !76, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !835, file: !263, line: 950, baseType: !859, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !255, line: 59, size: 768, elements: !861)
!861 = !{!862, !868, !869, !870, !874, !875, !876, !877}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !860, file: !255, line: 61, baseType: !863, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !864, line: 113, baseType: !865)
!864 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !864, line: 111, size: 32, elements: !866)
!866 = !{!867}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !865, file: !864, line: 112, baseType: !54, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !860, file: !255, line: 62, baseType: !7, size: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !860, file: !255, line: 63, baseType: !64, size: 32, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !860, file: !255, line: 65, baseType: !871, size: 256, offset: 128)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 256, elements: !872)
!872 = !{!873}
!873 = !DISubrange(count: 4)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !860, file: !255, line: 66, baseType: !668, size: 64, offset: 384)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !860, file: !255, line: 68, baseType: !59, size: 192, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !860, file: !255, line: 69, baseType: !818, size: 128, align: 64, offset: 640)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !860, file: !255, line: 70, baseType: !878, offset: 768)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, elements: !1634)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !255, line: 54, size: 128, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !879, file: !255, line: 55, baseType: !27, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !879, file: !255, line: 56, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !885, line: 26, size: 1152, elements: !886)
!885 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!886 = !{!887, !900, !901, !902, !4887, !4888, !4889, !4890, !4893, !4894, !4895, !4896, !4897}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !884, file: !885, line: 27, baseType: !888, size: 192)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !889, line: 19, size: 192, elements: !890)
!889 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!890 = !{!891, !898, !899}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !888, file: !889, line: 20, baseType: !892, size: 128)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !893, line: 296, size: 128, elements: !894)
!893 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !892, file: !893, line: 297, baseType: !64, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !892, file: !893, line: 299, baseType: !326, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !892, file: !893, line: 300, baseType: !25, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !888, file: !889, line: 21, baseType: !7, size: 32, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !888, file: !889, line: 22, baseType: !7, size: 32, offset: 160)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !884, file: !885, line: 28, baseType: !818, size: 128, align: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !884, file: !885, line: 29, baseType: !7, size: 32, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !884, file: !885, line: 30, baseType: !903, size: 64, offset: 384)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !905, line: 746, size: 58368, elements: !906)
!905 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!906 = !{!907, !915, !916, !917, !918, !919, !920, !921, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !994, !1005, !1100, !1104, !1107, !1138, !1139, !1140, !1141, !1152, !1154, !1155, !1156, !1157, !1158, !1159, !1170, !1171, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1188, !1189, !1196, !1197, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1720, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1768, !1774, !1844, !1845, !1846, !1847, !1851, !1854, !1861, !1866, !1869, !1872, !1875, !2567, !2768, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2806, !2807, !2808, !2817, !2825, !2826, !2827, !2828, !2829, !2834, !2835, !2836, !2839, !2840, !2843, !2846, !2849, !2857, !2860, !2861, !2947, !2948, !2949, !2950, !2951, !2957, !2958, !2959, !2960, !2961, !2962, !2965, !2968, !2969, !2972, !2973, !2974, !3012, !3013, !3014, !3015, !3016, !3017, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3049, !3052, !3058, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3070, !3142, !3144, !3145, !3146, !3147, !3148, !3149, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3179, !3180, !3181}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !904, file: !905, line: 752, baseType: !908, size: 192)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !909, line: 56, size: 192, elements: !910)
!909 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!910 = !{!911, !912, !913, !914}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !908, file: !909, line: 57, baseType: !44, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !908, file: !909, line: 58, baseType: !44, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !908, file: !909, line: 59, baseType: !549, size: 32, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !908, file: !909, line: 61, baseType: !549, size: 32, offset: 160)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !904, file: !905, line: 754, baseType: !7, size: 32, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !904, file: !905, line: 767, baseType: !25, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !904, file: !905, line: 768, baseType: !863, size: 32, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !904, file: !905, line: 770, baseType: !7, size: 32, offset: 352)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !904, file: !905, line: 771, baseType: !7, size: 32, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !904, file: !905, line: 774, baseType: !27, size: 32, offset: 416)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !904, file: !905, line: 775, baseType: !922, size: 128, offset: 448)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !923, line: 58, size: 128, elements: !924)
!923 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!924 = !{!925, !926, !931, !932}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !922, file: !923, line: 59, baseType: !812, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !923, line: 60, baseType: !927, size: 32, offset: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !923, line: 60, size: 32, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !927, file: !923, line: 61, baseType: !7, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !927, file: !923, line: 62, baseType: !54, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !922, file: !923, line: 65, baseType: !98, size: 16, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !922, file: !923, line: 65, baseType: !98, size: 16, offset: 112)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !904, file: !905, line: 776, baseType: !7, size: 32, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !904, file: !905, line: 777, baseType: !44, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !904, file: !905, line: 778, baseType: !903, size: 64, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !904, file: !905, line: 787, baseType: !27, size: 32, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !904, file: !905, line: 788, baseType: !27, size: 32, offset: 800)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !904, file: !905, line: 790, baseType: !27, size: 32, offset: 832)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !904, file: !905, line: 792, baseType: !27, size: 32, offset: 864)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !904, file: !905, line: 793, baseType: !27, size: 32, offset: 896)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !904, file: !905, line: 794, baseType: !27, size: 32, offset: 928)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !904, file: !905, line: 795, baseType: !7, size: 32, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !904, file: !905, line: 797, baseType: !944, size: 2048, offset: 1024)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !905, line: 551, size: 2048, elements: !945)
!945 = !{!946, !951, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !973, !976, !977, !978}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !944, file: !905, line: 553, baseType: !947, size: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !905, line: 411, size: 128, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !947, file: !905, line: 412, baseType: !44, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !947, file: !905, line: 413, baseType: !549, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !944, file: !905, line: 554, baseType: !952, size: 192, align: 64, offset: 128)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !953, line: 5, size: 192, align: 64, elements: !954)
!953 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!954 = !{!955, !956, !958}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !952, file: !953, line: 6, baseType: !44, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !952, file: !953, line: 7, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !952, file: !953, line: 8, baseType: !957, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !944, file: !905, line: 555, baseType: !553, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !944, file: !905, line: 556, baseType: !553, size: 64, offset: 384)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !944, file: !905, line: 558, baseType: !102, size: 128, offset: 448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !944, file: !905, line: 559, baseType: !7, size: 32, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !944, file: !905, line: 561, baseType: !553, size: 64, offset: 640)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !944, file: !905, line: 562, baseType: !553, size: 64, offset: 704)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !944, file: !905, line: 563, baseType: !553, size: 64, offset: 768)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !944, file: !905, line: 564, baseType: !553, size: 64, offset: 832)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !944, file: !905, line: 565, baseType: !771, size: 64, offset: 896)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !944, file: !905, line: 566, baseType: !553, size: 64, offset: 960)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !944, file: !905, line: 568, baseType: !553, size: 64, offset: 1024)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !944, file: !905, line: 571, baseType: !27, size: 32, offset: 1088)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !944, file: !905, line: 572, baseType: !972, size: 64, offset: 1152)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !944, file: !905, line: 574, baseType: !974, size: 64, offset: 1216)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !905, line: 49, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !944, file: !905, line: 576, baseType: !974, size: 64, offset: 1280)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !944, file: !905, line: 578, baseType: !44, size: 64, offset: 1344)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !944, file: !905, line: 588, baseType: !979, size: 512, align: 512, offset: 1536)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !905, line: 497, size: 512, align: 512, elements: !980)
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !989}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !979, file: !905, line: 498, baseType: !553, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !979, file: !905, line: 499, baseType: !553, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !979, file: !905, line: 500, baseType: !553, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !979, file: !905, line: 501, baseType: !549, size: 32, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !979, file: !905, line: 502, baseType: !549, size: 32, offset: 224)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !979, file: !905, line: 503, baseType: !44, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !979, file: !905, line: 504, baseType: !44, size: 64, offset: 320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !979, file: !905, line: 505, baseType: !44, size: 64, offset: 384)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !979, file: !905, line: 506, baseType: !990, size: 64, align: 64, offset: 448)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !905, line: 445, size: 64, align: 64, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !990, file: !905, line: 446, baseType: !7, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !990, file: !905, line: 447, baseType: !7, size: 32, offset: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !904, file: !905, line: 798, baseType: !995, size: 384, offset: 3072)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !905, line: 592, size: 384, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !995, file: !905, line: 593, baseType: !102, size: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !995, file: !905, line: 594, baseType: !44, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !995, file: !905, line: 595, baseType: !44, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !995, file: !905, line: 596, baseType: !7, size: 32, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !995, file: !905, line: 597, baseType: !31, size: 16, offset: 288)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !995, file: !905, line: 598, baseType: !31, size: 16, offset: 304)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !995, file: !905, line: 600, baseType: !1004, size: 64, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !904, file: !905, line: 799, baseType: !1006, size: 1792, offset: 3456)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !905, line: 610, size: 1792, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1097, !1098}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1006, file: !905, line: 611, baseType: !952, size: 192, align: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1006, file: !905, line: 618, baseType: !553, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1006, file: !905, line: 619, baseType: !553, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1006, file: !905, line: 620, baseType: !553, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1006, file: !905, line: 621, baseType: !553, size: 64, offset: 384)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1006, file: !905, line: 622, baseType: !553, size: 64, offset: 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1006, file: !905, line: 629, baseType: !771, size: 64, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1006, file: !905, line: 630, baseType: !553, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1006, file: !905, line: 631, baseType: !7, size: 32, offset: 640)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1006, file: !905, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1006, file: !905, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1006, file: !905, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1006, file: !905, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1006, file: !905, line: 662, baseType: !1022, size: 512, offset: 704)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !1023)
!1023 = !{!1024, !1032, !1033, !1038, !1093, !1094, !1095, !1096}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1022, file: !12, line: 119, baseType: !1025, size: 256)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1026, line: 9, size: 256, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1025, file: !1026, line: 10, baseType: !952, size: 192, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1025, file: !1026, line: 11, baseType: !1030, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1031, line: 29, baseType: !771)
!1031 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1022, file: !12, line: 120, baseType: !1030, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1022, file: !12, line: 121, baseType: !1034, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!11, !1037}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1022, file: !12, line: 122, baseType: !1039, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !1041)
!1041 = !{!1042, !1067, !1068, !1071, !1076, !1077, !1088, !1092}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1040, file: !12, line: 160, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 215, size: 4608, align: 512, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1044, file: !12, line: 216, baseType: !774, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1044, file: !12, line: 217, baseType: !7, size: 32, offset: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1044, file: !12, line: 218, baseType: !7, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1044, file: !12, line: 219, baseType: !7, size: 32, offset: 96)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1044, file: !12, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1044, file: !12, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1044, file: !12, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1044, file: !12, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1044, file: !12, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1044, file: !12, line: 226, baseType: !7, size: 32, offset: 160)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1044, file: !12, line: 227, baseType: !31, size: 16, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1044, file: !12, line: 228, baseType: !31, size: 16, offset: 208)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1044, file: !12, line: 229, baseType: !7, size: 32, offset: 224)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1044, file: !12, line: 235, baseType: !1030, size: 64, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1044, file: !12, line: 236, baseType: !1037, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1044, file: !12, line: 237, baseType: !1030, size: 64, offset: 384)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1044, file: !12, line: 238, baseType: !1037, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1044, file: !12, line: 239, baseType: !1064, size: 4096, align: 512, offset: 512)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, size: 4096, align: 512, elements: !1065)
!1065 = !{!1066}
!1066 = !DISubrange(count: 8)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1040, file: !12, line: 161, baseType: !7, size: 32, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1040, file: !12, line: 162, baseType: !1069, size: 32, offset: 96)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !30, line: 32, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !42, line: 96, baseType: !27)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1040, file: !12, line: 163, baseType: !1072, size: 32, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !522, line: 274, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !522, line: 274, size: 32, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1073, file: !522, line: 274, baseType: !526, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1040, file: !12, line: 164, baseType: !1037, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1040, file: !12, line: 165, baseType: !1078, size: 128, offset: 256)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1026, line: 14, size: 128, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1078, file: !1026, line: 15, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !953, line: 26, size: 128, elements: !1082)
!1082 = !{!1083, !1087}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1081, file: !953, line: 27, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !953, line: 12, size: 64, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1084, file: !953, line: 13, baseType: !957, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1081, file: !953, line: 28, baseType: !957, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1040, file: !12, line: 166, baseType: !1089, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!1030}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1040, file: !12, line: 167, baseType: !1030, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1022, file: !12, line: 123, baseType: !88, size: 8, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1022, file: !12, line: 124, baseType: !88, size: 8, offset: 456)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1022, file: !12, line: 125, baseType: !88, size: 8, offset: 464)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1022, file: !12, line: 126, baseType: !88, size: 8, offset: 472)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1006, file: !905, line: 671, baseType: !1022, size: 512, offset: 1216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1006, file: !905, line: 679, baseType: !1099, size: 64, offset: 1728)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !904, file: !905, line: 800, baseType: !1101, size: 64, offset: 5248)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1103)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !905, line: 800, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !904, file: !905, line: 809, baseType: !1105, size: 64, offset: 5312)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !905, line: 70, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !904, file: !905, line: 825, baseType: !1108, size: 2048, align: 512, offset: 5632)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !905, line: 509, size: 2048, align: 512, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1108, file: !905, line: 511, baseType: !553, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1108, file: !905, line: 512, baseType: !553, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1108, file: !905, line: 513, baseType: !553, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1108, file: !905, line: 514, baseType: !553, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1108, file: !905, line: 515, baseType: !553, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1108, file: !905, line: 516, baseType: !553, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1108, file: !905, line: 518, baseType: !553, size: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1108, file: !905, line: 519, baseType: !553, size: 64, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1108, file: !905, line: 520, baseType: !771, size: 64, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1108, file: !905, line: 522, baseType: !553, size: 64, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1108, file: !905, line: 523, baseType: !553, size: 64, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1108, file: !905, line: 524, baseType: !771, size: 64, offset: 704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1108, file: !905, line: 526, baseType: !771, size: 64, offset: 768)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1108, file: !905, line: 527, baseType: !553, size: 64, offset: 832)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1108, file: !905, line: 529, baseType: !553, size: 64, offset: 896)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1108, file: !905, line: 530, baseType: !553, size: 64, offset: 960)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1108, file: !905, line: 531, baseType: !553, size: 64, offset: 1024)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1108, file: !905, line: 532, baseType: !553, size: 64, offset: 1088)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1108, file: !905, line: 533, baseType: !553, size: 64, offset: 1152)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1108, file: !905, line: 535, baseType: !553, size: 64, offset: 1216)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1108, file: !905, line: 536, baseType: !553, size: 64, offset: 1280)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1108, file: !905, line: 537, baseType: !553, size: 64, offset: 1344)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1108, file: !905, line: 538, baseType: !553, size: 64, offset: 1408)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1108, file: !905, line: 539, baseType: !553, size: 64, offset: 1472)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1108, file: !905, line: 540, baseType: !553, size: 64, offset: 1536)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1108, file: !905, line: 541, baseType: !553, size: 64, offset: 1600)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1108, file: !905, line: 542, baseType: !553, size: 64, offset: 1664)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1108, file: !905, line: 543, baseType: !553, size: 64, offset: 1728)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !904, file: !905, line: 833, baseType: !7, size: 32, offset: 7680)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !904, file: !905, line: 836, baseType: !7, size: 32, offset: 7712)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !904, file: !905, line: 837, baseType: !27, size: 32, offset: 7744)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !904, file: !905, line: 838, baseType: !1142, size: 64, offset: 7808)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1145, line: 19, baseType: !1146)
!1145 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1145, line: 19, size: 64, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1146, file: !1145, line: 19, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 64, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 1)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !904, file: !905, line: 839, baseType: !1153, size: 64, offset: 7872)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !904, file: !905, line: 840, baseType: !1144, size: 64, offset: 7936)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !904, file: !905, line: 841, baseType: !25, size: 64, offset: 8000)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !904, file: !905, line: 843, baseType: !31, size: 16, offset: 8064)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !904, file: !905, line: 845, baseType: !31, size: 16, offset: 8080)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !904, file: !905, line: 848, baseType: !27, size: 32, offset: 8096)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !904, file: !905, line: 849, baseType: !1160, size: 32, offset: 8128)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !905, line: 718, size: 32, elements: !1161)
!1161 = !{!1162, !1169}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1160, file: !905, line: 724, baseType: !1163, size: 32)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1160, file: !905, line: 719, size: 32, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1163, file: !905, line: 720, baseType: !88, size: 8)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1163, file: !905, line: 721, baseType: !88, size: 8, offset: 8)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1163, file: !905, line: 722, baseType: !88, size: 8, offset: 16)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1163, file: !905, line: 723, baseType: !88, size: 8, offset: 24)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1160, file: !905, line: 725, baseType: !549, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !904, file: !905, line: 850, baseType: !102, size: 128, offset: 8192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !904, file: !905, line: 851, baseType: !1172, size: 64, offset: 8320)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !905, line: 60, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !904, file: !905, line: 855, baseType: !44, size: 64, offset: 8384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !904, file: !905, line: 856, baseType: !88, size: 8, offset: 8448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !904, file: !905, line: 857, baseType: !88, size: 8, offset: 8456)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !904, file: !905, line: 858, baseType: !27, size: 32, offset: 8480)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !904, file: !905, line: 859, baseType: !102, size: 128, offset: 8512)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !904, file: !905, line: 860, baseType: !27, size: 32, offset: 8640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !904, file: !905, line: 861, baseType: !102, size: 128, offset: 8704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !904, file: !905, line: 873, baseType: !1182, size: 256, offset: 8832)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !905, line: 376, size: 256, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1182, file: !905, line: 381, baseType: !44, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1182, file: !905, line: 384, baseType: !555, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1182, file: !905, line: 389, baseType: !555, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1182, file: !905, line: 392, baseType: !555, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !904, file: !905, line: 875, baseType: !102, size: 128, offset: 9088)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !904, file: !905, line: 877, baseType: !1190, size: 320, offset: 9216)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1191, line: 86, size: 320, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1190, file: !1191, line: 87, baseType: !27, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1190, file: !1191, line: 88, baseType: !102, size: 128, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1190, file: !1191, line: 89, baseType: !102, size: 128, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !904, file: !905, line: 878, baseType: !952, size: 192, align: 64, offset: 9536)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !904, file: !905, line: 881, baseType: !1198, size: 64, offset: 9728)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !119, line: 733, size: 10240, elements: !1200)
!1200 = !{!1201, !1632}
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !119, line: 734, baseType: !1202, size: 10240)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !119, line: 734, size: 10240, elements: !1203)
!1203 = !{!1204, !1208, !1221, !1226, !1227, !1228, !1229, !1230, !1231, !1240, !1241, !1242, !1248, !1249, !1250, !1251, !1252, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1289, !1301, !1304, !1352, !1353, !1354, !1357, !1618, !1619, !1622, !1623, !1624, !1630, !1631}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !119, line: 739, baseType: !1205, size: 512, align: 512)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !119, line: 739, size: 512, align: 512, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1205, file: !119, line: 747, baseType: !54, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1202, file: !119, line: 750, baseType: !1209, size: 128, offset: 512)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1210, line: 218, size: 128, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1211 = !{!1212, !1219, !1220}
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1209, file: !1210, line: 219, baseType: !1213, size: 32)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1209, file: !1210, line: 219, size: 32, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1213, file: !1210, line: 220, baseType: !64, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1213, file: !1210, line: 221, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1210, line: 197, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 197, elements: !680)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1209, file: !1210, line: 223, baseType: !7, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1209, file: !1210, line: 224, baseType: !25, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1202, file: !119, line: 752, baseType: !1222, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!44, !1225, !44, !44, !44, !44}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1202, file: !119, line: 756, baseType: !44, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1202, file: !119, line: 757, baseType: !44, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1202, file: !119, line: 760, baseType: !44, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1202, file: !119, line: 761, baseType: !44, size: 64, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1202, file: !119, line: 763, baseType: !44, size: 64, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1202, file: !119, line: 764, baseType: !1232, size: 64, offset: 1024)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1234, line: 299, baseType: !1235)
!1234 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1234, line: 299, size: 64, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1235, file: !1234, line: 299, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1239, line: 18, baseType: !44)
!1239 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1202, file: !119, line: 773, baseType: !54, size: 32, offset: 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1202, file: !119, line: 785, baseType: !54, size: 32, offset: 1120)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1202, file: !119, line: 795, baseType: !1243, size: 64, offset: 1152)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !119, line: 726, size: 128, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1244, file: !119, line: 727, baseType: !553, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1244, file: !119, line: 728, baseType: !27, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1202, file: !119, line: 801, baseType: !44, size: 64, offset: 1216)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1202, file: !119, line: 804, baseType: !765, size: 64, offset: 1280)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1202, file: !119, line: 806, baseType: !27, size: 32, offset: 1344)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1202, file: !119, line: 808, baseType: !64, size: 32, offset: 1376)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1202, file: !119, line: 823, baseType: !1253, size: 320, offset: 1408)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1254, line: 48, size: 320, elements: !1255)
!1254 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1255 = !{!1256, !1257, !1258, !1259, !1260}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1253, file: !1254, line: 49, baseType: !765, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1253, file: !1254, line: 55, baseType: !765, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1253, file: !1254, line: 57, baseType: !776, size: 32, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1253, file: !1254, line: 59, baseType: !774, size: 32, offset: 160)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1253, file: !1254, line: 60, baseType: !102, size: 128, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1202, file: !119, line: 825, baseType: !102, size: 128, offset: 1728)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1202, file: !119, line: 845, baseType: !27, size: 32, offset: 1856)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1202, file: !119, line: 849, baseType: !44, size: 64, offset: 1920)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1202, file: !119, line: 850, baseType: !44, size: 64, offset: 1984)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1202, file: !119, line: 852, baseType: !44, size: 64, offset: 2048)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1202, file: !119, line: 853, baseType: !44, size: 64, offset: 2112)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1202, file: !119, line: 854, baseType: !767, size: 64, offset: 2176)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1202, file: !119, line: 855, baseType: !44, size: 64, offset: 2240)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1202, file: !119, line: 856, baseType: !44, size: 64, offset: 2304)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1202, file: !119, line: 857, baseType: !44, size: 64, offset: 2368)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1202, file: !119, line: 858, baseType: !44, size: 64, offset: 2432)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1202, file: !119, line: 865, baseType: !526, size: 32, offset: 2496)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1202, file: !119, line: 867, baseType: !64, size: 32, offset: 2528)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1202, file: !119, line: 869, baseType: !44, size: 64, offset: 2560)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1202, file: !119, line: 869, baseType: !44, size: 64, offset: 2624)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1202, file: !119, line: 869, baseType: !44, size: 64, offset: 2688)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1202, file: !119, line: 869, baseType: !44, size: 64, offset: 2752)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1202, file: !119, line: 870, baseType: !44, size: 64, offset: 2816)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1202, file: !119, line: 870, baseType: !44, size: 64, offset: 2880)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1202, file: !119, line: 870, baseType: !44, size: 64, offset: 2944)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1202, file: !119, line: 871, baseType: !44, size: 64, offset: 3008)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1202, file: !119, line: 871, baseType: !44, size: 64, offset: 3072)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1202, file: !119, line: 871, baseType: !44, size: 64, offset: 3136)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1202, file: !119, line: 871, baseType: !44, size: 64, offset: 3200)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1202, file: !119, line: 873, baseType: !1286, size: 3328, offset: 3264)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 3328, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 52)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1202, file: !119, line: 875, baseType: !1290, size: 1280, offset: 6592)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1291, size: 1280, elements: !872)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1292, line: 22, size: 320, elements: !1293)
!1292 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1293 = !{!1294, !1295, !1296, !1297}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1291, file: !1292, line: 23, baseType: !774, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1291, file: !1292, line: 24, baseType: !771, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1291, file: !1292, line: 26, baseType: !102, size: 128, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1291, file: !1292, line: 28, baseType: !1298, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !89, line: 20, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !91, line: 26, baseType: !27)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1202, file: !119, line: 877, baseType: !1302, size: 64, offset: 7872)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !119, line: 877, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1202, file: !119, line: 880, baseType: !1305, size: 1088, offset: 7936)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1306, line: 72, baseType: !1307)
!1306 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1306, line: 23, size: 1088, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313, !1316, !1317, !1318, !1319, !1346, !1347, !1348}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1307, file: !1306, line: 28, baseType: !553, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1307, file: !1306, line: 38, baseType: !767, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1307, file: !1306, line: 40, baseType: !44, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1307, file: !1306, line: 43, baseType: !1253, size: 320, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1307, file: !1306, line: 44, baseType: !1314, size: 64, offset: 512)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1306, line: 44, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1307, file: !1306, line: 48, baseType: !44, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1307, file: !1306, line: 59, baseType: !761, size: 256, offset: 640)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1307, file: !1306, line: 60, baseType: !25, size: 64, offset: 896)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1307, file: !1306, line: 61, baseType: !1320, size: 64, offset: 960)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1323, line: 13, size: 1216, elements: !1324)
!1323 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1322, file: !1323, line: 14, baseType: !25, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1322, file: !1323, line: 15, baseType: !44, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1322, file: !1323, line: 17, baseType: !44, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1322, file: !1323, line: 17, baseType: !44, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1322, file: !1323, line: 18, baseType: !44, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1322, file: !1323, line: 18, baseType: !44, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1322, file: !1323, line: 19, baseType: !1332, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1322, file: !1323, line: 21, baseType: !441, size: 64, offset: 448)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1322, file: !1323, line: 23, baseType: !441, size: 64, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1322, file: !1323, line: 24, baseType: !441, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1322, file: !1323, line: 25, baseType: !441, size: 64, offset: 640)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1322, file: !1323, line: 26, baseType: !441, size: 64, offset: 704)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1322, file: !1323, line: 27, baseType: !441, size: 64, offset: 768)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1322, file: !1323, line: 28, baseType: !441, size: 64, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1322, file: !1323, line: 29, baseType: !441, size: 64, offset: 896)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1322, file: !1323, line: 30, baseType: !441, size: 64, offset: 960)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1322, file: !1323, line: 31, baseType: !441, size: 64, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1322, file: !1323, line: 32, baseType: !441, size: 64, offset: 1088)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1322, file: !1323, line: 33, baseType: !441, size: 64, offset: 1152)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1307, file: !1306, line: 63, baseType: !54, size: 32, offset: 1024)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1307, file: !1306, line: 69, baseType: !98, size: 16, offset: 1056)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1307, file: !1306, line: 70, baseType: !1349, size: 16, offset: 1072)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !89, line: 18, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !91, line: 23, baseType: !1351)
!1351 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1202, file: !119, line: 882, baseType: !44, size: 64, offset: 9024)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1202, file: !119, line: 885, baseType: !64, size: 32, offset: 9088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1202, file: !119, line: 886, baseType: !1355, size: 64, offset: 9152)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !119, line: 732, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1202, file: !119, line: 901, baseType: !1358, size: 64, offset: 9216)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1360, line: 68, size: 4800, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1361 = !{!1362, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1401, !1402, !1405, !1406, !1516, !1517, !1529, !1599, !1600, !1614, !1616}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1359, file: !1360, line: 69, baseType: !1363, size: 576)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1360, line: 23, size: 576, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1363, file: !1360, line: 24, baseType: !549, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !1360, line: 25, baseType: !1367, size: 512, offset: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1363, file: !1360, line: 25, size: 512, elements: !1368)
!1368 = !{!1369, !1378}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1367, file: !1360, line: 26, baseType: !1370, size: 480)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 480, elements: !1376)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1360, line: 17, size: 96, elements: !1372)
!1372 = !{!1373, !1374, !1375}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1371, file: !1360, line: 18, baseType: !549, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1371, file: !1360, line: 19, baseType: !549, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1371, file: !1360, line: 20, baseType: !549, size: 32, offset: 64)
!1376 = !{!1377}
!1377 = !DISubrange(count: 5)
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1360, line: 27, baseType: !1379, size: 128)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1367, file: !1360, line: 27, size: 128, elements: !1380)
!1380 = !{!1381, !1383}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1379, file: !1360, line: 28, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1379, file: !1360, line: 29, baseType: !1382, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1359, file: !1360, line: 70, baseType: !1363, size: 576, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1359, file: !1360, line: 71, baseType: !1363, size: 576, offset: 1152)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1359, file: !1360, line: 72, baseType: !1358, size: 64, offset: 1728)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1359, file: !1360, line: 73, baseType: !27, size: 32, offset: 1792)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1359, file: !1360, line: 74, baseType: !486, size: 32, offset: 1824)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1359, file: !1360, line: 75, baseType: !495, size: 32, offset: 1856)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1359, file: !1360, line: 76, baseType: !1391, size: 192, offset: 1920)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1392, line: 9, size: 192, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1393 = !{!1394, !1395, !1399, !1400}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1391, file: !1392, line: 10, baseType: !765, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1391, file: !1392, line: 11, baseType: !1396, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1398)
!1398 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1392, line: 7, flags: DIFlagFwdDecl)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1391, file: !1392, line: 12, baseType: !7, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1391, file: !1392, line: 13, baseType: !863, size: 32, offset: 160)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1359, file: !1360, line: 77, baseType: !44, size: 64, offset: 2112)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1359, file: !1360, line: 80, baseType: !1403, size: 8, offset: 2176)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !1404)
!1404 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1359, file: !1360, line: 88, baseType: !102, size: 128, offset: 2240)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1359, file: !1360, line: 89, baseType: !1407, size: 64, offset: 2368)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1409, line: 195, size: 1728, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1410 = !{!1411, !1412, !1415, !1420, !1421, !1424, !1425, !1432, !1433, !1434, !1435, !1438, !1439, !1440, !1441, !1442, !1480, !1501}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1408, file: !1409, line: 196, baseType: !863, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1408, file: !1409, line: 197, baseType: !1413, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1409, line: 28, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !30, line: 104, baseType: !1299)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 198, baseType: !1416, size: 192, offset: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 198, size: 192, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1416, file: !1409, line: 199, baseType: !102, size: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1416, file: !1409, line: 200, baseType: !952, size: 192, align: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1408, file: !1409, line: 205, baseType: !1253, size: 320, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1408, file: !1409, line: 206, baseType: !1422, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1409, line: 206, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1408, file: !1409, line: 207, baseType: !25, size: 64, offset: 640)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 208, baseType: !1426, size: 64, offset: 704)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 208, size: 64, elements: !1427)
!1427 = !{!1428, !1431}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1426, file: !1409, line: 209, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1430, line: 8, baseType: !772)
!1430 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1426, file: !1409, line: 210, baseType: !1429, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1408, file: !1409, line: 212, baseType: !1429, size: 64, offset: 768)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1408, file: !1409, line: 213, baseType: !486, size: 32, offset: 832)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1408, file: !1409, line: 214, baseType: !495, size: 32, offset: 864)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1408, file: !1409, line: 215, baseType: !1436, size: 32, offset: 896)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1409, line: 31, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 110, baseType: !549)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1408, file: !1409, line: 216, baseType: !31, size: 16, offset: 928)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1408, file: !1409, line: 217, baseType: !31, size: 16, offset: 944)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1408, file: !1409, line: 221, baseType: !1351, size: 16, offset: 960)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1408, file: !1409, line: 228, baseType: !44, size: 64, offset: 1024)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 245, baseType: !1443, size: 320, offset: 1088)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 245, size: 320, elements: !1444)
!1444 = !{!1445, !1472}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1443, file: !1409, line: 246, baseType: !1446, size: 320)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1409, line: 114, size: 320, elements: !1447)
!1447 = !{!1448, !1449, !1461, !1464, !1471}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1446, file: !1409, line: 116, baseType: !44, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1409, line: 117, baseType: !1450, size: 64, offset: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !1409, line: 117, size: 64, elements: !1451)
!1451 = !{!1452, !1460}
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1409, line: 118, baseType: !1453, size: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !1409, line: 118, size: 64, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1453, file: !1409, line: 120, baseType: !98, size: 16)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1453, file: !1409, line: 121, baseType: !1457, size: 48, offset: 16)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 48, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 6)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1450, file: !1409, line: 127, baseType: !44, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1446, file: !1409, line: 129, baseType: !1462, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1409, line: 102, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1446, file: !1409, line: 130, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1409, line: 108, size: 192, elements: !1467)
!1467 = !{!1468, !1469, !1470}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1466, file: !1409, line: 109, baseType: !818, size: 128, align: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1466, file: !1409, line: 110, baseType: !863, size: 32, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1466, file: !1409, line: 111, baseType: !1403, size: 8, offset: 160)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1446, file: !1409, line: 131, baseType: !21, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1409, line: 247, baseType: !1473, size: 320)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1443, file: !1409, line: 247, size: 320, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1473, file: !1409, line: 248, baseType: !44, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1473, file: !1409, line: 249, baseType: !44, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1473, file: !1409, line: 250, baseType: !1462, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1473, file: !1409, line: 251, baseType: !1465, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1473, file: !1409, line: 252, baseType: !406, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1409, line: 260, baseType: !1481, size: 256, offset: 1408)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1409, line: 260, size: 256, elements: !1482)
!1482 = !{!1483, !1489}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1481, file: !1409, line: 261, baseType: !1484, size: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1409, line: 134, size: 256, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1484, file: !1409, line: 135, baseType: !25, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1484, file: !1409, line: 136, baseType: !1488, size: 256)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 256, elements: !872)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1409, line: 262, baseType: !1490, size: 256)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !1409, line: 262, size: 256, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1490, file: !1409, line: 264, baseType: !102, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1490, file: !1409, line: 265, baseType: !1494, size: 128, offset: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1495, line: 22, size: 128, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1496 = !{!1497, !1500}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1494, file: !1495, line: 23, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1495, line: 23, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1494, file: !1495, line: 24, baseType: !44, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1408, file: !1409, line: 280, baseType: !1502, size: 64, offset: 1664)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1409, line: 176, size: 192, elements: !1504)
!1504 = !{!1505, !1514, !1515}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1503, file: !1409, line: 177, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1409, line: 171, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!27, !1407, !1510, !1512, !1407}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1463)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1503, file: !1409, line: 178, baseType: !1407, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1503, file: !1409, line: 179, baseType: !1462, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1359, file: !1360, line: 90, baseType: !1253, size: 320, offset: 2432)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1359, file: !1360, line: 97, baseType: !1518, size: 256, offset: 2752)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1519, line: 98, size: 256, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1518, file: !1519, line: 99, baseType: !765, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1518, file: !1519, line: 100, baseType: !102, size: 128, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1518, file: !1519, line: 101, baseType: !1524, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1519, line: 21, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1528}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1359, file: !1360, line: 99, baseType: !1530, size: 768, offset: 3008)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !17, line: 199, size: 768, elements: !1531)
!1531 = !{!1532, !1537}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1530, file: !17, line: 200, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!27, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1530, file: !17, line: 201, baseType: !1538, size: 704, offset: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !17, line: 193, size: 704, elements: !1539)
!1539 = !{!1540, !1598}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1538, file: !17, line: 195, baseType: !1541, size: 640)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !17, line: 173, size: 640, elements: !1542)
!1542 = !{!1543, !1555, !1567, !1568, !1588, !1589, !1591, !1597}
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !17, line: 174, baseType: !1544, size: 192)
!1544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !17, line: 174, size: 192, elements: !1545)
!1545 = !{!1546, !1554}
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !17, line: 175, baseType: !1547, size: 192)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1544, file: !17, line: 175, size: 192, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1547, file: !17, line: 176, baseType: !38, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1547, file: !17, line: 177, baseType: !27, size: 32, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1547, file: !17, line: 178, baseType: !27, size: 32, offset: 96)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1547, file: !17, line: 179, baseType: !27, size: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1547, file: !17, line: 180, baseType: !27, size: 32, offset: 160)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1544, file: !17, line: 182, baseType: !818, size: 128, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1541, file: !17, line: 184, baseType: !1556, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1558, line: 26, size: 256, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1557, file: !1558, line: 27, baseType: !7, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1557, file: !1558, line: 28, baseType: !1562, size: 192, offset: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1563, line: 43, size: 192, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1562, file: !1563, line: 44, baseType: !774, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1562, file: !1563, line: 45, baseType: !102, size: 128, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1541, file: !17, line: 185, baseType: !38, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1541, file: !17, line: 186, baseType: !1569, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !17, line: 204, size: 960, elements: !1571)
!1571 = !{!1572, !1573, !1577, !1584}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1570, file: !17, line: 205, baseType: !1530, size: 768)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1570, file: !17, line: 206, baseType: !1574, size: 64, offset: 768)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!1536, !1569}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1570, file: !17, line: 207, baseType: !1578, size: 64, offset: 832)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1581, !1582, !1583}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1570, file: !17, line: 209, baseType: !1585, size: 64, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!27, !1581, !38}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1541, file: !17, line: 187, baseType: !1536, size: 64, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1541, file: !17, line: 188, baseType: !1590, size: 64, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1541, file: !17, line: 189, baseType: !1592, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !17, line: 157, size: 256, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1593, file: !17, line: 158, baseType: !952, size: 192, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1593, file: !17, line: 159, baseType: !1581, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1541, file: !17, line: 190, baseType: !668, size: 64, offset: 576)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1538, file: !17, line: 196, baseType: !1084, size: 64, offset: 640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1359, file: !1360, line: 100, baseType: !1581, size: 64, offset: 3776)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1359, file: !1360, line: 102, baseType: !1601, size: 64, offset: 3840)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1360, line: 107, size: 1152, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1612}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1602, file: !1360, line: 108, baseType: !672, size: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1602, file: !1360, line: 109, baseType: !1358, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1602, file: !1360, line: 110, baseType: !486, size: 32, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1602, file: !1360, line: 111, baseType: !54, size: 32, offset: 224)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1602, file: !1360, line: 112, baseType: !1609, size: 640, offset: 256)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 640, elements: !1610)
!1610 = !{!1611}
!1611 = !DISubrange(count: 10)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1602, file: !1360, line: 113, baseType: !1613, size: 256, offset: 896)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 256, elements: !872)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1359, file: !1360, line: 103, baseType: !1615, size: 640, offset: 3904)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 640, elements: !1610)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1359, file: !1360, line: 104, baseType: !1617, size: 256, offset: 4544)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 256, elements: !872)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1202, file: !119, line: 904, baseType: !1225, size: 64, offset: 9280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1202, file: !119, line: 906, baseType: !1620, size: 64, offset: 9344)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !119, line: 906, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1202, file: !119, line: 930, baseType: !54, size: 32, offset: 9408)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1202, file: !119, line: 933, baseType: !54, size: 32, offset: 9440)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1202, file: !119, line: 935, baseType: !1625, size: 64, offset: 9472)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !150, line: 103, size: 64, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1625, file: !150, line: 104, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !150, line: 101, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1202, file: !119, line: 940, baseType: !765, size: 64, offset: 9536)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1202, file: !119, line: 942, baseType: !1518, size: 256, offset: 9600)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1199, file: !119, line: 986, baseType: !1633, offset: 10240)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, elements: !1634)
!1634 = !{!1635}
!1635 = !DISubrange(count: -1)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !904, file: !905, line: 882, baseType: !1198, size: 64, offset: 9792)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !904, file: !905, line: 884, baseType: !27, size: 32, offset: 9856)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !904, file: !905, line: 885, baseType: !27, size: 32, offset: 9888)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !904, file: !905, line: 886, baseType: !27, size: 32, offset: 9920)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !904, file: !905, line: 888, baseType: !27, size: 32, offset: 9952)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !904, file: !905, line: 890, baseType: !44, size: 64, offset: 9984)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !904, file: !905, line: 893, baseType: !7, size: 32, offset: 10048)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !904, file: !905, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !904, file: !905, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !904, file: !905, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !904, file: !905, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !904, file: !905, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !904, file: !905, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !904, file: !905, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !904, file: !905, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !904, file: !905, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !904, file: !905, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !904, file: !905, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !904, file: !905, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !904, file: !905, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !904, file: !905, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !904, file: !905, line: 969, baseType: !44, size: 64, offset: 10176)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !904, file: !905, line: 971, baseType: !1659, size: 448, offset: 10240)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !113, line: 25, size: 448, elements: !1660)
!1660 = !{!1661, !1662, !1667}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1659, file: !113, line: 26, baseType: !44, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1659, file: !113, line: 27, baseType: !1663, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!441, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !113, line: 28, baseType: !1668, size: 320, offset: 128)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !113, line: 28, size: 320, elements: !1669)
!1669 = !{!1670, !1680, !1705}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1668, file: !113, line: 37, baseType: !1671, size: 320)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !113, line: 30, size: 320, elements: !1672)
!1672 = !{!1673, !1675, !1676, !1677, !1678, !1679}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1671, file: !113, line: 31, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1671, file: !113, line: 32, baseType: !549, size: 32, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1671, file: !113, line: 33, baseType: !549, size: 32, offset: 96)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1671, file: !113, line: 34, baseType: !549, size: 32, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1671, file: !113, line: 35, baseType: !553, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1671, file: !113, line: 36, baseType: !1674, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1668, file: !113, line: 47, baseType: !1681, size: 192)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !113, line: 39, size: 192, elements: !1682)
!1682 = !{!1683, !1684, !1685, !1704}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1681, file: !113, line: 40, baseType: !1069, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1681, file: !113, line: 41, baseType: !112, size: 32, offset: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !113, line: 42, baseType: !1686, size: 64, offset: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !113, line: 42, size: 64, elements: !1687)
!1687 = !{!1688, !1696}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1686, file: !113, line: 43, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1691, line: 7, size: 128, elements: !1692)
!1691 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1692 = !{!1693, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1690, file: !1691, line: 8, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !42, line: 93, baseType: !48)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1690, file: !1691, line: 9, baseType: !48, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1686, file: !113, line: 44, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1699, line: 7, size: 64, elements: !1700)
!1699 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1700 = !{!1701, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1698, file: !1699, line: 8, baseType: !1702, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1699, line: 5, baseType: !1299)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1698, file: !1699, line: 9, baseType: !1299, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1681, file: !113, line: 46, baseType: !553, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1668, file: !113, line: 55, baseType: !1706, size: 256)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !113, line: 49, size: 256, elements: !1707)
!1707 = !{!1708, !1716, !1717, !1718, !1719}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1706, file: !113, line: 50, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1711, line: 36, size: 64, elements: !1712)
!1711 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1712 = !{!1713, !1714, !1715}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1710, file: !1711, line: 37, baseType: !27, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1710, file: !1711, line: 38, baseType: !1351, size: 16, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1710, file: !1711, line: 39, baseType: !1351, size: 16, offset: 48)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1706, file: !113, line: 51, baseType: !27, size: 32, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1706, file: !113, line: 52, baseType: !27, size: 32, offset: 96)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1706, file: !113, line: 53, baseType: !44, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1706, file: !113, line: 54, baseType: !44, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !904, file: !905, line: 973, baseType: !1721, size: 32, offset: 10688)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !30, line: 27, baseType: !1722)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !42, line: 28, baseType: !27)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !904, file: !905, line: 974, baseType: !1721, size: 32, offset: 10720)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !904, file: !905, line: 978, baseType: !44, size: 64, offset: 10752)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !904, file: !905, line: 987, baseType: !903, size: 64, offset: 10816)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !904, file: !905, line: 990, baseType: !903, size: 64, offset: 10880)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !904, file: !905, line: 995, baseType: !102, size: 128, offset: 10944)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !904, file: !905, line: 996, baseType: !102, size: 128, offset: 11072)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !904, file: !905, line: 997, baseType: !903, size: 64, offset: 11200)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !904, file: !905, line: 1005, baseType: !102, size: 128, offset: 11264)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !904, file: !905, line: 1006, baseType: !102, size: 128, offset: 11392)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !904, file: !905, line: 1009, baseType: !859, size: 64, offset: 11520)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !904, file: !905, line: 1010, baseType: !1734, size: 512, offset: 11584)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 512, elements: !872)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !904, file: !905, line: 1011, baseType: !102, size: 128, offset: 12096)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !904, file: !905, line: 1012, baseType: !102, size: 128, offset: 12224)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !904, file: !905, line: 1014, baseType: !1556, size: 64, offset: 12352)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !904, file: !905, line: 1017, baseType: !743, size: 64, offset: 12416)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !904, file: !905, line: 1020, baseType: !743, size: 64, offset: 12480)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !904, file: !905, line: 1023, baseType: !25, size: 64, offset: 12544)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !904, file: !905, line: 1025, baseType: !553, size: 64, offset: 12608)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !904, file: !905, line: 1026, baseType: !553, size: 64, offset: 12672)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !904, file: !905, line: 1031, baseType: !553, size: 64, offset: 12736)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !904, file: !905, line: 1032, baseType: !1745, size: 192, offset: 12800)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !905, line: 324, size: 192, elements: !1746)
!1746 = !{!1747, !1748, !1749}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1745, file: !905, line: 326, baseType: !553, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1745, file: !905, line: 327, baseType: !553, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1745, file: !905, line: 328, baseType: !774, size: 32, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !904, file: !905, line: 1041, baseType: !44, size: 64, offset: 12992)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !904, file: !905, line: 1042, baseType: !44, size: 64, offset: 13056)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !904, file: !905, line: 1045, baseType: !553, size: 64, offset: 13120)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !904, file: !905, line: 1048, baseType: !553, size: 64, offset: 13184)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !904, file: !905, line: 1051, baseType: !44, size: 64, offset: 13248)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !904, file: !905, line: 1052, baseType: !44, size: 64, offset: 13312)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !904, file: !905, line: 1055, baseType: !1757, size: 640, offset: 13376)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1758, line: 132, size: 640, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1759 = !{!1760, !1766, !1767}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1757, file: !1758, line: 133, baseType: !1761, size: 576)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1762, size: 576, elements: !407)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1758, line: 117, size: 192, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1762, file: !1758, line: 118, baseType: !553, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1762, file: !1758, line: 119, baseType: !1078, size: 128, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1757, file: !1758, line: 134, baseType: !7, size: 32, offset: 576)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1757, file: !1758, line: 135, baseType: !7, size: 32, offset: 608)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !904, file: !905, line: 1058, baseType: !1769, size: 448, offset: 14016)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1758, line: 144, size: 448, elements: !1770)
!1770 = !{!1771, !1772, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1769, file: !1758, line: 145, baseType: !818, size: 128, align: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1769, file: !1758, line: 146, baseType: !761, size: 256, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1769, file: !1758, line: 147, baseType: !7, size: 32, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !904, file: !905, line: 1064, baseType: !1775, size: 64, offset: 14464)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1778, line: 110, size: 1472, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1829, !1830, !1831, !1839}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1777, file: !1778, line: 111, baseType: !765, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1777, file: !1778, line: 112, baseType: !486, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1777, file: !1778, line: 113, baseType: !495, size: 32, offset: 96)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1777, file: !1778, line: 114, baseType: !486, size: 32, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1777, file: !1778, line: 115, baseType: !495, size: 32, offset: 160)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1777, file: !1778, line: 116, baseType: !486, size: 32, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1777, file: !1778, line: 117, baseType: !495, size: 32, offset: 224)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1777, file: !1778, line: 118, baseType: !486, size: 32, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1777, file: !1778, line: 119, baseType: !495, size: 32, offset: 288)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1777, file: !1778, line: 120, baseType: !7, size: 32, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1777, file: !1778, line: 121, baseType: !1791, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1792, line: 24, baseType: !1793)
!1792 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1792, line: 24, size: 64, elements: !1794)
!1794 = !{!1795}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1793, file: !1792, line: 24, baseType: !553, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1777, file: !1778, line: 122, baseType: !1791, size: 64, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1777, file: !1778, line: 123, baseType: !1791, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1777, file: !1778, line: 124, baseType: !1791, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1777, file: !1778, line: 125, baseType: !1791, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1777, file: !1778, line: 127, baseType: !92, size: 8, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1777, file: !1778, line: 129, baseType: !1407, size: 64, offset: 768)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1777, file: !1778, line: 130, baseType: !1407, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1777, file: !1778, line: 131, baseType: !1407, size: 64, offset: 896)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1777, file: !1778, line: 132, baseType: !1407, size: 64, offset: 960)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1777, file: !1778, line: 135, baseType: !25, size: 64, offset: 1024)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1777, file: !1778, line: 137, baseType: !1807, size: 64, offset: 1088)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1809, line: 14, size: 1088, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1808, file: !1809, line: 15, baseType: !863, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1808, file: !1809, line: 17, baseType: !1291, size: 320, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1808, file: !1809, line: 19, baseType: !44, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1808, file: !1809, line: 20, baseType: !765, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1808, file: !1809, line: 23, baseType: !672, size: 128, offset: 512)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1808, file: !1809, line: 24, baseType: !486, size: 32, offset: 640)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1808, file: !1809, line: 29, baseType: !765, size: 64, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1808, file: !1809, line: 36, baseType: !1819, size: 320, offset: 768)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1820, line: 15, size: 320, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1819, file: !1820, line: 16, baseType: !774, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1819, file: !1820, line: 18, baseType: !27, size: 32, offset: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1819, file: !1820, line: 19, baseType: !27, size: 32, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1819, file: !1820, line: 20, baseType: !27, size: 32, offset: 96)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1819, file: !1820, line: 21, baseType: !27, size: 32, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1819, file: !1820, line: 22, baseType: !44, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1819, file: !1820, line: 23, baseType: !44, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1777, file: !1778, line: 138, baseType: !1358, size: 64, offset: 1152)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1777, file: !1778, line: 139, baseType: !1601, size: 64, offset: 1216)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1777, file: !1778, line: 140, baseType: !1832, size: 64, offset: 1280)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1778, line: 25, size: 64, elements: !1834)
!1834 = !{!1835, !1836, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1833, file: !1778, line: 26, baseType: !54, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1833, file: !1778, line: 27, baseType: !27, size: 32, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1833, file: !1778, line: 28, baseType: !1838, offset: 64)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, elements: !1634)
!1839 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !1778, line: 142, baseType: !1840, size: 128, offset: 1344)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1777, file: !1778, line: 142, size: 128, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1840, file: !1778, line: 143, baseType: !27, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1840, file: !1778, line: 144, baseType: !818, size: 128, align: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !904, file: !905, line: 1067, baseType: !1775, size: 64, offset: 14528)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !904, file: !905, line: 1070, baseType: !1775, size: 64, offset: 14592)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !904, file: !905, line: 1074, baseType: !1407, size: 64, offset: 14656)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !904, file: !905, line: 1084, baseType: !1848, size: 128, offset: 14720)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !1849)
!1849 = !{!1850}
!1850 = !DISubrange(count: 16)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !904, file: !905, line: 1086, baseType: !1852, size: 64, offset: 14848)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !905, line: 55, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !904, file: !905, line: 1089, baseType: !1855, size: 64, offset: 14912)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1856, line: 12, size: 64, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1857 = !{!1858}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1855, file: !1856, line: 13, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1856, line: 8, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !904, file: !905, line: 1090, baseType: !1862, size: 128, offset: 14976)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1863, line: 13, size: 128, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1864 = !{!1865}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1862, file: !1863, line: 14, baseType: !102, size: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !904, file: !905, line: 1097, baseType: !1867, size: 64, offset: 15104)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !905, line: 50, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !904, file: !905, line: 1100, baseType: !1870, size: 64, offset: 15168)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !905, line: 1100, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !904, file: !905, line: 1103, baseType: !1873, size: 64, offset: 15232)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !905, line: 53, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !904, file: !905, line: 1107, baseType: !1876, size: 64, offset: 15296)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1878, line: 31, size: 576, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1879 = !{!1880, !1881, !1884, !1887, !1890, !1891, !1894, !1897, !1898}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1877, file: !1878, line: 32, baseType: !863, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1877, file: !1878, line: 33, baseType: !1882, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1878, line: 9, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1877, file: !1878, line: 34, baseType: !1885, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1878, line: 10, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1877, file: !1878, line: 35, baseType: !1888, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1878, line: 8, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1877, file: !1878, line: 36, baseType: !883, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1877, file: !1878, line: 37, baseType: !1892, size: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1409, line: 34, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1877, file: !1878, line: 38, baseType: !1895, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1878, line: 38, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1877, file: !1878, line: 39, baseType: !1895, size: 64, offset: 448)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1877, file: !1878, line: 40, baseType: !1899, size: 64, offset: 512)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1901, line: 771, size: 384, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1902 = !{!1903, !1904, !1905, !1906}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1900, file: !1901, line: 772, baseType: !1391, size: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1900, file: !1901, line: 773, baseType: !1358, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1900, file: !1901, line: 774, baseType: !1601, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1900, file: !1901, line: 775, baseType: !1907, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1909, line: 209, size: 4736, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1910 = !{!1911, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1908, file: !1909, line: 215, baseType: !1912, size: 896)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 896, elements: !2371)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1909, line: 152, size: 1600, elements: !1915)
!1915 = !{!1916, !2422, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2545}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1914, file: !1909, line: 154, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1909, line: 389, size: 7872, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !2322, !2339, !2340, !2344, !2345, !2346, !2347, !2348, !2349, !2368, !2369, !2373, !2374, !2375, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2409, !2412, !2413, !2420}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1918, file: !1909, line: 391, baseType: !1914, size: 1600)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1918, file: !1909, line: 393, baseType: !44, size: 64, offset: 1600)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1918, file: !1909, line: 401, baseType: !27, size: 32, offset: 1664)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1918, file: !1909, line: 404, baseType: !27, size: 32, offset: 1696)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1918, file: !1909, line: 417, baseType: !27, size: 32, offset: 1728)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1918, file: !1909, line: 418, baseType: !27, size: 32, offset: 1760)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1918, file: !1909, line: 419, baseType: !27, size: 32, offset: 1792)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1918, file: !1909, line: 432, baseType: !27, size: 32, offset: 1824)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1918, file: !1909, line: 433, baseType: !27, size: 32, offset: 1856)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1918, file: !1909, line: 434, baseType: !27, size: 32, offset: 1888)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1918, file: !1909, line: 436, baseType: !27, size: 32, offset: 1920)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1918, file: !1909, line: 439, baseType: !7, size: 32, offset: 1952)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1918, file: !1909, line: 441, baseType: !1933, size: 64, offset: 1984)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1935, line: 190, size: 1152, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !2314, !2315, !2316, !2317, !2318, !2321}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1934, file: !1935, line: 191, baseType: !54, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1934, file: !1935, line: 192, baseType: !54, size: 32, offset: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1934, file: !1935, line: 202, baseType: !1933, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1934, file: !1935, line: 203, baseType: !21, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1934, file: !1935, line: 205, baseType: !952, size: 192, align: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1934, file: !1935, line: 207, baseType: !1332, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1934, file: !1935, line: 208, baseType: !7, size: 32, offset: 448)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1934, file: !1935, line: 209, baseType: !1945, size: 256, offset: 512)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1934, file: !1935, line: 209, size: 256, elements: !1946)
!1946 = !{!1947, !1956, !1960}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1945, file: !1935, line: 210, baseType: !1948, size: 256)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1935, line: 153, size: 256, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1955}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1948, file: !1935, line: 154, baseType: !44, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1948, file: !1935, line: 156, baseType: !1084, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1948, file: !1935, line: 162, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1935, line: 162, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1948, file: !1935, line: 167, baseType: !44, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1945, file: !1935, line: 211, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1935, line: 170, size: 64, elements: !1958)
!1958 = !{!1959}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1957, file: !1935, line: 171, baseType: !1933, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1945, file: !1935, line: 212, baseType: !1961, size: 256)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1935, line: 174, size: 256, elements: !1962)
!1962 = !{!1963, !2309, !2312, !2313}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1961, file: !1935, line: 175, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1935, line: 271, size: 768, elements: !1967)
!1967 = !{!1968, !2273, !2277, !2278, !2279, !2280, !2281, !2285, !2286, !2287, !2288, !2305}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1966, file: !1935, line: 276, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!27, !1972}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1935, line: 251, size: 1216, elements: !1974)
!1974 = !{!1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1973, file: !1935, line: 253, baseType: !1933, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1973, file: !1935, line: 254, baseType: !1225, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1973, file: !1935, line: 255, baseType: !749, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1973, file: !1935, line: 256, baseType: !25, size: 64, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1973, file: !1935, line: 259, baseType: !761, size: 256, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1973, file: !1935, line: 260, baseType: !761, size: 256, offset: 512)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1973, file: !1935, line: 261, baseType: !27, size: 32, offset: 768)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1973, file: !1935, line: 262, baseType: !102, size: 128, offset: 832)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1973, file: !1935, line: 263, baseType: !406, size: 64, offset: 960)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1973, file: !1935, line: 265, baseType: !40, size: 64, offset: 1024)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1973, file: !1935, line: 266, baseType: !1403, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1973, file: !1935, line: 267, baseType: !1403, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1973, file: !1935, line: 268, baseType: !1988, size: 64, offset: 1152)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1991, line: 563, size: 1024, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1992 = !{!1993, !2049, !2050, !2054, !2058, !2062, !2239, !2243, !2247, !2251, !2252, !2253, !2257, !2261, !2265, !2269}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1990, file: !1991, line: 564, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1997}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !119, line: 625, size: 1344, elements: !1999)
!1999 = !{!2000, !2009, !2010, !2016, !2023, !2024, !2029, !2030, !2035, !2036, !2039, !2040, !2041, !2042, !2043, !2044, !2047}
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !119, line: 628, baseType: !2001, size: 128)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !119, line: 628, size: 128, elements: !2002)
!2002 = !{!2003, !2008}
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !2001, file: !119, line: 629, baseType: !2004, size: 128)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2001, file: !119, line: 629, size: 128, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2004, file: !119, line: 631, baseType: !44, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2004, file: !119, line: 632, baseType: !44, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2001, file: !119, line: 635, baseType: !818, size: 128, align: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1998, file: !119, line: 639, baseType: !1198, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1998, file: !119, line: 640, baseType: !2011, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1234, line: 297, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1234, line: 297, size: 64, elements: !2013)
!2013 = !{!2014}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2012, file: !1234, line: 297, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1239, line: 19, baseType: !44)
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !119, line: 646, baseType: !2017, size: 64, offset: 256)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !119, line: 646, size: 64, elements: !2018)
!2018 = !{!2019, !2022}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2017, file: !119, line: 647, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !119, line: 542, baseType: !44)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2017, file: !119, line: 648, baseType: !2021, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1998, file: !119, line: 666, baseType: !27, size: 32, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1998, file: !119, line: 667, baseType: !2025, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !119, line: 579, size: 320, elements: !2027)
!2027 = !{!2028}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2026, file: !119, line: 580, baseType: !1253, size: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1998, file: !119, line: 670, baseType: !1403, size: 8, offset: 448)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1998, file: !119, line: 681, baseType: !2031, size: 256, offset: 512)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1998, file: !119, line: 678, size: 256, elements: !2032)
!2032 = !{!2033, !2034}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2031, file: !119, line: 679, baseType: !952, size: 192, align: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2031, file: !119, line: 680, baseType: !44, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1998, file: !119, line: 689, baseType: !102, size: 128, offset: 768)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1998, file: !119, line: 691, baseType: !2037, size: 64, offset: 896)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !119, line: 691, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1998, file: !119, line: 694, baseType: !1988, size: 64, offset: 960)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1998, file: !119, line: 697, baseType: !44, size: 64, offset: 1024)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1998, file: !119, line: 699, baseType: !1225, size: 64, offset: 1088)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1998, file: !119, line: 700, baseType: !25, size: 64, offset: 1152)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1998, file: !119, line: 711, baseType: !765, size: 64, offset: 1216)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1998, file: !119, line: 717, baseType: !2045, size: 64, offset: 1280)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !119, line: 717, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1998, file: !119, line: 722, baseType: !2048, offset: 1344)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !119, line: 570, elements: !680)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1990, file: !1991, line: 569, baseType: !1994, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1990, file: !1991, line: 571, baseType: !2051, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!27, !1997, !44}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1990, file: !1991, line: 572, baseType: !2055, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!27, !1997}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1990, file: !1991, line: 578, baseType: !2059, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!27, !1997, !44, !44, !44}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1990, file: !1991, line: 580, baseType: !2063, size: 64, offset: 320)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!2066, !2067}
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !119, line: 1184, baseType: !7)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1991, line: 512, size: 896, elements: !2069)
!2069 = !{!2070, !2078, !2079, !2086, !2093, !2103, !2232, !2233, !2235, !2237}
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !1991, line: 513, baseType: !2071, size: 320)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !1991, line: 513, size: 320, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076, !2077}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2071, file: !1991, line: 514, baseType: !1997, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2071, file: !1991, line: 515, baseType: !326, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2071, file: !1991, line: 516, baseType: !44, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2071, file: !1991, line: 517, baseType: !44, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2071, file: !1991, line: 518, baseType: !44, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2068, file: !1991, line: 520, baseType: !118, size: 32, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2068, file: !1991, line: 522, baseType: !2080, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1239, line: 22, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 22, size: 64, elements: !2083)
!2083 = !{!2084}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2082, file: !1239, line: 22, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1239, line: 15, baseType: !44)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2068, file: !1991, line: 524, baseType: !2087, size: 64, offset: 448)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1234, line: 372, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1234, line: 372, size: 64, elements: !2090)
!2090 = !{!2091}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2089, file: !1234, line: 372, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1239, line: 16, baseType: !44)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !1991, line: 527, baseType: !2094, size: 64, offset: 512)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2068, file: !1991, line: 527, size: 64, elements: !2095)
!2095 = !{!2096, !2102}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2094, file: !1991, line: 528, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1239, line: 21, baseType: !2098)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 21, size: 64, elements: !2099)
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2098, file: !1239, line: 21, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1239, line: 14, baseType: !44)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2094, file: !1991, line: 529, baseType: !2081, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2068, file: !1991, line: 534, baseType: !2104, size: 64, offset: 576)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !119, line: 74, size: 512, align: 128, elements: !2106)
!2106 = !{!2107, !2108, !2226, !2231}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2105, file: !119, line: 75, baseType: !44, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !119, line: 83, baseType: !2109, size: 320, offset: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !119, line: 83, size: 320, elements: !2110)
!2110 = !{!2111, !2132, !2146, !2150, !2225}
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !2109, file: !119, line: 84, baseType: !2112, size: 320)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2109, file: !119, line: 84, size: 320, elements: !2113)
!2113 = !{!2114, !2125, !2126, !2131}
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !119, line: 90, baseType: !2115, size: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !119, line: 90, size: 128, elements: !2116)
!2116 = !{!2117, !2118, !2123, !2124}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2115, file: !119, line: 91, baseType: !102, size: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !119, line: 94, baseType: !2119, size: 128)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !119, line: 94, size: 128, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2119, file: !119, line: 96, baseType: !25, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2119, file: !119, line: 98, baseType: !7, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2115, file: !119, line: 102, baseType: !102, size: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2115, file: !119, line: 103, baseType: !102, size: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2112, file: !119, line: 106, baseType: !476, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !119, line: 107, baseType: !2127, size: 64, offset: 192)
!2127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !119, line: 107, size: 64, elements: !2128)
!2128 = !{!2129, !2130}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2127, file: !119, line: 108, baseType: !44, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2127, file: !119, line: 109, baseType: !44, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2112, file: !119, line: 117, baseType: !44, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2109, file: !119, line: 119, baseType: !2133, size: 320)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2109, file: !119, line: 119, size: 320, elements: !2134)
!2134 = !{!2135, !2136, !2139, !2140, !2141}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2133, file: !119, line: 124, baseType: !44, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2133, file: !119, line: 125, baseType: !2137, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !119, line: 125, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2133, file: !119, line: 126, baseType: !44, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2133, file: !119, line: 127, baseType: !44, size: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !119, line: 128, baseType: !2142, size: 64, offset: 256)
!2142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !119, line: 128, size: 64, elements: !2143)
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2142, file: !119, line: 133, baseType: !44, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2142, file: !119, line: 138, baseType: !765, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, scope: !2109, file: !119, line: 141, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2109, file: !119, line: 141, size: 64, elements: !2148)
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2147, file: !119, line: 142, baseType: !44, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2109, file: !119, line: 144, baseType: !2151, size: 128)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2109, file: !119, line: 144, size: 128, elements: !2152)
!2152 = !{!2153, !2224}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2151, file: !119, line: 146, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !142, line: 126, size: 1216, elements: !2156)
!2156 = !{!2157, !2167, !2188, !2189, !2190, !2191, !2192, !2206, !2207, !2208}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2155, file: !142, line: 127, baseType: !2158, size: 384)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !142, line: 21, size: 384, elements: !2159)
!2159 = !{!2160, !2161, !2163, !2164, !2165, !2166}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2158, file: !142, line: 22, baseType: !44, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2158, file: !142, line: 23, baseType: !2162, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2158, file: !142, line: 24, baseType: !2162, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2158, file: !142, line: 25, baseType: !44, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2158, file: !142, line: 26, baseType: !44, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2158, file: !142, line: 27, baseType: !44, size: 64, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2155, file: !142, line: 128, baseType: !2168, size: 128, offset: 384)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2169, line: 105, size: 128, elements: !2170)
!2169 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2168, file: !2169, line: 110, baseType: !44, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2168, file: !2169, line: 118, baseType: !2173, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2169, line: 95, size: 448, elements: !2175)
!2175 = !{!2176, !2177, !2183, !2184, !2185, !2186, !2187}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2174, file: !2169, line: 96, baseType: !765, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2174, file: !2169, line: 97, baseType: !2178, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2169, line: 60, baseType: !2180)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2174, file: !2169, line: 98, baseType: !2178, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2174, file: !2169, line: 99, baseType: !1403, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2174, file: !2169, line: 100, baseType: !1403, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2174, file: !2169, line: 101, baseType: !818, size: 128, align: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2174, file: !2169, line: 102, baseType: !2182, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2155, file: !142, line: 129, baseType: !1557, size: 256, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2155, file: !142, line: 130, baseType: !141, size: 32, offset: 768)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2155, file: !142, line: 131, baseType: !7, size: 32, offset: 800)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2155, file: !142, line: 132, baseType: !44, size: 64, offset: 832)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2155, file: !142, line: 133, baseType: !2193, size: 64, offset: 896)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2195)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !142, line: 77, size: 192, elements: !2196)
!2196 = !{!2197, !2201, !2202}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2195, file: !142, line: 83, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !2104}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2195, file: !142, line: 89, baseType: !2063, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2195, file: !142, line: 100, baseType: !2203, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!27, !2154, !44, !44, !27}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2155, file: !142, line: 134, baseType: !25, size: 64, offset: 960)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2155, file: !142, line: 135, baseType: !27, size: 32, offset: 1024)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !142, line: 136, baseType: !2209, size: 128, offset: 1088)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2155, file: !142, line: 136, size: 128, elements: !2210)
!2210 = !{!2211, !2217}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2209, file: !142, line: 137, baseType: !2212, size: 128)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2213, line: 6, size: 128, elements: !2214)
!2213 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2212, file: !2213, line: 7, baseType: !553, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2212, file: !2213, line: 8, baseType: !553, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !142, line: 138, baseType: !2218)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !142, line: 138, elements: !2219)
!2219 = !{!2220, !2222}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2218, file: !142, line: 138, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2218, file: !142, line: 138, elements: !680)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2218, file: !142, line: 138, baseType: !2223)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2212, elements: !1634)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2151, file: !119, line: 147, baseType: !25, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2109, file: !119, line: 161, baseType: !818, size: 128, align: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !119, line: 164, baseType: !2227, size: 32, offset: 384)
!2227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !119, line: 164, size: 32, elements: !2228)
!2228 = !{!2229, !2230}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2227, file: !119, line: 169, baseType: !54, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2227, file: !119, line: 177, baseType: !7, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2105, file: !119, line: 181, baseType: !54, size: 32, offset: 416)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2068, file: !1991, line: 535, baseType: !2104, size: 64, offset: 640)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2068, file: !1991, line: 541, baseType: !2234, size: 64, offset: 704)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2068, file: !1991, line: 545, baseType: !2236, size: 64, offset: 768)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2068, file: !1991, line: 549, baseType: !2238, size: 64, offset: 832)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1234, line: 520, baseType: !2104)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1990, file: !1991, line: 581, baseType: !2240, size: 64, offset: 384)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!2066, !2067, !7}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1990, file: !1991, line: 582, baseType: !2244, size: 64, offset: 448)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!2066, !2067, !44, !44}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1990, file: !1991, line: 584, baseType: !2248, size: 64, offset: 512)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!44, !1997}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1990, file: !1991, line: 588, baseType: !2063, size: 64, offset: 576)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1990, file: !1991, line: 591, baseType: !2063, size: 64, offset: 640)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1990, file: !1991, line: 597, baseType: !2254, size: 64, offset: 704)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!27, !1997, !44, !25, !27, !27}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1990, file: !1991, line: 603, baseType: !2258, size: 64, offset: 768)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!21, !1997}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1990, file: !1991, line: 613, baseType: !2262, size: 64, offset: 832)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!27, !1997, !2045}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1990, file: !1991, line: 625, baseType: !2266, size: 64, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!2045, !1997, !44}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1990, file: !1991, line: 633, baseType: !2270, size: 64, offset: 960)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!2104, !1997, !44}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1966, file: !1935, line: 277, baseType: !2274, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !1972}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1966, file: !1935, line: 290, baseType: !799, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1966, file: !1935, line: 292, baseType: !787, size: 64, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1966, file: !1935, line: 293, baseType: !795, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1966, file: !1935, line: 294, baseType: !791, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1966, file: !1935, line: 296, baseType: !2282, size: 64, offset: 384)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!438, !1972, !406, !40, !46}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1966, file: !1935, line: 306, baseType: !40, size: 64, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1966, file: !1935, line: 313, baseType: !1403, size: 8, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1966, file: !1935, line: 314, baseType: !2282, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1966, file: !1935, line: 317, baseType: !2289, size: 64, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!2292, !1972, !2294}
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2293, line: 59, baseType: !7)
!2293 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2296, line: 37, size: 128, elements: !2297)
!2296 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2297 = !{!2298, !2304}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2295, file: !2296, line: 38, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2296, line: 31, baseType: !2300)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !1225, !2303, !2294}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2295, file: !2296, line: 39, baseType: !2292, size: 32, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1966, file: !1935, line: 320, baseType: !2306, size: 64, offset: 704)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!27, !1972, !1997}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1961, file: !1935, line: 176, baseType: !2310, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1935, line: 35, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1961, file: !1935, line: 177, baseType: !46, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1961, file: !1935, line: 178, baseType: !1933, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1934, file: !1935, line: 215, baseType: !25, size: 64, offset: 768)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1934, file: !1935, line: 221, baseType: !553, size: 64, offset: 832)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1934, file: !1935, line: 223, baseType: !31, size: 16, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1934, file: !1935, line: 224, baseType: !29, size: 16, offset: 912)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1934, file: !1935, line: 225, baseType: !2319, size: 64, offset: 960)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1935, line: 36, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1934, file: !1935, line: 227, baseType: !818, size: 128, align: 64, offset: 1024)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1918, file: !1909, line: 442, baseType: !2323, size: 448, offset: 2048)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1909, line: 138, size: 448, elements: !2324)
!2324 = !{!2325, !2326, !2327}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2323, file: !1909, line: 140, baseType: !1933, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2323, file: !1909, line: 141, baseType: !44, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2323, file: !1909, line: 142, baseType: !2328, size: 320, offset: 128)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2329, line: 11, size: 320, elements: !2330)
!2329 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2330 = !{!2331, !2332, !2333, !2338}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2328, file: !2329, line: 16, baseType: !672, size: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2328, file: !2329, line: 17, baseType: !44, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2328, file: !2329, line: 18, baseType: !2334, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{null, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2328, file: !2329, line: 19, baseType: !549, size: 32, offset: 256)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1918, file: !1909, line: 443, baseType: !2323, size: 448, offset: 2496)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1918, file: !1909, line: 446, baseType: !2341, offset: 2944)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2323, elements: !2342)
!2342 = !{!2343}
!2343 = !DISubrange(count: 0)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1918, file: !1909, line: 455, baseType: !98, size: 16, offset: 2944)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1918, file: !1909, line: 456, baseType: !98, size: 16, offset: 2960)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1918, file: !1909, line: 457, baseType: !98, size: 16, offset: 2976)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1918, file: !1909, line: 458, baseType: !98, size: 16, offset: 2992)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1918, file: !1909, line: 461, baseType: !1912, size: 896, offset: 3008)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1918, file: !1909, line: 463, baseType: !2350, size: 64, offset: 3904)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1909, line: 537, size: 41664, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2366}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2351, file: !1909, line: 538, baseType: !1953, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2351, file: !1909, line: 541, baseType: !7, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2351, file: !1909, line: 544, baseType: !27, size: 32, offset: 96)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2351, file: !1909, line: 547, baseType: !102, size: 128, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2351, file: !1909, line: 548, baseType: !818, size: 128, align: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2351, file: !1909, line: 555, baseType: !1918, size: 7872, offset: 384)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2351, file: !1909, line: 558, baseType: !1917, size: 64, offset: 8256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2351, file: !1909, line: 561, baseType: !54, size: 32, offset: 8320)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2351, file: !1909, line: 564, baseType: !7, size: 32, offset: 8352)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2351, file: !1909, line: 567, baseType: !2363, size: 32768, offset: 8384)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32768, elements: !2364)
!2364 = !{!2365}
!2365 = !DISubrange(count: 4096)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2351, file: !1909, line: 570, baseType: !2367, size: 512, offset: 41152)
!2367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !411)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1918, file: !1909, line: 469, baseType: !102, size: 128, offset: 3968)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1918, file: !1909, line: 478, baseType: !2370, size: 1792, offset: 4096)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 1792, elements: !2371)
!2371 = !{!2372}
!2372 = !DISubrange(count: 14)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1918, file: !1909, line: 487, baseType: !1917, size: 64, offset: 5888)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1918, file: !1909, line: 488, baseType: !1917, size: 64, offset: 5952)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1918, file: !1909, line: 491, baseType: !2376, size: 64, offset: 6016)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1909, line: 327, size: 896, elements: !2378)
!2378 = !{!2379, !2382, !2392, !2393, !2394, !2395, !2396}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2377, file: !1909, line: 332, baseType: !2380)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2381, line: 64, elements: !680)
!2381 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2377, file: !1909, line: 333, baseType: !2383, size: 192)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1909, line: 299, size: 192, elements: !2384)
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2383, file: !1909, line: 300, baseType: !2386, size: 192)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2387, line: 17, size: 192, elements: !2388)
!2387 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2388 = !{!2389, !2390, !2391}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2386, file: !2387, line: 18, baseType: !553, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2386, file: !2387, line: 19, baseType: !553, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2386, file: !2387, line: 20, baseType: !555, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2377, file: !1909, line: 339, baseType: !2383, size: 192, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2377, file: !1909, line: 347, baseType: !2383, size: 192, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2377, file: !1909, line: 353, baseType: !2383, size: 192, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2377, file: !1909, line: 366, baseType: !1917, size: 64, offset: 768)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2377, file: !1909, line: 367, baseType: !1917, size: 64, offset: 832)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1918, file: !1909, line: 492, baseType: !102, size: 128, offset: 6080)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1918, file: !1909, line: 495, baseType: !2383, size: 192, offset: 6208)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1918, file: !1909, line: 496, baseType: !2383, size: 192, offset: 6400)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1918, file: !1909, line: 497, baseType: !1745, size: 192, offset: 6592)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1918, file: !1909, line: 503, baseType: !102, size: 128, offset: 6784)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1918, file: !1909, line: 504, baseType: !761, size: 256, offset: 6912)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1918, file: !1909, line: 507, baseType: !59, size: 192, offset: 7168)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1918, file: !1909, line: 510, baseType: !1518, size: 256, offset: 7360)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1918, file: !1909, line: 513, baseType: !2406, size: 64, offset: 7616)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2408, line: 214, elements: !680)
!2408 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1918, file: !1909, line: 516, baseType: !2410, offset: 7680)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2411, line: 76, elements: !680)
!2411 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1918, file: !1909, line: 519, baseType: !54, size: 32, offset: 7680)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1918, file: !1909, line: 522, baseType: !2414, size: 128, offset: 7712)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1909, line: 370, size: 128, elements: !2415)
!2415 = !{!2416, !2417, !2418, !2419}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2414, file: !1909, line: 372, baseType: !1403, size: 8)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2414, file: !1909, line: 375, baseType: !27, size: 32, offset: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2414, file: !1909, line: 380, baseType: !27, size: 32, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2414, file: !1909, line: 386, baseType: !27, size: 32, offset: 96)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1918, file: !1909, line: 529, baseType: !2421, offset: 7872)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1917, elements: !1634)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1914, file: !1909, line: 157, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1909, line: 669, size: 1984, elements: !2425)
!2425 = !{!2426, !2430, !2434, !2438, !2439, !2440, !2441, !2445, !2449, !2450, !2456, !2460, !2461, !2465, !2469, !2473, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2526, !2527}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2424, file: !1909, line: 670, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!1913, !1913}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2424, file: !1909, line: 671, baseType: !2431, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!27, !1913}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2424, file: !1909, line: 672, baseType: !2435, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !1913}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2424, file: !1909, line: 673, baseType: !2435, size: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2424, file: !1909, line: 674, baseType: !2435, size: 64, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2424, file: !1909, line: 675, baseType: !2435, size: 64, offset: 320)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2424, file: !1909, line: 676, baseType: !2442, size: 64, offset: 384)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{null, !1913, !27}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2424, file: !1909, line: 677, baseType: !2446, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!27, !749, !1913}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2424, file: !1909, line: 679, baseType: !2446, size: 64, offset: 512)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2424, file: !1909, line: 682, baseType: !2451, size: 64, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!27, !2454}
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1909, line: 30, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2424, file: !1909, line: 683, baseType: !2457, size: 64, offset: 640)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{null, !2454}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2424, file: !1909, line: 684, baseType: !2457, size: 64, offset: 704)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2424, file: !1909, line: 685, baseType: !2462, size: 64, offset: 768)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2424, file: !1909, line: 686, baseType: !2466, size: 64, offset: 832)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!27, !903, !1907}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2424, file: !1909, line: 688, baseType: !2470, size: 64, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !903, !1907}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2424, file: !1909, line: 689, baseType: !2474, size: 64, offset: 960)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !903}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2424, file: !1909, line: 690, baseType: !2474, size: 64, offset: 1024)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2424, file: !1909, line: 691, baseType: !2474, size: 64, offset: 1088)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2424, file: !1909, line: 692, baseType: !2435, size: 64, offset: 1152)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2424, file: !1909, line: 694, baseType: !1403, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2424, file: !1909, line: 707, baseType: !1403, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2424, file: !1909, line: 719, baseType: !1403, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2424, file: !1909, line: 722, baseType: !27, size: 32, offset: 1248)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2424, file: !1909, line: 723, baseType: !21, size: 64, offset: 1280)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2424, file: !1909, line: 726, baseType: !21, size: 64, offset: 1344)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2424, file: !1909, line: 729, baseType: !2350, size: 64, offset: 1408)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2424, file: !1909, line: 732, baseType: !888, size: 192, offset: 1472)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2424, file: !1909, line: 738, baseType: !102, size: 128, offset: 1664)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2424, file: !1909, line: 744, baseType: !2490, size: 64, offset: 1792)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1909, line: 580, size: 1728, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2502, !2503, !2504, !2508, !2512, !2513, !2514, !2515, !2516, !2520, !2524, !2525}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2491, file: !1909, line: 586, baseType: !2367, size: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2491, file: !1909, line: 587, baseType: !44, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2491, file: !1909, line: 593, baseType: !40, size: 64, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2491, file: !1909, line: 596, baseType: !7, size: 32, offset: 640)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2491, file: !1909, line: 604, baseType: !7, size: 32, offset: 672)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2491, file: !1909, line: 610, baseType: !2423, size: 64, offset: 704)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2491, file: !1909, line: 611, baseType: !102, size: 128, offset: 768)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2491, file: !1909, line: 612, baseType: !2501, size: 64, offset: 896)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2491, file: !1909, line: 614, baseType: !1969, size: 64, offset: 960)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2491, file: !1909, line: 615, baseType: !2274, size: 64, offset: 1024)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2491, file: !1909, line: 621, baseType: !2505, size: 64, offset: 1088)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!553, !1913, !2490}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2491, file: !1909, line: 625, baseType: !2509, size: 64, offset: 1152)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!771, !1913, !2490}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2491, file: !1909, line: 628, baseType: !799, size: 64, offset: 1216)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2491, file: !1909, line: 631, baseType: !787, size: 64, offset: 1280)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2491, file: !1909, line: 632, baseType: !795, size: 64, offset: 1344)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2491, file: !1909, line: 633, baseType: !791, size: 64, offset: 1408)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2491, file: !1909, line: 640, baseType: !2517, size: 64, offset: 1472)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!27, !1913, !2490, !553}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2491, file: !1909, line: 645, baseType: !2521, size: 64, offset: 1536)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!27, !1913, !2490, !771}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2491, file: !1909, line: 654, baseType: !2282, size: 64, offset: 1600)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2491, file: !1909, line: 657, baseType: !2289, size: 64, offset: 1664)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2424, file: !1909, line: 745, baseType: !2490, size: 64, offset: 1856)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2424, file: !1909, line: 754, baseType: !7, size: 32, offset: 1920)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1914, file: !1909, line: 160, baseType: !2168, size: 128, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1914, file: !1909, line: 163, baseType: !102, size: 128, offset: 256)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1914, file: !1909, line: 164, baseType: !102, size: 128, offset: 384)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1914, file: !1909, line: 167, baseType: !102, size: 128, offset: 512)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1914, file: !1909, line: 173, baseType: !27, size: 32, offset: 640)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1914, file: !1909, line: 175, baseType: !7, size: 32, offset: 672)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1914, file: !1909, line: 183, baseType: !553, size: 64, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1914, file: !1909, line: 189, baseType: !54, size: 32, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1914, file: !1909, line: 192, baseType: !1518, size: 256, offset: 832)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1914, file: !1909, line: 193, baseType: !2538, size: 448, offset: 1088)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1519, line: 120, size: 448, elements: !2539)
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2538, file: !1519, line: 121, baseType: !1518, size: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2538, file: !1519, line: 122, baseType: !818, size: 128, align: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2538, file: !1519, line: 125, baseType: !2543, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1519, line: 18, flags: DIFlagFwdDecl)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1914, file: !1909, line: 199, baseType: !1913, size: 64, offset: 1536)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1908, file: !1909, line: 218, baseType: !863, size: 32, offset: 896)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1908, file: !1909, line: 226, baseType: !1907, size: 64, offset: 960)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1908, file: !1909, line: 229, baseType: !1917, size: 64, offset: 1024)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1908, file: !1909, line: 232, baseType: !27, size: 32, offset: 1088)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1908, file: !1909, line: 241, baseType: !102, size: 128, offset: 1152)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1908, file: !1909, line: 242, baseType: !102, size: 128, offset: 1280)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1908, file: !1909, line: 243, baseType: !102, size: 128, offset: 1408)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1908, file: !1909, line: 246, baseType: !102, size: 128, offset: 1536)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1908, file: !1909, line: 255, baseType: !2370, size: 1792, offset: 1664)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1908, file: !1909, line: 258, baseType: !102, size: 128, offset: 3456)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1908, file: !1909, line: 259, baseType: !102, size: 128, offset: 3584)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1908, file: !1909, line: 265, baseType: !672, size: 128, offset: 3712)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1908, file: !1909, line: 271, baseType: !102, size: 128, offset: 3840)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1908, file: !1909, line: 277, baseType: !102, size: 128, offset: 3968)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1908, file: !1909, line: 278, baseType: !102, size: 128, offset: 4096)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1908, file: !1909, line: 279, baseType: !102, size: 128, offset: 4224)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1908, file: !1909, line: 288, baseType: !1917, size: 64, offset: 4352)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1908, file: !1909, line: 289, baseType: !1917, size: 64, offset: 4416)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1908, file: !1909, line: 290, baseType: !1907, size: 64, offset: 4480)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1908, file: !1909, line: 293, baseType: !1403, size: 8, offset: 4544)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1908, file: !1909, line: 296, baseType: !818, size: 128, align: 64, offset: 4608)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !904, file: !905, line: 1110, baseType: !2568, size: 64, offset: 15360)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2570, line: 93, size: 8768, elements: !2571)
!2570 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2622, !2631, !2632, !2634, !2635, !2636, !2639, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2677, !2678, !2685, !2695, !2758, !2759, !2762, !2763, !2764, !2765, !2766, !2767}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2569, file: !2570, line: 94, baseType: !863, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2569, file: !2570, line: 95, baseType: !54, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2569, file: !2570, line: 96, baseType: !27, size: 32, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2569, file: !2570, line: 97, baseType: !27, size: 32, offset: 96)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2569, file: !2570, line: 98, baseType: !102, size: 128, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2569, file: !2570, line: 100, baseType: !59, size: 192, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2569, file: !2570, line: 103, baseType: !903, size: 64, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2569, file: !2570, line: 106, baseType: !2580, size: 192, offset: 512)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2581, line: 32, size: 192, elements: !2582)
!2581 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2580, file: !2581, line: 33, baseType: !102, size: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2580, file: !2581, line: 34, baseType: !2585, size: 64, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2586, line: 25, baseType: !2587)
!2586 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2586, line: 23, size: 64, elements: !2588)
!2588 = !{!2589}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2587, file: !2586, line: 24, baseType: !1149, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2569, file: !2570, line: 109, baseType: !668, size: 64, offset: 704)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2569, file: !2570, line: 112, baseType: !27, size: 32, offset: 768)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2569, file: !2570, line: 114, baseType: !27, size: 32, offset: 800)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2569, file: !2570, line: 115, baseType: !903, size: 64, offset: 832)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2569, file: !2570, line: 118, baseType: !27, size: 32, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2569, file: !2570, line: 119, baseType: !7, size: 32, offset: 928)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2569, file: !2570, line: 121, baseType: !2597, size: 64, offset: 960)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2570, line: 80, size: 448, elements: !2599)
!2599 = !{!2600, !2601, !2607}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2598, file: !2570, line: 81, baseType: !54, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2598, file: !2570, line: 82, baseType: !2602, size: 128, offset: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2570, line: 75, size: 128, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2602, file: !2570, line: 76, baseType: !903, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2602, file: !2570, line: 77, baseType: !2606, size: 64, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2598, file: !2570, line: 83, baseType: !1557, size: 256, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2569, file: !2570, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2569, file: !2570, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2569, file: !2570, line: 138, baseType: !7, size: 32, offset: 1056)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2569, file: !2570, line: 139, baseType: !102, size: 128, offset: 1088)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2569, file: !2570, line: 142, baseType: !1022, size: 512, offset: 1216)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2569, file: !2570, line: 143, baseType: !1030, size: 64, offset: 1728)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2569, file: !2570, line: 150, baseType: !2615, size: 256, offset: 1792)
!2615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2616, size: 256, elements: !2620)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2570, line: 38, size: 128, elements: !2617)
!2617 = !{!2618, !2619}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2616, file: !2570, line: 39, baseType: !553, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2616, file: !2570, line: 40, baseType: !553, size: 64, offset: 64)
!2620 = !{!2621}
!2621 = !DISubrange(count: 2)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2569, file: !2570, line: 156, baseType: !2623, size: 192, offset: 2048)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2570, line: 66, size: 192, elements: !2624)
!2624 = !{!2625}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2623, file: !2570, line: 67, baseType: !2626, size: 192)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2570, line: 47, size: 192, elements: !2627)
!2627 = !{!2628, !2629, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2626, file: !2570, line: 48, baseType: !767, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2626, file: !2570, line: 49, baseType: !767, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2626, file: !2570, line: 50, baseType: !767, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2569, file: !2570, line: 160, baseType: !1757, size: 640, offset: 2240)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2569, file: !2570, line: 163, baseType: !2633, size: 256, offset: 2880)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !859, size: 256, elements: !872)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2569, file: !2570, line: 169, baseType: !859, size: 64, offset: 3136)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2569, file: !2570, line: 172, baseType: !27, size: 32, offset: 3200)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2569, file: !2570, line: 174, baseType: !2637, size: 64, offset: 3264)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2570, line: 174, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2569, file: !2570, line: 185, baseType: !2640, size: 64, offset: 3328)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !522, line: 860, baseType: !2641)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 853, size: 64, elements: !2642)
!2642 = !{!2643, !2644}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2641, file: !522, line: 858, baseType: !521, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2641, file: !522, line: 859, baseType: !64, size: 32, offset: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2569, file: !2570, line: 186, baseType: !553, size: 64, offset: 3392)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2569, file: !2570, line: 186, baseType: !553, size: 64, offset: 3456)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2569, file: !2570, line: 186, baseType: !553, size: 64, offset: 3520)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2569, file: !2570, line: 186, baseType: !553, size: 64, offset: 3584)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2569, file: !2570, line: 187, baseType: !553, size: 64, offset: 3648)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2569, file: !2570, line: 188, baseType: !553, size: 64, offset: 3712)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2569, file: !2570, line: 189, baseType: !1745, size: 192, offset: 3776)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2569, file: !2570, line: 190, baseType: !44, size: 64, offset: 3968)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2569, file: !2570, line: 190, baseType: !44, size: 64, offset: 4032)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2569, file: !2570, line: 190, baseType: !44, size: 64, offset: 4096)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2569, file: !2570, line: 190, baseType: !44, size: 64, offset: 4160)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2569, file: !2570, line: 191, baseType: !44, size: 64, offset: 4224)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2569, file: !2570, line: 191, baseType: !44, size: 64, offset: 4288)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2569, file: !2570, line: 191, baseType: !44, size: 64, offset: 4352)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2569, file: !2570, line: 191, baseType: !44, size: 64, offset: 4416)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2569, file: !2570, line: 192, baseType: !44, size: 64, offset: 4480)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2569, file: !2570, line: 192, baseType: !44, size: 64, offset: 4544)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2569, file: !2570, line: 192, baseType: !44, size: 64, offset: 4608)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2569, file: !2570, line: 192, baseType: !44, size: 64, offset: 4672)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2569, file: !2570, line: 193, baseType: !44, size: 64, offset: 4736)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2569, file: !2570, line: 193, baseType: !44, size: 64, offset: 4800)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2569, file: !2570, line: 194, baseType: !2667, size: 448, offset: 4864)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2668, line: 12, size: 448, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2669 = !{!2670, !2671, !2672, !2673, !2674, !2675, !2676}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2667, file: !2668, line: 15, baseType: !553, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2667, file: !2668, line: 17, baseType: !553, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2667, file: !2668, line: 19, baseType: !553, size: 64, offset: 128)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2667, file: !2668, line: 21, baseType: !553, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2667, file: !2668, line: 29, baseType: !553, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2667, file: !2668, line: 35, baseType: !553, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2667, file: !2668, line: 44, baseType: !553, size: 64, offset: 384)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2569, file: !2570, line: 202, baseType: !555, size: 64, offset: 5312)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2569, file: !2570, line: 213, baseType: !2679, size: 2048, offset: 5376)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2680, size: 2048, elements: !1849)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2681, line: 43, size: 128, elements: !2682)
!2681 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2682 = !{!2683, !2684}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2680, file: !2681, line: 44, baseType: !43, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2680, file: !2681, line: 45, baseType: !43, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2569, file: !2570, line: 216, baseType: !2686, size: 448, offset: 7424)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2570, line: 30, size: 448, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2686, file: !2570, line: 31, baseType: !27, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2686, file: !2570, line: 32, baseType: !441, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2686, file: !2570, line: 33, baseType: !44, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2686, file: !2570, line: 34, baseType: !553, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2686, file: !2570, line: 34, baseType: !553, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2686, file: !2570, line: 35, baseType: !44, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2686, file: !2570, line: 35, baseType: !44, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2569, file: !2570, line: 219, baseType: !2696, size: 64, offset: 7872)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2698, line: 41, size: 3456, elements: !2699)
!2698 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2699 = !{!2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2714, !2715, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2697, file: !2698, line: 47, baseType: !99, size: 16)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2697, file: !2698, line: 48, baseType: !550, size: 32, offset: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2697, file: !2698, line: 54, baseType: !90, size: 8, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2697, file: !2698, line: 55, baseType: !90, size: 8, offset: 72)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2697, file: !2698, line: 73, baseType: !554, size: 64, align: 64, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2697, file: !2698, line: 74, baseType: !554, size: 64, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2697, file: !2698, line: 81, baseType: !554, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2697, file: !2698, line: 82, baseType: !554, size: 64, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2697, file: !2698, line: 85, baseType: !554, size: 64, offset: 384)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2697, file: !2698, line: 86, baseType: !554, size: 64, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2697, file: !2698, line: 94, baseType: !554, size: 64, offset: 512)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2697, file: !2698, line: 102, baseType: !554, size: 64, offset: 576)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2697, file: !2698, line: 107, baseType: !2713, size: 256, offset: 640)
!2713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !562)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2697, file: !2698, line: 108, baseType: !90, size: 8, align: 64, offset: 896)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2697, file: !2698, line: 110, baseType: !2716, size: 24, offset: 904)
!2716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 24, elements: !407)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2697, file: !2698, line: 111, baseType: !550, size: 32, align: 64, offset: 960)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2697, file: !2698, line: 113, baseType: !550, size: 32, offset: 992)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2697, file: !2698, line: 114, baseType: !550, size: 32, offset: 1024)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2697, file: !2698, line: 115, baseType: !550, size: 32, offset: 1056)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2697, file: !2698, line: 117, baseType: !550, size: 32, offset: 1088)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2697, file: !2698, line: 118, baseType: !554, size: 64, align: 64, offset: 1152)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2697, file: !2698, line: 120, baseType: !554, size: 64, offset: 1216)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2697, file: !2698, line: 121, baseType: !554, size: 64, offset: 1280)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2697, file: !2698, line: 122, baseType: !554, size: 64, offset: 1344)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2697, file: !2698, line: 123, baseType: !554, size: 64, offset: 1408)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2697, file: !2698, line: 133, baseType: !554, size: 64, offset: 1472)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2697, file: !2698, line: 137, baseType: !554, size: 64, offset: 1536)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2697, file: !2698, line: 142, baseType: !554, size: 64, offset: 1600)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2697, file: !2698, line: 143, baseType: !554, size: 64, offset: 1664)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2697, file: !2698, line: 146, baseType: !554, size: 64, offset: 1728)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2697, file: !2698, line: 147, baseType: !554, size: 64, offset: 1792)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2697, file: !2698, line: 148, baseType: !554, size: 64, offset: 1856)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2697, file: !2698, line: 149, baseType: !554, size: 64, offset: 1920)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2697, file: !2698, line: 154, baseType: !554, size: 64, offset: 1984)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2697, file: !2698, line: 155, baseType: !554, size: 64, offset: 2048)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2697, file: !2698, line: 156, baseType: !554, size: 64, offset: 2112)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2697, file: !2698, line: 158, baseType: !554, size: 64, offset: 2176)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2697, file: !2698, line: 159, baseType: !554, size: 64, offset: 2240)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2697, file: !2698, line: 162, baseType: !554, size: 64, offset: 2304)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2697, file: !2698, line: 163, baseType: !554, size: 64, offset: 2368)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2697, file: !2698, line: 164, baseType: !554, size: 64, offset: 2432)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2697, file: !2698, line: 167, baseType: !554, size: 64, offset: 2496)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2697, file: !2698, line: 168, baseType: !554, size: 64, offset: 2560)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2697, file: !2698, line: 171, baseType: !554, size: 64, offset: 2624)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2697, file: !2698, line: 172, baseType: !554, size: 64, offset: 2688)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2697, file: !2698, line: 175, baseType: !554, size: 64, offset: 2752)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2697, file: !2698, line: 178, baseType: !554, size: 64, offset: 2816)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2697, file: !2698, line: 179, baseType: !554, size: 64, offset: 2880)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2697, file: !2698, line: 182, baseType: !550, size: 32, offset: 2944)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2697, file: !2698, line: 186, baseType: !554, size: 64, align: 64, offset: 3008)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2697, file: !2698, line: 194, baseType: !554, size: 64, offset: 3072)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2697, file: !2698, line: 195, baseType: !554, size: 64, offset: 3136)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2697, file: !2698, line: 199, baseType: !554, size: 64, offset: 3200)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2697, file: !2698, line: 200, baseType: !554, size: 64, offset: 3264)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2697, file: !2698, line: 203, baseType: !554, size: 64, offset: 3328)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2697, file: !2698, line: 204, baseType: !554, size: 64, offset: 3392)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2569, file: !2570, line: 222, baseType: !7, size: 32, offset: 7936)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2569, file: !2570, line: 223, baseType: !2760, size: 64, offset: 8000)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2570, line: 223, flags: DIFlagFwdDecl)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2569, file: !2570, line: 230, baseType: !1403, size: 8, offset: 8064)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2569, file: !2570, line: 231, baseType: !1351, size: 16, offset: 8080)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2569, file: !2570, line: 232, baseType: !1351, size: 16, offset: 8096)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2569, file: !2570, line: 234, baseType: !1198, size: 64, offset: 8128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2569, file: !2570, line: 237, baseType: !761, size: 256, offset: 8192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2569, file: !2570, line: 243, baseType: !1253, size: 320, offset: 8448)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !904, file: !905, line: 1111, baseType: !2769, size: 64, offset: 15424)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2570, line: 20, size: 16640, elements: !2771)
!2771 = !{!2772, !2773, !2774, !2775}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2770, file: !2570, line: 21, baseType: !64, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2770, file: !2570, line: 22, baseType: !863, size: 32, offset: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2770, file: !2570, line: 23, baseType: !59, size: 192, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2770, file: !2570, line: 24, baseType: !2776, size: 16384, offset: 256)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2777, size: 16384, elements: !411)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2581, line: 51, size: 256, elements: !2778)
!2778 = !{!2779}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2777, file: !2581, line: 52, baseType: !2780, size: 256)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2581, line: 37, size: 256, elements: !2781)
!2781 = !{!2782, !2789, !2790, !2794}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2780, file: !2581, line: 39, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2784, line: 83, baseType: !2785)
!2784 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2784, line: 82, baseType: !2787)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{null, !27}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2780, file: !2581, line: 40, baseType: !44, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2780, file: !2581, line: 46, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2784, line: 86, baseType: !2792)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2784, line: 85, baseType: !2463)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2780, file: !2581, line: 48, baseType: !2585, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !904, file: !905, line: 1112, baseType: !2585, size: 64, offset: 15488)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !904, file: !905, line: 1113, baseType: !2585, size: 64, offset: 15552)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !904, file: !905, line: 1115, baseType: !2585, size: 64, offset: 15616)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !904, file: !905, line: 1116, baseType: !2580, size: 192, offset: 15680)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !904, file: !905, line: 1117, baseType: !44, size: 64, offset: 15872)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !904, file: !905, line: 1118, baseType: !40, size: 64, offset: 15936)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !904, file: !905, line: 1119, baseType: !7, size: 32, offset: 16000)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !904, file: !905, line: 1121, baseType: !821, size: 64, offset: 16064)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !904, file: !905, line: 1125, baseType: !2804, size: 64, offset: 16128)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !905, line: 43, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !904, file: !905, line: 1127, baseType: !486, size: 32, offset: 16192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !904, file: !905, line: 1128, baseType: !7, size: 32, offset: 16224)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !904, file: !905, line: 1130, baseType: !2809, size: 128, offset: 16256)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2810, line: 37, size: 128, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2811 = !{!2812, !2813, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2809, file: !2810, line: 38, baseType: !27, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2809, file: !2810, line: 39, baseType: !54, size: 32, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2809, file: !2810, line: 40, baseType: !2815, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2810, line: 24, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !904, file: !905, line: 1131, baseType: !2818, size: 256, offset: 16384)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2819, line: 12, size: 256, elements: !2820)
!2819 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2820 = !{!2821, !2822, !2823, !2824}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2818, file: !2819, line: 13, baseType: !406, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2818, file: !2819, line: 14, baseType: !44, size: 64, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2818, file: !2819, line: 15, baseType: !44, size: 64, offset: 128)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2818, file: !2819, line: 16, baseType: !1403, size: 8, offset: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !904, file: !905, line: 1134, baseType: !553, size: 64, offset: 16640)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !904, file: !905, line: 1135, baseType: !553, size: 64, offset: 16704)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !904, file: !905, line: 1138, baseType: !64, size: 32, offset: 16768)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !904, file: !905, line: 1141, baseType: !774, size: 32, offset: 16800)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !904, file: !905, line: 1143, baseType: !2830, size: 64, offset: 16832)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !905, line: 735, size: 64, elements: !2831)
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2830, file: !905, line: 736, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !904, file: !905, line: 1147, baseType: !1081, size: 128, offset: 16896)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !904, file: !905, line: 1149, baseType: !903, size: 64, offset: 17024)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !904, file: !905, line: 1151, baseType: !2837, size: 64, offset: 17088)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !905, line: 1151, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !904, file: !905, line: 1188, baseType: !25, size: 64, offset: 17152)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !904, file: !905, line: 1191, baseType: !2841, size: 64, offset: 17216)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !905, line: 44, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !904, file: !905, line: 1194, baseType: !2844, size: 64, offset: 17280)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !905, line: 45, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !904, file: !905, line: 1197, baseType: !2847, size: 64, offset: 17344)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !905, line: 61, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !904, file: !905, line: 1199, baseType: !2850, size: 64, offset: 17408)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2852, line: 99, size: 128, elements: !2853)
!2852 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2853 = !{!2854, !2855, !2856}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2851, file: !2852, line: 100, baseType: !765, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2851, file: !2852, line: 101, baseType: !54, size: 32, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2851, file: !2852, line: 103, baseType: !31, size: 16, offset: 96)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !904, file: !905, line: 1202, baseType: !2858, size: 64, offset: 17472)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !905, line: 48, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !904, file: !905, line: 1205, baseType: !44, size: 64, offset: 17536)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !904, file: !905, line: 1206, baseType: !2862, size: 64, offset: 17600)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2581, line: 14, baseType: !2864)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2581, line: 12, size: 384, elements: !2865)
!2865 = !{!2866}
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2864, file: !2581, line: 13, baseType: !2867, size: 384)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2864, file: !2581, line: 13, size: 384, elements: !2868)
!2868 = !{!2869, !2870, !2871, !2872}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2867, file: !2581, line: 13, baseType: !27, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2867, file: !2581, line: 13, baseType: !27, size: 32, offset: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2867, file: !2581, line: 13, baseType: !27, size: 32, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2867, file: !2581, line: 13, baseType: !2873, size: 256, offset: 128)
!2873 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2874, line: 37, size: 256, elements: !2875)
!2874 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2875 = !{!2876, !2881, !2894, !2900, !2909, !2936, !2941}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2873, file: !2874, line: 42, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2873, file: !2874, line: 39, size: 64, elements: !2878)
!2878 = !{!2879, !2880}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2877, file: !2874, line: 40, baseType: !1722, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2877, file: !2874, line: 41, baseType: !492, size: 32, offset: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2873, file: !2874, line: 50, baseType: !2882, size: 192)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2873, file: !2874, line: 45, size: 192, elements: !2883)
!2883 = !{!2884, !2886, !2887, !2893}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2882, file: !2874, line: 46, baseType: !2885, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !42, line: 95, baseType: !27)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2882, file: !2874, line: 47, baseType: !27, size: 32, offset: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2882, file: !2874, line: 48, baseType: !2888, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2874, line: 11, baseType: !2889)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2874, line: 8, size: 64, elements: !2890)
!2890 = !{!2891, !2892}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2889, file: !2874, line: 9, baseType: !27, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2889, file: !2874, line: 10, baseType: !25, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2882, file: !2874, line: 49, baseType: !27, size: 32, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2873, file: !2874, line: 57, baseType: !2895, size: 128)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2873, file: !2874, line: 53, size: 128, elements: !2896)
!2896 = !{!2897, !2898, !2899}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2895, file: !2874, line: 54, baseType: !1722, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2895, file: !2874, line: 55, baseType: !492, size: 32, offset: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2895, file: !2874, line: 56, baseType: !2888, size: 64, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2873, file: !2874, line: 66, baseType: !2901, size: 256)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2873, file: !2874, line: 60, size: 256, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2906, !2908}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2901, file: !2874, line: 61, baseType: !1722, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2901, file: !2874, line: 62, baseType: !492, size: 32, offset: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2901, file: !2874, line: 63, baseType: !27, size: 32, offset: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2901, file: !2874, line: 64, baseType: !2907, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !42, line: 94, baseType: !440)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2901, file: !2874, line: 65, baseType: !2907, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2873, file: !2874, line: 105, baseType: !2910, size: 256)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2873, file: !2874, line: 69, size: 256, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2910, file: !2874, line: 70, baseType: !25, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !2910, file: !2874, line: 79, baseType: !2914, size: 192, offset: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2910, file: !2874, line: 79, size: 192, elements: !2915)
!2915 = !{!2916, !2917, !2918, !2925, !2930}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2914, file: !2874, line: 81, baseType: !27, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2914, file: !2874, line: 86, baseType: !1351, size: 16)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2914, file: !2874, line: 92, baseType: !2919, size: 192)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2914, file: !2874, line: 88, size: 192, elements: !2920)
!2920 = !{!2921, !2923, !2924}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2919, file: !2874, line: 89, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !1065)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2919, file: !2874, line: 90, baseType: !25, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2919, file: !2874, line: 91, baseType: !25, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2914, file: !2874, line: 97, baseType: !2926, size: 96)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2914, file: !2874, line: 94, size: 96, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2926, file: !2874, line: 95, baseType: !2922, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2926, file: !2874, line: 96, baseType: !550, size: 32, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2914, file: !2874, line: 103, baseType: !2931, size: 128)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2914, file: !2874, line: 99, size: 128, elements: !2932)
!2932 = !{!2933, !2934, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2931, file: !2874, line: 100, baseType: !44, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2931, file: !2874, line: 101, baseType: !550, size: 32, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2931, file: !2874, line: 102, baseType: !550, size: 32, offset: 96)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2873, file: !2874, line: 111, baseType: !2937, size: 128)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2873, file: !2874, line: 108, size: 128, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2937, file: !2874, line: 109, baseType: !441, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2937, file: !2874, line: 110, baseType: !27, size: 32, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2873, file: !2874, line: 118, baseType: !2942, size: 128)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2873, file: !2874, line: 114, size: 128, elements: !2943)
!2943 = !{!2944, !2945, !2946}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2942, file: !2874, line: 115, baseType: !25, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2942, file: !2874, line: 116, baseType: !27, size: 32, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2942, file: !2874, line: 117, baseType: !7, size: 32, offset: 96)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !904, file: !905, line: 1208, baseType: !2667, size: 448, offset: 17664)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !904, file: !905, line: 1215, baseType: !553, size: 64, offset: 18112)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !904, file: !905, line: 1217, baseType: !553, size: 64, offset: 18176)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !904, file: !905, line: 1219, baseType: !553, size: 64, offset: 18240)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !904, file: !905, line: 1223, baseType: !2952, size: 64, offset: 18304)
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2953, line: 99, baseType: !2954)
!2953 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2953, line: 99, size: 64, elements: !2955)
!2955 = !{!2956}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2954, file: !2953, line: 99, baseType: !1149, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !904, file: !905, line: 1225, baseType: !521, size: 32, offset: 18368)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !904, file: !905, line: 1226, baseType: !27, size: 32, offset: 18400)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !904, file: !905, line: 1227, baseType: !27, size: 32, offset: 18432)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !904, file: !905, line: 1231, baseType: !1907, size: 64, offset: 18496)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !904, file: !905, line: 1233, baseType: !102, size: 128, offset: 18560)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !904, file: !905, line: 1240, baseType: !2963, size: 64, offset: 18688)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !905, line: 62, flags: DIFlagFwdDecl)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !904, file: !905, line: 1242, baseType: !2966, size: 64, offset: 18752)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !905, line: 1242, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !904, file: !905, line: 1244, baseType: !102, size: 128, offset: 18816)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !904, file: !905, line: 1245, baseType: !2970, size: 64, offset: 18944)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !905, line: 51, flags: DIFlagFwdDecl)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !904, file: !905, line: 1246, baseType: !761, size: 256, offset: 19008)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !904, file: !905, line: 1247, baseType: !7, size: 32, offset: 19264)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !904, file: !905, line: 1250, baseType: !2975, size: 64, offset: 19328)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !246, line: 912, size: 1792, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2976, file: !246, line: 917, baseType: !774, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2976, file: !246, line: 923, baseType: !761, size: 256, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !2976, file: !246, line: 925, baseType: !102, size: 128, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2976, file: !246, line: 926, baseType: !2982, size: 128, offset: 448)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !246, line: 901, size: 128, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !2982, file: !246, line: 902, baseType: !1084, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2982, file: !246, line: 903, baseType: !553, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2976, file: !246, line: 927, baseType: !2982, size: 128, offset: 576)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2976, file: !246, line: 928, baseType: !102, size: 128, offset: 704)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2976, file: !246, line: 930, baseType: !27, size: 32, offset: 832)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !2976, file: !246, line: 931, baseType: !27, size: 32, offset: 864)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2976, file: !246, line: 932, baseType: !27, size: 32, offset: 896)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !2976, file: !246, line: 934, baseType: !27, size: 32, offset: 928)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2976, file: !246, line: 935, baseType: !27, size: 32, offset: 960)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2976, file: !246, line: 936, baseType: !27, size: 32, offset: 992)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2976, file: !246, line: 937, baseType: !27, size: 32, offset: 1024)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2976, file: !246, line: 939, baseType: !863, size: 32, offset: 1056)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2976, file: !246, line: 940, baseType: !903, size: 64, offset: 1088)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2976, file: !246, line: 945, baseType: !553, size: 64, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2976, file: !246, line: 946, baseType: !553, size: 64, offset: 1216)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !2976, file: !246, line: 947, baseType: !553, size: 64, offset: 1280)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2976, file: !246, line: 953, baseType: !2975, size: 64, offset: 1344)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2976, file: !246, line: 954, baseType: !553, size: 64, offset: 1408)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2976, file: !246, line: 955, baseType: !553, size: 64, offset: 1472)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2976, file: !246, line: 956, baseType: !27, size: 32, offset: 1536)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2976, file: !246, line: 958, baseType: !27, size: 32, offset: 1568)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2976, file: !246, line: 960, baseType: !818, size: 128, align: 64, offset: 1600)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2976, file: !246, line: 968, baseType: !3007, size: 64, offset: 1728)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3008, line: 12, baseType: !3009)
!3008 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3008, line: 10, size: 64, elements: !3010)
!3010 = !{!3011}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3009, file: !3008, line: 11, baseType: !765, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !904, file: !905, line: 1251, baseType: !761, size: 256, offset: 19392)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !904, file: !905, line: 1252, baseType: !102, size: 128, offset: 19648)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !904, file: !905, line: 1259, baseType: !2045, size: 64, offset: 19776)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !904, file: !905, line: 1260, baseType: !1351, size: 16, offset: 19840)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !904, file: !905, line: 1261, baseType: !1351, size: 16, offset: 19856)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !904, file: !905, line: 1314, baseType: !3018, size: 64, offset: 19904)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3020, line: 62, size: 256, align: 256, elements: !3021)
!3020 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3021 = !{!3022, !3023, !3024, !3025, !3026, !3027, !3028}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3019, file: !3020, line: 75, baseType: !550, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3019, file: !3020, line: 90, baseType: !550, size: 32, offset: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3019, file: !3020, line: 112, baseType: !554, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3019, file: !3020, line: 132, baseType: !550, size: 32, offset: 128)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3019, file: !3020, line: 140, baseType: !550, size: 32, offset: 160)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3019, file: !3020, line: 149, baseType: !550, size: 32, offset: 192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3019, file: !3020, line: 154, baseType: !3029, offset: 224)
!3029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, elements: !1634)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !904, file: !905, line: 1315, baseType: !549, size: 32, offset: 19968)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !904, file: !905, line: 1316, baseType: !549, size: 32, offset: 20000)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !904, file: !905, line: 1321, baseType: !44, size: 64, offset: 20032)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !904, file: !905, line: 1325, baseType: !27, size: 32, offset: 20096)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !904, file: !905, line: 1326, baseType: !27, size: 32, offset: 20128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !904, file: !905, line: 1327, baseType: !27, size: 32, offset: 20160)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !904, file: !905, line: 1328, baseType: !27, size: 32, offset: 20192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !904, file: !905, line: 1329, baseType: !818, size: 128, align: 64, offset: 20224)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !904, file: !905, line: 1332, baseType: !3039, size: 128, offset: 20352)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3040, line: 51, size: 128, elements: !3041)
!3040 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3041 = !{!3042, !3047, !3048}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3039, file: !3040, line: 60, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3044, line: 7, size: 64, elements: !3045)
!3044 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3043, file: !3044, line: 12, baseType: !1146, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3039, file: !3040, line: 63, baseType: !1403, size: 8, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3039, file: !3040, line: 70, baseType: !1403, size: 8, offset: 72)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !904, file: !905, line: 1335, baseType: !3050, size: 64, offset: 20480)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !905, line: 59, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !904, file: !905, line: 1337, baseType: !3053, size: 128, offset: 20544)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3040, line: 39, size: 128, elements: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3053, file: !3040, line: 40, baseType: !2104, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3053, file: !3040, line: 42, baseType: !550, size: 32, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3053, file: !3040, line: 43, baseType: !550, size: 32, offset: 96)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !904, file: !905, line: 1340, baseType: !3059, size: 64, offset: 20672)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !905, line: 69, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !904, file: !905, line: 1351, baseType: !27, size: 32, offset: 20736)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !904, file: !905, line: 1352, baseType: !27, size: 32, offset: 20768)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !904, file: !905, line: 1354, baseType: !44, size: 64, offset: 20800)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !904, file: !905, line: 1364, baseType: !553, size: 64, offset: 20864)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !904, file: !905, line: 1365, baseType: !553, size: 64, offset: 20928)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !904, file: !905, line: 1412, baseType: !44, size: 64, offset: 20992)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !904, file: !905, line: 1453, baseType: !3068, size: 64, offset: 21056)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !905, line: 1453, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !904, file: !905, line: 1457, baseType: !3071, size: 64, offset: 21120)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !150, line: 61, size: 576, elements: !3073)
!3073 = !{!3074, !3075, !3094, !3097, !3098, !3131, !3141}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3072, file: !150, line: 62, baseType: !149, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !3072, file: !150, line: 64, baseType: !3076, size: 192, offset: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3072, file: !150, line: 64, size: 192, elements: !3077)
!3077 = !{!3078, !3089}
!3078 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !150, line: 65, baseType: !3079, size: 192)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3076, file: !150, line: 65, size: 192, elements: !3080)
!3080 = !{!3081, !3088}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3079, file: !150, line: 66, baseType: !3082, size: 128)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3083, line: 50, size: 128, elements: !3084)
!3083 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3082, file: !3083, line: 52, baseType: !44, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3082, file: !3083, line: 54, baseType: !7, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3082, file: !3083, line: 55, baseType: !7, size: 32, offset: 96)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3079, file: !150, line: 67, baseType: !44, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !150, line: 70, baseType: !3090, size: 192)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3076, file: !150, line: 70, size: 192, elements: !3091)
!3091 = !{!3092, !3093}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3090, file: !150, line: 71, baseType: !818, size: 128, align: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3090, file: !150, line: 72, baseType: !44, size: 64, offset: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3072, file: !150, line: 76, baseType: !3095, size: 64, offset: 256)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !150, line: 76, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3072, file: !150, line: 77, baseType: !44, size: 64, offset: 320)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3072, file: !150, line: 79, baseType: !3099, size: 64, offset: 384)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3083, line: 25, size: 256, elements: !3101)
!3101 = !{!3102, !3108, !3112}
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !3083, line: 26, baseType: !3103, size: 128)
!3103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3100, file: !3083, line: 26, size: 128, elements: !3104)
!3104 = !{!3105, !3107}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3103, file: !3083, line: 27, baseType: !3106, size: 128)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !1849)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3103, file: !3083, line: 28, baseType: !3106, size: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3100, file: !3083, line: 31, baseType: !3109, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3111)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3083, line: 23, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !3083, line: 33, baseType: !3113, size: 64, offset: 192)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3100, file: !3083, line: 33, size: 64, elements: !3114)
!3114 = !{!3115, !3121, !3126}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3113, file: !3083, line: 38, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3083, line: 34, size: 64, elements: !3117)
!3117 = !{!3118, !3119, !3120}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3116, file: !3083, line: 35, baseType: !1299, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3116, file: !3083, line: 36, baseType: !88, size: 8, offset: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3116, file: !3083, line: 37, baseType: !88, size: 8, offset: 40)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3113, file: !3083, line: 42, baseType: !3122, size: 16)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3083, line: 39, size: 16, elements: !3123)
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3122, file: !3083, line: 40, baseType: !88, size: 8)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3122, file: !3083, line: 41, baseType: !88, size: 8, offset: 8)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3113, file: !3083, line: 46, baseType: !3127, size: 16)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !3083, line: 43, size: 16, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3127, file: !3083, line: 44, baseType: !88, size: 8)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3127, file: !3083, line: 45, baseType: !88, size: 8, offset: 8)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3072, file: !150, line: 81, baseType: !3132, size: 64, offset: 448)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !150, line: 85, size: 384, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3133, file: !150, line: 86, baseType: !3095, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3133, file: !150, line: 87, baseType: !44, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3133, file: !150, line: 88, baseType: !44, size: 64, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3133, file: !150, line: 89, baseType: !44, size: 64, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3133, file: !150, line: 90, baseType: !1403, size: 8, offset: 256)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3133, file: !150, line: 92, baseType: !3132, size: 64, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3072, file: !150, line: 82, baseType: !7, size: 32, offset: 512)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !904, file: !905, line: 1463, baseType: !3143, offset: 21184)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !905, line: 739, elements: !680)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !904, file: !905, line: 1470, baseType: !818, size: 128, align: 64, offset: 21184)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !904, file: !905, line: 1471, baseType: !863, size: 32, offset: 21312)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !904, file: !905, line: 1472, baseType: !27, size: 32, offset: 21344)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !904, file: !905, line: 1474, baseType: !903, size: 64, offset: 21376)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !904, file: !905, line: 1475, baseType: !2328, size: 320, offset: 21440)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !904, file: !905, line: 1478, baseType: !3150, size: 64, offset: 21760)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3152, line: 49, size: 512, elements: !3153)
!3152 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3153 = !{!3154, !3155, !3156, !3157, !3158, !3160, !3161, !3162, !3164}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3151, file: !3152, line: 50, baseType: !3150, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3151, file: !3152, line: 51, baseType: !25, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3151, file: !3152, line: 52, baseType: !44, size: 64, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3151, file: !3152, line: 53, baseType: !44, size: 64, offset: 192)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3151, file: !3152, line: 54, baseType: !3159, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3151, file: !3152, line: 56, baseType: !7, size: 32, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3151, file: !3152, line: 58, baseType: !7, size: 32, offset: 352)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3151, file: !3152, line: 59, baseType: !3163, size: 64, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !30, line: 159, baseType: !553)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3151, file: !3152, line: 60, baseType: !1332, size: 64, offset: 448)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !904, file: !905, line: 1482, baseType: !863, size: 32, offset: 21824)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !904, file: !905, line: 1489, baseType: !25, size: 64, offset: 21888)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !904, file: !905, line: 1504, baseType: !25, size: 64, offset: 21952)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !904, file: !905, line: 1505, baseType: !554, size: 64, offset: 22016)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !904, file: !905, line: 1506, baseType: !553, size: 64, offset: 22080)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !904, file: !905, line: 1507, baseType: !554, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !904, file: !905, line: 1508, baseType: !554, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !904, file: !905, line: 1509, baseType: !554, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !904, file: !905, line: 1510, baseType: !818, size: 128, align: 64, offset: 22208)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !904, file: !905, line: 1511, baseType: !27, size: 32, offset: 22336)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !904, file: !905, line: 1515, baseType: !3176, size: 64, offset: 22400)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !813, line: 56, size: 64, elements: !3177)
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3176, file: !813, line: 57, baseType: !816, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !904, file: !905, line: 1518, baseType: !3176, size: 64, offset: 22464)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !904, file: !905, line: 1528, baseType: !818, size: 128, align: 64, offset: 22528)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !904, file: !905, line: 1552, baseType: !3182, size: 35328, offset: 23040)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3183, line: 430, size: 35328, elements: !3184)
!3183 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3184 = !{!3185, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !4753, !4754, !4755, !4756, !4757, !4758, !4761, !4762, !4763, !4764}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3182, file: !3183, line: 432, baseType: !3186, size: 192)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3187, size: 192, elements: !407)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3188, line: 16, size: 64, elements: !3189)
!3188 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3187, file: !3188, line: 17, baseType: !98, size: 16)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3187, file: !3188, line: 18, baseType: !98, size: 16, offset: 16)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3187, file: !3188, line: 19, baseType: !98, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3187, file: !3188, line: 19, baseType: !98, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3187, file: !3188, line: 19, baseType: !98, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3187, file: !3188, line: 19, baseType: !98, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3187, file: !3188, line: 19, baseType: !98, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3187, file: !3188, line: 20, baseType: !98, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3187, file: !3188, line: 20, baseType: !98, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3187, file: !3188, line: 20, baseType: !98, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3187, file: !3188, line: 20, baseType: !98, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3187, file: !3188, line: 20, baseType: !98, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3187, file: !3188, line: 20, baseType: !98, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3182, file: !3183, line: 436, baseType: !44, size: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3182, file: !3183, line: 440, baseType: !31, size: 16, offset: 256)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3182, file: !3183, line: 441, baseType: !31, size: 16, offset: 272)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3182, file: !3183, line: 442, baseType: !31, size: 16, offset: 288)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3182, file: !3183, line: 443, baseType: !31, size: 16, offset: 304)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3182, file: !3183, line: 447, baseType: !44, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3182, file: !3183, line: 448, baseType: !44, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3182, file: !3183, line: 459, baseType: !3211, size: 256, offset: 448)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3212, size: 256, elements: !872)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !246, line: 671, size: 8512, elements: !3214)
!3214 = !{!3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3878, !3879, !3880, !3881, !3887, !3888, !3889, !3890, !3891, !3975, !3976, !3977, !3978, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4098, !4099, !4100, !4101, !4102, !4103, !4118, !4119, !4120, !4121, !4122, !4128, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4145, !4316, !4317, !4736, !4737, !4750, !4751, !4752}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3213, file: !246, line: 678, baseType: !102, size: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3213, file: !246, line: 684, baseType: !102, size: 128, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3213, file: !246, line: 685, baseType: !102, size: 128, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3213, file: !246, line: 689, baseType: !952, size: 192, align: 64, offset: 384)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3213, file: !246, line: 690, baseType: !553, size: 64, offset: 576)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3213, file: !246, line: 696, baseType: !102, size: 128, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3213, file: !246, line: 698, baseType: !672, size: 128, offset: 768)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3213, file: !246, line: 699, baseType: !102, size: 128, offset: 896)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3213, file: !246, line: 700, baseType: !27, size: 32, offset: 1024)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3213, file: !246, line: 703, baseType: !27, size: 32, offset: 1056)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3213, file: !246, line: 705, baseType: !27, size: 32, offset: 1088)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3213, file: !246, line: 707, baseType: !7, size: 32, offset: 1120)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3213, file: !246, line: 708, baseType: !3212, size: 64, offset: 1152)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3213, file: !246, line: 714, baseType: !3229, size: 64, offset: 1216)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !246, line: 302, size: 2432, elements: !3231)
!3231 = !{!3232, !3233, !3234, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3784, !3785, !3786, !3787, !3788, !3792, !3793, !3797, !3801, !3802, !3806, !3810, !3811, !3812, !3816, !3820, !3824, !3825, !3826, !3830, !3834, !3838, !3843, !3844, !3864, !3868, !3869, !3870, !3874}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3230, file: !246, line: 303, baseType: !102, size: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3230, file: !246, line: 305, baseType: !352, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3230, file: !246, line: 306, baseType: !3235, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !193, line: 705, size: 5824, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3243, !3244, !3297, !3383, !3384, !3385, !3386, !3387, !3394, !3486, !3499, !3509, !3513, !3515, !3516, !3517, !3521, !3528, !3529, !3532, !3535, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3725, !3726, !3727, !3730, !3733, !3742, !3743, !3744, !3745, !3746, !3747}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3236, file: !193, line: 706, baseType: !365, size: 512)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3236, file: !193, line: 707, baseType: !3235, size: 64, offset: 512)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3236, file: !193, line: 709, baseType: !3241, size: 64, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !193, line: 37, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3236, file: !193, line: 711, baseType: !21, size: 64, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3236, file: !193, line: 712, baseType: !3245, size: 64, offset: 704)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3247)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !193, line: 89, size: 384, elements: !3248)
!3248 = !{!3249, !3250, !3251, !3257, !3262, !3266}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3247, file: !193, line: 90, baseType: !21, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3247, file: !193, line: 91, baseType: !452, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3247, file: !193, line: 92, baseType: !3252, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!27, !3255, !401}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3236)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3247, file: !193, line: 93, baseType: !3258, size: 64, offset: 192)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!406, !3255, !3261, !1582, !1583}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3247, file: !193, line: 95, baseType: !3263, size: 64, offset: 256)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{null, !3235}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3247, file: !193, line: 97, baseType: !3267, size: 64, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3269)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !200, line: 286, size: 1472, elements: !3270)
!3270 = !{!3271, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3269, file: !200, line: 287, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!27, !3235}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3269, file: !200, line: 288, baseType: !3263, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3269, file: !200, line: 289, baseType: !3272, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3269, file: !200, line: 290, baseType: !3272, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3269, file: !200, line: 291, baseType: !3272, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3269, file: !200, line: 292, baseType: !3272, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3269, file: !200, line: 293, baseType: !3272, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3269, file: !200, line: 294, baseType: !3272, size: 64, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3269, file: !200, line: 295, baseType: !3272, size: 64, offset: 512)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3269, file: !200, line: 296, baseType: !3272, size: 64, offset: 576)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3269, file: !200, line: 297, baseType: !3272, size: 64, offset: 640)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3269, file: !200, line: 298, baseType: !3272, size: 64, offset: 704)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3269, file: !200, line: 299, baseType: !3272, size: 64, offset: 768)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3269, file: !200, line: 300, baseType: !3272, size: 64, offset: 832)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3269, file: !200, line: 301, baseType: !3272, size: 64, offset: 896)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3269, file: !200, line: 302, baseType: !3272, size: 64, offset: 960)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3269, file: !200, line: 303, baseType: !3272, size: 64, offset: 1024)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3269, file: !200, line: 304, baseType: !3272, size: 64, offset: 1088)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3269, file: !200, line: 305, baseType: !3272, size: 64, offset: 1152)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3269, file: !200, line: 306, baseType: !3272, size: 64, offset: 1216)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3269, file: !200, line: 307, baseType: !3272, size: 64, offset: 1280)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3269, file: !200, line: 308, baseType: !3272, size: 64, offset: 1344)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3269, file: !200, line: 309, baseType: !3272, size: 64, offset: 1408)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3236, file: !193, line: 714, baseType: !3298, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3301, line: 80, size: 1344, elements: !3302)
!3301 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3382}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3300, file: !3301, line: 81, baseType: !21, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3300, file: !3301, line: 82, baseType: !21, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3300, file: !3301, line: 83, baseType: !452, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3300, file: !3301, line: 84, baseType: !452, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3300, file: !3301, line: 85, baseType: !452, size: 64, offset: 256)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3300, file: !3301, line: 87, baseType: !3309, size: 64, offset: 320)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!27, !3235, !3312}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !187, line: 96, size: 1152, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320, !3321, !3334, !3345, !3346, !3347, !3348, !3349, !3357, !3358, !3359, !3360, !3361, !3362}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3313, file: !187, line: 97, baseType: !21, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3313, file: !187, line: 98, baseType: !3298, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3313, file: !187, line: 100, baseType: !352, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3313, file: !187, line: 101, baseType: !21, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3313, file: !187, line: 103, baseType: !1403, size: 8, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3313, file: !187, line: 104, baseType: !186, size: 32, offset: 288)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3313, file: !187, line: 106, baseType: !3322, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3324)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3325, line: 282, size: 1600, elements: !3326)
!3325 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!3326 = !{!3327, !3328, !3329, !3333}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3324, file: !3325, line: 283, baseType: !2713, size: 256)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3324, file: !3325, line: 284, baseType: !2713, size: 256, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3324, file: !3325, line: 285, baseType: !3330, size: 1024, offset: 512)
!3330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 1024, elements: !3331)
!3331 = !{!3332}
!3332 = !DISubrange(count: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3324, file: !3325, line: 286, baseType: !1332, size: 64, offset: 1536)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3313, file: !187, line: 107, baseType: !3335, size: 64, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3337)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3325, line: 217, size: 256, elements: !3338)
!3338 = !{!3339, !3341, !3343, !3344}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3337, file: !3325, line: 218, baseType: !3340, size: 128)
!3340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !1849)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3337, file: !3325, line: 219, baseType: !3342, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3325, line: 15, baseType: !44)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3337, file: !3325, line: 220, baseType: !550, size: 32, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3337, file: !3325, line: 221, baseType: !550, size: 32, offset: 224)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3313, file: !187, line: 109, baseType: !3272, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3313, file: !187, line: 110, baseType: !3263, size: 64, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3313, file: !187, line: 111, baseType: !3272, size: 64, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3313, file: !187, line: 112, baseType: !3263, size: 64, offset: 640)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3313, file: !187, line: 113, baseType: !3350, size: 64, offset: 704)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!27, !3235, !3353}
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !200, line: 60, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !200, line: 58, size: 32, elements: !3355)
!3355 = !{!3356}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3354, file: !200, line: 59, baseType: !27, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3313, file: !187, line: 114, baseType: !3272, size: 64, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3313, file: !187, line: 115, baseType: !452, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3313, file: !187, line: 116, baseType: !452, size: 64, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3313, file: !187, line: 118, baseType: !3267, size: 64, offset: 960)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3313, file: !187, line: 119, baseType: !3263, size: 64, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3313, file: !187, line: 121, baseType: !3363, size: 64, offset: 1088)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !187, line: 121, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3300, file: !3301, line: 88, baseType: !3252, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3300, file: !3301, line: 89, baseType: !3272, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3300, file: !3301, line: 90, baseType: !3263, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3300, file: !3301, line: 91, baseType: !3263, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3300, file: !3301, line: 92, baseType: !3263, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3300, file: !3301, line: 94, baseType: !3272, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3300, file: !3301, line: 95, baseType: !3272, size: 64, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3300, file: !3301, line: 97, baseType: !3350, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3300, file: !3301, line: 98, baseType: !3272, size: 64, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3300, file: !3301, line: 100, baseType: !3272, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3300, file: !3301, line: 102, baseType: !3272, size: 64, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3300, file: !3301, line: 103, baseType: !3263, size: 64, offset: 1088)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3300, file: !3301, line: 105, baseType: !3267, size: 64, offset: 1152)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3300, file: !3301, line: 107, baseType: !3379, size: 64, offset: 1216)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3381)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3301, line: 107, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3300, file: !3301, line: 109, baseType: !1403, size: 8, offset: 1280)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3236, file: !193, line: 715, baseType: !3312, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3236, file: !193, line: 717, baseType: !25, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3236, file: !193, line: 719, baseType: !25, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3236, file: !193, line: 721, baseType: !761, size: 256, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3236, file: !193, line: 725, baseType: !3388, size: 448, offset: 1280)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !193, line: 517, size: 448, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3388, file: !193, line: 518, baseType: !102, size: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3388, file: !193, line: 519, baseType: !102, size: 128, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3388, file: !193, line: 520, baseType: !102, size: 128, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3388, file: !193, line: 521, baseType: !192, size: 32, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3236, file: !193, line: 726, baseType: !3395, size: 2496, offset: 1728)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !200, line: 663, size: 2496, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3479, !3483}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3395, file: !200, line: 664, baseType: !3353, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3395, file: !200, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3395, file: !200, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3395, file: !200, line: 667, baseType: !1403, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3395, file: !200, line: 668, baseType: !1403, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3395, file: !200, line: 669, baseType: !1403, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3395, file: !200, line: 670, baseType: !1403, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3395, file: !200, line: 671, baseType: !1403, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3395, file: !200, line: 672, baseType: !1403, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3395, file: !200, line: 673, baseType: !1403, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3395, file: !200, line: 674, baseType: !1403, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3395, file: !200, line: 675, baseType: !549, size: 32, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3395, file: !200, line: 676, baseType: !64, size: 32, offset: 96)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3395, file: !200, line: 678, baseType: !102, size: 128, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3395, file: !200, line: 679, baseType: !1557, size: 256, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3395, file: !200, line: 680, baseType: !3413, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3415, line: 43, size: 1536, elements: !3416)
!3415 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3414, file: !3415, line: 44, baseType: !21, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3414, file: !3415, line: 45, baseType: !27, size: 32, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3414, file: !3415, line: 46, baseType: !102, size: 128, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3414, file: !3415, line: 47, baseType: !64, size: 32, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3414, file: !3415, line: 48, baseType: !3422, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !200, line: 629, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3414, file: !3415, line: 49, baseType: !2328, size: 320, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3414, file: !3415, line: 50, baseType: !44, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3414, file: !3415, line: 51, baseType: !1030, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3414, file: !3415, line: 52, baseType: !1030, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3414, file: !3415, line: 53, baseType: !1030, size: 64, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3414, file: !3415, line: 54, baseType: !1030, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3414, file: !3415, line: 55, baseType: !1030, size: 64, offset: 1024)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3414, file: !3415, line: 56, baseType: !44, size: 64, offset: 1088)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3414, file: !3415, line: 57, baseType: !44, size: 64, offset: 1152)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3414, file: !3415, line: 58, baseType: !44, size: 64, offset: 1216)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3414, file: !3415, line: 59, baseType: !44, size: 64, offset: 1280)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3414, file: !3415, line: 60, baseType: !44, size: 64, offset: 1344)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3414, file: !3415, line: 61, baseType: !3235, size: 64, offset: 1408)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3414, file: !3415, line: 62, baseType: !1403, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3414, file: !3415, line: 63, baseType: !1403, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3395, file: !200, line: 681, baseType: !1403, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3395, file: !200, line: 682, baseType: !1403, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3395, file: !200, line: 683, baseType: !1403, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3395, file: !200, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3395, file: !200, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3395, file: !200, line: 690, baseType: !1022, size: 512, offset: 640)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3395, file: !200, line: 691, baseType: !553, size: 64, offset: 1152)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3395, file: !200, line: 692, baseType: !1518, size: 256, offset: 1216)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3395, file: !200, line: 693, baseType: !59, size: 192, offset: 1472)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3395, file: !200, line: 694, baseType: !3422, size: 64, offset: 1664)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3395, file: !200, line: 695, baseType: !54, size: 32, offset: 1728)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3395, file: !200, line: 696, baseType: !54, size: 32, offset: 1760)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3395, file: !200, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3395, file: !200, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3395, file: !200, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3395, file: !200, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3395, file: !200, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3395, file: !200, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3395, file: !200, line: 703, baseType: !1403, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3395, file: !200, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3395, file: !200, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3395, file: !200, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3395, file: !200, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3395, file: !200, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3395, file: !200, line: 709, baseType: !7, size: 32, offset: 1824)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3395, file: !200, line: 710, baseType: !199, size: 32, offset: 1856)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3395, file: !200, line: 711, baseType: !207, size: 32, offset: 1888)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3395, file: !200, line: 712, baseType: !207, size: 32, offset: 1920)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3395, file: !200, line: 713, baseType: !27, size: 32, offset: 1952)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3395, file: !200, line: 714, baseType: !27, size: 32, offset: 1984)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3395, file: !200, line: 715, baseType: !553, size: 64, offset: 2048)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3395, file: !200, line: 716, baseType: !553, size: 64, offset: 2112)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3395, file: !200, line: 717, baseType: !553, size: 64, offset: 2176)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3395, file: !200, line: 718, baseType: !553, size: 64, offset: 2240)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3395, file: !200, line: 720, baseType: !3474, size: 64, offset: 2304)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !200, line: 632, size: 64, elements: !3476)
!3476 = !{!3477, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3475, file: !200, line: 633, baseType: !64, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3475, file: !200, line: 634, baseType: !7, size: 32, offset: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3395, file: !200, line: 721, baseType: !3480, size: 64, offset: 2368)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !3235, !1299}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3395, file: !200, line: 722, baseType: !3484, size: 64, offset: 2432)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !200, line: 722, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3236, file: !193, line: 727, baseType: !3487, size: 64, offset: 4224)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !200, line: 742, size: 1792, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3496, !3497, !3498}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3488, file: !200, line: 743, baseType: !3269, size: 1472)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3488, file: !200, line: 744, baseType: !3272, size: 64, offset: 1472)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3488, file: !200, line: 745, baseType: !3493, size: 64, offset: 1536)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{null, !3235, !1403}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3488, file: !200, line: 746, baseType: !3272, size: 64, offset: 1600)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3488, file: !200, line: 747, baseType: !3263, size: 64, offset: 1664)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3488, file: !200, line: 748, baseType: !3263, size: 64, offset: 1728)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3236, file: !193, line: 736, baseType: !3500, size: 128, offset: 4288)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !193, line: 529, size: 128, elements: !3501)
!3501 = !{!3502, !3506}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3500, file: !193, line: 531, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3505, line: 13, flags: DIFlagFwdDecl)
!3505 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3500, file: !193, line: 532, baseType: !3507, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !193, line: 49, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3236, file: !193, line: 738, baseType: !3510, size: 64, offset: 4416)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3512)
!3512 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !193, line: 738, flags: DIFlagFwdDecl)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3236, file: !193, line: 740, baseType: !3514, size: 64, offset: 4480)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3236, file: !193, line: 741, baseType: !553, size: 64, offset: 4544)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3236, file: !193, line: 746, baseType: !553, size: 64, offset: 4608)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3236, file: !193, line: 747, baseType: !3518, size: 64, offset: 4672)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3520)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !193, line: 747, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3236, file: !193, line: 749, baseType: !3522, size: 64, offset: 4736)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !193, line: 428, size: 128, elements: !3524)
!3524 = !{!3525, !3526, !3527}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3523, file: !193, line: 433, baseType: !7, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3523, file: !193, line: 434, baseType: !7, size: 32, offset: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3523, file: !193, line: 435, baseType: !44, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3236, file: !193, line: 751, baseType: !102, size: 128, offset: 4800)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3236, file: !193, line: 762, baseType: !3530, size: 64, offset: 4928)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !193, line: 762, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3236, file: !193, line: 770, baseType: !3533, offset: 4992)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3534, line: 5, elements: !680)
!3534 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3236, file: !193, line: 772, baseType: !3536, size: 64, offset: 4992)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3538, line: 48, size: 1152, elements: !3539)
!3538 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!3539 = !{!3540, !3541, !3543, !3544, !3648, !3656, !3657, !3658, !3659, !3660, !3661}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3537, file: !3538, line: 49, baseType: !21, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3537, file: !3538, line: 50, baseType: !3542, size: 32, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3538, line: 25, baseType: !549)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3537, file: !3538, line: 51, baseType: !21, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3537, file: !3538, line: 52, baseType: !3545, size: 512, offset: 192)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3546, line: 41, size: 512, elements: !3547)
!3546 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3547 = !{!3548, !3550, !3644, !3645, !3646, !3647}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3545, file: !3546, line: 42, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3545, file: !3546, line: 43, baseType: !3551, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3553)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3546, line: 125, size: 1408, elements: !3554)
!3554 = !{!3555, !3559, !3563, !3569, !3573, !3574, !3578, !3582, !3586, !3591, !3595, !3596, !3600, !3604, !3608, !3619, !3620, !3621, !3622, !3632, !3636, !3640}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3553, file: !3546, line: 126, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!3549, !3549}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3553, file: !3546, line: 127, baseType: !3560, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{null, !3549}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3553, file: !3546, line: 128, baseType: !3564, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!1403, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3553, file: !3546, line: 129, baseType: !3570, size: 64, offset: 192)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!1332, !3567, !3255}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3553, file: !3546, line: 131, baseType: !3564, size: 64, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3553, file: !3546, line: 133, baseType: !3575, size: 64, offset: 320)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!214, !3567}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3553, file: !3546, line: 134, baseType: !3579, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!1403, !3567, !21}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3553, file: !3546, line: 136, baseType: !3583, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!27, !3567, !21, !7, !25, !40}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3553, file: !3546, line: 141, baseType: !3587, size: 64, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!27, !3567, !21, !3590, !40}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3553, file: !3546, line: 144, baseType: !3592, size: 64, offset: 576)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!21, !3567}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3553, file: !3546, line: 145, baseType: !3592, size: 64, offset: 640)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3553, file: !3546, line: 146, baseType: !3597, size: 64, offset: 704)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!3549, !3567}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3553, file: !3546, line: 148, baseType: !3601, size: 64, offset: 768)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!3549, !3567, !3549}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3553, file: !3546, line: 151, baseType: !3605, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!3549, !3567, !21}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3553, file: !3546, line: 153, baseType: !3609, size: 64, offset: 896)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!27, !3567, !21, !21, !7, !7, !3612}
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3546, line: 94, size: 640, elements: !3614)
!3614 = !{!3615, !3616, !3617}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3613, file: !3546, line: 95, baseType: !3549, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3613, file: !3546, line: 96, baseType: !7, size: 32, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3613, file: !3546, line: 97, baseType: !3618, size: 512, offset: 128)
!3618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 512, elements: !1065)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3553, file: !3546, line: 158, baseType: !3601, size: 64, offset: 960)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3553, file: !3546, line: 161, baseType: !3597, size: 64, offset: 1024)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3553, file: !3546, line: 163, baseType: !3556, size: 64, offset: 1088)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3553, file: !3546, line: 164, baseType: !3623, size: 64, offset: 1152)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!27, !3567, !3626}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3546, line: 73, size: 128, elements: !3628)
!3628 = !{!3629, !3630, !3631}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3627, file: !3546, line: 74, baseType: !7, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3627, file: !3546, line: 75, baseType: !7, size: 32, offset: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3627, file: !3546, line: 76, baseType: !3567, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3553, file: !3546, line: 166, baseType: !3633, size: 64, offset: 1216)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!25, !3549, !27}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3553, file: !3546, line: 167, baseType: !3637, size: 64, offset: 1280)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!27, !3567, !7}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3553, file: !3546, line: 168, baseType: !3641, size: 64, offset: 1344)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!27, !3549}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3545, file: !3546, line: 44, baseType: !3235, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3545, file: !3546, line: 45, baseType: !102, size: 128, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3545, file: !3546, line: 46, baseType: !102, size: 128, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3545, file: !3546, line: 47, baseType: !88, size: 8, offset: 448)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3537, file: !3538, line: 54, baseType: !3649, size: 64, offset: 704)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3538, line: 28, size: 256, elements: !3651)
!3651 = !{!3652, !3653, !3654, !3655}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3650, file: !3538, line: 29, baseType: !406, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3650, file: !3538, line: 30, baseType: !27, size: 32, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3650, file: !3538, line: 31, baseType: !25, size: 64, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3650, file: !3538, line: 32, baseType: !3649, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3537, file: !3538, line: 55, baseType: !3649, size: 64, offset: 768)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3537, file: !3538, line: 56, baseType: !3536, size: 64, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3537, file: !3538, line: 57, baseType: !3536, size: 64, offset: 896)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3537, file: !3538, line: 58, baseType: !3536, size: 64, offset: 960)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3537, file: !3538, line: 62, baseType: !44, size: 64, offset: 1024)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3537, file: !3538, line: 63, baseType: !25, size: 64, offset: 1088)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3236, file: !193, line: 773, baseType: !3549, size: 64, offset: 5056)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3236, file: !193, line: 776, baseType: !27, size: 32, offset: 5120)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3236, file: !193, line: 778, baseType: !636, size: 32, offset: 5152)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3236, file: !193, line: 779, baseType: !549, size: 32, offset: 5184)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3236, file: !193, line: 781, baseType: !64, size: 32, offset: 5216)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3236, file: !193, line: 782, baseType: !102, size: 128, offset: 5248)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3236, file: !193, line: 784, baseType: !3669, size: 64, offset: 5376)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3671)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3672, line: 52, size: 768, elements: !3673)
!3672 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3682, !3686, !3687, !3688, !3716, !3720, !3724}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3671, file: !3672, line: 53, baseType: !21, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3671, file: !3672, line: 55, baseType: !452, size: 64, offset: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3671, file: !3672, line: 56, baseType: !452, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3671, file: !3672, line: 58, baseType: !3252, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3671, file: !3672, line: 59, baseType: !3679, size: 64, offset: 256)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!406, !3255, !3261}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3671, file: !3672, line: 61, baseType: !3683, size: 64, offset: 320)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !3669}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3671, file: !3672, line: 62, baseType: !3263, size: 64, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3671, file: !3672, line: 64, baseType: !3272, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3671, file: !3672, line: 66, baseType: !3689, size: 64, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3691)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !164, line: 39, size: 384, elements: !3692)
!3692 = !{!3693, !3694, !3698, !3702, !3708, !3712}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3691, file: !164, line: 40, baseType: !163, size: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3691, file: !164, line: 41, baseType: !3695, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!1403}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3691, file: !164, line: 42, baseType: !3699, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!25}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3691, file: !164, line: 43, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!1332, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !274, line: 177, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3691, file: !164, line: 44, baseType: !3709, size: 64, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!1332}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3691, file: !164, line: 45, baseType: !3713, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{null, !25}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3671, file: !3672, line: 67, baseType: !3717, size: 64, offset: 576)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!1332, !3255}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3671, file: !3672, line: 69, baseType: !3721, size: 64, offset: 640)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3255, !1582, !1583}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3671, file: !3672, line: 71, baseType: !3267, size: 64, offset: 704)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3236, file: !193, line: 785, baseType: !452, size: 64, offset: 5440)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3236, file: !193, line: 787, baseType: !3263, size: 64, offset: 5504)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3236, file: !193, line: 788, baseType: !3728, size: 64, offset: 5568)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !193, line: 46, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3236, file: !193, line: 789, baseType: !3731, size: 64, offset: 5632)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !193, line: 48, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3236, file: !193, line: 791, baseType: !3734, size: 64, offset: 5696)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !193, line: 597, size: 128, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3740, !3741}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3735, file: !193, line: 598, baseType: !220, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3735, file: !193, line: 599, baseType: !229, size: 32, offset: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3735, file: !193, line: 600, baseType: !234, size: 32, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3735, file: !193, line: 601, baseType: !1403, size: 8, offset: 96)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3735, file: !193, line: 602, baseType: !1403, size: 8, offset: 104)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3236, file: !193, line: 793, baseType: !239, size: 32, offset: 5760)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3236, file: !193, line: 795, baseType: !1403, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3236, file: !193, line: 796, baseType: !1403, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3236, file: !193, line: 797, baseType: !1403, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3236, file: !193, line: 798, baseType: !1403, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3236, file: !193, line: 799, baseType: !1403, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3230, file: !246, line: 307, baseType: !3235, size: 64, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3230, file: !246, line: 308, baseType: !452, size: 64, offset: 320)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3230, file: !246, line: 309, baseType: !452, size: 64, offset: 384)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3230, file: !246, line: 310, baseType: !21, size: 64, offset: 448)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3230, file: !246, line: 311, baseType: !27, size: 32, offset: 512)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3230, file: !246, line: 316, baseType: !27, size: 32, offset: 544)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3230, file: !246, line: 318, baseType: !743, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3230, file: !246, line: 319, baseType: !3756, size: 64, offset: 640)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !246, line: 977, size: 1856, elements: !3758)
!3758 = !{!3759, !3774, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3757, file: !246, line: 978, baseType: !3760, size: 896)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !246, line: 873, size: 896, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3760, file: !246, line: 874, baseType: !3229, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3760, file: !246, line: 875, baseType: !2975, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3760, file: !246, line: 877, baseType: !102, size: 128, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3760, file: !246, line: 879, baseType: !102, size: 128, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3760, file: !246, line: 880, baseType: !102, size: 128, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3760, file: !246, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3760, file: !246, line: 885, baseType: !7, size: 32, offset: 544)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3760, file: !246, line: 886, baseType: !7, size: 32, offset: 576)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3760, file: !246, line: 888, baseType: !54, size: 32, offset: 608)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3760, file: !246, line: 889, baseType: !818, size: 128, align: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3760, file: !246, line: 891, baseType: !25, size: 64, offset: 768)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3760, file: !246, line: 898, baseType: !27, size: 32, offset: 832)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3757, file: !246, line: 979, baseType: !3775, size: 64, offset: 896)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3757, file: !246, line: 981, baseType: !102, size: 128, offset: 960)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3757, file: !246, line: 982, baseType: !27, size: 32, offset: 1088)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3757, file: !246, line: 984, baseType: !27, size: 32, offset: 1120)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3757, file: !246, line: 985, baseType: !27, size: 32, offset: 1152)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3757, file: !246, line: 987, baseType: !774, size: 32, offset: 1184)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3757, file: !246, line: 988, baseType: !1022, size: 512, offset: 1216)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3757, file: !246, line: 989, baseType: !1030, size: 64, offset: 1728)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3757, file: !246, line: 990, baseType: !7, size: 32, offset: 1792)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3230, file: !246, line: 320, baseType: !54, size: 32, offset: 704)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3230, file: !246, line: 321, baseType: !27, size: 32, offset: 736)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3230, file: !246, line: 322, baseType: !27, size: 32, offset: 768)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3230, file: !246, line: 325, baseType: !7, size: 32, offset: 800)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3230, file: !246, line: 331, baseType: !3789, size: 64, offset: 832)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3229}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3230, file: !246, line: 332, baseType: !3789, size: 64, offset: 896)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3230, file: !246, line: 350, baseType: !3794, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!27, !3212}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3230, file: !246, line: 356, baseType: !3798, size: 64, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{null, !3212, !1198}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3230, file: !246, line: 357, baseType: !3798, size: 64, offset: 1088)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3230, file: !246, line: 385, baseType: !3803, size: 64, offset: 1152)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!27, !3212, !27}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3230, file: !246, line: 386, baseType: !3807, size: 64, offset: 1216)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3212, !27}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3230, file: !246, line: 406, baseType: !3807, size: 64, offset: 1280)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3230, file: !246, line: 407, baseType: !3807, size: 64, offset: 1344)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3230, file: !246, line: 415, baseType: !3813, size: 64, offset: 1408)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{null, !3212}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3230, file: !246, line: 427, baseType: !3817, size: 64, offset: 1472)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !3229, !7}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3230, file: !246, line: 436, baseType: !3821, size: 64, offset: 1536)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!27, !3229}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3230, file: !246, line: 443, baseType: !3789, size: 64, offset: 1600)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3230, file: !246, line: 450, baseType: !3794, size: 64, offset: 1664)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3230, file: !246, line: 455, baseType: !3827, size: 64, offset: 1728)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !3775, !1403}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3230, file: !246, line: 461, baseType: !3831, size: 64, offset: 1792)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3833, line: 325, flags: DIFlagFwdDecl)
!3833 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3230, file: !246, line: 469, baseType: !3835, size: 64, offset: 1856)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !3775, !3775}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3230, file: !246, line: 476, baseType: !3839, size: 64, offset: 1920)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!25, !3212, !3842, !27, !1403}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3230, file: !246, line: 483, baseType: !3713, size: 64, offset: 1984)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3230, file: !246, line: 494, baseType: !3845, size: 64, offset: 2048)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!441, !3212, !3848, !44}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !246, line: 1014, size: 448, elements: !3850)
!3850 = !{!3851, !3852, !3855, !3856, !3857, !3858, !3863}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3849, file: !246, line: 1015, baseType: !3212, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3849, file: !246, line: 1016, baseType: !3853, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !246, line: 641, flags: DIFlagFwdDecl)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3849, file: !246, line: 1017, baseType: !44, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3849, file: !246, line: 1018, baseType: !44, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3849, file: !246, line: 1019, baseType: !553, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, scope: !3849, file: !246, line: 1020, baseType: !3859, size: 64, offset: 320)
!3859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3849, file: !246, line: 1020, size: 64, elements: !3860)
!3860 = !{!3861, !3862}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3859, file: !246, line: 1021, baseType: !25, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3859, file: !246, line: 1022, baseType: !44, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3849, file: !246, line: 1024, baseType: !27, size: 32, offset: 384)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3230, file: !246, line: 506, baseType: !3865, size: 64, offset: 2112)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!27, !105}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3230, file: !246, line: 520, baseType: !3813, size: 64, offset: 2176)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3230, file: !246, line: 530, baseType: !3794, size: 64, offset: 2240)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3230, file: !246, line: 537, baseType: !3871, size: 64, offset: 2304)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!1403, !3229, !27}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3230, file: !246, line: 542, baseType: !3875, size: 64, offset: 2368)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!27, !3212, !553}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3213, file: !246, line: 715, baseType: !25, size: 64, offset: 1280)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3213, file: !246, line: 717, baseType: !245, size: 32, offset: 1344)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3213, file: !246, line: 718, baseType: !7, size: 32, offset: 1376)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3213, file: !246, line: 719, baseType: !3882, size: 64, offset: 1408)
!3882 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3883, line: 26, baseType: !3884)
!3883 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3883, line: 24, size: 64, elements: !3885)
!3885 = !{!3886}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3884, file: !3883, line: 25, baseType: !3007, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3213, file: !246, line: 720, baseType: !767, size: 64, offset: 1472)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3213, file: !246, line: 728, baseType: !553, size: 64, offset: 1536)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3213, file: !246, line: 729, baseType: !553, size: 64, offset: 1600)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3213, file: !246, line: 730, baseType: !553, size: 64, offset: 1664)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3213, file: !246, line: 732, baseType: !3892, size: 1088, offset: 1728)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3893, line: 385, size: 1088, elements: !3894)
!3893 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3894 = !{!3895, !3896, !3897, !3898, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3948, !3949, !3956, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3892, file: !3893, line: 390, baseType: !550, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3892, file: !3893, line: 395, baseType: !550, size: 32, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3892, file: !3893, line: 400, baseType: !554, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !3893, line: 402, baseType: !3899, size: 64, offset: 128)
!3899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !3893, line: 402, size: 64, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3899, file: !3893, line: 403, baseType: !554, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3899, file: !3893, line: 404, baseType: !554, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3892, file: !3893, line: 407, baseType: !554, size: 64, offset: 192)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3892, file: !3893, line: 408, baseType: !554, size: 64, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3892, file: !3893, line: 410, baseType: !554, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3892, file: !3893, line: 411, baseType: !554, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3892, file: !3893, line: 412, baseType: !554, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3892, file: !3893, line: 413, baseType: !554, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3892, file: !3893, line: 414, baseType: !554, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3892, file: !3893, line: 415, baseType: !554, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3892, file: !3893, line: 416, baseType: !554, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3892, file: !3893, line: 417, baseType: !554, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3892, file: !3893, line: 418, baseType: !554, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3892, file: !3893, line: 419, baseType: !554, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3892, file: !3893, line: 420, baseType: !554, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3892, file: !3893, line: 421, baseType: !554, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3892, file: !3893, line: 422, baseType: !554, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3892, file: !3893, line: 423, baseType: !554, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3892, file: !3893, line: 424, baseType: !554, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3892, file: !3893, line: 435, baseType: !554, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3892, file: !3893, line: 436, baseType: !554, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3892, file: !3893, line: 437, baseType: !554, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3892, file: !3893, line: 439, baseType: !554, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3892, file: !3893, line: 440, baseType: !554, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3892, file: !3893, line: 442, baseType: !554, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3892, file: !3893, line: 443, baseType: !554, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3892, file: !3893, line: 444, baseType: !554, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3892, file: !3893, line: 445, baseType: !554, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3892, file: !3893, line: 446, baseType: !554, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3892, file: !3893, line: 447, baseType: !554, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3892, file: !3893, line: 448, baseType: !554, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3892, file: !3893, line: 449, baseType: !554, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3892, file: !3893, line: 450, baseType: !554, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3892, file: !3893, line: 451, baseType: !554, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3892, file: !3893, line: 452, baseType: !554, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3892, file: !3893, line: 453, baseType: !554, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3892, file: !3893, line: 454, baseType: !554, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3892, file: !3893, line: 455, baseType: !554, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3892, file: !3893, line: 456, baseType: !554, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3892, file: !3893, line: 457, baseType: !554, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3892, file: !3893, line: 458, baseType: !554, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3892, file: !3893, line: 459, baseType: !554, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !3893, line: 461, baseType: !3944, size: 32, offset: 384)
!3944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !3893, line: 461, size: 32, elements: !3945)
!3945 = !{!3946, !3947}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !3944, file: !3893, line: 462, baseType: !550, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !3944, file: !3893, line: 463, baseType: !550, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3892, file: !3893, line: 466, baseType: !550, size: 32, offset: 416)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !3893, line: 467, baseType: !3950, size: 64, offset: 448)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !3893, line: 467, size: 64, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !3950, file: !3893, line: 468, baseType: !554, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !3950, file: !3893, line: 469, baseType: !554, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !3950, file: !3893, line: 470, baseType: !554, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !3950, file: !3893, line: 471, baseType: !554, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !3892, file: !3893, line: 473, baseType: !3957, size: 64, offset: 512)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3892, file: !3893, line: 473, size: 64, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !3957, file: !3893, line: 474, baseType: !554, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !3957, file: !3893, line: 475, baseType: !554, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !3957, file: !3893, line: 476, baseType: !554, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !3957, file: !3893, line: 477, baseType: !554, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3892, file: !3893, line: 479, baseType: !554, size: 64, offset: 576)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3892, file: !3893, line: 485, baseType: !554, size: 64, offset: 640)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3892, file: !3893, line: 490, baseType: !550, size: 32, offset: 704)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3892, file: !3893, line: 492, baseType: !1300, size: 32, offset: 736)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3892, file: !3893, line: 501, baseType: !554, size: 64, offset: 768)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3892, file: !3893, line: 506, baseType: !550, size: 32, offset: 832)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3892, file: !3893, line: 507, baseType: !99, size: 16, offset: 864)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3892, file: !3893, line: 508, baseType: !99, size: 16, offset: 880)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3892, file: !3893, line: 509, baseType: !550, size: 32, offset: 896)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3892, file: !3893, line: 510, baseType: !550, size: 32, offset: 928)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3892, file: !3893, line: 518, baseType: !554, size: 64, offset: 960)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3892, file: !3893, line: 520, baseType: !554, size: 64, offset: 1024)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3213, file: !246, line: 733, baseType: !98, size: 16, offset: 2816)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3213, file: !246, line: 734, baseType: !98, size: 16, offset: 2832)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3213, file: !246, line: 735, baseType: !98, size: 16, offset: 2848)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3213, file: !246, line: 736, baseType: !3979, size: 1536, offset: 2880)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !246, line: 155, size: 1536, elements: !3980)
!3980 = !{!3981, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4065, !4066, !4067, !4068}
!3981 = !DIDerivedType(tag: DW_TAG_member, scope: !3979, file: !246, line: 157, baseType: !3982, size: 768)
!3982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3979, file: !246, line: 157, size: 768, elements: !3983)
!3983 = !{!3984, !4003, !4007, !4011, !4016, !4038}
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !246, line: 158, baseType: !3985, size: 768)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !246, line: 158, size: 768, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !4002}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3985, file: !246, line: 159, baseType: !553, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !3985, file: !246, line: 160, baseType: !553, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !3985, file: !246, line: 161, baseType: !44, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !3985, file: !246, line: 162, baseType: !44, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !3985, file: !246, line: 163, baseType: !27, size: 32, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3985, file: !246, line: 164, baseType: !27, size: 32, offset: 288)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3985, file: !246, line: 165, baseType: !27, size: 32, offset: 320)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3985, file: !246, line: 166, baseType: !27, size: 32, offset: 352)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !3985, file: !246, line: 168, baseType: !3996, size: 192, offset: 384)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !246, line: 134, size: 192, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4001}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3996, file: !246, line: 135, baseType: !553, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !3996, file: !246, line: 136, baseType: !7, size: 32, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3996, file: !246, line: 137, baseType: !27, size: 32, offset: 96)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !3996, file: !246, line: 138, baseType: !27, size: 32, offset: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !3985, file: !246, line: 169, baseType: !3996, size: 192, offset: 576)
!4003 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !246, line: 171, baseType: !4004, size: 512)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !246, line: 171, size: 512, elements: !4005)
!4005 = !{!4006}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4004, file: !246, line: 172, baseType: !1022, size: 512)
!4007 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !246, line: 174, baseType: !4008, size: 128)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !246, line: 174, size: 128, elements: !4009)
!4009 = !{!4010}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !4008, file: !246, line: 176, baseType: !102, size: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !246, line: 178, baseType: !4012, size: 128)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !246, line: 178, size: 128, elements: !4013)
!4013 = !{!4014, !4015}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !4012, file: !246, line: 179, baseType: !553, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !4012, file: !246, line: 180, baseType: !553, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !246, line: 183, baseType: !4017, size: 320)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !246, line: 183, size: 320, elements: !4018)
!4018 = !{!4019, !4027}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4017, file: !246, line: 189, baseType: !4020, size: 192)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !4021, line: 14, size: 192, elements: !4022)
!4021 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!4022 = !{!4023, !4024, !4025, !4026}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4020, file: !4021, line: 15, baseType: !44, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4020, file: !4021, line: 16, baseType: !44, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4020, file: !4021, line: 17, baseType: !88, size: 8, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4020, file: !4021, line: 18, baseType: !88, size: 8, offset: 136)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !4017, file: !246, line: 190, baseType: !4028, size: 128, offset: 192)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !4029, line: 21, size: 128, elements: !4030)
!4029 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!4030 = !{!4031, !4036}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !4028, file: !4029, line: 22, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !4029, line: 17, size: 64, elements: !4033)
!4033 = !{!4034}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4032, file: !4029, line: 18, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4028, file: !4029, line: 23, baseType: !4037, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !246, line: 193, baseType: !4039, size: 192)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !246, line: 193, size: 192, elements: !4040)
!4040 = !{!4041, !4042, !4043, !4044, !4045}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !4039, file: !246, line: 194, baseType: !88, size: 8)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !4039, file: !246, line: 195, baseType: !88, size: 8, offset: 8)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4039, file: !246, line: 196, baseType: !98, size: 16, offset: 16)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !4039, file: !246, line: 197, baseType: !553, size: 64, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !4039, file: !246, line: 198, baseType: !553, size: 64, offset: 128)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3979, file: !246, line: 205, baseType: !903, size: 64, offset: 768)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3979, file: !246, line: 211, baseType: !25, size: 64, offset: 832)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3979, file: !246, line: 214, baseType: !44, size: 64, offset: 896)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3979, file: !246, line: 223, baseType: !27, size: 32, offset: 960)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !3979, file: !246, line: 229, baseType: !3882, size: 64, offset: 1024)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3979, file: !246, line: 234, baseType: !553, size: 64, offset: 1088)
!4052 = !DIDerivedType(tag: DW_TAG_member, scope: !3979, file: !246, line: 236, baseType: !4053, size: 128, offset: 1152)
!4053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3979, file: !246, line: 236, size: 128, elements: !4054)
!4054 = !{!4055, !4060}
!4055 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !246, line: 237, baseType: !4056, size: 128)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4053, file: !246, line: 237, size: 128, elements: !4057)
!4057 = !{!4058, !4059}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !4056, file: !246, line: 241, baseType: !553, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !4056, file: !246, line: 249, baseType: !3882, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !246, line: 251, baseType: !4061, size: 128)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4053, file: !246, line: 251, size: 128, elements: !4062)
!4062 = !{!4063, !4064}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !4061, file: !246, line: 252, baseType: !553, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !4061, file: !246, line: 253, baseType: !553, size: 64, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !3979, file: !246, line: 261, baseType: !553, size: 64, offset: 1280)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !3979, file: !246, line: 262, baseType: !553, size: 64, offset: 1344)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !3979, file: !246, line: 268, baseType: !553, size: 64, offset: 1408)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !3979, file: !246, line: 269, baseType: !553, size: 64, offset: 1472)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3213, file: !246, line: 738, baseType: !2975, size: 64, offset: 4416)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3213, file: !246, line: 744, baseType: !3775, size: 64, offset: 4480)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3213, file: !246, line: 745, baseType: !765, size: 64, offset: 4544)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3213, file: !246, line: 751, baseType: !767, size: 64, offset: 4608)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3213, file: !246, line: 752, baseType: !767, size: 64, offset: 4672)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3213, file: !246, line: 757, baseType: !761, size: 256, offset: 4736)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3213, file: !246, line: 758, baseType: !102, size: 128, offset: 4992)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3213, file: !246, line: 759, baseType: !3212, size: 64, offset: 5120)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3213, file: !246, line: 761, baseType: !27, size: 32, offset: 5184)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3213, file: !246, line: 762, baseType: !27, size: 32, offset: 5216)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3213, file: !246, line: 764, baseType: !102, size: 128, offset: 5248)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3213, file: !246, line: 765, baseType: !903, size: 64, offset: 5376)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3213, file: !246, line: 768, baseType: !761, size: 256, offset: 5440)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3213, file: !246, line: 769, baseType: !54, size: 32, offset: 5696)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3213, file: !246, line: 771, baseType: !3853, size: 64, offset: 5760)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3213, file: !246, line: 772, baseType: !102, size: 128, offset: 5824)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3213, file: !246, line: 773, baseType: !44, size: 64, offset: 5952)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3213, file: !246, line: 774, baseType: !27, size: 32, offset: 6016)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3213, file: !246, line: 777, baseType: !59, size: 192, offset: 6080)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3213, file: !246, line: 778, baseType: !4089, size: 64, offset: 6272)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !263, line: 1083, size: 384, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4090, file: !263, line: 1084, baseType: !838, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4090, file: !263, line: 1085, baseType: !27, size: 32, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4090, file: !263, line: 1086, baseType: !27, size: 32, offset: 96)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4090, file: !263, line: 1087, baseType: !4089, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4090, file: !263, line: 1088, baseType: !1225, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4090, file: !263, line: 1089, baseType: !818, size: 128, align: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3213, file: !246, line: 781, baseType: !7, size: 32, offset: 6336)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3213, file: !246, line: 782, baseType: !7, size: 32, offset: 6368)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3213, file: !246, line: 783, baseType: !7, size: 32, offset: 6400)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3213, file: !246, line: 784, baseType: !7, size: 32, offset: 6432)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3213, file: !246, line: 785, baseType: !44, size: 64, offset: 6464)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3213, file: !246, line: 786, baseType: !4104, size: 256, offset: 6528)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4105, line: 17, size: 256, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4106 = !{!4107, !4108, !4113}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4104, file: !4105, line: 18, baseType: !922, size: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4104, file: !4105, line: 19, baseType: !4109, size: 64, offset: 128)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4104, file: !4105, line: 20, baseType: !4114, size: 64, offset: 192)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4115, line: 16, size: 64, elements: !4116)
!4115 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4116 = !{!4117}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4114, file: !4115, line: 17, baseType: !903, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3213, file: !246, line: 787, baseType: !818, size: 128, align: 64, offset: 6784)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3213, file: !246, line: 788, baseType: !7, size: 32, offset: 6912)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3213, file: !246, line: 789, baseType: !4114, size: 64, offset: 6976)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3213, file: !246, line: 791, baseType: !54, size: 32, offset: 7040)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3213, file: !246, line: 794, baseType: !4123, size: 192, offset: 7104)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !246, line: 579, size: 192, elements: !4124)
!4124 = !{!4125, !4126, !4127}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4123, file: !246, line: 580, baseType: !102, size: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4123, file: !246, line: 581, baseType: !774, size: 32, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4123, file: !246, line: 582, baseType: !7, size: 32, offset: 160)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3213, file: !246, line: 796, baseType: !4129, size: 64, offset: 7296)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !246, line: 585, size: 128, elements: !4131)
!4131 = !{!4132, !4133}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4130, file: !246, line: 586, baseType: !44, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4130, file: !246, line: 587, baseType: !44, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3213, file: !246, line: 797, baseType: !44, size: 64, offset: 7360)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3213, file: !246, line: 800, baseType: !3212, size: 64, offset: 7424)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3213, file: !246, line: 802, baseType: !3813, size: 64, offset: 7488)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3213, file: !246, line: 803, baseType: !818, size: 128, align: 64, offset: 7552)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3213, file: !246, line: 805, baseType: !883, size: 64, offset: 7680)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3213, file: !246, line: 806, baseType: !553, size: 64, offset: 7744)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3213, file: !246, line: 808, baseType: !767, size: 64, offset: 7808)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3213, file: !246, line: 810, baseType: !4142, size: 64, offset: 7872)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!553}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3213, file: !246, line: 811, baseType: !4146, size: 64, offset: 7936)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !246, line: 605, baseType: !4147)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{null, !3212, !4150, !4255}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !246, line: 1148, size: 2048, align: 512, elements: !4152)
!4152 = !{!4153, !4154, !4155, !4156, !4157, !4162, !4163, !4164, !4169, !4170, !4177, !4198, !4220, !4230, !4248, !4249, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4151, file: !246, line: 1153, baseType: !553, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4151, file: !246, line: 1154, baseType: !553, size: 64, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4151, file: !246, line: 1155, baseType: !553, size: 64, offset: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4151, file: !246, line: 1161, baseType: !553, size: 64, offset: 192)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4151, file: !246, line: 1165, baseType: !4158, size: 64, offset: 256)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4151, file: !246, line: 1162, size: 64, elements: !4159)
!4159 = !{!4160, !4161}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4158, file: !246, line: 1163, baseType: !549, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4158, file: !246, line: 1164, baseType: !549, size: 32, offset: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4151, file: !246, line: 1166, baseType: !553, size: 64, offset: 320)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4151, file: !246, line: 1167, baseType: !553, size: 64, offset: 384)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4151, file: !246, line: 1171, baseType: !4165, size: 64, offset: 448)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4151, file: !246, line: 1168, size: 64, elements: !4166)
!4166 = !{!4167, !4168}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4165, file: !246, line: 1169, baseType: !549, size: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4165, file: !246, line: 1170, baseType: !549, size: 32, offset: 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4151, file: !246, line: 1177, baseType: !553, size: 64, offset: 512)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4151, file: !246, line: 1178, baseType: !4171, size: 64, offset: 576)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !246, line: 67, size: 64, elements: !4173)
!4173 = !{!4174, !4175}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4172, file: !246, line: 68, baseType: !554, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4172, file: !246, line: 69, baseType: !4176, offset: 64)
!4176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, elements: !1634)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4151, file: !246, line: 1179, baseType: !4178, size: 64, offset: 640)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !246, line: 93, size: 256, elements: !4180)
!4180 = !{!4181, !4197}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4179, file: !246, line: 94, baseType: !4182, size: 224)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !246, line: 83, size: 224, elements: !4183)
!4183 = !{!4184, !4190, !4195, !4196}
!4184 = !DIDerivedType(tag: DW_TAG_member, scope: !4182, file: !246, line: 84, baseType: !4185, size: 64)
!4185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4182, file: !246, line: 84, size: 64, elements: !4186)
!4186 = !{!4187, !4189}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4185, file: !246, line: 85, baseType: !4188, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4185, file: !246, line: 86, baseType: !44, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4182, file: !246, line: 88, baseType: !4191, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !246, line: 80, baseType: !4192)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!44, !25, !1332, !44, !44}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4182, file: !246, line: 89, baseType: !25, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4182, file: !246, line: 90, baseType: !549, size: 32, offset: 192)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4179, file: !246, line: 95, baseType: !549, size: 32, offset: 224)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4151, file: !246, line: 1180, baseType: !4199, size: 64, offset: 704)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !246, line: 123, size: 128, elements: !4201)
!4201 = !{!4202, !4203, !4204}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4200, file: !246, line: 124, baseType: !554, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4200, file: !246, line: 125, baseType: !554, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4200, file: !246, line: 126, baseType: !4205, offset: 128)
!4205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4206, elements: !1634)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3893, line: 1415, size: 192, elements: !4207)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4206, file: !3893, line: 1416, baseType: !554, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4206, file: !3893, line: 1417, baseType: !554, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4206, file: !3893, line: 1418, baseType: !554, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4206, file: !3893, line: 1419, baseType: !554, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4206, file: !3893, line: 1420, baseType: !554, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4206, file: !3893, line: 1421, baseType: !554, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4206, file: !3893, line: 1422, baseType: !554, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4206, file: !3893, line: 1423, baseType: !554, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4206, file: !3893, line: 1424, baseType: !554, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4206, file: !3893, line: 1425, baseType: !554, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4206, file: !3893, line: 1426, baseType: !554, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4206, file: !3893, line: 1427, baseType: !554, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4151, file: !246, line: 1181, baseType: !4221, size: 64, offset: 768)
!4221 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3893, line: 1430, size: 64, elements: !4222)
!4222 = !{!4223, !4224}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4221, file: !3893, line: 1431, baseType: !554, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, scope: !4221, file: !3893, line: 1433, baseType: !4225, size: 64)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4221, file: !3893, line: 1433, size: 64, elements: !4226)
!4226 = !{!4227, !4228, !4229}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4225, file: !3893, line: 1434, baseType: !550, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4225, file: !3893, line: 1435, baseType: !99, size: 16, offset: 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4225, file: !3893, line: 1436, baseType: !99, size: 16, offset: 48)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4151, file: !246, line: 1182, baseType: !4231, size: 64, offset: 832)
!4231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3893, line: 1267, size: 64, elements: !4232)
!4232 = !{!4233, !4234}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4231, file: !3893, line: 1268, baseType: !554, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, scope: !4231, file: !3893, line: 1269, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4231, file: !3893, line: 1269, size: 64, elements: !4236)
!4236 = !{!4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4235, file: !3893, line: 1270, baseType: !554, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4235, file: !3893, line: 1271, baseType: !554, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4235, file: !3893, line: 1272, baseType: !554, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4235, file: !3893, line: 1273, baseType: !554, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4235, file: !3893, line: 1274, baseType: !554, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4235, file: !3893, line: 1275, baseType: !554, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4235, file: !3893, line: 1276, baseType: !554, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4235, file: !3893, line: 1277, baseType: !554, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4235, file: !3893, line: 1278, baseType: !554, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4235, file: !3893, line: 1279, baseType: !554, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4235, file: !3893, line: 1280, baseType: !554, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4151, file: !246, line: 1183, baseType: !553, size: 64, offset: 896)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4151, file: !246, line: 1185, baseType: !4250, size: 128, offset: 960)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4251, line: 7, size: 128, elements: !4252)
!4251 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4252 = !{!4253, !4254}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4250, file: !4251, line: 8, baseType: !554, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4250, file: !4251, line: 9, baseType: !4255, size: 64, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4257, line: 103, size: 1344, elements: !4258)
!4257 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4258 = !{!4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4287, !4288, !4289}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4256, file: !4257, line: 109, baseType: !44, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4256, file: !4257, line: 110, baseType: !44, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4256, file: !4257, line: 111, baseType: !44, size: 64, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4256, file: !4257, line: 112, baseType: !44, size: 64, offset: 192)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4256, file: !4257, line: 113, baseType: !44, size: 64, offset: 256)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4256, file: !4257, line: 114, baseType: !44, size: 64, offset: 320)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4256, file: !4257, line: 117, baseType: !44, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4256, file: !4257, line: 118, baseType: !44, size: 64, offset: 448)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4256, file: !4257, line: 119, baseType: !44, size: 64, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4256, file: !4257, line: 120, baseType: !44, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4256, file: !4257, line: 121, baseType: !44, size: 64, offset: 640)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4256, file: !4257, line: 122, baseType: !44, size: 64, offset: 704)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4256, file: !4257, line: 123, baseType: !44, size: 64, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4256, file: !4257, line: 124, baseType: !44, size: 64, offset: 832)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4256, file: !4257, line: 125, baseType: !44, size: 64, offset: 896)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4256, file: !4257, line: 139, baseType: !44, size: 64, offset: 960)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4256, file: !4257, line: 142, baseType: !44, size: 64, offset: 1024)
!4276 = !DIDerivedType(tag: DW_TAG_member, scope: !4256, file: !4257, line: 144, baseType: !4277, size: 64, offset: 1088)
!4277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4256, file: !4257, line: 144, size: 64, elements: !4278)
!4278 = !{!4279, !4280, !4281}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4277, file: !4257, line: 146, baseType: !98, size: 16)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4277, file: !4257, line: 148, baseType: !553, size: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4277, file: !4257, line: 150, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4257, line: 59, size: 64, elements: !4283)
!4283 = !{!4284, !4285, !4286}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4282, file: !4257, line: 61, baseType: !553, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4282, file: !4257, line: 63, baseType: !553, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4282, file: !4257, line: 65, baseType: !553, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4256, file: !4257, line: 153, baseType: !44, size: 64, offset: 1152)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4256, file: !4257, line: 154, baseType: !44, size: 64, offset: 1216)
!4289 = !DIDerivedType(tag: DW_TAG_member, scope: !4256, file: !4257, line: 156, baseType: !4290, size: 64, offset: 1280)
!4290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4256, file: !4257, line: 156, size: 64, elements: !4291)
!4291 = !{!4292, !4293, !4294}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4290, file: !4257, line: 158, baseType: !98, size: 16)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4290, file: !4257, line: 160, baseType: !553, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4290, file: !4257, line: 162, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4257, line: 69, size: 64, elements: !4296)
!4296 = !{!4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4295, file: !4257, line: 71, baseType: !553, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4295, file: !4257, line: 73, baseType: !553, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4295, file: !4257, line: 75, baseType: !553, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4295, file: !4257, line: 77, baseType: !553, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4295, file: !4257, line: 80, baseType: !553, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4295, file: !4257, line: 83, baseType: !553, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4295, file: !4257, line: 86, baseType: !553, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4295, file: !4257, line: 88, baseType: !553, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4295, file: !4257, line: 93, baseType: !553, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4295, file: !4257, line: 100, baseType: !553, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4151, file: !246, line: 1186, baseType: !4250, size: 128, offset: 1088)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4151, file: !246, line: 1187, baseType: !553, size: 64, offset: 1216)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4151, file: !246, line: 1189, baseType: !553, size: 64, offset: 1280)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4151, file: !246, line: 1190, baseType: !553, size: 64, offset: 1344)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4151, file: !246, line: 1191, baseType: !553, size: 64, offset: 1408)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4151, file: !246, line: 1192, baseType: !553, size: 64, offset: 1472)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4151, file: !246, line: 1193, baseType: !553, size: 64, offset: 1536)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4151, file: !246, line: 1194, baseType: !553, size: 64, offset: 1600)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4151, file: !246, line: 1195, baseType: !553, size: 64, offset: 1664)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3213, file: !246, line: 812, baseType: !25, size: 64, offset: 8000)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3213, file: !246, line: 820, baseType: !4318, size: 64, offset: 8064)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !170, line: 372, size: 1024, elements: !4320)
!4320 = !{!4321, !4322, !4363, !4431, !4717, !4718, !4719, !4724, !4725, !4726, !4727, !4729, !4732}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4319, file: !170, line: 373, baseType: !102, size: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4319, file: !170, line: 374, baseType: !4323, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !170, line: 291, size: 576, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329, !4333, !4357, !4361, !4362}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4324, file: !170, line: 292, baseType: !21, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4324, file: !170, line: 293, baseType: !25, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !4324, file: !170, line: 295, baseType: !25, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4324, file: !170, line: 297, baseType: !4330, size: 64, offset: 192)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!27, !4318, !169, !25}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !4324, file: !170, line: 299, baseType: !4334, size: 64, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !170, line: 275, size: 320, elements: !4336)
!4336 = !{!4337, !4338}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4335, file: !170, line: 276, baseType: !21, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, scope: !4335, file: !170, line: 277, baseType: !4339, size: 256, offset: 64)
!4339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4335, file: !170, line: 277, size: 256, elements: !4340)
!4340 = !{!4341, !4353}
!4341 = !DIDerivedType(tag: DW_TAG_member, scope: !4339, file: !170, line: 278, baseType: !4342, size: 256)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4339, file: !170, line: 278, size: 256, elements: !4343)
!4343 = !{!4344, !4345, !4347, !4348, !4350, !4351, !4352}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4342, file: !170, line: 279, baseType: !21, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4342, file: !170, line: 280, baseType: !4346, size: 32, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4342, file: !170, line: 281, baseType: !4346, size: 32, offset: 96)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !4342, file: !170, line: 282, baseType: !4349, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !4342, file: !170, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !4342, file: !170, line: 284, baseType: !4346, size: 32, offset: 160)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4342, file: !170, line: 285, baseType: !4346, size: 32, offset: 192)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !4339, file: !170, line: 287, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!27, !4318}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !4324, file: !170, line: 300, baseType: !4358, size: 64, offset: 320)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!105, !4318}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !4324, file: !170, line: 301, baseType: !102, size: 128, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !4324, file: !170, line: 302, baseType: !4354, size: 64, offset: 512)
!4363 = !DIDerivedType(tag: DW_TAG_member, scope: !4319, file: !170, line: 375, baseType: !4364, size: 64, offset: 192)
!4364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4319, file: !170, line: 375, size: 64, elements: !4365)
!4365 = !{!4366, !4367}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4364, file: !170, line: 376, baseType: !21, size: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !4364, file: !170, line: 378, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !4370, line: 32, size: 640, elements: !4371)
!4370 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4371 = !{!4372, !4373, !4392, !4416, !4417, !4418, !4419, !4423, !4424}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4369, file: !4370, line: 33, baseType: !21, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4369, file: !4370, line: 34, baseType: !4374, size: 128, offset: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4375, line: 85, size: 128, elements: !4376)
!4375 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4376 = !{!4377, !4378}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4374, file: !4375, line: 86, baseType: !54, size: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, scope: !4374, file: !4375, line: 101, baseType: !4379, size: 64, offset: 64)
!4379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4374, file: !4375, line: 101, size: 64, elements: !4380)
!4380 = !{!4381, !4382, !4389}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4379, file: !4375, line: 102, baseType: !44, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4379, file: !4375, line: 103, baseType: !4383, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4375, line: 117, size: 128, elements: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4384, file: !4375, line: 118, baseType: !1299, size: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4384, file: !4375, line: 119, baseType: !1299, size: 32, offset: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4384, file: !4375, line: 120, baseType: !441, size: 64, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4379, file: !4375, line: 104, baseType: !4390, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4375, line: 104, flags: DIFlagFwdDecl)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !4369, file: !4370, line: 35, baseType: !4393, size: 64, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !4395, line: 61, size: 128, elements: !4396)
!4395 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4396 = !{!4397, !4398}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4394, file: !4395, line: 62, baseType: !25, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, scope: !4394, file: !4395, line: 63, baseType: !4399, size: 64, offset: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4394, file: !4395, line: 63, size: 64, elements: !4400)
!4400 = !{!4401, !4402, !4415}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4399, file: !4395, line: 65, baseType: !44, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !4399, file: !4395, line: 66, baseType: !4403, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !4405, line: 169, size: 192, elements: !4406)
!4405 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!4406 = !{!4407, !4408, !4409}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4404, file: !4405, line: 170, baseType: !4403, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4404, file: !4405, line: 171, baseType: !352, size: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !4404, file: !4405, line: 172, baseType: !4410, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4395, line: 32, size: 64, elements: !4412)
!4412 = !{!4413, !4414}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4411, file: !4395, line: 33, baseType: !1299, size: 32)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4411, file: !4395, line: 34, baseType: !1299, size: 32, offset: 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !4399, file: !4395, line: 67, baseType: !4410, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !4369, file: !4370, line: 36, baseType: !25, size: 64, offset: 256)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !4369, file: !4370, line: 37, baseType: !25, size: 64, offset: 320)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !4369, file: !4370, line: 38, baseType: !25, size: 64, offset: 384)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !4369, file: !4370, line: 39, baseType: !4420, size: 64, offset: 448)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!27}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !4369, file: !4370, line: 40, baseType: !2462, size: 64, offset: 512)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4369, file: !4370, line: 41, baseType: !4425, size: 64, offset: 576)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !4370, line: 26, size: 192, elements: !4427)
!4427 = !{!4428, !4429, !4430}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4426, file: !4370, line: 27, baseType: !25, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4426, file: !4370, line: 28, baseType: !25, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4426, file: !4370, line: 29, baseType: !27, size: 32, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4319, file: !170, line: 380, baseType: !4432, size: 256, offset: 256)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !170, line: 148, size: 256, elements: !4433)
!4433 = !{!4434, !4435, !4436}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4432, file: !170, line: 149, baseType: !672, size: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4432, file: !170, line: 150, baseType: !27, size: 32, offset: 128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4432, file: !170, line: 151, baseType: !4437, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !170, line: 141, size: 256, elements: !4439)
!4439 = !{!4440, !4714, !4715, !4716}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4438, file: !170, line: 142, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !170, line: 138, baseType: !4442)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!180, !4445, !27, !4713}
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !170, line: 93, size: 67776, elements: !4447)
!4447 = !{!4448, !4665, !4666, !4668, !4669, !4670, !4671, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4695, !4696, !4697, !4698, !4706, !4707, !4708, !4709, !4710, !4711, !4712}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !4446, file: !170, line: 94, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !4451, line: 319, size: 2560, elements: !4452)
!4451 = !DIFile(filename: "kernel/trace/trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3cded56e3446de300e74751317646ffb")
!4452 = !{!4453, !4454, !4455, !4485, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4596, !4609, !4610, !4611, !4649, !4652, !4653, !4654, !4655, !4656, !4657}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4450, file: !4451, line: 320, baseType: !102, size: 128)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4450, file: !4451, line: 321, baseType: !406, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !4450, file: !4451, line: 322, baseType: !4456, size: 320, offset: 192)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !4451, line: 210, size: 320, elements: !4457)
!4457 = !{!4458, !4459, !4463, !4483, !4484}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !4456, file: !4451, line: 211, baseType: !4449, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4456, file: !4451, line: 212, baseType: !4460, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_buffer", file: !4462, line: 9, flags: DIFlagFwdDecl)
!4462 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4456, file: !4451, line: 213, baseType: !4464, size: 64, offset: 128)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array_cpu", file: !4451, line: 183, size: 1024, elements: !4466)
!4466 = !{!4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !4465, file: !4451, line: 184, baseType: !54, size: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_page", scope: !4465, file: !4451, line: 185, baseType: !25, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4465, file: !4451, line: 187, baseType: !44, size: 64, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "saved_latency", scope: !4465, file: !4451, line: 188, baseType: !44, size: 64, offset: 192)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "critical_start", scope: !4465, file: !4451, line: 189, baseType: !44, size: 64, offset: 256)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "critical_end", scope: !4465, file: !4451, line: 190, baseType: !44, size: 64, offset: 320)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "critical_sequence", scope: !4465, file: !4451, line: 191, baseType: !44, size: 64, offset: 384)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "nice", scope: !4465, file: !4451, line: 192, baseType: !44, size: 64, offset: 448)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !4465, file: !4451, line: 193, baseType: !44, size: 64, offset: 512)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !4465, file: !4451, line: 194, baseType: !44, size: 64, offset: 576)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "skipped_entries", scope: !4465, file: !4451, line: 195, baseType: !44, size: 64, offset: 640)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_timestamp", scope: !4465, file: !4451, line: 196, baseType: !553, size: 64, offset: 704)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4465, file: !4451, line: 197, baseType: !1721, size: 32, offset: 768)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4465, file: !4451, line: 198, baseType: !486, size: 32, offset: 800)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !4465, file: !4451, line: 199, baseType: !1848, size: 128, offset: 832)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_pid", scope: !4465, file: !4451, line: 204, baseType: !1403, size: 8, offset: 960)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "time_start", scope: !4456, file: !4451, line: 214, baseType: !553, size: 64, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4456, file: !4451, line: 215, baseType: !27, size: 32, offset: 256)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_pids", scope: !4450, file: !4451, line: 346, baseType: !4486, size: 64, offset: 512)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_pid_list", file: !4488, line: 78, size: 16896, elements: !4489)
!4488 = !DIFile(filename: "kernel/trace/pid_list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca7ceba9dd4bbea3985e3aae225c7de1")
!4489 = !{!4490, !4491, !4492, !4508, !4509, !4510, !4511}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4487, file: !4488, line: 79, baseType: !774, size: 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "refill_irqwork", scope: !4487, file: !4488, line: 80, baseType: !4104, size: 256, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !4487, file: !4488, line: 81, baseType: !4493, size: 16384, offset: 320)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4494, size: 16384, elements: !4506)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "upper_chunk", file: !4488, line: 73, size: 16384, elements: !4496)
!4496 = !{!4497, !4498}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4495, file: !4488, line: 74, baseType: !4494, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4495, file: !4488, line: 75, baseType: !4499, size: 16384)
!4499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4500, size: 16384, elements: !4506)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "lower_chunk", file: !4488, line: 68, size: 16384, elements: !4502)
!4502 = !{!4503, !4504}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4501, file: !4488, line: 69, baseType: !4500, size: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4501, file: !4488, line: 70, baseType: !4505, size: 16384)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 16384, elements: !4506)
!4506 = !{!4507}
!4507 = !DISubrange(count: 256)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "upper_list", scope: !4487, file: !4488, line: 82, baseType: !4494, size: 64, offset: 16704)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "lower_list", scope: !4487, file: !4488, line: 83, baseType: !4500, size: 64, offset: 16768)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "free_upper_chunks", scope: !4487, file: !4488, line: 84, baseType: !27, size: 32, offset: 16832)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "free_lower_chunks", scope: !4487, file: !4488, line: 85, baseType: !27, size: 32, offset: 16864)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "filtered_no_pids", scope: !4450, file: !4451, line: 347, baseType: !4486, size: 64, offset: 576)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "max_lock", scope: !4450, file: !4451, line: 361, baseType: !76, size: 32, offset: 640)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_disabled", scope: !4450, file: !4451, line: 362, baseType: !27, size: 32, offset: 672)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "stop_count", scope: !4450, file: !4451, line: 369, baseType: !27, size: 32, offset: 704)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "clock_id", scope: !4450, file: !4451, line: 370, baseType: !27, size: 32, offset: 736)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_topts", scope: !4450, file: !4451, line: 371, baseType: !27, size: 32, offset: 768)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "clear_trace", scope: !4450, file: !4451, line: 372, baseType: !1403, size: 8, offset: 800)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_percent", scope: !4450, file: !4451, line: 373, baseType: !27, size: 32, offset: 832)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "n_err_log_entries", scope: !4450, file: !4451, line: 374, baseType: !7, size: 32, offset: 864)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "current_trace", scope: !4450, file: !4451, line: 375, baseType: !4522, size: 64, offset: 896)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !4451, line: 556, size: 1216, elements: !4524)
!4524 = !{!4525, !4526, !4530, !4534, !4535, !4536, !4537, !4541, !4542, !4543, !4544, !4548, !4552, !4556, !4560, !4564, !4568, !4569, !4581, !4582, !4583, !4584}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4523, file: !4451, line: 557, baseType: !21, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4523, file: !4451, line: 558, baseType: !4527, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!27, !4449}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4523, file: !4451, line: 559, baseType: !4531, size: 64, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{null, !4449}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4523, file: !4451, line: 560, baseType: !4531, size: 64, offset: 192)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4523, file: !4451, line: 561, baseType: !4531, size: 64, offset: 256)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "update_thresh", scope: !4523, file: !4451, line: 562, baseType: !4527, size: 64, offset: 320)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4523, file: !4451, line: 563, baseType: !4538, size: 64, offset: 384)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !4445}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_open", scope: !4523, file: !4451, line: 564, baseType: !4538, size: 64, offset: 448)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4523, file: !4451, line: 565, baseType: !4538, size: 64, offset: 512)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_close", scope: !4523, file: !4451, line: 566, baseType: !4538, size: 64, offset: 576)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4523, file: !4451, line: 567, baseType: !4545, size: 64, offset: 640)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!438, !4445, !1225, !406, !40, !45}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4523, file: !4451, line: 570, baseType: !4549, size: 64, offset: 704)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!438, !4445, !1225, !45, !3050, !40, !7}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "print_header", scope: !4523, file: !4451, line: 580, baseType: !4553, size: 64, offset: 768)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{null, !749}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "print_line", scope: !4523, file: !4451, line: 581, baseType: !4557, size: 64, offset: 832)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!180, !4445}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "set_flag", scope: !4523, file: !4451, line: 583, baseType: !4561, size: 64, offset: 896)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!27, !4449, !549, !549, !27}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_changed", scope: !4523, file: !4451, line: 586, baseType: !4565, size: 64, offset: 960)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!27, !4449, !549, !27}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4523, file: !4451, line: 588, baseType: !4522, size: 64, offset: 1024)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4523, file: !4451, line: 589, baseType: !4570, size: 64, offset: 1088)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_flags", file: !4451, line: 519, size: 192, elements: !4572)
!4572 = !{!4573, !4574, !4580}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4571, file: !4451, line: 520, baseType: !549, size: 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !4571, file: !4451, line: 521, baseType: !4575, size: 64, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracer_opt", file: !4451, line: 510, size: 128, elements: !4577)
!4577 = !{!4578, !4579}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4576, file: !4451, line: 511, baseType: !21, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !4576, file: !4451, line: 512, baseType: !549, size: 32, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4571, file: !4451, line: 522, baseType: !4522, size: 64, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4523, file: !4451, line: 590, baseType: !27, size: 32, offset: 1152)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "print_max", scope: !4523, file: !4451, line: 591, baseType: !1403, size: 8, offset: 1184)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "allow_instances", scope: !4523, file: !4451, line: 592, baseType: !1403, size: 8, offset: 1192)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "noboot", scope: !4523, file: !4451, line: 597, baseType: !1403, size: 8, offset: 1200)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags", scope: !4450, file: !4451, line: 376, baseType: !7, size: 32, offset: 960)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "trace_flags_index", scope: !4450, file: !4451, line: 377, baseType: !561, size: 256, offset: 992)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4450, file: !4451, line: 378, baseType: !7, size: 32, offset: 1248)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "start_lock", scope: !4450, file: !4451, line: 379, baseType: !774, size: 32, offset: 1280)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "err_log", scope: !4450, file: !4451, line: 380, baseType: !102, size: 128, offset: 1344)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4450, file: !4451, line: 381, baseType: !515, size: 64, offset: 1472)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4450, file: !4451, line: 382, baseType: !515, size: 64, offset: 1536)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dir", scope: !4450, file: !4451, line: 383, baseType: !515, size: 64, offset: 1600)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "event_dir", scope: !4450, file: !4451, line: 384, baseType: !4594, size: 64, offset: 1664)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "eventfs_inode", file: !170, line: 659, flags: DIFlagFwdDecl)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !4450, file: !4451, line: 385, baseType: !4597, size: 64, offset: 1728)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_options", file: !4451, line: 220, size: 128, elements: !4599)
!4599 = !{!4600, !4601}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "tracer", scope: !4598, file: !4451, line: 221, baseType: !4522, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "topts", scope: !4598, file: !4451, line: 222, baseType: !4602, size: 64, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_option_dentry", file: !4451, line: 529, size: 256, elements: !4604)
!4604 = !{!4605, !4606, !4607, !4608}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !4603, file: !4451, line: 530, baseType: !4575, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4603, file: !4451, line: 531, baseType: !4570, size: 64, offset: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !4603, file: !4451, line: 532, baseType: !4449, size: 64, offset: 128)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4603, file: !4451, line: 533, baseType: !515, size: 64, offset: 192)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "systems", scope: !4450, file: !4451, line: 386, baseType: !102, size: 128, offset: 1792)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4450, file: !4451, line: 387, baseType: !102, size: 128, offset: 1920)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "trace_marker_file", scope: !4450, file: !4451, line: 388, baseType: !4612, size: 64, offset: 2048)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_file", file: !170, line: 655, size: 768, elements: !4614)
!4614 = !{!4615, !4616, !4617, !4625, !4626, !4627, !4644, !4645, !4646, !4647, !4648}
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4613, file: !170, line: 656, baseType: !102, size: 128)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "event_call", scope: !4613, file: !170, line: 657, baseType: !4318, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4613, file: !170, line: 658, baseType: !4618, size: 64, offset: 192)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !4451, line: 1332, size: 128, elements: !4620)
!4620 = !{!4621, !4624}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "prog", scope: !4619, file: !4451, line: 1333, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DICompositeType(tag: DW_TAG_structure_type, name: "prog_entry", file: !4451, line: 1330, flags: DIFlagFwdDecl)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "filter_string", scope: !4619, file: !4451, line: 1334, baseType: !406, size: 64, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !4613, file: !170, line: 659, baseType: !4594, size: 64, offset: 256)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !4613, file: !170, line: 660, baseType: !4449, size: 64, offset: 320)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4613, file: !170, line: 661, baseType: !4628, size: 64, offset: 384)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_subsystem_dir", file: !4451, line: 1344, size: 384, elements: !4630)
!4630 = !{!4631, !4632, !4640, !4641, !4642, !4643}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4629, file: !4451, line: 1345, baseType: !102, size: 128)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem", scope: !4629, file: !4451, line: 1346, baseType: !4633, size: 64, offset: 128)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "event_subsystem", file: !4451, line: 1337, size: 320, elements: !4635)
!4635 = !{!4636, !4637, !4638, !4639}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4634, file: !4451, line: 1338, baseType: !102, size: 128)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4634, file: !4451, line: 1339, baseType: !21, size: 64, offset: 128)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4634, file: !4451, line: 1340, baseType: !4618, size: 64, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !4634, file: !4451, line: 1341, baseType: !27, size: 32, offset: 256)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !4629, file: !4451, line: 1347, baseType: !4449, size: 64, offset: 192)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !4629, file: !4451, line: 1348, baseType: !4594, size: 64, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !4629, file: !4451, line: 1349, baseType: !27, size: 32, offset: 320)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !4629, file: !4451, line: 1350, baseType: !27, size: 32, offset: 352)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "triggers", scope: !4613, file: !170, line: 662, baseType: !102, size: 128, offset: 448)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4613, file: !170, line: 680, baseType: !44, size: 64, offset: 576)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4613, file: !170, line: 681, baseType: !54, size: 32, offset: 640)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "sm_ref", scope: !4613, file: !170, line: 682, baseType: !54, size: 32, offset: 672)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "tm_ref", scope: !4613, file: !170, line: 683, baseType: !54, size: 32, offset: 704)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "tracing_cpumask", scope: !4450, file: !4451, line: 389, baseType: !4650, size: 64, offset: 2112)
!4650 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1145, line: 913, baseType: !4651)
!4651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1146, size: 64, elements: !1150)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_cpumask", scope: !4450, file: !4451, line: 391, baseType: !4650, size: 64, offset: 2176)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4450, file: !4451, line: 392, baseType: !27, size: 32, offset: 2240)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "trace_ref", scope: !4450, file: !4451, line: 393, baseType: !27, size: 32, offset: 2272)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "no_filter_buffering_ref", scope: !4450, file: !4451, line: 407, baseType: !27, size: 32, offset: 2304)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "hist_vars", scope: !4450, file: !4451, line: 408, baseType: !102, size: 128, offset: 2368)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "last_func_repeats", scope: !4450, file: !4451, line: 412, baseType: !4658, size: 64, offset: 2496)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_func_repeats", file: !4451, line: 307, size: 256, elements: !4660)
!4660 = !{!4661, !4662, !4663, !4664}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4659, file: !4451, line: 308, baseType: !44, size: 64)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ip", scope: !4659, file: !4451, line: 309, baseType: !44, size: 64, offset: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4659, file: !4451, line: 310, baseType: !44, size: 64, offset: 128)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "ts_last_call", scope: !4659, file: !4451, line: 311, baseType: !553, size: 64, offset: 192)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4446, file: !170, line: 95, baseType: !4522, size: 64, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !4446, file: !170, line: 96, baseType: !4667, size: 64, offset: 128)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4446, file: !170, line: 97, baseType: !25, size: 64, offset: 192)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !4446, file: !170, line: 98, baseType: !27, size: 32, offset: 256)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4446, file: !170, line: 99, baseType: !761, size: 256, offset: 320)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !4446, file: !170, line: 100, baseType: !4672, size: 64, offset: 576)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !4462, line: 10, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !4446, file: !170, line: 101, baseType: !44, size: 64, offset: 640)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4446, file: !170, line: 102, baseType: !25, size: 64, offset: 704)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !4446, file: !170, line: 103, baseType: !7, size: 32, offset: 768)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4446, file: !170, line: 104, baseType: !406, size: 64, offset: 832)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !4446, file: !170, line: 105, baseType: !7, size: 32, offset: 896)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !4446, file: !170, line: 106, baseType: !441, size: 64, offset: 960)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !4446, file: !170, line: 109, baseType: !4682, size: 33088, offset: 1024)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !4683, line: 14, size: 33088, elements: !4684)
!4683 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!4684 = !{!4685, !4686, !4693, !4694}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4682, file: !4683, line: 15, baseType: !2363, size: 32768)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4682, file: !4683, line: 16, baseType: !4687, size: 192, offset: 32768)
!4687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !4688, line: 18, size: 192, elements: !4689)
!4688 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!4689 = !{!4690, !4691, !4692}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4687, file: !4688, line: 19, baseType: !406, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4687, file: !4688, line: 20, baseType: !40, size: 64, offset: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4687, file: !4688, line: 21, baseType: !40, size: 64, offset: 128)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !4682, file: !4683, line: 17, baseType: !40, size: 64, offset: 32960)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4682, file: !4683, line: 18, baseType: !27, size: 32, offset: 33024)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !4446, file: !170, line: 111, baseType: !4650, size: 64, offset: 34112)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !4446, file: !170, line: 114, baseType: !1403, size: 8, offset: 34176)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4446, file: !170, line: 117, baseType: !4682, size: 33088, offset: 34240)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !4446, file: !170, line: 118, baseType: !4699, size: 64, offset: 67328)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !170, line: 79, size: 64, elements: !4701)
!4701 = !{!4702, !4703, !4704, !4705}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4700, file: !170, line: 80, baseType: !31, size: 16)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4700, file: !170, line: 81, baseType: !92, size: 8, offset: 16)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !4700, file: !170, line: 82, baseType: !92, size: 8, offset: 24)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4700, file: !170, line: 83, baseType: !27, size: 32, offset: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !4446, file: !170, line: 119, baseType: !44, size: 64, offset: 67392)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !4446, file: !170, line: 120, baseType: !27, size: 32, offset: 67456)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !4446, file: !170, line: 121, baseType: !27, size: 32, offset: 67488)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4446, file: !170, line: 122, baseType: !27, size: 32, offset: 67520)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !4446, file: !170, line: 123, baseType: !553, size: 64, offset: 67584)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4446, file: !170, line: 125, baseType: !46, size: 64, offset: 67648)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4446, file: !170, line: 126, baseType: !441, size: 64, offset: 67712)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4438, file: !170, line: 143, baseType: !4441, size: 64, offset: 64)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !4438, file: !170, line: 144, baseType: !4441, size: 64, offset: 128)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !4438, file: !170, line: 145, baseType: !4441, size: 64, offset: 192)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !4319, file: !170, line: 381, baseType: !406, size: 64, offset: 512)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4319, file: !170, line: 382, baseType: !4618, size: 64, offset: 576)
!4719 = !DIDerivedType(tag: DW_TAG_member, scope: !4319, file: !170, line: 387, baseType: !4720, size: 64, offset: 640)
!4720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4319, file: !170, line: 387, size: 64, elements: !4721)
!4721 = !{!4722, !4723}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4720, file: !170, line: 388, baseType: !25, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4720, file: !170, line: 389, baseType: !54, size: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4319, file: !170, line: 391, baseType: !25, size: 64, offset: 704)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4319, file: !170, line: 394, baseType: !27, size: 32, offset: 768)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !4319, file: !170, line: 397, baseType: !27, size: 32, offset: 800)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !4319, file: !170, line: 398, baseType: !4728, size: 64, offset: 832)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !4319, file: !170, line: 399, baseType: !4730, size: 64, offset: 896)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !170, line: 399, flags: DIFlagFwdDecl)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !4319, file: !170, line: 401, baseType: !4733, size: 64, offset: 960)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!27, !4318, !3212}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3213, file: !246, line: 821, baseType: !4618, size: 64, offset: 8128)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3213, file: !246, line: 828, baseType: !4738, size: 64, offset: 8192)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !246, line: 1046, size: 1664, elements: !4740)
!4740 = !{!4741, !4742}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4739, file: !246, line: 1047, baseType: !1914, size: 1600)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4739, file: !246, line: 1048, baseType: !4743, size: 64, offset: 1600)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !246, line: 1039, size: 256, elements: !4745)
!4745 = !{!4746, !4747, !4748, !4749}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4744, file: !246, line: 1040, baseType: !553, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4744, file: !246, line: 1041, baseType: !553, size: 64, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4744, file: !246, line: 1042, baseType: !553, size: 64, offset: 128)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4744, file: !246, line: 1043, baseType: !27, size: 32, offset: 192)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3213, file: !246, line: 832, baseType: !25, size: 64, offset: 8256)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3213, file: !246, line: 834, baseType: !102, size: 128, offset: 8320)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3213, file: !246, line: 842, baseType: !550, size: 32, offset: 8448)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3182, file: !3183, line: 461, baseType: !44, size: 64, offset: 704)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3182, file: !3183, line: 463, baseType: !44, size: 64, offset: 768)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3182, file: !3183, line: 465, baseType: !44, size: 64, offset: 832)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3182, file: !3183, line: 466, baseType: !44, size: 64, offset: 896)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3182, file: !3183, line: 467, baseType: !44, size: 64, offset: 960)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3182, file: !3183, line: 473, baseType: !4759, size: 64, offset: 1024)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3183, line: 10, flags: DIFlagFwdDecl)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3182, file: !3183, line: 480, baseType: !44, size: 64, offset: 1088)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3182, file: !3183, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3182, file: !3183, line: 491, baseType: !549, size: 32, offset: 1184)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3182, file: !3183, line: 501, baseType: !4765, size: 33792, offset: 1536)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4766, line: 448, size: 33792, elements: !4767)
!4766 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4767 = !{!4768, !4769, !4770, !4878, !4879, !4885, !4886}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4765, file: !4766, line: 461, baseType: !7, size: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4765, file: !4766, line: 468, baseType: !44, size: 64, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4765, file: !4766, line: 476, baseType: !4771, size: 64, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4766, line: 356, size: 33280, align: 512, elements: !4773)
!4773 = !{!4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4772, file: !4766, line: 358, baseType: !7, size: 32)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4772, file: !4766, line: 361, baseType: !7, size: 32, offset: 32)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4772, file: !4766, line: 364, baseType: !553, size: 64, offset: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4772, file: !4766, line: 367, baseType: !553, size: 64, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4772, file: !4766, line: 370, baseType: !553, size: 64, offset: 192)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4772, file: !4766, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4772, file: !4766, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4772, file: !4766, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4772, file: !4766, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4772, file: !4766, line: 397, baseType: !4784, size: 32768, offset: 512)
!4784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4766, line: 348, size: 32768, elements: !4785)
!4785 = !{!4786, !4801, !4838, !4863, !4876}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4784, file: !4766, line: 349, baseType: !4787, size: 896)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4766, line: 12, size: 896, elements: !4788)
!4788 = !{!4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4800}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4787, file: !4766, line: 13, baseType: !549, size: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4787, file: !4766, line: 14, baseType: !549, size: 32, offset: 32)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4787, file: !4766, line: 15, baseType: !549, size: 32, offset: 64)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4787, file: !4766, line: 16, baseType: !549, size: 32, offset: 96)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4787, file: !4766, line: 17, baseType: !549, size: 32, offset: 128)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4787, file: !4766, line: 18, baseType: !549, size: 32, offset: 160)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4787, file: !4766, line: 19, baseType: !549, size: 32, offset: 192)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4787, file: !4766, line: 22, baseType: !4797, size: 640, offset: 224)
!4797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 640, elements: !4798)
!4798 = !{!4799}
!4799 = !DISubrange(count: 20)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4787, file: !4766, line: 25, baseType: !549, size: 32, offset: 864)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4784, file: !4766, line: 350, baseType: !4802, size: 4096, align: 128)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4766, line: 34, size: 4096, align: 128, elements: !4803)
!4803 = !{!4804, !4805, !4806, !4807, !4808, !4823, !4824, !4825, !4827, !4829, !4833}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4802, file: !4766, line: 35, baseType: !98, size: 16)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4802, file: !4766, line: 36, baseType: !98, size: 16, offset: 16)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4802, file: !4766, line: 37, baseType: !98, size: 16, offset: 32)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4802, file: !4766, line: 38, baseType: !98, size: 16, offset: 48)
!4808 = !DIDerivedType(tag: DW_TAG_member, scope: !4802, file: !4766, line: 39, baseType: !4809, size: 128, offset: 64)
!4809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4802, file: !4766, line: 39, size: 128, elements: !4810)
!4810 = !{!4811, !4816}
!4811 = !DIDerivedType(tag: DW_TAG_member, scope: !4809, file: !4766, line: 40, baseType: !4812, size: 128)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4809, file: !4766, line: 40, size: 128, elements: !4813)
!4813 = !{!4814, !4815}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4812, file: !4766, line: 41, baseType: !553, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4812, file: !4766, line: 42, baseType: !553, size: 64, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, scope: !4809, file: !4766, line: 44, baseType: !4817, size: 128)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4809, file: !4766, line: 44, size: 128, elements: !4818)
!4818 = !{!4819, !4820, !4821, !4822}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4817, file: !4766, line: 45, baseType: !549, size: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4817, file: !4766, line: 46, baseType: !549, size: 32, offset: 32)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4817, file: !4766, line: 47, baseType: !549, size: 32, offset: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4817, file: !4766, line: 48, baseType: !549, size: 32, offset: 96)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4802, file: !4766, line: 51, baseType: !549, size: 32, offset: 192)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4802, file: !4766, line: 52, baseType: !549, size: 32, offset: 224)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4802, file: !4766, line: 55, baseType: !4826, size: 1024, offset: 256)
!4826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 1024, elements: !562)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4802, file: !4766, line: 58, baseType: !4828, size: 2048, offset: 1280)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 2048, elements: !411)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4802, file: !4766, line: 60, baseType: !4830, size: 384, offset: 3328)
!4830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 384, elements: !4831)
!4831 = !{!4832}
!4832 = !DISubrange(count: 12)
!4833 = !DIDerivedType(tag: DW_TAG_member, scope: !4802, file: !4766, line: 62, baseType: !4834, size: 384, offset: 3712)
!4834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4802, file: !4766, line: 62, size: 384, elements: !4835)
!4835 = !{!4836, !4837}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4834, file: !4766, line: 63, baseType: !4830, size: 384)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4834, file: !4766, line: 64, baseType: !4830, size: 384)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4784, file: !4766, line: 351, baseType: !4839, size: 1088)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4766, line: 79, size: 1088, elements: !4840)
!4840 = !{!4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4862}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4839, file: !4766, line: 80, baseType: !549, size: 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4839, file: !4766, line: 81, baseType: !549, size: 32, offset: 32)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4839, file: !4766, line: 82, baseType: !549, size: 32, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4839, file: !4766, line: 83, baseType: !549, size: 32, offset: 96)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4839, file: !4766, line: 84, baseType: !549, size: 32, offset: 128)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4839, file: !4766, line: 85, baseType: !549, size: 32, offset: 160)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4839, file: !4766, line: 86, baseType: !549, size: 32, offset: 192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4839, file: !4766, line: 88, baseType: !4797, size: 640, offset: 224)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4839, file: !4766, line: 89, baseType: !88, size: 8, offset: 864)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4839, file: !4766, line: 90, baseType: !88, size: 8, offset: 872)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4839, file: !4766, line: 91, baseType: !88, size: 8, offset: 880)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4839, file: !4766, line: 92, baseType: !88, size: 8, offset: 888)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4839, file: !4766, line: 93, baseType: !88, size: 8, offset: 896)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4839, file: !4766, line: 94, baseType: !88, size: 8, offset: 904)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4839, file: !4766, line: 95, baseType: !4856, size: 64, offset: 960)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4858, line: 11, size: 128, elements: !4859)
!4858 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4859 = !{!4860, !4861}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4857, file: !4858, line: 12, baseType: !441, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4857, file: !4858, line: 13, baseType: !4255, size: 64, offset: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4839, file: !4766, line: 96, baseType: !549, size: 32, offset: 1024)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4784, file: !4766, line: 352, baseType: !4864, size: 4608, align: 512)
!4864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4766, line: 333, size: 4608, align: 512, elements: !4865)
!4865 = !{!4866, !4867, !4874}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4864, file: !4766, line: 334, baseType: !4802, size: 4096, align: 128)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4864, file: !4766, line: 335, baseType: !4868, size: 512, offset: 4096)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4766, line: 312, size: 512, elements: !4869)
!4869 = !{!4870, !4871, !4872}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4868, file: !4766, line: 313, baseType: !553, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4868, file: !4766, line: 314, baseType: !553, size: 64, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4868, file: !4766, line: 315, baseType: !4873, size: 384, offset: 128)
!4873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 384, elements: !1458)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4864, file: !4766, line: 336, baseType: !4875, offset: 4608)
!4875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, elements: !1634)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4784, file: !4766, line: 353, baseType: !4877, size: 32768)
!4877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 32768, elements: !2364)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4765, file: !4766, line: 484, baseType: !4771, size: 64, offset: 192)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4765, file: !4766, line: 491, baseType: !4880, size: 128, offset: 256)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4766, line: 404, size: 128, elements: !4881)
!4881 = !{!4882, !4883, !4884}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4880, file: !4766, line: 424, baseType: !553, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4880, file: !4766, line: 432, baseType: !7, size: 32, offset: 64)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4880, file: !4766, line: 440, baseType: !7, size: 32, offset: 96)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4765, file: !4766, line: 498, baseType: !4880, size: 128, offset: 384)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4765, file: !4766, line: 508, baseType: !4772, size: 33280, align: 512, offset: 512)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !884, file: !885, line: 31, baseType: !3831, size: 64, offset: 448)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !884, file: !885, line: 32, baseType: !7, size: 32, offset: 512)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !884, file: !885, line: 33, baseType: !883, size: 64, offset: 576)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !884, file: !885, line: 35, baseType: !4891, size: 64, offset: 640)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !885, line: 17, flags: DIFlagFwdDecl)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !884, file: !885, line: 37, baseType: !1358, size: 64, offset: 704)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !884, file: !885, line: 38, baseType: !1601, size: 64, offset: 768)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !884, file: !885, line: 39, baseType: !27, size: 32, offset: 832)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !884, file: !885, line: 40, baseType: !1391, size: 192, offset: 896)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !884, file: !885, line: 42, baseType: !27, size: 32, offset: 1088)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !835, file: !263, line: 951, baseType: !254, size: 32, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !835, file: !263, line: 952, baseType: !486, size: 32, offset: 160)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !835, file: !263, line: 952, baseType: !486, size: 32, offset: 192)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !835, file: !263, line: 953, baseType: !27, size: 32, offset: 224)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !806, file: !263, line: 1012, baseType: !1775, size: 64, offset: 896)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !806, file: !263, line: 1013, baseType: !4904, size: 256, offset: 960)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !263, line: 970, size: 256, elements: !4905)
!4905 = !{!4906, !4907, !4908, !4909, !4910, !4911}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4904, file: !263, line: 971, baseType: !44, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4904, file: !263, line: 972, baseType: !7, size: 32, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4904, file: !263, line: 973, baseType: !7, size: 32, offset: 96)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4904, file: !263, line: 974, baseType: !7, size: 32, offset: 128)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4904, file: !263, line: 975, baseType: !7, size: 32, offset: 160)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4904, file: !263, line: 976, baseType: !46, size: 64, offset: 192)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !806, file: !263, line: 1014, baseType: !4913, size: 128, offset: 1216)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4914, line: 8, size: 128, elements: !4915)
!4914 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4915 = !{!4916, !4917}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4913, file: !4914, line: 9, baseType: !625, size: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4913, file: !4914, line: 10, baseType: !515, size: 64, offset: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !806, file: !263, line: 1015, baseType: !480, size: 64, offset: 1344)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !806, file: !263, line: 1016, baseType: !4920, size: 64, offset: 1408)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !806, file: !263, line: 1018, baseType: !553, size: 64, offset: 1472)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !806, file: !263, line: 1020, baseType: !25, size: 64, offset: 1536)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !806, file: !263, line: 1023, baseType: !25, size: 64, offset: 1600)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !806, file: !263, line: 1027, baseType: !4728, size: 64, offset: 1664)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !806, file: !263, line: 1029, baseType: !476, size: 64, offset: 1728)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !806, file: !263, line: 1030, baseType: !4927, size: 32, offset: 1792)
!4927 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4928, line: 8, baseType: !549)
!4928 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !806, file: !263, line: 1031, baseType: !4927, size: 32, offset: 1824)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !750, file: !751, line: 29, baseType: !25, size: 64, offset: 896)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !692, file: !263, line: 2077, baseType: !746, size: 64, offset: 1088)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !692, file: !263, line: 2078, baseType: !746, size: 64, offset: 1152)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !692, file: !263, line: 2079, baseType: !746, size: 64, offset: 1216)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !692, file: !263, line: 2081, baseType: !4935, size: 64, offset: 1280)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!438, !631, !27, !406, !40, !46}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !692, file: !263, line: 2082, baseType: !4939, size: 64, offset: 1344)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!438, !631, !27, !21, !40, !46}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !692, file: !263, line: 2083, baseType: !4943, size: 64, offset: 1408)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!4946, !480}
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !268, line: 296, size: 1664, elements: !4949)
!4949 = !{!4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4974, !4975, !4976}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4948, file: !268, line: 297, baseType: !672, size: 128)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4948, file: !268, line: 298, baseType: !102, size: 128, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4948, file: !268, line: 299, baseType: !102, size: 128, offset: 256)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4948, file: !268, line: 300, baseType: !102, size: 128, offset: 384)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4948, file: !268, line: 301, baseType: !761, size: 256, offset: 512)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4948, file: !268, line: 302, baseType: !64, size: 32, offset: 768)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4948, file: !268, line: 303, baseType: !54, size: 32, offset: 800)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4948, file: !268, line: 304, baseType: !631, size: 64, offset: 832)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4948, file: !268, line: 305, baseType: !4959, size: 64, offset: 896)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !268, line: 68, size: 64, elements: !4960)
!4960 = !{!4961, !4973}
!4961 = !DIDerivedType(tag: DW_TAG_member, scope: !4959, file: !268, line: 69, baseType: !4962, size: 32)
!4962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4959, file: !268, line: 69, size: 32, elements: !4963)
!4963 = !{!4964, !4965, !4966}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4962, file: !268, line: 70, baseType: !486, size: 32)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4962, file: !268, line: 71, baseType: !495, size: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4962, file: !268, line: 72, baseType: !4967, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4968, line: 24, baseType: !4969)
!4968 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4968, line: 22, size: 32, elements: !4970)
!4970 = !{!4971}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4969, file: !4968, line: 23, baseType: !4972, size: 32)
!4972 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4968, line: 20, baseType: !492)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4959, file: !268, line: 74, baseType: !267, size: 32, offset: 32)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4948, file: !268, line: 306, baseType: !46, size: 64, offset: 960)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4948, file: !268, line: 307, baseType: !44, size: 64, offset: 1024)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4948, file: !268, line: 308, baseType: !4977, size: 576, offset: 1088)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !268, line: 205, size: 576, elements: !4978)
!4978 = !{!4979, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4977, file: !268, line: 206, baseType: !4980, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !268, line: 66, baseType: !48)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4977, file: !268, line: 207, baseType: !4980, size: 64, offset: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4977, file: !268, line: 208, baseType: !4980, size: 64, offset: 128)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4977, file: !268, line: 209, baseType: !4980, size: 64, offset: 192)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4977, file: !268, line: 210, baseType: !4980, size: 64, offset: 256)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4977, file: !268, line: 211, baseType: !4980, size: 64, offset: 320)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4977, file: !268, line: 212, baseType: !4980, size: 64, offset: 384)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4977, file: !268, line: 213, baseType: !1429, size: 64, offset: 448)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4977, file: !268, line: 214, baseType: !1429, size: 64, offset: 512)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !692, file: !263, line: 2085, baseType: !4990, size: 64, offset: 1472)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!441, !631, !4993}
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4995, line: 15, size: 256, elements: !4996)
!4995 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!4996 = !{!4997, !4998, !4999, !5000, !5001}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4994, file: !4995, line: 16, baseType: !326, size: 32)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4994, file: !4995, line: 19, baseType: !27, size: 32, offset: 32)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4994, file: !4995, line: 26, baseType: !44, size: 64, offset: 64)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4994, file: !4995, line: 33, baseType: !44, size: 64, offset: 128)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4994, file: !4995, line: 36, baseType: !5002, size: 64, offset: 192)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !4995, line: 36, flags: DIFlagFwdDecl)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !692, file: !263, line: 2087, baseType: !4990, size: 64, offset: 1536)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !692, file: !263, line: 2089, baseType: !662, size: 64, offset: 1600)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !632, file: !263, line: 1198, baseType: !5007, size: 64, offset: 448)
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5009)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !268, line: 324, size: 704, elements: !5010)
!5010 = !{!5011, !5015, !5019, !5023, !5024, !5025, !5026, !5027, !5032, !5037, !5041}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !5009, file: !268, line: 325, baseType: !5012, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!27, !4947}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !5009, file: !268, line: 326, baseType: !5016, size: 64, offset: 64)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!4947, !631, !27}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !5009, file: !268, line: 327, baseType: !5020, size: 64, offset: 128)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{null, !4947}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !5009, file: !268, line: 328, baseType: !5012, size: 64, offset: 192)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !5009, file: !268, line: 329, baseType: !5012, size: 64, offset: 256)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !5009, file: !268, line: 330, baseType: !5012, size: 64, offset: 320)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !5009, file: !268, line: 331, baseType: !720, size: 64, offset: 384)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !5009, file: !268, line: 334, baseType: !5028, size: 64, offset: 448)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!5031, !480}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !5009, file: !268, line: 335, baseType: !5033, size: 64, offset: 512)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DISubroutineType(types: !5035)
!5035 = !{!27, !480, !5036}
!5036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !5009, file: !268, line: 337, baseType: !5038, size: 64, offset: 576)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!27, !480, !5031}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5009, file: !268, line: 339, baseType: !5042, size: 64, offset: 640)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!27, !631, !5045}
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !632, file: !263, line: 1199, baseType: !5047, size: 64, offset: 512)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5049)
!5049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !268, line: 430, size: 704, elements: !5050)
!5050 = !{!5051, !5057, !5058, !5062, !5063, !5064, !5079, !5102, !5106, !5107, !5130}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !5049, file: !268, line: 431, baseType: !5052, size: 64)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!27, !631, !27, !27, !5055}
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4913)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !5049, file: !268, line: 432, baseType: !720, size: 64, offset: 64)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !5049, file: !268, line: 433, baseType: !5059, size: 64, offset: 128)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!27, !631, !7}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !5049, file: !268, line: 434, baseType: !5059, size: 64, offset: 192)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !5049, file: !268, line: 435, baseType: !720, size: 64, offset: 256)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !5049, file: !268, line: 436, baseType: !5065, size: 64, offset: 320)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!27, !631, !27, !5068}
!5068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5069, size: 64)
!5069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !268, line: 417, size: 256, elements: !5070)
!5070 = !{!5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078}
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !5069, file: !268, line: 418, baseType: !27, size: 32)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5069, file: !268, line: 419, baseType: !7, size: 32, offset: 32)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !5069, file: !268, line: 420, baseType: !7, size: 32, offset: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !5069, file: !268, line: 422, baseType: !7, size: 32, offset: 96)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !5069, file: !268, line: 423, baseType: !7, size: 32, offset: 128)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !5069, file: !268, line: 424, baseType: !7, size: 32, offset: 160)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !5069, file: !268, line: 425, baseType: !7, size: 32, offset: 192)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !5069, file: !268, line: 426, baseType: !7, size: 32, offset: 224)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !5049, file: !268, line: 437, baseType: !5080, size: 64, offset: 384)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!27, !631, !4959, !5083}
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !268, line: 345, size: 960, elements: !5085)
!5085 = !{!5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !5084, file: !268, line: 346, baseType: !27, size: 32)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !5084, file: !268, line: 347, baseType: !553, size: 64, offset: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !5084, file: !268, line: 348, baseType: !553, size: 64, offset: 128)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !5084, file: !268, line: 349, baseType: !553, size: 64, offset: 192)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !5084, file: !268, line: 350, baseType: !553, size: 64, offset: 256)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !5084, file: !268, line: 351, baseType: !553, size: 64, offset: 320)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !5084, file: !268, line: 352, baseType: !553, size: 64, offset: 384)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !5084, file: !268, line: 353, baseType: !771, size: 64, offset: 448)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !5084, file: !268, line: 355, baseType: !771, size: 64, offset: 512)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !5084, file: !268, line: 356, baseType: !27, size: 32, offset: 576)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !5084, file: !268, line: 357, baseType: !27, size: 32, offset: 608)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !5084, file: !268, line: 358, baseType: !553, size: 64, offset: 640)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !5084, file: !268, line: 359, baseType: !553, size: 64, offset: 704)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !5084, file: !268, line: 360, baseType: !553, size: 64, offset: 768)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !5084, file: !268, line: 361, baseType: !771, size: 64, offset: 832)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !5084, file: !268, line: 362, baseType: !27, size: 32, offset: 896)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !5049, file: !268, line: 438, baseType: !5103, size: 64, offset: 448)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!27, !631, !5045, !5083}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !5049, file: !268, line: 440, baseType: !5080, size: 64, offset: 512)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !5049, file: !268, line: 441, baseType: !5108, size: 64, offset: 576)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = !DISubroutineType(types: !5110)
!5110 = !{!27, !631, !5111}
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !268, line: 411, size: 1408, elements: !5113)
!5113 = !{!5114, !5115}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !5112, file: !268, line: 412, baseType: !7, size: 32)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !5112, file: !268, line: 413, baseType: !5116, size: 1344, offset: 64)
!5116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5117, size: 1344, elements: !407)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !268, line: 397, size: 448, elements: !5118)
!5118 = !{!5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5129}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5117, file: !268, line: 398, baseType: !7, size: 32)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !5117, file: !268, line: 399, baseType: !7, size: 32, offset: 32)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !5117, file: !268, line: 401, baseType: !7, size: 32, offset: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !5117, file: !268, line: 402, baseType: !7, size: 32, offset: 96)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !5117, file: !268, line: 403, baseType: !7, size: 32, offset: 128)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !5117, file: !268, line: 404, baseType: !7, size: 32, offset: 160)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !5117, file: !268, line: 405, baseType: !7, size: 32, offset: 192)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5117, file: !268, line: 406, baseType: !555, size: 64, offset: 256)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5117, file: !268, line: 407, baseType: !5128, size: 64, offset: 320)
!5128 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !30, line: 132, baseType: !553)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !5117, file: !268, line: 408, baseType: !5128, size: 64, offset: 384)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !5049, file: !268, line: 442, baseType: !5059, size: 64, offset: 640)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !632, file: !263, line: 1200, baseType: !5132, size: 64, offset: 576)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5134)
!5134 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !263, line: 54, flags: DIFlagFwdDecl)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !632, file: !263, line: 1201, baseType: !44, size: 64, offset: 640)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !632, file: !263, line: 1202, baseType: !44, size: 64, offset: 704)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !632, file: !263, line: 1203, baseType: !44, size: 64, offset: 768)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !632, file: !263, line: 1204, baseType: !515, size: 64, offset: 832)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !632, file: !263, line: 1205, baseType: !1253, size: 320, offset: 896)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !632, file: !263, line: 1206, baseType: !27, size: 32, offset: 1216)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !632, file: !263, line: 1207, baseType: !54, size: 32, offset: 1248)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !632, file: !263, line: 1209, baseType: !25, size: 64, offset: 1280)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !632, file: !263, line: 1211, baseType: !5144, size: 64, offset: 1344)
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5147)
!5147 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !263, line: 1211, flags: DIFlagFwdDecl)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !632, file: !263, line: 1223, baseType: !5149, size: 64, offset: 1408)
!5149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !532, line: 34, size: 64, elements: !5150)
!5150 = !{!5151}
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5149, file: !532, line: 35, baseType: !535, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !632, file: !263, line: 1224, baseType: !102, size: 128, offset: 1472)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !632, file: !263, line: 1225, baseType: !5154, size: 64, offset: 1600)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !263, line: 1225, flags: DIFlagFwdDecl)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !632, file: !263, line: 1226, baseType: !5157, size: 64, offset: 1664)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !263, line: 1226, flags: DIFlagFwdDecl)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !632, file: !263, line: 1227, baseType: !5160, size: 64, offset: 1728)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !263, line: 50, flags: DIFlagFwdDecl)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !632, file: !263, line: 1228, baseType: !5163, size: 64, offset: 1792)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !263, line: 1228, flags: DIFlagFwdDecl)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !632, file: !263, line: 1229, baseType: !672, size: 128, offset: 1856)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !632, file: !263, line: 1230, baseType: !7, size: 32, offset: 1984)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !632, file: !263, line: 1231, baseType: !5168, size: 2496, offset: 2048)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !268, line: 521, size: 2496, elements: !5169)
!5169 = !{!5170, !5171, !5172, !5174, !5206}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5168, file: !268, line: 522, baseType: !7, size: 32)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !5168, file: !268, line: 523, baseType: !1253, size: 320, offset: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !5168, file: !268, line: 524, baseType: !5173, size: 192, offset: 384)
!5173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 192, elements: !407)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5168, file: !268, line: 525, baseType: !5175, size: 1728, offset: 576)
!5175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5176, size: 1728, elements: !407)
!5176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !268, line: 222, size: 576, elements: !5177)
!5177 = !{!5178, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205}
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !5176, file: !268, line: 223, baseType: !5179, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 64)
!5180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !268, line: 445, size: 256, elements: !5181)
!5181 = !{!5182, !5183, !5196, !5197}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !5180, file: !268, line: 446, baseType: !27, size: 32)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !5180, file: !268, line: 447, baseType: !5184, size: 64, offset: 64)
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5186)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !268, line: 312, size: 512, elements: !5187)
!5187 = !{!5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !5186, file: !268, line: 313, baseType: !720, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !5186, file: !268, line: 314, baseType: !720, size: 64, offset: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !5186, file: !268, line: 315, baseType: !720, size: 64, offset: 128)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !5186, file: !268, line: 316, baseType: !720, size: 64, offset: 192)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !5186, file: !268, line: 317, baseType: !5012, size: 64, offset: 256)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !5186, file: !268, line: 318, baseType: !5012, size: 64, offset: 320)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !5186, file: !268, line: 319, baseType: !5012, size: 64, offset: 384)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5186, file: !268, line: 320, baseType: !5042, size: 64, offset: 448)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !5180, file: !268, line: 448, baseType: !352, size: 64, offset: 128)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !5180, file: !268, line: 449, baseType: !5179, size: 64, offset: 192)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !5176, file: !268, line: 224, baseType: !27, size: 32, offset: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !5176, file: !268, line: 226, baseType: !102, size: 128, offset: 128)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !5176, file: !268, line: 227, baseType: !44, size: 64, offset: 256)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !5176, file: !268, line: 228, baseType: !7, size: 32, offset: 320)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !5176, file: !268, line: 229, baseType: !7, size: 32, offset: 352)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !5176, file: !268, line: 230, baseType: !4980, size: 64, offset: 384)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !5176, file: !268, line: 231, baseType: !4980, size: 64, offset: 448)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !5176, file: !268, line: 232, baseType: !25, size: 64, offset: 512)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5168, file: !268, line: 526, baseType: !5207, size: 192, offset: 2304)
!5207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5184, size: 192, elements: !407)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !632, file: !263, line: 1233, baseType: !5209, size: 2368, offset: 4544)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !263, line: 1184, size: 2368, elements: !5210)
!5210 = !{!5211, !5212, !5213}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5209, file: !263, line: 1185, baseType: !31, size: 16)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !5209, file: !263, line: 1186, baseType: !31, size: 16, offset: 16)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !5209, file: !263, line: 1187, baseType: !5214, size: 2304, offset: 64)
!5214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5215, size: 2304, elements: !407)
!5215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !5216, line: 12, size: 768, elements: !5217)
!5216 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!5217 = !{!5218, !5226, !5228, !5229, !5230}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !5215, file: !5216, line: 13, baseType: !5219, size: 384)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !5220, line: 17, size: 384, elements: !5221)
!5220 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!5221 = !{!5222, !5223, !5224, !5225}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !5219, file: !5220, line: 18, baseType: !27, size: 32)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !5219, file: !5220, line: 19, baseType: !27, size: 32, offset: 32)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !5219, file: !5220, line: 20, baseType: !59, size: 192, offset: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !5219, file: !5220, line: 22, baseType: !818, size: 128, align: 64, offset: 256)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !5215, file: !5216, line: 14, baseType: !5227, size: 64, offset: 384)
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !5215, file: !5216, line: 15, baseType: !4114, size: 64, offset: 448)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5215, file: !5216, line: 16, baseType: !59, size: 192, offset: 512)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5215, file: !5216, line: 17, baseType: !54, size: 32, offset: 704)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !632, file: !263, line: 1240, baseType: !25, size: 64, offset: 6912)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !632, file: !263, line: 1243, baseType: !549, size: 32, offset: 6976)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !632, file: !263, line: 1245, baseType: !1429, size: 64, offset: 7040)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !632, file: !263, line: 1246, baseType: !1429, size: 64, offset: 7104)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !632, file: !263, line: 1248, baseType: !550, size: 32, offset: 7168)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !632, file: !263, line: 1249, baseType: !5237, size: 64, offset: 7232)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !263, line: 634, flags: DIFlagFwdDecl)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !632, file: !263, line: 1252, baseType: !2713, size: 256, offset: 7296)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !632, file: !263, line: 1253, baseType: !5241, size: 128, offset: 7552)
!5241 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5242, line: 21, baseType: !5243)
!5242 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5242, line: 19, size: 128, elements: !5244)
!5244 = !{!5245}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5243, file: !5242, line: 20, baseType: !3340, size: 128)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !632, file: !263, line: 1255, baseType: !7, size: 32, offset: 7680)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !632, file: !263, line: 1261, baseType: !761, size: 256, offset: 7744)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !632, file: !263, line: 1267, baseType: !21, size: 64, offset: 8000)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !632, file: !263, line: 1269, baseType: !578, size: 64, offset: 8064)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !632, file: !263, line: 1271, baseType: !5251, size: 448, offset: 8128)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4995, line: 63, size: 448, elements: !5252)
!5252 = !{!5253, !5258, !5259, !5260, !5261, !5262, !5263}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5251, file: !4995, line: 64, baseType: !5254, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!44, !5257, !4993}
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5251, file: !4995, line: 66, baseType: !5254, size: 64, offset: 64)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5251, file: !4995, line: 69, baseType: !441, size: 64, offset: 128)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5251, file: !4995, line: 70, baseType: !27, size: 32, offset: 192)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5251, file: !4995, line: 71, baseType: !7, size: 32, offset: 224)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5251, file: !4995, line: 74, baseType: !102, size: 128, offset: 256)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5251, file: !4995, line: 85, baseType: !5264, size: 64, offset: 384)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !632, file: !263, line: 1274, baseType: !765, size: 64, offset: 8576)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !632, file: !263, line: 1280, baseType: !765, size: 64, offset: 8640)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !632, file: !263, line: 1283, baseType: !27, size: 32, offset: 8704)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !632, file: !263, line: 1286, baseType: !4927, size: 32, offset: 8736)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !632, file: !263, line: 1289, baseType: !2543, size: 64, offset: 8768)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !632, file: !263, line: 1290, baseType: !668, size: 64, offset: 8832)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !632, file: !263, line: 1297, baseType: !1358, size: 64, offset: 8896)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !632, file: !263, line: 1304, baseType: !5273, size: 64, offset: 8960)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5274, line: 49, size: 64, elements: !5275)
!5274 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5275 = !{!5276}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5273, file: !5274, line: 50, baseType: !5277, size: 64)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5274, line: 41, size: 512, align: 512, elements: !5279)
!5279 = !{!5280, !5281, !5286}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5278, file: !5274, line: 43, baseType: !64, size: 32)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5278, file: !5274, line: 45, baseType: !5282, size: 192, offset: 64)
!5282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5274, line: 29, size: 192, elements: !5283)
!5283 = !{!5284, !5285}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5282, file: !5274, line: 30, baseType: !102, size: 128)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5282, file: !5274, line: 32, baseType: !441, size: 64, offset: 128)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5278, file: !5274, line: 46, baseType: !441, size: 64, offset: 256)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !632, file: !263, line: 1305, baseType: !5273, size: 64, offset: 9024)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !632, file: !263, line: 1306, baseType: !818, size: 128, align: 64, offset: 9088)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !632, file: !263, line: 1307, baseType: !1518, size: 256, offset: 9216)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !632, file: !263, line: 1309, baseType: !761, size: 256, offset: 9472)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !632, file: !263, line: 1314, baseType: !27, size: 32, offset: 9728)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !632, file: !263, line: 1317, baseType: !64, size: 32, align: 512, offset: 10240)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !632, file: !263, line: 1318, baseType: !102, size: 128, offset: 10304)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !632, file: !263, line: 1320, baseType: !64, size: 32, offset: 10432)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !632, file: !263, line: 1321, baseType: !102, size: 128, offset: 10496)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !626, file: !627, line: 73, baseType: !27, size: 32, offset: 128)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !626, file: !627, line: 74, baseType: !5298, size: 64, offset: 192)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1792, line: 42, flags: DIFlagFwdDecl)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !580, file: !517, line: 141, baseType: !5302, size: 64, offset: 704)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!27, !5055, !1403}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !580, file: !517, line: 142, baseType: !5306, size: 64, offset: 768)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!515, !515, !5309}
!5309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5310, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !516, file: !517, line: 96, baseType: !631, size: 64, offset: 832)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !516, file: !517, line: 97, baseType: !44, size: 64, offset: 896)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !516, file: !517, line: 98, baseType: !25, size: 64, offset: 960)
!5314 = !DIDerivedType(tag: DW_TAG_member, scope: !516, file: !517, line: 100, baseType: !5315, size: 128, offset: 1024)
!5315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !517, line: 100, size: 128, elements: !5316)
!5316 = !{!5317, !5318}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5315, file: !517, line: 101, baseType: !102, size: 128)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5315, file: !517, line: 102, baseType: !2303, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !516, file: !517, line: 104, baseType: !102, size: 128, offset: 1152)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !516, file: !517, line: 105, baseType: !102, size: 128, offset: 1280)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !516, file: !517, line: 113, baseType: !5322, size: 128, offset: 1408)
!5322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !517, line: 109, size: 128, elements: !5323)
!5323 = !{!5324, !5325, !5326}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5322, file: !517, line: 110, baseType: !672, size: 128)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5322, file: !517, line: 111, baseType: !531, size: 128)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5322, file: !517, line: 112, baseType: !818, size: 128, align: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !509, file: !263, line: 1968, baseType: !5328, size: 64, offset: 64)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!21, !515, !480, !5331}
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5333, line: 10, size: 128, elements: !5334)
!5333 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5334 = !{!5335, !5336}
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5332, file: !5333, line: 11, baseType: !3713, size: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5332, file: !5333, line: 12, baseType: !25, size: 64, offset: 64)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !509, file: !263, line: 1969, baseType: !5338, size: 64, offset: 128)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!27, !5298, !480, !27}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !509, file: !263, line: 1970, baseType: !5342, size: 64, offset: 192)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!503, !480, !27, !1403}
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !509, file: !263, line: 1972, baseType: !5346, size: 64, offset: 256)
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DISubroutineType(types: !5348)
!5348 = !{!27, !515, !406, !27}
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !509, file: !263, line: 1974, baseType: !5350, size: 64, offset: 320)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{!27, !5298, !480, !515, !29, !1403}
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !509, file: !263, line: 1976, baseType: !5354, size: 64, offset: 384)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!27, !515, !480, !515}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !509, file: !263, line: 1977, baseType: !5358, size: 64, offset: 448)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!27, !480, !515}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !509, file: !263, line: 1978, baseType: !5362, size: 64, offset: 512)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!27, !5298, !480, !515, !21}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !509, file: !263, line: 1980, baseType: !5366, size: 64, offset: 576)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!27, !5298, !480, !515, !29}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !509, file: !263, line: 1982, baseType: !5358, size: 64, offset: 640)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !509, file: !263, line: 1983, baseType: !5371, size: 64, offset: 704)
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!27, !5298, !480, !515, !29, !636}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !509, file: !263, line: 1985, baseType: !5375, size: 64, offset: 768)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!27, !5298, !480, !515, !480, !515, !7}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !509, file: !263, line: 1987, baseType: !5379, size: 64, offset: 832)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = !DISubroutineType(types: !5381)
!5381 = !{!27, !5298, !515, !5382}
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !263, line: 226, size: 640, elements: !5384)
!5384 = !{!5385, !5386, !5387, !5397, !5406, !5407, !5412, !5413, !5414}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5383, file: !263, line: 227, baseType: !7, size: 32)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5383, file: !263, line: 228, baseType: !29, size: 16, offset: 32)
!5387 = !DIDerivedType(tag: DW_TAG_member, scope: !5383, file: !263, line: 241, baseType: !5388, size: 32, offset: 64)
!5388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5383, file: !263, line: 241, size: 32, elements: !5389)
!5389 = !{!5390, !5391}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5388, file: !263, line: 242, baseType: !486, size: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5388, file: !263, line: 243, baseType: !5392, size: 32)
!5392 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5393, line: 16, baseType: !5394)
!5393 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5393, line: 14, size: 32, elements: !5395)
!5395 = !{!5396}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5394, file: !5393, line: 15, baseType: !491, size: 32)
!5397 = !DIDerivedType(tag: DW_TAG_member, scope: !5383, file: !263, line: 245, baseType: !5398, size: 32, offset: 96)
!5398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5383, file: !263, line: 245, size: 32, elements: !5399)
!5399 = !{!5400, !5401}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5398, file: !263, line: 246, baseType: !495, size: 32)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5398, file: !263, line: 247, baseType: !5402, size: 32)
!5402 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5393, line: 20, baseType: !5403)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5393, line: 18, size: 32, elements: !5404)
!5404 = !{!5405}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5403, file: !5393, line: 19, baseType: !499, size: 32)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5383, file: !263, line: 249, baseType: !46, size: 64, offset: 128)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5383, file: !263, line: 250, baseType: !5408, size: 128, offset: 192)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1430, line: 13, size: 128, elements: !5409)
!5409 = !{!5410, !5411}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5408, file: !1430, line: 14, baseType: !1429, size: 64)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5408, file: !1430, line: 15, baseType: !441, size: 64, offset: 64)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5383, file: !263, line: 251, baseType: !5408, size: 128, offset: 320)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5383, file: !263, line: 252, baseType: !5408, size: 128, offset: 448)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5383, file: !263, line: 259, baseType: !1225, size: 64, offset: 576)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !509, file: !263, line: 1988, baseType: !5416, size: 64, offset: 896)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!27, !5298, !5055, !5419, !549, !7}
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5421, line: 22, size: 1280, elements: !5422)
!5421 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5422 = !{!5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5441, !5442, !5443}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5420, file: !5421, line: 23, baseType: !549, size: 32)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5420, file: !5421, line: 24, baseType: !29, size: 16, offset: 32)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5420, file: !5421, line: 25, baseType: !7, size: 32, offset: 64)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5420, file: !5421, line: 26, baseType: !1437, size: 32, offset: 96)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5420, file: !5421, line: 27, baseType: !553, size: 64, offset: 128)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5420, file: !5421, line: 28, baseType: !553, size: 64, offset: 192)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5420, file: !5421, line: 41, baseType: !553, size: 64, offset: 256)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5420, file: !5421, line: 42, baseType: !636, size: 32, offset: 320)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5420, file: !5421, line: 43, baseType: !636, size: 32, offset: 352)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5420, file: !5421, line: 44, baseType: !486, size: 32, offset: 384)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5420, file: !5421, line: 45, baseType: !495, size: 32, offset: 416)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5420, file: !5421, line: 46, baseType: !46, size: 64, offset: 448)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5420, file: !5421, line: 47, baseType: !5408, size: 128, offset: 512)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5420, file: !5421, line: 48, baseType: !5408, size: 128, offset: 640)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5420, file: !5421, line: 49, baseType: !5408, size: 128, offset: 768)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5420, file: !5421, line: 50, baseType: !5408, size: 128, offset: 896)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5420, file: !5421, line: 51, baseType: !553, size: 64, offset: 1024)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5420, file: !5421, line: 52, baseType: !553, size: 64, offset: 1088)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5420, file: !5421, line: 53, baseType: !549, size: 32, offset: 1152)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5420, file: !5421, line: 54, baseType: !549, size: 32, offset: 1184)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5420, file: !5421, line: 55, baseType: !553, size: 64, offset: 1216)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !509, file: !263, line: 1990, baseType: !5445, size: 64, offset: 960)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!438, !515, !406, !40}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !509, file: !263, line: 1991, baseType: !5449, size: 64, offset: 1024)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!27, !480, !5452, !553, !553}
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !263, line: 55, flags: DIFlagFwdDecl)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !509, file: !263, line: 1993, baseType: !5455, size: 64, offset: 1088)
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{!27, !480, !27}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !509, file: !263, line: 1994, baseType: !5459, size: 64, offset: 1152)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!27, !480, !515, !1225, !7, !29}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !509, file: !263, line: 1997, baseType: !5463, size: 64, offset: 1216)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{!27, !5298, !480, !1225, !29}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !509, file: !263, line: 1999, baseType: !5467, size: 64, offset: 1280)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = !DISubroutineType(types: !5469)
!5469 = !{!503, !5298, !515, !27}
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !509, file: !263, line: 2001, baseType: !5471, size: 64, offset: 1344)
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5472, size: 64)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!27, !5298, !515, !503, !27}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !509, file: !263, line: 2003, baseType: !5475, size: 64, offset: 1408)
!5475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5476, size: 64)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{!27, !5298, !515, !5478}
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !263, line: 76, flags: DIFlagFwdDecl)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !509, file: !263, line: 2005, baseType: !5481, size: 64, offset: 1472)
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!27, !515, !5478}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !509, file: !263, line: 2006, baseType: !5485, size: 64, offset: 1536)
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!5488, !480}
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !263, line: 3192, size: 192, elements: !5490)
!5490 = !{!5491, !5492}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5489, file: !263, line: 3193, baseType: !892, size: 128)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5489, file: !263, line: 3194, baseType: !549, size: 32, offset: 128)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !481, file: !263, line: 655, baseType: !631, size: 64, offset: 448)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !481, file: !263, line: 656, baseType: !476, size: 64, offset: 512)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !481, file: !263, line: 659, baseType: !25, size: 64, offset: 576)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !481, file: !263, line: 663, baseType: !44, size: 64, offset: 640)
!5497 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !263, line: 671, baseType: !5498, size: 32, offset: 704)
!5498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !263, line: 671, size: 32, elements: !5499)
!5499 = !{!5500, !5501}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5498, file: !263, line: 672, baseType: !4349, size: 32)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5498, file: !263, line: 673, baseType: !7, size: 32)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !481, file: !263, line: 675, baseType: !636, size: 32, offset: 736)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !481, file: !263, line: 676, baseType: !46, size: 64, offset: 768)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !481, file: !263, line: 677, baseType: !5408, size: 128, offset: 832)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !481, file: !263, line: 678, baseType: !5408, size: 128, offset: 960)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !481, file: !263, line: 679, baseType: !5408, size: 128, offset: 1088)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !481, file: !263, line: 680, baseType: !64, size: 32, offset: 1216)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !481, file: !263, line: 681, baseType: !31, size: 16, offset: 1248)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !481, file: !263, line: 682, baseType: !88, size: 8, offset: 1264)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !481, file: !263, line: 683, baseType: !88, size: 8, offset: 1272)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !481, file: !263, line: 684, baseType: !5128, size: 64, offset: 1280)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !481, file: !263, line: 691, baseType: !44, size: 64, offset: 1344)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !481, file: !263, line: 692, baseType: !1253, size: 320, offset: 1408)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !481, file: !263, line: 694, baseType: !44, size: 64, offset: 1728)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !481, file: !263, line: 695, baseType: !44, size: 64, offset: 1792)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !481, file: !263, line: 697, baseType: !672, size: 128, offset: 1856)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !481, file: !263, line: 698, baseType: !102, size: 128, offset: 1984)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !481, file: !263, line: 707, baseType: !102, size: 128, offset: 2112)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !481, file: !263, line: 708, baseType: !102, size: 128, offset: 2240)
!5520 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !263, line: 709, baseType: !5521, size: 128, offset: 2368)
!5521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !263, line: 709, size: 128, elements: !5522)
!5522 = !{!5523, !5524}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5521, file: !263, line: 710, baseType: !668, size: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5521, file: !263, line: 711, baseType: !818, size: 128, align: 64)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !481, file: !263, line: 713, baseType: !767, size: 64, offset: 2496)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !481, file: !263, line: 714, baseType: !767, size: 64, offset: 2560)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !481, file: !263, line: 715, baseType: !54, size: 32, offset: 2624)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !481, file: !263, line: 716, baseType: !54, size: 32, offset: 2656)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !481, file: !263, line: 717, baseType: !54, size: 32, offset: 2688)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !481, file: !263, line: 719, baseType: !54, size: 32, offset: 2720)
!5531 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !263, line: 721, baseType: !5532, size: 64, offset: 2752)
!5532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !263, line: 721, size: 64, elements: !5533)
!5533 = !{!5534, !5535}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5532, file: !263, line: 722, baseType: !4920, size: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5532, file: !263, line: 723, baseType: !699, size: 64)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !481, file: !263, line: 725, baseType: !5537, size: 64, offset: 2816)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !263, line: 725, flags: DIFlagFwdDecl)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !481, file: !263, line: 726, baseType: !477, size: 1536, align: 64, offset: 2880)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !481, file: !263, line: 727, baseType: !102, size: 128, offset: 4416)
!5541 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !263, line: 728, baseType: !5542, size: 64, offset: 4544)
!5542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !263, line: 728, size: 64, elements: !5543)
!5543 = !{!5544, !5545, !5548, !5549}
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5542, file: !263, line: 729, baseType: !3050, size: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5542, file: !263, line: 730, baseType: !5546, size: 64)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5547 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !263, line: 730, flags: DIFlagFwdDecl)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5542, file: !263, line: 731, baseType: !406, size: 64)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5542, file: !263, line: 732, baseType: !7, size: 32)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !481, file: !263, line: 735, baseType: !550, size: 32, offset: 4608)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !481, file: !263, line: 738, baseType: !550, size: 32, offset: 4640)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !481, file: !263, line: 739, baseType: !5237, size: 64, offset: 4672)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !481, file: !263, line: 750, baseType: !25, size: 64, offset: 4736)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !477, file: !263, line: 474, baseType: !892, size: 128, offset: 64)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !477, file: !263, line: 475, baseType: !1253, size: 320, offset: 192)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !477, file: !263, line: 476, baseType: !326, size: 32, offset: 512)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !477, file: !263, line: 477, baseType: !54, size: 32, offset: 544)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !477, file: !263, line: 482, baseType: !1081, size: 128, offset: 576)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !477, file: !263, line: 483, baseType: !44, size: 64, offset: 704)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !477, file: !263, line: 484, baseType: !44, size: 64, offset: 768)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !477, file: !263, line: 485, baseType: !5562, size: 64, offset: 832)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5564)
!5564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !263, line: 404, size: 1280, elements: !5565)
!5565 = !{!5566, !5570, !5640, !5644, !5648, !5654, !5658, !5662, !5667, !5671, !5675, !5679, !5707, !5711, !5715, !5719, !5724, !5728, !5735, !5739}
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5564, file: !263, line: 405, baseType: !5567, size: 64)
!5567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!27, !2104, !711}
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5564, file: !263, line: 406, baseType: !5571, size: 64, offset: 64)
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{!27, !1225, !5574}
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !119, line: 293, size: 1536, elements: !5576)
!5576 = !{!5577, !5607, !5621}
!5577 = !DIDerivedType(tag: DW_TAG_member, scope: !5575, file: !119, line: 295, baseType: !5578, size: 512)
!5578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5575, file: !119, line: 295, size: 512, elements: !5579)
!5579 = !{!5580, !5606}
!5580 = !DIDerivedType(tag: DW_TAG_member, scope: !5578, file: !119, line: 296, baseType: !5581, size: 448)
!5581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5578, file: !119, line: 296, size: 448, elements: !5582)
!5582 = !{!5583, !5584, !5593, !5594, !5595, !5604, !5605}
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5581, file: !119, line: 298, baseType: !44, size: 64)
!5584 = !DIDerivedType(tag: DW_TAG_member, scope: !5581, file: !119, line: 299, baseType: !5585, size: 128, offset: 64)
!5585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5581, file: !119, line: 299, size: 128, elements: !5586)
!5586 = !{!5587, !5588}
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5585, file: !119, line: 300, baseType: !102, size: 128)
!5588 = !DIDerivedType(tag: DW_TAG_member, scope: !5585, file: !119, line: 302, baseType: !5589, size: 128)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5585, file: !119, line: 302, size: 128, elements: !5590)
!5590 = !{!5591, !5592}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5589, file: !119, line: 303, baseType: !25, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5589, file: !119, line: 305, baseType: !7, size: 32, offset: 64)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5581, file: !119, line: 310, baseType: !476, size: 64, offset: 192)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5581, file: !119, line: 311, baseType: !44, size: 64, offset: 256)
!5595 = !DIDerivedType(tag: DW_TAG_member, scope: !5581, file: !119, line: 312, baseType: !5596, size: 64, offset: 320)
!5596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5581, file: !119, line: 312, size: 64, elements: !5597)
!5597 = !{!5598, !5599}
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5596, file: !119, line: 313, baseType: !25, size: 64)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5596, file: !119, line: 314, baseType: !5600, size: 64)
!5600 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !119, line: 257, baseType: !5601)
!5601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 255, size: 64, elements: !5602)
!5602 = !{!5603}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5601, file: !119, line: 256, baseType: !44, size: 64)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5581, file: !119, line: 316, baseType: !54, size: 32, offset: 384)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5581, file: !119, line: 317, baseType: !54, size: 32, offset: 416)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5578, file: !119, line: 323, baseType: !2105, size: 512, align: 128)
!5607 = !DIDerivedType(tag: DW_TAG_member, scope: !5575, file: !119, line: 325, baseType: !5608, size: 512, offset: 512)
!5608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5575, file: !119, line: 325, size: 512, elements: !5609)
!5609 = !{!5610, !5620}
!5610 = !DIDerivedType(tag: DW_TAG_member, scope: !5608, file: !119, line: 326, baseType: !5611, size: 320)
!5611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5608, file: !119, line: 326, size: 320, elements: !5612)
!5612 = !{!5613, !5614, !5615, !5616, !5617, !5618, !5619}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5611, file: !119, line: 327, baseType: !44, size: 64)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5611, file: !119, line: 328, baseType: !44, size: 64, offset: 64)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5611, file: !119, line: 329, baseType: !44, size: 64, offset: 128)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5611, file: !119, line: 331, baseType: !54, size: 32, offset: 192)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5611, file: !119, line: 332, baseType: !54, size: 32, offset: 224)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5611, file: !119, line: 333, baseType: !54, size: 32, offset: 256)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5611, file: !119, line: 335, baseType: !7, size: 32, offset: 288)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5608, file: !119, line: 339, baseType: !2105, size: 512, align: 128)
!5621 = !DIDerivedType(tag: DW_TAG_member, scope: !5575, file: !119, line: 341, baseType: !5622, size: 512, offset: 1024)
!5622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5575, file: !119, line: 341, size: 512, elements: !5623)
!5623 = !{!5624, !5633, !5639}
!5624 = !DIDerivedType(tag: DW_TAG_member, scope: !5622, file: !119, line: 342, baseType: !5625, size: 384)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5622, file: !119, line: 342, size: 384, elements: !5626)
!5626 = !{!5627, !5628, !5629, !5630, !5631, !5632}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5625, file: !119, line: 343, baseType: !44, size: 64)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5625, file: !119, line: 344, baseType: !44, size: 64, offset: 64)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5625, file: !119, line: 346, baseType: !25, size: 64, offset: 128)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5625, file: !119, line: 347, baseType: !25, size: 64, offset: 192)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5625, file: !119, line: 348, baseType: !25, size: 64, offset: 256)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5625, file: !119, line: 349, baseType: !25, size: 64, offset: 320)
!5633 = !DIDerivedType(tag: DW_TAG_member, scope: !5622, file: !119, line: 352, baseType: !5634, size: 256)
!5634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5622, file: !119, line: 352, size: 256, elements: !5635)
!5635 = !{!5636, !5637, !5638}
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5634, file: !119, line: 353, baseType: !44, size: 64)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5634, file: !119, line: 354, baseType: !44, size: 64, offset: 64)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5634, file: !119, line: 356, baseType: !102, size: 128, offset: 128)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5622, file: !119, line: 359, baseType: !2105, size: 512, align: 128)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5564, file: !263, line: 409, baseType: !5641, size: 64, offset: 128)
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = !DISubroutineType(types: !5643)
!5643 = !{!27, !476, !711}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5564, file: !263, line: 412, baseType: !5645, size: 64, offset: 192)
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5646, size: 64)
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!1403, !476, !5574}
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5564, file: !263, line: 414, baseType: !5649, size: 64, offset: 256)
!5649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{null, !5652}
!5652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5653, size: 64)
!5653 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !263, line: 310, flags: DIFlagFwdDecl)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5564, file: !263, line: 416, baseType: !5655, size: 64, offset: 320)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!27, !1225, !476, !46, !7, !3159, !3842}
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5564, file: !263, line: 419, baseType: !5659, size: 64, offset: 384)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!27, !1225, !476, !46, !7, !7, !2104, !25}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5564, file: !263, line: 424, baseType: !5663, size: 64, offset: 448)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5664, size: 64)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!5666, !476, !5666}
!5666 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !30, line: 131, baseType: !553)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5564, file: !263, line: 425, baseType: !5668, size: 64, offset: 512)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{null, !5574, !40, !40}
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5564, file: !263, line: 426, baseType: !5672, size: 64, offset: 576)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5673, size: 64)
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!1403, !5574, !326}
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5564, file: !263, line: 427, baseType: !5676, size: 64, offset: 640)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{null, !5574}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5564, file: !263, line: 428, baseType: !5680, size: 64, offset: 704)
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!438, !5683, !5705}
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !263, line: 373, size: 384, elements: !5685)
!5685 = !{!5686, !5687, !5688, !5692, !5693, !5694, !5695}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !5684, file: !263, line: 374, baseType: !1225, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !5684, file: !263, line: 375, baseType: !46, size: 64, offset: 64)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !5684, file: !263, line: 376, baseType: !5689, size: 64, offset: 128)
!5689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5690, size: 64)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{null, !5683, !441}
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5684, file: !263, line: 377, baseType: !25, size: 64, offset: 192)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !5684, file: !263, line: 378, baseType: !27, size: 32, offset: 256)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !5684, file: !263, line: 379, baseType: !98, size: 16, offset: 288)
!5695 = !DIDerivedType(tag: DW_TAG_member, scope: !5684, file: !263, line: 380, baseType: !5696, size: 64, offset: 320)
!5696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5684, file: !263, line: 380, size: 64, elements: !5697)
!5697 = !{!5698, !5701}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !5696, file: !263, line: 386, baseType: !5699, size: 64)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !263, line: 386, flags: DIFlagFwdDecl)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !5696, file: !263, line: 395, baseType: !5702, size: 64)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{!438, !25}
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !263, line: 69, flags: DIFlagFwdDecl)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5564, file: !263, line: 433, baseType: !5708, size: 64, offset: 768)
!5708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5709, size: 64)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{!27, !476, !5574, !5574, !134}
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5564, file: !263, line: 435, baseType: !5712, size: 64, offset: 832)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5713 = !DISubroutineType(types: !5714)
!5714 = !{!27, !5574}
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5564, file: !263, line: 436, baseType: !5716, size: 64, offset: 896)
!5716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5717, size: 64)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!1403, !5574, !40, !40}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5564, file: !263, line: 438, baseType: !5720, size: 64, offset: 960)
!5720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5721, size: 64)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{null, !5574, !5723, !5723}
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5564, file: !263, line: 439, baseType: !5725, size: 64, offset: 1024)
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5726, size: 64)
!5726 = !DISubroutineType(types: !5727)
!5727 = !{!27, !476, !2104}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5564, file: !263, line: 442, baseType: !5729, size: 64, offset: 1088)
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5730, size: 64)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!27, !5732, !1225, !5734}
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5733, size: 64)
!5733 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !263, line: 66, flags: DIFlagFwdDecl)
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5666, size: 64)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5564, file: !263, line: 444, baseType: !5736, size: 64, offset: 1152)
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5737, size: 64)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{null, !1225}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5564, file: !263, line: 445, baseType: !5740, size: 64, offset: 1216)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5741, size: 64)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{!27, !5683, !5705}
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !263, line: 486, baseType: !44, size: 64, offset: 896)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !477, file: !263, line: 487, baseType: !1253, size: 320, offset: 960)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !477, file: !263, line: 488, baseType: !4927, size: 32, offset: 1280)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !477, file: !263, line: 489, baseType: !64, size: 32, offset: 1312)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !477, file: !263, line: 490, baseType: !102, size: 128, offset: 1344)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !477, file: !263, line: 491, baseType: !25, size: 64, offset: 1472)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !467, file: !432, line: 180, baseType: !5750, size: 64, offset: 320)
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5751, size: 64)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{!438, !1225, !371, !466, !406, !46, !40}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !467, file: !432, line: 182, baseType: !5750, size: 64, offset: 384)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !467, file: !432, line: 184, baseType: !5755, size: 64, offset: 448)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!27, !1225, !371, !466, !1997}
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !455, file: !432, line: 90, baseType: !5759, size: 64, offset: 192)
!5759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !455, file: !432, line: 91, baseType: !5761, size: 64, offset: 256)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !422, file: !366, line: 120, baseType: !5763, size: 64, offset: 192)
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5764, size: 64)
!5764 = !DISubroutineType(types: !5765)
!5765 = !{!3689, !389}
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !422, file: !366, line: 121, baseType: !5767, size: 64, offset: 256)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!1332, !389}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !422, file: !366, line: 122, baseType: !5771, size: 64, offset: 320)
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{null, !389, !1582, !1583}
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !365, file: !366, line: 70, baseType: !1933, size: 64, offset: 384)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !365, file: !366, line: 71, baseType: !5776, size: 32, offset: 448)
!5776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5777, line: 19, size: 32, elements: !5778)
!5777 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5778 = !{!5779}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5776, file: !5777, line: 20, baseType: !863, size: 32)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !365, file: !366, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !365, file: !366, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !365, file: !366, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !365, file: !366, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !365, file: !366, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !362, file: !157, line: 47, baseType: !352, size: 64, offset: 512)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !362, file: !157, line: 48, baseType: !371, size: 64, offset: 576)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !362, file: !157, line: 49, baseType: !5788, size: 64, offset: 640)
!5788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5789 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !157, line: 49, flags: DIFlagFwdDecl)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !362, file: !157, line: 50, baseType: !1556, size: 64, offset: 704)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !353, file: !157, line: 418, baseType: !5792, size: 64, offset: 1408)
!5792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5793, size: 64)
!5793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !157, line: 53, size: 448, elements: !5794)
!5794 = !{!5795, !5796, !5801, !5805, !5809, !5813}
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5793, file: !157, line: 54, baseType: !443, size: 128)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5793, file: !157, line: 55, baseType: !5797, size: 64, offset: 128)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!438, !5792, !5800, !406}
!5800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5793, file: !157, line: 57, baseType: !5802, size: 64, offset: 192)
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5803, size: 64)
!5803 = !DISubroutineType(types: !5804)
!5804 = !{!438, !5792, !5800, !21, !40}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5793, file: !157, line: 59, baseType: !5806, size: 64, offset: 256)
!5806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5807, size: 64)
!5807 = !DISubroutineType(types: !5808)
!5808 = !{null, !352, !21}
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5793, file: !157, line: 60, baseType: !5810, size: 64, offset: 320)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!27, !352}
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5793, file: !157, line: 61, baseType: !5814, size: 64, offset: 384)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5815, size: 64)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{null, !352}
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !353, file: !157, line: 419, baseType: !21, size: 64, offset: 1472)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !353, file: !157, line: 420, baseType: !21, size: 64, offset: 1536)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !353, file: !157, line: 421, baseType: !371, size: 64, offset: 1600)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !353, file: !157, line: 424, baseType: !5821, size: 64, offset: 1664)
!5821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5822, size: 64)
!5822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5823)
!5823 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !157, line: 424, flags: DIFlagFwdDecl)
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !353, file: !157, line: 425, baseType: !5825, size: 64, offset: 1728)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !353, file: !157, line: 426, baseType: !7, size: 32, offset: 1792)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !353, file: !157, line: 435, baseType: !761, size: 256, offset: 1856)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !353, file: !157, line: 437, baseType: !5830, size: 64, offset: 2112)
!5830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5831, size: 64)
!5831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5832, line: 69, size: 320, elements: !5833)
!5832 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5833 = !{!5834, !5835, !5836, !5853, !5855, !5859, !5860}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5831, file: !5832, line: 70, baseType: !21, size: 64)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5831, file: !5832, line: 71, baseType: !352, size: 64, offset: 64)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5831, file: !5832, line: 72, baseType: !5837, size: 64, offset: 128)
!5837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5838, size: 64)
!5838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5839)
!5839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5832, line: 47, size: 256, elements: !5840)
!5840 = !{!5841, !5842, !5848, !5852}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5839, file: !5832, line: 49, baseType: !7, size: 32)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5839, file: !5832, line: 51, baseType: !5843, size: 64, offset: 64)
!5843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5844, size: 64)
!5844 = !DISubroutineType(types: !5845)
!5845 = !{!27, !21, !5846}
!5846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5847, size: 64)
!5847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5831)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5839, file: !5832, line: 53, baseType: !5849, size: 64, offset: 128)
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5850, size: 64)
!5850 = !DISubroutineType(types: !5851)
!5851 = !{!27, !406, !5846}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5839, file: !5832, line: 55, baseType: !3713, size: 64, offset: 192)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5831, file: !5832, line: 73, baseType: !5854, size: 16, offset: 192)
!5854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5831, file: !5832, line: 74, baseType: !5856, size: 8, offset: 208)
!5856 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !89, line: 16, baseType: !5857)
!5857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !91, line: 20, baseType: !5858)
!5858 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5831, file: !5832, line: 75, baseType: !88, size: 8, offset: 216)
!5860 = !DIDerivedType(tag: DW_TAG_member, scope: !5831, file: !5832, line: 76, baseType: !5861, size: 64, offset: 256)
!5861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5831, file: !5832, line: 76, size: 64, elements: !5862)
!5862 = !{!5863, !5864, !5871}
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5861, file: !5832, line: 77, baseType: !25, size: 64)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5861, file: !5832, line: 78, baseType: !5865, size: 64)
!5865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5866, size: 64)
!5866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5867)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5832, line: 86, size: 128, elements: !5868)
!5868 = !{!5869, !5870}
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5867, file: !5832, line: 87, baseType: !7, size: 32)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5867, file: !5832, line: 88, baseType: !406, size: 64, offset: 64)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5861, file: !5832, line: 79, baseType: !5872, size: 64)
!5872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5873, size: 64)
!5873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5874)
!5874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5832, line: 92, size: 256, elements: !5875)
!5875 = !{!5876, !5877, !5878, !5879, !5880}
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5874, file: !5832, line: 94, baseType: !7, size: 32)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5874, file: !5832, line: 95, baseType: !7, size: 32, offset: 32)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5874, file: !5832, line: 96, baseType: !5227, size: 64, offset: 64)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5874, file: !5832, line: 97, baseType: !5837, size: 64, offset: 128)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5874, file: !5832, line: 98, baseType: !25, size: 64, offset: 192)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !353, file: !157, line: 438, baseType: !7, size: 32, offset: 2176)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !353, file: !157, line: 441, baseType: !7, size: 32, offset: 2208)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !353, file: !157, line: 442, baseType: !5821, size: 64, offset: 2240)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !353, file: !157, line: 443, baseType: !5825, size: 64, offset: 2304)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !353, file: !157, line: 444, baseType: !1403, size: 8, offset: 2368)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !353, file: !157, line: 451, baseType: !1403, size: 8, offset: 2376)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !353, file: !157, line: 454, baseType: !7, size: 32, offset: 2400)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !353, file: !157, line: 455, baseType: !5889, size: 64, offset: 2432)
!5889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5890, size: 64)
!5890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5891, line: 23, size: 96, elements: !5892)
!5891 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5892 = !{!5893, !5894, !5895}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5890, file: !5891, line: 24, baseType: !27, size: 32)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5890, file: !5891, line: 24, baseType: !27, size: 32, offset: 32)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5890, file: !5891, line: 24, baseType: !27, size: 32, offset: 64)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !353, file: !157, line: 458, baseType: !4420, size: 64, offset: 2496)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !353, file: !157, line: 460, baseType: !5898, size: 4032, align: 512, offset: 2560)
!5898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5899, size: 4032, elements: !5913)
!5899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !157, line: 362, size: 576, elements: !5900)
!5900 = !{!5901, !5902, !5903}
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5899, file: !157, line: 363, baseType: !25, size: 64)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5899, file: !157, line: 364, baseType: !7, size: 32, offset: 64)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5899, file: !157, line: 367, baseType: !5904, size: 448, offset: 128)
!5904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !157, line: 319, size: 448, elements: !5905)
!5905 = !{!5906, !5907}
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5904, file: !157, line: 320, baseType: !352, size: 64)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5904, file: !157, line: 321, baseType: !5908, size: 384, offset: 64)
!5908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5909, line: 40, size: 384, elements: !5910)
!5909 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5910 = !{!5911}
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5908, file: !5909, line: 41, baseType: !5912, size: 384, align: 64)
!5912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 384, align: 64, elements: !2620)
!5913 = !{!5914}
!5914 = !DISubrange(count: 7)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !353, file: !157, line: 463, baseType: !5916, size: 192, offset: 6592)
!5916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5917, line: 8, size: 192, elements: !5918)
!5917 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5918 = !{!5919, !5920, !5921}
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5916, file: !5917, line: 10, baseType: !7, size: 32)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5916, file: !5917, line: 11, baseType: !743, size: 64, offset: 64)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5916, file: !5917, line: 12, baseType: !5922, size: 64, offset: 128)
!5922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5923, size: 64)
!5923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5924, line: 59, size: 48, elements: !5925)
!5924 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5925 = !{!5926, !5927, !5928, !5929, !5930, !5931}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5923, file: !5924, line: 60, baseType: !1349, size: 16)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5923, file: !5924, line: 61, baseType: !1349, size: 16, offset: 16)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5923, file: !5924, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5923, file: !5924, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5923, file: !5924, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5923, file: !5924, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !353, file: !157, line: 465, baseType: !44, size: 64, offset: 6784)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !353, file: !157, line: 469, baseType: !7, size: 32, offset: 6848)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !353, file: !157, line: 470, baseType: !102, size: 128, offset: 6912)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !353, file: !157, line: 471, baseType: !5936, size: 64, offset: 7040)
!5936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5937, size: 64)
!5937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5938, line: 33, size: 96, elements: !5939)
!5938 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5939 = !{!5940, !5941, !5942, !5943}
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5937, file: !5938, line: 37, baseType: !27, size: 32)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5937, file: !5938, line: 43, baseType: !27, size: 32, offset: 32)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5937, file: !5938, line: 45, baseType: !31, size: 16, offset: 64)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5937, file: !5938, line: 47, baseType: !31, size: 16, offset: 80)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !353, file: !157, line: 476, baseType: !5945, size: 64, offset: 7104)
!5945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5946, size: 64)
!5946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !157, line: 378, size: 256, elements: !5947)
!5947 = !{!5948, !5964, !5965, !5966}
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5946, file: !157, line: 379, baseType: !5949, size: 64)
!5949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5950, size: 64)
!5950 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5951, line: 204, baseType: !5952)
!5951 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5951, line: 197, size: 192, elements: !5953)
!5953 = !{!5954, !5956, !5957, !5958, !5960, !5962}
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5952, file: !5951, line: 198, baseType: !5955, size: 32)
!5955 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5951, line: 21, baseType: !550)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5952, file: !5951, line: 199, baseType: !92, size: 8, offset: 32)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5952, file: !5951, line: 200, baseType: !92, size: 8, offset: 40)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5952, file: !5951, line: 201, baseType: !5959, size: 16, offset: 48)
!5959 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5951, line: 17, baseType: !99)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5952, file: !5951, line: 202, baseType: !5961, size: 64, offset: 64)
!5961 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5951, line: 16, baseType: !554)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5952, file: !5951, line: 203, baseType: !5963, size: 64, offset: 128)
!5963 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5951, line: 22, baseType: !554)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5946, file: !157, line: 380, baseType: !7, size: 32, offset: 64)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5946, file: !157, line: 381, baseType: !406, size: 64, offset: 128)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5946, file: !157, line: 382, baseType: !406, size: 64, offset: 192)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !353, file: !157, line: 477, baseType: !5946, size: 256, offset: 7168)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !353, file: !157, line: 480, baseType: !5969, size: 64, offset: 7424)
!5969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5970, size: 64)
!5970 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !157, line: 480, flags: DIFlagFwdDecl)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !353, file: !157, line: 483, baseType: !5972, size: 64, offset: 7488)
!5972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5973, size: 64)
!5973 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !157, line: 483, flags: DIFlagFwdDecl)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !353, file: !157, line: 488, baseType: !406, size: 64, offset: 7552)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !353, file: !157, line: 492, baseType: !25, size: 64, offset: 7616)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !353, file: !157, line: 493, baseType: !7, size: 32, offset: 7680)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !353, file: !157, line: 495, baseType: !25, size: 64, offset: 7744)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !353, file: !157, line: 496, baseType: !7, size: 32, offset: 7808)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !353, file: !157, line: 499, baseType: !7, size: 32, offset: 7840)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !353, file: !157, line: 500, baseType: !5981, size: 64, offset: 7872)
!5981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5982, size: 64)
!5982 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4370, line: 45, baseType: !4346)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !353, file: !157, line: 503, baseType: !7, size: 32, offset: 7936)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !353, file: !157, line: 504, baseType: !5985, size: 64, offset: 8000)
!5985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5986, size: 64)
!5986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5987, size: 64)
!5987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5988, line: 96, size: 192, elements: !5989)
!5988 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5989 = !{!5990, !5991, !6033, !6035}
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5987, file: !5988, line: 97, baseType: !7, size: 32)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5987, file: !5988, line: 98, baseType: !5992, size: 64, offset: 64)
!5992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5993, size: 64)
!5993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5988, line: 24, size: 3072, elements: !5994)
!5994 = !{!5995, !5997, !5998, !5999, !6000, !6013, !6014, !6015, !6016, !6017, !6018, !6019, !6030, !6031, !6032}
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5993, file: !5988, line: 26, baseType: !5996, size: 128)
!5996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 128, elements: !2620)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5993, file: !5988, line: 27, baseType: !5996, size: 128, offset: 128)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5993, file: !5988, line: 28, baseType: !27, size: 32, offset: 256)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5993, file: !5988, line: 31, baseType: !64, size: 32, align: 512, offset: 512)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5993, file: !5988, line: 32, baseType: !6001, size: 960, offset: 576)
!6001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !6002, line: 206, size: 960, elements: !6003)
!6002 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!6003 = !{!6004, !6005, !6008, !6010, !6011, !6012}
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6001, file: !6002, line: 207, baseType: !821, size: 64)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !6001, file: !6002, line: 208, baseType: !6006, size: 256, offset: 64)
!6006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6007, size: 256, elements: !872)
!6007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !6001, file: !6002, line: 209, baseType: !6009, size: 256, offset: 320)
!6009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, elements: !872)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6001, file: !6002, line: 213, baseType: !441, size: 64, offset: 576)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !6001, file: !6002, line: 215, baseType: !1617, size: 256, offset: 640)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6001, file: !6002, line: 216, baseType: !88, size: 8, offset: 896)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5993, file: !5988, line: 33, baseType: !44, size: 64, offset: 1536)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5993, file: !5988, line: 34, baseType: !44, size: 64, offset: 1600)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5993, file: !5988, line: 35, baseType: !1403, size: 8, offset: 1664)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5993, file: !5988, line: 36, baseType: !2328, size: 320, offset: 1728)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5993, file: !5988, line: 37, baseType: !1518, size: 256, offset: 2048)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5993, file: !5988, line: 38, baseType: !818, size: 128, align: 64, offset: 2304)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5993, file: !5988, line: 39, baseType: !6020, size: 64, offset: 2432)
!6020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6021, size: 64)
!6021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5988, line: 49, size: 768, elements: !6022)
!6022 = !{!6023, !6024, !6025, !6026, !6027, !6028, !6029}
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6021, file: !5988, line: 50, baseType: !64, size: 32)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !6021, file: !5988, line: 51, baseType: !6009, size: 256, offset: 64)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !6021, file: !5988, line: 53, baseType: !6009, size: 256, offset: 320)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !6021, file: !5988, line: 54, baseType: !44, size: 64, offset: 576)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !6021, file: !5988, line: 55, baseType: !6020, size: 64, offset: 640)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !6021, file: !5988, line: 56, baseType: !27, size: 32, offset: 704)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !6021, file: !5988, line: 57, baseType: !27, size: 32, offset: 736)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5993, file: !5988, line: 40, baseType: !44, size: 64, offset: 2496)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5993, file: !5988, line: 42, baseType: !27, size: 32, offset: 2560)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5993, file: !5988, line: 43, baseType: !5986, size: 64, offset: 2624)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5987, file: !5988, line: 99, baseType: !6034, offset: 128)
!6034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !679, line: 211, elements: !680)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5987, file: !5988, line: 100, baseType: !6036, size: 64, offset: 128)
!6036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6037, size: 64)
!6037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5988, line: 63, size: 3008, elements: !6038)
!6038 = !{!6039, !6040, !6042, !6043, !6044, !6045, !6046, !6047, !6048, !6049, !6050, !6051, !6052, !6053, !6054, !6055, !6056, !6057, !6058, !6059, !6060, !6061, !6068}
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6037, file: !5988, line: 64, baseType: !6020, size: 64)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !6037, file: !5988, line: 65, baseType: !6041, size: 192, offset: 64)
!6041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6020, size: 192, elements: !407)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !6037, file: !5988, line: 67, baseType: !27, size: 32, offset: 256)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !6037, file: !5988, line: 68, baseType: !761, size: 256, offset: 320)
!6044 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6037, file: !5988, line: 69, baseType: !64, size: 32, offset: 576)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !6037, file: !5988, line: 70, baseType: !761, size: 256, offset: 640)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !6037, file: !5988, line: 71, baseType: !44, size: 64, offset: 896)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !6037, file: !5988, line: 72, baseType: !44, size: 64, offset: 960)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !6037, file: !5988, line: 73, baseType: !44, size: 64, offset: 1024)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !6037, file: !5988, line: 74, baseType: !44, size: 64, offset: 1088)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !6037, file: !5988, line: 75, baseType: !44, size: 64, offset: 1152)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !6037, file: !5988, line: 76, baseType: !44, size: 64, offset: 1216)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !6037, file: !5988, line: 77, baseType: !44, size: 64, offset: 1280)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !6037, file: !5988, line: 78, baseType: !44, size: 64, offset: 1344)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !6037, file: !5988, line: 79, baseType: !1403, size: 8, offset: 1408)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !6037, file: !5988, line: 80, baseType: !44, size: 64, offset: 1472)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !6037, file: !5988, line: 81, baseType: !761, size: 256, offset: 1536)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !6037, file: !5988, line: 82, baseType: !1557, size: 256, offset: 1792)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !6037, file: !5988, line: 84, baseType: !54, size: 32, offset: 2048)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !6037, file: !5988, line: 87, baseType: !44, size: 64, offset: 2112)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !6037, file: !5988, line: 88, baseType: !44, size: 64, offset: 2176)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6037, file: !5988, line: 89, baseType: !6062, size: 704, offset: 2240)
!6062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1519, line: 111, size: 704, elements: !6063)
!6063 = !{!6064, !6065, !6066, !6067}
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6062, file: !1519, line: 112, baseType: !1518, size: 256)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !6062, file: !1519, line: 113, baseType: !2328, size: 320, offset: 256)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !6062, file: !1519, line: 116, baseType: !2543, size: 64, offset: 576)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !6062, file: !1519, line: 117, baseType: !27, size: 32, offset: 640)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !6037, file: !5988, line: 90, baseType: !5986, size: 64, offset: 2944)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !353, file: !157, line: 515, baseType: !4383, size: 64, offset: 8064)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !353, file: !157, line: 516, baseType: !7, size: 32, offset: 8128)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !353, file: !157, line: 519, baseType: !7, size: 32, offset: 8160)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !353, file: !157, line: 520, baseType: !3590, size: 64, offset: 8192)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !353, file: !157, line: 523, baseType: !6074, size: 64, offset: 8256)
!6074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !353, file: !157, line: 524, baseType: !7, size: 32, offset: 8320)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !353, file: !157, line: 525, baseType: !6077, size: 64, offset: 8384)
!6077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6078, size: 64)
!6078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6079, size: 64)
!6079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6080, line: 28, size: 192, elements: !6081)
!6080 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!6081 = !{!6082, !6083, !6084}
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !6079, file: !6080, line: 29, baseType: !21, size: 64)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !6079, file: !6080, line: 30, baseType: !21, size: 64, offset: 64)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !6079, file: !6080, line: 31, baseType: !44, size: 64, offset: 128)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !353, file: !157, line: 526, baseType: !7, size: 32, offset: 8448)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !353, file: !157, line: 533, baseType: !25, size: 64, offset: 8512)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !353, file: !157, line: 534, baseType: !7, size: 32, offset: 8576)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !353, file: !157, line: 535, baseType: !325, size: 64, offset: 8640)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !353, file: !157, line: 536, baseType: !7, size: 32, offset: 8704)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !353, file: !157, line: 539, baseType: !27, size: 32, offset: 8736)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !353, file: !157, line: 540, baseType: !4410, size: 64, offset: 8768)
!6092 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !353, file: !157, line: 563, baseType: !102, size: 128, offset: 8832)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !353, file: !157, line: 565, baseType: !102, size: 128, offset: 8960)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !353, file: !157, line: 568, baseType: !2462, size: 64, offset: 9088)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !353, file: !157, line: 570, baseType: !54, size: 32, offset: 9152)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !349, file: !263, line: 1916, baseType: !6097, size: 64, offset: 64)
!6097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6098, size: 64)
!6098 = !DISubroutineType(types: !6099)
!6099 = !{!46, !1225, !46, !27}
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !349, file: !263, line: 1917, baseType: !6101, size: 64, offset: 128)
!6101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6102, size: 64)
!6102 = !DISubroutineType(types: !6103)
!6103 = !{!438, !1225, !406, !40, !45}
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !349, file: !263, line: 1918, baseType: !6105, size: 64, offset: 192)
!6105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6106, size: 64)
!6106 = !DISubroutineType(types: !6107)
!6107 = !{!438, !1225, !21, !40, !45}
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !349, file: !263, line: 1919, baseType: !5680, size: 64, offset: 256)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !349, file: !263, line: 1920, baseType: !5680, size: 64, offset: 320)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !349, file: !263, line: 1921, baseType: !6111, size: 64, offset: 384)
!6111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6112, size: 64)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{!27, !5683, !6114, !7}
!6114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6115, size: 64)
!6115 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !263, line: 53, flags: DIFlagFwdDecl)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !349, file: !263, line: 1923, baseType: !6117, size: 64, offset: 448)
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6118, size: 64)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{!27, !1225, !6120}
!6120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6121, size: 64)
!6121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !263, line: 1858, size: 128, elements: !6122)
!6122 = !{!6123, !6128}
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !6121, file: !263, line: 1859, baseType: !6124, size: 64)
!6124 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !263, line: 1855, baseType: !6125)
!6125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6126, size: 64)
!6126 = !DISubroutineType(types: !6127)
!6127 = !{!1403, !6120, !21, !27, !46, !553, !7}
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !6121, file: !263, line: 1860, baseType: !46, size: 64, offset: 64)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !349, file: !263, line: 1924, baseType: !6130, size: 64, offset: 512)
!6130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6131, size: 64)
!6131 = !DISubroutineType(types: !6132)
!6132 = !{!2292, !1225, !2294}
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !349, file: !263, line: 1925, baseType: !6134, size: 64, offset: 576)
!6134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6135, size: 64)
!6135 = !DISubroutineType(types: !6136)
!6136 = !{!441, !1225, !7, !44}
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !349, file: !263, line: 1926, baseType: !6134, size: 64, offset: 640)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !349, file: !263, line: 1927, baseType: !6139, size: 64, offset: 704)
!6139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6140, size: 64)
!6140 = !DISubroutineType(types: !6141)
!6141 = !{!27, !1225, !1997}
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !349, file: !263, line: 1928, baseType: !44, size: 64, offset: 768)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !349, file: !263, line: 1929, baseType: !6144, size: 64, offset: 832)
!6144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6145, size: 64)
!6145 = !DISubroutineType(types: !6146)
!6146 = !{!27, !480, !1225}
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !349, file: !263, line: 1930, baseType: !6148, size: 64, offset: 896)
!6148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6149, size: 64)
!6149 = !DISubroutineType(types: !6150)
!6150 = !{!27, !1225, !6151}
!6151 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !263, line: 1061, baseType: !25)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !349, file: !263, line: 1931, baseType: !6144, size: 64, offset: 960)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !349, file: !263, line: 1932, baseType: !6154, size: 64, offset: 1024)
!6154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6155, size: 64)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{!27, !1225, !46, !46, !27}
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !349, file: !263, line: 1933, baseType: !6158, size: 64, offset: 1088)
!6158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6159, size: 64)
!6159 = !DISubroutineType(types: !6160)
!6160 = !{!27, !27, !1225, !27}
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !349, file: !263, line: 1934, baseType: !6162, size: 64, offset: 1152)
!6162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6163, size: 64)
!6163 = !DISubroutineType(types: !6164)
!6164 = !{!27, !1225, !27, !6165}
!6165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6166, size: 64)
!6166 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !263, line: 1063, flags: DIFlagFwdDecl)
!6167 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !349, file: !263, line: 1935, baseType: !1222, size: 64, offset: 1216)
!6168 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !349, file: !263, line: 1936, baseType: !6169, size: 64, offset: 1280)
!6169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6170, size: 64)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!27, !27}
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !349, file: !263, line: 1937, baseType: !6162, size: 64, offset: 1344)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !349, file: !263, line: 1938, baseType: !6174, size: 64, offset: 1408)
!6174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6175, size: 64)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{!438, !3050, !1225, !45, !40, !7}
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !349, file: !263, line: 1939, baseType: !6178, size: 64, offset: 1472)
!6178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6179, size: 64)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!438, !1225, !45, !3050, !40, !7}
!6181 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !349, file: !263, line: 1940, baseType: !5736, size: 64, offset: 1536)
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !349, file: !263, line: 1941, baseType: !6183, size: 64, offset: 1600)
!6183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6184, size: 64)
!6184 = !DISubroutineType(types: !6185)
!6185 = !{!27, !1225, !27, !6186, !3842}
!6186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6165, size: 64)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !349, file: !263, line: 1942, baseType: !6188, size: 64, offset: 1664)
!6188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6189, size: 64)
!6189 = !DISubroutineType(types: !6190)
!6190 = !{!441, !1225, !27, !46, !46}
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !349, file: !263, line: 1944, baseType: !6192, size: 64, offset: 1728)
!6192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6193, size: 64)
!6193 = !DISubroutineType(types: !6194)
!6194 = !{null, !749, !1225}
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !349, file: !263, line: 1948, baseType: !6196, size: 64, offset: 1792)
!6196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6197, size: 64)
!6197 = !DISubroutineType(types: !6198)
!6198 = !{!438, !1225, !46, !1225, !46, !40, !7}
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !349, file: !263, line: 1950, baseType: !6200, size: 64, offset: 1856)
!6200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6201, size: 64)
!6201 = !DISubroutineType(types: !6202)
!6202 = !{!46, !1225, !46, !1225, !46, !46, !7}
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !349, file: !263, line: 1953, baseType: !6154, size: 64, offset: 1920)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !349, file: !263, line: 1954, baseType: !6205, size: 64, offset: 1984)
!6205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6206, size: 64)
!6206 = !DISubroutineType(types: !6207)
!6207 = !{!27, !6208, !7}
!6208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6209, size: 64)
!6209 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !263, line: 1911, flags: DIFlagFwdDecl)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !349, file: !263, line: 1955, baseType: !6211, size: 64, offset: 2048)
!6211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6212, size: 64)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!27, !6208, !6114, !7}
!6214 = !DIGlobalVariableExpression(var: !6215, expr: !DIExpression())
!6215 = distinct !DIGlobalVariable(name: "show_format_seq_ops", scope: !2, file: !3, line: 353, type: !783, isLocal: true, isDefinition: true)
!6216 = !DIGlobalVariableExpression(var: !6217, expr: !DIExpression())
!6217 = distinct !DIGlobalVariable(name: "btrace_mutex", scope: !2, file: !3, line: 31, type: !761, isLocal: true, isDefinition: true)
!6218 = !DIGlobalVariableExpression(var: !6219, expr: !DIExpression())
!6219 = distinct !DIGlobalVariable(name: "trace_bprintk_fmt_list", scope: !2, file: !3, line: 28, type: !102, isLocal: true, isDefinition: true)
!6220 = !DIGlobalVariableExpression(var: !6221, expr: !DIExpression())
!6221 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !6222, isLocal: true, isDefinition: true)
!6222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 80, elements: !1610)
!6223 = !DIGlobalVariableExpression(var: !6224, expr: !DIExpression())
!6224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 328, type: !6225, isLocal: true, isDefinition: true)
!6225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !407)
!6226 = !DIGlobalVariableExpression(var: !6227, expr: !DIExpression())
!6227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 331, type: !6225, isLocal: true, isDefinition: true)
!6228 = !DIGlobalVariableExpression(var: !6229, expr: !DIExpression())
!6229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 337, type: !6225, isLocal: true, isDefinition: true)
!6230 = !DIGlobalVariableExpression(var: !6231, expr: !DIExpression())
!6231 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !6225, isLocal: true, isDefinition: true)
!6232 = !DIGlobalVariableExpression(var: !6233, expr: !DIExpression())
!6233 = distinct !DIGlobalVariable(name: "module_trace_bprintk_format_nb", scope: !2, file: !3, line: 196, type: !6234, isLocal: true, isDefinition: true)
!6234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !6235, line: 54, size: 192, elements: !6236)
!6235 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!6236 = !{!6237, !6243, !6244}
!6237 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !6234, file: !6235, line: 55, baseType: !6238, size: 64)
!6238 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !6235, line: 51, baseType: !6239)
!6239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6240, size: 64)
!6240 = !DISubroutineType(types: !6241)
!6241 = !{!27, !6242, !44, !25}
!6242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6234, size: 64)
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6234, file: !6235, line: 56, baseType: !6242, size: 64, offset: 64)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !6234, file: !6235, line: 57, baseType: !27, size: 32, offset: 128)
!6245 = !DIGlobalVariableExpression(var: !6246, expr: !DIExpression())
!6246 = distinct !DIGlobalVariable(scope: null, file: !307, line: 480, type: !6247, isLocal: true, isDefinition: true)
!6247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 168, elements: !6248)
!6248 = !{!6249}
!6249 = !DISubrange(count: 21)
!6250 = !{i32 7, !"Dwarf Version", i32 5}
!6251 = !{i32 2, !"Debug Info Version", i32 3}
!6252 = !{i32 1, !"wchar_size", i32 2}
!6253 = !{i32 8, !"cf-protection-branch", i32 1}
!6254 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6255 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6256 = !{i32 1, !"Code Model", i32 2}
!6257 = !{i32 1, !"override-stack-alignment", i32 8}
!6258 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6259 = distinct !DISubprogram(name: "trace_printk_control", scope: !3, file: !3, line: 190, type: !6260, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6262)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{null, !1403}
!6262 = !{!6263}
!6263 = !DILocalVariable(name: "enabled", arg: 1, scope: !6259, file: !3, line: 190, type: !1403)
!6264 = !DILocation(line: 190, column: 32, scope: !6259)
!6265 = !DILocation(line: 192, column: 25, scope: !6259)
!6266 = !{i8 0, i8 2}
!6267 = !DILocation(line: 192, column: 23, scope: !6259)
!6268 = !DILocation(line: 193, column: 1, scope: !6259)
!6269 = distinct !DISubprogram(name: "__trace_bprintk", scope: !3, file: !3, line: 200, type: !6270, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6272)
!6270 = !DISubroutineType(types: !6271)
!6271 = !{!27, !44, !21, null}
!6272 = !{!6273, !6274, !6275, !6276}
!6273 = !DILocalVariable(name: "ip", arg: 1, scope: !6269, file: !3, line: 200, type: !44)
!6274 = !DILocalVariable(name: "fmt", arg: 2, scope: !6269, file: !3, line: 200, type: !21)
!6275 = !DILocalVariable(name: "ret", scope: !6269, file: !3, line: 202, type: !27)
!6276 = !DILocalVariable(name: "ap", scope: !6269, file: !3, line: 203, type: !6277)
!6277 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !6278, line: 5, baseType: !6279)
!6278 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!6279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !6280)
!6280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6281, size: 192, elements: !1150)
!6281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !6282)
!6282 = !{!6283, !6284, !6285, !6286}
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !6281, file: !3, line: 203, baseType: !7, size: 32)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !6281, file: !3, line: 203, baseType: !7, size: 32, offset: 32)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !6281, file: !3, line: 203, baseType: !25, size: 64, offset: 64)
!6286 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !6281, file: !3, line: 203, baseType: !25, size: 64, offset: 128)
!6287 = !DILocation(line: 200, column: 35, scope: !6269)
!6288 = !DILocation(line: 200, column: 51, scope: !6269)
!6289 = !DILocation(line: 202, column: 2, scope: !6269)
!6290 = !DILocation(line: 202, column: 6, scope: !6269)
!6291 = !DILocation(line: 203, column: 2, scope: !6269)
!6292 = !DILocation(line: 203, column: 10, scope: !6269)
!6293 = !DILocation(line: 205, column: 6, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 205, column: 6)
!6295 = !DILocation(line: 205, column: 6, scope: !6269)
!6296 = !DILocation(line: 206, column: 3, scope: !6294)
!6297 = !DILocation(line: 208, column: 7, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6269, file: !3, line: 208, column: 6)
!6299 = !DILocation(line: 208, column: 6, scope: !6269)
!6300 = !DILocation(line: 209, column: 3, scope: !6298)
!6301 = !DILocation(line: 211, column: 2, scope: !6269)
!6302 = !DILocation(line: 212, column: 23, scope: !6269)
!6303 = !DILocation(line: 212, column: 27, scope: !6269)
!6304 = !DILocation(line: 212, column: 32, scope: !6269)
!6305 = !DILocation(line: 212, column: 8, scope: !6269)
!6306 = !DILocation(line: 212, column: 6, scope: !6269)
!6307 = !DILocation(line: 213, column: 2, scope: !6269)
!6308 = !DILocation(line: 214, column: 9, scope: !6269)
!6309 = !DILocation(line: 214, column: 2, scope: !6269)
!6310 = !DILocation(line: 215, column: 1, scope: !6269)
!6311 = !DISubprogram(name: "trace_vbprintk", scope: !4451, file: !4451, line: 803, type: !6312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6312 = !DISubroutineType(types: !6313)
!6313 = !{!27, !44, !21, !6314}
!6314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6281, size: 64)
!6315 = distinct !DISubprogram(name: "__ftrace_vbprintk", scope: !3, file: !3, line: 218, type: !6312, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6316)
!6316 = !{!6317, !6318, !6319}
!6317 = !DILocalVariable(name: "ip", arg: 1, scope: !6315, file: !3, line: 218, type: !44)
!6318 = !DILocalVariable(name: "fmt", arg: 2, scope: !6315, file: !3, line: 218, type: !21)
!6319 = !DILocalVariable(name: "ap", arg: 3, scope: !6315, file: !3, line: 218, type: !6314)
!6320 = !DILocation(line: 218, column: 37, scope: !6315)
!6321 = !DILocation(line: 218, column: 53, scope: !6315)
!6322 = !DILocation(line: 218, column: 66, scope: !6315)
!6323 = !DILocation(line: 220, column: 6, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 220, column: 6)
!6325 = !DILocation(line: 220, column: 6, scope: !6315)
!6326 = !DILocation(line: 221, column: 3, scope: !6324)
!6327 = !DILocation(line: 223, column: 7, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 223, column: 6)
!6329 = !DILocation(line: 223, column: 6, scope: !6315)
!6330 = !DILocation(line: 224, column: 3, scope: !6328)
!6331 = !DILocation(line: 226, column: 24, scope: !6315)
!6332 = !DILocation(line: 226, column: 28, scope: !6315)
!6333 = !DILocation(line: 226, column: 33, scope: !6315)
!6334 = !DILocation(line: 226, column: 9, scope: !6315)
!6335 = !DILocation(line: 226, column: 2, scope: !6315)
!6336 = !DILocation(line: 227, column: 1, scope: !6315)
!6337 = distinct !DISubprogram(name: "__trace_printk", scope: !3, file: !3, line: 230, type: !6270, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6338)
!6338 = !{!6339, !6340, !6341, !6342}
!6339 = !DILocalVariable(name: "ip", arg: 1, scope: !6337, file: !3, line: 230, type: !44)
!6340 = !DILocalVariable(name: "fmt", arg: 2, scope: !6337, file: !3, line: 230, type: !21)
!6341 = !DILocalVariable(name: "ret", scope: !6337, file: !3, line: 232, type: !27)
!6342 = !DILocalVariable(name: "ap", scope: !6337, file: !3, line: 233, type: !6277)
!6343 = !DILocation(line: 230, column: 34, scope: !6337)
!6344 = !DILocation(line: 230, column: 50, scope: !6337)
!6345 = !DILocation(line: 232, column: 2, scope: !6337)
!6346 = !DILocation(line: 232, column: 6, scope: !6337)
!6347 = !DILocation(line: 233, column: 2, scope: !6337)
!6348 = !DILocation(line: 233, column: 10, scope: !6337)
!6349 = !DILocation(line: 235, column: 7, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6337, file: !3, line: 235, column: 6)
!6351 = !DILocation(line: 235, column: 6, scope: !6337)
!6352 = !DILocation(line: 236, column: 3, scope: !6350)
!6353 = !DILocation(line: 238, column: 2, scope: !6337)
!6354 = !DILocation(line: 239, column: 22, scope: !6337)
!6355 = !DILocation(line: 239, column: 26, scope: !6337)
!6356 = !DILocation(line: 239, column: 31, scope: !6337)
!6357 = !DILocation(line: 239, column: 8, scope: !6337)
!6358 = !DILocation(line: 239, column: 6, scope: !6337)
!6359 = !DILocation(line: 240, column: 2, scope: !6337)
!6360 = !DILocation(line: 241, column: 9, scope: !6337)
!6361 = !DILocation(line: 241, column: 2, scope: !6337)
!6362 = !DILocation(line: 242, column: 1, scope: !6337)
!6363 = !DISubprogram(name: "trace_vprintk", scope: !4451, file: !4451, line: 805, type: !6312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6364 = distinct !DISubprogram(name: "__ftrace_vprintk", scope: !3, file: !3, line: 245, type: !6312, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6365)
!6365 = !{!6366, !6367, !6368}
!6366 = !DILocalVariable(name: "ip", arg: 1, scope: !6364, file: !3, line: 245, type: !44)
!6367 = !DILocalVariable(name: "fmt", arg: 2, scope: !6364, file: !3, line: 245, type: !21)
!6368 = !DILocalVariable(name: "ap", arg: 3, scope: !6364, file: !3, line: 245, type: !6314)
!6369 = !DILocation(line: 245, column: 36, scope: !6364)
!6370 = !DILocation(line: 245, column: 52, scope: !6364)
!6371 = !DILocation(line: 245, column: 65, scope: !6364)
!6372 = !DILocation(line: 247, column: 7, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 247, column: 6)
!6374 = !DILocation(line: 247, column: 6, scope: !6364)
!6375 = !DILocation(line: 248, column: 3, scope: !6373)
!6376 = !DILocation(line: 250, column: 23, scope: !6364)
!6377 = !DILocation(line: 250, column: 27, scope: !6364)
!6378 = !DILocation(line: 250, column: 32, scope: !6364)
!6379 = !DILocation(line: 250, column: 9, scope: !6364)
!6380 = !DILocation(line: 250, column: 2, scope: !6364)
!6381 = !DILocation(line: 251, column: 1, scope: !6364)
!6382 = distinct !DISubprogram(name: "trace_is_tracepoint_string", scope: !3, file: !3, line: 254, type: !6383, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6385)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{!1403, !21}
!6385 = !{!6386, !6387}
!6386 = !DILocalVariable(name: "str", arg: 1, scope: !6382, file: !3, line: 254, type: !21)
!6387 = !DILocalVariable(name: "ptr", scope: !6382, file: !3, line: 256, type: !3590)
!6388 = !DILocation(line: 254, column: 45, scope: !6382)
!6389 = !DILocation(line: 256, column: 2, scope: !6382)
!6390 = !DILocation(line: 256, column: 15, scope: !6382)
!6391 = !DILocation(line: 258, column: 11, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 258, column: 2)
!6393 = !DILocation(line: 258, column: 7, scope: !6392)
!6394 = !DILocation(line: 258, column: 39, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 258, column: 2)
!6396 = !DILocation(line: 258, column: 43, scope: !6395)
!6397 = !DILocation(line: 258, column: 2, scope: !6392)
!6398 = !DILocation(line: 259, column: 7, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6400, file: !3, line: 259, column: 7)
!6400 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 258, column: 77)
!6401 = !DILocation(line: 259, column: 15, scope: !6399)
!6402 = !DILocation(line: 259, column: 14, scope: !6399)
!6403 = !DILocation(line: 259, column: 11, scope: !6399)
!6404 = !DILocation(line: 259, column: 7, scope: !6400)
!6405 = !DILocation(line: 260, column: 4, scope: !6399)
!6406 = !DILocation(line: 261, column: 2, scope: !6400)
!6407 = !DILocation(line: 258, column: 73, scope: !6395)
!6408 = !DILocation(line: 258, column: 2, scope: !6395)
!6409 = distinct !{!6409, !6397, !6410, !6411, !6412}
!6410 = !DILocation(line: 261, column: 2, scope: !6392)
!6411 = !{!"llvm.loop.mustprogress"}
!6412 = !{!"llvm.loop.unroll.disable"}
!6413 = !DILocation(line: 262, column: 2, scope: !6382)
!6414 = !DILocation(line: 263, column: 1, scope: !6382)
!6415 = distinct !DISubprogram(name: "__initstub__kmod_trace_printk__324_393_init_trace_printk_function_export5", scope: !3, file: !3, line: 393, type: !4421, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6416 = !DILocation(line: 393, column: 1, scope: !6415)
!6417 = distinct !DISubprogram(name: "init_trace_printk_function_export", scope: !3, file: !3, line: 379, type: !4421, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6418)
!6418 = !{!6419}
!6419 = !DILocalVariable(name: "ret", scope: !6417, file: !3, line: 381, type: !27)
!6420 = !DILocation(line: 381, column: 2, scope: !6417)
!6421 = !DILocation(line: 381, column: 6, scope: !6417)
!6422 = !DILocation(line: 383, column: 8, scope: !6417)
!6423 = !DILocation(line: 383, column: 6, scope: !6417)
!6424 = !DILocation(line: 384, column: 6, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 384, column: 6)
!6426 = !DILocation(line: 384, column: 6, scope: !6417)
!6427 = !DILocation(line: 385, column: 3, scope: !6425)
!6428 = !DILocation(line: 387, column: 2, scope: !6417)
!6429 = !DILocation(line: 390, column: 2, scope: !6417)
!6430 = !DILocation(line: 391, column: 1, scope: !6417)
!6431 = distinct !DISubprogram(name: "__initstub__kmod_trace_printk__326_400_init_trace_printkearly", scope: !3, file: !3, line: 400, type: !4421, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6432 = !DILocation(line: 400, column: 1, scope: !6431)
!6433 = distinct !DISubprogram(name: "init_trace_printk", scope: !3, file: !3, line: 395, type: !4421, scopeLine: 396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6434 = !DILocation(line: 397, column: 9, scope: !6433)
!6435 = !DILocation(line: 397, column: 2, scope: !6433)
!6436 = !DISubprogram(name: "tracing_init_dentry", scope: !4451, file: !4451, line: 626, type: !4421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6437 = !DISubprogram(name: "trace_create_file", scope: !4451, file: !4451, line: 620, type: !6438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6438 = !DISubroutineType(types: !6439)
!6439 = !{!515, !21, !29, !515, !25, !4920}
!6440 = distinct !DISubprogram(name: "ftrace_formats_open", scope: !3, file: !3, line: 361, type: !6145, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6441)
!6441 = !{!6442, !6443, !6444}
!6442 = !DILocalVariable(name: "inode", arg: 1, scope: !6440, file: !3, line: 361, type: !480)
!6443 = !DILocalVariable(name: "file", arg: 2, scope: !6440, file: !3, line: 361, type: !1225)
!6444 = !DILocalVariable(name: "ret", scope: !6440, file: !3, line: 363, type: !27)
!6445 = !DILocation(line: 361, column: 35, scope: !6440)
!6446 = !DILocation(line: 361, column: 55, scope: !6440)
!6447 = !DILocation(line: 363, column: 2, scope: !6440)
!6448 = !DILocation(line: 363, column: 6, scope: !6440)
!6449 = !DILocation(line: 365, column: 8, scope: !6440)
!6450 = !DILocation(line: 365, column: 6, scope: !6440)
!6451 = !DILocation(line: 366, column: 6, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 366, column: 6)
!6453 = !DILocation(line: 366, column: 6, scope: !6440)
!6454 = !DILocation(line: 367, column: 10, scope: !6452)
!6455 = !DILocation(line: 367, column: 3, scope: !6452)
!6456 = !DILocation(line: 369, column: 18, scope: !6440)
!6457 = !DILocation(line: 369, column: 9, scope: !6440)
!6458 = !DILocation(line: 369, column: 2, scope: !6440)
!6459 = !DILocation(line: 370, column: 1, scope: !6440)
!6460 = !DISubprogram(name: "security_locked_down", scope: !274, file: !274, line: 488, type: !6461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6461 = !DISubroutineType(types: !6462)
!6462 = !{!27, !273}
!6463 = !DISubprogram(name: "seq_open", scope: !751, file: !751, line: 109, type: !6464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6464 = !DISubroutineType(types: !6465)
!6465 = !{!27, !1225, !782}
!6466 = distinct !DISubprogram(name: "t_start", scope: !3, file: !3, line: 299, type: !788, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6467)
!6467 = !{!6468, !6469}
!6468 = !DILocalVariable(name: "m", arg: 1, scope: !6466, file: !3, line: 299, type: !749)
!6469 = !DILocalVariable(name: "pos", arg: 2, scope: !6466, file: !3, line: 299, type: !45)
!6470 = !DILocation(line: 299, column: 26, scope: !6466)
!6471 = !DILocation(line: 299, column: 37, scope: !6466)
!6472 = !DILocation(line: 301, column: 2, scope: !6466)
!6473 = !DILocation(line: 302, column: 25, scope: !6466)
!6474 = !DILocation(line: 302, column: 9, scope: !6466)
!6475 = !DILocation(line: 302, column: 2, scope: !6466)
!6476 = distinct !DISubprogram(name: "t_stop", scope: !3, file: !3, line: 348, type: !792, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6477)
!6477 = !{!6478, !6479}
!6478 = !DILocalVariable(name: "m", arg: 1, scope: !6476, file: !3, line: 348, type: !749)
!6479 = !DILocalVariable(name: "p", arg: 2, scope: !6476, file: !3, line: 348, type: !25)
!6480 = !DILocation(line: 348, column: 37, scope: !6476)
!6481 = !DILocation(line: 348, column: 46, scope: !6476)
!6482 = !DILocation(line: 350, column: 2, scope: !6476)
!6483 = !DILocation(line: 351, column: 1, scope: !6476)
!6484 = distinct !DISubprogram(name: "t_next", scope: !3, file: !3, line: 305, type: !796, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6485)
!6485 = !{!6486, !6487, !6488}
!6486 = !DILocalVariable(name: "m", arg: 1, scope: !6484, file: !3, line: 305, type: !749)
!6487 = !DILocalVariable(name: "v", arg: 2, scope: !6484, file: !3, line: 305, type: !25)
!6488 = !DILocalVariable(name: "pos", arg: 3, scope: !6484, file: !3, line: 305, type: !45)
!6489 = !DILocation(line: 305, column: 38, scope: !6484)
!6490 = !DILocation(line: 305, column: 48, scope: !6484)
!6491 = !DILocation(line: 305, column: 59, scope: !6484)
!6492 = !DILocation(line: 307, column: 4, scope: !6484)
!6493 = !DILocation(line: 307, column: 8, scope: !6484)
!6494 = !DILocation(line: 308, column: 19, scope: !6484)
!6495 = !DILocation(line: 308, column: 22, scope: !6484)
!6496 = !DILocation(line: 308, column: 9, scope: !6484)
!6497 = !DILocation(line: 308, column: 2, scope: !6484)
!6498 = distinct !DISubprogram(name: "t_show", scope: !3, file: !3, line: 311, type: !800, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6499)
!6499 = !{!6500, !6501, !6502, !6503, !6504}
!6500 = !DILocalVariable(name: "m", arg: 1, scope: !6498, file: !3, line: 311, type: !749)
!6501 = !DILocalVariable(name: "v", arg: 2, scope: !6498, file: !3, line: 311, type: !25)
!6502 = !DILocalVariable(name: "fmt", scope: !6498, file: !3, line: 313, type: !3590)
!6503 = !DILocalVariable(name: "str", scope: !6498, file: !3, line: 314, type: !21)
!6504 = !DILocalVariable(name: "i", scope: !6498, file: !3, line: 315, type: !27)
!6505 = !DILocation(line: 311, column: 36, scope: !6498)
!6506 = !DILocation(line: 311, column: 45, scope: !6498)
!6507 = !DILocation(line: 313, column: 2, scope: !6498)
!6508 = !DILocation(line: 313, column: 15, scope: !6498)
!6509 = !DILocation(line: 313, column: 21, scope: !6498)
!6510 = !DILocation(line: 314, column: 2, scope: !6498)
!6511 = !DILocation(line: 314, column: 14, scope: !6498)
!6512 = !DILocation(line: 314, column: 21, scope: !6498)
!6513 = !DILocation(line: 314, column: 20, scope: !6498)
!6514 = !DILocation(line: 315, column: 2, scope: !6498)
!6515 = !DILocation(line: 315, column: 6, scope: !6498)
!6516 = !DILocation(line: 317, column: 8, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 317, column: 6)
!6518 = !DILocation(line: 317, column: 7, scope: !6517)
!6519 = !DILocation(line: 317, column: 6, scope: !6498)
!6520 = !DILocation(line: 318, column: 3, scope: !6517)
!6521 = !DILocation(line: 320, column: 13, scope: !6498)
!6522 = !DILocation(line: 320, column: 48, scope: !6498)
!6523 = !DILocation(line: 320, column: 30, scope: !6498)
!6524 = !DILocation(line: 320, column: 2, scope: !6498)
!6525 = !DILocation(line: 325, column: 9, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 325, column: 2)
!6527 = !DILocation(line: 325, column: 7, scope: !6526)
!6528 = !DILocation(line: 325, column: 14, scope: !6529)
!6529 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 325, column: 2)
!6530 = !DILocation(line: 325, column: 18, scope: !6529)
!6531 = !DILocation(line: 325, column: 2, scope: !6526)
!6532 = !DILocation(line: 326, column: 11, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 325, column: 27)
!6534 = !DILocation(line: 326, column: 15, scope: !6533)
!6535 = !DILocation(line: 326, column: 3, scope: !6533)
!6536 = !DILocation(line: 328, column: 13, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6533, file: !3, line: 326, column: 19)
!6538 = !DILocation(line: 328, column: 4, scope: !6537)
!6539 = !DILocation(line: 329, column: 4, scope: !6537)
!6540 = !DILocation(line: 331, column: 13, scope: !6537)
!6541 = !DILocation(line: 331, column: 4, scope: !6537)
!6542 = !DILocation(line: 332, column: 4, scope: !6537)
!6543 = !DILocation(line: 334, column: 13, scope: !6537)
!6544 = !DILocation(line: 334, column: 4, scope: !6537)
!6545 = !DILocation(line: 335, column: 4, scope: !6537)
!6546 = !DILocation(line: 337, column: 13, scope: !6537)
!6547 = !DILocation(line: 337, column: 4, scope: !6537)
!6548 = !DILocation(line: 338, column: 4, scope: !6537)
!6549 = !DILocation(line: 340, column: 13, scope: !6537)
!6550 = !DILocation(line: 340, column: 16, scope: !6537)
!6551 = !DILocation(line: 340, column: 20, scope: !6537)
!6552 = !DILocation(line: 340, column: 4, scope: !6537)
!6553 = !DILocation(line: 341, column: 3, scope: !6537)
!6554 = !DILocation(line: 342, column: 2, scope: !6533)
!6555 = !DILocation(line: 325, column: 23, scope: !6529)
!6556 = !DILocation(line: 325, column: 2, scope: !6529)
!6557 = distinct !{!6557, !6531, !6558, !6411, !6412}
!6558 = !DILocation(line: 342, column: 2, scope: !6526)
!6559 = !DILocation(line: 343, column: 11, scope: !6498)
!6560 = !DILocation(line: 343, column: 2, scope: !6498)
!6561 = !DILocation(line: 345, column: 2, scope: !6498)
!6562 = !DILocation(line: 346, column: 1, scope: !6498)
!6563 = distinct !DISubprogram(name: "format_mod_start", scope: !3, file: !3, line: 162, type: !2463, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6564 = !DILocation(line: 164, column: 2, scope: !6563)
!6565 = !DILocation(line: 165, column: 1, scope: !6563)
!6566 = distinct !DISubprogram(name: "find_next", scope: !3, file: !3, line: 265, type: !6567, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6569)
!6567 = !DISubroutineType(types: !6568)
!6568 = !{!3590, !25, !45}
!6569 = !{!6570, !6571, !6572, !6573, !6574}
!6570 = !DILocalVariable(name: "v", arg: 1, scope: !6566, file: !3, line: 265, type: !25)
!6571 = !DILocalVariable(name: "pos", arg: 2, scope: !6566, file: !3, line: 265, type: !45)
!6572 = !DILocalVariable(name: "fmt", scope: !6566, file: !3, line: 267, type: !3590)
!6573 = !DILocalVariable(name: "start_index", scope: !6566, file: !3, line: 268, type: !27)
!6574 = !DILocalVariable(name: "last_index", scope: !6566, file: !3, line: 269, type: !27)
!6575 = !DILocation(line: 265, column: 37, scope: !6566)
!6576 = !DILocation(line: 265, column: 48, scope: !6566)
!6577 = !DILocation(line: 267, column: 2, scope: !6566)
!6578 = !DILocation(line: 267, column: 15, scope: !6566)
!6579 = !DILocation(line: 267, column: 21, scope: !6566)
!6580 = !DILocation(line: 268, column: 2, scope: !6566)
!6581 = !DILocation(line: 268, column: 6, scope: !6566)
!6582 = !DILocation(line: 269, column: 2, scope: !6566)
!6583 = !DILocation(line: 269, column: 6, scope: !6566)
!6584 = !DILocation(line: 271, column: 43, scope: !6566)
!6585 = !DILocation(line: 271, column: 16, scope: !6566)
!6586 = !DILocation(line: 271, column: 14, scope: !6566)
!6587 = !DILocation(line: 273, column: 7, scope: !6588)
!6588 = distinct !DILexicalBlock(scope: !6566, file: !3, line: 273, column: 6)
!6589 = !DILocation(line: 273, column: 6, scope: !6588)
!6590 = !DILocation(line: 273, column: 13, scope: !6588)
!6591 = !DILocation(line: 273, column: 11, scope: !6588)
!6592 = !DILocation(line: 273, column: 6, scope: !6566)
!6593 = !DILocation(line: 274, column: 41, scope: !6588)
!6594 = !DILocation(line: 274, column: 40, scope: !6588)
!6595 = !DILocation(line: 274, column: 38, scope: !6588)
!6596 = !DILocation(line: 274, column: 3, scope: !6588)
!6597 = !DILocation(line: 288, column: 15, scope: !6566)
!6598 = !DILocation(line: 288, column: 13, scope: !6566)
!6599 = !DILocation(line: 289, column: 40, scope: !6566)
!6600 = !DILocation(line: 289, column: 16, scope: !6566)
!6601 = !DILocation(line: 289, column: 14, scope: !6566)
!6602 = !DILocation(line: 291, column: 7, scope: !6603)
!6603 = distinct !DILexicalBlock(scope: !6566, file: !3, line: 291, column: 6)
!6604 = !DILocation(line: 291, column: 6, scope: !6603)
!6605 = !DILocation(line: 291, column: 13, scope: !6603)
!6606 = !DILocation(line: 291, column: 26, scope: !6603)
!6607 = !DILocation(line: 291, column: 24, scope: !6603)
!6608 = !DILocation(line: 291, column: 11, scope: !6603)
!6609 = !DILocation(line: 291, column: 6, scope: !6566)
!6610 = !DILocation(line: 292, column: 39, scope: !6603)
!6611 = !DILocation(line: 292, column: 38, scope: !6603)
!6612 = !DILocation(line: 292, column: 45, scope: !6603)
!6613 = !DILocation(line: 292, column: 43, scope: !6603)
!6614 = !DILocation(line: 292, column: 35, scope: !6603)
!6615 = !DILocation(line: 292, column: 3, scope: !6603)
!6616 = !DILocation(line: 294, column: 17, scope: !6566)
!6617 = !DILocation(line: 294, column: 14, scope: !6566)
!6618 = !DILocation(line: 295, column: 30, scope: !6566)
!6619 = !DILocation(line: 295, column: 43, scope: !6566)
!6620 = !DILocation(line: 295, column: 46, scope: !6566)
!6621 = !DILocation(line: 295, column: 51, scope: !6566)
!6622 = !DILocation(line: 295, column: 9, scope: !6566)
!6623 = !DILocation(line: 295, column: 2, scope: !6566)
!6624 = !DILocation(line: 296, column: 1, scope: !6566)
!6625 = !DISubprogram(name: "mutex_lock", scope: !762, file: !762, line: 227, type: !6626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6626 = !DISubroutineType(types: !6627)
!6627 = !{null, !6628}
!6628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!6629 = distinct !DISubprogram(name: "find_next_mod_format", scope: !3, file: !3, line: 123, type: !6630, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6632)
!6630 = !DISubroutineType(types: !6631)
!6631 = !{!3590, !27, !25, !3590, !45}
!6632 = !{!6633, !6634, !6635, !6636, !6637, !6638, !6641, !6644, !6647, !6649}
!6633 = !DILocalVariable(name: "start_index", arg: 1, scope: !6629, file: !3, line: 123, type: !27)
!6634 = !DILocalVariable(name: "v", arg: 2, scope: !6629, file: !3, line: 123, type: !25)
!6635 = !DILocalVariable(name: "fmt", arg: 3, scope: !6629, file: !3, line: 123, type: !3590)
!6636 = !DILocalVariable(name: "pos", arg: 4, scope: !6629, file: !3, line: 123, type: !45)
!6637 = !DILocalVariable(name: "mod_fmt", scope: !6629, file: !3, line: 125, type: !317)
!6638 = !DILocalVariable(name: "p", scope: !6639, file: !3, line: 137, type: !317)
!6639 = distinct !DILexicalBlock(scope: !6640, file: !3, line: 136, column: 33)
!6640 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 136, column: 6)
!6641 = !DILocalVariable(name: "__mptr", scope: !6642, file: !3, line: 140, type: !25)
!6642 = distinct !DILexicalBlock(scope: !6643, file: !3, line: 140, column: 3)
!6643 = distinct !DILexicalBlock(scope: !6639, file: !3, line: 140, column: 3)
!6644 = !DILocalVariable(name: "__mptr", scope: !6645, file: !3, line: 140, type: !25)
!6645 = distinct !DILexicalBlock(scope: !6646, file: !3, line: 140, column: 3)
!6646 = distinct !DILexicalBlock(scope: !6643, file: !3, line: 140, column: 3)
!6647 = !DILocalVariable(name: "__mptr", scope: !6648, file: !3, line: 153, type: !25)
!6648 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 153, column: 12)
!6649 = !DILocalVariable(name: "__mptr", scope: !6650, file: !3, line: 157, type: !25)
!6650 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 157, column: 12)
!6651 = !DILocation(line: 123, column: 26, scope: !6629)
!6652 = !DILocation(line: 123, column: 45, scope: !6629)
!6653 = !DILocation(line: 123, column: 61, scope: !6629)
!6654 = !DILocation(line: 123, column: 74, scope: !6629)
!6655 = !DILocation(line: 125, column: 2, scope: !6629)
!6656 = !DILocation(line: 125, column: 28, scope: !6629)
!6657 = !DILocation(line: 127, column: 6, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 127, column: 6)
!6659 = !DILocation(line: 127, column: 6, scope: !6629)
!6660 = !DILocation(line: 128, column: 3, scope: !6658)
!6661 = !DILocation(line: 136, column: 7, scope: !6640)
!6662 = !DILocation(line: 136, column: 9, scope: !6640)
!6663 = !DILocation(line: 136, column: 12, scope: !6640)
!6664 = !DILocation(line: 136, column: 28, scope: !6640)
!6665 = !DILocation(line: 136, column: 27, scope: !6640)
!6666 = !DILocation(line: 136, column: 24, scope: !6640)
!6667 = !DILocation(line: 136, column: 6, scope: !6629)
!6668 = !DILocation(line: 137, column: 3, scope: !6639)
!6669 = !DILocation(line: 137, column: 29, scope: !6639)
!6670 = !DILocation(line: 140, column: 3, scope: !6642)
!6671 = !DILocation(line: 140, column: 3, scope: !6643)
!6672 = !DILocation(line: 140, column: 3, scope: !6646)
!6673 = !DILocation(line: 141, column: 8, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6675, file: !3, line: 141, column: 8)
!6675 = distinct !DILexicalBlock(scope: !6646, file: !3, line: 140, column: 57)
!6676 = !DILocation(line: 141, column: 24, scope: !6674)
!6677 = !DILocation(line: 141, column: 23, scope: !6674)
!6678 = !DILocation(line: 141, column: 20, scope: !6674)
!6679 = !DILocation(line: 141, column: 8, scope: !6675)
!6680 = !DILocation(line: 142, column: 13, scope: !6674)
!6681 = !DILocation(line: 142, column: 16, scope: !6674)
!6682 = !DILocation(line: 142, column: 5, scope: !6674)
!6683 = !DILocation(line: 143, column: 15, scope: !6675)
!6684 = !DILocation(line: 144, column: 3, scope: !6675)
!6685 = !DILocation(line: 140, column: 3, scope: !6645)
!6686 = distinct !{!6686, !6671, !6687, !6411, !6412}
!6687 = !DILocation(line: 144, column: 3, scope: !6643)
!6688 = !DILocation(line: 146, column: 3, scope: !6639)
!6689 = !DILocation(line: 147, column: 2, scope: !6640)
!6690 = !DILocation(line: 153, column: 12, scope: !6648)
!6691 = !DILocation(line: 153, column: 12, scope: !6629)
!6692 = !DILocation(line: 153, column: 10, scope: !6629)
!6693 = !DILocation(line: 154, column: 6, scope: !6694)
!6694 = distinct !DILexicalBlock(scope: !6629, file: !3, line: 154, column: 6)
!6695 = !DILocation(line: 154, column: 15, scope: !6694)
!6696 = !DILocation(line: 154, column: 20, scope: !6694)
!6697 = !DILocation(line: 154, column: 25, scope: !6694)
!6698 = !DILocation(line: 154, column: 6, scope: !6629)
!6699 = !DILocation(line: 155, column: 3, scope: !6694)
!6700 = !DILocation(line: 157, column: 12, scope: !6650)
!6701 = !DILocation(line: 157, column: 12, scope: !6629)
!6702 = !DILocation(line: 157, column: 10, scope: !6629)
!6703 = !DILocation(line: 159, column: 10, scope: !6629)
!6704 = !DILocation(line: 159, column: 19, scope: !6629)
!6705 = !DILocation(line: 159, column: 2, scope: !6629)
!6706 = !DILocation(line: 160, column: 1, scope: !6629)
!6707 = distinct !DISubprogram(name: "list_empty", scope: !6708, file: !6708, line: 371, type: !6709, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6713)
!6708 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6709 = !DISubroutineType(types: !6710)
!6710 = !{!27, !6711}
!6711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6712, size: 64)
!6712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!6713 = !{!6714}
!6714 = !DILocalVariable(name: "head", arg: 1, scope: !6707, file: !6708, line: 371, type: !6711)
!6715 = !DILocation(line: 371, column: 54, scope: !6707)
!6716 = !DILocation(line: 373, column: 9, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6707, file: !6708, line: 373, column: 9)
!6718 = !DILocation(line: 373, column: 9, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6717, file: !6708, line: 373, column: 9)
!6720 = !DILocation(line: 373, column: 34, scope: !6707)
!6721 = !DILocation(line: 373, column: 31, scope: !6707)
!6722 = !DILocation(line: 373, column: 2, scope: !6707)
!6723 = distinct !DISubprogram(name: "format_mod_stop", scope: !3, file: !3, line: 167, type: !2463, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6724 = !DILocation(line: 169, column: 2, scope: !6723)
!6725 = !DILocation(line: 170, column: 1, scope: !6723)
!6726 = !DISubprogram(name: "mutex_unlock", scope: !762, file: !762, line: 246, type: !6626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6727 = !DISubprogram(name: "seq_printf", scope: !751, file: !751, line: 119, type: !6728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6728 = !DISubroutineType(types: !6729)
!6729 = !{null, !749, !21, null}
!6730 = !DISubprogram(name: "seq_puts", scope: !751, file: !751, line: 121, type: !6731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6731 = !DISubroutineType(types: !6732)
!6732 = !{null, !749, !21}
!6733 = !DISubprogram(name: "seq_putc", scope: !751, file: !751, line: 120, type: !6734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6734 = !DISubroutineType(types: !6735)
!6735 = !{null, !749, !23}
!6736 = !DISubprogram(name: "register_module_notifier", scope: !157, file: !157, line: 734, type: !6737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6737 = !DISubroutineType(types: !6738)
!6738 = !{!27, !6242}
!6739 = distinct !DISubprogram(name: "module_trace_bprintk_format_notify", scope: !3, file: !3, line: 88, type: !6240, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6740)
!6740 = !{!6741, !6742, !6743, !6744, !6745, !6748}
!6741 = !DILocalVariable(name: "self", arg: 1, scope: !6739, file: !3, line: 88, type: !6242)
!6742 = !DILocalVariable(name: "val", arg: 2, scope: !6739, file: !3, line: 89, type: !44)
!6743 = !DILocalVariable(name: "data", arg: 3, scope: !6739, file: !3, line: 89, type: !25)
!6744 = !DILocalVariable(name: "mod", scope: !6739, file: !3, line: 91, type: !352)
!6745 = !DILocalVariable(name: "start", scope: !6746, file: !3, line: 93, type: !3590)
!6746 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 92, column: 34)
!6747 = distinct !DILexicalBlock(scope: !6739, file: !3, line: 92, column: 6)
!6748 = !DILocalVariable(name: "end", scope: !6746, file: !3, line: 94, type: !3590)
!6749 = !DILocation(line: 88, column: 70, scope: !6739)
!6750 = !DILocation(line: 89, column: 17, scope: !6739)
!6751 = !DILocation(line: 89, column: 28, scope: !6739)
!6752 = !DILocation(line: 91, column: 2, scope: !6739)
!6753 = !DILocation(line: 91, column: 17, scope: !6739)
!6754 = !DILocation(line: 91, column: 23, scope: !6739)
!6755 = !DILocation(line: 92, column: 6, scope: !6747)
!6756 = !DILocation(line: 92, column: 11, scope: !6747)
!6757 = !DILocation(line: 92, column: 6, scope: !6739)
!6758 = !DILocation(line: 93, column: 3, scope: !6746)
!6759 = !DILocation(line: 93, column: 16, scope: !6746)
!6760 = !DILocation(line: 93, column: 24, scope: !6746)
!6761 = !DILocation(line: 93, column: 29, scope: !6746)
!6762 = !DILocation(line: 94, column: 3, scope: !6746)
!6763 = !DILocation(line: 94, column: 16, scope: !6746)
!6764 = !DILocation(line: 94, column: 22, scope: !6746)
!6765 = !DILocation(line: 94, column: 30, scope: !6746)
!6766 = !DILocation(line: 94, column: 35, scope: !6746)
!6767 = !DILocation(line: 94, column: 28, scope: !6746)
!6768 = !DILocation(line: 96, column: 7, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6746, file: !3, line: 96, column: 7)
!6770 = !DILocation(line: 96, column: 11, scope: !6769)
!6771 = !DILocation(line: 96, column: 7, scope: !6746)
!6772 = !DILocation(line: 97, column: 37, scope: !6769)
!6773 = !DILocation(line: 97, column: 44, scope: !6769)
!6774 = !DILocation(line: 97, column: 4, scope: !6769)
!6775 = !DILocation(line: 98, column: 2, scope: !6747)
!6776 = !DILocation(line: 98, column: 2, scope: !6746)
!6777 = !DILocation(line: 100, column: 1, scope: !6739)
!6778 = !DILocation(line: 99, column: 2, scope: !6739)
!6779 = distinct !DISubprogram(name: "hold_module_trace_bprintk_format", scope: !3, file: !3, line: 53, type: !6780, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6782)
!6780 = !DISubroutineType(types: !6781)
!6781 = !{null, !3590, !3590}
!6782 = !{!6783, !6784, !6785, !6786, !6787}
!6783 = !DILocalVariable(name: "start", arg: 1, scope: !6779, file: !3, line: 53, type: !3590)
!6784 = !DILocalVariable(name: "end", arg: 2, scope: !6779, file: !3, line: 53, type: !3590)
!6785 = !DILocalVariable(name: "iter", scope: !6779, file: !3, line: 55, type: !3590)
!6786 = !DILocalVariable(name: "fmt", scope: !6779, file: !3, line: 56, type: !406)
!6787 = !DILocalVariable(name: "tb_fmt", scope: !6788, file: !3, line: 64, type: !317)
!6788 = distinct !DILexicalBlock(scope: !6789, file: !3, line: 63, column: 41)
!6789 = distinct !DILexicalBlock(scope: !6790, file: !3, line: 63, column: 2)
!6790 = distinct !DILexicalBlock(scope: !6779, file: !3, line: 63, column: 2)
!6791 = !DILocation(line: 53, column: 52, scope: !6779)
!6792 = !DILocation(line: 53, column: 72, scope: !6779)
!6793 = !DILocation(line: 55, column: 2, scope: !6779)
!6794 = !DILocation(line: 55, column: 15, scope: !6779)
!6795 = !DILocation(line: 56, column: 2, scope: !6779)
!6796 = !DILocation(line: 56, column: 8, scope: !6779)
!6797 = !DILocation(line: 59, column: 6, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6779, file: !3, line: 59, column: 6)
!6799 = !DILocation(line: 59, column: 15, scope: !6798)
!6800 = !DILocation(line: 59, column: 12, scope: !6798)
!6801 = !DILocation(line: 59, column: 6, scope: !6779)
!6802 = !DILocation(line: 60, column: 3, scope: !6798)
!6803 = !DILocation(line: 62, column: 2, scope: !6779)
!6804 = !DILocation(line: 63, column: 14, scope: !6790)
!6805 = !DILocation(line: 63, column: 12, scope: !6790)
!6806 = !DILocation(line: 63, column: 7, scope: !6790)
!6807 = !DILocation(line: 63, column: 21, scope: !6789)
!6808 = !DILocation(line: 63, column: 28, scope: !6789)
!6809 = !DILocation(line: 63, column: 26, scope: !6789)
!6810 = !DILocation(line: 63, column: 2, scope: !6790)
!6811 = !DILocation(line: 64, column: 3, scope: !6788)
!6812 = !DILocation(line: 64, column: 29, scope: !6788)
!6813 = !DILocation(line: 64, column: 53, scope: !6788)
!6814 = !DILocation(line: 64, column: 52, scope: !6788)
!6815 = !DILocation(line: 64, column: 38, scope: !6788)
!6816 = !DILocation(line: 65, column: 7, scope: !6817)
!6817 = distinct !DILexicalBlock(scope: !6788, file: !3, line: 65, column: 7)
!6818 = !DILocation(line: 65, column: 7, scope: !6788)
!6819 = !DILocation(line: 66, column: 16, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6821, file: !3, line: 66, column: 8)
!6821 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 65, column: 15)
!6822 = !DILocation(line: 66, column: 9, scope: !6820)
!6823 = !DILocation(line: 66, column: 8, scope: !6821)
!6824 = !DILocation(line: 67, column: 13, scope: !6820)
!6825 = !DILocation(line: 67, column: 21, scope: !6820)
!6826 = !DILocation(line: 67, column: 6, scope: !6820)
!6827 = !DILocation(line: 67, column: 11, scope: !6820)
!6828 = !DILocation(line: 67, column: 5, scope: !6820)
!6829 = !DILocation(line: 68, column: 4, scope: !6821)
!6830 = !DILocation(line: 71, column: 7, scope: !6788)
!6831 = !DILocation(line: 72, column: 12, scope: !6788)
!6832 = !DILocation(line: 72, column: 10, scope: !6788)
!6833 = !DILocation(line: 73, column: 7, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6788, file: !3, line: 73, column: 7)
!6835 = !DILocation(line: 73, column: 7, scope: !6788)
!6836 = !DILocation(line: 74, column: 26, scope: !6837)
!6837 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 73, column: 15)
!6838 = !DILocation(line: 74, column: 25, scope: !6837)
!6839 = !DILocation(line: 74, column: 18, scope: !6837)
!6840 = !DILocation(line: 74, column: 32, scope: !6837)
!6841 = !DILocation(line: 74, column: 10, scope: !6837)
!6842 = !DILocation(line: 74, column: 8, scope: !6837)
!6843 = !DILocation(line: 75, column: 8, scope: !6844)
!6844 = distinct !DILexicalBlock(scope: !6837, file: !3, line: 75, column: 8)
!6845 = !DILocation(line: 75, column: 8, scope: !6837)
!6846 = !DILocation(line: 76, column: 20, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6844, file: !3, line: 75, column: 13)
!6848 = !DILocation(line: 76, column: 28, scope: !6847)
!6849 = !DILocation(line: 76, column: 5, scope: !6847)
!6850 = !DILocation(line: 77, column: 12, scope: !6847)
!6851 = !DILocation(line: 77, column: 18, scope: !6847)
!6852 = !DILocation(line: 77, column: 17, scope: !6847)
!6853 = !DILocation(line: 77, column: 5, scope: !6847)
!6854 = !DILocation(line: 78, column: 19, scope: !6847)
!6855 = !DILocation(line: 78, column: 5, scope: !6847)
!6856 = !DILocation(line: 78, column: 13, scope: !6847)
!6857 = !DILocation(line: 78, column: 17, scope: !6847)
!6858 = !DILocation(line: 79, column: 4, scope: !6847)
!6859 = !DILocation(line: 80, column: 11, scope: !6844)
!6860 = !DILocation(line: 80, column: 5, scope: !6844)
!6861 = !DILocation(line: 81, column: 3, scope: !6837)
!6862 = !DILocation(line: 82, column: 11, scope: !6788)
!6863 = !DILocation(line: 82, column: 4, scope: !6788)
!6864 = !DILocation(line: 82, column: 9, scope: !6788)
!6865 = !DILocation(line: 84, column: 2, scope: !6789)
!6866 = !DILocation(line: 84, column: 2, scope: !6788)
!6867 = !DILocation(line: 63, column: 37, scope: !6789)
!6868 = !DILocation(line: 63, column: 2, scope: !6789)
!6869 = distinct !{!6869, !6810, !6870, !6411, !6412}
!6870 = !DILocation(line: 84, column: 2, scope: !6790)
!6871 = !DILocation(line: 85, column: 2, scope: !6779)
!6872 = !DILocation(line: 86, column: 1, scope: !6779)
!6873 = !DISubprogram(name: "trace_printk_init_buffers", scope: !6874, file: !6874, line: 48, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6874 = !DIFile(filename: "./include/linux/trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6fae1ddc1c17d5a2fc078243c0a44bec")
!6875 = distinct !DISubprogram(name: "lookup_format", scope: !3, file: !3, line: 38, type: !6876, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6878)
!6876 = !DISubroutineType(types: !6877)
!6877 = !{!317, !21}
!6878 = !{!6879, !6880, !6881, !6884}
!6879 = !DILocalVariable(name: "fmt", arg: 1, scope: !6875, file: !3, line: 38, type: !21)
!6880 = !DILocalVariable(name: "pos", scope: !6875, file: !3, line: 40, type: !317)
!6881 = !DILocalVariable(name: "__mptr", scope: !6882, file: !3, line: 45, type: !25)
!6882 = distinct !DILexicalBlock(scope: !6883, file: !3, line: 45, column: 2)
!6883 = distinct !DILexicalBlock(scope: !6875, file: !3, line: 45, column: 2)
!6884 = !DILocalVariable(name: "__mptr", scope: !6885, file: !3, line: 45, type: !25)
!6885 = distinct !DILexicalBlock(scope: !6886, file: !3, line: 45, column: 2)
!6886 = distinct !DILexicalBlock(scope: !6883, file: !3, line: 45, column: 2)
!6887 = !DILocation(line: 38, column: 67, scope: !6875)
!6888 = !DILocation(line: 40, column: 2, scope: !6875)
!6889 = !DILocation(line: 40, column: 28, scope: !6875)
!6890 = !DILocation(line: 42, column: 7, scope: !6891)
!6891 = distinct !DILexicalBlock(scope: !6875, file: !3, line: 42, column: 6)
!6892 = !DILocation(line: 42, column: 6, scope: !6875)
!6893 = !DILocation(line: 43, column: 10, scope: !6891)
!6894 = !DILocation(line: 43, column: 3, scope: !6891)
!6895 = !DILocation(line: 45, column: 2, scope: !6882)
!6896 = !DILocation(line: 45, column: 2, scope: !6883)
!6897 = !DILocation(line: 45, column: 2, scope: !6886)
!6898 = !DILocation(line: 46, column: 15, scope: !6899)
!6899 = distinct !DILexicalBlock(scope: !6900, file: !3, line: 46, column: 7)
!6900 = distinct !DILexicalBlock(scope: !6886, file: !3, line: 45, column: 58)
!6901 = !DILocation(line: 46, column: 20, scope: !6899)
!6902 = !DILocation(line: 46, column: 25, scope: !6899)
!6903 = !DILocation(line: 46, column: 8, scope: !6899)
!6904 = !DILocation(line: 46, column: 7, scope: !6900)
!6905 = !DILocation(line: 47, column: 11, scope: !6899)
!6906 = !DILocation(line: 47, column: 4, scope: !6899)
!6907 = !DILocation(line: 48, column: 2, scope: !6900)
!6908 = !DILocation(line: 45, column: 2, scope: !6885)
!6909 = distinct !{!6909, !6896, !6910, !6411, !6412}
!6910 = !DILocation(line: 48, column: 2, scope: !6883)
!6911 = !DILocation(line: 49, column: 2, scope: !6875)
!6912 = !DILocation(line: 50, column: 1, scope: !6875)
!6913 = distinct !DISubprogram(name: "IS_ERR", scope: !6914, file: !6914, line: 59, type: !6915, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6917)
!6914 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6915 = !DISubroutineType(types: !6916)
!6916 = !{!1403, !1332}
!6917 = !{!6918}
!6918 = !DILocalVariable(name: "ptr", arg: 1, scope: !6913, file: !6914, line: 59, type: !1332)
!6919 = !DILocation(line: 59, column: 60, scope: !6913)
!6920 = !DILocation(line: 61, column: 9, scope: !6913)
!6921 = !DILocation(line: 61, column: 2, scope: !6913)
!6922 = distinct !DISubprogram(name: "kmalloc", scope: !307, file: !307, line: 591, type: !6923, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6925)
!6923 = !DISubroutineType(types: !6924)
!6924 = !{!25, !40, !326}
!6925 = !{!6926, !6927, !6928}
!6926 = !DILocalVariable(name: "size", arg: 1, scope: !6922, file: !307, line: 591, type: !40)
!6927 = !DILocalVariable(name: "flags", arg: 2, scope: !6922, file: !307, line: 591, type: !326)
!6928 = !DILocalVariable(name: "index", scope: !6929, file: !307, line: 594, type: !7)
!6929 = distinct !DILexicalBlock(scope: !6930, file: !307, line: 593, column: 42)
!6930 = distinct !DILexicalBlock(scope: !6922, file: !307, line: 593, column: 6)
!6931 = !DILocation(line: 591, column: 61, scope: !6922)
!6932 = !DILocation(line: 591, column: 73, scope: !6922)
!6933 = !DILocation(line: 593, column: 27, scope: !6930)
!6934 = !DILocation(line: 593, column: 6, scope: !6930)
!6935 = !DILocation(line: 593, column: 33, scope: !6930)
!6936 = !DILocation(line: 593, column: 36, scope: !6930)
!6937 = !DILocation(line: 593, column: 6, scope: !6922)
!6938 = !DILocation(line: 594, column: 3, scope: !6929)
!6939 = !DILocation(line: 594, column: 16, scope: !6929)
!6940 = !DILocation(line: 596, column: 7, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !6929, file: !307, line: 596, column: 7)
!6942 = !DILocation(line: 596, column: 12, scope: !6941)
!6943 = !DILocation(line: 596, column: 7, scope: !6929)
!6944 = !DILocation(line: 597, column: 25, scope: !6941)
!6945 = !DILocation(line: 597, column: 31, scope: !6941)
!6946 = !DILocation(line: 597, column: 11, scope: !6941)
!6947 = !DILocation(line: 597, column: 4, scope: !6941)
!6948 = !DILocation(line: 599, column: 11, scope: !6929)
!6949 = !DILocation(line: 599, column: 9, scope: !6929)
!6950 = !DILocation(line: 601, column: 33, scope: !6929)
!6951 = !DILocation(line: 601, column: 40, scope: !6929)
!6952 = !DILocation(line: 601, column: 20, scope: !6929)
!6953 = !DILocation(line: 601, column: 5, scope: !6929)
!6954 = !DILocation(line: 601, column: 51, scope: !6929)
!6955 = !DILocation(line: 602, column: 5, scope: !6929)
!6956 = !DILocation(line: 602, column: 12, scope: !6929)
!6957 = !DILocation(line: 600, column: 10, scope: !6929)
!6958 = !DILocation(line: 600, column: 3, scope: !6929)
!6959 = !DILocation(line: 603, column: 2, scope: !6930)
!6960 = !DILocation(line: 604, column: 19, scope: !6922)
!6961 = !DILocation(line: 604, column: 25, scope: !6922)
!6962 = !DILocation(line: 604, column: 9, scope: !6922)
!6963 = !DILocation(line: 604, column: 2, scope: !6922)
!6964 = !DILocation(line: 605, column: 1, scope: !6922)
!6965 = !DISubprogram(name: "strlen", scope: !6966, file: !6966, line: 128, type: !6967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6966 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6967 = !DISubroutineType(types: !6968)
!6968 = !{!44, !21}
!6969 = distinct !DISubprogram(name: "list_add_tail", scope: !6708, file: !6708, line: 181, type: !6970, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6972)
!6970 = !DISubroutineType(types: !6971)
!6971 = !{null, !105, !105}
!6972 = !{!6973, !6974}
!6973 = !DILocalVariable(name: "new", arg: 1, scope: !6969, file: !6708, line: 181, type: !105)
!6974 = !DILocalVariable(name: "head", arg: 2, scope: !6969, file: !6708, line: 181, type: !105)
!6975 = !DILocation(line: 181, column: 52, scope: !6969)
!6976 = !DILocation(line: 181, column: 75, scope: !6969)
!6977 = !DILocation(line: 183, column: 13, scope: !6969)
!6978 = !DILocation(line: 183, column: 18, scope: !6969)
!6979 = !DILocation(line: 183, column: 24, scope: !6969)
!6980 = !DILocation(line: 183, column: 30, scope: !6969)
!6981 = !DILocation(line: 183, column: 2, scope: !6969)
!6982 = !DILocation(line: 184, column: 1, scope: !6969)
!6983 = !DISubprogram(name: "strcpy", scope: !6966, file: !6966, line: 63, type: !6984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6984 = !DISubroutineType(types: !6985)
!6985 = !{!406, !406, !21}
!6986 = !DISubprogram(name: "kfree", scope: !307, file: !307, line: 227, type: !6987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6987 = !DISubroutineType(types: !6988)
!6988 = !{null, !1332}
!6989 = distinct !DISubprogram(name: "ERR_PTR", scope: !6914, file: !6914, line: 39, type: !6990, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6992)
!6990 = !DISubroutineType(types: !6991)
!6991 = !{!25, !441}
!6992 = !{!6993}
!6993 = !DILocalVariable(name: "error", arg: 1, scope: !6989, file: !6914, line: 39, type: !441)
!6994 = !DILocation(line: 39, column: 48, scope: !6989)
!6995 = !DILocation(line: 41, column: 18, scope: !6989)
!6996 = !DILocation(line: 41, column: 9, scope: !6989)
!6997 = !DILocation(line: 41, column: 2, scope: !6989)
!6998 = !DISubprogram(name: "strcmp", scope: !6966, file: !6966, line: 88, type: !6999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6999 = !DISubroutineType(types: !7000)
!7000 = !{!27, !21, !21}
!7001 = !DISubprogram(name: "kmalloc_large", scope: !307, file: !307, line: 531, type: !6923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7002 = distinct !DISubprogram(name: "__kmalloc_index", scope: !307, file: !307, line: 444, type: !7003, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7005)
!7003 = !DISubroutineType(types: !7004)
!7004 = !{!7, !40, !1403}
!7005 = !{!7006, !7007}
!7006 = !DILocalVariable(name: "size", arg: 1, scope: !7002, file: !307, line: 444, type: !40)
!7007 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7002, file: !307, line: 445, type: !1403)
!7008 = !DILocation(line: 444, column: 60, scope: !7002)
!7009 = !DILocation(line: 445, column: 16, scope: !7002)
!7010 = !DILocation(line: 447, column: 7, scope: !7011)
!7011 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 447, column: 6)
!7012 = !DILocation(line: 447, column: 6, scope: !7002)
!7013 = !DILocation(line: 448, column: 3, scope: !7011)
!7014 = !DILocation(line: 450, column: 6, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 450, column: 6)
!7016 = !DILocation(line: 450, column: 11, scope: !7015)
!7017 = !DILocation(line: 450, column: 6, scope: !7002)
!7018 = !DILocation(line: 451, column: 3, scope: !7015)
!7019 = !DILocation(line: 453, column: 32, scope: !7020)
!7020 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 453, column: 6)
!7021 = !DILocation(line: 453, column: 37, scope: !7020)
!7022 = !DILocation(line: 453, column: 42, scope: !7020)
!7023 = !DILocation(line: 453, column: 45, scope: !7020)
!7024 = !DILocation(line: 453, column: 50, scope: !7020)
!7025 = !DILocation(line: 453, column: 6, scope: !7002)
!7026 = !DILocation(line: 454, column: 3, scope: !7020)
!7027 = !DILocation(line: 455, column: 32, scope: !7028)
!7028 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 455, column: 6)
!7029 = !DILocation(line: 455, column: 37, scope: !7028)
!7030 = !DILocation(line: 455, column: 43, scope: !7028)
!7031 = !DILocation(line: 455, column: 46, scope: !7028)
!7032 = !DILocation(line: 455, column: 51, scope: !7028)
!7033 = !DILocation(line: 455, column: 6, scope: !7002)
!7034 = !DILocation(line: 456, column: 3, scope: !7028)
!7035 = !DILocation(line: 457, column: 6, scope: !7036)
!7036 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 457, column: 6)
!7037 = !DILocation(line: 457, column: 11, scope: !7036)
!7038 = !DILocation(line: 457, column: 6, scope: !7002)
!7039 = !DILocation(line: 457, column: 26, scope: !7036)
!7040 = !DILocation(line: 458, column: 6, scope: !7041)
!7041 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 458, column: 6)
!7042 = !DILocation(line: 458, column: 11, scope: !7041)
!7043 = !DILocation(line: 458, column: 6, scope: !7002)
!7044 = !DILocation(line: 458, column: 26, scope: !7041)
!7045 = !DILocation(line: 459, column: 6, scope: !7046)
!7046 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 459, column: 6)
!7047 = !DILocation(line: 459, column: 11, scope: !7046)
!7048 = !DILocation(line: 459, column: 6, scope: !7002)
!7049 = !DILocation(line: 459, column: 26, scope: !7046)
!7050 = !DILocation(line: 460, column: 6, scope: !7051)
!7051 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 460, column: 6)
!7052 = !DILocation(line: 460, column: 11, scope: !7051)
!7053 = !DILocation(line: 460, column: 6, scope: !7002)
!7054 = !DILocation(line: 460, column: 26, scope: !7051)
!7055 = !DILocation(line: 461, column: 6, scope: !7056)
!7056 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 461, column: 6)
!7057 = !DILocation(line: 461, column: 11, scope: !7056)
!7058 = !DILocation(line: 461, column: 6, scope: !7002)
!7059 = !DILocation(line: 461, column: 26, scope: !7056)
!7060 = !DILocation(line: 462, column: 6, scope: !7061)
!7061 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 462, column: 6)
!7062 = !DILocation(line: 462, column: 11, scope: !7061)
!7063 = !DILocation(line: 462, column: 6, scope: !7002)
!7064 = !DILocation(line: 462, column: 26, scope: !7061)
!7065 = !DILocation(line: 463, column: 6, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 463, column: 6)
!7067 = !DILocation(line: 463, column: 11, scope: !7066)
!7068 = !DILocation(line: 463, column: 6, scope: !7002)
!7069 = !DILocation(line: 463, column: 26, scope: !7066)
!7070 = !DILocation(line: 464, column: 6, scope: !7071)
!7071 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 464, column: 6)
!7072 = !DILocation(line: 464, column: 11, scope: !7071)
!7073 = !DILocation(line: 464, column: 6, scope: !7002)
!7074 = !DILocation(line: 464, column: 26, scope: !7071)
!7075 = !DILocation(line: 465, column: 6, scope: !7076)
!7076 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 465, column: 6)
!7077 = !DILocation(line: 465, column: 11, scope: !7076)
!7078 = !DILocation(line: 465, column: 6, scope: !7002)
!7079 = !DILocation(line: 465, column: 26, scope: !7076)
!7080 = !DILocation(line: 466, column: 6, scope: !7081)
!7081 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 466, column: 6)
!7082 = !DILocation(line: 466, column: 11, scope: !7081)
!7083 = !DILocation(line: 466, column: 6, scope: !7002)
!7084 = !DILocation(line: 466, column: 26, scope: !7081)
!7085 = !DILocation(line: 467, column: 6, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 467, column: 6)
!7087 = !DILocation(line: 467, column: 11, scope: !7086)
!7088 = !DILocation(line: 467, column: 6, scope: !7002)
!7089 = !DILocation(line: 467, column: 26, scope: !7086)
!7090 = !DILocation(line: 468, column: 6, scope: !7091)
!7091 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 468, column: 6)
!7092 = !DILocation(line: 468, column: 11, scope: !7091)
!7093 = !DILocation(line: 468, column: 6, scope: !7002)
!7094 = !DILocation(line: 468, column: 26, scope: !7091)
!7095 = !DILocation(line: 469, column: 6, scope: !7096)
!7096 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 469, column: 6)
!7097 = !DILocation(line: 469, column: 11, scope: !7096)
!7098 = !DILocation(line: 469, column: 6, scope: !7002)
!7099 = !DILocation(line: 469, column: 26, scope: !7096)
!7100 = !DILocation(line: 470, column: 6, scope: !7101)
!7101 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 470, column: 6)
!7102 = !DILocation(line: 470, column: 11, scope: !7101)
!7103 = !DILocation(line: 470, column: 6, scope: !7002)
!7104 = !DILocation(line: 470, column: 26, scope: !7101)
!7105 = !DILocation(line: 471, column: 6, scope: !7106)
!7106 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 471, column: 6)
!7107 = !DILocation(line: 471, column: 11, scope: !7106)
!7108 = !DILocation(line: 471, column: 6, scope: !7002)
!7109 = !DILocation(line: 471, column: 26, scope: !7106)
!7110 = !DILocation(line: 472, column: 6, scope: !7111)
!7111 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 472, column: 6)
!7112 = !DILocation(line: 472, column: 11, scope: !7111)
!7113 = !DILocation(line: 472, column: 6, scope: !7002)
!7114 = !DILocation(line: 472, column: 26, scope: !7111)
!7115 = !DILocation(line: 473, column: 6, scope: !7116)
!7116 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 473, column: 6)
!7117 = !DILocation(line: 473, column: 11, scope: !7116)
!7118 = !DILocation(line: 473, column: 6, scope: !7002)
!7119 = !DILocation(line: 473, column: 26, scope: !7116)
!7120 = !DILocation(line: 474, column: 6, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 474, column: 6)
!7122 = !DILocation(line: 474, column: 11, scope: !7121)
!7123 = !DILocation(line: 474, column: 6, scope: !7002)
!7124 = !DILocation(line: 474, column: 27, scope: !7121)
!7125 = !DILocation(line: 475, column: 6, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 475, column: 6)
!7127 = !DILocation(line: 475, column: 11, scope: !7126)
!7128 = !DILocation(line: 475, column: 6, scope: !7002)
!7129 = !DILocation(line: 475, column: 32, scope: !7126)
!7130 = !DILocation(line: 477, column: 50, scope: !7131)
!7131 = distinct !DILexicalBlock(scope: !7002, file: !307, line: 477, column: 6)
!7132 = !DILocation(line: 477, column: 6, scope: !7002)
!7133 = !DILocation(line: 478, column: 3, scope: !7131)
!7134 = !DILocation(line: 478, column: 3, scope: !7135)
!7135 = distinct !DILexicalBlock(scope: !7136, file: !307, line: 478, column: 3)
!7136 = distinct !DILexicalBlock(scope: !7131, file: !307, line: 478, column: 3)
!7137 = !{i32 -2141694992}
!7138 = !DILocation(line: 478, column: 3, scope: !7136)
!7139 = !DILocation(line: 480, column: 3, scope: !7131)
!7140 = !DILocation(line: 480, column: 3, scope: !7141)
!7141 = distinct !DILexicalBlock(scope: !7131, file: !307, line: 480, column: 3)
!7142 = !DILocation(line: 480, column: 3, scope: !7143)
!7143 = distinct !DILexicalBlock(scope: !7141, file: !307, line: 480, column: 3)
!7144 = !DILocation(line: 480, column: 3, scope: !7145)
!7145 = distinct !DILexicalBlock(scope: !7141, file: !307, line: 480, column: 3)
!7146 = !{i64 2153272507, i64 2153272536, i64 2153272582, i64 2153272640, i64 2153272694, i64 2153272748, i64 2153272803, i64 2153272834}
!7147 = !DILocation(line: 483, column: 2, scope: !7002)
!7148 = !DILocation(line: 484, column: 1, scope: !7002)
!7149 = !DISubprogram(name: "kmalloc_trace", scope: !307, file: !307, line: 525, type: !7150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7150 = !DISubroutineType(types: !7151)
!7151 = !{!25, !3831, !326, !40}
!7152 = distinct !DISubprogram(name: "kmalloc_type", scope: !307, file: !307, line: 401, type: !7153, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7155)
!7153 = !DISubroutineType(types: !7154)
!7154 = !{!306, !326, !44}
!7155 = !{!7156, !7157}
!7156 = !DILocalVariable(name: "flags", arg: 1, scope: !7152, file: !307, line: 401, type: !326)
!7157 = !DILocalVariable(name: "caller", arg: 2, scope: !7152, file: !307, line: 401, type: !44)
!7158 = !DILocation(line: 401, column: 67, scope: !7152)
!7159 = !DILocation(line: 401, column: 88, scope: !7152)
!7160 = !DILocation(line: 407, column: 6, scope: !7161)
!7161 = distinct !DILexicalBlock(scope: !7152, file: !307, line: 407, column: 6)
!7162 = !DILocation(line: 407, column: 6, scope: !7152)
!7163 = !DILocation(line: 413, column: 3, scope: !7161)
!7164 = !DILocation(line: 423, column: 38, scope: !7165)
!7165 = distinct !DILexicalBlock(scope: !7152, file: !307, line: 423, column: 6)
!7166 = !DILocation(line: 423, column: 44, scope: !7165)
!7167 = !DILocation(line: 423, column: 6, scope: !7152)
!7168 = !DILocation(line: 424, column: 3, scope: !7165)
!7169 = !DILocation(line: 426, column: 3, scope: !7170)
!7170 = distinct !DILexicalBlock(scope: !7152, file: !307, line: 425, column: 6)
!7171 = !DILocation(line: 429, column: 1, scope: !7152)
!7172 = !DISubprogram(name: "__kmalloc", scope: !307, file: !307, line: 488, type: !6923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7173 = !DISubprogram(name: "__compiletime_assert_245", scope: !307, file: !307, line: 478, type: !2463, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7174 = distinct !DISubprogram(name: "__list_add", scope: !6708, file: !6708, line: 146, type: !7175, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7177)
!7175 = !DISubroutineType(types: !7176)
!7176 = !{null, !105, !105, !105}
!7177 = !{!7178, !7179, !7180}
!7178 = !DILocalVariable(name: "new", arg: 1, scope: !7174, file: !6708, line: 146, type: !105)
!7179 = !DILocalVariable(name: "prev", arg: 2, scope: !7174, file: !6708, line: 147, type: !105)
!7180 = !DILocalVariable(name: "next", arg: 3, scope: !7174, file: !6708, line: 148, type: !105)
!7181 = !DILocation(line: 146, column: 49, scope: !7174)
!7182 = !DILocation(line: 147, column: 28, scope: !7174)
!7183 = !DILocation(line: 148, column: 28, scope: !7174)
!7184 = !DILocation(line: 150, column: 24, scope: !7185)
!7185 = distinct !DILexicalBlock(scope: !7174, file: !6708, line: 150, column: 6)
!7186 = !DILocation(line: 150, column: 29, scope: !7185)
!7187 = !DILocation(line: 150, column: 35, scope: !7185)
!7188 = !DILocation(line: 150, column: 7, scope: !7185)
!7189 = !DILocation(line: 150, column: 6, scope: !7174)
!7190 = !DILocation(line: 151, column: 3, scope: !7185)
!7191 = !DILocation(line: 153, column: 15, scope: !7174)
!7192 = !DILocation(line: 153, column: 2, scope: !7174)
!7193 = !DILocation(line: 153, column: 8, scope: !7174)
!7194 = !DILocation(line: 153, column: 13, scope: !7174)
!7195 = !DILocation(line: 154, column: 14, scope: !7174)
!7196 = !DILocation(line: 154, column: 2, scope: !7174)
!7197 = !DILocation(line: 154, column: 7, scope: !7174)
!7198 = !DILocation(line: 154, column: 12, scope: !7174)
!7199 = !DILocation(line: 155, column: 14, scope: !7174)
!7200 = !DILocation(line: 155, column: 2, scope: !7174)
!7201 = !DILocation(line: 155, column: 7, scope: !7174)
!7202 = !DILocation(line: 155, column: 12, scope: !7174)
!7203 = !DILocation(line: 156, column: 2, scope: !7174)
!7204 = !DILocation(line: 156, column: 2, scope: !7205)
!7205 = distinct !DILexicalBlock(scope: !7174, file: !6708, line: 156, column: 2)
!7206 = !DILocation(line: 156, column: 2, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7205, file: !6708, line: 156, column: 2)
!7208 = !DILocation(line: 156, column: 2, scope: !7209)
!7209 = distinct !DILexicalBlock(scope: !7205, file: !6708, line: 156, column: 2)
!7210 = !DILocation(line: 157, column: 1, scope: !7174)
!7211 = distinct !DISubprogram(name: "__list_add_valid", scope: !6708, file: !6708, line: 128, type: !7212, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7214)
!7212 = !DISubroutineType(types: !7213)
!7213 = !{!1403, !105, !105, !105}
!7214 = !{!7215, !7216, !7217}
!7215 = !DILocalVariable(name: "new", arg: 1, scope: !7211, file: !6708, line: 128, type: !105)
!7216 = !DILocalVariable(name: "prev", arg: 2, scope: !7211, file: !6708, line: 129, type: !105)
!7217 = !DILocalVariable(name: "next", arg: 3, scope: !7211, file: !6708, line: 130, type: !105)
!7218 = !DILocation(line: 128, column: 55, scope: !7211)
!7219 = !DILocation(line: 129, column: 23, scope: !7211)
!7220 = !DILocation(line: 130, column: 23, scope: !7211)
!7221 = !DILocation(line: 132, column: 2, scope: !7211)
