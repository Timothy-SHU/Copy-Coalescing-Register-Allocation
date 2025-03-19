; ModuleID = 'drivers/cpuidle/governors/menu.c'
source_filename = "drivers/cpuidle/governors/menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init..kmod_menu__195_590_init_menu\22, \22a\22\09\09"
module asm "__initcall__kmod_menu__195_590_init_menu2:\09\09\09"
module asm ".long\09__initstub__kmod_menu__195_590_init_menu2 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.menu_device = type { i32, i32, i64, i32, [12 x i32], [8 x i32], i32 }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID___addressable___initstub__kmod_menu__195_590_init_menu2196 = internal global ptr @__initstub__kmod_menu__195_590_init_menu2, section ".discard.addressable", align 8, !dbg !0
@menu_governor = internal global %struct.cpuidle_governor { [16 x i8] c"menu\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, i32 20, ptr @menu_enable_device, ptr null, ptr @menu_select, ptr @menu_reflect }, align 8, !dbg !43
@menu_devices = internal global %struct.menu_device zeroinitializer, section ".data..percpu", align 8, !dbg !165
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@.str = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1, !dbg !167
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_menu__195_590_init_menu2196], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_menu__195_590_init_menu2() #0 section ".init.text" align 16 !dbg !181 {
entry:
  %call = call i32 @init_menu() #8, !dbg !184
  ret i32 %call, !dbg !184
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_menu() #0 section ".init.text" align 16 !dbg !185 {
entry:
  %call = call i32 @cpuidle_register_governor(ptr noundef @menu_governor) #9, !dbg !186
  ret i32 %call, !dbg !187
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !188 dso_local i32 @cpuidle_register_governor(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @menu_enable_device(ptr noundef %drv, ptr noundef %dev) #2 align 16 !dbg !192 {
entry:
  %drv.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !194, metadata !DIExpression()), !dbg !205
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !195, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %data, metadata !196, metadata !DIExpression()), !dbg !208
  br label %do.body, !dbg !209

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !197, metadata !DIExpression()), !dbg !210
  store ptr null, ptr %__vpp_verify, align 8, !dbg !210
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !209
  br label %do.cond, !dbg !210

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !210

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !202, metadata !DIExpression()), !dbg !211
  store i64 ptrtoint (ptr @menu_devices to i64), ptr %__ptr, align 8, !dbg !211
  %1 = load i64, ptr %__ptr, align 8, !dbg !211
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !211
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %2, i32 0, i32 1, !dbg !211
  %3 = load i32, ptr %cpu, align 4, !dbg !211
  %idxprom = zext i32 %3 to i64, !dbg !211
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !211
  %4 = load i64, ptr %arrayidx, align 8, !dbg !211
  %add = add i64 %1, %4, !dbg !211
  %5 = inttoptr i64 %add to ptr, !dbg !211
  store ptr %5, ptr %tmp1, align 8, !dbg !211
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !209
  %6 = load ptr, ptr %tmp1, align 8, !dbg !211
  store ptr %6, ptr %tmp, align 8, !dbg !210
  %7 = load ptr, ptr %tmp, align 8, !dbg !209
  store ptr %7, ptr %data, align 8, !dbg !208
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %i, metadata !204, metadata !DIExpression()), !dbg !213
  %8 = load ptr, ptr %data, align 8, !dbg !214
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 104, i1 false), !dbg !215
  store i32 0, ptr %i, align 4, !dbg !216
  br label %for.cond, !dbg !218

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, ptr %i, align 4, !dbg !219
  %cmp = icmp slt i32 %9, 12, !dbg !221
  br i1 %cmp, label %for.body, label %for.end, !dbg !222

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %data, align 8, !dbg !223
  %correction_factor = getelementptr inbounds %struct.menu_device, ptr %10, i32 0, i32 4, !dbg !224
  %11 = load i32, ptr %i, align 4, !dbg !225
  %idxprom2 = sext i32 %11 to i64, !dbg !223
  %arrayidx3 = getelementptr [12 x i32], ptr %correction_factor, i64 0, i64 %idxprom2, !dbg !223
  store i32 8192, ptr %arrayidx3, align 4, !dbg !226
  br label %for.inc, !dbg !223

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !227
  %inc = add i32 %12, 1, !dbg !227
  store i32 %inc, ptr %i, align 4, !dbg !227
  br label %for.cond, !dbg !228, !llvm.loop !229

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !233
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10, !dbg !233
  ret i32 0, !dbg !234
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @menu_select(ptr noundef %drv, ptr noundef %dev, ptr noundef %stop_tick) #2 align 16 !dbg !235 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %stop_tick.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %latency_req = alloca i64, align 8
  %predicted_ns = alloca i64, align 8
  %interactivity_req = alloca i64, align 8
  %nr_iowaiters = alloca i32, align 4
  %delta = alloca i64, align 8
  %delta_tick = alloca i64, align 8
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  %timer_us = alloca i32, align 4
  %__UNIQUE_ID___x193 = alloca i64, align 8
  %__UNIQUE_ID___y194 = alloca i64, align 8
  %tmp26 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !237, metadata !DIExpression()), !dbg !265
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !238, metadata !DIExpression()), !dbg !266
  store ptr %stop_tick, ptr %stop_tick.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stop_tick.addr, metadata !239, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %data, metadata !240, metadata !DIExpression()), !dbg !269
  br label %do.body, !dbg !270

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !241, metadata !DIExpression()), !dbg !271
  store ptr null, ptr %__vpp_verify, align 8, !dbg !271
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !270
  br label %do.cond, !dbg !271

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !271

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !272
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !244, metadata !DIExpression()), !dbg !272
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @menu_devices) #11, !dbg !272, !srcloc !273
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !272
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !272
  %3 = inttoptr i64 %2 to ptr, !dbg !272
  store ptr %3, ptr %tmp1, align 8, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !270
  %4 = load ptr, ptr %tmp1, align 8, !dbg !272
  store ptr %4, ptr %tmp, align 8, !dbg !271
  %5 = load ptr, ptr %tmp, align 8, !dbg !270
  store ptr %5, ptr %data, align 8, !dbg !269
  call void @llvm.lifetime.start.p0(i64 8, ptr %latency_req) #10, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %latency_req, metadata !246, metadata !DIExpression()), !dbg !275
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !276
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %6, i32 0, i32 1, !dbg !277
  %7 = load i32, ptr %cpu, align 4, !dbg !277
  %call = call i64 @cpuidle_governor_latency_req(i32 noundef %7) #9, !dbg !278
  store i64 %call, ptr %latency_req, align 8, !dbg !275
  call void @llvm.lifetime.start.p0(i64 8, ptr %predicted_ns) #10, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %predicted_ns, metadata !247, metadata !DIExpression()), !dbg !280
  call void @llvm.lifetime.start.p0(i64 8, ptr %interactivity_req) #10, !dbg !281
  call void @llvm.dbg.declare(metadata ptr %interactivity_req, metadata !248, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_iowaiters) #10, !dbg !283
  call void @llvm.dbg.declare(metadata ptr %nr_iowaiters, metadata !249, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #10, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !250, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta_tick) #10, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %delta_tick, metadata !251, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %i, metadata !252, metadata !DIExpression()), !dbg !289
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #10, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !253, metadata !DIExpression()), !dbg !290
  %8 = load ptr, ptr %data, align 8, !dbg !291
  %needs_update = getelementptr inbounds %struct.menu_device, ptr %8, i32 0, i32 0, !dbg !293
  %9 = load i32, ptr %needs_update, align 8, !dbg !293
  %tobool = icmp ne i32 %9, 0, !dbg !291
  br i1 %tobool, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %do.end
  %10 = load ptr, ptr %drv.addr, align 8, !dbg !295
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !297
  call void @menu_update(ptr noundef %10, ptr noundef %11) #9, !dbg !298
  %12 = load ptr, ptr %data, align 8, !dbg !299
  %needs_update2 = getelementptr inbounds %struct.menu_device, ptr %12, i32 0, i32 0, !dbg !300
  store i32 0, ptr %needs_update2, align 8, !dbg !301
  br label %if.end, !dbg !302

if.end:                                           ; preds = %if.then, %do.end
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !303
  %cpu3 = getelementptr inbounds %struct.cpuidle_device, ptr %13, i32 0, i32 1, !dbg !304
  %14 = load i32, ptr %cpu3, align 4, !dbg !304
  %call4 = call i32 @nr_iowait_cpu(i32 noundef %14) #9, !dbg !305
  store i32 %call4, ptr %nr_iowaiters, align 4, !dbg !306
  %15 = load ptr, ptr %data, align 8, !dbg !307
  %call5 = call i32 @get_typical_interval(ptr noundef %15) #9, !dbg !308
  %conv = zext i32 %call5 to i64, !dbg !308
  %mul = mul i64 %conv, 1000, !dbg !309
  store i64 %mul, ptr %predicted_ns, align 8, !dbg !310
  %16 = load i64, ptr %predicted_ns, align 8, !dbg !311
  %cmp = icmp ugt i64 %16, 15000, !dbg !312
  br i1 %cmp, label %if.then7, label %if.else, !dbg !313

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %timer_us) #10, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %timer_us, metadata !254, metadata !DIExpression()), !dbg !315
  %call8 = call i64 @tick_nohz_get_sleep_length(ptr noundef %delta_tick) #9, !dbg !316
  store i64 %call8, ptr %delta, align 8, !dbg !317
  %17 = load i64, ptr %delta, align 8, !dbg !318
  %cmp9 = icmp slt i64 %17, 0, !dbg !318
  %lnot = xor i1 %cmp9, true, !dbg !318
  %lnot11 = xor i1 %lnot, true, !dbg !318
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !318
  %conv12 = sext i32 %lnot.ext to i64, !dbg !318
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !318
  %tobool13 = icmp ne i64 %expval, 0, !dbg !318
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !320

if.then14:                                        ; preds = %if.then7
  store i64 0, ptr %delta, align 8, !dbg !321
  store i64 0, ptr %delta_tick, align 8, !dbg !323
  br label %if.end15, !dbg !324

if.end15:                                         ; preds = %if.then14, %if.then7
  %18 = load i64, ptr %delta, align 8, !dbg !325
  %19 = load ptr, ptr %data, align 8, !dbg !326
  %next_timer_ns = getelementptr inbounds %struct.menu_device, ptr %19, i32 0, i32 2, !dbg !327
  store i64 %18, ptr %next_timer_ns, align 8, !dbg !328
  %20 = load ptr, ptr %data, align 8, !dbg !329
  %next_timer_ns16 = getelementptr inbounds %struct.menu_device, ptr %20, i32 0, i32 2, !dbg !330
  %21 = load i64, ptr %next_timer_ns16, align 8, !dbg !330
  %22 = load i32, ptr %nr_iowaiters, align 4, !dbg !331
  %call17 = call i32 @which_bucket(i64 noundef %21, i32 noundef %22) #9, !dbg !332
  %23 = load ptr, ptr %data, align 8, !dbg !333
  %bucket = getelementptr inbounds %struct.menu_device, ptr %23, i32 0, i32 3, !dbg !334
  store i32 %call17, ptr %bucket, align 8, !dbg !335
  %24 = load ptr, ptr %data, align 8, !dbg !336
  %next_timer_ns18 = getelementptr inbounds %struct.menu_device, ptr %24, i32 0, i32 2, !dbg !337
  %25 = load i64, ptr %next_timer_ns18, align 8, !dbg !337
  %26 = load ptr, ptr %data, align 8, !dbg !338
  %correction_factor = getelementptr inbounds %struct.menu_device, ptr %26, i32 0, i32 4, !dbg !339
  %27 = load ptr, ptr %data, align 8, !dbg !340
  %bucket19 = getelementptr inbounds %struct.menu_device, ptr %27, i32 0, i32 3, !dbg !341
  %28 = load i32, ptr %bucket19, align 8, !dbg !341
  %idxprom = zext i32 %28 to i64, !dbg !338
  %arrayidx = getelementptr [12 x i32], ptr %correction_factor, i64 0, i64 %idxprom, !dbg !338
  %29 = load i32, ptr %arrayidx, align 4, !dbg !338
  %conv20 = zext i32 %29 to i64, !dbg !338
  %mul21 = mul i64 %25, %conv20, !dbg !342
  %add = add i64 4096000, %mul21, !dbg !343
  %call22 = call i64 @div_u64(i64 noundef %add, i32 noundef 8192000) #9, !dbg !344
  %conv23 = trunc i64 %call22 to i32, !dbg !344
  store i32 %conv23, ptr %timer_us, align 4, !dbg !345
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x193) #10, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x193, metadata !257, metadata !DIExpression()), !dbg !346
  %30 = load i32, ptr %timer_us, align 4, !dbg !346
  %conv24 = zext i32 %30 to i64, !dbg !346
  %mul25 = mul i64 %conv24, 1000, !dbg !346
  store i64 %mul25, ptr %__UNIQUE_ID___x193, align 8, !dbg !346
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y194) #10, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y194, metadata !259, metadata !DIExpression()), !dbg !346
  %31 = load i64, ptr %predicted_ns, align 8, !dbg !346
  store i64 %31, ptr %__UNIQUE_ID___y194, align 8, !dbg !346
  %32 = load i64, ptr %__UNIQUE_ID___x193, align 8, !dbg !346
  %33 = load i64, ptr %__UNIQUE_ID___y194, align 8, !dbg !346
  %cmp27 = icmp ult i64 %32, %33, !dbg !346
  br i1 %cmp27, label %cond.true, label %cond.false, !dbg !346

cond.true:                                        ; preds = %if.end15
  %34 = load i64, ptr %__UNIQUE_ID___x193, align 8, !dbg !346
  br label %cond.end, !dbg !346

cond.false:                                       ; preds = %if.end15
  %35 = load i64, ptr %__UNIQUE_ID___y194, align 8, !dbg !346
  br label %cond.end, !dbg !346

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %34, %cond.true ], [ %35, %cond.false ], !dbg !346
  store i64 %cond, ptr %tmp26, align 8, !dbg !346
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y194) #10, !dbg !347
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x193) #10, !dbg !347
  %36 = load i64, ptr %tmp26, align 8, !dbg !346
  store i64 %36, ptr %predicted_ns, align 8, !dbg !348
  call void @llvm.lifetime.end.p0(i64 4, ptr %timer_us) #10, !dbg !349
  br label %if.end32, !dbg !350

if.else:                                          ; preds = %if.end
  %37 = load ptr, ptr %data, align 8, !dbg !351
  %next_timer_ns29 = getelementptr inbounds %struct.menu_device, ptr %37, i32 0, i32 2, !dbg !353
  store i64 9223372036854775807, ptr %next_timer_ns29, align 8, !dbg !354
  store i64 500000, ptr %delta_tick, align 8, !dbg !355
  %38 = load i32, ptr %nr_iowaiters, align 4, !dbg !356
  %call30 = call i32 @which_bucket(i64 noundef 9223372036854775807, i32 noundef %38) #9, !dbg !357
  %39 = load ptr, ptr %data, align 8, !dbg !358
  %bucket31 = getelementptr inbounds %struct.menu_device, ptr %39, i32 0, i32 3, !dbg !359
  store i32 %call30, ptr %bucket31, align 8, !dbg !360
  br label %if.end32

if.end32:                                         ; preds = %if.else, %cond.end
  %40 = load ptr, ptr %drv.addr, align 8, !dbg !361
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %40, i32 0, i32 4, !dbg !361
  %41 = load i32, ptr %state_count, align 8, !dbg !361
  %cmp33 = icmp sle i32 %41, 1, !dbg !361
  br i1 %cmp33, label %lor.end, label %lor.rhs, !dbg !361

lor.rhs:                                          ; preds = %if.end32
  %42 = load i64, ptr %latency_req, align 8, !dbg !361
  %cmp35 = icmp eq i64 %42, 0, !dbg !361
  br label %lor.end, !dbg !361

lor.end:                                          ; preds = %lor.rhs, %if.end32
  %43 = phi i1 [ true, %if.end32 ], [ %cmp35, %lor.rhs ]
  %lnot37 = xor i1 %43, true, !dbg !361
  %lnot39 = xor i1 %lnot37, true, !dbg !361
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !361
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !361
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !361
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !361
  br i1 %tobool43, label %if.then55, label %lor.lhs.false, !dbg !363

lor.lhs.false:                                    ; preds = %lor.end
  %44 = load ptr, ptr %data, align 8, !dbg !364
  %next_timer_ns44 = getelementptr inbounds %struct.menu_device, ptr %44, i32 0, i32 2, !dbg !365
  %45 = load i64, ptr %next_timer_ns44, align 8, !dbg !365
  %46 = load ptr, ptr %drv.addr, align 8, !dbg !366
  %states = getelementptr inbounds %struct.cpuidle_driver, ptr %46, i32 0, i32 3, !dbg !367
  %arrayidx45 = getelementptr [10 x %struct.cpuidle_state], ptr %states, i64 0, i64 1, !dbg !366
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx45, i32 0, i32 3, !dbg !368
  %47 = load i64, ptr %target_residency_ns, align 8, !dbg !368
  %cmp46 = icmp ult i64 %45, %47, !dbg !369
  br i1 %cmp46, label %land.lhs.true, label %lor.lhs.false48, !dbg !370

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %48 = load i64, ptr %latency_req, align 8, !dbg !371
  %49 = load ptr, ptr %drv.addr, align 8, !dbg !372
  %states49 = getelementptr inbounds %struct.cpuidle_driver, ptr %49, i32 0, i32 3, !dbg !373
  %arrayidx50 = getelementptr [10 x %struct.cpuidle_state], ptr %states49, i64 0, i64 1, !dbg !372
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx50, i32 0, i32 2, !dbg !374
  %50 = load i64, ptr %exit_latency_ns, align 8, !dbg !374
  %cmp51 = icmp slt i64 %48, %50, !dbg !375
  br i1 %cmp51, label %land.lhs.true, label %if.end62, !dbg !376

land.lhs.true:                                    ; preds = %lor.lhs.false48, %lor.lhs.false
  %51 = load ptr, ptr %dev.addr, align 8, !dbg !377
  %states_usage = getelementptr inbounds %struct.cpuidle_device, ptr %51, i32 0, i32 7, !dbg !378
  %arrayidx53 = getelementptr [10 x %struct.cpuidle_state_usage], ptr %states_usage, i64 0, i64 0, !dbg !377
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, ptr %arrayidx53, i32 0, i32 0, !dbg !379
  %52 = load i64, ptr %disable, align 8, !dbg !379
  %tobool54 = icmp ne i64 %52, 0, !dbg !377
  br i1 %tobool54, label %if.end62, label %if.then55, !dbg !380

