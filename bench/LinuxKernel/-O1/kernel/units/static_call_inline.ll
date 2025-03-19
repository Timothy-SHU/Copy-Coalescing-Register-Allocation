; ModuleID = 'kernel/static_call_inline.c'
source_filename = "kernel/static_call_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___static_call_update: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __static_call_update ; .previous"
module asm ".section\09\22.initcallearly.init..kmod_static_call_inline__207_524_static_call_init\22, \22a\22\09\09"
module asm "__initcall__kmod_static_call_inline__207_524_static_call_initearly:\09\09\09"
module asm ".long\09__initstub__kmod_static_call_inline__207_524_static_call_initearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_call_site = type { i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_tramp_key = type { i32, i32 }
%struct.static_call_mod = type { ptr, ptr, ptr }
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

@static_call_initialized = hidden global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [28 x i8] c"kernel/static_call_inline.c\00", align 1, !dbg !76
@system_state = external dso_local global i32, align 4
@__stop_static_call_sites = external dso_local global [0 x %struct.static_call_site], align 4
@__static_call_update.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !82
@.str.1 = private unnamed_addr constant [36 x i8] c"can't patch static call site at %pS\00", align 1, !dbg !1175
@__UNIQUE_ID___addressable___static_call_update205 = internal global ptr @__static_call_update, section ".discard.addressable", align 8, !dbg !1180
@__start_static_call_sites = external dso_local global [0 x %struct.static_call_site], align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\013Failed to allocate memory for static_call!\0A\00", align 1, !dbg !1182
@static_call_module_nb = internal global %struct.notifier_block { ptr @static_call_module_notify, ptr null, i32 0 }, align 8, !dbg !1211
@__UNIQUE_ID___addressable___initstub__kmod_static_call_inline__207_524_static_call_initearly208 = internal global ptr @__initstub__kmod_static_call_inline__207_524_static_call_initearly, section ".discard.addressable", align 8, !dbg !1187
@static_call_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @static_call_mutex, i64 16), ptr getelementptr (i8, ptr @static_call_mutex, i64 16) } }, align 8, !dbg !1189
@__static_call_mod_text_reserved.__UNIQUE_ID___addressable___SCK__preempt_schedule206 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !1191
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1206
@.str.4 = private unnamed_addr constant [46 x i8] c"\014Failed to allocate memory for static calls\0A\00", align 1, !dbg !1224
@.str.5 = private unnamed_addr constant [53 x i8] c"\014Failed to fixup __raw_static_call() usage at: %ps\0A\00", align 1, !dbg !1226
@__start_static_call_tramp_key = external dso_local global [0 x %struct.static_call_tramp_key], align 4
@__stop_static_call_tramp_key = external dso_local global [0 x %struct.static_call_tramp_key], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable___static_call_update205, ptr @__UNIQUE_ID___addressable___initstub__kmod_static_call_inline__207_524_static_call_initearly208, ptr @__static_call_mod_text_reserved.__UNIQUE_ID___addressable___SCK__preempt_schedule206], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @static_call_force_reinit() #0 align 16 !dbg !1241 {
entry:
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1243, metadata !DIExpression()), !dbg !1249
  %0 = load i32, ptr @static_call_initialized, align 4, !dbg !1249
  %tobool = icmp ne i32 %0, 0, !dbg !1249
  %lnot = xor i1 %tobool, true, !dbg !1249
  %lnot1 = xor i1 %lnot, true, !dbg !1249
  %lnot2 = xor i1 %lnot1, true, !dbg !1249
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1249
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1249
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1250
  %tobool3 = icmp ne i32 %1, 0, !dbg !1250
  %lnot4 = xor i1 %tobool3, true, !dbg !1250
  %lnot6 = xor i1 %lnot4, true, !dbg !1250
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1250
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1250
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1250
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1250
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1249

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1250

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1251
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1246, metadata !DIExpression()), !dbg !1251
  store i32 2307, ptr %__flags, align 4, !dbg !1251
  br label %do.body9, !dbg !1251

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1252

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1252

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !1251

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !1254
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 25, i32 %2, i64 12) #19, !dbg !1254, !srcloc !1256
  br label %do.cond11, !dbg !1254

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1254

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !1251

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !1257

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1257

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1250
  br label %do.cond16, !dbg !1251

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !1251

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !1251

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1249
  %tobool18 = icmp ne i32 %3, 0, !dbg !1249
  %lnot19 = xor i1 %tobool18, true, !dbg !1249
  %lnot21 = xor i1 %lnot19, true, !dbg !1249
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !1249
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !1249
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !1249
  store i64 %expval24, ptr %tmp, align 8, !dbg !1250
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1259
  %4 = load i64, ptr %tmp, align 8, !dbg !1249
  %tobool25 = icmp ne i64 %4, 0, !dbg !1259
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1260

if.then26:                                        ; preds = %if.end
  br label %return, !dbg !1261

if.end27:                                         ; preds = %if.end
  %5 = load i32, ptr @static_call_initialized, align 4, !dbg !1262
  %inc = add i32 %5, 1, !dbg !1262
  store i32 %inc, ptr @static_call_initialized, align 4, !dbg !1262
  br label %return, !dbg !1263

return:                                           ; preds = %if.end27, %if.then26
  ret void, !dbg !1263
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__static_call_update(ptr noundef %key, ptr noundef %tramp, ptr noundef %func) #0 align 16 !dbg !84 {
entry:
  %key.addr = alloca ptr, align 8
  %tramp.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %site = alloca ptr, align 8
  %stop = alloca ptr, align 8
  %site_mod = alloca ptr, align 8
  %first = alloca %struct.static_call_mod, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %.compoundliteral = alloca %struct.static_call_mod, align 8
  %init = alloca i8, align 1
  %mod36 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %site_addr = alloca ptr, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp95 = alloca i64, align 8
  %__ret_warn_on105 = alloca i32, align 4
  %__flags120 = alloca i32, align 4
  %tmp138 = alloca i64, align 8
  %tmp147 = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1138, metadata !DIExpression()), !dbg !1264
  store ptr %tramp, ptr %tramp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tramp.addr, metadata !1139, metadata !DIExpression()), !dbg !1265
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1140, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 8, ptr %site) #19, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %site, metadata !1141, metadata !DIExpression()), !dbg !1268
  call void @llvm.lifetime.start.p0(i64 8, ptr %stop) #19, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %stop, metadata !1142, metadata !DIExpression()), !dbg !1269
  call void @llvm.lifetime.start.p0(i64 8, ptr %site_mod) #19, !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %site_mod, metadata !1143, metadata !DIExpression()), !dbg !1271
  call void @llvm.lifetime.start.p0(i64 24, ptr %first) #19, !dbg !1270
  call void @llvm.dbg.declare(metadata ptr %first, metadata !1144, metadata !DIExpression()), !dbg !1272
  call void @cpus_read_lock() #20, !dbg !1273
  call void @static_call_lock() #20, !dbg !1274
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1275
  %func1 = getelementptr inbounds %struct.static_call_key, ptr %0, i32 0, i32 0, !dbg !1277
  %1 = load ptr, ptr %func1, align 8, !dbg !1277
  %2 = load ptr, ptr %func.addr, align 8, !dbg !1278
  %cmp = icmp eq ptr %1, %2, !dbg !1279
  br i1 %cmp, label %if.then, label %if.end, !dbg !1280

if.then:                                          ; preds = %entry
  br label %done, !dbg !1281

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %func.addr, align 8, !dbg !1282
  %4 = load ptr, ptr %key.addr, align 8, !dbg !1283
  %func2 = getelementptr inbounds %struct.static_call_key, ptr %4, i32 0, i32 0, !dbg !1284
  store ptr %3, ptr %func2, align 8, !dbg !1285
  %5 = load ptr, ptr %tramp.addr, align 8, !dbg !1286
  %6 = load ptr, ptr %func.addr, align 8, !dbg !1287
  call void @arch_static_call_transform(ptr noundef null, ptr noundef %5, ptr noundef %6, i1 noundef zeroext false) #20, !dbg !1288
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1289
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1145, metadata !DIExpression()), !dbg !1289
  %7 = load i32, ptr @static_call_initialized, align 4, !dbg !1289
  %tobool = icmp ne i32 %7, 0, !dbg !1289
  %lnot = xor i1 %tobool, true, !dbg !1289
  %lnot3 = xor i1 %lnot, true, !dbg !1289
  %lnot4 = xor i1 %lnot3, true, !dbg !1289
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1289
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1289
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !1290
  %tobool5 = icmp ne i32 %8, 0, !dbg !1290
  %lnot6 = xor i1 %tobool5, true, !dbg !1290
  %lnot8 = xor i1 %lnot6, true, !dbg !1290
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1290
  %conv = sext i32 %lnot.ext9 to i64, !dbg !1290
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1290
  %tobool10 = icmp ne i64 %expval, 0, !dbg !1290
  br i1 %tobool10, label %if.then11, label %if.end21, !dbg !1289

if.then11:                                        ; preds = %if.end
  br label %do.body, !dbg !1290

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1148, metadata !DIExpression()), !dbg !1291
  store i32 2307, ptr %__flags, align 4, !dbg !1291
  br label %do.body12, !dbg !1291

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !1292

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !1292

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !1291

do.body13:                                        ; preds = %do.end
  %9 = load i32, ptr %__flags, align 4, !dbg !1294
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 153, i32 %9, i64 12) #19, !dbg !1294, !srcloc !1296
  br label %do.cond14, !dbg !1294

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1294

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !1291

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !1297

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !1297

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1290
  br label %do.cond19, !dbg !1291

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !1291

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !1291

if.end21:                                         ; preds = %do.end20, %if.end
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !1289
  %tobool22 = icmp ne i32 %10, 0, !dbg !1289
  %lnot23 = xor i1 %tobool22, true, !dbg !1289
  %lnot25 = xor i1 %lnot23, true, !dbg !1289
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !1289
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !1289
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !1289
  store i64 %expval28, ptr %tmp, align 8, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1299
  %11 = load i64, ptr %tmp, align 8, !dbg !1289
  %tobool29 = icmp ne i64 %11, 0, !dbg !1299
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1300

if.then30:                                        ; preds = %if.end21
  br label %done, !dbg !1301

if.end31:                                         ; preds = %if.end21
  %next = getelementptr inbounds %struct.static_call_mod, ptr %.compoundliteral, i32 0, i32 0, !dbg !1302
  %12 = load ptr, ptr %key.addr, align 8, !dbg !1303
  %call = call ptr @static_call_key_next(ptr noundef %12) #20, !dbg !1304
  store ptr %call, ptr %next, align 8, !dbg !1302
  %mod = getelementptr inbounds %struct.static_call_mod, ptr %.compoundliteral, i32 0, i32 1, !dbg !1302
  store ptr null, ptr %mod, align 8, !dbg !1302
  %sites = getelementptr inbounds %struct.static_call_mod, ptr %.compoundliteral, i32 0, i32 2, !dbg !1302
  %13 = load ptr, ptr %key.addr, align 8, !dbg !1305
  %call32 = call ptr @static_call_key_sites(ptr noundef %13) #20, !dbg !1306
  store ptr %call32, ptr %sites, align 8, !dbg !1302
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %first, ptr align 8 %.compoundliteral, i64 24, i1 false), !dbg !1307
  store ptr %first, ptr %site_mod, align 8, !dbg !1308
  br label %for.cond, !dbg !1309

for.cond:                                         ; preds = %for.inc161, %if.end31
  %14 = load ptr, ptr %site_mod, align 8, !dbg !1310
  %tobool33 = icmp ne ptr %14, null, !dbg !1311
  br i1 %tobool33, label %for.body, label %for.end163, !dbg !1311

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %init) #19, !dbg !1312
  call void @llvm.dbg.declare(metadata ptr %init, metadata !1151, metadata !DIExpression()), !dbg !1313
  %15 = load i32, ptr @system_state, align 4, !dbg !1314
  %cmp34 = icmp ult i32 %15, 3, !dbg !1315
  %frombool = zext i1 %cmp34 to i8, !dbg !1313
  store i8 %frombool, ptr %init, align 1, !dbg !1313
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod36) #19, !dbg !1316
  call void @llvm.dbg.declare(metadata ptr %mod36, metadata !1155, metadata !DIExpression()), !dbg !1317
  %16 = load ptr, ptr %site_mod, align 8, !dbg !1318
  %mod37 = getelementptr inbounds %struct.static_call_mod, ptr %16, i32 0, i32 1, !dbg !1319
  %17 = load ptr, ptr %mod37, align 8, !dbg !1319
  store ptr %17, ptr %mod36, align 8, !dbg !1317
  %18 = load ptr, ptr %site_mod, align 8, !dbg !1320
  %sites38 = getelementptr inbounds %struct.static_call_mod, ptr %18, i32 0, i32 2, !dbg !1322
  %19 = load ptr, ptr %sites38, align 8, !dbg !1322
  %tobool39 = icmp ne ptr %19, null, !dbg !1320
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !1323

if.then40:                                        ; preds = %for.body
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup157, !dbg !1324

if.end41:                                         ; preds = %for.body
  store ptr @__stop_static_call_sites, ptr %stop, align 8, !dbg !1326
  %20 = load ptr, ptr %mod36, align 8, !dbg !1327
  %tobool42 = icmp ne ptr %20, null, !dbg !1327
  br i1 %tobool42, label %if.then43, label %if.end47, !dbg !1329

if.then43:                                        ; preds = %if.end41
  %21 = load ptr, ptr %mod36, align 8, !dbg !1330
  %static_call_sites = getelementptr inbounds %struct.module, ptr %21, i32 0, i32 54, !dbg !1332
  %22 = load ptr, ptr %static_call_sites, align 8, !dbg !1332
  %23 = load ptr, ptr %mod36, align 8, !dbg !1333
  %num_static_call_sites = getelementptr inbounds %struct.module, ptr %23, i32 0, i32 53, !dbg !1334
  %24 = load i32, ptr %num_static_call_sites, align 4, !dbg !1334
  %idx.ext = sext i32 %24 to i64, !dbg !1335
  %add.ptr = getelementptr %struct.static_call_site, ptr %22, i64 %idx.ext, !dbg !1335
  store ptr %add.ptr, ptr %stop, align 8, !dbg !1336
  %25 = load ptr, ptr %mod36, align 8, !dbg !1337
  %state = getelementptr inbounds %struct.module, ptr %25, i32 0, i32 0, !dbg !1338
  %26 = load i32, ptr %state, align 64, !dbg !1338
  %cmp44 = icmp eq i32 %26, 1, !dbg !1339
  %frombool46 = zext i1 %cmp44 to i8, !dbg !1340
  store i8 %frombool46, ptr %init, align 1, !dbg !1340
  br label %if.end47, !dbg !1341

if.end47:                                         ; preds = %if.then43, %if.end41
  %27 = load ptr, ptr %site_mod, align 8, !dbg !1342
  %sites48 = getelementptr inbounds %struct.static_call_mod, ptr %27, i32 0, i32 2, !dbg !1343
  %28 = load ptr, ptr %sites48, align 8, !dbg !1343
  store ptr %28, ptr %site, align 8, !dbg !1344
  br label %for.cond49, !dbg !1345

for.cond49:                                       ; preds = %for.inc, %if.end47
  %29 = load ptr, ptr %site, align 8, !dbg !1346
  %30 = load ptr, ptr %stop, align 8, !dbg !1347
  %cmp50 = icmp ult ptr %29, %30, !dbg !1348
  br i1 %cmp50, label %land.rhs, label %land.end, !dbg !1349

land.rhs:                                         ; preds = %for.cond49
  %31 = load ptr, ptr %site, align 8, !dbg !1350
  %call52 = call ptr @static_call_key(ptr noundef %31) #20, !dbg !1351
  %32 = load ptr, ptr %key.addr, align 8, !dbg !1352
  %cmp53 = icmp eq ptr %call52, %32, !dbg !1353
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond49
  %33 = phi i1 [ false, %for.cond49 ], [ %cmp53, %land.rhs ], !dbg !1354
  br i1 %33, label %for.body55, label %for.end, !dbg !1355

for.body55:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %site_addr) #19, !dbg !1356
  call void @llvm.dbg.declare(metadata ptr %site_addr, metadata !1156, metadata !DIExpression()), !dbg !1357
  %34 = load ptr, ptr %site, align 8, !dbg !1358
  %call56 = call ptr @static_call_addr(ptr noundef %34) #20, !dbg !1359
  store ptr %call56, ptr %site_addr, align 8, !dbg !1357
  %35 = load i8, ptr %init, align 1, !dbg !1360, !range !1362, !noundef !337
  %tobool57 = trunc i8 %35 to i1, !dbg !1360
  br i1 %tobool57, label %if.end61, label %land.lhs.true, !dbg !1363

land.lhs.true:                                    ; preds = %for.body55
  %36 = load ptr, ptr %site, align 8, !dbg !1364
  %call58 = call zeroext i1 @static_call_is_init(ptr noundef %36) #20, !dbg !1365
  br i1 %call58, label %if.then60, label %if.end61, !dbg !1366

if.then60:                                        ; preds = %land.lhs.true
  store i32 16, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1367

if.end61:                                         ; preds = %land.lhs.true, %for.body55
  %37 = load ptr, ptr %site_addr, align 8, !dbg !1368
  %38 = ptrtoint ptr %37 to i64, !dbg !1369
  %call62 = call i32 @kernel_text_address(i64 noundef %38) #20, !dbg !1370
  %tobool63 = icmp ne i32 %call62, 0, !dbg !1370
  br i1 %tobool63, label %if.end155, label %if.then64, !dbg !1371

if.then64:                                        ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #19, !dbg !1372
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !1160, metadata !DIExpression()), !dbg !1372
  %39 = load ptr, ptr %site, align 8, !dbg !1372
  %call65 = call zeroext i1 @static_call_is_init(ptr noundef %39) #20, !dbg !1372
  %lnot66 = xor i1 %call65, true, !dbg !1372
  %lnot68 = xor i1 %lnot66, true, !dbg !1372
  %lnot70 = xor i1 %lnot68, true, !dbg !1372
  %frombool72 = zext i1 %lnot70 to i8, !dbg !1372
  store i8 %frombool72, ptr %__ret_do_once, align 1, !dbg !1372
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #19, !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !1164, metadata !DIExpression()), !dbg !1373
  %40 = load i8, ptr %__ret_do_once, align 1, !dbg !1373, !range !1362, !noundef !337
  %tobool73 = trunc i8 %40 to i1, !dbg !1373
  %lnot74 = xor i1 %tobool73, true, !dbg !1373
  %lnot76 = xor i1 %lnot74, true, !dbg !1373
  %frombool78 = zext i1 %lnot76 to i8, !dbg !1373
  store i8 %frombool78, ptr %__ret_cond, align 1, !dbg !1373
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #19, !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !1167, metadata !DIExpression()), !dbg !1373
  store i8 0, ptr %__ret_once, align 1, !dbg !1373
  %41 = load i8, ptr %__ret_cond, align 1, !dbg !1374, !range !1362, !noundef !337
  %tobool79 = trunc i8 %41 to i1, !dbg !1374
  br i1 %tobool79, label %land.rhs81, label %land.end85, !dbg !1374

land.rhs81:                                       ; preds = %if.then64
  %42 = load i8, ptr @__static_call_update.__already_done, align 1, !dbg !1374, !range !1362, !noundef !337
  %tobool82 = trunc i8 %42 to i1, !dbg !1374
  %lnot83 = xor i1 %tobool82, true, !dbg !1374
  br label %land.end85

land.end85:                                       ; preds = %land.rhs81, %if.then64
  %43 = phi i1 [ false, %if.then64 ], [ %lnot83, %land.rhs81 ], !dbg !1376
  %lnot86 = xor i1 %43, true, !dbg !1374
  %lnot88 = xor i1 %lnot86, true, !dbg !1374
  %lnot.ext89 = zext i1 %lnot88 to i32, !dbg !1374
  %conv90 = sext i32 %lnot.ext89 to i64, !dbg !1374
  %expval91 = call i64 @llvm.expect.i64(i64 %conv90, i64 0), !dbg !1374
  %tobool92 = icmp ne i64 %expval91, 0, !dbg !1374
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !1373

if.then93:                                        ; preds = %land.end85
  store i8 1, ptr @__static_call_update.__already_done, align 1, !dbg !1377
  store i8 1, ptr %__ret_once, align 1, !dbg !1377
  br label %if.end94, !dbg !1377

if.end94:                                         ; preds = %if.then93, %land.end85
  %44 = load i8, ptr %__ret_once, align 1, !dbg !1373, !range !1362, !noundef !337
  %tobool96 = trunc i8 %44 to i1, !dbg !1373
  %lnot97 = xor i1 %tobool96, true, !dbg !1373
  %lnot99 = xor i1 %lnot97, true, !dbg !1373
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !1373
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !1373
  %expval102 = call i64 @llvm.expect.i64(i64 %conv101, i64 0), !dbg !1373
  store i64 %expval102, ptr %tmp95, align 8, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #19, !dbg !1379
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #19, !dbg !1379
  %45 = load i64, ptr %tmp95, align 8, !dbg !1373
  %tobool103 = icmp ne i64 %45, 0, !dbg !1379
  br i1 %tobool103, label %if.then104, label %if.end146, !dbg !1372

if.then104:                                       ; preds = %if.end94
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on105) #19, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on105, metadata !1168, metadata !DIExpression()), !dbg !1380
  store i32 1, ptr %__ret_warn_on105, align 4, !dbg !1380
  %46 = load i32, ptr %__ret_warn_on105, align 4, !dbg !1381
  %tobool106 = icmp ne i32 %46, 0, !dbg !1381
  %lnot107 = xor i1 %tobool106, true, !dbg !1381
  %lnot109 = xor i1 %lnot107, true, !dbg !1381
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !1381
  %conv111 = sext i32 %lnot.ext110 to i64, !dbg !1381
  %expval112 = call i64 @llvm.expect.i64(i64 %conv111, i64 0), !dbg !1381
  %tobool113 = icmp ne i64 %expval112, 0, !dbg !1381
  br i1 %tobool113, label %if.then114, label %if.end137, !dbg !1380

if.then114:                                       ; preds = %if.then104
  br label %do.body115, !dbg !1381

do.body115:                                       ; preds = %if.then114
  br label %do.body116, !dbg !1382

do.body116:                                       ; preds = %do.body115
  br label %do.cond117, !dbg !1383

do.cond117:                                       ; preds = %do.body116
  br label %do.end118, !dbg !1383

do.end118:                                        ; preds = %do.cond117
  %47 = load ptr, ptr %site_addr, align 8, !dbg !1382
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, ptr noundef %47) #20, !dbg !1382
  br label %do.body119, !dbg !1382

do.body119:                                       ; preds = %do.end118
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags120) #19, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %__flags120, metadata !1170, metadata !DIExpression()), !dbg !1385
  store i32 2313, ptr %__flags120, align 4, !dbg !1385
  br label %do.body121, !dbg !1385

do.body121:                                       ; preds = %do.body119
  br label %do.cond122, !dbg !1386

do.cond122:                                       ; preds = %do.body121
  br label %do.end123, !dbg !1386

do.end123:                                        ; preds = %do.cond122
  br label %do.body124, !dbg !1385

do.body124:                                       ; preds = %do.end123
  %48 = load i32, ptr %__flags120, align 4, !dbg !1388
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 205, i32 %48, i64 12) #19, !dbg !1388, !srcloc !1390
  br label %do.cond125, !dbg !1388

do.cond125:                                       ; preds = %do.body124
  br label %do.end126, !dbg !1388

do.end126:                                        ; preds = %do.cond125
  br label %do.body127, !dbg !1385

do.body127:                                       ; preds = %do.end126
  br label %do.cond128, !dbg !1391

do.cond128:                                       ; preds = %do.body127
  br label %do.end129, !dbg !1391

do.end129:                                        ; preds = %do.cond128
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags120) #19, !dbg !1382
  br label %do.cond130, !dbg !1385

do.cond130:                                       ; preds = %do.end129
  br label %do.end131, !dbg !1385

do.end131:                                        ; preds = %do.cond130
  br label %do.body132, !dbg !1382

do.body132:                                       ; preds = %do.end131
  br label %do.cond133, !dbg !1393

do.cond133:                                       ; preds = %do.body132
  br label %do.end134, !dbg !1393

do.end134:                                        ; preds = %do.cond133
  br label %do.cond135, !dbg !1382

do.cond135:                                       ; preds = %do.end134
  br label %do.end136, !dbg !1382

do.end136:                                        ; preds = %do.cond135
  br label %if.end137, !dbg !1382

if.end137:                                        ; preds = %do.end136, %if.then104
  %49 = load i32, ptr %__ret_warn_on105, align 4, !dbg !1380
  %tobool139 = icmp ne i32 %49, 0, !dbg !1380
  %lnot140 = xor i1 %tobool139, true, !dbg !1380
  %lnot142 = xor i1 %lnot140, true, !dbg !1380
  %lnot.ext143 = zext i1 %lnot142 to i32, !dbg !1380
  %conv144 = sext i32 %lnot.ext143 to i64, !dbg !1380
  %expval145 = call i64 @llvm.expect.i64(i64 %conv144, i64 0), !dbg !1380
  store i64 %expval145, ptr %tmp138, align 8, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on105) #19, !dbg !1379
  %50 = load i64, ptr %tmp138, align 8, !dbg !1380
  br label %if.end146, !dbg !1379

if.end146:                                        ; preds = %if.end137, %if.end94
  %51 = load i8, ptr %__ret_do_once, align 1, !dbg !1372, !range !1362, !noundef !337
  %tobool148 = trunc i8 %51 to i1, !dbg !1372
  %lnot149 = xor i1 %tobool148, true, !dbg !1372
  %lnot151 = xor i1 %lnot149, true, !dbg !1372
  %lnot.ext152 = zext i1 %lnot151 to i32, !dbg !1372
  %conv153 = sext i32 %lnot.ext152 to i64, !dbg !1372
  %expval154 = call i64 @llvm.expect.i64(i64 %conv153, i64 0), !dbg !1372
  store i64 %expval154, ptr %tmp147, align 8, !dbg !1379
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #19, !dbg !1395
  %52 = load i64, ptr %tmp147, align 8, !dbg !1372
  store i32 16, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1396

if.end155:                                        ; preds = %if.end61
  %53 = load ptr, ptr %site_addr, align 8, !dbg !1397
  %54 = load ptr, ptr %func.addr, align 8, !dbg !1398
  %55 = load ptr, ptr %site, align 8, !dbg !1399
  %call156 = call zeroext i1 @static_call_is_tail(ptr noundef %55) #20, !dbg !1400
  call void @arch_static_call_transform(ptr noundef %53, ptr noundef null, ptr noundef %54, i1 noundef zeroext %call156) #20, !dbg !1401
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1402
  br label %cleanup, !dbg !1402

cleanup:                                          ; preds = %if.end155, %if.end146, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %site_addr) #19, !dbg !1402
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 16, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1403

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %56 = load ptr, ptr %site, align 8, !dbg !1404
  %incdec.ptr = getelementptr %struct.static_call_site, ptr %56, i32 1, !dbg !1404
  store ptr %incdec.ptr, ptr %site, align 8, !dbg !1404
  br label %for.cond49, !dbg !1405, !llvm.loop !1406

for.end:                                          ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1410
  br label %cleanup157, !dbg !1410

cleanup157:                                       ; preds = %for.end, %if.then40
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod36) #19, !dbg !1410
  call void @llvm.lifetime.end.p0(i64 1, ptr %init) #19, !dbg !1410
  %cleanup.dest159 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest159, label %unreachable [
    i32 0, label %cleanup.cont160
    i32 13, label %for.inc161
  ]

cleanup.cont160:                                  ; preds = %cleanup157
  br label %for.inc161, !dbg !1411

for.inc161:                                       ; preds = %cleanup.cont160, %cleanup157
  %57 = load ptr, ptr %site_mod, align 8, !dbg !1412
  %next162 = getelementptr inbounds %struct.static_call_mod, ptr %57, i32 0, i32 0, !dbg !1413
  %58 = load ptr, ptr %next162, align 8, !dbg !1413
  store ptr %58, ptr %site_mod, align 8, !dbg !1414
  br label %for.cond, !dbg !1415, !llvm.loop !1416

for.end163:                                       ; preds = %for.cond
  br label %done, !dbg !1417

done:                                             ; preds = %for.end163, %if.then30, %if.then
  call void @llvm.dbg.label(metadata !1174), !dbg !1418
  call void @static_call_unlock() #20, !dbg !1419
  call void @cpus_read_unlock() #20, !dbg !1420
  call void @llvm.lifetime.end.p0(i64 24, ptr %first) #19, !dbg !1421
  call void @llvm.lifetime.end.p0(i64 8, ptr %site_mod) #19, !dbg !1421
  call void @llvm.lifetime.end.p0(i64 8, ptr %stop) #19, !dbg !1421
  call void @llvm.lifetime.end.p0(i64 8, ptr %site) #19, !dbg !1421
  ret void, !dbg !1421

unreachable:                                      ; preds = %cleanup157, %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1422 dso_local void @cpus_read_lock() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_call_lock() #0 align 16 !dbg !1424 {
entry:
  call void @mutex_lock(ptr noundef @static_call_mutex) #20, !dbg !1425
  ret void, !dbg !1426
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1427 dso_local void @arch_static_call_transform(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @static_call_key_next(ptr noundef %key) #5 align 16 !dbg !1430 {
entry:
  %retval = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1434, metadata !DIExpression()), !dbg !1435
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1436
  %call = call zeroext i1 @static_call_key_has_mods(ptr noundef %0) #20, !dbg !1438
  br i1 %call, label %if.end, label %if.then, !dbg !1439

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1440
  br label %return, !dbg !1440

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1441
  %2 = getelementptr inbounds %struct.static_call_key, ptr %1, i32 0, i32 1, !dbg !1442
  %3 = load ptr, ptr %2, align 8, !dbg !1442
  store ptr %3, ptr %retval, align 8, !dbg !1443
  br label %return, !dbg !1443

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !1444
  ret ptr %4, !dbg !1444
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @static_call_key_sites(ptr noundef %key) #5 align 16 !dbg !1445 {
entry:
  %retval = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1449, metadata !DIExpression()), !dbg !1450
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1451
  %call = call zeroext i1 @static_call_key_has_mods(ptr noundef %0) #20, !dbg !1453
  br i1 %call, label %if.then, label %if.end, !dbg !1454

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1455
  br label %return, !dbg !1455

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %key.addr, align 8, !dbg !1456
  %2 = getelementptr inbounds %struct.static_call_key, ptr %1, i32 0, i32 1, !dbg !1457
  %3 = load i64, ptr %2, align 8, !dbg !1457
  %and = and i64 %3, -2, !dbg !1458
  %4 = inttoptr i64 %and to ptr, !dbg !1459
  store ptr %4, ptr %retval, align 8, !dbg !1460
  br label %return, !dbg !1460

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !1461
  ret ptr %5, !dbg !1461
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @static_call_key(ptr noundef %site) #5 align 16 !dbg !1462 {
entry:
  %site.addr = alloca ptr, align 8
  store ptr %site, ptr %site.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %site.addr, metadata !1468, metadata !DIExpression()), !dbg !1469
  %0 = load ptr, ptr %site.addr, align 8, !dbg !1470
  %call = call i64 @__static_call_key(ptr noundef %0) #20, !dbg !1471
  %and = and i64 %call, -4, !dbg !1472
  %1 = inttoptr i64 %and to ptr, !dbg !1473
  ret ptr %1, !dbg !1474
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @static_call_addr(ptr noundef %site) #5 align 16 !dbg !1475 {
entry:
  %site.addr = alloca ptr, align 8
  store ptr %site, ptr %site.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %site.addr, metadata !1479, metadata !DIExpression()), !dbg !1480
  %0 = load ptr, ptr %site.addr, align 8, !dbg !1481
  %addr = getelementptr inbounds %struct.static_call_site, ptr %0, i32 0, i32 0, !dbg !1482
  %1 = load i32, ptr %addr, align 4, !dbg !1482
  %conv = sext i32 %1 to i64, !dbg !1483
  %2 = load ptr, ptr %site.addr, align 8, !dbg !1484
  %addr1 = getelementptr inbounds %struct.static_call_site, ptr %2, i32 0, i32 0, !dbg !1485
  %3 = ptrtoint ptr %addr1 to i64, !dbg !1486
  %add = add i64 %conv, %3, !dbg !1487
  %4 = inttoptr i64 %add to ptr, !dbg !1488
  ret ptr %4, !dbg !1489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_call_is_init(ptr noundef %site) #5 align 16 !dbg !1490 {
