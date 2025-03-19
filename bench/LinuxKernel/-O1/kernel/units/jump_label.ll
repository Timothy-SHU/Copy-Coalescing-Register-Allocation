; ModuleID = 'kernel/jump_label.c'
source_filename = "kernel/jump_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_static_key_count: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad static_key_count ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_static_key_fast_inc_not_disabled: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad static_key_fast_inc_not_disabled ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_static_key_slow_inc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad static_key_slow_inc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_static_key_enable_cpuslocked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad static_key_enable_cpuslocked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_static_key_enable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad static_key_enable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_static_key_disable_cpuslocked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad static_key_disable_cpuslocked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_static_key_disable: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad static_key_disable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_jump_label_update_timeout: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad jump_label_update_timeout ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_static_key_slow_dec: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad static_key_slow_dec ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___static_key_slow_dec_deferred: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __static_key_slow_dec_deferred ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___static_key_deferred_flush: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __static_key_deferred_flush ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_jump_label_rate_limit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad jump_label_rate_limit ; .previous"
module asm ".section\09\22.initcallearly.init..kmod_jump_label__247_808_jump_label_init_module\22, \22a\22\09\09"
module asm "__initcall__kmod_jump_label__247_808_jump_label_init_moduleearly:\09\09\09"
module asm ".long\09__initstub__kmod_jump_label__247_808_jump_label_init_moduleearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.jump_entry = type { i32, i32, i64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.pcpu_hot = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%union.anon.1 = type { i64 }
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
%struct.static_key_deferred = type { %struct.static_key, i64, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.static_key_mod = type { ptr, ptr, ptr }

@jump_label_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @jump_label_mutex, i64 16), ptr getelementptr (i8, ptr @jump_label_mutex, i64 16) } }, align 8, !dbg !0
@__UNIQUE_ID___addressable_static_key_count229 = internal global ptr @static_key_count, section ".discard.addressable", align 8, !dbg !1170
@static_key_initialized = external dso_local global i8, align 1
@.str = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1, !dbg !1172
@__func__.static_key_fast_inc_not_disabled = private unnamed_addr constant [33 x i8] c"static_key_fast_inc_not_disabled\00", align 1, !dbg !1177
@.str.1 = private unnamed_addr constant [20 x i8] c"kernel/jump_label.c\00", align 1, !dbg !1182
@__UNIQUE_ID___addressable_static_key_fast_inc_not_disabled230 = internal global ptr @static_key_fast_inc_not_disabled, section ".discard.addressable", align 8, !dbg !1187
@__UNIQUE_ID___addressable_static_key_slow_inc232 = internal global ptr @static_key_slow_inc, section ".discard.addressable", align 8, !dbg !1189
@__func__.static_key_enable_cpuslocked = private unnamed_addr constant [29 x i8] c"static_key_enable_cpuslocked\00", align 1, !dbg !1191
@__UNIQUE_ID___addressable_static_key_enable_cpuslocked233 = internal global ptr @static_key_enable_cpuslocked, section ".discard.addressable", align 8, !dbg !1196
@__UNIQUE_ID___addressable_static_key_enable234 = internal global ptr @static_key_enable, section ".discard.addressable", align 8, !dbg !1198
@__func__.static_key_disable_cpuslocked = private unnamed_addr constant [30 x i8] c"static_key_disable_cpuslocked\00", align 1, !dbg !1200
@__UNIQUE_ID___addressable_static_key_disable_cpuslocked235 = internal global ptr @static_key_disable_cpuslocked, section ".discard.addressable", align 8, !dbg !1205
@__UNIQUE_ID___addressable_static_key_disable236 = internal global ptr @static_key_disable, section ".discard.addressable", align 8, !dbg !1207
@__UNIQUE_ID___addressable_jump_label_update_timeout238 = internal global ptr @jump_label_update_timeout, section ".discard.addressable", align 8, !dbg !1209
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1, !dbg !1211
@__UNIQUE_ID___addressable_static_key_slow_dec239 = internal global ptr @static_key_slow_dec, section ".discard.addressable", align 8, !dbg !1214
@__func__.static_key_slow_dec_cpuslocked = private unnamed_addr constant [31 x i8] c"static_key_slow_dec_cpuslocked\00", align 1, !dbg !1216
@__func__.__static_key_slow_dec_deferred = private unnamed_addr constant [31 x i8] c"__static_key_slow_dec_deferred\00", align 1, !dbg !1221
@__UNIQUE_ID___addressable___static_key_slow_dec_deferred240 = internal global ptr @__static_key_slow_dec_deferred, section ".discard.addressable", align 8, !dbg !1223
@__func__.__static_key_deferred_flush = private unnamed_addr constant [28 x i8] c"__static_key_deferred_flush\00", align 1, !dbg !1225
@__UNIQUE_ID___addressable___static_key_deferred_flush241 = internal global ptr @__static_key_deferred_flush, section ".discard.addressable", align 8, !dbg !1230
@__func__.jump_label_rate_limit = private unnamed_addr constant [22 x i8] c"jump_label_rate_limit\00", align 1, !dbg !1232
@jump_label_rate_limit.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1237
@__UNIQUE_ID___addressable_jump_label_rate_limit242 = internal global ptr @jump_label_rate_limit, section ".discard.addressable", align 8, !dbg !1252
@__start___jump_table = external dso_local global [0 x %struct.jump_entry], align 8
@__stop___jump_table = external dso_local global [0 x %struct.jump_entry], align 8
@__UNIQUE_ID___addressable___initstub__kmod_jump_label__247_808_jump_label_init_moduleearly248 = internal global ptr @__initstub__kmod_jump_label__247_808_jump_label_init_moduleearly, section ".discard.addressable", align 8, !dbg !1254
@system_state = external dso_local global i32, align 4
@system_wq = external dso_local global ptr, align 8
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@jump_label_module_nb = internal global %struct.notifier_block { ptr @jump_label_module_notify, ptr null, i32 1 }, align 8, !dbg !1256
@.str.2 = private unnamed_addr constant [62 x i8] c"Failed to allocate memory: jump_label may not work properly.\0A\00", align 1, !dbg !1269
@jump_label_add_module.__UNIQUE_ID___addressable___SCK__preempt_schedule246 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1274
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1290
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@jump_label_can_update.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !1295
@.str.4 = private unnamed_addr constant [30 x i8] c"can't patch jump_label at %pS\00", align 1, !dbg !1317
@__jump_label_mod_text_reserved.__UNIQUE_ID___addressable___SCK__preempt_schedule245 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1320
@jump_label_update.__UNIQUE_ID___addressable___SCK__preempt_schedule249 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1335
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID___addressable_static_key_count229, ptr @__UNIQUE_ID___addressable_static_key_fast_inc_not_disabled230, ptr @__UNIQUE_ID___addressable_static_key_slow_inc232, ptr @__UNIQUE_ID___addressable_static_key_enable_cpuslocked233, ptr @__UNIQUE_ID___addressable_static_key_enable234, ptr @__UNIQUE_ID___addressable_static_key_disable_cpuslocked235, ptr @__UNIQUE_ID___addressable_static_key_disable236, ptr @__UNIQUE_ID___addressable_jump_label_update_timeout238, ptr @__UNIQUE_ID___addressable_static_key_slow_dec239, ptr @__UNIQUE_ID___addressable___static_key_slow_dec_deferred240, ptr @__UNIQUE_ID___addressable___static_key_deferred_flush241, ptr @__UNIQUE_ID___addressable_jump_label_rate_limit242, ptr @__UNIQUE_ID___addressable___initstub__kmod_jump_label__247_808_jump_label_init_moduleearly248, ptr @jump_label_add_module.__UNIQUE_ID___addressable___SCK__preempt_schedule246, ptr @__jump_label_mod_text_reserved.__UNIQUE_ID___addressable___SCK__preempt_schedule245, ptr @jump_label_update.__UNIQUE_ID___addressable___SCK__preempt_schedule249], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jump_label_lock() #0 align 16 !dbg !1356 {
entry:
  call void @mutex_lock(ptr noundef @jump_label_mutex) #18, !dbg !1357
  ret void, !dbg !1358
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1359 dso_local void @mutex_lock(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jump_label_unlock() #0 align 16 !dbg !1363 {
entry:
  call void @mutex_unlock(ptr noundef @jump_label_mutex) #18, !dbg !1364
  ret void, !dbg !1365
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1366 dso_local void @mutex_unlock(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @static_key_count(ptr noundef %key) #0 align 16 !dbg !1367 {
entry:
  %key.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1371, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #19, !dbg !1374
  call void @llvm.dbg.declare(metadata ptr %n, metadata !1372, metadata !DIExpression()), !dbg !1375
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1376
  %enabled = getelementptr inbounds %struct.static_key, ptr %0, i32 0, i32 0, !dbg !1377
  %call = call i32 @atomic_read(ptr noundef %enabled) #18, !dbg !1378
  store i32 %call, ptr %n, align 4, !dbg !1375
  %1 = load i32, ptr %n, align 4, !dbg !1379
  %cmp = icmp sge i32 %1, 0, !dbg !1380
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1379

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %n, align 4, !dbg !1381
  br label %cond.end, !dbg !1379

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1379

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 1, %cond.false ], !dbg !1379
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #19, !dbg !1382
  ret i32 %cond, !dbg !1383
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !1384 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1391, metadata !DIExpression()), !dbg !1392
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1393
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #18, !dbg !1394
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1395
  %call = call i32 @raw_atomic_read(ptr noundef %1) #18, !dbg !1396
  ret i32 %call, !dbg !1397
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @static_key_fast_inc_not_disabled(ptr noundef %key) #0 align 16 !dbg !1398 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1402, metadata !DIExpression()), !dbg !1410
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #19, !dbg !1411
  call void @llvm.dbg.declare(metadata ptr %v, metadata !1403, metadata !DIExpression()), !dbg !1412
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1413
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1404, metadata !DIExpression()), !dbg !1413
  %0 = load i8, ptr @static_key_initialized, align 1, !dbg !1413, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !1413
  %lnot = xor i1 %tobool, true, !dbg !1413
  %lnot1 = xor i1 %lnot, true, !dbg !1413
  %lnot2 = xor i1 %lnot1, true, !dbg !1413
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1413
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1413
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1415
  %tobool3 = icmp ne i32 %1, 0, !dbg !1415
  %lnot4 = xor i1 %tobool3, true, !dbg !1415
  %lnot6 = xor i1 %lnot4, true, !dbg !1415
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1415
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1415
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1415
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1415
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1413

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1415

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1416

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1417

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1417

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %key.addr, align 8, !dbg !1416
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef @__func__.static_key_fast_inc_not_disabled, ptr noundef %2) #18, !dbg !1416
  br label %do.body10, !dbg !1416

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1419
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1406, metadata !DIExpression()), !dbg !1419
  store i32 2313, ptr %__flags, align 4, !dbg !1419
  br label %do.body11, !dbg !1419

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !1420

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1420

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1419

do.body14:                                        ; preds = %do.end13
  %3 = load i32, ptr %__flags, align 4, !dbg !1422
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 131, i32 %3, i64 12) #19, !dbg !1422, !srcloc !1424
  br label %do.cond15, !dbg !1422

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1422

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !1419

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !1425

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1425

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1416
  br label %do.cond20, !dbg !1419

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1419

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !1416

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !1427

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1427

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !1416

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !1416

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !1416

if.end:                                           ; preds = %do.end26, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1413
  %tobool27 = icmp ne i32 %4, 0, !dbg !1413
  %lnot28 = xor i1 %tobool27, true, !dbg !1413
  %lnot30 = xor i1 %lnot28, true, !dbg !1413
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !1413
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !1413
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !1413
  store i64 %expval33, ptr %tmp, align 8, !dbg !1415
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1429
  %5 = load i64, ptr %tmp, align 8, !dbg !1413
  %6 = load ptr, ptr %key.addr, align 8, !dbg !1430
  %enabled = getelementptr inbounds %struct.static_key, ptr %6, i32 0, i32 0, !dbg !1431
  %call = call i32 @atomic_read(ptr noundef %enabled) #18, !dbg !1432
  store i32 %call, ptr %v, align 4, !dbg !1433
  br label %do.body34, !dbg !1434

do.body34:                                        ; preds = %do.cond40, %if.end
  %7 = load i32, ptr %v, align 4, !dbg !1435
  %cmp = icmp sle i32 %7, 0, !dbg !1438
  br i1 %cmp, label %if.then38, label %lor.lhs.false, !dbg !1439

lor.lhs.false:                                    ; preds = %do.body34
  %8 = load i32, ptr %v, align 4, !dbg !1440
  %add = add i32 %8, 1, !dbg !1441
  %cmp36 = icmp slt i32 %add, 0, !dbg !1442
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1443

if.then38:                                        ; preds = %lor.lhs.false, %do.body34
  store i1 false, ptr %retval, align 1, !dbg !1444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1444

if.end39:                                         ; preds = %lor.lhs.false
  br label %do.cond40, !dbg !1445

do.cond40:                                        ; preds = %if.end39
  %9 = load ptr, ptr %key.addr, align 8, !dbg !1446
  %enabled41 = getelementptr inbounds %struct.static_key, ptr %9, i32 0, i32 0, !dbg !1446
  %10 = load i32, ptr %v, align 4, !dbg !1446
  %add42 = add i32 %10, 1, !dbg !1446
  %call43 = call zeroext i1 @atomic_try_cmpxchg(ptr noundef %enabled41, ptr noundef %v, i32 noundef %add42) #18, !dbg !1446
  %lnot44 = xor i1 %call43, true, !dbg !1446
  %lnot46 = xor i1 %lnot44, true, !dbg !1446
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !1446
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !1446
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 1), !dbg !1446
  %tobool50 = icmp ne i64 %expval49, 0, !dbg !1447
  %lnot51 = xor i1 %tobool50, true, !dbg !1447
  br i1 %lnot51, label %do.body34, label %do.end53, !dbg !1445, !llvm.loop !1448

do.end53:                                         ; preds = %do.cond40
  store i1 true, ptr %retval, align 1, !dbg !1452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1452

cleanup:                                          ; preds = %do.end53, %if.then38
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #19, !dbg !1453
  %11 = load i1, ptr %retval, align 1, !dbg !1453
  ret i1 %11, !dbg !1453
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1454 dso_local void @__warn_printk(ptr noundef, ...) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1457 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1462, metadata !DIExpression()), !dbg !1465
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1463, metadata !DIExpression()), !dbg !1466
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1464, metadata !DIExpression()), !dbg !1467
  br label %do.body, !dbg !1468

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1469

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1471
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !1472
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1473
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #18, !dbg !1474
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1475
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1476
  %4 = load i32, ptr %new.addr, align 4, !dbg !1477
  %call = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %2, ptr noundef %3, i32 noundef %4) #18, !dbg !1478
  ret i1 %call, !dbg !1479
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @static_key_slow_inc_cpuslocked(ptr noundef %key) #0 align 16 !dbg !1480 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %__UNIQUE_ID_guard231 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1482, metadata !DIExpression()), !dbg !1493
  call void @lockdep_assert_cpus_held() #18, !dbg !1494
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1495
  %call = call zeroext i1 @static_key_fast_inc_not_disabled(ptr noundef %0) #18, !dbg !1497
  br i1 %call, label %if.then, label %if.end, !dbg !1498

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !1499
  br label %return, !dbg !1499

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_guard231) #19, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_guard231, metadata !1483, metadata !DIExpression()), !dbg !1500
  %call1 = call ptr @class_mutex_constructor(ptr noundef @jump_label_mutex) #18, !dbg !1500
  store ptr %call1, ptr %__UNIQUE_ID_guard231, align 8, !dbg !1500
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1501
  %enabled = getelementptr inbounds %struct.static_key, ptr %1, i32 0, i32 0, !dbg !1502
  %call2 = call i32 @atomic_cmpxchg(ptr noundef %enabled, i32 noundef 0, i32 noundef -1) #18, !dbg !1503
  %tobool = icmp ne i32 %call2, 0, !dbg !1503
  br i1 %tobool, label %if.else, label %if.then3, !dbg !1504

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %key.addr, align 8, !dbg !1505
  call void @jump_label_update(ptr noundef %2) #18, !dbg !1507
  %3 = load ptr, ptr %key.addr, align 8, !dbg !1508
  %enabled4 = getelementptr inbounds %struct.static_key, ptr %3, i32 0, i32 0, !dbg !1509
  call void @atomic_set_release(ptr noundef %enabled4, i32 noundef 1) #18, !dbg !1510
  br label %if.end35, !dbg !1511

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1512
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1485, metadata !DIExpression()), !dbg !1512
  %4 = load ptr, ptr %key.addr, align 8, !dbg !1512
  %call5 = call zeroext i1 @static_key_fast_inc_not_disabled(ptr noundef %4) #18, !dbg !1512
  %lnot = xor i1 %call5, true, !dbg !1512
  %lnot6 = xor i1 %lnot, true, !dbg !1512
  %lnot7 = xor i1 %lnot6, true, !dbg !1512
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !1512
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1512
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1513
  %tobool8 = icmp ne i32 %5, 0, !dbg !1513
  %lnot9 = xor i1 %tobool8, true, !dbg !1513
  %lnot11 = xor i1 %lnot9, true, !dbg !1513
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1513
  %conv = sext i32 %lnot.ext12 to i64, !dbg !1513
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1513
  %tobool13 = icmp ne i64 %expval, 0, !dbg !1513
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !1512

if.then14:                                        ; preds = %if.else
  br label %do.body, !dbg !1513

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1514
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1490, metadata !DIExpression()), !dbg !1514
  store i32 2307, ptr %__flags, align 4, !dbg !1514
  br label %do.body15, !dbg !1514

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !1515

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !1515

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !1514

do.body16:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !1517
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 177, i32 %6, i64 12) #19, !dbg !1517, !srcloc !1519
  br label %do.cond17, !dbg !1517

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1517

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !1514

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !1520

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !1520

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1513
  br label %do.cond22, !dbg !1514

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !1514

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !1514

if.end24:                                         ; preds = %do.end23, %if.else
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !1512
  %tobool25 = icmp ne i32 %7, 0, !dbg !1512
  %lnot26 = xor i1 %tobool25, true, !dbg !1512
  %lnot28 = xor i1 %lnot26, true, !dbg !1512
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !1512
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !1512
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !1512
  store i64 %expval31, ptr %tmp, align 8, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1522
  %8 = load i64, ptr %tmp, align 8, !dbg !1512
  %tobool32 = icmp ne i64 %8, 0, !dbg !1522
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1523

if.then33:                                        ; preds = %if.end24
  store i1 false, ptr %retval, align 1, !dbg !1524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1524

if.end34:                                         ; preds = %if.end24
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then3
  store i1 true, ptr %retval, align 1, !dbg !1525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1525

cleanup:                                          ; preds = %if.end35, %if.then33
  call void @class_mutex_destructor(ptr noundef %__UNIQUE_ID_guard231) #18, !dbg !1526
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_guard231) #19, !dbg !1526
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %9 = load i1, ptr %retval, align 1, !dbg !1526
  ret i1 %9, !dbg !1526
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1527 dso_local void @lockdep_assert_cpus_held() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @class_mutex_constructor(ptr noundef %_T) #6 align 16 !dbg !1529 {
entry:
  %_T.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %_T, ptr %_T.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_T.addr, metadata !1533, metadata !DIExpression()), !dbg !1535
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #19, !dbg !1535
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1534, metadata !DIExpression()), !dbg !1535
  %0 = load ptr, ptr %_T.addr, align 8, !dbg !1536
  call void @mutex_lock(ptr noundef %0) #18, !dbg !1536
  %1 = load ptr, ptr %_T.addr, align 8, !dbg !1536
  store ptr %1, ptr %tmp, align 8, !dbg !1536
  %2 = load ptr, ptr %tmp, align 8, !dbg !1536
  store ptr %2, ptr %t, align 8, !dbg !1535
  %3 = load ptr, ptr %t, align 8, !dbg !1535
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #19, !dbg !1535
  ret ptr %3, !dbg !1535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @class_mutex_destructor(ptr noundef %p) #6 align 16 !dbg !1538 {
entry:
  %p.addr = alloca ptr, align 8
  %_T = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1543, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 8, ptr %_T) #19, !dbg !1545
  call void @llvm.dbg.declare(metadata ptr %_T, metadata !1544, metadata !DIExpression()), !dbg !1545
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1545
  %1 = load ptr, ptr %0, align 8, !dbg !1545
  store ptr %1, ptr %_T, align 8, !dbg !1545
  %2 = load ptr, ptr %_T, align 8, !dbg !1546
  %tobool = icmp ne ptr %2, null, !dbg !1546
  br i1 %tobool, label %if.then, label %if.end, !dbg !1545

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %_T, align 8, !dbg !1548
  call void @mutex_unlock(ptr noundef %3) #18, !dbg !1548
  br label %if.end, !dbg !1548

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %_T) #19, !dbg !1545
  ret void, !dbg !1545
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !1550 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1554, metadata !DIExpression()), !dbg !1557
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1555, metadata !DIExpression()), !dbg !1558
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1556, metadata !DIExpression()), !dbg !1559
  br label %do.body, !dbg !1560

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1561

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1563
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !1564
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1565
  %2 = load i32, ptr %old.addr, align 4, !dbg !1566
  %3 = load i32, ptr %new.addr, align 4, !dbg !1567
  %call = call i32 @raw_atomic_cmpxchg(ptr noundef %1, i32 noundef %2, i32 noundef %3) #18, !dbg !1568
  ret i32 %call, !dbg !1569
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jump_label_update(ptr noundef %key) #0 align 16 !dbg !1337 {
entry:
  %key.addr = alloca ptr, align 8
  %stop = alloca ptr, align 8
  %init = alloca i8, align 1
  %entry1 = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1341, metadata !DIExpression()), !dbg !1570
  call void @llvm.lifetime.start.p0(i64 8, ptr %stop) #19, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %stop, metadata !1342, metadata !DIExpression()), !dbg !1572
  store ptr @__stop___jump_table, ptr %stop, align 8, !dbg !1572
  call void @llvm.lifetime.start.p0(i64 1, ptr %init) #19, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %init, metadata !1343, metadata !DIExpression()), !dbg !1574
  %0 = load i32, ptr @system_state, align 4, !dbg !1575
  %cmp = icmp ult i32 %0, 3, !dbg !1576
  %frombool = zext i1 %cmp to i8, !dbg !1574
  store i8 %frombool, ptr %init, align 1, !dbg !1574
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #19, !dbg !1577
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1344, metadata !DIExpression()), !dbg !1578
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #19, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !1345, metadata !DIExpression()), !dbg !1580
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1581
  %call = call zeroext i1 @static_key_linked(ptr noundef %1) #18, !dbg !1583
  br i1 %call, label %if.then, label %if.end, !dbg !1584

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %key.addr, align 8, !dbg !1585
  call void @__jump_label_mod_update(ptr noundef %2) #18, !dbg !1587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1588

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1589

do.body:                                          ; preds = %if.end
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !1590
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !1590, !srcloc !1592
  br label %do.cond, !dbg !1590

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1590

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %key.addr, align 8, !dbg !1593
  %4 = ptrtoint ptr %3 to i64, !dbg !1594
  %call2 = call ptr @__module_address(i64 noundef %4) #18, !dbg !1595
  store ptr %call2, ptr %mod, align 8, !dbg !1596
  %5 = load ptr, ptr %mod, align 8, !dbg !1597
  %tobool = icmp ne ptr %5, null, !dbg !1597
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !1599

if.then3:                                         ; preds = %do.end
  %6 = load ptr, ptr %mod, align 8, !dbg !1600
  %jump_entries = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 41, !dbg !1602
  %7 = load ptr, ptr %jump_entries, align 16, !dbg !1602
  %8 = load ptr, ptr %mod, align 8, !dbg !1603
  %num_jump_entries = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 42, !dbg !1604
  %9 = load i32, ptr %num_jump_entries, align 8, !dbg !1604
  %idx.ext = zext i32 %9 to i64, !dbg !1605
  %add.ptr = getelementptr %struct.jump_entry, ptr %7, i64 %idx.ext, !dbg !1605
  store ptr %add.ptr, ptr %stop, align 8, !dbg !1606
  %10 = load ptr, ptr %mod, align 8, !dbg !1607
  %state = getelementptr inbounds %struct.module, ptr %10, i32 0, i32 0, !dbg !1608
  %11 = load i32, ptr %state, align 64, !dbg !1608
  %cmp4 = icmp eq i32 %11, 1, !dbg !1609
  %frombool5 = zext i1 %cmp4 to i8, !dbg !1610
  store i8 %frombool5, ptr %init, align 1, !dbg !1610
  br label %if.end6, !dbg !1611

if.end6:                                          ; preds = %if.then3, %do.end
  br label %do.body7, !dbg !1612

do.body7:                                         ; preds = %if.end6
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !1613, !srcloc !1615
  %call8 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !1616
  %lnot = xor i1 %call8, true, !dbg !1616
  %lnot9 = xor i1 %lnot, true, !dbg !1616
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !1616
  %conv = sext i32 %lnot.ext to i64, !dbg !1616
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1616
  %tobool10 = icmp ne i64 %expval, 0, !dbg !1616
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !1613

if.then11:                                        ; preds = %do.body7
  br label %do.body12, !dbg !1616

do.body12:                                        ; preds = %if.then11
  %12 = call i64 @llvm.read_register.i64(metadata !1346), !dbg !1618
  %13 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %12) #19, !dbg !1618, !srcloc !1620
  call void @llvm.write_register.i64(metadata !1346, i64 %13), !dbg !1618
  br label %do.cond13, !dbg !1618

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1618

do.end14:                                         ; preds = %do.cond13
  br label %if.end15, !dbg !1618

if.end15:                                         ; preds = %do.end14, %do.body7
  br label %do.cond16, !dbg !1613

do.cond16:                                        ; preds = %if.end15
  br label %do.end17, !dbg !1613

do.end17:                                         ; preds = %do.cond16
  %14 = load ptr, ptr %key.addr, align 8, !dbg !1621
  %call18 = call ptr @static_key_entries(ptr noundef %14) #18, !dbg !1622
  store ptr %call18, ptr %entry1, align 8, !dbg !1623
  %15 = load ptr, ptr %entry1, align 8, !dbg !1624
  %tobool19 = icmp ne ptr %15, null, !dbg !1624
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !1626

if.then20:                                        ; preds = %do.end17
  %16 = load ptr, ptr %key.addr, align 8, !dbg !1627
  %17 = load ptr, ptr %entry1, align 8, !dbg !1628
  %18 = load ptr, ptr %stop, align 8, !dbg !1629
  %19 = load i8, ptr %init, align 1, !dbg !1630, !range !1414, !noundef !359
  %tobool21 = trunc i8 %19 to i1, !dbg !1630
  call void @__jump_label_update(ptr noundef %16, ptr noundef %17, ptr noundef %18, i1 noundef zeroext %tobool21) #18, !dbg !1631
  br label %if.end22, !dbg !1631

if.end22:                                         ; preds = %if.then20, %do.end17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1632
  br label %cleanup, !dbg !1632

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #19, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #19, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 1, ptr %init) #19, !dbg !1632
  call void @llvm.lifetime.end.p0(i64 8, ptr %stop) #19, !dbg !1632
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1632

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set_release(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !1633 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1637, metadata !DIExpression()), !dbg !1639
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1638, metadata !DIExpression()), !dbg !1640
  br label %do.body, !dbg !1641

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1642

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1644
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !1645
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1646
  %2 = load i32, ptr %i.addr, align 4, !dbg !1647
  call void @raw_atomic_set_release(ptr noundef %1, i32 noundef %2) #18, !dbg !1648
  ret void, !dbg !1649
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @static_key_slow_inc(ptr noundef %key) #0 align 16 !dbg !1650 {
entry:
  %key.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1652, metadata !DIExpression()), !dbg !1654
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #19, !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1653, metadata !DIExpression()), !dbg !1656
  call void @cpus_read_lock() #18, !dbg !1657
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1658
  %call = call zeroext i1 @static_key_slow_inc_cpuslocked(ptr noundef %0) #18, !dbg !1659
  %frombool = zext i1 %call to i8, !dbg !1660
  store i8 %frombool, ptr %ret, align 1, !dbg !1660
  call void @cpus_read_unlock() #18, !dbg !1661
  %1 = load i8, ptr %ret, align 1, !dbg !1662, !range !1414, !noundef !359
  %tobool = trunc i8 %1 to i1, !dbg !1662
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #19, !dbg !1663
  ret i1 %tobool, !dbg !1664
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1665 dso_local void @cpus_read_lock() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1666 dso_local void @cpus_read_unlock() #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @static_key_enable_cpuslocked(ptr noundef %key) #0 align 16 !dbg !1667 {
entry:
  %key.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on36 = alloca i32, align 4
  %__flags55 = alloca i32, align 4
  %tmp68 = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1669, metadata !DIExpression()), !dbg !1683
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1684
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1670, metadata !DIExpression()), !dbg !1684
  %0 = load i8, ptr @static_key_initialized, align 1, !dbg !1684, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !1684
  %lnot = xor i1 %tobool, true, !dbg !1684
  %lnot1 = xor i1 %lnot, true, !dbg !1684
  %lnot2 = xor i1 %lnot1, true, !dbg !1684
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1684
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1684
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1685
  %tobool3 = icmp ne i32 %1, 0, !dbg !1685
  %lnot4 = xor i1 %tobool3, true, !dbg !1685
  %lnot6 = xor i1 %lnot4, true, !dbg !1685
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1685
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1685
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1685
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1685
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1684

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1685

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1686

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1687

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1687

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %key.addr, align 8, !dbg !1686
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef @__func__.static_key_enable_cpuslocked, ptr noundef %2) #18, !dbg !1686
  br label %do.body10, !dbg !1686

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1689
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1672, metadata !DIExpression()), !dbg !1689
  store i32 2313, ptr %__flags, align 4, !dbg !1689
  br label %do.body11, !dbg !1689

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !1690

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1690

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1689

do.body14:                                        ; preds = %do.end13
  %3 = load i32, ptr %__flags, align 4, !dbg !1692
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 196, i32 %3, i64 12) #19, !dbg !1692, !srcloc !1694
  br label %do.cond15, !dbg !1692

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1692

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !1689

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !1695

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1695

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1686
  br label %do.cond20, !dbg !1689

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1689

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !1686

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !1697

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1697

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !1686

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !1686

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !1686

if.end:                                           ; preds = %do.end26, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1684
  %tobool27 = icmp ne i32 %4, 0, !dbg !1684
  %lnot28 = xor i1 %tobool27, true, !dbg !1684
  %lnot30 = xor i1 %lnot28, true, !dbg !1684
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !1684
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !1684
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !1684
  store i64 %expval33, ptr %tmp, align 8, !dbg !1685
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1699
  %5 = load i64, ptr %tmp, align 8, !dbg !1684
  call void @lockdep_assert_cpus_held() #18, !dbg !1700
  %6 = load ptr, ptr %key.addr, align 8, !dbg !1701
  %enabled = getelementptr inbounds %struct.static_key, ptr %6, i32 0, i32 0, !dbg !1702
  %call = call i32 @atomic_read(ptr noundef %enabled) #18, !dbg !1703
  %cmp = icmp sgt i32 %call, 0, !dbg !1704
  br i1 %cmp, label %if.then35, label %if.end76, !dbg !1705

if.then35:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on36) #19, !dbg !1706
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on36, metadata !1676, metadata !DIExpression()), !dbg !1706
  %7 = load ptr, ptr %key.addr, align 8, !dbg !1706
  %enabled37 = getelementptr inbounds %struct.static_key, ptr %7, i32 0, i32 0, !dbg !1706
  %call38 = call i32 @atomic_read(ptr noundef %enabled37) #18, !dbg !1706
  %cmp39 = icmp ne i32 %call38, 1, !dbg !1706
  %lnot41 = xor i1 %cmp39, true, !dbg !1706
  %lnot43 = xor i1 %lnot41, true, !dbg !1706
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !1706
  store i32 %lnot.ext44, ptr %__ret_warn_on36, align 4, !dbg !1706
  %8 = load i32, ptr %__ret_warn_on36, align 4, !dbg !1707
  %tobool45 = icmp ne i32 %8, 0, !dbg !1707
  %lnot46 = xor i1 %tobool45, true, !dbg !1707
  %lnot48 = xor i1 %lnot46, true, !dbg !1707
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !1707
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !1707
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !1707
  %tobool52 = icmp ne i64 %expval51, 0, !dbg !1707
  br i1 %tobool52, label %if.then53, label %if.end67, !dbg !1706

if.then53:                                        ; preds = %if.then35
  br label %do.body54, !dbg !1707

do.body54:                                        ; preds = %if.then53
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags55) #19, !dbg !1708
  call void @llvm.dbg.declare(metadata ptr %__flags55, metadata !1680, metadata !DIExpression()), !dbg !1708
  store i32 2307, ptr %__flags55, align 4, !dbg !1708
  br label %do.body56, !dbg !1708

do.body56:                                        ; preds = %do.body54
  br label %do.cond57, !dbg !1709

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !1709

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !1708

do.body59:                                        ; preds = %do.end58
  %9 = load i32, ptr %__flags55, align 4, !dbg !1711
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 200, i32 %9, i64 12) #19, !dbg !1711, !srcloc !1713
  br label %do.cond60, !dbg !1711

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !1711

do.end61:                                         ; preds = %do.cond60
  br label %do.body62, !dbg !1708

do.body62:                                        ; preds = %do.end61
  br label %do.cond63, !dbg !1714

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !1714

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags55) #19, !dbg !1707
  br label %do.cond65, !dbg !1708

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !1708

do.end66:                                         ; preds = %do.cond65
  br label %if.end67, !dbg !1708

if.end67:                                         ; preds = %do.end66, %if.then35
  %10 = load i32, ptr %__ret_warn_on36, align 4, !dbg !1706
  %tobool69 = icmp ne i32 %10, 0, !dbg !1706
  %lnot70 = xor i1 %tobool69, true, !dbg !1706
  %lnot72 = xor i1 %lnot70, true, !dbg !1706
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !1706
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !1706
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !1706
  store i64 %expval75, ptr %tmp68, align 8, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on36) #19, !dbg !1716
  %11 = load i64, ptr %tmp68, align 8, !dbg !1706
  br label %return, !dbg !1717

if.end76:                                         ; preds = %if.end
  call void @jump_label_lock() #18, !dbg !1718
  %12 = load ptr, ptr %key.addr, align 8, !dbg !1719
  %enabled77 = getelementptr inbounds %struct.static_key, ptr %12, i32 0, i32 0, !dbg !1721
  %call78 = call i32 @atomic_read(ptr noundef %enabled77) #18, !dbg !1722
  %cmp79 = icmp eq i32 %call78, 0, !dbg !1723
  br i1 %cmp79, label %if.then81, label %if.end84, !dbg !1724

if.then81:                                        ; preds = %if.end76
  %13 = load ptr, ptr %key.addr, align 8, !dbg !1725
  %enabled82 = getelementptr inbounds %struct.static_key, ptr %13, i32 0, i32 0, !dbg !1727
  call void @atomic_set(ptr noundef %enabled82, i32 noundef -1) #18, !dbg !1728
  %14 = load ptr, ptr %key.addr, align 8, !dbg !1729
  call void @jump_label_update(ptr noundef %14) #18, !dbg !1730
  %15 = load ptr, ptr %key.addr, align 8, !dbg !1731
  %enabled83 = getelementptr inbounds %struct.static_key, ptr %15, i32 0, i32 0, !dbg !1732
  call void @atomic_set_release(ptr noundef %enabled83, i32 noundef 1) #18, !dbg !1733
  br label %if.end84, !dbg !1734

if.end84:                                         ; preds = %if.then81, %if.end76
  call void @jump_label_unlock() #18, !dbg !1735
  br label %return, !dbg !1736

return:                                           ; preds = %if.end84, %if.end67
  ret void, !dbg !1736
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !1737 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1739, metadata !DIExpression()), !dbg !1741
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1740, metadata !DIExpression()), !dbg !1742
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1743
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !1744
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1745
  %2 = load i32, ptr %i.addr, align 4, !dbg !1746
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !1747
  ret void, !dbg !1748
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @static_key_enable(ptr noundef %key) #0 align 16 !dbg !1749 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1751, metadata !DIExpression()), !dbg !1752
  call void @cpus_read_lock() #18, !dbg !1753
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1754
  call void @static_key_enable_cpuslocked(ptr noundef %0) #18, !dbg !1755
  call void @cpus_read_unlock() #18, !dbg !1756
  ret void, !dbg !1757
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @static_key_disable_cpuslocked(ptr noundef %key) #0 align 16 !dbg !1758 {
entry:
  %key.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on36 = alloca i32, align 4
  %__flags55 = alloca i32, align 4
  %tmp68 = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1760, metadata !DIExpression()), !dbg !1774
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1775
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1761, metadata !DIExpression()), !dbg !1775
  %0 = load i8, ptr @static_key_initialized, align 1, !dbg !1775, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !1775
  %lnot = xor i1 %tobool, true, !dbg !1775
  %lnot1 = xor i1 %lnot, true, !dbg !1775
  %lnot2 = xor i1 %lnot1, true, !dbg !1775
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1775
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1775
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1776
  %tobool3 = icmp ne i32 %1, 0, !dbg !1776
  %lnot4 = xor i1 %tobool3, true, !dbg !1776
  %lnot6 = xor i1 %lnot4, true, !dbg !1776
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1776
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1776
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1776
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1776
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1775

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1776

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1777

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1778

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1778

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %key.addr, align 8, !dbg !1777
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef @__func__.static_key_disable_cpuslocked, ptr noundef %2) #18, !dbg !1777
  br label %do.body10, !dbg !1777

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1780
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1763, metadata !DIExpression()), !dbg !1780
  store i32 2313, ptr %__flags, align 4, !dbg !1780
  br label %do.body11, !dbg !1780

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !1781

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1781

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1780

do.body14:                                        ; preds = %do.end13
  %3 = load i32, ptr %__flags, align 4, !dbg !1783
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 227, i32 %3, i64 12) #19, !dbg !1783, !srcloc !1785
  br label %do.cond15, !dbg !1783

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1783

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !1780

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !1786

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1786

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1777
  br label %do.cond20, !dbg !1780

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1780

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !1777

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !1788

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1788

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !1777

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !1777

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !1777

if.end:                                           ; preds = %do.end26, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1775
  %tobool27 = icmp ne i32 %4, 0, !dbg !1775
  %lnot28 = xor i1 %tobool27, true, !dbg !1775
  %lnot30 = xor i1 %lnot28, true, !dbg !1775
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !1775
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !1775
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !1775
  store i64 %expval33, ptr %tmp, align 8, !dbg !1776
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1790
  %5 = load i64, ptr %tmp, align 8, !dbg !1775
  call void @lockdep_assert_cpus_held() #18, !dbg !1791
  %6 = load ptr, ptr %key.addr, align 8, !dbg !1792
  %enabled = getelementptr inbounds %struct.static_key, ptr %6, i32 0, i32 0, !dbg !1793
  %call = call i32 @atomic_read(ptr noundef %enabled) #18, !dbg !1794
  %cmp = icmp ne i32 %call, 1, !dbg !1795
  br i1 %cmp, label %if.then35, label %if.end76, !dbg !1796

if.then35:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on36) #19, !dbg !1797
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on36, metadata !1767, metadata !DIExpression()), !dbg !1797
  %7 = load ptr, ptr %key.addr, align 8, !dbg !1797
  %enabled37 = getelementptr inbounds %struct.static_key, ptr %7, i32 0, i32 0, !dbg !1797
  %call38 = call i32 @atomic_read(ptr noundef %enabled37) #18, !dbg !1797
  %cmp39 = icmp ne i32 %call38, 0, !dbg !1797
  %lnot41 = xor i1 %cmp39, true, !dbg !1797
  %lnot43 = xor i1 %lnot41, true, !dbg !1797
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !1797
  store i32 %lnot.ext44, ptr %__ret_warn_on36, align 4, !dbg !1797
  %8 = load i32, ptr %__ret_warn_on36, align 4, !dbg !1798
  %tobool45 = icmp ne i32 %8, 0, !dbg !1798
  %lnot46 = xor i1 %tobool45, true, !dbg !1798
  %lnot48 = xor i1 %lnot46, true, !dbg !1798
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !1798
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !1798
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !1798
  %tobool52 = icmp ne i64 %expval51, 0, !dbg !1798
  br i1 %tobool52, label %if.then53, label %if.end67, !dbg !1797

if.then53:                                        ; preds = %if.then35
  br label %do.body54, !dbg !1798

do.body54:                                        ; preds = %if.then53
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags55) #19, !dbg !1799
  call void @llvm.dbg.declare(metadata ptr %__flags55, metadata !1771, metadata !DIExpression()), !dbg !1799
  store i32 2307, ptr %__flags55, align 4, !dbg !1799
  br label %do.body56, !dbg !1799

do.body56:                                        ; preds = %do.body54
  br label %do.cond57, !dbg !1800

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !1800

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !1799

do.body59:                                        ; preds = %do.end58
  %9 = load i32, ptr %__flags55, align 4, !dbg !1802
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 231, i32 %9, i64 12) #19, !dbg !1802, !srcloc !1804
  br label %do.cond60, !dbg !1802

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !1802

do.end61:                                         ; preds = %do.cond60
  br label %do.body62, !dbg !1799

do.body62:                                        ; preds = %do.end61
  br label %do.cond63, !dbg !1805

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !1805

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags55) #19, !dbg !1798
  br label %do.cond65, !dbg !1799

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !1799

do.end66:                                         ; preds = %do.cond65
  br label %if.end67, !dbg !1799

if.end67:                                         ; preds = %do.end66, %if.then35
  %10 = load i32, ptr %__ret_warn_on36, align 4, !dbg !1797
  %tobool69 = icmp ne i32 %10, 0, !dbg !1797
  %lnot70 = xor i1 %tobool69, true, !dbg !1797
  %lnot72 = xor i1 %lnot70, true, !dbg !1797
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !1797
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !1797
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !1797
  store i64 %expval75, ptr %tmp68, align 8, !dbg !1798
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on36) #19, !dbg !1807
  %11 = load i64, ptr %tmp68, align 8, !dbg !1797
  br label %return, !dbg !1808

if.end76:                                         ; preds = %if.end
  call void @jump_label_lock() #18, !dbg !1809
  %12 = load ptr, ptr %key.addr, align 8, !dbg !1810
  %enabled77 = getelementptr inbounds %struct.static_key, ptr %12, i32 0, i32 0, !dbg !1812
  %call78 = call i32 @atomic_cmpxchg(ptr noundef %enabled77, i32 noundef 1, i32 noundef 0) #18, !dbg !1813
  %cmp79 = icmp eq i32 %call78, 1, !dbg !1814
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !1815

if.then81:                                        ; preds = %if.end76
  %13 = load ptr, ptr %key.addr, align 8, !dbg !1816
  call void @jump_label_update(ptr noundef %13) #18, !dbg !1817
  br label %if.end82, !dbg !1817

if.end82:                                         ; preds = %if.then81, %if.end76
  call void @jump_label_unlock() #18, !dbg !1818
  br label %return, !dbg !1819

return:                                           ; preds = %if.end82, %if.end67
  ret void, !dbg !1819
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @static_key_disable(ptr noundef %key) #0 align 16 !dbg !1820 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1822, metadata !DIExpression()), !dbg !1823
  call void @cpus_read_lock() #18, !dbg !1824
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1825
  call void @static_key_disable_cpuslocked(ptr noundef %0) #18, !dbg !1826
  call void @cpus_read_unlock() #18, !dbg !1827
  ret void, !dbg !1828
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jump_label_update_timeout(ptr noundef %work) #0 align 16 !dbg !1829 {
entry:
  %work.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1831, metadata !DIExpression()), !dbg !1835
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #19, !dbg !1836
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1832, metadata !DIExpression()), !dbg !1837
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !1838
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1833, metadata !DIExpression()), !dbg !1838
  %0 = load ptr, ptr %work.addr, align 8, !dbg !1838
  store ptr %0, ptr %__mptr, align 8, !dbg !1838
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1838
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !1838
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1838
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !1839
  %2 = load ptr, ptr %tmp, align 8, !dbg !1838
  store ptr %2, ptr %key, align 8, !dbg !1837
  %3 = load ptr, ptr %key, align 8, !dbg !1840
  %key1 = getelementptr inbounds %struct.static_key_deferred, ptr %3, i32 0, i32 0, !dbg !1841
  call void @__static_key_slow_dec(ptr noundef %key1) #18, !dbg !1842
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #19, !dbg !1843
  ret void, !dbg !1843
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__static_key_slow_dec(ptr noundef %key) #0 align 16 !dbg !1844 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1846, metadata !DIExpression()), !dbg !1847
  call void @cpus_read_lock() #18, !dbg !1848
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1849
  call void @__static_key_slow_dec_cpuslocked(ptr noundef %0) #18, !dbg !1850
  call void @cpus_read_unlock() #18, !dbg !1851
  ret void, !dbg !1852
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @static_key_slow_dec(ptr noundef %key) #0 align 16 !dbg !1853 {
entry:
  %key.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1855, metadata !DIExpression()), !dbg !1862
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1863
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1856, metadata !DIExpression()), !dbg !1863
  %0 = load i8, ptr @static_key_initialized, align 1, !dbg !1863, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !1863
  %lnot = xor i1 %tobool, true, !dbg !1863
  %lnot1 = xor i1 %lnot, true, !dbg !1863
  %lnot2 = xor i1 %lnot1, true, !dbg !1863
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1863
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1863
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1864
  %tobool3 = icmp ne i32 %1, 0, !dbg !1864
  %lnot4 = xor i1 %tobool3, true, !dbg !1864
  %lnot6 = xor i1 %lnot4, true, !dbg !1864
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1864
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1864
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1864
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1864
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1863

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1864

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1865

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1866

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1866

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %key.addr, align 8, !dbg !1865
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef @__func__.static_key_slow_dec, ptr noundef %2) #18, !dbg !1865
  br label %do.body10, !dbg !1865

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1868
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1858, metadata !DIExpression()), !dbg !1868
  store i32 2313, ptr %__flags, align 4, !dbg !1868
  br label %do.body11, !dbg !1868

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !1869

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1869

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1868

do.body14:                                        ; preds = %do.end13
  %3 = load i32, ptr %__flags, align 4, !dbg !1871
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 332, i32 %3, i64 12) #19, !dbg !1871, !srcloc !1873
  br label %do.cond15, !dbg !1871

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1871

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !1868

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !1874

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1874

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1865
  br label %do.cond20, !dbg !1868

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1868

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !1865

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !1876

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1876

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !1865

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !1865

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !1865

if.end:                                           ; preds = %do.end26, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1863
  %tobool27 = icmp ne i32 %4, 0, !dbg !1863
  %lnot28 = xor i1 %tobool27, true, !dbg !1863
  %lnot30 = xor i1 %lnot28, true, !dbg !1863
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !1863
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !1863
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !1863
  store i64 %expval33, ptr %tmp, align 8, !dbg !1864
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1878
  %5 = load i64, ptr %tmp, align 8, !dbg !1863
  %6 = load ptr, ptr %key.addr, align 8, !dbg !1879
  call void @__static_key_slow_dec(ptr noundef %6) #18, !dbg !1880
  ret void, !dbg !1881
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @static_key_slow_dec_cpuslocked(ptr noundef %key) #0 align 16 !dbg !1882 {
entry:
  %key.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1884, metadata !DIExpression()), !dbg !1891
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1885, metadata !DIExpression()), !dbg !1892
  %0 = load i8, ptr @static_key_initialized, align 1, !dbg !1892, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !1892
  %lnot = xor i1 %tobool, true, !dbg !1892
  %lnot1 = xor i1 %lnot, true, !dbg !1892
  %lnot2 = xor i1 %lnot1, true, !dbg !1892
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1892
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1892
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1893
  %tobool3 = icmp ne i32 %1, 0, !dbg !1893
  %lnot4 = xor i1 %tobool3, true, !dbg !1893
  %lnot6 = xor i1 %lnot4, true, !dbg !1893
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1893
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1893
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1893
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1893
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1892

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1893

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1894

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1895

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1895

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %key.addr, align 8, !dbg !1894
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef @__func__.static_key_slow_dec_cpuslocked, ptr noundef %2) #18, !dbg !1894
  br label %do.body10, !dbg !1894

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1897
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1887, metadata !DIExpression()), !dbg !1897
  store i32 2313, ptr %__flags, align 4, !dbg !1897
  br label %do.body11, !dbg !1897

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !1898

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1898

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1897

do.body14:                                        ; preds = %do.end13
  %3 = load i32, ptr %__flags, align 4, !dbg !1900
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 339, i32 %3, i64 12) #19, !dbg !1900, !srcloc !1902
  br label %do.cond15, !dbg !1900

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1900

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !1897

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !1903

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1903

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1894
  br label %do.cond20, !dbg !1897

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1897

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !1894

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !1905

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !1905

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !1894

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !1894

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !1894

if.end:                                           ; preds = %do.end26, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1892
  %tobool27 = icmp ne i32 %4, 0, !dbg !1892
  %lnot28 = xor i1 %tobool27, true, !dbg !1892
  %lnot30 = xor i1 %lnot28, true, !dbg !1892
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !1892
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !1892
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !1892
  store i64 %expval33, ptr %tmp, align 8, !dbg !1893
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1907
  %5 = load i64, ptr %tmp, align 8, !dbg !1892
  %6 = load ptr, ptr %key.addr, align 8, !dbg !1908
  call void @__static_key_slow_dec_cpuslocked(ptr noundef %6) #18, !dbg !1909
  ret void, !dbg !1910
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__static_key_slow_dec_cpuslocked(ptr noundef %key) #0 align 16 !dbg !1911 {
entry:
  %key.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_guard237 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on30 = alloca i32, align 4
  %__flags47 = alloca i32, align 4
  %tmp60 = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1913, metadata !DIExpression()), !dbg !1928
  call void @lockdep_assert_cpus_held() #18, !dbg !1929
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #19, !dbg !1930
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1914, metadata !DIExpression()), !dbg !1931
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1932
  %call = call zeroext i1 @static_key_dec_not_one(ptr noundef %0) #18, !dbg !1934
  br i1 %call, label %if.then, label %if.end, !dbg !1935

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !1936

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_guard237) #19, !dbg !1937
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_guard237, metadata !1915, metadata !DIExpression()), !dbg !1937
  %call1 = call ptr @class_mutex_constructor(ptr noundef @jump_label_mutex) #18, !dbg !1937
  store ptr %call1, ptr %__UNIQUE_ID_guard237, align 8, !dbg !1937
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1938
  %enabled = getelementptr inbounds %struct.static_key, ptr %1, i32 0, i32 0, !dbg !1939
  %call2 = call i32 @atomic_read(ptr noundef %enabled) #18, !dbg !1940
  store i32 %call2, ptr %val, align 4, !dbg !1941
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1942
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1916, metadata !DIExpression()), !dbg !1942
  %2 = load i32, ptr %val, align 4, !dbg !1942
  %cmp = icmp eq i32 %2, -1, !dbg !1942
  %lnot = xor i1 %cmp, true, !dbg !1942
  %lnot3 = xor i1 %lnot, true, !dbg !1942
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1942
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1942
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1943
  %tobool = icmp ne i32 %3, 0, !dbg !1943
  %lnot4 = xor i1 %tobool, true, !dbg !1943
  %lnot6 = xor i1 %lnot4, true, !dbg !1943
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1943
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1943
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1943
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1943
  br i1 %tobool8, label %if.then9, label %if.end19, !dbg !1942

if.then9:                                         ; preds = %if.end
  br label %do.body, !dbg !1943

do.body:                                          ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1944
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1919, metadata !DIExpression()), !dbg !1944
  store i32 2307, ptr %__flags, align 4, !dbg !1944
  br label %do.body10, !dbg !1944

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !1945

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !1945

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !1944

do.body11:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !1947
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 303, i32 %4, i64 12) #19, !dbg !1947, !srcloc !1949
  br label %do.cond12, !dbg !1947

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1947

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1944

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !1950

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !1950

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1943
  br label %do.cond17, !dbg !1944

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !1944

do.end18:                                         ; preds = %do.cond17
  br label %if.end19, !dbg !1944

if.end19:                                         ; preds = %do.end18, %if.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1942
  %tobool20 = icmp ne i32 %5, 0, !dbg !1942
  %lnot21 = xor i1 %tobool20, true, !dbg !1942
  %lnot23 = xor i1 %lnot21, true, !dbg !1942
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !1942
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !1942
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !1942
  store i64 %expval26, ptr %tmp, align 8, !dbg !1943
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1952
  %6 = load i64, ptr %tmp, align 8, !dbg !1942
  %tobool27 = icmp ne i64 %6, 0, !dbg !1952
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !1953

if.then28:                                        ; preds = %if.end19
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1954

if.end29:                                         ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on30) #19, !dbg !1955
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on30, metadata !1922, metadata !DIExpression()), !dbg !1955
  %7 = load i32, ptr %val, align 4, !dbg !1955
  %cmp31 = icmp eq i32 %7, 0, !dbg !1955
  %lnot33 = xor i1 %cmp31, true, !dbg !1955
  %lnot35 = xor i1 %lnot33, true, !dbg !1955
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !1955
  store i32 %lnot.ext36, ptr %__ret_warn_on30, align 4, !dbg !1955
  %8 = load i32, ptr %__ret_warn_on30, align 4, !dbg !1956
  %tobool37 = icmp ne i32 %8, 0, !dbg !1956
  %lnot38 = xor i1 %tobool37, true, !dbg !1956
  %lnot40 = xor i1 %lnot38, true, !dbg !1956
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !1956
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !1956
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !1956
  %tobool44 = icmp ne i64 %expval43, 0, !dbg !1956
  br i1 %tobool44, label %if.then45, label %if.end59, !dbg !1955

if.then45:                                        ; preds = %if.end29
  br label %do.body46, !dbg !1956

do.body46:                                        ; preds = %if.then45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags47) #19, !dbg !1957
  call void @llvm.dbg.declare(metadata ptr %__flags47, metadata !1925, metadata !DIExpression()), !dbg !1957
  store i32 2307, ptr %__flags47, align 4, !dbg !1957
  br label %do.body48, !dbg !1957

do.body48:                                        ; preds = %do.body46
  br label %do.cond49, !dbg !1958

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !1958

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !1957

do.body51:                                        ; preds = %do.end50
  %9 = load i32, ptr %__flags47, align 4, !dbg !1960
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 308, i32 %9, i64 12) #19, !dbg !1960, !srcloc !1962
  br label %do.cond52, !dbg !1960

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !1960

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !1957

do.body54:                                        ; preds = %do.end53
  br label %do.cond55, !dbg !1963

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !1963

do.end56:                                         ; preds = %do.cond55
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags47) #19, !dbg !1956
  br label %do.cond57, !dbg !1957

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !1957

do.end58:                                         ; preds = %do.cond57
  br label %if.end59, !dbg !1957

if.end59:                                         ; preds = %do.end58, %if.end29
  %10 = load i32, ptr %__ret_warn_on30, align 4, !dbg !1955
  %tobool61 = icmp ne i32 %10, 0, !dbg !1955
  %lnot62 = xor i1 %tobool61, true, !dbg !1955
  %lnot64 = xor i1 %lnot62, true, !dbg !1955
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !1955
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !1955
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !1955
  store i64 %expval67, ptr %tmp60, align 8, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on30) #19, !dbg !1965
  %11 = load i64, ptr %tmp60, align 8, !dbg !1955
  %tobool68 = icmp ne i64 %11, 0, !dbg !1965
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !1966

if.then69:                                        ; preds = %if.end59
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1967

if.end70:                                         ; preds = %if.end59
  %12 = load ptr, ptr %key.addr, align 8, !dbg !1968
  %enabled71 = getelementptr inbounds %struct.static_key, ptr %12, i32 0, i32 0, !dbg !1970
  %call72 = call zeroext i1 @atomic_dec_and_test(ptr noundef %enabled71) #18, !dbg !1971
  br i1 %call72, label %if.then73, label %if.end74, !dbg !1972

if.then73:                                        ; preds = %if.end70
  %13 = load ptr, ptr %key.addr, align 8, !dbg !1973
  call void @jump_label_update(ptr noundef %13) #18, !dbg !1974
  br label %if.end74, !dbg !1974

if.end74:                                         ; preds = %if.then73, %if.end70
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1975
  br label %cleanup, !dbg !1975

cleanup:                                          ; preds = %if.end74, %if.then69, %if.then28
  call void @class_mutex_destructor(ptr noundef %__UNIQUE_ID_guard237) #18, !dbg !1975
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_guard237) #19, !dbg !1975
  br label %cleanup76

cleanup76:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #19, !dbg !1975
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup76, %cleanup76
  ret void, !dbg !1975

unreachable:                                      ; preds = %cleanup76
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__static_key_slow_dec_deferred(ptr noundef %key, ptr noundef %work, i64 noundef %timeout) #0 align 16 !dbg !1976 {
entry:
  %key.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %timeout.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1981, metadata !DIExpression()), !dbg !1990
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !1982, metadata !DIExpression()), !dbg !1991
  store i64 %timeout, ptr %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !1983, metadata !DIExpression()), !dbg !1992
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1993
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1984, metadata !DIExpression()), !dbg !1993
  %0 = load i8, ptr @static_key_initialized, align 1, !dbg !1993, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !1993
  %lnot = xor i1 %tobool, true, !dbg !1993
  %lnot1 = xor i1 %lnot, true, !dbg !1993
  %lnot2 = xor i1 %lnot1, true, !dbg !1993
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1993
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1993
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1994
  %tobool3 = icmp ne i32 %1, 0, !dbg !1994
  %lnot4 = xor i1 %tobool3, true, !dbg !1994
  %lnot6 = xor i1 %lnot4, true, !dbg !1994
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1994
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1994
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1994
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1994
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1993

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1994

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !1995

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1996

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1996

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %key.addr, align 8, !dbg !1995
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef @__func__.__static_key_slow_dec_deferred, ptr noundef %2) #18, !dbg !1995
  br label %do.body10, !dbg !1995

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1986, metadata !DIExpression()), !dbg !1998
  store i32 2313, ptr %__flags, align 4, !dbg !1998
  br label %do.body11, !dbg !1998

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !1999

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1999

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1998

do.body14:                                        ; preds = %do.end13
  %3 = load i32, ptr %__flags, align 4, !dbg !2001
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 347, i32 %3, i64 12) #19, !dbg !2001, !srcloc !2003
  br label %do.cond15, !dbg !2001

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2001

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !1998

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2004

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2004

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1995
  br label %do.cond20, !dbg !1998

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !1998

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !1995

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !2006

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2006

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !1995

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !1995

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !1995

if.end:                                           ; preds = %do.end26, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1993
  %tobool27 = icmp ne i32 %4, 0, !dbg !1993
  %lnot28 = xor i1 %tobool27, true, !dbg !1993
  %lnot30 = xor i1 %lnot28, true, !dbg !1993
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !1993
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !1993
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !1993
  store i64 %expval33, ptr %tmp, align 8, !dbg !1994
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2008
  %5 = load i64, ptr %tmp, align 8, !dbg !1993
  %6 = load ptr, ptr %key.addr, align 8, !dbg !2009
  %call = call zeroext i1 @static_key_dec_not_one(ptr noundef %6) #18, !dbg !2011
  br i1 %call, label %if.then34, label %if.end35, !dbg !2012

if.then34:                                        ; preds = %if.end
  br label %return, !dbg !2013

if.end35:                                         ; preds = %if.end
  %7 = load ptr, ptr %work.addr, align 8, !dbg !2014
  %8 = load i64, ptr %timeout.addr, align 8, !dbg !2015
  %call36 = call zeroext i1 @schedule_delayed_work(ptr noundef %7, i64 noundef %8) #18, !dbg !2016
  br label %return, !dbg !2017

return:                                           ; preds = %if.end35, %if.then34
  ret void, !dbg !2017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_dec_not_one(ptr noundef %key) #0 align 16 !dbg !2018 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %v = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %__flags41 = alloca i32, align 4
  %tmp54 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2020, metadata !DIExpression()), !dbg !2034
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #19, !dbg !2035
  call void @llvm.dbg.declare(metadata ptr %v, metadata !2021, metadata !DIExpression()), !dbg !2036
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2037
  %enabled = getelementptr inbounds %struct.static_key, ptr %0, i32 0, i32 0, !dbg !2038
  %call = call i32 @atomic_read(ptr noundef %enabled) #18, !dbg !2039
  store i32 %call, ptr %v, align 4, !dbg !2040
  br label %do.body, !dbg !2041

do.body:                                          ; preds = %do.cond69, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2022, metadata !DIExpression()), !dbg !2042
  %1 = load i32, ptr %v, align 4, !dbg !2042
  %cmp = icmp slt i32 %1, 0, !dbg !2042
  %lnot = xor i1 %cmp, true, !dbg !2042
  %lnot1 = xor i1 %lnot, true, !dbg !2042
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2042
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2042
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !2043
  %tobool = icmp ne i32 %2, 0, !dbg !2043
  %lnot2 = xor i1 %tobool, true, !dbg !2043
  %lnot4 = xor i1 %lnot2, true, !dbg !2043
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2043
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2043
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2043
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2043
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2042

if.then:                                          ; preds = %do.body
  br label %do.body7, !dbg !2043

do.body7:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !2044
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2025, metadata !DIExpression()), !dbg !2044
  store i32 2307, ptr %__flags, align 4, !dbg !2044
  br label %do.body8, !dbg !2044

do.body8:                                         ; preds = %do.body7
  br label %do.cond, !dbg !2045

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !2045

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !2044

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !2047
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 273, i32 %3, i64 12) #19, !dbg !2047, !srcloc !2049
  br label %do.cond10, !dbg !2047

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2047

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !2044

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !2050

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2050

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !2043
  br label %do.cond15, !dbg !2044

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !2044

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !2044

if.end:                                           ; preds = %do.end16, %do.body
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2042
  %tobool17 = icmp ne i32 %4, 0, !dbg !2042
  %lnot18 = xor i1 %tobool17, true, !dbg !2042
  %lnot20 = xor i1 %lnot18, true, !dbg !2042
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !2042
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !2042
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !2042
  store i64 %expval23, ptr %tmp, align 8, !dbg !2043
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2052
  %5 = load i64, ptr %tmp, align 8, !dbg !2042
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on24) #19, !dbg !2053
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on24, metadata !2028, metadata !DIExpression()), !dbg !2053
  %6 = load i32, ptr %v, align 4, !dbg !2053
  %cmp25 = icmp eq i32 %6, 0, !dbg !2053
  %lnot27 = xor i1 %cmp25, true, !dbg !2053
  %lnot29 = xor i1 %lnot27, true, !dbg !2053
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !2053
  store i32 %lnot.ext30, ptr %__ret_warn_on24, align 4, !dbg !2053
  %7 = load i32, ptr %__ret_warn_on24, align 4, !dbg !2054
  %tobool31 = icmp ne i32 %7, 0, !dbg !2054
  %lnot32 = xor i1 %tobool31, true, !dbg !2054
  %lnot34 = xor i1 %lnot32, true, !dbg !2054
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !2054
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !2054
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !2054
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !2054
  br i1 %tobool38, label %if.then39, label %if.end53, !dbg !2053

if.then39:                                        ; preds = %if.end
  br label %do.body40, !dbg !2054

do.body40:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags41) #19, !dbg !2055
  call void @llvm.dbg.declare(metadata ptr %__flags41, metadata !2031, metadata !DIExpression()), !dbg !2055
  store i32 2307, ptr %__flags41, align 4, !dbg !2055
  br label %do.body42, !dbg !2055

do.body42:                                        ; preds = %do.body40
  br label %do.cond43, !dbg !2056

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !2056

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !2055

do.body45:                                        ; preds = %do.end44
  %8 = load i32, ptr %__flags41, align 4, !dbg !2058
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 279, i32 %8, i64 12) #19, !dbg !2058, !srcloc !2060
  br label %do.cond46, !dbg !2058

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !2058

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !2055

do.body48:                                        ; preds = %do.end47
  br label %do.cond49, !dbg !2061

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !2061

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags41) #19, !dbg !2054
  br label %do.cond51, !dbg !2055

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !2055

do.end52:                                         ; preds = %do.cond51
  br label %if.end53, !dbg !2055

if.end53:                                         ; preds = %do.end52, %if.end
  %9 = load i32, ptr %__ret_warn_on24, align 4, !dbg !2053
  %tobool55 = icmp ne i32 %9, 0, !dbg !2053
  %lnot56 = xor i1 %tobool55, true, !dbg !2053
  %lnot58 = xor i1 %lnot56, true, !dbg !2053
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !2053
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !2053
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !2053
  store i64 %expval61, ptr %tmp54, align 8, !dbg !2054
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on24) #19, !dbg !2063
  %10 = load i64, ptr %tmp54, align 8, !dbg !2053
  %tobool62 = icmp ne i64 %10, 0, !dbg !2063
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !2064

if.then63:                                        ; preds = %if.end53
  store i1 true, ptr %retval, align 1, !dbg !2065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2065

if.end64:                                         ; preds = %if.end53
  %11 = load i32, ptr %v, align 4, !dbg !2066
  %cmp65 = icmp sle i32 %11, 1, !dbg !2068
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !2069

if.then67:                                        ; preds = %if.end64
  store i1 false, ptr %retval, align 1, !dbg !2070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2070

if.end68:                                         ; preds = %if.end64
  br label %do.cond69, !dbg !2071

do.cond69:                                        ; preds = %if.end68
  %12 = load ptr, ptr %key.addr, align 8, !dbg !2072
  %enabled70 = getelementptr inbounds %struct.static_key, ptr %12, i32 0, i32 0, !dbg !2072
  %13 = load i32, ptr %v, align 4, !dbg !2072
  %sub = sub i32 %13, 1, !dbg !2072
  %call71 = call zeroext i1 @atomic_try_cmpxchg(ptr noundef %enabled70, ptr noundef %v, i32 noundef %sub) #18, !dbg !2072
  %lnot72 = xor i1 %call71, true, !dbg !2072
  %lnot74 = xor i1 %lnot72, true, !dbg !2072
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !2072
  %conv76 = sext i32 %lnot.ext75 to i64, !dbg !2072
  %expval77 = call i64 @llvm.expect.i64(i64 %conv76, i64 1), !dbg !2072
  %tobool78 = icmp ne i64 %expval77, 0, !dbg !2073
  %lnot79 = xor i1 %tobool78, true, !dbg !2073
  br i1 %lnot79, label %do.body, label %do.end81, !dbg !2071, !llvm.loop !2074

do.end81:                                         ; preds = %do.cond69
  store i1 true, ptr %retval, align 1, !dbg !2076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2076

cleanup:                                          ; preds = %do.end81, %if.then67, %if.then63
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #19, !dbg !2077
  %14 = load i1, ptr %retval, align 1, !dbg !2077
  ret i1 %14, !dbg !2077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_delayed_work(ptr noundef %dwork, i64 noundef %delay) #6 align 16 !dbg !2078 {
entry:
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !2082, metadata !DIExpression()), !dbg !2084
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !2083, metadata !DIExpression()), !dbg !2085
  %0 = load ptr, ptr @system_wq, align 8, !dbg !2086
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !2087
  %2 = load i64, ptr %delay.addr, align 8, !dbg !2088
  %call = call zeroext i1 @queue_delayed_work(ptr noundef %0, ptr noundef %1, i64 noundef %2) #18, !dbg !2089
  ret i1 %call, !dbg !2090
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__static_key_deferred_flush(ptr noundef %key, ptr noundef %work) #0 align 16 !dbg !2091 {
entry:
  %key.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2095, metadata !DIExpression()), !dbg !2103
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2096, metadata !DIExpression()), !dbg !2104
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2097, metadata !DIExpression()), !dbg !2105
  %0 = load i8, ptr @static_key_initialized, align 1, !dbg !2105, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !2105
  %lnot = xor i1 %tobool, true, !dbg !2105
  %lnot1 = xor i1 %lnot, true, !dbg !2105
  %lnot2 = xor i1 %lnot1, true, !dbg !2105
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2105
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2105
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2106
  %tobool3 = icmp ne i32 %1, 0, !dbg !2106
  %lnot4 = xor i1 %tobool3, true, !dbg !2106
  %lnot6 = xor i1 %lnot4, true, !dbg !2106
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2106
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2106
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2106
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2106
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2105

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2106

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !2107

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2108

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2108

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %key.addr, align 8, !dbg !2107
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef @__func__.__static_key_deferred_flush, ptr noundef %2) #18, !dbg !2107
  br label %do.body10, !dbg !2107

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !2110
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2099, metadata !DIExpression()), !dbg !2110
  store i32 2313, ptr %__flags, align 4, !dbg !2110
  br label %do.body11, !dbg !2110

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2111

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2111

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2110

do.body14:                                        ; preds = %do.end13
  %3 = load i32, ptr %__flags, align 4, !dbg !2113
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 358, i32 %3, i64 12) #19, !dbg !2113, !srcloc !2115
  br label %do.cond15, !dbg !2113

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2113

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2110

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2116

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2116

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !2107
  br label %do.cond20, !dbg !2110

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2110

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !2107

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !2118

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2118

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !2107

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !2107

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !2107

if.end:                                           ; preds = %do.end26, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2105
  %tobool27 = icmp ne i32 %4, 0, !dbg !2105
  %lnot28 = xor i1 %tobool27, true, !dbg !2105
  %lnot30 = xor i1 %lnot28, true, !dbg !2105
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !2105
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !2105
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !2105
  store i64 %expval33, ptr %tmp, align 8, !dbg !2106
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2120
  %5 = load i64, ptr %tmp, align 8, !dbg !2105
  %6 = load ptr, ptr %work.addr, align 8, !dbg !2121
  %call = call zeroext i1 @flush_delayed_work(ptr noundef %6) #18, !dbg !2122
  ret void, !dbg !2123
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2124 dso_local zeroext i1 @flush_delayed_work(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @jump_label_rate_limit(ptr noundef %key, i64 noundef %rl) #0 align 16 !dbg !1239 {
entry:
  %key.addr = alloca ptr, align 8
  %rl.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1243, metadata !DIExpression()), !dbg !2127
  store i64 %rl, ptr %rl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rl.addr, metadata !1244, metadata !DIExpression()), !dbg !2128
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2129
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1245, metadata !DIExpression()), !dbg !2129
  %0 = load i8, ptr @static_key_initialized, align 1, !dbg !2129, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !2129
  %lnot = xor i1 %tobool, true, !dbg !2129
  %lnot1 = xor i1 %lnot, true, !dbg !2129
  %lnot2 = xor i1 %lnot1, true, !dbg !2129
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2129
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2129
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2130
  %tobool3 = icmp ne i32 %1, 0, !dbg !2130
  %lnot4 = xor i1 %tobool3, true, !dbg !2130
  %lnot6 = xor i1 %lnot4, true, !dbg !2130
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2130
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2130
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2130
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2130
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2129

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2130

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !2131

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2132

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2132

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %key.addr, align 8, !dbg !2131
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef @__func__.jump_label_rate_limit, ptr noundef %2) #18, !dbg !2131
  br label %do.body10, !dbg !2131

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !2134
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1247, metadata !DIExpression()), !dbg !2134
  store i32 2313, ptr %__flags, align 4, !dbg !2134
  br label %do.body11, !dbg !2134

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2135

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2135

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2134

do.body14:                                        ; preds = %do.end13
  %3 = load i32, ptr %__flags, align 4, !dbg !2137
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 366, i32 %3, i64 12) #19, !dbg !2137, !srcloc !2139
  br label %do.cond15, !dbg !2137

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2137

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2134

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2140

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2140

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !2131
  br label %do.cond20, !dbg !2134

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2134

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !2131

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !2142

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2142

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !2131

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !2131

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !2131

if.end:                                           ; preds = %do.end26, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2129
  %tobool27 = icmp ne i32 %4, 0, !dbg !2129
  %lnot28 = xor i1 %tobool27, true, !dbg !2129
  %lnot30 = xor i1 %lnot28, true, !dbg !2129
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !2129
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !2129
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !2129
  store i64 %expval33, ptr %tmp, align 8, !dbg !2130
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2144
  %5 = load i64, ptr %tmp, align 8, !dbg !2129
  %6 = load i64, ptr %rl.addr, align 8, !dbg !2145
  %7 = load ptr, ptr %key.addr, align 8, !dbg !2146
  %timeout = getelementptr inbounds %struct.static_key_deferred, ptr %7, i32 0, i32 1, !dbg !2147
  store i64 %6, ptr %timeout, align 8, !dbg !2148
  br label %do.body34, !dbg !2149

do.body34:                                        ; preds = %if.end
  br label %do.body35, !dbg !2150

do.body35:                                        ; preds = %do.body34
  br label %do.body36, !dbg !2152

do.body36:                                        ; preds = %do.body35
  %8 = load ptr, ptr %key.addr, align 8, !dbg !2154
  %work = getelementptr inbounds %struct.static_key_deferred, ptr %8, i32 0, i32 2, !dbg !2154
  %work37 = getelementptr inbounds %struct.delayed_work, ptr %work, i32 0, i32 0, !dbg !2154
  call void @__init_work(ptr noundef %work37, i32 noundef 0) #18, !dbg !2154
  %9 = load ptr, ptr %key.addr, align 8, !dbg !2154
  %work38 = getelementptr inbounds %struct.static_key_deferred, ptr %9, i32 0, i32 2, !dbg !2154
  %work39 = getelementptr inbounds %struct.delayed_work, ptr %work38, i32 0, i32 0, !dbg !2154
  %data = getelementptr inbounds %struct.work_struct, ptr %work39, i32 0, i32 0, !dbg !2154
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !2154
  store i64 68719476704, ptr %counter, align 8, !dbg !2154
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !2154
  %10 = load ptr, ptr %key.addr, align 8, !dbg !2154
  %work40 = getelementptr inbounds %struct.static_key_deferred, ptr %10, i32 0, i32 2, !dbg !2154
  %work41 = getelementptr inbounds %struct.delayed_work, ptr %work40, i32 0, i32 0, !dbg !2154
  %entry42 = getelementptr inbounds %struct.work_struct, ptr %work41, i32 0, i32 1, !dbg !2154
  call void @INIT_LIST_HEAD(ptr noundef %entry42) #18, !dbg !2154
  %11 = load ptr, ptr %key.addr, align 8, !dbg !2154
  %work43 = getelementptr inbounds %struct.static_key_deferred, ptr %11, i32 0, i32 2, !dbg !2154
  %work44 = getelementptr inbounds %struct.delayed_work, ptr %work43, i32 0, i32 0, !dbg !2154
  %func = getelementptr inbounds %struct.work_struct, ptr %work44, i32 0, i32 2, !dbg !2154
  store ptr @jump_label_update_timeout, ptr %func, align 8, !dbg !2154
  br label %do.end46, !dbg !2154

do.end46:                                         ; preds = %do.body36
  br label %do.end48, !dbg !2152

do.end48:                                         ; preds = %do.end46
  %12 = load ptr, ptr %key.addr, align 8, !dbg !2150
  %work49 = getelementptr inbounds %struct.static_key_deferred, ptr %12, i32 0, i32 2, !dbg !2150
  %timer = getelementptr inbounds %struct.delayed_work, ptr %work49, i32 0, i32 1, !dbg !2150
  call void @init_timer_key(ptr noundef %timer, ptr noundef @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #18, !dbg !2150
  br label %do.end51, !dbg !2150

do.end51:                                         ; preds = %do.end48
  ret void, !dbg !2156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #6 align 16 !dbg !2157 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !2161, metadata !DIExpression()), !dbg !2163
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !2162, metadata !DIExpression()), !dbg !2164
  ret void, !dbg !2165
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !2166 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2171, metadata !DIExpression()), !dbg !2172
  br label %do.body, !dbg !2173

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2174

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2176

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2174

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2178
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2178
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2178
  store volatile ptr %0, ptr %next, align 8, !dbg !2178
  br label %do.end3, !dbg !2178

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2174

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2180

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2181

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2183

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2181

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2185
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2185
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !2185
  store volatile ptr %2, ptr %prev, align 8, !dbg !2185
  br label %do.end9, !dbg !2185

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2181

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !2187
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2188 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @jump_label_init() #8 section ".init.text" align 16 !dbg !2192 {
entry:
  %iter_start = alloca ptr, align 8
  %iter_stop = alloca ptr, align 8
  %key = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %iterk = alloca ptr, align 8
  %in_init = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_start) #19, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %iter_start, metadata !2194, metadata !DIExpression()), !dbg !2204
  store ptr @__start___jump_table, ptr %iter_start, align 8, !dbg !2204
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_stop) #19, !dbg !2205
  call void @llvm.dbg.declare(metadata ptr %iter_stop, metadata !2195, metadata !DIExpression()), !dbg !2206
  store ptr @__stop___jump_table, ptr %iter_stop, align 8, !dbg !2206
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #19, !dbg !2207
  call void @llvm.dbg.declare(metadata ptr %key, metadata !2196, metadata !DIExpression()), !dbg !2208
  store ptr null, ptr %key, align 8, !dbg !2208
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #19, !dbg !2209
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !2197, metadata !DIExpression()), !dbg !2210
  br label %do.body, !dbg !2211

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2212

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2212

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !2214

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !2215

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !2215

do.end3:                                          ; preds = %do.cond2
  %0 = load i8, ptr @static_key_initialized, align 1, !dbg !2217, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !2217
  br i1 %tobool, label %if.then, label %if.end, !dbg !2219

if.then:                                          ; preds = %do.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !2220

if.end:                                           ; preds = %do.end3
  call void @cpus_read_lock() #18, !dbg !2221
  call void @jump_label_lock() #18, !dbg !2222
  %1 = load ptr, ptr %iter_start, align 8, !dbg !2223
  %2 = load ptr, ptr %iter_stop, align 8, !dbg !2224
  call void @jump_label_sort_entries(ptr noundef %1, ptr noundef %2) #18, !dbg !2225
  %3 = load ptr, ptr %iter_start, align 8, !dbg !2226
  store ptr %3, ptr %iter, align 8, !dbg !2227
  br label %for.cond, !dbg !2228

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %iter, align 8, !dbg !2229
  %5 = load ptr, ptr %iter_stop, align 8, !dbg !2230
  %cmp = icmp ult ptr %4, %5, !dbg !2231
  br i1 %cmp, label %for.body, label %for.end, !dbg !2232

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %iterk) #19, !dbg !2233
  call void @llvm.dbg.declare(metadata ptr %iterk, metadata !2198, metadata !DIExpression()), !dbg !2234
  call void @llvm.lifetime.start.p0(i64 1, ptr %in_init) #19, !dbg !2235
  call void @llvm.dbg.declare(metadata ptr %in_init, metadata !2202, metadata !DIExpression()), !dbg !2236
  %6 = load ptr, ptr %iter, align 8, !dbg !2237
  %call = call i32 @jump_label_type(ptr noundef %6) #18, !dbg !2239
  %cmp4 = icmp eq i32 %call, 0, !dbg !2240
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2241

if.then5:                                         ; preds = %for.body
  %7 = load ptr, ptr %iter, align 8, !dbg !2242
  call void @arch_jump_label_transform_static(ptr noundef %7, i32 noundef 0) #18, !dbg !2243
  br label %if.end6, !dbg !2243

if.end6:                                          ; preds = %if.then5, %for.body
  %8 = load ptr, ptr %iter, align 8, !dbg !2244
  %call7 = call i64 @jump_entry_code(ptr noundef %8) #18, !dbg !2245
  %9 = inttoptr i64 %call7 to ptr, !dbg !2246
  %call8 = call zeroext i1 @init_section_contains(ptr noundef %9, i64 noundef 1) #18, !dbg !2247
  %frombool = zext i1 %call8 to i8, !dbg !2248
  store i8 %frombool, ptr %in_init, align 1, !dbg !2248
  %10 = load ptr, ptr %iter, align 8, !dbg !2249
  %11 = load i8, ptr %in_init, align 1, !dbg !2250, !range !1414, !noundef !359
  %tobool9 = trunc i8 %11 to i1, !dbg !2250
  call void @jump_entry_set_init(ptr noundef %10, i1 noundef zeroext %tobool9) #18, !dbg !2251
  %12 = load ptr, ptr %iter, align 8, !dbg !2252
  %call10 = call ptr @jump_entry_key(ptr noundef %12) #18, !dbg !2253
  store ptr %call10, ptr %iterk, align 8, !dbg !2254
  %13 = load ptr, ptr %iterk, align 8, !dbg !2255
  %14 = load ptr, ptr %key, align 8, !dbg !2257
  %cmp11 = icmp eq ptr %13, %14, !dbg !2258
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2259

if.then12:                                        ; preds = %if.end6
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2260

if.end13:                                         ; preds = %if.end6
  %15 = load ptr, ptr %iterk, align 8, !dbg !2261
  store ptr %15, ptr %key, align 8, !dbg !2262
  %16 = load ptr, ptr %key, align 8, !dbg !2263
  %17 = load ptr, ptr %iter, align 8, !dbg !2264
  call void @static_key_set_entries(ptr noundef %16, ptr noundef %17) #18, !dbg !2265
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2266
  br label %cleanup, !dbg !2266

cleanup:                                          ; preds = %if.end13, %if.then12
  call void @llvm.lifetime.end.p0(i64 1, ptr %in_init) #19, !dbg !2266
  call void @llvm.lifetime.end.p0(i64 8, ptr %iterk) #19, !dbg !2266
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2267

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %18 = load ptr, ptr %iter, align 8, !dbg !2268
  %incdec.ptr = getelementptr %struct.jump_entry, ptr %18, i32 1, !dbg !2268
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !2268
  br label %for.cond, !dbg !2269, !llvm.loop !2270

for.end:                                          ; preds = %for.cond
  store i8 1, ptr @static_key_initialized, align 1, !dbg !2272
  call void @jump_label_unlock() #18, !dbg !2273
  call void @cpus_read_unlock() #18, !dbg !2274
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2275
  br label %cleanup15, !dbg !2275

cleanup15:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #19, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #19, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_stop) #19, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_start) #19, !dbg !2275
  %cleanup.dest19 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest19, label %unreachable [
    i32 0, label %cleanup.cont20
    i32 1, label %cleanup.cont20
  ]

cleanup.cont20:                                   ; preds = %cleanup15, %cleanup15
  ret void, !dbg !2275

unreachable:                                      ; preds = %cleanup15, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jump_label_sort_entries(ptr noundef %start, ptr noundef %stop) #0 align 16 !dbg !2276 {
entry:
  %start.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %swapfn = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2280, metadata !DIExpression()), !dbg !2284
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !2281, metadata !DIExpression()), !dbg !2285
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #19, !dbg !2286
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.lifetime.start.p0(i64 8, ptr %swapfn) #19, !dbg !2288
  call void @llvm.dbg.declare(metadata ptr %swapfn, metadata !2283, metadata !DIExpression()), !dbg !2289
  store ptr null, ptr %swapfn, align 8, !dbg !2289
  store ptr @jump_label_swap, ptr %swapfn, align 8, !dbg !2290
  %0 = load ptr, ptr %stop.addr, align 8, !dbg !2292
  %1 = ptrtoint ptr %0 to i64, !dbg !2293
  %2 = load ptr, ptr %start.addr, align 8, !dbg !2294
  %3 = ptrtoint ptr %2 to i64, !dbg !2295
  %sub = sub i64 %1, %3, !dbg !2296
  %div = udiv i64 %sub, 16, !dbg !2297
  store i64 %div, ptr %size, align 8, !dbg !2298
  %4 = load ptr, ptr %start.addr, align 8, !dbg !2299
  %5 = load i64, ptr %size, align 8, !dbg !2300
  %6 = load ptr, ptr %swapfn, align 8, !dbg !2301
  call void @sort(ptr noundef %4, i64 noundef %5, i64 noundef 16, ptr noundef @jump_label_cmp, ptr noundef %6) #18, !dbg !2302
  call void @llvm.lifetime.end.p0(i64 8, ptr %swapfn) #19, !dbg !2303
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #19, !dbg !2303
  ret void, !dbg !2303
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jump_label_type(ptr noundef %entry1) #0 align 16 !dbg !2304 {
entry:
  %entry.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %enabled = alloca i8, align 1
  %tmp = alloca i32, align 4
  %branch = alloca i8, align 1
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2308, metadata !DIExpression()), !dbg !2312
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #19, !dbg !2313
  call void @llvm.dbg.declare(metadata ptr %key, metadata !2309, metadata !DIExpression()), !dbg !2314
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2315
  %call = call ptr @jump_entry_key(ptr noundef %0) #18, !dbg !2316
  store ptr %call, ptr %key, align 8, !dbg !2314
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #19, !dbg !2317
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !2310, metadata !DIExpression()), !dbg !2318
  %1 = load ptr, ptr %key, align 8, !dbg !2319
  %call2 = call i32 @static_key_count(ptr noundef %1) #18, !dbg !2319
  %cmp = icmp sgt i32 %call2, 0, !dbg !2319
  %conv = zext i1 %cmp to i32, !dbg !2319
  store i32 %conv, ptr %tmp, align 4, !dbg !2321
  %2 = load i32, ptr %tmp, align 4, !dbg !2319
  %tobool = icmp ne i32 %2, 0, !dbg !2323
  %frombool = zext i1 %tobool to i8, !dbg !2318
  store i8 %frombool, ptr %enabled, align 1, !dbg !2318
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #19, !dbg !2324
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !2311, metadata !DIExpression()), !dbg !2325
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2326
  %call3 = call zeroext i1 @jump_entry_is_branch(ptr noundef %3) #18, !dbg !2327
  %frombool4 = zext i1 %call3 to i8, !dbg !2325
  store i8 %frombool4, ptr %branch, align 1, !dbg !2325
  %4 = load i8, ptr %enabled, align 1, !dbg !2328, !range !1414, !noundef !359
  %tobool5 = trunc i8 %4 to i1, !dbg !2328
  %conv6 = zext i1 %tobool5 to i32, !dbg !2328
  %5 = load i8, ptr %branch, align 1, !dbg !2329, !range !1414, !noundef !359
  %tobool7 = trunc i8 %5 to i1, !dbg !2329
  %conv8 = zext i1 %tobool7 to i32, !dbg !2329
  %xor = xor i32 %conv6, %conv8, !dbg !2330
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #19, !dbg !2331
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #19, !dbg !2331
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #19, !dbg !2331
  ret i32 %xor, !dbg !2332
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_jump_label_transform_static(ptr noundef %entry1, i32 noundef %type) #0 align 16 !dbg !2333 {
entry:
  %entry.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2337, metadata !DIExpression()), !dbg !2339
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2338, metadata !DIExpression()), !dbg !2340
  ret void, !dbg !2341
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @init_section_contains(ptr noundef %virt, i64 noundef %size) #6 align 16 !dbg !2342 {
entry:
  %virt.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %virt, ptr %virt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virt.addr, metadata !2347, metadata !DIExpression()), !dbg !2349
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2348, metadata !DIExpression()), !dbg !2350
  %0 = load ptr, ptr %virt.addr, align 8, !dbg !2351
  %1 = load i64, ptr %size.addr, align 8, !dbg !2352
  %call = call zeroext i1 @memory_contains(ptr noundef @__init_begin, ptr noundef @__init_end, ptr noundef %0, i64 noundef %1) #18, !dbg !2353
  ret i1 %call, !dbg !2354
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @jump_entry_code(ptr noundef %entry1) #6 align 16 !dbg !2355 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2361, metadata !DIExpression()), !dbg !2362
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2363
  %code = getelementptr inbounds %struct.jump_entry, ptr %0, i32 0, i32 0, !dbg !2364
  %1 = ptrtoint ptr %code to i64, !dbg !2365
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2366
  %code2 = getelementptr inbounds %struct.jump_entry, ptr %2, i32 0, i32 0, !dbg !2367
  %3 = load i32, ptr %code2, align 8, !dbg !2367
  %conv = sext i32 %3 to i64, !dbg !2366
  %add = add i64 %1, %conv, !dbg !2368
  ret i64 %add, !dbg !2369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jump_entry_set_init(ptr noundef %entry1, i1 noundef zeroext %set) #6 align 16 !dbg !2370 {
entry:
  %entry.addr = alloca ptr, align 8
  %set.addr = alloca i8, align 1
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2374, metadata !DIExpression()), !dbg !2376
  %frombool = zext i1 %set to i8
  store i8 %frombool, ptr %set.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !2375, metadata !DIExpression()), !dbg !2377
  %0 = load i8, ptr %set.addr, align 1, !dbg !2378, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !2378
  br i1 %tobool, label %if.then, label %if.else, !dbg !2380

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2381
  %key = getelementptr inbounds %struct.jump_entry, ptr %1, i32 0, i32 2, !dbg !2382
  %2 = load i64, ptr %key, align 8, !dbg !2383
  %or = or i64 %2, 2, !dbg !2383
  store i64 %or, ptr %key, align 8, !dbg !2383
  br label %if.end, !dbg !2381

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2384
  %key2 = getelementptr inbounds %struct.jump_entry, ptr %3, i32 0, i32 2, !dbg !2385
  %4 = load i64, ptr %key2, align 8, !dbg !2386
  %and = and i64 %4, -3, !dbg !2386
  store i64 %and, ptr %key2, align 8, !dbg !2386
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2387
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @jump_entry_key(ptr noundef %entry1) #6 align 16 !dbg !2388 {
entry:
  %entry.addr = alloca ptr, align 8
  %offset = alloca i64, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #19, !dbg !2395
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !2393, metadata !DIExpression()), !dbg !2396
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2397
  %key = getelementptr inbounds %struct.jump_entry, ptr %0, i32 0, i32 2, !dbg !2398
  %1 = load i64, ptr %key, align 8, !dbg !2398
  %and = and i64 %1, -4, !dbg !2399
  store i64 %and, ptr %offset, align 8, !dbg !2396
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2400
  %key2 = getelementptr inbounds %struct.jump_entry, ptr %2, i32 0, i32 2, !dbg !2401
  %3 = ptrtoint ptr %key2 to i64, !dbg !2402
  %4 = load i64, ptr %offset, align 8, !dbg !2403
  %add = add i64 %3, %4, !dbg !2404
  %5 = inttoptr i64 %add to ptr, !dbg !2405
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #19, !dbg !2406
  ret ptr %5, !dbg !2407
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_key_set_entries(ptr noundef %key, ptr noundef %entries) #0 align 16 !dbg !2408 {
entry:
  %key.addr = alloca ptr, align 8
  %entries.addr = alloca ptr, align 8
  %type = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2412, metadata !DIExpression()), !dbg !2420
  store ptr %entries, ptr %entries.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entries.addr, metadata !2413, metadata !DIExpression()), !dbg !2421
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #19, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %type, metadata !2414, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2415, metadata !DIExpression()), !dbg !2424
  %0 = load ptr, ptr %entries.addr, align 8, !dbg !2424
  %1 = ptrtoint ptr %0 to i64, !dbg !2424
  %and = and i64 %1, 3, !dbg !2424
  %tobool = icmp ne i64 %and, 0, !dbg !2424
  %lnot = xor i1 %tobool, true, !dbg !2424
  %lnot1 = xor i1 %lnot, true, !dbg !2424
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2424
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2424
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !2425
  %tobool2 = icmp ne i32 %2, 0, !dbg !2425
  %lnot3 = xor i1 %tobool2, true, !dbg !2425
  %lnot5 = xor i1 %lnot3, true, !dbg !2425
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2425
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2425
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2425
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2425
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2424

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2425

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !2426
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2417, metadata !DIExpression()), !dbg !2426
  store i32 2307, ptr %__flags, align 4, !dbg !2426
  br label %do.body8, !dbg !2426

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !2427

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !2427

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !2426

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !2429
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 446, i32 %3, i64 12) #19, !dbg !2429, !srcloc !2431
  br label %do.cond10, !dbg !2429

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2429

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !2426

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !2432

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2432

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !2425
  br label %do.cond15, !dbg !2426

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !2426

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !2426

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2424
  %tobool17 = icmp ne i32 %4, 0, !dbg !2424
  %lnot18 = xor i1 %tobool17, true, !dbg !2424
  %lnot20 = xor i1 %lnot18, true, !dbg !2424
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !2424
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !2424
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !2424
  store i64 %expval23, ptr %tmp, align 8, !dbg !2425
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2434
  %5 = load i64, ptr %tmp, align 8, !dbg !2424
  %6 = load ptr, ptr %key.addr, align 8, !dbg !2435
  %7 = getelementptr inbounds %struct.static_key, ptr %6, i32 0, i32 1, !dbg !2436
  %8 = load i64, ptr %7, align 8, !dbg !2436
  %and24 = and i64 %8, 3, !dbg !2437
  store i64 %and24, ptr %type, align 8, !dbg !2438
  %9 = load ptr, ptr %entries.addr, align 8, !dbg !2439
  %10 = load ptr, ptr %key.addr, align 8, !dbg !2440
  %11 = getelementptr inbounds %struct.static_key, ptr %10, i32 0, i32 1, !dbg !2441
  store ptr %9, ptr %11, align 8, !dbg !2442
  %12 = load i64, ptr %type, align 8, !dbg !2443
  %13 = load ptr, ptr %key.addr, align 8, !dbg !2444
  %14 = getelementptr inbounds %struct.static_key, ptr %13, i32 0, i32 1, !dbg !2445
  %15 = load i64, ptr %14, align 8, !dbg !2446
  %or = or i64 %15, %12, !dbg !2446
  store i64 %or, ptr %14, align 8, !dbg !2446
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #19, !dbg !2447
  ret void, !dbg !2447
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @jump_label_init_type(ptr noundef %entry1) #0 align 16 !dbg !2448 {
entry:
  %entry.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %type = alloca i8, align 1
  %branch = alloca i8, align 1
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2450, metadata !DIExpression()), !dbg !2454
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #19, !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %key, metadata !2451, metadata !DIExpression()), !dbg !2456
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2457
  %call = call ptr @jump_entry_key(ptr noundef %0) #18, !dbg !2458
  store ptr %call, ptr %key, align 8, !dbg !2456
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #19, !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %type, metadata !2452, metadata !DIExpression()), !dbg !2460
  %1 = load ptr, ptr %key, align 8, !dbg !2461
  %call2 = call zeroext i1 @static_key_type(ptr noundef %1) #18, !dbg !2462
  %frombool = zext i1 %call2 to i8, !dbg !2460
  store i8 %frombool, ptr %type, align 1, !dbg !2460
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #19, !dbg !2463
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !2453, metadata !DIExpression()), !dbg !2464
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2465
  %call3 = call zeroext i1 @jump_entry_is_branch(ptr noundef %2) #18, !dbg !2466
  %frombool4 = zext i1 %call3 to i8, !dbg !2464
  store i8 %frombool4, ptr %branch, align 1, !dbg !2464
  %3 = load i8, ptr %type, align 1, !dbg !2467, !range !1414, !noundef !359
  %tobool = trunc i8 %3 to i1, !dbg !2467
  %conv = zext i1 %tobool to i32, !dbg !2467
  %4 = load i8, ptr %branch, align 1, !dbg !2468, !range !1414, !noundef !359
  %tobool5 = trunc i8 %4 to i1, !dbg !2468
  %conv6 = zext i1 %tobool5 to i32, !dbg !2468
  %xor = xor i32 %conv, %conv6, !dbg !2469
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #19, !dbg !2470
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #19, !dbg !2470
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #19, !dbg !2470
  ret i32 %xor, !dbg !2471
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_type(ptr noundef %key) #6 align 16 !dbg !2472 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2474, metadata !DIExpression()), !dbg !2475
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2476
  %1 = getelementptr inbounds %struct.static_key, ptr %0, i32 0, i32 1, !dbg !2477
  %2 = load i64, ptr %1, align 8, !dbg !2477
  %and = and i64 %2, 1, !dbg !2478
  %tobool = icmp ne i64 %and, 0, !dbg !2476
  ret i1 %tobool, !dbg !2479
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @jump_entry_is_branch(ptr noundef %entry1) #6 align 16 !dbg !2480 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2484, metadata !DIExpression()), !dbg !2485
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2486
  %key = getelementptr inbounds %struct.jump_entry, ptr %0, i32 0, i32 2, !dbg !2487
  %1 = load i64, ptr %key, align 8, !dbg !2487
  %and = and i64 %1, 1, !dbg !2488
  %tobool = icmp ne i64 %and, 0, !dbg !2489
  ret i1 %tobool, !dbg !2490
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_jump_label__247_808_jump_label_init_moduleearly() #8 section ".init.text" align 16 !dbg !2491 {
entry:
  %call = call i32 @jump_label_init_module() #20, !dbg !2492
  ret i32 %call, !dbg !2492
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @jump_label_init_module() #8 section ".init.text" align 16 !dbg !2493 {
entry:
  %call = call i32 @register_module_notifier(ptr noundef @jump_label_module_nb) #18, !dbg !2494
  ret i32 %call, !dbg !2495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @jump_label_text_reserved(ptr noundef %start, ptr noundef %end) #0 align 16 !dbg !2496 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %init = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2498, metadata !DIExpression()), !dbg !2502
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2499, metadata !DIExpression()), !dbg !2503
  call void @llvm.lifetime.start.p0(i64 1, ptr %init) #19, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %init, metadata !2500, metadata !DIExpression()), !dbg !2505
  %0 = load i32, ptr @system_state, align 4, !dbg !2506
  %cmp = icmp ult i32 %0, 3, !dbg !2507
  %frombool = zext i1 %cmp to i8, !dbg !2505
  store i8 %frombool, ptr %init, align 1, !dbg !2505
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2501, metadata !DIExpression()), !dbg !2509
  %1 = load ptr, ptr %start.addr, align 8, !dbg !2510
  %2 = load ptr, ptr %end.addr, align 8, !dbg !2511
  %3 = load i8, ptr %init, align 1, !dbg !2512, !range !1414, !noundef !359
  %tobool = trunc i8 %3 to i1, !dbg !2512
  %call = call i32 @__jump_label_text_reserved(ptr noundef @__start___jump_table, ptr noundef @__stop___jump_table, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %tobool) #18, !dbg !2513
  store i32 %call, ptr %ret, align 4, !dbg !2509
  %4 = load i32, ptr %ret, align 4, !dbg !2514
  %tobool1 = icmp ne i32 %4, 0, !dbg !2514
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2516

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !dbg !2517
  store i32 %5, ptr %retval, align 4, !dbg !2518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2518

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %start.addr, align 8, !dbg !2519
  %7 = load ptr, ptr %end.addr, align 8, !dbg !2520
  %call2 = call i32 @__jump_label_mod_text_reserved(ptr noundef %6, ptr noundef %7) #18, !dbg !2521
  store i32 %call2, ptr %ret, align 4, !dbg !2522
  %8 = load i32, ptr %ret, align 4, !dbg !2523
  store i32 %8, ptr %retval, align 4, !dbg !2524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2524

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !2525
  call void @llvm.lifetime.end.p0(i64 1, ptr %init) #19, !dbg !2525
  %9 = load i32, ptr %retval, align 4, !dbg !2525
  ret i32 %9, !dbg !2525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__jump_label_text_reserved(ptr noundef %iter_start, ptr noundef %iter_stop, ptr noundef %start, ptr noundef %end, i1 noundef zeroext %init) #0 align 16 !dbg !2526 {
entry:
  %retval = alloca i32, align 4
  %iter_start.addr = alloca ptr, align 8
  %iter_stop.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %init.addr = alloca i8, align 1
  %iter = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %iter_start, ptr %iter_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_start.addr, metadata !2530, metadata !DIExpression()), !dbg !2536
  store ptr %iter_stop, ptr %iter_stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_stop.addr, metadata !2531, metadata !DIExpression()), !dbg !2537
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2532, metadata !DIExpression()), !dbg !2538
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2533, metadata !DIExpression()), !dbg !2539
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !2534, metadata !DIExpression()), !dbg !2540
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #19, !dbg !2541
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !2535, metadata !DIExpression()), !dbg !2542
  %0 = load ptr, ptr %iter_start.addr, align 8, !dbg !2543
  store ptr %0, ptr %iter, align 8, !dbg !2544
  br label %while.cond, !dbg !2545

while.cond:                                       ; preds = %if.end4, %entry
  %1 = load ptr, ptr %iter, align 8, !dbg !2546
  %2 = load ptr, ptr %iter_stop.addr, align 8, !dbg !2547
  %cmp = icmp ult ptr %1, %2, !dbg !2548
  br i1 %cmp, label %while.body, label %while.end, !dbg !2545

while.body:                                       ; preds = %while.cond
  %3 = load i8, ptr %init.addr, align 1, !dbg !2549, !range !1414, !noundef !359
  %tobool = trunc i8 %3 to i1, !dbg !2549
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2552

lor.lhs.false:                                    ; preds = %while.body
  %4 = load ptr, ptr %iter, align 8, !dbg !2553
  %call = call zeroext i1 @jump_entry_is_init(ptr noundef %4) #18, !dbg !2554
  br i1 %call, label %if.end4, label %if.then, !dbg !2555

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %5 = load ptr, ptr %iter, align 8, !dbg !2556
  %6 = load ptr, ptr %start.addr, align 8, !dbg !2559
  %7 = load ptr, ptr %end.addr, align 8, !dbg !2560
  %call1 = call i32 @addr_conflict(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18, !dbg !2561
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2561
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2562

if.then3:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4, !dbg !2563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2563

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !2564

if.end4:                                          ; preds = %if.end, %lor.lhs.false
  %8 = load ptr, ptr %iter, align 8, !dbg !2565
  %incdec.ptr = getelementptr %struct.jump_entry, ptr %8, i32 1, !dbg !2565
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !2565
  br label %while.cond, !dbg !2545, !llvm.loop !2566

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !2568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2568

cleanup:                                          ; preds = %while.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #19, !dbg !2569
  %9 = load i32, ptr %retval, align 4, !dbg !2569
  ret i32 %9, !dbg !2569
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__jump_label_mod_text_reserved(ptr noundef %start, ptr noundef %end) #0 align 16 !dbg !1322 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1326, metadata !DIExpression()), !dbg !2570
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1327, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #19, !dbg !2572
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !1328, metadata !DIExpression()), !dbg !2573
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1329, metadata !DIExpression()), !dbg !2575
  br label %do.body, !dbg !2576

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !2577
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !2577, !srcloc !2579
  br label %do.cond, !dbg !2577

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2577

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %start.addr, align 8, !dbg !2580
  %1 = ptrtoint ptr %0 to i64, !dbg !2581
  %call = call ptr @__module_text_address(i64 noundef %1) #18, !dbg !2582
  store ptr %call, ptr %mod, align 8, !dbg !2583
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1330, metadata !DIExpression()), !dbg !2584
  %2 = load ptr, ptr %end.addr, align 8, !dbg !2584
  %3 = ptrtoint ptr %2 to i64, !dbg !2584
  %call1 = call ptr @__module_text_address(i64 noundef %3) #18, !dbg !2584
  %4 = load ptr, ptr %mod, align 8, !dbg !2584
  %cmp = icmp ne ptr %call1, %4, !dbg !2584
  %lnot = xor i1 %cmp, true, !dbg !2584
  %lnot2 = xor i1 %lnot, true, !dbg !2584
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2584
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2584
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !2585
  %tobool = icmp ne i32 %5, 0, !dbg !2585
  %lnot3 = xor i1 %tobool, true, !dbg !2585
  %lnot5 = xor i1 %lnot3, true, !dbg !2585
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2585
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2585
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2585
  %tobool7 = icmp ne i64 %expval, 0, !dbg !2585
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2584

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !2585

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !2586
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1332, metadata !DIExpression()), !dbg !2586
  store i32 2307, ptr %__flags, align 4, !dbg !2586
  br label %do.body9, !dbg !2586

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !2587

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2587

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !2586

do.body12:                                        ; preds = %do.end11
  %6 = load i32, ptr %__flags, align 4, !dbg !2589
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 616, i32 %6, i64 12) #19, !dbg !2589, !srcloc !2591
  br label %do.cond13, !dbg !2589

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !2589

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !2586

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !2592

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !2592

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !2585
  br label %do.cond18, !dbg !2586

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !2586

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !2586

if.end:                                           ; preds = %do.end19, %do.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !2584
  %tobool20 = icmp ne i32 %7, 0, !dbg !2584
  %lnot21 = xor i1 %tobool20, true, !dbg !2584
  %lnot23 = xor i1 %lnot21, true, !dbg !2584
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !2584
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !2584
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !2584
  store i64 %expval26, ptr %tmp, align 8, !dbg !2585
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !2594
  %8 = load i64, ptr %tmp, align 8, !dbg !2584
  %9 = load ptr, ptr %mod, align 8, !dbg !2595
  %call27 = call zeroext i1 @try_module_get(ptr noundef %9) #18, !dbg !2597
  br i1 %call27, label %if.end29, label %if.then28, !dbg !2598

if.then28:                                        ; preds = %if.end
  store ptr null, ptr %mod, align 8, !dbg !2599
  br label %if.end29, !dbg !2600

if.end29:                                         ; preds = %if.then28, %if.end
  br label %do.body30, !dbg !2601

do.body30:                                        ; preds = %if.end29
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !2602, !srcloc !2604
  %call31 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !2605
  %lnot32 = xor i1 %call31, true, !dbg !2605
  %lnot34 = xor i1 %lnot32, true, !dbg !2605
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !2605
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !2605
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !2605
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !2605
  br i1 %tobool38, label %if.then39, label %if.end43, !dbg !2602

if.then39:                                        ; preds = %do.body30
  br label %do.body40, !dbg !2605

do.body40:                                        ; preds = %if.then39
  %10 = call i64 @llvm.read_register.i64(metadata !1346), !dbg !2607
  %11 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %10) #19, !dbg !2607, !srcloc !2609
  call void @llvm.write_register.i64(metadata !1346, i64 %11), !dbg !2607
  br label %do.cond41, !dbg !2607

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !2607

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !2607

if.end43:                                         ; preds = %do.end42, %do.body30
  br label %do.cond44, !dbg !2602

do.cond44:                                        ; preds = %if.end43
  br label %do.end45, !dbg !2602

do.end45:                                         ; preds = %do.cond44
  %12 = load ptr, ptr %mod, align 8, !dbg !2610
  %tobool46 = icmp ne ptr %12, null, !dbg !2610
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !2612

if.then47:                                        ; preds = %do.end45
  store i32 0, ptr %retval, align 4, !dbg !2613
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2613

if.end48:                                         ; preds = %do.end45
  %13 = load ptr, ptr %mod, align 8, !dbg !2614
  %jump_entries = getelementptr inbounds %struct.module, ptr %13, i32 0, i32 41, !dbg !2615
  %14 = load ptr, ptr %jump_entries, align 16, !dbg !2615
  %15 = load ptr, ptr %mod, align 8, !dbg !2616
  %jump_entries49 = getelementptr inbounds %struct.module, ptr %15, i32 0, i32 41, !dbg !2617
  %16 = load ptr, ptr %jump_entries49, align 16, !dbg !2617
  %17 = load ptr, ptr %mod, align 8, !dbg !2618
  %num_jump_entries = getelementptr inbounds %struct.module, ptr %17, i32 0, i32 42, !dbg !2619
  %18 = load i32, ptr %num_jump_entries, align 8, !dbg !2619
  %idx.ext = zext i32 %18 to i64, !dbg !2620
  %add.ptr = getelementptr %struct.jump_entry, ptr %16, i64 %idx.ext, !dbg !2620
  %19 = load ptr, ptr %start.addr, align 8, !dbg !2621
  %20 = load ptr, ptr %end.addr, align 8, !dbg !2622
  %21 = load ptr, ptr %mod, align 8, !dbg !2623
  %state = getelementptr inbounds %struct.module, ptr %21, i32 0, i32 0, !dbg !2624
  %22 = load i32, ptr %state, align 64, !dbg !2624
  %cmp50 = icmp eq i32 %22, 1, !dbg !2625
  %call52 = call i32 @__jump_label_text_reserved(ptr noundef %14, ptr noundef %add.ptr, ptr noundef %19, ptr noundef %20, i1 noundef zeroext %cmp50) #18, !dbg !2626
  store i32 %call52, ptr %ret, align 4, !dbg !2627
  %23 = load ptr, ptr %mod, align 8, !dbg !2628
  call void @module_put(ptr noundef %23) #18, !dbg !2629
  %24 = load i32, ptr %ret, align 4, !dbg !2630
  store i32 %24, ptr %retval, align 4, !dbg !2631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2631

cleanup:                                          ; preds = %if.end48, %if.then47
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #19, !dbg !2632
  %25 = load i32, ptr %retval, align 4, !dbg !2632
  ret i32 %25, !dbg !2632
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2633 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2641, metadata !DIExpression()), !dbg !2643
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2642, metadata !DIExpression()), !dbg !2644
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2645
  %1 = load i64, ptr %size.addr, align 8, !dbg !2646
  %conv = trunc i64 %1 to i32, !dbg !2646
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !2647
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2648
  %3 = load i64, ptr %size.addr, align 8, !dbg !2648
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !2648
  ret void, !dbg !2649
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !2650 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2653, metadata !DIExpression()), !dbg !2654
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2655
  %call = call i32 @arch_atomic_read(ptr noundef %0) #18, !dbg !2656
  ret i32 %call, !dbg !2657
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !2658 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2663, metadata !DIExpression()), !dbg !2665
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2664, metadata !DIExpression()), !dbg !2666
  ret i1 true, !dbg !2667
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !2668 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2673, metadata !DIExpression()), !dbg !2676
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2674, metadata !DIExpression()), !dbg !2677
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2675, metadata !DIExpression()), !dbg !2678
  ret void, !dbg !2679
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !2680 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2683, metadata !DIExpression()), !dbg !2684
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2685
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2685
  %1 = load volatile i32, ptr %counter, align 4, !dbg !2685
  ret i32 %1, !dbg !2686
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2687 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2689, metadata !DIExpression()), !dbg !2691
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2690, metadata !DIExpression()), !dbg !2692
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2693
  %1 = load i64, ptr %size.addr, align 8, !dbg !2694
  %conv = trunc i64 %1 to i32, !dbg !2694
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !2695
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2696
  %3 = load i64, ptr %size.addr, align 8, !dbg !2696
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #18, !dbg !2696
  ret void, !dbg !2697
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !2698 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2700, metadata !DIExpression()), !dbg !2703
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2701, metadata !DIExpression()), !dbg !2704
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2702, metadata !DIExpression()), !dbg !2705
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2706
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2707
  %2 = load i32, ptr %new.addr, align 4, !dbg !2708
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18, !dbg !2709
  ret i1 %call, !dbg !2710
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !2711 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2713, metadata !DIExpression()), !dbg !2715
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2714, metadata !DIExpression()), !dbg !2716
  ret i1 true, !dbg !2717
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !2718 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2720, metadata !DIExpression()), !dbg !2729
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2721, metadata !DIExpression()), !dbg !2730
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2722, metadata !DIExpression()), !dbg !2731
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #19, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %success, metadata !2723, metadata !DIExpression()), !dbg !2732
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #19, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !2725, metadata !DIExpression()), !dbg !2732
  %0 = load ptr, ptr %old.addr, align 8, !dbg !2732
  store ptr %0, ptr %_old, align 8, !dbg !2732
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #19, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2726, metadata !DIExpression()), !dbg !2732
  %1 = load ptr, ptr %_old, align 8, !dbg !2732
  %2 = load i32, ptr %1, align 4, !dbg !2732
  store i32 %2, ptr %__old, align 4, !dbg !2732
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #19, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2727, metadata !DIExpression()), !dbg !2732
  %3 = load i32, ptr %new.addr, align 4, !dbg !2732
  store i32 %3, ptr %__new, align 4, !dbg !2732
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !2732
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2728, metadata !DIExpression()), !dbg !2732
  %4 = load ptr, ptr %v.addr, align 8, !dbg !2732
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !2732
  store ptr %counter, ptr %__ptr, align 8, !dbg !2732
  %5 = load ptr, ptr %__ptr, align 8, !dbg !2732
  %6 = load i32, ptr %__old, align 4, !dbg !2732
  %7 = load i32, ptr %__new, align 4, !dbg !2732
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #19, !dbg !2732, !srcloc !2733
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !2732
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !2732
  %9 = icmp ult i8 %asmresult, 2, !dbg !2732
  call void @llvm.assume(i1 %9), !dbg !2732
  store i8 %asmresult, ptr %success, align 1, !dbg !2732
  store i32 %asmresult1, ptr %__old, align 4, !dbg !2732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !2732
  %10 = load i8, ptr %success, align 1, !dbg !2734, !range !1414, !noundef !359
  %tobool = trunc i8 %10 to i1, !dbg !2734
  %lnot = xor i1 %tobool, true, !dbg !2734
  %lnot2 = xor i1 %lnot, true, !dbg !2734
  %lnot3 = xor i1 %lnot2, true, !dbg !2734
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2734
  %conv = sext i32 %lnot.ext to i64, !dbg !2734
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2734
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2734
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2732

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !2734
  %12 = load ptr, ptr %_old, align 8, !dbg !2734
  store i32 %11, ptr %12, align 4, !dbg !2734
  br label %if.end, !dbg !2734

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !2732, !range !1414, !noundef !359
  %tobool5 = trunc i8 %13 to i1, !dbg !2732
  %lnot6 = xor i1 %tobool5, true, !dbg !2732
  %lnot8 = xor i1 %lnot6, true, !dbg !2732
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2732
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2732
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !2732
  store i64 %expval11, ptr %tmp, align 8, !dbg !2734
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #19, !dbg !2736
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #19, !dbg !2736
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #19, !dbg !2736
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #19, !dbg !2736
  %14 = load i64, ptr %tmp, align 8, !dbg !2732
  %tobool12 = icmp ne i64 %14, 0, !dbg !2736
  ret i1 %tobool12, !dbg !2737
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !2738 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2740, metadata !DIExpression()), !dbg !2743
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2741, metadata !DIExpression()), !dbg !2744
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2742, metadata !DIExpression()), !dbg !2745
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2746
  %1 = load i32, ptr %old.addr, align 4, !dbg !2747
  %2 = load i32, ptr %new.addr, align 4, !dbg !2748
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #18, !dbg !2749
  ret i32 %call, !dbg !2750
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #4 align 16 !dbg !2751 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2753, metadata !DIExpression()), !dbg !2761
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2754, metadata !DIExpression()), !dbg !2762
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2755, metadata !DIExpression()), !dbg !2763
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #19, !dbg !2764
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2756, metadata !DIExpression()), !dbg !2764
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #19, !dbg !2764
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2758, metadata !DIExpression()), !dbg !2764
  %0 = load i32, ptr %old.addr, align 4, !dbg !2764
  store i32 %0, ptr %__old, align 4, !dbg !2764
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #19, !dbg !2764
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2759, metadata !DIExpression()), !dbg !2764
  %1 = load i32, ptr %new.addr, align 4, !dbg !2764
  store i32 %1, ptr %__new, align 4, !dbg !2764
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #19, !dbg !2764
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2760, metadata !DIExpression()), !dbg !2764
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2764
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !2764
  store ptr %counter, ptr %__ptr, align 8, !dbg !2764
  %3 = load ptr, ptr %__ptr, align 8, !dbg !2764
  %4 = load i32, ptr %__new, align 4, !dbg !2764
  %5 = load i32, ptr %__old, align 4, !dbg !2764
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #19, !dbg !2764, !srcloc !2765
  store i32 %6, ptr %__ret, align 4, !dbg !2764
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #19, !dbg !2764
  %7 = load i32, ptr %__ret, align 4, !dbg !2764
  store i32 %7, ptr %tmp, align 4, !dbg !2764
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #19, !dbg !2766
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #19, !dbg !2766
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #19, !dbg !2766
  %8 = load i32, ptr %tmp, align 4, !dbg !2764
  ret i32 %8, !dbg !2767
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2768 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2770, metadata !DIExpression()), !dbg !2772
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2771, metadata !DIExpression()), !dbg !2773
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2774
  %1 = load i64, ptr %size.addr, align 8, !dbg !2775
  %conv = trunc i64 %1 to i32, !dbg !2775
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !2776
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2777
  %3 = load i64, ptr %size.addr, align 8, !dbg !2777
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !2777
  ret void, !dbg !2778
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set_release(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !2779 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2781, metadata !DIExpression()), !dbg !2783
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2782, metadata !DIExpression()), !dbg !2784
  br label %do.body, !dbg !2785

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2788

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2790

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2788

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !2792

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !2794

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !2792, !srcloc !2796
  br label %do.body5, !dbg !2792

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2797

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2799

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2797

do.body8:                                         ; preds = %do.end7
  %0 = load i32, ptr %i.addr, align 4, !dbg !2801
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2801
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2801
  store volatile i32 %0, ptr %counter, align 4, !dbg !2801
  br label %do.end9, !dbg !2801

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2797

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !2792

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !2788

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !2803
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !2804 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2806, metadata !DIExpression()), !dbg !2808
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2807, metadata !DIExpression()), !dbg !2809
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2810
  %1 = load i32, ptr %i.addr, align 4, !dbg !2811
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !2812
  ret void, !dbg !2813
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !2814 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2816, metadata !DIExpression()), !dbg !2818
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2817, metadata !DIExpression()), !dbg !2819
  br label %do.body, !dbg !2820

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !2821
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2821
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !2821
  store volatile i32 %0, ptr %counter, align 4, !dbg !2821
  br label %do.end, !dbg !2821

do.end:                                           ; preds = %do.body
  ret void, !dbg !2823
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !2824 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2828, metadata !DIExpression()), !dbg !2829
  br label %do.body, !dbg !2830

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2831

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2833
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #18, !dbg !2834
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2835
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #18, !dbg !2836
  ret i1 %call, !dbg !2837
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !2838 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2840, metadata !DIExpression()), !dbg !2841
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2842
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #18, !dbg !2843
  ret i1 %call, !dbg !2844
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #4 align 16 !dbg !2845 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2847, metadata !DIExpression()), !dbg !2850
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #19, !dbg !2851
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2848, metadata !DIExpression()), !dbg !2851
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2851
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !2851
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #19, !dbg !2851, !srcloc !2852
  %2 = icmp ult i8 %1, 2, !dbg !2851
  call void @llvm.assume(i1 %2), !dbg !2851
  store i8 %1, ptr %c, align 1, !dbg !2851
  %3 = load i8, ptr %c, align 1, !dbg !2851, !range !1414, !noundef !359
  %tobool = trunc i8 %3 to i1, !dbg !2851
  %frombool = zext i1 %tobool to i8, !dbg !2851
  store i8 %frombool, ptr %tmp, align 1, !dbg !2851
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #19, !dbg !2853
  %4 = load i8, ptr %tmp, align 1, !dbg !2851, !range !1414, !noundef !359
  %tobool1 = trunc i8 %4 to i1, !dbg !2851
  ret i1 %tobool1, !dbg !2854
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #6 align 16 !dbg !2855 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !2859, metadata !DIExpression()), !dbg !2862
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !2860, metadata !DIExpression()), !dbg !2863
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !2861, metadata !DIExpression()), !dbg !2864
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !2865
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !2866
  %2 = load i64, ptr %delay.addr, align 8, !dbg !2867
  %call = call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #18, !dbg !2868
  ret i1 %call, !dbg !2869
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2870 dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jump_label_swap(ptr noundef %a, ptr noundef %b, i32 noundef %size) #0 align 16 !dbg !2873 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %delta = alloca i64, align 8
  %jea = alloca ptr, align 8
  %jeb = alloca ptr, align 8
  %tmp = alloca %struct.jump_entry, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2877, metadata !DIExpression()), !dbg !2884
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2878, metadata !DIExpression()), !dbg !2885
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2879, metadata !DIExpression()), !dbg !2886
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #19, !dbg !2887
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !2880, metadata !DIExpression()), !dbg !2888
  %0 = load ptr, ptr %a.addr, align 8, !dbg !2889
  %1 = ptrtoint ptr %0 to i64, !dbg !2890
  %2 = load ptr, ptr %b.addr, align 8, !dbg !2891
  %3 = ptrtoint ptr %2 to i64, !dbg !2892
  %sub = sub i64 %1, %3, !dbg !2893
  store i64 %sub, ptr %delta, align 8, !dbg !2888
  call void @llvm.lifetime.start.p0(i64 8, ptr %jea) #19, !dbg !2894
  call void @llvm.dbg.declare(metadata ptr %jea, metadata !2881, metadata !DIExpression()), !dbg !2895
  %4 = load ptr, ptr %a.addr, align 8, !dbg !2896
  store ptr %4, ptr %jea, align 8, !dbg !2895
  call void @llvm.lifetime.start.p0(i64 8, ptr %jeb) #19, !dbg !2897
  call void @llvm.dbg.declare(metadata ptr %jeb, metadata !2882, metadata !DIExpression()), !dbg !2898
  %5 = load ptr, ptr %b.addr, align 8, !dbg !2899
  store ptr %5, ptr %jeb, align 8, !dbg !2898
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #19, !dbg !2900
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2883, metadata !DIExpression()), !dbg !2901
  %6 = load ptr, ptr %jea, align 8, !dbg !2902
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %6, i64 16, i1 false), !dbg !2903
  %7 = load ptr, ptr %jeb, align 8, !dbg !2904
  %code = getelementptr inbounds %struct.jump_entry, ptr %7, i32 0, i32 0, !dbg !2905
  %8 = load i32, ptr %code, align 8, !dbg !2905
  %conv = sext i32 %8 to i64, !dbg !2904
  %9 = load i64, ptr %delta, align 8, !dbg !2906
  %sub1 = sub i64 %conv, %9, !dbg !2907
  %conv2 = trunc i64 %sub1 to i32, !dbg !2904
  %10 = load ptr, ptr %jea, align 8, !dbg !2908
  %code3 = getelementptr inbounds %struct.jump_entry, ptr %10, i32 0, i32 0, !dbg !2909
  store i32 %conv2, ptr %code3, align 8, !dbg !2910
  %11 = load ptr, ptr %jeb, align 8, !dbg !2911
  %target = getelementptr inbounds %struct.jump_entry, ptr %11, i32 0, i32 1, !dbg !2912
  %12 = load i32, ptr %target, align 4, !dbg !2912
  %conv4 = sext i32 %12 to i64, !dbg !2911
  %13 = load i64, ptr %delta, align 8, !dbg !2913
  %sub5 = sub i64 %conv4, %13, !dbg !2914
  %conv6 = trunc i64 %sub5 to i32, !dbg !2911
  %14 = load ptr, ptr %jea, align 8, !dbg !2915
  %target7 = getelementptr inbounds %struct.jump_entry, ptr %14, i32 0, i32 1, !dbg !2916
  store i32 %conv6, ptr %target7, align 4, !dbg !2917
  %15 = load ptr, ptr %jeb, align 8, !dbg !2918
  %key = getelementptr inbounds %struct.jump_entry, ptr %15, i32 0, i32 2, !dbg !2919
  %16 = load i64, ptr %key, align 8, !dbg !2919
  %17 = load i64, ptr %delta, align 8, !dbg !2920
  %sub8 = sub i64 %16, %17, !dbg !2921
  %18 = load ptr, ptr %jea, align 8, !dbg !2922
  %key9 = getelementptr inbounds %struct.jump_entry, ptr %18, i32 0, i32 2, !dbg !2923
  store i64 %sub8, ptr %key9, align 8, !dbg !2924
  %code10 = getelementptr inbounds %struct.jump_entry, ptr %tmp, i32 0, i32 0, !dbg !2925
  %19 = load i32, ptr %code10, align 8, !dbg !2925
  %conv11 = sext i32 %19 to i64, !dbg !2926
  %20 = load i64, ptr %delta, align 8, !dbg !2927
  %add = add i64 %conv11, %20, !dbg !2928
  %conv12 = trunc i64 %add to i32, !dbg !2926
  %21 = load ptr, ptr %jeb, align 8, !dbg !2929
  %code13 = getelementptr inbounds %struct.jump_entry, ptr %21, i32 0, i32 0, !dbg !2930
  store i32 %conv12, ptr %code13, align 8, !dbg !2931
  %target14 = getelementptr inbounds %struct.jump_entry, ptr %tmp, i32 0, i32 1, !dbg !2932
  %22 = load i32, ptr %target14, align 4, !dbg !2932
  %conv15 = sext i32 %22 to i64, !dbg !2933
  %23 = load i64, ptr %delta, align 8, !dbg !2934
  %add16 = add i64 %conv15, %23, !dbg !2935
  %conv17 = trunc i64 %add16 to i32, !dbg !2933
  %24 = load ptr, ptr %jeb, align 8, !dbg !2936
  %target18 = getelementptr inbounds %struct.jump_entry, ptr %24, i32 0, i32 1, !dbg !2937
  store i32 %conv17, ptr %target18, align 4, !dbg !2938
  %key19 = getelementptr inbounds %struct.jump_entry, ptr %tmp, i32 0, i32 2, !dbg !2939
  %25 = load i64, ptr %key19, align 8, !dbg !2939
  %26 = load i64, ptr %delta, align 8, !dbg !2940
  %add20 = add i64 %25, %26, !dbg !2941
  %27 = load ptr, ptr %jeb, align 8, !dbg !2942
  %key21 = getelementptr inbounds %struct.jump_entry, ptr %27, i32 0, i32 2, !dbg !2943
  store i64 %add20, ptr %key21, align 8, !dbg !2944
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #19, !dbg !2945
  call void @llvm.lifetime.end.p0(i64 8, ptr %jeb) #19, !dbg !2945
  call void @llvm.lifetime.end.p0(i64 8, ptr %jea) #19, !dbg !2945
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #19, !dbg !2945
  ret void, !dbg !2945
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2946 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jump_label_cmp(ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !2956 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %jea = alloca ptr, align 8
  %jeb = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2958, metadata !DIExpression()), !dbg !2962
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2959, metadata !DIExpression()), !dbg !2963
  call void @llvm.lifetime.start.p0(i64 8, ptr %jea) #19, !dbg !2964
  call void @llvm.dbg.declare(metadata ptr %jea, metadata !2960, metadata !DIExpression()), !dbg !2965
  %0 = load ptr, ptr %a.addr, align 8, !dbg !2966
  store ptr %0, ptr %jea, align 8, !dbg !2965
  call void @llvm.lifetime.start.p0(i64 8, ptr %jeb) #19, !dbg !2967
  call void @llvm.dbg.declare(metadata ptr %jeb, metadata !2961, metadata !DIExpression()), !dbg !2968
  %1 = load ptr, ptr %b.addr, align 8, !dbg !2969
  store ptr %1, ptr %jeb, align 8, !dbg !2968
  %2 = load ptr, ptr %jea, align 8, !dbg !2970
  %call = call ptr @jump_entry_key(ptr noundef %2) #18, !dbg !2972
  %3 = load ptr, ptr %jeb, align 8, !dbg !2973
  %call1 = call ptr @jump_entry_key(ptr noundef %3) #18, !dbg !2974
  %cmp = icmp ult ptr %call, %call1, !dbg !2975
  br i1 %cmp, label %if.then, label %if.end, !dbg !2976

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2977

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %jea, align 8, !dbg !2978
  %call2 = call ptr @jump_entry_key(ptr noundef %4) #18, !dbg !2980
  %5 = load ptr, ptr %jeb, align 8, !dbg !2981
  %call3 = call ptr @jump_entry_key(ptr noundef %5) #18, !dbg !2982
  %cmp4 = icmp ugt ptr %call2, %call3, !dbg !2983
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2984

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2985

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %jea, align 8, !dbg !2986
  %call7 = call i64 @jump_entry_code(ptr noundef %6) #18, !dbg !2988
  %7 = load ptr, ptr %jeb, align 8, !dbg !2989
  %call8 = call i64 @jump_entry_code(ptr noundef %7) #18, !dbg !2990
  %cmp9 = icmp ult i64 %call7, %call8, !dbg !2991
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2992

if.then10:                                        ; preds = %if.end6
  store i32 -1, ptr %retval, align 4, !dbg !2993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2993

if.end11:                                         ; preds = %if.end6
  %8 = load ptr, ptr %jea, align 8, !dbg !2994
  %call12 = call i64 @jump_entry_code(ptr noundef %8) #18, !dbg !2996
  %9 = load ptr, ptr %jeb, align 8, !dbg !2997
  %call13 = call i64 @jump_entry_code(ptr noundef %9) #18, !dbg !2998
  %cmp14 = icmp ugt i64 %call12, %call13, !dbg !2999
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3000

if.then15:                                        ; preds = %if.end11
  store i32 1, ptr %retval, align 4, !dbg !3001
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3001

if.end16:                                         ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !3002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3002

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %jeb) #19, !dbg !3003
  call void @llvm.lifetime.end.p0(i64 8, ptr %jea) #19, !dbg !3003
  %10 = load i32, ptr %retval, align 4, !dbg !3003
  ret i32 %10, !dbg !3003
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @memory_contains(ptr noundef %begin, ptr noundef %end, ptr noundef %virt, i64 noundef %size) #6 align 16 !dbg !3004 {
entry:
  %begin.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %virt.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %begin, ptr %begin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %begin.addr, metadata !3008, metadata !DIExpression()), !dbg !3012
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !3009, metadata !DIExpression()), !dbg !3013
  store ptr %virt, ptr %virt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virt.addr, metadata !3010, metadata !DIExpression()), !dbg !3014
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3011, metadata !DIExpression()), !dbg !3015
  %0 = load ptr, ptr %virt.addr, align 8, !dbg !3016
  %1 = load ptr, ptr %begin.addr, align 8, !dbg !3017
  %cmp = icmp uge ptr %0, %1, !dbg !3018
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3019

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %virt.addr, align 8, !dbg !3020
  %3 = load i64, ptr %size.addr, align 8, !dbg !3021
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !3022
  %4 = load ptr, ptr %end.addr, align 8, !dbg !3023
  %cmp1 = icmp ule ptr %add.ptr, %4, !dbg !3024
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !3025
  ret i1 %5, !dbg !3026
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3027 dso_local i32 @register_module_notifier(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jump_label_module_notify(ptr noundef %self, i64 noundef %val, ptr noundef %data) #0 align 16 !dbg !3030 {
entry:
  %self.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %self, ptr %self.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !3032, metadata !DIExpression()), !dbg !3046
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3033, metadata !DIExpression()), !dbg !3047
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !3034, metadata !DIExpression()), !dbg !3048
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #19, !dbg !3049
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !3035, metadata !DIExpression()), !dbg !3050
  %0 = load ptr, ptr %data.addr, align 8, !dbg !3051
  store ptr %0, ptr %mod, align 8, !dbg !3050
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !3052
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3036, metadata !DIExpression()), !dbg !3053
  store i32 0, ptr %ret, align 4, !dbg !3053
  call void @cpus_read_lock() #18, !dbg !3054
  call void @jump_label_lock() #18, !dbg !3055
  %1 = load i64, ptr %val.addr, align 8, !dbg !3056
  switch i64 %1, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %sw.bb31
  ], !dbg !3057

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %mod, align 8, !dbg !3058
  %call = call i32 @jump_label_add_module(ptr noundef %2) #18, !dbg !3059
  store i32 %call, ptr %ret, align 4, !dbg !3060
  %3 = load i32, ptr %ret, align 4, !dbg !3061
  %tobool = icmp ne i32 %3, 0, !dbg !3061
  br i1 %tobool, label %if.then, label %if.end30, !dbg !3062

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3063
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3037, metadata !DIExpression()), !dbg !3063
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !3063
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3064
  %tobool1 = icmp ne i32 %4, 0, !dbg !3064
  %lnot = xor i1 %tobool1, true, !dbg !3064
  %lnot2 = xor i1 %lnot, true, !dbg !3064
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3064
  %conv = sext i32 %lnot.ext to i64, !dbg !3064
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3064
  %tobool3 = icmp ne i64 %expval, 0, !dbg !3064
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !3063

if.then4:                                         ; preds = %if.then
  br label %do.body, !dbg !3064

do.body:                                          ; preds = %if.then4
  br label %do.body5, !dbg !3065

do.body5:                                         ; preds = %do.body
  br label %do.cond, !dbg !3066

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !3066

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2) #18, !dbg !3065
  br label %do.body6, !dbg !3065

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !3068
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3042, metadata !DIExpression()), !dbg !3068
  store i32 2313, ptr %__flags, align 4, !dbg !3068
  br label %do.body7, !dbg !3068

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !3069

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !3069

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !3068

do.body10:                                        ; preds = %do.end9
  %5 = load i32, ptr %__flags, align 4, !dbg !3071
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 784, i32 %5, i64 12) #19, !dbg !3071, !srcloc !3073
  br label %do.cond11, !dbg !3071

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !3071

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !3068

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !3074

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !3074

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !3065
  br label %do.cond16, !dbg !3068

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3068

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !3065

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !3076

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !3076

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !3065

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !3065

do.end22:                                         ; preds = %do.cond21
  br label %if.end, !dbg !3065

if.end:                                           ; preds = %do.end22, %if.then
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !3063
  %tobool23 = icmp ne i32 %6, 0, !dbg !3063
  %lnot24 = xor i1 %tobool23, true, !dbg !3063
  %lnot26 = xor i1 %lnot24, true, !dbg !3063
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !3063
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !3063
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !3063
  store i64 %expval29, ptr %tmp, align 8, !dbg !3064
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3078
  %7 = load i64, ptr %tmp, align 8, !dbg !3063
  %8 = load ptr, ptr %mod, align 8, !dbg !3079
  call void @jump_label_del_module(ptr noundef %8) #18, !dbg !3080
  br label %if.end30, !dbg !3081

if.end30:                                         ; preds = %if.end, %sw.bb
  br label %sw.epilog, !dbg !3082

sw.bb31:                                          ; preds = %entry
  %9 = load ptr, ptr %mod, align 8, !dbg !3083
  call void @jump_label_del_module(ptr noundef %9) #18, !dbg !3084
  br label %sw.epilog, !dbg !3085

sw.epilog:                                        ; preds = %entry, %sw.bb31, %if.end30
  call void @jump_label_unlock() #18, !dbg !3086
  call void @cpus_read_unlock() #18, !dbg !3087
  %10 = load i32, ptr %ret, align 4, !dbg !3088
  %call32 = call i32 @notifier_from_errno(i32 noundef %10) #18, !dbg !3089
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !3090
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #19, !dbg !3090
  ret i32 %call32, !dbg !3091
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jump_label_add_module(ptr noundef %mod) #0 align 16 !dbg !1276 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca ptr, align 8
  %iter_start = alloca ptr, align 8
  %iter_stop = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %key = alloca ptr, align 8
  %jlm = alloca ptr, align 8
  %jlm2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %iterk = alloca ptr, align 8
  %in_init = alloca i8, align 1
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !1278, metadata !DIExpression()), !dbg !3092
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_start) #19, !dbg !3093
  call void @llvm.dbg.declare(metadata ptr %iter_start, metadata !1279, metadata !DIExpression()), !dbg !3094
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !3095
  %jump_entries = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 41, !dbg !3096
  %1 = load ptr, ptr %jump_entries, align 16, !dbg !3096
  store ptr %1, ptr %iter_start, align 8, !dbg !3094
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_stop) #19, !dbg !3097
  call void @llvm.dbg.declare(metadata ptr %iter_stop, metadata !1280, metadata !DIExpression()), !dbg !3098
  %2 = load ptr, ptr %iter_start, align 8, !dbg !3099
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !3100
  %num_jump_entries = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 42, !dbg !3101
  %4 = load i32, ptr %num_jump_entries, align 8, !dbg !3101
  %idx.ext = zext i32 %4 to i64, !dbg !3102
  %add.ptr = getelementptr %struct.jump_entry, ptr %2, i64 %idx.ext, !dbg !3102
  store ptr %add.ptr, ptr %iter_stop, align 8, !dbg !3098
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #19, !dbg !3103
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1281, metadata !DIExpression()), !dbg !3104
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #19, !dbg !3105
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1282, metadata !DIExpression()), !dbg !3106
  store ptr null, ptr %key, align 8, !dbg !3106
  call void @llvm.lifetime.start.p0(i64 8, ptr %jlm) #19, !dbg !3107
  call void @llvm.dbg.declare(metadata ptr %jlm, metadata !1283, metadata !DIExpression()), !dbg !3108
  call void @llvm.lifetime.start.p0(i64 8, ptr %jlm2) #19, !dbg !3107
  call void @llvm.dbg.declare(metadata ptr %jlm2, metadata !1284, metadata !DIExpression()), !dbg !3109
  %5 = load ptr, ptr %iter_start, align 8, !dbg !3110
  %6 = load ptr, ptr %iter_stop, align 8, !dbg !3112
  %cmp = icmp eq ptr %5, %6, !dbg !3113
  br i1 %cmp, label %if.then, label %if.end, !dbg !3114

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !3115

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %iter_start, align 8, !dbg !3116
  %8 = load ptr, ptr %iter_stop, align 8, !dbg !3117
  call void @jump_label_sort_entries(ptr noundef %7, ptr noundef %8) #18, !dbg !3118
  %9 = load ptr, ptr %iter_start, align 8, !dbg !3119
  store ptr %9, ptr %iter, align 8, !dbg !3120
  br label %for.cond, !dbg !3121

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load ptr, ptr %iter, align 8, !dbg !3122
  %11 = load ptr, ptr %iter_stop, align 8, !dbg !3123
  %cmp1 = icmp ult ptr %10, %11, !dbg !3124
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3125

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %iterk) #19, !dbg !3126
  call void @llvm.dbg.declare(metadata ptr %iterk, metadata !1285, metadata !DIExpression()), !dbg !3127
  call void @llvm.lifetime.start.p0(i64 1, ptr %in_init) #19, !dbg !3128
  call void @llvm.dbg.declare(metadata ptr %in_init, metadata !1289, metadata !DIExpression()), !dbg !3129
  %12 = load ptr, ptr %iter, align 8, !dbg !3130
  %call = call i64 @jump_entry_code(ptr noundef %12) #18, !dbg !3131
  %13 = load ptr, ptr %mod.addr, align 8, !dbg !3132
  %call2 = call zeroext i1 @within_module_init(i64 noundef %call, ptr noundef %13) #18, !dbg !3133
  %frombool = zext i1 %call2 to i8, !dbg !3134
  store i8 %frombool, ptr %in_init, align 1, !dbg !3134
  %14 = load ptr, ptr %iter, align 8, !dbg !3135
  %15 = load i8, ptr %in_init, align 1, !dbg !3136, !range !1414, !noundef !359
  %tobool = trunc i8 %15 to i1, !dbg !3136
  call void @jump_entry_set_init(ptr noundef %14, i1 noundef zeroext %tobool) #18, !dbg !3137
  %16 = load ptr, ptr %iter, align 8, !dbg !3138
  %call3 = call ptr @jump_entry_key(ptr noundef %16) #18, !dbg !3139
  store ptr %call3, ptr %iterk, align 8, !dbg !3140
  %17 = load ptr, ptr %iterk, align 8, !dbg !3141
  %18 = load ptr, ptr %key, align 8, !dbg !3143
  %cmp4 = icmp eq ptr %17, %18, !dbg !3144
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3145

if.then5:                                         ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3146

if.end6:                                          ; preds = %for.body
  %19 = load ptr, ptr %iterk, align 8, !dbg !3147
  store ptr %19, ptr %key, align 8, !dbg !3148
  %20 = load ptr, ptr %key, align 8, !dbg !3149
  %21 = ptrtoint ptr %20 to i64, !dbg !3151
  %22 = load ptr, ptr %mod.addr, align 8, !dbg !3152
  %call7 = call zeroext i1 @within_module(i64 noundef %21, ptr noundef %22) #18, !dbg !3153
  br i1 %call7, label %if.then8, label %if.end9, !dbg !3154

if.then8:                                         ; preds = %if.end6
  %23 = load ptr, ptr %key, align 8, !dbg !3155
  %24 = load ptr, ptr %iter, align 8, !dbg !3157
  call void @static_key_set_entries(ptr noundef %23, ptr noundef %24) #18, !dbg !3158
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3159

if.end9:                                          ; preds = %if.end6
  %call10 = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #21, !dbg !3160
  store ptr %call10, ptr %jlm, align 8, !dbg !3161
  %25 = load ptr, ptr %jlm, align 8, !dbg !3162
  %tobool11 = icmp ne ptr %25, null, !dbg !3162
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3164

if.then12:                                        ; preds = %if.end9
  store i32 -12, ptr %retval, align 4, !dbg !3165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3165

if.end13:                                         ; preds = %if.end9
  %26 = load ptr, ptr %key, align 8, !dbg !3166
  %call14 = call zeroext i1 @static_key_linked(ptr noundef %26) #18, !dbg !3168
  br i1 %call14, label %if.end34, label %if.then15, !dbg !3169

if.then15:                                        ; preds = %if.end13
  %call16 = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #21, !dbg !3170
  store ptr %call16, ptr %jlm2, align 8, !dbg !3172
  %27 = load ptr, ptr %jlm2, align 8, !dbg !3173
  %tobool17 = icmp ne ptr %27, null, !dbg !3173
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3175

if.then18:                                        ; preds = %if.then15
  %28 = load ptr, ptr %jlm, align 8, !dbg !3176
  call void @kfree(ptr noundef %28) #18, !dbg !3178
  store i32 -12, ptr %retval, align 4, !dbg !3179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3179

if.end19:                                         ; preds = %if.then15
  br label %do.body, !dbg !3180

do.body:                                          ; preds = %if.end19
  call void @__preempt_count_add(i32 noundef 1) #18, !dbg !3181
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !3181, !srcloc !3183
  br label %do.cond, !dbg !3181

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3181

do.end:                                           ; preds = %do.cond
  %29 = load ptr, ptr %key, align 8, !dbg !3184
  %30 = ptrtoint ptr %29 to i64, !dbg !3185
  %call20 = call ptr @__module_address(i64 noundef %30) #18, !dbg !3186
  %31 = load ptr, ptr %jlm2, align 8, !dbg !3187
  %mod21 = getelementptr inbounds %struct.static_key_mod, ptr %31, i32 0, i32 2, !dbg !3188
  store ptr %call20, ptr %mod21, align 8, !dbg !3189
  br label %do.body22, !dbg !3190

do.body22:                                        ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !3191, !srcloc !3193
  %call23 = call zeroext i1 @__preempt_count_dec_and_test() #18, !dbg !3194
  %lnot = xor i1 %call23, true, !dbg !3194
  %lnot24 = xor i1 %lnot, true, !dbg !3194
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !3194
  %conv = sext i32 %lnot.ext to i64, !dbg !3194
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3194
  %tobool25 = icmp ne i64 %expval, 0, !dbg !3194
  br i1 %tobool25, label %if.then26, label %if.end30, !dbg !3191

if.then26:                                        ; preds = %do.body22
  br label %do.body27, !dbg !3194

do.body27:                                        ; preds = %if.then26
  %32 = call i64 @llvm.read_register.i64(metadata !1346), !dbg !3196
  %33 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %32) #19, !dbg !3196, !srcloc !3198
  call void @llvm.write_register.i64(metadata !1346, i64 %33), !dbg !3196
  br label %do.cond28, !dbg !3196

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !3196

do.end29:                                         ; preds = %do.cond28
  br label %if.end30, !dbg !3196

if.end30:                                         ; preds = %do.end29, %do.body22
  br label %do.cond31, !dbg !3191

do.cond31:                                        ; preds = %if.end30
  br label %do.end32, !dbg !3191

do.end32:                                         ; preds = %do.cond31
  %34 = load ptr, ptr %key, align 8, !dbg !3199
  %call33 = call ptr @static_key_entries(ptr noundef %34) #18, !dbg !3200
  %35 = load ptr, ptr %jlm2, align 8, !dbg !3201
  %entries = getelementptr inbounds %struct.static_key_mod, ptr %35, i32 0, i32 1, !dbg !3202
  store ptr %call33, ptr %entries, align 8, !dbg !3203
  %36 = load ptr, ptr %jlm2, align 8, !dbg !3204
  %next = getelementptr inbounds %struct.static_key_mod, ptr %36, i32 0, i32 0, !dbg !3205
  store ptr null, ptr %next, align 8, !dbg !3206
  %37 = load ptr, ptr %key, align 8, !dbg !3207
  %38 = load ptr, ptr %jlm2, align 8, !dbg !3208
  call void @static_key_set_mod(ptr noundef %37, ptr noundef %38) #18, !dbg !3209
  %39 = load ptr, ptr %key, align 8, !dbg !3210
  call void @static_key_set_linked(ptr noundef %39) #18, !dbg !3211
  br label %if.end34, !dbg !3212

if.end34:                                         ; preds = %do.end32, %if.end13
  %40 = load ptr, ptr %mod.addr, align 8, !dbg !3213
  %41 = load ptr, ptr %jlm, align 8, !dbg !3214
  %mod35 = getelementptr inbounds %struct.static_key_mod, ptr %41, i32 0, i32 2, !dbg !3215
  store ptr %40, ptr %mod35, align 8, !dbg !3216
  %42 = load ptr, ptr %iter, align 8, !dbg !3217
  %43 = load ptr, ptr %jlm, align 8, !dbg !3218
  %entries36 = getelementptr inbounds %struct.static_key_mod, ptr %43, i32 0, i32 1, !dbg !3219
  store ptr %42, ptr %entries36, align 8, !dbg !3220
  %44 = load ptr, ptr %key, align 8, !dbg !3221
  %call37 = call ptr @static_key_mod(ptr noundef %44) #18, !dbg !3222
  %45 = load ptr, ptr %jlm, align 8, !dbg !3223
  %next38 = getelementptr inbounds %struct.static_key_mod, ptr %45, i32 0, i32 0, !dbg !3224
  store ptr %call37, ptr %next38, align 8, !dbg !3225
  %46 = load ptr, ptr %key, align 8, !dbg !3226
  %47 = load ptr, ptr %jlm, align 8, !dbg !3227
  call void @static_key_set_mod(ptr noundef %46, ptr noundef %47) #18, !dbg !3228
  %48 = load ptr, ptr %key, align 8, !dbg !3229
  call void @static_key_set_linked(ptr noundef %48) #18, !dbg !3230
  %49 = load ptr, ptr %iter, align 8, !dbg !3231
  %call39 = call i32 @jump_label_type(ptr noundef %49) #18, !dbg !3233
  %50 = load ptr, ptr %iter, align 8, !dbg !3234
  %call40 = call i32 @jump_label_init_type(ptr noundef %50) #18, !dbg !3235
  %cmp41 = icmp ne i32 %call39, %call40, !dbg !3236
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !3237

if.then43:                                        ; preds = %if.end34
  %51 = load ptr, ptr %key, align 8, !dbg !3238
  %52 = load ptr, ptr %iter, align 8, !dbg !3239
  %53 = load ptr, ptr %iter_stop, align 8, !dbg !3240
  call void @__jump_label_update(ptr noundef %51, ptr noundef %52, ptr noundef %53, i1 noundef zeroext true) #18, !dbg !3241
  br label %if.end44, !dbg !3241

if.end44:                                         ; preds = %if.then43, %if.end34
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3242
  br label %cleanup, !dbg !3242

cleanup:                                          ; preds = %if.end44, %if.then18, %if.then12, %if.then8, %if.then5
  call void @llvm.lifetime.end.p0(i64 1, ptr %in_init) #19, !dbg !3242
  call void @llvm.lifetime.end.p0(i64 8, ptr %iterk) #19, !dbg !3242
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3243

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %54 = load ptr, ptr %iter, align 8, !dbg !3244
  %incdec.ptr = getelementptr %struct.jump_entry, ptr %54, i32 1, !dbg !3244
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !3244
  br label %for.cond, !dbg !3245, !llvm.loop !3246

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !3248

cleanup46:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %jlm2) #19, !dbg !3249
  call void @llvm.lifetime.end.p0(i64 8, ptr %jlm) #19, !dbg !3249
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #19, !dbg !3249
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #19, !dbg !3249
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_stop) #19, !dbg !3249
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_start) #19, !dbg !3249
  %55 = load i32, ptr %retval, align 4, !dbg !3249
  ret i32 %55, !dbg !3249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @jump_label_del_module(ptr noundef %mod) #0 align 16 !dbg !3250 {
entry:
  %mod.addr = alloca ptr, align 8
  %iter_start = alloca ptr, align 8
  %iter_stop = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %key = alloca ptr, align 8
  %jlm = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on41 = alloca i32, align 4
  %__flags59 = alloca i32, align 4
  %tmp72 = alloca i64, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !3252, metadata !DIExpression()), !dbg !3275
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_start) #19, !dbg !3276
  call void @llvm.dbg.declare(metadata ptr %iter_start, metadata !3253, metadata !DIExpression()), !dbg !3277
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !3278
  %jump_entries = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 41, !dbg !3279
  %1 = load ptr, ptr %jump_entries, align 16, !dbg !3279
  store ptr %1, ptr %iter_start, align 8, !dbg !3277
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter_stop) #19, !dbg !3280
  call void @llvm.dbg.declare(metadata ptr %iter_stop, metadata !3254, metadata !DIExpression()), !dbg !3281
  %2 = load ptr, ptr %iter_start, align 8, !dbg !3282
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !3283
  %num_jump_entries = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 42, !dbg !3284
  %4 = load i32, ptr %num_jump_entries, align 8, !dbg !3284
  %idx.ext = zext i32 %4 to i64, !dbg !3285
  %add.ptr = getelementptr %struct.jump_entry, ptr %2, i64 %idx.ext, !dbg !3285
  store ptr %add.ptr, ptr %iter_stop, align 8, !dbg !3281
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #19, !dbg !3286
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !3255, metadata !DIExpression()), !dbg !3287
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #19, !dbg !3288
  call void @llvm.dbg.declare(metadata ptr %key, metadata !3256, metadata !DIExpression()), !dbg !3289
  store ptr null, ptr %key, align 8, !dbg !3289
  call void @llvm.lifetime.start.p0(i64 8, ptr %jlm) #19, !dbg !3290
  call void @llvm.dbg.declare(metadata ptr %jlm, metadata !3257, metadata !DIExpression()), !dbg !3291
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #19, !dbg !3290
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !3258, metadata !DIExpression()), !dbg !3292
  %5 = load ptr, ptr %iter_start, align 8, !dbg !3293
  store ptr %5, ptr %iter, align 8, !dbg !3294
  br label %for.cond, !dbg !3295

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %iter, align 8, !dbg !3296
  %7 = load ptr, ptr %iter_stop, align 8, !dbg !3297
  %cmp = icmp ult ptr %6, %7, !dbg !3298
  br i1 %cmp, label %for.body, label %for.end, !dbg !3299

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %iter, align 8, !dbg !3300
  %call = call ptr @jump_entry_key(ptr noundef %8) #18, !dbg !3302
  %9 = load ptr, ptr %key, align 8, !dbg !3303
  %cmp1 = icmp eq ptr %call, %9, !dbg !3304
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3305

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3306

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %iter, align 8, !dbg !3307
  %call2 = call ptr @jump_entry_key(ptr noundef %10) #18, !dbg !3308
  store ptr %call2, ptr %key, align 8, !dbg !3309
  %11 = load ptr, ptr %key, align 8, !dbg !3310
  %12 = ptrtoint ptr %11 to i64, !dbg !3312
  %13 = load ptr, ptr %mod.addr, align 8, !dbg !3313
  %call3 = call zeroext i1 @within_module(i64 noundef %12, ptr noundef %13) #18, !dbg !3314
  br i1 %call3, label %if.then4, label %if.end5, !dbg !3315

if.then4:                                         ; preds = %if.end
  br label %for.inc, !dbg !3316

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3260, metadata !DIExpression()), !dbg !3317
  %14 = load ptr, ptr %key, align 8, !dbg !3317
  %call6 = call zeroext i1 @static_key_linked(ptr noundef %14) #18, !dbg !3317
  %lnot = xor i1 %call6, true, !dbg !3317
  %lnot7 = xor i1 %lnot, true, !dbg !3317
  %lnot8 = xor i1 %lnot7, true, !dbg !3317
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !3317
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3317
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !3318
  %tobool = icmp ne i32 %15, 0, !dbg !3318
  %lnot9 = xor i1 %tobool, true, !dbg !3318
  %lnot11 = xor i1 %lnot9, true, !dbg !3318
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !3318
  %conv = sext i32 %lnot.ext12 to i64, !dbg !3318
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3318
  %tobool13 = icmp ne i64 %expval, 0, !dbg !3318
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !3317

if.then14:                                        ; preds = %if.end5
  br label %do.body, !dbg !3318

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !3319
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3266, metadata !DIExpression()), !dbg !3319
  store i32 2305, ptr %__flags, align 4, !dbg !3319
  br label %do.body15, !dbg !3319

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !3320

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !3320

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !3319

do.body16:                                        ; preds = %do.end
  %16 = load i32, ptr %__flags, align 4, !dbg !3322
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 738, i32 %16, i64 12) #19, !dbg !3322, !srcloc !3324
  br label %do.cond17, !dbg !3322

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !3322

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !3319

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !3325

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !3325

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !3318
  br label %do.cond22, !dbg !3319

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !3319

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !3319

if.end24:                                         ; preds = %do.end23, %if.end5
  %17 = load i32, ptr %__ret_warn_on, align 4, !dbg !3317
  %tobool25 = icmp ne i32 %17, 0, !dbg !3317
  %lnot26 = xor i1 %tobool25, true, !dbg !3317
  %lnot28 = xor i1 %lnot26, true, !dbg !3317
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !3317
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !3317
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !3317
  store i64 %expval31, ptr %tmp, align 8, !dbg !3318
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3327
  %18 = load i64, ptr %tmp, align 8, !dbg !3317
  %tobool32 = icmp ne i64 %18, 0, !dbg !3327
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !3328

if.then33:                                        ; preds = %if.end24
  br label %for.inc, !dbg !3329

if.end34:                                         ; preds = %if.end24
  %19 = load ptr, ptr %key, align 8, !dbg !3330
  %20 = getelementptr inbounds %struct.static_key, ptr %19, i32 0, i32 1, !dbg !3331
  store ptr %20, ptr %prev, align 8, !dbg !3332
  %21 = load ptr, ptr %key, align 8, !dbg !3333
  %call35 = call ptr @static_key_mod(ptr noundef %21) #18, !dbg !3334
  store ptr %call35, ptr %jlm, align 8, !dbg !3335
  br label %while.cond, !dbg !3336

while.cond:                                       ; preds = %while.body, %if.end34
  %22 = load ptr, ptr %jlm, align 8, !dbg !3337
  %tobool36 = icmp ne ptr %22, null, !dbg !3337
  br i1 %tobool36, label %land.rhs, label %land.end, !dbg !3338

land.rhs:                                         ; preds = %while.cond
  %23 = load ptr, ptr %jlm, align 8, !dbg !3339
  %mod37 = getelementptr inbounds %struct.static_key_mod, ptr %23, i32 0, i32 2, !dbg !3340
  %24 = load ptr, ptr %mod37, align 8, !dbg !3340
  %25 = load ptr, ptr %mod.addr, align 8, !dbg !3341
  %cmp38 = icmp ne ptr %24, %25, !dbg !3342
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ], !dbg !3343
  br i1 %26, label %while.body, label %while.end, !dbg !3336

while.body:                                       ; preds = %land.end
  %27 = load ptr, ptr %jlm, align 8, !dbg !3344
  %next = getelementptr inbounds %struct.static_key_mod, ptr %27, i32 0, i32 0, !dbg !3346
  store ptr %next, ptr %prev, align 8, !dbg !3347
  %28 = load ptr, ptr %jlm, align 8, !dbg !3348
  %next40 = getelementptr inbounds %struct.static_key_mod, ptr %28, i32 0, i32 0, !dbg !3349
  %29 = load ptr, ptr %next40, align 8, !dbg !3349
  store ptr %29, ptr %jlm, align 8, !dbg !3350
  br label %while.cond, !dbg !3336, !llvm.loop !3351

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on41) #19, !dbg !3353
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on41, metadata !3269, metadata !DIExpression()), !dbg !3353
  %30 = load ptr, ptr %jlm, align 8, !dbg !3353
  %tobool42 = icmp ne ptr %30, null, !dbg !3353
  %lnot43 = xor i1 %tobool42, true, !dbg !3353
  %lnot45 = xor i1 %lnot43, true, !dbg !3353
  %lnot47 = xor i1 %lnot45, true, !dbg !3353
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !3353
  store i32 %lnot.ext48, ptr %__ret_warn_on41, align 4, !dbg !3353
  %31 = load i32, ptr %__ret_warn_on41, align 4, !dbg !3354
  %tobool49 = icmp ne i32 %31, 0, !dbg !3354
  %lnot50 = xor i1 %tobool49, true, !dbg !3354
  %lnot52 = xor i1 %lnot50, true, !dbg !3354
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !3354
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !3354
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !3354
  %tobool56 = icmp ne i64 %expval55, 0, !dbg !3354
  br i1 %tobool56, label %if.then57, label %if.end71, !dbg !3353

if.then57:                                        ; preds = %while.end
  br label %do.body58, !dbg !3354

do.body58:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags59) #19, !dbg !3355
  call void @llvm.dbg.declare(metadata ptr %__flags59, metadata !3272, metadata !DIExpression()), !dbg !3355
  store i32 2305, ptr %__flags59, align 4, !dbg !3355
  br label %do.body60, !dbg !3355

do.body60:                                        ; preds = %do.body58
  br label %do.cond61, !dbg !3356

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !3356

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !3355

do.body63:                                        ; preds = %do.end62
  %32 = load i32, ptr %__flags59, align 4, !dbg !3358
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 750, i32 %32, i64 12) #19, !dbg !3358, !srcloc !3360
  br label %do.cond64, !dbg !3358

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !3358

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !3355

do.body66:                                        ; preds = %do.end65
  br label %do.cond67, !dbg !3361

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !3361

do.end68:                                         ; preds = %do.cond67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags59) #19, !dbg !3354
  br label %do.cond69, !dbg !3355

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !3355

do.end70:                                         ; preds = %do.cond69
  br label %if.end71, !dbg !3355

if.end71:                                         ; preds = %do.end70, %while.end
  %33 = load i32, ptr %__ret_warn_on41, align 4, !dbg !3353
  %tobool73 = icmp ne i32 %33, 0, !dbg !3353
  %lnot74 = xor i1 %tobool73, true, !dbg !3353
  %lnot76 = xor i1 %lnot74, true, !dbg !3353
  %lnot.ext77 = zext i1 %lnot76 to i32, !dbg !3353
  %conv78 = sext i32 %lnot.ext77 to i64, !dbg !3353
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 0), !dbg !3353
  store i64 %expval79, ptr %tmp72, align 8, !dbg !3354
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on41) #19, !dbg !3363
  %34 = load i64, ptr %tmp72, align 8, !dbg !3353
  %tobool80 = icmp ne i64 %34, 0, !dbg !3363
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !3364

if.then81:                                        ; preds = %if.end71
  br label %for.inc, !dbg !3365

if.end82:                                         ; preds = %if.end71
  %35 = load ptr, ptr %prev, align 8, !dbg !3366
  %36 = load ptr, ptr %key, align 8, !dbg !3368
  %37 = getelementptr inbounds %struct.static_key, ptr %36, i32 0, i32 1, !dbg !3369
  %cmp83 = icmp eq ptr %35, %37, !dbg !3370
  br i1 %cmp83, label %if.then85, label %if.else, !dbg !3371

if.then85:                                        ; preds = %if.end82
  %38 = load ptr, ptr %key, align 8, !dbg !3372
  %39 = load ptr, ptr %jlm, align 8, !dbg !3373
  %next86 = getelementptr inbounds %struct.static_key_mod, ptr %39, i32 0, i32 0, !dbg !3374
  %40 = load ptr, ptr %next86, align 8, !dbg !3374
  call void @static_key_set_mod(ptr noundef %38, ptr noundef %40) #18, !dbg !3375
  br label %if.end88, !dbg !3375

if.else:                                          ; preds = %if.end82
  %41 = load ptr, ptr %jlm, align 8, !dbg !3376
  %next87 = getelementptr inbounds %struct.static_key_mod, ptr %41, i32 0, i32 0, !dbg !3377
  %42 = load ptr, ptr %next87, align 8, !dbg !3377
  %43 = load ptr, ptr %prev, align 8, !dbg !3378
  store ptr %42, ptr %43, align 8, !dbg !3379
  br label %if.end88

if.end88:                                         ; preds = %if.else, %if.then85
  %44 = load ptr, ptr %jlm, align 8, !dbg !3380
  call void @kfree(ptr noundef %44) #18, !dbg !3381
  %45 = load ptr, ptr %key, align 8, !dbg !3382
  %call89 = call ptr @static_key_mod(ptr noundef %45) #18, !dbg !3383
  store ptr %call89, ptr %jlm, align 8, !dbg !3384
  %46 = load ptr, ptr %jlm, align 8, !dbg !3385
  %next90 = getelementptr inbounds %struct.static_key_mod, ptr %46, i32 0, i32 0, !dbg !3387
  %47 = load ptr, ptr %next90, align 8, !dbg !3387
  %cmp91 = icmp eq ptr %47, null, !dbg !3388
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !3389

if.then93:                                        ; preds = %if.end88
  %48 = load ptr, ptr %key, align 8, !dbg !3390
  %49 = load ptr, ptr %jlm, align 8, !dbg !3392
  %entries = getelementptr inbounds %struct.static_key_mod, ptr %49, i32 0, i32 1, !dbg !3393
  %50 = load ptr, ptr %entries, align 8, !dbg !3393
  call void @static_key_set_entries(ptr noundef %48, ptr noundef %50) #18, !dbg !3394
  %51 = load ptr, ptr %key, align 8, !dbg !3395
  call void @static_key_clear_linked(ptr noundef %51) #18, !dbg !3396
  %52 = load ptr, ptr %jlm, align 8, !dbg !3397
  call void @kfree(ptr noundef %52) #18, !dbg !3398
  br label %if.end94, !dbg !3399

if.end94:                                         ; preds = %if.then93, %if.end88
  br label %for.inc, !dbg !3400

for.inc:                                          ; preds = %if.end94, %if.then81, %if.then33, %if.then4, %if.then
  %53 = load ptr, ptr %iter, align 8, !dbg !3401
  %incdec.ptr = getelementptr %struct.jump_entry, ptr %53, i32 1, !dbg !3401
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !3401
  br label %for.cond, !dbg !3402, !llvm.loop !3403

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #19, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %jlm) #19, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #19, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #19, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_stop) #19, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter_start) #19, !dbg !3405
  ret void, !dbg !3405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @notifier_from_errno(i32 noundef %err) #6 align 16 !dbg !3406 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !3410, metadata !DIExpression()), !dbg !3411
  %0 = load i32, ptr %err.addr, align 4, !dbg !3412
  %tobool = icmp ne i32 %0, 0, !dbg !3412
  br i1 %tobool, label %if.then, label %if.end, !dbg !3414

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4, !dbg !3415
  %sub = sub i32 1, %1, !dbg !3416
  %or = or i32 32768, %sub, !dbg !3417
  store i32 %or, ptr %retval, align 4, !dbg !3418
  br label %return, !dbg !3418

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !3419
  br label %return, !dbg !3419

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3420
  ret i32 %2, !dbg !3420
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_init(i64 noundef %addr, ptr noundef %mod) #6 align 16 !dbg !3421 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3427, metadata !DIExpression()), !dbg !3431
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !3428, metadata !DIExpression()), !dbg !3432
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #19, !dbg !3433
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3429, metadata !DIExpression()), !dbg !3433
  store i32 0, ptr %type, align 4, !dbg !3433
  br label %for.cond, !dbg !3433

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %type, align 4, !dbg !3434
  %cmp = icmp slt i32 %0, 7, !dbg !3434
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !3433

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3433

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %type, align 4, !dbg !3436
  %cmp1 = icmp eq i32 %1, 4, !dbg !3436
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !3436

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, ptr %type, align 4, !dbg !3436
  %cmp2 = icmp eq i32 %2, 5, !dbg !3436
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !3436

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !3436
  %cmp4 = icmp eq i32 %3, 6, !dbg !3436
  br i1 %cmp4, label %if.then, label %if.end6, !dbg !3434

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %for.body
  %4 = load i64, ptr %addr.addr, align 8, !dbg !3438
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !3441
  %6 = load i32, ptr %type, align 4, !dbg !3442
  %call = call zeroext i1 @within_module_mem_type(i64 noundef %4, ptr noundef %5, i32 noundef %6) #18, !dbg !3443
  br i1 %call, label %if.then5, label %if.end, !dbg !3444

if.then5:                                         ; preds = %if.then
  store i1 true, ptr %retval, align 1, !dbg !3445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3445

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !3446

if.end6:                                          ; preds = %if.end, %lor.lhs.false3
  br label %for.inc, !dbg !3436

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr %type, align 4, !dbg !3434
  %inc = add i32 %7, 1, !dbg !3434
  store i32 %inc, ptr %type, align 4, !dbg !3434
  br label %for.cond, !dbg !3434, !llvm.loop !3447

cleanup:                                          ; preds = %if.then5, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #19, !dbg !3434
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i1 false, ptr %retval, align 1, !dbg !3449
  br label %return, !dbg !3449

return:                                           ; preds = %for.end, %cleanup
  %8 = load i1, ptr %retval, align 1, !dbg !3450
  ret i1 %8, !dbg !3450

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module(i64 noundef %addr, ptr noundef %mod) #6 align 16 !dbg !3451 {
entry:
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3453, metadata !DIExpression()), !dbg !3455
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !3454, metadata !DIExpression()), !dbg !3456
  %0 = load i64, ptr %addr.addr, align 8, !dbg !3457
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !3458
  %call = call zeroext i1 @within_module_init(i64 noundef %0, ptr noundef %1) #18, !dbg !3459
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !3460

lor.rhs:                                          ; preds = %entry
  %2 = load i64, ptr %addr.addr, align 8, !dbg !3461
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !3462
  %call1 = call zeroext i1 @within_module_core(i64 noundef %2, ptr noundef %3) #18, !dbg !3463
  br label %lor.end, !dbg !3460

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %4, !dbg !3464
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !3465 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3469, metadata !DIExpression()), !dbg !3471
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3470, metadata !DIExpression()), !dbg !3472
  %0 = load i64, ptr %size.addr, align 8, !dbg !3473
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3474
  %or = or i32 %1, 256, !dbg !3475
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !3476
  ret ptr %call, !dbg !3477
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_linked(ptr noundef %key) #6 align 16 !dbg !3478 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3480, metadata !DIExpression()), !dbg !3481
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3482
  %1 = getelementptr inbounds %struct.static_key, ptr %0, i32 0, i32 1, !dbg !3483
  %2 = load i64, ptr %1, align 8, !dbg !3483
  %and = and i64 %2, 2, !dbg !3484
  %tobool = icmp ne i64 %and, 0, !dbg !3482
  ret i1 %tobool, !dbg !3485
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3486 dso_local void @kfree(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !3489 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3494, metadata !DIExpression()), !dbg !3501
  br label %do.body, !dbg !3502

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #19, !dbg !3503
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !3495, metadata !DIExpression()), !dbg !3503
  %0 = load i32, ptr %val.addr, align 4, !dbg !3503
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3503
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !3503

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !3503
  %cmp = icmp eq i32 %2, 1, !dbg !3503
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3503

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !3503
  %cmp1 = icmp eq i32 %3, -1, !dbg !3503
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3503

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !3503
  br label %cond.end, !dbg !3503

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !3503

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !3503
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !3503
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !3504
  %cmp2 = icmp eq i32 %5, 1, !dbg !3504
  br i1 %cmp2, label %if.then, label %if.else, !dbg !3503

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !3505, !srcloc !3507
  br label %if.end8, !dbg !3504

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !3508
  %cmp3 = icmp eq i32 %6, -1, !dbg !3508
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !3504

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !3509, !srcloc !3511
  br label %if.end, !dbg !3508

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !3508

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #19, !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !3497, metadata !DIExpression()), !dbg !3512
  %7 = load i32, ptr %val.addr, align 4, !dbg !3512
  %conv = sext i32 %7 to i64, !dbg !3512
  %and = and i64 %conv, 4294967295, !dbg !3512
  %conv7 = trunc i64 %and to i32, !dbg !3512
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !3512
  %8 = load i32, ptr %pto_val__, align 4, !dbg !3512
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !3512, !srcloc !3513
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #19, !dbg !3508
  br label %do.cond, !dbg !3512

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !3512

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #19, !dbg !3502
  br label %do.end10, !dbg !3503

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !3514
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3515 dso_local ptr @__module_address(i64 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !3518 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #19, !dbg !3522
  call void @llvm.dbg.declare(metadata ptr %c, metadata !3520, metadata !DIExpression()), !dbg !3522
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !3522, !srcloc !3523
  %1 = icmp ult i8 %0, 2, !dbg !3522
  call void @llvm.assume(i1 %1), !dbg !3522
  store i8 %0, ptr %c, align 1, !dbg !3522
  %2 = load i8, ptr %c, align 1, !dbg !3522, !range !1414, !noundef !359
  %tobool = trunc i8 %2 to i1, !dbg !3522
  %frombool = zext i1 %tobool to i8, !dbg !3522
  store i8 %frombool, ptr %tmp, align 1, !dbg !3522
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #19, !dbg !3524
  %3 = load i8, ptr %tmp, align 1, !dbg !3522, !range !1414, !noundef !359
  %tobool1 = trunc i8 %3 to i1, !dbg !3522
  ret i1 %tobool1, !dbg !3525
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @static_key_entries(ptr noundef %key) #6 align 16 !dbg !3526 {
entry:
  %key.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3530, metadata !DIExpression()), !dbg !3536
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3537
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3531, metadata !DIExpression()), !dbg !3537
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3537
  %1 = getelementptr inbounds %struct.static_key, ptr %0, i32 0, i32 1, !dbg !3537
  %2 = load i64, ptr %1, align 8, !dbg !3537
  %and = and i64 %2, 2, !dbg !3537
  %tobool = icmp ne i64 %and, 0, !dbg !3537
  %lnot = xor i1 %tobool, true, !dbg !3537
  %lnot1 = xor i1 %lnot, true, !dbg !3537
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3537
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3537
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3538
  %tobool2 = icmp ne i32 %3, 0, !dbg !3538
  %lnot3 = xor i1 %tobool2, true, !dbg !3538
  %lnot5 = xor i1 %lnot3, true, !dbg !3538
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3538
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3538
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3538
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3538
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3537

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3538

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !3539
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3533, metadata !DIExpression()), !dbg !3539
  store i32 2307, ptr %__flags, align 4, !dbg !3539
  br label %do.body8, !dbg !3539

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !3540

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3540

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !3539

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !3542
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 408, i32 %4, i64 12) #19, !dbg !3542, !srcloc !3544
  br label %do.cond10, !dbg !3542

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3542

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3539

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !3545

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3545

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !3538
  br label %do.cond15, !dbg !3539

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3539

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !3539

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !3537
  %tobool17 = icmp ne i32 %5, 0, !dbg !3537
  %lnot18 = xor i1 %tobool17, true, !dbg !3537
  %lnot20 = xor i1 %lnot18, true, !dbg !3537
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3537
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3537
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3537
  store i64 %expval23, ptr %tmp, align 8, !dbg !3538
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3547
  %6 = load i64, ptr %tmp, align 8, !dbg !3537
  %7 = load ptr, ptr %key.addr, align 8, !dbg !3548
  %8 = getelementptr inbounds %struct.static_key, ptr %7, i32 0, i32 1, !dbg !3549
  %9 = load i64, ptr %8, align 8, !dbg !3549
  %and24 = and i64 %9, -4, !dbg !3550
  %10 = inttoptr i64 %and24 to ptr, !dbg !3551
  ret ptr %10, !dbg !3552
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_key_set_mod(ptr noundef %key, ptr noundef %mod) #0 align 16 !dbg !3553 {
entry:
  %key.addr = alloca ptr, align 8
  %mod.addr = alloca ptr, align 8
  %type = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3557, metadata !DIExpression()), !dbg !3565
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !3558, metadata !DIExpression()), !dbg !3566
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #19, !dbg !3567
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3559, metadata !DIExpression()), !dbg !3568
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3569
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3560, metadata !DIExpression()), !dbg !3569
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !3569
  %1 = ptrtoint ptr %0 to i64, !dbg !3569
  %and = and i64 %1, 3, !dbg !3569
  %tobool = icmp ne i64 %and, 0, !dbg !3569
  %lnot = xor i1 %tobool, true, !dbg !3569
  %lnot1 = xor i1 %lnot, true, !dbg !3569
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3569
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3569
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !3570
  %tobool2 = icmp ne i32 %2, 0, !dbg !3570
  %lnot3 = xor i1 %tobool2, true, !dbg !3570
  %lnot5 = xor i1 %lnot3, true, !dbg !3570
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3570
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3570
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3570
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3570
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3569

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3570

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !3571
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3562, metadata !DIExpression()), !dbg !3571
  store i32 2307, ptr %__flags, align 4, !dbg !3571
  br label %do.body8, !dbg !3571

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !3572

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3572

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !3571

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !3574
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 603, i32 %3, i64 12) #19, !dbg !3574, !srcloc !3576
  br label %do.cond10, !dbg !3574

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3574

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3571

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !3577

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3577

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !3570
  br label %do.cond15, !dbg !3571

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3571

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !3571

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !3569
  %tobool17 = icmp ne i32 %4, 0, !dbg !3569
  %lnot18 = xor i1 %tobool17, true, !dbg !3569
  %lnot20 = xor i1 %lnot18, true, !dbg !3569
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3569
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3569
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3569
  store i64 %expval23, ptr %tmp, align 8, !dbg !3570
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3579
  %5 = load i64, ptr %tmp, align 8, !dbg !3569
  %6 = load ptr, ptr %key.addr, align 8, !dbg !3580
  %7 = getelementptr inbounds %struct.static_key, ptr %6, i32 0, i32 1, !dbg !3581
  %8 = load i64, ptr %7, align 8, !dbg !3581
  %and24 = and i64 %8, 3, !dbg !3582
  store i64 %and24, ptr %type, align 8, !dbg !3583
  %9 = load ptr, ptr %mod.addr, align 8, !dbg !3584
  %10 = load ptr, ptr %key.addr, align 8, !dbg !3585
  %11 = getelementptr inbounds %struct.static_key, ptr %10, i32 0, i32 1, !dbg !3586
  store ptr %9, ptr %11, align 8, !dbg !3587
  %12 = load i64, ptr %type, align 8, !dbg !3588
  %13 = load ptr, ptr %key.addr, align 8, !dbg !3589
  %14 = getelementptr inbounds %struct.static_key, ptr %13, i32 0, i32 1, !dbg !3590
  %15 = load i64, ptr %14, align 8, !dbg !3591
  %or = or i64 %15, %12, !dbg !3591
  store i64 %or, ptr %14, align 8, !dbg !3591
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #19, !dbg !3592
  ret void, !dbg !3592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_key_set_linked(ptr noundef %key) #6 align 16 !dbg !3593 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3595, metadata !DIExpression()), !dbg !3596
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3597
  %1 = getelementptr inbounds %struct.static_key, ptr %0, i32 0, i32 1, !dbg !3598
  %2 = load i64, ptr %1, align 8, !dbg !3599
  %or = or i64 %2, 2, !dbg !3599
  store i64 %or, ptr %1, align 8, !dbg !3599
  ret void, !dbg !3600
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @static_key_mod(ptr noundef %key) #6 align 16 !dbg !3601 {
entry:
  %key.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3605, metadata !DIExpression()), !dbg !3611
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3612
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !3606, metadata !DIExpression()), !dbg !3612
  %0 = load ptr, ptr %key.addr, align 8, !dbg !3612
  %call = call zeroext i1 @static_key_linked(ptr noundef %0) #18, !dbg !3612
  %lnot = xor i1 %call, true, !dbg !3612
  %lnot1 = xor i1 %lnot, true, !dbg !3612
  %lnot2 = xor i1 %lnot1, true, !dbg !3612
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3612
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !3612
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !3613
  %tobool = icmp ne i32 %1, 0, !dbg !3613
  %lnot3 = xor i1 %tobool, true, !dbg !3613
  %lnot5 = xor i1 %lnot3, true, !dbg !3613
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3613
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3613
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3613
  %tobool7 = icmp ne i64 %expval, 0, !dbg !3613
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3612

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3613

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !3614
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !3608, metadata !DIExpression()), !dbg !3614
  store i32 2307, ptr %__flags, align 4, !dbg !3614
  br label %do.body8, !dbg !3614

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !3615

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !3615

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !3614

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !3617
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 588, i32 %2, i64 12) #19, !dbg !3617, !srcloc !3619
  br label %do.cond10, !dbg !3617

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3617

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !3614

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !3620

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3620

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !3613
  br label %do.cond15, !dbg !3614

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3614

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !3614

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !3612
  %tobool17 = icmp ne i32 %3, 0, !dbg !3612
  %lnot18 = xor i1 %tobool17, true, !dbg !3612
  %lnot20 = xor i1 %lnot18, true, !dbg !3612
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !3612
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !3612
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !3612
  store i64 %expval23, ptr %tmp, align 8, !dbg !3613
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3622
  %4 = load i64, ptr %tmp, align 8, !dbg !3612
  %5 = load ptr, ptr %key.addr, align 8, !dbg !3623
  %6 = getelementptr inbounds %struct.static_key, ptr %5, i32 0, i32 1, !dbg !3624
  %7 = load i64, ptr %6, align 8, !dbg !3624
  %and = and i64 %7, -4, !dbg !3625
  %8 = inttoptr i64 %and to ptr, !dbg !3626
  ret ptr %8, !dbg !3627
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__jump_label_update(ptr noundef %key, ptr noundef %entry1, ptr noundef %stop, i1 noundef zeroext %init) #0 align 16 !dbg !3628 {
entry:
  %key.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %init.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3632, metadata !DIExpression()), !dbg !3636
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3633, metadata !DIExpression()), !dbg !3637
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !3634, metadata !DIExpression()), !dbg !3638
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !3635, metadata !DIExpression()), !dbg !3639
  br label %for.cond, !dbg !3640

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3641
  %1 = load ptr, ptr %stop.addr, align 8, !dbg !3644
  %cmp = icmp ult ptr %0, %1, !dbg !3645
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3646

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !3647
  %call = call ptr @jump_entry_key(ptr noundef %2) #18, !dbg !3648
  %3 = load ptr, ptr %key.addr, align 8, !dbg !3649
  %cmp2 = icmp eq ptr %call, %3, !dbg !3650
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ], !dbg !3651
  br i1 %4, label %for.body, label %for.end, !dbg !3652

for.body:                                         ; preds = %land.end
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !3653
  %6 = load i8, ptr %init.addr, align 1, !dbg !3656, !range !1414, !noundef !359
  %tobool = trunc i8 %6 to i1, !dbg !3656
  %call3 = call zeroext i1 @jump_label_can_update(ptr noundef %5, i1 noundef zeroext %tobool) #18, !dbg !3657
  br i1 %call3, label %if.end, label %if.then, !dbg !3658

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !3659

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !3660
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !3662
  %call4 = call i32 @jump_label_type(ptr noundef %8) #18, !dbg !3663
  %call5 = call zeroext i1 @arch_jump_label_transform_queue(ptr noundef %7, i32 noundef %call4) #18, !dbg !3664
  br i1 %call5, label %if.end20, label %if.then6, !dbg !3665

if.then6:                                         ; preds = %if.end
  call void @arch_jump_label_transform_apply() #18, !dbg !3666
  br label %do.body, !dbg !3668

do.body:                                          ; preds = %if.then6
  %9 = load ptr, ptr %entry.addr, align 8, !dbg !3669
  %10 = load ptr, ptr %entry.addr, align 8, !dbg !3669
  %call7 = call i32 @jump_label_type(ptr noundef %10) #18, !dbg !3669
  %call8 = call zeroext i1 @arch_jump_label_transform_queue(ptr noundef %9, i32 noundef %call7) #18, !dbg !3669
  %lnot = xor i1 %call8, true, !dbg !3669
  %lnot9 = xor i1 %lnot, true, !dbg !3669
  %lnot10 = xor i1 %lnot9, true, !dbg !3669
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !3669
  %conv = sext i32 %lnot.ext to i64, !dbg !3669
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3669
  %tobool11 = icmp ne i64 %expval, 0, !dbg !3669
  br i1 %tobool11, label %if.then12, label %if.end18, !dbg !3672

if.then12:                                        ; preds = %do.body
  br label %do.body13, !dbg !3669

do.body13:                                        ; preds = %if.then12
  br label %do.body14, !dbg !3673

do.body14:                                        ; preds = %do.body13
  br label %do.end, !dbg !3675

do.end:                                           ; preds = %do.body14
  br label %do.body15, !dbg !3673

do.body15:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 515, i32 0, i64 12) #19, !dbg !3677, !srcloc !3679
  br label %do.end16, !dbg !3677

do.end16:                                         ; preds = %do.body15
  unreachable, !dbg !3673

do.end17:                                         ; No predecessors!
  br label %if.end18, !dbg !3673

if.end18:                                         ; preds = %do.end17, %do.body
  br label %do.end19, !dbg !3672

do.end19:                                         ; preds = %if.end18
  br label %if.end20, !dbg !3680

if.end20:                                         ; preds = %do.end19, %if.end
  br label %for.inc, !dbg !3681

for.inc:                                          ; preds = %if.end20, %if.then
  %11 = load ptr, ptr %entry.addr, align 8, !dbg !3682
  %incdec.ptr = getelementptr %struct.jump_entry, ptr %11, i32 1, !dbg !3682
  store ptr %incdec.ptr, ptr %entry.addr, align 8, !dbg !3682
  br label %for.cond, !dbg !3683, !llvm.loop !3684

for.end:                                          ; preds = %land.end
  call void @arch_jump_label_transform_apply() #18, !dbg !3686
  ret void, !dbg !3687
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_mem_type(i64 noundef %addr, ptr noundef %mod, i32 noundef %type) #6 align 16 !dbg !3688 {
entry:
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3692, metadata !DIExpression()), !dbg !3697
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !3693, metadata !DIExpression()), !dbg !3698
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3694, metadata !DIExpression()), !dbg !3699
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #19, !dbg !3700
  call void @llvm.dbg.declare(metadata ptr %base, metadata !3695, metadata !DIExpression()), !dbg !3701
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #19, !dbg !3700
  call void @llvm.dbg.declare(metadata ptr %size, metadata !3696, metadata !DIExpression()), !dbg !3702
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !3703
  %mem = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 22, !dbg !3704
  %1 = load i32, ptr %type.addr, align 4, !dbg !3705
  %idxprom = sext i32 %1 to i64, !dbg !3703
  %arrayidx = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 %idxprom, !dbg !3703
  %base1 = getelementptr inbounds %struct.module_memory, ptr %arrayidx, i32 0, i32 0, !dbg !3706
  %2 = load ptr, ptr %base1, align 8, !dbg !3706
  %3 = ptrtoint ptr %2 to i64, !dbg !3707
  store i64 %3, ptr %base, align 8, !dbg !3708
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !3709
  %mem2 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 22, !dbg !3710
  %5 = load i32, ptr %type.addr, align 4, !dbg !3711
  %idxprom3 = sext i32 %5 to i64, !dbg !3709
  %arrayidx4 = getelementptr [7 x %struct.module_memory], ptr %mem2, i64 0, i64 %idxprom3, !dbg !3709
  %size5 = getelementptr inbounds %struct.module_memory, ptr %arrayidx4, i32 0, i32 1, !dbg !3712
  %6 = load i32, ptr %size5, align 8, !dbg !3712
  %conv = zext i32 %6 to i64, !dbg !3709
  store i64 %conv, ptr %size, align 8, !dbg !3713
  %7 = load i64, ptr %addr.addr, align 8, !dbg !3714
  %8 = load i64, ptr %base, align 8, !dbg !3715
  %sub = sub i64 %7, %8, !dbg !3716
  %9 = load i64, ptr %size, align 8, !dbg !3717
  %cmp = icmp ult i64 %sub, %9, !dbg !3718
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #19, !dbg !3719
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #19, !dbg !3719
  ret i1 %cmp, !dbg !3720
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_core(i64 noundef %addr, ptr noundef %mod) #6 align 16 !dbg !3721 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3723, metadata !DIExpression()), !dbg !3727
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !3724, metadata !DIExpression()), !dbg !3728
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #19, !dbg !3729
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3725, metadata !DIExpression()), !dbg !3729
  store i32 0, ptr %type, align 4, !dbg !3729
  br label %for.cond, !dbg !3729

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %type, align 4, !dbg !3730
  %cmp = icmp slt i32 %0, 7, !dbg !3730
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !3729

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3729

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %type, align 4, !dbg !3732
  %cmp1 = icmp eq i32 %1, 4, !dbg !3732
  br i1 %cmp1, label %if.end6, label %lor.lhs.false, !dbg !3732

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, ptr %type, align 4, !dbg !3732
  %cmp2 = icmp eq i32 %2, 5, !dbg !3732
  br i1 %cmp2, label %if.end6, label %lor.lhs.false3, !dbg !3732

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !3732
  %cmp4 = icmp eq i32 %3, 6, !dbg !3732
  br i1 %cmp4, label %if.end6, label %if.then, !dbg !3730

if.then:                                          ; preds = %lor.lhs.false3
  %4 = load i64, ptr %addr.addr, align 8, !dbg !3734
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !3737
  %6 = load i32, ptr %type, align 4, !dbg !3738
  %call = call zeroext i1 @within_module_mem_type(i64 noundef %4, ptr noundef %5, i32 noundef %6) #18, !dbg !3739
  br i1 %call, label %if.then5, label %if.end, !dbg !3740

if.then5:                                         ; preds = %if.then
  store i1 true, ptr %retval, align 1, !dbg !3741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3741

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !3742

if.end6:                                          ; preds = %if.end, %lor.lhs.false3, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !3732

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr %type, align 4, !dbg !3730
  %inc = add i32 %7, 1, !dbg !3730
  store i32 %inc, ptr %type, align 4, !dbg !3730
  br label %for.cond, !dbg !3730, !llvm.loop !3743

cleanup:                                          ; preds = %if.then5, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #19, !dbg !3730
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i1 false, ptr %retval, align 1, !dbg !3745
  br label %return, !dbg !3745

return:                                           ; preds = %for.end, %cleanup
  %8 = load i1, ptr %retval, align 1, !dbg !3746
  ret i1 %8, !dbg !3746

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #13 align 16 !dbg !3747 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3749, metadata !DIExpression()), !dbg !3754
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3750, metadata !DIExpression()), !dbg !3755
  %0 = load i64, ptr %size.addr, align 8, !dbg !3756
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3757
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3758

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3759
  %tobool = icmp ne i64 %2, 0, !dbg !3759
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3760

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !3761
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3751, metadata !DIExpression()), !dbg !3762
  %3 = load i64, ptr %size.addr, align 8, !dbg !3763
  %cmp = icmp ugt i64 %3, 8192, !dbg !3765
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3766

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3767
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3768
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !3769
  store ptr %call, ptr %retval, align 8, !dbg !3770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3770

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3771
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !3771
  store i32 %call2, ptr %index, align 4, !dbg !3772
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3773
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3774
  %9 = ptrtoint ptr %8 to i64, !dbg !3774
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !3775
  %idxprom = zext i32 %call3 to i64, !dbg !3776
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3776
  %10 = load i32, ptr %index, align 4, !dbg !3777
  %idxprom4 = zext i32 %10 to i64, !dbg !3776
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3776
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3776
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3778
  %13 = load i64, ptr %size.addr, align 8, !dbg !3779
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !3780
  store ptr %call6, ptr %retval, align 8, !dbg !3781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3781

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !3782
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3783
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3784
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !3785
  store ptr %call8, ptr %retval, align 8, !dbg !3786
  br label %return, !dbg !3786

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3787
  ret ptr %16, !dbg !3787
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3788 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !3789 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3793, metadata !DIExpression()), !dbg !3795
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3794, metadata !DIExpression()), !dbg !3796
  %0 = load i64, ptr %size.addr, align 8, !dbg !3797
  %tobool = icmp ne i64 %0, 0, !dbg !3797
  br i1 %tobool, label %if.end, label %if.then, !dbg !3799

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3800
  br label %return, !dbg !3800

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3801
  %cmp = icmp ule i64 %1, 8, !dbg !3803
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3804

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3805
  br label %return, !dbg !3805

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3806
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3808
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3809

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3810
  %cmp4 = icmp ule i64 %3, 96, !dbg !3811
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3812

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3813
  br label %return, !dbg !3813

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3814
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3816
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3817

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3818
  %cmp9 = icmp ule i64 %5, 192, !dbg !3819
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3820

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3821
  br label %return, !dbg !3821

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3822
  %cmp12 = icmp ule i64 %6, 8, !dbg !3824
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3825

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3826
  br label %return, !dbg !3826

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3827
  %cmp15 = icmp ule i64 %7, 16, !dbg !3829
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3830

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3831
  br label %return, !dbg !3831

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3832
  %cmp18 = icmp ule i64 %8, 32, !dbg !3834
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3835

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3836
  br label %return, !dbg !3836

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3837
  %cmp21 = icmp ule i64 %9, 64, !dbg !3839
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3840

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3841
  br label %return, !dbg !3841

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3842
  %cmp24 = icmp ule i64 %10, 128, !dbg !3844
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3845

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3846
  br label %return, !dbg !3846

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3847
  %cmp27 = icmp ule i64 %11, 256, !dbg !3849
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3850

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3851
  br label %return, !dbg !3851

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3852
  %cmp30 = icmp ule i64 %12, 512, !dbg !3854
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3855

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3856
  br label %return, !dbg !3856

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3857
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3859
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3860

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3861
  br label %return, !dbg !3861

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3862
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3864
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3865

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3866
  br label %return, !dbg !3866

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3867
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3869
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3870

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3871
  br label %return, !dbg !3871

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3872
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3874
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3875

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3876
  br label %return, !dbg !3876

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3877
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3879
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3880

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3881
  br label %return, !dbg !3881

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3882
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3884
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3885

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3886
  br label %return, !dbg !3886

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3887
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3889
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3890

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3891
  br label %return, !dbg !3891

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3892
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3894
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3895

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3896
  br label %return, !dbg !3896

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3897
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3899
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3900

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3901
  br label %return, !dbg !3901

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3902
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3904
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3905

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3906
  br label %return, !dbg !3906

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3907
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3909
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3910

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3911
  br label %return, !dbg !3911

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3912
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3914
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3915

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3916
  br label %return, !dbg !3916

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3917, !range !1414, !noundef !359
  %tobool69 = trunc i8 %25 to i1, !dbg !3917
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3919

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3920

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_228() #23, !dbg !3921, !srcloc !3924
  unreachable, !dbg !3921

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3925

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3926

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3927

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3929

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3927

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #19, !dbg !3931, !srcloc !3933
  br label %do.end75, !dbg !3931

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3927

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3934
  br label %return, !dbg !3934

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3935
  ret i32 %26, !dbg !3935
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3936 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !3942 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3946, metadata !DIExpression()), !dbg !3948
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3947, metadata !DIExpression()), !dbg !3949
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3950
  %and = and i32 %0, 17, !dbg !3950
  %cmp = icmp eq i32 %and, 0, !dbg !3950
  %lnot = xor i1 %cmp, true, !dbg !3950
  %lnot1 = xor i1 %lnot, true, !dbg !3950
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3950
  %conv = sext i32 %lnot.ext to i64, !dbg !3950
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3950
  %tobool = icmp ne i64 %expval, 0, !dbg !3950
  br i1 %tobool, label %if.then, label %if.end, !dbg !3952

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3953
  br label %return, !dbg !3953

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3954
  %and2 = and i32 %1, 1, !dbg !3956
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3956
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3957

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3958
  br label %return, !dbg !3958

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3959
  br label %return, !dbg !3959

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3961
  ret i32 %2, !dbg !3961
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3962 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #15

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3963 dso_local void @__compiletime_assert_228() #17

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @jump_label_can_update(ptr noundef %entry1, i1 noundef zeroext %init) #0 align 16 !dbg !1297 {
entry:
  %retval = alloca i1, align 1
  %entry.addr = alloca ptr, align 8
  %init.addr = alloca i8, align 1
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp60 = alloca i64, align 8
  %tmp69 = alloca i64, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1301, metadata !DIExpression()), !dbg !3964
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !1302, metadata !DIExpression()), !dbg !3965
  %0 = load i8, ptr %init.addr, align 1, !dbg !3966, !range !1414, !noundef !359
  %tobool = trunc i8 %0 to i1, !dbg !3966
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3968

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3969
  %call = call zeroext i1 @jump_entry_is_init(ptr noundef %1) #18, !dbg !3970
  br i1 %call, label %if.then, label %if.end, !dbg !3971

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !3972
  br label %return, !dbg !3972

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !3973
  %call2 = call i64 @jump_entry_code(ptr noundef %2) #18, !dbg !3974
  %call3 = call i32 @kernel_text_address(i64 noundef %call2) #18, !dbg !3975
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3975
  br i1 %tobool4, label %if.end77, label %if.then5, !dbg !3976

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #19, !dbg !3977
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !1303, metadata !DIExpression()), !dbg !3977
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3977
  %call6 = call zeroext i1 @jump_entry_is_init(ptr noundef %3) #18, !dbg !3977
  %lnot = xor i1 %call6, true, !dbg !3977
  %lnot7 = xor i1 %lnot, true, !dbg !3977
  %lnot8 = xor i1 %lnot7, true, !dbg !3977
  %frombool9 = zext i1 %lnot8 to i8, !dbg !3977
  store i8 %frombool9, ptr %__ret_do_once, align 1, !dbg !3977
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #19, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !1307, metadata !DIExpression()), !dbg !3978
  %4 = load i8, ptr %__ret_do_once, align 1, !dbg !3978, !range !1414, !noundef !359
  %tobool10 = trunc i8 %4 to i1, !dbg !3978
  %lnot11 = xor i1 %tobool10, true, !dbg !3978
  %lnot12 = xor i1 %lnot11, true, !dbg !3978
  %frombool13 = zext i1 %lnot12 to i8, !dbg !3978
  store i8 %frombool13, ptr %__ret_cond, align 1, !dbg !3978
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #19, !dbg !3978
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !1310, metadata !DIExpression()), !dbg !3978
  store i8 0, ptr %__ret_once, align 1, !dbg !3978
  %5 = load i8, ptr %__ret_cond, align 1, !dbg !3979, !range !1414, !noundef !359
  %tobool14 = trunc i8 %5 to i1, !dbg !3979
  br i1 %tobool14, label %land.rhs, label %land.end, !dbg !3979

land.rhs:                                         ; preds = %if.then5
  %6 = load i8, ptr @jump_label_can_update.__already_done, align 1, !dbg !3979, !range !1414, !noundef !359
  %tobool15 = trunc i8 %6 to i1, !dbg !3979
  %lnot16 = xor i1 %tobool15, true, !dbg !3979
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then5
  %7 = phi i1 [ false, %if.then5 ], [ %lnot16, %land.rhs ], !dbg !3981
  %lnot17 = xor i1 %7, true, !dbg !3979
  %lnot18 = xor i1 %lnot17, true, !dbg !3979
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !3979
  %conv = sext i32 %lnot.ext to i64, !dbg !3979
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3979
  %tobool19 = icmp ne i64 %expval, 0, !dbg !3979
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3978

if.then20:                                        ; preds = %land.end
  store i8 1, ptr @jump_label_can_update.__already_done, align 1, !dbg !3982
  store i8 1, ptr %__ret_once, align 1, !dbg !3982
  br label %if.end21, !dbg !3982

if.end21:                                         ; preds = %if.then20, %land.end
  %8 = load i8, ptr %__ret_once, align 1, !dbg !3978, !range !1414, !noundef !359
  %tobool22 = trunc i8 %8 to i1, !dbg !3978
  %lnot23 = xor i1 %tobool22, true, !dbg !3978
  %lnot25 = xor i1 %lnot23, true, !dbg !3978
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !3978
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !3978
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !3978
  store i64 %expval28, ptr %tmp, align 8, !dbg !3979
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #19, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #19, !dbg !3984
  %9 = load i64, ptr %tmp, align 8, !dbg !3978
  %tobool29 = icmp ne i64 %9, 0, !dbg !3984
  br i1 %tobool29, label %if.then30, label %if.end68, !dbg !3977

if.then30:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3985
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1311, metadata !DIExpression()), !dbg !3985
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !3985
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !3986
  %tobool31 = icmp ne i32 %10, 0, !dbg !3986
  %lnot32 = xor i1 %tobool31, true, !dbg !3986
  %lnot34 = xor i1 %lnot32, true, !dbg !3986
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !3986
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !3986
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !3986
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !3986
  br i1 %tobool38, label %if.then39, label %if.end59, !dbg !3985

if.then39:                                        ; preds = %if.then30
  br label %do.body, !dbg !3986

do.body:                                          ; preds = %if.then39
  br label %do.body40, !dbg !3987

do.body40:                                        ; preds = %do.body
  br label %do.cond, !dbg !3988

do.cond:                                          ; preds = %do.body40
  br label %do.end, !dbg !3988

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %entry.addr, align 8, !dbg !3987
  %call41 = call i64 @jump_entry_code(ptr noundef %11) #18, !dbg !3987
  %12 = inttoptr i64 %call41 to ptr, !dbg !3987
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.4, ptr noundef %12) #18, !dbg !3987
  br label %do.body42, !dbg !3987

do.body42:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !3990
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1313, metadata !DIExpression()), !dbg !3990
  store i32 2313, ptr %__flags, align 4, !dbg !3990
  br label %do.body43, !dbg !3990

do.body43:                                        ; preds = %do.body42
  br label %do.cond44, !dbg !3991

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !3991

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !3990

do.body46:                                        ; preds = %do.end45
  %13 = load i32, ptr %__flags, align 4, !dbg !3993
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 481, i32 %13, i64 12) #19, !dbg !3993, !srcloc !3995
  br label %do.cond47, !dbg !3993

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !3993

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !3990

do.body49:                                        ; preds = %do.end48
  br label %do.cond50, !dbg !3996

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !3996

do.end51:                                         ; preds = %do.cond50
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !3987
  br label %do.cond52, !dbg !3990

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !3990

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !3987

do.body54:                                        ; preds = %do.end53
  br label %do.cond55, !dbg !3998

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !3998

do.end56:                                         ; preds = %do.cond55
  br label %do.cond57, !dbg !3987

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !3987

do.end58:                                         ; preds = %do.cond57
  br label %if.end59, !dbg !3987

if.end59:                                         ; preds = %do.end58, %if.then30
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !3985
  %tobool61 = icmp ne i32 %14, 0, !dbg !3985
  %lnot62 = xor i1 %tobool61, true, !dbg !3985
  %lnot64 = xor i1 %lnot62, true, !dbg !3985
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !3985
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !3985
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !3985
  store i64 %expval67, ptr %tmp60, align 8, !dbg !3986
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !3984
  %15 = load i64, ptr %tmp60, align 8, !dbg !3985
  br label %if.end68, !dbg !3984

if.end68:                                         ; preds = %if.end59, %if.end21
  %16 = load i8, ptr %__ret_do_once, align 1, !dbg !3977, !range !1414, !noundef !359
  %tobool70 = trunc i8 %16 to i1, !dbg !3977
  %lnot71 = xor i1 %tobool70, true, !dbg !3977
  %lnot73 = xor i1 %lnot71, true, !dbg !3977
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !3977
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !3977
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !3977
  store i64 %expval76, ptr %tmp69, align 8, !dbg !3984
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #19, !dbg !4000
  %17 = load i64, ptr %tmp69, align 8, !dbg !3977
  store i1 false, ptr %retval, align 1, !dbg !4001
  br label %return, !dbg !4001

if.end77:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !4002
  br label %return, !dbg !4002

return:                                           ; preds = %if.end77, %if.end68, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !4003
  ret i1 %18, !dbg !4003
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4004 dso_local zeroext i1 @arch_jump_label_transform_queue(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4007 dso_local void @arch_jump_label_transform_apply() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @jump_entry_is_init(ptr noundef %entry1) #6 align 16 !dbg !4008 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4010, metadata !DIExpression()), !dbg !4011
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4012
  %key = getelementptr inbounds %struct.jump_entry, ptr %0, i32 0, i32 2, !dbg !4013
  %1 = load i64, ptr %key, align 8, !dbg !4013
  %and = and i64 %1, 2, !dbg !4014
  %tobool = icmp ne i64 %and, 0, !dbg !4015
  ret i1 %tobool, !dbg !4016
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4017 dso_local i32 @kernel_text_address(i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_key_clear_linked(ptr noundef %key) #6 align 16 !dbg !4020 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4022, metadata !DIExpression()), !dbg !4023
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4024
  %1 = getelementptr inbounds %struct.static_key, ptr %0, i32 0, i32 1, !dbg !4025
  %2 = load i64, ptr %1, align 8, !dbg !4026
  %and = and i64 %2, -3, !dbg !4026
  store i64 %and, ptr %1, align 8, !dbg !4026
  ret void, !dbg !4027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @addr_conflict(ptr noundef %entry1, ptr noundef %start, ptr noundef %end) #0 align 16 !dbg !4028 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4032, metadata !DIExpression()), !dbg !4035
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !4033, metadata !DIExpression()), !dbg !4036
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !4034, metadata !DIExpression()), !dbg !4037
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4038
  %call = call i64 @jump_entry_code(ptr noundef %0) #18, !dbg !4040
  %1 = load ptr, ptr %end.addr, align 8, !dbg !4041
  %2 = ptrtoint ptr %1 to i64, !dbg !4042
  %cmp = icmp ule i64 %call, %2, !dbg !4043
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4044

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4045
  %call2 = call i64 @jump_entry_code(ptr noundef %3) #18, !dbg !4046
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !4047
  %call3 = call i32 @jump_entry_size(ptr noundef %4) #18, !dbg !4048
  %conv = sext i32 %call3 to i64, !dbg !4048
  %add = add i64 %call2, %conv, !dbg !4049
  %5 = load ptr, ptr %start.addr, align 8, !dbg !4050
  %6 = ptrtoint ptr %5 to i64, !dbg !4051
  %cmp4 = icmp ugt i64 %add, %6, !dbg !4052
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4053

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4054
  br label %return, !dbg !4054

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !4055
  br label %return, !dbg !4055

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !4056
  ret i32 %7, !dbg !4056
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @jump_entry_size(ptr noundef %entry1) #6 align 16 !dbg !4057 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4061, metadata !DIExpression()), !dbg !4062
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4063
  %call = call i32 @arch_jump_entry_size(ptr noundef %0) #18, !dbg !4064
  ret i32 %call, !dbg !4065
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4066 dso_local i32 @arch_jump_entry_size(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4068 dso_local ptr @__module_text_address(i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4069 dso_local zeroext i1 @try_module_get(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4072 dso_local void @module_put(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__jump_label_mod_update(ptr noundef %key) #0 align 16 !dbg !4073 {
entry:
  %key.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %stop = alloca ptr, align 8
  %m = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4075, metadata !DIExpression()), !dbg !4082
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #19, !dbg !4083
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !4076, metadata !DIExpression()), !dbg !4084
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4085
  %call = call ptr @static_key_mod(ptr noundef %0) #18, !dbg !4086
  store ptr %call, ptr %mod, align 8, !dbg !4087
  br label %for.cond, !dbg !4088

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %mod, align 8, !dbg !4089
  %tobool = icmp ne ptr %1, null, !dbg !4090
  br i1 %tobool, label %for.body, label %for.end, !dbg !4090

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %stop) #19, !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %stop, metadata !4077, metadata !DIExpression()), !dbg !4092
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #19, !dbg !4093
  call void @llvm.dbg.declare(metadata ptr %m, metadata !4081, metadata !DIExpression()), !dbg !4094
  %2 = load ptr, ptr %mod, align 8, !dbg !4095
  %entries = getelementptr inbounds %struct.static_key_mod, ptr %2, i32 0, i32 1, !dbg !4097
  %3 = load ptr, ptr %entries, align 8, !dbg !4097
  %tobool1 = icmp ne ptr %3, null, !dbg !4095
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4098

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4099

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %mod, align 8, !dbg !4100
  %mod2 = getelementptr inbounds %struct.static_key_mod, ptr %4, i32 0, i32 2, !dbg !4101
  %5 = load ptr, ptr %mod2, align 8, !dbg !4101
  store ptr %5, ptr %m, align 8, !dbg !4102
  %6 = load ptr, ptr %m, align 8, !dbg !4103
  %tobool3 = icmp ne ptr %6, null, !dbg !4103
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !4105

if.then4:                                         ; preds = %if.end
  store ptr @__stop___jump_table, ptr %stop, align 8, !dbg !4106
  br label %if.end5, !dbg !4107

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %m, align 8, !dbg !4108
  %jump_entries = getelementptr inbounds %struct.module, ptr %7, i32 0, i32 41, !dbg !4109
  %8 = load ptr, ptr %jump_entries, align 16, !dbg !4109
  %9 = load ptr, ptr %m, align 8, !dbg !4110
  %num_jump_entries = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 42, !dbg !4111
  %10 = load i32, ptr %num_jump_entries, align 8, !dbg !4111
  %idx.ext = zext i32 %10 to i64, !dbg !4112
  %add.ptr = getelementptr %struct.jump_entry, ptr %8, i64 %idx.ext, !dbg !4112
  store ptr %add.ptr, ptr %stop, align 8, !dbg !4113
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %11 = load ptr, ptr %key.addr, align 8, !dbg !4114
  %12 = load ptr, ptr %mod, align 8, !dbg !4115
  %entries6 = getelementptr inbounds %struct.static_key_mod, ptr %12, i32 0, i32 1, !dbg !4116
  %13 = load ptr, ptr %entries6, align 8, !dbg !4116
  %14 = load ptr, ptr %stop, align 8, !dbg !4117
  %15 = load ptr, ptr %m, align 8, !dbg !4118
  %tobool7 = icmp ne ptr %15, null, !dbg !4118
  br i1 %tobool7, label %land.rhs, label %land.end, !dbg !4119

land.rhs:                                         ; preds = %if.end5
  %16 = load ptr, ptr %m, align 8, !dbg !4120
  %state = getelementptr inbounds %struct.module, ptr %16, i32 0, i32 0, !dbg !4121
  %17 = load i32, ptr %state, align 64, !dbg !4121
  %cmp = icmp eq i32 %17, 1, !dbg !4122
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end5
  %18 = phi i1 [ false, %if.end5 ], [ %cmp, %land.rhs ], !dbg !4123
  call void @__jump_label_update(ptr noundef %11, ptr noundef %13, ptr noundef %14, i1 noundef zeroext %18) #18, !dbg !4124
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4125
  br label %cleanup, !dbg !4125

cleanup:                                          ; preds = %land.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #19, !dbg !4125
  call void @llvm.lifetime.end.p0(i64 8, ptr %stop) #19, !dbg !4125
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4126

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %19 = load ptr, ptr %mod, align 8, !dbg !4127
  %next = getelementptr inbounds %struct.static_key_mod, ptr %19, i32 0, i32 0, !dbg !4128
  %20 = load ptr, ptr %next, align 8, !dbg !4128
  store ptr %20, ptr %mod, align 8, !dbg !4129
  br label %for.cond, !dbg !4130, !llvm.loop !4131

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #19, !dbg !4133
  ret void, !dbg !4133

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #12 = { nocallback nounwind }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1346}
!llvm.module.flags = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!llvm.ident = !{!1355}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "jump_label_mutex", scope: !2, file: !3, line: 23, type: !478, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.jump_label.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/jump_label\22 -D KBUILD_BASENAME=\22jump_label\22 -D KBUILD_MODNAME=\22jump_label\22 -D __KBUILD_MODNAME=kmod_jump_label -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/jump_label.ll kernel/jump_label.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !1169, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/jump_label.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4c1334228a3dffd68727d7172089e6da")
!4 = !{!5, !11, !37, !42, !49, !55, !66, !78}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 30, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!14 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!15 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!16 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!17 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!18 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!19 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!20 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!21 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!22 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!23 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!24 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!25 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!26 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!27 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!28 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!29 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!30 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!31 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!32 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!33 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!34 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!35 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!36 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "jump_label_type", file: !38, line: 191, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "JUMP_LABEL_NOP", value: 0)
!41 = !DIEnumerator(name: "JUMP_LABEL_JMP", value: 1)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !43, line: 312, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!46 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!47 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!48 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !50, line: 26, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!53 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!54 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "system_states", file: !56, line: 228, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65}
!58 = !DIEnumerator(name: "SYSTEM_BOOTING", value: 0)
!59 = !DIEnumerator(name: "SYSTEM_SCHEDULING", value: 1)
!60 = !DIEnumerator(name: "SYSTEM_FREEING_INITMEM", value: 2)
!61 = !DIEnumerator(name: "SYSTEM_RUNNING", value: 3)
!62 = !DIEnumerator(name: "SYSTEM_HALT", value: 4)
!63 = !DIEnumerator(name: "SYSTEM_POWER_OFF", value: 5)
!64 = !DIEnumerator(name: "SYSTEM_RESTART", value: 6)
!65 = !DIEnumerator(name: "SYSTEM_SUSPEND", value: 7)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mod_mem_type", file: !43, line: 324, baseType: !67, size: 32, elements: !68)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77}
!69 = !DIEnumerator(name: "MOD_TEXT", value: 0)
!70 = !DIEnumerator(name: "MOD_DATA", value: 1)
!71 = !DIEnumerator(name: "MOD_RODATA", value: 2)
!72 = !DIEnumerator(name: "MOD_RO_AFTER_INIT", value: 3)
!73 = !DIEnumerator(name: "MOD_INIT_TEXT", value: 4)
!74 = !DIEnumerator(name: "MOD_INIT_DATA", value: 5)
!75 = !DIEnumerator(name: "MOD_INIT_RODATA", value: 6)
!76 = !DIEnumerator(name: "MOD_MEM_NUM_TYPES", value: 7)
!77 = !DIEnumerator(name: "MOD_INVALID", value: -1)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !79, line: 364, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!80 = !{!81, !82, !83, !84, !85, !86, !87}
!81 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!82 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!83 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!84 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!85 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!86 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!87 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!88 = !{!89, !90, !107, !1159, !948, !1162, !1164, !1165, !1167, !1168, !67, !1066, !109, !121}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_deferred", file: !92, line: 9, size: 896, elements: !93)
!92 = !DIFile(filename: "./include/linux/jump_label_ratelimit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b81a9e3eb7e32174319f95227ba3e45")
!93 = !{!94, !1157, !1158}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !91, file: !92, line: 10, baseType: !95, size: 128)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !38, line: 85, size: 128, elements: !96)
!96 = !{!97, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !95, file: !38, line: 86, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !99, line: 174, baseType: !100)
!99 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 172, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !100, file: !99, line: 173, baseType: !67, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !38, line: 101, baseType: !104, size: 64, offset: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !38, line: 101, size: 64, elements: !105)
!105 = !{!106, !108, !120}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !38, line: 102, baseType: !107, size: 64)
!107 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !104, file: !38, line: 103, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !38, line: 117, size: 128, elements: !111)
!111 = !{!112, !117, !118}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !110, file: !38, line: 118, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !114, line: 20, baseType: !115)
!114 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !116, line: 26, baseType: !67)
!116 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!117 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !110, file: !38, line: 119, baseType: !113, size: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !110, file: !38, line: 120, baseType: !119, size: 64, offset: 64)
!119 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !38, line: 104, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3, line: 580, size: 192, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !3, line: 581, baseType: !121, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !122, file: !3, line: 582, baseType: !109, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !122, file: !3, line: 583, baseType: !127, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !43, line: 402, size: 9216, align: 512, elements: !129)
!129 = !{!130, !131, !137, !142, !812, !838, !839, !840, !841, !845, !848, !849, !850, !903, !904, !905, !906, !907, !908, !909, !910, !918, !922, !942, !960, !961, !962, !963, !972, !996, !997, !1000, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1014, !1015, !1122, !1123, !1124, !1125, !1127, !1131, !1132, !1136, !1137, !1138, !1139, !1141, !1142, !1143, !1150, !1151, !1152, !1156}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !128, file: !43, line: 403, baseType: !42, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !128, file: !43, line: 406, baseType: !132, size: 128, offset: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !99, line: 190, size: 128, elements: !133)
!133 = !{!134, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !99, line: 191, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !99, line: 191, baseType: !135, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !128, file: !43, line: 409, baseType: !138, size: 448, offset: 192)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 448, elements: !140)
!139 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!140 = !{!141}
!141 = !DISubrange(count: 56)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !128, file: !43, line: 417, baseType: !143, size: 768, offset: 640)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !43, line: 45, size: 768, elements: !144)
!144 = !{!145, !795, !796, !797, !800}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !143, file: !43, line: 46, baseType: !146, size: 512)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !147, line: 64, size: 512, elements: !148)
!147 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!148 = !{!149, !152, !153, !155, !238, !666, !780, !790, !791, !792, !793, !794}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !147, line: 65, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !146, file: !147, line: 66, baseType: !132, size: 128, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !146, file: !147, line: 67, baseType: !154, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !146, file: !147, line: 68, baseType: !156, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !147, line: 168, size: 768, elements: !158)
!158 = !{!159, !160, !197, !198}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !157, file: !147, line: 169, baseType: !132, size: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !157, file: !147, line: 170, baseType: !161, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !162, line: 29, baseType: !163)
!162 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !162, line: 17, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !162, line: 18, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !162, line: 18, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !166, file: !162, line: 19, baseType: !169, size: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !170, line: 14, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !169, file: !170, line: 15, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !174, line: 44, baseType: !175)
!174 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !174, line: 14, size: 32, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !174, line: 15, baseType: !178, size: 32)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !174, line: 15, size: 32, elements: !179)
!179 = !{!180, !181, !189}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !174, line: 16, baseType: !98, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !174, line: 24, baseType: !182, size: 16)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !178, file: !174, line: 24, size: 16, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !182, file: !174, line: 25, baseType: !185, size: 8)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !114, line: 17, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !116, line: 21, baseType: !187)
!187 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !182, file: !174, line: 26, baseType: !185, size: 8, offset: 8)
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !174, line: 28, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !178, file: !174, line: 28, size: 32, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !190, file: !174, line: 29, baseType: !193, size: 16)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !114, line: 19, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !116, line: 24, baseType: !195)
!195 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !190, file: !174, line: 30, baseType: !193, size: 16, offset: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !157, file: !147, line: 171, baseType: !146, size: 512, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !157, file: !147, line: 172, baseType: !199, size: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !147, line: 133, size: 192, elements: !202)
!202 = !{!203, !210, !215}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !201, file: !147, line: 134, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!67, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !147, line: 135, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!150, !208}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !201, file: !147, line: 136, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!67, !208, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !147, line: 125, size: 20736, elements: !222)
!222 = !{!223, !228, !232, !233, !237}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !221, file: !147, line: 126, baseType: !224, size: 192)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 192, elements: !226)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!226 = !{!227}
!227 = !DISubrange(count: 3)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !221, file: !147, line: 127, baseType: !229, size: 4096, offset: 192)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 4096, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !221, file: !147, line: 128, baseType: !67, size: 32, offset: 4288)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !221, file: !147, line: 129, baseType: !234, size: 16384, offset: 4320)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16384, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 2048)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !221, file: !147, line: 130, baseType: !67, size: 32, offset: 20704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !146, file: !147, line: 69, baseType: !239, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !147, line: 116, size: 384, elements: !242)
!242 = !{!243, !247, !274, !613, !644, !648}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !241, file: !147, line: 117, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !154}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !241, file: !147, line: 118, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !251, line: 254, size: 128, elements: !252)
!251 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!252 = !{!253, !267}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !250, file: !251, line: 255, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !154, !261, !225}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !99, line: 66, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !259, line: 73, baseType: !260)
!259 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !259, line: 15, baseType: !119)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !251, line: 30, size: 128, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !251, line: 31, baseType: !150, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !262, file: !251, line: 32, baseType: !266, size: 16, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !99, line: 24, baseType: !195)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !250, file: !251, line: 256, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!257, !154, !261, !150, !271}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 61, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !259, line: 72, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !259, line: 16, baseType: !107)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !241, file: !147, line: 119, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !251, line: 84, size: 320, elements: !279)
!279 = !{!280, !281, !285, !609, !611}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !251, line: 85, baseType: !150, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !278, file: !251, line: 86, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!266, !154, !261, !67}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !278, file: !251, line: 88, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!266, !154, !289, !67}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !251, line: 175, size: 512, elements: !291)
!291 = !{!292, !293, !294, !295, !302, !312, !313}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !290, file: !251, line: 176, baseType: !262, size: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !290, file: !251, line: 177, baseType: !271, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !290, file: !251, line: 178, baseType: !89, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !290, file: !251, line: 179, baseType: !296, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !301, line: 32, flags: DIFlagFwdDecl)
!301 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!302 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !290, file: !251, line: 180, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!257, !306, !154, !289, !225, !309, !271}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !308, line: 537, flags: DIFlagFwdDecl)
!308 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !99, line: 52, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !259, line: 88, baseType: !311)
!311 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !290, file: !251, line: 182, baseType: !303, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !290, file: !251, line: 184, baseType: !314, size: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!67, !306, !154, !289, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !301, line: 625, size: 1344, elements: !319)
!319 = !{!320, !337, !557, !563, !570, !571, !576, !579, !591, !592, !595, !599, !600, !601, !602, !603, !607}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !301, line: 628, baseType: !321, size: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !301, line: 628, size: 128, elements: !322)
!322 = !{!323, !328}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !301, line: 629, baseType: !324, size: 128)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !301, line: 629, size: 128, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !324, file: !301, line: 631, baseType: !107, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !324, file: !301, line: 632, baseType: !107, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !321, file: !301, line: 635, baseType: !329, size: 128, align: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !99, line: 232, size: 128, align: 64, elements: !330)
!330 = !{!331, !333}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !99, line: 233, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !329, file: !99, line: 234, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !332}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !318, file: !301, line: 639, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !301, line: 733, size: 10240, elements: !340)
!340 = !{!341, !553}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !301, line: 734, baseType: !342, size: 10240)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !301, line: 734, size: 10240, elements: !343)
!343 = !{!344, !348, !362, !366, !367, !368, !369, !370, !371, !379, !380, !381, !390, !391, !400, !401, !402, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !449, !461, !464, !519, !520, !521, !524, !528, !529, !532, !533, !534, !541, !542}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !301, line: 739, baseType: !345, size: 512, align: 512)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !301, line: 739, size: 512, align: 512, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !345, file: !301, line: 747, baseType: !98, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !342, file: !301, line: 750, baseType: !349, size: 128, offset: 512)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !350, line: 218, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!351 = !{!352, !360, !361}
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !350, line: 219, baseType: !353, size: 32)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !350, line: 219, size: 32, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !353, file: !350, line: 220, baseType: !161, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !353, file: !350, line: 221, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !350, line: 197, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 197, elements: !359)
!359 = !{}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !349, file: !350, line: 223, baseType: !7, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !349, file: !350, line: 224, baseType: !89, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !342, file: !301, line: 752, baseType: !363, size: 64, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!107, !306, !107, !107, !107, !107}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !342, file: !301, line: 756, baseType: !107, size: 64, offset: 704)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !342, file: !301, line: 757, baseType: !107, size: 64, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !342, file: !301, line: 760, baseType: !107, size: 64, offset: 832)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !342, file: !301, line: 761, baseType: !107, size: 64, offset: 896)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !342, file: !301, line: 763, baseType: !107, size: 64, offset: 960)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !342, file: !301, line: 764, baseType: !372, size: 64, offset: 1024)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !308, line: 299, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 299, size: 64, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !374, file: !308, line: 299, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !378, line: 18, baseType: !107)
!378 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!379 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !342, file: !301, line: 773, baseType: !98, size: 32, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !342, file: !301, line: 785, baseType: !98, size: 32, offset: 1120)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !342, file: !301, line: 795, baseType: !382, size: 64, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !301, line: 726, size: 128, elements: !384)
!384 = !{!385, !389}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !383, file: !301, line: 727, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !114, line: 23, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !116, line: 31, baseType: !388)
!388 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !383, file: !301, line: 728, baseType: !67, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !342, file: !301, line: 801, baseType: !107, size: 64, offset: 1216)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !342, file: !301, line: 804, baseType: !392, size: 64, offset: 1280)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !393, line: 13, baseType: !394)
!393 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !99, line: 181, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 179, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !395, file: !99, line: 180, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !114, line: 22, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !116, line: 30, baseType: !311)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !342, file: !301, line: 806, baseType: !67, size: 32, offset: 1344)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !342, file: !301, line: 808, baseType: !161, size: 32, offset: 1376)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !342, file: !301, line: 823, baseType: !403, size: 320, offset: 1408)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !404, line: 48, size: 320, elements: !405)
!404 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!405 = !{!406, !407, !408, !413, !415}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !403, file: !404, line: 49, baseType: !392, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !403, file: !404, line: 55, baseType: !392, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !403, file: !404, line: 57, baseType: !409, size: 32, offset: 128)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !410, line: 15, size: 32, elements: !411)
!410 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !409, file: !410, line: 20, baseType: !98, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !403, file: !404, line: 59, baseType: !414, size: 32, offset: 160)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !170, line: 23, baseType: !169)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !403, file: !404, line: 60, baseType: !132, size: 128, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !342, file: !301, line: 825, baseType: !132, size: 128, offset: 1728)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !342, file: !301, line: 845, baseType: !67, size: 32, offset: 1856)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !342, file: !301, line: 849, baseType: !107, size: 64, offset: 1920)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !342, file: !301, line: 850, baseType: !107, size: 64, offset: 1984)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !342, file: !301, line: 852, baseType: !107, size: 64, offset: 2048)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !342, file: !301, line: 853, baseType: !107, size: 64, offset: 2112)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !342, file: !301, line: 854, baseType: !394, size: 64, offset: 2176)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !342, file: !301, line: 855, baseType: !107, size: 64, offset: 2240)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !342, file: !301, line: 856, baseType: !107, size: 64, offset: 2304)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !342, file: !301, line: 857, baseType: !107, size: 64, offset: 2368)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !342, file: !301, line: 858, baseType: !107, size: 64, offset: 2432)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !342, file: !301, line: 865, baseType: !428, size: 32, offset: 2496)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !429, line: 69, baseType: !430)
!429 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !429, line: 64, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !430, file: !429, line: 65, baseType: !7, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !342, file: !301, line: 867, baseType: !161, size: 32, offset: 2528)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !342, file: !301, line: 869, baseType: !107, size: 64, offset: 2560)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !342, file: !301, line: 869, baseType: !107, size: 64, offset: 2624)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !342, file: !301, line: 869, baseType: !107, size: 64, offset: 2688)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !342, file: !301, line: 869, baseType: !107, size: 64, offset: 2752)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !342, file: !301, line: 870, baseType: !107, size: 64, offset: 2816)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !342, file: !301, line: 870, baseType: !107, size: 64, offset: 2880)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !342, file: !301, line: 870, baseType: !107, size: 64, offset: 2944)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !342, file: !301, line: 871, baseType: !107, size: 64, offset: 3008)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !342, file: !301, line: 871, baseType: !107, size: 64, offset: 3072)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !342, file: !301, line: 871, baseType: !107, size: 64, offset: 3136)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !342, file: !301, line: 871, baseType: !107, size: 64, offset: 3200)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !342, file: !301, line: 873, baseType: !446, size: 3328, offset: 3264)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 3328, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 52)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !342, file: !301, line: 875, baseType: !450, size: 1280, offset: 6592)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 1280, elements: !459)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !452, line: 22, size: 320, elements: !453)
!452 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!453 = !{!454, !455, !456, !457}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !451, file: !452, line: 23, baseType: !414, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !451, file: !452, line: 24, baseType: !398, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !451, file: !452, line: 26, baseType: !132, size: 128, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !451, file: !452, line: 28, baseType: !458, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!459 = !{!460}
!460 = !DISubrange(count: 4)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !342, file: !301, line: 877, baseType: !462, size: 64, offset: 7872)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !301, line: 877, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !342, file: !301, line: 880, baseType: !465, size: 1088, offset: 7936)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !466, line: 72, baseType: !467)
!466 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !466, line: 23, size: 1088, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !476, !477, !485, !486, !513, !514, !515}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !467, file: !466, line: 28, baseType: !386, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !467, file: !466, line: 38, baseType: !394, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !467, file: !466, line: 40, baseType: !107, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !467, file: !466, line: 43, baseType: !403, size: 320, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !467, file: !466, line: 44, baseType: !474, size: 64, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !466, line: 44, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !467, file: !466, line: 48, baseType: !107, size: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !467, file: !466, line: 59, baseType: !478, size: 256, offset: 640)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !479, line: 66, size: 256, elements: !480)
!479 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!480 = !{!481, !482, !483, !484}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !478, file: !479, line: 67, baseType: !392, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !478, file: !479, line: 68, baseType: !414, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !478, file: !479, line: 70, baseType: !409, size: 32, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !478, file: !479, line: 72, baseType: !132, size: 128, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !467, file: !466, line: 60, baseType: !89, size: 64, offset: 896)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !467, file: !466, line: 61, baseType: !487, size: 64, offset: 960)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !490, line: 13, size: 1216, elements: !491)
!490 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!491 = !{!492, !493, !494, !495, !496, !497, !498, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !489, file: !490, line: 14, baseType: !89, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !489, file: !490, line: 15, baseType: !107, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !489, file: !490, line: 17, baseType: !107, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !489, file: !490, line: 17, baseType: !107, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !489, file: !490, line: 18, baseType: !107, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !489, file: !490, line: 18, baseType: !107, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !489, file: !490, line: 19, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !489, file: !490, line: 21, baseType: !119, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !489, file: !490, line: 23, baseType: !119, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !489, file: !490, line: 24, baseType: !119, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !489, file: !490, line: 25, baseType: !119, size: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !489, file: !490, line: 26, baseType: !119, size: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !489, file: !490, line: 27, baseType: !119, size: 64, offset: 768)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !489, file: !490, line: 28, baseType: !119, size: 64, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !489, file: !490, line: 29, baseType: !119, size: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !489, file: !490, line: 30, baseType: !119, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !489, file: !490, line: 31, baseType: !119, size: 64, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !489, file: !490, line: 32, baseType: !119, size: 64, offset: 1088)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !489, file: !490, line: 33, baseType: !119, size: 64, offset: 1152)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !467, file: !466, line: 63, baseType: !98, size: 32, offset: 1024)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !467, file: !466, line: 69, baseType: !193, size: 16, offset: 1056)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !467, file: !466, line: 70, baseType: !516, size: 16, offset: 1072)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !114, line: 18, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !116, line: 23, baseType: !518)
!518 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !301, line: 882, baseType: !107, size: 64, offset: 9024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !342, file: !301, line: 885, baseType: !161, size: 32, offset: 9088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !342, file: !301, line: 886, baseType: !522, size: 64, offset: 9152)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !301, line: 732, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !342, file: !301, line: 901, baseType: !525, size: 64, offset: 9216)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !527, line: 18, flags: DIFlagFwdDecl)
!527 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!528 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !342, file: !301, line: 904, baseType: !306, size: 64, offset: 9280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !342, file: !301, line: 906, baseType: !530, size: 64, offset: 9344)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !301, line: 906, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !342, file: !301, line: 930, baseType: !98, size: 32, offset: 9408)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !342, file: !301, line: 933, baseType: !98, size: 32, offset: 9440)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !342, file: !301, line: 935, baseType: !535, size: 64, offset: 9472)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !536, line: 103, size: 64, elements: !537)
!536 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !535, file: !536, line: 104, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !536, line: 101, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !342, file: !301, line: 940, baseType: !392, size: 64, offset: 9536)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !342, file: !301, line: 942, baseType: !543, size: 256, offset: 9600)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !12, line: 98, size: 256, elements: !544)
!544 = !{!545, !546, !547}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !543, file: !12, line: 99, baseType: !392, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !543, file: !12, line: 100, baseType: !132, size: 128, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !543, file: !12, line: 101, baseType: !548, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !12, line: 21, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !339, file: !301, line: 986, baseType: !554, offset: 10240)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: -1)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !318, file: !301, line: 640, baseType: !558, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !308, line: 297, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !308, line: 297, size: 64, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !559, file: !308, line: 297, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !378, line: 19, baseType: !107)
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !301, line: 646, baseType: !564, size: 64, offset: 256)
!564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !301, line: 646, size: 64, elements: !565)
!565 = !{!566, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !564, file: !301, line: 647, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !301, line: 542, baseType: !107)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !564, file: !301, line: 648, baseType: !568, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !318, file: !301, line: 666, baseType: !67, size: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !318, file: !301, line: 667, baseType: !572, size: 64, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !301, line: 579, size: 320, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !573, file: !301, line: 580, baseType: !403, size: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !318, file: !301, line: 670, baseType: !577, size: 8, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !99, line: 35, baseType: !578)
!578 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !318, file: !301, line: 681, baseType: !580, size: 256, offset: 512)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !301, line: 678, size: 256, elements: !581)
!581 = !{!582, !590}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !580, file: !301, line: 679, baseType: !583, size: 192, align: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !584, line: 5, size: 192, align: 64, elements: !585)
!584 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!585 = !{!586, !587, !589}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !583, file: !584, line: 6, baseType: !107, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !583, file: !584, line: 7, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !583, file: !584, line: 8, baseType: !588, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !580, file: !301, line: 680, baseType: !107, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !318, file: !301, line: 689, baseType: !132, size: 128, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !318, file: !301, line: 691, baseType: !593, size: 64, offset: 896)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !301, line: 691, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !318, file: !301, line: 694, baseType: !596, size: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !301, line: 694, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !318, file: !301, line: 697, baseType: !107, size: 64, offset: 1024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !318, file: !301, line: 699, baseType: !306, size: 64, offset: 1088)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !318, file: !301, line: 700, baseType: !89, size: 64, offset: 1152)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !318, file: !301, line: 711, baseType: !392, size: 64, offset: 1216)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !318, file: !301, line: 717, baseType: !604, size: 64, offset: 1280)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !606, line: 54, flags: DIFlagFwdDecl)
!606 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !318, file: !301, line: 722, baseType: !608, offset: 1344)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !301, line: 570, elements: !359)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !278, file: !251, line: 90, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !278, file: !251, line: 91, baseType: !612, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !241, file: !147, line: 120, baseType: !614, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!617, !208}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !50, line: 39, size: 384, elements: !620)
!620 = !{!621, !622, !626, !630, !636, !640}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !50, line: 40, baseType: !49, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !619, file: !50, line: 41, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!577}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !619, file: !50, line: 42, baseType: !627, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!89}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !619, file: !50, line: 43, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!499, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !50, line: 19, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !619, file: !50, line: 44, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!499}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !619, file: !50, line: 45, baseType: !641, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !89}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !241, file: !147, line: 121, baseType: !645, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!499, !208}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !241, file: !147, line: 122, baseType: !649, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{null, !208, !652, !659}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !527, line: 23, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 21, size: 32, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !654, file: !527, line: 22, baseType: !657, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !99, line: 37, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !259, line: 49, baseType: !7)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !527, line: 28, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 26, size: 32, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !661, file: !527, line: 27, baseType: !664, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !99, line: 38, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !259, line: 50, baseType: !7)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !146, file: !147, line: 70, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !669, line: 190, size: 1152, elements: !670)
!669 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !772, !773, !774, !775, !776, !779}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !669, line: 191, baseType: !98, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !668, file: !669, line: 192, baseType: !98, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !668, file: !669, line: 202, baseType: !667, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !668, file: !669, line: 203, baseType: !150, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !668, file: !669, line: 205, baseType: !583, size: 192, align: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !668, file: !669, line: 207, baseType: !499, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !668, file: !669, line: 208, baseType: !7, size: 32, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !669, line: 209, baseType: !679, size: 256, offset: 512)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !669, line: 209, size: 256, elements: !680)
!680 = !{!681, !693, !697}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !679, file: !669, line: 210, baseType: !682, size: 256)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !669, line: 153, size: 256, elements: !683)
!683 = !{!684, !685, !689, !692}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !682, file: !669, line: 154, baseType: !107, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !682, file: !669, line: 156, baseType: !686, size: 64, offset: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !584, line: 12, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !686, file: !584, line: 13, baseType: !588, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !682, file: !669, line: 162, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !669, line: 162, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !682, file: !669, line: 167, baseType: !107, size: 64, offset: 192)
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
!708 = !{!67, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !669, line: 251, size: 1216, elements: !711)
!711 = !{!712, !713, !714, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !710, file: !669, line: 253, baseType: !667, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !710, file: !669, line: 254, baseType: !306, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !710, file: !669, line: 255, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !606, line: 66, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !710, file: !669, line: 256, baseType: !89, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !710, file: !669, line: 259, baseType: !478, size: 256, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !710, file: !669, line: 260, baseType: !478, size: 256, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !710, file: !669, line: 261, baseType: !67, size: 32, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !710, file: !669, line: 262, baseType: !132, size: 128, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !710, file: !669, line: 263, baseType: !225, size: 64, offset: 960)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !710, file: !669, line: 265, baseType: !271, size: 64, offset: 1024)
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
!734 = !{!67, !715, !89}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !703, file: !669, line: 292, baseType: !736, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!89, !715, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !703, file: !669, line: 293, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!89, !715, !89, !739}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !703, file: !669, line: 294, baseType: !745, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !715, !89}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !703, file: !669, line: 296, baseType: !749, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!257, !709, !225, !271, !309}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !703, file: !669, line: 306, baseType: !271, size: 64, offset: 448)
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
!766 = !{!67, !709, !317}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !698, file: !669, line: 176, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !669, line: 35, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !698, file: !669, line: 177, baseType: !309, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !698, file: !669, line: 178, baseType: !667, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !668, file: !669, line: 215, baseType: !89, size: 64, offset: 768)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !668, file: !669, line: 221, baseType: !386, size: 64, offset: 832)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !669, line: 223, baseType: !195, size: 16, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !668, file: !669, line: 224, baseType: !266, size: 16, offset: 912)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !668, file: !669, line: 225, baseType: !777, size: 64, offset: 960)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !669, line: 36, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !668, file: !669, line: 227, baseType: !329, size: 128, align: 64, offset: 1024)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !146, file: !147, line: 71, baseType: !781, size: 32, offset: 448)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !782, line: 19, size: 32, elements: !783)
!782 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !781, file: !782, line: 20, baseType: !785, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !786, line: 113, baseType: !787)
!786 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !786, line: 111, size: 32, elements: !788)
!788 = !{!789}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !787, file: !786, line: 112, baseType: !98, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !146, file: !147, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !146, file: !147, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !146, file: !147, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !146, file: !147, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !146, file: !147, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !143, file: !43, line: 47, baseType: !127, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !143, file: !43, line: 48, baseType: !154, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !143, file: !43, line: 49, baseType: !798, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !43, line: 49, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !143, file: !43, line: 50, baseType: !801, size: 64, offset: 704)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !803, line: 26, size: 256, elements: !804)
!803 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !802, file: !803, line: 27, baseType: !7, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !802, file: !803, line: 28, baseType: !807, size: 192, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !808, line: 43, size: 192, elements: !809)
!808 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !807, file: !808, line: 44, baseType: !414, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !807, file: !808, line: 45, baseType: !132, size: 128, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !128, file: !43, line: 418, baseType: !813, size: 64, offset: 1408)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !43, line: 53, size: 448, elements: !815)
!815 = !{!816, !817, !822, !826, !830, !834}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !814, file: !43, line: 54, baseType: !262, size: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !814, file: !43, line: 55, baseType: !818, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!257, !813, !821, !225}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !814, file: !43, line: 57, baseType: !823, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!257, !813, !821, !150, !271}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !814, file: !43, line: 59, baseType: !827, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !127, !150}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !814, file: !43, line: 60, baseType: !831, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!67, !127}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !814, file: !43, line: 61, baseType: !835, size: 64, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !127}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !128, file: !43, line: 419, baseType: !150, size: 64, offset: 1472)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !128, file: !43, line: 420, baseType: !150, size: 64, offset: 1536)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !128, file: !43, line: 421, baseType: !154, size: 64, offset: 1600)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !128, file: !43, line: 424, baseType: !842, size: 64, offset: 1664)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !43, line: 424, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !128, file: !43, line: 425, baseType: !846, size: 64, offset: 1728)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !128, file: !43, line: 426, baseType: !7, size: 32, offset: 1792)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !128, file: !43, line: 435, baseType: !478, size: 256, offset: 1856)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !128, file: !43, line: 437, baseType: !851, size: 64, offset: 2112)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !853, line: 69, size: 320, elements: !854)
!853 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!854 = !{!855, !856, !857, !874, !876, !880, !881}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !852, file: !853, line: 70, baseType: !150, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !852, file: !853, line: 71, baseType: !127, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !852, file: !853, line: 72, baseType: !858, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !853, line: 47, size: 256, elements: !861)
!861 = !{!862, !863, !869, !873}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !860, file: !853, line: 49, baseType: !7, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !860, file: !853, line: 51, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!67, !150, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !852)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !860, file: !853, line: 53, baseType: !870, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!67, !225, !867}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !860, file: !853, line: 55, baseType: !641, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !852, file: !853, line: 73, baseType: !875, size: 16, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !852, file: !853, line: 74, baseType: !877, size: 8, offset: 208)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !114, line: 16, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !116, line: 20, baseType: !879)
!879 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !852, file: !853, line: 75, baseType: !185, size: 8, offset: 216)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !853, line: 76, baseType: !882, size: 64, offset: 256)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !853, line: 76, size: 64, elements: !883)
!883 = !{!884, !885, !892}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !882, file: !853, line: 77, baseType: !89, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !882, file: !853, line: 78, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !853, line: 86, size: 128, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !888, file: !853, line: 87, baseType: !7, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !888, file: !853, line: 88, baseType: !225, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !882, file: !853, line: 79, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !853, line: 92, size: 256, elements: !896)
!896 = !{!897, !898, !899, !901, !902}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !895, file: !853, line: 94, baseType: !7, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !895, file: !853, line: 95, baseType: !7, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !895, file: !853, line: 96, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !895, file: !853, line: 97, baseType: !858, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !895, file: !853, line: 98, baseType: !89, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !128, file: !43, line: 438, baseType: !7, size: 32, offset: 2176)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !128, file: !43, line: 441, baseType: !7, size: 32, offset: 2208)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !128, file: !43, line: 442, baseType: !842, size: 64, offset: 2240)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !128, file: !43, line: 443, baseType: !846, size: 64, offset: 2304)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !128, file: !43, line: 444, baseType: !577, size: 8, offset: 2368)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !128, file: !43, line: 451, baseType: !577, size: 8, offset: 2376)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !128, file: !43, line: 454, baseType: !7, size: 32, offset: 2400)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !128, file: !43, line: 455, baseType: !911, size: 64, offset: 2432)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !913, line: 23, size: 96, elements: !914)
!913 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !912, file: !913, line: 24, baseType: !67, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !912, file: !913, line: 24, baseType: !67, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !912, file: !913, line: 24, baseType: !67, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !128, file: !43, line: 458, baseType: !919, size: 64, offset: 2496)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!67}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !128, file: !43, line: 460, baseType: !923, size: 4032, align: 512, offset: 2560)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !924, size: 4032, elements: !940)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !43, line: 362, size: 576, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !924, file: !43, line: 363, baseType: !89, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !924, file: !43, line: 364, baseType: !7, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !924, file: !43, line: 367, baseType: !929, size: 448, offset: 128)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !43, line: 319, size: 448, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !929, file: !43, line: 320, baseType: !127, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !929, file: !43, line: 321, baseType: !933, size: 384, offset: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !934, line: 40, size: 384, elements: !935)
!934 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !933, file: !934, line: 41, baseType: !937, size: 384, align: 64)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 384, align: 64, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 2)
!940 = !{!941}
!941 = !DISubrange(count: 7)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !128, file: !43, line: 463, baseType: !943, size: 192, offset: 6592)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !944, line: 8, size: 192, elements: !945)
!944 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!945 = !{!946, !947, !949}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !943, file: !944, line: 10, baseType: !7, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !943, file: !944, line: 11, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !943, file: !944, line: 12, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !952, line: 59, size: 48, elements: !953)
!952 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!953 = !{!954, !955, !956, !957, !958, !959}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !951, file: !952, line: 60, baseType: !516, size: 16)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !951, file: !952, line: 61, baseType: !516, size: 16, offset: 16)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !951, file: !952, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !951, file: !952, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !951, file: !952, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !951, file: !952, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !128, file: !43, line: 465, baseType: !107, size: 64, offset: 6784)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !128, file: !43, line: 469, baseType: !7, size: 32, offset: 6848)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !128, file: !43, line: 470, baseType: !132, size: 128, offset: 6912)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !128, file: !43, line: 471, baseType: !964, size: 64, offset: 7040)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !966, line: 33, size: 96, elements: !967)
!966 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!967 = !{!968, !969, !970, !971}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !965, file: !966, line: 37, baseType: !67, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !965, file: !966, line: 43, baseType: !67, size: 32, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !965, file: !966, line: 45, baseType: !195, size: 16, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !965, file: !966, line: 47, baseType: !195, size: 16, offset: 80)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !128, file: !43, line: 476, baseType: !973, size: 64, offset: 7104)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !43, line: 378, size: 256, elements: !975)
!975 = !{!976, !993, !994, !995}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !974, file: !43, line: 379, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !979, line: 204, baseType: !980)
!979 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !979, line: 197, size: 192, elements: !981)
!981 = !{!982, !985, !986, !987, !989, !991}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !980, file: !979, line: 198, baseType: !983, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !979, line: 21, baseType: !984)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !116, line: 27, baseType: !7)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !980, file: !979, line: 199, baseType: !187, size: 8, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !980, file: !979, line: 200, baseType: !187, size: 8, offset: 40)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !980, file: !979, line: 201, baseType: !988, size: 16, offset: 48)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !979, line: 17, baseType: !194)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !980, file: !979, line: 202, baseType: !990, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !979, line: 16, baseType: !387)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !980, file: !979, line: 203, baseType: !992, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !979, line: 22, baseType: !387)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !974, file: !43, line: 380, baseType: !7, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !974, file: !43, line: 381, baseType: !225, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !974, file: !43, line: 382, baseType: !225, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !128, file: !43, line: 477, baseType: !974, size: 256, offset: 7168)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !128, file: !43, line: 480, baseType: !998, size: 64, offset: 7424)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !43, line: 480, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !128, file: !43, line: 483, baseType: !1001, size: 64, offset: 7488)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !43, line: 483, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !128, file: !43, line: 488, baseType: !225, size: 64, offset: 7552)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !128, file: !43, line: 492, baseType: !89, size: 64, offset: 7616)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !128, file: !43, line: 493, baseType: !7, size: 32, offset: 7680)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !128, file: !43, line: 495, baseType: !89, size: 64, offset: 7744)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !128, file: !43, line: 496, baseType: !7, size: 32, offset: 7808)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !128, file: !43, line: 499, baseType: !7, size: 32, offset: 7840)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !128, file: !43, line: 500, baseType: !1010, size: 64, offset: 7872)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1012, line: 45, baseType: !1013)
!1012 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !128, file: !43, line: 503, baseType: !7, size: 32, offset: 7936)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !128, file: !43, line: 504, baseType: !1016, size: 64, offset: 8000)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1019, line: 96, size: 192, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1020 = !{!1021, !1022, !1083, !1086}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1018, file: !1019, line: 97, baseType: !7, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1018, file: !1019, line: 98, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1019, line: 24, size: 3072, elements: !1025)
!1025 = !{!1026, !1028, !1029, !1030, !1031, !1045, !1046, !1047, !1048, !1067, !1068, !1069, !1080, !1081, !1082}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1024, file: !1019, line: 26, baseType: !1027, size: 128)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 128, elements: !938)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1024, file: !1019, line: 27, baseType: !1027, size: 128, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1024, file: !1019, line: 28, baseType: !67, size: 32, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1024, file: !1019, line: 31, baseType: !161, size: 32, align: 512, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1024, file: !1019, line: 32, baseType: !1032, size: 960, offset: 576)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1033, line: 206, size: 960, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1034 = !{!1035, !1036, !1039, !1041, !1042, !1044}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1032, file: !1033, line: 207, baseType: !332, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1032, file: !1033, line: 208, baseType: !1037, size: 256, offset: 64)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1038, size: 256, elements: !459)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1032, file: !1033, line: 209, baseType: !1040, size: 256, offset: 320)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !459)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1032, file: !1033, line: 213, baseType: !119, size: 64, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1032, file: !1033, line: 215, baseType: !1043, size: 256, offset: 640)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 256, elements: !459)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !1033, line: 216, baseType: !185, size: 8, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1024, file: !1019, line: 33, baseType: !107, size: 64, offset: 1536)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1024, file: !1019, line: 34, baseType: !107, size: 64, offset: 1600)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1024, file: !1019, line: 35, baseType: !577, size: 8, offset: 1664)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1024, file: !1019, line: 36, baseType: !1049, size: 320, offset: 1728)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1050, line: 11, size: 320, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1051 = !{!1052, !1059, !1060, !1065}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1049, file: !1050, line: 16, baseType: !1053, size: 128)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !99, line: 198, size: 128, elements: !1054)
!1054 = !{!1055, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1053, file: !99, line: 199, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1053, file: !99, line: 199, baseType: !1058, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1049, file: !1050, line: 17, baseType: !107, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1049, file: !1050, line: 18, baseType: !1061, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1049, file: !1050, line: 19, baseType: !1066, size: 32, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !114, line: 21, baseType: !984)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1024, file: !1019, line: 37, baseType: !543, size: 256, offset: 2048)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1024, file: !1019, line: 38, baseType: !329, size: 128, align: 64, offset: 2304)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1024, file: !1019, line: 39, baseType: !1070, size: 64, offset: 2432)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1019, line: 49, size: 768, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1071, file: !1019, line: 50, baseType: !161, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1071, file: !1019, line: 51, baseType: !1040, size: 256, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1071, file: !1019, line: 53, baseType: !1040, size: 256, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1071, file: !1019, line: 54, baseType: !107, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1071, file: !1019, line: 55, baseType: !1070, size: 64, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1071, file: !1019, line: 56, baseType: !67, size: 32, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1071, file: !1019, line: 57, baseType: !67, size: 32, offset: 736)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1024, file: !1019, line: 40, baseType: !107, size: 64, offset: 2496)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1024, file: !1019, line: 42, baseType: !67, size: 32, offset: 2560)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1024, file: !1019, line: 43, baseType: !1017, size: 64, offset: 2624)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1018, file: !1019, line: 99, baseType: !1084, offset: 128)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1085, line: 211, elements: !359)
!1085 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1018, file: !1019, line: 100, baseType: !1087, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1019, line: 63, size: 3008, elements: !1089)
!1089 = !{!1090, !1091, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1121}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1088, file: !1019, line: 64, baseType: !1070, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1088, file: !1019, line: 65, baseType: !1092, size: 192, offset: 64)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 192, elements: !226)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1088, file: !1019, line: 67, baseType: !67, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1088, file: !1019, line: 68, baseType: !478, size: 256, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1088, file: !1019, line: 69, baseType: !161, size: 32, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1088, file: !1019, line: 70, baseType: !478, size: 256, offset: 640)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1088, file: !1019, line: 71, baseType: !107, size: 64, offset: 896)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1088, file: !1019, line: 72, baseType: !107, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1088, file: !1019, line: 73, baseType: !107, size: 64, offset: 1024)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1088, file: !1019, line: 74, baseType: !107, size: 64, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1088, file: !1019, line: 75, baseType: !107, size: 64, offset: 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1088, file: !1019, line: 76, baseType: !107, size: 64, offset: 1216)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1088, file: !1019, line: 77, baseType: !107, size: 64, offset: 1280)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1088, file: !1019, line: 78, baseType: !107, size: 64, offset: 1344)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1088, file: !1019, line: 79, baseType: !577, size: 8, offset: 1408)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1088, file: !1019, line: 80, baseType: !107, size: 64, offset: 1472)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1088, file: !1019, line: 81, baseType: !478, size: 256, offset: 1536)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1088, file: !1019, line: 82, baseType: !802, size: 256, offset: 1792)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1088, file: !1019, line: 84, baseType: !98, size: 32, offset: 2048)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1088, file: !1019, line: 87, baseType: !107, size: 64, offset: 2112)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1088, file: !1019, line: 88, baseType: !107, size: 64, offset: 2176)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1088, file: !1019, line: 89, baseType: !1113, size: 704, offset: 2240)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !12, line: 111, size: 704, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1120}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1113, file: !12, line: 112, baseType: !543, size: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1113, file: !12, line: 113, baseType: !1049, size: 320, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1113, file: !12, line: 116, baseType: !1118, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !12, line: 18, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1113, file: !12, line: 117, baseType: !67, size: 32, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1088, file: !1019, line: 90, baseType: !1017, size: 64, offset: 2944)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !128, file: !43, line: 515, baseType: !109, size: 64, offset: 8064)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !128, file: !43, line: 516, baseType: !7, size: 32, offset: 8128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !128, file: !43, line: 519, baseType: !7, size: 32, offset: 8160)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !128, file: !43, line: 520, baseType: !1126, size: 64, offset: 8192)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !128, file: !43, line: 523, baseType: !1128, size: 64, offset: 8256)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !43, line: 523, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !128, file: !43, line: 524, baseType: !7, size: 32, offset: 8320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !128, file: !43, line: 525, baseType: !1133, size: 64, offset: 8384)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !43, line: 525, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !128, file: !43, line: 526, baseType: !7, size: 32, offset: 8448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !128, file: !43, line: 533, baseType: !89, size: 64, offset: 8512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !128, file: !43, line: 534, baseType: !7, size: 32, offset: 8576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !128, file: !43, line: 535, baseType: !1140, size: 64, offset: 8640)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !128, file: !43, line: 536, baseType: !7, size: 32, offset: 8704)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !128, file: !43, line: 539, baseType: !67, size: 32, offset: 8736)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !128, file: !43, line: 540, baseType: !1144, size: 64, offset: 8768)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1146, line: 32, size: 64, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1145, file: !1146, line: 33, baseType: !113, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1145, file: !1146, line: 34, baseType: !113, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !128, file: !43, line: 563, baseType: !132, size: 128, offset: 8832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !128, file: !43, line: 565, baseType: !132, size: 128, offset: 8960)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !128, file: !43, line: 568, baseType: !1153, size: 64, offset: 9088)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !128, file: !43, line: 570, baseType: !98, size: 32, offset: 9152)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !91, file: !92, line: 11, baseType: !107, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !91, file: !92, line: 12, baseType: !1113, size: 704, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1066)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !99, line: 154, baseType: !7)
!1169 = !{!1170, !1172, !1177, !1182, !1187, !1189, !1191, !1196, !1198, !1200, !1205, !1207, !1209, !1211, !1214, !1216, !1221, !1223, !1225, !1230, !1232, !1237, !1252, !1254, !0, !1256, !1269, !1274, !1290, !1295, !1317, !1320, !1335}
!1170 = !DIGlobalVariableExpression(var: !1171, expr: !DIExpression())
!1171 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_static_key_count229", scope: !2, file: !3, line: 114, type: !89, isLocal: true, isDefinition: true)
!1172 = !DIGlobalVariableExpression(var: !1173, expr: !DIExpression())
!1173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !1174, isLocal: true, isDefinition: true)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 488, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 61)
!1177 = !DIGlobalVariableExpression(var: !1178, expr: !DIExpression())
!1178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !1179, isLocal: true, isDefinition: true)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 264, elements: !1180)
!1180 = !{!1181}
!1181 = !DISubrange(count: 33)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !1184, isLocal: true, isDefinition: true)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 160, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 20)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_static_key_fast_inc_not_disabled230", scope: !2, file: !3, line: 146, type: !89, isLocal: true, isDefinition: true)
!1189 = !DIGlobalVariableExpression(var: !1190, expr: !DIExpression())
!1190 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_static_key_slow_inc232", scope: !2, file: !3, line: 192, type: !89, isLocal: true, isDefinition: true)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !1193, isLocal: true, isDefinition: true)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 232, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 29)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_static_key_enable_cpuslocked233", scope: !2, file: !3, line: 215, type: !89, isLocal: true, isDefinition: true)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_static_key_enable234", scope: !2, file: !3, line: 223, type: !89, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !1202, isLocal: true, isDefinition: true)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 240, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 30)
!1205 = !DIGlobalVariableExpression(var: !1206, expr: !DIExpression())
!1206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_static_key_disable_cpuslocked235", scope: !2, file: !3, line: 240, type: !89, isLocal: true, isDefinition: true)
!1207 = !DIGlobalVariableExpression(var: !1208, expr: !DIExpression())
!1208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_static_key_disable236", scope: !2, file: !3, line: 248, type: !89, isLocal: true, isDefinition: true)
!1209 = !DIGlobalVariableExpression(var: !1210, expr: !DIExpression())
!1210 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_jump_label_update_timeout238", scope: !2, file: !3, line: 328, type: !89, isLocal: true, isDefinition: true)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 332, type: !1213, isLocal: true, isDefinition: true)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 160, elements: !1185)
!1214 = !DIGlobalVariableExpression(var: !1215, expr: !DIExpression())
!1215 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_static_key_slow_dec239", scope: !2, file: !3, line: 335, type: !89, isLocal: true, isDefinition: true)
!1216 = !DIGlobalVariableExpression(var: !1217, expr: !DIExpression())
!1217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !1218, isLocal: true, isDefinition: true)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 248, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 31)
!1221 = !DIGlobalVariableExpression(var: !1222, expr: !DIExpression())
!1222 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !1218, isLocal: true, isDefinition: true)
!1223 = !DIGlobalVariableExpression(var: !1224, expr: !DIExpression())
!1224 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___static_key_slow_dec_deferred240", scope: !2, file: !3, line: 354, type: !89, isLocal: true, isDefinition: true)
!1225 = !DIGlobalVariableExpression(var: !1226, expr: !DIExpression())
!1226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 358, type: !1227, isLocal: true, isDefinition: true)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 224, elements: !1228)
!1228 = !{!1229}
!1229 = !DISubrange(count: 28)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___static_key_deferred_flush241", scope: !2, file: !3, line: 361, type: !89, isLocal: true, isDefinition: true)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !1234, isLocal: true, isDefinition: true)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 176, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 22)
!1237 = !DIGlobalVariableExpression(var: !1238, expr: !DIExpression())
!1238 = distinct !DIGlobalVariable(name: "__key", scope: !1239, file: !3, line: 368, type: !1251, isLocal: true, isDefinition: true)
!1239 = distinct !DISubprogram(name: "jump_label_rate_limit", scope: !3, file: !3, line: 363, type: !1240, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !90, !107}
!1242 = !{!1243, !1244, !1245, !1247}
!1243 = !DILocalVariable(name: "key", arg: 1, scope: !1239, file: !3, line: 363, type: !90)
!1244 = !DILocalVariable(name: "rl", arg: 2, scope: !1239, file: !3, line: 364, type: !107)
!1245 = !DILocalVariable(name: "__ret_warn_on", scope: !1246, file: !3, line: 366, type: !67)
!1246 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 366, column: 2)
!1247 = !DILocalVariable(name: "__flags", scope: !1248, file: !3, line: 366, type: !67)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 366, column: 2)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 366, column: 2)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 366, column: 2)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1085, line: 206, elements: !359)
!1252 = !DIGlobalVariableExpression(var: !1253, expr: !DIExpression())
!1253 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_jump_label_rate_limit242", scope: !2, file: !3, line: 370, type: !89, isLocal: true, isDefinition: true)
!1254 = !DIGlobalVariableExpression(var: !1255, expr: !DIExpression())
!1255 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_jump_label__247_808_jump_label_init_moduleearly248", scope: !2, file: !3, line: 808, type: !89, isLocal: true, isDefinition: true)
!1256 = !DIGlobalVariableExpression(var: !1257, expr: !DIExpression())
!1257 = distinct !DIGlobalVariable(name: "jump_label_module_nb", scope: !2, file: !3, line: 799, type: !1258, isLocal: true, isDefinition: true)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1259, line: 54, size: 192, elements: !1260)
!1259 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1260 = !{!1261, !1267, !1268}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1258, file: !1259, line: 55, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1259, line: 51, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!67, !1266, !107, !89}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1258, file: !1259, line: 56, baseType: !1266, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1258, file: !1259, line: 57, baseType: !67, size: 32, offset: 128)
!1269 = !DIGlobalVariableExpression(var: !1270, expr: !DIExpression())
!1270 = distinct !DIGlobalVariable(scope: null, file: !3, line: 784, type: !1271, isLocal: true, isDefinition: true)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 496, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 62)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule246", scope: !1276, file: !3, line: 700, type: !89, isLocal: true, isDefinition: true)
!1276 = distinct !DISubprogram(name: "jump_label_add_module", scope: !3, file: !3, line: 658, type: !832, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1289}
!1278 = !DILocalVariable(name: "mod", arg: 1, scope: !1276, file: !3, line: 658, type: !127)
!1279 = !DILocalVariable(name: "iter_start", scope: !1276, file: !3, line: 660, type: !109)
!1280 = !DILocalVariable(name: "iter_stop", scope: !1276, file: !3, line: 661, type: !109)
!1281 = !DILocalVariable(name: "iter", scope: !1276, file: !3, line: 662, type: !109)
!1282 = !DILocalVariable(name: "key", scope: !1276, file: !3, line: 663, type: !1167)
!1283 = !DILocalVariable(name: "jlm", scope: !1276, file: !3, line: 664, type: !121)
!1284 = !DILocalVariable(name: "jlm2", scope: !1276, file: !3, line: 664, type: !121)
!1285 = !DILocalVariable(name: "iterk", scope: !1286, file: !3, line: 673, type: !1167)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 672, column: 52)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 672, column: 2)
!1288 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 672, column: 2)
!1289 = !DILocalVariable(name: "in_init", scope: !1286, file: !3, line: 674, type: !577)
!1290 = !DIGlobalVariableExpression(var: !1291, expr: !DIExpression())
!1291 = distinct !DIGlobalVariable(scope: null, file: !79, line: 480, type: !1292, isLocal: true, isDefinition: true)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 168, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 21)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(name: "__already_done", scope: !1297, file: !3, line: 479, type: !577, isLocal: true, isDefinition: true)
!1297 = distinct !DISubprogram(name: "jump_label_can_update", scope: !3, file: !3, line: 462, type: !1298, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1300)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!577, !109, !577}
!1300 = !{!1301, !1302, !1303, !1307, !1310, !1311, !1313}
!1301 = !DILocalVariable(name: "entry", arg: 1, scope: !1297, file: !3, line: 462, type: !109)
!1302 = !DILocalVariable(name: "init", arg: 2, scope: !1297, file: !3, line: 462, type: !577)
!1303 = !DILocalVariable(name: "__ret_do_once", scope: !1304, file: !3, line: 479, type: !577)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 479, column: 3)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 470, column: 52)
!1306 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 470, column: 6)
!1307 = !DILocalVariable(name: "__ret_cond", scope: !1308, file: !3, line: 479, type: !577)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 479, column: 3)
!1309 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 479, column: 3)
!1310 = !DILocalVariable(name: "__ret_once", scope: !1308, file: !3, line: 479, type: !577)
!1311 = !DILocalVariable(name: "__ret_warn_on", scope: !1312, file: !3, line: 479, type: !67)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 479, column: 3)
!1313 = !DILocalVariable(name: "__flags", scope: !1314, file: !3, line: 479, type: !67)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 479, column: 3)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 479, column: 3)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 479, column: 3)
!1317 = !DIGlobalVariableExpression(var: !1318, expr: !DIExpression())
!1318 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !1319, isLocal: true, isDefinition: true)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 240, elements: !1203)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule245", scope: !1322, file: !3, line: 619, type: !89, isLocal: true, isDefinition: true)
!1322 = distinct !DISubprogram(name: "__jump_label_mod_text_reserved", scope: !3, file: !3, line: 609, type: !1323, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1325)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!67, !89, !89}
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1332}
!1326 = !DILocalVariable(name: "start", arg: 1, scope: !1322, file: !3, line: 609, type: !89)
!1327 = !DILocalVariable(name: "end", arg: 2, scope: !1322, file: !3, line: 609, type: !89)
!1328 = !DILocalVariable(name: "mod", scope: !1322, file: !3, line: 611, type: !127)
!1329 = !DILocalVariable(name: "ret", scope: !1322, file: !3, line: 612, type: !67)
!1330 = !DILocalVariable(name: "__ret_warn_on", scope: !1331, file: !3, line: 616, type: !67)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 616, column: 2)
!1332 = !DILocalVariable(name: "__flags", scope: !1333, file: !3, line: 616, type: !67)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 616, column: 2)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 616, column: 2)
!1335 = !DIGlobalVariableExpression(var: !1336, expr: !DIExpression())
!1336 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule249", scope: !1337, file: !3, line: 859, type: !89, isLocal: true, isDefinition: true)
!1337 = distinct !DISubprogram(name: "jump_label_update", scope: !3, file: !3, line: 840, type: !1338, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !1167}
!1340 = !{!1341, !1342, !1343, !1344, !1345}
!1341 = !DILocalVariable(name: "key", arg: 1, scope: !1337, file: !3, line: 840, type: !1167)
!1342 = !DILocalVariable(name: "stop", scope: !1337, file: !3, line: 842, type: !109)
!1343 = !DILocalVariable(name: "init", scope: !1337, file: !3, line: 843, type: !577)
!1344 = !DILocalVariable(name: "entry", scope: !1337, file: !3, line: 844, type: !109)
!1345 = !DILocalVariable(name: "mod", scope: !1337, file: !3, line: 846, type: !127)
!1346 = !{!"rsp"}
!1347 = !{i32 7, !"Dwarf Version", i32 5}
!1348 = !{i32 2, !"Debug Info Version", i32 3}
!1349 = !{i32 1, !"wchar_size", i32 2}
!1350 = !{i32 8, !"cf-protection-branch", i32 1}
!1351 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1352 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1353 = !{i32 1, !"Code Model", i32 2}
!1354 = !{i32 1, !"override-stack-alignment", i32 8}
!1355 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1356 = distinct !DISubprogram(name: "jump_label_lock", scope: !3, file: !3, line: 25, type: !1154, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1357 = !DILocation(line: 27, column: 2, scope: !1356)
!1358 = !DILocation(line: 28, column: 1, scope: !1356)
!1359 = !DISubprogram(name: "mutex_lock", scope: !479, file: !479, line: 227, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!1363 = distinct !DISubprogram(name: "jump_label_unlock", scope: !3, file: !3, line: 30, type: !1154, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1364 = !DILocation(line: 32, column: 2, scope: !1363)
!1365 = !DILocation(line: 33, column: 1, scope: !1363)
!1366 = !DISubprogram(name: "mutex_unlock", scope: !479, file: !479, line: 246, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = distinct !DISubprogram(name: "static_key_count", scope: !3, file: !3, line: 104, type: !1368, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1370)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!67, !1167}
!1370 = !{!1371, !1372}
!1371 = !DILocalVariable(name: "key", arg: 1, scope: !1367, file: !3, line: 104, type: !1167)
!1372 = !DILocalVariable(name: "n", scope: !1367, file: !3, line: 110, type: !67)
!1373 = !DILocation(line: 104, column: 41, scope: !1367)
!1374 = !DILocation(line: 110, column: 2, scope: !1367)
!1375 = !DILocation(line: 110, column: 6, scope: !1367)
!1376 = !DILocation(line: 110, column: 23, scope: !1367)
!1377 = !DILocation(line: 110, column: 28, scope: !1367)
!1378 = !DILocation(line: 110, column: 10, scope: !1367)
!1379 = !DILocation(line: 112, column: 9, scope: !1367)
!1380 = !DILocation(line: 112, column: 11, scope: !1367)
!1381 = !DILocation(line: 112, column: 18, scope: !1367)
!1382 = !DILocation(line: 113, column: 1, scope: !1367)
!1383 = !DILocation(line: 112, column: 2, scope: !1367)
!1384 = distinct !DISubprogram(name: "atomic_read", scope: !1385, file: !1385, line: 30, type: !1386, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1390)
!1385 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!67, !1388}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "v", arg: 1, scope: !1384, file: !1385, line: 30, type: !1388)
!1392 = !DILocation(line: 30, column: 29, scope: !1384)
!1393 = !DILocation(line: 32, column: 25, scope: !1384)
!1394 = !DILocation(line: 32, column: 2, scope: !1384)
!1395 = !DILocation(line: 33, column: 25, scope: !1384)
!1396 = !DILocation(line: 33, column: 9, scope: !1384)
!1397 = !DILocation(line: 33, column: 2, scope: !1384)
!1398 = distinct !DISubprogram(name: "static_key_fast_inc_not_disabled", scope: !3, file: !3, line: 127, type: !1399, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1401)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!577, !1167}
!1401 = !{!1402, !1403, !1404, !1406}
!1402 = !DILocalVariable(name: "key", arg: 1, scope: !1398, file: !3, line: 127, type: !1167)
!1403 = !DILocalVariable(name: "v", scope: !1398, file: !3, line: 129, type: !67)
!1404 = !DILocalVariable(name: "__ret_warn_on", scope: !1405, file: !3, line: 131, type: !67)
!1405 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 131, column: 2)
!1406 = !DILocalVariable(name: "__flags", scope: !1407, file: !3, line: 131, type: !67)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 131, column: 2)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 131, column: 2)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 131, column: 2)
!1410 = !DILocation(line: 127, column: 58, scope: !1398)
!1411 = !DILocation(line: 129, column: 2, scope: !1398)
!1412 = !DILocation(line: 129, column: 6, scope: !1398)
!1413 = !DILocation(line: 131, column: 2, scope: !1405)
!1414 = !{i8 0, i8 2}
!1415 = !DILocation(line: 131, column: 2, scope: !1409)
!1416 = !DILocation(line: 131, column: 2, scope: !1408)
!1417 = !DILocation(line: 131, column: 2, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 131, column: 2)
!1419 = !DILocation(line: 131, column: 2, scope: !1407)
!1420 = !DILocation(line: 131, column: 2, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 131, column: 2)
!1422 = !DILocation(line: 131, column: 2, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 131, column: 2)
!1424 = !{i64 2153320040, i64 2153320069, i64 2153320115, i64 2153320173, i64 2153320227, i64 2153320281, i64 2153320336, i64 2153320367, i64 2153320675, i64 2153320681, i64 2153320728, i64 2153320751, i64 2153320777}
!1425 = !DILocation(line: 131, column: 2, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 131, column: 2)
!1427 = !DILocation(line: 131, column: 2, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 131, column: 2)
!1429 = !DILocation(line: 131, column: 2, scope: !1398)
!1430 = !DILocation(line: 138, column: 19, scope: !1398)
!1431 = !DILocation(line: 138, column: 24, scope: !1398)
!1432 = !DILocation(line: 138, column: 6, scope: !1398)
!1433 = !DILocation(line: 138, column: 4, scope: !1398)
!1434 = !DILocation(line: 139, column: 2, scope: !1398)
!1435 = !DILocation(line: 140, column: 7, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 140, column: 7)
!1437 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 139, column: 5)
!1438 = !DILocation(line: 140, column: 9, scope: !1436)
!1439 = !DILocation(line: 140, column: 14, scope: !1436)
!1440 = !DILocation(line: 140, column: 18, scope: !1436)
!1441 = !DILocation(line: 140, column: 20, scope: !1436)
!1442 = !DILocation(line: 140, column: 25, scope: !1436)
!1443 = !DILocation(line: 140, column: 7, scope: !1437)
!1444 = !DILocation(line: 141, column: 4, scope: !1436)
!1445 = !DILocation(line: 142, column: 2, scope: !1437)
!1446 = !DILocation(line: 142, column: 12, scope: !1398)
!1447 = !DILocation(line: 142, column: 11, scope: !1398)
!1448 = distinct !{!1448, !1434, !1449, !1450, !1451}
!1449 = !DILocation(line: 142, column: 64, scope: !1398)
!1450 = !{!"llvm.loop.mustprogress"}
!1451 = !{!"llvm.loop.unroll.disable"}
!1452 = !DILocation(line: 144, column: 2, scope: !1398)
!1453 = !DILocation(line: 145, column: 1, scope: !1398)
!1454 = !DISubprogram(name: "__warn_printk", scope: !966, file: !966, line: 93, type: !1455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !150, null}
!1457 = distinct !DISubprogram(name: "atomic_try_cmpxchg", scope: !1385, file: !1385, line: 1270, type: !1458, scopeLine: 1271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1461)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!577, !1460, !948, !67}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1461 = !{!1462, !1463, !1464}
!1462 = !DILocalVariable(name: "v", arg: 1, scope: !1457, file: !1385, line: 1270, type: !1460)
!1463 = !DILocalVariable(name: "old", arg: 2, scope: !1457, file: !1385, line: 1270, type: !948)
!1464 = !DILocalVariable(name: "new", arg: 3, scope: !1457, file: !1385, line: 1270, type: !67)
!1465 = !DILocation(line: 1270, column: 30, scope: !1457)
!1466 = !DILocation(line: 1270, column: 38, scope: !1457)
!1467 = !DILocation(line: 1270, column: 47, scope: !1457)
!1468 = !DILocation(line: 1272, column: 2, scope: !1457)
!1469 = !DILocation(line: 1272, column: 2, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1457, file: !1385, line: 1272, column: 2)
!1471 = !DILocation(line: 1273, column: 31, scope: !1457)
!1472 = !DILocation(line: 1273, column: 2, scope: !1457)
!1473 = !DILocation(line: 1274, column: 31, scope: !1457)
!1474 = !DILocation(line: 1274, column: 2, scope: !1457)
!1475 = !DILocation(line: 1275, column: 32, scope: !1457)
!1476 = !DILocation(line: 1275, column: 35, scope: !1457)
!1477 = !DILocation(line: 1275, column: 40, scope: !1457)
!1478 = !DILocation(line: 1275, column: 9, scope: !1457)
!1479 = !DILocation(line: 1275, column: 2, scope: !1457)
!1480 = distinct !DISubprogram(name: "static_key_slow_inc_cpuslocked", scope: !3, file: !3, line: 148, type: !1399, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1481)
!1481 = !{!1482, !1483, !1485, !1490}
!1482 = !DILocalVariable(name: "key", arg: 1, scope: !1480, file: !3, line: 148, type: !1167)
!1483 = !DILocalVariable(name: "__UNIQUE_ID_guard231", scope: !1480, file: !3, line: 162, type: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "class_mutex_t", file: !479, line: 250, baseType: !1362)
!1485 = !DILocalVariable(name: "__ret_warn_on", scope: !1486, file: !3, line: 177, type: !67)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 177, column: 7)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 177, column: 7)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 172, column: 9)
!1489 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 164, column: 6)
!1490 = !DILocalVariable(name: "__flags", scope: !1491, file: !3, line: 177, type: !67)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 177, column: 7)
!1492 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 177, column: 7)
!1493 = !DILocation(line: 148, column: 56, scope: !1480)
!1494 = !DILocation(line: 150, column: 2, scope: !1480)
!1495 = !DILocation(line: 159, column: 39, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 159, column: 6)
!1497 = !DILocation(line: 159, column: 6, scope: !1496)
!1498 = !DILocation(line: 159, column: 6, scope: !1480)
!1499 = !DILocation(line: 160, column: 3, scope: !1496)
!1500 = !DILocation(line: 162, column: 2, scope: !1480)
!1501 = !DILocation(line: 164, column: 23, scope: !1489)
!1502 = !DILocation(line: 164, column: 28, scope: !1489)
!1503 = !DILocation(line: 164, column: 7, scope: !1489)
!1504 = !DILocation(line: 164, column: 6, scope: !1480)
!1505 = !DILocation(line: 165, column: 21, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 164, column: 45)
!1507 = !DILocation(line: 165, column: 3, scope: !1506)
!1508 = !DILocation(line: 171, column: 23, scope: !1506)
!1509 = !DILocation(line: 171, column: 28, scope: !1506)
!1510 = !DILocation(line: 171, column: 3, scope: !1506)
!1511 = !DILocation(line: 172, column: 2, scope: !1506)
!1512 = !DILocation(line: 177, column: 7, scope: !1486)
!1513 = !DILocation(line: 177, column: 7, scope: !1492)
!1514 = !DILocation(line: 177, column: 7, scope: !1491)
!1515 = !DILocation(line: 177, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 177, column: 7)
!1517 = !DILocation(line: 177, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 177, column: 7)
!1519 = !{i64 2153328492, i64 2153328521, i64 2153328567, i64 2153328625, i64 2153328679, i64 2153328733, i64 2153328788, i64 2153328819, i64 2153329127, i64 2153329133, i64 2153329180, i64 2153329203, i64 2153329229}
!1520 = !DILocation(line: 177, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 177, column: 7)
!1522 = !DILocation(line: 177, column: 7, scope: !1487)
!1523 = !DILocation(line: 177, column: 7, scope: !1488)
!1524 = !DILocation(line: 178, column: 4, scope: !1487)
!1525 = !DILocation(line: 180, column: 2, scope: !1480)
!1526 = !DILocation(line: 181, column: 1, scope: !1480)
!1527 = !DISubprogram(name: "lockdep_assert_cpus_held", scope: !1528, file: !1528, line: 138, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1528 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!1529 = distinct !DISubprogram(name: "class_mutex_constructor", scope: !479, file: !479, line: 250, type: !1530, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!1362, !1362}
!1532 = !{!1533, !1534}
!1533 = !DILocalVariable(name: "_T", arg: 1, scope: !1529, file: !479, line: 250, type: !1362)
!1534 = !DILocalVariable(name: "t", scope: !1529, file: !479, line: 250, type: !1362)
!1535 = !DILocation(line: 250, column: 1, scope: !1529)
!1536 = !DILocation(line: 250, column: 1, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1529, file: !479, line: 250, column: 1)
!1538 = distinct !DISubprogram(name: "class_mutex_destructor", scope: !479, file: !479, line: 250, type: !1539, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1542)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1541}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1542 = !{!1543, !1544}
!1543 = !DILocalVariable(name: "p", arg: 1, scope: !1538, file: !479, line: 250, type: !1541)
!1544 = !DILocalVariable(name: "_T", scope: !1538, file: !479, line: 250, type: !1362)
!1545 = !DILocation(line: 250, column: 1, scope: !1538)
!1546 = !DILocation(line: 250, column: 1, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1538, file: !479, line: 250, column: 1)
!1548 = !DILocation(line: 250, column: 1, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1547, file: !479, line: 250, column: 1)
!1550 = distinct !DISubprogram(name: "atomic_cmpxchg", scope: !1385, file: !1385, line: 1191, type: !1551, scopeLine: 1192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!67, !1460, !67, !67}
!1553 = !{!1554, !1555, !1556}
!1554 = !DILocalVariable(name: "v", arg: 1, scope: !1550, file: !1385, line: 1191, type: !1460)
!1555 = !DILocalVariable(name: "old", arg: 2, scope: !1550, file: !1385, line: 1191, type: !67)
!1556 = !DILocalVariable(name: "new", arg: 3, scope: !1550, file: !1385, line: 1191, type: !67)
!1557 = !DILocation(line: 1191, column: 26, scope: !1550)
!1558 = !DILocation(line: 1191, column: 33, scope: !1550)
!1559 = !DILocation(line: 1191, column: 42, scope: !1550)
!1560 = !DILocation(line: 1193, column: 2, scope: !1550)
!1561 = !DILocation(line: 1193, column: 2, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1550, file: !1385, line: 1193, column: 2)
!1563 = !DILocation(line: 1194, column: 31, scope: !1550)
!1564 = !DILocation(line: 1194, column: 2, scope: !1550)
!1565 = !DILocation(line: 1195, column: 28, scope: !1550)
!1566 = !DILocation(line: 1195, column: 31, scope: !1550)
!1567 = !DILocation(line: 1195, column: 36, scope: !1550)
!1568 = !DILocation(line: 1195, column: 9, scope: !1550)
!1569 = !DILocation(line: 1195, column: 2, scope: !1550)
!1570 = !DILocation(line: 840, column: 50, scope: !1337)
!1571 = !DILocation(line: 842, column: 2, scope: !1337)
!1572 = !DILocation(line: 842, column: 21, scope: !1337)
!1573 = !DILocation(line: 843, column: 2, scope: !1337)
!1574 = !DILocation(line: 843, column: 7, scope: !1337)
!1575 = !DILocation(line: 843, column: 14, scope: !1337)
!1576 = !DILocation(line: 843, column: 27, scope: !1337)
!1577 = !DILocation(line: 844, column: 2, scope: !1337)
!1578 = !DILocation(line: 844, column: 21, scope: !1337)
!1579 = !DILocation(line: 846, column: 2, scope: !1337)
!1580 = !DILocation(line: 846, column: 17, scope: !1337)
!1581 = !DILocation(line: 848, column: 24, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 848, column: 6)
!1583 = !DILocation(line: 848, column: 6, scope: !1582)
!1584 = !DILocation(line: 848, column: 6, scope: !1337)
!1585 = !DILocation(line: 849, column: 27, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 848, column: 30)
!1587 = !DILocation(line: 849, column: 3, scope: !1586)
!1588 = !DILocation(line: 850, column: 3, scope: !1586)
!1589 = !DILocation(line: 853, column: 2, scope: !1337)
!1590 = !DILocation(line: 853, column: 2, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 853, column: 2)
!1592 = !{i64 2153411963}
!1593 = !DILocation(line: 854, column: 40, scope: !1337)
!1594 = !DILocation(line: 854, column: 25, scope: !1337)
!1595 = !DILocation(line: 854, column: 8, scope: !1337)
!1596 = !DILocation(line: 854, column: 6, scope: !1337)
!1597 = !DILocation(line: 855, column: 6, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 855, column: 6)
!1599 = !DILocation(line: 855, column: 6, scope: !1337)
!1600 = !DILocation(line: 856, column: 10, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 855, column: 11)
!1602 = !DILocation(line: 856, column: 15, scope: !1601)
!1603 = !DILocation(line: 856, column: 30, scope: !1601)
!1604 = !DILocation(line: 856, column: 35, scope: !1601)
!1605 = !DILocation(line: 856, column: 28, scope: !1601)
!1606 = !DILocation(line: 856, column: 8, scope: !1601)
!1607 = !DILocation(line: 857, column: 10, scope: !1601)
!1608 = !DILocation(line: 857, column: 15, scope: !1601)
!1609 = !DILocation(line: 857, column: 21, scope: !1601)
!1610 = !DILocation(line: 857, column: 8, scope: !1601)
!1611 = !DILocation(line: 858, column: 2, scope: !1601)
!1612 = !DILocation(line: 859, column: 2, scope: !1337)
!1613 = !DILocation(line: 859, column: 2, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 859, column: 2)
!1615 = !{i64 2153412109}
!1616 = !DILocation(line: 859, column: 2, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 859, column: 2)
!1618 = !DILocation(line: 859, column: 2, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 859, column: 2)
!1620 = !{i64 2153412291}
!1621 = !DILocation(line: 861, column: 29, scope: !1337)
!1622 = !DILocation(line: 861, column: 10, scope: !1337)
!1623 = !DILocation(line: 861, column: 8, scope: !1337)
!1624 = !DILocation(line: 863, column: 6, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 863, column: 6)
!1626 = !DILocation(line: 863, column: 6, scope: !1337)
!1627 = !DILocation(line: 864, column: 23, scope: !1625)
!1628 = !DILocation(line: 864, column: 28, scope: !1625)
!1629 = !DILocation(line: 864, column: 35, scope: !1625)
!1630 = !DILocation(line: 864, column: 41, scope: !1625)
!1631 = !DILocation(line: 864, column: 3, scope: !1625)
!1632 = !DILocation(line: 865, column: 1, scope: !1337)
!1633 = distinct !DISubprogram(name: "atomic_set_release", scope: !1385, file: !1385, line: 83, type: !1634, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1636)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1460, !67}
!1636 = !{!1637, !1638}
!1637 = !DILocalVariable(name: "v", arg: 1, scope: !1633, file: !1385, line: 83, type: !1460)
!1638 = !DILocalVariable(name: "i", arg: 2, scope: !1633, file: !1385, line: 83, type: !67)
!1639 = !DILocation(line: 83, column: 30, scope: !1633)
!1640 = !DILocation(line: 83, column: 37, scope: !1633)
!1641 = !DILocation(line: 85, column: 2, scope: !1633)
!1642 = !DILocation(line: 85, column: 2, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1633, file: !1385, line: 85, column: 2)
!1644 = !DILocation(line: 86, column: 26, scope: !1633)
!1645 = !DILocation(line: 86, column: 2, scope: !1633)
!1646 = !DILocation(line: 87, column: 25, scope: !1633)
!1647 = !DILocation(line: 87, column: 28, scope: !1633)
!1648 = !DILocation(line: 87, column: 2, scope: !1633)
!1649 = !DILocation(line: 88, column: 1, scope: !1633)
!1650 = distinct !DISubprogram(name: "static_key_slow_inc", scope: !3, file: !3, line: 183, type: !1399, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1651)
!1651 = !{!1652, !1653}
!1652 = !DILocalVariable(name: "key", arg: 1, scope: !1650, file: !3, line: 183, type: !1167)
!1653 = !DILocalVariable(name: "ret", scope: !1650, file: !3, line: 185, type: !577)
!1654 = !DILocation(line: 183, column: 45, scope: !1650)
!1655 = !DILocation(line: 185, column: 2, scope: !1650)
!1656 = !DILocation(line: 185, column: 7, scope: !1650)
!1657 = !DILocation(line: 187, column: 2, scope: !1650)
!1658 = !DILocation(line: 188, column: 39, scope: !1650)
!1659 = !DILocation(line: 188, column: 8, scope: !1650)
!1660 = !DILocation(line: 188, column: 6, scope: !1650)
!1661 = !DILocation(line: 189, column: 2, scope: !1650)
!1662 = !DILocation(line: 190, column: 9, scope: !1650)
!1663 = !DILocation(line: 191, column: 1, scope: !1650)
!1664 = !DILocation(line: 190, column: 2, scope: !1650)
!1665 = !DISubprogram(name: "cpus_read_lock", scope: !1528, file: !1528, line: 135, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1666 = !DISubprogram(name: "cpus_read_unlock", scope: !1528, file: !1528, line: 136, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1667 = distinct !DISubprogram(name: "static_key_enable_cpuslocked", scope: !3, file: !3, line: 194, type: !1338, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1668)
!1668 = !{!1669, !1670, !1672, !1676, !1680}
!1669 = !DILocalVariable(name: "key", arg: 1, scope: !1667, file: !3, line: 194, type: !1167)
!1670 = !DILocalVariable(name: "__ret_warn_on", scope: !1671, file: !3, line: 196, type: !67)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 196, column: 2)
!1672 = !DILocalVariable(name: "__flags", scope: !1673, file: !3, line: 196, type: !67)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 196, column: 2)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 196, column: 2)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 196, column: 2)
!1676 = !DILocalVariable(name: "__ret_warn_on", scope: !1677, file: !3, line: 200, type: !67)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 200, column: 3)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 199, column: 38)
!1679 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 199, column: 6)
!1680 = !DILocalVariable(name: "__flags", scope: !1681, file: !3, line: 200, type: !67)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 200, column: 3)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 200, column: 3)
!1683 = !DILocation(line: 194, column: 54, scope: !1667)
!1684 = !DILocation(line: 196, column: 2, scope: !1671)
!1685 = !DILocation(line: 196, column: 2, scope: !1675)
!1686 = !DILocation(line: 196, column: 2, scope: !1674)
!1687 = !DILocation(line: 196, column: 2, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 196, column: 2)
!1689 = !DILocation(line: 196, column: 2, scope: !1673)
!1690 = !DILocation(line: 196, column: 2, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 196, column: 2)
!1692 = !DILocation(line: 196, column: 2, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 196, column: 2)
!1694 = !{i64 2153332368, i64 2153332397, i64 2153332443, i64 2153332501, i64 2153332555, i64 2153332609, i64 2153332664, i64 2153332695, i64 2153333003, i64 2153333009, i64 2153333056, i64 2153333079, i64 2153333105}
!1695 = !DILocation(line: 196, column: 2, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 196, column: 2)
!1697 = !DILocation(line: 196, column: 2, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 196, column: 2)
!1699 = !DILocation(line: 196, column: 2, scope: !1667)
!1700 = !DILocation(line: 197, column: 2, scope: !1667)
!1701 = !DILocation(line: 199, column: 19, scope: !1679)
!1702 = !DILocation(line: 199, column: 24, scope: !1679)
!1703 = !DILocation(line: 199, column: 6, scope: !1679)
!1704 = !DILocation(line: 199, column: 33, scope: !1679)
!1705 = !DILocation(line: 199, column: 6, scope: !1667)
!1706 = !DILocation(line: 200, column: 3, scope: !1677)
!1707 = !DILocation(line: 200, column: 3, scope: !1682)
!1708 = !DILocation(line: 200, column: 3, scope: !1681)
!1709 = !DILocation(line: 200, column: 3, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 200, column: 3)
!1711 = !DILocation(line: 200, column: 3, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 200, column: 3)
!1713 = !{i64 2153333926, i64 2153333955, i64 2153334001, i64 2153334059, i64 2153334113, i64 2153334167, i64 2153334222, i64 2153334253, i64 2153334561, i64 2153334567, i64 2153334614, i64 2153334637, i64 2153334663}
!1714 = !DILocation(line: 200, column: 3, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 200, column: 3)
!1716 = !DILocation(line: 200, column: 3, scope: !1678)
!1717 = !DILocation(line: 201, column: 3, scope: !1678)
!1718 = !DILocation(line: 204, column: 2, scope: !1667)
!1719 = !DILocation(line: 205, column: 19, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 205, column: 6)
!1721 = !DILocation(line: 205, column: 24, scope: !1720)
!1722 = !DILocation(line: 205, column: 6, scope: !1720)
!1723 = !DILocation(line: 205, column: 33, scope: !1720)
!1724 = !DILocation(line: 205, column: 6, scope: !1667)
!1725 = !DILocation(line: 206, column: 15, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 205, column: 39)
!1727 = !DILocation(line: 206, column: 20, scope: !1726)
!1728 = !DILocation(line: 206, column: 3, scope: !1726)
!1729 = !DILocation(line: 207, column: 21, scope: !1726)
!1730 = !DILocation(line: 207, column: 3, scope: !1726)
!1731 = !DILocation(line: 211, column: 23, scope: !1726)
!1732 = !DILocation(line: 211, column: 28, scope: !1726)
!1733 = !DILocation(line: 211, column: 3, scope: !1726)
!1734 = !DILocation(line: 212, column: 2, scope: !1726)
!1735 = !DILocation(line: 213, column: 2, scope: !1667)
!1736 = !DILocation(line: 214, column: 1, scope: !1667)
!1737 = distinct !DISubprogram(name: "atomic_set", scope: !1385, file: !1385, line: 65, type: !1634, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1738)
!1738 = !{!1739, !1740}
!1739 = !DILocalVariable(name: "v", arg: 1, scope: !1737, file: !1385, line: 65, type: !1460)
!1740 = !DILocalVariable(name: "i", arg: 2, scope: !1737, file: !1385, line: 65, type: !67)
!1741 = !DILocation(line: 65, column: 22, scope: !1737)
!1742 = !DILocation(line: 65, column: 29, scope: !1737)
!1743 = !DILocation(line: 67, column: 26, scope: !1737)
!1744 = !DILocation(line: 67, column: 2, scope: !1737)
!1745 = !DILocation(line: 68, column: 17, scope: !1737)
!1746 = !DILocation(line: 68, column: 20, scope: !1737)
!1747 = !DILocation(line: 68, column: 2, scope: !1737)
!1748 = !DILocation(line: 69, column: 1, scope: !1737)
!1749 = distinct !DISubprogram(name: "static_key_enable", scope: !3, file: !3, line: 217, type: !1338, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1750)
!1750 = !{!1751}
!1751 = !DILocalVariable(name: "key", arg: 1, scope: !1749, file: !3, line: 217, type: !1167)
!1752 = !DILocation(line: 217, column: 43, scope: !1749)
!1753 = !DILocation(line: 219, column: 2, scope: !1749)
!1754 = !DILocation(line: 220, column: 31, scope: !1749)
!1755 = !DILocation(line: 220, column: 2, scope: !1749)
!1756 = !DILocation(line: 221, column: 2, scope: !1749)
!1757 = !DILocation(line: 222, column: 1, scope: !1749)
!1758 = distinct !DISubprogram(name: "static_key_disable_cpuslocked", scope: !3, file: !3, line: 225, type: !1338, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1759)
!1759 = !{!1760, !1761, !1763, !1767, !1771}
!1760 = !DILocalVariable(name: "key", arg: 1, scope: !1758, file: !3, line: 225, type: !1167)
!1761 = !DILocalVariable(name: "__ret_warn_on", scope: !1762, file: !3, line: 227, type: !67)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 227, column: 2)
!1763 = !DILocalVariable(name: "__flags", scope: !1764, file: !3, line: 227, type: !67)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 227, column: 2)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 227, column: 2)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 227, column: 2)
!1767 = !DILocalVariable(name: "__ret_warn_on", scope: !1768, file: !3, line: 231, type: !67)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 231, column: 3)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 230, column: 39)
!1770 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 230, column: 6)
!1771 = !DILocalVariable(name: "__flags", scope: !1772, file: !3, line: 231, type: !67)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 231, column: 3)
!1773 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 231, column: 3)
!1774 = !DILocation(line: 225, column: 55, scope: !1758)
!1775 = !DILocation(line: 227, column: 2, scope: !1762)
!1776 = !DILocation(line: 227, column: 2, scope: !1766)
!1777 = !DILocation(line: 227, column: 2, scope: !1765)
!1778 = !DILocation(line: 227, column: 2, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 227, column: 2)
!1780 = !DILocation(line: 227, column: 2, scope: !1764)
!1781 = !DILocation(line: 227, column: 2, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 227, column: 2)
!1783 = !DILocation(line: 227, column: 2, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 227, column: 2)
!1785 = !{i64 2153339839, i64 2153339868, i64 2153339914, i64 2153339972, i64 2153340026, i64 2153340080, i64 2153340135, i64 2153340166, i64 2153340474, i64 2153340480, i64 2153340527, i64 2153340550, i64 2153340576}
!1786 = !DILocation(line: 227, column: 2, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 227, column: 2)
!1788 = !DILocation(line: 227, column: 2, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 227, column: 2)
!1790 = !DILocation(line: 227, column: 2, scope: !1758)
!1791 = !DILocation(line: 228, column: 2, scope: !1758)
!1792 = !DILocation(line: 230, column: 19, scope: !1770)
!1793 = !DILocation(line: 230, column: 24, scope: !1770)
!1794 = !DILocation(line: 230, column: 6, scope: !1770)
!1795 = !DILocation(line: 230, column: 33, scope: !1770)
!1796 = !DILocation(line: 230, column: 6, scope: !1758)
!1797 = !DILocation(line: 231, column: 3, scope: !1768)
!1798 = !DILocation(line: 231, column: 3, scope: !1773)
!1799 = !DILocation(line: 231, column: 3, scope: !1772)
!1800 = !DILocation(line: 231, column: 3, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 231, column: 3)
!1802 = !DILocation(line: 231, column: 3, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 231, column: 3)
!1804 = !{i64 2153341397, i64 2153341426, i64 2153341472, i64 2153341530, i64 2153341584, i64 2153341638, i64 2153341693, i64 2153341724, i64 2153342032, i64 2153342038, i64 2153342085, i64 2153342108, i64 2153342134}
!1805 = !DILocation(line: 231, column: 3, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 231, column: 3)
!1807 = !DILocation(line: 231, column: 3, scope: !1769)
!1808 = !DILocation(line: 232, column: 3, scope: !1769)
!1809 = !DILocation(line: 235, column: 2, scope: !1758)
!1810 = !DILocation(line: 236, column: 22, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 236, column: 6)
!1812 = !DILocation(line: 236, column: 27, scope: !1811)
!1813 = !DILocation(line: 236, column: 6, scope: !1811)
!1814 = !DILocation(line: 236, column: 42, scope: !1811)
!1815 = !DILocation(line: 236, column: 6, scope: !1758)
!1816 = !DILocation(line: 237, column: 21, scope: !1811)
!1817 = !DILocation(line: 237, column: 3, scope: !1811)
!1818 = !DILocation(line: 238, column: 2, scope: !1758)
!1819 = !DILocation(line: 239, column: 1, scope: !1758)
!1820 = distinct !DISubprogram(name: "static_key_disable", scope: !3, file: !3, line: 242, type: !1338, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "key", arg: 1, scope: !1820, file: !3, line: 242, type: !1167)
!1823 = !DILocation(line: 242, column: 44, scope: !1820)
!1824 = !DILocation(line: 244, column: 2, scope: !1820)
!1825 = !DILocation(line: 245, column: 32, scope: !1820)
!1826 = !DILocation(line: 245, column: 2, scope: !1820)
!1827 = !DILocation(line: 246, column: 2, scope: !1820)
!1828 = !DILocation(line: 247, column: 1, scope: !1820)
!1829 = distinct !DISubprogram(name: "jump_label_update_timeout", scope: !3, file: !3, line: 322, type: !550, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1830)
!1830 = !{!1831, !1832, !1833}
!1831 = !DILocalVariable(name: "work", arg: 1, scope: !1829, file: !3, line: 322, type: !552)
!1832 = !DILocalVariable(name: "key", scope: !1829, file: !3, line: 324, type: !90)
!1833 = !DILocalVariable(name: "__mptr", scope: !1834, file: !3, line: 325, type: !89)
!1834 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 325, column: 3)
!1835 = !DILocation(line: 322, column: 52, scope: !1829)
!1836 = !DILocation(line: 324, column: 2, scope: !1829)
!1837 = !DILocation(line: 324, column: 30, scope: !1829)
!1838 = !DILocation(line: 325, column: 3, scope: !1834)
!1839 = !DILocation(line: 325, column: 3, scope: !1829)
!1840 = !DILocation(line: 326, column: 25, scope: !1829)
!1841 = !DILocation(line: 326, column: 30, scope: !1829)
!1842 = !DILocation(line: 326, column: 2, scope: !1829)
!1843 = !DILocation(line: 327, column: 1, scope: !1829)
!1844 = distinct !DISubprogram(name: "__static_key_slow_dec", scope: !3, file: !3, line: 315, type: !1338, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1845)
!1845 = !{!1846}
!1846 = !DILocalVariable(name: "key", arg: 1, scope: !1844, file: !3, line: 315, type: !1167)
!1847 = !DILocation(line: 315, column: 54, scope: !1844)
!1848 = !DILocation(line: 317, column: 2, scope: !1844)
!1849 = !DILocation(line: 318, column: 35, scope: !1844)
!1850 = !DILocation(line: 318, column: 2, scope: !1844)
!1851 = !DILocation(line: 319, column: 2, scope: !1844)
!1852 = !DILocation(line: 320, column: 1, scope: !1844)
!1853 = distinct !DISubprogram(name: "static_key_slow_dec", scope: !3, file: !3, line: 330, type: !1338, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1854)
!1854 = !{!1855, !1856, !1858}
!1855 = !DILocalVariable(name: "key", arg: 1, scope: !1853, file: !3, line: 330, type: !1167)
!1856 = !DILocalVariable(name: "__ret_warn_on", scope: !1857, file: !3, line: 332, type: !67)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 332, column: 2)
!1858 = !DILocalVariable(name: "__flags", scope: !1859, file: !3, line: 332, type: !67)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 332, column: 2)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 332, column: 2)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 332, column: 2)
!1862 = !DILocation(line: 330, column: 45, scope: !1853)
!1863 = !DILocation(line: 332, column: 2, scope: !1857)
!1864 = !DILocation(line: 332, column: 2, scope: !1861)
!1865 = !DILocation(line: 332, column: 2, scope: !1860)
!1866 = !DILocation(line: 332, column: 2, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 332, column: 2)
!1868 = !DILocation(line: 332, column: 2, scope: !1859)
!1869 = !DILocation(line: 332, column: 2, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 332, column: 2)
!1871 = !DILocation(line: 332, column: 2, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 332, column: 2)
!1873 = !{i64 2153357288, i64 2153357317, i64 2153357363, i64 2153357421, i64 2153357475, i64 2153357529, i64 2153357584, i64 2153357615, i64 2153357923, i64 2153357929, i64 2153357976, i64 2153357999, i64 2153358025}
!1874 = !DILocation(line: 332, column: 2, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 332, column: 2)
!1876 = !DILocation(line: 332, column: 2, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 332, column: 2)
!1878 = !DILocation(line: 332, column: 2, scope: !1853)
!1879 = !DILocation(line: 333, column: 24, scope: !1853)
!1880 = !DILocation(line: 333, column: 2, scope: !1853)
!1881 = !DILocation(line: 334, column: 1, scope: !1853)
!1882 = distinct !DISubprogram(name: "static_key_slow_dec_cpuslocked", scope: !3, file: !3, line: 337, type: !1338, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1883)
!1883 = !{!1884, !1885, !1887}
!1884 = !DILocalVariable(name: "key", arg: 1, scope: !1882, file: !3, line: 337, type: !1167)
!1885 = !DILocalVariable(name: "__ret_warn_on", scope: !1886, file: !3, line: 339, type: !67)
!1886 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 339, column: 2)
!1887 = !DILocalVariable(name: "__flags", scope: !1888, file: !3, line: 339, type: !67)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 339, column: 2)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 339, column: 2)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 339, column: 2)
!1891 = !DILocation(line: 337, column: 56, scope: !1882)
!1892 = !DILocation(line: 339, column: 2, scope: !1886)
!1893 = !DILocation(line: 339, column: 2, scope: !1890)
!1894 = !DILocation(line: 339, column: 2, scope: !1889)
!1895 = !DILocation(line: 339, column: 2, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 339, column: 2)
!1897 = !DILocation(line: 339, column: 2, scope: !1888)
!1898 = !DILocation(line: 339, column: 2, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 339, column: 2)
!1900 = !DILocation(line: 339, column: 2, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 339, column: 2)
!1902 = !{i64 2153361180, i64 2153361209, i64 2153361255, i64 2153361313, i64 2153361367, i64 2153361421, i64 2153361476, i64 2153361507, i64 2153361815, i64 2153361821, i64 2153361868, i64 2153361891, i64 2153361917}
!1903 = !DILocation(line: 339, column: 2, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 339, column: 2)
!1905 = !DILocation(line: 339, column: 2, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 339, column: 2)
!1907 = !DILocation(line: 339, column: 2, scope: !1882)
!1908 = !DILocation(line: 340, column: 35, scope: !1882)
!1909 = !DILocation(line: 340, column: 2, scope: !1882)
!1910 = !DILocation(line: 341, column: 1, scope: !1882)
!1911 = distinct !DISubprogram(name: "__static_key_slow_dec_cpuslocked", scope: !3, file: !3, line: 289, type: !1338, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1912)
!1912 = !{!1913, !1914, !1915, !1916, !1919, !1922, !1925}
!1913 = !DILocalVariable(name: "key", arg: 1, scope: !1911, file: !3, line: 289, type: !1167)
!1914 = !DILocalVariable(name: "val", scope: !1911, file: !3, line: 292, type: !67)
!1915 = !DILocalVariable(name: "__UNIQUE_ID_guard237", scope: !1911, file: !3, line: 297, type: !1484)
!1916 = !DILocalVariable(name: "__ret_warn_on", scope: !1917, file: !3, line: 303, type: !67)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 303, column: 6)
!1918 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 303, column: 6)
!1919 = !DILocalVariable(name: "__flags", scope: !1920, file: !3, line: 303, type: !67)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 303, column: 6)
!1921 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 303, column: 6)
!1922 = !DILocalVariable(name: "__ret_warn_on", scope: !1923, file: !3, line: 308, type: !67)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 308, column: 6)
!1924 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 308, column: 6)
!1925 = !DILocalVariable(name: "__flags", scope: !1926, file: !3, line: 308, type: !67)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 308, column: 6)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 308, column: 6)
!1928 = !DILocation(line: 289, column: 65, scope: !1911)
!1929 = !DILocation(line: 291, column: 2, scope: !1911)
!1930 = !DILocation(line: 292, column: 2, scope: !1911)
!1931 = !DILocation(line: 292, column: 6, scope: !1911)
!1932 = !DILocation(line: 294, column: 29, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 294, column: 6)
!1934 = !DILocation(line: 294, column: 6, scope: !1933)
!1935 = !DILocation(line: 294, column: 6, scope: !1911)
!1936 = !DILocation(line: 295, column: 3, scope: !1933)
!1937 = !DILocation(line: 297, column: 2, scope: !1911)
!1938 = !DILocation(line: 298, column: 21, scope: !1911)
!1939 = !DILocation(line: 298, column: 26, scope: !1911)
!1940 = !DILocation(line: 298, column: 8, scope: !1911)
!1941 = !DILocation(line: 298, column: 6, scope: !1911)
!1942 = !DILocation(line: 303, column: 6, scope: !1917)
!1943 = !DILocation(line: 303, column: 6, scope: !1921)
!1944 = !DILocation(line: 303, column: 6, scope: !1920)
!1945 = !DILocation(line: 303, column: 6, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 303, column: 6)
!1947 = !DILocation(line: 303, column: 6, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 303, column: 6)
!1949 = !{i64 2153350516, i64 2153350545, i64 2153350591, i64 2153350649, i64 2153350703, i64 2153350757, i64 2153350812, i64 2153350843, i64 2153351151, i64 2153351157, i64 2153351204, i64 2153351227, i64 2153351253}
!1950 = !DILocation(line: 303, column: 6, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 303, column: 6)
!1952 = !DILocation(line: 303, column: 6, scope: !1918)
!1953 = !DILocation(line: 303, column: 6, scope: !1911)
!1954 = !DILocation(line: 304, column: 3, scope: !1918)
!1955 = !DILocation(line: 308, column: 6, scope: !1923)
!1956 = !DILocation(line: 308, column: 6, scope: !1927)
!1957 = !DILocation(line: 308, column: 6, scope: !1926)
!1958 = !DILocation(line: 308, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 308, column: 6)
!1960 = !DILocation(line: 308, column: 6, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 308, column: 6)
!1962 = !{i64 2153352035, i64 2153352064, i64 2153352110, i64 2153352168, i64 2153352222, i64 2153352276, i64 2153352331, i64 2153352362, i64 2153352670, i64 2153352676, i64 2153352723, i64 2153352746, i64 2153352772}
!1963 = !DILocation(line: 308, column: 6, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 308, column: 6)
!1965 = !DILocation(line: 308, column: 6, scope: !1924)
!1966 = !DILocation(line: 308, column: 6, scope: !1911)
!1967 = !DILocation(line: 309, column: 3, scope: !1924)
!1968 = !DILocation(line: 311, column: 27, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 311, column: 6)
!1970 = !DILocation(line: 311, column: 32, scope: !1969)
!1971 = !DILocation(line: 311, column: 6, scope: !1969)
!1972 = !DILocation(line: 311, column: 6, scope: !1911)
!1973 = !DILocation(line: 312, column: 21, scope: !1969)
!1974 = !DILocation(line: 312, column: 3, scope: !1969)
!1975 = !DILocation(line: 313, column: 1, scope: !1911)
!1976 = distinct !DISubprogram(name: "__static_key_slow_dec_deferred", scope: !3, file: !3, line: 343, type: !1977, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1980)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !1167, !1979, !107}
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1980 = !{!1981, !1982, !1983, !1984, !1986}
!1981 = !DILocalVariable(name: "key", arg: 1, scope: !1976, file: !3, line: 343, type: !1167)
!1982 = !DILocalVariable(name: "work", arg: 2, scope: !1976, file: !3, line: 344, type: !1979)
!1983 = !DILocalVariable(name: "timeout", arg: 3, scope: !1976, file: !3, line: 345, type: !107)
!1984 = !DILocalVariable(name: "__ret_warn_on", scope: !1985, file: !3, line: 347, type: !67)
!1985 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 347, column: 2)
!1986 = !DILocalVariable(name: "__flags", scope: !1987, file: !3, line: 347, type: !67)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 347, column: 2)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 347, column: 2)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 347, column: 2)
!1990 = !DILocation(line: 343, column: 56, scope: !1976)
!1991 = !DILocation(line: 344, column: 30, scope: !1976)
!1992 = !DILocation(line: 345, column: 23, scope: !1976)
!1993 = !DILocation(line: 347, column: 2, scope: !1985)
!1994 = !DILocation(line: 347, column: 2, scope: !1989)
!1995 = !DILocation(line: 347, column: 2, scope: !1988)
!1996 = !DILocation(line: 347, column: 2, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 347, column: 2)
!1998 = !DILocation(line: 347, column: 2, scope: !1987)
!1999 = !DILocation(line: 347, column: 2, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 347, column: 2)
!2001 = !DILocation(line: 347, column: 2, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 347, column: 2)
!2003 = !{i64 2153363224, i64 2153363253, i64 2153363299, i64 2153363357, i64 2153363411, i64 2153363465, i64 2153363520, i64 2153363551, i64 2153363859, i64 2153363865, i64 2153363912, i64 2153363935, i64 2153363961}
!2004 = !DILocation(line: 347, column: 2, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 347, column: 2)
!2006 = !DILocation(line: 347, column: 2, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 347, column: 2)
!2008 = !DILocation(line: 347, column: 2, scope: !1976)
!2009 = !DILocation(line: 349, column: 29, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 349, column: 6)
!2011 = !DILocation(line: 349, column: 6, scope: !2010)
!2012 = !DILocation(line: 349, column: 6, scope: !1976)
!2013 = !DILocation(line: 350, column: 3, scope: !2010)
!2014 = !DILocation(line: 352, column: 24, scope: !1976)
!2015 = !DILocation(line: 352, column: 30, scope: !1976)
!2016 = !DILocation(line: 352, column: 2, scope: !1976)
!2017 = !DILocation(line: 353, column: 1, scope: !1976)
!2018 = distinct !DISubprogram(name: "static_key_dec_not_one", scope: !3, file: !3, line: 250, type: !1399, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2019)
!2019 = !{!2020, !2021, !2022, !2025, !2028, !2031}
!2020 = !DILocalVariable(name: "key", arg: 1, scope: !2018, file: !3, line: 250, type: !1167)
!2021 = !DILocalVariable(name: "v", scope: !2018, file: !3, line: 252, type: !67)
!2022 = !DILocalVariable(name: "__ret_warn_on", scope: !2023, file: !3, line: 273, type: !67)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 273, column: 3)
!2024 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 266, column: 5)
!2025 = !DILocalVariable(name: "__flags", scope: !2026, file: !3, line: 273, type: !67)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 273, column: 3)
!2027 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 273, column: 3)
!2028 = !DILocalVariable(name: "__ret_warn_on", scope: !2029, file: !3, line: 279, type: !67)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 279, column: 7)
!2030 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 279, column: 7)
!2031 = !DILocalVariable(name: "__flags", scope: !2032, file: !3, line: 279, type: !67)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 279, column: 7)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 279, column: 7)
!2034 = !DILocation(line: 250, column: 55, scope: !2018)
!2035 = !DILocation(line: 252, column: 2, scope: !2018)
!2036 = !DILocation(line: 252, column: 6, scope: !2018)
!2037 = !DILocation(line: 265, column: 19, scope: !2018)
!2038 = !DILocation(line: 265, column: 24, scope: !2018)
!2039 = !DILocation(line: 265, column: 6, scope: !2018)
!2040 = !DILocation(line: 265, column: 4, scope: !2018)
!2041 = !DILocation(line: 266, column: 2, scope: !2018)
!2042 = !DILocation(line: 273, column: 3, scope: !2023)
!2043 = !DILocation(line: 273, column: 3, scope: !2027)
!2044 = !DILocation(line: 273, column: 3, scope: !2026)
!2045 = !DILocation(line: 273, column: 3, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 273, column: 3)
!2047 = !DILocation(line: 273, column: 3, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 273, column: 3)
!2049 = !{i64 2153346852, i64 2153346881, i64 2153346927, i64 2153346985, i64 2153347039, i64 2153347093, i64 2153347148, i64 2153347179, i64 2153347487, i64 2153347493, i64 2153347540, i64 2153347563, i64 2153347589}
!2050 = !DILocation(line: 273, column: 3, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 273, column: 3)
!2052 = !DILocation(line: 273, column: 3, scope: !2024)
!2053 = !DILocation(line: 279, column: 7, scope: !2029)
!2054 = !DILocation(line: 279, column: 7, scope: !2033)
!2055 = !DILocation(line: 279, column: 7, scope: !2032)
!2056 = !DILocation(line: 279, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 279, column: 7)
!2058 = !DILocation(line: 279, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 279, column: 7)
!2060 = !{i64 2153348369, i64 2153348398, i64 2153348444, i64 2153348502, i64 2153348556, i64 2153348610, i64 2153348665, i64 2153348696, i64 2153349004, i64 2153349010, i64 2153349057, i64 2153349080, i64 2153349106}
!2061 = !DILocation(line: 279, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 279, column: 7)
!2063 = !DILocation(line: 279, column: 7, scope: !2030)
!2064 = !DILocation(line: 279, column: 7, scope: !2024)
!2065 = !DILocation(line: 280, column: 4, scope: !2030)
!2066 = !DILocation(line: 282, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 282, column: 7)
!2068 = !DILocation(line: 282, column: 9, scope: !2067)
!2069 = !DILocation(line: 282, column: 7, scope: !2024)
!2070 = !DILocation(line: 283, column: 4, scope: !2067)
!2071 = !DILocation(line: 284, column: 2, scope: !2024)
!2072 = !DILocation(line: 284, column: 12, scope: !2018)
!2073 = !DILocation(line: 284, column: 11, scope: !2018)
!2074 = distinct !{!2074, !2041, !2075, !1450, !1451}
!2075 = !DILocation(line: 284, column: 64, scope: !2018)
!2076 = !DILocation(line: 286, column: 2, scope: !2018)
!2077 = !DILocation(line: 287, column: 1, scope: !2018)
!2078 = distinct !DISubprogram(name: "schedule_delayed_work", scope: !12, file: !12, line: 688, type: !2079, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2081)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!577, !1979, !107}
!2081 = !{!2082, !2083}
!2082 = !DILocalVariable(name: "dwork", arg: 1, scope: !2078, file: !12, line: 688, type: !1979)
!2083 = !DILocalVariable(name: "delay", arg: 2, scope: !2078, file: !12, line: 689, type: !107)
!2084 = !DILocation(line: 688, column: 63, scope: !2078)
!2085 = !DILocation(line: 689, column: 21, scope: !2078)
!2086 = !DILocation(line: 691, column: 28, scope: !2078)
!2087 = !DILocation(line: 691, column: 39, scope: !2078)
!2088 = !DILocation(line: 691, column: 46, scope: !2078)
!2089 = !DILocation(line: 691, column: 9, scope: !2078)
!2090 = !DILocation(line: 691, column: 2, scope: !2078)
!2091 = distinct !DISubprogram(name: "__static_key_deferred_flush", scope: !3, file: !3, line: 356, type: !2092, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{null, !89, !1979}
!2094 = !{!2095, !2096, !2097, !2099}
!2095 = !DILocalVariable(name: "key", arg: 1, scope: !2091, file: !3, line: 356, type: !89)
!2096 = !DILocalVariable(name: "work", arg: 2, scope: !2091, file: !3, line: 356, type: !1979)
!2097 = !DILocalVariable(name: "__ret_warn_on", scope: !2098, file: !3, line: 358, type: !67)
!2098 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 358, column: 2)
!2099 = !DILocalVariable(name: "__flags", scope: !2100, file: !3, line: 358, type: !67)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 358, column: 2)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 358, column: 2)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 358, column: 2)
!2103 = !DILocation(line: 356, column: 40, scope: !2091)
!2104 = !DILocation(line: 356, column: 66, scope: !2091)
!2105 = !DILocation(line: 358, column: 2, scope: !2098)
!2106 = !DILocation(line: 358, column: 2, scope: !2102)
!2107 = !DILocation(line: 358, column: 2, scope: !2101)
!2108 = !DILocation(line: 358, column: 2, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 358, column: 2)
!2110 = !DILocation(line: 358, column: 2, scope: !2100)
!2111 = !DILocation(line: 358, column: 2, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 358, column: 2)
!2113 = !DILocation(line: 358, column: 2, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 358, column: 2)
!2115 = !{i64 2153367413, i64 2153367442, i64 2153367488, i64 2153367546, i64 2153367600, i64 2153367654, i64 2153367709, i64 2153367740, i64 2153368048, i64 2153368054, i64 2153368101, i64 2153368124, i64 2153368150}
!2116 = !DILocation(line: 358, column: 2, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 358, column: 2)
!2118 = !DILocation(line: 358, column: 2, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 358, column: 2)
!2120 = !DILocation(line: 358, column: 2, scope: !2091)
!2121 = !DILocation(line: 359, column: 21, scope: !2091)
!2122 = !DILocation(line: 359, column: 2, scope: !2091)
!2123 = !DILocation(line: 360, column: 1, scope: !2091)
!2124 = !DISubprogram(name: "flush_delayed_work", scope: !12, file: !12, line: 517, type: !2125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!577, !1979}
!2127 = !DILocation(line: 363, column: 56, scope: !1239)
!2128 = !DILocation(line: 364, column: 17, scope: !1239)
!2129 = !DILocation(line: 366, column: 2, scope: !1246)
!2130 = !DILocation(line: 366, column: 2, scope: !1250)
!2131 = !DILocation(line: 366, column: 2, scope: !1249)
!2132 = !DILocation(line: 366, column: 2, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 366, column: 2)
!2134 = !DILocation(line: 366, column: 2, scope: !1248)
!2135 = !DILocation(line: 366, column: 2, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 366, column: 2)
!2137 = !DILocation(line: 366, column: 2, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 366, column: 2)
!2139 = !{i64 2153375582, i64 2153375611, i64 2153375657, i64 2153375715, i64 2153375769, i64 2153375823, i64 2153375878, i64 2153375909, i64 2153376217, i64 2153376223, i64 2153376270, i64 2153376293, i64 2153376319}
!2140 = !DILocation(line: 366, column: 2, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 366, column: 2)
!2142 = !DILocation(line: 366, column: 2, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 366, column: 2)
!2144 = !DILocation(line: 366, column: 2, scope: !1239)
!2145 = !DILocation(line: 367, column: 17, scope: !1239)
!2146 = !DILocation(line: 367, column: 2, scope: !1239)
!2147 = !DILocation(line: 367, column: 7, scope: !1239)
!2148 = !DILocation(line: 367, column: 15, scope: !1239)
!2149 = !DILocation(line: 368, column: 2, scope: !1239)
!2150 = !DILocation(line: 368, column: 2, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 368, column: 2)
!2152 = !DILocation(line: 368, column: 2, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 368, column: 2)
!2154 = !DILocation(line: 368, column: 2, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 368, column: 2)
!2156 = !DILocation(line: 369, column: 1, scope: !1239)
!2157 = distinct !DISubprogram(name: "__init_work", scope: !12, file: !12, line: 263, type: !2158, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !552, !67}
!2160 = !{!2161, !2162}
!2161 = !DILocalVariable(name: "work", arg: 1, scope: !2157, file: !12, line: 263, type: !552)
!2162 = !DILocalVariable(name: "onstack", arg: 2, scope: !2157, file: !12, line: 263, type: !67)
!2163 = !DILocation(line: 263, column: 52, scope: !2157)
!2164 = !DILocation(line: 263, column: 62, scope: !2157)
!2165 = !DILocation(line: 263, column: 73, scope: !2157)
!2166 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2167, file: !2167, line: 35, type: !2168, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2167 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !135}
!2170 = !{!2171}
!2171 = !DILocalVariable(name: "list", arg: 1, scope: !2166, file: !2167, line: 35, type: !135)
!2172 = !DILocation(line: 35, column: 53, scope: !2166)
!2173 = !DILocation(line: 37, column: 2, scope: !2166)
!2174 = !DILocation(line: 37, column: 2, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2166, file: !2167, line: 37, column: 2)
!2176 = !DILocation(line: 37, column: 2, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2175, file: !2167, line: 37, column: 2)
!2178 = !DILocation(line: 37, column: 2, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !2167, line: 37, column: 2)
!2180 = !DILocation(line: 38, column: 2, scope: !2166)
!2181 = !DILocation(line: 38, column: 2, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2166, file: !2167, line: 38, column: 2)
!2183 = !DILocation(line: 38, column: 2, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2182, file: !2167, line: 38, column: 2)
!2185 = !DILocation(line: 38, column: 2, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !2167, line: 38, column: 2)
!2187 = !DILocation(line: 39, column: 1, scope: !2166)
!2188 = !DISubprogram(name: "init_timer_key", scope: !1050, file: !1050, line: 91, type: !2189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !1064, !1061, !7, !150, !2191}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!2192 = distinct !DISubprogram(name: "jump_label_init", scope: !3, file: !3, line: 522, type: !1154, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2193)
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2202}
!2194 = !DILocalVariable(name: "iter_start", scope: !2192, file: !3, line: 524, type: !109)
!2195 = !DILocalVariable(name: "iter_stop", scope: !2192, file: !3, line: 525, type: !109)
!2196 = !DILocalVariable(name: "key", scope: !2192, file: !3, line: 526, type: !1167)
!2197 = !DILocalVariable(name: "iter", scope: !2192, file: !3, line: 527, type: !109)
!2198 = !DILocalVariable(name: "iterk", scope: !2199, file: !3, line: 546, type: !1167)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 545, column: 52)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 545, column: 2)
!2201 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 545, column: 2)
!2202 = !DILocalVariable(name: "in_init", scope: !2199, file: !3, line: 547, type: !577)
!2203 = !DILocation(line: 524, column: 2, scope: !2192)
!2204 = !DILocation(line: 524, column: 21, scope: !2192)
!2205 = !DILocation(line: 525, column: 2, scope: !2192)
!2206 = !DILocation(line: 525, column: 21, scope: !2192)
!2207 = !DILocation(line: 526, column: 2, scope: !2192)
!2208 = !DILocation(line: 526, column: 21, scope: !2192)
!2209 = !DILocation(line: 527, column: 2, scope: !2192)
!2210 = !DILocation(line: 527, column: 21, scope: !2192)
!2211 = !DILocation(line: 535, column: 2, scope: !2192)
!2212 = !DILocation(line: 535, column: 2, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 535, column: 2)
!2214 = !DILocation(line: 536, column: 2, scope: !2192)
!2215 = !DILocation(line: 536, column: 2, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 536, column: 2)
!2217 = !DILocation(line: 538, column: 6, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 538, column: 6)
!2219 = !DILocation(line: 538, column: 6, scope: !2192)
!2220 = !DILocation(line: 539, column: 3, scope: !2218)
!2221 = !DILocation(line: 541, column: 2, scope: !2192)
!2222 = !DILocation(line: 542, column: 2, scope: !2192)
!2223 = !DILocation(line: 543, column: 26, scope: !2192)
!2224 = !DILocation(line: 543, column: 38, scope: !2192)
!2225 = !DILocation(line: 543, column: 2, scope: !2192)
!2226 = !DILocation(line: 545, column: 14, scope: !2201)
!2227 = !DILocation(line: 545, column: 12, scope: !2201)
!2228 = !DILocation(line: 545, column: 7, scope: !2201)
!2229 = !DILocation(line: 545, column: 26, scope: !2200)
!2230 = !DILocation(line: 545, column: 33, scope: !2200)
!2231 = !DILocation(line: 545, column: 31, scope: !2200)
!2232 = !DILocation(line: 545, column: 2, scope: !2201)
!2233 = !DILocation(line: 546, column: 3, scope: !2199)
!2234 = !DILocation(line: 546, column: 22, scope: !2199)
!2235 = !DILocation(line: 547, column: 3, scope: !2199)
!2236 = !DILocation(line: 547, column: 8, scope: !2199)
!2237 = !DILocation(line: 550, column: 23, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 550, column: 7)
!2239 = !DILocation(line: 550, column: 7, scope: !2238)
!2240 = !DILocation(line: 550, column: 29, scope: !2238)
!2241 = !DILocation(line: 550, column: 7, scope: !2199)
!2242 = !DILocation(line: 551, column: 37, scope: !2238)
!2243 = !DILocation(line: 551, column: 4, scope: !2238)
!2244 = !DILocation(line: 553, column: 59, scope: !2199)
!2245 = !DILocation(line: 553, column: 43, scope: !2199)
!2246 = !DILocation(line: 553, column: 35, scope: !2199)
!2247 = !DILocation(line: 553, column: 13, scope: !2199)
!2248 = !DILocation(line: 553, column: 11, scope: !2199)
!2249 = !DILocation(line: 554, column: 23, scope: !2199)
!2250 = !DILocation(line: 554, column: 29, scope: !2199)
!2251 = !DILocation(line: 554, column: 3, scope: !2199)
!2252 = !DILocation(line: 556, column: 26, scope: !2199)
!2253 = !DILocation(line: 556, column: 11, scope: !2199)
!2254 = !DILocation(line: 556, column: 9, scope: !2199)
!2255 = !DILocation(line: 557, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 557, column: 7)
!2257 = !DILocation(line: 557, column: 16, scope: !2256)
!2258 = !DILocation(line: 557, column: 13, scope: !2256)
!2259 = !DILocation(line: 557, column: 7, scope: !2199)
!2260 = !DILocation(line: 558, column: 4, scope: !2256)
!2261 = !DILocation(line: 560, column: 9, scope: !2199)
!2262 = !DILocation(line: 560, column: 7, scope: !2199)
!2263 = !DILocation(line: 561, column: 26, scope: !2199)
!2264 = !DILocation(line: 561, column: 31, scope: !2199)
!2265 = !DILocation(line: 561, column: 3, scope: !2199)
!2266 = !DILocation(line: 562, column: 2, scope: !2200)
!2267 = !DILocation(line: 562, column: 2, scope: !2199)
!2268 = !DILocation(line: 545, column: 48, scope: !2200)
!2269 = !DILocation(line: 545, column: 2, scope: !2200)
!2270 = distinct !{!2270, !2232, !2271, !1450, !1451}
!2271 = !DILocation(line: 562, column: 2, scope: !2201)
!2272 = !DILocation(line: 563, column: 25, scope: !2192)
!2273 = !DILocation(line: 564, column: 2, scope: !2192)
!2274 = !DILocation(line: 565, column: 2, scope: !2192)
!2275 = !DILocation(line: 566, column: 1, scope: !2192)
!2276 = distinct !DISubprogram(name: "jump_label_sort_entries", scope: !3, file: !3, line: 80, type: !2277, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !109, !109}
!2279 = !{!2280, !2281, !2282, !2283}
!2280 = !DILocalVariable(name: "start", arg: 1, scope: !2276, file: !3, line: 80, type: !109)
!2281 = !DILocalVariable(name: "stop", arg: 2, scope: !2276, file: !3, line: 80, type: !109)
!2282 = !DILocalVariable(name: "size", scope: !2276, file: !3, line: 82, type: !107)
!2283 = !DILocalVariable(name: "swapfn", scope: !2276, file: !3, line: 83, type: !89)
!2284 = !DILocation(line: 80, column: 44, scope: !2276)
!2285 = !DILocation(line: 80, column: 70, scope: !2276)
!2286 = !DILocation(line: 82, column: 2, scope: !2276)
!2287 = !DILocation(line: 82, column: 16, scope: !2276)
!2288 = !DILocation(line: 83, column: 2, scope: !2276)
!2289 = !DILocation(line: 83, column: 8, scope: !2276)
!2290 = !DILocation(line: 86, column: 10, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 85, column: 6)
!2292 = !DILocation(line: 88, column: 26, scope: !2276)
!2293 = !DILocation(line: 88, column: 11, scope: !2276)
!2294 = !DILocation(line: 88, column: 48, scope: !2276)
!2295 = !DILocation(line: 88, column: 33, scope: !2276)
!2296 = !DILocation(line: 88, column: 31, scope: !2276)
!2297 = !DILocation(line: 89, column: 6, scope: !2276)
!2298 = !DILocation(line: 88, column: 7, scope: !2276)
!2299 = !DILocation(line: 90, column: 7, scope: !2276)
!2300 = !DILocation(line: 90, column: 14, scope: !2276)
!2301 = !DILocation(line: 90, column: 63, scope: !2276)
!2302 = !DILocation(line: 90, column: 2, scope: !2276)
!2303 = !DILocation(line: 91, column: 1, scope: !2276)
!2304 = distinct !DISubprogram(name: "jump_label_type", scope: !3, file: !3, line: 452, type: !2305, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!37, !109}
!2307 = !{!2308, !2309, !2310, !2311}
!2308 = !DILocalVariable(name: "entry", arg: 1, scope: !2304, file: !3, line: 452, type: !109)
!2309 = !DILocalVariable(name: "key", scope: !2304, file: !3, line: 454, type: !1167)
!2310 = !DILocalVariable(name: "enabled", scope: !2304, file: !3, line: 455, type: !577)
!2311 = !DILocalVariable(name: "branch", scope: !2304, file: !3, line: 456, type: !577)
!2312 = !DILocation(line: 452, column: 64, scope: !2304)
!2313 = !DILocation(line: 454, column: 2, scope: !2304)
!2314 = !DILocation(line: 454, column: 21, scope: !2304)
!2315 = !DILocation(line: 454, column: 42, scope: !2304)
!2316 = !DILocation(line: 454, column: 27, scope: !2304)
!2317 = !DILocation(line: 455, column: 2, scope: !2304)
!2318 = !DILocation(line: 455, column: 7, scope: !2304)
!2319 = !DILocation(line: 455, column: 17, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 455, column: 17)
!2321 = !DILocation(line: 455, column: 17, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 455, column: 17)
!2323 = !DILocation(line: 455, column: 17, scope: !2304)
!2324 = !DILocation(line: 456, column: 2, scope: !2304)
!2325 = !DILocation(line: 456, column: 7, scope: !2304)
!2326 = !DILocation(line: 456, column: 37, scope: !2304)
!2327 = !DILocation(line: 456, column: 16, scope: !2304)
!2328 = !DILocation(line: 459, column: 9, scope: !2304)
!2329 = !DILocation(line: 459, column: 19, scope: !2304)
!2330 = !DILocation(line: 459, column: 17, scope: !2304)
!2331 = !DILocation(line: 460, column: 1, scope: !2304)
!2332 = !DILocation(line: 459, column: 2, scope: !2304)
!2333 = distinct !DISubprogram(name: "arch_jump_label_transform_static", scope: !3, file: !3, line: 399, type: !2334, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !109, !37}
!2336 = !{!2337, !2338}
!2337 = !DILocalVariable(name: "entry", arg: 1, scope: !2333, file: !3, line: 399, type: !109)
!2338 = !DILocalVariable(name: "type", arg: 2, scope: !2333, file: !3, line: 400, type: !37)
!2339 = !DILocation(line: 399, column: 65, scope: !2333)
!2340 = !DILocation(line: 400, column: 32, scope: !2333)
!2341 = !DILocation(line: 403, column: 1, scope: !2333)
!2342 = distinct !DISubprogram(name: "init_section_contains", scope: !2343, file: !2343, line: 128, type: !2344, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2346)
!2343 = !DIFile(filename: "./include/asm-generic/sections.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f39e7a49fe27b92edee06ba1fa02c96a")
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!577, !89, !271}
!2346 = !{!2347, !2348}
!2347 = !DILocalVariable(name: "virt", arg: 1, scope: !2342, file: !2343, line: 128, type: !89)
!2348 = !DILocalVariable(name: "size", arg: 2, scope: !2342, file: !2343, line: 128, type: !271)
!2349 = !DILocation(line: 128, column: 48, scope: !2342)
!2350 = !DILocation(line: 128, column: 61, scope: !2342)
!2351 = !DILocation(line: 130, column: 51, scope: !2342)
!2352 = !DILocation(line: 130, column: 57, scope: !2342)
!2353 = !DILocation(line: 130, column: 9, scope: !2342)
!2354 = !DILocation(line: 130, column: 2, scope: !2342)
!2355 = distinct !DISubprogram(name: "jump_entry_code", scope: !38, file: !38, line: 123, type: !2356, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!107, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "entry", arg: 1, scope: !2355, file: !38, line: 123, type: !2358)
!2362 = !DILocation(line: 123, column: 70, scope: !2355)
!2363 = !DILocation(line: 125, column: 25, scope: !2355)
!2364 = !DILocation(line: 125, column: 32, scope: !2355)
!2365 = !DILocation(line: 125, column: 9, scope: !2355)
!2366 = !DILocation(line: 125, column: 39, scope: !2355)
!2367 = !DILocation(line: 125, column: 46, scope: !2355)
!2368 = !DILocation(line: 125, column: 37, scope: !2355)
!2369 = !DILocation(line: 125, column: 2, scope: !2355)
!2370 = distinct !DISubprogram(name: "jump_entry_set_init", scope: !38, file: !38, line: 169, type: !2371, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !109, !577}
!2373 = !{!2374, !2375}
!2374 = !DILocalVariable(name: "entry", arg: 1, scope: !2370, file: !38, line: 169, type: !109)
!2375 = !DILocalVariable(name: "set", arg: 2, scope: !2370, file: !38, line: 169, type: !577)
!2376 = !DILocation(line: 169, column: 59, scope: !2370)
!2377 = !DILocation(line: 169, column: 71, scope: !2370)
!2378 = !DILocation(line: 171, column: 6, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2370, file: !38, line: 171, column: 6)
!2380 = !DILocation(line: 171, column: 6, scope: !2370)
!2381 = !DILocation(line: 172, column: 3, scope: !2379)
!2382 = !DILocation(line: 172, column: 10, scope: !2379)
!2383 = !DILocation(line: 172, column: 14, scope: !2379)
!2384 = !DILocation(line: 174, column: 3, scope: !2379)
!2385 = !DILocation(line: 174, column: 10, scope: !2379)
!2386 = !DILocation(line: 174, column: 14, scope: !2379)
!2387 = !DILocation(line: 175, column: 1, scope: !2370)
!2388 = distinct !DISubprogram(name: "jump_entry_key", scope: !38, file: !38, line: 133, type: !2389, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!1167, !2358}
!2391 = !{!2392, !2393}
!2392 = !DILocalVariable(name: "entry", arg: 1, scope: !2388, file: !38, line: 133, type: !2358)
!2393 = !DILocalVariable(name: "offset", scope: !2388, file: !38, line: 135, type: !119)
!2394 = !DILocation(line: 133, column: 74, scope: !2388)
!2395 = !DILocation(line: 135, column: 2, scope: !2388)
!2396 = !DILocation(line: 135, column: 7, scope: !2388)
!2397 = !DILocation(line: 135, column: 16, scope: !2388)
!2398 = !DILocation(line: 135, column: 23, scope: !2388)
!2399 = !DILocation(line: 135, column: 27, scope: !2388)
!2400 = !DILocation(line: 137, column: 47, scope: !2388)
!2401 = !DILocation(line: 137, column: 54, scope: !2388)
!2402 = !DILocation(line: 137, column: 31, scope: !2388)
!2403 = !DILocation(line: 137, column: 60, scope: !2388)
!2404 = !DILocation(line: 137, column: 58, scope: !2388)
!2405 = !DILocation(line: 137, column: 9, scope: !2388)
!2406 = !DILocation(line: 138, column: 1, scope: !2388)
!2407 = !DILocation(line: 137, column: 2, scope: !2388)
!2408 = distinct !DISubprogram(name: "static_key_set_entries", scope: !3, file: !3, line: 441, type: !2409, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !1167, !109}
!2411 = !{!2412, !2413, !2414, !2415, !2417}
!2412 = !DILocalVariable(name: "key", arg: 1, scope: !2408, file: !3, line: 441, type: !1167)
!2413 = !DILocalVariable(name: "entries", arg: 2, scope: !2408, file: !3, line: 442, type: !109)
!2414 = !DILocalVariable(name: "type", scope: !2408, file: !3, line: 444, type: !107)
!2415 = !DILocalVariable(name: "__ret_warn_on", scope: !2416, file: !3, line: 446, type: !67)
!2416 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 446, column: 2)
!2417 = !DILocalVariable(name: "__flags", scope: !2418, file: !3, line: 446, type: !67)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 446, column: 2)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 446, column: 2)
!2420 = !DILocation(line: 441, column: 55, scope: !2408)
!2421 = !DILocation(line: 442, column: 27, scope: !2408)
!2422 = !DILocation(line: 444, column: 2, scope: !2408)
!2423 = !DILocation(line: 444, column: 16, scope: !2408)
!2424 = !DILocation(line: 446, column: 2, scope: !2416)
!2425 = !DILocation(line: 446, column: 2, scope: !2419)
!2426 = !DILocation(line: 446, column: 2, scope: !2418)
!2427 = !DILocation(line: 446, column: 2, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 446, column: 2)
!2429 = !DILocation(line: 446, column: 2, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 446, column: 2)
!2431 = !{i64 2153382842, i64 2153382871, i64 2153382917, i64 2153382975, i64 2153383029, i64 2153383083, i64 2153383138, i64 2153383169, i64 2153383477, i64 2153383483, i64 2153383530, i64 2153383553, i64 2153383579}
!2432 = !DILocation(line: 446, column: 2, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 446, column: 2)
!2434 = !DILocation(line: 446, column: 2, scope: !2408)
!2435 = !DILocation(line: 447, column: 9, scope: !2408)
!2436 = !DILocation(line: 447, column: 14, scope: !2408)
!2437 = !DILocation(line: 447, column: 19, scope: !2408)
!2438 = !DILocation(line: 447, column: 7, scope: !2408)
!2439 = !DILocation(line: 448, column: 17, scope: !2408)
!2440 = !DILocation(line: 448, column: 2, scope: !2408)
!2441 = !DILocation(line: 448, column: 7, scope: !2408)
!2442 = !DILocation(line: 448, column: 15, scope: !2408)
!2443 = !DILocation(line: 449, column: 15, scope: !2408)
!2444 = !DILocation(line: 449, column: 2, scope: !2408)
!2445 = !DILocation(line: 449, column: 7, scope: !2408)
!2446 = !DILocation(line: 449, column: 12, scope: !2408)
!2447 = !DILocation(line: 450, column: 1, scope: !2408)
!2448 = distinct !DISubprogram(name: "jump_label_init_type", scope: !3, file: !3, line: 570, type: !2305, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2449)
!2449 = !{!2450, !2451, !2452, !2453}
!2450 = !DILocalVariable(name: "entry", arg: 1, scope: !2448, file: !3, line: 570, type: !109)
!2451 = !DILocalVariable(name: "key", scope: !2448, file: !3, line: 572, type: !1167)
!2452 = !DILocalVariable(name: "type", scope: !2448, file: !3, line: 573, type: !577)
!2453 = !DILocalVariable(name: "branch", scope: !2448, file: !3, line: 574, type: !577)
!2454 = !DILocation(line: 570, column: 62, scope: !2448)
!2455 = !DILocation(line: 572, column: 2, scope: !2448)
!2456 = !DILocation(line: 572, column: 21, scope: !2448)
!2457 = !DILocation(line: 572, column: 42, scope: !2448)
!2458 = !DILocation(line: 572, column: 27, scope: !2448)
!2459 = !DILocation(line: 573, column: 2, scope: !2448)
!2460 = !DILocation(line: 573, column: 7, scope: !2448)
!2461 = !DILocation(line: 573, column: 30, scope: !2448)
!2462 = !DILocation(line: 573, column: 14, scope: !2448)
!2463 = !DILocation(line: 574, column: 2, scope: !2448)
!2464 = !DILocation(line: 574, column: 7, scope: !2448)
!2465 = !DILocation(line: 574, column: 37, scope: !2448)
!2466 = !DILocation(line: 574, column: 16, scope: !2448)
!2467 = !DILocation(line: 577, column: 9, scope: !2448)
!2468 = !DILocation(line: 577, column: 16, scope: !2448)
!2469 = !DILocation(line: 577, column: 14, scope: !2448)
!2470 = !DILocation(line: 578, column: 1, scope: !2448)
!2471 = !DILocation(line: 577, column: 2, scope: !2448)
!2472 = distinct !DISubprogram(name: "static_key_type", scope: !3, file: !3, line: 412, type: !1399, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2473)
!2473 = !{!2474}
!2474 = !DILocalVariable(name: "key", arg: 1, scope: !2472, file: !3, line: 412, type: !1167)
!2475 = !DILocation(line: 412, column: 55, scope: !2472)
!2476 = !DILocation(line: 414, column: 9, scope: !2472)
!2477 = !DILocation(line: 414, column: 14, scope: !2472)
!2478 = !DILocation(line: 414, column: 19, scope: !2472)
!2479 = !DILocation(line: 414, column: 2, scope: !2472)
!2480 = distinct !DISubprogram(name: "jump_entry_is_branch", scope: !38, file: !38, line: 159, type: !2481, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!577, !2358}
!2483 = !{!2484}
!2484 = !DILocalVariable(name: "entry", arg: 1, scope: !2480, file: !38, line: 159, type: !2358)
!2485 = !DILocation(line: 159, column: 66, scope: !2480)
!2486 = !DILocation(line: 161, column: 24, scope: !2480)
!2487 = !DILocation(line: 161, column: 31, scope: !2480)
!2488 = !DILocation(line: 161, column: 35, scope: !2480)
!2489 = !DILocation(line: 161, column: 9, scope: !2480)
!2490 = !DILocation(line: 161, column: 2, scope: !2480)
!2491 = distinct !DISubprogram(name: "__initstub__kmod_jump_label__247_808_jump_label_init_moduleearly", scope: !3, file: !3, line: 808, type: !920, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2492 = !DILocation(line: 808, column: 1, scope: !2491)
!2493 = distinct !DISubprogram(name: "jump_label_init_module", scope: !3, file: !3, line: 804, type: !920, scopeLine: 805, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2494 = !DILocation(line: 806, column: 9, scope: !2493)
!2495 = !DILocation(line: 806, column: 2, scope: !2493)
!2496 = distinct !DISubprogram(name: "jump_label_text_reserved", scope: !3, file: !3, line: 825, type: !1323, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2497)
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DILocalVariable(name: "start", arg: 1, scope: !2496, file: !3, line: 825, type: !89)
!2499 = !DILocalVariable(name: "end", arg: 2, scope: !2496, file: !3, line: 825, type: !89)
!2500 = !DILocalVariable(name: "init", scope: !2496, file: !3, line: 827, type: !577)
!2501 = !DILocalVariable(name: "ret", scope: !2496, file: !3, line: 828, type: !67)
!2502 = !DILocation(line: 825, column: 36, scope: !2496)
!2503 = !DILocation(line: 825, column: 49, scope: !2496)
!2504 = !DILocation(line: 827, column: 2, scope: !2496)
!2505 = !DILocation(line: 827, column: 7, scope: !2496)
!2506 = !DILocation(line: 827, column: 14, scope: !2496)
!2507 = !DILocation(line: 827, column: 27, scope: !2496)
!2508 = !DILocation(line: 828, column: 2, scope: !2496)
!2509 = !DILocation(line: 828, column: 6, scope: !2496)
!2510 = !DILocation(line: 829, column: 25, scope: !2496)
!2511 = !DILocation(line: 829, column: 32, scope: !2496)
!2512 = !DILocation(line: 829, column: 37, scope: !2496)
!2513 = !DILocation(line: 828, column: 12, scope: !2496)
!2514 = !DILocation(line: 831, column: 6, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 831, column: 6)
!2516 = !DILocation(line: 831, column: 6, scope: !2496)
!2517 = !DILocation(line: 832, column: 10, scope: !2515)
!2518 = !DILocation(line: 832, column: 3, scope: !2515)
!2519 = !DILocation(line: 835, column: 39, scope: !2496)
!2520 = !DILocation(line: 835, column: 46, scope: !2496)
!2521 = !DILocation(line: 835, column: 8, scope: !2496)
!2522 = !DILocation(line: 835, column: 6, scope: !2496)
!2523 = !DILocation(line: 837, column: 9, scope: !2496)
!2524 = !DILocation(line: 837, column: 2, scope: !2496)
!2525 = !DILocation(line: 838, column: 1, scope: !2496)
!2526 = distinct !DISubprogram(name: "__jump_label_text_reserved", scope: !3, file: !3, line: 381, type: !2527, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!67, !109, !109, !89, !89, !577}
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535}
!2530 = !DILocalVariable(name: "iter_start", arg: 1, scope: !2526, file: !3, line: 381, type: !109)
!2531 = !DILocalVariable(name: "iter_stop", arg: 2, scope: !2526, file: !3, line: 382, type: !109)
!2532 = !DILocalVariable(name: "start", arg: 3, scope: !2526, file: !3, line: 382, type: !89)
!2533 = !DILocalVariable(name: "end", arg: 4, scope: !2526, file: !3, line: 382, type: !89)
!2534 = !DILocalVariable(name: "init", arg: 5, scope: !2526, file: !3, line: 382, type: !577)
!2535 = !DILocalVariable(name: "iter", scope: !2526, file: !3, line: 384, type: !109)
!2536 = !DILocation(line: 381, column: 58, scope: !2526)
!2537 = !DILocation(line: 382, column: 22, scope: !2526)
!2538 = !DILocation(line: 382, column: 39, scope: !2526)
!2539 = !DILocation(line: 382, column: 52, scope: !2526)
!2540 = !DILocation(line: 382, column: 62, scope: !2526)
!2541 = !DILocation(line: 384, column: 2, scope: !2526)
!2542 = !DILocation(line: 384, column: 21, scope: !2526)
!2543 = !DILocation(line: 386, column: 9, scope: !2526)
!2544 = !DILocation(line: 386, column: 7, scope: !2526)
!2545 = !DILocation(line: 387, column: 2, scope: !2526)
!2546 = !DILocation(line: 387, column: 9, scope: !2526)
!2547 = !DILocation(line: 387, column: 16, scope: !2526)
!2548 = !DILocation(line: 387, column: 14, scope: !2526)
!2549 = !DILocation(line: 388, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 388, column: 7)
!2551 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 387, column: 27)
!2552 = !DILocation(line: 388, column: 12, scope: !2550)
!2553 = !DILocation(line: 388, column: 35, scope: !2550)
!2554 = !DILocation(line: 388, column: 16, scope: !2550)
!2555 = !DILocation(line: 388, column: 7, scope: !2551)
!2556 = !DILocation(line: 389, column: 22, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 389, column: 8)
!2558 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 388, column: 42)
!2559 = !DILocation(line: 389, column: 28, scope: !2557)
!2560 = !DILocation(line: 389, column: 35, scope: !2557)
!2561 = !DILocation(line: 389, column: 8, scope: !2557)
!2562 = !DILocation(line: 389, column: 8, scope: !2558)
!2563 = !DILocation(line: 390, column: 5, scope: !2557)
!2564 = !DILocation(line: 391, column: 3, scope: !2558)
!2565 = !DILocation(line: 392, column: 7, scope: !2551)
!2566 = distinct !{!2566, !2545, !2567, !1450, !1451}
!2567 = !DILocation(line: 393, column: 2, scope: !2526)
!2568 = !DILocation(line: 395, column: 2, scope: !2526)
!2569 = !DILocation(line: 396, column: 1, scope: !2526)
!2570 = !DILocation(line: 609, column: 49, scope: !1322)
!2571 = !DILocation(line: 609, column: 62, scope: !1322)
!2572 = !DILocation(line: 611, column: 2, scope: !1322)
!2573 = !DILocation(line: 611, column: 17, scope: !1322)
!2574 = !DILocation(line: 612, column: 2, scope: !1322)
!2575 = !DILocation(line: 612, column: 6, scope: !1322)
!2576 = !DILocation(line: 614, column: 2, scope: !1322)
!2577 = !DILocation(line: 614, column: 2, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 614, column: 2)
!2579 = !{i64 2153393917}
!2580 = !DILocation(line: 615, column: 45, scope: !1322)
!2581 = !DILocation(line: 615, column: 30, scope: !1322)
!2582 = !DILocation(line: 615, column: 8, scope: !1322)
!2583 = !DILocation(line: 615, column: 6, scope: !1322)
!2584 = !DILocation(line: 616, column: 2, scope: !1331)
!2585 = !DILocation(line: 616, column: 2, scope: !1334)
!2586 = !DILocation(line: 616, column: 2, scope: !1333)
!2587 = !DILocation(line: 616, column: 2, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 616, column: 2)
!2589 = !DILocation(line: 616, column: 2, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 616, column: 2)
!2591 = !{i64 2153394517, i64 2153394546, i64 2153394592, i64 2153394650, i64 2153394704, i64 2153394758, i64 2153394813, i64 2153394844, i64 2153395152, i64 2153395158, i64 2153395205, i64 2153395228, i64 2153395254}
!2592 = !DILocation(line: 616, column: 2, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 616, column: 2)
!2594 = !DILocation(line: 616, column: 2, scope: !1322)
!2595 = !DILocation(line: 617, column: 22, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 617, column: 6)
!2597 = !DILocation(line: 617, column: 7, scope: !2596)
!2598 = !DILocation(line: 617, column: 6, scope: !1322)
!2599 = !DILocation(line: 618, column: 7, scope: !2596)
!2600 = !DILocation(line: 618, column: 3, scope: !2596)
!2601 = !DILocation(line: 619, column: 2, scope: !1322)
!2602 = !DILocation(line: 619, column: 2, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 619, column: 2)
!2604 = !{i64 2153395634}
!2605 = !DILocation(line: 619, column: 2, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 619, column: 2)
!2607 = !DILocation(line: 619, column: 2, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 619, column: 2)
!2609 = !{i64 2153395816}
!2610 = !DILocation(line: 621, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 621, column: 6)
!2612 = !DILocation(line: 621, column: 6, scope: !1322)
!2613 = !DILocation(line: 622, column: 3, scope: !2611)
!2614 = !DILocation(line: 624, column: 35, scope: !1322)
!2615 = !DILocation(line: 624, column: 40, scope: !1322)
!2616 = !DILocation(line: 625, column: 5, scope: !1322)
!2617 = !DILocation(line: 625, column: 10, scope: !1322)
!2618 = !DILocation(line: 625, column: 25, scope: !1322)
!2619 = !DILocation(line: 625, column: 30, scope: !1322)
!2620 = !DILocation(line: 625, column: 23, scope: !1322)
!2621 = !DILocation(line: 626, column: 5, scope: !1322)
!2622 = !DILocation(line: 626, column: 12, scope: !1322)
!2623 = !DILocation(line: 626, column: 17, scope: !1322)
!2624 = !DILocation(line: 626, column: 22, scope: !1322)
!2625 = !DILocation(line: 626, column: 28, scope: !1322)
!2626 = !DILocation(line: 624, column: 8, scope: !1322)
!2627 = !DILocation(line: 624, column: 6, scope: !1322)
!2628 = !DILocation(line: 628, column: 13, scope: !1322)
!2629 = !DILocation(line: 628, column: 2, scope: !1322)
!2630 = !DILocation(line: 630, column: 9, scope: !1322)
!2631 = !DILocation(line: 630, column: 2, scope: !1322)
!2632 = !DILocation(line: 631, column: 1, scope: !1322)
!2633 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2634, file: !2634, line: 66, type: !2635, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2640)
!2634 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2635 = !DISubroutineType(types: !2636)
!2636 = !{null, !2637, !271}
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2639)
!2639 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2640 = !{!2641, !2642}
!2641 = !DILocalVariable(name: "v", arg: 1, scope: !2633, file: !2634, line: 66, type: !2637)
!2642 = !DILocalVariable(name: "size", arg: 2, scope: !2633, file: !2634, line: 66, type: !271)
!2643 = !DILocation(line: 66, column: 73, scope: !2633)
!2644 = !DILocation(line: 66, column: 83, scope: !2633)
!2645 = !DILocation(line: 68, column: 19, scope: !2633)
!2646 = !DILocation(line: 68, column: 22, scope: !2633)
!2647 = !DILocation(line: 68, column: 2, scope: !2633)
!2648 = !DILocation(line: 69, column: 2, scope: !2633)
!2649 = !DILocation(line: 70, column: 1, scope: !2633)
!2650 = distinct !DISubprogram(name: "raw_atomic_read", scope: !2651, file: !2651, line: 442, type: !1386, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2652)
!2651 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!2652 = !{!2653}
!2653 = !DILocalVariable(name: "v", arg: 1, scope: !2650, file: !2651, line: 442, type: !1388)
!2654 = !DILocation(line: 442, column: 33, scope: !2650)
!2655 = !DILocation(line: 444, column: 26, scope: !2650)
!2656 = !DILocation(line: 444, column: 9, scope: !2650)
!2657 = !DILocation(line: 444, column: 2, scope: !2650)
!2658 = distinct !DISubprogram(name: "kasan_check_read", scope: !2659, file: !2659, line: 40, type: !2660, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2662)
!2659 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!577, !2637, !7}
!2662 = !{!2663, !2664}
!2663 = !DILocalVariable(name: "p", arg: 1, scope: !2658, file: !2659, line: 40, type: !2637)
!2664 = !DILocalVariable(name: "size", arg: 2, scope: !2658, file: !2659, line: 40, type: !7)
!2665 = !DILocation(line: 40, column: 58, scope: !2658)
!2666 = !DILocation(line: 40, column: 74, scope: !2658)
!2667 = !DILocation(line: 42, column: 2, scope: !2658)
!2668 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2669, file: !2669, line: 229, type: !2670, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2672)
!2669 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !2637, !271, !67}
!2672 = !{!2673, !2674, !2675}
!2673 = !DILocalVariable(name: "ptr", arg: 1, scope: !2668, file: !2669, line: 229, type: !2637)
!2674 = !DILocalVariable(name: "size", arg: 2, scope: !2668, file: !2669, line: 229, type: !271)
!2675 = !DILocalVariable(name: "type", arg: 3, scope: !2668, file: !2669, line: 230, type: !67)
!2676 = !DILocation(line: 229, column: 60, scope: !2668)
!2677 = !DILocation(line: 229, column: 72, scope: !2668)
!2678 = !DILocation(line: 230, column: 15, scope: !2668)
!2679 = !DILocation(line: 230, column: 23, scope: !2668)
!2680 = distinct !DISubprogram(name: "arch_atomic_read", scope: !2681, file: !2681, line: 17, type: !1386, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2682)
!2681 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!2682 = !{!2683}
!2683 = !DILocalVariable(name: "v", arg: 1, scope: !2680, file: !2681, line: 17, type: !1388)
!2684 = !DILocation(line: 17, column: 61, scope: !2680)
!2685 = !DILocation(line: 23, column: 9, scope: !2680)
!2686 = !DILocation(line: 23, column: 2, scope: !2680)
!2687 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2634, file: !2634, line: 94, type: !2635, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2688)
!2688 = !{!2689, !2690}
!2689 = !DILocalVariable(name: "v", arg: 1, scope: !2687, file: !2634, line: 94, type: !2637)
!2690 = !DILocalVariable(name: "size", arg: 2, scope: !2687, file: !2634, line: 94, type: !271)
!2691 = !DILocation(line: 94, column: 79, scope: !2687)
!2692 = !DILocation(line: 94, column: 89, scope: !2687)
!2693 = !DILocation(line: 96, column: 20, scope: !2687)
!2694 = !DILocation(line: 96, column: 23, scope: !2687)
!2695 = !DILocation(line: 96, column: 2, scope: !2687)
!2696 = !DILocation(line: 97, column: 2, scope: !2687)
!2697 = !DILocation(line: 98, column: 1, scope: !2687)
!2698 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !2651, file: !2651, line: 2109, type: !1458, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2699)
!2699 = !{!2700, !2701, !2702}
!2700 = !DILocalVariable(name: "v", arg: 1, scope: !2698, file: !2651, line: 2109, type: !1460)
!2701 = !DILocalVariable(name: "old", arg: 2, scope: !2698, file: !2651, line: 2109, type: !948)
!2702 = !DILocalVariable(name: "new", arg: 3, scope: !2698, file: !2651, line: 2109, type: !67)
!2703 = !DILocation(line: 2109, column: 34, scope: !2698)
!2704 = !DILocation(line: 2109, column: 42, scope: !2698)
!2705 = !DILocation(line: 2109, column: 51, scope: !2698)
!2706 = !DILocation(line: 2112, column: 33, scope: !2698)
!2707 = !DILocation(line: 2112, column: 36, scope: !2698)
!2708 = !DILocation(line: 2112, column: 41, scope: !2698)
!2709 = !DILocation(line: 2112, column: 9, scope: !2698)
!2710 = !DILocation(line: 2112, column: 2, scope: !2698)
!2711 = distinct !DISubprogram(name: "kasan_check_write", scope: !2659, file: !2659, line: 44, type: !2660, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2712)
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "p", arg: 1, scope: !2711, file: !2659, line: 44, type: !2637)
!2714 = !DILocalVariable(name: "size", arg: 2, scope: !2711, file: !2659, line: 44, type: !7)
!2715 = !DILocation(line: 44, column: 59, scope: !2711)
!2716 = !DILocation(line: 44, column: 75, scope: !2711)
!2717 = !DILocation(line: 46, column: 2, scope: !2711)
!2718 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !2681, file: !2681, line: 113, type: !1458, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2719)
!2719 = !{!2720, !2721, !2722, !2723, !2725, !2726, !2727, !2728}
!2720 = !DILocalVariable(name: "v", arg: 1, scope: !2718, file: !2681, line: 113, type: !1460)
!2721 = !DILocalVariable(name: "old", arg: 2, scope: !2718, file: !2681, line: 113, type: !948)
!2722 = !DILocalVariable(name: "new", arg: 3, scope: !2718, file: !2681, line: 113, type: !67)
!2723 = !DILocalVariable(name: "success", scope: !2724, file: !2681, line: 115, type: !577)
!2724 = distinct !DILexicalBlock(scope: !2718, file: !2681, line: 115, column: 9)
!2725 = !DILocalVariable(name: "_old", scope: !2724, file: !2681, line: 115, type: !948)
!2726 = !DILocalVariable(name: "__old", scope: !2724, file: !2681, line: 115, type: !67)
!2727 = !DILocalVariable(name: "__new", scope: !2724, file: !2681, line: 115, type: !67)
!2728 = !DILocalVariable(name: "__ptr", scope: !2724, file: !2681, line: 115, type: !1162)
!2729 = !DILocation(line: 113, column: 63, scope: !2718)
!2730 = !DILocation(line: 113, column: 71, scope: !2718)
!2731 = !DILocation(line: 113, column: 80, scope: !2718)
!2732 = !DILocation(line: 115, column: 9, scope: !2724)
!2733 = !{i64 2148501745, i64 2148501784, i64 2148501805, i64 2148501842, i64 2148501865, i64 2148501874, i64 2148502172}
!2734 = !DILocation(line: 115, column: 9, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2724, file: !2681, line: 115, column: 9)
!2736 = !DILocation(line: 115, column: 9, scope: !2718)
!2737 = !DILocation(line: 115, column: 2, scope: !2718)
!2738 = distinct !DISubprogram(name: "raw_atomic_cmpxchg", scope: !2651, file: !2651, line: 2001, type: !1551, scopeLine: 2002, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2739)
!2739 = !{!2740, !2741, !2742}
!2740 = !DILocalVariable(name: "v", arg: 1, scope: !2738, file: !2651, line: 2001, type: !1460)
!2741 = !DILocalVariable(name: "old", arg: 2, scope: !2738, file: !2651, line: 2001, type: !67)
!2742 = !DILocalVariable(name: "new", arg: 3, scope: !2738, file: !2651, line: 2001, type: !67)
!2743 = !DILocation(line: 2001, column: 30, scope: !2738)
!2744 = !DILocation(line: 2001, column: 37, scope: !2738)
!2745 = !DILocation(line: 2001, column: 46, scope: !2738)
!2746 = !DILocation(line: 2004, column: 29, scope: !2738)
!2747 = !DILocation(line: 2004, column: 32, scope: !2738)
!2748 = !DILocation(line: 2004, column: 37, scope: !2738)
!2749 = !DILocation(line: 2004, column: 9, scope: !2738)
!2750 = !DILocation(line: 2004, column: 2, scope: !2738)
!2751 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !2681, file: !2681, line: 107, type: !1551, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2752)
!2752 = !{!2753, !2754, !2755, !2756, !2758, !2759, !2760}
!2753 = !DILocalVariable(name: "v", arg: 1, scope: !2751, file: !2681, line: 107, type: !1460)
!2754 = !DILocalVariable(name: "old", arg: 2, scope: !2751, file: !2681, line: 107, type: !67)
!2755 = !DILocalVariable(name: "new", arg: 3, scope: !2751, file: !2681, line: 107, type: !67)
!2756 = !DILocalVariable(name: "__ret", scope: !2757, file: !2681, line: 109, type: !67)
!2757 = distinct !DILexicalBlock(scope: !2751, file: !2681, line: 109, column: 9)
!2758 = !DILocalVariable(name: "__old", scope: !2757, file: !2681, line: 109, type: !67)
!2759 = !DILocalVariable(name: "__new", scope: !2757, file: !2681, line: 109, type: !67)
!2760 = !DILocalVariable(name: "__ptr", scope: !2757, file: !2681, line: 109, type: !1162)
!2761 = !DILocation(line: 107, column: 58, scope: !2751)
!2762 = !DILocation(line: 107, column: 65, scope: !2751)
!2763 = !DILocation(line: 107, column: 74, scope: !2751)
!2764 = !DILocation(line: 109, column: 9, scope: !2757)
!2765 = !{i64 2148498650, i64 2148498689, i64 2148498710, i64 2148498747, i64 2148498770, i64 2148498779}
!2766 = !DILocation(line: 109, column: 9, scope: !2751)
!2767 = !DILocation(line: 109, column: 2, scope: !2751)
!2768 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !2634, file: !2634, line: 80, type: !2635, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2769)
!2769 = !{!2770, !2771}
!2770 = !DILocalVariable(name: "v", arg: 1, scope: !2768, file: !2634, line: 80, type: !2637)
!2771 = !DILocalVariable(name: "size", arg: 2, scope: !2768, file: !2634, line: 80, type: !271)
!2772 = !DILocation(line: 80, column: 74, scope: !2768)
!2773 = !DILocation(line: 80, column: 84, scope: !2768)
!2774 = !DILocation(line: 82, column: 20, scope: !2768)
!2775 = !DILocation(line: 82, column: 23, scope: !2768)
!2776 = !DILocation(line: 82, column: 2, scope: !2768)
!2777 = !DILocation(line: 83, column: 2, scope: !2768)
!2778 = !DILocation(line: 84, column: 1, scope: !2768)
!2779 = distinct !DISubprogram(name: "raw_atomic_set_release", scope: !2651, file: !2651, line: 505, type: !1634, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2780)
!2780 = !{!2781, !2782}
!2781 = !DILocalVariable(name: "v", arg: 1, scope: !2779, file: !2651, line: 505, type: !1460)
!2782 = !DILocalVariable(name: "i", arg: 2, scope: !2779, file: !2651, line: 505, type: !67)
!2783 = !DILocation(line: 505, column: 34, scope: !2779)
!2784 = !DILocation(line: 505, column: 41, scope: !2779)
!2785 = !DILocation(line: 511, column: 3, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !2651, line: 510, column: 31)
!2787 = distinct !DILexicalBlock(scope: !2779, file: !2651, line: 510, column: 6)
!2788 = !DILocation(line: 511, column: 3, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2786, file: !2651, line: 511, column: 3)
!2790 = !DILocation(line: 511, column: 3, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2789, file: !2651, line: 511, column: 3)
!2792 = !DILocation(line: 511, column: 3, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !2651, line: 511, column: 3)
!2794 = !DILocation(line: 511, column: 3, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2793, file: !2651, line: 511, column: 3)
!2796 = !{i64 2148671618}
!2797 = !DILocation(line: 511, column: 3, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !2651, line: 511, column: 3)
!2799 = !DILocation(line: 511, column: 3, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2798, file: !2651, line: 511, column: 3)
!2801 = !DILocation(line: 511, column: 3, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2798, file: !2651, line: 511, column: 3)
!2803 = !DILocation(line: 517, column: 1, scope: !2779)
!2804 = distinct !DISubprogram(name: "raw_atomic_set", scope: !2651, file: !2651, line: 488, type: !1634, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2805)
!2805 = !{!2806, !2807}
!2806 = !DILocalVariable(name: "v", arg: 1, scope: !2804, file: !2651, line: 488, type: !1460)
!2807 = !DILocalVariable(name: "i", arg: 2, scope: !2804, file: !2651, line: 488, type: !67)
!2808 = !DILocation(line: 488, column: 26, scope: !2804)
!2809 = !DILocation(line: 488, column: 33, scope: !2804)
!2810 = !DILocation(line: 490, column: 18, scope: !2804)
!2811 = !DILocation(line: 490, column: 21, scope: !2804)
!2812 = !DILocation(line: 490, column: 2, scope: !2804)
!2813 = !DILocation(line: 491, column: 1, scope: !2804)
!2814 = distinct !DISubprogram(name: "arch_atomic_set", scope: !2681, file: !2681, line: 26, type: !1634, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2815)
!2815 = !{!2816, !2817}
!2816 = !DILocalVariable(name: "v", arg: 1, scope: !2814, file: !2681, line: 26, type: !1460)
!2817 = !DILocalVariable(name: "i", arg: 2, scope: !2814, file: !2681, line: 26, type: !67)
!2818 = !DILocation(line: 26, column: 55, scope: !2814)
!2819 = !DILocation(line: 26, column: 62, scope: !2814)
!2820 = !DILocation(line: 28, column: 2, scope: !2814)
!2821 = !DILocation(line: 28, column: 2, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2814, file: !2681, line: 28, column: 2)
!2823 = !DILocation(line: 29, column: 1, scope: !2814)
!2824 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !1385, file: !1385, line: 1372, type: !2825, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!577, !1460}
!2827 = !{!2828}
!2828 = !DILocalVariable(name: "v", arg: 1, scope: !2824, file: !1385, line: 1372, type: !1460)
!2829 = !DILocation(line: 1372, column: 31, scope: !2824)
!2830 = !DILocation(line: 1374, column: 2, scope: !2824)
!2831 = !DILocation(line: 1374, column: 2, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2824, file: !1385, line: 1374, column: 2)
!2833 = !DILocation(line: 1375, column: 31, scope: !2824)
!2834 = !DILocation(line: 1375, column: 2, scope: !2824)
!2835 = !DILocation(line: 1376, column: 33, scope: !2824)
!2836 = !DILocation(line: 1376, column: 9, scope: !2824)
!2837 = !DILocation(line: 1376, column: 2, scope: !2824)
!2838 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !2651, file: !2651, line: 2254, type: !2825, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2839)
!2839 = !{!2840}
!2840 = !DILocalVariable(name: "v", arg: 1, scope: !2838, file: !2651, line: 2254, type: !1460)
!2841 = !DILocation(line: 2254, column: 35, scope: !2838)
!2842 = !DILocation(line: 2257, column: 34, scope: !2838)
!2843 = !DILocation(line: 2257, column: 9, scope: !2838)
!2844 = !DILocation(line: 2257, column: 2, scope: !2838)
!2845 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !2681, file: !2681, line: 65, type: !2825, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2846)
!2846 = !{!2847, !2848}
!2847 = !DILocalVariable(name: "v", arg: 1, scope: !2845, file: !2681, line: 65, type: !1460)
!2848 = !DILocalVariable(name: "c", scope: !2849, file: !2681, line: 67, type: !577)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !2681, line: 67, column: 9)
!2850 = !DILocation(line: 65, column: 64, scope: !2845)
!2851 = !DILocation(line: 67, column: 9, scope: !2849)
!2852 = !{i64 2148485477, i64 2148485516, i64 2148485537, i64 2148485574, i64 2148485597, i64 2148485606, i64 2148485680}
!2853 = !DILocation(line: 67, column: 9, scope: !2845)
!2854 = !DILocation(line: 67, column: 2, scope: !2845)
!2855 = distinct !DISubprogram(name: "queue_delayed_work", scope: !12, file: !12, line: 573, type: !2856, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!577, !1118, !1979, !107}
!2858 = !{!2859, !2860, !2861}
!2859 = !DILocalVariable(name: "wq", arg: 1, scope: !2855, file: !12, line: 573, type: !1118)
!2860 = !DILocalVariable(name: "dwork", arg: 2, scope: !2855, file: !12, line: 574, type: !1979)
!2861 = !DILocalVariable(name: "delay", arg: 3, scope: !2855, file: !12, line: 575, type: !107)
!2862 = !DILocation(line: 573, column: 64, scope: !2855)
!2863 = !DILocation(line: 574, column: 32, scope: !2855)
!2864 = !DILocation(line: 575, column: 25, scope: !2855)
!2865 = !DILocation(line: 577, column: 49, scope: !2855)
!2866 = !DILocation(line: 577, column: 53, scope: !2855)
!2867 = !DILocation(line: 577, column: 60, scope: !2855)
!2868 = !DILocation(line: 577, column: 9, scope: !2855)
!2869 = !DILocation(line: 577, column: 2, scope: !2855)
!2870 = !DISubprogram(name: "queue_delayed_work_on", scope: !12, file: !12, line: 500, type: !2871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!577, !67, !1118, !1979, !107}
!2873 = distinct !DISubprogram(name: "jump_label_swap", scope: !3, file: !3, line: 63, type: !2874, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !89, !89, !67}
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2882, !2883}
!2877 = !DILocalVariable(name: "a", arg: 1, scope: !2873, file: !3, line: 63, type: !89)
!2878 = !DILocalVariable(name: "b", arg: 2, scope: !2873, file: !3, line: 63, type: !89)
!2879 = !DILocalVariable(name: "size", arg: 3, scope: !2873, file: !3, line: 63, type: !67)
!2880 = !DILocalVariable(name: "delta", scope: !2873, file: !3, line: 65, type: !119)
!2881 = !DILocalVariable(name: "jea", scope: !2873, file: !3, line: 66, type: !109)
!2882 = !DILocalVariable(name: "jeb", scope: !2873, file: !3, line: 67, type: !109)
!2883 = !DILocalVariable(name: "tmp", scope: !2873, file: !3, line: 68, type: !110)
!2884 = !DILocation(line: 63, column: 35, scope: !2873)
!2885 = !DILocation(line: 63, column: 44, scope: !2873)
!2886 = !DILocation(line: 63, column: 51, scope: !2873)
!2887 = !DILocation(line: 65, column: 2, scope: !2873)
!2888 = !DILocation(line: 65, column: 7, scope: !2873)
!2889 = !DILocation(line: 65, column: 30, scope: !2873)
!2890 = !DILocation(line: 65, column: 15, scope: !2873)
!2891 = !DILocation(line: 65, column: 49, scope: !2873)
!2892 = !DILocation(line: 65, column: 34, scope: !2873)
!2893 = !DILocation(line: 65, column: 32, scope: !2873)
!2894 = !DILocation(line: 66, column: 2, scope: !2873)
!2895 = !DILocation(line: 66, column: 21, scope: !2873)
!2896 = !DILocation(line: 66, column: 27, scope: !2873)
!2897 = !DILocation(line: 67, column: 2, scope: !2873)
!2898 = !DILocation(line: 67, column: 21, scope: !2873)
!2899 = !DILocation(line: 67, column: 27, scope: !2873)
!2900 = !DILocation(line: 68, column: 2, scope: !2873)
!2901 = !DILocation(line: 68, column: 20, scope: !2873)
!2902 = !DILocation(line: 68, column: 27, scope: !2873)
!2903 = !DILocation(line: 68, column: 26, scope: !2873)
!2904 = !DILocation(line: 70, column: 14, scope: !2873)
!2905 = !DILocation(line: 70, column: 19, scope: !2873)
!2906 = !DILocation(line: 70, column: 26, scope: !2873)
!2907 = !DILocation(line: 70, column: 24, scope: !2873)
!2908 = !DILocation(line: 70, column: 2, scope: !2873)
!2909 = !DILocation(line: 70, column: 7, scope: !2873)
!2910 = !DILocation(line: 70, column: 12, scope: !2873)
!2911 = !DILocation(line: 71, column: 16, scope: !2873)
!2912 = !DILocation(line: 71, column: 21, scope: !2873)
!2913 = !DILocation(line: 71, column: 30, scope: !2873)
!2914 = !DILocation(line: 71, column: 28, scope: !2873)
!2915 = !DILocation(line: 71, column: 2, scope: !2873)
!2916 = !DILocation(line: 71, column: 7, scope: !2873)
!2917 = !DILocation(line: 71, column: 14, scope: !2873)
!2918 = !DILocation(line: 72, column: 13, scope: !2873)
!2919 = !DILocation(line: 72, column: 18, scope: !2873)
!2920 = !DILocation(line: 72, column: 24, scope: !2873)
!2921 = !DILocation(line: 72, column: 22, scope: !2873)
!2922 = !DILocation(line: 72, column: 2, scope: !2873)
!2923 = !DILocation(line: 72, column: 7, scope: !2873)
!2924 = !DILocation(line: 72, column: 11, scope: !2873)
!2925 = !DILocation(line: 74, column: 18, scope: !2873)
!2926 = !DILocation(line: 74, column: 14, scope: !2873)
!2927 = !DILocation(line: 74, column: 25, scope: !2873)
!2928 = !DILocation(line: 74, column: 23, scope: !2873)
!2929 = !DILocation(line: 74, column: 2, scope: !2873)
!2930 = !DILocation(line: 74, column: 7, scope: !2873)
!2931 = !DILocation(line: 74, column: 12, scope: !2873)
!2932 = !DILocation(line: 75, column: 20, scope: !2873)
!2933 = !DILocation(line: 75, column: 16, scope: !2873)
!2934 = !DILocation(line: 75, column: 29, scope: !2873)
!2935 = !DILocation(line: 75, column: 27, scope: !2873)
!2936 = !DILocation(line: 75, column: 2, scope: !2873)
!2937 = !DILocation(line: 75, column: 7, scope: !2873)
!2938 = !DILocation(line: 75, column: 14, scope: !2873)
!2939 = !DILocation(line: 76, column: 17, scope: !2873)
!2940 = !DILocation(line: 76, column: 23, scope: !2873)
!2941 = !DILocation(line: 76, column: 21, scope: !2873)
!2942 = !DILocation(line: 76, column: 2, scope: !2873)
!2943 = !DILocation(line: 76, column: 7, scope: !2873)
!2944 = !DILocation(line: 76, column: 11, scope: !2873)
!2945 = !DILocation(line: 77, column: 1, scope: !2873)
!2946 = !DISubprogram(name: "sort", scope: !2947, file: !2947, line: 12, type: !2948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2947 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!2948 = !DISubroutineType(types: !2949)
!2949 = !{null, !89, !271, !271, !2950, !2954}
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !99, line: 245, baseType: !2951)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!67, !499, !499}
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !99, line: 242, baseType: !2955)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2956 = distinct !DISubprogram(name: "jump_label_cmp", scope: !3, file: !3, line: 35, type: !2952, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2957)
!2957 = !{!2958, !2959, !2960, !2961}
!2958 = !DILocalVariable(name: "a", arg: 1, scope: !2956, file: !3, line: 35, type: !499)
!2959 = !DILocalVariable(name: "b", arg: 2, scope: !2956, file: !3, line: 35, type: !499)
!2960 = !DILocalVariable(name: "jea", scope: !2956, file: !3, line: 37, type: !2358)
!2961 = !DILocalVariable(name: "jeb", scope: !2956, file: !3, line: 38, type: !2358)
!2962 = !DILocation(line: 35, column: 39, scope: !2956)
!2963 = !DILocation(line: 35, column: 54, scope: !2956)
!2964 = !DILocation(line: 37, column: 2, scope: !2956)
!2965 = !DILocation(line: 37, column: 27, scope: !2956)
!2966 = !DILocation(line: 37, column: 33, scope: !2956)
!2967 = !DILocation(line: 38, column: 2, scope: !2956)
!2968 = !DILocation(line: 38, column: 27, scope: !2956)
!2969 = !DILocation(line: 38, column: 33, scope: !2956)
!2970 = !DILocation(line: 43, column: 21, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 43, column: 6)
!2972 = !DILocation(line: 43, column: 6, scope: !2971)
!2973 = !DILocation(line: 43, column: 43, scope: !2971)
!2974 = !DILocation(line: 43, column: 28, scope: !2971)
!2975 = !DILocation(line: 43, column: 26, scope: !2971)
!2976 = !DILocation(line: 43, column: 6, scope: !2956)
!2977 = !DILocation(line: 44, column: 3, scope: !2971)
!2978 = !DILocation(line: 46, column: 21, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 46, column: 6)
!2980 = !DILocation(line: 46, column: 6, scope: !2979)
!2981 = !DILocation(line: 46, column: 43, scope: !2979)
!2982 = !DILocation(line: 46, column: 28, scope: !2979)
!2983 = !DILocation(line: 46, column: 26, scope: !2979)
!2984 = !DILocation(line: 46, column: 6, scope: !2956)
!2985 = !DILocation(line: 47, column: 3, scope: !2979)
!2986 = !DILocation(line: 54, column: 22, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 54, column: 6)
!2988 = !DILocation(line: 54, column: 6, scope: !2987)
!2989 = !DILocation(line: 54, column: 45, scope: !2987)
!2990 = !DILocation(line: 54, column: 29, scope: !2987)
!2991 = !DILocation(line: 54, column: 27, scope: !2987)
!2992 = !DILocation(line: 54, column: 6, scope: !2956)
!2993 = !DILocation(line: 55, column: 3, scope: !2987)
!2994 = !DILocation(line: 57, column: 22, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 57, column: 6)
!2996 = !DILocation(line: 57, column: 6, scope: !2995)
!2997 = !DILocation(line: 57, column: 45, scope: !2995)
!2998 = !DILocation(line: 57, column: 29, scope: !2995)
!2999 = !DILocation(line: 57, column: 27, scope: !2995)
!3000 = !DILocation(line: 57, column: 6, scope: !2956)
!3001 = !DILocation(line: 58, column: 3, scope: !2995)
!3002 = !DILocation(line: 60, column: 2, scope: !2956)
!3003 = !DILocation(line: 61, column: 1, scope: !2956)
!3004 = distinct !DISubprogram(name: "memory_contains", scope: !2343, file: !2343, line: 91, type: !3005, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!577, !89, !89, !89, !271}
!3007 = !{!3008, !3009, !3010, !3011}
!3008 = !DILocalVariable(name: "begin", arg: 1, scope: !3004, file: !2343, line: 91, type: !89)
!3009 = !DILocalVariable(name: "end", arg: 2, scope: !3004, file: !2343, line: 91, type: !89)
!3010 = !DILocalVariable(name: "virt", arg: 3, scope: !3004, file: !2343, line: 91, type: !89)
!3011 = !DILocalVariable(name: "size", arg: 4, scope: !3004, file: !2343, line: 92, type: !271)
!3012 = !DILocation(line: 91, column: 42, scope: !3004)
!3013 = !DILocation(line: 91, column: 55, scope: !3004)
!3014 = !DILocation(line: 91, column: 66, scope: !3004)
!3015 = !DILocation(line: 92, column: 15, scope: !3004)
!3016 = !DILocation(line: 94, column: 9, scope: !3004)
!3017 = !DILocation(line: 94, column: 17, scope: !3004)
!3018 = !DILocation(line: 94, column: 14, scope: !3004)
!3019 = !DILocation(line: 94, column: 23, scope: !3004)
!3020 = !DILocation(line: 94, column: 26, scope: !3004)
!3021 = !DILocation(line: 94, column: 33, scope: !3004)
!3022 = !DILocation(line: 94, column: 31, scope: !3004)
!3023 = !DILocation(line: 94, column: 41, scope: !3004)
!3024 = !DILocation(line: 94, column: 38, scope: !3004)
!3025 = !DILocation(line: 0, scope: !3004)
!3026 = !DILocation(line: 94, column: 2, scope: !3004)
!3027 = !DISubprogram(name: "register_module_notifier", scope: !43, file: !43, line: 734, type: !3028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!67, !1266}
!3030 = distinct !DISubprogram(name: "jump_label_module_notify", scope: !3, file: !3, line: 771, type: !1264, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3031)
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037, !3042}
!3032 = !DILocalVariable(name: "self", arg: 1, scope: !3030, file: !3, line: 771, type: !1266)
!3033 = !DILocalVariable(name: "val", arg: 2, scope: !3030, file: !3, line: 771, type: !107)
!3034 = !DILocalVariable(name: "data", arg: 3, scope: !3030, file: !3, line: 772, type: !89)
!3035 = !DILocalVariable(name: "mod", scope: !3030, file: !3, line: 774, type: !127)
!3036 = !DILocalVariable(name: "ret", scope: !3030, file: !3, line: 775, type: !67)
!3037 = !DILocalVariable(name: "__ret_warn_on", scope: !3038, file: !3, line: 784, type: !67)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 784, column: 4)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 783, column: 12)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 783, column: 7)
!3041 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 780, column: 15)
!3042 = !DILocalVariable(name: "__flags", scope: !3043, file: !3, line: 784, type: !67)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 784, column: 4)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 784, column: 4)
!3045 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 784, column: 4)
!3046 = !DILocation(line: 771, column: 49, scope: !3030)
!3047 = !DILocation(line: 771, column: 69, scope: !3030)
!3048 = !DILocation(line: 772, column: 11, scope: !3030)
!3049 = !DILocation(line: 774, column: 2, scope: !3030)
!3050 = !DILocation(line: 774, column: 17, scope: !3030)
!3051 = !DILocation(line: 774, column: 23, scope: !3030)
!3052 = !DILocation(line: 775, column: 2, scope: !3030)
!3053 = !DILocation(line: 775, column: 6, scope: !3030)
!3054 = !DILocation(line: 777, column: 2, scope: !3030)
!3055 = !DILocation(line: 778, column: 2, scope: !3030)
!3056 = !DILocation(line: 780, column: 10, scope: !3030)
!3057 = !DILocation(line: 780, column: 2, scope: !3030)
!3058 = !DILocation(line: 782, column: 31, scope: !3041)
!3059 = !DILocation(line: 782, column: 9, scope: !3041)
!3060 = !DILocation(line: 782, column: 7, scope: !3041)
!3061 = !DILocation(line: 783, column: 7, scope: !3040)
!3062 = !DILocation(line: 783, column: 7, scope: !3041)
!3063 = !DILocation(line: 784, column: 4, scope: !3038)
!3064 = !DILocation(line: 784, column: 4, scope: !3045)
!3065 = !DILocation(line: 784, column: 4, scope: !3044)
!3066 = !DILocation(line: 784, column: 4, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 784, column: 4)
!3068 = !DILocation(line: 784, column: 4, scope: !3043)
!3069 = !DILocation(line: 784, column: 4, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 784, column: 4)
!3071 = !DILocation(line: 784, column: 4, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 784, column: 4)
!3073 = !{i64 2153403713, i64 2153403742, i64 2153403788, i64 2153403846, i64 2153403900, i64 2153403954, i64 2153404009, i64 2153404040, i64 2153404348, i64 2153404354, i64 2153404401, i64 2153404424, i64 2153404450}
!3074 = !DILocation(line: 784, column: 4, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 784, column: 4)
!3076 = !DILocation(line: 784, column: 4, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 784, column: 4)
!3078 = !DILocation(line: 784, column: 4, scope: !3039)
!3079 = !DILocation(line: 785, column: 26, scope: !3039)
!3080 = !DILocation(line: 785, column: 4, scope: !3039)
!3081 = !DILocation(line: 786, column: 3, scope: !3039)
!3082 = !DILocation(line: 787, column: 3, scope: !3041)
!3083 = !DILocation(line: 789, column: 25, scope: !3041)
!3084 = !DILocation(line: 789, column: 3, scope: !3041)
!3085 = !DILocation(line: 790, column: 3, scope: !3041)
!3086 = !DILocation(line: 793, column: 2, scope: !3030)
!3087 = !DILocation(line: 794, column: 2, scope: !3030)
!3088 = !DILocation(line: 796, column: 29, scope: !3030)
!3089 = !DILocation(line: 796, column: 9, scope: !3030)
!3090 = !DILocation(line: 797, column: 1, scope: !3030)
!3091 = !DILocation(line: 796, column: 2, scope: !3030)
!3092 = !DILocation(line: 658, column: 49, scope: !1276)
!3093 = !DILocation(line: 660, column: 2, scope: !1276)
!3094 = !DILocation(line: 660, column: 21, scope: !1276)
!3095 = !DILocation(line: 660, column: 34, scope: !1276)
!3096 = !DILocation(line: 660, column: 39, scope: !1276)
!3097 = !DILocation(line: 661, column: 2, scope: !1276)
!3098 = !DILocation(line: 661, column: 21, scope: !1276)
!3099 = !DILocation(line: 661, column: 33, scope: !1276)
!3100 = !DILocation(line: 661, column: 46, scope: !1276)
!3101 = !DILocation(line: 661, column: 51, scope: !1276)
!3102 = !DILocation(line: 661, column: 44, scope: !1276)
!3103 = !DILocation(line: 662, column: 2, scope: !1276)
!3104 = !DILocation(line: 662, column: 21, scope: !1276)
!3105 = !DILocation(line: 663, column: 2, scope: !1276)
!3106 = !DILocation(line: 663, column: 21, scope: !1276)
!3107 = !DILocation(line: 664, column: 2, scope: !1276)
!3108 = !DILocation(line: 664, column: 25, scope: !1276)
!3109 = !DILocation(line: 664, column: 31, scope: !1276)
!3110 = !DILocation(line: 667, column: 6, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 667, column: 6)
!3112 = !DILocation(line: 667, column: 20, scope: !3111)
!3113 = !DILocation(line: 667, column: 17, scope: !3111)
!3114 = !DILocation(line: 667, column: 6, scope: !1276)
!3115 = !DILocation(line: 668, column: 3, scope: !3111)
!3116 = !DILocation(line: 670, column: 26, scope: !1276)
!3117 = !DILocation(line: 670, column: 38, scope: !1276)
!3118 = !DILocation(line: 670, column: 2, scope: !1276)
!3119 = !DILocation(line: 672, column: 14, scope: !1288)
!3120 = !DILocation(line: 672, column: 12, scope: !1288)
!3121 = !DILocation(line: 672, column: 7, scope: !1288)
!3122 = !DILocation(line: 672, column: 26, scope: !1287)
!3123 = !DILocation(line: 672, column: 33, scope: !1287)
!3124 = !DILocation(line: 672, column: 31, scope: !1287)
!3125 = !DILocation(line: 672, column: 2, scope: !1288)
!3126 = !DILocation(line: 673, column: 3, scope: !1286)
!3127 = !DILocation(line: 673, column: 22, scope: !1286)
!3128 = !DILocation(line: 674, column: 3, scope: !1286)
!3129 = !DILocation(line: 674, column: 8, scope: !1286)
!3130 = !DILocation(line: 676, column: 48, scope: !1286)
!3131 = !DILocation(line: 676, column: 32, scope: !1286)
!3132 = !DILocation(line: 676, column: 55, scope: !1286)
!3133 = !DILocation(line: 676, column: 13, scope: !1286)
!3134 = !DILocation(line: 676, column: 11, scope: !1286)
!3135 = !DILocation(line: 677, column: 23, scope: !1286)
!3136 = !DILocation(line: 677, column: 29, scope: !1286)
!3137 = !DILocation(line: 677, column: 3, scope: !1286)
!3138 = !DILocation(line: 679, column: 26, scope: !1286)
!3139 = !DILocation(line: 679, column: 11, scope: !1286)
!3140 = !DILocation(line: 679, column: 9, scope: !1286)
!3141 = !DILocation(line: 680, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 680, column: 7)
!3143 = !DILocation(line: 680, column: 16, scope: !3142)
!3144 = !DILocation(line: 680, column: 13, scope: !3142)
!3145 = !DILocation(line: 680, column: 7, scope: !1286)
!3146 = !DILocation(line: 681, column: 4, scope: !3142)
!3147 = !DILocation(line: 683, column: 9, scope: !1286)
!3148 = !DILocation(line: 683, column: 7, scope: !1286)
!3149 = !DILocation(line: 684, column: 36, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 684, column: 7)
!3151 = !DILocation(line: 684, column: 21, scope: !3150)
!3152 = !DILocation(line: 684, column: 41, scope: !3150)
!3153 = !DILocation(line: 684, column: 7, scope: !3150)
!3154 = !DILocation(line: 684, column: 7, scope: !1286)
!3155 = !DILocation(line: 685, column: 27, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 684, column: 47)
!3157 = !DILocation(line: 685, column: 32, scope: !3156)
!3158 = !DILocation(line: 685, column: 4, scope: !3156)
!3159 = !DILocation(line: 686, column: 4, scope: !3156)
!3160 = !DILocation(line: 688, column: 9, scope: !1286)
!3161 = !DILocation(line: 688, column: 7, scope: !1286)
!3162 = !DILocation(line: 689, column: 8, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 689, column: 7)
!3164 = !DILocation(line: 689, column: 7, scope: !1286)
!3165 = !DILocation(line: 690, column: 4, scope: !3163)
!3166 = !DILocation(line: 691, column: 26, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 691, column: 7)
!3168 = !DILocation(line: 691, column: 8, scope: !3167)
!3169 = !DILocation(line: 691, column: 7, scope: !1286)
!3170 = !DILocation(line: 692, column: 11, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 691, column: 32)
!3172 = !DILocation(line: 692, column: 9, scope: !3171)
!3173 = !DILocation(line: 694, column: 9, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 694, column: 8)
!3175 = !DILocation(line: 694, column: 8, scope: !3171)
!3176 = !DILocation(line: 695, column: 11, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 694, column: 15)
!3178 = !DILocation(line: 695, column: 5, scope: !3177)
!3179 = !DILocation(line: 696, column: 5, scope: !3177)
!3180 = !DILocation(line: 698, column: 4, scope: !3171)
!3181 = !DILocation(line: 698, column: 4, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 698, column: 4)
!3183 = !{i64 2153397924}
!3184 = !DILocation(line: 699, column: 48, scope: !3171)
!3185 = !DILocation(line: 699, column: 33, scope: !3171)
!3186 = !DILocation(line: 699, column: 16, scope: !3171)
!3187 = !DILocation(line: 699, column: 4, scope: !3171)
!3188 = !DILocation(line: 699, column: 10, scope: !3171)
!3189 = !DILocation(line: 699, column: 14, scope: !3171)
!3190 = !DILocation(line: 700, column: 4, scope: !3171)
!3191 = !DILocation(line: 700, column: 4, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 700, column: 4)
!3193 = !{i64 2153398070}
!3194 = !DILocation(line: 700, column: 4, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 700, column: 4)
!3196 = !DILocation(line: 700, column: 4, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 700, column: 4)
!3198 = !{i64 2153398252}
!3199 = !DILocation(line: 701, column: 39, scope: !3171)
!3200 = !DILocation(line: 701, column: 20, scope: !3171)
!3201 = !DILocation(line: 701, column: 4, scope: !3171)
!3202 = !DILocation(line: 701, column: 10, scope: !3171)
!3203 = !DILocation(line: 701, column: 18, scope: !3171)
!3204 = !DILocation(line: 702, column: 4, scope: !3171)
!3205 = !DILocation(line: 702, column: 10, scope: !3171)
!3206 = !DILocation(line: 702, column: 15, scope: !3171)
!3207 = !DILocation(line: 703, column: 23, scope: !3171)
!3208 = !DILocation(line: 703, column: 28, scope: !3171)
!3209 = !DILocation(line: 703, column: 4, scope: !3171)
!3210 = !DILocation(line: 704, column: 26, scope: !3171)
!3211 = !DILocation(line: 704, column: 4, scope: !3171)
!3212 = !DILocation(line: 705, column: 3, scope: !3171)
!3213 = !DILocation(line: 706, column: 14, scope: !1286)
!3214 = !DILocation(line: 706, column: 3, scope: !1286)
!3215 = !DILocation(line: 706, column: 8, scope: !1286)
!3216 = !DILocation(line: 706, column: 12, scope: !1286)
!3217 = !DILocation(line: 707, column: 18, scope: !1286)
!3218 = !DILocation(line: 707, column: 3, scope: !1286)
!3219 = !DILocation(line: 707, column: 8, scope: !1286)
!3220 = !DILocation(line: 707, column: 16, scope: !1286)
!3221 = !DILocation(line: 708, column: 30, scope: !1286)
!3222 = !DILocation(line: 708, column: 15, scope: !1286)
!3223 = !DILocation(line: 708, column: 3, scope: !1286)
!3224 = !DILocation(line: 708, column: 8, scope: !1286)
!3225 = !DILocation(line: 708, column: 13, scope: !1286)
!3226 = !DILocation(line: 709, column: 22, scope: !1286)
!3227 = !DILocation(line: 709, column: 27, scope: !1286)
!3228 = !DILocation(line: 709, column: 3, scope: !1286)
!3229 = !DILocation(line: 710, column: 25, scope: !1286)
!3230 = !DILocation(line: 710, column: 3, scope: !1286)
!3231 = !DILocation(line: 713, column: 23, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 713, column: 7)
!3233 = !DILocation(line: 713, column: 7, scope: !3232)
!3234 = !DILocation(line: 713, column: 53, scope: !3232)
!3235 = !DILocation(line: 713, column: 32, scope: !3232)
!3236 = !DILocation(line: 713, column: 29, scope: !3232)
!3237 = !DILocation(line: 713, column: 7, scope: !1286)
!3238 = !DILocation(line: 714, column: 24, scope: !3232)
!3239 = !DILocation(line: 714, column: 29, scope: !3232)
!3240 = !DILocation(line: 714, column: 35, scope: !3232)
!3241 = !DILocation(line: 714, column: 4, scope: !3232)
!3242 = !DILocation(line: 715, column: 2, scope: !1287)
!3243 = !DILocation(line: 715, column: 2, scope: !1286)
!3244 = !DILocation(line: 672, column: 48, scope: !1287)
!3245 = !DILocation(line: 672, column: 2, scope: !1287)
!3246 = distinct !{!3246, !3125, !3247, !1450, !1451}
!3247 = !DILocation(line: 715, column: 2, scope: !1288)
!3248 = !DILocation(line: 717, column: 2, scope: !1276)
!3249 = !DILocation(line: 718, column: 1, scope: !1276)
!3250 = distinct !DISubprogram(name: "jump_label_del_module", scope: !3, file: !3, line: 720, type: !836, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3251)
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3260, !3266, !3269, !3272}
!3252 = !DILocalVariable(name: "mod", arg: 1, scope: !3250, file: !3, line: 720, type: !127)
!3253 = !DILocalVariable(name: "iter_start", scope: !3250, file: !3, line: 722, type: !109)
!3254 = !DILocalVariable(name: "iter_stop", scope: !3250, file: !3, line: 723, type: !109)
!3255 = !DILocalVariable(name: "iter", scope: !3250, file: !3, line: 724, type: !109)
!3256 = !DILocalVariable(name: "key", scope: !3250, file: !3, line: 725, type: !1167)
!3257 = !DILocalVariable(name: "jlm", scope: !3250, file: !3, line: 726, type: !121)
!3258 = !DILocalVariable(name: "prev", scope: !3250, file: !3, line: 726, type: !3259)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!3260 = !DILocalVariable(name: "__ret_warn_on", scope: !3261, file: !3, line: 738, type: !67)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 738, column: 7)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 738, column: 7)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 728, column: 52)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 728, column: 2)
!3265 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 728, column: 2)
!3266 = !DILocalVariable(name: "__flags", scope: !3267, file: !3, line: 738, type: !67)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 738, column: 7)
!3268 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 738, column: 7)
!3269 = !DILocalVariable(name: "__ret_warn_on", scope: !3270, file: !3, line: 750, type: !67)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 750, column: 7)
!3271 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 750, column: 7)
!3272 = !DILocalVariable(name: "__flags", scope: !3273, file: !3, line: 750, type: !67)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 750, column: 7)
!3274 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 750, column: 7)
!3275 = !DILocation(line: 720, column: 50, scope: !3250)
!3276 = !DILocation(line: 722, column: 2, scope: !3250)
!3277 = !DILocation(line: 722, column: 21, scope: !3250)
!3278 = !DILocation(line: 722, column: 34, scope: !3250)
!3279 = !DILocation(line: 722, column: 39, scope: !3250)
!3280 = !DILocation(line: 723, column: 2, scope: !3250)
!3281 = !DILocation(line: 723, column: 21, scope: !3250)
!3282 = !DILocation(line: 723, column: 33, scope: !3250)
!3283 = !DILocation(line: 723, column: 46, scope: !3250)
!3284 = !DILocation(line: 723, column: 51, scope: !3250)
!3285 = !DILocation(line: 723, column: 44, scope: !3250)
!3286 = !DILocation(line: 724, column: 2, scope: !3250)
!3287 = !DILocation(line: 724, column: 21, scope: !3250)
!3288 = !DILocation(line: 725, column: 2, scope: !3250)
!3289 = !DILocation(line: 725, column: 21, scope: !3250)
!3290 = !DILocation(line: 726, column: 2, scope: !3250)
!3291 = !DILocation(line: 726, column: 25, scope: !3250)
!3292 = !DILocation(line: 726, column: 32, scope: !3250)
!3293 = !DILocation(line: 728, column: 14, scope: !3265)
!3294 = !DILocation(line: 728, column: 12, scope: !3265)
!3295 = !DILocation(line: 728, column: 7, scope: !3265)
!3296 = !DILocation(line: 728, column: 26, scope: !3264)
!3297 = !DILocation(line: 728, column: 33, scope: !3264)
!3298 = !DILocation(line: 728, column: 31, scope: !3264)
!3299 = !DILocation(line: 728, column: 2, scope: !3265)
!3300 = !DILocation(line: 729, column: 22, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 729, column: 7)
!3302 = !DILocation(line: 729, column: 7, scope: !3301)
!3303 = !DILocation(line: 729, column: 31, scope: !3301)
!3304 = !DILocation(line: 729, column: 28, scope: !3301)
!3305 = !DILocation(line: 729, column: 7, scope: !3263)
!3306 = !DILocation(line: 730, column: 4, scope: !3301)
!3307 = !DILocation(line: 732, column: 24, scope: !3263)
!3308 = !DILocation(line: 732, column: 9, scope: !3263)
!3309 = !DILocation(line: 732, column: 7, scope: !3263)
!3310 = !DILocation(line: 734, column: 36, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 734, column: 7)
!3312 = !DILocation(line: 734, column: 21, scope: !3311)
!3313 = !DILocation(line: 734, column: 41, scope: !3311)
!3314 = !DILocation(line: 734, column: 7, scope: !3311)
!3315 = !DILocation(line: 734, column: 7, scope: !3263)
!3316 = !DILocation(line: 735, column: 4, scope: !3311)
!3317 = !DILocation(line: 738, column: 7, scope: !3261)
!3318 = !DILocation(line: 738, column: 7, scope: !3268)
!3319 = !DILocation(line: 738, column: 7, scope: !3267)
!3320 = !DILocation(line: 738, column: 7, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 738, column: 7)
!3322 = !DILocation(line: 738, column: 7, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 738, column: 7)
!3324 = !{i64 2153400406, i64 2153400435, i64 2153400481, i64 2153400539, i64 2153400593, i64 2153400647, i64 2153400702, i64 2153400733, i64 2153401041, i64 2153401047, i64 2153401094, i64 2153401117, i64 2153401143}
!3325 = !DILocation(line: 738, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3267, file: !3, line: 738, column: 7)
!3327 = !DILocation(line: 738, column: 7, scope: !3262)
!3328 = !DILocation(line: 738, column: 7, scope: !3263)
!3329 = !DILocation(line: 739, column: 4, scope: !3262)
!3330 = !DILocation(line: 741, column: 11, scope: !3263)
!3331 = !DILocation(line: 741, column: 16, scope: !3263)
!3332 = !DILocation(line: 741, column: 8, scope: !3263)
!3333 = !DILocation(line: 742, column: 24, scope: !3263)
!3334 = !DILocation(line: 742, column: 9, scope: !3263)
!3335 = !DILocation(line: 742, column: 7, scope: !3263)
!3336 = !DILocation(line: 744, column: 3, scope: !3263)
!3337 = !DILocation(line: 744, column: 10, scope: !3263)
!3338 = !DILocation(line: 744, column: 14, scope: !3263)
!3339 = !DILocation(line: 744, column: 17, scope: !3263)
!3340 = !DILocation(line: 744, column: 22, scope: !3263)
!3341 = !DILocation(line: 744, column: 29, scope: !3263)
!3342 = !DILocation(line: 744, column: 26, scope: !3263)
!3343 = !DILocation(line: 0, scope: !3263)
!3344 = !DILocation(line: 745, column: 12, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 744, column: 34)
!3346 = !DILocation(line: 745, column: 17, scope: !3345)
!3347 = !DILocation(line: 745, column: 9, scope: !3345)
!3348 = !DILocation(line: 746, column: 10, scope: !3345)
!3349 = !DILocation(line: 746, column: 15, scope: !3345)
!3350 = !DILocation(line: 746, column: 8, scope: !3345)
!3351 = distinct !{!3351, !3336, !3352, !1450, !1451}
!3352 = !DILocation(line: 747, column: 3, scope: !3263)
!3353 = !DILocation(line: 750, column: 7, scope: !3270)
!3354 = !DILocation(line: 750, column: 7, scope: !3274)
!3355 = !DILocation(line: 750, column: 7, scope: !3273)
!3356 = !DILocation(line: 750, column: 7, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 750, column: 7)
!3358 = !DILocation(line: 750, column: 7, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 750, column: 7)
!3360 = !{i64 2153401893, i64 2153401922, i64 2153401968, i64 2153402026, i64 2153402080, i64 2153402134, i64 2153402189, i64 2153402220, i64 2153402528, i64 2153402534, i64 2153402581, i64 2153402604, i64 2153402630}
!3361 = !DILocation(line: 750, column: 7, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 750, column: 7)
!3363 = !DILocation(line: 750, column: 7, scope: !3271)
!3364 = !DILocation(line: 750, column: 7, scope: !3263)
!3365 = !DILocation(line: 751, column: 4, scope: !3271)
!3366 = !DILocation(line: 753, column: 7, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 753, column: 7)
!3368 = !DILocation(line: 753, column: 16, scope: !3367)
!3369 = !DILocation(line: 753, column: 21, scope: !3367)
!3370 = !DILocation(line: 753, column: 12, scope: !3367)
!3371 = !DILocation(line: 753, column: 7, scope: !3263)
!3372 = !DILocation(line: 754, column: 23, scope: !3367)
!3373 = !DILocation(line: 754, column: 28, scope: !3367)
!3374 = !DILocation(line: 754, column: 33, scope: !3367)
!3375 = !DILocation(line: 754, column: 4, scope: !3367)
!3376 = !DILocation(line: 756, column: 12, scope: !3367)
!3377 = !DILocation(line: 756, column: 17, scope: !3367)
!3378 = !DILocation(line: 756, column: 5, scope: !3367)
!3379 = !DILocation(line: 756, column: 10, scope: !3367)
!3380 = !DILocation(line: 758, column: 9, scope: !3263)
!3381 = !DILocation(line: 758, column: 3, scope: !3263)
!3382 = !DILocation(line: 760, column: 24, scope: !3263)
!3383 = !DILocation(line: 760, column: 9, scope: !3263)
!3384 = !DILocation(line: 760, column: 7, scope: !3263)
!3385 = !DILocation(line: 762, column: 7, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 762, column: 7)
!3387 = !DILocation(line: 762, column: 12, scope: !3386)
!3388 = !DILocation(line: 762, column: 17, scope: !3386)
!3389 = !DILocation(line: 762, column: 7, scope: !3263)
!3390 = !DILocation(line: 763, column: 27, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 762, column: 26)
!3392 = !DILocation(line: 763, column: 32, scope: !3391)
!3393 = !DILocation(line: 763, column: 37, scope: !3391)
!3394 = !DILocation(line: 763, column: 4, scope: !3391)
!3395 = !DILocation(line: 764, column: 28, scope: !3391)
!3396 = !DILocation(line: 764, column: 4, scope: !3391)
!3397 = !DILocation(line: 765, column: 10, scope: !3391)
!3398 = !DILocation(line: 765, column: 4, scope: !3391)
!3399 = !DILocation(line: 766, column: 3, scope: !3391)
!3400 = !DILocation(line: 767, column: 2, scope: !3263)
!3401 = !DILocation(line: 728, column: 48, scope: !3264)
!3402 = !DILocation(line: 728, column: 2, scope: !3264)
!3403 = distinct !{!3403, !3299, !3404, !1450, !1451}
!3404 = !DILocation(line: 767, column: 2, scope: !3265)
!3405 = !DILocation(line: 768, column: 1, scope: !3250)
!3406 = distinct !DISubprogram(name: "notifier_from_errno", scope: !1259, file: !1259, line: 196, type: !3407, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!67, !67}
!3409 = !{!3410}
!3410 = !DILocalVariable(name: "err", arg: 1, scope: !3406, file: !1259, line: 196, type: !67)
!3411 = !DILocation(line: 196, column: 43, scope: !3406)
!3412 = !DILocation(line: 198, column: 6, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3406, file: !1259, line: 198, column: 6)
!3414 = !DILocation(line: 198, column: 6, scope: !3406)
!3415 = !DILocation(line: 199, column: 42, scope: !3413)
!3416 = !DILocation(line: 199, column: 40, scope: !3413)
!3417 = !DILocation(line: 199, column: 27, scope: !3413)
!3418 = !DILocation(line: 199, column: 3, scope: !3413)
!3419 = !DILocation(line: 201, column: 2, scope: !3406)
!3420 = !DILocation(line: 202, column: 1, scope: !3406)
!3421 = distinct !DISubprogram(name: "within_module_init", scope: !43, file: !43, line: 634, type: !3422, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3426)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!577, !107, !3424}
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!3426 = !{!3427, !3428, !3429}
!3427 = !DILocalVariable(name: "addr", arg: 1, scope: !3421, file: !43, line: 634, type: !107)
!3428 = !DILocalVariable(name: "mod", arg: 2, scope: !3421, file: !43, line: 635, type: !3424)
!3429 = !DILocalVariable(name: "type", scope: !3430, file: !43, line: 637, type: !66)
!3430 = distinct !DILexicalBlock(scope: !3421, file: !43, line: 637, column: 2)
!3431 = !DILocation(line: 634, column: 53, scope: !3421)
!3432 = !DILocation(line: 635, column: 32, scope: !3421)
!3433 = !DILocation(line: 637, column: 2, scope: !3430)
!3434 = !DILocation(line: 637, column: 2, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3430, file: !43, line: 637, column: 2)
!3436 = !DILocation(line: 637, column: 2, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3435, file: !43, line: 637, column: 2)
!3438 = !DILocation(line: 638, column: 30, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !43, line: 638, column: 7)
!3440 = distinct !DILexicalBlock(scope: !3437, file: !43, line: 637, column: 37)
!3441 = !DILocation(line: 638, column: 36, scope: !3439)
!3442 = !DILocation(line: 638, column: 41, scope: !3439)
!3443 = !DILocation(line: 638, column: 7, scope: !3439)
!3444 = !DILocation(line: 638, column: 7, scope: !3440)
!3445 = !DILocation(line: 639, column: 4, scope: !3439)
!3446 = !DILocation(line: 640, column: 2, scope: !3440)
!3447 = distinct !{!3447, !3433, !3448, !1450, !1451}
!3448 = !DILocation(line: 640, column: 2, scope: !3430)
!3449 = !DILocation(line: 641, column: 2, scope: !3421)
!3450 = !DILocation(line: 642, column: 1, scope: !3421)
!3451 = distinct !DISubprogram(name: "within_module", scope: !43, file: !43, line: 644, type: !3422, scopeLine: 645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3452)
!3452 = !{!3453, !3454}
!3453 = !DILocalVariable(name: "addr", arg: 1, scope: !3451, file: !43, line: 644, type: !107)
!3454 = !DILocalVariable(name: "mod", arg: 2, scope: !3451, file: !43, line: 644, type: !3424)
!3455 = !DILocation(line: 644, column: 48, scope: !3451)
!3456 = !DILocation(line: 644, column: 75, scope: !3451)
!3457 = !DILocation(line: 646, column: 28, scope: !3451)
!3458 = !DILocation(line: 646, column: 34, scope: !3451)
!3459 = !DILocation(line: 646, column: 9, scope: !3451)
!3460 = !DILocation(line: 646, column: 39, scope: !3451)
!3461 = !DILocation(line: 646, column: 61, scope: !3451)
!3462 = !DILocation(line: 646, column: 67, scope: !3451)
!3463 = !DILocation(line: 646, column: 42, scope: !3451)
!3464 = !DILocation(line: 646, column: 2, scope: !3451)
!3465 = distinct !DISubprogram(name: "kzalloc", scope: !79, file: !79, line: 719, type: !3466, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!89, !271, !1168}
!3468 = !{!3469, !3470}
!3469 = !DILocalVariable(name: "size", arg: 1, scope: !3465, file: !79, line: 719, type: !271)
!3470 = !DILocalVariable(name: "flags", arg: 2, scope: !3465, file: !79, line: 719, type: !1168)
!3471 = !DILocation(line: 719, column: 52, scope: !3465)
!3472 = !DILocation(line: 719, column: 64, scope: !3465)
!3473 = !DILocation(line: 721, column: 17, scope: !3465)
!3474 = !DILocation(line: 721, column: 23, scope: !3465)
!3475 = !DILocation(line: 721, column: 29, scope: !3465)
!3476 = !DILocation(line: 721, column: 9, scope: !3465)
!3477 = !DILocation(line: 721, column: 2, scope: !3465)
!3478 = distinct !DISubprogram(name: "static_key_linked", scope: !3, file: !3, line: 417, type: !1399, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3479)
!3479 = !{!3480}
!3480 = !DILocalVariable(name: "key", arg: 1, scope: !3478, file: !3, line: 417, type: !1167)
!3481 = !DILocation(line: 417, column: 57, scope: !3478)
!3482 = !DILocation(line: 419, column: 9, scope: !3478)
!3483 = !DILocation(line: 419, column: 14, scope: !3478)
!3484 = !DILocation(line: 419, column: 19, scope: !3478)
!3485 = !DILocation(line: 419, column: 2, scope: !3478)
!3486 = !DISubprogram(name: "kfree", scope: !79, file: !79, line: 227, type: !3487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{null, !499}
!3489 = distinct !DISubprogram(name: "__preempt_count_add", scope: !3490, file: !3490, line: 78, type: !3491, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3493)
!3490 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !67}
!3493 = !{!3494, !3495, !3497}
!3494 = !DILocalVariable(name: "val", arg: 1, scope: !3489, file: !3490, line: 78, type: !67)
!3495 = !DILocalVariable(name: "pao_ID__", scope: !3496, file: !3490, line: 80, type: !1013)
!3496 = distinct !DILexicalBlock(scope: !3489, file: !3490, line: 80, column: 2)
!3497 = !DILocalVariable(name: "pto_val__", scope: !3498, file: !3490, line: 80, type: !1066)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !3490, line: 80, column: 2)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !3490, line: 80, column: 2)
!3500 = distinct !DILexicalBlock(scope: !3496, file: !3490, line: 80, column: 2)
!3501 = !DILocation(line: 78, column: 53, scope: !3489)
!3502 = !DILocation(line: 80, column: 2, scope: !3489)
!3503 = !DILocation(line: 80, column: 2, scope: !3496)
!3504 = !DILocation(line: 80, column: 2, scope: !3500)
!3505 = !DILocation(line: 80, column: 2, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3500, file: !3490, line: 80, column: 2)
!3507 = !{i64 2149673254}
!3508 = !DILocation(line: 80, column: 2, scope: !3499)
!3509 = !DILocation(line: 80, column: 2, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3499, file: !3490, line: 80, column: 2)
!3511 = !{i64 2149673549}
!3512 = !DILocation(line: 80, column: 2, scope: !3498)
!3513 = !{i64 2149674254}
!3514 = !DILocation(line: 81, column: 1, scope: !3489)
!3515 = !DISubprogram(name: "__module_address", scope: !43, file: !43, line: 607, type: !3516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!127, !107}
!3518 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !3490, file: !3490, line: 93, type: !624, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3519)
!3519 = !{!3520}
!3520 = !DILocalVariable(name: "c", scope: !3521, file: !3490, line: 95, type: !577)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !3490, line: 95, column: 9)
!3522 = !DILocation(line: 95, column: 9, scope: !3521)
!3523 = !{i64 2149677610, i64 2149677703}
!3524 = !DILocation(line: 95, column: 9, scope: !3518)
!3525 = !DILocation(line: 95, column: 2, scope: !3518)
!3526 = distinct !DISubprogram(name: "static_key_entries", scope: !3, file: !3, line: 406, type: !3527, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3529)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!109, !1167}
!3529 = !{!3530, !3531, !3533}
!3530 = !DILocalVariable(name: "key", arg: 1, scope: !3526, file: !3, line: 406, type: !1167)
!3531 = !DILocalVariable(name: "__ret_warn_on", scope: !3532, file: !3, line: 408, type: !67)
!3532 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 408, column: 2)
!3533 = !DILocalVariable(name: "__flags", scope: !3534, file: !3, line: 408, type: !67)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 408, column: 2)
!3535 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 408, column: 2)
!3536 = !DILocation(line: 406, column: 72, scope: !3526)
!3537 = !DILocation(line: 408, column: 2, scope: !3532)
!3538 = !DILocation(line: 408, column: 2, scope: !3535)
!3539 = !DILocation(line: 408, column: 2, scope: !3534)
!3540 = !DILocation(line: 408, column: 2, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 408, column: 2)
!3542 = !DILocation(line: 408, column: 2, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 408, column: 2)
!3544 = !{i64 2153380619, i64 2153380648, i64 2153380694, i64 2153380752, i64 2153380806, i64 2153380860, i64 2153380915, i64 2153380946, i64 2153381254, i64 2153381260, i64 2153381307, i64 2153381330, i64 2153381356}
!3545 = !DILocation(line: 408, column: 2, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 408, column: 2)
!3547 = !DILocation(line: 408, column: 2, scope: !3526)
!3548 = !DILocation(line: 409, column: 31, scope: !3526)
!3549 = !DILocation(line: 409, column: 36, scope: !3526)
!3550 = !DILocation(line: 409, column: 41, scope: !3526)
!3551 = !DILocation(line: 409, column: 9, scope: !3526)
!3552 = !DILocation(line: 409, column: 2, scope: !3526)
!3553 = distinct !DISubprogram(name: "static_key_set_mod", scope: !3, file: !3, line: 598, type: !3554, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !1167, !121}
!3556 = !{!3557, !3558, !3559, !3560, !3562}
!3557 = !DILocalVariable(name: "key", arg: 1, scope: !3553, file: !3, line: 598, type: !1167)
!3558 = !DILocalVariable(name: "mod", arg: 2, scope: !3553, file: !3, line: 599, type: !121)
!3559 = !DILocalVariable(name: "type", scope: !3553, file: !3, line: 601, type: !107)
!3560 = !DILocalVariable(name: "__ret_warn_on", scope: !3561, file: !3, line: 603, type: !67)
!3561 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 603, column: 2)
!3562 = !DILocalVariable(name: "__flags", scope: !3563, file: !3, line: 603, type: !67)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 603, column: 2)
!3564 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 603, column: 2)
!3565 = !DILocation(line: 598, column: 51, scope: !3553)
!3566 = !DILocation(line: 599, column: 34, scope: !3553)
!3567 = !DILocation(line: 601, column: 2, scope: !3553)
!3568 = !DILocation(line: 601, column: 16, scope: !3553)
!3569 = !DILocation(line: 603, column: 2, scope: !3561)
!3570 = !DILocation(line: 603, column: 2, scope: !3564)
!3571 = !DILocation(line: 603, column: 2, scope: !3563)
!3572 = !DILocation(line: 603, column: 2, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 603, column: 2)
!3574 = !DILocation(line: 603, column: 2, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 603, column: 2)
!3576 = !{i64 2153392809, i64 2153392838, i64 2153392884, i64 2153392942, i64 2153392996, i64 2153393050, i64 2153393105, i64 2153393136, i64 2153393444, i64 2153393450, i64 2153393497, i64 2153393520, i64 2153393546}
!3577 = !DILocation(line: 603, column: 2, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 603, column: 2)
!3579 = !DILocation(line: 603, column: 2, scope: !3553)
!3580 = !DILocation(line: 604, column: 9, scope: !3553)
!3581 = !DILocation(line: 604, column: 14, scope: !3553)
!3582 = !DILocation(line: 604, column: 19, scope: !3553)
!3583 = !DILocation(line: 604, column: 7, scope: !3553)
!3584 = !DILocation(line: 605, column: 14, scope: !3553)
!3585 = !DILocation(line: 605, column: 2, scope: !3553)
!3586 = !DILocation(line: 605, column: 7, scope: !3553)
!3587 = !DILocation(line: 605, column: 12, scope: !3553)
!3588 = !DILocation(line: 606, column: 15, scope: !3553)
!3589 = !DILocation(line: 606, column: 2, scope: !3553)
!3590 = !DILocation(line: 606, column: 7, scope: !3553)
!3591 = !DILocation(line: 606, column: 12, scope: !3553)
!3592 = !DILocation(line: 607, column: 1, scope: !3553)
!3593 = distinct !DISubprogram(name: "static_key_set_linked", scope: !3, file: !3, line: 427, type: !1338, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3594)
!3594 = !{!3595}
!3595 = !DILocalVariable(name: "key", arg: 1, scope: !3593, file: !3, line: 427, type: !1167)
!3596 = !DILocation(line: 427, column: 61, scope: !3593)
!3597 = !DILocation(line: 429, column: 2, scope: !3593)
!3598 = !DILocation(line: 429, column: 7, scope: !3593)
!3599 = !DILocation(line: 429, column: 12, scope: !3593)
!3600 = !DILocation(line: 430, column: 1, scope: !3593)
!3601 = distinct !DISubprogram(name: "static_key_mod", scope: !3, file: !3, line: 586, type: !3602, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!121, !1167}
!3604 = !{!3605, !3606, !3608}
!3605 = !DILocalVariable(name: "key", arg: 1, scope: !3601, file: !3, line: 586, type: !1167)
!3606 = !DILocalVariable(name: "__ret_warn_on", scope: !3607, file: !3, line: 588, type: !67)
!3607 = distinct !DILexicalBlock(scope: !3601, file: !3, line: 588, column: 2)
!3608 = !DILocalVariable(name: "__flags", scope: !3609, file: !3, line: 588, type: !67)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 588, column: 2)
!3610 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 588, column: 2)
!3611 = !DILocation(line: 586, column: 72, scope: !3601)
!3612 = !DILocation(line: 588, column: 2, scope: !3607)
!3613 = !DILocation(line: 588, column: 2, scope: !3610)
!3614 = !DILocation(line: 588, column: 2, scope: !3609)
!3615 = !DILocation(line: 588, column: 2, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 588, column: 2)
!3617 = !DILocation(line: 588, column: 2, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 588, column: 2)
!3619 = !{i64 2153391266, i64 2153391295, i64 2153391341, i64 2153391399, i64 2153391453, i64 2153391507, i64 2153391562, i64 2153391593, i64 2153391901, i64 2153391907, i64 2153391954, i64 2153391977, i64 2153392003}
!3620 = !DILocation(line: 588, column: 2, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 588, column: 2)
!3622 = !DILocation(line: 588, column: 2, scope: !3601)
!3623 = !DILocation(line: 589, column: 35, scope: !3601)
!3624 = !DILocation(line: 589, column: 40, scope: !3601)
!3625 = !DILocation(line: 589, column: 45, scope: !3601)
!3626 = !DILocation(line: 589, column: 9, scope: !3601)
!3627 = !DILocation(line: 589, column: 2, scope: !3601)
!3628 = distinct !DISubprogram(name: "__jump_label_update", scope: !3, file: !3, line: 500, type: !3629, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !1167, !109, !109, !577}
!3631 = !{!3632, !3633, !3634, !3635}
!3632 = !DILocalVariable(name: "key", arg: 1, scope: !3628, file: !3, line: 500, type: !1167)
!3633 = !DILocalVariable(name: "entry", arg: 2, scope: !3628, file: !3, line: 501, type: !109)
!3634 = !DILocalVariable(name: "stop", arg: 3, scope: !3628, file: !3, line: 502, type: !109)
!3635 = !DILocalVariable(name: "init", arg: 4, scope: !3628, file: !3, line: 503, type: !577)
!3636 = !DILocation(line: 500, column: 52, scope: !3628)
!3637 = !DILocation(line: 501, column: 24, scope: !3628)
!3638 = !DILocation(line: 502, column: 24, scope: !3628)
!3639 = !DILocation(line: 503, column: 10, scope: !3628)
!3640 = !DILocation(line: 505, column: 2, scope: !3628)
!3641 = !DILocation(line: 505, column: 10, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 505, column: 2)
!3643 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 505, column: 2)
!3644 = !DILocation(line: 505, column: 18, scope: !3642)
!3645 = !DILocation(line: 505, column: 16, scope: !3642)
!3646 = !DILocation(line: 505, column: 24, scope: !3642)
!3647 = !DILocation(line: 505, column: 43, scope: !3642)
!3648 = !DILocation(line: 505, column: 28, scope: !3642)
!3649 = !DILocation(line: 505, column: 53, scope: !3642)
!3650 = !DILocation(line: 505, column: 50, scope: !3642)
!3651 = !DILocation(line: 0, scope: !3642)
!3652 = !DILocation(line: 505, column: 2, scope: !3643)
!3653 = !DILocation(line: 507, column: 30, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 507, column: 7)
!3655 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 505, column: 68)
!3656 = !DILocation(line: 507, column: 37, scope: !3654)
!3657 = !DILocation(line: 507, column: 8, scope: !3654)
!3658 = !DILocation(line: 507, column: 7, scope: !3655)
!3659 = !DILocation(line: 508, column: 4, scope: !3654)
!3660 = !DILocation(line: 510, column: 40, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 510, column: 7)
!3662 = !DILocation(line: 510, column: 63, scope: !3661)
!3663 = !DILocation(line: 510, column: 47, scope: !3661)
!3664 = !DILocation(line: 510, column: 8, scope: !3661)
!3665 = !DILocation(line: 510, column: 7, scope: !3655)
!3666 = !DILocation(line: 514, column: 4, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 510, column: 72)
!3668 = !DILocation(line: 515, column: 4, scope: !3667)
!3669 = !DILocation(line: 515, column: 4, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 515, column: 4)
!3671 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 515, column: 4)
!3672 = !DILocation(line: 515, column: 4, scope: !3671)
!3673 = !DILocation(line: 515, column: 4, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 515, column: 4)
!3675 = !DILocation(line: 515, column: 4, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 515, column: 4)
!3677 = !DILocation(line: 515, column: 4, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 515, column: 4)
!3679 = !{i64 2153387311, i64 2153387340, i64 2153387386, i64 2153387444, i64 2153387498, i64 2153387552, i64 2153387607, i64 2153387638}
!3680 = !DILocation(line: 516, column: 3, scope: !3667)
!3681 = !DILocation(line: 517, column: 2, scope: !3655)
!3682 = !DILocation(line: 505, column: 64, scope: !3642)
!3683 = !DILocation(line: 505, column: 2, scope: !3642)
!3684 = distinct !{!3684, !3652, !3685, !1450, !1451}
!3685 = !DILocation(line: 517, column: 2, scope: !3643)
!3686 = !DILocation(line: 518, column: 2, scope: !3628)
!3687 = !DILocation(line: 519, column: 1, scope: !3628)
!3688 = distinct !DISubprogram(name: "within_module_mem_type", scope: !43, file: !43, line: 613, type: !3689, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3691)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!577, !107, !3424, !66}
!3691 = !{!3692, !3693, !3694, !3695, !3696}
!3692 = !DILocalVariable(name: "addr", arg: 1, scope: !3688, file: !43, line: 613, type: !107)
!3693 = !DILocalVariable(name: "mod", arg: 2, scope: !3688, file: !43, line: 614, type: !3424)
!3694 = !DILocalVariable(name: "type", arg: 3, scope: !3688, file: !43, line: 615, type: !66)
!3695 = !DILocalVariable(name: "base", scope: !3688, file: !43, line: 617, type: !107)
!3696 = !DILocalVariable(name: "size", scope: !3688, file: !43, line: 617, type: !107)
!3697 = !DILocation(line: 613, column: 57, scope: !3688)
!3698 = !DILocation(line: 614, column: 29, scope: !3688)
!3699 = !DILocation(line: 615, column: 26, scope: !3688)
!3700 = !DILocation(line: 617, column: 2, scope: !3688)
!3701 = !DILocation(line: 617, column: 16, scope: !3688)
!3702 = !DILocation(line: 617, column: 22, scope: !3688)
!3703 = !DILocation(line: 619, column: 24, scope: !3688)
!3704 = !DILocation(line: 619, column: 29, scope: !3688)
!3705 = !DILocation(line: 619, column: 33, scope: !3688)
!3706 = !DILocation(line: 619, column: 39, scope: !3688)
!3707 = !DILocation(line: 619, column: 9, scope: !3688)
!3708 = !DILocation(line: 619, column: 7, scope: !3688)
!3709 = !DILocation(line: 620, column: 9, scope: !3688)
!3710 = !DILocation(line: 620, column: 14, scope: !3688)
!3711 = !DILocation(line: 620, column: 18, scope: !3688)
!3712 = !DILocation(line: 620, column: 24, scope: !3688)
!3713 = !DILocation(line: 620, column: 7, scope: !3688)
!3714 = !DILocation(line: 621, column: 9, scope: !3688)
!3715 = !DILocation(line: 621, column: 16, scope: !3688)
!3716 = !DILocation(line: 621, column: 14, scope: !3688)
!3717 = !DILocation(line: 621, column: 23, scope: !3688)
!3718 = !DILocation(line: 621, column: 21, scope: !3688)
!3719 = !DILocation(line: 622, column: 1, scope: !3688)
!3720 = !DILocation(line: 621, column: 2, scope: !3688)
!3721 = distinct !DISubprogram(name: "within_module_core", scope: !43, file: !43, line: 624, type: !3422, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3722)
!3722 = !{!3723, !3724, !3725}
!3723 = !DILocalVariable(name: "addr", arg: 1, scope: !3721, file: !43, line: 624, type: !107)
!3724 = !DILocalVariable(name: "mod", arg: 2, scope: !3721, file: !43, line: 625, type: !3424)
!3725 = !DILocalVariable(name: "type", scope: !3726, file: !43, line: 627, type: !66)
!3726 = distinct !DILexicalBlock(scope: !3721, file: !43, line: 627, column: 2)
!3727 = !DILocation(line: 624, column: 53, scope: !3721)
!3728 = !DILocation(line: 625, column: 32, scope: !3721)
!3729 = !DILocation(line: 627, column: 2, scope: !3726)
!3730 = !DILocation(line: 627, column: 2, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3726, file: !43, line: 627, column: 2)
!3732 = !DILocation(line: 627, column: 2, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3731, file: !43, line: 627, column: 2)
!3734 = !DILocation(line: 628, column: 30, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !43, line: 628, column: 7)
!3736 = distinct !DILexicalBlock(scope: !3733, file: !43, line: 627, column: 37)
!3737 = !DILocation(line: 628, column: 36, scope: !3735)
!3738 = !DILocation(line: 628, column: 41, scope: !3735)
!3739 = !DILocation(line: 628, column: 7, scope: !3735)
!3740 = !DILocation(line: 628, column: 7, scope: !3736)
!3741 = !DILocation(line: 629, column: 4, scope: !3735)
!3742 = !DILocation(line: 630, column: 2, scope: !3736)
!3743 = distinct !{!3743, !3729, !3744, !1450, !1451}
!3744 = !DILocation(line: 630, column: 2, scope: !3726)
!3745 = !DILocation(line: 631, column: 2, scope: !3721)
!3746 = !DILocation(line: 632, column: 1, scope: !3721)
!3747 = distinct !DISubprogram(name: "kmalloc", scope: !79, file: !79, line: 591, type: !3466, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3748)
!3748 = !{!3749, !3750, !3751}
!3749 = !DILocalVariable(name: "size", arg: 1, scope: !3747, file: !79, line: 591, type: !271)
!3750 = !DILocalVariable(name: "flags", arg: 2, scope: !3747, file: !79, line: 591, type: !1168)
!3751 = !DILocalVariable(name: "index", scope: !3752, file: !79, line: 594, type: !7)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !79, line: 593, column: 42)
!3753 = distinct !DILexicalBlock(scope: !3747, file: !79, line: 593, column: 6)
!3754 = !DILocation(line: 591, column: 61, scope: !3747)
!3755 = !DILocation(line: 591, column: 73, scope: !3747)
!3756 = !DILocation(line: 593, column: 27, scope: !3753)
!3757 = !DILocation(line: 593, column: 6, scope: !3753)
!3758 = !DILocation(line: 593, column: 33, scope: !3753)
!3759 = !DILocation(line: 593, column: 36, scope: !3753)
!3760 = !DILocation(line: 593, column: 6, scope: !3747)
!3761 = !DILocation(line: 594, column: 3, scope: !3752)
!3762 = !DILocation(line: 594, column: 16, scope: !3752)
!3763 = !DILocation(line: 596, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3752, file: !79, line: 596, column: 7)
!3765 = !DILocation(line: 596, column: 12, scope: !3764)
!3766 = !DILocation(line: 596, column: 7, scope: !3752)
!3767 = !DILocation(line: 597, column: 25, scope: !3764)
!3768 = !DILocation(line: 597, column: 31, scope: !3764)
!3769 = !DILocation(line: 597, column: 11, scope: !3764)
!3770 = !DILocation(line: 597, column: 4, scope: !3764)
!3771 = !DILocation(line: 599, column: 11, scope: !3752)
!3772 = !DILocation(line: 599, column: 9, scope: !3752)
!3773 = !DILocation(line: 601, column: 33, scope: !3752)
!3774 = !DILocation(line: 601, column: 40, scope: !3752)
!3775 = !DILocation(line: 601, column: 20, scope: !3752)
!3776 = !DILocation(line: 601, column: 5, scope: !3752)
!3777 = !DILocation(line: 601, column: 51, scope: !3752)
!3778 = !DILocation(line: 602, column: 5, scope: !3752)
!3779 = !DILocation(line: 602, column: 12, scope: !3752)
!3780 = !DILocation(line: 600, column: 10, scope: !3752)
!3781 = !DILocation(line: 600, column: 3, scope: !3752)
!3782 = !DILocation(line: 603, column: 2, scope: !3753)
!3783 = !DILocation(line: 604, column: 19, scope: !3747)
!3784 = !DILocation(line: 604, column: 25, scope: !3747)
!3785 = !DILocation(line: 604, column: 9, scope: !3747)
!3786 = !DILocation(line: 604, column: 2, scope: !3747)
!3787 = !DILocation(line: 605, column: 1, scope: !3747)
!3788 = !DISubprogram(name: "kmalloc_large", scope: !79, file: !79, line: 531, type: !3466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3789 = distinct !DISubprogram(name: "__kmalloc_index", scope: !79, file: !79, line: 444, type: !3790, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3792)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!7, !271, !577}
!3792 = !{!3793, !3794}
!3793 = !DILocalVariable(name: "size", arg: 1, scope: !3789, file: !79, line: 444, type: !271)
!3794 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3789, file: !79, line: 445, type: !577)
!3795 = !DILocation(line: 444, column: 60, scope: !3789)
!3796 = !DILocation(line: 445, column: 16, scope: !3789)
!3797 = !DILocation(line: 447, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 447, column: 6)
!3799 = !DILocation(line: 447, column: 6, scope: !3789)
!3800 = !DILocation(line: 448, column: 3, scope: !3798)
!3801 = !DILocation(line: 450, column: 6, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 450, column: 6)
!3803 = !DILocation(line: 450, column: 11, scope: !3802)
!3804 = !DILocation(line: 450, column: 6, scope: !3789)
!3805 = !DILocation(line: 451, column: 3, scope: !3802)
!3806 = !DILocation(line: 453, column: 32, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 453, column: 6)
!3808 = !DILocation(line: 453, column: 37, scope: !3807)
!3809 = !DILocation(line: 453, column: 42, scope: !3807)
!3810 = !DILocation(line: 453, column: 45, scope: !3807)
!3811 = !DILocation(line: 453, column: 50, scope: !3807)
!3812 = !DILocation(line: 453, column: 6, scope: !3789)
!3813 = !DILocation(line: 454, column: 3, scope: !3807)
!3814 = !DILocation(line: 455, column: 32, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 455, column: 6)
!3816 = !DILocation(line: 455, column: 37, scope: !3815)
!3817 = !DILocation(line: 455, column: 43, scope: !3815)
!3818 = !DILocation(line: 455, column: 46, scope: !3815)
!3819 = !DILocation(line: 455, column: 51, scope: !3815)
!3820 = !DILocation(line: 455, column: 6, scope: !3789)
!3821 = !DILocation(line: 456, column: 3, scope: !3815)
!3822 = !DILocation(line: 457, column: 6, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 457, column: 6)
!3824 = !DILocation(line: 457, column: 11, scope: !3823)
!3825 = !DILocation(line: 457, column: 6, scope: !3789)
!3826 = !DILocation(line: 457, column: 26, scope: !3823)
!3827 = !DILocation(line: 458, column: 6, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 458, column: 6)
!3829 = !DILocation(line: 458, column: 11, scope: !3828)
!3830 = !DILocation(line: 458, column: 6, scope: !3789)
!3831 = !DILocation(line: 458, column: 26, scope: !3828)
!3832 = !DILocation(line: 459, column: 6, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 459, column: 6)
!3834 = !DILocation(line: 459, column: 11, scope: !3833)
!3835 = !DILocation(line: 459, column: 6, scope: !3789)
!3836 = !DILocation(line: 459, column: 26, scope: !3833)
!3837 = !DILocation(line: 460, column: 6, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 460, column: 6)
!3839 = !DILocation(line: 460, column: 11, scope: !3838)
!3840 = !DILocation(line: 460, column: 6, scope: !3789)
!3841 = !DILocation(line: 460, column: 26, scope: !3838)
!3842 = !DILocation(line: 461, column: 6, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 461, column: 6)
!3844 = !DILocation(line: 461, column: 11, scope: !3843)
!3845 = !DILocation(line: 461, column: 6, scope: !3789)
!3846 = !DILocation(line: 461, column: 26, scope: !3843)
!3847 = !DILocation(line: 462, column: 6, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 462, column: 6)
!3849 = !DILocation(line: 462, column: 11, scope: !3848)
!3850 = !DILocation(line: 462, column: 6, scope: !3789)
!3851 = !DILocation(line: 462, column: 26, scope: !3848)
!3852 = !DILocation(line: 463, column: 6, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 463, column: 6)
!3854 = !DILocation(line: 463, column: 11, scope: !3853)
!3855 = !DILocation(line: 463, column: 6, scope: !3789)
!3856 = !DILocation(line: 463, column: 26, scope: !3853)
!3857 = !DILocation(line: 464, column: 6, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 464, column: 6)
!3859 = !DILocation(line: 464, column: 11, scope: !3858)
!3860 = !DILocation(line: 464, column: 6, scope: !3789)
!3861 = !DILocation(line: 464, column: 26, scope: !3858)
!3862 = !DILocation(line: 465, column: 6, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 465, column: 6)
!3864 = !DILocation(line: 465, column: 11, scope: !3863)
!3865 = !DILocation(line: 465, column: 6, scope: !3789)
!3866 = !DILocation(line: 465, column: 26, scope: !3863)
!3867 = !DILocation(line: 466, column: 6, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 466, column: 6)
!3869 = !DILocation(line: 466, column: 11, scope: !3868)
!3870 = !DILocation(line: 466, column: 6, scope: !3789)
!3871 = !DILocation(line: 466, column: 26, scope: !3868)
!3872 = !DILocation(line: 467, column: 6, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 467, column: 6)
!3874 = !DILocation(line: 467, column: 11, scope: !3873)
!3875 = !DILocation(line: 467, column: 6, scope: !3789)
!3876 = !DILocation(line: 467, column: 26, scope: !3873)
!3877 = !DILocation(line: 468, column: 6, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 468, column: 6)
!3879 = !DILocation(line: 468, column: 11, scope: !3878)
!3880 = !DILocation(line: 468, column: 6, scope: !3789)
!3881 = !DILocation(line: 468, column: 26, scope: !3878)
!3882 = !DILocation(line: 469, column: 6, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 469, column: 6)
!3884 = !DILocation(line: 469, column: 11, scope: !3883)
!3885 = !DILocation(line: 469, column: 6, scope: !3789)
!3886 = !DILocation(line: 469, column: 26, scope: !3883)
!3887 = !DILocation(line: 470, column: 6, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 470, column: 6)
!3889 = !DILocation(line: 470, column: 11, scope: !3888)
!3890 = !DILocation(line: 470, column: 6, scope: !3789)
!3891 = !DILocation(line: 470, column: 26, scope: !3888)
!3892 = !DILocation(line: 471, column: 6, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 471, column: 6)
!3894 = !DILocation(line: 471, column: 11, scope: !3893)
!3895 = !DILocation(line: 471, column: 6, scope: !3789)
!3896 = !DILocation(line: 471, column: 26, scope: !3893)
!3897 = !DILocation(line: 472, column: 6, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 472, column: 6)
!3899 = !DILocation(line: 472, column: 11, scope: !3898)
!3900 = !DILocation(line: 472, column: 6, scope: !3789)
!3901 = !DILocation(line: 472, column: 26, scope: !3898)
!3902 = !DILocation(line: 473, column: 6, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 473, column: 6)
!3904 = !DILocation(line: 473, column: 11, scope: !3903)
!3905 = !DILocation(line: 473, column: 6, scope: !3789)
!3906 = !DILocation(line: 473, column: 26, scope: !3903)
!3907 = !DILocation(line: 474, column: 6, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 474, column: 6)
!3909 = !DILocation(line: 474, column: 11, scope: !3908)
!3910 = !DILocation(line: 474, column: 6, scope: !3789)
!3911 = !DILocation(line: 474, column: 27, scope: !3908)
!3912 = !DILocation(line: 475, column: 6, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 475, column: 6)
!3914 = !DILocation(line: 475, column: 11, scope: !3913)
!3915 = !DILocation(line: 475, column: 6, scope: !3789)
!3916 = !DILocation(line: 475, column: 32, scope: !3913)
!3917 = !DILocation(line: 477, column: 50, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3789, file: !79, line: 477, column: 6)
!3919 = !DILocation(line: 477, column: 6, scope: !3789)
!3920 = !DILocation(line: 478, column: 3, scope: !3918)
!3921 = !DILocation(line: 478, column: 3, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3923, file: !79, line: 478, column: 3)
!3923 = distinct !DILexicalBlock(scope: !3918, file: !79, line: 478, column: 3)
!3924 = !{i32 -2141705846}
!3925 = !DILocation(line: 478, column: 3, scope: !3923)
!3926 = !DILocation(line: 480, column: 3, scope: !3918)
!3927 = !DILocation(line: 480, column: 3, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3918, file: !79, line: 480, column: 3)
!3929 = !DILocation(line: 480, column: 3, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3928, file: !79, line: 480, column: 3)
!3931 = !DILocation(line: 480, column: 3, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3928, file: !79, line: 480, column: 3)
!3933 = !{i64 2153261653, i64 2153261682, i64 2153261728, i64 2153261786, i64 2153261840, i64 2153261894, i64 2153261949, i64 2153261980}
!3934 = !DILocation(line: 483, column: 2, scope: !3789)
!3935 = !DILocation(line: 484, column: 1, scope: !3789)
!3936 = !DISubprogram(name: "kmalloc_trace", scope: !79, file: !79, line: 525, type: !3937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!89, !3939, !1168, !271}
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3941, line: 11, flags: DIFlagFwdDecl)
!3941 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3942 = distinct !DISubprogram(name: "kmalloc_type", scope: !79, file: !79, line: 401, type: !3943, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!78, !1168, !107}
!3945 = !{!3946, !3947}
!3946 = !DILocalVariable(name: "flags", arg: 1, scope: !3942, file: !79, line: 401, type: !1168)
!3947 = !DILocalVariable(name: "caller", arg: 2, scope: !3942, file: !79, line: 401, type: !107)
!3948 = !DILocation(line: 401, column: 67, scope: !3942)
!3949 = !DILocation(line: 401, column: 88, scope: !3942)
!3950 = !DILocation(line: 407, column: 6, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3942, file: !79, line: 407, column: 6)
!3952 = !DILocation(line: 407, column: 6, scope: !3942)
!3953 = !DILocation(line: 413, column: 3, scope: !3951)
!3954 = !DILocation(line: 423, column: 38, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3942, file: !79, line: 423, column: 6)
!3956 = !DILocation(line: 423, column: 44, scope: !3955)
!3957 = !DILocation(line: 423, column: 6, scope: !3942)
!3958 = !DILocation(line: 424, column: 3, scope: !3955)
!3959 = !DILocation(line: 426, column: 3, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3942, file: !79, line: 425, column: 6)
!3961 = !DILocation(line: 429, column: 1, scope: !3942)
!3962 = !DISubprogram(name: "__kmalloc", scope: !79, file: !79, line: 488, type: !3466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3963 = !DISubprogram(name: "__compiletime_assert_228", scope: !79, file: !79, line: 478, type: !1154, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3964 = !DILocation(line: 462, column: 54, scope: !1297)
!3965 = !DILocation(line: 462, column: 66, scope: !1297)
!3966 = !DILocation(line: 467, column: 7, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 467, column: 6)
!3968 = !DILocation(line: 467, column: 12, scope: !3967)
!3969 = !DILocation(line: 467, column: 34, scope: !3967)
!3970 = !DILocation(line: 467, column: 15, scope: !3967)
!3971 = !DILocation(line: 467, column: 6, scope: !1297)
!3972 = !DILocation(line: 468, column: 3, scope: !3967)
!3973 = !DILocation(line: 470, column: 43, scope: !1306)
!3974 = !DILocation(line: 470, column: 27, scope: !1306)
!3975 = !DILocation(line: 470, column: 7, scope: !1306)
!3976 = !DILocation(line: 470, column: 6, scope: !1297)
!3977 = !DILocation(line: 479, column: 3, scope: !1304)
!3978 = !DILocation(line: 479, column: 3, scope: !1308)
!3979 = !DILocation(line: 479, column: 3, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 479, column: 3)
!3981 = !DILocation(line: 0, scope: !3980)
!3982 = !DILocation(line: 479, column: 3, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 479, column: 3)
!3984 = !DILocation(line: 479, column: 3, scope: !1309)
!3985 = !DILocation(line: 479, column: 3, scope: !1312)
!3986 = !DILocation(line: 479, column: 3, scope: !1316)
!3987 = !DILocation(line: 479, column: 3, scope: !1315)
!3988 = !DILocation(line: 479, column: 3, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 479, column: 3)
!3990 = !DILocation(line: 479, column: 3, scope: !1314)
!3991 = !DILocation(line: 479, column: 3, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 479, column: 3)
!3993 = !DILocation(line: 479, column: 3, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 479, column: 3)
!3995 = !{i64 2153385896, i64 2153385925, i64 2153385971, i64 2153386029, i64 2153386083, i64 2153386137, i64 2153386192, i64 2153386223, i64 2153386531, i64 2153386537, i64 2153386584, i64 2153386607, i64 2153386633}
!3996 = !DILocation(line: 479, column: 3, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 479, column: 3)
!3998 = !DILocation(line: 479, column: 3, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 479, column: 3)
!4000 = !DILocation(line: 479, column: 3, scope: !1305)
!4001 = !DILocation(line: 482, column: 3, scope: !1305)
!4002 = !DILocation(line: 485, column: 2, scope: !1297)
!4003 = !DILocation(line: 486, column: 1, scope: !1297)
!4004 = !DISubprogram(name: "arch_jump_label_transform_queue", scope: !38, file: !38, line: 223, type: !4005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!577, !109, !37}
!4007 = !DISubprogram(name: "arch_jump_label_transform_apply", scope: !38, file: !38, line: 225, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4008 = distinct !DISubprogram(name: "jump_entry_is_init", scope: !38, file: !38, line: 164, type: !2481, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4009)
!4009 = !{!4010}
!4010 = !DILocalVariable(name: "entry", arg: 1, scope: !4008, file: !38, line: 164, type: !2358)
!4011 = !DILocation(line: 164, column: 64, scope: !4008)
!4012 = !DILocation(line: 166, column: 24, scope: !4008)
!4013 = !DILocation(line: 166, column: 31, scope: !4008)
!4014 = !DILocation(line: 166, column: 35, scope: !4008)
!4015 = !DILocation(line: 166, column: 9, scope: !4008)
!4016 = !DILocation(line: 166, column: 2, scope: !4008)
!4017 = !DISubprogram(name: "kernel_text_address", scope: !56, file: !56, line: 215, type: !4018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!67, !107}
!4020 = distinct !DISubprogram(name: "static_key_clear_linked", scope: !3, file: !3, line: 422, type: !1338, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4021)
!4021 = !{!4022}
!4022 = !DILocalVariable(name: "key", arg: 1, scope: !4020, file: !3, line: 422, type: !1167)
!4023 = !DILocation(line: 422, column: 63, scope: !4020)
!4024 = !DILocation(line: 424, column: 2, scope: !4020)
!4025 = !DILocation(line: 424, column: 7, scope: !4020)
!4026 = !DILocation(line: 424, column: 12, scope: !4020)
!4027 = !DILocation(line: 425, column: 1, scope: !4020)
!4028 = distinct !DISubprogram(name: "addr_conflict", scope: !3, file: !3, line: 372, type: !4029, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!67, !109, !89, !89}
!4031 = !{!4032, !4033, !4034}
!4032 = !DILocalVariable(name: "entry", arg: 1, scope: !4028, file: !3, line: 372, type: !109)
!4033 = !DILocalVariable(name: "start", arg: 2, scope: !4028, file: !3, line: 372, type: !89)
!4034 = !DILocalVariable(name: "end", arg: 3, scope: !4028, file: !3, line: 372, type: !89)
!4035 = !DILocation(line: 372, column: 45, scope: !4028)
!4036 = !DILocation(line: 372, column: 58, scope: !4028)
!4037 = !DILocation(line: 372, column: 71, scope: !4028)
!4038 = !DILocation(line: 374, column: 22, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 374, column: 6)
!4040 = !DILocation(line: 374, column: 6, scope: !4039)
!4041 = !DILocation(line: 374, column: 47, scope: !4039)
!4042 = !DILocation(line: 374, column: 32, scope: !4039)
!4043 = !DILocation(line: 374, column: 29, scope: !4039)
!4044 = !DILocation(line: 374, column: 51, scope: !4039)
!4045 = !DILocation(line: 375, column: 22, scope: !4039)
!4046 = !DILocation(line: 375, column: 6, scope: !4039)
!4047 = !DILocation(line: 375, column: 47, scope: !4039)
!4048 = !DILocation(line: 375, column: 31, scope: !4039)
!4049 = !DILocation(line: 375, column: 29, scope: !4039)
!4050 = !DILocation(line: 375, column: 71, scope: !4039)
!4051 = !DILocation(line: 375, column: 56, scope: !4039)
!4052 = !DILocation(line: 375, column: 54, scope: !4039)
!4053 = !DILocation(line: 374, column: 6, scope: !4028)
!4054 = !DILocation(line: 376, column: 3, scope: !4039)
!4055 = !DILocation(line: 378, column: 2, scope: !4028)
!4056 = !DILocation(line: 379, column: 1, scope: !4028)
!4057 = distinct !DISubprogram(name: "jump_entry_size", scope: !38, file: !38, line: 177, type: !4058, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!67, !109}
!4060 = !{!4061}
!4061 = !DILocalVariable(name: "entry", arg: 1, scope: !4057, file: !38, line: 177, type: !109)
!4062 = !DILocation(line: 177, column: 54, scope: !4057)
!4063 = !DILocation(line: 182, column: 30, scope: !4057)
!4064 = !DILocation(line: 182, column: 9, scope: !4057)
!4065 = !DILocation(line: 182, column: 2, scope: !4057)
!4066 = !DISubprogram(name: "arch_jump_entry_size", scope: !4067, file: !4067, line: 65, type: !4058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4067 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!4068 = !DISubprogram(name: "__module_text_address", scope: !43, file: !43, line: 606, type: !3516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4069 = !DISubprogram(name: "try_module_get", scope: !43, file: !43, line: 696, type: !4070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!577, !127}
!4072 = !DISubprogram(name: "module_put", scope: !43, file: !43, line: 706, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4073 = distinct !DISubprogram(name: "__jump_label_mod_update", scope: !3, file: !3, line: 633, type: !1338, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4074)
!4074 = !{!4075, !4076, !4077, !4081}
!4075 = !DILocalVariable(name: "key", arg: 1, scope: !4073, file: !3, line: 633, type: !1167)
!4076 = !DILocalVariable(name: "mod", scope: !4073, file: !3, line: 635, type: !121)
!4077 = !DILocalVariable(name: "stop", scope: !4078, file: !3, line: 638, type: !109)
!4078 = distinct !DILexicalBlock(scope: !4079, file: !3, line: 637, column: 56)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 637, column: 2)
!4080 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 637, column: 2)
!4081 = !DILocalVariable(name: "m", scope: !4078, file: !3, line: 639, type: !127)
!4082 = !DILocation(line: 633, column: 56, scope: !4073)
!4083 = !DILocation(line: 635, column: 2, scope: !4073)
!4084 = !DILocation(line: 635, column: 25, scope: !4073)
!4085 = !DILocation(line: 637, column: 28, scope: !4080)
!4086 = !DILocation(line: 637, column: 13, scope: !4080)
!4087 = !DILocation(line: 637, column: 11, scope: !4080)
!4088 = !DILocation(line: 637, column: 7, scope: !4080)
!4089 = !DILocation(line: 637, column: 34, scope: !4079)
!4090 = !DILocation(line: 637, column: 2, scope: !4080)
!4091 = !DILocation(line: 638, column: 3, scope: !4078)
!4092 = !DILocation(line: 638, column: 22, scope: !4078)
!4093 = !DILocation(line: 639, column: 3, scope: !4078)
!4094 = !DILocation(line: 639, column: 18, scope: !4078)
!4095 = !DILocation(line: 645, column: 8, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 645, column: 7)
!4097 = !DILocation(line: 645, column: 13, scope: !4096)
!4098 = !DILocation(line: 645, column: 7, scope: !4078)
!4099 = !DILocation(line: 646, column: 4, scope: !4096)
!4100 = !DILocation(line: 648, column: 7, scope: !4078)
!4101 = !DILocation(line: 648, column: 12, scope: !4078)
!4102 = !DILocation(line: 648, column: 5, scope: !4078)
!4103 = !DILocation(line: 649, column: 8, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 649, column: 7)
!4105 = !DILocation(line: 649, column: 7, scope: !4078)
!4106 = !DILocation(line: 650, column: 9, scope: !4104)
!4107 = !DILocation(line: 650, column: 4, scope: !4104)
!4108 = !DILocation(line: 652, column: 11, scope: !4104)
!4109 = !DILocation(line: 652, column: 14, scope: !4104)
!4110 = !DILocation(line: 652, column: 29, scope: !4104)
!4111 = !DILocation(line: 652, column: 32, scope: !4104)
!4112 = !DILocation(line: 652, column: 27, scope: !4104)
!4113 = !DILocation(line: 652, column: 9, scope: !4104)
!4114 = !DILocation(line: 653, column: 23, scope: !4078)
!4115 = !DILocation(line: 653, column: 28, scope: !4078)
!4116 = !DILocation(line: 653, column: 33, scope: !4078)
!4117 = !DILocation(line: 653, column: 42, scope: !4078)
!4118 = !DILocation(line: 654, column: 9, scope: !4078)
!4119 = !DILocation(line: 654, column: 11, scope: !4078)
!4120 = !DILocation(line: 654, column: 14, scope: !4078)
!4121 = !DILocation(line: 654, column: 17, scope: !4078)
!4122 = !DILocation(line: 654, column: 23, scope: !4078)
!4123 = !DILocation(line: 0, scope: !4078)
!4124 = !DILocation(line: 653, column: 3, scope: !4078)
!4125 = !DILocation(line: 655, column: 2, scope: !4079)
!4126 = !DILocation(line: 655, column: 2, scope: !4078)
!4127 = !DILocation(line: 637, column: 45, scope: !4079)
!4128 = !DILocation(line: 637, column: 50, scope: !4079)
!4129 = !DILocation(line: 637, column: 43, scope: !4079)
!4130 = !DILocation(line: 637, column: 2, scope: !4079)
!4131 = distinct !{!4131, !4090, !4132, !1450, !1451}
!4132 = !DILocation(line: 655, column: 2, scope: !4080)
!4133 = !DILocation(line: 656, column: 1, scope: !4073)