if.then55:                                        ; preds = %land.lhs.true, %lor.end
  %53 = load ptr, ptr %drv.addr, align 8, !dbg !381
  %states56 = getelementptr inbounds %struct.cpuidle_driver, ptr %53, i32 0, i32 3, !dbg !383
  %arrayidx57 = getelementptr [10 x %struct.cpuidle_state], ptr %states56, i64 0, i64 0, !dbg !381
  %flags = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx57, i32 0, i32 4, !dbg !384
  %54 = load i32, ptr %flags, align 8, !dbg !384
  %conv58 = zext i32 %54 to i64, !dbg !381
  %and = and i64 %conv58, 1, !dbg !385
  %tobool59 = icmp ne i64 %and, 0, !dbg !386
  %lnot60 = xor i1 %tobool59, true, !dbg !386
  %55 = load ptr, ptr %stop_tick.addr, align 8, !dbg !387
  %frombool = zext i1 %lnot60 to i8, !dbg !388
  store i8 %frombool, ptr %55, align 1, !dbg !388
  store i32 0, ptr %retval, align 4, !dbg !389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !389

if.end62:                                         ; preds = %land.lhs.true, %lor.lhs.false48
  %call63 = call zeroext i1 @tick_nohz_tick_stopped() #9, !dbg !390
  br i1 %call63, label %if.then64, label %if.else70, !dbg !392

if.then64:                                        ; preds = %if.end62
  %56 = load i64, ptr %predicted_ns, align 8, !dbg !393
  %cmp65 = icmp ult i64 %56, 1000000, !dbg !396
  br i1 %cmp65, label %if.then67, label %if.end69, !dbg !397

if.then67:                                        ; preds = %if.then64
  %57 = load ptr, ptr %data, align 8, !dbg !398
  %next_timer_ns68 = getelementptr inbounds %struct.menu_device, ptr %57, i32 0, i32 2, !dbg !399
  %58 = load i64, ptr %next_timer_ns68, align 8, !dbg !399
  store i64 %58, ptr %predicted_ns, align 8, !dbg !400
  br label %if.end69, !dbg !401

if.end69:                                         ; preds = %if.then67, %if.then64
  br label %if.end78, !dbg !402

if.else70:                                        ; preds = %if.end62
  %59 = load i64, ptr %predicted_ns, align 8, !dbg !403
  %60 = load i32, ptr %nr_iowaiters, align 4, !dbg !405
  %call71 = call i32 @performance_multiplier(i32 noundef %60) #9, !dbg !406
  %conv72 = sext i32 %call71 to i64, !dbg !406
  %call73 = call i64 @div64_u64(i64 noundef %59, i64 noundef %conv72) #9, !dbg !407
  store i64 %call73, ptr %interactivity_req, align 8, !dbg !408
  %61 = load i64, ptr %latency_req, align 8, !dbg !409
  %62 = load i64, ptr %interactivity_req, align 8, !dbg !411
  %cmp74 = icmp ugt i64 %61, %62, !dbg !412
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !413

if.then76:                                        ; preds = %if.else70
  %63 = load i64, ptr %interactivity_req, align 8, !dbg !414
  store i64 %63, ptr %latency_req, align 8, !dbg !415
  br label %if.end77, !dbg !416

if.end77:                                         ; preds = %if.then76, %if.else70
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end69
  store i32 -1, ptr %idx, align 4, !dbg !417
  store i32 0, ptr %i, align 4, !dbg !418
  br label %for.cond, !dbg !419

for.cond:                                         ; preds = %for.inc, %if.end78
  %64 = load i32, ptr %i, align 4, !dbg !420
  %65 = load ptr, ptr %drv.addr, align 8, !dbg !421
  %state_count79 = getelementptr inbounds %struct.cpuidle_driver, ptr %65, i32 0, i32 4, !dbg !422
  %66 = load i32, ptr %state_count79, align 8, !dbg !422
  %cmp80 = icmp slt i32 %64, %66, !dbg !423
  br i1 %cmp80, label %for.body, label %for.end, !dbg !424

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #10, !dbg !425
  call void @llvm.dbg.declare(metadata ptr %s, metadata !260, metadata !DIExpression()), !dbg !426
  %67 = load ptr, ptr %drv.addr, align 8, !dbg !427
  %states82 = getelementptr inbounds %struct.cpuidle_driver, ptr %67, i32 0, i32 3, !dbg !428
  %68 = load i32, ptr %i, align 4, !dbg !429
  %idxprom83 = sext i32 %68 to i64, !dbg !427
  %arrayidx84 = getelementptr [10 x %struct.cpuidle_state], ptr %states82, i64 0, i64 %idxprom83, !dbg !427
  store ptr %arrayidx84, ptr %s, align 8, !dbg !426
  %69 = load ptr, ptr %dev.addr, align 8, !dbg !430
  %states_usage85 = getelementptr inbounds %struct.cpuidle_device, ptr %69, i32 0, i32 7, !dbg !432
  %70 = load i32, ptr %i, align 4, !dbg !433
  %idxprom86 = sext i32 %70 to i64, !dbg !430
  %arrayidx87 = getelementptr [10 x %struct.cpuidle_state_usage], ptr %states_usage85, i64 0, i64 %idxprom86, !dbg !430
  %disable88 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %arrayidx87, i32 0, i32 0, !dbg !434
  %71 = load i64, ptr %disable88, align 8, !dbg !434
  %tobool89 = icmp ne i64 %71, 0, !dbg !430
  br i1 %tobool89, label %if.then90, label %if.end91, !dbg !435

if.then90:                                        ; preds = %for.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !436

if.end91:                                         ; preds = %for.body
  %72 = load i32, ptr %idx, align 4, !dbg !437
  %cmp92 = icmp eq i32 %72, -1, !dbg !439
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !440

if.then94:                                        ; preds = %if.end91
  %73 = load i32, ptr %i, align 4, !dbg !441
  store i32 %73, ptr %idx, align 4, !dbg !442
  br label %if.end95, !dbg !443

if.end95:                                         ; preds = %if.then94, %if.end91
  %74 = load ptr, ptr %s, align 8, !dbg !444
  %target_residency_ns96 = getelementptr inbounds %struct.cpuidle_state, ptr %74, i32 0, i32 3, !dbg !446
  %75 = load i64, ptr %target_residency_ns96, align 8, !dbg !446
  %76 = load i64, ptr %predicted_ns, align 8, !dbg !447
  %cmp97 = icmp ugt i64 %75, %76, !dbg !448
  br i1 %cmp97, label %if.then99, label %if.end142, !dbg !449

if.then99:                                        ; preds = %if.end95
  %77 = load ptr, ptr %drv.addr, align 8, !dbg !450
  %states100 = getelementptr inbounds %struct.cpuidle_driver, ptr %77, i32 0, i32 3, !dbg !453
  %78 = load i32, ptr %idx, align 4, !dbg !454
  %idxprom101 = sext i32 %78 to i64, !dbg !450
  %arrayidx102 = getelementptr [10 x %struct.cpuidle_state], ptr %states100, i64 0, i64 %idxprom101, !dbg !450
  %flags103 = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx102, i32 0, i32 4, !dbg !455
  %79 = load i32, ptr %flags103, align 8, !dbg !455
  %conv104 = zext i32 %79 to i64, !dbg !450
  %and105 = and i64 %conv104, 1, !dbg !456
  %tobool106 = icmp ne i64 %and105, 0, !dbg !456
  br i1 %tobool106, label %land.lhs.true107, label %if.end118, !dbg !457

land.lhs.true107:                                 ; preds = %if.then99
  %80 = load ptr, ptr %s, align 8, !dbg !458
  %exit_latency_ns108 = getelementptr inbounds %struct.cpuidle_state, ptr %80, i32 0, i32 2, !dbg !459
  %81 = load i64, ptr %exit_latency_ns108, align 8, !dbg !459
  %82 = load i64, ptr %latency_req, align 8, !dbg !460
  %cmp109 = icmp sle i64 %81, %82, !dbg !461
  br i1 %cmp109, label %land.lhs.true111, label %if.end118, !dbg !462

land.lhs.true111:                                 ; preds = %land.lhs.true107
  %83 = load ptr, ptr %s, align 8, !dbg !463
  %target_residency_ns112 = getelementptr inbounds %struct.cpuidle_state, ptr %83, i32 0, i32 3, !dbg !464
  %84 = load i64, ptr %target_residency_ns112, align 8, !dbg !464
  %85 = load ptr, ptr %data, align 8, !dbg !465
  %next_timer_ns113 = getelementptr inbounds %struct.menu_device, ptr %85, i32 0, i32 2, !dbg !466
  %86 = load i64, ptr %next_timer_ns113, align 8, !dbg !466
  %cmp114 = icmp ule i64 %84, %86, !dbg !467
  br i1 %cmp114, label %if.then116, label %if.end118, !dbg !468

if.then116:                                       ; preds = %land.lhs.true111
  %87 = load ptr, ptr %s, align 8, !dbg !469
  %target_residency_ns117 = getelementptr inbounds %struct.cpuidle_state, ptr %87, i32 0, i32 3, !dbg !471
  %88 = load i64, ptr %target_residency_ns117, align 8, !dbg !471
  store i64 %88, ptr %predicted_ns, align 8, !dbg !472
  %89 = load i32, ptr %i, align 4, !dbg !473
  store i32 %89, ptr %idx, align 4, !dbg !474
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !475

if.end118:                                        ; preds = %land.lhs.true111, %land.lhs.true107, %if.then99
  %90 = load i64, ptr %predicted_ns, align 8, !dbg !476
  %cmp119 = icmp ult i64 %90, 1000000, !dbg !478
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !479

if.then121:                                       ; preds = %if.end118
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !480

if.end122:                                        ; preds = %if.end118
  %call123 = call zeroext i1 @tick_nohz_tick_stopped() #9, !dbg !481
  br i1 %call123, label %if.end129, label %if.then124, !dbg !483

if.then124:                                       ; preds = %if.end122
  %91 = load ptr, ptr %drv.addr, align 8, !dbg !484
  %states125 = getelementptr inbounds %struct.cpuidle_driver, ptr %91, i32 0, i32 3, !dbg !486
  %92 = load i32, ptr %idx, align 4, !dbg !487
  %idxprom126 = sext i32 %92 to i64, !dbg !484
  %arrayidx127 = getelementptr [10 x %struct.cpuidle_state], ptr %states125, i64 0, i64 %idxprom126, !dbg !484
  %target_residency_ns128 = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx127, i32 0, i32 3, !dbg !488
  %93 = load i64, ptr %target_residency_ns128, align 8, !dbg !488
  store i64 %93, ptr %predicted_ns, align 8, !dbg !489
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !490

if.end129:                                        ; preds = %if.end122
  %94 = load ptr, ptr %drv.addr, align 8, !dbg !491
  %states130 = getelementptr inbounds %struct.cpuidle_driver, ptr %94, i32 0, i32 3, !dbg !493
  %95 = load i32, ptr %idx, align 4, !dbg !494
  %idxprom131 = sext i32 %95 to i64, !dbg !491
  %arrayidx132 = getelementptr [10 x %struct.cpuidle_state], ptr %states130, i64 0, i64 %idxprom131, !dbg !491
  %target_residency_ns133 = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx132, i32 0, i32 3, !dbg !495
  %96 = load i64, ptr %target_residency_ns133, align 8, !dbg !495
  %cmp134 = icmp slt i64 %96, 1000000, !dbg !496
  br i1 %cmp134, label %land.lhs.true136, label %if.end141, !dbg !497

land.lhs.true136:                                 ; preds = %if.end129
  %97 = load ptr, ptr %s, align 8, !dbg !498
  %target_residency_ns137 = getelementptr inbounds %struct.cpuidle_state, ptr %97, i32 0, i32 3, !dbg !499
  %98 = load i64, ptr %target_residency_ns137, align 8, !dbg !499
  %99 = load i64, ptr %delta_tick, align 8, !dbg !500
  %cmp138 = icmp sle i64 %98, %99, !dbg !501
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !502

if.then140:                                       ; preds = %land.lhs.true136
  %100 = load i32, ptr %i, align 4, !dbg !503
  store i32 %100, ptr %idx, align 4, !dbg !504
  br label %if.end141, !dbg !505

if.end141:                                        ; preds = %if.then140, %land.lhs.true136, %if.end129
  %101 = load i32, ptr %idx, align 4, !dbg !506
  store i32 %101, ptr %retval, align 4, !dbg !507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !507

if.end142:                                        ; preds = %if.end95
  %102 = load ptr, ptr %s, align 8, !dbg !508
  %exit_latency_ns143 = getelementptr inbounds %struct.cpuidle_state, ptr %102, i32 0, i32 2, !dbg !510
  %103 = load i64, ptr %exit_latency_ns143, align 8, !dbg !510
  %104 = load i64, ptr %latency_req, align 8, !dbg !511
  %cmp144 = icmp sgt i64 %103, %104, !dbg !512
  br i1 %cmp144, label %if.then146, label %if.end147, !dbg !513

if.then146:                                       ; preds = %if.end142
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !514

if.end147:                                        ; preds = %if.end142
  %105 = load i32, ptr %i, align 4, !dbg !515
  store i32 %105, ptr %idx, align 4, !dbg !516
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !517
  br label %cleanup, !dbg !517