entry:
  %site.addr = alloca ptr, align 8
  store ptr %site, ptr %site.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %site.addr, metadata !1494, metadata !DIExpression()), !dbg !1495
  %0 = load ptr, ptr %site.addr, align 8, !dbg !1496
  %call = call i64 @__static_call_key(ptr noundef %0) #20, !dbg !1497
  %and = and i64 %call, 2, !dbg !1498
  %tobool = icmp ne i64 %and, 0, !dbg !1497
  ret i1 %tobool, !dbg !1499
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1500 dso_local i32 @kernel_text_address(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1503 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_call_is_tail(ptr noundef %site) #5 align 16 !dbg !1506 {
entry:
  %site.addr = alloca ptr, align 8
  store ptr %site, ptr %site.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %site.addr, metadata !1508, metadata !DIExpression()), !dbg !1509
  %0 = load ptr, ptr %site.addr, align 8, !dbg !1510
  %call = call i64 @__static_call_key(ptr noundef %0) #20, !dbg !1511
  %and = and i64 %call, 1, !dbg !1512
  %tobool = icmp ne i64 %and, 0, !dbg !1511
  ret i1 %tobool, !dbg !1513
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_call_unlock() #0 align 16 !dbg !1514 {
entry:
  call void @mutex_unlock(ptr noundef @static_call_mutex) #20, !dbg !1515
  ret void, !dbg !1516
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1517 dso_local void @cpus_read_unlock() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @static_call_text_reserved(ptr noundef %start, ptr noundef %end) #0 align 16 !dbg !1518 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %init = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1520, metadata !DIExpression()), !dbg !1524
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1521, metadata !DIExpression()), !dbg !1525
  call void @llvm.lifetime.start.p0(i64 1, ptr %init) #19, !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %init, metadata !1522, metadata !DIExpression()), !dbg !1527
  %0 = load i32, ptr @system_state, align 4, !dbg !1528
  %cmp = icmp ult i32 %0, 3, !dbg !1529
  %frombool = zext i1 %cmp to i8, !dbg !1527
  store i8 %frombool, ptr %init, align 1, !dbg !1527
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !1530
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1523, metadata !DIExpression()), !dbg !1531
  %1 = load ptr, ptr %start.addr, align 8, !dbg !1532
  %2 = load ptr, ptr %end.addr, align 8, !dbg !1533
  %3 = load i8, ptr %init, align 1, !dbg !1534, !range !1362, !noundef !337
  %tobool = trunc i8 %3 to i1, !dbg !1534
  %call = call i32 @__static_call_text_reserved(ptr noundef @__start_static_call_sites, ptr noundef @__stop_static_call_sites, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %tobool) #20, !dbg !1535
  store i32 %call, ptr %ret, align 4, !dbg !1531
  %4 = load i32, ptr %ret, align 4, !dbg !1536
  %tobool1 = icmp ne i32 %4, 0, !dbg !1536
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1538

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !dbg !1539
  store i32 %5, ptr %retval, align 4, !dbg !1540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1540

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %start.addr, align 8, !dbg !1541
  %7 = load ptr, ptr %end.addr, align 8, !dbg !1542
  %call2 = call i32 @__static_call_mod_text_reserved(ptr noundef %6, ptr noundef %7) #20, !dbg !1543
  store i32 %call2, ptr %retval, align 4, !dbg !1544
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1544

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !1545
  call void @llvm.lifetime.end.p0(i64 1, ptr %init) #19, !dbg !1545
  %8 = load i32, ptr %retval, align 4, !dbg !1545
  ret i32 %8, !dbg !1545
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__static_call_text_reserved(ptr noundef %iter_start, ptr noundef %iter_stop, ptr noundef %start, ptr noundef %end, i1 noundef zeroext %init) #0 align 16 !dbg !1546 {
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
  call void @llvm.dbg.declare(metadata ptr %iter_start.addr, metadata !1550, metadata !DIExpression()), !dbg !1556
  store ptr %iter_stop, ptr %iter_stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter_stop.addr, metadata !1551, metadata !DIExpression()), !dbg !1557
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1552, metadata !DIExpression()), !dbg !1558
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1553, metadata !DIExpression()), !dbg !1559
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !1554, metadata !DIExpression()), !dbg !1560
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #19, !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !1555, metadata !DIExpression()), !dbg !1562
  %0 = load ptr, ptr %iter_start.addr, align 8, !dbg !1563
  store ptr %0, ptr %iter, align 8, !dbg !1562
  br label %while.cond, !dbg !1564

while.cond:                                       ; preds = %if.end4, %entry
  %1 = load ptr, ptr %iter, align 8, !dbg !1565
  %2 = load ptr, ptr %iter_stop.addr, align 8, !dbg !1566
  %cmp = icmp ult ptr %1, %2, !dbg !1567
  br i1 %cmp, label %while.body, label %while.end, !dbg !1564

while.body:                                       ; preds = %while.cond
  %3 = load i8, ptr %init.addr, align 1, !dbg !1568, !range !1362, !noundef !337
  %tobool = trunc i8 %3 to i1, !dbg !1568
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1571

lor.lhs.false:                                    ; preds = %while.body
  %4 = load ptr, ptr %iter, align 8, !dbg !1572
  %call = call zeroext i1 @static_call_is_init(ptr noundef %4) #20, !dbg !1573
  br i1 %call, label %if.end4, label %if.then, !dbg !1574

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %5 = load ptr, ptr %iter, align 8, !dbg !1575
  %6 = load ptr, ptr %start.addr, align 8, !dbg !1578
  %7 = load ptr, ptr %end.addr, align 8, !dbg !1579
  %call1 = call i32 @addr_conflict(ptr noundef %5, ptr noundef %6, ptr noundef %7) #20, !dbg !1580
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1580
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !1581

if.then3:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4, !dbg !1582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1582

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1583

if.end4:                                          ; preds = %if.end, %lor.lhs.false
  %8 = load ptr, ptr %iter, align 8, !dbg !1584
  %incdec.ptr = getelementptr %struct.static_call_site, ptr %8, i32 1, !dbg !1584
  store ptr %incdec.ptr, ptr %iter, align 8, !dbg !1584
  br label %while.cond, !dbg !1564, !llvm.loop !1585

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1587

cleanup:                                          ; preds = %while.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #19, !dbg !1588
  %9 = load i32, ptr %retval, align 4, !dbg !1588
  ret i32 %9, !dbg !1588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__static_call_mod_text_reserved(ptr noundef %start, ptr noundef %end) #0 align 16 !dbg !1193 {
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
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1197, metadata !DIExpression()), !dbg !1589
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1198, metadata !DIExpression()), !dbg !1590
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #19, !dbg !1591
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !1199, metadata !DIExpression()), !dbg !1592
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !1593
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1200, metadata !DIExpression()), !dbg !1594
  br label %do.body, !dbg !1595

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #20, !dbg !1596
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !1596, !srcloc !1598
  br label %do.cond, !dbg !1596

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1596

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %start.addr, align 8, !dbg !1599
  %1 = ptrtoint ptr %0 to i64, !dbg !1600
  %call = call ptr @__module_text_address(i64 noundef %1) #20, !dbg !1601
  store ptr %call, ptr %mod, align 8, !dbg !1602
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1603
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1201, metadata !DIExpression()), !dbg !1603
  %2 = load ptr, ptr %end.addr, align 8, !dbg !1603
  %3 = ptrtoint ptr %2 to i64, !dbg !1603
  %call1 = call ptr @__module_text_address(i64 noundef %3) #20, !dbg !1603
  %4 = load ptr, ptr %mod, align 8, !dbg !1603
  %cmp = icmp ne ptr %call1, %4, !dbg !1603
  %lnot = xor i1 %cmp, true, !dbg !1603
  %lnot2 = xor i1 %lnot, true, !dbg !1603
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1603
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1603
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !1604
  %tobool = icmp ne i32 %5, 0, !dbg !1604
  %lnot3 = xor i1 %tobool, true, !dbg !1604
  %lnot5 = xor i1 %lnot3, true, !dbg !1604
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1604
  %conv = sext i32 %lnot.ext6 to i64, !dbg !1604
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1604
  %tobool7 = icmp ne i64 %expval, 0, !dbg !1604
  br i1 %tobool7, label %if.then, label %if.end, !dbg !1603

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !1604

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !1605
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1203, metadata !DIExpression()), !dbg !1605
  store i32 2307, ptr %__flags, align 4, !dbg !1605
  br label %do.body9, !dbg !1605

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !1606

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !1606

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !1605

do.body12:                                        ; preds = %do.end11
  %6 = load i32, ptr %__flags, align 4, !dbg !1608
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 330, i32 %6, i64 12) #19, !dbg !1608, !srcloc !1610
  br label %do.cond13, !dbg !1608

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !1608

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !1605

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !1611

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1611

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !1604
  br label %do.cond18, !dbg !1605

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !1605

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !1605

if.end:                                           ; preds = %do.end19, %do.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !1603
  %tobool20 = icmp ne i32 %7, 0, !dbg !1603
  %lnot21 = xor i1 %tobool20, true, !dbg !1603
  %lnot23 = xor i1 %lnot21, true, !dbg !1603
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !1603
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !1603
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !1603
  store i64 %expval26, ptr %tmp, align 8, !dbg !1604
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !1613
  %8 = load i64, ptr %tmp, align 8, !dbg !1603
  %9 = load ptr, ptr %mod, align 8, !dbg !1614
  %call27 = call zeroext i1 @try_module_get(ptr noundef %9) #20, !dbg !1616
  br i1 %call27, label %if.end29, label %if.then28, !dbg !1617

if.then28:                                        ; preds = %if.end
  store ptr null, ptr %mod, align 8, !dbg !1618
  br label %if.end29, !dbg !1619

if.end29:                                         ; preds = %if.then28, %if.end
  br label %do.body30, !dbg !1620

do.body30:                                        ; preds = %if.end29
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !dbg !1621, !srcloc !1623
  %call31 = call zeroext i1 @__preempt_count_dec_and_test() #20, !dbg !1624
  %lnot32 = xor i1 %call31, true, !dbg !1624
  %lnot34 = xor i1 %lnot32, true, !dbg !1624
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !1624
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !1624
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !1624
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !1624
  br i1 %tobool38, label %if.then39, label %if.end43, !dbg !1621

if.then39:                                        ; preds = %do.body30
  br label %do.body40, !dbg !1624

do.body40:                                        ; preds = %if.then39
  %10 = call i64 @llvm.read_register.i64(metadata !1231), !dbg !1626
  %11 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %10) #19, !dbg !1626, !srcloc !1628
  call void @llvm.write_register.i64(metadata !1231, i64 %11), !dbg !1626
  br label %do.cond41, !dbg !1626

do.cond41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !1626

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !1626

if.end43:                                         ; preds = %do.end42, %do.body30
  br label %do.cond44, !dbg !1621

do.cond44:                                        ; preds = %if.end43
  br label %do.end45, !dbg !1621

do.end45:                                         ; preds = %do.cond44
  %12 = load ptr, ptr %mod, align 8, !dbg !1629
  %tobool46 = icmp ne ptr %12, null, !dbg !1629
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !1631

if.then47:                                        ; preds = %do.end45
  store i32 0, ptr %retval, align 4, !dbg !1632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1632

if.end48:                                         ; preds = %do.end45
  %13 = load ptr, ptr %mod, align 8, !dbg !1633
  %static_call_sites = getelementptr inbounds %struct.module, ptr %13, i32 0, i32 54, !dbg !1634
  %14 = load ptr, ptr %static_call_sites, align 8, !dbg !1634
  %15 = load ptr, ptr %mod, align 8, !dbg !1635
  %static_call_sites49 = getelementptr inbounds %struct.module, ptr %15, i32 0, i32 54, !dbg !1636
  %16 = load ptr, ptr %static_call_sites49, align 8, !dbg !1636
  %17 = load ptr, ptr %mod, align 8, !dbg !1637
  %num_static_call_sites = getelementptr inbounds %struct.module, ptr %17, i32 0, i32 53, !dbg !1638
  %18 = load i32, ptr %num_static_call_sites, align 4, !dbg !1638
  %idx.ext = sext i32 %18 to i64, !dbg !1639
  %add.ptr = getelementptr %struct.static_call_site, ptr %16, i64 %idx.ext, !dbg !1639
  %19 = load ptr, ptr %start.addr, align 8, !dbg !1640
  %20 = load ptr, ptr %end.addr, align 8, !dbg !1641
  %21 = load ptr, ptr %mod, align 8, !dbg !1642
  %state = getelementptr inbounds %struct.module, ptr %21, i32 0, i32 0, !dbg !1643
  %22 = load i32, ptr %state, align 64, !dbg !1643
  %cmp50 = icmp eq i32 %22, 1, !dbg !1644
  %call52 = call i32 @__static_call_text_reserved(ptr noundef %14, ptr noundef %add.ptr, ptr noundef %19, ptr noundef %20, i1 noundef zeroext %cmp50) #20, !dbg !1645
  store i32 %call52, ptr %ret, align 4, !dbg !1646
  %23 = load ptr, ptr %mod, align 8, !dbg !1647
  call void @module_put(ptr noundef %23) #20, !dbg !1648
  %24 = load i32, ptr %ret, align 4, !dbg !1649
  store i32 %24, ptr %retval, align 4, !dbg !1650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1650

cleanup:                                          ; preds = %if.end48, %if.then47
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !1651
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #19, !dbg !1651
  %25 = load i32, ptr %retval, align 4, !dbg !1651
  ret i32 %25, !dbg !1651
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @static_call_init() #7 section ".init.text" align 16 !dbg !1652 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1654, metadata !DIExpression()), !dbg !1656
  %0 = load i32, ptr @static_call_initialized, align 4, !dbg !1657
  %cmp = icmp eq i32 %0, 1, !dbg !1659
  br i1 %cmp, label %if.then, label %if.end, !dbg !1660

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1661

if.end:                                           ; preds = %entry
  call void @cpus_read_lock() #20, !dbg !1662
  call void @static_call_lock() #20, !dbg !1663
  %call = call i32 @__static_call_init(ptr noundef null, ptr noundef @__start_static_call_sites, ptr noundef @__stop_static_call_sites) #20, !dbg !1664
  store i32 %call, ptr %ret, align 4, !dbg !1665
  call void @static_call_unlock() #20, !dbg !1666
  call void @cpus_read_unlock() #20, !dbg !1667
  %1 = load i32, ptr %ret, align 4, !dbg !1668
  %tobool = icmp ne i32 %1, 0, !dbg !1668
  br i1 %tobool, label %if.then1, label %if.end12, !dbg !1670

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !1671

do.body:                                          ; preds = %if.then1
  br label %do.cond, !dbg !1674

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1674

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #21, !dbg !1671
  store i32 %call2, ptr %tmp, align 4, !dbg !1674
  %2 = load i32, ptr %tmp, align 4, !dbg !1671
  br label %do.body3, !dbg !1676

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !1677

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !1679

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1679

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !1677

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 513, i32 0, i64 12) #19, !dbg !1681, !srcloc !1683
  br label %do.cond8, !dbg !1681

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !1681

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !1677

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !1677

do.end11:                                         ; preds = %do.cond10
  br label %if.end12, !dbg !1684

if.end12:                                         ; preds = %do.end11, %if.end
  %3 = load i32, ptr @static_call_initialized, align 4, !dbg !1685
  %tobool13 = icmp ne i32 %3, 0, !dbg !1685
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !1687

if.then14:                                        ; preds = %if.end12
  %call15 = call i32 @register_module_notifier(ptr noundef @static_call_module_nb) #20, !dbg !1688
  br label %if.end16, !dbg !1688

if.end16:                                         ; preds = %if.then14, %if.end12
  store i32 1, ptr @static_call_initialized, align 4, !dbg !1689
  store i32 0, ptr %retval, align 4, !dbg !1690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1690

cleanup:                                          ; preds = %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !1691
  %4 = load i32, ptr %retval, align 4, !dbg !1691
  ret i32 %4, !dbg !1691
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__static_call_init(ptr noundef %mod, ptr noundef %start, ptr noundef %stop) #0 align 16 !dbg !1692 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  %site = alloca ptr, align 8
  %key = alloca ptr, align 8
  %prev_key = alloca ptr, align 8
  %site_mod = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %site_addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !1696, metadata !DIExpression()), !dbg !1708
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1697, metadata !DIExpression()), !dbg !1709
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !1698, metadata !DIExpression()), !dbg !1710
  call void @llvm.lifetime.start.p0(i64 8, ptr %site) #19, !dbg !1711
  call void @llvm.dbg.declare(metadata ptr %site, metadata !1699, metadata !DIExpression()), !dbg !1712
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #19, !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1700, metadata !DIExpression()), !dbg !1714
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_key) #19, !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %prev_key, metadata !1701, metadata !DIExpression()), !dbg !1715
  store ptr null, ptr %prev_key, align 8, !dbg !1715
  call void @llvm.lifetime.start.p0(i64 8, ptr %site_mod) #19, !dbg !1716
  call void @llvm.dbg.declare(metadata ptr %site_mod, metadata !1702, metadata !DIExpression()), !dbg !1717
  %0 = load ptr, ptr %start.addr, align 8, !dbg !1718
  %1 = load ptr, ptr %stop.addr, align 8, !dbg !1720
  %cmp = icmp eq ptr %0, %1, !dbg !1721
  br i1 %cmp, label %if.then, label %if.end, !dbg !1722

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !1723

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %start.addr, align 8, !dbg !1724
  %3 = load ptr, ptr %stop.addr, align 8, !dbg !1725
  call void @static_call_sort_entries(ptr noundef %2, ptr noundef %3) #20, !dbg !1726
  %4 = load ptr, ptr %start.addr, align 8, !dbg !1727
  store ptr %4, ptr %site, align 8, !dbg !1728
  br label %for.cond, !dbg !1729

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %site, align 8, !dbg !1730
  %6 = load ptr, ptr %stop.addr, align 8, !dbg !1731
  %cmp1 = icmp ult ptr %5, %6, !dbg !1732
  br i1 %cmp1, label %for.body, label %for.end, !dbg !1733

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %site_addr) #19, !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %site_addr, metadata !1703, metadata !DIExpression()), !dbg !1735
  %7 = load ptr, ptr %site, align 8, !dbg !1736
  %call = call ptr @static_call_addr(ptr noundef %7) #20, !dbg !1737
  store ptr %call, ptr %site_addr, align 8, !dbg !1735
  %8 = load ptr, ptr %mod.addr, align 8, !dbg !1738
  %tobool = icmp ne ptr %8, null, !dbg !1738
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !1740

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %site_addr, align 8, !dbg !1741
  %10 = ptrtoint ptr %9 to i64, !dbg !1742
  %11 = load ptr, ptr %mod.addr, align 8, !dbg !1743
  %call2 = call zeroext i1 @within_module_init(i64 noundef %10, ptr noundef %11) #20, !dbg !1744
  br i1 %call2, label %if.then6, label %lor.lhs.false, !dbg !1745

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %12 = load ptr, ptr %mod.addr, align 8, !dbg !1746
  %tobool3 = icmp ne ptr %12, null, !dbg !1746
  br i1 %tobool3, label %if.end7, label %land.lhs.true4, !dbg !1747

land.lhs.true4:                                   ; preds = %lor.lhs.false
  %13 = load ptr, ptr %site_addr, align 8, !dbg !1748
  %call5 = call zeroext i1 @init_section_contains(ptr noundef %13, i64 noundef 1) #20, !dbg !1749
  br i1 %call5, label %if.then6, label %if.end7, !dbg !1750

if.then6:                                         ; preds = %land.lhs.true4, %land.lhs.true
  %14 = load ptr, ptr %site, align 8, !dbg !1751
  call void @static_call_set_init(ptr noundef %14) #20, !dbg !1752
  br label %if.end7, !dbg !1752

if.end7:                                          ; preds = %if.then6, %land.lhs.true4, %lor.lhs.false
  %15 = load ptr, ptr %site, align 8, !dbg !1753
  %call8 = call ptr @static_call_key(ptr noundef %15) #20, !dbg !1754
  store ptr %call8, ptr %key, align 8, !dbg !1755
  %16 = load ptr, ptr %key, align 8, !dbg !1756
  %17 = load ptr, ptr %prev_key, align 8, !dbg !1758
  %cmp9 = icmp ne ptr %16, %17, !dbg !1759
  br i1 %cmp9, label %if.then10, label %if.end32, !dbg !1760

if.then10:                                        ; preds = %if.end7
  %18 = load ptr, ptr %key, align 8, !dbg !1761
  store ptr %18, ptr %prev_key, align 8, !dbg !1763
  %19 = load ptr, ptr %mod.addr, align 8, !dbg !1764
  %tobool11 = icmp ne ptr %19, null, !dbg !1764
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1766

if.then12:                                        ; preds = %if.then10
  %20 = load ptr, ptr %site, align 8, !dbg !1767
  %21 = load ptr, ptr %key, align 8, !dbg !1769
  %22 = getelementptr inbounds %struct.static_call_key, ptr %21, i32 0, i32 1, !dbg !1770
  store ptr %20, ptr %22, align 8, !dbg !1771
  %23 = load ptr, ptr %key, align 8, !dbg !1772
  %24 = getelementptr inbounds %struct.static_call_key, ptr %23, i32 0, i32 1, !dbg !1773
  %25 = load i64, ptr %24, align 8, !dbg !1774
  %or = or i64 %25, 1, !dbg !1774
  store i64 %or, ptr %24, align 8, !dbg !1774
  br label %do_transform, !dbg !1775

if.end13:                                         ; preds = %if.then10
  %call14 = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #22, !dbg !1776
  store ptr %call14, ptr %site_mod, align 8, !dbg !1777
  %26 = load ptr, ptr %site_mod, align 8, !dbg !1778
  %tobool15 = icmp ne ptr %26, null, !dbg !1778
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1780

if.then16:                                        ; preds = %if.end13
  store i32 -12, ptr %retval, align 4, !dbg !1781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1781

if.end17:                                         ; preds = %if.end13
  %27 = load ptr, ptr %key, align 8, !dbg !1782
  %call18 = call ptr @static_call_key_sites(ptr noundef %27) #20, !dbg !1784
  %tobool19 = icmp ne ptr %call18, null, !dbg !1784
  br i1 %tobool19, label %if.then20, label %if.end27, !dbg !1785

if.then20:                                        ; preds = %if.end17
  %28 = load ptr, ptr %site_mod, align 8, !dbg !1786
  %mod21 = getelementptr inbounds %struct.static_call_mod, ptr %28, i32 0, i32 1, !dbg !1788
  store ptr null, ptr %mod21, align 8, !dbg !1789
  %29 = load ptr, ptr %site_mod, align 8, !dbg !1790
  %next = getelementptr inbounds %struct.static_call_mod, ptr %29, i32 0, i32 0, !dbg !1791
  store ptr null, ptr %next, align 8, !dbg !1792
  %30 = load ptr, ptr %key, align 8, !dbg !1793
  %call22 = call ptr @static_call_key_sites(ptr noundef %30) #20, !dbg !1794
  %31 = load ptr, ptr %site_mod, align 8, !dbg !1795
  %sites = getelementptr inbounds %struct.static_call_mod, ptr %31, i32 0, i32 2, !dbg !1796
  store ptr %call22, ptr %sites, align 8, !dbg !1797
  %32 = load ptr, ptr %site_mod, align 8, !dbg !1798
  %33 = load ptr, ptr %key, align 8, !dbg !1799
  %34 = getelementptr inbounds %struct.static_call_key, ptr %33, i32 0, i32 1, !dbg !1800
  store ptr %32, ptr %34, align 8, !dbg !1801
  %call23 = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #22, !dbg !1802
  store ptr %call23, ptr %site_mod, align 8, !dbg !1803
  %35 = load ptr, ptr %site_mod, align 8, !dbg !1804
  %tobool24 = icmp ne ptr %35, null, !dbg !1804
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !1806

if.then25:                                        ; preds = %if.then20
  store i32 -12, ptr %retval, align 4, !dbg !1807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1807

if.end26:                                         ; preds = %if.then20
  br label %if.end27, !dbg !1808

if.end27:                                         ; preds = %if.end26, %if.end17
  %36 = load ptr, ptr %mod.addr, align 8, !dbg !1809
  %37 = load ptr, ptr %site_mod, align 8, !dbg !1810
  %mod28 = getelementptr inbounds %struct.static_call_mod, ptr %37, i32 0, i32 1, !dbg !1811
  store ptr %36, ptr %mod28, align 8, !dbg !1812
  %38 = load ptr, ptr %site, align 8, !dbg !1813
  %39 = load ptr, ptr %site_mod, align 8, !dbg !1814
  %sites29 = getelementptr inbounds %struct.static_call_mod, ptr %39, i32 0, i32 2, !dbg !1815
  store ptr %38, ptr %sites29, align 8, !dbg !1816
  %40 = load ptr, ptr %key, align 8, !dbg !1817
  %call30 = call ptr @static_call_key_next(ptr noundef %40) #20, !dbg !1818
  %41 = load ptr, ptr %site_mod, align 8, !dbg !1819
  %next31 = getelementptr inbounds %struct.static_call_mod, ptr %41, i32 0, i32 0, !dbg !1820
  store ptr %call30, ptr %next31, align 8, !dbg !1821
  %42 = load ptr, ptr %site_mod, align 8, !dbg !1822
  %43 = load ptr, ptr %key, align 8, !dbg !1823
  %44 = getelementptr inbounds %struct.static_call_key, ptr %43, i32 0, i32 1, !dbg !1824
  store ptr %42, ptr %44, align 8, !dbg !1825
  br label %if.end32, !dbg !1826

if.end32:                                         ; preds = %if.end27, %if.end7
  br label %do_transform, !dbg !1758

do_transform:                                     ; preds = %if.end32, %if.then12
  call void @llvm.dbg.label(metadata !1707), !dbg !1827
  %45 = load ptr, ptr %site_addr, align 8, !dbg !1828
  %46 = load ptr, ptr %key, align 8, !dbg !1829
  %func = getelementptr inbounds %struct.static_call_key, ptr %46, i32 0, i32 0, !dbg !1830
  %47 = load ptr, ptr %func, align 8, !dbg !1830
  %48 = load ptr, ptr %site, align 8, !dbg !1831
  %call33 = call zeroext i1 @static_call_is_tail(ptr noundef %48) #20, !dbg !1832
  call void @arch_static_call_transform(ptr noundef %45, ptr noundef null, ptr noundef %47, i1 noundef zeroext %call33) #20, !dbg !1833
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1834
  br label %cleanup, !dbg !1834

cleanup:                                          ; preds = %do_transform, %if.then25, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %site_addr) #19, !dbg !1834
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1835

for.inc:                                          ; preds = %cleanup.cont
  %49 = load ptr, ptr %site, align 8, !dbg !1836
  %incdec.ptr = getelementptr %struct.static_call_site, ptr %49, i32 1, !dbg !1836
  store ptr %incdec.ptr, ptr %site, align 8, !dbg !1836
  br label %for.cond, !dbg !1837, !llvm.loop !1838

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !1840

cleanup34:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %site_mod) #19, !dbg !1841
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_key) #19, !dbg !1841
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #19, !dbg !1841
  call void @llvm.lifetime.end.p0(i64 8, ptr %site) #19, !dbg !1841
  %50 = load i32, ptr %retval, align 4, !dbg !1841
  ret i32 %50, !dbg !1841
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1842 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1846 dso_local i32 @register_module_notifier(ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_static_call_inline__207_524_static_call_initearly() #7 section ".init.text" align 16 !dbg !1849 {
entry:
  %call = call i32 @static_call_init() #21, !dbg !1850
  ret i32 %call, !dbg !1850
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1851 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_call_key_has_mods(ptr noundef %key) #5 align 16 !dbg !1855 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !1859, metadata !DIExpression()), !dbg !1860
  %0 = load ptr, ptr %key.addr, align 8, !dbg !1861
  %1 = getelementptr inbounds %struct.static_call_key, ptr %0, i32 0, i32 1, !dbg !1862
  %2 = load i64, ptr %1, align 8, !dbg !1862
  %and = and i64 %2, 1, !dbg !1863
  %tobool = icmp ne i64 %and, 0, !dbg !1864
  %lnot = xor i1 %tobool, true, !dbg !1864
  ret i1 %lnot, !dbg !1865
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__static_call_key(ptr noundef %site) #5 align 16 !dbg !1866 {
entry:
  %site.addr = alloca ptr, align 8
  store ptr %site, ptr %site.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %site.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  %0 = load ptr, ptr %site.addr, align 8, !dbg !1872
  %key = getelementptr inbounds %struct.static_call_site, ptr %0, i32 0, i32 1, !dbg !1873
  %1 = load i32, ptr %key, align 4, !dbg !1873
  %conv = sext i32 %1 to i64, !dbg !1874
  %2 = load ptr, ptr %site.addr, align 8, !dbg !1875
  %key1 = getelementptr inbounds %struct.static_call_site, ptr %2, i32 0, i32 1, !dbg !1876
  %3 = ptrtoint ptr %key1 to i64, !dbg !1877
  %add = add i64 %conv, %3, !dbg !1878
  ret i64 %add, !dbg !1879
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1880 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @addr_conflict(ptr noundef %site, ptr noundef %start, ptr noundef %end) #0 align 16 !dbg !1881 {
entry:
  %retval = alloca i32, align 4
  %site.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %site, ptr %site.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %site.addr, metadata !1885, metadata !DIExpression()), !dbg !1889
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1886, metadata !DIExpression()), !dbg !1890
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !1887, metadata !DIExpression()), !dbg !1891
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #19, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !1888, metadata !DIExpression()), !dbg !1893
  %0 = load ptr, ptr %site.addr, align 8, !dbg !1894
  %call = call ptr @static_call_addr(ptr noundef %0) #20, !dbg !1895
  %1 = ptrtoint ptr %call to i64, !dbg !1896
  store i64 %1, ptr %addr, align 8, !dbg !1893
  %2 = load i64, ptr %addr, align 8, !dbg !1897
  %3 = load ptr, ptr %end.addr, align 8, !dbg !1899
  %4 = ptrtoint ptr %3 to i64, !dbg !1900
  %cmp = icmp ule i64 %2, %4, !dbg !1901
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1902

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, ptr %addr, align 8, !dbg !1903
  %add = add i64 %5, 5, !dbg !1904
  %6 = load ptr, ptr %start.addr, align 8, !dbg !1905
  %7 = ptrtoint ptr %6 to i64, !dbg !1906
  %cmp1 = icmp ugt i64 %add, %7, !dbg !1907
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1908

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1909

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !1910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1910

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #19, !dbg !1911
  %8 = load i32, ptr %retval, align 4, !dbg !1911
  ret i32 %8, !dbg !1911
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #9 align 16 !dbg !1912 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1917, metadata !DIExpression()), !dbg !1924
  br label %do.body, !dbg !1925

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #19, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1918, metadata !DIExpression()), !dbg !1926
  %0 = load i32, ptr %val.addr, align 4, !dbg !1926
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1926
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1926

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !1926
  %cmp = icmp eq i32 %2, 1, !dbg !1926
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1926

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !1926
  %cmp1 = icmp eq i32 %3, -1, !dbg !1926
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1926

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !1926
  br label %cond.end, !dbg !1926

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !1926

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !1926
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1926
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !1927
  %cmp2 = icmp eq i32 %5, 1, !dbg !1927
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1926

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !1928, !srcloc !1930
  br label %if.end8, !dbg !1927

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !1931
  %cmp3 = icmp eq i32 %6, -1, !dbg !1931
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1927

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !1932, !srcloc !1934
  br label %if.end, !dbg !1931

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !1931

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #19, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1920, metadata !DIExpression()), !dbg !1935
  %7 = load i32, ptr %val.addr, align 4, !dbg !1935
  %conv = sext i32 %7 to i64, !dbg !1935
  %and = and i64 %conv, 4294967295, !dbg !1935
  %conv7 = trunc i64 %and to i32, !dbg !1935
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !1935
  %8 = load i32, ptr %pto_val__, align 4, !dbg !1935
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !1935, !srcloc !1936
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #19, !dbg !1931
  br label %do.cond, !dbg !1935

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1935

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #19, !dbg !1925
  br label %do.end10, !dbg !1926

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !1937
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1938 dso_local ptr @__module_text_address(i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1941 dso_local zeroext i1 @try_module_get(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #9 align 16 !dbg !1944 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #19, !dbg !1948
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1946, metadata !DIExpression()), !dbg !1948
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !1948, !srcloc !1949
  %1 = icmp ult i8 %0, 2, !dbg !1948
  call void @llvm.assume(i1 %1), !dbg !1948
  store i8 %0, ptr %c, align 1, !dbg !1948
  %2 = load i8, ptr %c, align 1, !dbg !1948, !range !1362, !noundef !337
  %tobool = trunc i8 %2 to i1, !dbg !1948
  %frombool = zext i1 %tobool to i8, !dbg !1948
  store i8 %frombool, ptr %tmp, align 1, !dbg !1948
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #19, !dbg !1950
  %3 = load i8, ptr %tmp, align 1, !dbg !1948, !range !1362, !noundef !337
  %tobool1 = trunc i8 %3 to i1, !dbg !1948
  ret i1 %tobool1, !dbg !1951
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1952 dso_local void @module_put(ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_call_sort_entries(ptr noundef %start, ptr noundef %stop) #5 align 16 !dbg !1953 {
entry:
  %start.addr = alloca ptr, align 8
  %stop.addr = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1957, metadata !DIExpression()), !dbg !1959
  store ptr %stop, ptr %stop.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop.addr, metadata !1958, metadata !DIExpression()), !dbg !1960
  %0 = load ptr, ptr %start.addr, align 8, !dbg !1961
  %1 = load ptr, ptr %stop.addr, align 8, !dbg !1962
  %2 = load ptr, ptr %start.addr, align 8, !dbg !1963
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !1964
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64, !dbg !1964
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1964
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !1964
  call void @sort(ptr noundef %0, i64 noundef %sub.ptr.div, i64 noundef 8, ptr noundef @static_call_site_cmp, ptr noundef @static_call_site_swap) #20, !dbg !1965
  ret void, !dbg !1966
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_init(i64 noundef %addr, ptr noundef %mod) #5 align 16 !dbg !1967 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1973, metadata !DIExpression()), !dbg !1977
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !1974, metadata !DIExpression()), !dbg !1978
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #19, !dbg !1979
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1975, metadata !DIExpression()), !dbg !1979
  store i32 0, ptr %type, align 4, !dbg !1979
  br label %for.cond, !dbg !1979

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %type, align 4, !dbg !1980
  %cmp = icmp slt i32 %0, 7, !dbg !1980
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1979

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1979

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %type, align 4, !dbg !1982
  %cmp1 = icmp eq i32 %1, 4, !dbg !1982
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !1982

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i32, ptr %type, align 4, !dbg !1982
  %cmp2 = icmp eq i32 %2, 5, !dbg !1982
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !1982

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %type, align 4, !dbg !1982
  %cmp4 = icmp eq i32 %3, 6, !dbg !1982
  br i1 %cmp4, label %if.then, label %if.end6, !dbg !1980

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %for.body
  %4 = load i64, ptr %addr.addr, align 8, !dbg !1984
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !1987
  %6 = load i32, ptr %type, align 4, !dbg !1988
  %call = call zeroext i1 @within_module_mem_type(i64 noundef %4, ptr noundef %5, i32 noundef %6) #20, !dbg !1989
  br i1 %call, label %if.then5, label %if.end, !dbg !1990

