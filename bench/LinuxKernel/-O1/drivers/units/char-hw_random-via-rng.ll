; ModuleID = 'drivers/char/hw_random/via-rng.c'
source_filename = "drivers/char/hw_random/via-rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_via_rng__196_212_via_rng_mod_init\22, \22a\22\09\09"
module asm "__initcall__kmod_via_rng__196_212_via_rng_mod_init6:\09\09\09"
module asm ".long\09__initstub__kmod_via_rng__196_212_via_rng_mod_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i16, %struct.list_head, %struct.kref, %struct.completion, %struct.completion }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.cpuinfo_x86 = type { %union.anon.1, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.3, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { i64, [88 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.anon.2 = type { i8, i8, i8, i8 }

@__UNIQUE_ID___addressable___initstub__kmod_via_rng__196_212_via_rng_mod_init6197 = internal global ptr @__initstub__kmod_via_rng__196_212_via_rng_mod_init6, section ".discard.addressable", align 8, !dbg !0
@via_rng = internal global %struct.hwrng { ptr @.str.2, ptr @via_rng_init, ptr null, ptr @via_rng_data_present, ptr @via_rng_data_read, ptr null, i64 0, i16 0, %struct.list_head zeroinitializer, %struct.kref zeroinitializer, %struct.completion zeroinitializer, %struct.completion zeroinitializer }, align 8, !dbg !155
@__exitcall_via_rng_mod_exit = internal global ptr @via_rng_mod_exit, section ".exitcall.exit", align 8, !dbg !119
@__UNIQUE_ID_description198 = internal constant [60 x i8] c"via_rng.description=H/W RNG driver for VIA CPU with PadLock\00", section ".modinfo", align 1, !dbg !126
@__UNIQUE_ID_file199 = internal constant [44 x i8] c"via_rng.file=drivers/char/hw_random/via-rng\00", section ".modinfo", align 1, !dbg !132
@__UNIQUE_ID_license200 = internal constant [20 x i8] c"via_rng.license=GPL\00", section ".modinfo", align 1, !dbg !137
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [20 x i8] c"\016VIA RNG detected\0A\00", align 1, !dbg !142
@.str.1 = private unnamed_addr constant [40 x i8] c"\013via_rng: RNG registering failed (%d)\0A\00", align 1, !dbg !145
@.str.2 = private unnamed_addr constant [4 x i8] c"via\00", align 1, !dbg !150
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.3 = private unnamed_addr constant [63 x i8] c"\013via_rng: can't enable hardware RNG if XSTORE is not enabled\0A\00", align 1, !dbg !244
@.str.4 = private unnamed_addr constant [47 x i8] c"\013via_rng: cannot enable VIA C3 RNG, aborting\0A\00", align 1, !dbg !249
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_via_rng__196_212_via_rng_mod_init6197, ptr @via_rng_mod_exit, ptr @__exitcall_via_rng_mod_exit, ptr @__UNIQUE_ID_description198, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_via_rng__196_212_via_rng_mod_init6() #0 section ".init.text" align 16 !dbg !263 {
entry:
  %call = call i32 @via_rng_mod_init() #10, !dbg !266
  ret i32 %call, !dbg !266
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @via_rng_mod_init() #0 section ".init.text" align 16 !dbg !267 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %err, metadata !269, metadata !DIExpression()), !dbg !272
  br i1 false, label %cond.true, label %cond.false, !dbg !273

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !274

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 162, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !274
  br i1 %call, label %if.end, label %if.then, !dbg !273

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 -19, ptr %retval, align 4, !dbg !276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !276

if.end:                                           ; preds = %cond.false, %cond.true
  br label %do.body, !dbg !277

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !279

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !279

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #10, !dbg !277
  store i32 %call1, ptr %tmp, align 4, !dbg !279
  %0 = load i32, ptr %tmp, align 4, !dbg !277
  %call2 = call i32 @hwrng_register(ptr noundef @via_rng) #12, !dbg !281
  store i32 %call2, ptr %err, align 4, !dbg !282
  %1 = load i32, ptr %err, align 4, !dbg !283
  %tobool = icmp ne i32 %1, 0, !dbg !283
  br i1 %tobool, label %if.then3, label %if.end9, !dbg !285

if.then3:                                         ; preds = %do.end
  br label %do.body4, !dbg !286

do.body4:                                         ; preds = %if.then3
  br label %do.cond5, !dbg !289

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !289

do.end6:                                          ; preds = %do.cond5
  %2 = load i32, ptr %err, align 4, !dbg !286
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %2) #10, !dbg !286
  store i32 %call8, ptr %tmp7, align 4, !dbg !289
  %3 = load i32, ptr %tmp7, align 4, !dbg !286
  br label %out, !dbg !291

if.end9:                                          ; preds = %do.end
  br label %out, !dbg !283

out:                                              ; preds = %if.end9, %do.end6
  call void @llvm.dbg.label(metadata !270), !dbg !292
  %4 = load i32, ptr %err, align 4, !dbg !293
  store i32 %4, ptr %retval, align 4, !dbg !294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !294

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !295
  %5 = load i32, ptr %retval, align 4, !dbg !295
  ret i32 %5, !dbg !295
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @via_rng_mod_exit() #0 section ".exit.text" align 16 !dbg !296 {
entry:
  call void @hwrng_unregister(ptr noundef @via_rng) #12, !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !299 dso_local void @hwrng_unregister(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !300 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !308, metadata !DIExpression()), !dbg !310
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !309, metadata !DIExpression()), !dbg !311
  %0 = load i64, ptr %nr.addr, align 8, !dbg !312
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !313
  br i1 %1, label %cond.true, label %cond.false, !dbg !313

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !314
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !315
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !316
  %conv = zext i1 %call to i32, !dbg !316
  br label %cond.end, !dbg !313

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !317
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !318
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !319
  %conv2 = zext i1 %call1 to i32, !dbg !319
  br label %cond.end, !dbg !313

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !313
  %tobool = icmp ne i32 %cond, 0, !dbg !313
  ret i1 %tobool, !dbg !320
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !321 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !325 dso_local i32 @hwrng_register(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !326 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !331, metadata !DIExpression()), !dbg !333
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !332, metadata !DIExpression()), !dbg !334
  %0 = load i64, ptr %nr.addr, align 8, !dbg !335
  %and = and i64 %0, 63, !dbg !336
  %shl = shl i64 1, %and, !dbg !337
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !338
  %2 = load i64, ptr %nr.addr, align 8, !dbg !339
  %shr = ashr i64 %2, 6, !dbg !340
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !338
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !338
  %and1 = and i64 %shl, %3, !dbg !341
  %cmp = icmp ne i64 %and1, 0, !dbg !342
  ret i1 %cmp, !dbg !343
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !344 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !346, metadata !DIExpression()), !dbg !349
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !347, metadata !DIExpression()), !dbg !350
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !351
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !348, metadata !DIExpression()), !dbg !352
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !353
  %1 = load i64, ptr %nr.addr, align 8, !dbg !354
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !355, !srcloc !356
  %3 = icmp ult i8 %2, 2, !dbg !355
  call void @llvm.assume(i1 %3), !dbg !355
  store i8 %2, ptr %oldbit, align 1, !dbg !355
  %4 = load i8, ptr %oldbit, align 1, !dbg !357, !range !358, !noundef !359
  %tobool = trunc i8 %4 to i1, !dbg !357
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !360
  ret i1 %tobool, !dbg !361
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @via_rng_init(ptr noundef %rng) #8 align 16 !dbg !362 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %old_lo = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__val = alloca i64, align 8
  %__val50 = alloca i64, align 8
  %tmp64 = alloca i32, align 4
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !364, metadata !DIExpression()), !dbg !380
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #11, !dbg !381
  call void @llvm.dbg.declare(metadata ptr %c, metadata !365, metadata !DIExpression()), !dbg !382
  br label %do.body, !dbg !383

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !366, metadata !DIExpression()), !dbg !384
  store ptr null, ptr %__vpp_verify, align 8, !dbg !384
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !383
  br label %do.cond, !dbg !384

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !384

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !371, metadata !DIExpression()), !dbg !385
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !385
  %1 = load i64, ptr %__ptr, align 8, !dbg !385
  %2 = load i64, ptr @__per_cpu_offset, align 16, !dbg !385
  %add = add i64 %1, %2, !dbg !385
  %3 = inttoptr i64 %add to ptr, !dbg !385
  store ptr %3, ptr %tmp1, align 8, !dbg !385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !383
  %4 = load ptr, ptr %tmp1, align 8, !dbg !385
  store ptr %4, ptr %tmp, align 8, !dbg !384
  %5 = load ptr, ptr %tmp, align 8, !dbg !383
  store ptr %5, ptr %c, align 8, !dbg !382
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #11, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !373, metadata !DIExpression()), !dbg !387
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #11, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !374, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_lo) #11, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %old_lo, metadata !375, metadata !DIExpression()), !dbg !389
  %6 = load ptr, ptr %c, align 8, !dbg !390
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 0, !dbg !392
  %x86 = getelementptr inbounds %struct.anon.2, ptr %7, i32 0, i32 1, !dbg !392
  %8 = load i8, ptr %x86, align 1, !dbg !392
  %conv = zext i8 %8 to i32, !dbg !390
  %cmp = icmp eq i32 %conv, 6, !dbg !393
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !394