cleanup:                                          ; preds = %if.end147, %if.then146, %if.end141, %if.then124, %if.then121, %if.then116, %if.then90
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #10, !dbg !517
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup198 [
    i32 0, label %cleanup.cont
    i32 6, label %for.inc
    i32 4, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !518

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %106 = load i32, ptr %i, align 4, !dbg !519
  %inc = add i32 %106, 1, !dbg !519
  store i32 %inc, ptr %i, align 4, !dbg !519
  br label %for.cond, !dbg !520, !llvm.loop !521

for.end:                                          ; preds = %cleanup, %for.cond
  %107 = load i32, ptr %idx, align 4, !dbg !523
  %cmp148 = icmp eq i32 %107, -1, !dbg !525
  br i1 %cmp148, label %if.then150, label %if.end151, !dbg !526

if.then150:                                       ; preds = %for.end
  store i32 0, ptr %idx, align 4, !dbg !527
  br label %if.end151, !dbg !528

if.end151:                                        ; preds = %if.then150, %for.end
  %108 = load ptr, ptr %drv.addr, align 8, !dbg !529
  %states152 = getelementptr inbounds %struct.cpuidle_driver, ptr %108, i32 0, i32 3, !dbg !531
  %109 = load i32, ptr %idx, align 4, !dbg !532
  %idxprom153 = sext i32 %109 to i64, !dbg !529
  %arrayidx154 = getelementptr [10 x %struct.cpuidle_state], ptr %states152, i64 0, i64 %idxprom153, !dbg !529
  %flags155 = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx154, i32 0, i32 4, !dbg !533
  %110 = load i32, ptr %flags155, align 8, !dbg !533
  %conv156 = zext i32 %110 to i64, !dbg !529
  %and157 = and i64 %conv156, 1, !dbg !534
  %tobool158 = icmp ne i64 %and157, 0, !dbg !534
  br i1 %tobool158, label %land.lhs.true162, label %lor.lhs.false159, !dbg !535

lor.lhs.false159:                                 ; preds = %if.end151
  %111 = load i64, ptr %predicted_ns, align 8, !dbg !536
  %cmp160 = icmp ult i64 %111, 1000000, !dbg !537
  br i1 %cmp160, label %land.lhs.true162, label %if.end197, !dbg !538

land.lhs.true162:                                 ; preds = %lor.lhs.false159, %if.end151
  %call163 = call zeroext i1 @tick_nohz_tick_stopped() #9, !dbg !539
  br i1 %call163, label %if.end197, label %if.then164, !dbg !540

if.then164:                                       ; preds = %land.lhs.true162
  %112 = load ptr, ptr %stop_tick.addr, align 8, !dbg !541
  store i8 0, ptr %112, align 1, !dbg !543
  %113 = load i32, ptr %idx, align 4, !dbg !544
  %cmp165 = icmp sgt i32 %113, 0, !dbg !546
  br i1 %cmp165, label %land.lhs.true167, label %if.end196, !dbg !547

land.lhs.true167:                                 ; preds = %if.then164
  %114 = load ptr, ptr %drv.addr, align 8, !dbg !548
  %states168 = getelementptr inbounds %struct.cpuidle_driver, ptr %114, i32 0, i32 3, !dbg !549
  %115 = load i32, ptr %idx, align 4, !dbg !550
  %idxprom169 = sext i32 %115 to i64, !dbg !548
  %arrayidx170 = getelementptr [10 x %struct.cpuidle_state], ptr %states168, i64 0, i64 %idxprom169, !dbg !548
  %target_residency_ns171 = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx170, i32 0, i32 3, !dbg !551
  %116 = load i64, ptr %target_residency_ns171, align 8, !dbg !551
  %117 = load i64, ptr %delta_tick, align 8, !dbg !552
  %cmp172 = icmp sgt i64 %116, %117, !dbg !553
  br i1 %cmp172, label %if.then174, label %if.end196, !dbg !554

if.then174:                                       ; preds = %land.lhs.true167
  %118 = load i32, ptr %idx, align 4, !dbg !555
  %sub = sub i32 %118, 1, !dbg !558
  store i32 %sub, ptr %i, align 4, !dbg !559
  br label %for.cond175, !dbg !560

for.cond175:                                      ; preds = %for.inc194, %if.then174
  %119 = load i32, ptr %i, align 4, !dbg !561
  %cmp176 = icmp sge i32 %119, 0, !dbg !563
  br i1 %cmp176, label %for.body178, label %for.end195, !dbg !564

for.body178:                                      ; preds = %for.cond175
  %120 = load ptr, ptr %dev.addr, align 8, !dbg !565
  %states_usage179 = getelementptr inbounds %struct.cpuidle_device, ptr %120, i32 0, i32 7, !dbg !568
  %121 = load i32, ptr %i, align 4, !dbg !569
  %idxprom180 = sext i32 %121 to i64, !dbg !565
  %arrayidx181 = getelementptr [10 x %struct.cpuidle_state_usage], ptr %states_usage179, i64 0, i64 %idxprom180, !dbg !565
  %disable182 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %arrayidx181, i32 0, i32 0, !dbg !570
  %122 = load i64, ptr %disable182, align 8, !dbg !570
  %tobool183 = icmp ne i64 %122, 0, !dbg !565
  br i1 %tobool183, label %if.then184, label %if.end185, !dbg !571

if.then184:                                       ; preds = %for.body178
  br label %for.inc194, !dbg !572

if.end185:                                        ; preds = %for.body178
  %123 = load i32, ptr %i, align 4, !dbg !573
  store i32 %123, ptr %idx, align 4, !dbg !574
  %124 = load ptr, ptr %drv.addr, align 8, !dbg !575
  %states186 = getelementptr inbounds %struct.cpuidle_driver, ptr %124, i32 0, i32 3, !dbg !577
  %125 = load i32, ptr %i, align 4, !dbg !578
  %idxprom187 = sext i32 %125 to i64, !dbg !575
  %arrayidx188 = getelementptr [10 x %struct.cpuidle_state], ptr %states186, i64 0, i64 %idxprom187, !dbg !575
  %target_residency_ns189 = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx188, i32 0, i32 3, !dbg !579
  %126 = load i64, ptr %target_residency_ns189, align 8, !dbg !579
  %127 = load i64, ptr %delta_tick, align 8, !dbg !580
  %cmp190 = icmp sle i64 %126, %127, !dbg !581
  br i1 %cmp190, label %if.then192, label %if.end193, !dbg !582

if.then192:                                       ; preds = %if.end185
  br label %for.end195, !dbg !583

if.end193:                                        ; preds = %if.end185
  br label %for.inc194, !dbg !584

for.inc194:                                       ; preds = %if.end193, %if.then184
  %128 = load i32, ptr %i, align 4, !dbg !585
  %dec = add i32 %128, -1, !dbg !585
  store i32 %dec, ptr %i, align 4, !dbg !585
  br label %for.cond175, !dbg !586, !llvm.loop !587

for.end195:                                       ; preds = %if.then192, %for.cond175
  br label %if.end196, !dbg !589

if.end196:                                        ; preds = %for.end195, %land.lhs.true167, %if.then164
  br label %if.end197, !dbg !590

if.end197:                                        ; preds = %if.end196, %land.lhs.true162, %lor.lhs.false159
  %129 = load i32, ptr %idx, align 4, !dbg !591
  store i32 %129, ptr %retval, align 4, !dbg !592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !592

cleanup198:                                       ; preds = %if.end197, %cleanup, %if.then55
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #10, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta_tick) #10, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #10, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_iowaiters) #10, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %interactivity_req) #10, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %predicted_ns) #10, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %latency_req) #10, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10, !dbg !593
  %130 = load i32, ptr %retval, align 4, !dbg !593
  ret i32 %130, !dbg !593
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @menu_reflect(ptr noundef %dev, i32 noundef %index) #2 align 16 !dbg !594 {
entry:
  %dev.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !596, metadata !DIExpression()), !dbg !604
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !597, metadata !DIExpression()), !dbg !605
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10, !dbg !606
  call void @llvm.dbg.declare(metadata ptr %data, metadata !598, metadata !DIExpression()), !dbg !607
  br label %do.body, !dbg !608

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !609
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !599, metadata !DIExpression()), !dbg !609
  store ptr null, ptr %__vpp_verify, align 8, !dbg !609
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !609
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !608
  br label %do.cond, !dbg !609

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !609

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !602, metadata !DIExpression()), !dbg !610
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @menu_devices) #11, !dbg !610, !srcloc !611
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !610
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !610
  %3 = inttoptr i64 %2 to ptr, !dbg !610
  store ptr %3, ptr %tmp1, align 8, !dbg !610
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !608
  %4 = load ptr, ptr %tmp1, align 8, !dbg !610
  store ptr %4, ptr %tmp, align 8, !dbg !609
  %5 = load ptr, ptr %tmp, align 8, !dbg !608
  store ptr %5, ptr %data, align 8, !dbg !607
  %6 = load i32, ptr %index.addr, align 4, !dbg !612
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !613
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, ptr %7, i32 0, i32 3, !dbg !614
  store i32 %6, ptr %last_state_idx, align 8, !dbg !615
  %8 = load ptr, ptr %data, align 8, !dbg !616
  %needs_update = getelementptr inbounds %struct.menu_device, ptr %8, i32 0, i32 0, !dbg !617
  store i32 1, ptr %needs_update, align 8, !dbg !618
  %call = call zeroext i1 @tick_nohz_idle_got_tick() #9, !dbg !619
  %conv = zext i1 %call to i32, !dbg !619
  %9 = load ptr, ptr %data, align 8, !dbg !620
  %tick_wakeup = getelementptr inbounds %struct.menu_device, ptr %9, i32 0, i32 1, !dbg !621
  store i32 %conv, ptr %tick_wakeup, align 4, !dbg !622
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10, !dbg !623
  ret void, !dbg !623
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !624 dso_local i64 @cpuidle_governor_latency_req(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @menu_update(ptr noundef %drv, ptr noundef %dev) #2 align 16 !dbg !627 {
entry:
  %drv.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %last_idx = alloca i32, align 4
  %target = alloca ptr, align 8
  %measured_ns = alloca i64, align 8
  %new_factor = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !629, metadata !DIExpression()), !dbg !641
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !630, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %data, metadata !631, metadata !DIExpression()), !dbg !644
  br label %do.body, !dbg !645

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !632, metadata !DIExpression()), !dbg !646
  store ptr null, ptr %__vpp_verify, align 8, !dbg !646
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !646
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !645
  br label %do.cond, !dbg !646

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !646

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !647
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !635, metadata !DIExpression()), !dbg !647
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @menu_devices) #11, !dbg !647, !srcloc !648
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !647
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !647
  %3 = inttoptr i64 %2 to ptr, !dbg !647
  store ptr %3, ptr %tmp1, align 8, !dbg !647
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #10, !dbg !645
  %4 = load ptr, ptr %tmp1, align 8, !dbg !647
  store ptr %4, ptr %tmp, align 8, !dbg !646
  %5 = load ptr, ptr %tmp, align 8, !dbg !645
  store ptr %5, ptr %data, align 8, !dbg !644
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_idx) #10, !dbg !649
  call void @llvm.dbg.declare(metadata ptr %last_idx, metadata !637, metadata !DIExpression()), !dbg !650
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !651
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, ptr %6, i32 0, i32 3, !dbg !652
  %7 = load i32, ptr %last_state_idx, align 8, !dbg !652
  store i32 %7, ptr %last_idx, align 4, !dbg !650
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #10, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %target, metadata !638, metadata !DIExpression()), !dbg !654
  %8 = load ptr, ptr %drv.addr, align 8, !dbg !655
  %states = getelementptr inbounds %struct.cpuidle_driver, ptr %8, i32 0, i32 3, !dbg !656
  %9 = load i32, ptr %last_idx, align 4, !dbg !657
  %idxprom = sext i32 %9 to i64, !dbg !655
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], ptr %states, i64 0, i64 %idxprom, !dbg !655
  store ptr %arrayidx, ptr %target, align 8, !dbg !654
  call void @llvm.lifetime.start.p0(i64 8, ptr %measured_ns) #10, !dbg !658
  call void @llvm.dbg.declare(metadata ptr %measured_ns, metadata !639, metadata !DIExpression()), !dbg !659
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_factor) #10, !dbg !660
  call void @llvm.dbg.declare(metadata ptr %new_factor, metadata !640, metadata !DIExpression()), !dbg !661
  %10 = load ptr, ptr %data, align 8, !dbg !662
  %tick_wakeup = getelementptr inbounds %struct.menu_device, ptr %10, i32 0, i32 1, !dbg !664
  %11 = load i32, ptr %tick_wakeup, align 4, !dbg !664
  %tobool = icmp ne i32 %11, 0, !dbg !662
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !665

land.lhs.true:                                    ; preds = %do.end
  %12 = load ptr, ptr %data, align 8, !dbg !666
  %next_timer_ns = getelementptr inbounds %struct.menu_device, ptr %12, i32 0, i32 2, !dbg !667
  %13 = load i64, ptr %next_timer_ns, align 8, !dbg !667
  %cmp = icmp ugt i64 %13, 1000000, !dbg !668
  br i1 %cmp, label %if.then, label %if.else, !dbg !669

if.then:                                          ; preds = %land.lhs.true
  store i64 45000000, ptr %measured_ns, align 8, !dbg !670
  br label %if.end17, !dbg !672

if.else:                                          ; preds = %land.lhs.true, %do.end
  %14 = load ptr, ptr %drv.addr, align 8, !dbg !673
  %states2 = getelementptr inbounds %struct.cpuidle_driver, ptr %14, i32 0, i32 3, !dbg !675
  %15 = load i32, ptr %last_idx, align 4, !dbg !676
  %idxprom3 = sext i32 %15 to i64, !dbg !673
  %arrayidx4 = getelementptr [10 x %struct.cpuidle_state], ptr %states2, i64 0, i64 %idxprom3, !dbg !673
  %flags = getelementptr inbounds %struct.cpuidle_state, ptr %arrayidx4, i32 0, i32 4, !dbg !677
  %16 = load i32, ptr %flags, align 8, !dbg !677
  %conv = zext i32 %16 to i64, !dbg !673
  %and = and i64 %conv, 1, !dbg !678
  %tobool5 = icmp ne i64 %and, 0, !dbg !678
  br i1 %tobool5, label %land.lhs.true6, label %if.else10, !dbg !679

land.lhs.true6:                                   ; preds = %if.else
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !680
  %bf.load = load i8, ptr %17, align 8, !dbg !681
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !681
  %bf.clear = and i8 %bf.lshr, 1, !dbg !681
  %bf.cast = zext i8 %bf.clear to i32, !dbg !681
  %tobool7 = icmp ne i32 %bf.cast, 0, !dbg !680
  br i1 %tobool7, label %if.then8, label %if.else10, !dbg !682

if.then8:                                         ; preds = %land.lhs.true6
  %18 = load ptr, ptr %data, align 8, !dbg !683
  %next_timer_ns9 = getelementptr inbounds %struct.menu_device, ptr %18, i32 0, i32 2, !dbg !685
  %19 = load i64, ptr %next_timer_ns9, align 8, !dbg !685
  store i64 %19, ptr %measured_ns, align 8, !dbg !686
  br label %if.end16, !dbg !687

if.else10:                                        ; preds = %land.lhs.true6, %if.else
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !688
  %last_residency_ns = getelementptr inbounds %struct.cpuidle_device, ptr %20, i32 0, i32 4, !dbg !690
  %21 = load i64, ptr %last_residency_ns, align 8, !dbg !690
  store i64 %21, ptr %measured_ns, align 8, !dbg !691
  %22 = load i64, ptr %measured_ns, align 8, !dbg !692
  %23 = load ptr, ptr %target, align 8, !dbg !694
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %23, i32 0, i32 2, !dbg !695
  %24 = load i64, ptr %exit_latency_ns, align 8, !dbg !695
  %mul = mul i64 2, %24, !dbg !696
  %cmp11 = icmp ugt i64 %22, %mul, !dbg !697
  br i1 %cmp11, label %if.then13, label %if.else15, !dbg !698

if.then13:                                        ; preds = %if.else10
  %25 = load ptr, ptr %target, align 8, !dbg !699
  %exit_latency_ns14 = getelementptr inbounds %struct.cpuidle_state, ptr %25, i32 0, i32 2, !dbg !700
  %26 = load i64, ptr %exit_latency_ns14, align 8, !dbg !700
  %27 = load i64, ptr %measured_ns, align 8, !dbg !701
  %sub = sub i64 %27, %26, !dbg !701
  store i64 %sub, ptr %measured_ns, align 8, !dbg !701
  br label %if.end, !dbg !702

if.else15:                                        ; preds = %if.else10
  %28 = load i64, ptr %measured_ns, align 8, !dbg !703
  %div = udiv i64 %28, 2, !dbg !703
  store i64 %div, ptr %measured_ns, align 8, !dbg !703
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %29 = load i64, ptr %measured_ns, align 8, !dbg !704
  %30 = load ptr, ptr %data, align 8, !dbg !706
  %next_timer_ns18 = getelementptr inbounds %struct.menu_device, ptr %30, i32 0, i32 2, !dbg !707
  %31 = load i64, ptr %next_timer_ns18, align 8, !dbg !707
  %cmp19 = icmp ugt i64 %29, %31, !dbg !708
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !709

if.then21:                                        ; preds = %if.end17
  %32 = load ptr, ptr %data, align 8, !dbg !710
  %next_timer_ns22 = getelementptr inbounds %struct.menu_device, ptr %32, i32 0, i32 2, !dbg !711
  %33 = load i64, ptr %next_timer_ns22, align 8, !dbg !711
  store i64 %33, ptr %measured_ns, align 8, !dbg !712
  br label %if.end23, !dbg !713

if.end23:                                         ; preds = %if.then21, %if.end17
  %34 = load ptr, ptr %data, align 8, !dbg !714
  %correction_factor = getelementptr inbounds %struct.menu_device, ptr %34, i32 0, i32 4, !dbg !715
  %35 = load ptr, ptr %data, align 8, !dbg !716
  %bucket = getelementptr inbounds %struct.menu_device, ptr %35, i32 0, i32 3, !dbg !717
  %36 = load i32, ptr %bucket, align 8, !dbg !717
  %idxprom24 = zext i32 %36 to i64, !dbg !714
  %arrayidx25 = getelementptr [12 x i32], ptr %correction_factor, i64 0, i64 %idxprom24, !dbg !714
  %37 = load i32, ptr %arrayidx25, align 4, !dbg !714
  store i32 %37, ptr %new_factor, align 4, !dbg !718
  %38 = load i32, ptr %new_factor, align 4, !dbg !719
  %div26 = udiv i32 %38, 8, !dbg !720
  %39 = load i32, ptr %new_factor, align 4, !dbg !721
  %sub27 = sub i32 %39, %div26, !dbg !721
  store i32 %sub27, ptr %new_factor, align 4, !dbg !721
  %40 = load ptr, ptr %data, align 8, !dbg !722
  %next_timer_ns28 = getelementptr inbounds %struct.menu_device, ptr %40, i32 0, i32 2, !dbg !724
  %41 = load i64, ptr %next_timer_ns28, align 8, !dbg !724
  %cmp29 = icmp ugt i64 %41, 0, !dbg !725
  br i1 %cmp29, label %land.lhs.true31, label %if.else39, !dbg !726

land.lhs.true31:                                  ; preds = %if.end23
  %42 = load i64, ptr %measured_ns, align 8, !dbg !727
  %cmp32 = icmp ult i64 %42, 50000000, !dbg !728
  br i1 %cmp32, label %if.then34, label %if.else39, !dbg !729

if.then34:                                        ; preds = %land.lhs.true31
  %43 = load i64, ptr %measured_ns, align 8, !dbg !730
  %mul35 = mul i64 1024, %43, !dbg !731
  %44 = load ptr, ptr %data, align 8, !dbg !732
  %next_timer_ns36 = getelementptr inbounds %struct.menu_device, ptr %44, i32 0, i32 2, !dbg !733
  %45 = load i64, ptr %next_timer_ns36, align 8, !dbg !733
  %call = call i64 @div64_u64(i64 noundef %mul35, i64 noundef %45) #9, !dbg !734
  %46 = load i32, ptr %new_factor, align 4, !dbg !735
  %conv37 = zext i32 %46 to i64, !dbg !735
  %add = add i64 %conv37, %call, !dbg !735
  %conv38 = trunc i64 %add to i32, !dbg !735
  store i32 %conv38, ptr %new_factor, align 4, !dbg !735
  br label %if.end41, !dbg !736

if.else39:                                        ; preds = %land.lhs.true31, %if.end23
  %47 = load i32, ptr %new_factor, align 4, !dbg !737
  %add40 = add i32 %47, 1024, !dbg !737
  store i32 %add40, ptr %new_factor, align 4, !dbg !737
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then34
  %48 = load i32, ptr %new_factor, align 4, !dbg !738
  %49 = load ptr, ptr %data, align 8, !dbg !739
  %correction_factor42 = getelementptr inbounds %struct.menu_device, ptr %49, i32 0, i32 4, !dbg !740
  %50 = load ptr, ptr %data, align 8, !dbg !741
  %bucket43 = getelementptr inbounds %struct.menu_device, ptr %50, i32 0, i32 3, !dbg !742
  %51 = load i32, ptr %bucket43, align 8, !dbg !742
  %idxprom44 = zext i32 %51 to i64, !dbg !739
  %arrayidx45 = getelementptr [12 x i32], ptr %correction_factor42, i64 0, i64 %idxprom44, !dbg !739
  store i32 %48, ptr %arrayidx45, align 4, !dbg !743
  %52 = load i64, ptr %measured_ns, align 8, !dbg !744
  %call46 = call i64 @ktime_to_us(i64 noundef %52) #9, !dbg !745
  %conv47 = trunc i64 %call46 to i32, !dbg !745
  %53 = load ptr, ptr %data, align 8, !dbg !746
  %intervals = getelementptr inbounds %struct.menu_device, ptr %53, i32 0, i32 5, !dbg !747
  %54 = load ptr, ptr %data, align 8, !dbg !748
  %interval_ptr = getelementptr inbounds %struct.menu_device, ptr %54, i32 0, i32 6, !dbg !749
  %55 = load i32, ptr %interval_ptr, align 4, !dbg !750
  %inc = add i32 %55, 1, !dbg !750
  store i32 %inc, ptr %interval_ptr, align 4, !dbg !750
  %idxprom48 = sext i32 %55 to i64, !dbg !746
  %arrayidx49 = getelementptr [8 x i32], ptr %intervals, i64 0, i64 %idxprom48, !dbg !746
  store i32 %conv47, ptr %arrayidx49, align 4, !dbg !751
  %56 = load ptr, ptr %data, align 8, !dbg !752
  %interval_ptr50 = getelementptr inbounds %struct.menu_device, ptr %56, i32 0, i32 6, !dbg !754
  %57 = load i32, ptr %interval_ptr50, align 4, !dbg !754
  %conv51 = sext i32 %57 to i64, !dbg !752
  %cmp52 = icmp uge i64 %conv51, 8, !dbg !755
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !756

if.then54:                                        ; preds = %if.end41
  %58 = load ptr, ptr %data, align 8, !dbg !757
  %interval_ptr55 = getelementptr inbounds %struct.menu_device, ptr %58, i32 0, i32 6, !dbg !758
  store i32 0, ptr %interval_ptr55, align 4, !dbg !759
  br label %if.end56, !dbg !757