if.then5:                                         ; preds = %if.then
  store i1 true, ptr %retval, align 1, !dbg !1991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1991

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1992

if.end6:                                          ; preds = %if.end, %lor.lhs.false3
  br label %for.inc, !dbg !1982

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr %type, align 4, !dbg !1980
  %inc = add i32 %7, 1, !dbg !1980
  store i32 %inc, ptr %type, align 4, !dbg !1980
  br label %for.cond, !dbg !1980, !llvm.loop !1993

cleanup:                                          ; preds = %if.then5, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #19, !dbg !1980
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i1 false, ptr %retval, align 1, !dbg !1995
  br label %return, !dbg !1995

return:                                           ; preds = %for.end, %cleanup
  %8 = load i1, ptr %retval, align 1, !dbg !1996
  ret i1 %8, !dbg !1996

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @init_section_contains(ptr noundef %virt, i64 noundef %size) #5 align 16 !dbg !1997 {
entry:
  %virt.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %virt, ptr %virt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virt.addr, metadata !2002, metadata !DIExpression()), !dbg !2004
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2003, metadata !DIExpression()), !dbg !2005
  %0 = load ptr, ptr %virt.addr, align 8, !dbg !2006
  %1 = load i64, ptr %size.addr, align 8, !dbg !2007
  %call = call zeroext i1 @memory_contains(ptr noundef @__init_begin, ptr noundef @__init_end, ptr noundef %0, i64 noundef %1) #20, !dbg !2008
  ret i1 %call, !dbg !2009
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_call_set_init(ptr noundef %site) #5 align 16 !dbg !2010 {
entry:
  %site.addr = alloca ptr, align 8
  store ptr %site, ptr %site.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %site.addr, metadata !2014, metadata !DIExpression()), !dbg !2015
  %0 = load ptr, ptr %site.addr, align 8, !dbg !2016
  %call = call i64 @__static_call_key(ptr noundef %0) #20, !dbg !2017
  %or = or i64 %call, 2, !dbg !2018
  %1 = load ptr, ptr %site.addr, align 8, !dbg !2019
  %key = getelementptr inbounds %struct.static_call_site, ptr %1, i32 0, i32 1, !dbg !2020
  %2 = ptrtoint ptr %key to i64, !dbg !2021
  %sub = sub i64 %or, %2, !dbg !2022
  %conv = trunc i64 %sub to i32, !dbg !2023
  %3 = load ptr, ptr %site.addr, align 8, !dbg !2024
  %key1 = getelementptr inbounds %struct.static_call_site, ptr %3, i32 0, i32 1, !dbg !2025
  store i32 %conv, ptr %key1, align 4, !dbg !2026
  ret void, !dbg !2027
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !2028 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2032, metadata !DIExpression()), !dbg !2034
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2033, metadata !DIExpression()), !dbg !2035
  %0 = load i64, ptr %size.addr, align 8, !dbg !2036
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2037
  %or = or i32 %1, 256, !dbg !2038
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #22, !dbg !2039
  ret ptr %call, !dbg !2040
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2041 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @static_call_site_cmp(ptr noundef %_a, ptr noundef %_b) #0 align 16 !dbg !2053 {
entry:
  %retval = alloca i32, align 4
  %_a.addr = alloca ptr, align 8
  %_b.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %key_a = alloca ptr, align 8
  %key_b = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_a, ptr %_a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_a.addr, metadata !2055, metadata !DIExpression()), !dbg !2063
  store ptr %_b, ptr %_b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_b.addr, metadata !2056, metadata !DIExpression()), !dbg !2064
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #19, !dbg !2065
  call void @llvm.dbg.declare(metadata ptr %a, metadata !2057, metadata !DIExpression()), !dbg !2066
  %0 = load ptr, ptr %_a.addr, align 8, !dbg !2067
  store ptr %0, ptr %a, align 8, !dbg !2066
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #19, !dbg !2068
  call void @llvm.dbg.declare(metadata ptr %b, metadata !2058, metadata !DIExpression()), !dbg !2069
  %1 = load ptr, ptr %_b.addr, align 8, !dbg !2070
  store ptr %1, ptr %b, align 8, !dbg !2069
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_a) #19, !dbg !2071
  call void @llvm.dbg.declare(metadata ptr %key_a, metadata !2059, metadata !DIExpression()), !dbg !2072
  %2 = load ptr, ptr %a, align 8, !dbg !2073
  %call = call ptr @static_call_key(ptr noundef %2) #20, !dbg !2074
  store ptr %call, ptr %key_a, align 8, !dbg !2072
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_b) #19, !dbg !2075
  call void @llvm.dbg.declare(metadata ptr %key_b, metadata !2062, metadata !DIExpression()), !dbg !2076
  %3 = load ptr, ptr %b, align 8, !dbg !2077
  %call1 = call ptr @static_call_key(ptr noundef %3) #20, !dbg !2078
  store ptr %call1, ptr %key_b, align 8, !dbg !2076
  %4 = load ptr, ptr %key_a, align 8, !dbg !2079
  %5 = load ptr, ptr %key_b, align 8, !dbg !2081
  %cmp = icmp ult ptr %4, %5, !dbg !2082
  br i1 %cmp, label %if.then, label %if.end, !dbg !2083

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2084

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %key_a, align 8, !dbg !2085
  %7 = load ptr, ptr %key_b, align 8, !dbg !2087
  %cmp2 = icmp ugt ptr %6, %7, !dbg !2088
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !2089

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2090

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !2091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2091

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_b) #19, !dbg !2092
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_a) #19, !dbg !2092
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #19, !dbg !2092
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #19, !dbg !2092
  %8 = load i32, ptr %retval, align 4, !dbg !2092
  ret i32 %8, !dbg !2092
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_call_site_swap(ptr noundef %_a, ptr noundef %_b, i32 noundef %size) #0 align 16 !dbg !2093 {
entry:
  %_a.addr = alloca ptr, align 8
  %_b.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %delta = alloca i64, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %tmp = alloca %struct.static_call_site, align 4
  store ptr %_a, ptr %_a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_a.addr, metadata !2095, metadata !DIExpression()), !dbg !2102
  store ptr %_b, ptr %_b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_b.addr, metadata !2096, metadata !DIExpression()), !dbg !2103
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2097, metadata !DIExpression()), !dbg !2104
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #19, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !2098, metadata !DIExpression()), !dbg !2106
  %0 = load ptr, ptr %_a.addr, align 8, !dbg !2107
  %1 = ptrtoint ptr %0 to i64, !dbg !2108
  %2 = load ptr, ptr %_b.addr, align 8, !dbg !2109
  %3 = ptrtoint ptr %2 to i64, !dbg !2110
  %sub = sub i64 %1, %3, !dbg !2111
  store i64 %sub, ptr %delta, align 8, !dbg !2106
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #19, !dbg !2112
  call void @llvm.dbg.declare(metadata ptr %a, metadata !2099, metadata !DIExpression()), !dbg !2113
  %4 = load ptr, ptr %_a.addr, align 8, !dbg !2114
  store ptr %4, ptr %a, align 8, !dbg !2113
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #19, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %b, metadata !2100, metadata !DIExpression()), !dbg !2116
  %5 = load ptr, ptr %_b.addr, align 8, !dbg !2117
  store ptr %5, ptr %b, align 8, !dbg !2116
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #19, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2101, metadata !DIExpression()), !dbg !2119
  %6 = load ptr, ptr %a, align 8, !dbg !2120
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %tmp, ptr align 4 %6, i64 8, i1 false), !dbg !2121
  %7 = load ptr, ptr %b, align 8, !dbg !2122
  %addr = getelementptr inbounds %struct.static_call_site, ptr %7, i32 0, i32 0, !dbg !2123
  %8 = load i32, ptr %addr, align 4, !dbg !2123
  %conv = sext i32 %8 to i64, !dbg !2122
  %9 = load i64, ptr %delta, align 8, !dbg !2124
  %sub1 = sub i64 %conv, %9, !dbg !2125
  %conv2 = trunc i64 %sub1 to i32, !dbg !2122
  %10 = load ptr, ptr %a, align 8, !dbg !2126
  %addr3 = getelementptr inbounds %struct.static_call_site, ptr %10, i32 0, i32 0, !dbg !2127
  store i32 %conv2, ptr %addr3, align 4, !dbg !2128
  %11 = load ptr, ptr %b, align 8, !dbg !2129
  %key = getelementptr inbounds %struct.static_call_site, ptr %11, i32 0, i32 1, !dbg !2130
  %12 = load i32, ptr %key, align 4, !dbg !2130
  %conv4 = sext i32 %12 to i64, !dbg !2129
  %13 = load i64, ptr %delta, align 8, !dbg !2131
  %sub5 = sub i64 %conv4, %13, !dbg !2132
  %conv6 = trunc i64 %sub5 to i32, !dbg !2129
  %14 = load ptr, ptr %a, align 8, !dbg !2133
  %key7 = getelementptr inbounds %struct.static_call_site, ptr %14, i32 0, i32 1, !dbg !2134
  store i32 %conv6, ptr %key7, align 4, !dbg !2135
  %addr8 = getelementptr inbounds %struct.static_call_site, ptr %tmp, i32 0, i32 0, !dbg !2136
  %15 = load i32, ptr %addr8, align 4, !dbg !2136
  %conv9 = sext i32 %15 to i64, !dbg !2137
  %16 = load i64, ptr %delta, align 8, !dbg !2138
  %add = add i64 %conv9, %16, !dbg !2139
  %conv10 = trunc i64 %add to i32, !dbg !2137
  %17 = load ptr, ptr %b, align 8, !dbg !2140
  %addr11 = getelementptr inbounds %struct.static_call_site, ptr %17, i32 0, i32 0, !dbg !2141
  store i32 %conv10, ptr %addr11, align 4, !dbg !2142
  %key12 = getelementptr inbounds %struct.static_call_site, ptr %tmp, i32 0, i32 1, !dbg !2143
  %18 = load i32, ptr %key12, align 4, !dbg !2143
  %conv13 = sext i32 %18 to i64, !dbg !2144
  %19 = load i64, ptr %delta, align 8, !dbg !2145
  %add14 = add i64 %conv13, %19, !dbg !2146
  %conv15 = trunc i64 %add14 to i32, !dbg !2144
  %20 = load ptr, ptr %b, align 8, !dbg !2147
  %key16 = getelementptr inbounds %struct.static_call_site, ptr %20, i32 0, i32 1, !dbg !2148
  store i32 %conv15, ptr %key16, align 4, !dbg !2149
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #19, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #19, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #19, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #19, !dbg !2150
  ret void, !dbg !2150
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @within_module_mem_type(i64 noundef %addr, ptr noundef %mod, i32 noundef %type) #5 align 16 !dbg !2151 {
entry:
  %addr.addr = alloca i64, align 8
  %mod.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %base = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2155, metadata !DIExpression()), !dbg !2160
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !2156, metadata !DIExpression()), !dbg !2161
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2157, metadata !DIExpression()), !dbg !2162
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #19, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %base, metadata !2158, metadata !DIExpression()), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #19, !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2159, metadata !DIExpression()), !dbg !2165
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !2166
  %mem = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 22, !dbg !2167
  %1 = load i32, ptr %type.addr, align 4, !dbg !2168
  %idxprom = sext i32 %1 to i64, !dbg !2166
  %arrayidx = getelementptr [7 x %struct.module_memory], ptr %mem, i64 0, i64 %idxprom, !dbg !2166
  %base1 = getelementptr inbounds %struct.module_memory, ptr %arrayidx, i32 0, i32 0, !dbg !2169
  %2 = load ptr, ptr %base1, align 8, !dbg !2169
  %3 = ptrtoint ptr %2 to i64, !dbg !2170
  store i64 %3, ptr %base, align 8, !dbg !2171
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !2172
  %mem2 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 22, !dbg !2173
  %5 = load i32, ptr %type.addr, align 4, !dbg !2174
  %idxprom3 = sext i32 %5 to i64, !dbg !2172
  %arrayidx4 = getelementptr [7 x %struct.module_memory], ptr %mem2, i64 0, i64 %idxprom3, !dbg !2172
  %size5 = getelementptr inbounds %struct.module_memory, ptr %arrayidx4, i32 0, i32 1, !dbg !2175
  %6 = load i32, ptr %size5, align 8, !dbg !2175
  %conv = zext i32 %6 to i64, !dbg !2172
  store i64 %conv, ptr %size, align 8, !dbg !2176
  %7 = load i64, ptr %addr.addr, align 8, !dbg !2177
  %8 = load i64, ptr %base, align 8, !dbg !2178
  %sub = sub i64 %7, %8, !dbg !2179
  %9 = load i64, ptr %size, align 8, !dbg !2180
  %cmp = icmp ult i64 %sub, %9, !dbg !2181
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #19, !dbg !2182
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #19, !dbg !2182
  ret i1 %cmp, !dbg !2183
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @memory_contains(ptr noundef %begin, ptr noundef %end, ptr noundef %virt, i64 noundef %size) #5 align 16 !dbg !2184 {
entry:
  %begin.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %virt.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %begin, ptr %begin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %begin.addr, metadata !2188, metadata !DIExpression()), !dbg !2192
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !2189, metadata !DIExpression()), !dbg !2193
  store ptr %virt, ptr %virt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %virt.addr, metadata !2190, metadata !DIExpression()), !dbg !2194
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2191, metadata !DIExpression()), !dbg !2195
  %0 = load ptr, ptr %virt.addr, align 8, !dbg !2196
  %1 = load ptr, ptr %begin.addr, align 8, !dbg !2197
  %cmp = icmp uge ptr %0, %1, !dbg !2198
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2199

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %virt.addr, align 8, !dbg !2200
  %3 = load i64, ptr %size.addr, align 8, !dbg !2201
  %add.ptr = getelementptr i8, ptr %2, i64 %3, !dbg !2202
  %4 = load ptr, ptr %end.addr, align 8, !dbg !2203
  %cmp1 = icmp ule ptr %add.ptr, %4, !dbg !2204
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !2205
  ret i1 %5, !dbg !2206
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !2207 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2209, metadata !DIExpression()), !dbg !2214
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2210, metadata !DIExpression()), !dbg !2215
  %0 = load i64, ptr %size.addr, align 8, !dbg !2216
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2217
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2218

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2219
  %tobool = icmp ne i64 %2, 0, !dbg !2219
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2220

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !2221
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2211, metadata !DIExpression()), !dbg !2222
  %3 = load i64, ptr %size.addr, align 8, !dbg !2223
  %cmp = icmp ugt i64 %3, 8192, !dbg !2225
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2226

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2227
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2228
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !2229
  store ptr %call, ptr %retval, align 8, !dbg !2230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2230

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2231
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #20, !dbg !2231
  store i32 %call2, ptr %index, align 4, !dbg !2232
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2233
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2234
  %9 = ptrtoint ptr %8 to i64, !dbg !2234
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #20, !dbg !2235
  %idxprom = zext i32 %call3 to i64, !dbg !2236
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2236
  %10 = load i32, ptr %index, align 4, !dbg !2237
  %idxprom4 = zext i32 %10 to i64, !dbg !2236
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2236
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2236
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2238
  %13 = load i64, ptr %size.addr, align 8, !dbg !2239
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !2240
  store ptr %call6, ptr %retval, align 8, !dbg !2241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2241

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !2242
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2243
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2244
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !2245
  store ptr %call8, ptr %retval, align 8, !dbg !2246
  br label %return, !dbg !2246

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2247
  ret ptr %16, !dbg !2247
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2248 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2249 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2253, metadata !DIExpression()), !dbg !2255
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2254, metadata !DIExpression()), !dbg !2256
  %0 = load i64, ptr %size.addr, align 8, !dbg !2257
  %tobool = icmp ne i64 %0, 0, !dbg !2257
  br i1 %tobool, label %if.end, label %if.then, !dbg !2259

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2260
  br label %return, !dbg !2260

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2261
  %cmp = icmp ule i64 %1, 8, !dbg !2263
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2264

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2265
  br label %return, !dbg !2265

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2266
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2268
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2269

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2270
  %cmp4 = icmp ule i64 %3, 96, !dbg !2271
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2272

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2273
  br label %return, !dbg !2273

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2274
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2276
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2277

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2278
  %cmp9 = icmp ule i64 %5, 192, !dbg !2279
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2280

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2281
  br label %return, !dbg !2281

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2282
  %cmp12 = icmp ule i64 %6, 8, !dbg !2284
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2285

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2286
  br label %return, !dbg !2286

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2287
  %cmp15 = icmp ule i64 %7, 16, !dbg !2289
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2290

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2291
  br label %return, !dbg !2291

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2292
  %cmp18 = icmp ule i64 %8, 32, !dbg !2294
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2295

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2296
  br label %return, !dbg !2296

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2297
  %cmp21 = icmp ule i64 %9, 64, !dbg !2299
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2300

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2301
  br label %return, !dbg !2301

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2302
  %cmp24 = icmp ule i64 %10, 128, !dbg !2304
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2305

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2306
  br label %return, !dbg !2306

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2307
  %cmp27 = icmp ule i64 %11, 256, !dbg !2309
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2310

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2311
  br label %return, !dbg !2311

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2312
  %cmp30 = icmp ule i64 %12, 512, !dbg !2314
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2315

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2317
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2319
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2320

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2321
  br label %return, !dbg !2321

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2322
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2324
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2325

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2326
  br label %return, !dbg !2326

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2327
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2329
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2330

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2331
  br label %return, !dbg !2331

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2332
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2334
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2335

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2336
  br label %return, !dbg !2336

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2337
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2339
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2340

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2341
  br label %return, !dbg !2341

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2342
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2344
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2345

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2346
  br label %return, !dbg !2346

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2347
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2349
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2350

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2351
  br label %return, !dbg !2351

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2352
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2354
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2355

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2356
  br label %return, !dbg !2356

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2357
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2359
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2360

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2361
  br label %return, !dbg !2361

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2362
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2364
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2365

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2366
  br label %return, !dbg !2366

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2367
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2369
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2370

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2371
  br label %return, !dbg !2371

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2372
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2374
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2375

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2376
  br label %return, !dbg !2376

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2377, !range !1362, !noundef !337
  %tobool69 = trunc i8 %25 to i1, !dbg !2377
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2379

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2380

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #24, !dbg !2381, !srcloc !2384
  unreachable, !dbg !2381

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2385

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2386

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2387

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2389

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2387

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #19, !dbg !2391, !srcloc !2393
  br label %do.end75, !dbg !2391

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2387

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2394
  br label %return, !dbg !2394

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2395
  ret i32 %26, !dbg !2395
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2396 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #17

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2402 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2406, metadata !DIExpression()), !dbg !2408
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2407, metadata !DIExpression()), !dbg !2409
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2410
  %and = and i32 %0, 17, !dbg !2410
  %cmp = icmp eq i32 %and, 0, !dbg !2410
  %lnot = xor i1 %cmp, true, !dbg !2410
  %lnot1 = xor i1 %lnot, true, !dbg !2410
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2410
  %conv = sext i32 %lnot.ext to i64, !dbg !2410
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2410
  %tobool = icmp ne i64 %expval, 0, !dbg !2410
  br i1 %tobool, label %if.then, label %if.end, !dbg !2412

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2413
  br label %return, !dbg !2413

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2414
  %and2 = and i32 %1, 1, !dbg !2416
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2416
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2417

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2418
  br label %return, !dbg !2418

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2419
  br label %return, !dbg !2419

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2421
  ret i32 %2, !dbg !2421
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2422 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #16

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2423 dso_local void @__compiletime_assert_204() #18

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @static_call_module_notify(ptr noundef %nb, i64 noundef %val, ptr noundef %data) #0 align 16 !dbg !2424 {
entry:
  %nb.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %mod = alloca ptr, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !2426, metadata !DIExpression()), !dbg !2431
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2427, metadata !DIExpression()), !dbg !2432
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2428, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0(i64 8, ptr %mod) #19, !dbg !2434
  call void @llvm.dbg.declare(metadata ptr %mod, metadata !2429, metadata !DIExpression()), !dbg !2435
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2436
  store ptr %0, ptr %mod, align 8, !dbg !2435
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !2437
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2430, metadata !DIExpression()), !dbg !2438
  store i32 0, ptr %ret, align 4, !dbg !2438
  call void @cpus_read_lock() #20, !dbg !2439
  call void @static_call_lock() #20, !dbg !2440
  %1 = load i64, ptr %val.addr, align 8, !dbg !2441
  switch i64 %1, label %sw.epilog [
    i64 1, label %sw.bb
    i64 2, label %sw.bb2
  ], !dbg !2442

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %mod, align 8, !dbg !2443
  %call = call i32 @static_call_add_module(ptr noundef %2) #20, !dbg !2445
  store i32 %call, ptr %ret, align 4, !dbg !2446
  %3 = load i32, ptr %ret, align 4, !dbg !2447
  %tobool = icmp ne i32 %3, 0, !dbg !2447
  br i1 %tobool, label %if.then, label %if.end, !dbg !2449

if.then:                                          ; preds = %sw.bb
  br label %do.body, !dbg !2450

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2453

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2453

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #21, !dbg !2450
  store i32 %call1, ptr %tmp, align 4, !dbg !2453
  %4 = load i32, ptr %tmp, align 4, !dbg !2450
  %5 = load ptr, ptr %mod, align 8, !dbg !2455
  call void @static_call_del_module(ptr noundef %5) #20, !dbg !2456
  br label %if.end, !dbg !2457

if.end:                                           ; preds = %do.end, %sw.bb
  br label %sw.epilog, !dbg !2458

sw.bb2:                                           ; preds = %entry
  %6 = load ptr, ptr %mod, align 8, !dbg !2459
  call void @static_call_del_module(ptr noundef %6) #20, !dbg !2460
  br label %sw.epilog, !dbg !2461

sw.epilog:                                        ; preds = %entry, %sw.bb2, %if.end
  call void @static_call_unlock() #20, !dbg !2462
  call void @cpus_read_unlock() #20, !dbg !2463
  %7 = load i32, ptr %ret, align 4, !dbg !2464
  %call3 = call i32 @notifier_from_errno(i32 noundef %7) #20, !dbg !2465
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !2466
  call void @llvm.lifetime.end.p0(i64 8, ptr %mod) #19, !dbg !2466
  ret i32 %call3, !dbg !2467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @static_call_add_module(ptr noundef %mod) #0 align 16 !dbg !2468 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  %stop = alloca ptr, align 8
  %site = alloca ptr, align 8
  %s_key = alloca i64, align 8
  %addr = alloca i64, align 8
  %key = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !2470, metadata !DIExpression()), !dbg !2480
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #19, !dbg !2481
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2471, metadata !DIExpression()), !dbg !2482
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !2483
  %static_call_sites = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 54, !dbg !2484
  %1 = load ptr, ptr %static_call_sites, align 8, !dbg !2484
  store ptr %1, ptr %start, align 8, !dbg !2482
  call void @llvm.lifetime.start.p0(i64 8, ptr %stop) #19, !dbg !2485
  call void @llvm.dbg.declare(metadata ptr %stop, metadata !2472, metadata !DIExpression()), !dbg !2486
  %2 = load ptr, ptr %start, align 8, !dbg !2487
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !2488
  %num_static_call_sites = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 53, !dbg !2489
  %4 = load i32, ptr %num_static_call_sites, align 4, !dbg !2489
  %idx.ext = sext i32 %4 to i64, !dbg !2490
  %add.ptr = getelementptr %struct.static_call_site, ptr %2, i64 %idx.ext, !dbg !2490
  store ptr %add.ptr, ptr %stop, align 8, !dbg !2486
  call void @llvm.lifetime.start.p0(i64 8, ptr %site) #19, !dbg !2491
  call void @llvm.dbg.declare(metadata ptr %site, metadata !2473, metadata !DIExpression()), !dbg !2492
  %5 = load ptr, ptr %start, align 8, !dbg !2493
  store ptr %5, ptr %site, align 8, !dbg !2494
  br label %for.cond, !dbg !2495

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %site, align 8, !dbg !2496
  %7 = load ptr, ptr %stop, align 8, !dbg !2497
  %cmp = icmp ne ptr %6, %7, !dbg !2498
  br i1 %cmp, label %for.body, label %for.end, !dbg !2499

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %s_key) #19, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %s_key, metadata !2474, metadata !DIExpression()), !dbg !2501
  %8 = load ptr, ptr %site, align 8, !dbg !2502
  %call = call i64 @__static_call_key(ptr noundef %8) #20, !dbg !2503
  store i64 %call, ptr %s_key, align 8, !dbg !2501
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #19, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !2478, metadata !DIExpression()), !dbg !2505
  %9 = load i64, ptr %s_key, align 8, !dbg !2506
  %and = and i64 %9, -4, !dbg !2507
  store i64 %and, ptr %addr, align 8, !dbg !2505
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #19, !dbg !2508
  call void @llvm.dbg.declare(metadata ptr %key, metadata !2479, metadata !DIExpression()), !dbg !2509
  %10 = load i64, ptr %addr, align 8, !dbg !2510
  %call1 = call i32 @kernel_text_address(i64 noundef %10) #20, !dbg !2512
  %tobool = icmp ne i32 %call1, 0, !dbg !2512
  br i1 %tobool, label %if.end, label %if.then, !dbg !2513

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2514

if.end:                                           ; preds = %for.body
  %11 = load i64, ptr %addr, align 8, !dbg !2515
  %call2 = call i64 @tramp_key_lookup(i64 noundef %11) #20, !dbg !2516
  store i64 %call2, ptr %key, align 8, !dbg !2517
  %12 = load i64, ptr %key, align 8, !dbg !2518
  %tobool3 = icmp ne i64 %12, 0, !dbg !2518
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !2520

if.then4:                                         ; preds = %if.end
  br label %do.body, !dbg !2521

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !2524

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2524

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %site, align 8, !dbg !2521
  %call5 = call ptr @static_call_addr(ptr noundef %13) #20, !dbg !2521
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %call5) #21, !dbg !2521
  store i32 %call6, ptr %tmp, align 4, !dbg !2524
  %14 = load i32, ptr %tmp, align 4, !dbg !2521
  store i32 -22, ptr %retval, align 4, !dbg !2526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2526

if.end7:                                          ; preds = %if.end
  %15 = load i64, ptr %s_key, align 8, !dbg !2527
  %and8 = and i64 %15, 3, !dbg !2528
  %16 = load i64, ptr %key, align 8, !dbg !2529
  %or = or i64 %16, %and8, !dbg !2529
  store i64 %or, ptr %key, align 8, !dbg !2529
  %17 = load i64, ptr %key, align 8, !dbg !2530
  %18 = load ptr, ptr %site, align 8, !dbg !2531
  %key9 = getelementptr inbounds %struct.static_call_site, ptr %18, i32 0, i32 1, !dbg !2532
  %19 = ptrtoint ptr %key9 to i64, !dbg !2533
  %sub = sub i64 %17, %19, !dbg !2534
  %conv = trunc i64 %sub to i32, !dbg !2530
  %20 = load ptr, ptr %site, align 8, !dbg !2535
  %key10 = getelementptr inbounds %struct.static_call_site, ptr %20, i32 0, i32 1, !dbg !2536
  store i32 %conv, ptr %key10, align 4, !dbg !2537
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2538
  br label %cleanup, !dbg !2538

cleanup:                                          ; preds = %if.end7, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #19, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #19, !dbg !2538
  call void @llvm.lifetime.end.p0(i64 8, ptr %s_key) #19, !dbg !2538
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2539

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %21 = load ptr, ptr %site, align 8, !dbg !2540
  %incdec.ptr = getelementptr %struct.static_call_site, ptr %21, i32 1, !dbg !2540
  store ptr %incdec.ptr, ptr %site, align 8, !dbg !2540
  br label %for.cond, !dbg !2541, !llvm.loop !2542

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %mod.addr, align 8, !dbg !2544
  %23 = load ptr, ptr %start, align 8, !dbg !2545
  %24 = load ptr, ptr %stop, align 8, !dbg !2546
  %call13 = call i32 @__static_call_init(ptr noundef %22, ptr noundef %23, ptr noundef %24) #20, !dbg !2547
  store i32 %call13, ptr %retval, align 4, !dbg !2548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14, !dbg !2548

