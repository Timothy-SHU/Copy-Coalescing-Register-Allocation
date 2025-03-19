; ModuleID = 'kernel/time/vsyscall.c'
source_filename = "kernel/time/vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timezone = type { i32, i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.timekeeper = type { %struct.tk_read_base, %struct.tk_read_base, i64, i64, %struct.timespec64, i64, i64, i64, i32, i32, i8, i64, i64, %struct.timespec64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.tk_read_base = type { ptr, i64, i64, i32, i32, i64, i64, i64 }
%struct.timespec64 = type { i64, i64 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, i64, ptr }
%struct.list_head = type { ptr, ptr }

@hrtimer_resolution = external dso_local global i32, align 4
@sys_tz = external dso_local global %struct.timezone, align 4
@timekeeper_lock = external dso_local global %struct.raw_spinlock, align 4
@_vdso_data = hidden global [2 x %struct.vdso_data] zeroinitializer, section ".vvar__vdso_data", align 16, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @update_vsyscall(ptr noundef %tk) #0 align 16 !dbg !85 {
entry:
  %tk.addr = alloca ptr, align 8
  %vdata = alloca ptr, align 8
  %vdso_ts = alloca ptr, align 8
  %clock_mode = alloca i32, align 4
  %nsec = alloca i64, align 8
  store ptr %tk, ptr %tk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tk.addr, metadata !188, metadata !DIExpression()), !dbg !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdata) #6, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %vdata, metadata !189, metadata !DIExpression()), !dbg !197
  %call = call ptr @__x86_get_k_vdso_data() #7, !dbg !198
  store ptr %call, ptr %vdata, align 8, !dbg !197
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdso_ts) #6, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !191, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 4, ptr %clock_mode) #6, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %clock_mode, metadata !193, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsec) #6, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %nsec, metadata !194, metadata !DIExpression()), !dbg !204
  %0 = load ptr, ptr %vdata, align 8, !dbg !205
  call void @vdso_write_begin(ptr noundef %0) #7, !dbg !206
  %1 = load ptr, ptr %tk.addr, align 8, !dbg !207
  %tkr_mono = getelementptr inbounds %struct.timekeeper, ptr %1, i32 0, i32 0, !dbg !208
  %clock = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono, i32 0, i32 0, !dbg !209
  %2 = load ptr, ptr %clock, align 8, !dbg !209
  %vdso_clock_mode = getelementptr inbounds %struct.clocksource, ptr %2, i32 0, i32 12, !dbg !210
  %3 = load i32, ptr %vdso_clock_mode, align 8, !dbg !210
  store i32 %3, ptr %clock_mode, align 4, !dbg !211
  %4 = load i32, ptr %clock_mode, align 4, !dbg !212
  %5 = load ptr, ptr %vdata, align 8, !dbg !213
  %arrayidx = getelementptr %struct.vdso_data, ptr %5, i64 0, !dbg !213
  %clock_mode1 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx, i32 0, i32 1, !dbg !214
  store i32 %4, ptr %clock_mode1, align 4, !dbg !215
  %6 = load i32, ptr %clock_mode, align 4, !dbg !216
  %7 = load ptr, ptr %vdata, align 8, !dbg !217
  %arrayidx2 = getelementptr %struct.vdso_data, ptr %7, i64 1, !dbg !217
  %clock_mode3 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx2, i32 0, i32 1, !dbg !218
  store i32 %6, ptr %clock_mode3, align 4, !dbg !219
  %8 = load ptr, ptr %vdata, align 8, !dbg !220
  %arrayidx4 = getelementptr %struct.vdso_data, ptr %8, i64 0, !dbg !220
  %9 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx4, i32 0, i32 6, !dbg !221
  %arrayidx5 = getelementptr [12 x %struct.vdso_timestamp], ptr %9, i64 0, i64 0, !dbg !220
  store ptr %arrayidx5, ptr %vdso_ts, align 8, !dbg !222
  %10 = load ptr, ptr %tk.addr, align 8, !dbg !223
  %xtime_sec = getelementptr inbounds %struct.timekeeper, ptr %10, i32 0, i32 2, !dbg !224
  %11 = load i64, ptr %xtime_sec, align 8, !dbg !224
  %12 = load ptr, ptr %vdso_ts, align 8, !dbg !225
  %sec = getelementptr inbounds %struct.vdso_timestamp, ptr %12, i32 0, i32 0, !dbg !226
  store i64 %11, ptr %sec, align 8, !dbg !227
  %13 = load ptr, ptr %tk.addr, align 8, !dbg !228
  %tkr_mono6 = getelementptr inbounds %struct.timekeeper, ptr %13, i32 0, i32 0, !dbg !229
  %xtime_nsec = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono6, i32 0, i32 5, !dbg !230
  %14 = load i64, ptr %xtime_nsec, align 8, !dbg !230
  %15 = load ptr, ptr %vdso_ts, align 8, !dbg !231
  %nsec7 = getelementptr inbounds %struct.vdso_timestamp, ptr %15, i32 0, i32 1, !dbg !232
  store i64 %14, ptr %nsec7, align 8, !dbg !233
  %16 = load ptr, ptr %vdata, align 8, !dbg !234
  %arrayidx8 = getelementptr %struct.vdso_data, ptr %16, i64 0, !dbg !234
  %17 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx8, i32 0, i32 6, !dbg !235
  %arrayidx9 = getelementptr [12 x %struct.vdso_timestamp], ptr %17, i64 0, i64 5, !dbg !234
  store ptr %arrayidx9, ptr %vdso_ts, align 8, !dbg !236
  %18 = load ptr, ptr %tk.addr, align 8, !dbg !237
  %xtime_sec10 = getelementptr inbounds %struct.timekeeper, ptr %18, i32 0, i32 2, !dbg !238
  %19 = load i64, ptr %xtime_sec10, align 8, !dbg !238
  %20 = load ptr, ptr %vdso_ts, align 8, !dbg !239
  %sec11 = getelementptr inbounds %struct.vdso_timestamp, ptr %20, i32 0, i32 0, !dbg !240
  store i64 %19, ptr %sec11, align 8, !dbg !241
  %21 = load ptr, ptr %tk.addr, align 8, !dbg !242
  %tkr_mono12 = getelementptr inbounds %struct.timekeeper, ptr %21, i32 0, i32 0, !dbg !243
  %xtime_nsec13 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono12, i32 0, i32 5, !dbg !244
  %22 = load i64, ptr %xtime_nsec13, align 8, !dbg !244
  %23 = load ptr, ptr %tk.addr, align 8, !dbg !245
  %tkr_mono14 = getelementptr inbounds %struct.timekeeper, ptr %23, i32 0, i32 0, !dbg !246
  %shift = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono14, i32 0, i32 4, !dbg !247
  %24 = load i32, ptr %shift, align 4, !dbg !247
  %sh_prom = zext i32 %24 to i64, !dbg !248
  %shr = lshr i64 %22, %sh_prom, !dbg !248
  %25 = load ptr, ptr %vdso_ts, align 8, !dbg !249
  %nsec15 = getelementptr inbounds %struct.vdso_timestamp, ptr %25, i32 0, i32 1, !dbg !250
  store i64 %shr, ptr %nsec15, align 8, !dbg !251
  %26 = load ptr, ptr %vdata, align 8, !dbg !252
  %arrayidx16 = getelementptr %struct.vdso_data, ptr %26, i64 0, !dbg !252
  %27 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx16, i32 0, i32 6, !dbg !253
  %arrayidx17 = getelementptr [12 x %struct.vdso_timestamp], ptr %27, i64 0, i64 6, !dbg !252
  store ptr %arrayidx17, ptr %vdso_ts, align 8, !dbg !254
  %28 = load ptr, ptr %tk.addr, align 8, !dbg !255
  %xtime_sec18 = getelementptr inbounds %struct.timekeeper, ptr %28, i32 0, i32 2, !dbg !256
  %29 = load i64, ptr %xtime_sec18, align 8, !dbg !256
  %30 = load ptr, ptr %tk.addr, align 8, !dbg !257
  %wall_to_monotonic = getelementptr inbounds %struct.timekeeper, ptr %30, i32 0, i32 4, !dbg !258
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %wall_to_monotonic, i32 0, i32 0, !dbg !259
  %31 = load i64, ptr %tv_sec, align 8, !dbg !259
  %add = add i64 %29, %31, !dbg !260
  %32 = load ptr, ptr %vdso_ts, align 8, !dbg !261
  %sec19 = getelementptr inbounds %struct.vdso_timestamp, ptr %32, i32 0, i32 0, !dbg !262
  store i64 %add, ptr %sec19, align 8, !dbg !263
  %33 = load ptr, ptr %tk.addr, align 8, !dbg !264
  %tkr_mono20 = getelementptr inbounds %struct.timekeeper, ptr %33, i32 0, i32 0, !dbg !265
  %xtime_nsec21 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono20, i32 0, i32 5, !dbg !266
  %34 = load i64, ptr %xtime_nsec21, align 8, !dbg !266
  %35 = load ptr, ptr %tk.addr, align 8, !dbg !267
  %tkr_mono22 = getelementptr inbounds %struct.timekeeper, ptr %35, i32 0, i32 0, !dbg !268
  %shift23 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono22, i32 0, i32 4, !dbg !269
  %36 = load i32, ptr %shift23, align 4, !dbg !269
  %sh_prom24 = zext i32 %36 to i64, !dbg !270
  %shr25 = lshr i64 %34, %sh_prom24, !dbg !270
  store i64 %shr25, ptr %nsec, align 8, !dbg !271
  %37 = load i64, ptr %nsec, align 8, !dbg !272
  %38 = load ptr, ptr %tk.addr, align 8, !dbg !273
  %wall_to_monotonic26 = getelementptr inbounds %struct.timekeeper, ptr %38, i32 0, i32 4, !dbg !274
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %wall_to_monotonic26, i32 0, i32 1, !dbg !275
  %39 = load i64, ptr %tv_nsec, align 8, !dbg !275
  %add27 = add i64 %37, %39, !dbg !276
  store i64 %add27, ptr %nsec, align 8, !dbg !277
  %40 = load i64, ptr %nsec, align 8, !dbg !278
  %41 = load ptr, ptr %vdso_ts, align 8, !dbg !279
  %nsec28 = getelementptr inbounds %struct.vdso_timestamp, ptr %41, i32 0, i32 1, !dbg !280
  %call29 = call i32 @__iter_div_u64_rem(i64 noundef %40, i32 noundef 1000000000, ptr noundef %nsec28) #7, !dbg !281
  %conv = zext i32 %call29 to i64, !dbg !281
  %42 = load ptr, ptr %vdso_ts, align 8, !dbg !282
  %sec30 = getelementptr inbounds %struct.vdso_timestamp, ptr %42, i32 0, i32 0, !dbg !283
  %43 = load i64, ptr %sec30, align 8, !dbg !284
  %add31 = add i64 %43, %conv, !dbg !284
  store i64 %add31, ptr %sec30, align 8, !dbg !284
  br label %do.body, !dbg !285

do.body:                                          ; preds = %entry
  br label %do.body32, !dbg !286

do.body32:                                        ; preds = %do.body
  br label %do.cond, !dbg !288

do.cond:                                          ; preds = %do.body32
  br label %do.end, !dbg !288