if.end56:                                         ; preds = %if.then54, %if.end41
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_factor) #10, !dbg !760
  call void @llvm.lifetime.end.p0(i64 8, ptr %measured_ns) #10, !dbg !760
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #10, !dbg !760
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_idx) #10, !dbg !760
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10, !dbg !760
  ret void, !dbg !760
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !761 dso_local i32 @nr_iowait_cpu(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_typical_interval(ptr noundef %data) #2 align 16 !dbg !765 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %divisor = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %thresh = alloca i32, align 4
  %avg = alloca i32, align 4
  %sum = alloca i64, align 8
  %variance = alloca i64, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %value28 = alloca i32, align 4
  %diff = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !769, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %i, metadata !770, metadata !DIExpression()), !dbg !799
  call void @llvm.lifetime.start.p0(i64 4, ptr %divisor) #10, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %divisor, metadata !771, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #10, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %min, metadata !772, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #10, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %max, metadata !773, metadata !DIExpression()), !dbg !803
  call void @llvm.lifetime.start.p0(i64 4, ptr %thresh) #10, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %thresh, metadata !774, metadata !DIExpression()), !dbg !804
  call void @llvm.lifetime.start.p0(i64 4, ptr %avg) #10, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %avg, metadata !775, metadata !DIExpression()), !dbg !805
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #10, !dbg !806
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !776, metadata !DIExpression()), !dbg !807
  call void @llvm.lifetime.start.p0(i64 8, ptr %variance) #10, !dbg !806
  call void @llvm.dbg.declare(metadata ptr %variance, metadata !777, metadata !DIExpression()), !dbg !808
  store i32 2147483647, ptr %thresh, align 4, !dbg !809
  br label %again, !dbg !810

again:                                            ; preds = %if.end78, %entry
  call void @llvm.dbg.label(metadata !778), !dbg !811
  store i32 -1, ptr %min, align 4, !dbg !812
  store i32 0, ptr %max, align 4, !dbg !813
  store i64 0, ptr %sum, align 8, !dbg !814
  store i32 0, ptr %divisor, align 4, !dbg !815
  store i32 0, ptr %i, align 4, !dbg !816
  br label %for.cond, !dbg !817

for.cond:                                         ; preds = %for.inc, %again
  %0 = load i32, ptr %i, align 4, !dbg !818
  %conv = sext i32 %0 to i64, !dbg !818
  %cmp = icmp ult i64 %conv, 8, !dbg !819
  br i1 %cmp, label %for.body, label %for.end, !dbg !820

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #10, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %value, metadata !779, metadata !DIExpression()), !dbg !822
  %1 = load ptr, ptr %data.addr, align 8, !dbg !823
  %intervals = getelementptr inbounds %struct.menu_device, ptr %1, i32 0, i32 5, !dbg !824
  %2 = load i32, ptr %i, align 4, !dbg !825
  %idxprom = sext i32 %2 to i64, !dbg !823
  %arrayidx = getelementptr [8 x i32], ptr %intervals, i64 0, i64 %idxprom, !dbg !823
  %3 = load i32, ptr %arrayidx, align 4, !dbg !823
  store i32 %3, ptr %value, align 4, !dbg !822
  %4 = load i32, ptr %value, align 4, !dbg !826
  %5 = load i32, ptr %thresh, align 4, !dbg !828
  %cmp2 = icmp ule i32 %4, %5, !dbg !829
  br i1 %cmp2, label %if.then, label %if.end12, !dbg !830

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %value, align 4, !dbg !831
  %conv4 = zext i32 %6 to i64, !dbg !831
  %7 = load i64, ptr %sum, align 8, !dbg !833
  %add = add i64 %7, %conv4, !dbg !833
  store i64 %add, ptr %sum, align 8, !dbg !833
  %8 = load i32, ptr %divisor, align 4, !dbg !834
  %inc = add i32 %8, 1, !dbg !834
  store i32 %inc, ptr %divisor, align 4, !dbg !834
  %9 = load i32, ptr %value, align 4, !dbg !835
  %10 = load i32, ptr %max, align 4, !dbg !837
  %cmp5 = icmp ugt i32 %9, %10, !dbg !838
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !839

if.then7:                                         ; preds = %if.then
  %11 = load i32, ptr %value, align 4, !dbg !840
  store i32 %11, ptr %max, align 4, !dbg !841
  br label %if.end, !dbg !842

if.end:                                           ; preds = %if.then7, %if.then
  %12 = load i32, ptr %value, align 4, !dbg !843
  %13 = load i32, ptr %min, align 4, !dbg !845
  %cmp8 = icmp ult i32 %12, %13, !dbg !846
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !847

if.then10:                                        ; preds = %if.end
  %14 = load i32, ptr %value, align 4, !dbg !848
  store i32 %14, ptr %min, align 4, !dbg !849
  br label %if.end11, !dbg !850

if.end11:                                         ; preds = %if.then10, %if.end
  br label %if.end12, !dbg !851

if.end12:                                         ; preds = %if.end11, %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #10, !dbg !852
  br label %for.inc, !dbg !853

for.inc:                                          ; preds = %if.end12
  %15 = load i32, ptr %i, align 4, !dbg !854
  %inc13 = add i32 %15, 1, !dbg !854
  store i32 %inc13, ptr %i, align 4, !dbg !854
  br label %for.cond, !dbg !855, !llvm.loop !856

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %max, align 4, !dbg !858
  %tobool = icmp ne i32 %16, 0, !dbg !858
  br i1 %tobool, label %if.end15, label %if.then14, !dbg !860

if.then14:                                        ; preds = %for.end
  store i32 -1, ptr %retval, align 4, !dbg !861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !861

if.end15:                                         ; preds = %for.end
  %17 = load i32, ptr %divisor, align 4, !dbg !862
  %conv16 = sext i32 %17 to i64, !dbg !862
  %cmp17 = icmp eq i64 %conv16, 8, !dbg !864
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !865

if.then19:                                        ; preds = %if.end15
  %18 = load i64, ptr %sum, align 8, !dbg !866
  %shr = lshr i64 %18, 3, !dbg !867
  %conv20 = trunc i64 %shr to i32, !dbg !866
  store i32 %conv20, ptr %avg, align 4, !dbg !868
  br label %if.end22, !dbg !869

if.else:                                          ; preds = %if.end15
  %19 = load i64, ptr %sum, align 8, !dbg !870
  %20 = load i32, ptr %divisor, align 4, !dbg !871
  %call = call i64 @div_u64(i64 noundef %19, i32 noundef %20) #9, !dbg !872
  %conv21 = trunc i64 %call to i32, !dbg !872
  store i32 %conv21, ptr %avg, align 4, !dbg !873
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19
  store i64 0, ptr %variance, align 8, !dbg !874
  store i32 0, ptr %i, align 4, !dbg !875
  br label %for.cond23, !dbg !876

for.cond23:                                       ; preds = %for.inc39, %if.end22
  %21 = load i32, ptr %i, align 4, !dbg !877
  %conv24 = sext i32 %21 to i64, !dbg !877
  %cmp25 = icmp ult i64 %conv24, 8, !dbg !878
  br i1 %cmp25, label %for.body27, label %for.end41, !dbg !879

for.body27:                                       ; preds = %for.cond23
  call void @llvm.lifetime.start.p0(i64 4, ptr %value28) #10, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %value28, metadata !783, metadata !DIExpression()), !dbg !881
  %22 = load ptr, ptr %data.addr, align 8, !dbg !882
  %intervals29 = getelementptr inbounds %struct.menu_device, ptr %22, i32 0, i32 5, !dbg !883
  %23 = load i32, ptr %i, align 4, !dbg !884
  %idxprom30 = sext i32 %23 to i64, !dbg !882
  %arrayidx31 = getelementptr [8 x i32], ptr %intervals29, i64 0, i64 %idxprom30, !dbg !882
  %24 = load i32, ptr %arrayidx31, align 4, !dbg !882
  store i32 %24, ptr %value28, align 4, !dbg !881
  %25 = load i32, ptr %value28, align 4, !dbg !885
  %26 = load i32, ptr %thresh, align 4, !dbg !886
  %cmp32 = icmp ule i32 %25, %26, !dbg !887
  br i1 %cmp32, label %if.then34, label %if.end38, !dbg !888

if.then34:                                        ; preds = %for.body27
  call void @llvm.lifetime.start.p0(i64 8, ptr %diff) #10, !dbg !889
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !787, metadata !DIExpression()), !dbg !890
  %27 = load i32, ptr %value28, align 4, !dbg !891
  %conv35 = zext i32 %27 to i64, !dbg !892
  %28 = load i32, ptr %avg, align 4, !dbg !893
  %conv36 = zext i32 %28 to i64, !dbg !893
  %sub = sub i64 %conv35, %conv36, !dbg !894
  store i64 %sub, ptr %diff, align 8, !dbg !890
  %29 = load i64, ptr %diff, align 8, !dbg !895
  %30 = load i64, ptr %diff, align 8, !dbg !896
  %mul = mul i64 %29, %30, !dbg !897
  %31 = load i64, ptr %variance, align 8, !dbg !898
  %add37 = add i64 %31, %mul, !dbg !898
  store i64 %add37, ptr %variance, align 8, !dbg !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %diff) #10, !dbg !899
  br label %if.end38, !dbg !900

if.end38:                                         ; preds = %if.then34, %for.body27
  call void @llvm.lifetime.end.p0(i64 4, ptr %value28) #10, !dbg !901
  br label %for.inc39, !dbg !902

for.inc39:                                        ; preds = %if.end38
  %32 = load i32, ptr %i, align 4, !dbg !903
  %inc40 = add i32 %32, 1, !dbg !903
  store i32 %inc40, ptr %i, align 4, !dbg !903
  br label %for.cond23, !dbg !904, !llvm.loop !905

for.end41:                                        ; preds = %for.cond23
  %33 = load i32, ptr %divisor, align 4, !dbg !907
  %conv42 = sext i32 %33 to i64, !dbg !907
  %cmp43 = icmp eq i64 %conv42, 8, !dbg !908
  br i1 %cmp43, label %if.then45, label %if.else47, !dbg !909

if.then45:                                        ; preds = %for.end41
  %34 = load i64, ptr %variance, align 8, !dbg !910
  %shr46 = lshr i64 %34, 3, !dbg !910
  store i64 %shr46, ptr %variance, align 8, !dbg !910
  br label %if.end51, !dbg !911

if.else47:                                        ; preds = %for.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #10, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !790, metadata !DIExpression()), !dbg !912
  %35 = load i32, ptr %divisor, align 4, !dbg !912
  store i32 %35, ptr %__base, align 4, !dbg !912
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #10, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !796, metadata !DIExpression()), !dbg !912
  %36 = load i64, ptr %variance, align 8, !dbg !912
  %37 = load i32, ptr %__base, align 4, !dbg !912
  %conv48 = zext i32 %37 to i64, !dbg !912
  %rem = urem i64 %36, %conv48, !dbg !912
  %conv49 = trunc i64 %rem to i32, !dbg !912
  store i32 %conv49, ptr %__rem, align 4, !dbg !912
  %38 = load i64, ptr %variance, align 8, !dbg !912
  %39 = load i32, ptr %__base, align 4, !dbg !912
  %conv50 = zext i32 %39 to i64, !dbg !912
  %div = udiv i64 %38, %conv50, !dbg !912
  store i64 %div, ptr %variance, align 8, !dbg !912
  %40 = load i32, ptr %__rem, align 4, !dbg !912
  store i32 %40, ptr %tmp, align 4, !dbg !912
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #10, !dbg !913
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #10, !dbg !913
  %41 = load i32, ptr %tmp, align 4, !dbg !912
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %if.then45
  %42 = load i64, ptr %variance, align 8, !dbg !914
  %cmp52 = icmp ule i64 %42, 512409557603043100, !dbg !914
  %lnot = xor i1 %cmp52, true, !dbg !914
  %lnot54 = xor i1 %lnot, true, !dbg !914
  %lnot.ext = zext i1 %lnot54 to i32, !dbg !914
  %conv55 = sext i32 %lnot.ext to i64, !dbg !914
  %expval = call i64 @llvm.expect.i64(i64 %conv55, i64 1), !dbg !914
  %tobool56 = icmp ne i64 %expval, 0, !dbg !914
  br i1 %tobool56, label %if.then57, label %if.end72, !dbg !916

if.then57:                                        ; preds = %if.end51
  %43 = load i32, ptr %avg, align 4, !dbg !917
  %conv58 = zext i32 %43 to i64, !dbg !920
  %44 = load i32, ptr %avg, align 4, !dbg !921
  %conv59 = zext i32 %44 to i64, !dbg !921
  %mul60 = mul i64 %conv58, %conv59, !dbg !922
  %45 = load i64, ptr %variance, align 8, !dbg !923
  %mul61 = mul i64 %45, 36, !dbg !924
  %cmp62 = icmp ugt i64 %mul60, %mul61, !dbg !925
  br i1 %cmp62, label %land.lhs.true, label %lor.lhs.false, !dbg !926

land.lhs.true:                                    ; preds = %if.then57
  %46 = load i32, ptr %divisor, align 4, !dbg !927
  %mul64 = mul i32 %46, 4, !dbg !928
  %conv65 = sext i32 %mul64 to i64, !dbg !927
  %cmp66 = icmp uge i64 %conv65, 24, !dbg !929
  br i1 %cmp66, label %if.then70, label %lor.lhs.false, !dbg !930

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then57
  %47 = load i64, ptr %variance, align 8, !dbg !931
  %cmp68 = icmp ule i64 %47, 400, !dbg !932
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !933

if.then70:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %48 = load i32, ptr %avg, align 4, !dbg !934
  store i32 %48, ptr %retval, align 4, !dbg !936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !936

if.end71:                                         ; preds = %lor.lhs.false
  br label %if.end72, !dbg !937

if.end72:                                         ; preds = %if.end71, %if.end51
  %49 = load i32, ptr %divisor, align 4, !dbg !938
  %mul73 = mul i32 %49, 4, !dbg !940
  %conv74 = sext i32 %mul73 to i64, !dbg !941
  %cmp75 = icmp ule i64 %conv74, 24, !dbg !942
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !943

if.then77:                                        ; preds = %if.end72
  store i32 -1, ptr %retval, align 4, !dbg !944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !944

if.end78:                                         ; preds = %if.end72
  %50 = load i32, ptr %max, align 4, !dbg !945
  %sub79 = sub i32 %50, 1, !dbg !946
  store i32 %sub79, ptr %thresh, align 4, !dbg !947
  br label %again, !dbg !948

cleanup:                                          ; preds = %if.then77, %if.then70, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %variance) #10, !dbg !949
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #10, !dbg !949
  call void @llvm.lifetime.end.p0(i64 4, ptr %avg) #10, !dbg !949
  call void @llvm.lifetime.end.p0(i64 4, ptr %thresh) #10, !dbg !949
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #10, !dbg !949
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #10, !dbg !949
  call void @llvm.lifetime.end.p0(i64 4, ptr %divisor) #10, !dbg !949
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !949
  %51 = load i32, ptr %retval, align 4, !dbg !949
  ret i32 %51, !dbg !949
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !950 dso_local i64 @tick_nohz_get_sleep_length(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @which_bucket(i64 noundef %duration_ns, i32 noundef %nr_iowaiters) #7 align 16 !dbg !955 {
entry:
  %retval = alloca i32, align 4
  %duration_ns.addr = alloca i64, align 8
  %nr_iowaiters.addr = alloca i32, align 4
  %bucket = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %duration_ns, ptr %duration_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %duration_ns.addr, metadata !959, metadata !DIExpression()), !dbg !962
  store i32 %nr_iowaiters, ptr %nr_iowaiters.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_iowaiters.addr, metadata !960, metadata !DIExpression()), !dbg !963
  call void @llvm.lifetime.start.p0(i64 4, ptr %bucket) #10, !dbg !964
  call void @llvm.dbg.declare(metadata ptr %bucket, metadata !961, metadata !DIExpression()), !dbg !965
  store i32 0, ptr %bucket, align 4, !dbg !965
  %0 = load i32, ptr %nr_iowaiters.addr, align 4, !dbg !966
  %tobool = icmp ne i32 %0, 0, !dbg !966
  br i1 %tobool, label %if.then, label %if.end, !dbg !968

if.then:                                          ; preds = %entry
  store i32 6, ptr %bucket, align 4, !dbg !969
  br label %if.end, !dbg !970

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %duration_ns.addr, align 8, !dbg !971
  %cmp = icmp ult i64 %1, 10000, !dbg !973
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !974

if.then1:                                         ; preds = %if.end
  %2 = load i32, ptr %bucket, align 4, !dbg !975
  store i32 %2, ptr %retval, align 4, !dbg !976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !976

if.end2:                                          ; preds = %if.end
  %3 = load i64, ptr %duration_ns.addr, align 8, !dbg !977
  %cmp3 = icmp ult i64 %3, 100000, !dbg !979
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !980

if.then4:                                         ; preds = %if.end2
  %4 = load i32, ptr %bucket, align 4, !dbg !981
  %add = add i32 %4, 1, !dbg !982
  store i32 %add, ptr %retval, align 4, !dbg !983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !983

if.end5:                                          ; preds = %if.end2
  %5 = load i64, ptr %duration_ns.addr, align 8, !dbg !984
  %cmp6 = icmp ult i64 %5, 1000000, !dbg !986
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !987

if.then7:                                         ; preds = %if.end5
  %6 = load i32, ptr %bucket, align 4, !dbg !988
  %add8 = add i32 %6, 2, !dbg !989
  store i32 %add8, ptr %retval, align 4, !dbg !990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !990

if.end9:                                          ; preds = %if.end5
  %7 = load i64, ptr %duration_ns.addr, align 8, !dbg !991
  %cmp10 = icmp ult i64 %7, 10000000, !dbg !993
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !994

if.then11:                                        ; preds = %if.end9
  %8 = load i32, ptr %bucket, align 4, !dbg !995
  %add12 = add i32 %8, 3, !dbg !996
  store i32 %add12, ptr %retval, align 4, !dbg !997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !997

if.end13:                                         ; preds = %if.end9
  %9 = load i64, ptr %duration_ns.addr, align 8, !dbg !998
  %cmp14 = icmp ult i64 %9, 100000000, !dbg !1000
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !1001

if.then15:                                        ; preds = %if.end13
  %10 = load i32, ptr %bucket, align 4, !dbg !1002
  %add16 = add i32 %10, 4, !dbg !1003
  store i32 %add16, ptr %retval, align 4, !dbg !1004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1004