cleanup14:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %site) #19, !dbg !2549
  call void @llvm.lifetime.end.p0(i64 8, ptr %stop) #19, !dbg !2549
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #19, !dbg !2549
  %25 = load i32, ptr %retval, align 4, !dbg !2549
  ret i32 %25, !dbg !2549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @static_call_del_module(ptr noundef %mod) #0 align 16 !dbg !2550 {
entry:
  %mod.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  %stop = alloca ptr, align 8
  %key = alloca ptr, align 8
  %prev_key = alloca ptr, align 8
  %site_mod = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %site = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !2552, metadata !DIExpression()), !dbg !2561
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #19, !dbg !2562
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2553, metadata !DIExpression()), !dbg !2563
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !2564
  %static_call_sites = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 54, !dbg !2565
  %1 = load ptr, ptr %static_call_sites, align 8, !dbg !2565
  store ptr %1, ptr %start, align 8, !dbg !2563
  call void @llvm.lifetime.start.p0(i64 8, ptr %stop) #19, !dbg !2566
  call void @llvm.dbg.declare(metadata ptr %stop, metadata !2554, metadata !DIExpression()), !dbg !2567
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !2568
  %static_call_sites1 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 54, !dbg !2569
  %3 = load ptr, ptr %static_call_sites1, align 8, !dbg !2569
  %4 = load ptr, ptr %mod.addr, align 8, !dbg !2570
  %num_static_call_sites = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 53, !dbg !2571
  %5 = load i32, ptr %num_static_call_sites, align 4, !dbg !2571
  %idx.ext = sext i32 %5 to i64, !dbg !2572
  %add.ptr = getelementptr %struct.static_call_site, ptr %3, i64 %idx.ext, !dbg !2572
  store ptr %add.ptr, ptr %stop, align 8, !dbg !2567
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #19, !dbg !2573
  call void @llvm.dbg.declare(metadata ptr %key, metadata !2555, metadata !DIExpression()), !dbg !2574
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_key) #19, !dbg !2573
  call void @llvm.dbg.declare(metadata ptr %prev_key, metadata !2556, metadata !DIExpression()), !dbg !2575
  store ptr null, ptr %prev_key, align 8, !dbg !2575
  call void @llvm.lifetime.start.p0(i64 8, ptr %site_mod) #19, !dbg !2576
  call void @llvm.dbg.declare(metadata ptr %site_mod, metadata !2557, metadata !DIExpression()), !dbg !2577
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #19, !dbg !2576
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !2558, metadata !DIExpression()), !dbg !2578
  call void @llvm.lifetime.start.p0(i64 8, ptr %site) #19, !dbg !2579
  call void @llvm.dbg.declare(metadata ptr %site, metadata !2560, metadata !DIExpression()), !dbg !2580
  %6 = load ptr, ptr %start, align 8, !dbg !2581
  store ptr %6, ptr %site, align 8, !dbg !2583
  br label %for.cond, !dbg !2584

for.cond:                                         ; preds = %for.inc15, %entry
  %7 = load ptr, ptr %site, align 8, !dbg !2585
  %8 = load ptr, ptr %stop, align 8, !dbg !2587
  %cmp = icmp ult ptr %7, %8, !dbg !2588
  br i1 %cmp, label %for.body, label %for.end16, !dbg !2589

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %site, align 8, !dbg !2590
  %call = call ptr @static_call_key(ptr noundef %9) #20, !dbg !2592
  store ptr %call, ptr %key, align 8, !dbg !2593
  %10 = load ptr, ptr %key, align 8, !dbg !2594
  %call2 = call zeroext i1 @static_call_key_has_mods(ptr noundef %10) #20, !dbg !2596
  br i1 %call2, label %if.end, label %if.then, !dbg !2597

if.then:                                          ; preds = %for.body
  br label %for.end16, !dbg !2598

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %key, align 8, !dbg !2599
  %12 = load ptr, ptr %prev_key, align 8, !dbg !2601
  %cmp3 = icmp eq ptr %11, %12, !dbg !2602
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2603

if.then4:                                         ; preds = %if.end
  br label %for.inc15, !dbg !2604

if.end5:                                          ; preds = %if.end
  %13 = load ptr, ptr %key, align 8, !dbg !2605
  store ptr %13, ptr %prev_key, align 8, !dbg !2606
  %14 = load ptr, ptr %key, align 8, !dbg !2607
  %15 = getelementptr inbounds %struct.static_call_key, ptr %14, i32 0, i32 1, !dbg !2609
  store ptr %15, ptr %prev, align 8, !dbg !2610
  %16 = load ptr, ptr %key, align 8, !dbg !2611
  %17 = getelementptr inbounds %struct.static_call_key, ptr %16, i32 0, i32 1, !dbg !2612
  %18 = load ptr, ptr %17, align 8, !dbg !2612
  store ptr %18, ptr %site_mod, align 8, !dbg !2613
  br label %for.cond6, !dbg !2614

for.cond6:                                        ; preds = %for.inc, %if.end5
  %19 = load ptr, ptr %site_mod, align 8, !dbg !2615
  %tobool = icmp ne ptr %19, null, !dbg !2615
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2617

land.rhs:                                         ; preds = %for.cond6
  %20 = load ptr, ptr %site_mod, align 8, !dbg !2618
  %mod7 = getelementptr inbounds %struct.static_call_mod, ptr %20, i32 0, i32 1, !dbg !2619
  %21 = load ptr, ptr %mod7, align 8, !dbg !2619
  %22 = load ptr, ptr %mod.addr, align 8, !dbg !2620
  %cmp8 = icmp ne ptr %21, %22, !dbg !2621
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond6
  %23 = phi i1 [ false, %for.cond6 ], [ %cmp8, %land.rhs ], !dbg !2622
  br i1 %23, label %for.body9, label %for.end, !dbg !2623

for.body9:                                        ; preds = %land.end
  br label %for.inc, !dbg !2623

for.inc:                                          ; preds = %for.body9
  %24 = load ptr, ptr %site_mod, align 8, !dbg !2624
  %next = getelementptr inbounds %struct.static_call_mod, ptr %24, i32 0, i32 0, !dbg !2625
  store ptr %next, ptr %prev, align 8, !dbg !2626
  %25 = load ptr, ptr %site_mod, align 8, !dbg !2627
  %next10 = getelementptr inbounds %struct.static_call_mod, ptr %25, i32 0, i32 0, !dbg !2628
  %26 = load ptr, ptr %next10, align 8, !dbg !2628
  store ptr %26, ptr %site_mod, align 8, !dbg !2629
  br label %for.cond6, !dbg !2630, !llvm.loop !2631

for.end:                                          ; preds = %land.end
  %27 = load ptr, ptr %site_mod, align 8, !dbg !2633
  %tobool11 = icmp ne ptr %27, null, !dbg !2633
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2635

if.then12:                                        ; preds = %for.end
  br label %for.inc15, !dbg !2636

if.end13:                                         ; preds = %for.end
  %28 = load ptr, ptr %site_mod, align 8, !dbg !2637
  %next14 = getelementptr inbounds %struct.static_call_mod, ptr %28, i32 0, i32 0, !dbg !2638
  %29 = load ptr, ptr %next14, align 8, !dbg !2638
  %30 = load ptr, ptr %prev, align 8, !dbg !2639
  store ptr %29, ptr %30, align 8, !dbg !2640
  %31 = load ptr, ptr %site_mod, align 8, !dbg !2641
  call void @kfree(ptr noundef %31) #20, !dbg !2642
  br label %for.inc15, !dbg !2643

for.inc15:                                        ; preds = %if.end13, %if.then12, %if.then4
  %32 = load ptr, ptr %site, align 8, !dbg !2644
  %incdec.ptr = getelementptr %struct.static_call_site, ptr %32, i32 1, !dbg !2644
  store ptr %incdec.ptr, ptr %site, align 8, !dbg !2644
  br label %for.cond, !dbg !2645, !llvm.loop !2646

for.end16:                                        ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %site) #19, !dbg !2648
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #19, !dbg !2648
  call void @llvm.lifetime.end.p0(i64 8, ptr %site_mod) #19, !dbg !2648
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_key) #19, !dbg !2648
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #19, !dbg !2648
  call void @llvm.lifetime.end.p0(i64 8, ptr %stop) #19, !dbg !2648
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #19, !dbg !2648
  ret void, !dbg !2648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @notifier_from_errno(i32 noundef %err) #5 align 16 !dbg !2649 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !2653, metadata !DIExpression()), !dbg !2654
  %0 = load i32, ptr %err.addr, align 4, !dbg !2655
  %tobool = icmp ne i32 %0, 0, !dbg !2655
  br i1 %tobool, label %if.then, label %if.end, !dbg !2657

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err.addr, align 4, !dbg !2658
  %sub = sub i32 1, %1, !dbg !2659
  %or = or i32 32768, %sub, !dbg !2660
  store i32 %or, ptr %retval, align 4, !dbg !2661
  br label %return, !dbg !2661

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !2662
  br label %return, !dbg !2662

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2663
  ret i32 %2, !dbg !2663
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @tramp_key_lookup(i64 noundef %addr) #0 align 16 !dbg !2664 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %start = alloca ptr, align 8
  %stop = alloca ptr, align 8
  %tramp_key = alloca ptr, align 8
  %tramp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2668, metadata !DIExpression()), !dbg !2681
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #19, !dbg !2682
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2669, metadata !DIExpression()), !dbg !2683
  store ptr @__start_static_call_tramp_key, ptr %start, align 8, !dbg !2683
  call void @llvm.lifetime.start.p0(i64 8, ptr %stop) #19, !dbg !2684
  call void @llvm.dbg.declare(metadata ptr %stop, metadata !2675, metadata !DIExpression()), !dbg !2685
  store ptr @__stop_static_call_tramp_key, ptr %stop, align 8, !dbg !2685
  call void @llvm.lifetime.start.p0(i64 8, ptr %tramp_key) #19, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %tramp_key, metadata !2676, metadata !DIExpression()), !dbg !2687
  %0 = load ptr, ptr %start, align 8, !dbg !2688
  store ptr %0, ptr %tramp_key, align 8, !dbg !2689
  br label %for.cond, !dbg !2690

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %tramp_key, align 8, !dbg !2691
  %2 = load ptr, ptr %stop, align 8, !dbg !2692
  %cmp = icmp ne ptr %1, %2, !dbg !2693
  br i1 %cmp, label %for.body, label %for.end, !dbg !2694

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tramp) #19, !dbg !2695
  call void @llvm.dbg.declare(metadata ptr %tramp, metadata !2677, metadata !DIExpression()), !dbg !2696
  %3 = load ptr, ptr %tramp_key, align 8, !dbg !2697
  %tramp1 = getelementptr inbounds %struct.static_call_tramp_key, ptr %3, i32 0, i32 0, !dbg !2698
  %4 = load i32, ptr %tramp1, align 4, !dbg !2698
  %conv = sext i32 %4 to i64, !dbg !2699
  %5 = load ptr, ptr %tramp_key, align 8, !dbg !2700
  %tramp2 = getelementptr inbounds %struct.static_call_tramp_key, ptr %5, i32 0, i32 0, !dbg !2701
  %6 = ptrtoint ptr %tramp2 to i64, !dbg !2702
  %add = add i64 %conv, %6, !dbg !2703
  store i64 %add, ptr %tramp, align 8, !dbg !2704
  %7 = load i64, ptr %tramp, align 8, !dbg !2705
  %8 = load i64, ptr %addr.addr, align 8, !dbg !2707
  %cmp3 = icmp eq i64 %7, %8, !dbg !2708
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2709

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %tramp_key, align 8, !dbg !2710
  %key = getelementptr inbounds %struct.static_call_tramp_key, ptr %9, i32 0, i32 1, !dbg !2711
  %10 = load i32, ptr %key, align 4, !dbg !2711
  %conv5 = sext i32 %10 to i64, !dbg !2712
  %11 = load ptr, ptr %tramp_key, align 8, !dbg !2713
  %key6 = getelementptr inbounds %struct.static_call_tramp_key, ptr %11, i32 0, i32 1, !dbg !2714
  %12 = ptrtoint ptr %key6 to i64, !dbg !2715
  %add7 = add i64 %conv5, %12, !dbg !2716
  store i64 %add7, ptr %retval, align 8, !dbg !2717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2717

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2718
  br label %cleanup, !dbg !2718

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tramp) #19, !dbg !2718
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2719

for.inc:                                          ; preds = %cleanup.cont
  %13 = load ptr, ptr %tramp_key, align 8, !dbg !2720
  %incdec.ptr = getelementptr %struct.static_call_tramp_key, ptr %13, i32 1, !dbg !2720
  store ptr %incdec.ptr, ptr %tramp_key, align 8, !dbg !2720
  br label %for.cond, !dbg !2721, !llvm.loop !2722

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %retval, align 8, !dbg !2724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup8, !dbg !2724

cleanup8:                                         ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %tramp_key) #19, !dbg !2725
  call void @llvm.lifetime.end.p0(i64 8, ptr %stop) #19, !dbg !2725
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #19, !dbg !2725
  %14 = load i64, ptr %retval, align 8, !dbg !2725
  ret i64 %14, !dbg !2725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2726 dso_local void @kfree(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noredzone }