do.end:                                           ; preds = %do.cond
  br label %do.body33, !dbg !286

do.body33:                                        ; preds = %do.end
  %44 = load i32, ptr @hrtimer_resolution, align 4, !dbg !290
  %45 = load ptr, ptr %vdata, align 8, !dbg !290
  %arrayidx34 = getelementptr %struct.vdso_data, ptr %45, i64 0, !dbg !290
  %hrtimer_res = getelementptr inbounds %struct.vdso_data, ptr %arrayidx34, i32 0, i32 9, !dbg !290
  store volatile i32 %44, ptr %hrtimer_res, align 8, !dbg !290
  br label %do.cond35, !dbg !290

do.cond35:                                        ; preds = %do.body33
  br label %do.end36, !dbg !290

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !286

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !286

do.end38:                                         ; preds = %do.cond37
  %46 = load i32, ptr %clock_mode, align 4, !dbg !292
  %cmp = icmp ne i32 %46, 0, !dbg !294
  br i1 %cmp, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %do.end38
  %47 = load ptr, ptr %vdata, align 8, !dbg !296
  %48 = load ptr, ptr %tk.addr, align 8, !dbg !297
  call void @update_vdso_data(ptr noundef %47, ptr noundef %48) #7, !dbg !298
  br label %if.end, !dbg !298

if.end:                                           ; preds = %if.then, %do.end38
  %49 = load ptr, ptr %vdata, align 8, !dbg !299
  %50 = load ptr, ptr %tk.addr, align 8, !dbg !300
  call void @__arch_update_vsyscall(ptr noundef %49, ptr noundef %50) #7, !dbg !301
  %51 = load ptr, ptr %vdata, align 8, !dbg !302
  call void @vdso_write_end(ptr noundef %51) #7, !dbg !303
  %52 = load ptr, ptr %vdata, align 8, !dbg !304
  call void @__arch_sync_vdso_data(ptr noundef %52) #7, !dbg !305
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsec) #6, !dbg !306
  call void @llvm.lifetime.end.p0(i64 4, ptr %clock_mode) #6, !dbg !306
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdso_ts) #6, !dbg !306
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdata) #6, !dbg !306
  ret void, !dbg !306
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__x86_get_k_vdso_data() #3 align 16 !dbg !307 {
entry:
  ret ptr @_vdso_data, !dbg !310
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vdso_write_begin(ptr noundef %vd) #3 align 16 !dbg !311 {
entry:
  %vd.addr = alloca ptr, align 8
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !316, metadata !DIExpression()), !dbg !317
  br label %do.body, !dbg !318

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !319

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !321

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !319

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !323
  %arrayidx = getelementptr %struct.vdso_data, ptr %0, i64 0, !dbg !323
  %seq = getelementptr inbounds %struct.vdso_data, ptr %arrayidx, i32 0, i32 0, !dbg !323
  %1 = load i32, ptr %seq, align 8, !dbg !323
  %add = add i32 %1, 1, !dbg !323
  %2 = load ptr, ptr %vd.addr, align 8, !dbg !323
  %arrayidx3 = getelementptr %struct.vdso_data, ptr %2, i64 0, !dbg !323
  %seq4 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx3, i32 0, i32 0, !dbg !323
  store volatile i32 %add, ptr %seq4, align 8, !dbg !323
  br label %do.end5, !dbg !323

do.end5:                                          ; preds = %do.body2
  br label %do.end6, !dbg !319

do.end6:                                          ; preds = %do.end5
  br label %do.body7, !dbg !325

do.body7:                                         ; preds = %do.end6
  br label %do.body8, !dbg !326

do.body8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !328

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !326

do.body10:                                        ; preds = %do.end9
  %3 = load ptr, ptr %vd.addr, align 8, !dbg !330
  %arrayidx11 = getelementptr %struct.vdso_data, ptr %3, i64 1, !dbg !330
  %seq12 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx11, i32 0, i32 0, !dbg !330
  %4 = load i32, ptr %seq12, align 8, !dbg !330
  %add13 = add i32 %4, 1, !dbg !330
  %5 = load ptr, ptr %vd.addr, align 8, !dbg !330
  %arrayidx14 = getelementptr %struct.vdso_data, ptr %5, i64 1, !dbg !330
  %seq15 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx14, i32 0, i32 0, !dbg !330
  store volatile i32 %add13, ptr %seq15, align 8, !dbg !330
  br label %do.end16, !dbg !330

do.end16:                                         ; preds = %do.body10
  br label %do.end17, !dbg !326

do.end17:                                         ; preds = %do.end16
  br label %do.body18, !dbg !332

do.body18:                                        ; preds = %do.end17
  br label %do.body19, !dbg !333

do.body19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !335

do.end20:                                         ; preds = %do.body19
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !333, !srcloc !337
  br label %do.end21, !dbg !333

do.end21:                                         ; preds = %do.end20
  ret void, !dbg !338
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__iter_div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #3 align 16 !dbg !339 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !345, metadata !DIExpression()), !dbg !349
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !346, metadata !DIExpression()), !dbg !350
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !347, metadata !DIExpression()), !dbg !351
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !348, metadata !DIExpression()), !dbg !353
  store i32 0, ptr %ret, align 4, !dbg !353
  br label %while.cond, !dbg !354

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !355
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !356
  %conv = zext i32 %1 to i64, !dbg !356
  %cmp = icmp uge i64 %0, %conv, !dbg !357
  br i1 %cmp, label %while.body, label %while.end, !dbg !354

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %dividend.addr, align 8, !dbg !358
  call void asm "", "=*rm,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %dividend.addr, i64 %2) #6, !dbg !358, !srcloc !360
  %3 = load i32, ptr %divisor.addr, align 4, !dbg !361
  %conv2 = zext i32 %3 to i64, !dbg !361
  %4 = load i64, ptr %dividend.addr, align 8, !dbg !362
  %sub = sub i64 %4, %conv2, !dbg !362
  store i64 %sub, ptr %dividend.addr, align 8, !dbg !362
  %5 = load i32, ptr %ret, align 4, !dbg !363
  %inc = add i32 %5, 1, !dbg !363
  store i32 %inc, ptr %ret, align 4, !dbg !363
  br label %while.cond, !dbg !354, !llvm.loop !364

while.end:                                        ; preds = %while.cond
  %6 = load i64, ptr %dividend.addr, align 8, !dbg !368
  %7 = load ptr, ptr %remainder.addr, align 8, !dbg !369
  store i64 %6, ptr %7, align 8, !dbg !370
  %8 = load i32, ptr %ret, align 4, !dbg !371
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !372
  ret i32 %8, !dbg !373
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_vdso_data(ptr noundef %vdata, ptr noundef %tk) #4 align 16 !dbg !374 {
entry:
  %vdata.addr = alloca ptr, align 8
  %tk.addr = alloca ptr, align 8
  %vdso_ts = alloca ptr, align 8
  %nsec = alloca i64, align 8
  %sec = alloca i64, align 8
  store ptr %vdata, ptr %vdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdata.addr, metadata !378, metadata !DIExpression()), !dbg !383
  store ptr %tk, ptr %tk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tk.addr, metadata !379, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdso_ts) #6, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !380, metadata !DIExpression()), !dbg !386
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsec) #6, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %nsec, metadata !381, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #6, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !382, metadata !DIExpression()), !dbg !389
  %0 = load ptr, ptr %tk.addr, align 8, !dbg !390
  %tkr_mono = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 0, !dbg !391
  %cycle_last = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono, i32 0, i32 2, !dbg !392
  %1 = load i64, ptr %cycle_last, align 8, !dbg !392
  %2 = load ptr, ptr %vdata.addr, align 8, !dbg !393
  %arrayidx = getelementptr %struct.vdso_data, ptr %2, i64 0, !dbg !393
  %cycle_last1 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx, i32 0, i32 2, !dbg !394
  store i64 %1, ptr %cycle_last1, align 8, !dbg !395
  %3 = load ptr, ptr %tk.addr, align 8, !dbg !396
  %tkr_mono2 = getelementptr inbounds %struct.timekeeper, ptr %3, i32 0, i32 0, !dbg !397
  %mask = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono2, i32 0, i32 1, !dbg !398
  %4 = load i64, ptr %mask, align 8, !dbg !398
  %5 = load ptr, ptr %vdata.addr, align 8, !dbg !399
  %arrayidx3 = getelementptr %struct.vdso_data, ptr %5, i64 0, !dbg !399
  %mask4 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx3, i32 0, i32 3, !dbg !400
  store i64 %4, ptr %mask4, align 8, !dbg !401
  %6 = load ptr, ptr %tk.addr, align 8, !dbg !402
  %tkr_mono5 = getelementptr inbounds %struct.timekeeper, ptr %6, i32 0, i32 0, !dbg !403
  %mult = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono5, i32 0, i32 3, !dbg !404
  %7 = load i32, ptr %mult, align 8, !dbg !404
  %8 = load ptr, ptr %vdata.addr, align 8, !dbg !405
  %arrayidx6 = getelementptr %struct.vdso_data, ptr %8, i64 0, !dbg !405
  %mult7 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx6, i32 0, i32 4, !dbg !406
  store i32 %7, ptr %mult7, align 8, !dbg !407
  %9 = load ptr, ptr %tk.addr, align 8, !dbg !408
  %tkr_mono8 = getelementptr inbounds %struct.timekeeper, ptr %9, i32 0, i32 0, !dbg !409
  %shift = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono8, i32 0, i32 4, !dbg !410
  %10 = load i32, ptr %shift, align 4, !dbg !410
  %11 = load ptr, ptr %vdata.addr, align 8, !dbg !411
  %arrayidx9 = getelementptr %struct.vdso_data, ptr %11, i64 0, !dbg !411
  %shift10 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx9, i32 0, i32 5, !dbg !412
  store i32 %10, ptr %shift10, align 4, !dbg !413
  %12 = load ptr, ptr %tk.addr, align 8, !dbg !414
  %tkr_raw = getelementptr inbounds %struct.timekeeper, ptr %12, i32 0, i32 1, !dbg !415
  %cycle_last11 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_raw, i32 0, i32 2, !dbg !416
  %13 = load i64, ptr %cycle_last11, align 8, !dbg !416
  %14 = load ptr, ptr %vdata.addr, align 8, !dbg !417
  %arrayidx12 = getelementptr %struct.vdso_data, ptr %14, i64 1, !dbg !417
  %cycle_last13 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx12, i32 0, i32 2, !dbg !418
  store i64 %13, ptr %cycle_last13, align 8, !dbg !419
  %15 = load ptr, ptr %tk.addr, align 8, !dbg !420
  %tkr_raw14 = getelementptr inbounds %struct.timekeeper, ptr %15, i32 0, i32 1, !dbg !421
  %mask15 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_raw14, i32 0, i32 1, !dbg !422
  %16 = load i64, ptr %mask15, align 8, !dbg !422
  %17 = load ptr, ptr %vdata.addr, align 8, !dbg !423
  %arrayidx16 = getelementptr %struct.vdso_data, ptr %17, i64 1, !dbg !423
  %mask17 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx16, i32 0, i32 3, !dbg !424
  store i64 %16, ptr %mask17, align 8, !dbg !425
  %18 = load ptr, ptr %tk.addr, align 8, !dbg !426
  %tkr_raw18 = getelementptr inbounds %struct.timekeeper, ptr %18, i32 0, i32 1, !dbg !427
  %mult19 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_raw18, i32 0, i32 3, !dbg !428
  %19 = load i32, ptr %mult19, align 8, !dbg !428
  %20 = load ptr, ptr %vdata.addr, align 8, !dbg !429
  %arrayidx20 = getelementptr %struct.vdso_data, ptr %20, i64 1, !dbg !429
  %mult21 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx20, i32 0, i32 4, !dbg !430
  store i32 %19, ptr %mult21, align 8, !dbg !431
  %21 = load ptr, ptr %tk.addr, align 8, !dbg !432
  %tkr_raw22 = getelementptr inbounds %struct.timekeeper, ptr %21, i32 0, i32 1, !dbg !433
  %shift23 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_raw22, i32 0, i32 4, !dbg !434
  %22 = load i32, ptr %shift23, align 4, !dbg !434
  %23 = load ptr, ptr %vdata.addr, align 8, !dbg !435
  %arrayidx24 = getelementptr %struct.vdso_data, ptr %23, i64 1, !dbg !435
  %shift25 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx24, i32 0, i32 5, !dbg !436
  store i32 %22, ptr %shift25, align 4, !dbg !437
  %24 = load ptr, ptr %vdata.addr, align 8, !dbg !438
  %arrayidx26 = getelementptr %struct.vdso_data, ptr %24, i64 0, !dbg !438
  %25 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx26, i32 0, i32 6, !dbg !439
  %arrayidx27 = getelementptr [12 x %struct.vdso_timestamp], ptr %25, i64 0, i64 1, !dbg !438
  store ptr %arrayidx27, ptr %vdso_ts, align 8, !dbg !440
  %26 = load ptr, ptr %tk.addr, align 8, !dbg !441
  %xtime_sec = getelementptr inbounds %struct.timekeeper, ptr %26, i32 0, i32 2, !dbg !442
  %27 = load i64, ptr %xtime_sec, align 8, !dbg !442
  %28 = load ptr, ptr %tk.addr, align 8, !dbg !443
  %wall_to_monotonic = getelementptr inbounds %struct.timekeeper, ptr %28, i32 0, i32 4, !dbg !444
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %wall_to_monotonic, i32 0, i32 0, !dbg !445
  %29 = load i64, ptr %tv_sec, align 8, !dbg !445
  %add = add i64 %27, %29, !dbg !446
  %30 = load ptr, ptr %vdso_ts, align 8, !dbg !447
  %sec28 = getelementptr inbounds %struct.vdso_timestamp, ptr %30, i32 0, i32 0, !dbg !448
  store i64 %add, ptr %sec28, align 8, !dbg !449
  %31 = load ptr, ptr %tk.addr, align 8, !dbg !450
  %tkr_mono29 = getelementptr inbounds %struct.timekeeper, ptr %31, i32 0, i32 0, !dbg !451
  %xtime_nsec = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono29, i32 0, i32 5, !dbg !452
  %32 = load i64, ptr %xtime_nsec, align 8, !dbg !452
  store i64 %32, ptr %nsec, align 8, !dbg !453
  %33 = load ptr, ptr %tk.addr, align 8, !dbg !454
  %wall_to_monotonic30 = getelementptr inbounds %struct.timekeeper, ptr %33, i32 0, i32 4, !dbg !455
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %wall_to_monotonic30, i32 0, i32 1, !dbg !456
  %34 = load i64, ptr %tv_nsec, align 8, !dbg !456
  %35 = load ptr, ptr %tk.addr, align 8, !dbg !457
  %tkr_mono31 = getelementptr inbounds %struct.timekeeper, ptr %35, i32 0, i32 0, !dbg !458
  %shift32 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono31, i32 0, i32 4, !dbg !459
  %36 = load i32, ptr %shift32, align 4, !dbg !459
  %sh_prom = zext i32 %36 to i64, !dbg !460
  %shl = shl i64 %34, %sh_prom, !dbg !460
  %37 = load i64, ptr %nsec, align 8, !dbg !461
  %add33 = add i64 %37, %shl, !dbg !461
  store i64 %add33, ptr %nsec, align 8, !dbg !461
  br label %while.cond, !dbg !462