if.end17:                                         ; preds = %if.end13
  %11 = load i32, ptr %bucket, align 4, !dbg !1005
  %add18 = add i32 %11, 5, !dbg !1006
  store i32 %add18, ptr %retval, align 4, !dbg !1007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1007

cleanup:                                          ; preds = %if.end17, %if.then15, %if.then11, %if.then7, %if.then4, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %bucket) #10, !dbg !1008
  %12 = load i32, ptr %retval, align 4, !dbg !1008
  ret i32 %12, !dbg !1008
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #7 align 16 !dbg !1009 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1014, metadata !DIExpression()), !dbg !1017
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1015, metadata !DIExpression()), !dbg !1018
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #10, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !1016, metadata !DIExpression()), !dbg !1020
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1021
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1022
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #9, !dbg !1023
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #10, !dbg !1024
  ret i64 %call, !dbg !1025
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1026 dso_local zeroext i1 @tick_nohz_tick_stopped() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) #7 align 16 !dbg !1029 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1033, metadata !DIExpression()), !dbg !1035
  store i64 %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1034, metadata !DIExpression()), !dbg !1036
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1037
  %1 = load i64, ptr %divisor.addr, align 8, !dbg !1038
  %div = udiv i64 %0, %1, !dbg !1039
  ret i64 %div, !dbg !1040
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @performance_multiplier(i32 noundef %nr_iowaiters) #7 align 16 !dbg !1041 {
entry:
  %nr_iowaiters.addr = alloca i32, align 4
  store i32 %nr_iowaiters, ptr %nr_iowaiters.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_iowaiters.addr, metadata !1045, metadata !DIExpression()), !dbg !1046
  %0 = load i32, ptr %nr_iowaiters.addr, align 4, !dbg !1047
  %mul = mul i32 10, %0, !dbg !1048
  %add = add i32 1, %mul, !dbg !1049
  ret i32 %add, !dbg !1050
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_us(i64 noundef %kt) #7 align 16 !dbg !1051 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !1056, metadata !DIExpression()), !dbg !1057
  %0 = load i64, ptr %kt.addr, align 8, !dbg !1058
  %call = call i64 @ktime_divns(i64 noundef %0, i64 noundef 1000) #9, !dbg !1059
  ret i64 %call, !dbg !1060
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) #7 align 16 !dbg !1061 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !1065, metadata !DIExpression()), !dbg !1072
  store i64 %div, ptr %div.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %div.addr, metadata !1066, metadata !DIExpression()), !dbg !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !1074
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1067, metadata !DIExpression()), !dbg !1074
  %0 = load i64, ptr %div.addr, align 8, !dbg !1074
  %cmp = icmp slt i64 %0, 0, !dbg !1074
  %lnot = xor i1 %cmp, true, !dbg !1074
  %lnot1 = xor i1 %lnot, true, !dbg !1074
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1074
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1074
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1075
  %tobool = icmp ne i32 %1, 0, !dbg !1075
  %lnot2 = xor i1 %tobool, true, !dbg !1075
  %lnot4 = xor i1 %lnot2, true, !dbg !1075
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !1075
  %conv = sext i32 %lnot.ext5 to i64, !dbg !1075
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1075
  %tobool6 = icmp ne i64 %expval, 0, !dbg !1075
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1074

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1075

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !1076
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1069, metadata !DIExpression()), !dbg !1076
  store i32 2305, ptr %__flags, align 4, !dbg !1076
  br label %do.body7, !dbg !1076

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !1077

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1077

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !1076

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !1079
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 154, i32 %2, i64 12) #10, !dbg !1079, !srcloc !1081
  br label %do.cond9, !dbg !1079

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1079

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !1076

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !1082

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1082

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !1075
  br label %do.cond14, !dbg !1076

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !1076

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !1076

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1074
  %tobool16 = icmp ne i32 %3, 0, !dbg !1074
  %lnot17 = xor i1 %tobool16, true, !dbg !1074
  %lnot19 = xor i1 %lnot17, true, !dbg !1074
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !1074
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !1074
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !1074
  store i64 %expval22, ptr %tmp, align 8, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !1084
  %4 = load i64, ptr %tmp, align 8, !dbg !1074
  %5 = load i64, ptr %kt.addr, align 8, !dbg !1085
  %6 = load i64, ptr %div.addr, align 8, !dbg !1086
  %div23 = sdiv i64 %5, %6, !dbg !1087
  ret i64 %div23, !dbg !1088
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #7 align 16 !dbg !1089 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1094, metadata !DIExpression()), !dbg !1097
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1095, metadata !DIExpression()), !dbg !1098
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !1096, metadata !DIExpression()), !dbg !1099
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1100
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1101
  %conv = zext i32 %1 to i64, !dbg !1101
  %rem = urem i64 %0, %conv, !dbg !1102
  %conv1 = trunc i64 %rem to i32, !dbg !1100
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !1103
  store i32 %conv1, ptr %2, align 4, !dbg !1104
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !1105
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !1106
  %conv2 = zext i32 %4 to i64, !dbg !1106
  %div = udiv i64 %3, %conv2, !dbg !1107
  ret i64 %div, !dbg !1108
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1109 dso_local zeroext i1 @tick_nohz_idle_got_tick() #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_menu__195_590_init_menu2196", scope: !2, file: !3, line: 590, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpuidle/governors/.menu.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpuidle/governors/menu\22 -D KBUILD_BASENAME=\22menu\22 -D KBUILD_MODNAME=\22menu\22 -D __KBUILD_MODNAME=kmod_menu -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpuidle/governors/menu.ll drivers/cpuidle/governors/menu.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !42, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/governors/menu.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7bd4cefb9c495cd304187b7fc514912b")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !35, !20, !36, !17, !39, !41}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "menu_device", file: !3, line: 111, size: 832, elements: !15)
!15 = !{!16, !18, !19, !25, !26, !30, !34}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "needs_update", scope: !14, file: !3, line: 112, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tick_wakeup", scope: !14, file: !3, line: 113, baseType: !17, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer_ns", scope: !14, file: !3, line: 115, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "bucket", scope: !14, file: !3, line: 116, baseType: !7, size: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "correction_factor", scope: !14, file: !3, line: 117, baseType: !27, size: 384, offset: 160)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 384, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 12)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "intervals", scope: !14, file: !3, line: 118, baseType: !31, size: 256, offset: 544)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 8)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "interval_ptr", scope: !14, file: !3, line: 119, baseType: !17, size: 32, offset: 800)
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !21, line: 22, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !23, line: 30, baseType: !38)
!38 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !40, line: 115, baseType: !36)
!40 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !40, line: 113, baseType: !20)
!42 = !{!0, !43, !165, !167}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "menu_governor", scope: !2, file: !3, line: 574, type: !45, isLocal: true, isDefinition: true)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_governor", file: !46, line: 288, size: 576, elements: !47)
!46 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4e37910f6e1ee8771b4e96ef73e2ef7")
!47 = !{!48, !53, !59, !60, !150, !154, !161}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !45, file: !46, line: 289, baseType: !49, size: 128)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !51)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !{!52}
!52 = !DISubrange(count: 16)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !45, file: !46, line: 290, baseType: !54, size: 128, offset: 128)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !40, line: 190, size: 128, elements: !55)
!55 = !{!56, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !40, line: 191, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !54, file: !40, line: 191, baseType: !57, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !45, file: !46, line: 291, baseType: !7, size: 32, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !45, file: !46, line: 293, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!17, !64, !94}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !46, line: 152, size: 8704, elements: !66)
!66 = !{!67, !70, !74, !75, !138, !139, !140, !149}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !46, line: 153, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !65, file: !46, line: 154, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !73, line: 103, flags: DIFlagFwdDecl)
!73 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !65, file: !46, line: 157, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !65, file: !46, line: 159, baseType: !76, size: 8320, offset: 192)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8320, elements: !120)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !46, line: 49, size: 832, elements: !78)
!78 = !{!79, !80, !84, !85, !86, !87, !88, !89, !90, !133, !137}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !77, file: !46, line: 50, baseType: !49, size: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !77, file: !46, line: 51, baseType: !81, size: 256, offset: 128)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 256, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !77, file: !46, line: 53, baseType: !36, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !77, file: !46, line: 54, baseType: !36, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !46, line: 55, baseType: !7, size: 32, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !77, file: !46, line: 56, baseType: !7, size: 32, offset: 544)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !77, file: !46, line: 57, baseType: !17, size: 32, offset: 576)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !77, file: !46, line: 58, baseType: !7, size: 32, offset: 608)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !77, file: !46, line: 60, baseType: !91, size: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!17, !94, !64, !17}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !46, line: 93, size: 6400, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !104, !105, !106, !107, !108, !122, !126, !129, !132}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !95, file: !46, line: 94, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !95, file: !46, line: 95, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !95, file: !46, line: 96, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !95, file: !46, line: 97, baseType: !7, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !95, file: !46, line: 98, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !103, line: 29, baseType: !36)
!103 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !95, file: !46, line: 100, baseType: !17, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !95, file: !46, line: 101, baseType: !20, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !95, file: !46, line: 102, baseType: !20, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !95, file: !46, line: 103, baseType: !20, size: 64, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !95, file: !46, line: 104, baseType: !109, size: 5120, offset: 384)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 5120, elements: !120)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !46, line: 36, size: 512, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !110, file: !46, line: 37, baseType: !24, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !110, file: !46, line: 38, baseType: !24, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !110, file: !46, line: 39, baseType: !20, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !110, file: !46, line: 40, baseType: !24, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !110, file: !46, line: 41, baseType: !24, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !110, file: !46, line: 42, baseType: !24, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !110, file: !46, line: 44, baseType: !24, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !110, file: !46, line: 45, baseType: !24, size: 64, offset: 448)
!120 = !{!121}
!121 = !DISubrange(count: 10)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !95, file: !46, line: 105, baseType: !123, size: 640, offset: 5504)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 640, elements: !120)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !46, line: 90, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !95, file: !46, line: 106, baseType: !127, size: 64, offset: 6144)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !46, line: 91, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !95, file: !46, line: 107, baseType: !130, size: 64, offset: 6208)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !46, line: 89, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !95, file: !46, line: 108, baseType: !54, size: 128, offset: 6272)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !77, file: !46, line: 64, baseType: !134, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!17, !94, !17}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !77, file: !46, line: 74, baseType: !91, size: 64, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !65, file: !46, line: 160, baseType: !17, size: 32, offset: 8512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !65, file: !46, line: 161, baseType: !17, size: 32, offset: 8544)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !65, file: !46, line: 164, baseType: !141, size: 64, offset: 8576)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !143, line: 19, size: 64, elements: !144)
!143 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !142, file: !143, line: 19, baseType: !146, size: 64)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 1)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !65, file: !46, line: 167, baseType: !68, size: 64, offset: 8640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !45, file: !46, line: 295, baseType: !151, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !64, !94}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !45, file: !46, line: 298, baseType: !155, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!17, !64, !94, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !40, line: 35, baseType: !160)
!160 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reflect", scope: !45, file: !46, line: 301, baseType: !162, size: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !94, !17}
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "menu_devices", scope: !2, file: !3, line: 161, type: !14, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !103, line: 154, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 176, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 22)
!172 = !{i32 7, !"Dwarf Version", i32 5}
!173 = !{i32 2, !"Debug Info Version", i32 3}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 8, !"cf-protection-branch", i32 1}
!176 = !{i32 4, !"function_return_thunk_extern", i32 1}
!177 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!178 = !{i32 1, !"Code Model", i32 2}
!179 = !{i32 1, !"override-stack-alignment", i32 8}
!180 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!181 = distinct !DISubprogram(name: "__initstub__kmod_menu__195_590_init_menu2", scope: !3, file: !3, line: 590, type: !182, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!182 = !DISubroutineType(types: !183)
!183 = !{!17}
!184 = !DILocation(line: 590, column: 1, scope: !181)
!185 = distinct !DISubprogram(name: "init_menu", scope: !3, file: !3, line: 585, type: !182, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!186 = !DILocation(line: 587, column: 9, scope: !185)
!187 = !DILocation(line: 587, column: 2, scope: !185)
!188 = !DISubprogram(name: "cpuidle_register_governor", scope: !46, file: !46, line: 304, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{!17, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!192 = distinct !DISubprogram(name: "menu_enable_device", scope: !3, file: !3, line: 556, type: !62, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!193 = !{!194, !195, !196, !197, !202, !204}
!194 = !DILocalVariable(name: "drv", arg: 1, scope: !192, file: !3, line: 556, type: !64)
!195 = !DILocalVariable(name: "dev", arg: 2, scope: !192, file: !3, line: 557, type: !94)
!196 = !DILocalVariable(name: "data", scope: !192, file: !3, line: 559, type: !13)
!197 = !DILocalVariable(name: "__vpp_verify", scope: !198, file: !3, line: 559, type: !200)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 559, column: 30)
!199 = distinct !DILexicalBlock(scope: !192, file: !3, line: 559, column: 30)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!202 = !DILocalVariable(name: "__ptr", scope: !203, file: !3, line: 559, type: !35)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 559, column: 30)
!204 = !DILocalVariable(name: "i", scope: !192, file: !3, line: 560, type: !17)
!205 = !DILocation(line: 556, column: 54, scope: !192)
!206 = !DILocation(line: 557, column: 28, scope: !192)
!207 = !DILocation(line: 559, column: 2, scope: !192)
!208 = !DILocation(line: 559, column: 22, scope: !192)
!209 = !DILocation(line: 559, column: 30, scope: !199)
!210 = !DILocation(line: 559, column: 30, scope: !198)
!211 = !DILocation(line: 559, column: 30, scope: !203)
!212 = !DILocation(line: 560, column: 2, scope: !192)
!213 = !DILocation(line: 560, column: 6, scope: !192)
!214 = !DILocation(line: 562, column: 9, scope: !192)
!215 = !DILocation(line: 562, column: 2, scope: !192)
!216 = !DILocation(line: 568, column: 8, scope: !217)
!217 = distinct !DILexicalBlock(scope: !192, file: !3, line: 568, column: 2)
!218 = !DILocation(line: 568, column: 6, scope: !217)
!219 = !DILocation(line: 568, column: 13, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !3, line: 568, column: 2)
!221 = !DILocation(line: 568, column: 15, scope: !220)
!222 = !DILocation(line: 568, column: 2, scope: !217)
!223 = !DILocation(line: 569, column: 3, scope: !220)
!224 = !DILocation(line: 569, column: 9, scope: !220)
!225 = !DILocation(line: 569, column: 27, scope: !220)
!226 = !DILocation(line: 569, column: 30, scope: !220)
!227 = !DILocation(line: 568, column: 27, scope: !220)
!228 = !DILocation(line: 568, column: 2, scope: !220)
!229 = distinct !{!229, !222, !230, !231, !232}
!230 = !DILocation(line: 569, column: 45, scope: !217)
!231 = !{!"llvm.loop.mustprogress"}
!232 = !{!"llvm.loop.unroll.disable"}
!233 = !DILocation(line: 572, column: 1, scope: !192)
!234 = !DILocation(line: 571, column: 2, scope: !192)
!235 = distinct !DISubprogram(name: "menu_select", scope: !3, file: !3, line: 262, type: !156, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!236 = !{!237, !238, !239, !240, !241, !244, !246, !247, !248, !249, !250, !251, !252, !253, !254, !257, !259, !260}
!237 = !DILocalVariable(name: "drv", arg: 1, scope: !235, file: !3, line: 262, type: !64)
!238 = !DILocalVariable(name: "dev", arg: 2, scope: !235, file: !3, line: 262, type: !94)
!239 = !DILocalVariable(name: "stop_tick", arg: 3, scope: !235, file: !3, line: 263, type: !158)
!240 = !DILocalVariable(name: "data", scope: !235, file: !3, line: 265, type: !13)
!241 = !DILocalVariable(name: "__vpp_verify", scope: !242, file: !3, line: 265, type: !200)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 265, column: 29)
!243 = distinct !DILexicalBlock(scope: !235, file: !3, line: 265, column: 29)
!244 = !DILocalVariable(name: "tcp_ptr__", scope: !245, file: !3, line: 265, type: !35)
!245 = distinct !DILexicalBlock(scope: !243, file: !3, line: 265, column: 29)
!246 = !DILocalVariable(name: "latency_req", scope: !235, file: !3, line: 266, type: !36)
!247 = !DILocalVariable(name: "predicted_ns", scope: !235, file: !3, line: 267, type: !20)
!248 = !DILocalVariable(name: "interactivity_req", scope: !235, file: !3, line: 268, type: !20)
!249 = !DILocalVariable(name: "nr_iowaiters", scope: !235, file: !3, line: 269, type: !7)
!250 = !DILocalVariable(name: "delta", scope: !235, file: !3, line: 270, type: !102)
!251 = !DILocalVariable(name: "delta_tick", scope: !235, file: !3, line: 270, type: !102)
!252 = !DILocalVariable(name: "i", scope: !235, file: !3, line: 271, type: !17)
!253 = !DILocalVariable(name: "idx", scope: !235, file: !3, line: 271, type: !17)
!254 = !DILocalVariable(name: "timer_us", scope: !255, file: !3, line: 283, type: !7)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 282, column: 45)
!256 = distinct !DILexicalBlock(scope: !235, file: !3, line: 282, column: 6)
!257 = !DILocalVariable(name: "__UNIQUE_ID___x193", scope: !258, file: !3, line: 301, type: !20)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 301, column: 18)
!259 = !DILocalVariable(name: "__UNIQUE_ID___y194", scope: !258, file: !3, line: 301, type: !20)
!260 = !DILocalVariable(name: "s", scope: !261, file: !3, line: 355, type: !264)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 354, column: 41)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 354, column: 2)
!263 = distinct !DILexicalBlock(scope: !235, file: !3, line: 354, column: 2)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!265 = !DILocation(line: 262, column: 47, scope: !235)
!266 = !DILocation(line: 262, column: 75, scope: !235)
!267 = !DILocation(line: 263, column: 16, scope: !235)
!268 = !DILocation(line: 265, column: 2, scope: !235)
!269 = !DILocation(line: 265, column: 22, scope: !235)
!270 = !DILocation(line: 265, column: 29, scope: !243)
!271 = !DILocation(line: 265, column: 29, scope: !242)
!272 = !DILocation(line: 265, column: 29, scope: !245)
!273 = !{i64 2152416896}
!274 = !DILocation(line: 266, column: 2, scope: !235)
!275 = !DILocation(line: 266, column: 6, scope: !235)
!276 = !DILocation(line: 266, column: 49, scope: !235)
!277 = !DILocation(line: 266, column: 54, scope: !235)
!278 = !DILocation(line: 266, column: 20, scope: !235)
!279 = !DILocation(line: 267, column: 2, scope: !235)
!280 = !DILocation(line: 267, column: 6, scope: !235)
!281 = !DILocation(line: 268, column: 2, scope: !235)
!282 = !DILocation(line: 268, column: 6, scope: !235)
!283 = !DILocation(line: 269, column: 2, scope: !235)
!284 = !DILocation(line: 269, column: 15, scope: !235)
!285 = !DILocation(line: 270, column: 2, scope: !235)
!286 = !DILocation(line: 270, column: 10, scope: !235)
!287 = !DILocation(line: 270, column: 17, scope: !235)
!288 = !DILocation(line: 271, column: 2, scope: !235)
!289 = !DILocation(line: 271, column: 6, scope: !235)
!290 = !DILocation(line: 271, column: 9, scope: !235)
!291 = !DILocation(line: 273, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !235, file: !3, line: 273, column: 6)
!293 = !DILocation(line: 273, column: 12, scope: !292)
!294 = !DILocation(line: 273, column: 6, scope: !235)
!295 = !DILocation(line: 274, column: 15, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 273, column: 26)
!297 = !DILocation(line: 274, column: 20, scope: !296)
!298 = !DILocation(line: 274, column: 3, scope: !296)
!299 = !DILocation(line: 275, column: 3, scope: !296)
!300 = !DILocation(line: 275, column: 9, scope: !296)
!301 = !DILocation(line: 275, column: 22, scope: !296)
!302 = !DILocation(line: 276, column: 2, scope: !296)
!303 = !DILocation(line: 278, column: 31, scope: !235)
!304 = !DILocation(line: 278, column: 36, scope: !235)
!305 = !DILocation(line: 278, column: 17, scope: !235)
!306 = !DILocation(line: 278, column: 15, scope: !235)
!307 = !DILocation(line: 281, column: 38, scope: !235)
!308 = !DILocation(line: 281, column: 17, scope: !235)
!309 = !DILocation(line: 281, column: 44, scope: !235)
!310 = !DILocation(line: 281, column: 15, scope: !235)
!311 = !DILocation(line: 282, column: 6, scope: !256)
!312 = !DILocation(line: 282, column: 19, scope: !256)
!313 = !DILocation(line: 282, column: 6, scope: !235)
!314 = !DILocation(line: 283, column: 3, scope: !255)
!315 = !DILocation(line: 283, column: 16, scope: !255)
!316 = !DILocation(line: 286, column: 11, scope: !255)
!317 = !DILocation(line: 286, column: 9, scope: !255)
!318 = !DILocation(line: 287, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !255, file: !3, line: 287, column: 7)
!320 = !DILocation(line: 287, column: 7, scope: !255)
!321 = !DILocation(line: 288, column: 10, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !3, line: 287, column: 28)
!323 = !DILocation(line: 289, column: 15, scope: !322)
!324 = !DILocation(line: 290, column: 3, scope: !322)
!325 = !DILocation(line: 292, column: 25, scope: !255)
!326 = !DILocation(line: 292, column: 3, scope: !255)
!327 = !DILocation(line: 292, column: 9, scope: !255)
!328 = !DILocation(line: 292, column: 23, scope: !255)
!329 = !DILocation(line: 293, column: 31, scope: !255)
!330 = !DILocation(line: 293, column: 37, scope: !255)
!331 = !DILocation(line: 293, column: 52, scope: !255)
!332 = !DILocation(line: 293, column: 18, scope: !255)
!333 = !DILocation(line: 293, column: 3, scope: !255)
!334 = !DILocation(line: 293, column: 9, scope: !255)
!335 = !DILocation(line: 293, column: 16, scope: !255)
!336 = !DILocation(line: 297, column: 6, scope: !255)
!337 = !DILocation(line: 297, column: 12, scope: !255)
!338 = !DILocation(line: 298, column: 7, scope: !255)
!339 = !DILocation(line: 298, column: 13, scope: !255)
!340 = !DILocation(line: 298, column: 31, scope: !255)
!341 = !DILocation(line: 298, column: 37, scope: !255)
!342 = !DILocation(line: 297, column: 26, scope: !255)
!343 = !DILocation(line: 296, column: 63, scope: !255)
!344 = !DILocation(line: 296, column: 14, scope: !255)
!345 = !DILocation(line: 296, column: 12, scope: !255)
!346 = !DILocation(line: 301, column: 18, scope: !258)
!347 = !DILocation(line: 301, column: 18, scope: !255)
!348 = !DILocation(line: 301, column: 16, scope: !255)
!349 = !DILocation(line: 302, column: 2, scope: !256)
!350 = !DILocation(line: 302, column: 2, scope: !255)
!351 = !DILocation(line: 309, column: 3, scope: !352)
!352 = distinct !DILexicalBlock(scope: !256, file: !3, line: 302, column: 9)
!353 = !DILocation(line: 309, column: 9, scope: !352)
!354 = !DILocation(line: 309, column: 23, scope: !352)
!355 = !DILocation(line: 310, column: 14, scope: !352)
!356 = !DILocation(line: 311, column: 42, scope: !352)
!357 = !DILocation(line: 311, column: 18, scope: !352)
!358 = !DILocation(line: 311, column: 3, scope: !352)
!359 = !DILocation(line: 311, column: 9, scope: !352)
!360 = !DILocation(line: 311, column: 16, scope: !352)
!361 = !DILocation(line: 314, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !235, file: !3, line: 314, column: 6)
!363 = !DILocation(line: 314, column: 58, scope: !362)
!364 = !DILocation(line: 315, column: 8, scope: !362)
!365 = !DILocation(line: 315, column: 14, scope: !362)
!366 = !DILocation(line: 315, column: 30, scope: !362)
!367 = !DILocation(line: 315, column: 35, scope: !362)
!368 = !DILocation(line: 315, column: 45, scope: !362)
!369 = !DILocation(line: 315, column: 28, scope: !362)
!370 = !DILocation(line: 315, column: 65, scope: !362)
!371 = !DILocation(line: 316, column: 8, scope: !362)
!372 = !DILocation(line: 316, column: 22, scope: !362)
!373 = !DILocation(line: 316, column: 27, scope: !362)
!374 = !DILocation(line: 316, column: 37, scope: !362)
!375 = !DILocation(line: 316, column: 20, scope: !362)
!376 = !DILocation(line: 316, column: 54, scope: !362)
!377 = !DILocation(line: 317, column: 8, scope: !362)
!378 = !DILocation(line: 317, column: 13, scope: !362)
!379 = !DILocation(line: 317, column: 29, scope: !362)
!380 = !DILocation(line: 314, column: 6, scope: !235)
!381 = !DILocation(line: 323, column: 18, scope: !382)
!382 = distinct !DILexicalBlock(scope: !362, file: !3, line: 317, column: 39)
!383 = !DILocation(line: 323, column: 23, scope: !382)
!384 = !DILocation(line: 323, column: 33, scope: !382)
!385 = !DILocation(line: 323, column: 39, scope: !382)
!386 = !DILocation(line: 323, column: 16, scope: !382)
!387 = !DILocation(line: 323, column: 4, scope: !382)
!388 = !DILocation(line: 323, column: 14, scope: !382)
!389 = !DILocation(line: 324, column: 3, scope: !382)
!390 = !DILocation(line: 327, column: 6, scope: !391)
!391 = distinct !DILexicalBlock(scope: !235, file: !3, line: 327, column: 6)
!392 = !DILocation(line: 327, column: 6, scope: !235)
!393 = !DILocation(line: 336, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 336, column: 7)
!395 = distinct !DILexicalBlock(scope: !391, file: !3, line: 327, column: 32)
!396 = !DILocation(line: 336, column: 20, scope: !394)
!397 = !DILocation(line: 336, column: 7, scope: !395)
!398 = !DILocation(line: 337, column: 19, scope: !394)
!399 = !DILocation(line: 337, column: 25, scope: !394)
!400 = !DILocation(line: 337, column: 17, scope: !394)
!401 = !DILocation(line: 337, column: 4, scope: !394)
!402 = !DILocation(line: 338, column: 2, scope: !395)
!403 = !DILocation(line: 343, column: 33, scope: !404)
!404 = distinct !DILexicalBlock(scope: !391, file: !3, line: 338, column: 9)
!405 = !DILocation(line: 344, column: 35, scope: !404)
!406 = !DILocation(line: 344, column: 12, scope: !404)
!407 = !DILocation(line: 343, column: 23, scope: !404)
!408 = !DILocation(line: 343, column: 21, scope: !404)
!409 = !DILocation(line: 345, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !404, file: !3, line: 345, column: 7)
!411 = !DILocation(line: 345, column: 21, scope: !410)
!412 = !DILocation(line: 345, column: 19, scope: !410)
!413 = !DILocation(line: 345, column: 7, scope: !404)
!414 = !DILocation(line: 346, column: 18, scope: !410)
!415 = !DILocation(line: 346, column: 16, scope: !410)
!416 = !DILocation(line: 346, column: 4, scope: !410)
!417 = !DILocation(line: 353, column: 6, scope: !235)
!418 = !DILocation(line: 354, column: 9, scope: !263)
!419 = !DILocation(line: 354, column: 7, scope: !263)
!420 = !DILocation(line: 354, column: 14, scope: !262)
!421 = !DILocation(line: 354, column: 18, scope: !262)
!422 = !DILocation(line: 354, column: 23, scope: !262)
!423 = !DILocation(line: 354, column: 16, scope: !262)
!424 = !DILocation(line: 354, column: 2, scope: !263)
!425 = !DILocation(line: 355, column: 3, scope: !261)
!426 = !DILocation(line: 355, column: 25, scope: !261)
!427 = !DILocation(line: 355, column: 30, scope: !261)
!428 = !DILocation(line: 355, column: 35, scope: !261)
!429 = !DILocation(line: 355, column: 42, scope: !261)
!430 = !DILocation(line: 357, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !261, file: !3, line: 357, column: 7)
!432 = !DILocation(line: 357, column: 12, scope: !431)
!433 = !DILocation(line: 357, column: 25, scope: !431)
!434 = !DILocation(line: 357, column: 28, scope: !431)
!435 = !DILocation(line: 357, column: 7, scope: !261)
!436 = !DILocation(line: 358, column: 4, scope: !431)
!437 = !DILocation(line: 360, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !261, file: !3, line: 360, column: 7)
!439 = !DILocation(line: 360, column: 11, scope: !438)
!440 = !DILocation(line: 360, column: 7, scope: !261)
!441 = !DILocation(line: 361, column: 10, scope: !438)
!442 = !DILocation(line: 361, column: 8, scope: !438)
!443 = !DILocation(line: 361, column: 4, scope: !438)
!444 = !DILocation(line: 363, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !261, file: !3, line: 363, column: 7)
!446 = !DILocation(line: 363, column: 10, scope: !445)
!447 = !DILocation(line: 363, column: 32, scope: !445)
!448 = !DILocation(line: 363, column: 30, scope: !445)
!449 = !DILocation(line: 363, column: 7, scope: !261)
!450 = !DILocation(line: 368, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 368, column: 8)
!452 = distinct !DILexicalBlock(scope: !445, file: !3, line: 363, column: 46)
!453 = !DILocation(line: 368, column: 14, scope: !451)
!454 = !DILocation(line: 368, column: 21, scope: !451)
!455 = !DILocation(line: 368, column: 26, scope: !451)
!456 = !DILocation(line: 368, column: 32, scope: !451)
!457 = !DILocation(line: 368, column: 56, scope: !451)
!458 = !DILocation(line: 369, column: 8, scope: !451)
!459 = !DILocation(line: 369, column: 11, scope: !451)
!460 = !DILocation(line: 369, column: 30, scope: !451)
!461 = !DILocation(line: 369, column: 27, scope: !451)
!462 = !DILocation(line: 369, column: 42, scope: !451)
!463 = !DILocation(line: 370, column: 8, scope: !451)
!464 = !DILocation(line: 370, column: 11, scope: !451)
!465 = !DILocation(line: 370, column: 34, scope: !451)
!466 = !DILocation(line: 370, column: 40, scope: !451)
!467 = !DILocation(line: 370, column: 31, scope: !451)
!468 = !DILocation(line: 368, column: 8, scope: !452)
!469 = !DILocation(line: 371, column: 20, scope: !470)
!470 = distinct !DILexicalBlock(scope: !451, file: !3, line: 370, column: 55)
!471 = !DILocation(line: 371, column: 23, scope: !470)
!472 = !DILocation(line: 371, column: 18, scope: !470)
!473 = !DILocation(line: 372, column: 11, scope: !470)
!474 = !DILocation(line: 372, column: 9, scope: !470)
!475 = !DILocation(line: 373, column: 5, scope: !470)
!476 = !DILocation(line: 375, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !452, file: !3, line: 375, column: 8)
!478 = !DILocation(line: 375, column: 21, scope: !477)
!479 = !DILocation(line: 375, column: 8, scope: !452)
!480 = !DILocation(line: 376, column: 5, scope: !477)
!481 = !DILocation(line: 378, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !452, file: !3, line: 378, column: 8)
!483 = !DILocation(line: 378, column: 8, scope: !452)
!484 = !DILocation(line: 385, column: 20, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !3, line: 378, column: 35)
!486 = !DILocation(line: 385, column: 25, scope: !485)
!487 = !DILocation(line: 385, column: 32, scope: !485)
!488 = !DILocation(line: 385, column: 37, scope: !485)
!489 = !DILocation(line: 385, column: 18, scope: !485)
!490 = !DILocation(line: 386, column: 5, scope: !485)
!491 = !DILocation(line: 395, column: 8, scope: !492)
!492 = distinct !DILexicalBlock(scope: !452, file: !3, line: 395, column: 8)
!493 = !DILocation(line: 395, column: 13, scope: !492)
!494 = !DILocation(line: 395, column: 20, scope: !492)
!495 = !DILocation(line: 395, column: 25, scope: !492)
!496 = !DILocation(line: 395, column: 45, scope: !492)
!497 = !DILocation(line: 395, column: 57, scope: !492)
!498 = !DILocation(line: 396, column: 8, scope: !492)
!499 = !DILocation(line: 396, column: 11, scope: !492)
!500 = !DILocation(line: 396, column: 34, scope: !492)
!501 = !DILocation(line: 396, column: 31, scope: !492)
!502 = !DILocation(line: 395, column: 8, scope: !452)
!503 = !DILocation(line: 397, column: 11, scope: !492)
!504 = !DILocation(line: 397, column: 9, scope: !492)
!505 = !DILocation(line: 397, column: 5, scope: !492)
!506 = !DILocation(line: 399, column: 11, scope: !452)
!507 = !DILocation(line: 399, column: 4, scope: !452)
!508 = !DILocation(line: 401, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !261, file: !3, line: 401, column: 7)
!510 = !DILocation(line: 401, column: 10, scope: !509)
!511 = !DILocation(line: 401, column: 28, scope: !509)
!512 = !DILocation(line: 401, column: 26, scope: !509)
!513 = !DILocation(line: 401, column: 7, scope: !261)
!514 = !DILocation(line: 402, column: 4, scope: !509)
!515 = !DILocation(line: 404, column: 9, scope: !261)
!516 = !DILocation(line: 404, column: 7, scope: !261)
!517 = !DILocation(line: 405, column: 2, scope: !262)
!518 = !DILocation(line: 405, column: 2, scope: !261)
!519 = !DILocation(line: 354, column: 37, scope: !262)
!520 = !DILocation(line: 354, column: 2, scope: !262)
!521 = distinct !{!521, !424, !522, !231, !232}
!522 = !DILocation(line: 405, column: 2, scope: !263)
!523 = !DILocation(line: 407, column: 6, scope: !524)
!524 = distinct !DILexicalBlock(scope: !235, file: !3, line: 407, column: 6)
!525 = !DILocation(line: 407, column: 10, scope: !524)
!526 = !DILocation(line: 407, column: 6, scope: !235)
!527 = !DILocation(line: 408, column: 7, scope: !524)
!528 = !DILocation(line: 408, column: 3, scope: !524)
!529 = !DILocation(line: 414, column: 8, scope: !530)
!530 = distinct !DILexicalBlock(scope: !235, file: !3, line: 414, column: 6)
!531 = !DILocation(line: 414, column: 13, scope: !530)
!532 = !DILocation(line: 414, column: 20, scope: !530)
!533 = !DILocation(line: 414, column: 25, scope: !530)
!534 = !DILocation(line: 414, column: 31, scope: !530)
!535 = !DILocation(line: 414, column: 55, scope: !530)
!536 = !DILocation(line: 415, column: 7, scope: !530)
!537 = !DILocation(line: 415, column: 20, scope: !530)
!538 = !DILocation(line: 415, column: 33, scope: !530)
!539 = !DILocation(line: 415, column: 37, scope: !530)
!540 = !DILocation(line: 414, column: 6, scope: !235)
!541 = !DILocation(line: 416, column: 4, scope: !542)
!542 = distinct !DILexicalBlock(scope: !530, file: !3, line: 415, column: 63)
!543 = !DILocation(line: 416, column: 14, scope: !542)
!544 = !DILocation(line: 418, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !3, line: 418, column: 7)
!546 = !DILocation(line: 418, column: 11, scope: !545)
!547 = !DILocation(line: 418, column: 15, scope: !545)
!548 = !DILocation(line: 418, column: 18, scope: !545)
!549 = !DILocation(line: 418, column: 23, scope: !545)
!550 = !DILocation(line: 418, column: 30, scope: !545)
!551 = !DILocation(line: 418, column: 35, scope: !545)
!552 = !DILocation(line: 418, column: 57, scope: !545)
!553 = !DILocation(line: 418, column: 55, scope: !545)
!554 = !DILocation(line: 418, column: 7, scope: !542)
!555 = !DILocation(line: 425, column: 13, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 425, column: 4)
!557 = distinct !DILexicalBlock(scope: !545, file: !3, line: 418, column: 69)
!558 = !DILocation(line: 425, column: 17, scope: !556)
!559 = !DILocation(line: 425, column: 11, scope: !556)
!560 = !DILocation(line: 425, column: 9, scope: !556)
!561 = !DILocation(line: 425, column: 22, scope: !562)
!562 = distinct !DILexicalBlock(scope: !556, file: !3, line: 425, column: 4)
!563 = !DILocation(line: 425, column: 24, scope: !562)
!564 = !DILocation(line: 425, column: 4, scope: !556)
!565 = !DILocation(line: 426, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 426, column: 9)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 425, column: 35)
!568 = !DILocation(line: 426, column: 14, scope: !566)
!569 = !DILocation(line: 426, column: 27, scope: !566)
!570 = !DILocation(line: 426, column: 30, scope: !566)
!571 = !DILocation(line: 426, column: 9, scope: !567)
!572 = !DILocation(line: 427, column: 6, scope: !566)
!573 = !DILocation(line: 429, column: 11, scope: !567)
!574 = !DILocation(line: 429, column: 9, scope: !567)
!575 = !DILocation(line: 430, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !567, file: !3, line: 430, column: 9)
!577 = !DILocation(line: 430, column: 14, scope: !576)
!578 = !DILocation(line: 430, column: 21, scope: !576)
!579 = !DILocation(line: 430, column: 24, scope: !576)
!580 = !DILocation(line: 430, column: 47, scope: !576)
!581 = !DILocation(line: 430, column: 44, scope: !576)
!582 = !DILocation(line: 430, column: 9, scope: !567)
!583 = !DILocation(line: 431, column: 6, scope: !576)
!584 = !DILocation(line: 432, column: 4, scope: !567)
!585 = !DILocation(line: 425, column: 31, scope: !562)
!586 = !DILocation(line: 425, column: 4, scope: !562)
!587 = distinct !{!587, !564, !588, !231, !232}
!588 = !DILocation(line: 432, column: 4, scope: !556)
!589 = !DILocation(line: 433, column: 3, scope: !557)
!590 = !DILocation(line: 434, column: 2, scope: !542)
!591 = !DILocation(line: 436, column: 9, scope: !235)
!592 = !DILocation(line: 436, column: 2, scope: !235)
!593 = !DILocation(line: 437, column: 1, scope: !235)
!594 = distinct !DISubprogram(name: "menu_reflect", scope: !3, file: !3, line: 447, type: !163, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !595)
!595 = !{!596, !597, !598, !599, !602}
!596 = !DILocalVariable(name: "dev", arg: 1, scope: !594, file: !3, line: 447, type: !94)
!597 = !DILocalVariable(name: "index", arg: 2, scope: !594, file: !3, line: 447, type: !17)
!598 = !DILocalVariable(name: "data", scope: !594, file: !3, line: 449, type: !13)
!599 = !DILocalVariable(name: "__vpp_verify", scope: !600, file: !3, line: 449, type: !200)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 449, column: 29)
!601 = distinct !DILexicalBlock(scope: !594, file: !3, line: 449, column: 29)
!602 = !DILocalVariable(name: "tcp_ptr__", scope: !603, file: !3, line: 449, type: !35)
!603 = distinct !DILexicalBlock(scope: !601, file: !3, line: 449, column: 29)
!604 = !DILocation(line: 447, column: 49, scope: !594)
!605 = !DILocation(line: 447, column: 58, scope: !594)
!606 = !DILocation(line: 449, column: 2, scope: !594)
!607 = !DILocation(line: 449, column: 22, scope: !594)
!608 = !DILocation(line: 449, column: 29, scope: !601)
!609 = !DILocation(line: 449, column: 29, scope: !600)
!610 = !DILocation(line: 449, column: 29, scope: !603)
!611 = !{i64 2152427529}
!612 = !DILocation(line: 451, column: 24, scope: !594)
!613 = !DILocation(line: 451, column: 2, scope: !594)
!614 = !DILocation(line: 451, column: 7, scope: !594)
!615 = !DILocation(line: 451, column: 22, scope: !594)
!616 = !DILocation(line: 452, column: 2, scope: !594)
!617 = !DILocation(line: 452, column: 8, scope: !594)
!618 = !DILocation(line: 452, column: 21, scope: !594)
!619 = !DILocation(line: 453, column: 22, scope: !594)
!620 = !DILocation(line: 453, column: 2, scope: !594)
!621 = !DILocation(line: 453, column: 8, scope: !594)
!622 = !DILocation(line: 453, column: 20, scope: !594)
!623 = !DILocation(line: 454, column: 1, scope: !594)
!624 = !DISubprogram(name: "cpuidle_governor_latency_req", scope: !46, file: !46, line: 305, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!625 = !DISubroutineType(types: !626)
!626 = !{!36, !7}
!627 = distinct !DISubprogram(name: "menu_update", scope: !3, file: !3, line: 461, type: !152, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!628 = !{!629, !630, !631, !632, !635, !637, !638, !639, !640}
!629 = !DILocalVariable(name: "drv", arg: 1, scope: !627, file: !3, line: 461, type: !64)
!630 = !DILocalVariable(name: "dev", arg: 2, scope: !627, file: !3, line: 461, type: !94)
!631 = !DILocalVariable(name: "data", scope: !627, file: !3, line: 463, type: !13)
!632 = !DILocalVariable(name: "__vpp_verify", scope: !633, file: !3, line: 463, type: !200)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 463, column: 29)
!634 = distinct !DILexicalBlock(scope: !627, file: !3, line: 463, column: 29)
!635 = !DILocalVariable(name: "tcp_ptr__", scope: !636, file: !3, line: 463, type: !35)
!636 = distinct !DILexicalBlock(scope: !634, file: !3, line: 463, column: 29)
!637 = !DILocalVariable(name: "last_idx", scope: !627, file: !3, line: 464, type: !17)
!638 = !DILocalVariable(name: "target", scope: !627, file: !3, line: 465, type: !264)
!639 = !DILocalVariable(name: "measured_ns", scope: !627, file: !3, line: 466, type: !20)
!640 = !DILocalVariable(name: "new_factor", scope: !627, file: !3, line: 467, type: !7)
!641 = !DILocation(line: 461, column: 48, scope: !627)
!642 = !DILocation(line: 461, column: 76, scope: !627)
!643 = !DILocation(line: 463, column: 2, scope: !627)
!644 = !DILocation(line: 463, column: 22, scope: !627)
!645 = !DILocation(line: 463, column: 29, scope: !634)
!646 = !DILocation(line: 463, column: 29, scope: !633)
!647 = !DILocation(line: 463, column: 29, scope: !636)
!648 = !{i64 2152428163}
!649 = !DILocation(line: 464, column: 2, scope: !627)
!650 = !DILocation(line: 464, column: 6, scope: !627)
!651 = !DILocation(line: 464, column: 17, scope: !627)
!652 = !DILocation(line: 464, column: 22, scope: !627)
!653 = !DILocation(line: 465, column: 2, scope: !627)
!654 = !DILocation(line: 465, column: 24, scope: !627)
!655 = !DILocation(line: 465, column: 34, scope: !627)
!656 = !DILocation(line: 465, column: 39, scope: !627)
!657 = !DILocation(line: 465, column: 46, scope: !627)
!658 = !DILocation(line: 466, column: 2, scope: !627)
!659 = !DILocation(line: 466, column: 6, scope: !627)
!660 = !DILocation(line: 467, column: 2, scope: !627)
!661 = !DILocation(line: 467, column: 15, scope: !627)
!662 = !DILocation(line: 484, column: 6, scope: !663)
!663 = distinct !DILexicalBlock(scope: !627, file: !3, line: 484, column: 6)
!664 = !DILocation(line: 484, column: 12, scope: !663)
!665 = !DILocation(line: 484, column: 24, scope: !663)
!666 = !DILocation(line: 484, column: 27, scope: !663)
!667 = !DILocation(line: 484, column: 33, scope: !663)
!668 = !DILocation(line: 484, column: 47, scope: !663)
!669 = !DILocation(line: 484, column: 6, scope: !627)
!670 = !DILocation(line: 494, column: 15, scope: !671)
!671 = distinct !DILexicalBlock(scope: !663, file: !3, line: 484, column: 60)
!672 = !DILocation(line: 495, column: 2, scope: !671)
!673 = !DILocation(line: 495, column: 14, scope: !674)
!674 = distinct !DILexicalBlock(scope: !663, file: !3, line: 495, column: 13)
!675 = !DILocation(line: 495, column: 19, scope: !674)
!676 = !DILocation(line: 495, column: 26, scope: !674)
!677 = !DILocation(line: 495, column: 36, scope: !674)
!678 = !DILocation(line: 495, column: 42, scope: !674)
!679 = !DILocation(line: 495, column: 66, scope: !674)
!680 = !DILocation(line: 496, column: 6, scope: !674)
!681 = !DILocation(line: 496, column: 11, scope: !674)
!682 = !DILocation(line: 495, column: 13, scope: !663)
!683 = !DILocation(line: 504, column: 17, scope: !684)
!684 = distinct !DILexicalBlock(scope: !674, file: !3, line: 496, column: 28)
!685 = !DILocation(line: 504, column: 23, scope: !684)
!686 = !DILocation(line: 504, column: 15, scope: !684)
!687 = !DILocation(line: 505, column: 2, scope: !684)
!688 = !DILocation(line: 507, column: 17, scope: !689)
!689 = distinct !DILexicalBlock(scope: !674, file: !3, line: 505, column: 9)
!690 = !DILocation(line: 507, column: 22, scope: !689)
!691 = !DILocation(line: 507, column: 15, scope: !689)
!692 = !DILocation(line: 510, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !3, line: 510, column: 7)
!694 = !DILocation(line: 510, column: 25, scope: !693)
!695 = !DILocation(line: 510, column: 33, scope: !693)
!696 = !DILocation(line: 510, column: 23, scope: !693)
!697 = !DILocation(line: 510, column: 19, scope: !693)
!698 = !DILocation(line: 510, column: 7, scope: !689)
!699 = !DILocation(line: 511, column: 19, scope: !693)
!700 = !DILocation(line: 511, column: 27, scope: !693)
!701 = !DILocation(line: 511, column: 16, scope: !693)
!702 = !DILocation(line: 511, column: 4, scope: !693)
!703 = !DILocation(line: 513, column: 16, scope: !693)
!704 = !DILocation(line: 517, column: 6, scope: !705)
!705 = distinct !DILexicalBlock(scope: !627, file: !3, line: 517, column: 6)
!706 = !DILocation(line: 517, column: 20, scope: !705)
!707 = !DILocation(line: 517, column: 26, scope: !705)
!708 = !DILocation(line: 517, column: 18, scope: !705)
!709 = !DILocation(line: 517, column: 6, scope: !627)
!710 = !DILocation(line: 518, column: 17, scope: !705)
!711 = !DILocation(line: 518, column: 23, scope: !705)
!712 = !DILocation(line: 518, column: 15, scope: !705)
!713 = !DILocation(line: 518, column: 3, scope: !705)
!714 = !DILocation(line: 521, column: 15, scope: !627)
!715 = !DILocation(line: 521, column: 21, scope: !627)
!716 = !DILocation(line: 521, column: 39, scope: !627)
!717 = !DILocation(line: 521, column: 45, scope: !627)
!718 = !DILocation(line: 521, column: 13, scope: !627)
!719 = !DILocation(line: 522, column: 16, scope: !627)
!720 = !DILocation(line: 522, column: 27, scope: !627)
!721 = !DILocation(line: 522, column: 13, scope: !627)
!722 = !DILocation(line: 524, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !627, file: !3, line: 524, column: 6)
!724 = !DILocation(line: 524, column: 12, scope: !723)
!725 = !DILocation(line: 524, column: 26, scope: !723)
!726 = !DILocation(line: 524, column: 30, scope: !723)
!727 = !DILocation(line: 524, column: 33, scope: !723)
!728 = !DILocation(line: 524, column: 45, scope: !723)
!729 = !DILocation(line: 524, column: 6, scope: !627)
!730 = !DILocation(line: 525, column: 40, scope: !723)
!731 = !DILocation(line: 525, column: 38, scope: !723)
!732 = !DILocation(line: 526, column: 6, scope: !723)
!733 = !DILocation(line: 526, column: 12, scope: !723)
!734 = !DILocation(line: 525, column: 17, scope: !723)
!735 = !DILocation(line: 525, column: 14, scope: !723)
!736 = !DILocation(line: 525, column: 3, scope: !723)
!737 = !DILocation(line: 532, column: 14, scope: !723)
!738 = !DILocation(line: 543, column: 42, scope: !627)
!739 = !DILocation(line: 543, column: 2, scope: !627)
!740 = !DILocation(line: 543, column: 8, scope: !627)
!741 = !DILocation(line: 543, column: 26, scope: !627)
!742 = !DILocation(line: 543, column: 32, scope: !627)
!743 = !DILocation(line: 543, column: 40, scope: !627)
!744 = !DILocation(line: 546, column: 54, scope: !627)
!745 = !DILocation(line: 546, column: 42, scope: !627)
!746 = !DILocation(line: 546, column: 2, scope: !627)
!747 = !DILocation(line: 546, column: 8, scope: !627)
!748 = !DILocation(line: 546, column: 18, scope: !627)
!749 = !DILocation(line: 546, column: 24, scope: !627)
!750 = !DILocation(line: 546, column: 36, scope: !627)
!751 = !DILocation(line: 546, column: 40, scope: !627)
!752 = !DILocation(line: 547, column: 6, scope: !753)
!753 = distinct !DILexicalBlock(scope: !627, file: !3, line: 547, column: 6)
!754 = !DILocation(line: 547, column: 12, scope: !753)
!755 = !DILocation(line: 547, column: 25, scope: !753)
!756 = !DILocation(line: 547, column: 6, scope: !627)
!757 = !DILocation(line: 548, column: 3, scope: !753)
!758 = !DILocation(line: 548, column: 9, scope: !753)
!759 = !DILocation(line: 548, column: 22, scope: !753)
!760 = !DILocation(line: 549, column: 1, scope: !627)
!761 = !DISubprogram(name: "nr_iowait_cpu", scope: !762, file: !762, line: 23, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!762 = !DIFile(filename: "./include/linux/sched/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad03080d260767f7ddda1946e921a1ea")
!763 = !DISubroutineType(types: !764)
!764 = !{!7, !17}
!765 = distinct !DISubprogram(name: "get_typical_interval", scope: !3, file: !3, line: 171, type: !766, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{!7, !13}
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !783, !787, !790, !796}
!769 = !DILocalVariable(name: "data", arg: 1, scope: !765, file: !3, line: 171, type: !13)
!770 = !DILocalVariable(name: "i", scope: !765, file: !3, line: 173, type: !17)
!771 = !DILocalVariable(name: "divisor", scope: !765, file: !3, line: 173, type: !17)
!772 = !DILocalVariable(name: "min", scope: !765, file: !3, line: 174, type: !7)
!773 = !DILocalVariable(name: "max", scope: !765, file: !3, line: 174, type: !7)
!774 = !DILocalVariable(name: "thresh", scope: !765, file: !3, line: 174, type: !7)
!775 = !DILocalVariable(name: "avg", scope: !765, file: !3, line: 174, type: !7)
!776 = !DILocalVariable(name: "sum", scope: !765, file: !3, line: 175, type: !41)
!777 = !DILocalVariable(name: "variance", scope: !765, file: !3, line: 175, type: !41)
!778 = !DILabel(scope: !765, name: "again", file: !3, line: 179)
!779 = !DILocalVariable(name: "value", scope: !780, file: !3, line: 187, type: !7)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 186, column: 34)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 186, column: 2)
!782 = distinct !DILexicalBlock(scope: !765, file: !3, line: 186, column: 2)
!783 = !DILocalVariable(name: "value", scope: !784, file: !3, line: 210, type: !7)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 209, column: 34)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 209, column: 2)
!786 = distinct !DILexicalBlock(scope: !765, file: !3, line: 209, column: 2)
!787 = !DILocalVariable(name: "diff", scope: !788, file: !3, line: 212, type: !39)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 211, column: 24)
!789 = distinct !DILexicalBlock(scope: !784, file: !3, line: 211, column: 7)
!790 = !DILocalVariable(name: "__base", scope: !791, file: !3, line: 219, type: !793)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 219, column: 3)
!792 = distinct !DILexicalBlock(scope: !765, file: !3, line: 216, column: 6)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !40, line: 110, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!796 = !DILocalVariable(name: "__rem", scope: !791, file: !3, line: 219, type: !793)
!797 = !DILocation(line: 171, column: 62, scope: !765)
!798 = !DILocation(line: 173, column: 2, scope: !765)
!799 = !DILocation(line: 173, column: 6, scope: !765)
!800 = !DILocation(line: 173, column: 9, scope: !765)
!801 = !DILocation(line: 174, column: 2, scope: !765)
!802 = !DILocation(line: 174, column: 15, scope: !765)
!803 = !DILocation(line: 174, column: 20, scope: !765)
!804 = !DILocation(line: 174, column: 25, scope: !765)
!805 = !DILocation(line: 174, column: 33, scope: !765)
!806 = !DILocation(line: 175, column: 2, scope: !765)
!807 = !DILocation(line: 175, column: 11, scope: !765)
!808 = !DILocation(line: 175, column: 16, scope: !765)
!809 = !DILocation(line: 177, column: 9, scope: !765)
!810 = !DILocation(line: 177, column: 2, scope: !765)
!811 = !DILocation(line: 179, column: 1, scope: !765)
!812 = !DILocation(line: 182, column: 6, scope: !765)
!813 = !DILocation(line: 183, column: 6, scope: !765)
!814 = !DILocation(line: 184, column: 6, scope: !765)
!815 = !DILocation(line: 185, column: 10, scope: !765)
!816 = !DILocation(line: 186, column: 9, scope: !782)
!817 = !DILocation(line: 186, column: 7, scope: !782)
!818 = !DILocation(line: 186, column: 14, scope: !781)
!819 = !DILocation(line: 186, column: 16, scope: !781)
!820 = !DILocation(line: 186, column: 2, scope: !782)
!821 = !DILocation(line: 187, column: 3, scope: !780)
!822 = !DILocation(line: 187, column: 16, scope: !780)
!823 = !DILocation(line: 187, column: 24, scope: !780)
!824 = !DILocation(line: 187, column: 30, scope: !780)
!825 = !DILocation(line: 187, column: 40, scope: !780)
!826 = !DILocation(line: 188, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !780, file: !3, line: 188, column: 7)
!828 = !DILocation(line: 188, column: 16, scope: !827)
!829 = !DILocation(line: 188, column: 13, scope: !827)
!830 = !DILocation(line: 188, column: 7, scope: !780)
!831 = !DILocation(line: 189, column: 11, scope: !832)
!832 = distinct !DILexicalBlock(scope: !827, file: !3, line: 188, column: 24)
!833 = !DILocation(line: 189, column: 8, scope: !832)
!834 = !DILocation(line: 190, column: 11, scope: !832)
!835 = !DILocation(line: 191, column: 8, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !3, line: 191, column: 8)
!837 = !DILocation(line: 191, column: 16, scope: !836)
!838 = !DILocation(line: 191, column: 14, scope: !836)
!839 = !DILocation(line: 191, column: 8, scope: !832)
!840 = !DILocation(line: 192, column: 11, scope: !836)
!841 = !DILocation(line: 192, column: 9, scope: !836)
!842 = !DILocation(line: 192, column: 5, scope: !836)
!843 = !DILocation(line: 194, column: 8, scope: !844)
!844 = distinct !DILexicalBlock(scope: !832, file: !3, line: 194, column: 8)
!845 = !DILocation(line: 194, column: 16, scope: !844)
!846 = !DILocation(line: 194, column: 14, scope: !844)
!847 = !DILocation(line: 194, column: 8, scope: !832)
!848 = !DILocation(line: 195, column: 11, scope: !844)
!849 = !DILocation(line: 195, column: 9, scope: !844)
!850 = !DILocation(line: 195, column: 5, scope: !844)
!851 = !DILocation(line: 196, column: 3, scope: !832)
!852 = !DILocation(line: 197, column: 2, scope: !781)
!853 = !DILocation(line: 197, column: 2, scope: !780)
!854 = !DILocation(line: 186, column: 30, scope: !781)
!855 = !DILocation(line: 186, column: 2, scope: !781)
!856 = distinct !{!856, !820, !857, !231, !232}
!857 = !DILocation(line: 197, column: 2, scope: !782)
!858 = !DILocation(line: 199, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !765, file: !3, line: 199, column: 6)
!860 = !DILocation(line: 199, column: 6, scope: !765)
!861 = !DILocation(line: 200, column: 3, scope: !859)
!862 = !DILocation(line: 202, column: 6, scope: !863)
!863 = distinct !DILexicalBlock(scope: !765, file: !3, line: 202, column: 6)
!864 = !DILocation(line: 202, column: 14, scope: !863)
!865 = !DILocation(line: 202, column: 6, scope: !765)
!866 = !DILocation(line: 203, column: 9, scope: !863)
!867 = !DILocation(line: 203, column: 13, scope: !863)
!868 = !DILocation(line: 203, column: 7, scope: !863)
!869 = !DILocation(line: 203, column: 3, scope: !863)
!870 = !DILocation(line: 205, column: 17, scope: !863)
!871 = !DILocation(line: 205, column: 22, scope: !863)
!872 = !DILocation(line: 205, column: 9, scope: !863)
!873 = !DILocation(line: 205, column: 7, scope: !863)
!874 = !DILocation(line: 208, column: 11, scope: !765)
!875 = !DILocation(line: 209, column: 9, scope: !786)
!876 = !DILocation(line: 209, column: 7, scope: !786)
!877 = !DILocation(line: 209, column: 14, scope: !785)
!878 = !DILocation(line: 209, column: 16, scope: !785)
!879 = !DILocation(line: 209, column: 2, scope: !786)
!880 = !DILocation(line: 210, column: 3, scope: !784)
!881 = !DILocation(line: 210, column: 16, scope: !784)
!882 = !DILocation(line: 210, column: 24, scope: !784)
!883 = !DILocation(line: 210, column: 30, scope: !784)
!884 = !DILocation(line: 210, column: 40, scope: !784)
!885 = !DILocation(line: 211, column: 7, scope: !789)
!886 = !DILocation(line: 211, column: 16, scope: !789)
!887 = !DILocation(line: 211, column: 13, scope: !789)
!888 = !DILocation(line: 211, column: 7, scope: !784)
!889 = !DILocation(line: 212, column: 4, scope: !788)
!890 = !DILocation(line: 212, column: 12, scope: !788)
!891 = !DILocation(line: 212, column: 28, scope: !788)
!892 = !DILocation(line: 212, column: 19, scope: !788)
!893 = !DILocation(line: 212, column: 36, scope: !788)
!894 = !DILocation(line: 212, column: 34, scope: !788)
!895 = !DILocation(line: 213, column: 16, scope: !788)
!896 = !DILocation(line: 213, column: 23, scope: !788)
!897 = !DILocation(line: 213, column: 21, scope: !788)
!898 = !DILocation(line: 213, column: 13, scope: !788)
!899 = !DILocation(line: 214, column: 3, scope: !789)
!900 = !DILocation(line: 214, column: 3, scope: !788)
!901 = !DILocation(line: 215, column: 2, scope: !785)
!902 = !DILocation(line: 215, column: 2, scope: !784)
!903 = !DILocation(line: 209, column: 30, scope: !785)
!904 = !DILocation(line: 209, column: 2, scope: !785)
!905 = distinct !{!905, !879, !906, !231, !232}
!906 = !DILocation(line: 215, column: 2, scope: !786)
!907 = !DILocation(line: 216, column: 6, scope: !792)
!908 = !DILocation(line: 216, column: 14, scope: !792)
!909 = !DILocation(line: 216, column: 6, scope: !765)
!910 = !DILocation(line: 217, column: 12, scope: !792)
!911 = !DILocation(line: 217, column: 3, scope: !792)
!912 = !DILocation(line: 219, column: 3, scope: !791)
!913 = !DILocation(line: 219, column: 3, scope: !792)
!914 = !DILocation(line: 233, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !765, file: !3, line: 233, column: 6)
!916 = !DILocation(line: 233, column: 6, scope: !765)
!917 = !DILocation(line: 234, column: 14, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 234, column: 7)
!919 = distinct !DILexicalBlock(scope: !915, file: !3, line: 233, column: 38)
!920 = !DILocation(line: 234, column: 9, scope: !918)
!921 = !DILocation(line: 234, column: 18, scope: !918)
!922 = !DILocation(line: 234, column: 17, scope: !918)
!923 = !DILocation(line: 234, column: 24, scope: !918)
!924 = !DILocation(line: 234, column: 32, scope: !918)
!925 = !DILocation(line: 234, column: 22, scope: !918)
!926 = !DILocation(line: 234, column: 37, scope: !918)
!927 = !DILocation(line: 234, column: 41, scope: !918)
!928 = !DILocation(line: 234, column: 49, scope: !918)
!929 = !DILocation(line: 234, column: 53, scope: !918)
!930 = !DILocation(line: 235, column: 8, scope: !918)
!931 = !DILocation(line: 235, column: 11, scope: !918)
!932 = !DILocation(line: 235, column: 20, scope: !918)
!933 = !DILocation(line: 234, column: 7, scope: !919)
!934 = !DILocation(line: 236, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !918, file: !3, line: 235, column: 28)
!936 = !DILocation(line: 236, column: 4, scope: !935)
!937 = !DILocation(line: 238, column: 2, scope: !919)
!938 = !DILocation(line: 249, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !765, file: !3, line: 249, column: 6)
!940 = !DILocation(line: 249, column: 15, scope: !939)
!941 = !DILocation(line: 249, column: 6, scope: !939)
!942 = !DILocation(line: 249, column: 20, scope: !939)
!943 = !DILocation(line: 249, column: 6, scope: !765)
!944 = !DILocation(line: 250, column: 3, scope: !939)
!945 = !DILocation(line: 252, column: 11, scope: !765)
!946 = !DILocation(line: 252, column: 15, scope: !765)
!947 = !DILocation(line: 252, column: 9, scope: !765)
!948 = !DILocation(line: 253, column: 2, scope: !765)
!949 = !DILocation(line: 254, column: 1, scope: !765)
!950 = !DISubprogram(name: "tick_nohz_get_sleep_length", scope: !951, file: !951, line: 138, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e1e58d669c75211497f9e6bb3ab6476")
!952 = !DISubroutineType(types: !953)
!953 = !{!102, !954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!955 = distinct !DISubprogram(name: "which_bucket", scope: !3, file: !3, line: 122, type: !956, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{!17, !20, !7}
!958 = !{!959, !960, !961}
!959 = !DILocalVariable(name: "duration_ns", arg: 1, scope: !955, file: !3, line: 122, type: !20)
!960 = !DILocalVariable(name: "nr_iowaiters", arg: 2, scope: !955, file: !3, line: 122, type: !7)
!961 = !DILocalVariable(name: "bucket", scope: !955, file: !3, line: 124, type: !17)
!962 = !DILocation(line: 122, column: 36, scope: !955)
!963 = !DILocation(line: 122, column: 62, scope: !955)
!964 = !DILocation(line: 124, column: 2, scope: !955)
!965 = !DILocation(line: 124, column: 6, scope: !955)
!966 = !DILocation(line: 132, column: 6, scope: !967)
!967 = distinct !DILexicalBlock(scope: !955, file: !3, line: 132, column: 6)
!968 = !DILocation(line: 132, column: 6, scope: !955)
!969 = !DILocation(line: 133, column: 10, scope: !967)
!970 = !DILocation(line: 133, column: 3, scope: !967)
!971 = !DILocation(line: 135, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !955, file: !3, line: 135, column: 6)
!973 = !DILocation(line: 135, column: 18, scope: !972)
!974 = !DILocation(line: 135, column: 6, scope: !955)
!975 = !DILocation(line: 136, column: 10, scope: !972)
!976 = !DILocation(line: 136, column: 3, scope: !972)
!977 = !DILocation(line: 137, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !955, file: !3, line: 137, column: 6)
!979 = !DILocation(line: 137, column: 18, scope: !978)
!980 = !DILocation(line: 137, column: 6, scope: !955)
!981 = !DILocation(line: 138, column: 10, scope: !978)
!982 = !DILocation(line: 138, column: 17, scope: !978)
!983 = !DILocation(line: 138, column: 3, scope: !978)
!984 = !DILocation(line: 139, column: 6, scope: !985)
!985 = distinct !DILexicalBlock(scope: !955, file: !3, line: 139, column: 6)
!986 = !DILocation(line: 139, column: 18, scope: !985)
!987 = !DILocation(line: 139, column: 6, scope: !955)
!988 = !DILocation(line: 140, column: 10, scope: !985)
!989 = !DILocation(line: 140, column: 17, scope: !985)
!990 = !DILocation(line: 140, column: 3, scope: !985)
!991 = !DILocation(line: 141, column: 6, scope: !992)
!992 = distinct !DILexicalBlock(scope: !955, file: !3, line: 141, column: 6)
!993 = !DILocation(line: 141, column: 18, scope: !992)
!994 = !DILocation(line: 141, column: 6, scope: !955)
!995 = !DILocation(line: 142, column: 10, scope: !992)
!996 = !DILocation(line: 142, column: 17, scope: !992)
!997 = !DILocation(line: 142, column: 3, scope: !992)
!998 = !DILocation(line: 143, column: 6, scope: !999)
!999 = distinct !DILexicalBlock(scope: !955, file: !3, line: 143, column: 6)
!1000 = !DILocation(line: 143, column: 18, scope: !999)
!1001 = !DILocation(line: 143, column: 6, scope: !955)
!1002 = !DILocation(line: 144, column: 10, scope: !999)
!1003 = !DILocation(line: 144, column: 17, scope: !999)
!1004 = !DILocation(line: 144, column: 3, scope: !999)
!1005 = !DILocation(line: 145, column: 9, scope: !955)
!1006 = !DILocation(line: 145, column: 16, scope: !955)
!1007 = !DILocation(line: 145, column: 2, scope: !955)
!1008 = !DILocation(line: 146, column: 1, scope: !955)
!1009 = distinct !DISubprogram(name: "div_u64", scope: !1010, file: !1010, line: 127, type: !1011, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1010 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!20, !20, !794}
!1013 = !{!1014, !1015, !1016}
!1014 = !DILocalVariable(name: "dividend", arg: 1, scope: !1009, file: !1010, line: 127, type: !20)
!1015 = !DILocalVariable(name: "divisor", arg: 2, scope: !1009, file: !1010, line: 127, type: !794)
!1016 = !DILocalVariable(name: "remainder", scope: !1009, file: !1010, line: 129, type: !794)
!1017 = !DILocation(line: 127, column: 31, scope: !1009)
!1018 = !DILocation(line: 127, column: 45, scope: !1009)
!1019 = !DILocation(line: 129, column: 2, scope: !1009)
!1020 = !DILocation(line: 129, column: 6, scope: !1009)
!1021 = !DILocation(line: 130, column: 21, scope: !1009)
!1022 = !DILocation(line: 130, column: 31, scope: !1009)
!1023 = !DILocation(line: 130, column: 9, scope: !1009)
!1024 = !DILocation(line: 131, column: 1, scope: !1009)
!1025 = !DILocation(line: 130, column: 2, scope: !1009)
!1026 = !DISubprogram(name: "tick_nohz_tick_stopped", scope: !951, file: !951, line: 128, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!159}
!1029 = distinct !DISubprogram(name: "div64_u64", scope: !1010, file: !1010, line: 67, type: !1030, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!20, !20, !20}
!1032 = !{!1033, !1034}
!1033 = !DILocalVariable(name: "dividend", arg: 1, scope: !1029, file: !1010, line: 67, type: !20)
!1034 = !DILocalVariable(name: "divisor", arg: 2, scope: !1029, file: !1010, line: 67, type: !20)
!1035 = !DILocation(line: 67, column: 33, scope: !1029)
!1036 = !DILocation(line: 67, column: 47, scope: !1029)
!1037 = !DILocation(line: 69, column: 9, scope: !1029)
!1038 = !DILocation(line: 69, column: 20, scope: !1029)
!1039 = !DILocation(line: 69, column: 18, scope: !1029)
!1040 = !DILocation(line: 69, column: 2, scope: !1029)
!1041 = distinct !DISubprogram(name: "performance_multiplier", scope: !3, file: !3, line: 155, type: !1042, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!17, !7}
!1044 = !{!1045}
!1045 = !DILocalVariable(name: "nr_iowaiters", arg: 1, scope: !1041, file: !3, line: 155, type: !7)
!1046 = !DILocation(line: 155, column: 55, scope: !1041)
!1047 = !DILocation(line: 158, column: 18, scope: !1041)
!1048 = !DILocation(line: 158, column: 16, scope: !1041)
!1049 = !DILocation(line: 158, column: 11, scope: !1041)
!1050 = !DILocation(line: 158, column: 2, scope: !1041)
!1051 = distinct !DISubprogram(name: "ktime_to_us", scope: !103, file: !103, line: 159, type: !1052, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1055)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!36, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1055 = !{!1056}
!1056 = !DILocalVariable(name: "kt", arg: 1, scope: !1051, file: !103, line: 159, type: !1054)
!1057 = !DILocation(line: 159, column: 45, scope: !1051)
!1058 = !DILocation(line: 161, column: 21, scope: !1051)
!1059 = !DILocation(line: 161, column: 9, scope: !1051)
!1060 = !DILocation(line: 161, column: 2, scope: !1051)
!1061 = distinct !DISubprogram(name: "ktime_divns", scope: !103, file: !103, line: 148, type: !1062, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!36, !1054, !36}
!1064 = !{!1065, !1066, !1067, !1069}
!1065 = !DILocalVariable(name: "kt", arg: 1, scope: !1061, file: !103, line: 148, type: !1054)
!1066 = !DILocalVariable(name: "div", arg: 2, scope: !1061, file: !103, line: 148, type: !36)
!1067 = !DILocalVariable(name: "__ret_warn_on", scope: !1068, file: !103, line: 154, type: !17)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !103, line: 154, column: 2)
!1069 = !DILocalVariable(name: "__flags", scope: !1070, file: !103, line: 154, type: !17)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !103, line: 154, column: 2)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !103, line: 154, column: 2)
!1072 = !DILocation(line: 148, column: 45, scope: !1061)
!1073 = !DILocation(line: 148, column: 53, scope: !1061)
!1074 = !DILocation(line: 154, column: 2, scope: !1068)
!1075 = !DILocation(line: 154, column: 2, scope: !1071)
!1076 = !DILocation(line: 154, column: 2, scope: !1070)
!1077 = !DILocation(line: 154, column: 2, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1070, file: !103, line: 154, column: 2)
!1079 = !DILocation(line: 154, column: 2, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1070, file: !103, line: 154, column: 2)
!1081 = !{i64 2149661333, i64 2149661362, i64 2149661408, i64 2149661466, i64 2149661520, i64 2149661574, i64 2149661629, i64 2149661660, i64 2149661968, i64 2149661974, i64 2149662021, i64 2149662044, i64 2149662070}
!1082 = !DILocation(line: 154, column: 2, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1070, file: !103, line: 154, column: 2)
!1084 = !DILocation(line: 154, column: 2, scope: !1061)
!1085 = !DILocation(line: 155, column: 9, scope: !1061)
!1086 = !DILocation(line: 155, column: 14, scope: !1061)
!1087 = !DILocation(line: 155, column: 12, scope: !1061)
!1088 = !DILocation(line: 155, column: 2, scope: !1061)
!1089 = distinct !DISubprogram(name: "div_u64_rem", scope: !1010, file: !1010, line: 26, type: !1090, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1093)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!20, !20, !794, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!1093 = !{!1094, !1095, !1096}
!1094 = !DILocalVariable(name: "dividend", arg: 1, scope: !1089, file: !1010, line: 26, type: !20)
!1095 = !DILocalVariable(name: "divisor", arg: 2, scope: !1089, file: !1010, line: 26, type: !794)
!1096 = !DILocalVariable(name: "remainder", arg: 3, scope: !1089, file: !1010, line: 26, type: !1092)
!1097 = !DILocation(line: 26, column: 35, scope: !1089)
!1098 = !DILocation(line: 26, column: 49, scope: !1089)
!1099 = !DILocation(line: 26, column: 63, scope: !1089)
!1100 = !DILocation(line: 28, column: 15, scope: !1089)
!1101 = !DILocation(line: 28, column: 26, scope: !1089)
!1102 = !DILocation(line: 28, column: 24, scope: !1089)
!1103 = !DILocation(line: 28, column: 3, scope: !1089)
!1104 = !DILocation(line: 28, column: 13, scope: !1089)
!1105 = !DILocation(line: 29, column: 9, scope: !1089)
!1106 = !DILocation(line: 29, column: 20, scope: !1089)
!1107 = !DILocation(line: 29, column: 18, scope: !1089)
!1108 = !DILocation(line: 29, column: 2, scope: !1089)
!1109 = !DISubprogram(name: "tick_nohz_idle_got_tick", scope: !951, file: !951, line: 136, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