land.lhs.true:                                    ; preds = %do.end
  %9 = load ptr, ptr %c, align 8, !dbg !395
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !396
  %x86_model = getelementptr inbounds %struct.anon.2, ptr %10, i32 0, i32 0, !dbg !396
  %11 = load i8, ptr %x86_model, align 8, !dbg !396
  %conv3 = zext i8 %11 to i32, !dbg !395
  %cmp4 = icmp sge i32 %conv3, 15, !dbg !397
  br i1 %cmp4, label %if.then, label %lor.lhs.false, !dbg !398

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.end
  %12 = load ptr, ptr %c, align 8, !dbg !399
  %13 = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 0, !dbg !400
  %x866 = getelementptr inbounds %struct.anon.2, ptr %13, i32 0, i32 1, !dbg !400
  %14 = load i8, ptr %x866, align 1, !dbg !400
  %conv7 = zext i8 %14 to i32, !dbg !399
  %cmp8 = icmp sgt i32 %conv7, 6, !dbg !401
  br i1 %cmp8, label %if.then, label %if.end17, !dbg !402

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br i1 false, label %cond.true, label %cond.false, !dbg !403

cond.true:                                        ; preds = %if.then
  br i1 true, label %if.end, label %if.then11, !dbg !405

cond.false:                                       ; preds = %if.then
  %call = call zeroext i1 @arch_test_bit(i64 noundef 163, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !405
  br i1 %call, label %if.end, label %if.then11, !dbg !403

if.then11:                                        ; preds = %cond.false, %cond.true
  br label %do.body12, !dbg !407

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !410

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !410

do.end14:                                         ; preds = %do.cond13
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #10, !dbg !407
  store i32 %call16, ptr %tmp15, align 4, !dbg !410
  %15 = load i32, ptr %tmp15, align 4, !dbg !407
  store i32 -19, ptr %retval, align 4, !dbg !412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !412

if.end:                                           ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !413

if.end17:                                         ; preds = %lor.lhs.false
  br label %do.body18, !dbg !414

do.body18:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #11, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !376, metadata !DIExpression()), !dbg !415
  %call19 = call i64 @native_read_msr(i32 noundef 4363) #12, !dbg !415
  store i64 %call19, ptr %__val, align 8, !dbg !415
  %16 = load i64, ptr %__val, align 8, !dbg !415
  %conv20 = trunc i64 %16 to i32, !dbg !415
  store i32 %conv20, ptr %lo, align 4, !dbg !415
  %17 = load i64, ptr %__val, align 8, !dbg !415
  %shr = lshr i64 %17, 32, !dbg !415
  %conv21 = trunc i64 %shr to i32, !dbg !415
  store i32 %conv21, ptr %hi, align 4, !dbg !415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #11, !dbg !414
  br label %do.cond22, !dbg !415

do.cond22:                                        ; preds = %do.body18
  br label %do.end23, !dbg !415

do.end23:                                         ; preds = %do.cond22
  %18 = load i32, ptr %lo, align 4, !dbg !416
  store i32 %18, ptr %old_lo, align 4, !dbg !417
  %19 = load i32, ptr %lo, align 4, !dbg !418
  %and = and i32 %19, -8323073, !dbg !418
  store i32 %and, ptr %lo, align 4, !dbg !418
  %20 = load i32, ptr %lo, align 4, !dbg !419
  %and24 = and i32 %20, -16, !dbg !419
  store i32 %and24, ptr %lo, align 4, !dbg !419
  %21 = load i32, ptr %lo, align 4, !dbg !420
  %and25 = and i32 %21, -57345, !dbg !420
  store i32 %and25, ptr %lo, align 4, !dbg !420
  %22 = load i32, ptr %lo, align 4, !dbg !421
  %or = or i32 %22, 64, !dbg !421
  store i32 %or, ptr %lo, align 4, !dbg !421
  %23 = load i32, ptr %lo, align 4, !dbg !422
  %or26 = or i32 %23, 256, !dbg !422
  store i32 %or26, ptr %lo, align 4, !dbg !422
  %24 = load ptr, ptr %c, align 8, !dbg !423
  %25 = getelementptr inbounds %struct.cpuinfo_x86, ptr %24, i32 0, i32 0, !dbg !425
  %x86_model27 = getelementptr inbounds %struct.anon.2, ptr %25, i32 0, i32 0, !dbg !425
  %26 = load i8, ptr %x86_model27, align 8, !dbg !425
  %conv28 = zext i8 %26 to i32, !dbg !423
  %cmp29 = icmp eq i32 %conv28, 9, !dbg !426
  br i1 %cmp29, label %land.lhs.true31, label %if.end37, !dbg !427

land.lhs.true31:                                  ; preds = %do.end23
  %27 = load ptr, ptr %c, align 8, !dbg !428
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, ptr %27, i32 0, i32 1, !dbg !429
  %28 = load i8, ptr %x86_stepping, align 4, !dbg !429
  %conv32 = zext i8 %28 to i32, !dbg !428
  %cmp33 = icmp sgt i32 %conv32, 7, !dbg !430
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !431

if.then35:                                        ; preds = %land.lhs.true31
  %29 = load i32, ptr %lo, align 4, !dbg !432
  %or36 = or i32 %29, 512, !dbg !432
  store i32 %or36, ptr %lo, align 4, !dbg !432
  br label %if.end37, !dbg !433

if.end37:                                         ; preds = %if.then35, %land.lhs.true31, %do.end23
  %30 = load ptr, ptr %c, align 8, !dbg !434
  %31 = getelementptr inbounds %struct.cpuinfo_x86, ptr %30, i32 0, i32 0, !dbg !436
  %x86_model38 = getelementptr inbounds %struct.anon.2, ptr %31, i32 0, i32 0, !dbg !436
  %32 = load i8, ptr %x86_model38, align 8, !dbg !436
  %conv39 = zext i8 %32 to i32, !dbg !434
  %cmp40 = icmp sge i32 %conv39, 10, !dbg !437
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !438

if.then42:                                        ; preds = %if.end37
  %33 = load i32, ptr %lo, align 4, !dbg !439
  %or43 = or i32 %33, 512, !dbg !439
  store i32 %or43, ptr %lo, align 4, !dbg !439
  br label %if.end44, !dbg !440

if.end44:                                         ; preds = %if.then42, %if.end37
  %34 = load i32, ptr %lo, align 4, !dbg !441
  %35 = load i32, ptr %old_lo, align 4, !dbg !443
  %cmp45 = icmp ne i32 %34, %35, !dbg !444
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !445

if.then47:                                        ; preds = %if.end44
  %36 = load i32, ptr %lo, align 4, !dbg !446
  %37 = load i32, ptr %hi, align 4, !dbg !447
  call void @wrmsr(i32 noundef 4363, i32 noundef %36, i32 noundef %37) #12, !dbg !448
  br label %if.end48, !dbg !448

if.end48:                                         ; preds = %if.then47, %if.end44
  br label %do.body49, !dbg !449

do.body49:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val50) #11, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %__val50, metadata !378, metadata !DIExpression()), !dbg !450
  %call51 = call i64 @native_read_msr(i32 noundef 4363) #12, !dbg !450
  store i64 %call51, ptr %__val50, align 8, !dbg !450
  %38 = load i64, ptr %__val50, align 8, !dbg !450
  %conv52 = trunc i64 %38 to i32, !dbg !450
  store i32 %conv52, ptr %lo, align 4, !dbg !450
  %39 = load i64, ptr %__val50, align 8, !dbg !450
  %shr53 = lshr i64 %39, 32, !dbg !450
  %conv54 = trunc i64 %shr53 to i32, !dbg !450
  store i32 %conv54, ptr %hi, align 4, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val50) #11, !dbg !449
  br label %do.cond55, !dbg !450

do.cond55:                                        ; preds = %do.body49
  br label %do.end56, !dbg !450