while.cond:                                       ; preds = %while.body, %entry
  %38 = load i64, ptr %nsec, align 8, !dbg !463
  %39 = load ptr, ptr %tk.addr, align 8, !dbg !464
  %tkr_mono34 = getelementptr inbounds %struct.timekeeper, ptr %39, i32 0, i32 0, !dbg !465
  %shift35 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono34, i32 0, i32 4, !dbg !466
  %40 = load i32, ptr %shift35, align 4, !dbg !466
  %sh_prom36 = zext i32 %40 to i64, !dbg !467
  %shl37 = shl i64 1000000000, %sh_prom36, !dbg !467
  %cmp = icmp uge i64 %38, %shl37, !dbg !468
  br i1 %cmp, label %while.body, label %while.end, !dbg !462

while.body:                                       ; preds = %while.cond
  %41 = load ptr, ptr %tk.addr, align 8, !dbg !469
  %tkr_mono38 = getelementptr inbounds %struct.timekeeper, ptr %41, i32 0, i32 0, !dbg !471
  %shift39 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono38, i32 0, i32 4, !dbg !472
  %42 = load i32, ptr %shift39, align 4, !dbg !472
  %sh_prom40 = zext i32 %42 to i64, !dbg !473
  %shl41 = shl i64 1000000000, %sh_prom40, !dbg !473
  %43 = load i64, ptr %nsec, align 8, !dbg !474
  %sub = sub i64 %43, %shl41, !dbg !474
  store i64 %sub, ptr %nsec, align 8, !dbg !474
  %44 = load ptr, ptr %vdso_ts, align 8, !dbg !475
  %sec42 = getelementptr inbounds %struct.vdso_timestamp, ptr %44, i32 0, i32 0, !dbg !476
  %45 = load i64, ptr %sec42, align 8, !dbg !477
  %inc = add i64 %45, 1, !dbg !477
  store i64 %inc, ptr %sec42, align 8, !dbg !477
  br label %while.cond, !dbg !462, !llvm.loop !478

while.end:                                        ; preds = %while.cond
  %46 = load i64, ptr %nsec, align 8, !dbg !480
  %47 = load ptr, ptr %vdso_ts, align 8, !dbg !481
  %nsec43 = getelementptr inbounds %struct.vdso_timestamp, ptr %47, i32 0, i32 1, !dbg !482
  store i64 %46, ptr %nsec43, align 8, !dbg !483
  %48 = load ptr, ptr %vdso_ts, align 8, !dbg !484
  %sec44 = getelementptr inbounds %struct.vdso_timestamp, ptr %48, i32 0, i32 0, !dbg !485
  %49 = load i64, ptr %sec44, align 8, !dbg !485
  store i64 %49, ptr %sec, align 8, !dbg !486
  %50 = load ptr, ptr %tk.addr, align 8, !dbg !487
  %monotonic_to_boot = getelementptr inbounds %struct.timekeeper, ptr %50, i32 0, i32 13, !dbg !488
  %tv_sec45 = getelementptr inbounds %struct.timespec64, ptr %monotonic_to_boot, i32 0, i32 0, !dbg !489
  %51 = load i64, ptr %tv_sec45, align 8, !dbg !489
  %52 = load i64, ptr %sec, align 8, !dbg !490
  %add46 = add i64 %52, %51, !dbg !490
  store i64 %add46, ptr %sec, align 8, !dbg !490
  %53 = load ptr, ptr %tk.addr, align 8, !dbg !491
  %monotonic_to_boot47 = getelementptr inbounds %struct.timekeeper, ptr %53, i32 0, i32 13, !dbg !492
  %tv_nsec48 = getelementptr inbounds %struct.timespec64, ptr %monotonic_to_boot47, i32 0, i32 1, !dbg !493
  %54 = load i64, ptr %tv_nsec48, align 8, !dbg !493
  %55 = load ptr, ptr %tk.addr, align 8, !dbg !494
  %tkr_mono49 = getelementptr inbounds %struct.timekeeper, ptr %55, i32 0, i32 0, !dbg !495
  %shift50 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono49, i32 0, i32 4, !dbg !496
  %56 = load i32, ptr %shift50, align 4, !dbg !496
  %sh_prom51 = zext i32 %56 to i64, !dbg !497
  %shl52 = shl i64 %54, %sh_prom51, !dbg !497
  %57 = load i64, ptr %nsec, align 8, !dbg !498
  %add53 = add i64 %57, %shl52, !dbg !498
  store i64 %add53, ptr %nsec, align 8, !dbg !498
  %58 = load ptr, ptr %vdata.addr, align 8, !dbg !499
  %arrayidx54 = getelementptr %struct.vdso_data, ptr %58, i64 0, !dbg !499
  %59 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx54, i32 0, i32 6, !dbg !500
  %arrayidx55 = getelementptr [12 x %struct.vdso_timestamp], ptr %59, i64 0, i64 7, !dbg !499
  store ptr %arrayidx55, ptr %vdso_ts, align 8, !dbg !501
  %60 = load i64, ptr %sec, align 8, !dbg !502
  %61 = load ptr, ptr %vdso_ts, align 8, !dbg !503
  %sec56 = getelementptr inbounds %struct.vdso_timestamp, ptr %61, i32 0, i32 0, !dbg !504
  store i64 %60, ptr %sec56, align 8, !dbg !505
  br label %while.cond57, !dbg !506

while.cond57:                                     ; preds = %while.body63, %while.end
  %62 = load i64, ptr %nsec, align 8, !dbg !507
  %63 = load ptr, ptr %tk.addr, align 8, !dbg !508
  %tkr_mono58 = getelementptr inbounds %struct.timekeeper, ptr %63, i32 0, i32 0, !dbg !509
  %shift59 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono58, i32 0, i32 4, !dbg !510
  %64 = load i32, ptr %shift59, align 4, !dbg !510
  %sh_prom60 = zext i32 %64 to i64, !dbg !511
  %shl61 = shl i64 1000000000, %sh_prom60, !dbg !511
  %cmp62 = icmp uge i64 %62, %shl61, !dbg !512
  br i1 %cmp62, label %while.body63, label %while.end71, !dbg !506

while.body63:                                     ; preds = %while.cond57
  %65 = load ptr, ptr %tk.addr, align 8, !dbg !513
  %tkr_mono64 = getelementptr inbounds %struct.timekeeper, ptr %65, i32 0, i32 0, !dbg !515
  %shift65 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono64, i32 0, i32 4, !dbg !516
  %66 = load i32, ptr %shift65, align 4, !dbg !516
  %sh_prom66 = zext i32 %66 to i64, !dbg !517
  %shl67 = shl i64 1000000000, %sh_prom66, !dbg !517
  %67 = load i64, ptr %nsec, align 8, !dbg !518
  %sub68 = sub i64 %67, %shl67, !dbg !518
  store i64 %sub68, ptr %nsec, align 8, !dbg !518
  %68 = load ptr, ptr %vdso_ts, align 8, !dbg !519
  %sec69 = getelementptr inbounds %struct.vdso_timestamp, ptr %68, i32 0, i32 0, !dbg !520
  %69 = load i64, ptr %sec69, align 8, !dbg !521
  %inc70 = add i64 %69, 1, !dbg !521
  store i64 %inc70, ptr %sec69, align 8, !dbg !521
  br label %while.cond57, !dbg !506, !llvm.loop !522