attributes #21 = { cold noredzone }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!1231}
!llvm.module.flags = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!llvm.ident = !{!1240}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "static_call_initialized", scope: !2, file: !3, line: 18, type: !36, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.static_call_inline.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/static_call_inline\22 -D KBUILD_BASENAME=\22static_call_inline\22 -D KBUILD_MODNAME=\22static_call_inline\22 -D __KBUILD_MODNAME=kmod_static_call_inline -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/static_call_inline.ll kernel/static_call_inline.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !75, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/static_call_inline.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff0d1b321f1a301e011329a5c6e64946")
!4 = !{!5, !13, !19, !24, !35, !47}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 10, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "false", value: 0)
!23 = !DIEnumerator(name: "true", value: 1)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "system_states", file: !25, line: 228, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34}
!27 = !DIEnumerator(name: "SYSTEM_BOOTING", value: 0)
!28 = !DIEnumerator(name: "SYSTEM_SCHEDULING", value: 1)
!29 = !DIEnumerator(name: "SYSTEM_FREEING_INITMEM", value: 2)
!30 = !DIEnumerator(name: "SYSTEM_RUNNING", value: 3)
!31 = !DIEnumerator(name: "SYSTEM_HALT", value: 4)
!32 = !DIEnumerator(name: "SYSTEM_POWER_OFF", value: 5)
!33 = !DIEnumerator(name: "SYSTEM_RESTART", value: 6)
!34 = !DIEnumerator(name: "SYSTEM_SUSPEND", value: 7)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mod_mem_type", file: !6, line: 324, baseType: !36, size: 32, elements: !37)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "MOD_TEXT", value: 0)
!39 = !DIEnumerator(name: "MOD_DATA", value: 1)
!40 = !DIEnumerator(name: "MOD_RODATA", value: 2)
!41 = !DIEnumerator(name: "MOD_RO_AFTER_INIT", value: 3)
!42 = !DIEnumerator(name: "MOD_INIT_TEXT", value: 4)
!43 = !DIEnumerator(name: "MOD_INIT_DATA", value: 5)
!44 = !DIEnumerator(name: "MOD_INIT_RODATA", value: 6)
!45 = !DIEnumerator(name: "MOD_MEM_NUM_TYPES", value: 7)
!46 = !DIEnumerator(name: "MOD_INVALID", value: -1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !48, line: 364, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!49 = !{!50, !51, !52, !53, !54, !55, !56}
!50 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!51 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!52 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!53 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!54 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!55 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!56 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!57 = !{!58, !59, !60, !70, !36, !71, !73}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !62, line: 32, size: 64, elements: !63)
!62 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!63 = !{!64, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !61, file: !62, line: 33, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !66, line: 20, baseType: !67)
!66 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !68, line: 26, baseType: !36)
!68 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !61, file: !62, line: 34, baseType: !65, size: 32, offset: 32)
!70 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !66, line: 21, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !68, line: 27, baseType: !7)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !74, line: 154, baseType: !7)
!74 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!75 = !{!76, !82, !1175, !1180, !1182, !1187, !0, !1189, !1191, !1206, !1211, !1224, !1226}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 224, elements: !80)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!80 = !{!81}
!81 = !DISubrange(count: 28)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "__already_done", scope: !84, file: !3, line: 203, type: !556, isLocal: true, isDefinition: true)
!84 = distinct !DISubprogram(name: "__static_call_update", scope: !3, file: !3, line: 134, type: !85, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1137)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, !58, !58}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !62, line: 61, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !88, file: !62, line: 62, baseType: !58, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !62, line: 63, baseType: !92, size: 64, offset: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !62, line: 63, size: 64, elements: !93)
!93 = !{!94, !95, !1136}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !62, line: 65, baseType: !59, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !92, file: !62, line: 66, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !98, line: 169, size: 192, elements: !99)
!98 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!99 = !{!100, !101, !1135}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !97, file: !98, line: 170, baseType: !96, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !97, file: !98, line: 171, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !104)
!104 = !{!105, !106, !112, !116, !791, !817, !818, !819, !820, !824, !827, !828, !829, !882, !883, !884, !885, !886, !887, !888, !889, !897, !901, !921, !939, !940, !941, !942, !951, !974, !975, !978, !981, !982, !983, !984, !985, !986, !987, !992, !993, !1099, !1107, !1108, !1109, !1111, !1115, !1116, !1120, !1121, !1122, !1123, !1125, !1126, !1127, !1128, !1129, !1130, !1134}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !103, file: !6, line: 403, baseType: !5, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !103, file: !6, line: 406, baseType: !107, size: 128, offset: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !74, line: 190, size: 128, elements: !108)
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !74, line: 191, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !107, file: !74, line: 191, baseType: !110, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !6, line: 409, baseType: !113, size: 448, offset: 192)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 448, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 56)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !103, file: !6, line: 417, baseType: !117, size: 768, offset: 640)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !118)
!118 = !{!119, !774, !775, !776, !779}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !117, file: !6, line: 46, baseType: !120, size: 512)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !121, line: 64, size: 512, elements: !122)
!121 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!122 = !{!123, !126, !127, !129, !216, !645, !759, !769, !770, !771, !772, !773}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !120, file: !121, line: 65, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !120, file: !121, line: 66, baseType: !107, size: 128, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !120, file: !121, line: 67, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !120, file: !121, line: 68, baseType: !130, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !121, line: 168, size: 768, elements: !132)
!132 = !{!133, !134, !175, !176}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !131, file: !121, line: 169, baseType: !107, size: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !131, file: !121, line: 170, baseType: !135, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !136, line: 29, baseType: !137)
!136 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !136, line: 17, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !136, line: 18, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !136, line: 18, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !140, file: !136, line: 19, baseType: !143, size: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !144, line: 14, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !143, file: !144, line: 15, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !148, line: 44, baseType: !149)
!148 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !148, line: 14, size: 32, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !148, line: 15, baseType: !152, size: 32)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !148, line: 15, size: 32, elements: !153)
!153 = !{!154, !159, !167}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !152, file: !148, line: 16, baseType: !155, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !74, line: 174, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 172, size: 32, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !156, file: !74, line: 173, baseType: !36, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 24, baseType: !160, size: 16)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 24, size: 16, elements: !161)
!161 = !{!162, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !160, file: !148, line: 25, baseType: !163, size: 8)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !66, line: 17, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !68, line: 21, baseType: !165)
!165 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !160, file: !148, line: 26, baseType: !163, size: 8, offset: 8)
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !148, line: 28, baseType: !168, size: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !148, line: 28, size: 32, elements: !169)
!169 = !{!170, !174}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !168, file: !148, line: 29, baseType: !171, size: 16)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !66, line: 19, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !68, line: 24, baseType: !173)
!173 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !168, file: !148, line: 30, baseType: !171, size: 16, offset: 16)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !131, file: !121, line: 171, baseType: !120, size: 512, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !131, file: !121, line: 172, baseType: !177, size: 64, offset: 704)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !121, line: 133, size: 192, elements: !180)
!180 = !{!181, !188, !193}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !179, file: !121, line: 134, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!36, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !121, line: 135, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!124, !186}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !179, file: !121, line: 136, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!36, !186, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !121, line: 125, size: 20736, elements: !200)
!200 = !{!201, !206, !210, !211, !215}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !199, file: !121, line: 126, baseType: !202, size: 192)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 192, elements: !204)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!204 = !{!205}
!205 = !DISubrange(count: 3)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !199, file: !121, line: 127, baseType: !207, size: 4096, offset: 192)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 4096, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !199, file: !121, line: 128, baseType: !36, size: 32, offset: 4288)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !199, file: !121, line: 129, baseType: !212, size: 16384, offset: 4320)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 16384, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 2048)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !199, file: !121, line: 130, baseType: !36, size: 32, offset: 20704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !120, file: !121, line: 69, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !121, line: 116, size: 384, elements: !220)
!220 = !{!221, !225, !252, !592, !623, !627}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !219, file: !121, line: 117, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !128}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !219, file: !121, line: 118, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !229, line: 254, size: 128, elements: !230)
!229 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!230 = !{!231, !245}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !228, file: !229, line: 255, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !128, !239, !203}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !74, line: 66, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !237, line: 73, baseType: !238)
!237 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !237, line: 15, baseType: !70)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !229, line: 30, size: 128, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !229, line: 31, baseType: !124, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !240, file: !229, line: 32, baseType: !244, size: 16, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !74, line: 24, baseType: !173)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !228, file: !229, line: 256, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!235, !128, !239, !124, !249}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 61, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !237, line: 72, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !237, line: 16, baseType: !59)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !219, file: !121, line: 119, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !229, line: 84, size: 320, elements: !257)
!257 = !{!258, !259, !263, !588, !590}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !229, line: 85, baseType: !124, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !256, file: !229, line: 86, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!244, !128, !239, !36}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !256, file: !229, line: 88, baseType: !264, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!244, !128, !267, !36}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !229, line: 175, size: 512, elements: !269)
!269 = !{!270, !271, !272, !273, !280, !290, !291}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !268, file: !229, line: 176, baseType: !240, size: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !268, file: !229, line: 177, baseType: !249, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !268, file: !229, line: 178, baseType: !58, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !268, file: !229, line: 179, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !279, line: 32, flags: DIFlagFwdDecl)
!279 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!280 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !268, file: !229, line: 180, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!235, !284, !128, !267, !203, !287, !249}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !286, line: 537, flags: DIFlagFwdDecl)
!286 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !74, line: 52, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !237, line: 88, baseType: !289)
!289 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !268, file: !229, line: 182, baseType: !281, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !268, file: !229, line: 184, baseType: !292, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!36, !284, !128, !267, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !279, line: 625, size: 1344, elements: !297)
!297 = !{!298, !315, !536, !542, !549, !550, !555, !558, !570, !571, !574, !578, !579, !580, !581, !582, !586}
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !279, line: 628, baseType: !299, size: 128)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !279, line: 628, size: 128, elements: !300)
!300 = !{!301, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !279, line: 629, baseType: !302, size: 128)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !299, file: !279, line: 629, size: 128, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !302, file: !279, line: 631, baseType: !59, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !302, file: !279, line: 632, baseType: !59, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !299, file: !279, line: 635, baseType: !307, size: 128, align: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !74, line: 232, size: 128, align: 64, elements: !308)
!308 = !{!309, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !74, line: 233, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !307, file: !74, line: 234, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !310}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !296, file: !279, line: 639, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !279, line: 733, size: 10240, elements: !318)
!318 = !{!319, !532}
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !279, line: 734, baseType: !320, size: 10240)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !279, line: 734, size: 10240, elements: !321)
!321 = !{!322, !326, !340, !344, !345, !346, !347, !348, !349, !357, !358, !359, !368, !369, !378, !379, !380, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !427, !439, !442, !497, !498, !499, !502, !506, !507, !510, !511, !512, !519, !520}
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !279, line: 739, baseType: !323, size: 512, align: 512)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !279, line: 739, size: 512, align: 512, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !323, file: !279, line: 747, baseType: !155, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !320, file: !279, line: 750, baseType: !327, size: 128, offset: 512)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !328, line: 218, size: 128, elements: !329)
!328 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!329 = !{!330, !338, !339}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !328, line: 219, baseType: !331, size: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !328, line: 219, size: 32, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !331, file: !328, line: 220, baseType: !135, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !331, file: !328, line: 221, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !328, line: 197, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 197, elements: !337)
!337 = !{}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !327, file: !328, line: 223, baseType: !7, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !327, file: !328, line: 224, baseType: !58, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !320, file: !279, line: 752, baseType: !341, size: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!59, !284, !59, !59, !59, !59}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !320, file: !279, line: 756, baseType: !59, size: 64, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !320, file: !279, line: 757, baseType: !59, size: 64, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !320, file: !279, line: 760, baseType: !59, size: 64, offset: 832)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !320, file: !279, line: 761, baseType: !59, size: 64, offset: 896)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !320, file: !279, line: 763, baseType: !59, size: 64, offset: 960)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !320, file: !279, line: 764, baseType: !350, size: 64, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !286, line: 299, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 299, size: 64, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !352, file: !286, line: 299, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !356, line: 18, baseType: !59)
!356 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!357 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !320, file: !279, line: 773, baseType: !155, size: 32, offset: 1088)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !320, file: !279, line: 785, baseType: !155, size: 32, offset: 1120)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !320, file: !279, line: 795, baseType: !360, size: 64, offset: 1152)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !279, line: 726, size: 128, elements: !362)
!362 = !{!363, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !361, file: !279, line: 727, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !66, line: 23, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !68, line: 31, baseType: !366)
!366 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !361, file: !279, line: 728, baseType: !36, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !320, file: !279, line: 801, baseType: !59, size: 64, offset: 1216)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !320, file: !279, line: 804, baseType: !370, size: 64, offset: 1280)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !371, line: 13, baseType: !372)
!371 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !74, line: 181, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 179, size: 64, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !373, file: !74, line: 180, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !66, line: 22, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !68, line: 30, baseType: !289)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !320, file: !279, line: 806, baseType: !36, size: 32, offset: 1344)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !320, file: !279, line: 808, baseType: !135, size: 32, offset: 1376)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !320, file: !279, line: 823, baseType: !381, size: 320, offset: 1408)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !382, line: 48, size: 320, elements: !383)
!382 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!383 = !{!384, !385, !386, !391, !393}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !381, file: !382, line: 49, baseType: !370, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !381, file: !382, line: 55, baseType: !370, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !381, file: !382, line: 57, baseType: !387, size: 32, offset: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !388, line: 15, size: 32, elements: !389)
!388 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !387, file: !388, line: 20, baseType: !155, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !381, file: !382, line: 59, baseType: !392, size: 32, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !144, line: 23, baseType: !143)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !381, file: !382, line: 60, baseType: !107, size: 128, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !320, file: !279, line: 825, baseType: !107, size: 128, offset: 1728)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !320, file: !279, line: 845, baseType: !36, size: 32, offset: 1856)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !320, file: !279, line: 849, baseType: !59, size: 64, offset: 1920)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !320, file: !279, line: 850, baseType: !59, size: 64, offset: 1984)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !320, file: !279, line: 852, baseType: !59, size: 64, offset: 2048)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !320, file: !279, line: 853, baseType: !59, size: 64, offset: 2112)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !320, file: !279, line: 854, baseType: !372, size: 64, offset: 2176)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !320, file: !279, line: 855, baseType: !59, size: 64, offset: 2240)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !320, file: !279, line: 856, baseType: !59, size: 64, offset: 2304)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !320, file: !279, line: 857, baseType: !59, size: 64, offset: 2368)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !320, file: !279, line: 858, baseType: !59, size: 64, offset: 2432)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !320, file: !279, line: 865, baseType: !406, size: 32, offset: 2496)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !407, line: 69, baseType: !408)
!407 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !407, line: 64, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !408, file: !407, line: 65, baseType: !7, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !320, file: !279, line: 867, baseType: !135, size: 32, offset: 2528)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !320, file: !279, line: 869, baseType: !59, size: 64, offset: 2560)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !320, file: !279, line: 869, baseType: !59, size: 64, offset: 2624)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !320, file: !279, line: 869, baseType: !59, size: 64, offset: 2688)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !320, file: !279, line: 869, baseType: !59, size: 64, offset: 2752)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !320, file: !279, line: 870, baseType: !59, size: 64, offset: 2816)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !320, file: !279, line: 870, baseType: !59, size: 64, offset: 2880)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !320, file: !279, line: 870, baseType: !59, size: 64, offset: 2944)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !320, file: !279, line: 871, baseType: !59, size: 64, offset: 3008)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !320, file: !279, line: 871, baseType: !59, size: 64, offset: 3072)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !320, file: !279, line: 871, baseType: !59, size: 64, offset: 3136)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !320, file: !279, line: 871, baseType: !59, size: 64, offset: 3200)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !320, file: !279, line: 873, baseType: !424, size: 3328, offset: 3264)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 52)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !320, file: !279, line: 875, baseType: !428, size: 1280, offset: 6592)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 1280, elements: !437)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !430, line: 22, size: 320, elements: !431)
!430 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!431 = !{!432, !433, !434, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !429, file: !430, line: 23, baseType: !392, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !429, file: !430, line: 24, baseType: !376, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !429, file: !430, line: 26, baseType: !107, size: 128, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !429, file: !430, line: 28, baseType: !436, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!437 = !{!438}
!438 = !DISubrange(count: 4)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !320, file: !279, line: 877, baseType: !440, size: 64, offset: 7872)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !279, line: 877, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !320, file: !279, line: 880, baseType: !443, size: 1088, offset: 7936)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !444, line: 72, baseType: !445)
!444 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 23, size: 1088, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !454, !455, !463, !464, !491, !492, !493}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !445, file: !444, line: 28, baseType: !364, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !445, file: !444, line: 38, baseType: !372, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !445, file: !444, line: 40, baseType: !59, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !445, file: !444, line: 43, baseType: !381, size: 320, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !445, file: !444, line: 44, baseType: !452, size: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !444, line: 44, flags: DIFlagFwdDecl)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !444, line: 48, baseType: !59, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !445, file: !444, line: 59, baseType: !456, size: 256, offset: 640)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !457, line: 66, size: 256, elements: !458)
!457 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!458 = !{!459, !460, !461, !462}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !456, file: !457, line: 67, baseType: !370, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !456, file: !457, line: 68, baseType: !392, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !456, file: !457, line: 70, baseType: !387, size: 32, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !456, file: !457, line: 72, baseType: !107, size: 128, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !445, file: !444, line: 60, baseType: !58, size: 64, offset: 896)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !445, file: !444, line: 61, baseType: !465, size: 64, offset: 960)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !468, line: 13, size: 1216, elements: !469)
!468 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!469 = !{!470, !471, !472, !473, !474, !475, !476, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !467, file: !468, line: 14, baseType: !58, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !467, file: !468, line: 15, baseType: !59, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !467, file: !468, line: 17, baseType: !59, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !467, file: !468, line: 17, baseType: !59, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !467, file: !468, line: 18, baseType: !59, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !467, file: !468, line: 18, baseType: !59, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !467, file: !468, line: 19, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !467, file: !468, line: 21, baseType: !70, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !467, file: !468, line: 23, baseType: !70, size: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !467, file: !468, line: 24, baseType: !70, size: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !467, file: !468, line: 25, baseType: !70, size: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !467, file: !468, line: 26, baseType: !70, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !467, file: !468, line: 27, baseType: !70, size: 64, offset: 768)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !467, file: !468, line: 28, baseType: !70, size: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !467, file: !468, line: 29, baseType: !70, size: 64, offset: 896)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !467, file: !468, line: 30, baseType: !70, size: 64, offset: 960)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !467, file: !468, line: 31, baseType: !70, size: 64, offset: 1024)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !467, file: !468, line: 32, baseType: !70, size: 64, offset: 1088)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !467, file: !468, line: 33, baseType: !70, size: 64, offset: 1152)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !445, file: !444, line: 63, baseType: !155, size: 32, offset: 1024)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !445, file: !444, line: 69, baseType: !171, size: 16, offset: 1056)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !445, file: !444, line: 70, baseType: !494, size: 16, offset: 1072)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !66, line: 18, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !68, line: 23, baseType: !496)
!496 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !279, line: 882, baseType: !59, size: 64, offset: 9024)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !320, file: !279, line: 885, baseType: !135, size: 32, offset: 9088)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !320, file: !279, line: 886, baseType: !500, size: 64, offset: 9152)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !279, line: 732, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !320, file: !279, line: 901, baseType: !503, size: 64, offset: 9216)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !505, line: 18, flags: DIFlagFwdDecl)
!505 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!506 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !320, file: !279, line: 904, baseType: !284, size: 64, offset: 9280)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !320, file: !279, line: 906, baseType: !508, size: 64, offset: 9344)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !279, line: 906, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !320, file: !279, line: 930, baseType: !155, size: 32, offset: 9408)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !320, file: !279, line: 933, baseType: !155, size: 32, offset: 9440)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !320, file: !279, line: 935, baseType: !513, size: 64, offset: 9472)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !514, line: 103, size: 64, elements: !515)
!514 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !513, file: !514, line: 104, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !514, line: 101, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !320, file: !279, line: 940, baseType: !370, size: 64, offset: 9536)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !320, file: !279, line: 942, baseType: !521, size: 256, offset: 9600)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !522, line: 98, size: 256, elements: !523)
!522 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!523 = !{!524, !525, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !521, file: !522, line: 99, baseType: !370, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !521, file: !522, line: 100, baseType: !107, size: 128, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !521, file: !522, line: 101, baseType: !527, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !522, line: 21, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !317, file: !279, line: 986, baseType: !533, offset: 10240)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: -1)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !296, file: !279, line: 640, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !286, line: 297, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !286, line: 297, size: 64, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !538, file: !286, line: 297, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !356, line: 19, baseType: !59)
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !279, line: 646, baseType: !543, size: 64, offset: 256)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !279, line: 646, size: 64, elements: !544)
!544 = !{!545, !548}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !543, file: !279, line: 647, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !279, line: 542, baseType: !59)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !543, file: !279, line: 648, baseType: !547, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !296, file: !279, line: 666, baseType: !36, size: 32, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !296, file: !279, line: 667, baseType: !551, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !279, line: 579, size: 320, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !552, file: !279, line: 580, baseType: !381, size: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !296, file: !279, line: 670, baseType: !556, size: 8, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !74, line: 35, baseType: !557)
!557 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !296, file: !279, line: 681, baseType: !559, size: 256, offset: 512)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !279, line: 678, size: 256, elements: !560)
!560 = !{!561, !569}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !559, file: !279, line: 679, baseType: !562, size: 192, align: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !563, line: 5, size: 192, align: 64, elements: !564)
!563 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!564 = !{!565, !566, !568}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !562, file: !563, line: 6, baseType: !59, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !562, file: !563, line: 7, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !562, file: !563, line: 8, baseType: !567, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !559, file: !279, line: 680, baseType: !59, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !296, file: !279, line: 689, baseType: !107, size: 128, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !296, file: !279, line: 691, baseType: !572, size: 64, offset: 896)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !279, line: 691, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !296, file: !279, line: 694, baseType: !575, size: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !279, line: 694, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !296, file: !279, line: 697, baseType: !59, size: 64, offset: 1024)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !296, file: !279, line: 699, baseType: !284, size: 64, offset: 1088)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !296, file: !279, line: 700, baseType: !58, size: 64, offset: 1152)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !296, file: !279, line: 711, baseType: !370, size: 64, offset: 1216)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !296, file: !279, line: 717, baseType: !583, size: 64, offset: 1280)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !585, line: 54, flags: DIFlagFwdDecl)
!585 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !296, file: !279, line: 722, baseType: !587, offset: 1344)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !279, line: 570, elements: !337)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !256, file: !229, line: 90, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !256, file: !229, line: 91, baseType: !591, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !219, file: !121, line: 120, baseType: !593, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!596, !186}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !599)
!599 = !{!600, !601, !605, !609, !615, !619}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !14, line: 40, baseType: !13, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !598, file: !14, line: 41, baseType: !602, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!556}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !598, file: !14, line: 42, baseType: !606, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!58}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !598, file: !14, line: 43, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!477, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !598, file: !14, line: 44, baseType: !616, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!477}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !598, file: !14, line: 45, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !58}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !219, file: !121, line: 121, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!477, !186}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !219, file: !121, line: 122, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !186, !631, !638}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !505, line: 23, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 21, size: 32, elements: !634)
!634 = !{!635}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !633, file: !505, line: 22, baseType: !636, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !74, line: 37, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !237, line: 49, baseType: !7)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !505, line: 28, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 26, size: 32, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !640, file: !505, line: 27, baseType: !643, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !74, line: 38, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !237, line: 50, baseType: !7)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !120, file: !121, line: 70, baseType: !646, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !648, line: 190, size: 1152, elements: !649)
!648 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !751, !752, !753, !754, !755, !758}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !647, file: !648, line: 191, baseType: !155, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !647, file: !648, line: 192, baseType: !155, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !647, file: !648, line: 202, baseType: !646, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !647, file: !648, line: 203, baseType: !124, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !647, file: !648, line: 205, baseType: !562, size: 192, align: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !647, file: !648, line: 207, baseType: !477, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !647, file: !648, line: 208, baseType: !7, size: 32, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !647, file: !648, line: 209, baseType: !658, size: 256, offset: 512)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !648, line: 209, size: 256, elements: !659)
!659 = !{!660, !672, !676}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !658, file: !648, line: 210, baseType: !661, size: 256)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !648, line: 153, size: 256, elements: !662)
!662 = !{!663, !664, !668, !671}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !661, file: !648, line: 154, baseType: !59, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !661, file: !648, line: 156, baseType: !665, size: 64, offset: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !563, line: 12, size: 64, elements: !666)
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !665, file: !563, line: 13, baseType: !567, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !661, file: !648, line: 162, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !648, line: 162, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !661, file: !648, line: 167, baseType: !59, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !658, file: !648, line: 211, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !648, line: 170, size: 64, elements: !674)
!674 = !{!675}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !673, file: !648, line: 171, baseType: !646, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !658, file: !648, line: 212, baseType: !677, size: 256)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !648, line: 174, size: 256, elements: !678)
!678 = !{!679, !746, !749, !750}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !677, file: !648, line: 175, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !648, line: 271, size: 768, elements: !683)
!683 = !{!684, !706, !710, !714, !719, !723, !727, !731, !732, !733, !734, !742}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !682, file: !648, line: 276, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!36, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !648, line: 251, size: 1216, elements: !690)
!690 = !{!691, !692, !693, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !689, file: !648, line: 253, baseType: !646, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !689, file: !648, line: 254, baseType: !284, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !689, file: !648, line: 255, baseType: !694, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !585, line: 66, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !689, file: !648, line: 256, baseType: !58, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !689, file: !648, line: 259, baseType: !456, size: 256, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !689, file: !648, line: 260, baseType: !456, size: 256, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !689, file: !648, line: 261, baseType: !36, size: 32, offset: 768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !689, file: !648, line: 262, baseType: !107, size: 128, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !689, file: !648, line: 263, baseType: !203, size: 64, offset: 960)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !689, file: !648, line: 265, baseType: !249, size: 64, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !689, file: !648, line: 266, baseType: !556, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !689, file: !648, line: 267, baseType: !556, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !689, file: !648, line: 268, baseType: !575, size: 64, offset: 1152)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !682, file: !648, line: 277, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !688}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !682, file: !648, line: 290, baseType: !711, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!36, !694, !58}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !682, file: !648, line: 292, baseType: !715, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!58, !694, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !682, file: !648, line: 293, baseType: !720, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!58, !694, !58, !718}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !682, file: !648, line: 294, baseType: !724, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !694, !58}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !682, file: !648, line: 296, baseType: !728, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!235, !688, !203, !249, !287}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !682, file: !648, line: 306, baseType: !249, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !682, file: !648, line: 313, baseType: !556, size: 8, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !682, file: !648, line: 314, baseType: !728, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !682, file: !648, line: 317, baseType: !735, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!738, !688, !740}
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !739, line: 59, baseType: !7)
!739 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !648, line: 31, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !682, file: !648, line: 320, baseType: !743, size: 64, offset: 704)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!36, !688, !295}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !677, file: !648, line: 176, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !648, line: 35, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !677, file: !648, line: 177, baseType: !287, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !677, file: !648, line: 178, baseType: !646, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !647, file: !648, line: 215, baseType: !58, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !647, file: !648, line: 221, baseType: !364, size: 64, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !648, line: 223, baseType: !173, size: 16, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !647, file: !648, line: 224, baseType: !244, size: 16, offset: 912)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !647, file: !648, line: 225, baseType: !756, size: 64, offset: 960)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !648, line: 36, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !647, file: !648, line: 227, baseType: !307, size: 128, align: 64, offset: 1024)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !120, file: !121, line: 71, baseType: !760, size: 32, offset: 448)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !761, line: 19, size: 32, elements: !762)
!761 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !760, file: !761, line: 20, baseType: !764, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !765, line: 113, baseType: !766)
!765 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !765, line: 111, size: 32, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !766, file: !765, line: 112, baseType: !155, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !120, file: !121, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !120, file: !121, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !120, file: !121, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !120, file: !121, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !120, file: !121, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !117, file: !6, line: 47, baseType: !102, size: 64, offset: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !117, file: !6, line: 48, baseType: !128, size: 64, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !117, file: !6, line: 49, baseType: !777, size: 64, offset: 640)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !117, file: !6, line: 50, baseType: !780, size: 64, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !782, line: 26, size: 256, elements: !783)
!782 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !781, file: !782, line: 27, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !781, file: !782, line: 28, baseType: !786, size: 192, offset: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !787, line: 43, size: 192, elements: !788)
!787 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !786, file: !787, line: 44, baseType: !392, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !786, file: !787, line: 45, baseType: !107, size: 128, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !103, file: !6, line: 418, baseType: !792, size: 64, offset: 1408)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !794)
!794 = !{!795, !796, !801, !805, !809, !813}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !793, file: !6, line: 54, baseType: !240, size: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !793, file: !6, line: 55, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!235, !792, !800, !203}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !793, file: !6, line: 57, baseType: !802, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!235, !792, !800, !124, !249}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !793, file: !6, line: 59, baseType: !806, size: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !102, !124}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !793, file: !6, line: 60, baseType: !810, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!36, !102}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !793, file: !6, line: 61, baseType: !814, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !102}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !103, file: !6, line: 419, baseType: !124, size: 64, offset: 1472)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !103, file: !6, line: 420, baseType: !124, size: 64, offset: 1536)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !103, file: !6, line: 421, baseType: !128, size: 64, offset: 1600)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !103, file: !6, line: 424, baseType: !821, size: 64, offset: 1664)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !103, file: !6, line: 425, baseType: !825, size: 64, offset: 1728)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !103, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !103, file: !6, line: 435, baseType: !456, size: 256, offset: 1856)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !103, file: !6, line: 437, baseType: !830, size: 64, offset: 2112)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !832, line: 69, size: 320, elements: !833)
!832 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!833 = !{!834, !835, !836, !853, !855, !859, !860}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !831, file: !832, line: 70, baseType: !124, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !831, file: !832, line: 71, baseType: !102, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !831, file: !832, line: 72, baseType: !837, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !832, line: 47, size: 256, elements: !840)
!840 = !{!841, !842, !848, !852}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !839, file: !832, line: 49, baseType: !7, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !839, file: !832, line: 51, baseType: !843, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!36, !124, !846}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !839, file: !832, line: 53, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!36, !203, !846}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !839, file: !832, line: 55, baseType: !620, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !831, file: !832, line: 73, baseType: !854, size: 16, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !831, file: !832, line: 74, baseType: !856, size: 8, offset: 208)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !66, line: 16, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !68, line: 20, baseType: !858)
!858 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !831, file: !832, line: 75, baseType: !163, size: 8, offset: 216)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !832, line: 76, baseType: !861, size: 64, offset: 256)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !832, line: 76, size: 64, elements: !862)
!862 = !{!863, !864, !871}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !861, file: !832, line: 77, baseType: !58, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !861, file: !832, line: 78, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !832, line: 86, size: 128, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !867, file: !832, line: 87, baseType: !7, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !867, file: !832, line: 88, baseType: !203, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !861, file: !832, line: 79, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !832, line: 92, size: 256, elements: !875)
!875 = !{!876, !877, !878, !880, !881}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !874, file: !832, line: 94, baseType: !7, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !874, file: !832, line: 95, baseType: !7, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !874, file: !832, line: 96, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !874, file: !832, line: 97, baseType: !837, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !874, file: !832, line: 98, baseType: !58, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !103, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !103, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !103, file: !6, line: 442, baseType: !821, size: 64, offset: 2240)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !103, file: !6, line: 443, baseType: !825, size: 64, offset: 2304)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !103, file: !6, line: 444, baseType: !556, size: 8, offset: 2368)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !103, file: !6, line: 451, baseType: !556, size: 8, offset: 2376)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !103, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !103, file: !6, line: 455, baseType: !890, size: 64, offset: 2432)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !892, line: 23, size: 96, elements: !893)
!892 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !891, file: !892, line: 24, baseType: !36, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !891, file: !892, line: 24, baseType: !36, size: 32, offset: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !891, file: !892, line: 24, baseType: !36, size: 32, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !103, file: !6, line: 458, baseType: !898, size: 64, offset: 2496)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!36}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !103, file: !6, line: 460, baseType: !902, size: 4032, align: 512, offset: 2560)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !903, size: 4032, elements: !919)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !903, file: !6, line: 363, baseType: !58, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !903, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !903, file: !6, line: 367, baseType: !908, size: 448, offset: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !908, file: !6, line: 320, baseType: !102, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !908, file: !6, line: 321, baseType: !912, size: 384, offset: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !913, line: 40, size: 384, elements: !914)
!913 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !912, file: !913, line: 41, baseType: !916, size: 384, align: 64)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 384, align: 64, elements: !917)
!917 = !{!918}
!918 = !DISubrange(count: 2)
!919 = !{!920}
!920 = !DISubrange(count: 7)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !103, file: !6, line: 463, baseType: !922, size: 192, offset: 6592)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !923, line: 8, size: 192, elements: !924)
!923 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!924 = !{!925, !926, !928}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !922, file: !923, line: 10, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !922, file: !923, line: 11, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !922, file: !923, line: 12, baseType: !929, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !931, line: 59, size: 48, elements: !932)
!931 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!932 = !{!933, !934, !935, !936, !937, !938}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !930, file: !931, line: 60, baseType: !494, size: 16)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !930, file: !931, line: 61, baseType: !494, size: 16, offset: 16)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !930, file: !931, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !930, file: !931, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !930, file: !931, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !930, file: !931, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !103, file: !6, line: 465, baseType: !59, size: 64, offset: 6784)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !103, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !103, file: !6, line: 470, baseType: !107, size: 128, offset: 6912)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !103, file: !6, line: 471, baseType: !943, size: 64, offset: 7040)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !945, line: 33, size: 96, elements: !946)
!945 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!946 = !{!947, !948, !949, !950}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !944, file: !945, line: 37, baseType: !36, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !944, file: !945, line: 43, baseType: !36, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !944, file: !945, line: 45, baseType: !173, size: 16, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !945, line: 47, baseType: !173, size: 16, offset: 80)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !103, file: !6, line: 476, baseType: !952, size: 64, offset: 7104)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !954)
!954 = !{!955, !971, !972, !973}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !953, file: !6, line: 379, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !958, line: 204, baseType: !959)
!958 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !958, line: 197, size: 192, elements: !960)
!960 = !{!961, !963, !964, !965, !967, !969}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !959, file: !958, line: 198, baseType: !962, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !958, line: 21, baseType: !72)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !959, file: !958, line: 199, baseType: !165, size: 8, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !959, file: !958, line: 200, baseType: !165, size: 8, offset: 40)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !959, file: !958, line: 201, baseType: !966, size: 16, offset: 48)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !958, line: 17, baseType: !172)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !959, file: !958, line: 202, baseType: !968, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !958, line: 16, baseType: !365)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !959, file: !958, line: 203, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !958, line: 22, baseType: !365)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !953, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !953, file: !6, line: 381, baseType: !203, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !953, file: !6, line: 382, baseType: !203, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !103, file: !6, line: 477, baseType: !953, size: 256, offset: 7168)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !103, file: !6, line: 480, baseType: !976, size: 64, offset: 7424)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !103, file: !6, line: 483, baseType: !979, size: 64, offset: 7488)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !103, file: !6, line: 488, baseType: !203, size: 64, offset: 7552)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !103, file: !6, line: 492, baseType: !58, size: 64, offset: 7616)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !103, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !103, file: !6, line: 495, baseType: !58, size: 64, offset: 7744)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !103, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !103, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !103, file: !6, line: 500, baseType: !988, size: 64, offset: 7872)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !990, line: 45, baseType: !991)
!990 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !103, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !103, file: !6, line: 504, baseType: !994, size: 64, offset: 8000)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !997, line: 96, size: 192, elements: !998)
!997 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!998 = !{!999, !1000, !1060, !1063}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !996, file: !997, line: 97, baseType: !7, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !996, file: !997, line: 98, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !997, line: 24, size: 3072, elements: !1003)
!1003 = !{!1004, !1006, !1007, !1008, !1009, !1023, !1024, !1025, !1026, !1044, !1045, !1046, !1057, !1058, !1059}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1002, file: !997, line: 26, baseType: !1005, size: 128)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 128, elements: !917)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1002, file: !997, line: 27, baseType: !1005, size: 128, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1002, file: !997, line: 28, baseType: !36, size: 32, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1002, file: !997, line: 31, baseType: !135, size: 32, align: 512, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1002, file: !997, line: 32, baseType: !1010, size: 960, offset: 576)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1011, line: 206, size: 960, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1012 = !{!1013, !1014, !1017, !1019, !1020, !1022}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1010, file: !1011, line: 207, baseType: !310, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1010, file: !1011, line: 208, baseType: !1015, size: 256, offset: 64)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 256, elements: !437)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1010, file: !1011, line: 209, baseType: !1018, size: 256, offset: 320)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !437)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1010, file: !1011, line: 213, baseType: !70, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1010, file: !1011, line: 215, baseType: !1021, size: 256, offset: 640)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !437)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !1011, line: 216, baseType: !163, size: 8, offset: 896)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1002, file: !997, line: 33, baseType: !59, size: 64, offset: 1536)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1002, file: !997, line: 34, baseType: !59, size: 64, offset: 1600)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1002, file: !997, line: 35, baseType: !556, size: 8, offset: 1664)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1002, file: !997, line: 36, baseType: !1027, size: 320, offset: 1728)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1028, line: 11, size: 320, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1029 = !{!1030, !1037, !1038, !1043}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1027, file: !1028, line: 16, baseType: !1031, size: 128)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !74, line: 198, size: 128, elements: !1032)
!1032 = !{!1033, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1031, file: !74, line: 199, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1031, file: !74, line: 199, baseType: !1036, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1027, file: !1028, line: 17, baseType: !59, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1027, file: !1028, line: 18, baseType: !1039, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1027, file: !1028, line: 19, baseType: !71, size: 32, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1002, file: !997, line: 37, baseType: !521, size: 256, offset: 2048)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1002, file: !997, line: 38, baseType: !307, size: 128, align: 64, offset: 2304)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1002, file: !997, line: 39, baseType: !1047, size: 64, offset: 2432)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !997, line: 49, size: 768, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1048, file: !997, line: 50, baseType: !135, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1048, file: !997, line: 51, baseType: !1018, size: 256, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1048, file: !997, line: 53, baseType: !1018, size: 256, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1048, file: !997, line: 54, baseType: !59, size: 64, offset: 576)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1048, file: !997, line: 55, baseType: !1047, size: 64, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1048, file: !997, line: 56, baseType: !36, size: 32, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1048, file: !997, line: 57, baseType: !36, size: 32, offset: 736)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1002, file: !997, line: 40, baseType: !59, size: 64, offset: 2496)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1002, file: !997, line: 42, baseType: !36, size: 32, offset: 2560)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1002, file: !997, line: 43, baseType: !995, size: 64, offset: 2624)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !996, file: !997, line: 99, baseType: !1061, offset: 128)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1062, line: 211, elements: !337)
!1062 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !996, file: !997, line: 100, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !997, line: 63, size: 3008, elements: !1066)
!1066 = !{!1067, !1068, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1098}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1065, file: !997, line: 64, baseType: !1047, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1065, file: !997, line: 65, baseType: !1069, size: 192, offset: 64)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, size: 192, elements: !204)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1065, file: !997, line: 67, baseType: !36, size: 32, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1065, file: !997, line: 68, baseType: !456, size: 256, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1065, file: !997, line: 69, baseType: !135, size: 32, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1065, file: !997, line: 70, baseType: !456, size: 256, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1065, file: !997, line: 71, baseType: !59, size: 64, offset: 896)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1065, file: !997, line: 72, baseType: !59, size: 64, offset: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1065, file: !997, line: 73, baseType: !59, size: 64, offset: 1024)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1065, file: !997, line: 74, baseType: !59, size: 64, offset: 1088)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1065, file: !997, line: 75, baseType: !59, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1065, file: !997, line: 76, baseType: !59, size: 64, offset: 1216)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1065, file: !997, line: 77, baseType: !59, size: 64, offset: 1280)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1065, file: !997, line: 78, baseType: !59, size: 64, offset: 1344)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1065, file: !997, line: 79, baseType: !556, size: 8, offset: 1408)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1065, file: !997, line: 80, baseType: !59, size: 64, offset: 1472)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1065, file: !997, line: 81, baseType: !456, size: 256, offset: 1536)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1065, file: !997, line: 82, baseType: !781, size: 256, offset: 1792)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1065, file: !997, line: 84, baseType: !155, size: 32, offset: 2048)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1065, file: !997, line: 87, baseType: !59, size: 64, offset: 2112)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1065, file: !997, line: 88, baseType: !59, size: 64, offset: 2176)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1065, file: !997, line: 89, baseType: !1090, size: 704, offset: 2240)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !522, line: 111, size: 704, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1097}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1090, file: !522, line: 112, baseType: !521, size: 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1090, file: !522, line: 113, baseType: !1027, size: 320, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1090, file: !522, line: 116, baseType: !1095, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !522, line: 18, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1090, file: !522, line: 117, baseType: !36, size: 32, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1065, file: !997, line: 90, baseType: !995, size: 64, offset: 2944)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !103, file: !6, line: 515, baseType: !1100, size: 64, offset: 8064)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1102, line: 117, size: 128, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1101, file: !1102, line: 118, baseType: !65, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1101, file: !1102, line: 119, baseType: !65, size: 32, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1101, file: !1102, line: 120, baseType: !70, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !103, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !103, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !103, file: !6, line: 520, baseType: !1110, size: 64, offset: 8192)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !103, file: !6, line: 523, baseType: !1112, size: 64, offset: 8256)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !103, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !103, file: !6, line: 525, baseType: !1117, size: 64, offset: 8384)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !103, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !103, file: !6, line: 533, baseType: !58, size: 64, offset: 8512)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !103, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !103, file: !6, line: 535, baseType: !1124, size: 64, offset: 8640)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !103, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !103, file: !6, line: 539, baseType: !36, size: 32, offset: 8736)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !103, file: !6, line: 540, baseType: !60, size: 64, offset: 8768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !103, file: !6, line: 563, baseType: !107, size: 128, offset: 8832)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !103, file: !6, line: 565, baseType: !107, size: 128, offset: 8960)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !103, file: !6, line: 568, baseType: !1131, size: 64, offset: 9088)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !103, file: !6, line: 570, baseType: !155, size: 32, offset: 9152)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !97, file: !98, line: 172, baseType: !60, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !92, file: !62, line: 67, baseType: !60, size: 64)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1148, !1151, !1155, !1156, !1160, !1164, !1167, !1168, !1170, !1174}
!1138 = !DILocalVariable(name: "key", arg: 1, scope: !84, file: !3, line: 134, type: !87)
!1139 = !DILocalVariable(name: "tramp", arg: 2, scope: !84, file: !3, line: 134, type: !58)
!1140 = !DILocalVariable(name: "func", arg: 3, scope: !84, file: !3, line: 134, type: !58)
!1141 = !DILocalVariable(name: "site", scope: !84, file: !3, line: 136, type: !60)
!1142 = !DILocalVariable(name: "stop", scope: !84, file: !3, line: 136, type: !60)
!1143 = !DILocalVariable(name: "site_mod", scope: !84, file: !3, line: 137, type: !96)
!1144 = !DILocalVariable(name: "first", scope: !84, file: !3, line: 137, type: !97)
!1145 = !DILocalVariable(name: "__ret_warn_on", scope: !1146, file: !3, line: 153, type: !36)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 153, column: 6)
!1147 = distinct !DILexicalBlock(scope: !84, file: !3, line: 153, column: 6)
!1148 = !DILocalVariable(name: "__flags", scope: !1149, file: !3, line: 153, type: !36)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 153, column: 6)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 153, column: 6)
!1151 = !DILocalVariable(name: "init", scope: !1152, file: !3, line: 163, type: !556)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 162, column: 63)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 162, column: 2)
!1154 = distinct !DILexicalBlock(scope: !84, file: !3, line: 162, column: 2)
!1155 = !DILocalVariable(name: "mod", scope: !1152, file: !3, line: 164, type: !102)
!1156 = !DILocalVariable(name: "site_addr", scope: !1157, file: !3, line: 189, type: !58)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 188, column: 61)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 187, column: 3)
!1159 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 187, column: 3)
!1160 = !DILocalVariable(name: "__ret_do_once", scope: !1161, file: !3, line: 203, type: !556)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 203, column: 5)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 194, column: 56)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 194, column: 8)
!1164 = !DILocalVariable(name: "__ret_cond", scope: !1165, file: !3, line: 203, type: !556)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 203, column: 5)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 203, column: 5)
!1167 = !DILocalVariable(name: "__ret_once", scope: !1165, file: !3, line: 203, type: !556)
!1168 = !DILocalVariable(name: "__ret_warn_on", scope: !1169, file: !3, line: 203, type: !36)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 203, column: 5)
!1170 = !DILocalVariable(name: "__flags", scope: !1171, file: !3, line: 203, type: !36)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 203, column: 5)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 203, column: 5)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 203, column: 5)
!1174 = !DILabel(scope: !84, name: "done", file: !3, line: 214)
!1175 = !DIGlobalVariableExpression(var: !1176, expr: !DIExpression())
!1176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !1177, isLocal: true, isDefinition: true)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 288, elements: !1178)
!1178 = !{!1179}
!1179 = !DISubrange(count: 36)
!1180 = !DIGlobalVariableExpression(var: !1181, expr: !DIExpression())
!1181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___static_call_update205", scope: !2, file: !3, line: 218, type: !58, isLocal: true, isDefinition: true)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 512, type: !1184, isLocal: true, isDefinition: true)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 368, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 46)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_static_call_inline__207_524_static_call_initearly208", scope: !2, file: !3, line: 524, type: !58, isLocal: true, isDefinition: true)
!1189 = !DIGlobalVariableExpression(var: !1190, expr: !DIExpression())
!1190 = distinct !DIGlobalVariable(name: "static_call_mutex", scope: !2, file: !3, line: 32, type: !456, isLocal: true, isDefinition: true)
!1191 = !DIGlobalVariableExpression(var: !1192, expr: !DIExpression())
!1192 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule206", scope: !1193, file: !3, line: 333, type: !58, isLocal: true, isDefinition: true)
!1193 = distinct !DISubprogram(name: "__static_call_mod_text_reserved", scope: !3, file: !3, line: 323, type: !1194, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!36, !58, !58}
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1203}
!1197 = !DILocalVariable(name: "start", arg: 1, scope: !1193, file: !3, line: 323, type: !58)
!1198 = !DILocalVariable(name: "end", arg: 2, scope: !1193, file: !3, line: 323, type: !58)
!1199 = !DILocalVariable(name: "mod", scope: !1193, file: !3, line: 325, type: !102)
!1200 = !DILocalVariable(name: "ret", scope: !1193, file: !3, line: 326, type: !36)
!1201 = !DILocalVariable(name: "__ret_warn_on", scope: !1202, file: !3, line: 330, type: !36)
!1202 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 330, column: 2)
!1203 = !DILocalVariable(name: "__flags", scope: !1204, file: !3, line: 330, type: !36)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 330, column: 2)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 330, column: 2)
!1206 = !DIGlobalVariableExpression(var: !1207, expr: !DIExpression())
!1207 = distinct !DIGlobalVariable(scope: null, file: !48, line: 480, type: !1208, isLocal: true, isDefinition: true)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 168, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 21)
!1211 = !DIGlobalVariableExpression(var: !1212, expr: !DIExpression())
!1212 = distinct !DIGlobalVariable(name: "static_call_module_nb", scope: !2, file: !3, line: 471, type: !1213, isLocal: true, isDefinition: true)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1214, line: 54, size: 192, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1215 = !{!1216, !1222, !1223}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1213, file: !1214, line: 55, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1214, line: 51, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!36, !1221, !59, !58}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1213, file: !1214, line: 56, baseType: !1221, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1213, file: !1214, line: 57, baseType: !36, size: 32, offset: 128)
!1224 = !DIGlobalVariableExpression(var: !1225, expr: !DIExpression())
!1225 = distinct !DIGlobalVariable(scope: null, file: !3, line: 456, type: !1184, isLocal: true, isDefinition: true)
!1226 = !DIGlobalVariableExpression(var: !1227, expr: !DIExpression())
!1227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 391, type: !1228, isLocal: true, isDefinition: true)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 424, elements: !1229)
!1229 = !{!1230}
!1230 = !DISubrange(count: 53)
!1231 = !{!"rsp"}
!1232 = !{i32 7, !"Dwarf Version", i32 5}
!1233 = !{i32 2, !"Debug Info Version", i32 3}
!1234 = !{i32 1, !"wchar_size", i32 2}
!1235 = !{i32 8, !"cf-protection-branch", i32 1}
!1236 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1237 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1238 = !{i32 1, !"Code Model", i32 2}
!1239 = !{i32 1, !"override-stack-alignment", i32 8}
!1240 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1241 = distinct !DISubprogram(name: "static_call_force_reinit", scope: !3, file: !3, line: 23, type: !1132, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1242)
!1242 = !{!1243, !1246}
!1243 = !DILocalVariable(name: "__ret_warn_on", scope: !1244, file: !3, line: 25, type: !36)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 25, column: 6)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 25, column: 6)
!1246 = !DILocalVariable(name: "__flags", scope: !1247, file: !3, line: 25, type: !36)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 25, column: 6)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 25, column: 6)
!1249 = !DILocation(line: 25, column: 6, scope: !1244)
!1250 = !DILocation(line: 25, column: 6, scope: !1248)
!1251 = !DILocation(line: 25, column: 6, scope: !1247)
!1252 = !DILocation(line: 25, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 25, column: 6)
!1254 = !DILocation(line: 25, column: 6, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 25, column: 6)
!1256 = !{i64 2152744854, i64 2152744883, i64 2152744929, i64 2152744987, i64 2152745041, i64 2152745095, i64 2152745150, i64 2152745181, i64 2152745489, i64 2152745495, i64 2152745542, i64 2152745565, i64 2152745591}
!1257 = !DILocation(line: 25, column: 6, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 25, column: 6)
!1259 = !DILocation(line: 25, column: 6, scope: !1245)
!1260 = !DILocation(line: 25, column: 6, scope: !1241)
!1261 = !DILocation(line: 26, column: 3, scope: !1245)
!1262 = !DILocation(line: 28, column: 25, scope: !1241)
!1263 = !DILocation(line: 29, column: 1, scope: !1241)
!1264 = !DILocation(line: 134, column: 51, scope: !84)
!1265 = !DILocation(line: 134, column: 62, scope: !84)
!1266 = !DILocation(line: 134, column: 75, scope: !84)
!1267 = !DILocation(line: 136, column: 2, scope: !84)
!1268 = !DILocation(line: 136, column: 27, scope: !84)
!1269 = !DILocation(line: 136, column: 34, scope: !84)
!1270 = !DILocation(line: 137, column: 2, scope: !84)
!1271 = !DILocation(line: 137, column: 26, scope: !84)
!1272 = !DILocation(line: 137, column: 36, scope: !84)
!1273 = !DILocation(line: 139, column: 2, scope: !84)
!1274 = !DILocation(line: 140, column: 2, scope: !84)
!1275 = !DILocation(line: 142, column: 6, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !84, file: !3, line: 142, column: 6)
!1277 = !DILocation(line: 142, column: 11, scope: !1276)
!1278 = !DILocation(line: 142, column: 19, scope: !1276)
!1279 = !DILocation(line: 142, column: 16, scope: !1276)
!1280 = !DILocation(line: 142, column: 6, scope: !84)
!1281 = !DILocation(line: 143, column: 3, scope: !1276)
!1282 = !DILocation(line: 145, column: 14, scope: !84)
!1283 = !DILocation(line: 145, column: 2, scope: !84)
!1284 = !DILocation(line: 145, column: 7, scope: !84)
!1285 = !DILocation(line: 145, column: 12, scope: !84)
!1286 = !DILocation(line: 147, column: 35, scope: !84)
!1287 = !DILocation(line: 147, column: 42, scope: !84)
!1288 = !DILocation(line: 147, column: 2, scope: !84)
!1289 = !DILocation(line: 153, column: 6, scope: !1146)
!1290 = !DILocation(line: 153, column: 6, scope: !1150)
!1291 = !DILocation(line: 153, column: 6, scope: !1149)
!1292 = !DILocation(line: 153, column: 6, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 153, column: 6)
!1294 = !DILocation(line: 153, column: 6, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 153, column: 6)
!1296 = !{i64 2152748903, i64 2152748932, i64 2152748978, i64 2152749036, i64 2152749090, i64 2152749144, i64 2152749199, i64 2152749230, i64 2152749538, i64 2152749544, i64 2152749591, i64 2152749614, i64 2152749640}
!1297 = !DILocation(line: 153, column: 6, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 153, column: 6)
!1299 = !DILocation(line: 153, column: 6, scope: !1147)
!1300 = !DILocation(line: 153, column: 6, scope: !84)
!1301 = !DILocation(line: 154, column: 3, scope: !1147)
!1302 = !DILocation(line: 156, column: 34, scope: !84)
!1303 = !DILocation(line: 157, column: 32, scope: !84)
!1304 = !DILocation(line: 157, column: 11, scope: !84)
!1305 = !DILocation(line: 159, column: 34, scope: !84)
!1306 = !DILocation(line: 159, column: 12, scope: !84)
!1307 = !DILocation(line: 156, column: 10, scope: !84)
!1308 = !DILocation(line: 162, column: 16, scope: !1154)
!1309 = !DILocation(line: 162, column: 7, scope: !1154)
!1310 = !DILocation(line: 162, column: 26, scope: !1153)
!1311 = !DILocation(line: 162, column: 2, scope: !1154)
!1312 = !DILocation(line: 163, column: 3, scope: !1152)
!1313 = !DILocation(line: 163, column: 8, scope: !1152)
!1314 = !DILocation(line: 163, column: 15, scope: !1152)
!1315 = !DILocation(line: 163, column: 28, scope: !1152)
!1316 = !DILocation(line: 164, column: 3, scope: !1152)
!1317 = !DILocation(line: 164, column: 18, scope: !1152)
!1318 = !DILocation(line: 164, column: 24, scope: !1152)
!1319 = !DILocation(line: 164, column: 34, scope: !1152)
!1320 = !DILocation(line: 166, column: 8, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 166, column: 7)
!1322 = !DILocation(line: 166, column: 18, scope: !1321)
!1323 = !DILocation(line: 166, column: 7, scope: !1152)
!1324 = !DILocation(line: 174, column: 4, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 166, column: 25)
!1326 = !DILocation(line: 177, column: 8, scope: !1152)
!1327 = !DILocation(line: 179, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 179, column: 7)
!1329 = !DILocation(line: 179, column: 7, scope: !1152)
!1330 = !DILocation(line: 181, column: 11, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 179, column: 12)
!1332 = !DILocation(line: 181, column: 16, scope: !1331)
!1333 = !DILocation(line: 182, column: 11, scope: !1331)
!1334 = !DILocation(line: 182, column: 16, scope: !1331)
!1335 = !DILocation(line: 181, column: 34, scope: !1331)
!1336 = !DILocation(line: 181, column: 9, scope: !1331)
!1337 = !DILocation(line: 183, column: 11, scope: !1331)
!1338 = !DILocation(line: 183, column: 16, scope: !1331)
!1339 = !DILocation(line: 183, column: 22, scope: !1331)
!1340 = !DILocation(line: 183, column: 9, scope: !1331)
!1341 = !DILocation(line: 185, column: 3, scope: !1331)
!1342 = !DILocation(line: 187, column: 15, scope: !1159)
!1343 = !DILocation(line: 187, column: 25, scope: !1159)
!1344 = !DILocation(line: 187, column: 13, scope: !1159)
!1345 = !DILocation(line: 187, column: 8, scope: !1159)
!1346 = !DILocation(line: 188, column: 8, scope: !1158)
!1347 = !DILocation(line: 188, column: 15, scope: !1158)
!1348 = !DILocation(line: 188, column: 13, scope: !1158)
!1349 = !DILocation(line: 188, column: 20, scope: !1158)
!1350 = !DILocation(line: 188, column: 39, scope: !1158)
!1351 = !DILocation(line: 188, column: 23, scope: !1158)
!1352 = !DILocation(line: 188, column: 48, scope: !1158)
!1353 = !DILocation(line: 188, column: 45, scope: !1158)
!1354 = !DILocation(line: 0, scope: !1158)
!1355 = !DILocation(line: 187, column: 3, scope: !1159)
!1356 = !DILocation(line: 189, column: 4, scope: !1157)
!1357 = !DILocation(line: 189, column: 10, scope: !1157)
!1358 = !DILocation(line: 189, column: 39, scope: !1157)
!1359 = !DILocation(line: 189, column: 22, scope: !1157)
!1360 = !DILocation(line: 191, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 191, column: 8)
!1362 = !{i8 0, i8 2}
!1363 = !DILocation(line: 191, column: 14, scope: !1361)
!1364 = !DILocation(line: 191, column: 37, scope: !1361)
!1365 = !DILocation(line: 191, column: 17, scope: !1361)
!1366 = !DILocation(line: 191, column: 8, scope: !1157)
!1367 = !DILocation(line: 192, column: 5, scope: !1361)
!1368 = !DILocation(line: 194, column: 44, scope: !1163)
!1369 = !DILocation(line: 194, column: 29, scope: !1163)
!1370 = !DILocation(line: 194, column: 9, scope: !1163)
!1371 = !DILocation(line: 194, column: 8, scope: !1157)
!1372 = !DILocation(line: 203, column: 5, scope: !1161)
!1373 = !DILocation(line: 203, column: 5, scope: !1165)
!1374 = !DILocation(line: 203, column: 5, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 203, column: 5)
!1376 = !DILocation(line: 0, scope: !1375)
!1377 = !DILocation(line: 203, column: 5, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 203, column: 5)
!1379 = !DILocation(line: 203, column: 5, scope: !1166)
!1380 = !DILocation(line: 203, column: 5, scope: !1169)
!1381 = !DILocation(line: 203, column: 5, scope: !1173)
!1382 = !DILocation(line: 203, column: 5, scope: !1172)
!1383 = !DILocation(line: 203, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 203, column: 5)
!1385 = !DILocation(line: 203, column: 5, scope: !1171)
!1386 = !DILocation(line: 203, column: 5, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 203, column: 5)
!1388 = !DILocation(line: 203, column: 5, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 203, column: 5)
!1390 = !{i64 2152751579, i64 2152751608, i64 2152751654, i64 2152751712, i64 2152751766, i64 2152751820, i64 2152751875, i64 2152751906, i64 2152752214, i64 2152752220, i64 2152752267, i64 2152752290, i64 2152752316}
!1391 = !DILocation(line: 203, column: 5, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 203, column: 5)
!1393 = !DILocation(line: 203, column: 5, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 203, column: 5)
!1395 = !DILocation(line: 203, column: 5, scope: !1162)
!1396 = !DILocation(line: 206, column: 5, scope: !1162)
!1397 = !DILocation(line: 209, column: 31, scope: !1157)
!1398 = !DILocation(line: 209, column: 48, scope: !1157)
!1399 = !DILocation(line: 210, column: 30, scope: !1157)
!1400 = !DILocation(line: 210, column: 10, scope: !1157)
!1401 = !DILocation(line: 209, column: 4, scope: !1157)
!1402 = !DILocation(line: 211, column: 3, scope: !1158)
!1403 = !DILocation(line: 211, column: 3, scope: !1157)
!1404 = !DILocation(line: 188, column: 57, scope: !1158)
!1405 = !DILocation(line: 187, column: 3, scope: !1158)
!1406 = distinct !{!1406, !1355, !1407, !1408, !1409}
!1407 = !DILocation(line: 211, column: 3, scope: !1159)
!1408 = !{!"llvm.loop.mustprogress"}
!1409 = !{!"llvm.loop.unroll.disable"}
!1410 = !DILocation(line: 212, column: 2, scope: !1153)
!1411 = !DILocation(line: 212, column: 2, scope: !1152)
!1412 = !DILocation(line: 162, column: 47, scope: !1153)
!1413 = !DILocation(line: 162, column: 57, scope: !1153)
!1414 = !DILocation(line: 162, column: 45, scope: !1153)
!1415 = !DILocation(line: 162, column: 2, scope: !1153)
!1416 = distinct !{!1416, !1311, !1417, !1408, !1409}
!1417 = !DILocation(line: 212, column: 2, scope: !1154)
!1418 = !DILocation(line: 214, column: 1, scope: !84)
!1419 = !DILocation(line: 215, column: 2, scope: !84)
!1420 = !DILocation(line: 216, column: 2, scope: !84)
!1421 = !DILocation(line: 217, column: 1, scope: !84)
!1422 = !DISubprogram(name: "cpus_read_lock", scope: !1423, file: !1423, line: 135, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1423 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!1424 = distinct !DISubprogram(name: "static_call_lock", scope: !3, file: !3, line: 34, type: !1132, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1425 = !DILocation(line: 36, column: 2, scope: !1424)
!1426 = !DILocation(line: 37, column: 1, scope: !1424)
!1427 = !DISubprogram(name: "arch_static_call_transform", scope: !98, file: !98, line: 144, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !58, !58, !58, !556}
!1430 = distinct !DISubprogram(name: "static_call_key_next", scope: !3, file: !3, line: 118, type: !1431, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!96, !87}
!1433 = !{!1434}
!1434 = !DILocalVariable(name: "key", arg: 1, scope: !1430, file: !3, line: 118, type: !87)
!1435 = !DILocation(line: 118, column: 84, scope: !1430)
!1436 = !DILocation(line: 120, column: 32, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 120, column: 6)
!1438 = !DILocation(line: 120, column: 7, scope: !1437)
!1439 = !DILocation(line: 120, column: 6, scope: !1430)
!1440 = !DILocation(line: 121, column: 3, scope: !1437)
!1441 = !DILocation(line: 123, column: 9, scope: !1430)
!1442 = !DILocation(line: 123, column: 14, scope: !1430)
!1443 = !DILocation(line: 123, column: 2, scope: !1430)
!1444 = !DILocation(line: 124, column: 1, scope: !1430)
!1445 = distinct !DISubprogram(name: "static_call_key_sites", scope: !3, file: !3, line: 126, type: !1446, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!60, !87}
!1448 = !{!1449}
!1449 = !DILocalVariable(name: "key", arg: 1, scope: !1445, file: !3, line: 126, type: !87)
!1450 = !DILocation(line: 126, column: 86, scope: !1445)
!1451 = !DILocation(line: 128, column: 31, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 128, column: 6)
!1453 = !DILocation(line: 128, column: 6, scope: !1452)
!1454 = !DILocation(line: 128, column: 6, scope: !1445)
!1455 = !DILocation(line: 129, column: 3, scope: !1452)
!1456 = !DILocation(line: 131, column: 37, scope: !1445)
!1457 = !DILocation(line: 131, column: 42, scope: !1445)
!1458 = !DILocation(line: 131, column: 47, scope: !1445)
!1459 = !DILocation(line: 131, column: 9, scope: !1445)
!1460 = !DILocation(line: 131, column: 2, scope: !1445)
!1461 = !DILocation(line: 132, column: 1, scope: !1445)
!1462 = distinct !DISubprogram(name: "static_call_key", scope: !3, file: !3, line: 54, type: !1463, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1467)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!87, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!1467 = !{!1468}
!1468 = !DILocalVariable(name: "site", arg: 1, scope: !1462, file: !3, line: 54, type: !1465)
!1469 = !DILocation(line: 54, column: 86, scope: !1462)
!1470 = !DILocation(line: 56, column: 36, scope: !1462)
!1471 = !DILocation(line: 56, column: 18, scope: !1462)
!1472 = !DILocation(line: 56, column: 42, scope: !1462)
!1473 = !DILocation(line: 56, column: 9, scope: !1462)
!1474 = !DILocation(line: 56, column: 2, scope: !1462)
!1475 = distinct !DISubprogram(name: "static_call_addr", scope: !3, file: !3, line: 44, type: !1476, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1478)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!58, !60}
!1478 = !{!1479}
!1479 = !DILocalVariable(name: "site", arg: 1, scope: !1475, file: !3, line: 44, type: !60)
!1480 = !DILocation(line: 44, column: 63, scope: !1475)
!1481 = !DILocation(line: 46, column: 24, scope: !1475)
!1482 = !DILocation(line: 46, column: 30, scope: !1475)
!1483 = !DILocation(line: 46, column: 18, scope: !1475)
!1484 = !DILocation(line: 46, column: 44, scope: !1475)
!1485 = !DILocation(line: 46, column: 50, scope: !1475)
!1486 = !DILocation(line: 46, column: 37, scope: !1475)
!1487 = !DILocation(line: 46, column: 35, scope: !1475)
!1488 = !DILocation(line: 46, column: 9, scope: !1475)
!1489 = !DILocation(line: 46, column: 2, scope: !1475)
!1490 = distinct !DISubprogram(name: "static_call_is_init", scope: !3, file: !3, line: 60, type: !1491, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!556, !60}
!1493 = !{!1494}
!1494 = !DILocalVariable(name: "site", arg: 1, scope: !1490, file: !3, line: 60, type: !60)
!1495 = !DILocation(line: 60, column: 65, scope: !1490)
!1496 = !DILocation(line: 62, column: 27, scope: !1490)
!1497 = !DILocation(line: 62, column: 9, scope: !1490)
!1498 = !DILocation(line: 62, column: 33, scope: !1490)
!1499 = !DILocation(line: 62, column: 2, scope: !1490)
!1500 = !DISubprogram(name: "kernel_text_address", scope: !25, file: !25, line: 215, type: !1501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!36, !59}
!1503 = !DISubprogram(name: "__warn_printk", scope: !945, file: !945, line: 93, type: !1504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{null, !124, null}
!1506 = distinct !DISubprogram(name: "static_call_is_tail", scope: !3, file: !3, line: 65, type: !1491, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1507)
!1507 = !{!1508}
!1508 = !DILocalVariable(name: "site", arg: 1, scope: !1506, file: !3, line: 65, type: !60)
!1509 = !DILocation(line: 65, column: 65, scope: !1506)
!1510 = !DILocation(line: 67, column: 27, scope: !1506)
!1511 = !DILocation(line: 67, column: 9, scope: !1506)
!1512 = !DILocation(line: 67, column: 33, scope: !1506)
!1513 = !DILocation(line: 67, column: 2, scope: !1506)
!1514 = distinct !DISubprogram(name: "static_call_unlock", scope: !3, file: !3, line: 39, type: !1132, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1515 = !DILocation(line: 41, column: 2, scope: !1514)
!1516 = !DILocation(line: 42, column: 1, scope: !1514)
!1517 = !DISubprogram(name: "cpus_read_unlock", scope: !1423, file: !1423, line: 136, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1518 = distinct !DISubprogram(name: "static_call_text_reserved", scope: !3, file: !3, line: 484, type: !1194, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1519)
!1519 = !{!1520, !1521, !1522, !1523}
!1520 = !DILocalVariable(name: "start", arg: 1, scope: !1518, file: !3, line: 484, type: !58)
!1521 = !DILocalVariable(name: "end", arg: 2, scope: !1518, file: !3, line: 484, type: !58)
!1522 = !DILocalVariable(name: "init", scope: !1518, file: !3, line: 486, type: !556)
!1523 = !DILocalVariable(name: "ret", scope: !1518, file: !3, line: 487, type: !36)
!1524 = !DILocation(line: 484, column: 37, scope: !1518)
!1525 = !DILocation(line: 484, column: 50, scope: !1518)
!1526 = !DILocation(line: 486, column: 2, scope: !1518)
!1527 = !DILocation(line: 486, column: 7, scope: !1518)
!1528 = !DILocation(line: 486, column: 14, scope: !1518)
!1529 = !DILocation(line: 486, column: 27, scope: !1518)
!1530 = !DILocation(line: 487, column: 2, scope: !1518)
!1531 = !DILocation(line: 487, column: 6, scope: !1518)
!1532 = !DILocation(line: 488, column: 30, scope: !1518)
!1533 = !DILocation(line: 488, column: 37, scope: !1518)
!1534 = !DILocation(line: 488, column: 42, scope: !1518)
!1535 = !DILocation(line: 487, column: 12, scope: !1518)
!1536 = !DILocation(line: 490, column: 6, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 490, column: 6)
!1538 = !DILocation(line: 490, column: 6, scope: !1518)
!1539 = !DILocation(line: 491, column: 10, scope: !1537)
!1540 = !DILocation(line: 491, column: 3, scope: !1537)
!1541 = !DILocation(line: 493, column: 41, scope: !1518)
!1542 = !DILocation(line: 493, column: 48, scope: !1518)
!1543 = !DILocation(line: 493, column: 9, scope: !1518)
!1544 = !DILocation(line: 493, column: 2, scope: !1518)
!1545 = !DILocation(line: 494, column: 1, scope: !1518)
!1546 = distinct !DISubprogram(name: "__static_call_text_reserved", scope: !3, file: !3, line: 304, type: !1547, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!36, !60, !60, !58, !58, !556}
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555}
!1550 = !DILocalVariable(name: "iter_start", arg: 1, scope: !1546, file: !3, line: 304, type: !60)
!1551 = !DILocalVariable(name: "iter_stop", arg: 2, scope: !1546, file: !3, line: 305, type: !60)
!1552 = !DILocalVariable(name: "start", arg: 3, scope: !1546, file: !3, line: 306, type: !58)
!1553 = !DILocalVariable(name: "end", arg: 4, scope: !1546, file: !3, line: 306, type: !58)
!1554 = !DILocalVariable(name: "init", arg: 5, scope: !1546, file: !3, line: 306, type: !556)
!1555 = !DILocalVariable(name: "iter", scope: !1546, file: !3, line: 308, type: !60)
!1556 = !DILocation(line: 304, column: 65, scope: !1546)
!1557 = !DILocation(line: 305, column: 37, scope: !1546)
!1558 = !DILocation(line: 306, column: 18, scope: !1546)
!1559 = !DILocation(line: 306, column: 31, scope: !1546)
!1560 = !DILocation(line: 306, column: 41, scope: !1546)
!1561 = !DILocation(line: 308, column: 2, scope: !1546)
!1562 = !DILocation(line: 308, column: 27, scope: !1546)
!1563 = !DILocation(line: 308, column: 34, scope: !1546)
!1564 = !DILocation(line: 310, column: 2, scope: !1546)
!1565 = !DILocation(line: 310, column: 9, scope: !1546)
!1566 = !DILocation(line: 310, column: 16, scope: !1546)
!1567 = !DILocation(line: 310, column: 14, scope: !1546)
!1568 = !DILocation(line: 311, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 311, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 310, column: 27)
!1571 = !DILocation(line: 311, column: 12, scope: !1569)
!1572 = !DILocation(line: 311, column: 36, scope: !1569)
!1573 = !DILocation(line: 311, column: 16, scope: !1569)
!1574 = !DILocation(line: 311, column: 7, scope: !1570)
!1575 = !DILocation(line: 312, column: 22, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 312, column: 8)
!1577 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 311, column: 43)
!1578 = !DILocation(line: 312, column: 28, scope: !1576)
!1579 = !DILocation(line: 312, column: 35, scope: !1576)
!1580 = !DILocation(line: 312, column: 8, scope: !1576)
!1581 = !DILocation(line: 312, column: 8, scope: !1577)
!1582 = !DILocation(line: 313, column: 5, scope: !1576)
!1583 = !DILocation(line: 314, column: 3, scope: !1577)
!1584 = !DILocation(line: 315, column: 7, scope: !1570)
!1585 = distinct !{!1585, !1564, !1586, !1408, !1409}
!1586 = !DILocation(line: 316, column: 2, scope: !1546)
!1587 = !DILocation(line: 318, column: 2, scope: !1546)
!1588 = !DILocation(line: 319, column: 1, scope: !1546)
!1589 = !DILocation(line: 323, column: 50, scope: !1193)
!1590 = !DILocation(line: 323, column: 63, scope: !1193)
!1591 = !DILocation(line: 325, column: 2, scope: !1193)
!1592 = !DILocation(line: 325, column: 17, scope: !1193)
!1593 = !DILocation(line: 326, column: 2, scope: !1193)
!1594 = !DILocation(line: 326, column: 6, scope: !1193)
!1595 = !DILocation(line: 328, column: 2, scope: !1193)
!1596 = !DILocation(line: 328, column: 2, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 328, column: 2)
!1598 = !{i64 2152755053}
!1599 = !DILocation(line: 329, column: 45, scope: !1193)
!1600 = !DILocation(line: 329, column: 30, scope: !1193)
!1601 = !DILocation(line: 329, column: 8, scope: !1193)
!1602 = !DILocation(line: 329, column: 6, scope: !1193)
!1603 = !DILocation(line: 330, column: 2, scope: !1202)
!1604 = !DILocation(line: 330, column: 2, scope: !1205)
!1605 = !DILocation(line: 330, column: 2, scope: !1204)
!1606 = !DILocation(line: 330, column: 2, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 330, column: 2)
!1608 = !DILocation(line: 330, column: 2, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 330, column: 2)
!1610 = !{i64 2152755653, i64 2152755682, i64 2152755728, i64 2152755786, i64 2152755840, i64 2152755894, i64 2152755949, i64 2152755980, i64 2152756288, i64 2152756294, i64 2152756341, i64 2152756364, i64 2152756390}
!1611 = !DILocation(line: 330, column: 2, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 330, column: 2)
!1613 = !DILocation(line: 330, column: 2, scope: !1193)
!1614 = !DILocation(line: 331, column: 22, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 331, column: 6)
!1616 = !DILocation(line: 331, column: 7, scope: !1615)
!1617 = !DILocation(line: 331, column: 6, scope: !1193)
!1618 = !DILocation(line: 332, column: 7, scope: !1615)
!1619 = !DILocation(line: 332, column: 3, scope: !1615)
!1620 = !DILocation(line: 333, column: 2, scope: !1193)
!1621 = !DILocation(line: 333, column: 2, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 333, column: 2)
!1623 = !{i64 2152756778}
!1624 = !DILocation(line: 333, column: 2, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 333, column: 2)
!1626 = !DILocation(line: 333, column: 2, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 333, column: 2)
!1628 = !{i64 2152756960}
!1629 = !DILocation(line: 335, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 335, column: 6)
!1631 = !DILocation(line: 335, column: 6, scope: !1193)
!1632 = !DILocation(line: 336, column: 3, scope: !1630)
!1633 = !DILocation(line: 338, column: 36, scope: !1193)
!1634 = !DILocation(line: 338, column: 41, scope: !1193)
!1635 = !DILocation(line: 339, column: 4, scope: !1193)
!1636 = !DILocation(line: 339, column: 9, scope: !1193)
!1637 = !DILocation(line: 339, column: 29, scope: !1193)
!1638 = !DILocation(line: 339, column: 34, scope: !1193)
!1639 = !DILocation(line: 339, column: 27, scope: !1193)
!1640 = !DILocation(line: 340, column: 4, scope: !1193)
!1641 = !DILocation(line: 340, column: 11, scope: !1193)
!1642 = !DILocation(line: 340, column: 16, scope: !1193)
!1643 = !DILocation(line: 340, column: 21, scope: !1193)
!1644 = !DILocation(line: 340, column: 27, scope: !1193)
!1645 = !DILocation(line: 338, column: 8, scope: !1193)
!1646 = !DILocation(line: 338, column: 6, scope: !1193)
!1647 = !DILocation(line: 342, column: 13, scope: !1193)
!1648 = !DILocation(line: 342, column: 2, scope: !1193)
!1649 = !DILocation(line: 344, column: 9, scope: !1193)
!1650 = !DILocation(line: 344, column: 2, scope: !1193)
!1651 = !DILocation(line: 345, column: 1, scope: !1193)
!1652 = distinct !DISubprogram(name: "static_call_init", scope: !3, file: !3, line: 496, type: !899, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1653)
!1653 = !{!1654}
!1654 = !DILocalVariable(name: "ret", scope: !1652, file: !3, line: 498, type: !36)
!1655 = !DILocation(line: 498, column: 2, scope: !1652)
!1656 = !DILocation(line: 498, column: 6, scope: !1652)
!1657 = !DILocation(line: 501, column: 6, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 501, column: 6)
!1659 = !DILocation(line: 501, column: 30, scope: !1658)
!1660 = !DILocation(line: 501, column: 6, scope: !1652)
!1661 = !DILocation(line: 502, column: 3, scope: !1658)
!1662 = !DILocation(line: 504, column: 2, scope: !1652)
!1663 = !DILocation(line: 505, column: 2, scope: !1652)
!1664 = !DILocation(line: 506, column: 8, scope: !1652)
!1665 = !DILocation(line: 506, column: 6, scope: !1652)
!1666 = !DILocation(line: 508, column: 2, scope: !1652)
!1667 = !DILocation(line: 509, column: 2, scope: !1652)
!1668 = !DILocation(line: 511, column: 6, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 511, column: 6)
!1670 = !DILocation(line: 511, column: 6, scope: !1652)
!1671 = !DILocation(line: 512, column: 3, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 512, column: 3)
!1673 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 511, column: 11)
!1674 = !DILocation(line: 512, column: 3, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 512, column: 3)
!1676 = !DILocation(line: 513, column: 3, scope: !1673)
!1677 = !DILocation(line: 513, column: 3, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 513, column: 3)
!1679 = !DILocation(line: 513, column: 3, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 513, column: 3)
!1681 = !DILocation(line: 513, column: 3, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 513, column: 3)
!1683 = !{i64 2152760544, i64 2152760573, i64 2152760619, i64 2152760677, i64 2152760731, i64 2152760785, i64 2152760840, i64 2152760871}
!1684 = !DILocation(line: 514, column: 2, scope: !1673)
!1685 = !DILocation(line: 517, column: 7, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 517, column: 6)
!1687 = !DILocation(line: 517, column: 6, scope: !1652)
!1688 = !DILocation(line: 518, column: 3, scope: !1686)
!1689 = !DILocation(line: 521, column: 26, scope: !1652)
!1690 = !DILocation(line: 522, column: 2, scope: !1652)
!1691 = !DILocation(line: 523, column: 1, scope: !1652)
!1692 = distinct !DISubprogram(name: "__static_call_init", scope: !3, file: !3, line: 220, type: !1693, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!36, !102, !60, !60}
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1707}
!1696 = !DILocalVariable(name: "mod", arg: 1, scope: !1692, file: !3, line: 220, type: !102)
!1697 = !DILocalVariable(name: "start", arg: 2, scope: !1692, file: !3, line: 221, type: !60)
!1698 = !DILocalVariable(name: "stop", arg: 3, scope: !1692, file: !3, line: 222, type: !60)
!1699 = !DILocalVariable(name: "site", scope: !1692, file: !3, line: 224, type: !60)
!1700 = !DILocalVariable(name: "key", scope: !1692, file: !3, line: 225, type: !87)
!1701 = !DILocalVariable(name: "prev_key", scope: !1692, file: !3, line: 225, type: !87)
!1702 = !DILocalVariable(name: "site_mod", scope: !1692, file: !3, line: 226, type: !96)
!1703 = !DILocalVariable(name: "site_addr", scope: !1704, file: !3, line: 234, type: !58)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 233, column: 42)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 233, column: 2)
!1706 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 233, column: 2)
!1707 = !DILabel(scope: !1704, name: "do_transform", file: !3, line: 285)
!1708 = !DILocation(line: 220, column: 46, scope: !1692)
!1709 = !DILocation(line: 221, column: 35, scope: !1692)
!1710 = !DILocation(line: 222, column: 35, scope: !1692)
!1711 = !DILocation(line: 224, column: 2, scope: !1692)
!1712 = !DILocation(line: 224, column: 27, scope: !1692)
!1713 = !DILocation(line: 225, column: 2, scope: !1692)
!1714 = !DILocation(line: 225, column: 26, scope: !1692)
!1715 = !DILocation(line: 225, column: 32, scope: !1692)
!1716 = !DILocation(line: 226, column: 2, scope: !1692)
!1717 = !DILocation(line: 226, column: 26, scope: !1692)
!1718 = !DILocation(line: 228, column: 6, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 228, column: 6)
!1720 = !DILocation(line: 228, column: 15, scope: !1719)
!1721 = !DILocation(line: 228, column: 12, scope: !1719)
!1722 = !DILocation(line: 228, column: 6, scope: !1692)
!1723 = !DILocation(line: 229, column: 3, scope: !1719)
!1724 = !DILocation(line: 231, column: 27, scope: !1692)
!1725 = !DILocation(line: 231, column: 34, scope: !1692)
!1726 = !DILocation(line: 231, column: 2, scope: !1692)
!1727 = !DILocation(line: 233, column: 14, scope: !1706)
!1728 = !DILocation(line: 233, column: 12, scope: !1706)
!1729 = !DILocation(line: 233, column: 7, scope: !1706)
!1730 = !DILocation(line: 233, column: 21, scope: !1705)
!1731 = !DILocation(line: 233, column: 28, scope: !1705)
!1732 = !DILocation(line: 233, column: 26, scope: !1705)
!1733 = !DILocation(line: 233, column: 2, scope: !1706)
!1734 = !DILocation(line: 234, column: 3, scope: !1704)
!1735 = !DILocation(line: 234, column: 9, scope: !1704)
!1736 = !DILocation(line: 234, column: 38, scope: !1704)
!1737 = !DILocation(line: 234, column: 21, scope: !1704)
!1738 = !DILocation(line: 236, column: 8, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 236, column: 7)
!1740 = !DILocation(line: 236, column: 12, scope: !1739)
!1741 = !DILocation(line: 236, column: 49, scope: !1739)
!1742 = !DILocation(line: 236, column: 34, scope: !1739)
!1743 = !DILocation(line: 236, column: 60, scope: !1739)
!1744 = !DILocation(line: 236, column: 15, scope: !1739)
!1745 = !DILocation(line: 236, column: 66, scope: !1739)
!1746 = !DILocation(line: 237, column: 9, scope: !1739)
!1747 = !DILocation(line: 237, column: 13, scope: !1739)
!1748 = !DILocation(line: 237, column: 38, scope: !1739)
!1749 = !DILocation(line: 237, column: 16, scope: !1739)
!1750 = !DILocation(line: 236, column: 7, scope: !1704)
!1751 = !DILocation(line: 238, column: 25, scope: !1739)
!1752 = !DILocation(line: 238, column: 4, scope: !1739)
!1753 = !DILocation(line: 240, column: 25, scope: !1704)
!1754 = !DILocation(line: 240, column: 9, scope: !1704)
!1755 = !DILocation(line: 240, column: 7, scope: !1704)
!1756 = !DILocation(line: 241, column: 7, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 241, column: 7)
!1758 = !DILocation(line: 241, column: 14, scope: !1757)
!1759 = !DILocation(line: 241, column: 11, scope: !1757)
!1760 = !DILocation(line: 241, column: 7, scope: !1704)
!1761 = !DILocation(line: 242, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 241, column: 24)
!1763 = !DILocation(line: 242, column: 13, scope: !1762)
!1764 = !DILocation(line: 252, column: 9, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 252, column: 8)
!1766 = !DILocation(line: 252, column: 8, scope: !1762)
!1767 = !DILocation(line: 253, column: 18, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 252, column: 14)
!1769 = !DILocation(line: 253, column: 5, scope: !1768)
!1770 = !DILocation(line: 253, column: 10, scope: !1768)
!1771 = !DILocation(line: 253, column: 16, scope: !1768)
!1772 = !DILocation(line: 254, column: 5, scope: !1768)
!1773 = !DILocation(line: 254, column: 10, scope: !1768)
!1774 = !DILocation(line: 254, column: 15, scope: !1768)
!1775 = !DILocation(line: 255, column: 5, scope: !1768)
!1776 = !DILocation(line: 258, column: 15, scope: !1762)
!1777 = !DILocation(line: 258, column: 13, scope: !1762)
!1778 = !DILocation(line: 259, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 259, column: 8)
!1780 = !DILocation(line: 259, column: 8, scope: !1762)
!1781 = !DILocation(line: 260, column: 5, scope: !1779)
!1782 = !DILocation(line: 267, column: 30, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 267, column: 8)
!1784 = !DILocation(line: 267, column: 8, scope: !1783)
!1785 = !DILocation(line: 267, column: 8, scope: !1762)
!1786 = !DILocation(line: 268, column: 5, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 267, column: 36)
!1788 = !DILocation(line: 268, column: 15, scope: !1787)
!1789 = !DILocation(line: 268, column: 19, scope: !1787)
!1790 = !DILocation(line: 269, column: 5, scope: !1787)
!1791 = !DILocation(line: 269, column: 15, scope: !1787)
!1792 = !DILocation(line: 269, column: 20, scope: !1787)
!1793 = !DILocation(line: 270, column: 45, scope: !1787)
!1794 = !DILocation(line: 270, column: 23, scope: !1787)
!1795 = !DILocation(line: 270, column: 5, scope: !1787)
!1796 = !DILocation(line: 270, column: 15, scope: !1787)
!1797 = !DILocation(line: 270, column: 21, scope: !1787)
!1798 = !DILocation(line: 272, column: 17, scope: !1787)
!1799 = !DILocation(line: 272, column: 5, scope: !1787)
!1800 = !DILocation(line: 272, column: 10, scope: !1787)
!1801 = !DILocation(line: 272, column: 15, scope: !1787)
!1802 = !DILocation(line: 274, column: 16, scope: !1787)
!1803 = !DILocation(line: 274, column: 14, scope: !1787)
!1804 = !DILocation(line: 275, column: 10, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 275, column: 9)
!1806 = !DILocation(line: 275, column: 9, scope: !1787)
!1807 = !DILocation(line: 276, column: 6, scope: !1805)
!1808 = !DILocation(line: 277, column: 4, scope: !1787)
!1809 = !DILocation(line: 279, column: 20, scope: !1762)
!1810 = !DILocation(line: 279, column: 4, scope: !1762)
!1811 = !DILocation(line: 279, column: 14, scope: !1762)
!1812 = !DILocation(line: 279, column: 18, scope: !1762)
!1813 = !DILocation(line: 280, column: 22, scope: !1762)
!1814 = !DILocation(line: 280, column: 4, scope: !1762)
!1815 = !DILocation(line: 280, column: 14, scope: !1762)
!1816 = !DILocation(line: 280, column: 20, scope: !1762)
!1817 = !DILocation(line: 281, column: 42, scope: !1762)
!1818 = !DILocation(line: 281, column: 21, scope: !1762)
!1819 = !DILocation(line: 281, column: 4, scope: !1762)
!1820 = !DILocation(line: 281, column: 14, scope: !1762)
!1821 = !DILocation(line: 281, column: 19, scope: !1762)
!1822 = !DILocation(line: 282, column: 16, scope: !1762)
!1823 = !DILocation(line: 282, column: 4, scope: !1762)
!1824 = !DILocation(line: 282, column: 9, scope: !1762)
!1825 = !DILocation(line: 282, column: 14, scope: !1762)
!1826 = !DILocation(line: 283, column: 3, scope: !1762)
!1827 = !DILocation(line: 285, column: 1, scope: !1704)
!1828 = !DILocation(line: 286, column: 30, scope: !1704)
!1829 = !DILocation(line: 286, column: 47, scope: !1704)
!1830 = !DILocation(line: 286, column: 52, scope: !1704)
!1831 = !DILocation(line: 287, column: 25, scope: !1704)
!1832 = !DILocation(line: 287, column: 5, scope: !1704)
!1833 = !DILocation(line: 286, column: 3, scope: !1704)
!1834 = !DILocation(line: 288, column: 2, scope: !1705)
!1835 = !DILocation(line: 288, column: 2, scope: !1704)
!1836 = !DILocation(line: 233, column: 38, scope: !1705)
!1837 = !DILocation(line: 233, column: 2, scope: !1705)
!1838 = distinct !{!1838, !1733, !1839, !1408, !1409}
!1839 = !DILocation(line: 288, column: 2, scope: !1706)
!1840 = !DILocation(line: 290, column: 2, scope: !1692)
!1841 = !DILocation(line: 291, column: 1, scope: !1692)
!1842 = !DISubprogram(name: "_printk", scope: !1843, file: !1843, line: 153, type: !1844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1843 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!36, !124, null}
!1846 = !DISubprogram(name: "register_module_notifier", scope: !6, file: !6, line: 734, type: !1847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!36, !1221}
!1849 = distinct !DISubprogram(name: "__initstub__kmod_static_call_inline__207_524_static_call_initearly", scope: !3, file: !3, line: 524, type: !899, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1850 = !DILocation(line: 524, column: 1, scope: !1849)
!1851 = !DISubprogram(name: "mutex_lock", scope: !457, file: !457, line: 227, type: !1852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!1855 = distinct !DISubprogram(name: "static_call_key_has_mods", scope: !3, file: !3, line: 113, type: !1856, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!556, !87}
!1858 = !{!1859}
!1859 = !DILocalVariable(name: "key", arg: 1, scope: !1855, file: !3, line: 113, type: !87)
!1860 = !DILocation(line: 113, column: 69, scope: !1855)
!1861 = !DILocation(line: 115, column: 11, scope: !1855)
!1862 = !DILocation(line: 115, column: 16, scope: !1855)
!1863 = !DILocation(line: 115, column: 21, scope: !1855)
!1864 = !DILocation(line: 115, column: 9, scope: !1855)
!1865 = !DILocation(line: 115, column: 2, scope: !1855)
!1866 = distinct !DISubprogram(name: "__static_call_key", scope: !3, file: !3, line: 49, type: !1867, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!59, !1465}
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "site", arg: 1, scope: !1866, file: !3, line: 49, type: !1465)
!1871 = !DILocation(line: 49, column: 78, scope: !1866)
!1872 = !DILocation(line: 51, column: 15, scope: !1866)
!1873 = !DILocation(line: 51, column: 21, scope: !1866)
!1874 = !DILocation(line: 51, column: 9, scope: !1866)
!1875 = !DILocation(line: 51, column: 34, scope: !1866)
!1876 = !DILocation(line: 51, column: 40, scope: !1866)
!1877 = !DILocation(line: 51, column: 27, scope: !1866)
!1878 = !DILocation(line: 51, column: 25, scope: !1866)
!1879 = !DILocation(line: 51, column: 2, scope: !1866)
!1880 = !DISubprogram(name: "mutex_unlock", scope: !457, file: !457, line: 246, type: !1852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1881 = distinct !DISubprogram(name: "addr_conflict", scope: !3, file: !3, line: 293, type: !1882, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1884)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!36, !60, !58, !58}
!1884 = !{!1885, !1886, !1887, !1888}
!1885 = !DILocalVariable(name: "site", arg: 1, scope: !1881, file: !3, line: 293, type: !60)
!1886 = !DILocalVariable(name: "start", arg: 2, scope: !1881, file: !3, line: 293, type: !58)
!1887 = !DILocalVariable(name: "end", arg: 3, scope: !1881, file: !3, line: 293, type: !58)
!1888 = !DILocalVariable(name: "addr", scope: !1881, file: !3, line: 295, type: !59)
!1889 = !DILocation(line: 293, column: 51, scope: !1881)
!1890 = !DILocation(line: 293, column: 63, scope: !1881)
!1891 = !DILocation(line: 293, column: 76, scope: !1881)
!1892 = !DILocation(line: 295, column: 2, scope: !1881)
!1893 = !DILocation(line: 295, column: 16, scope: !1881)
!1894 = !DILocation(line: 295, column: 55, scope: !1881)
!1895 = !DILocation(line: 295, column: 38, scope: !1881)
!1896 = !DILocation(line: 295, column: 23, scope: !1881)
!1897 = !DILocation(line: 297, column: 6, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 297, column: 6)
!1899 = !DILocation(line: 297, column: 29, scope: !1898)
!1900 = !DILocation(line: 297, column: 14, scope: !1898)
!1901 = !DILocation(line: 297, column: 11, scope: !1898)
!1902 = !DILocation(line: 297, column: 33, scope: !1898)
!1903 = !DILocation(line: 298, column: 6, scope: !1898)
!1904 = !DILocation(line: 298, column: 11, scope: !1898)
!1905 = !DILocation(line: 298, column: 45, scope: !1898)
!1906 = !DILocation(line: 298, column: 30, scope: !1898)
!1907 = !DILocation(line: 298, column: 28, scope: !1898)
!1908 = !DILocation(line: 297, column: 6, scope: !1881)
!1909 = !DILocation(line: 299, column: 3, scope: !1898)
!1910 = !DILocation(line: 301, column: 2, scope: !1881)
!1911 = !DILocation(line: 302, column: 1, scope: !1881)
!1912 = distinct !DISubprogram(name: "__preempt_count_add", scope: !1913, file: !1913, line: 78, type: !1914, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1916)
!1913 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !36}
!1916 = !{!1917, !1918, !1920}
!1917 = !DILocalVariable(name: "val", arg: 1, scope: !1912, file: !1913, line: 78, type: !36)
!1918 = !DILocalVariable(name: "pao_ID__", scope: !1919, file: !1913, line: 80, type: !991)
!1919 = distinct !DILexicalBlock(scope: !1912, file: !1913, line: 80, column: 2)
!1920 = !DILocalVariable(name: "pto_val__", scope: !1921, file: !1913, line: 80, type: !71)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !1913, line: 80, column: 2)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !1913, line: 80, column: 2)
!1923 = distinct !DILexicalBlock(scope: !1919, file: !1913, line: 80, column: 2)
!1924 = !DILocation(line: 78, column: 53, scope: !1912)
!1925 = !DILocation(line: 80, column: 2, scope: !1912)
!1926 = !DILocation(line: 80, column: 2, scope: !1919)
!1927 = !DILocation(line: 80, column: 2, scope: !1923)
!1928 = !DILocation(line: 80, column: 2, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1923, file: !1913, line: 80, column: 2)
!1930 = !{i64 2149676094}
!1931 = !DILocation(line: 80, column: 2, scope: !1922)
!1932 = !DILocation(line: 80, column: 2, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1922, file: !1913, line: 80, column: 2)
!1934 = !{i64 2149676389}
!1935 = !DILocation(line: 80, column: 2, scope: !1921)
!1936 = !{i64 2149677094}
!1937 = !DILocation(line: 81, column: 1, scope: !1912)
!1938 = !DISubprogram(name: "__module_text_address", scope: !6, file: !6, line: 606, type: !1939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!102, !59}
!1941 = !DISubprogram(name: "try_module_get", scope: !6, file: !6, line: 696, type: !1942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!556, !102}
!1944 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !1913, file: !1913, line: 93, type: !603, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1945)
!1945 = !{!1946}
!1946 = !DILocalVariable(name: "c", scope: !1947, file: !1913, line: 95, type: !556)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !1913, line: 95, column: 9)
!1948 = !DILocation(line: 95, column: 9, scope: !1947)
!1949 = !{i64 2149680450, i64 2149680543}
!1950 = !DILocation(line: 95, column: 9, scope: !1944)
!1951 = !DILocation(line: 95, column: 2, scope: !1944)
!1952 = !DISubprogram(name: "module_put", scope: !6, file: !6, line: 706, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1953 = distinct !DISubprogram(name: "static_call_sort_entries", scope: !3, file: !3, line: 106, type: !1954, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !60, !60}
!1956 = !{!1957, !1958}
!1957 = !DILocalVariable(name: "start", arg: 1, scope: !1953, file: !3, line: 106, type: !60)
!1958 = !DILocalVariable(name: "stop", arg: 2, scope: !1953, file: !3, line: 107, type: !60)
!1959 = !DILocation(line: 106, column: 70, scope: !1953)
!1960 = !DILocation(line: 107, column: 35, scope: !1953)
!1961 = !DILocation(line: 109, column: 7, scope: !1953)
!1962 = !DILocation(line: 109, column: 14, scope: !1953)
!1963 = !DILocation(line: 109, column: 21, scope: !1953)
!1964 = !DILocation(line: 109, column: 19, scope: !1953)
!1965 = !DILocation(line: 109, column: 2, scope: !1953)
!1966 = !DILocation(line: 111, column: 1, scope: !1953)
!1967 = distinct !DISubprogram(name: "within_module_init", scope: !6, file: !6, line: 634, type: !1968, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1972)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!556, !59, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1972 = !{!1973, !1974, !1975}
!1973 = !DILocalVariable(name: "addr", arg: 1, scope: !1967, file: !6, line: 634, type: !59)
!1974 = !DILocalVariable(name: "mod", arg: 2, scope: !1967, file: !6, line: 635, type: !1970)
!1975 = !DILocalVariable(name: "type", scope: !1976, file: !6, line: 637, type: !35)
!1976 = distinct !DILexicalBlock(scope: !1967, file: !6, line: 637, column: 2)
!1977 = !DILocation(line: 634, column: 53, scope: !1967)
!1978 = !DILocation(line: 635, column: 32, scope: !1967)
!1979 = !DILocation(line: 637, column: 2, scope: !1976)
!1980 = !DILocation(line: 637, column: 2, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1976, file: !6, line: 637, column: 2)
!1982 = !DILocation(line: 637, column: 2, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1981, file: !6, line: 637, column: 2)
!1984 = !DILocation(line: 638, column: 30, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !6, line: 638, column: 7)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !6, line: 637, column: 37)
!1987 = !DILocation(line: 638, column: 36, scope: !1985)
!1988 = !DILocation(line: 638, column: 41, scope: !1985)
!1989 = !DILocation(line: 638, column: 7, scope: !1985)
!1990 = !DILocation(line: 638, column: 7, scope: !1986)
!1991 = !DILocation(line: 639, column: 4, scope: !1985)
!1992 = !DILocation(line: 640, column: 2, scope: !1986)
!1993 = distinct !{!1993, !1979, !1994, !1408, !1409}
!1994 = !DILocation(line: 640, column: 2, scope: !1976)
!1995 = !DILocation(line: 641, column: 2, scope: !1967)
!1996 = !DILocation(line: 642, column: 1, scope: !1967)
!1997 = distinct !DISubprogram(name: "init_section_contains", scope: !1998, file: !1998, line: 128, type: !1999, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!1998 = !DIFile(filename: "./include/asm-generic/sections.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f39e7a49fe27b92edee06ba1fa02c96a")
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!556, !58, !249}
!2001 = !{!2002, !2003}
!2002 = !DILocalVariable(name: "virt", arg: 1, scope: !1997, file: !1998, line: 128, type: !58)
!2003 = !DILocalVariable(name: "size", arg: 2, scope: !1997, file: !1998, line: 128, type: !249)
!2004 = !DILocation(line: 128, column: 48, scope: !1997)
!2005 = !DILocation(line: 128, column: 61, scope: !1997)
!2006 = !DILocation(line: 130, column: 51, scope: !1997)
!2007 = !DILocation(line: 130, column: 57, scope: !1997)
!2008 = !DILocation(line: 130, column: 9, scope: !1997)
!2009 = !DILocation(line: 130, column: 2, scope: !1997)
!2010 = distinct !DISubprogram(name: "static_call_set_init", scope: !3, file: !3, line: 70, type: !2011, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !60}
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "site", arg: 1, scope: !2010, file: !3, line: 70, type: !60)
!2015 = !DILocation(line: 70, column: 66, scope: !2010)
!2016 = !DILocation(line: 72, column: 33, scope: !2010)
!2017 = !DILocation(line: 72, column: 15, scope: !2010)
!2018 = !DILocation(line: 72, column: 39, scope: !2010)
!2019 = !DILocation(line: 73, column: 14, scope: !2010)
!2020 = !DILocation(line: 73, column: 20, scope: !2010)
!2021 = !DILocation(line: 73, column: 7, scope: !2010)
!2022 = !DILocation(line: 72, column: 64, scope: !2010)
!2023 = !DILocation(line: 72, column: 14, scope: !2010)
!2024 = !DILocation(line: 72, column: 2, scope: !2010)
!2025 = !DILocation(line: 72, column: 8, scope: !2010)
!2026 = !DILocation(line: 72, column: 12, scope: !2010)
!2027 = !DILocation(line: 74, column: 1, scope: !2010)
!2028 = distinct !DISubprogram(name: "kzalloc", scope: !48, file: !48, line: 719, type: !2029, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!58, !249, !73}
!2031 = !{!2032, !2033}
!2032 = !DILocalVariable(name: "size", arg: 1, scope: !2028, file: !48, line: 719, type: !249)
!2033 = !DILocalVariable(name: "flags", arg: 2, scope: !2028, file: !48, line: 719, type: !73)
!2034 = !DILocation(line: 719, column: 52, scope: !2028)
!2035 = !DILocation(line: 719, column: 64, scope: !2028)
!2036 = !DILocation(line: 721, column: 17, scope: !2028)
!2037 = !DILocation(line: 721, column: 23, scope: !2028)
!2038 = !DILocation(line: 721, column: 29, scope: !2028)
!2039 = !DILocation(line: 721, column: 9, scope: !2028)
!2040 = !DILocation(line: 721, column: 2, scope: !2028)
!2041 = !DISubprogram(name: "sort", scope: !2042, file: !2042, line: 12, type: !2043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2042 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!2043 = !DISubroutineType(types: !2044)
!2044 = !{null, !58, !249, !249, !2045, !2049}
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !74, line: 245, baseType: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!36, !477, !477}
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !74, line: 242, baseType: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !58, !58, !36}
!2053 = distinct !DISubprogram(name: "static_call_site_cmp", scope: !3, file: !3, line: 76, type: !2047, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2062}
!2055 = !DILocalVariable(name: "_a", arg: 1, scope: !2053, file: !3, line: 76, type: !477)
!2056 = !DILocalVariable(name: "_b", arg: 2, scope: !2053, file: !3, line: 76, type: !477)
!2057 = !DILocalVariable(name: "a", scope: !2053, file: !3, line: 78, type: !1465)
!2058 = !DILocalVariable(name: "b", scope: !2053, file: !3, line: 79, type: !1465)
!2059 = !DILocalVariable(name: "key_a", scope: !2053, file: !3, line: 80, type: !2060)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!2062 = !DILocalVariable(name: "key_b", scope: !2053, file: !3, line: 81, type: !2060)
!2063 = !DILocation(line: 76, column: 45, scope: !2053)
!2064 = !DILocation(line: 76, column: 61, scope: !2053)
!2065 = !DILocation(line: 78, column: 2, scope: !2053)
!2066 = !DILocation(line: 78, column: 33, scope: !2053)
!2067 = !DILocation(line: 78, column: 37, scope: !2053)
!2068 = !DILocation(line: 79, column: 2, scope: !2053)
!2069 = !DILocation(line: 79, column: 33, scope: !2053)
!2070 = !DILocation(line: 79, column: 37, scope: !2053)
!2071 = !DILocation(line: 80, column: 2, scope: !2053)
!2072 = !DILocation(line: 80, column: 32, scope: !2053)
!2073 = !DILocation(line: 80, column: 56, scope: !2053)
!2074 = !DILocation(line: 80, column: 40, scope: !2053)
!2075 = !DILocation(line: 81, column: 2, scope: !2053)
!2076 = !DILocation(line: 81, column: 32, scope: !2053)
!2077 = !DILocation(line: 81, column: 56, scope: !2053)
!2078 = !DILocation(line: 81, column: 40, scope: !2053)
!2079 = !DILocation(line: 83, column: 6, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 83, column: 6)
!2081 = !DILocation(line: 83, column: 14, scope: !2080)
!2082 = !DILocation(line: 83, column: 12, scope: !2080)
!2083 = !DILocation(line: 83, column: 6, scope: !2053)
!2084 = !DILocation(line: 84, column: 3, scope: !2080)
!2085 = !DILocation(line: 86, column: 6, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 86, column: 6)
!2087 = !DILocation(line: 86, column: 14, scope: !2086)
!2088 = !DILocation(line: 86, column: 12, scope: !2086)
!2089 = !DILocation(line: 86, column: 6, scope: !2053)
!2090 = !DILocation(line: 87, column: 3, scope: !2086)
!2091 = !DILocation(line: 89, column: 2, scope: !2053)
!2092 = !DILocation(line: 90, column: 1, scope: !2053)
!2093 = distinct !DISubprogram(name: "static_call_site_swap", scope: !3, file: !3, line: 92, type: !2051, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101}
!2095 = !DILocalVariable(name: "_a", arg: 1, scope: !2093, file: !3, line: 92, type: !58)
!2096 = !DILocalVariable(name: "_b", arg: 2, scope: !2093, file: !3, line: 92, type: !58)
!2097 = !DILocalVariable(name: "size", arg: 3, scope: !2093, file: !3, line: 92, type: !36)
!2098 = !DILocalVariable(name: "delta", scope: !2093, file: !3, line: 94, type: !70)
!2099 = !DILocalVariable(name: "a", scope: !2093, file: !3, line: 95, type: !60)
!2100 = !DILocalVariable(name: "b", scope: !2093, file: !3, line: 96, type: !60)
!2101 = !DILocalVariable(name: "tmp", scope: !2093, file: !3, line: 97, type: !61)
!2102 = !DILocation(line: 92, column: 41, scope: !2093)
!2103 = !DILocation(line: 92, column: 51, scope: !2093)
!2104 = !DILocation(line: 92, column: 59, scope: !2093)
!2105 = !DILocation(line: 94, column: 2, scope: !2093)
!2106 = !DILocation(line: 94, column: 7, scope: !2093)
!2107 = !DILocation(line: 94, column: 30, scope: !2093)
!2108 = !DILocation(line: 94, column: 15, scope: !2093)
!2109 = !DILocation(line: 94, column: 50, scope: !2093)
!2110 = !DILocation(line: 94, column: 35, scope: !2093)
!2111 = !DILocation(line: 94, column: 33, scope: !2093)
!2112 = !DILocation(line: 95, column: 2, scope: !2093)
!2113 = !DILocation(line: 95, column: 27, scope: !2093)
!2114 = !DILocation(line: 95, column: 31, scope: !2093)
!2115 = !DILocation(line: 96, column: 2, scope: !2093)
!2116 = !DILocation(line: 96, column: 27, scope: !2093)
!2117 = !DILocation(line: 96, column: 31, scope: !2093)
!2118 = !DILocation(line: 97, column: 2, scope: !2093)
!2119 = !DILocation(line: 97, column: 26, scope: !2093)
!2120 = !DILocation(line: 97, column: 33, scope: !2093)
!2121 = !DILocation(line: 97, column: 32, scope: !2093)
!2122 = !DILocation(line: 99, column: 12, scope: !2093)
!2123 = !DILocation(line: 99, column: 15, scope: !2093)
!2124 = !DILocation(line: 99, column: 23, scope: !2093)
!2125 = !DILocation(line: 99, column: 21, scope: !2093)
!2126 = !DILocation(line: 99, column: 2, scope: !2093)
!2127 = !DILocation(line: 99, column: 5, scope: !2093)
!2128 = !DILocation(line: 99, column: 10, scope: !2093)
!2129 = !DILocation(line: 100, column: 12, scope: !2093)
!2130 = !DILocation(line: 100, column: 15, scope: !2093)
!2131 = !DILocation(line: 100, column: 23, scope: !2093)
!2132 = !DILocation(line: 100, column: 21, scope: !2093)
!2133 = !DILocation(line: 100, column: 2, scope: !2093)
!2134 = !DILocation(line: 100, column: 5, scope: !2093)
!2135 = !DILocation(line: 100, column: 10, scope: !2093)
!2136 = !DILocation(line: 102, column: 16, scope: !2093)
!2137 = !DILocation(line: 102, column: 12, scope: !2093)
!2138 = !DILocation(line: 102, column: 23, scope: !2093)
!2139 = !DILocation(line: 102, column: 21, scope: !2093)
!2140 = !DILocation(line: 102, column: 2, scope: !2093)
!2141 = !DILocation(line: 102, column: 5, scope: !2093)
!2142 = !DILocation(line: 102, column: 10, scope: !2093)
!2143 = !DILocation(line: 103, column: 16, scope: !2093)
!2144 = !DILocation(line: 103, column: 12, scope: !2093)
!2145 = !DILocation(line: 103, column: 23, scope: !2093)
!2146 = !DILocation(line: 103, column: 21, scope: !2093)
!2147 = !DILocation(line: 103, column: 2, scope: !2093)
!2148 = !DILocation(line: 103, column: 5, scope: !2093)
!2149 = !DILocation(line: 103, column: 10, scope: !2093)
!2150 = !DILocation(line: 104, column: 1, scope: !2093)
!2151 = distinct !DISubprogram(name: "within_module_mem_type", scope: !6, file: !6, line: 613, type: !2152, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!556, !59, !1970, !35}
!2154 = !{!2155, !2156, !2157, !2158, !2159}
!2155 = !DILocalVariable(name: "addr", arg: 1, scope: !2151, file: !6, line: 613, type: !59)
!2156 = !DILocalVariable(name: "mod", arg: 2, scope: !2151, file: !6, line: 614, type: !1970)
!2157 = !DILocalVariable(name: "type", arg: 3, scope: !2151, file: !6, line: 615, type: !35)
!2158 = !DILocalVariable(name: "base", scope: !2151, file: !6, line: 617, type: !59)
!2159 = !DILocalVariable(name: "size", scope: !2151, file: !6, line: 617, type: !59)
!2160 = !DILocation(line: 613, column: 57, scope: !2151)
!2161 = !DILocation(line: 614, column: 29, scope: !2151)
!2162 = !DILocation(line: 615, column: 26, scope: !2151)
!2163 = !DILocation(line: 617, column: 2, scope: !2151)
!2164 = !DILocation(line: 617, column: 16, scope: !2151)
!2165 = !DILocation(line: 617, column: 22, scope: !2151)
!2166 = !DILocation(line: 619, column: 24, scope: !2151)
!2167 = !DILocation(line: 619, column: 29, scope: !2151)
!2168 = !DILocation(line: 619, column: 33, scope: !2151)
!2169 = !DILocation(line: 619, column: 39, scope: !2151)
!2170 = !DILocation(line: 619, column: 9, scope: !2151)
!2171 = !DILocation(line: 619, column: 7, scope: !2151)
!2172 = !DILocation(line: 620, column: 9, scope: !2151)
!2173 = !DILocation(line: 620, column: 14, scope: !2151)
!2174 = !DILocation(line: 620, column: 18, scope: !2151)
!2175 = !DILocation(line: 620, column: 24, scope: !2151)
!2176 = !DILocation(line: 620, column: 7, scope: !2151)
!2177 = !DILocation(line: 621, column: 9, scope: !2151)
!2178 = !DILocation(line: 621, column: 16, scope: !2151)
!2179 = !DILocation(line: 621, column: 14, scope: !2151)
!2180 = !DILocation(line: 621, column: 23, scope: !2151)
!2181 = !DILocation(line: 621, column: 21, scope: !2151)
!2182 = !DILocation(line: 622, column: 1, scope: !2151)
!2183 = !DILocation(line: 621, column: 2, scope: !2151)
!2184 = distinct !DISubprogram(name: "memory_contains", scope: !1998, file: !1998, line: 91, type: !2185, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!556, !58, !58, !58, !249}
!2187 = !{!2188, !2189, !2190, !2191}
!2188 = !DILocalVariable(name: "begin", arg: 1, scope: !2184, file: !1998, line: 91, type: !58)
!2189 = !DILocalVariable(name: "end", arg: 2, scope: !2184, file: !1998, line: 91, type: !58)
!2190 = !DILocalVariable(name: "virt", arg: 3, scope: !2184, file: !1998, line: 91, type: !58)
!2191 = !DILocalVariable(name: "size", arg: 4, scope: !2184, file: !1998, line: 92, type: !249)
!2192 = !DILocation(line: 91, column: 42, scope: !2184)
!2193 = !DILocation(line: 91, column: 55, scope: !2184)
!2194 = !DILocation(line: 91, column: 66, scope: !2184)
!2195 = !DILocation(line: 92, column: 15, scope: !2184)
!2196 = !DILocation(line: 94, column: 9, scope: !2184)
!2197 = !DILocation(line: 94, column: 17, scope: !2184)
!2198 = !DILocation(line: 94, column: 14, scope: !2184)
!2199 = !DILocation(line: 94, column: 23, scope: !2184)
!2200 = !DILocation(line: 94, column: 26, scope: !2184)
!2201 = !DILocation(line: 94, column: 33, scope: !2184)
!2202 = !DILocation(line: 94, column: 31, scope: !2184)
!2203 = !DILocation(line: 94, column: 41, scope: !2184)
!2204 = !DILocation(line: 94, column: 38, scope: !2184)
!2205 = !DILocation(line: 0, scope: !2184)
!2206 = !DILocation(line: 94, column: 2, scope: !2184)
!2207 = distinct !DISubprogram(name: "kmalloc", scope: !48, file: !48, line: 591, type: !2029, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2208 = !{!2209, !2210, !2211}
!2209 = !DILocalVariable(name: "size", arg: 1, scope: !2207, file: !48, line: 591, type: !249)
!2210 = !DILocalVariable(name: "flags", arg: 2, scope: !2207, file: !48, line: 591, type: !73)
!2211 = !DILocalVariable(name: "index", scope: !2212, file: !48, line: 594, type: !7)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !48, line: 593, column: 42)
!2213 = distinct !DILexicalBlock(scope: !2207, file: !48, line: 593, column: 6)
!2214 = !DILocation(line: 591, column: 61, scope: !2207)
!2215 = !DILocation(line: 591, column: 73, scope: !2207)
!2216 = !DILocation(line: 593, column: 27, scope: !2213)
!2217 = !DILocation(line: 593, column: 6, scope: !2213)
!2218 = !DILocation(line: 593, column: 33, scope: !2213)
!2219 = !DILocation(line: 593, column: 36, scope: !2213)
!2220 = !DILocation(line: 593, column: 6, scope: !2207)
!2221 = !DILocation(line: 594, column: 3, scope: !2212)
!2222 = !DILocation(line: 594, column: 16, scope: !2212)
!2223 = !DILocation(line: 596, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2212, file: !48, line: 596, column: 7)
!2225 = !DILocation(line: 596, column: 12, scope: !2224)
!2226 = !DILocation(line: 596, column: 7, scope: !2212)
!2227 = !DILocation(line: 597, column: 25, scope: !2224)
!2228 = !DILocation(line: 597, column: 31, scope: !2224)
!2229 = !DILocation(line: 597, column: 11, scope: !2224)
!2230 = !DILocation(line: 597, column: 4, scope: !2224)
!2231 = !DILocation(line: 599, column: 11, scope: !2212)
!2232 = !DILocation(line: 599, column: 9, scope: !2212)
!2233 = !DILocation(line: 601, column: 33, scope: !2212)
!2234 = !DILocation(line: 601, column: 40, scope: !2212)
!2235 = !DILocation(line: 601, column: 20, scope: !2212)
!2236 = !DILocation(line: 601, column: 5, scope: !2212)
!2237 = !DILocation(line: 601, column: 51, scope: !2212)
!2238 = !DILocation(line: 602, column: 5, scope: !2212)
!2239 = !DILocation(line: 602, column: 12, scope: !2212)
!2240 = !DILocation(line: 600, column: 10, scope: !2212)
!2241 = !DILocation(line: 600, column: 3, scope: !2212)
!2242 = !DILocation(line: 603, column: 2, scope: !2213)
!2243 = !DILocation(line: 604, column: 19, scope: !2207)
!2244 = !DILocation(line: 604, column: 25, scope: !2207)
!2245 = !DILocation(line: 604, column: 9, scope: !2207)
!2246 = !DILocation(line: 604, column: 2, scope: !2207)
!2247 = !DILocation(line: 605, column: 1, scope: !2207)
!2248 = !DISubprogram(name: "kmalloc_large", scope: !48, file: !48, line: 531, type: !2029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2249 = distinct !DISubprogram(name: "__kmalloc_index", scope: !48, file: !48, line: 444, type: !2250, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!7, !249, !556}
!2252 = !{!2253, !2254}
!2253 = !DILocalVariable(name: "size", arg: 1, scope: !2249, file: !48, line: 444, type: !249)
!2254 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2249, file: !48, line: 445, type: !556)
!2255 = !DILocation(line: 444, column: 60, scope: !2249)
!2256 = !DILocation(line: 445, column: 16, scope: !2249)
!2257 = !DILocation(line: 447, column: 7, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 447, column: 6)
!2259 = !DILocation(line: 447, column: 6, scope: !2249)
!2260 = !DILocation(line: 448, column: 3, scope: !2258)
!2261 = !DILocation(line: 450, column: 6, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 450, column: 6)
!2263 = !DILocation(line: 450, column: 11, scope: !2262)
!2264 = !DILocation(line: 450, column: 6, scope: !2249)
!2265 = !DILocation(line: 451, column: 3, scope: !2262)
!2266 = !DILocation(line: 453, column: 32, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 453, column: 6)
!2268 = !DILocation(line: 453, column: 37, scope: !2267)
!2269 = !DILocation(line: 453, column: 42, scope: !2267)
!2270 = !DILocation(line: 453, column: 45, scope: !2267)
!2271 = !DILocation(line: 453, column: 50, scope: !2267)
!2272 = !DILocation(line: 453, column: 6, scope: !2249)
!2273 = !DILocation(line: 454, column: 3, scope: !2267)
!2274 = !DILocation(line: 455, column: 32, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 455, column: 6)
!2276 = !DILocation(line: 455, column: 37, scope: !2275)
!2277 = !DILocation(line: 455, column: 43, scope: !2275)
!2278 = !DILocation(line: 455, column: 46, scope: !2275)
!2279 = !DILocation(line: 455, column: 51, scope: !2275)
!2280 = !DILocation(line: 455, column: 6, scope: !2249)
!2281 = !DILocation(line: 456, column: 3, scope: !2275)
!2282 = !DILocation(line: 457, column: 6, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 457, column: 6)
!2284 = !DILocation(line: 457, column: 11, scope: !2283)
!2285 = !DILocation(line: 457, column: 6, scope: !2249)
!2286 = !DILocation(line: 457, column: 26, scope: !2283)
!2287 = !DILocation(line: 458, column: 6, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 458, column: 6)
!2289 = !DILocation(line: 458, column: 11, scope: !2288)
!2290 = !DILocation(line: 458, column: 6, scope: !2249)
!2291 = !DILocation(line: 458, column: 26, scope: !2288)
!2292 = !DILocation(line: 459, column: 6, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 459, column: 6)
!2294 = !DILocation(line: 459, column: 11, scope: !2293)
!2295 = !DILocation(line: 459, column: 6, scope: !2249)
!2296 = !DILocation(line: 459, column: 26, scope: !2293)
!2297 = !DILocation(line: 460, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 460, column: 6)
!2299 = !DILocation(line: 460, column: 11, scope: !2298)
!2300 = !DILocation(line: 460, column: 6, scope: !2249)
!2301 = !DILocation(line: 460, column: 26, scope: !2298)
!2302 = !DILocation(line: 461, column: 6, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 461, column: 6)
!2304 = !DILocation(line: 461, column: 11, scope: !2303)
!2305 = !DILocation(line: 461, column: 6, scope: !2249)
!2306 = !DILocation(line: 461, column: 26, scope: !2303)
!2307 = !DILocation(line: 462, column: 6, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 462, column: 6)
!2309 = !DILocation(line: 462, column: 11, scope: !2308)
!2310 = !DILocation(line: 462, column: 6, scope: !2249)
!2311 = !DILocation(line: 462, column: 26, scope: !2308)
!2312 = !DILocation(line: 463, column: 6, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 463, column: 6)
!2314 = !DILocation(line: 463, column: 11, scope: !2313)
!2315 = !DILocation(line: 463, column: 6, scope: !2249)
!2316 = !DILocation(line: 463, column: 26, scope: !2313)
!2317 = !DILocation(line: 464, column: 6, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 464, column: 6)
!2319 = !DILocation(line: 464, column: 11, scope: !2318)
!2320 = !DILocation(line: 464, column: 6, scope: !2249)
!2321 = !DILocation(line: 464, column: 26, scope: !2318)
!2322 = !DILocation(line: 465, column: 6, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 465, column: 6)
!2324 = !DILocation(line: 465, column: 11, scope: !2323)
!2325 = !DILocation(line: 465, column: 6, scope: !2249)
!2326 = !DILocation(line: 465, column: 26, scope: !2323)
!2327 = !DILocation(line: 466, column: 6, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 466, column: 6)
!2329 = !DILocation(line: 466, column: 11, scope: !2328)
!2330 = !DILocation(line: 466, column: 6, scope: !2249)
!2331 = !DILocation(line: 466, column: 26, scope: !2328)
!2332 = !DILocation(line: 467, column: 6, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 467, column: 6)
!2334 = !DILocation(line: 467, column: 11, scope: !2333)
!2335 = !DILocation(line: 467, column: 6, scope: !2249)
!2336 = !DILocation(line: 467, column: 26, scope: !2333)
!2337 = !DILocation(line: 468, column: 6, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 468, column: 6)
!2339 = !DILocation(line: 468, column: 11, scope: !2338)
!2340 = !DILocation(line: 468, column: 6, scope: !2249)
!2341 = !DILocation(line: 468, column: 26, scope: !2338)
!2342 = !DILocation(line: 469, column: 6, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 469, column: 6)
!2344 = !DILocation(line: 469, column: 11, scope: !2343)
!2345 = !DILocation(line: 469, column: 6, scope: !2249)
!2346 = !DILocation(line: 469, column: 26, scope: !2343)
!2347 = !DILocation(line: 470, column: 6, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 470, column: 6)
!2349 = !DILocation(line: 470, column: 11, scope: !2348)
!2350 = !DILocation(line: 470, column: 6, scope: !2249)
!2351 = !DILocation(line: 470, column: 26, scope: !2348)
!2352 = !DILocation(line: 471, column: 6, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 471, column: 6)
!2354 = !DILocation(line: 471, column: 11, scope: !2353)
!2355 = !DILocation(line: 471, column: 6, scope: !2249)
!2356 = !DILocation(line: 471, column: 26, scope: !2353)
!2357 = !DILocation(line: 472, column: 6, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 472, column: 6)
!2359 = !DILocation(line: 472, column: 11, scope: !2358)
!2360 = !DILocation(line: 472, column: 6, scope: !2249)
!2361 = !DILocation(line: 472, column: 26, scope: !2358)
!2362 = !DILocation(line: 473, column: 6, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 473, column: 6)
!2364 = !DILocation(line: 473, column: 11, scope: !2363)
!2365 = !DILocation(line: 473, column: 6, scope: !2249)
!2366 = !DILocation(line: 473, column: 26, scope: !2363)
!2367 = !DILocation(line: 474, column: 6, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 474, column: 6)
!2369 = !DILocation(line: 474, column: 11, scope: !2368)
!2370 = !DILocation(line: 474, column: 6, scope: !2249)
!2371 = !DILocation(line: 474, column: 27, scope: !2368)
!2372 = !DILocation(line: 475, column: 6, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 475, column: 6)
!2374 = !DILocation(line: 475, column: 11, scope: !2373)
!2375 = !DILocation(line: 475, column: 6, scope: !2249)
!2376 = !DILocation(line: 475, column: 32, scope: !2373)
!2377 = !DILocation(line: 477, column: 50, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2249, file: !48, line: 477, column: 6)
!2379 = !DILocation(line: 477, column: 6, scope: !2249)
!2380 = !DILocation(line: 478, column: 3, scope: !2378)
!2381 = !DILocation(line: 478, column: 3, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !48, line: 478, column: 3)
!2383 = distinct !DILexicalBlock(scope: !2378, file: !48, line: 478, column: 3)
!2384 = !{i32 -2142247339}
!2385 = !DILocation(line: 478, column: 3, scope: !2383)
!2386 = !DILocation(line: 480, column: 3, scope: !2378)
!2387 = !DILocation(line: 480, column: 3, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2378, file: !48, line: 480, column: 3)
!2389 = !DILocation(line: 480, column: 3, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2388, file: !48, line: 480, column: 3)
!2391 = !DILocation(line: 480, column: 3, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !48, line: 480, column: 3)
!2393 = !{i64 2152720160, i64 2152720189, i64 2152720235, i64 2152720293, i64 2152720347, i64 2152720401, i64 2152720456, i64 2152720487}
!2394 = !DILocation(line: 483, column: 2, scope: !2249)
!2395 = !DILocation(line: 484, column: 1, scope: !2249)
!2396 = !DISubprogram(name: "kmalloc_trace", scope: !48, file: !48, line: 525, type: !2397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!58, !2399, !73, !249}
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2401, line: 11, flags: DIFlagFwdDecl)
!2401 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2402 = distinct !DISubprogram(name: "kmalloc_type", scope: !48, file: !48, line: 401, type: !2403, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!47, !73, !59}
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "flags", arg: 1, scope: !2402, file: !48, line: 401, type: !73)
!2407 = !DILocalVariable(name: "caller", arg: 2, scope: !2402, file: !48, line: 401, type: !59)
!2408 = !DILocation(line: 401, column: 67, scope: !2402)
!2409 = !DILocation(line: 401, column: 88, scope: !2402)
!2410 = !DILocation(line: 407, column: 6, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2402, file: !48, line: 407, column: 6)
!2412 = !DILocation(line: 407, column: 6, scope: !2402)
!2413 = !DILocation(line: 413, column: 3, scope: !2411)
!2414 = !DILocation(line: 423, column: 38, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2402, file: !48, line: 423, column: 6)
!2416 = !DILocation(line: 423, column: 44, scope: !2415)
!2417 = !DILocation(line: 423, column: 6, scope: !2402)
!2418 = !DILocation(line: 424, column: 3, scope: !2415)
!2419 = !DILocation(line: 426, column: 3, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2402, file: !48, line: 425, column: 6)
!2421 = !DILocation(line: 429, column: 1, scope: !2402)
!2422 = !DISubprogram(name: "__kmalloc", scope: !48, file: !48, line: 488, type: !2029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2423 = !DISubprogram(name: "__compiletime_assert_204", scope: !48, file: !48, line: 478, type: !1132, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2424 = distinct !DISubprogram(name: "static_call_module_notify", scope: !3, file: !3, line: 443, type: !1219, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2425)
!2425 = !{!2426, !2427, !2428, !2429, !2430}
!2426 = !DILocalVariable(name: "nb", arg: 1, scope: !2424, file: !3, line: 443, type: !1221)
!2427 = !DILocalVariable(name: "val", arg: 2, scope: !2424, file: !3, line: 444, type: !59)
!2428 = !DILocalVariable(name: "data", arg: 3, scope: !2424, file: !3, line: 444, type: !58)
!2429 = !DILocalVariable(name: "mod", scope: !2424, file: !3, line: 446, type: !102)
!2430 = !DILocalVariable(name: "ret", scope: !2424, file: !3, line: 447, type: !36)
!2431 = !DILocation(line: 443, column: 61, scope: !2424)
!2432 = !DILocation(line: 444, column: 24, scope: !2424)
!2433 = !DILocation(line: 444, column: 35, scope: !2424)
!2434 = !DILocation(line: 446, column: 2, scope: !2424)
!2435 = !DILocation(line: 446, column: 17, scope: !2424)
!2436 = !DILocation(line: 446, column: 23, scope: !2424)
!2437 = !DILocation(line: 447, column: 2, scope: !2424)
!2438 = !DILocation(line: 447, column: 6, scope: !2424)
!2439 = !DILocation(line: 449, column: 2, scope: !2424)
!2440 = !DILocation(line: 450, column: 2, scope: !2424)
!2441 = !DILocation(line: 452, column: 10, scope: !2424)
!2442 = !DILocation(line: 452, column: 2, scope: !2424)
!2443 = !DILocation(line: 454, column: 32, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 452, column: 15)
!2445 = !DILocation(line: 454, column: 9, scope: !2444)
!2446 = !DILocation(line: 454, column: 7, scope: !2444)
!2447 = !DILocation(line: 455, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 455, column: 7)
!2449 = !DILocation(line: 455, column: 7, scope: !2444)
!2450 = !DILocation(line: 456, column: 4, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 456, column: 4)
!2452 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 455, column: 12)
!2453 = !DILocation(line: 456, column: 4, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 456, column: 4)
!2455 = !DILocation(line: 457, column: 27, scope: !2452)
!2456 = !DILocation(line: 457, column: 4, scope: !2452)
!2457 = !DILocation(line: 458, column: 3, scope: !2452)
!2458 = !DILocation(line: 459, column: 3, scope: !2444)
!2459 = !DILocation(line: 461, column: 26, scope: !2444)
!2460 = !DILocation(line: 461, column: 3, scope: !2444)
!2461 = !DILocation(line: 462, column: 3, scope: !2444)
!2462 = !DILocation(line: 465, column: 2, scope: !2424)
!2463 = !DILocation(line: 466, column: 2, scope: !2424)
!2464 = !DILocation(line: 468, column: 29, scope: !2424)
!2465 = !DILocation(line: 468, column: 9, scope: !2424)
!2466 = !DILocation(line: 469, column: 1, scope: !2424)
!2467 = !DILocation(line: 468, column: 2, scope: !2424)
!2468 = distinct !DISubprogram(name: "static_call_add_module", scope: !3, file: !3, line: 364, type: !811, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2469)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2478, !2479}
!2470 = !DILocalVariable(name: "mod", arg: 1, scope: !2468, file: !3, line: 364, type: !102)
!2471 = !DILocalVariable(name: "start", scope: !2468, file: !3, line: 366, type: !60)
!2472 = !DILocalVariable(name: "stop", scope: !2468, file: !3, line: 367, type: !60)
!2473 = !DILocalVariable(name: "site", scope: !2468, file: !3, line: 368, type: !60)
!2474 = !DILocalVariable(name: "s_key", scope: !2475, file: !3, line: 371, type: !59)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 370, column: 43)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 370, column: 2)
!2477 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 370, column: 2)
!2478 = !DILocalVariable(name: "addr", scope: !2475, file: !3, line: 372, type: !59)
!2479 = !DILocalVariable(name: "key", scope: !2475, file: !3, line: 373, type: !59)
!2480 = !DILocation(line: 364, column: 50, scope: !2468)
!2481 = !DILocation(line: 366, column: 2, scope: !2468)
!2482 = !DILocation(line: 366, column: 27, scope: !2468)
!2483 = !DILocation(line: 366, column: 35, scope: !2468)
!2484 = !DILocation(line: 366, column: 40, scope: !2468)
!2485 = !DILocation(line: 367, column: 2, scope: !2468)
!2486 = !DILocation(line: 367, column: 27, scope: !2468)
!2487 = !DILocation(line: 367, column: 34, scope: !2468)
!2488 = !DILocation(line: 367, column: 42, scope: !2468)
!2489 = !DILocation(line: 367, column: 47, scope: !2468)
!2490 = !DILocation(line: 367, column: 40, scope: !2468)
!2491 = !DILocation(line: 368, column: 2, scope: !2468)
!2492 = !DILocation(line: 368, column: 27, scope: !2468)
!2493 = !DILocation(line: 370, column: 14, scope: !2477)
!2494 = !DILocation(line: 370, column: 12, scope: !2477)
!2495 = !DILocation(line: 370, column: 7, scope: !2477)
!2496 = !DILocation(line: 370, column: 21, scope: !2476)
!2497 = !DILocation(line: 370, column: 29, scope: !2476)
!2498 = !DILocation(line: 370, column: 26, scope: !2476)
!2499 = !DILocation(line: 370, column: 2, scope: !2477)
!2500 = !DILocation(line: 371, column: 3, scope: !2475)
!2501 = !DILocation(line: 371, column: 17, scope: !2475)
!2502 = !DILocation(line: 371, column: 43, scope: !2475)
!2503 = !DILocation(line: 371, column: 25, scope: !2475)
!2504 = !DILocation(line: 372, column: 3, scope: !2475)
!2505 = !DILocation(line: 372, column: 17, scope: !2475)
!2506 = !DILocation(line: 372, column: 24, scope: !2475)
!2507 = !DILocation(line: 372, column: 30, scope: !2475)
!2508 = !DILocation(line: 373, column: 3, scope: !2475)
!2509 = !DILocation(line: 373, column: 17, scope: !2475)
!2510 = !DILocation(line: 386, column: 28, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 386, column: 7)
!2512 = !DILocation(line: 386, column: 8, scope: !2511)
!2513 = !DILocation(line: 386, column: 7, scope: !2475)
!2514 = !DILocation(line: 387, column: 4, scope: !2511)
!2515 = !DILocation(line: 389, column: 26, scope: !2475)
!2516 = !DILocation(line: 389, column: 9, scope: !2475)
!2517 = !DILocation(line: 389, column: 7, scope: !2475)
!2518 = !DILocation(line: 390, column: 8, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 390, column: 7)
!2520 = !DILocation(line: 390, column: 7, scope: !2475)
!2521 = !DILocation(line: 391, column: 4, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 391, column: 4)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 390, column: 13)
!2524 = !DILocation(line: 391, column: 4, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 391, column: 4)
!2526 = !DILocation(line: 393, column: 4, scope: !2523)
!2527 = !DILocation(line: 396, column: 10, scope: !2475)
!2528 = !DILocation(line: 396, column: 16, scope: !2475)
!2529 = !DILocation(line: 396, column: 7, scope: !2475)
!2530 = !DILocation(line: 397, column: 15, scope: !2475)
!2531 = !DILocation(line: 397, column: 28, scope: !2475)
!2532 = !DILocation(line: 397, column: 34, scope: !2475)
!2533 = !DILocation(line: 397, column: 21, scope: !2475)
!2534 = !DILocation(line: 397, column: 19, scope: !2475)
!2535 = !DILocation(line: 397, column: 3, scope: !2475)
!2536 = !DILocation(line: 397, column: 9, scope: !2475)
!2537 = !DILocation(line: 397, column: 13, scope: !2475)
!2538 = !DILocation(line: 398, column: 2, scope: !2476)
!2539 = !DILocation(line: 398, column: 2, scope: !2475)
!2540 = !DILocation(line: 370, column: 39, scope: !2476)
!2541 = !DILocation(line: 370, column: 2, scope: !2476)
!2542 = distinct !{!2542, !2499, !2543, !1408, !1409}
!2543 = !DILocation(line: 398, column: 2, scope: !2477)
!2544 = !DILocation(line: 400, column: 28, scope: !2468)
!2545 = !DILocation(line: 400, column: 33, scope: !2468)
!2546 = !DILocation(line: 400, column: 40, scope: !2468)
!2547 = !DILocation(line: 400, column: 9, scope: !2468)
!2548 = !DILocation(line: 400, column: 2, scope: !2468)
!2549 = !DILocation(line: 401, column: 1, scope: !2468)
!2550 = distinct !DISubprogram(name: "static_call_del_module", scope: !3, file: !3, line: 403, type: !815, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558, !2560}
!2552 = !DILocalVariable(name: "mod", arg: 1, scope: !2550, file: !3, line: 403, type: !102)
!2553 = !DILocalVariable(name: "start", scope: !2550, file: !3, line: 405, type: !60)
!2554 = !DILocalVariable(name: "stop", scope: !2550, file: !3, line: 406, type: !60)
!2555 = !DILocalVariable(name: "key", scope: !2550, file: !3, line: 408, type: !87)
!2556 = !DILocalVariable(name: "prev_key", scope: !2550, file: !3, line: 408, type: !87)
!2557 = !DILocalVariable(name: "site_mod", scope: !2550, file: !3, line: 409, type: !96)
!2558 = !DILocalVariable(name: "prev", scope: !2550, file: !3, line: 409, type: !2559)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!2560 = !DILocalVariable(name: "site", scope: !2550, file: !3, line: 410, type: !60)
!2561 = !DILocation(line: 403, column: 51, scope: !2550)
!2562 = !DILocation(line: 405, column: 2, scope: !2550)
!2563 = !DILocation(line: 405, column: 27, scope: !2550)
!2564 = !DILocation(line: 405, column: 35, scope: !2550)
!2565 = !DILocation(line: 405, column: 40, scope: !2550)
!2566 = !DILocation(line: 406, column: 2, scope: !2550)
!2567 = !DILocation(line: 406, column: 27, scope: !2550)
!2568 = !DILocation(line: 406, column: 34, scope: !2550)
!2569 = !DILocation(line: 406, column: 39, scope: !2550)
!2570 = !DILocation(line: 407, column: 6, scope: !2550)
!2571 = !DILocation(line: 407, column: 11, scope: !2550)
!2572 = !DILocation(line: 406, column: 57, scope: !2550)
!2573 = !DILocation(line: 408, column: 2, scope: !2550)
!2574 = !DILocation(line: 408, column: 26, scope: !2550)
!2575 = !DILocation(line: 408, column: 32, scope: !2550)
!2576 = !DILocation(line: 409, column: 2, scope: !2550)
!2577 = !DILocation(line: 409, column: 26, scope: !2550)
!2578 = !DILocation(line: 409, column: 38, scope: !2550)
!2579 = !DILocation(line: 410, column: 2, scope: !2550)
!2580 = !DILocation(line: 410, column: 27, scope: !2550)
!2581 = !DILocation(line: 412, column: 14, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 412, column: 2)
!2583 = !DILocation(line: 412, column: 12, scope: !2582)
!2584 = !DILocation(line: 412, column: 7, scope: !2582)
!2585 = !DILocation(line: 412, column: 21, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 412, column: 2)
!2587 = !DILocation(line: 412, column: 28, scope: !2586)
!2588 = !DILocation(line: 412, column: 26, scope: !2586)
!2589 = !DILocation(line: 412, column: 2, scope: !2582)
!2590 = !DILocation(line: 413, column: 25, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 412, column: 42)
!2592 = !DILocation(line: 413, column: 9, scope: !2591)
!2593 = !DILocation(line: 413, column: 7, scope: !2591)
!2594 = !DILocation(line: 422, column: 33, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 422, column: 7)
!2596 = !DILocation(line: 422, column: 8, scope: !2595)
!2597 = !DILocation(line: 422, column: 7, scope: !2591)
!2598 = !DILocation(line: 423, column: 4, scope: !2595)
!2599 = !DILocation(line: 425, column: 7, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 425, column: 7)
!2601 = !DILocation(line: 425, column: 14, scope: !2600)
!2602 = !DILocation(line: 425, column: 11, scope: !2600)
!2603 = !DILocation(line: 425, column: 7, scope: !2591)
!2604 = !DILocation(line: 426, column: 4, scope: !2600)
!2605 = !DILocation(line: 428, column: 14, scope: !2591)
!2606 = !DILocation(line: 428, column: 12, scope: !2591)
!2607 = !DILocation(line: 430, column: 16, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 430, column: 3)
!2609 = !DILocation(line: 430, column: 21, scope: !2608)
!2610 = !DILocation(line: 430, column: 13, scope: !2608)
!2611 = !DILocation(line: 430, column: 38, scope: !2608)
!2612 = !DILocation(line: 430, column: 43, scope: !2608)
!2613 = !DILocation(line: 430, column: 36, scope: !2608)
!2614 = !DILocation(line: 430, column: 8, scope: !2608)
!2615 = !DILocation(line: 431, column: 8, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 430, column: 3)
!2617 = !DILocation(line: 431, column: 17, scope: !2616)
!2618 = !DILocation(line: 431, column: 20, scope: !2616)
!2619 = !DILocation(line: 431, column: 30, scope: !2616)
!2620 = !DILocation(line: 431, column: 37, scope: !2616)
!2621 = !DILocation(line: 431, column: 34, scope: !2616)
!2622 = !DILocation(line: 0, scope: !2616)
!2623 = !DILocation(line: 430, column: 3, scope: !2608)
!2624 = !DILocation(line: 432, column: 16, scope: !2616)
!2625 = !DILocation(line: 432, column: 26, scope: !2616)
!2626 = !DILocation(line: 432, column: 13, scope: !2616)
!2627 = !DILocation(line: 432, column: 43, scope: !2616)
!2628 = !DILocation(line: 432, column: 53, scope: !2616)
!2629 = !DILocation(line: 432, column: 41, scope: !2616)
!2630 = !DILocation(line: 430, column: 3, scope: !2616)
!2631 = distinct !{!2631, !2623, !2632, !1408, !1409}
!2632 = !DILocation(line: 433, column: 4, scope: !2608)
!2633 = !DILocation(line: 435, column: 8, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 435, column: 7)
!2635 = !DILocation(line: 435, column: 7, scope: !2591)
!2636 = !DILocation(line: 436, column: 4, scope: !2634)
!2637 = !DILocation(line: 438, column: 11, scope: !2591)
!2638 = !DILocation(line: 438, column: 21, scope: !2591)
!2639 = !DILocation(line: 438, column: 4, scope: !2591)
!2640 = !DILocation(line: 438, column: 9, scope: !2591)
!2641 = !DILocation(line: 439, column: 9, scope: !2591)
!2642 = !DILocation(line: 439, column: 3, scope: !2591)
!2643 = !DILocation(line: 440, column: 2, scope: !2591)
!2644 = !DILocation(line: 412, column: 38, scope: !2586)
!2645 = !DILocation(line: 412, column: 2, scope: !2586)
!2646 = distinct !{!2646, !2589, !2647, !1408, !1409}
!2647 = !DILocation(line: 440, column: 2, scope: !2582)
!2648 = !DILocation(line: 441, column: 1, scope: !2550)
!2649 = distinct !DISubprogram(name: "notifier_from_errno", scope: !1214, file: !1214, line: 196, type: !2650, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!36, !36}
!2652 = !{!2653}
!2653 = !DILocalVariable(name: "err", arg: 1, scope: !2649, file: !1214, line: 196, type: !36)
!2654 = !DILocation(line: 196, column: 43, scope: !2649)
!2655 = !DILocation(line: 198, column: 6, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2649, file: !1214, line: 198, column: 6)
!2657 = !DILocation(line: 198, column: 6, scope: !2649)
!2658 = !DILocation(line: 199, column: 42, scope: !2656)
!2659 = !DILocation(line: 199, column: 40, scope: !2656)
!2660 = !DILocation(line: 199, column: 27, scope: !2656)
!2661 = !DILocation(line: 199, column: 3, scope: !2656)
!2662 = !DILocation(line: 201, column: 2, scope: !2649)
!2663 = !DILocation(line: 202, column: 1, scope: !2649)
!2664 = distinct !DISubprogram(name: "tramp_key_lookup", scope: !3, file: !3, line: 347, type: !2665, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!59, !59}
!2667 = !{!2668, !2669, !2675, !2676, !2677}
!2668 = !DILocalVariable(name: "addr", arg: 1, scope: !2664, file: !3, line: 347, type: !59)
!2669 = !DILocalVariable(name: "start", scope: !2664, file: !3, line: 349, type: !2670)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_tramp_key", file: !98, line: 176, size: 64, elements: !2672)
!2672 = !{!2673, !2674}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "tramp", scope: !2671, file: !98, line: 177, baseType: !65, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2671, file: !98, line: 178, baseType: !65, size: 32, offset: 32)
!2675 = !DILocalVariable(name: "stop", scope: !2664, file: !3, line: 350, type: !2670)
!2676 = !DILocalVariable(name: "tramp_key", scope: !2664, file: !3, line: 351, type: !2670)
!2677 = !DILocalVariable(name: "tramp", scope: !2678, file: !3, line: 354, type: !59)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 353, column: 58)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 353, column: 2)
!2680 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 353, column: 2)
!2681 = !DILocation(line: 347, column: 53, scope: !2664)
!2682 = !DILocation(line: 349, column: 2, scope: !2664)
!2683 = !DILocation(line: 349, column: 32, scope: !2664)
!2684 = !DILocation(line: 350, column: 2, scope: !2664)
!2685 = !DILocation(line: 350, column: 32, scope: !2664)
!2686 = !DILocation(line: 351, column: 2, scope: !2664)
!2687 = !DILocation(line: 351, column: 32, scope: !2664)
!2688 = !DILocation(line: 353, column: 19, scope: !2680)
!2689 = !DILocation(line: 353, column: 17, scope: !2680)
!2690 = !DILocation(line: 353, column: 7, scope: !2680)
!2691 = !DILocation(line: 353, column: 26, scope: !2679)
!2692 = !DILocation(line: 353, column: 39, scope: !2679)
!2693 = !DILocation(line: 353, column: 36, scope: !2679)
!2694 = !DILocation(line: 353, column: 2, scope: !2680)
!2695 = !DILocation(line: 354, column: 3, scope: !2678)
!2696 = !DILocation(line: 354, column: 17, scope: !2678)
!2697 = !DILocation(line: 356, column: 17, scope: !2678)
!2698 = !DILocation(line: 356, column: 28, scope: !2678)
!2699 = !DILocation(line: 356, column: 11, scope: !2678)
!2700 = !DILocation(line: 356, column: 43, scope: !2678)
!2701 = !DILocation(line: 356, column: 54, scope: !2678)
!2702 = !DILocation(line: 356, column: 36, scope: !2678)
!2703 = !DILocation(line: 356, column: 34, scope: !2678)
!2704 = !DILocation(line: 356, column: 9, scope: !2678)
!2705 = !DILocation(line: 357, column: 7, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 357, column: 7)
!2707 = !DILocation(line: 357, column: 16, scope: !2706)
!2708 = !DILocation(line: 357, column: 13, scope: !2706)
!2709 = !DILocation(line: 357, column: 7, scope: !2678)
!2710 = !DILocation(line: 358, column: 17, scope: !2706)
!2711 = !DILocation(line: 358, column: 28, scope: !2706)
!2712 = !DILocation(line: 358, column: 11, scope: !2706)
!2713 = !DILocation(line: 358, column: 41, scope: !2706)
!2714 = !DILocation(line: 358, column: 52, scope: !2706)
!2715 = !DILocation(line: 358, column: 34, scope: !2706)
!2716 = !DILocation(line: 358, column: 32, scope: !2706)
!2717 = !DILocation(line: 358, column: 4, scope: !2706)
!2718 = !DILocation(line: 359, column: 2, scope: !2679)
!2719 = !DILocation(line: 359, column: 2, scope: !2678)
!2720 = !DILocation(line: 353, column: 54, scope: !2679)
!2721 = !DILocation(line: 353, column: 2, scope: !2679)
!2722 = distinct !{!2722, !2694, !2723, !1408, !1409}
!2723 = !DILocation(line: 359, column: 2, scope: !2680)
!2724 = !DILocation(line: 361, column: 2, scope: !2664)
!2725 = !DILocation(line: 362, column: 1, scope: !2664)
!2726 = !DISubprogram(name: "kfree", scope: !48, file: !48, line: 227, type: !2727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !477}