do.end56:                                         ; preds = %do.cond55
  %40 = load i32, ptr %lo, align 4, !dbg !451
  %and57 = and i32 %40, 64, !dbg !453
  %cmp58 = icmp eq i32 %and57, 0, !dbg !454
  br i1 %cmp58, label %if.then60, label %if.end66, !dbg !455

if.then60:                                        ; preds = %do.end56
  br label %do.body61, !dbg !456

do.body61:                                        ; preds = %if.then60
  br label %do.cond62, !dbg !459

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !459

do.end63:                                         ; preds = %do.cond62
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #10, !dbg !456
  store i32 %call65, ptr %tmp64, align 4, !dbg !459
  %41 = load i32, ptr %tmp64, align 4, !dbg !456
  store i32 -19, ptr %retval, align 4, !dbg !461
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !461

if.end66:                                         ; preds = %do.end56
  store i32 0, ptr %retval, align 4, !dbg !462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !462

cleanup:                                          ; preds = %if.end66, %do.end63, %if.end, %do.end14
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_lo) #11, !dbg !463
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #11, !dbg !463
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #11, !dbg !463
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #11, !dbg !463
  %42 = load i32, ptr %retval, align 4, !dbg !463
  ret i32 %42, !dbg !463
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @via_rng_data_present(ptr noundef %rng, i32 noundef %wait) #8 align 16 !dbg !464 {
entry:
  %rng.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  %via_rng_datum = alloca ptr, align 8
  %bytes_out = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !466, metadata !DIExpression()), !dbg !472
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !467, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #11, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !468, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 8, ptr %via_rng_datum) #11, !dbg !476
  call void @llvm.dbg.declare(metadata ptr %via_rng_datum, metadata !469, metadata !DIExpression()), !dbg !477
  %arrayidx = getelementptr [16 x i8], ptr %buf, i64 0, i64 0, !dbg !478
  %0 = ptrtoint ptr %arrayidx to i64, !dbg !478
  %add = add i64 %0, 15, !dbg !478
  %and = and i64 %add, -16, !dbg !478
  %1 = inttoptr i64 %and to ptr, !dbg !478
  store ptr %1, ptr %via_rng_datum, align 8, !dbg !477
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes_out) #11, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %bytes_out, metadata !470, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %i, metadata !471, metadata !DIExpression()), !dbg !482
  store i32 0, ptr %i, align 4, !dbg !483
  br label %for.cond, !dbg !485

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !486
  %cmp = icmp slt i32 %2, 20, !dbg !488
  br i1 %cmp, label %for.body, label %for.end, !dbg !489

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %via_rng_datum, align 8, !dbg !490
  store i32 0, ptr %3, align 4, !dbg !492
  %4 = load ptr, ptr %via_rng_datum, align 8, !dbg !493
  %call = call i32 @xstore(ptr noundef %4, i32 noundef 3) #12, !dbg !494
  store i32 %call, ptr %bytes_out, align 4, !dbg !495
  %5 = load i32, ptr %bytes_out, align 4, !dbg !496
  %and1 = and i32 %5, 15, !dbg !496
  store i32 %and1, ptr %bytes_out, align 4, !dbg !496
  %6 = load i32, ptr %bytes_out, align 4, !dbg !497
  %tobool = icmp ne i32 %6, 0, !dbg !497
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !499

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, ptr %wait.addr, align 4, !dbg !500
  %tobool2 = icmp ne i32 %7, 0, !dbg !500
  br i1 %tobool2, label %if.end, label %if.then, !dbg !501

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end, !dbg !502