while.end71:                                      ; preds = %while.cond57
  %70 = load i64, ptr %nsec, align 8, !dbg !524
  %71 = load ptr, ptr %vdso_ts, align 8, !dbg !525
  %nsec72 = getelementptr inbounds %struct.vdso_timestamp, ptr %71, i32 0, i32 1, !dbg !526
  store i64 %70, ptr %nsec72, align 8, !dbg !527
  %72 = load ptr, ptr %vdata.addr, align 8, !dbg !528
  %arrayidx73 = getelementptr %struct.vdso_data, ptr %72, i64 1, !dbg !528
  %73 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx73, i32 0, i32 6, !dbg !529
  %arrayidx74 = getelementptr [12 x %struct.vdso_timestamp], ptr %73, i64 0, i64 4, !dbg !528
  store ptr %arrayidx74, ptr %vdso_ts, align 8, !dbg !530
  %74 = load ptr, ptr %tk.addr, align 8, !dbg !531
  %raw_sec = getelementptr inbounds %struct.timekeeper, ptr %74, i32 0, i32 12, !dbg !532
  %75 = load i64, ptr %raw_sec, align 8, !dbg !532
  %76 = load ptr, ptr %vdso_ts, align 8, !dbg !533
  %sec75 = getelementptr inbounds %struct.vdso_timestamp, ptr %76, i32 0, i32 0, !dbg !534
  store i64 %75, ptr %sec75, align 8, !dbg !535
  %77 = load ptr, ptr %tk.addr, align 8, !dbg !536
  %tkr_raw76 = getelementptr inbounds %struct.timekeeper, ptr %77, i32 0, i32 1, !dbg !537
  %xtime_nsec77 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_raw76, i32 0, i32 5, !dbg !538
  %78 = load i64, ptr %xtime_nsec77, align 8, !dbg !538
  %79 = load ptr, ptr %vdso_ts, align 8, !dbg !539
  %nsec78 = getelementptr inbounds %struct.vdso_timestamp, ptr %79, i32 0, i32 1, !dbg !540
  store i64 %78, ptr %nsec78, align 8, !dbg !541
  %80 = load ptr, ptr %vdata.addr, align 8, !dbg !542
  %arrayidx79 = getelementptr %struct.vdso_data, ptr %80, i64 0, !dbg !542
  %81 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx79, i32 0, i32 6, !dbg !543
  %arrayidx80 = getelementptr [12 x %struct.vdso_timestamp], ptr %81, i64 0, i64 11, !dbg !542
  store ptr %arrayidx80, ptr %vdso_ts, align 8, !dbg !544
  %82 = load ptr, ptr %tk.addr, align 8, !dbg !545
  %xtime_sec81 = getelementptr inbounds %struct.timekeeper, ptr %82, i32 0, i32 2, !dbg !546
  %83 = load i64, ptr %xtime_sec81, align 8, !dbg !546
  %84 = load ptr, ptr %tk.addr, align 8, !dbg !547
  %tai_offset = getelementptr inbounds %struct.timekeeper, ptr %84, i32 0, i32 8, !dbg !548
  %85 = load i32, ptr %tai_offset, align 8, !dbg !548
  %conv = sext i32 %85 to i64, !dbg !549
  %add82 = add i64 %83, %conv, !dbg !550
  %86 = load ptr, ptr %vdso_ts, align 8, !dbg !551
  %sec83 = getelementptr inbounds %struct.vdso_timestamp, ptr %86, i32 0, i32 0, !dbg !552
  store i64 %add82, ptr %sec83, align 8, !dbg !553
  %87 = load ptr, ptr %tk.addr, align 8, !dbg !554
  %tkr_mono84 = getelementptr inbounds %struct.timekeeper, ptr %87, i32 0, i32 0, !dbg !555
  %xtime_nsec85 = getelementptr inbounds %struct.tk_read_base, ptr %tkr_mono84, i32 0, i32 5, !dbg !556
  %88 = load i64, ptr %xtime_nsec85, align 8, !dbg !556
  %89 = load ptr, ptr %vdso_ts, align 8, !dbg !557
  %nsec86 = getelementptr inbounds %struct.vdso_timestamp, ptr %89, i32 0, i32 1, !dbg !558
  store i64 %88, ptr %nsec86, align 8, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #6, !dbg !560
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsec) #6, !dbg !560
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdso_ts) #6, !dbg !560
  ret void, !dbg !560
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__arch_update_vsyscall(ptr noundef %vdata, ptr noundef %tk) #3 align 16 !dbg !561 {
entry:
  %vdata.addr = alloca ptr, align 8
  %tk.addr = alloca ptr, align 8
  store ptr %vdata, ptr %vdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdata.addr, metadata !564, metadata !DIExpression()), !dbg !566
  store ptr %tk, ptr %tk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tk.addr, metadata !565, metadata !DIExpression()), !dbg !567
  ret void, !dbg !568
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vdso_write_end(ptr noundef %vd) #3 align 16 !dbg !569 {
entry:
  %vd.addr = alloca ptr, align 8
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !571, metadata !DIExpression()), !dbg !572
  br label %do.body, !dbg !573

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !574

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !576

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !574, !srcloc !578
  br label %do.end2, !dbg !574

do.end2:                                          ; preds = %do.end
  br label %do.body3, !dbg !579

do.body3:                                         ; preds = %do.end2
  br label %do.body4, !dbg !580

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !582

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !580

do.body6:                                         ; preds = %do.end5
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !584
  %arrayidx = getelementptr %struct.vdso_data, ptr %0, i64 0, !dbg !584
  %seq = getelementptr inbounds %struct.vdso_data, ptr %arrayidx, i32 0, i32 0, !dbg !584
  %1 = load i32, ptr %seq, align 8, !dbg !584
  %add = add i32 %1, 1, !dbg !584
  %2 = load ptr, ptr %vd.addr, align 8, !dbg !584
  %arrayidx7 = getelementptr %struct.vdso_data, ptr %2, i64 0, !dbg !584
  %seq8 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx7, i32 0, i32 0, !dbg !584
  store volatile i32 %add, ptr %seq8, align 8, !dbg !584
  br label %do.end9, !dbg !584

do.end9:                                          ; preds = %do.body6
  br label %do.end10, !dbg !580

do.end10:                                         ; preds = %do.end9
  br label %do.body11, !dbg !586

do.body11:                                        ; preds = %do.end10
  br label %do.body12, !dbg !587

do.body12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !589

do.end13:                                         ; preds = %do.body12
  br label %do.body14, !dbg !587

do.body14:                                        ; preds = %do.end13
  %3 = load ptr, ptr %vd.addr, align 8, !dbg !591
  %arrayidx15 = getelementptr %struct.vdso_data, ptr %3, i64 1, !dbg !591
  %seq16 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx15, i32 0, i32 0, !dbg !591
  %4 = load i32, ptr %seq16, align 8, !dbg !591
  %add17 = add i32 %4, 1, !dbg !591
  %5 = load ptr, ptr %vd.addr, align 8, !dbg !591
  %arrayidx18 = getelementptr %struct.vdso_data, ptr %5, i64 1, !dbg !591
  %seq19 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx18, i32 0, i32 0, !dbg !591
  store volatile i32 %add17, ptr %seq19, align 8, !dbg !591
  br label %do.end20, !dbg !591

do.end20:                                         ; preds = %do.body14
  br label %do.end21, !dbg !587

do.end21:                                         ; preds = %do.end20
  ret void, !dbg !593
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__arch_sync_vdso_data(ptr noundef %vdata) #3 align 16 !dbg !594 {
entry:
  %vdata.addr = alloca ptr, align 8
  store ptr %vdata, ptr %vdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdata.addr, metadata !596, metadata !DIExpression()), !dbg !597
  ret void, !dbg !598
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @update_vsyscall_tz() #0 align 16 !dbg !599 {
entry:
  %vdata = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdata) #6, !dbg !604
  call void @llvm.dbg.declare(metadata ptr %vdata, metadata !603, metadata !DIExpression()), !dbg !605
  %call = call ptr @__x86_get_k_vdso_data() #7, !dbg !606
  store ptr %call, ptr %vdata, align 8, !dbg !605
  %0 = load i32, ptr @sys_tz, align 4, !dbg !607
  %1 = load ptr, ptr %vdata, align 8, !dbg !608
  %arrayidx = getelementptr %struct.vdso_data, ptr %1, i64 0, !dbg !608
  %tz_minuteswest = getelementptr inbounds %struct.vdso_data, ptr %arrayidx, i32 0, i32 7, !dbg !609
  store i32 %0, ptr %tz_minuteswest, align 8, !dbg !610
  %2 = load i32, ptr getelementptr inbounds (%struct.timezone, ptr @sys_tz, i32 0, i32 1), align 4, !dbg !611
  %3 = load ptr, ptr %vdata, align 8, !dbg !612
  %arrayidx1 = getelementptr %struct.vdso_data, ptr %3, i64 0, !dbg !612
  %tz_dsttime = getelementptr inbounds %struct.vdso_data, ptr %arrayidx1, i32 0, i32 8, !dbg !613
  store i32 %2, ptr %tz_dsttime, align 4, !dbg !614
  %4 = load ptr, ptr %vdata, align 8, !dbg !615
  call void @__arch_sync_vdso_data(ptr noundef %4) #7, !dbg !616
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdata) #6, !dbg !617
  ret void, !dbg !617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @vdso_update_begin() #0 align 16 !dbg !618 {