if.end:                                           ; preds = %lor.lhs.false
  call void @__const_udelay(i64 noundef 42950) #12, !dbg !503
  br label %for.inc, !dbg !508

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !509
  %inc = add i32 %8, 1, !dbg !509
  store i32 %inc, ptr %i, align 4, !dbg !509
  br label %for.cond, !dbg !510, !llvm.loop !511

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load ptr, ptr %via_rng_datum, align 8, !dbg !515
  %10 = load i32, ptr %9, align 4, !dbg !516
  %conv = zext i32 %10 to i64, !dbg !516
  %11 = load ptr, ptr %rng.addr, align 8, !dbg !517
  %priv = getelementptr inbounds %struct.hwrng, ptr %11, i32 0, i32 6, !dbg !518
  store i64 %conv, ptr %priv, align 8, !dbg !519
  %12 = load i32, ptr %bytes_out, align 4, !dbg !520
  %tobool3 = icmp ne i32 %12, 0, !dbg !520
  %13 = zext i1 %tobool3 to i64, !dbg !520
  %cond = select i1 %tobool3, i32 1, i32 0, !dbg !520
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes_out) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %via_rng_datum) #11, !dbg !521
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #11, !dbg !521
  ret i32 %cond, !dbg !522
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @via_rng_data_read(ptr noundef %rng, ptr noundef %data) #8 align 16 !dbg !523 {
entry:
  %rng.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %via_rng_datum = alloca i32, align 4
  store ptr %rng, ptr %rng.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rng.addr, metadata !525, metadata !DIExpression()), !dbg !528
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !526, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 4, ptr %via_rng_datum) #11, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %via_rng_datum, metadata !527, metadata !DIExpression()), !dbg !531
  %0 = load ptr, ptr %rng.addr, align 8, !dbg !532
  %priv = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6, !dbg !533
  %1 = load i64, ptr %priv, align 8, !dbg !533
  %conv = trunc i64 %1 to i32, !dbg !534
  store i32 %conv, ptr %via_rng_datum, align 4, !dbg !531
  %2 = load i32, ptr %via_rng_datum, align 4, !dbg !535
  %3 = load ptr, ptr %data.addr, align 8, !dbg !536
  store i32 %2, ptr %3, align 4, !dbg !537
  call void @llvm.lifetime.end.p0(i64 4, ptr %via_rng_datum) #11, !dbg !538
  ret i32 1, !dbg !539
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #9 align 16 !dbg !540 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !545, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %val, metadata !546, metadata !DIExpression()), !dbg !549
  %0 = load i32, ptr %msr.addr, align 4, !dbg !550
  %call = call i64 @__rdmsr(i32 noundef %0) #12, !dbg !551
  store i64 %call, ptr %val, align 8, !dbg !552
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #12, !dbg !553
  br i1 %call1, label %if.then, label %if.end, !dbg !555

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !556
  %2 = load i64, ptr %val, align 8, !dbg !557
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #12, !dbg !558
  br label %if.end, !dbg !558

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !560
  ret i64 %3, !dbg !561
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #9 align 16 !dbg !562 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !566, metadata !DIExpression()), !dbg !569
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !567, metadata !DIExpression()), !dbg !570
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !568, metadata !DIExpression()), !dbg !571
  %0 = load i32, ptr %msr.addr, align 4, !dbg !572
  %1 = load i32, ptr %low.addr, align 4, !dbg !573
  %2 = load i32, ptr %high.addr, align 4, !dbg !574
  call void @native_write_msr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #12, !dbg !575
  ret void, !dbg !576
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #4 align 16 !dbg !577 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !579, metadata !DIExpression()), !dbg !582
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #11, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %low, metadata !580, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #11, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %high, metadata !581, metadata !DIExpression()), !dbg !583
  %0 = load i32, ptr %msr.addr, align 4, !dbg !584
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !585, !srcloc !586
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !585
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !585
  store i64 %asmresult, ptr %low, align 8, !dbg !585
  store i64 %asmresult1, ptr %high, align 8, !dbg !585
  %2 = load i64, ptr %low, align 8, !dbg !587
  %3 = load i64, ptr %high, align 8, !dbg !587
  %shl = shl i64 %3, 32, !dbg !587
  %or = or i64 %2, %shl, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #11, !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #11, !dbg !588
  ret i64 %or, !dbg !589
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !590 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !615, metadata !DIExpression()), !dbg !616
  %0 = load ptr, ptr %key.addr, align 8, !dbg !617
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !618
  ret i1 %call, !dbg !619
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !620 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !623 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !628, metadata !DIExpression()), !dbg !631
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !629, metadata !DIExpression()), !dbg !632
  %0 = load ptr, ptr %key.addr, align 8, !dbg !633
  %1 = load i8, ptr %branch.addr, align 1, !dbg !634, !range !358, !noundef !359
  %tobool = trunc i8 %1 to i1, !dbg !634
  %conv = zext i1 %tobool to i32, !dbg !634
  %or = or i32 2, %conv, !dbg !635
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !636, !srcloc !637

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !638
  br label %return, !dbg !638

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !630), !dbg !639
  store i1 true, ptr %retval, align 1, !dbg !640
  br label %return, !dbg !640

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !641
  ret i1 %2, !dbg !641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #9 align 16 !dbg !642 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !644, metadata !DIExpression()), !dbg !647
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !645, metadata !DIExpression()), !dbg !648
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !646, metadata !DIExpression()), !dbg !649
  %0 = load i32, ptr %msr.addr, align 4, !dbg !650
  %1 = load i32, ptr %low.addr, align 4, !dbg !651
  %2 = load i32, ptr %high.addr, align 4, !dbg !652
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #12, !dbg !653
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #12, !dbg !654
  br i1 %call, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !657
  %4 = load i32, ptr %high.addr, align 4, !dbg !658
  %conv = zext i32 %4 to i64, !dbg !659
  %shl = shl i64 %conv, 32, !dbg !660
  %5 = load i32, ptr %low.addr, align 4, !dbg !661
  %conv1 = zext i32 %5 to i64, !dbg !661
  %or = or i64 %shl, %conv1, !dbg !662
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #12, !dbg !663
  br label %if.end, !dbg !663

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !664
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !665 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !667, metadata !DIExpression()), !dbg !670
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !668, metadata !DIExpression()), !dbg !671
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !669, metadata !DIExpression()), !dbg !672
  %0 = load i32, ptr %msr.addr, align 4, !dbg !673
  %1 = load i32, ptr %low.addr, align 4, !dbg !674
  %2 = load i32, ptr %high.addr, align 4, !dbg !675
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #11, !dbg !676, !srcloc !677
  ret void, !dbg !678
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !679 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xstore(ptr noundef %addr, i32 noundef %edx_in) #9 align 16 !dbg !680 {
entry:
  %addr.addr = alloca ptr, align 8
  %edx_in.addr = alloca i32, align 4
  %eax_out = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !684, metadata !DIExpression()), !dbg !687
  store i32 %edx_in, ptr %edx_in.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %edx_in.addr, metadata !685, metadata !DIExpression()), !dbg !688
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax_out) #11, !dbg !689
  call void @llvm.dbg.declare(metadata ptr %eax_out, metadata !686, metadata !DIExpression()), !dbg !690
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !691
  %1 = load i32, ptr %edx_in.addr, align 4, !dbg !692
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !692
  %3 = call { i32, i32, ptr } asm ".byte 0x0F,0xA7,0xC0 /* xstore %edi (addr=$0) */", "=*m,={ax},={dx},={di},2,3,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 %1, ptr %2) #11, !dbg !692, !srcloc !693
  %asmresult = extractvalue { i32, i32, ptr } %3, 0, !dbg !692
  %asmresult1 = extractvalue { i32, i32, ptr } %3, 1, !dbg !692
  %asmresult2 = extractvalue { i32, i32, ptr } %3, 2, !dbg !692
  store i32 %asmresult, ptr %eax_out, align 4, !dbg !692
  store i32 %asmresult1, ptr %edx_in.addr, align 4, !dbg !692
  store ptr %asmresult2, ptr %addr.addr, align 8, !dbg !692
  %4 = load i32, ptr %eax_out, align 4, !dbg !694
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax_out) #11, !dbg !695
  ret i32 %4, !dbg !696
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !697 dso_local void @__const_udelay(i64 noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_via_rng__196_212_via_rng_mod_init6197", scope: !2, file: !3, line: 212, type: !29, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/char/hw_random/.via-rng.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/char/hw_random/via-rng\22 -D KBUILD_BASENAME=\22via_rng\22 -D KBUILD_MODNAME=\22via_rng\22 -D __KBUILD_MODNAME=kmod_via_rng -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/char/hw_random/via-rng.ll drivers/char/hw_random/via-rng.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !118, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/via-rng.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "762d2e783e123b5acaf94436d286ad2b")
!4 = !{!5, !23}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 41, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!8 = !DIEnumerator(name: "VIA_STRFILT_CNT_SHIFT", value: 16)
!9 = !DIEnumerator(name: "VIA_STRFILT_FAIL", value: 32768)
!10 = !DIEnumerator(name: "VIA_STRFILT_ENABLE", value: 16384)
!11 = !DIEnumerator(name: "VIA_RAWBITS_ENABLE", value: 8192)
!12 = !DIEnumerator(name: "VIA_RNG_ENABLE", value: 64)
!13 = !DIEnumerator(name: "VIA_NOISESRC1", value: 256)
!14 = !DIEnumerator(name: "VIA_NOISESRC2", value: 512)
!15 = !DIEnumerator(name: "VIA_XSTORE_CNT_MASK", value: 15)
!16 = !DIEnumerator(name: "VIA_RNG_CHUNK_8", value: 0)
!17 = !DIEnumerator(name: "VIA_RNG_CHUNK_4", value: 1)
!18 = !DIEnumerator(name: "VIA_RNG_CHUNK_4_MASK", value: 4294967295, isUnsigned: true)
!19 = !DIEnumerator(name: "VIA_RNG_CHUNK_2", value: 2)
!20 = !DIEnumerator(name: "VIA_RNG_CHUNK_2_MASK", value: 65535)
!21 = !DIEnumerator(name: "VIA_RNG_CHUNK_1", value: 3)
!22 = !DIEnumerator(name: "VIA_RNG_CHUNK_1_MASK", value: 255)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 10, baseType: !6, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "false", value: 0)
!27 = !DIEnumerator(name: "true", value: 1)
!28 = !{!29, !30, !31, !33, !32, !112, !89, !116, !117}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !35, line: 83, size: 2368, elements: !36)
!35 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!36 = !{!37, !52, !53, !54, !58, !59, !60, !61, !62, !63, !64, !72, !77, !81, !82, !83, !84, !85, !86, !87, !88, !93, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !111, !113, !115}
!37 = !DIDerivedType(tag: DW_TAG_member, scope: !34, file: !35, line: 84, baseType: !38, size: 32)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !35, line: 84, size: 32, elements: !39)
!39 = !{!40, !50}
!40 = !DIDerivedType(tag: DW_TAG_member, scope: !38, file: !35, line: 90, baseType: !41, size: 32)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !35, line: 90, size: 32, elements: !42)
!42 = !{!43, !47, !48, !49}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !41, file: !35, line: 91, baseType: !44, size: 8)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !45, line: 21, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !41, file: !35, line: 93, baseType: !44, size: 8, offset: 8)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !41, file: !35, line: 95, baseType: !44, size: 8, offset: 16)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !41, file: !35, line: 96, baseType: !44, size: 8, offset: 24)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !38, file: !35, line: 99, baseType: !51, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !45, line: 27, baseType: !6)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !34, file: !35, line: 101, baseType: !44, size: 8, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !34, file: !35, line: 104, baseType: !30, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !34, file: !35, line: 107, baseType: !55, size: 160, offset: 96)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 5)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !34, file: !35, line: 109, baseType: !44, size: 8, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !34, file: !35, line: 110, baseType: !44, size: 8, offset: 264)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !34, file: !35, line: 112, baseType: !44, size: 8, offset: 272)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !34, file: !35, line: 113, baseType: !44, size: 8, offset: 280)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !34, file: !35, line: 115, baseType: !51, size: 32, offset: 288)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !34, file: !35, line: 117, baseType: !30, size: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !34, file: !35, line: 123, baseType: !65, size: 768, offset: 384)
!65 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !35, line: 123, size: 768, elements: !66)
!66 = !{!67, !71}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !65, file: !35, line: 124, baseType: !68, size: 768)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 768, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 24)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !65, file: !35, line: 125, baseType: !32, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !34, file: !35, line: 127, baseType: !73, size: 128, offset: 1152)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !75)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !{!76}
!76 = !DISubrange(count: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !34, file: !35, line: 128, baseType: !78, size: 512, offset: 1280)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 512, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !34, file: !35, line: 130, baseType: !6, size: 32, offset: 1792)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !34, file: !35, line: 131, baseType: !30, size: 32, offset: 1824)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !34, file: !35, line: 133, baseType: !30, size: 32, offset: 1856)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !34, file: !35, line: 134, baseType: !30, size: 32, offset: 1888)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !34, file: !35, line: 135, baseType: !30, size: 32, offset: 1920)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !34, file: !35, line: 136, baseType: !30, size: 32, offset: 1952)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !34, file: !35, line: 137, baseType: !32, size: 64, offset: 1984)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !34, file: !35, line: 139, baseType: !89, size: 64, offset: 2048)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !90, line: 23, baseType: !91)
!90 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !92)
!92 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !34, file: !35, line: 141, baseType: !94, size: 16, offset: 2112)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !90, line: 19, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !45, line: 24, baseType: !96)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !34, file: !35, line: 142, baseType: !94, size: 16, offset: 2128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !34, file: !35, line: 143, baseType: !94, size: 16, offset: 2144)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !34, file: !35, line: 144, baseType: !94, size: 16, offset: 2160)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !34, file: !35, line: 146, baseType: !94, size: 16, offset: 2176)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !34, file: !35, line: 148, baseType: !94, size: 16, offset: 2192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !34, file: !35, line: 150, baseType: !94, size: 16, offset: 2208)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !34, file: !35, line: 152, baseType: !94, size: 16, offset: 2224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !34, file: !35, line: 153, baseType: !94, size: 16, offset: 2240)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !34, file: !35, line: 154, baseType: !94, size: 16, offset: 2256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !34, file: !35, line: 156, baseType: !94, size: 16, offset: 2272)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !34, file: !35, line: 158, baseType: !108, size: 8, offset: 2288)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !109, line: 35, baseType: !110)
!109 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!110 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !34, file: !35, line: 159, baseType: !112, size: 32, offset: 2304)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !90, line: 21, baseType: !51)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !34, file: !35, line: 161, baseType: !114, size: 8, offset: 2336)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !90, line: 17, baseType: !44)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !34, file: !35, line: 162, baseType: !6, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!118 = !{!0, !119, !126, !132, !137, !142, !145, !150, !155, !244, !249}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__exitcall_via_rng_mod_exit", scope: !2, file: !3, line: 218, type: !121, isLocal: true, isDefinition: true)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !122, line: 120, baseType: !123)
!122 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description198", scope: !2, file: !3, line: 226, type: !128, isLocal: true, isDefinition: true, align: 8)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 480, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!130 = !{!131}
!131 = !DISubrange(count: 60)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file199", scope: !2, file: !3, line: 227, type: !134, isLocal: true, isDefinition: true, align: 8)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 352, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 44)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license200", scope: !2, file: !3, line: 227, type: !139, isLocal: true, isDefinition: true, align: 8)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 160, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 20)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 160, elements: !140)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 205, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 320, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 40)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 32, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 4)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "via_rng", scope: !2, file: !3, line: 187, type: !157, isLocal: true, isDefinition: true)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !158, line: 39, size: 1216, elements: !159)
!158 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e66921e144ab1b4c2bb77e5a2a5ce1d9")
!159 = !{!160, !162, !167, !171, !175, !179, !187, !188, !189, !195, !209, !243}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !157, file: !158, line: 40, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !157, file: !158, line: 41, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!30, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !157, file: !158, line: 42, baseType: !168, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !166}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !157, file: !158, line: 43, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!30, !166, !30}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !157, file: !158, line: 44, baseType: !176, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!30, !166, !116}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !157, file: !158, line: 45, baseType: !180, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!30, !166, !29, !183, !108}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 61, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !185, line: 72, baseType: !186)
!185 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !185, line: 16, baseType: !32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !157, file: !158, line: 46, baseType: !32, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !157, file: !158, line: 47, baseType: !96, size: 16, offset: 448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !157, file: !158, line: 50, baseType: !190, size: 128, offset: 512)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !109, line: 190, size: 128, elements: !191)
!191 = !{!192, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !109, line: 191, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !190, file: !109, line: 191, baseType: !193, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !157, file: !158, line: 51, baseType: !196, size: 32, offset: 640)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !197, line: 19, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !196, file: !197, line: 20, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !201, line: 113, baseType: !202)
!201 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !201, line: 111, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !202, file: !201, line: 112, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !109, line: 174, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 172, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !206, file: !109, line: 173, baseType: !30, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !157, file: !158, line: 52, baseType: !210, size: 256, offset: 704)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !211, line: 26, size: 256, elements: !212)
!211 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !210, file: !211, line: 27, baseType: !6, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !210, file: !211, line: 28, baseType: !215, size: 192, offset: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !216, line: 43, size: 192, elements: !217)
!216 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!217 = !{!218, !242}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !215, file: !216, line: 44, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !220, line: 23, baseType: !221)
!220 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !220, line: 14, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !221, file: !220, line: 15, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !225, line: 44, baseType: !226)
!225 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !225, line: 14, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !225, line: 15, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !225, line: 15, size: 32, elements: !230)
!230 = !{!231, !232, !237}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !229, file: !225, line: 16, baseType: !205, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !225, line: 24, baseType: !233, size: 16)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !225, line: 24, size: 16, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !233, file: !225, line: 25, baseType: !114, size: 8)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !233, file: !225, line: 26, baseType: !114, size: 8, offset: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !225, line: 28, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !225, line: 28, size: 32, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !238, file: !225, line: 29, baseType: !94, size: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !238, file: !225, line: 30, baseType: !94, size: 16, offset: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !215, file: !216, line: 45, baseType: !190, size: 128, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dying", scope: !157, file: !158, line: 53, baseType: !210, size: 256, offset: 960)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 504, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 63)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 376, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 47)
!254 = !{i32 7, !"Dwarf Version", i32 5}
!255 = !{i32 2, !"Debug Info Version", i32 3}
!256 = !{i32 1, !"wchar_size", i32 2}
!257 = !{i32 8, !"cf-protection-branch", i32 1}
!258 = !{i32 4, !"function_return_thunk_extern", i32 1}
!259 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!260 = !{i32 1, !"Code Model", i32 2}
!261 = !{i32 1, !"override-stack-alignment", i32 8}
!262 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!263 = distinct !DISubprogram(name: "__initstub__kmod_via_rng__196_212_via_rng_mod_init6", scope: !3, file: !3, line: 212, type: !264, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!264 = !DISubroutineType(types: !265)
!265 = !{!30}
!266 = !DILocation(line: 212, column: 1, scope: !263)
!267 = distinct !DISubprogram(name: "via_rng_mod_init", scope: !3, file: !3, line: 195, type: !264, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!268 = !{!269, !270}
!269 = !DILocalVariable(name: "err", scope: !267, file: !3, line: 197, type: !30)
!270 = !DILabel(scope: !267, name: "out", file: !3, line: 209)
!271 = !DILocation(line: 197, column: 2, scope: !267)
!272 = !DILocation(line: 197, column: 6, scope: !267)
!273 = !DILocation(line: 199, column: 6, scope: !267)
!274 = !DILocation(line: 199, column: 7, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !3, line: 199, column: 6)
!276 = !DILocation(line: 200, column: 3, scope: !275)
!277 = !DILocation(line: 202, column: 2, scope: !278)
!278 = distinct !DILexicalBlock(scope: !267, file: !3, line: 202, column: 2)
!279 = !DILocation(line: 202, column: 2, scope: !280)
!280 = distinct !DILexicalBlock(scope: !278, file: !3, line: 202, column: 2)
!281 = !DILocation(line: 203, column: 8, scope: !267)
!282 = !DILocation(line: 203, column: 6, scope: !267)
!283 = !DILocation(line: 204, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !267, file: !3, line: 204, column: 6)
!285 = !DILocation(line: 204, column: 6, scope: !267)
!286 = !DILocation(line: 205, column: 3, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 205, column: 3)
!288 = distinct !DILexicalBlock(scope: !284, file: !3, line: 204, column: 11)
!289 = !DILocation(line: 205, column: 3, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !3, line: 205, column: 3)
!291 = !DILocation(line: 207, column: 3, scope: !288)
!292 = !DILocation(line: 209, column: 1, scope: !267)
!293 = !DILocation(line: 210, column: 9, scope: !267)
!294 = !DILocation(line: 210, column: 2, scope: !267)
!295 = !DILocation(line: 211, column: 1, scope: !267)
!296 = distinct !DISubprogram(name: "via_rng_mod_exit", scope: !3, file: !3, line: 214, type: !124, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!297 = !DILocation(line: 216, column: 2, scope: !296)
!298 = !DILocation(line: 217, column: 1, scope: !296)
!299 = !DISubprogram(name: "hwrng_unregister", scope: !158, file: !158, line: 62, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = distinct !DISubprogram(name: "arch_test_bit", scope: !301, file: !301, line: 237, type: !302, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!301 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!302 = !DISubroutineType(types: !303)
!303 = !{!108, !32, !304}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!307 = !{!308, !309}
!308 = !DILocalVariable(name: "nr", arg: 1, scope: !300, file: !301, line: 237, type: !32)
!309 = !DILocalVariable(name: "addr", arg: 2, scope: !300, file: !301, line: 237, type: !304)
!310 = !DILocation(line: 237, column: 29, scope: !300)
!311 = !DILocation(line: 237, column: 63, scope: !300)
!312 = !DILocation(line: 239, column: 30, scope: !300)
!313 = !DILocation(line: 239, column: 9, scope: !300)
!314 = !DILocation(line: 239, column: 54, scope: !300)
!315 = !DILocation(line: 239, column: 58, scope: !300)
!316 = !DILocation(line: 239, column: 36, scope: !300)
!317 = !DILocation(line: 240, column: 26, scope: !300)
!318 = !DILocation(line: 240, column: 30, scope: !300)
!319 = !DILocation(line: 240, column: 8, scope: !300)
!320 = !DILocation(line: 239, column: 2, scope: !300)
!321 = !DISubprogram(name: "_printk", scope: !322, file: !322, line: 153, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!323 = !DISubroutineType(types: !324)
!324 = !{!30, !161, null}
!325 = !DISubprogram(name: "hwrng_register", scope: !158, file: !158, line: 59, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = distinct !DISubprogram(name: "constant_test_bit", scope: !301, file: !301, line: 204, type: !327, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!327 = !DISubroutineType(types: !328)
!328 = !{!108, !329, !304}
!329 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!330 = !{!331, !332}
!331 = !DILocalVariable(name: "nr", arg: 1, scope: !326, file: !301, line: 204, type: !329)
!332 = !DILocalVariable(name: "addr", arg: 2, scope: !326, file: !301, line: 204, type: !304)
!333 = !DILocation(line: 204, column: 52, scope: !326)
!334 = !DILocation(line: 204, column: 86, scope: !326)
!335 = !DILocation(line: 206, column: 19, scope: !326)
!336 = !DILocation(line: 206, column: 22, scope: !326)
!337 = !DILocation(line: 206, column: 15, scope: !326)
!338 = !DILocation(line: 207, column: 4, scope: !326)
!339 = !DILocation(line: 207, column: 9, scope: !326)
!340 = !DILocation(line: 207, column: 12, scope: !326)
!341 = !DILocation(line: 206, column: 44, scope: !326)
!342 = !DILocation(line: 207, column: 37, scope: !326)
!343 = !DILocation(line: 206, column: 2, scope: !326)
!344 = distinct !DISubprogram(name: "variable_test_bit", scope: !301, file: !301, line: 224, type: !327, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!345 = !{!346, !347, !348}
!346 = !DILocalVariable(name: "nr", arg: 1, scope: !344, file: !301, line: 224, type: !329)
!347 = !DILocalVariable(name: "addr", arg: 2, scope: !344, file: !301, line: 224, type: !304)
!348 = !DILocalVariable(name: "oldbit", scope: !344, file: !301, line: 226, type: !108)
!349 = !DILocation(line: 224, column: 52, scope: !344)
!350 = !DILocation(line: 224, column: 86, scope: !344)
!351 = !DILocation(line: 226, column: 2, scope: !344)
!352 = !DILocation(line: 226, column: 7, scope: !344)
!353 = !DILocation(line: 231, column: 33, scope: !344)
!354 = !DILocation(line: 231, column: 46, scope: !344)
!355 = !DILocation(line: 228, column: 2, scope: !344)
!356 = !{i64 2148347098, i64 2148347172}
!357 = !DILocation(line: 233, column: 9, scope: !344)
!358 = !{i8 0, i8 2}
!359 = !{}
!360 = !DILocation(line: 234, column: 1, scope: !344)
!361 = !DILocation(line: 233, column: 2, scope: !344)
!362 = distinct !DISubprogram(name: "via_rng_init", scope: !3, file: !3, line: 129, type: !164, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!363 = !{!364, !365, !366, !371, !373, !374, !375, !376, !378}
!364 = !DILocalVariable(name: "rng", arg: 1, scope: !362, file: !3, line: 129, type: !166)
!365 = !DILocalVariable(name: "c", scope: !362, file: !3, line: 131, type: !33)
!366 = !DILocalVariable(name: "__vpp_verify", scope: !367, file: !3, line: 131, type: !369)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 131, column: 27)
!368 = distinct !DILexicalBlock(scope: !362, file: !3, line: 131, column: 27)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!371 = !DILocalVariable(name: "__ptr", scope: !372, file: !3, line: 131, type: !32)
!372 = distinct !DILexicalBlock(scope: !368, file: !3, line: 131, column: 27)
!373 = !DILocalVariable(name: "lo", scope: !362, file: !3, line: 132, type: !112)
!374 = !DILocalVariable(name: "hi", scope: !362, file: !3, line: 132, type: !112)
!375 = !DILocalVariable(name: "old_lo", scope: !362, file: !3, line: 132, type: !112)
!376 = !DILocalVariable(name: "__val", scope: !377, file: !3, line: 153, type: !89)
!377 = distinct !DILexicalBlock(scope: !362, file: !3, line: 153, column: 2)
!378 = !DILocalVariable(name: "__val", scope: !379, file: !3, line: 177, type: !89)
!379 = distinct !DILexicalBlock(scope: !362, file: !3, line: 177, column: 2)
!380 = !DILocation(line: 129, column: 39, scope: !362)
!381 = !DILocation(line: 131, column: 2, scope: !362)
!382 = !DILocation(line: 131, column: 22, scope: !362)
!383 = !DILocation(line: 131, column: 27, scope: !368)
!384 = !DILocation(line: 131, column: 27, scope: !367)
!385 = !DILocation(line: 131, column: 27, scope: !372)
!386 = !DILocation(line: 132, column: 2, scope: !362)
!387 = !DILocation(line: 132, column: 6, scope: !362)
!388 = !DILocation(line: 132, column: 10, scope: !362)
!389 = !DILocation(line: 132, column: 14, scope: !362)
!390 = !DILocation(line: 138, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !362, file: !3, line: 138, column: 6)
!392 = !DILocation(line: 138, column: 11, scope: !391)
!393 = !DILocation(line: 138, column: 15, scope: !391)
!394 = !DILocation(line: 138, column: 21, scope: !391)
!395 = !DILocation(line: 138, column: 25, scope: !391)
!396 = !DILocation(line: 138, column: 28, scope: !391)
!397 = !DILocation(line: 138, column: 38, scope: !391)
!398 = !DILocation(line: 138, column: 49, scope: !391)
!399 = !DILocation(line: 138, column: 53, scope: !391)
!400 = !DILocation(line: 138, column: 56, scope: !391)
!401 = !DILocation(line: 138, column: 60, scope: !391)
!402 = !DILocation(line: 138, column: 6, scope: !362)
!403 = !DILocation(line: 139, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !391, file: !3, line: 138, column: 65)
!405 = !DILocation(line: 139, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !404, file: !3, line: 139, column: 7)
!407 = !DILocation(line: 140, column: 4, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 140, column: 4)
!409 = distinct !DILexicalBlock(scope: !406, file: !3, line: 139, column: 45)
!410 = !DILocation(line: 140, column: 4, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !3, line: 140, column: 4)
!412 = !DILocation(line: 142, column: 4, scope: !409)
!413 = !DILocation(line: 144, column: 3, scope: !404)
!414 = !DILocation(line: 153, column: 2, scope: !362)
!415 = !DILocation(line: 153, column: 2, scope: !377)
!416 = !DILocation(line: 155, column: 11, scope: !362)
!417 = !DILocation(line: 155, column: 9, scope: !362)
!418 = !DILocation(line: 156, column: 5, scope: !362)
!419 = !DILocation(line: 157, column: 5, scope: !362)
!420 = !DILocation(line: 158, column: 5, scope: !362)
!421 = !DILocation(line: 159, column: 5, scope: !362)
!422 = !DILocation(line: 160, column: 5, scope: !362)
!423 = !DILocation(line: 165, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !362, file: !3, line: 165, column: 6)
!425 = !DILocation(line: 165, column: 10, scope: !424)
!426 = !DILocation(line: 165, column: 20, scope: !424)
!427 = !DILocation(line: 165, column: 26, scope: !424)
!428 = !DILocation(line: 165, column: 30, scope: !424)
!429 = !DILocation(line: 165, column: 33, scope: !424)
!430 = !DILocation(line: 165, column: 46, scope: !424)
!431 = !DILocation(line: 165, column: 6, scope: !362)
!432 = !DILocation(line: 166, column: 6, scope: !424)
!433 = !DILocation(line: 166, column: 3, scope: !424)
!434 = !DILocation(line: 169, column: 6, scope: !435)
!435 = distinct !DILexicalBlock(scope: !362, file: !3, line: 169, column: 6)
!436 = !DILocation(line: 169, column: 9, scope: !435)
!437 = !DILocation(line: 169, column: 19, scope: !435)
!438 = !DILocation(line: 169, column: 6, scope: !362)
!439 = !DILocation(line: 170, column: 6, scope: !435)
!440 = !DILocation(line: 170, column: 3, scope: !435)
!441 = !DILocation(line: 172, column: 6, scope: !442)
!442 = distinct !DILexicalBlock(scope: !362, file: !3, line: 172, column: 6)
!443 = !DILocation(line: 172, column: 12, scope: !442)
!444 = !DILocation(line: 172, column: 9, scope: !442)
!445 = !DILocation(line: 172, column: 6, scope: !362)
!446 = !DILocation(line: 173, column: 22, scope: !442)
!447 = !DILocation(line: 173, column: 26, scope: !442)
!448 = !DILocation(line: 173, column: 3, scope: !442)
!449 = !DILocation(line: 177, column: 2, scope: !362)
!450 = !DILocation(line: 177, column: 2, scope: !379)
!451 = !DILocation(line: 178, column: 7, scope: !452)
!452 = distinct !DILexicalBlock(scope: !362, file: !3, line: 178, column: 6)
!453 = !DILocation(line: 178, column: 10, scope: !452)
!454 = !DILocation(line: 178, column: 28, scope: !452)
!455 = !DILocation(line: 178, column: 6, scope: !362)
!456 = !DILocation(line: 179, column: 3, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 179, column: 3)
!458 = distinct !DILexicalBlock(scope: !452, file: !3, line: 178, column: 34)
!459 = !DILocation(line: 179, column: 3, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !3, line: 179, column: 3)
!461 = !DILocation(line: 180, column: 3, scope: !458)
!462 = !DILocation(line: 183, column: 2, scope: !362)
!463 = !DILocation(line: 184, column: 1, scope: !362)
!464 = distinct !DISubprogram(name: "via_rng_data_present", scope: !3, file: !3, line: 87, type: !173, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !465)
!465 = !{!466, !467, !468, !469, !470, !471}
!466 = !DILocalVariable(name: "rng", arg: 1, scope: !464, file: !3, line: 87, type: !166)
!467 = !DILocalVariable(name: "wait", arg: 2, scope: !464, file: !3, line: 87, type: !30)
!468 = !DILocalVariable(name: "buf", scope: !464, file: !3, line: 89, type: !73, align: 128)
!469 = !DILocalVariable(name: "via_rng_datum", scope: !464, file: !3, line: 91, type: !116)
!470 = !DILocalVariable(name: "bytes_out", scope: !464, file: !3, line: 92, type: !112)
!471 = !DILocalVariable(name: "i", scope: !464, file: !3, line: 93, type: !30)
!472 = !DILocation(line: 87, column: 47, scope: !464)
!473 = !DILocation(line: 87, column: 56, scope: !464)
!474 = !DILocation(line: 89, column: 2, scope: !464)
!475 = !DILocation(line: 89, column: 7, scope: !464)
!476 = !DILocation(line: 91, column: 2, scope: !464)
!477 = !DILocation(line: 91, column: 7, scope: !464)
!478 = !DILocation(line: 91, column: 30, scope: !464)
!479 = !DILocation(line: 92, column: 2, scope: !464)
!480 = !DILocation(line: 92, column: 6, scope: !464)
!481 = !DILocation(line: 93, column: 2, scope: !464)
!482 = !DILocation(line: 93, column: 6, scope: !464)
!483 = !DILocation(line: 108, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !464, file: !3, line: 108, column: 2)
!485 = !DILocation(line: 108, column: 7, scope: !484)
!486 = !DILocation(line: 108, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 108, column: 2)
!488 = !DILocation(line: 108, column: 16, scope: !487)
!489 = !DILocation(line: 108, column: 2, scope: !484)
!490 = !DILocation(line: 109, column: 4, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !3, line: 108, column: 27)
!492 = !DILocation(line: 109, column: 18, scope: !491)
!493 = !DILocation(line: 110, column: 22, scope: !491)
!494 = !DILocation(line: 110, column: 15, scope: !491)
!495 = !DILocation(line: 110, column: 13, scope: !491)
!496 = !DILocation(line: 111, column: 13, scope: !491)
!497 = !DILocation(line: 112, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !491, file: !3, line: 112, column: 7)
!499 = !DILocation(line: 112, column: 17, scope: !498)
!500 = !DILocation(line: 112, column: 21, scope: !498)
!501 = !DILocation(line: 112, column: 7, scope: !491)
!502 = !DILocation(line: 113, column: 4, scope: !498)
!503 = !DILocation(line: 114, column: 3, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !3, line: 114, column: 3)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 114, column: 3)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 114, column: 3)
!507 = distinct !DILexicalBlock(scope: !491, file: !3, line: 114, column: 3)
!508 = !DILocation(line: 115, column: 2, scope: !491)
!509 = !DILocation(line: 108, column: 23, scope: !487)
!510 = !DILocation(line: 108, column: 2, scope: !487)
!511 = distinct !{!511, !489, !512, !513, !514}
!512 = !DILocation(line: 115, column: 2, scope: !484)
!513 = !{!"llvm.loop.mustprogress"}
!514 = !{!"llvm.loop.unroll.disable"}
!515 = !DILocation(line: 116, column: 15, scope: !464)
!516 = !DILocation(line: 116, column: 14, scope: !464)
!517 = !DILocation(line: 116, column: 2, scope: !464)
!518 = !DILocation(line: 116, column: 7, scope: !464)
!519 = !DILocation(line: 116, column: 12, scope: !464)
!520 = !DILocation(line: 117, column: 9, scope: !464)
!521 = !DILocation(line: 118, column: 1, scope: !464)
!522 = !DILocation(line: 117, column: 2, scope: !464)
!523 = distinct !DISubprogram(name: "via_rng_data_read", scope: !3, file: !3, line: 120, type: !177, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !524)
!524 = !{!525, !526, !527}
!525 = !DILocalVariable(name: "rng", arg: 1, scope: !523, file: !3, line: 120, type: !166)
!526 = !DILocalVariable(name: "data", arg: 2, scope: !523, file: !3, line: 120, type: !116)
!527 = !DILocalVariable(name: "via_rng_datum", scope: !523, file: !3, line: 122, type: !112)
!528 = !DILocation(line: 120, column: 44, scope: !523)
!529 = !DILocation(line: 120, column: 54, scope: !523)
!530 = !DILocation(line: 122, column: 2, scope: !523)
!531 = !DILocation(line: 122, column: 6, scope: !523)
!532 = !DILocation(line: 122, column: 27, scope: !523)
!533 = !DILocation(line: 122, column: 32, scope: !523)
!534 = !DILocation(line: 122, column: 22, scope: !523)
!535 = !DILocation(line: 124, column: 10, scope: !523)
!536 = !DILocation(line: 124, column: 3, scope: !523)
!537 = !DILocation(line: 124, column: 8, scope: !523)
!538 = !DILocation(line: 127, column: 1, scope: !523)
!539 = !DILocation(line: 126, column: 2, scope: !523)
!540 = distinct !DISubprogram(name: "native_read_msr", scope: !541, file: !541, line: 114, type: !542, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !544)
!541 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!542 = !DISubroutineType(types: !543)
!543 = !{!92, !6}
!544 = !{!545, !546}
!545 = !DILocalVariable(name: "msr", arg: 1, scope: !540, file: !541, line: 114, type: !6)
!546 = !DILocalVariable(name: "val", scope: !540, file: !541, line: 116, type: !92)
!547 = !DILocation(line: 114, column: 63, scope: !540)
!548 = !DILocation(line: 116, column: 2, scope: !540)
!549 = !DILocation(line: 116, column: 21, scope: !540)
!550 = !DILocation(line: 118, column: 16, scope: !540)
!551 = !DILocation(line: 118, column: 8, scope: !540)
!552 = !DILocation(line: 118, column: 6, scope: !540)
!553 = !DILocation(line: 120, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !540, file: !541, line: 120, column: 6)
!555 = !DILocation(line: 120, column: 6, scope: !540)
!556 = !DILocation(line: 121, column: 21, scope: !554)
!557 = !DILocation(line: 121, column: 26, scope: !554)
!558 = !DILocation(line: 121, column: 3, scope: !554)
!559 = !DILocation(line: 123, column: 9, scope: !540)
!560 = !DILocation(line: 124, column: 1, scope: !540)
!561 = !DILocation(line: 123, column: 2, scope: !540)
!562 = distinct !DISubprogram(name: "wrmsr", scope: !541, file: !541, line: 252, type: !563, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !6, !112, !112}
!565 = !{!566, !567, !568}
!566 = !DILocalVariable(name: "msr", arg: 1, scope: !562, file: !541, line: 252, type: !6)
!567 = !DILocalVariable(name: "low", arg: 2, scope: !562, file: !541, line: 252, type: !112)
!568 = !DILocalVariable(name: "high", arg: 3, scope: !562, file: !541, line: 252, type: !112)
!569 = !DILocation(line: 252, column: 39, scope: !562)
!570 = !DILocation(line: 252, column: 48, scope: !562)
!571 = !DILocation(line: 252, column: 57, scope: !562)
!572 = !DILocation(line: 254, column: 19, scope: !562)
!573 = !DILocation(line: 254, column: 24, scope: !562)
!574 = !DILocation(line: 254, column: 29, scope: !562)
!575 = !DILocation(line: 254, column: 2, scope: !562)
!576 = !DILocation(line: 255, column: 1, scope: !562)
!577 = distinct !DISubprogram(name: "__rdmsr", scope: !541, file: !541, line: 80, type: !542, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!578 = !{!579, !580, !581}
!579 = !DILocalVariable(name: "msr", arg: 1, scope: !577, file: !541, line: 80, type: !6)
!580 = !DILocalVariable(name: "low", scope: !577, file: !541, line: 82, type: !32)
!581 = !DILocalVariable(name: "high", scope: !577, file: !541, line: 82, type: !32)
!582 = !DILocation(line: 80, column: 64, scope: !577)
!583 = !DILocation(line: 82, column: 2, scope: !577)
!584 = !DILocation(line: 87, column: 45, scope: !577)
!585 = !DILocation(line: 84, column: 2, scope: !577)
!586 = !{i64 1114776, i64 1114797, i64 2149335112, i64 2149335156, i64 2149335179, i64 2149335212, i64 2149335243, i64 2149335282}
!587 = !DILocation(line: 89, column: 9, scope: !577)
!588 = !DILocation(line: 90, column: 1, scope: !577)
!589 = !DILocation(line: 89, column: 2, scope: !577)
!590 = distinct !DISubprogram(name: "static_key_false", scope: !591, file: !591, line: 205, type: !592, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !614)
!591 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!592 = !DISubroutineType(types: !593)
!593 = !{!108, !594}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !591, line: 85, size: 128, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !595, file: !591, line: 86, baseType: !205, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !591, line: 101, baseType: !599, size: 64, offset: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !591, line: 101, size: 64, elements: !600)
!600 = !{!601, !602, !611}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !591, line: 102, baseType: !32, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !599, file: !591, line: 103, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !591, line: 117, size: 128, elements: !605)
!605 = !{!606, !609, !610}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !604, file: !591, line: 118, baseType: !607, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !90, line: 20, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !45, line: 26, baseType: !30)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !604, file: !591, line: 119, baseType: !607, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !604, file: !591, line: 120, baseType: !329, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !599, file: !591, line: 104, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !591, line: 104, flags: DIFlagFwdDecl)
!614 = !{!615}
!615 = !DILocalVariable(name: "key", arg: 1, scope: !590, file: !591, line: 205, type: !594)
!616 = !DILocation(line: 205, column: 65, scope: !590)
!617 = !DILocation(line: 207, column: 28, scope: !590)
!618 = !DILocation(line: 207, column: 9, scope: !590)
!619 = !DILocation(line: 207, column: 2, scope: !590)
!620 = !DISubprogram(name: "do_trace_read_msr", scope: !541, file: !541, line: 65, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !6, !89, !30}
!623 = distinct !DISubprogram(name: "arch_static_branch", scope: !624, file: !624, line: 25, type: !625, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!624 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!625 = !DISubroutineType(types: !626)
!626 = !{!108, !594, !108}
!627 = !{!628, !629, !630}
!628 = !DILocalVariable(name: "key", arg: 1, scope: !623, file: !624, line: 25, type: !594)
!629 = !DILocalVariable(name: "branch", arg: 2, scope: !623, file: !624, line: 25, type: !108)
!630 = !DILabel(scope: !623, name: "l_yes", file: !624, line: 33)
!631 = !DILocation(line: 25, column: 67, scope: !623)
!632 = !DILocation(line: 25, column: 77, scope: !623)
!633 = !DILocation(line: 30, column: 13, scope: !623)
!634 = !DILocation(line: 30, column: 28, scope: !623)
!635 = !DILocation(line: 30, column: 26, scope: !623)
!636 = !DILocation(line: 27, column: 2, scope: !623)
!637 = !{i64 645075, i64 645119, i64 2148129802, i64 2148129823, i64 2148129849, i64 2148129882, i64 2148129916, i64 2148129940}
!638 = !DILocation(line: 32, column: 2, scope: !623)
!639 = !DILocation(line: 33, column: 1, scope: !623)
!640 = !DILocation(line: 34, column: 2, scope: !623)
!641 = !DILocation(line: 35, column: 1, scope: !623)
!642 = distinct !DISubprogram(name: "native_write_msr", scope: !541, file: !541, line: 143, type: !563, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!643 = !{!644, !645, !646}
!644 = !DILocalVariable(name: "msr", arg: 1, scope: !642, file: !541, line: 143, type: !6)
!645 = !DILocalVariable(name: "low", arg: 2, scope: !642, file: !541, line: 143, type: !112)
!646 = !DILocalVariable(name: "high", arg: 3, scope: !642, file: !541, line: 143, type: !112)
!647 = !DILocation(line: 143, column: 31, scope: !642)
!648 = !DILocation(line: 143, column: 40, scope: !642)
!649 = !DILocation(line: 143, column: 49, scope: !642)
!650 = !DILocation(line: 145, column: 10, scope: !642)
!651 = !DILocation(line: 145, column: 15, scope: !642)
!652 = !DILocation(line: 145, column: 20, scope: !642)
!653 = !DILocation(line: 145, column: 2, scope: !642)
!654 = !DILocation(line: 147, column: 6, scope: !655)
!655 = distinct !DILexicalBlock(scope: !642, file: !541, line: 147, column: 6)
!656 = !DILocation(line: 147, column: 6, scope: !642)
!657 = !DILocation(line: 148, column: 22, scope: !655)
!658 = !DILocation(line: 148, column: 33, scope: !655)
!659 = !DILocation(line: 148, column: 28, scope: !655)
!660 = !DILocation(line: 148, column: 38, scope: !655)
!661 = !DILocation(line: 148, column: 46, scope: !655)
!662 = !DILocation(line: 148, column: 44, scope: !655)
!663 = !DILocation(line: 148, column: 3, scope: !655)
!664 = !DILocation(line: 149, column: 1, scope: !642)
!665 = distinct !DISubprogram(name: "__wrmsr", scope: !541, file: !541, line: 92, type: !563, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!666 = !{!667, !668, !669}
!667 = !DILocalVariable(name: "msr", arg: 1, scope: !665, file: !541, line: 92, type: !6)
!668 = !DILocalVariable(name: "low", arg: 2, scope: !665, file: !541, line: 92, type: !112)
!669 = !DILocalVariable(name: "high", arg: 3, scope: !665, file: !541, line: 92, type: !112)
!670 = !DILocation(line: 92, column: 50, scope: !665)
!671 = !DILocation(line: 92, column: 59, scope: !665)
!672 = !DILocation(line: 92, column: 68, scope: !665)
!673 = !DILocation(line: 97, column: 17, scope: !665)
!674 = !DILocation(line: 97, column: 27, scope: !665)
!675 = !DILocation(line: 97, column: 38, scope: !665)
!676 = !DILocation(line: 94, column: 2, scope: !665)
!677 = !{i64 1115032, i64 1115053, i64 2149335611, i64 2149335655, i64 2149335678, i64 2149335711, i64 2149335742, i64 2149335781}
!678 = !DILocation(line: 98, column: 1, scope: !665)
!679 = !DISubprogram(name: "do_trace_write_msr", scope: !541, file: !541, line: 64, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!680 = distinct !DISubprogram(name: "xstore", scope: !3, file: !3, line: 77, type: !681, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!112, !116, !112}
!683 = !{!684, !685, !686}
!684 = !DILocalVariable(name: "addr", arg: 1, scope: !680, file: !3, line: 77, type: !116)
!685 = !DILocalVariable(name: "edx_in", arg: 2, scope: !680, file: !3, line: 77, type: !112)
!686 = !DILocalVariable(name: "eax_out", scope: !680, file: !3, line: 79, type: !112)
!687 = !DILocation(line: 77, column: 31, scope: !680)
!688 = !DILocation(line: 77, column: 41, scope: !680)
!689 = !DILocation(line: 79, column: 2, scope: !680)
!690 = !DILocation(line: 79, column: 6, scope: !680)
!691 = !DILocation(line: 82, column: 12, scope: !680)
!692 = !DILocation(line: 81, column: 2, scope: !680)
!693 = !{i64 2486}
!694 = !DILocation(line: 84, column: 9, scope: !680)
!695 = !DILocation(line: 85, column: 1, scope: !680)
!696 = !DILocation(line: 84, column: 2, scope: !680)
!697 = !DISubprogram(name: "__const_udelay", scope: !698, file: !698, line: 11, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!698 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!699 = !DISubroutineType(types: !700)
!700 = !{null, !32}