entry:
  %vdata = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdata) #6, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %vdata, metadata !622, metadata !DIExpression()), !dbg !629
  %call = call ptr @__x86_get_k_vdso_data() #7, !dbg !630
  store ptr %call, ptr %vdata, align 8, !dbg !629
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #6, !dbg !631
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !623, metadata !DIExpression()), !dbg !632
  br label %do.body, !dbg !633

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #6, !dbg !634
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !624, metadata !DIExpression()), !dbg !634
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #6, !dbg !634
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !627, metadata !DIExpression()), !dbg !634
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !634
  %conv = zext i1 %cmp to i32, !dbg !634
  store i32 1, ptr %tmp, align 4, !dbg !634
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #6, !dbg !635
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #6, !dbg !635
  %0 = load i32, ptr %tmp, align 4, !dbg !634
  %call1 = call i64 @_raw_spin_lock_irqsave(ptr noundef @timekeeper_lock) #7, !dbg !635
  store i64 %call1, ptr %flags, align 8, !dbg !635
  br label %do.cond, !dbg !635

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !635

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %vdata, align 8, !dbg !636
  call void @vdso_write_begin(ptr noundef %1) #7, !dbg !637
  %2 = load i64, ptr %flags, align 8, !dbg !638
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #6, !dbg !639
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdata) #6, !dbg !639
  ret i64 %2, !dbg !640
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !641 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @vdso_update_end(i64 noundef %flags) #0 align 16 !dbg !676 {
entry:
  %flags.addr = alloca i64, align 8
  %vdata = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !680, metadata !DIExpression()), !dbg !686
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdata) #6, !dbg !687
  call void @llvm.dbg.declare(metadata ptr %vdata, metadata !681, metadata !DIExpression()), !dbg !688
  %call = call ptr @__x86_get_k_vdso_data() #7, !dbg !689
  store ptr %call, ptr %vdata, align 8, !dbg !688
  %0 = load ptr, ptr %vdata, align 8, !dbg !690
  call void @vdso_write_end(ptr noundef %0) #7, !dbg !691
  %1 = load ptr, ptr %vdata, align 8, !dbg !692
  call void @__arch_sync_vdso_data(ptr noundef %1) #7, !dbg !693
  br label %do.body, !dbg !694

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #6, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !682, metadata !DIExpression()), !dbg !695
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #6, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !685, metadata !DIExpression()), !dbg !695
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !695
  %conv = zext i1 %cmp to i32, !dbg !695
  store i32 1, ptr %tmp, align 4, !dbg !695
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #6, !dbg !696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #6, !dbg !696
  %2 = load i32, ptr %tmp, align 4, !dbg !695
  %3 = load i64, ptr %flags.addr, align 8, !dbg !696
  call void @_raw_spin_unlock_irqrestore(ptr noundef @timekeeper_lock, i64 noundef %3) #7, !dbg !696
  br label %do.cond, !dbg !696

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !696

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdata) #6, !dbg !697
  ret void, !dbg !697
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !698 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_vdso_data", scope: !2, file: !35, line: 13, type: !36, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.vsyscall.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/vsyscall\22 -D KBUILD_BASENAME=\22vsyscall\22 -D KBUILD_MODNAME=\22vsyscall\22 -D __KBUILD_MODNAME=kmod_vsyscall -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/vsyscall.ll kernel/time/vsyscall.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !34, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/time/vsyscall.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e03f8eccbee9fe2bc971f12a5f5d343")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clocksource_ids", file: !6, line: 6, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/clocksource_ids.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "774f19ce120af1af8c42b816fa8c1ff1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "CSID_GENERIC", value: 0)
!10 = !DIEnumerator(name: "CSID_ARM_ARCH_COUNTER", value: 1)
!11 = !DIEnumerator(name: "CSID_MAX", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !13, line: 11, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5c94bac8b1931d6fab42a415ede12b1")
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0)
!16 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1)
!17 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2)
!18 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3)
!19 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4)
!20 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647)
!21 = !{!22, !28, !31}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !30)
!30 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !25, line: 22, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !27, line: 30, baseType: !33)
!33 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!34 = !{!0}
!35 = !DIFile(filename: "./arch/x86/include/asm/vdso/vsyscall.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a2ccf6755923e6f54a69cf80962f11ab")
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 3840, elements: !74)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_data", file: !38, line: 90, size: 1920, elements: !39)
!38 = !DIFile(filename: "./include/vdso/datapage.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd561b8fc8d778c148cc9e4ad5fe7dc5")
!39 = !{!40, !41, !45, !46, !47, !48, !49, !67, !68, !69, !70, !71}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !37, file: !38, line: 91, baseType: !24, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "clock_mode", scope: !37, file: !38, line: 93, baseType: !42, size: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !25, line: 20, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !27, line: 26, baseType: !44)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !37, file: !38, line: 94, baseType: !28, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !37, file: !38, line: 95, baseType: !28, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !37, file: !38, line: 96, baseType: !24, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !37, file: !38, line: 97, baseType: !24, size: 32, offset: 224)
!49 = !DIDerivedType(tag: DW_TAG_member, scope: !37, file: !38, line: 99, baseType: !50, size: 1536, offset: 256)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !37, file: !38, line: 99, size: 1536, elements: !51)
!51 = !{!52, !60}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "basetime", scope: !50, file: !38, line: 100, baseType: !53, size: 1536)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1536, elements: !58)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_timestamp", file: !38, line: 54, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !54, file: !38, line: 55, baseType: !28, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !54, file: !38, line: 56, baseType: !28, size: 64, offset: 64)
!58 = !{!59}
!59 = !DISubrange(count: 12)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !50, file: !38, line: 101, baseType: !61, size: 1536)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 1536, elements: !58)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timens_offset", file: !63, line: 7, size: 128, elements: !64)
!63 = !DIFile(filename: "./include/vdso/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba8fbefc3ceb6aad90a49911c36b3121")
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !62, file: !63, line: 8, baseType: !31, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !62, file: !63, line: 9, baseType: !28, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !37, file: !38, line: 104, baseType: !42, size: 32, offset: 1792)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !37, file: !38, line: 105, baseType: !42, size: 32, offset: 1824)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_res", scope: !37, file: !38, line: 106, baseType: !24, size: 32, offset: 1856)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !37, file: !38, line: 107, baseType: !24, size: 32, offset: 1888)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !37, file: !38, line: 109, baseType: !72, offset: 1920)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_vdso_data", file: !38, line: 25, elements: !73)
!73 = !{}
!74 = !{!75}
!75 = !DISubrange(count: 2)
!76 = !{i32 7, !"Dwarf Version", i32 5}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 8, !"cf-protection-branch", i32 1}
!80 = !{i32 4, !"function_return_thunk_extern", i32 1}
!81 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!82 = !{i32 1, !"Code Model", i32 2}
!83 = !{i32 1, !"override-stack-alignment", i32 8}
!84 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!85 = distinct !DISubprogram(name: "update_vsyscall", scope: !3, file: !3, line: 72, type: !86, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timekeeper", file: !90, line: 92, size: 2240, elements: !91)
!90 = !DIFile(filename: "./include/linux/timekeeper_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13fa407d0d4785f5b1e01b5d8d4ed218")
!91 = !{!92, !155, !156, !157, !158, !166, !167, !168, !169, !170, !171, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "tkr_mono", scope: !89, file: !90, line: 93, baseType: !93, size: 448)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tk_read_base", file: !90, line: 34, size: 448, elements: !94)
!94 = !{!95, !146, !147, !148, !149, !150, !151, !154}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !93, file: !90, line: 35, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clocksource", file: !98, line: 96, size: 1472, elements: !99)
!98 = !DIFile(filename: "./include/linux/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f664f6d0ed93221709a7301012f8ae1")
!99 = !{!100, !104, !105, !106, !107, !108, !109, !110, !111, !115, !122, !123, !124, !125, !127, !131, !135, !136, !137, !138, !139, !140, !141, !142}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !97, file: !98, line: 97, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!28, !96}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !97, file: !98, line: 98, baseType: !28, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !97, file: !98, line: 99, baseType: !24, size: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !97, file: !98, line: 100, baseType: !24, size: 32, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "max_idle_ns", scope: !97, file: !98, line: 101, baseType: !28, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "maxadj", scope: !97, file: !98, line: 102, baseType: !24, size: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "uncertainty_margin", scope: !97, file: !98, line: 103, baseType: !24, size: 32, offset: 288)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "max_cycles", scope: !97, file: !98, line: 107, baseType: !28, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !98, line: 108, baseType: !112, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !97, file: !98, line: 109, baseType: !116, size: 128, offset: 448)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !117, line: 190, size: 128, elements: !118)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !117, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !117, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !97, file: !98, line: 110, baseType: !44, size: 32, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !97, file: !98, line: 111, baseType: !5, size: 32, offset: 608)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_clock_mode", scope: !97, file: !98, line: 112, baseType: !12, size: 32, offset: 640)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !98, line: 113, baseType: !126, size: 64, offset: 704)
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !97, file: !98, line: 115, baseType: !128, size: 64, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!44, !96}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !97, file: !98, line: 116, baseType: !132, size: 64, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !96}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !97, file: !98, line: 117, baseType: !132, size: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !97, file: !98, line: 118, baseType: !132, size: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mark_unstable", scope: !97, file: !98, line: 119, baseType: !132, size: 64, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tick_stable", scope: !97, file: !98, line: 120, baseType: !132, size: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "wd_list", scope: !97, file: !98, line: 125, baseType: !116, size: 128, offset: 1152)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "cs_last", scope: !97, file: !98, line: 126, baseType: !28, size: 64, offset: 1280)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "wd_last", scope: !97, file: !98, line: 127, baseType: !28, size: 64, offset: 1344)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !97, file: !98, line: 129, baseType: !143, size: 64, offset: 1408)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !145, line: 103, flags: DIFlagFwdDecl)
!145 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !93, file: !90, line: 36, baseType: !28, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !93, file: !90, line: 37, baseType: !28, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !93, file: !90, line: 38, baseType: !24, size: 32, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !93, file: !90, line: 39, baseType: !24, size: 32, offset: 224)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "xtime_nsec", scope: !93, file: !90, line: 40, baseType: !28, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !93, file: !90, line: 41, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !153, line: 29, baseType: !31)
!153 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "base_real", scope: !93, file: !90, line: 42, baseType: !28, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tkr_raw", scope: !89, file: !90, line: 94, baseType: !93, size: 448, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "xtime_sec", scope: !89, file: !90, line: 95, baseType: !28, size: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ktime_sec", scope: !89, file: !90, line: 96, baseType: !126, size: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "wall_to_monotonic", scope: !89, file: !90, line: 97, baseType: !159, size: 128, offset: 1024)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !160, line: 13, size: 128, elements: !161)
!160 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !159, file: !160, line: 14, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !160, line: 8, baseType: !32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !159, file: !160, line: 15, baseType: !165, size: 64, offset: 64)
!165 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "offs_real", scope: !89, file: !90, line: 98, baseType: !152, size: 64, offset: 1152)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "offs_boot", scope: !89, file: !90, line: 99, baseType: !152, size: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "offs_tai", scope: !89, file: !90, line: 100, baseType: !152, size: 64, offset: 1280)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tai_offset", scope: !89, file: !90, line: 101, baseType: !42, size: 32, offset: 1344)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !89, file: !90, line: 102, baseType: !7, size: 32, offset: 1376)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "cs_was_changed_seq", scope: !89, file: !90, line: 103, baseType: !172, size: 8, offset: 1408)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !174)
!174 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next_leap_ktime", scope: !89, file: !90, line: 104, baseType: !152, size: 64, offset: 1472)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "raw_sec", scope: !89, file: !90, line: 105, baseType: !28, size: 64, offset: 1536)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "monotonic_to_boot", scope: !89, file: !90, line: 106, baseType: !159, size: 128, offset: 1600)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_interval", scope: !89, file: !90, line: 109, baseType: !28, size: 64, offset: 1728)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "xtime_interval", scope: !89, file: !90, line: 110, baseType: !28, size: 64, offset: 1792)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "xtime_remainder", scope: !89, file: !90, line: 111, baseType: !31, size: 64, offset: 1856)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "raw_interval", scope: !89, file: !90, line: 112, baseType: !28, size: 64, offset: 1920)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ntp_tick", scope: !89, file: !90, line: 119, baseType: !28, size: 64, offset: 1984)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ntp_error", scope: !89, file: !90, line: 122, baseType: !31, size: 64, offset: 2048)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ntp_error_shift", scope: !89, file: !90, line: 123, baseType: !24, size: 32, offset: 2112)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ntp_err_mult", scope: !89, file: !90, line: 124, baseType: !24, size: 32, offset: 2144)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "skip_second_overflow", scope: !89, file: !90, line: 126, baseType: !24, size: 32, offset: 2176)
!187 = !{!188, !189, !191, !193, !194}
!188 = !DILocalVariable(name: "tk", arg: 1, scope: !85, file: !3, line: 72, type: !88)
!189 = !DILocalVariable(name: "vdata", scope: !85, file: !3, line: 74, type: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!191 = !DILocalVariable(name: "vdso_ts", scope: !85, file: !3, line: 75, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!193 = !DILocalVariable(name: "clock_mode", scope: !85, file: !3, line: 76, type: !42)
!194 = !DILocalVariable(name: "nsec", scope: !85, file: !3, line: 77, type: !28)
!195 = !DILocation(line: 72, column: 41, scope: !85)
!196 = !DILocation(line: 74, column: 2, scope: !85)
!197 = !DILocation(line: 74, column: 20, scope: !85)
!198 = !DILocation(line: 74, column: 28, scope: !85)
!199 = !DILocation(line: 75, column: 2, scope: !85)
!200 = !DILocation(line: 75, column: 25, scope: !85)
!201 = !DILocation(line: 76, column: 2, scope: !85)
!202 = !DILocation(line: 76, column: 6, scope: !85)
!203 = !DILocation(line: 77, column: 2, scope: !85)
!204 = !DILocation(line: 77, column: 6, scope: !85)
!205 = !DILocation(line: 80, column: 19, scope: !85)
!206 = !DILocation(line: 80, column: 2, scope: !85)
!207 = !DILocation(line: 82, column: 15, scope: !85)
!208 = !DILocation(line: 82, column: 19, scope: !85)
!209 = !DILocation(line: 82, column: 28, scope: !85)
!210 = !DILocation(line: 82, column: 35, scope: !85)
!211 = !DILocation(line: 82, column: 13, scope: !85)
!212 = !DILocation(line: 83, column: 37, scope: !85)
!213 = !DILocation(line: 83, column: 2, scope: !85)
!214 = !DILocation(line: 83, column: 24, scope: !85)
!215 = !DILocation(line: 83, column: 35, scope: !85)
!216 = !DILocation(line: 84, column: 30, scope: !85)
!217 = !DILocation(line: 84, column: 2, scope: !85)
!218 = !DILocation(line: 84, column: 16, scope: !85)
!219 = !DILocation(line: 84, column: 28, scope: !85)
!220 = !DILocation(line: 87, column: 14, scope: !85)
!221 = !DILocation(line: 87, column: 36, scope: !85)
!222 = !DILocation(line: 87, column: 11, scope: !85)
!223 = !DILocation(line: 88, column: 17, scope: !85)
!224 = !DILocation(line: 88, column: 21, scope: !85)
!225 = !DILocation(line: 88, column: 2, scope: !85)
!226 = !DILocation(line: 88, column: 11, scope: !85)
!227 = !DILocation(line: 88, column: 15, scope: !85)
!228 = !DILocation(line: 89, column: 18, scope: !85)
!229 = !DILocation(line: 89, column: 22, scope: !85)
!230 = !DILocation(line: 89, column: 31, scope: !85)
!231 = !DILocation(line: 89, column: 2, scope: !85)
!232 = !DILocation(line: 89, column: 11, scope: !85)
!233 = !DILocation(line: 89, column: 16, scope: !85)
!234 = !DILocation(line: 92, column: 14, scope: !85)
!235 = !DILocation(line: 92, column: 36, scope: !85)
!236 = !DILocation(line: 92, column: 11, scope: !85)
!237 = !DILocation(line: 93, column: 17, scope: !85)
!238 = !DILocation(line: 93, column: 21, scope: !85)
!239 = !DILocation(line: 93, column: 2, scope: !85)
!240 = !DILocation(line: 93, column: 11, scope: !85)
!241 = !DILocation(line: 93, column: 15, scope: !85)
!242 = !DILocation(line: 94, column: 18, scope: !85)
!243 = !DILocation(line: 94, column: 22, scope: !85)
!244 = !DILocation(line: 94, column: 31, scope: !85)
!245 = !DILocation(line: 94, column: 45, scope: !85)
!246 = !DILocation(line: 94, column: 49, scope: !85)
!247 = !DILocation(line: 94, column: 58, scope: !85)
!248 = !DILocation(line: 94, column: 42, scope: !85)
!249 = !DILocation(line: 94, column: 2, scope: !85)
!250 = !DILocation(line: 94, column: 11, scope: !85)
!251 = !DILocation(line: 94, column: 16, scope: !85)
!252 = !DILocation(line: 97, column: 14, scope: !85)
!253 = !DILocation(line: 97, column: 36, scope: !85)
!254 = !DILocation(line: 97, column: 11, scope: !85)
!255 = !DILocation(line: 98, column: 17, scope: !85)
!256 = !DILocation(line: 98, column: 21, scope: !85)
!257 = !DILocation(line: 98, column: 33, scope: !85)
!258 = !DILocation(line: 98, column: 37, scope: !85)
!259 = !DILocation(line: 98, column: 55, scope: !85)
!260 = !DILocation(line: 98, column: 31, scope: !85)
!261 = !DILocation(line: 98, column: 2, scope: !85)
!262 = !DILocation(line: 98, column: 11, scope: !85)
!263 = !DILocation(line: 98, column: 15, scope: !85)
!264 = !DILocation(line: 99, column: 10, scope: !85)
!265 = !DILocation(line: 99, column: 14, scope: !85)
!266 = !DILocation(line: 99, column: 23, scope: !85)
!267 = !DILocation(line: 99, column: 37, scope: !85)
!268 = !DILocation(line: 99, column: 41, scope: !85)
!269 = !DILocation(line: 99, column: 50, scope: !85)
!270 = !DILocation(line: 99, column: 34, scope: !85)
!271 = !DILocation(line: 99, column: 8, scope: !85)
!272 = !DILocation(line: 100, column: 10, scope: !85)
!273 = !DILocation(line: 100, column: 17, scope: !85)
!274 = !DILocation(line: 100, column: 21, scope: !85)
!275 = !DILocation(line: 100, column: 39, scope: !85)
!276 = !DILocation(line: 100, column: 15, scope: !85)
!277 = !DILocation(line: 100, column: 8, scope: !85)
!278 = !DILocation(line: 101, column: 37, scope: !85)
!279 = !DILocation(line: 101, column: 58, scope: !85)
!280 = !DILocation(line: 101, column: 67, scope: !85)
!281 = !DILocation(line: 101, column: 18, scope: !85)
!282 = !DILocation(line: 101, column: 2, scope: !85)
!283 = !DILocation(line: 101, column: 11, scope: !85)
!284 = !DILocation(line: 101, column: 15, scope: !85)
!285 = !DILocation(line: 107, column: 2, scope: !85)
!286 = !DILocation(line: 107, column: 2, scope: !287)
!287 = distinct !DILexicalBlock(scope: !85, file: !3, line: 107, column: 2)
!288 = !DILocation(line: 107, column: 2, scope: !289)
!289 = distinct !DILexicalBlock(scope: !287, file: !3, line: 107, column: 2)
!290 = !DILocation(line: 107, column: 2, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !3, line: 107, column: 2)
!292 = !DILocation(line: 113, column: 6, scope: !293)
!293 = distinct !DILexicalBlock(scope: !85, file: !3, line: 113, column: 6)
!294 = !DILocation(line: 113, column: 17, scope: !293)
!295 = !DILocation(line: 113, column: 6, scope: !85)
!296 = !DILocation(line: 114, column: 20, scope: !293)
!297 = !DILocation(line: 114, column: 27, scope: !293)
!298 = !DILocation(line: 114, column: 3, scope: !293)
!299 = !DILocation(line: 116, column: 25, scope: !85)
!300 = !DILocation(line: 116, column: 32, scope: !85)
!301 = !DILocation(line: 116, column: 2, scope: !85)
!302 = !DILocation(line: 118, column: 17, scope: !85)
!303 = !DILocation(line: 118, column: 2, scope: !85)
!304 = !DILocation(line: 120, column: 24, scope: !85)
!305 = !DILocation(line: 120, column: 2, scope: !85)
!306 = !DILocation(line: 121, column: 1, scope: !85)
!307 = distinct !DISubprogram(name: "__x86_get_k_vdso_data", scope: !35, file: !35, line: 18, type: !308, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!308 = !DISubroutineType(types: !309)
!309 = !{!190}
!310 = !DILocation(line: 20, column: 2, scope: !307)
!311 = distinct !DISubprogram(name: "vdso_write_begin", scope: !312, file: !312, line: 30, type: !313, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !315)
!312 = !DIFile(filename: "./include/vdso/helpers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787bbf2acf68ad352252cd20c7d4bd95")
!313 = !DISubroutineType(types: !314)
!314 = !{null, !190}
!315 = !{!316}
!316 = !DILocalVariable(name: "vd", arg: 1, scope: !311, file: !312, line: 30, type: !190)
!317 = !DILocation(line: 30, column: 64, scope: !311)
!318 = !DILocation(line: 37, column: 2, scope: !311)
!319 = !DILocation(line: 37, column: 2, scope: !320)
!320 = distinct !DILexicalBlock(scope: !311, file: !312, line: 37, column: 2)
!321 = !DILocation(line: 37, column: 2, scope: !322)
!322 = distinct !DILexicalBlock(scope: !320, file: !312, line: 37, column: 2)
!323 = !DILocation(line: 37, column: 2, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !312, line: 37, column: 2)
!325 = !DILocation(line: 38, column: 2, scope: !311)
!326 = !DILocation(line: 38, column: 2, scope: !327)
!327 = distinct !DILexicalBlock(scope: !311, file: !312, line: 38, column: 2)
!328 = !DILocation(line: 38, column: 2, scope: !329)
!329 = distinct !DILexicalBlock(scope: !327, file: !312, line: 38, column: 2)
!330 = !DILocation(line: 38, column: 2, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !312, line: 38, column: 2)
!332 = !DILocation(line: 39, column: 2, scope: !311)
!333 = !DILocation(line: 39, column: 2, scope: !334)
!334 = distinct !DILexicalBlock(scope: !311, file: !312, line: 39, column: 2)
!335 = !DILocation(line: 39, column: 2, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !312, line: 39, column: 2)
!337 = !{i64 2152358605}
!338 = !DILocation(line: 40, column: 1, scope: !311)
!339 = distinct !DISubprogram(name: "__iter_div_u64_rem", scope: !340, file: !340, line: 6, type: !341, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!340 = !DIFile(filename: "./include/vdso/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c73242fa3ce9a71c3ee6785d9a4c12ba")
!341 = !DISubroutineType(types: !342)
!342 = !{!24, !28, !24, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!344 = !{!345, !346, !347, !348}
!345 = !DILocalVariable(name: "dividend", arg: 1, scope: !339, file: !340, line: 6, type: !28)
!346 = !DILocalVariable(name: "divisor", arg: 2, scope: !339, file: !340, line: 6, type: !24)
!347 = !DILocalVariable(name: "remainder", arg: 3, scope: !339, file: !340, line: 6, type: !343)
!348 = !DILocalVariable(name: "ret", scope: !339, file: !340, line: 8, type: !24)
!349 = !DILocation(line: 6, column: 24, scope: !339)
!350 = !DILocation(line: 6, column: 38, scope: !339)
!351 = !DILocation(line: 6, column: 52, scope: !339)
!352 = !DILocation(line: 8, column: 2, scope: !339)
!353 = !DILocation(line: 8, column: 6, scope: !339)
!354 = !DILocation(line: 10, column: 2, scope: !339)
!355 = !DILocation(line: 10, column: 9, scope: !339)
!356 = !DILocation(line: 10, column: 21, scope: !339)
!357 = !DILocation(line: 10, column: 18, scope: !339)
!358 = !DILocation(line: 13, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !339, file: !340, line: 10, column: 30)
!360 = !{i64 263736}
!361 = !DILocation(line: 15, column: 15, scope: !359)
!362 = !DILocation(line: 15, column: 12, scope: !359)
!363 = !DILocation(line: 16, column: 6, scope: !359)
!364 = distinct !{!364, !354, !365, !366, !367}
!365 = !DILocation(line: 17, column: 2, scope: !339)
!366 = !{!"llvm.loop.mustprogress"}
!367 = !{!"llvm.loop.unroll.disable"}
!368 = !DILocation(line: 19, column: 15, scope: !339)
!369 = !DILocation(line: 19, column: 3, scope: !339)
!370 = !DILocation(line: 19, column: 13, scope: !339)
!371 = !DILocation(line: 21, column: 9, scope: !339)
!372 = !DILocation(line: 22, column: 1, scope: !339)
!373 = !DILocation(line: 21, column: 2, scope: !339)
!374 = distinct !DISubprogram(name: "update_vdso_data", scope: !3, file: !3, line: 18, type: !375, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !190, !88}
!377 = !{!378, !379, !380, !381, !382}
!378 = !DILocalVariable(name: "vdata", arg: 1, scope: !374, file: !3, line: 18, type: !190)
!379 = !DILocalVariable(name: "tk", arg: 2, scope: !374, file: !3, line: 19, type: !88)
!380 = !DILocalVariable(name: "vdso_ts", scope: !374, file: !3, line: 21, type: !192)
!381 = !DILocalVariable(name: "nsec", scope: !374, file: !3, line: 22, type: !28)
!382 = !DILocalVariable(name: "sec", scope: !374, file: !3, line: 22, type: !28)
!383 = !DILocation(line: 18, column: 55, scope: !374)
!384 = !DILocation(line: 19, column: 28, scope: !374)
!385 = !DILocation(line: 21, column: 2, scope: !374)
!386 = !DILocation(line: 21, column: 25, scope: !374)
!387 = !DILocation(line: 22, column: 2, scope: !374)
!388 = !DILocation(line: 22, column: 6, scope: !374)
!389 = !DILocation(line: 22, column: 12, scope: !374)
!390 = !DILocation(line: 24, column: 37, scope: !374)
!391 = !DILocation(line: 24, column: 41, scope: !374)
!392 = !DILocation(line: 24, column: 50, scope: !374)
!393 = !DILocation(line: 24, column: 2, scope: !374)
!394 = !DILocation(line: 24, column: 24, scope: !374)
!395 = !DILocation(line: 24, column: 35, scope: !374)
!396 = !DILocation(line: 25, column: 32, scope: !374)
!397 = !DILocation(line: 25, column: 36, scope: !374)
!398 = !DILocation(line: 25, column: 45, scope: !374)
!399 = !DILocation(line: 25, column: 2, scope: !374)
!400 = !DILocation(line: 25, column: 24, scope: !374)
!401 = !DILocation(line: 25, column: 30, scope: !374)
!402 = !DILocation(line: 26, column: 32, scope: !374)
!403 = !DILocation(line: 26, column: 36, scope: !374)
!404 = !DILocation(line: 26, column: 45, scope: !374)
!405 = !DILocation(line: 26, column: 2, scope: !374)
!406 = !DILocation(line: 26, column: 24, scope: !374)
!407 = !DILocation(line: 26, column: 30, scope: !374)
!408 = !DILocation(line: 27, column: 33, scope: !374)
!409 = !DILocation(line: 27, column: 37, scope: !374)
!410 = !DILocation(line: 27, column: 46, scope: !374)
!411 = !DILocation(line: 27, column: 2, scope: !374)
!412 = !DILocation(line: 27, column: 24, scope: !374)
!413 = !DILocation(line: 27, column: 31, scope: !374)
!414 = !DILocation(line: 28, column: 30, scope: !374)
!415 = !DILocation(line: 28, column: 34, scope: !374)
!416 = !DILocation(line: 28, column: 42, scope: !374)
!417 = !DILocation(line: 28, column: 2, scope: !374)
!418 = !DILocation(line: 28, column: 16, scope: !374)
!419 = !DILocation(line: 28, column: 28, scope: !374)
!420 = !DILocation(line: 29, column: 25, scope: !374)
!421 = !DILocation(line: 29, column: 29, scope: !374)
!422 = !DILocation(line: 29, column: 37, scope: !374)
!423 = !DILocation(line: 29, column: 2, scope: !374)
!424 = !DILocation(line: 29, column: 16, scope: !374)
!425 = !DILocation(line: 29, column: 23, scope: !374)
!426 = !DILocation(line: 30, column: 25, scope: !374)
!427 = !DILocation(line: 30, column: 29, scope: !374)
!428 = !DILocation(line: 30, column: 37, scope: !374)
!429 = !DILocation(line: 30, column: 2, scope: !374)
!430 = !DILocation(line: 30, column: 16, scope: !374)
!431 = !DILocation(line: 30, column: 23, scope: !374)
!432 = !DILocation(line: 31, column: 26, scope: !374)
!433 = !DILocation(line: 31, column: 30, scope: !374)
!434 = !DILocation(line: 31, column: 38, scope: !374)
!435 = !DILocation(line: 31, column: 2, scope: !374)
!436 = !DILocation(line: 31, column: 16, scope: !374)
!437 = !DILocation(line: 31, column: 24, scope: !374)
!438 = !DILocation(line: 34, column: 14, scope: !374)
!439 = !DILocation(line: 34, column: 36, scope: !374)
!440 = !DILocation(line: 34, column: 11, scope: !374)
!441 = !DILocation(line: 35, column: 17, scope: !374)
!442 = !DILocation(line: 35, column: 21, scope: !374)
!443 = !DILocation(line: 35, column: 33, scope: !374)
!444 = !DILocation(line: 35, column: 37, scope: !374)
!445 = !DILocation(line: 35, column: 55, scope: !374)
!446 = !DILocation(line: 35, column: 31, scope: !374)
!447 = !DILocation(line: 35, column: 2, scope: !374)
!448 = !DILocation(line: 35, column: 11, scope: !374)
!449 = !DILocation(line: 35, column: 15, scope: !374)
!450 = !DILocation(line: 37, column: 9, scope: !374)
!451 = !DILocation(line: 37, column: 13, scope: !374)
!452 = !DILocation(line: 37, column: 22, scope: !374)
!453 = !DILocation(line: 37, column: 7, scope: !374)
!454 = !DILocation(line: 38, column: 16, scope: !374)
!455 = !DILocation(line: 38, column: 20, scope: !374)
!456 = !DILocation(line: 38, column: 38, scope: !374)
!457 = !DILocation(line: 38, column: 49, scope: !374)
!458 = !DILocation(line: 38, column: 53, scope: !374)
!459 = !DILocation(line: 38, column: 62, scope: !374)
!460 = !DILocation(line: 38, column: 46, scope: !374)
!461 = !DILocation(line: 38, column: 7, scope: !374)
!462 = !DILocation(line: 39, column: 2, scope: !374)
!463 = !DILocation(line: 39, column: 9, scope: !374)
!464 = !DILocation(line: 39, column: 41, scope: !374)
!465 = !DILocation(line: 39, column: 45, scope: !374)
!466 = !DILocation(line: 39, column: 54, scope: !374)
!467 = !DILocation(line: 39, column: 38, scope: !374)
!468 = !DILocation(line: 39, column: 14, scope: !374)
!469 = !DILocation(line: 40, column: 35, scope: !470)
!470 = distinct !DILexicalBlock(scope: !374, file: !3, line: 39, column: 62)
!471 = !DILocation(line: 40, column: 39, scope: !470)
!472 = !DILocation(line: 40, column: 48, scope: !470)
!473 = !DILocation(line: 40, column: 32, scope: !470)
!474 = !DILocation(line: 40, column: 8, scope: !470)
!475 = !DILocation(line: 41, column: 3, scope: !470)
!476 = !DILocation(line: 41, column: 12, scope: !470)
!477 = !DILocation(line: 41, column: 15, scope: !470)
!478 = distinct !{!478, !462, !479, !366, !367}
!479 = !DILocation(line: 42, column: 2, scope: !374)
!480 = !DILocation(line: 43, column: 18, scope: !374)
!481 = !DILocation(line: 43, column: 2, scope: !374)
!482 = !DILocation(line: 43, column: 11, scope: !374)
!483 = !DILocation(line: 43, column: 16, scope: !374)
!484 = !DILocation(line: 46, column: 8, scope: !374)
!485 = !DILocation(line: 46, column: 17, scope: !374)
!486 = !DILocation(line: 46, column: 6, scope: !374)
!487 = !DILocation(line: 48, column: 9, scope: !374)
!488 = !DILocation(line: 48, column: 13, scope: !374)
!489 = !DILocation(line: 48, column: 31, scope: !374)
!490 = !DILocation(line: 48, column: 6, scope: !374)
!491 = !DILocation(line: 49, column: 15, scope: !374)
!492 = !DILocation(line: 49, column: 19, scope: !374)
!493 = !DILocation(line: 49, column: 37, scope: !374)
!494 = !DILocation(line: 49, column: 48, scope: !374)
!495 = !DILocation(line: 49, column: 52, scope: !374)
!496 = !DILocation(line: 49, column: 61, scope: !374)
!497 = !DILocation(line: 49, column: 45, scope: !374)
!498 = !DILocation(line: 49, column: 7, scope: !374)
!499 = !DILocation(line: 52, column: 14, scope: !374)
!500 = !DILocation(line: 52, column: 36, scope: !374)
!501 = !DILocation(line: 52, column: 11, scope: !374)
!502 = !DILocation(line: 53, column: 17, scope: !374)
!503 = !DILocation(line: 53, column: 2, scope: !374)
!504 = !DILocation(line: 53, column: 11, scope: !374)
!505 = !DILocation(line: 53, column: 15, scope: !374)
!506 = !DILocation(line: 55, column: 2, scope: !374)
!507 = !DILocation(line: 55, column: 9, scope: !374)
!508 = !DILocation(line: 55, column: 41, scope: !374)
!509 = !DILocation(line: 55, column: 45, scope: !374)
!510 = !DILocation(line: 55, column: 54, scope: !374)
!511 = !DILocation(line: 55, column: 38, scope: !374)
!512 = !DILocation(line: 55, column: 14, scope: !374)
!513 = !DILocation(line: 56, column: 35, scope: !514)
!514 = distinct !DILexicalBlock(scope: !374, file: !3, line: 55, column: 62)
!515 = !DILocation(line: 56, column: 39, scope: !514)
!516 = !DILocation(line: 56, column: 48, scope: !514)
!517 = !DILocation(line: 56, column: 32, scope: !514)
!518 = !DILocation(line: 56, column: 8, scope: !514)
!519 = !DILocation(line: 57, column: 3, scope: !514)
!520 = !DILocation(line: 57, column: 12, scope: !514)
!521 = !DILocation(line: 57, column: 15, scope: !514)
!522 = distinct !{!522, !506, !523, !366, !367}
!523 = !DILocation(line: 58, column: 2, scope: !374)
!524 = !DILocation(line: 59, column: 18, scope: !374)
!525 = !DILocation(line: 59, column: 2, scope: !374)
!526 = !DILocation(line: 59, column: 11, scope: !374)
!527 = !DILocation(line: 59, column: 16, scope: !374)
!528 = !DILocation(line: 62, column: 14, scope: !374)
!529 = !DILocation(line: 62, column: 28, scope: !374)
!530 = !DILocation(line: 62, column: 11, scope: !374)
!531 = !DILocation(line: 63, column: 17, scope: !374)
!532 = !DILocation(line: 63, column: 21, scope: !374)
!533 = !DILocation(line: 63, column: 2, scope: !374)
!534 = !DILocation(line: 63, column: 11, scope: !374)
!535 = !DILocation(line: 63, column: 15, scope: !374)
!536 = !DILocation(line: 64, column: 18, scope: !374)
!537 = !DILocation(line: 64, column: 22, scope: !374)
!538 = !DILocation(line: 64, column: 30, scope: !374)
!539 = !DILocation(line: 64, column: 2, scope: !374)
!540 = !DILocation(line: 64, column: 11, scope: !374)
!541 = !DILocation(line: 64, column: 16, scope: !374)
!542 = !DILocation(line: 67, column: 14, scope: !374)
!543 = !DILocation(line: 67, column: 36, scope: !374)
!544 = !DILocation(line: 67, column: 11, scope: !374)
!545 = !DILocation(line: 68, column: 17, scope: !374)
!546 = !DILocation(line: 68, column: 21, scope: !374)
!547 = !DILocation(line: 68, column: 38, scope: !374)
!548 = !DILocation(line: 68, column: 42, scope: !374)
!549 = !DILocation(line: 68, column: 33, scope: !374)
!550 = !DILocation(line: 68, column: 31, scope: !374)
!551 = !DILocation(line: 68, column: 2, scope: !374)
!552 = !DILocation(line: 68, column: 11, scope: !374)
!553 = !DILocation(line: 68, column: 15, scope: !374)
!554 = !DILocation(line: 69, column: 18, scope: !374)
!555 = !DILocation(line: 69, column: 22, scope: !374)
!556 = !DILocation(line: 69, column: 31, scope: !374)
!557 = !DILocation(line: 69, column: 2, scope: !374)
!558 = !DILocation(line: 69, column: 11, scope: !374)
!559 = !DILocation(line: 69, column: 16, scope: !374)
!560 = !DILocation(line: 70, column: 1, scope: !374)
!561 = distinct !DISubprogram(name: "__arch_update_vsyscall", scope: !562, file: !562, line: 15, type: !375, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!562 = !DIFile(filename: "./include/asm-generic/vdso/vsyscall.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "240508b2b49b519da712de78cadaf973")
!563 = !{!564, !565}
!564 = !DILocalVariable(name: "vdata", arg: 1, scope: !561, file: !562, line: 15, type: !190)
!565 = !DILocalVariable(name: "tk", arg: 2, scope: !561, file: !562, line: 16, type: !88)
!566 = !DILocation(line: 15, column: 70, scope: !561)
!567 = !DILocation(line: 16, column: 29, scope: !561)
!568 = !DILocation(line: 18, column: 1, scope: !561)
!569 = distinct !DISubprogram(name: "vdso_write_end", scope: !312, file: !312, line: 42, type: !313, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !570)
!570 = !{!571}
!571 = !DILocalVariable(name: "vd", arg: 1, scope: !569, file: !312, line: 42, type: !190)
!572 = !DILocation(line: 42, column: 62, scope: !569)
!573 = !DILocation(line: 44, column: 2, scope: !569)
!574 = !DILocation(line: 44, column: 2, scope: !575)
!575 = distinct !DILexicalBlock(scope: !569, file: !312, line: 44, column: 2)
!576 = !DILocation(line: 44, column: 2, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !312, line: 44, column: 2)
!578 = !{i64 2152358920}
!579 = !DILocation(line: 50, column: 2, scope: !569)
!580 = !DILocation(line: 50, column: 2, scope: !581)
!581 = distinct !DILexicalBlock(scope: !569, file: !312, line: 50, column: 2)
!582 = !DILocation(line: 50, column: 2, scope: !583)
!583 = distinct !DILexicalBlock(scope: !581, file: !312, line: 50, column: 2)
!584 = !DILocation(line: 50, column: 2, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !312, line: 50, column: 2)
!586 = !DILocation(line: 51, column: 2, scope: !569)
!587 = !DILocation(line: 51, column: 2, scope: !588)
!588 = distinct !DILexicalBlock(scope: !569, file: !312, line: 51, column: 2)
!589 = !DILocation(line: 51, column: 2, scope: !590)
!590 = distinct !DILexicalBlock(scope: !588, file: !312, line: 51, column: 2)
!591 = !DILocation(line: 51, column: 2, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !312, line: 51, column: 2)
!593 = !DILocation(line: 52, column: 1, scope: !569)
!594 = distinct !DISubprogram(name: "__arch_sync_vdso_data", scope: !562, file: !562, line: 22, type: !313, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !595)
!595 = !{!596}
!596 = !DILocalVariable(name: "vdata", arg: 1, scope: !594, file: !562, line: 22, type: !190)
!597 = !DILocation(line: 22, column: 69, scope: !594)
!598 = !DILocation(line: 24, column: 1, scope: !594)
!599 = distinct !DISubprogram(name: "update_vsyscall_tz", scope: !3, file: !3, line: 123, type: !600, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{null}
!602 = !{!603}
!603 = !DILocalVariable(name: "vdata", scope: !599, file: !3, line: 125, type: !190)
!604 = !DILocation(line: 125, column: 2, scope: !599)
!605 = !DILocation(line: 125, column: 20, scope: !599)
!606 = !DILocation(line: 125, column: 28, scope: !599)
!607 = !DILocation(line: 127, column: 48, scope: !599)
!608 = !DILocation(line: 127, column: 2, scope: !599)
!609 = !DILocation(line: 127, column: 24, scope: !599)
!610 = !DILocation(line: 127, column: 39, scope: !599)
!611 = !DILocation(line: 128, column: 44, scope: !599)
!612 = !DILocation(line: 128, column: 2, scope: !599)
!613 = !DILocation(line: 128, column: 24, scope: !599)
!614 = !DILocation(line: 128, column: 35, scope: !599)
!615 = !DILocation(line: 130, column: 24, scope: !599)
!616 = !DILocation(line: 130, column: 2, scope: !599)
!617 = !DILocation(line: 131, column: 1, scope: !599)
!618 = distinct !DISubprogram(name: "vdso_update_begin", scope: !3, file: !3, line: 145, type: !619, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !621)
!619 = !DISubroutineType(types: !620)
!620 = !{!126}
!621 = !{!622, !623, !624, !627}
!622 = !DILocalVariable(name: "vdata", scope: !618, file: !3, line: 147, type: !190)
!623 = !DILocalVariable(name: "flags", scope: !618, file: !3, line: 148, type: !126)
!624 = !DILocalVariable(name: "__dummy", scope: !625, file: !3, line: 150, type: !126)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 150, column: 2)
!626 = distinct !DILexicalBlock(scope: !618, file: !3, line: 150, column: 2)
!627 = !DILocalVariable(name: "__dummy2", scope: !625, file: !3, line: 150, type: !126)
!628 = !DILocation(line: 147, column: 2, scope: !618)
!629 = !DILocation(line: 147, column: 20, scope: !618)
!630 = !DILocation(line: 147, column: 28, scope: !618)
!631 = !DILocation(line: 148, column: 2, scope: !618)
!632 = !DILocation(line: 148, column: 16, scope: !618)
!633 = !DILocation(line: 150, column: 2, scope: !618)
!634 = !DILocation(line: 150, column: 2, scope: !625)
!635 = !DILocation(line: 150, column: 2, scope: !626)
!636 = !DILocation(line: 151, column: 19, scope: !618)
!637 = !DILocation(line: 151, column: 2, scope: !618)
!638 = !DILocation(line: 152, column: 9, scope: !618)
!639 = !DILocation(line: 153, column: 1, scope: !618)
!640 = !DILocation(line: 152, column: 2, scope: !618)
!641 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !642, file: !642, line: 32, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!642 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!643 = !DISubroutineType(types: !644)
!644 = !{!126, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !647, line: 23, baseType: !648)
!647 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !647, line: 14, size: 32, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !648, file: !647, line: 15, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !652, line: 44, baseType: !653)
!652 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !652, line: 14, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, scope: !653, file: !652, line: 15, baseType: !656, size: 32)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !653, file: !652, line: 15, size: 32, elements: !657)
!657 = !{!658, !663, !668}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !656, file: !652, line: 16, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !117, line: 174, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 172, size: 32, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !660, file: !117, line: 173, baseType: !44, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !652, line: 24, baseType: !664, size: 16)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !652, line: 24, size: 16, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !664, file: !652, line: 25, baseType: !172, size: 8)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !664, file: !652, line: 26, baseType: !172, size: 8, offset: 8)
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !652, line: 28, baseType: !669, size: 32)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !656, file: !652, line: 28, size: 32, elements: !670)
!670 = !{!671, !675}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !669, file: !652, line: 29, baseType: !672, size: 16)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !674)
!674 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !669, file: !652, line: 30, baseType: !672, size: 16, offset: 16)
!676 = distinct !DISubprogram(name: "vdso_update_end", scope: !3, file: !3, line: 163, type: !677, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !126}
!679 = !{!680, !681, !682, !685}
!680 = !DILocalVariable(name: "flags", arg: 1, scope: !676, file: !3, line: 163, type: !126)
!681 = !DILocalVariable(name: "vdata", scope: !676, file: !3, line: 165, type: !190)
!682 = !DILocalVariable(name: "__dummy", scope: !683, file: !3, line: 169, type: !126)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 169, column: 2)
!684 = distinct !DILexicalBlock(scope: !676, file: !3, line: 169, column: 2)
!685 = !DILocalVariable(name: "__dummy2", scope: !683, file: !3, line: 169, type: !126)
!686 = !DILocation(line: 163, column: 36, scope: !676)
!687 = !DILocation(line: 165, column: 2, scope: !676)
!688 = !DILocation(line: 165, column: 20, scope: !676)
!689 = !DILocation(line: 165, column: 28, scope: !676)
!690 = !DILocation(line: 167, column: 17, scope: !676)
!691 = !DILocation(line: 167, column: 2, scope: !676)
!692 = !DILocation(line: 168, column: 24, scope: !676)
!693 = !DILocation(line: 168, column: 2, scope: !676)
!694 = !DILocation(line: 169, column: 2, scope: !676)
!695 = !DILocation(line: 169, column: 2, scope: !683)
!696 = !DILocation(line: 169, column: 2, scope: !684)
!697 = !DILocation(line: 170, column: 1, scope: !676)
!698 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !642, file: !642, line: 43, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !645, !126}
