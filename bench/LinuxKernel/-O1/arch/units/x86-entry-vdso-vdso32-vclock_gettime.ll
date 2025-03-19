; ModuleID = 'arch/x86/entry/vdso/vdso32/vclock_gettime.c'
source_filename = "arch/x86/entry/vdso/vdso32/vclock_gettime.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct.pvclock_vsyscall_time_info = type { %struct.pvclock_vcpu_time_info, [32 x i8] }
%struct.pvclock_vcpu_time_info = type { i32, i32, i64, i64, i32, i8, i8, [2 x i8] }
%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.__kernel_timespec = type { i64, i64 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.timezone = type { i32, i32 }
%struct.timens_offset = type { i64, i64 }
%struct.old_timespec32 = type { i32, i32 }

@pvclock_page = external hidden global %struct.pvclock_vsyscall_time_info, align 64
@timens__vdso_data = external hidden global [2 x %struct.vdso_data], align 4
@vvar__vdso_data = external hidden global [2 x %struct.vdso_data], align 4

@gettimeofday = weak alias i32 (ptr, ptr), ptr @__vdso_gettimeofday
@time = weak alias i32 (ptr), ptr @__vdso_time
@clock_gettime = weak alias i32 (i32, ptr), ptr @__vdso_clock_gettime
@clock_gettime64 = weak alias i32 (i32, ptr), ptr @__vdso_clock_gettime64
@clock_getres = weak alias i32 (i32, ptr), ptr @__vdso_clock_getres

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define i32 @__vdso_gettimeofday(ptr noundef %tv, ptr noundef %tz) #0 align 16 !dbg !45 {
entry:
  %tv.addr = alloca ptr, align 4
  %tz.addr = alloca ptr, align 4
  store ptr %tv, ptr %tv.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !66, metadata !DIExpression()), !dbg !68
  store ptr %tz, ptr %tz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !67, metadata !DIExpression()), !dbg !69
  %0 = load ptr, ptr %tv.addr, align 4, !dbg !70
  %1 = load ptr, ptr %tz.addr, align 4, !dbg !71
  %call = call i32 @__cvdso_gettimeofday(ptr noundef %0, ptr noundef %1) #6, !dbg !72
  ret i32 %call, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_gettimeofday(ptr noundef %tv, ptr noundef %tz) #0 align 16 !dbg !74 {
entry:
  %tv.addr = alloca ptr, align 4
  %tz.addr = alloca ptr, align 4
  store ptr %tv, ptr %tv.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !77, metadata !DIExpression()), !dbg !79
  store ptr %tz, ptr %tz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !78, metadata !DIExpression()), !dbg !80
  %call = call ptr @__arch_get_vdso_data() #6, !dbg !81
  %0 = load ptr, ptr %tv.addr, align 4, !dbg !82
  %1 = load ptr, ptr %tz.addr, align 4, !dbg !83
  %call1 = call i32 @__cvdso_gettimeofday_data(ptr noundef %call, ptr noundef %0, ptr noundef %1) #6, !dbg !84
  ret i32 %call1, !dbg !85
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define i32 @__vdso_time(ptr noundef %t) #0 align 16 !dbg !86 {
entry:
  %t.addr = alloca ptr, align 4
  store ptr %t, ptr %t.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load ptr, ptr %t.addr, align 4, !dbg !94
  %call = call i32 @__cvdso_time(ptr noundef %0) #6, !dbg !95
  ret i32 %call, !dbg !96
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_time(ptr noundef %time) #0 align 16 !dbg !97 {
entry:
  %time.addr = alloca ptr, align 4
  store ptr %time, ptr %time.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %call = call ptr @__arch_get_vdso_data() #6, !dbg !101
  %0 = load ptr, ptr %time.addr, align 4, !dbg !102
  %call1 = call i32 @__cvdso_time_data(ptr noundef %call, ptr noundef %0) #6, !dbg !103
  ret i32 %call1, !dbg !104
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define i32 @__vdso_clock_gettime(i32 noundef %clock, ptr noundef %ts) #0 align 16 !dbg !105 {
entry:
  %clock.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 4
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !121, metadata !DIExpression()), !dbg !123
  store ptr %ts, ptr %ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !122, metadata !DIExpression()), !dbg !124
  %0 = load i32, ptr %clock.addr, align 4, !dbg !125
  %1 = load ptr, ptr %ts.addr, align 4, !dbg !126
  %call = call i32 @__cvdso_clock_gettime32(i32 noundef %0, ptr noundef %1) #6, !dbg !127
  ret i32 %call, !dbg !128
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_clock_gettime32(i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !129 {
entry:
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !131, metadata !DIExpression()), !dbg !133
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !132, metadata !DIExpression()), !dbg !134
  %call = call ptr @__arch_get_vdso_data() #6, !dbg !135
  %0 = load i32, ptr %clock.addr, align 4, !dbg !136
  %1 = load ptr, ptr %res.addr, align 4, !dbg !137
  %call1 = call i32 @__cvdso_clock_gettime32_data(ptr noundef %call, i32 noundef %0, ptr noundef %1) #6, !dbg !138
  ret i32 %call1, !dbg !139
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define i32 @__vdso_clock_gettime64(i32 noundef %clock, ptr noundef %ts) #0 align 16 !dbg !140 {
entry:
  %clock.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 4
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !150, metadata !DIExpression()), !dbg !152
  store ptr %ts, ptr %ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !151, metadata !DIExpression()), !dbg !153
  %0 = load i32, ptr %clock.addr, align 4, !dbg !154
  %1 = load ptr, ptr %ts.addr, align 4, !dbg !155
  %call = call i32 @__cvdso_clock_gettime(i32 noundef %0, ptr noundef %1) #6, !dbg !156
  ret i32 %call, !dbg !157
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_clock_gettime(i32 noundef %clock, ptr noundef %ts) #0 align 16 !dbg !158 {
entry:
  %clock.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 4
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !160, metadata !DIExpression()), !dbg !162
  store ptr %ts, ptr %ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !161, metadata !DIExpression()), !dbg !163
  %call = call ptr @__arch_get_vdso_data() #6, !dbg !164
  %0 = load i32, ptr %clock.addr, align 4, !dbg !165
  %1 = load ptr, ptr %ts.addr, align 4, !dbg !166
  %call1 = call i32 @__cvdso_clock_gettime_data(ptr noundef %call, i32 noundef %0, ptr noundef %1) #6, !dbg !167
  ret i32 %call1, !dbg !168
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define i32 @__vdso_clock_getres(i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !169 {
entry:
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !171, metadata !DIExpression()), !dbg !173
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !172, metadata !DIExpression()), !dbg !174
  %0 = load i32, ptr %clock.addr, align 4, !dbg !175
  %1 = load ptr, ptr %res.addr, align 4, !dbg !176
  %call = call i32 @__cvdso_clock_getres_time32(i32 noundef %0, ptr noundef %1) #6, !dbg !177
  ret i32 %call, !dbg !178
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_clock_getres_time32(i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !179 {
entry:
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !181, metadata !DIExpression()), !dbg !183
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !182, metadata !DIExpression()), !dbg !184
  %call = call ptr @__arch_get_vdso_data() #6, !dbg !185
  %0 = load i32, ptr %clock.addr, align 4, !dbg !186
  %1 = load ptr, ptr %res.addr, align 4, !dbg !187
  %call1 = call i32 @__cvdso_clock_getres_time32_data(ptr noundef %call, i32 noundef %0, ptr noundef %1) #6, !dbg !188
  ret i32 %call1, !dbg !189
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_gettimeofday_data(ptr noundef %vd, ptr noundef %tv, ptr noundef %tz) #0 align 16 !dbg !190 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 4
  %tv.addr = alloca ptr, align 4
  %tz.addr = alloca ptr, align 4
  %ts = alloca %struct.__kernel_timespec, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !230, metadata !DIExpression()), !dbg !236
  store ptr %tv, ptr %tv.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !231, metadata !DIExpression()), !dbg !237
  store ptr %tz, ptr %tz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !232, metadata !DIExpression()), !dbg !238
  %0 = load ptr, ptr %tv.addr, align 4, !dbg !239
  %cmp = icmp ne ptr %0, null, !dbg !239
  %lnot = xor i1 %cmp, true, !dbg !239
  %lnot1 = xor i1 %lnot, true, !dbg !239
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !239
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 1), !dbg !239
  %tobool = icmp ne i32 %expval, 0, !dbg !239
  br i1 %tobool, label %if.then, label %if.end7, !dbg !240

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #7, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !233, metadata !DIExpression()), !dbg !242
  %1 = load ptr, ptr %vd.addr, align 4, !dbg !243
  %arrayidx = getelementptr %struct.vdso_data, ptr %1, i32 0, !dbg !243
  %call = call i32 @do_hres(ptr noundef %arrayidx, i32 noundef 0, ptr noundef %ts) #6, !dbg !245
  %tobool2 = icmp ne i32 %call, 0, !dbg !245
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !246

if.then3:                                         ; preds = %if.then
  %2 = load ptr, ptr %tv.addr, align 4, !dbg !247
  %3 = load ptr, ptr %tz.addr, align 4, !dbg !248
  %call4 = call i32 @gettimeofday_fallback(ptr noundef %2, ptr noundef %3) #6, !dbg !249
  store i32 %call4, ptr %retval, align 4, !dbg !250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !250

if.end:                                           ; preds = %if.then
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 0, !dbg !251
  %4 = load i64, ptr %tv_sec, align 4, !dbg !251
  %conv = trunc i64 %4 to i32, !dbg !252
  %5 = load ptr, ptr %tv.addr, align 4, !dbg !253
  %tv_sec5 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %5, i32 0, i32 0, !dbg !254
  store i32 %conv, ptr %tv_sec5, align 4, !dbg !255
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 1, !dbg !256
  %6 = load i64, ptr %tv_nsec, align 4, !dbg !256
  %conv6 = trunc i64 %6 to i32, !dbg !257
  %div = udiv i32 %conv6, 1000, !dbg !258
  %7 = load ptr, ptr %tv.addr, align 4, !dbg !259
  %tv_usec = getelementptr inbounds %struct.__kernel_old_timeval, ptr %7, i32 0, i32 1, !dbg !260
  store i32 %div, ptr %tv_usec, align 4, !dbg !261
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !262
  br label %cleanup, !dbg !262

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #7, !dbg !262
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end7, !dbg !263

if.end7:                                          ; preds = %cleanup.cont, %entry
  %8 = load ptr, ptr %tz.addr, align 4, !dbg !264
  %cmp8 = icmp ne ptr %8, null, !dbg !264
  %lnot10 = xor i1 %cmp8, true, !dbg !264
  %lnot12 = xor i1 %lnot10, true, !dbg !264
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !264
  %expval14 = call i32 @llvm.expect.i32(i32 %lnot.ext13, i32 0), !dbg !264
  %tobool15 = icmp ne i32 %expval14, 0, !dbg !264
  br i1 %tobool15, label %if.then16, label %if.end26, !dbg !266

if.then16:                                        ; preds = %if.end7
  %9 = load ptr, ptr %vd.addr, align 4, !dbg !267
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %9, i32 0, i32 1, !dbg !270
  %10 = load i32, ptr %clock_mode, align 4, !dbg !270
  %cmp17 = icmp eq i32 %10, 2147483647, !dbg !271
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !272

if.then19:                                        ; preds = %if.then16
  %11 = load ptr, ptr %vd.addr, align 4, !dbg !273
  %call20 = call ptr @__arch_get_timens_vdso_data(ptr noundef %11) #6, !dbg !274
  store ptr %call20, ptr %vd.addr, align 4, !dbg !275
  br label %if.end21, !dbg !276

if.end21:                                         ; preds = %if.then19, %if.then16
  %12 = load ptr, ptr %vd.addr, align 4, !dbg !277
  %arrayidx22 = getelementptr %struct.vdso_data, ptr %12, i32 0, !dbg !277
  %tz_minuteswest = getelementptr inbounds %struct.vdso_data, ptr %arrayidx22, i32 0, i32 7, !dbg !278
  %13 = load i32, ptr %tz_minuteswest, align 4, !dbg !278
  %14 = load ptr, ptr %tz.addr, align 4, !dbg !279
  %tz_minuteswest23 = getelementptr inbounds %struct.timezone, ptr %14, i32 0, i32 0, !dbg !280
  store i32 %13, ptr %tz_minuteswest23, align 4, !dbg !281
  %15 = load ptr, ptr %vd.addr, align 4, !dbg !282
  %arrayidx24 = getelementptr %struct.vdso_data, ptr %15, i32 0, !dbg !282
  %tz_dsttime = getelementptr inbounds %struct.vdso_data, ptr %arrayidx24, i32 0, i32 8, !dbg !283
  %16 = load i32, ptr %tz_dsttime, align 4, !dbg !283
  %17 = load ptr, ptr %tz.addr, align 4, !dbg !284
  %tz_dsttime25 = getelementptr inbounds %struct.timezone, ptr %17, i32 0, i32 1, !dbg !285
  store i32 %16, ptr %tz_dsttime25, align 4, !dbg !286
  br label %if.end26, !dbg !287

if.end26:                                         ; preds = %if.end21, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !288
  br label %return, !dbg !288

return:                                           ; preds = %if.end26, %cleanup
  %18 = load i32, ptr %retval, align 4, !dbg !289
  ret i32 %18, !dbg !289

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal ptr @__arch_get_vdso_data() #2 align 16 !dbg !290 {
entry:
  ret ptr @vvar__vdso_data, !dbg !294
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.expect.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @do_hres(ptr noundef %vd, i32 noundef %clk, ptr noundef %ts) #2 align 16 !dbg !295 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 4
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 4
  %vdso_ts = alloca ptr, align 4
  %cycles = alloca i64, align 8
  %last = alloca i64, align 8
  %sec = alloca i64, align 8
  %ns = alloca i64, align 8
  %seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !299, metadata !DIExpression()), !dbg !310
  store i32 %clk, ptr %clk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !300, metadata !DIExpression()), !dbg !311
  store ptr %ts, ptr %ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !301, metadata !DIExpression()), !dbg !312
  call void @llvm.lifetime.start.p0(i64 4, ptr %vdso_ts) #7, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !302, metadata !DIExpression()), !dbg !314
  %0 = load ptr, ptr %vd.addr, align 4, !dbg !315
  %1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 6, !dbg !316
  %2 = load i32, ptr %clk.addr, align 4, !dbg !317
  %arrayidx = getelementptr [12 x %struct.vdso_timestamp], ptr %1, i32 0, i32 %2, !dbg !315
  store ptr %arrayidx, ptr %vdso_ts, align 4, !dbg !314
  call void @llvm.lifetime.start.p0(i64 8, ptr %cycles) #7, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %cycles, metadata !305, metadata !DIExpression()), !dbg !319
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #7, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %last, metadata !306, metadata !DIExpression()), !dbg !320
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #7, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !307, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #7, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !308, metadata !DIExpression()), !dbg !322
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !323
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !309, metadata !DIExpression()), !dbg !324
  %call = call zeroext i1 @__arch_vdso_hres_capable() #6, !dbg !325
  br i1 %call, label %if.end, label %if.then, !dbg !327

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !328

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !329

do.body:                                          ; preds = %do.cond47, %if.end
  br label %while.cond, !dbg !330

while.cond:                                       ; preds = %if.end7, %do.body
  br label %do.body1, !dbg !332

do.body1:                                         ; preds = %while.cond
  br label %do.cond, !dbg !334

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !334

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %vd.addr, align 4, !dbg !332
  %seq2 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 0, !dbg !332
  %4 = load volatile i32, ptr %seq2, align 4, !dbg !332
  store i32 %4, ptr %tmp, align 4, !dbg !334
  %5 = load i32, ptr %tmp, align 4, !dbg !332
  store i32 %5, ptr %seq, align 4, !dbg !336
  %and = and i32 %5, 1, !dbg !336
  %tobool = icmp ne i32 %and, 0, !dbg !336
  %lnot = xor i1 %tobool, true, !dbg !336
  %lnot3 = xor i1 %lnot, true, !dbg !336
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !336
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !336
  %tobool4 = icmp ne i32 %expval, 0, !dbg !330
  br i1 %tobool4, label %while.body, label %while.end, !dbg !330

while.body:                                       ; preds = %do.end
  %6 = load ptr, ptr %vd.addr, align 4, !dbg !337
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %6, i32 0, i32 1, !dbg !340
  %7 = load i32, ptr %clock_mode, align 4, !dbg !340
  %cmp = icmp eq i32 %7, 2147483647, !dbg !341
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !342

if.then5:                                         ; preds = %while.body
  %8 = load ptr, ptr %vd.addr, align 4, !dbg !343
  %9 = load i32, ptr %clk.addr, align 4, !dbg !344
  %10 = load ptr, ptr %ts.addr, align 4, !dbg !345
  %call6 = call i32 @do_hres_timens(ptr noundef %8, i32 noundef %9, ptr noundef %10) #6, !dbg !346
  store i32 %call6, ptr %retval, align 4, !dbg !347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !347

if.end7:                                          ; preds = %while.body
  call void @cpu_relax() #6, !dbg !348
  br label %while.cond, !dbg !330, !llvm.loop !349

while.end:                                        ; preds = %do.end
  br label %do.body8, !dbg !353

do.body8:                                         ; preds = %while.end
  br label %do.body9, !dbg !354

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !356

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !356

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !354

do.body12:                                        ; preds = %do.end11
  br label %do.body13, !dbg !358

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !360

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !360

do.end15:                                         ; preds = %do.cond14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !358, !srcloc !362
  br label %do.cond16, !dbg !358

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !358

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !354

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !354

do.end19:                                         ; preds = %do.cond18
  %11 = load ptr, ptr %vd.addr, align 4, !dbg !363
  %call20 = call zeroext i1 @arch_vdso_clocksource_ok(ptr noundef %11) #6, !dbg !363
  %lnot21 = xor i1 %call20, true, !dbg !363
  %lnot23 = xor i1 %lnot21, true, !dbg !363
  %lnot25 = xor i1 %lnot23, true, !dbg !363
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !363
  %expval27 = call i32 @llvm.expect.i32(i32 %lnot.ext26, i32 0), !dbg !363
  %tobool28 = icmp ne i32 %expval27, 0, !dbg !363
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !365

if.then29:                                        ; preds = %do.end19
  store i32 -1, ptr %retval, align 4, !dbg !366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !366

if.end30:                                         ; preds = %do.end19
  %12 = load ptr, ptr %vd.addr, align 4, !dbg !367
  %clock_mode31 = getelementptr inbounds %struct.vdso_data, ptr %12, i32 0, i32 1, !dbg !368
  %13 = load i32, ptr %clock_mode31, align 4, !dbg !368
  %14 = load ptr, ptr %vd.addr, align 4, !dbg !369
  %call32 = call i64 @__arch_get_hw_counter(i32 noundef %13, ptr noundef %14) #6, !dbg !370
  store i64 %call32, ptr %cycles, align 8, !dbg !371
  %15 = load i64, ptr %cycles, align 8, !dbg !372
  %call33 = call zeroext i1 @arch_vdso_cycles_ok(i64 noundef %15) #6, !dbg !372
  %lnot34 = xor i1 %call33, true, !dbg !372
  %lnot36 = xor i1 %lnot34, true, !dbg !372
  %lnot38 = xor i1 %lnot36, true, !dbg !372
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !372
  %expval40 = call i32 @llvm.expect.i32(i32 %lnot.ext39, i32 0), !dbg !372
  %tobool41 = icmp ne i32 %expval40, 0, !dbg !372
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !374

if.then42:                                        ; preds = %if.end30
  store i32 -1, ptr %retval, align 4, !dbg !375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !375

if.end43:                                         ; preds = %if.end30
  %16 = load ptr, ptr %vdso_ts, align 4, !dbg !376
  %nsec = getelementptr inbounds %struct.vdso_timestamp, ptr %16, i32 0, i32 1, !dbg !377
  %17 = load i64, ptr %nsec, align 4, !dbg !377
  store i64 %17, ptr %ns, align 8, !dbg !378
  %18 = load ptr, ptr %vd.addr, align 4, !dbg !379
  %cycle_last = getelementptr inbounds %struct.vdso_data, ptr %18, i32 0, i32 2, !dbg !380
  %19 = load i64, ptr %cycle_last, align 4, !dbg !380
  store i64 %19, ptr %last, align 8, !dbg !381
  %20 = load i64, ptr %cycles, align 8, !dbg !382
  %21 = load i64, ptr %last, align 8, !dbg !383
  %22 = load ptr, ptr %vd.addr, align 4, !dbg !384
  %mask = getelementptr inbounds %struct.vdso_data, ptr %22, i32 0, i32 3, !dbg !385
  %23 = load i64, ptr %mask, align 4, !dbg !385
  %24 = load ptr, ptr %vd.addr, align 4, !dbg !386
  %mult = getelementptr inbounds %struct.vdso_data, ptr %24, i32 0, i32 4, !dbg !387
  %25 = load i32, ptr %mult, align 4, !dbg !387
  %call44 = call i64 @vdso_calc_delta(i64 noundef %20, i64 noundef %21, i64 noundef %23, i32 noundef %25) #6, !dbg !388
  %26 = load i64, ptr %ns, align 8, !dbg !389
  %add = add i64 %26, %call44, !dbg !389
  store i64 %add, ptr %ns, align 8, !dbg !389
  %27 = load i64, ptr %ns, align 8, !dbg !390
  %28 = load ptr, ptr %vd.addr, align 4, !dbg !391
  %shift = getelementptr inbounds %struct.vdso_data, ptr %28, i32 0, i32 5, !dbg !392
  %29 = load i32, ptr %shift, align 4, !dbg !392
  %call45 = call i64 @vdso_shift_ns(i64 noundef %27, i32 noundef %29) #6, !dbg !393
  store i64 %call45, ptr %ns, align 8, !dbg !394
  %30 = load ptr, ptr %vdso_ts, align 4, !dbg !395
  %sec46 = getelementptr inbounds %struct.vdso_timestamp, ptr %30, i32 0, i32 0, !dbg !396
  %31 = load i64, ptr %sec46, align 4, !dbg !396
  store i64 %31, ptr %sec, align 8, !dbg !397
  br label %do.cond47, !dbg !398

do.cond47:                                        ; preds = %if.end43
  %32 = load ptr, ptr %vd.addr, align 4, !dbg !399
  %33 = load i32, ptr %seq, align 4, !dbg !399
  %call48 = call i32 @vdso_read_retry(ptr noundef %32, i32 noundef %33) #6, !dbg !399
  %tobool49 = icmp ne i32 %call48, 0, !dbg !399
  %lnot50 = xor i1 %tobool49, true, !dbg !399
  %lnot52 = xor i1 %lnot50, true, !dbg !399
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !399
  %expval54 = call i32 @llvm.expect.i32(i32 %lnot.ext53, i32 0), !dbg !399
  %tobool55 = icmp ne i32 %expval54, 0, !dbg !398
  br i1 %tobool55, label %do.body, label %do.end56, !dbg !398, !llvm.loop !400

do.end56:                                         ; preds = %do.cond47
  %34 = load i64, ptr %sec, align 8, !dbg !402
  %35 = load i64, ptr %ns, align 8, !dbg !403
  %call57 = call i32 @__iter_div_u64_rem(i64 noundef %35, i32 noundef 1000000000, ptr noundef %ns) #6, !dbg !404
  %conv = zext i32 %call57 to i64, !dbg !404
  %add58 = add i64 %34, %conv, !dbg !405
  %36 = load ptr, ptr %ts.addr, align 4, !dbg !406
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %36, i32 0, i32 0, !dbg !407
  store i64 %add58, ptr %tv_sec, align 4, !dbg !408
  %37 = load i64, ptr %ns, align 8, !dbg !409
  %38 = load ptr, ptr %ts.addr, align 4, !dbg !410
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %38, i32 0, i32 1, !dbg !411
  store i64 %37, ptr %tv_nsec, align 4, !dbg !412
  store i32 0, ptr %retval, align 4, !dbg !413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !413

cleanup:                                          ; preds = %do.end56, %if.then42, %if.then29, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !414
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #7, !dbg !414
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #7, !dbg !414
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #7, !dbg !414
  call void @llvm.lifetime.end.p0(i64 8, ptr %cycles) #7, !dbg !414
  call void @llvm.lifetime.end.p0(i64 4, ptr %vdso_ts) #7, !dbg !414
  %39 = load i32, ptr %retval, align 4, !dbg !414
  ret i32 %39, !dbg !414
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @gettimeofday_fallback(ptr noundef %_tv, ptr noundef %_tz) #2 align 16 !dbg !415 {
entry:
  %_tv.addr = alloca ptr, align 4
  %_tz.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  store ptr %_tv, ptr %_tv.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_tv.addr, metadata !419, metadata !DIExpression()), !dbg !422
  store ptr %_tz, ptr %_tz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_tz.addr, metadata !420, metadata !DIExpression()), !dbg !423
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !421, metadata !DIExpression()), !dbg !425
  %0 = load ptr, ptr %_tv.addr, align 4, !dbg !426
  %1 = load ptr, ptr %_tz.addr, align 4, !dbg !427
  %2 = call i32 asm "mov %ebx, %edx \0Amov $2, %ebx \0Acall __kernel_vsyscall \0Amov %edx, %ebx \0A", "={ax},0,imr,{cx},~{memory},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 78, ptr %0, ptr %1) #7, !dbg !428, !srcloc !429
  store i32 %2, ptr %ret, align 4, !dbg !428
  %3 = load i32, ptr %ret, align 4, !dbg !430
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !431
  ret i32 %3, !dbg !432
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal ptr @__arch_get_timens_vdso_data(ptr noundef %vd) #2 align 16 !dbg !433 {
entry:
  %vd.addr = alloca ptr, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !437, metadata !DIExpression()), !dbg !438
  ret ptr @timens__vdso_data, !dbg !439
}

; Function Attrs: inlinehint noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @__arch_vdso_hres_capable() #5 align 16 !dbg !440 {
entry:
  ret i1 true, !dbg !445
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @do_hres_timens(ptr noundef %vdns, i32 noundef %clk, ptr noundef %ts) #2 align 16 !dbg !446 {
entry:
  %retval = alloca i32, align 4
  %vdns.addr = alloca ptr, align 4
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 4
  %vd = alloca ptr, align 4
  %offs = alloca ptr, align 4
  %vdso_ts = alloca ptr, align 4
  %cycles = alloca i64, align 8
  %last = alloca i64, align 8
  %ns = alloca i64, align 8
  %seq = alloca i32, align 4
  %sec = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdns, ptr %vdns.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vdns.addr, metadata !448, metadata !DIExpression()), !dbg !461
  store i32 %clk, ptr %clk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !449, metadata !DIExpression()), !dbg !462
  store ptr %ts, ptr %ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !450, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 4, ptr %vd) #7, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !451, metadata !DIExpression()), !dbg !465
  call void @llvm.lifetime.start.p0(i64 4, ptr %offs) #7, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !452, metadata !DIExpression()), !dbg !467
  %0 = load ptr, ptr %vdns.addr, align 4, !dbg !468
  %1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 6, !dbg !469
  %2 = load i32, ptr %clk.addr, align 4, !dbg !470
  %arrayidx = getelementptr [12 x %struct.timens_offset], ptr %1, i32 0, i32 %2, !dbg !468
  store ptr %arrayidx, ptr %offs, align 4, !dbg !467
  call void @llvm.lifetime.start.p0(i64 4, ptr %vdso_ts) #7, !dbg !471
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !455, metadata !DIExpression()), !dbg !472
  call void @llvm.lifetime.start.p0(i64 8, ptr %cycles) #7, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %cycles, metadata !456, metadata !DIExpression()), !dbg !474
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #7, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %last, metadata !457, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #7, !dbg !473
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !458, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !459, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #7, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !460, metadata !DIExpression()), !dbg !480
  %3 = load ptr, ptr %vdns.addr, align 4, !dbg !481
  %4 = load i32, ptr %clk.addr, align 4, !dbg !482
  %cmp = icmp eq i32 %4, 4, !dbg !483
  %5 = zext i1 %cmp to i64, !dbg !482
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !482
  %idx.neg = sub i32 0, %cond, !dbg !484
  %add.ptr = getelementptr %struct.vdso_data, ptr %3, i32 %idx.neg, !dbg !484
  store ptr %add.ptr, ptr %vd, align 4, !dbg !485
  %6 = load ptr, ptr %vd, align 4, !dbg !486
  %call = call ptr @__arch_get_timens_vdso_data(ptr noundef %6) #6, !dbg !487
  store ptr %call, ptr %vd, align 4, !dbg !488
  %7 = load i32, ptr %clk.addr, align 4, !dbg !489
  %cmp1 = icmp ne i32 %7, 4, !dbg !491
  br i1 %cmp1, label %if.then, label %if.else, !dbg !492

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %vd, align 4, !dbg !493
  %arrayidx2 = getelementptr %struct.vdso_data, ptr %8, i32 0, !dbg !493
  store ptr %arrayidx2, ptr %vd, align 4, !dbg !494
  br label %if.end, !dbg !495

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %vd, align 4, !dbg !496
  %arrayidx3 = getelementptr %struct.vdso_data, ptr %9, i32 1, !dbg !496
  store ptr %arrayidx3, ptr %vd, align 4, !dbg !497
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %vd, align 4, !dbg !498
  %11 = getelementptr inbounds %struct.vdso_data, ptr %10, i32 0, i32 6, !dbg !499
  %12 = load i32, ptr %clk.addr, align 4, !dbg !500
  %arrayidx4 = getelementptr [12 x %struct.vdso_timestamp], ptr %11, i32 0, i32 %12, !dbg !498
  store ptr %arrayidx4, ptr %vdso_ts, align 4, !dbg !501
  br label %do.body, !dbg !502

do.body:                                          ; preds = %do.cond, %if.end
  %13 = load ptr, ptr %vd, align 4, !dbg !503
  %call5 = call i32 @vdso_read_begin(ptr noundef %13) #6, !dbg !505
  store i32 %call5, ptr %seq, align 4, !dbg !506
  %14 = load ptr, ptr %vd, align 4, !dbg !507
  %call6 = call zeroext i1 @arch_vdso_clocksource_ok(ptr noundef %14) #6, !dbg !507
  %lnot = xor i1 %call6, true, !dbg !507
  %lnot7 = xor i1 %lnot, true, !dbg !507
  %lnot8 = xor i1 %lnot7, true, !dbg !507
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !507
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !507
  %tobool = icmp ne i32 %expval, 0, !dbg !507
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !509

if.then9:                                         ; preds = %do.body
  store i32 -1, ptr %retval, align 4, !dbg !510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !510

if.end10:                                         ; preds = %do.body
  %15 = load ptr, ptr %vd, align 4, !dbg !511
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %15, i32 0, i32 1, !dbg !512
  %16 = load i32, ptr %clock_mode, align 4, !dbg !512
  %17 = load ptr, ptr %vd, align 4, !dbg !513
  %call11 = call i64 @__arch_get_hw_counter(i32 noundef %16, ptr noundef %17) #6, !dbg !514
  store i64 %call11, ptr %cycles, align 8, !dbg !515
  %18 = load i64, ptr %cycles, align 8, !dbg !516
  %call12 = call zeroext i1 @arch_vdso_cycles_ok(i64 noundef %18) #6, !dbg !516
  %lnot13 = xor i1 %call12, true, !dbg !516
  %lnot15 = xor i1 %lnot13, true, !dbg !516
  %lnot17 = xor i1 %lnot15, true, !dbg !516
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !516
  %expval19 = call i32 @llvm.expect.i32(i32 %lnot.ext18, i32 0), !dbg !516
  %tobool20 = icmp ne i32 %expval19, 0, !dbg !516
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !518

if.then21:                                        ; preds = %if.end10
  store i32 -1, ptr %retval, align 4, !dbg !519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !519

if.end22:                                         ; preds = %if.end10
  %19 = load ptr, ptr %vdso_ts, align 4, !dbg !520
  %nsec = getelementptr inbounds %struct.vdso_timestamp, ptr %19, i32 0, i32 1, !dbg !521
  %20 = load i64, ptr %nsec, align 4, !dbg !521
  store i64 %20, ptr %ns, align 8, !dbg !522
  %21 = load ptr, ptr %vd, align 4, !dbg !523
  %cycle_last = getelementptr inbounds %struct.vdso_data, ptr %21, i32 0, i32 2, !dbg !524
  %22 = load i64, ptr %cycle_last, align 4, !dbg !524
  store i64 %22, ptr %last, align 8, !dbg !525
  %23 = load i64, ptr %cycles, align 8, !dbg !526
  %24 = load i64, ptr %last, align 8, !dbg !527
  %25 = load ptr, ptr %vd, align 4, !dbg !528
  %mask = getelementptr inbounds %struct.vdso_data, ptr %25, i32 0, i32 3, !dbg !529
  %26 = load i64, ptr %mask, align 4, !dbg !529
  %27 = load ptr, ptr %vd, align 4, !dbg !530
  %mult = getelementptr inbounds %struct.vdso_data, ptr %27, i32 0, i32 4, !dbg !531
  %28 = load i32, ptr %mult, align 4, !dbg !531
  %call23 = call i64 @vdso_calc_delta(i64 noundef %23, i64 noundef %24, i64 noundef %26, i32 noundef %28) #6, !dbg !532
  %29 = load i64, ptr %ns, align 8, !dbg !533
  %add = add i64 %29, %call23, !dbg !533
  store i64 %add, ptr %ns, align 8, !dbg !533
  %30 = load i64, ptr %ns, align 8, !dbg !534
  %31 = load ptr, ptr %vd, align 4, !dbg !535
  %shift = getelementptr inbounds %struct.vdso_data, ptr %31, i32 0, i32 5, !dbg !536
  %32 = load i32, ptr %shift, align 4, !dbg !536
  %call24 = call i64 @vdso_shift_ns(i64 noundef %30, i32 noundef %32) #6, !dbg !537
  store i64 %call24, ptr %ns, align 8, !dbg !538
  %33 = load ptr, ptr %vdso_ts, align 4, !dbg !539
  %sec25 = getelementptr inbounds %struct.vdso_timestamp, ptr %33, i32 0, i32 0, !dbg !540
  %34 = load i64, ptr %sec25, align 4, !dbg !540
  store i64 %34, ptr %sec, align 8, !dbg !541
  br label %do.cond, !dbg !542

do.cond:                                          ; preds = %if.end22
  %35 = load ptr, ptr %vd, align 4, !dbg !543
  %36 = load i32, ptr %seq, align 4, !dbg !543
  %call26 = call i32 @vdso_read_retry(ptr noundef %35, i32 noundef %36) #6, !dbg !543
  %tobool27 = icmp ne i32 %call26, 0, !dbg !543
  %lnot28 = xor i1 %tobool27, true, !dbg !543
  %lnot30 = xor i1 %lnot28, true, !dbg !543
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !543
  %expval32 = call i32 @llvm.expect.i32(i32 %lnot.ext31, i32 0), !dbg !543
  %tobool33 = icmp ne i32 %expval32, 0, !dbg !542
  br i1 %tobool33, label %do.body, label %do.end, !dbg !542, !llvm.loop !544

do.end:                                           ; preds = %do.cond
  %37 = load ptr, ptr %offs, align 4, !dbg !546
  %sec34 = getelementptr inbounds %struct.timens_offset, ptr %37, i32 0, i32 0, !dbg !547
  %38 = load i64, ptr %sec34, align 4, !dbg !547
  %39 = load i64, ptr %sec, align 8, !dbg !548
  %add35 = add i64 %39, %38, !dbg !548
  store i64 %add35, ptr %sec, align 8, !dbg !548
  %40 = load ptr, ptr %offs, align 4, !dbg !549
  %nsec36 = getelementptr inbounds %struct.timens_offset, ptr %40, i32 0, i32 1, !dbg !550
  %41 = load i64, ptr %nsec36, align 4, !dbg !550
  %42 = load i64, ptr %ns, align 8, !dbg !551
  %add37 = add i64 %42, %41, !dbg !551
  store i64 %add37, ptr %ns, align 8, !dbg !551
  %43 = load i64, ptr %sec, align 8, !dbg !552
  %44 = load i64, ptr %ns, align 8, !dbg !553
  %call38 = call i32 @__iter_div_u64_rem(i64 noundef %44, i32 noundef 1000000000, ptr noundef %ns) #6, !dbg !554
  %conv = zext i32 %call38 to i64, !dbg !554
  %add39 = add i64 %43, %conv, !dbg !555
  %45 = load ptr, ptr %ts.addr, align 4, !dbg !556
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %45, i32 0, i32 0, !dbg !557
  store i64 %add39, ptr %tv_sec, align 4, !dbg !558
  %46 = load i64, ptr %ns, align 8, !dbg !559
  %47 = load ptr, ptr %ts.addr, align 4, !dbg !560
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %47, i32 0, i32 1, !dbg !561
  store i64 %46, ptr %tv_nsec, align 4, !dbg !562
  store i32 0, ptr %retval, align 4, !dbg !563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !563

cleanup:                                          ; preds = %do.end, %if.then21, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #7, !dbg !564
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #7, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #7, !dbg !564
  call void @llvm.lifetime.end.p0(i64 8, ptr %cycles) #7, !dbg !564
  call void @llvm.lifetime.end.p0(i64 4, ptr %vdso_ts) #7, !dbg !564
  call void @llvm.lifetime.end.p0(i64 4, ptr %offs) #7, !dbg !564
  call void @llvm.lifetime.end.p0(i64 4, ptr %vd) #7, !dbg !564
  %48 = load i32, ptr %retval, align 4, !dbg !564
  ret i32 %48, !dbg !564
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal void @cpu_relax() #2 align 16 !dbg !565 {
entry:
  call void @rep_nop() #6, !dbg !569
  ret void, !dbg !570
}

; Function Attrs: inlinehint noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @arch_vdso_clocksource_ok(ptr noundef %vd) #5 align 16 !dbg !571 {
entry:
  %vd.addr = alloca ptr, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !575, metadata !DIExpression()), !dbg !576
  ret i1 true, !dbg !577
}

; Function Attrs: inlinehint noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i64 @__arch_get_hw_counter(i32 noundef %clock_mode, ptr noundef %vd) #5 align 16 !dbg !578 {
entry:
  %retval = alloca i64, align 4
  %clock_mode.addr = alloca i32, align 4
  %vd.addr = alloca ptr, align 4
  store i32 %clock_mode, ptr %clock_mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock_mode.addr, metadata !582, metadata !DIExpression()), !dbg !584
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !583, metadata !DIExpression()), !dbg !585
  %0 = load i32, ptr %clock_mode.addr, align 4, !dbg !586
  %cmp = icmp eq i32 %0, 1, !dbg !586
  %lnot = xor i1 %cmp, true, !dbg !586
  %lnot1 = xor i1 %lnot, true, !dbg !586
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !586
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 1), !dbg !586
  %tobool = icmp ne i32 %expval, 0, !dbg !586
  br i1 %tobool, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %entry
  %call = call i64 @rdtsc_ordered() #6, !dbg !589
  %and = and i64 %call, 9223372036854775807, !dbg !590
  store i64 %and, ptr %retval, align 4, !dbg !591
  br label %return, !dbg !591

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %clock_mode.addr, align 4, !dbg !592
  %cmp2 = icmp eq i32 %1, 2, !dbg !594
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !595

if.then3:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !596, !srcloc !598
  %call4 = call i64 @vread_pvclock() #6, !dbg !599
  store i64 %call4, ptr %retval, align 4, !dbg !600
  br label %return, !dbg !600

if.end5:                                          ; preds = %if.end
  store i64 -1, ptr %retval, align 4, !dbg !601
  br label %return, !dbg !601

return:                                           ; preds = %if.end5, %if.then3, %if.then
  %2 = load i64, ptr %retval, align 4, !dbg !602
  ret i64 %2, !dbg !602
}

; Function Attrs: inlinehint noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @arch_vdso_cycles_ok(i64 noundef %cycles) #5 align 16 !dbg !603 {
entry:
  %cycles.addr = alloca i64, align 8
  store i64 %cycles, ptr %cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycles.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load i64, ptr %cycles.addr, align 8, !dbg !609
  %cmp = icmp sge i64 %0, 0, !dbg !610
  ret i1 %cmp, !dbg !611
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i64 @vdso_calc_delta(i64 noundef %cycles, i64 noundef %last, i64 noundef %mask, i32 noundef %mult) #2 align 16 !dbg !612 {
entry:
  %retval = alloca i64, align 4
  %cycles.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %mask.addr = alloca i64, align 8
  %mult.addr = alloca i32, align 4
  %delta = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %cycles, ptr %cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycles.addr, metadata !616, metadata !DIExpression()), !dbg !621
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !617, metadata !DIExpression()), !dbg !622
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !618, metadata !DIExpression()), !dbg !623
  store i32 %mult, ptr %mult.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mult.addr, metadata !619, metadata !DIExpression()), !dbg !624
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #7, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !620, metadata !DIExpression()), !dbg !626
  %0 = load i64, ptr %cycles.addr, align 8, !dbg !627
  %1 = load i64, ptr %last.addr, align 8, !dbg !628
  %sub = sub i64 %0, %1, !dbg !629
  %and = and i64 %sub, 9223372036854775807, !dbg !630
  store i64 %and, ptr %delta, align 8, !dbg !626
  %2 = load i64, ptr %delta, align 8, !dbg !631
  %and1 = and i64 %2, 4611686018427387904, !dbg !631
  %tobool = icmp ne i64 %and1, 0, !dbg !631
  %lnot = xor i1 %tobool, true, !dbg !631
  %lnot2 = xor i1 %lnot, true, !dbg !631
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !631
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !631
  %tobool3 = icmp ne i32 %expval, 0, !dbg !631
  br i1 %tobool3, label %if.then, label %if.end, !dbg !633

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 4, !dbg !634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !634

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %delta, align 8, !dbg !635
  %4 = load i32, ptr %mult.addr, align 4, !dbg !636
  %conv = zext i32 %4 to i64, !dbg !636
  %mul = mul i64 %3, %conv, !dbg !637
  store i64 %mul, ptr %retval, align 4, !dbg !638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !638

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #7, !dbg !639
  %5 = load i64, ptr %retval, align 4, !dbg !639
  ret i64 %5, !dbg !639
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i64 @vdso_shift_ns(i64 noundef %ns, i32 noundef %shift) #2 align 16 !dbg !640 {
entry:
  %ns.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !644, metadata !DIExpression()), !dbg !646
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !645, metadata !DIExpression()), !dbg !647
  %0 = load i64, ptr %ns.addr, align 8, !dbg !648
  %1 = load i32, ptr %shift.addr, align 4, !dbg !649
  %sh_prom = zext i32 %1 to i64, !dbg !650
  %shr = lshr i64 %0, %sh_prom, !dbg !650
  ret i64 %shr, !dbg !651
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @vdso_read_retry(ptr noundef %vd, i32 noundef %start) #2 align 16 !dbg !652 {
entry:
  %vd.addr = alloca ptr, align 4
  %start.addr = alloca i32, align 4
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !657, metadata !DIExpression()), !dbg !660
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !658, metadata !DIExpression()), !dbg !661
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !659, metadata !DIExpression()), !dbg !663
  br label %do.body, !dbg !664

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !665

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !667

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !667

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !665

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !669

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !671

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !671

do.end5:                                          ; preds = %do.cond4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !669, !srcloc !673
  br label %do.cond6, !dbg !669

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !669

do.end7:                                          ; preds = %do.cond6
  br label %do.cond8, !dbg !665

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !665

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !674

do.body10:                                        ; preds = %do.end9
  br label %do.cond11, !dbg !676

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !676

do.end12:                                         ; preds = %do.cond11
  %0 = load ptr, ptr %vd.addr, align 4, !dbg !674
  %seq13 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 0, !dbg !674
  %1 = load volatile i32, ptr %seq13, align 4, !dbg !674
  store i32 %1, ptr %tmp, align 4, !dbg !676
  %2 = load i32, ptr %tmp, align 4, !dbg !674
  store i32 %2, ptr %seq, align 4, !dbg !678
  %3 = load i32, ptr %seq, align 4, !dbg !679
  %4 = load i32, ptr %start.addr, align 4, !dbg !680
  %cmp = icmp ne i32 %3, %4, !dbg !681
  %conv = zext i1 %cmp to i32, !dbg !681
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !682
  ret i32 %conv, !dbg !683
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__iter_div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #2 align 16 !dbg !684 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !690, metadata !DIExpression()), !dbg !694
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !691, metadata !DIExpression()), !dbg !695
  store ptr %remainder, ptr %remainder.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !692, metadata !DIExpression()), !dbg !696
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !693, metadata !DIExpression()), !dbg !698
  store i32 0, ptr %ret, align 4, !dbg !698
  br label %while.cond, !dbg !699

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !700
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !701
  %conv = zext i32 %1 to i64, !dbg !701
  %cmp = icmp uge i64 %0, %conv, !dbg !702
  br i1 %cmp, label %while.body, label %while.end, !dbg !699

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %dividend.addr, align 8, !dbg !703
  call void asm "", "=*rm,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %dividend.addr, i64 %2) #7, !dbg !703, !srcloc !705
  %3 = load i32, ptr %divisor.addr, align 4, !dbg !706
  %conv2 = zext i32 %3 to i64, !dbg !706
  %4 = load i64, ptr %dividend.addr, align 8, !dbg !707
  %sub = sub i64 %4, %conv2, !dbg !707
  store i64 %sub, ptr %dividend.addr, align 8, !dbg !707
  %5 = load i32, ptr %ret, align 4, !dbg !708
  %inc = add i32 %5, 1, !dbg !708
  store i32 %inc, ptr %ret, align 4, !dbg !708
  br label %while.cond, !dbg !699, !llvm.loop !709

while.end:                                        ; preds = %while.cond
  %6 = load i64, ptr %dividend.addr, align 8, !dbg !711
  %7 = load ptr, ptr %remainder.addr, align 4, !dbg !712
  store i64 %6, ptr %7, align 4, !dbg !713
  %8 = load i32, ptr %ret, align 4, !dbg !714
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !715
  ret i32 %8, !dbg !716
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @vdso_read_begin(ptr noundef %vd) #2 align 16 !dbg !717 {
entry:
  %vd.addr = alloca ptr, align 4
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !721, metadata !DIExpression()), !dbg !723
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !722, metadata !DIExpression()), !dbg !725
  br label %while.cond, !dbg !726

while.cond:                                       ; preds = %while.body, %entry
  br label %do.body, !dbg !727

do.body:                                          ; preds = %while.cond
  br label %do.cond, !dbg !729

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !729

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %vd.addr, align 4, !dbg !727
  %seq1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 0, !dbg !727
  %1 = load volatile i32, ptr %seq1, align 4, !dbg !727
  store i32 %1, ptr %tmp, align 4, !dbg !729
  %2 = load i32, ptr %tmp, align 4, !dbg !727
  store i32 %2, ptr %seq, align 4, !dbg !731
  %and = and i32 %2, 1, !dbg !731
  %tobool = icmp ne i32 %and, 0, !dbg !731
  %lnot = xor i1 %tobool, true, !dbg !731
  %lnot2 = xor i1 %lnot, true, !dbg !731
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !731
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !731
  %tobool3 = icmp ne i32 %expval, 0, !dbg !726
  br i1 %tobool3, label %while.body, label %while.end, !dbg !726

while.body:                                       ; preds = %do.end
  call void @cpu_relax() #6, !dbg !732
  br label %while.cond, !dbg !726, !llvm.loop !733

while.end:                                        ; preds = %do.end
  br label %do.body4, !dbg !735

do.body4:                                         ; preds = %while.end
  br label %do.body5, !dbg !736

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !738

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !738

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !736

do.body8:                                         ; preds = %do.end7
  br label %do.body9, !dbg !740

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !742

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !742

do.end11:                                         ; preds = %do.cond10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !740, !srcloc !744
  br label %do.cond12, !dbg !740

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !740

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !736

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !736

do.end15:                                         ; preds = %do.cond14
  %3 = load i32, ptr %seq, align 4, !dbg !745
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !746
  ret i32 %3, !dbg !747
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal void @rep_nop() #2 align 16 !dbg !748 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !749, !srcloc !750
  ret void, !dbg !751
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i64 @rdtsc_ordered() #2 align 16 !dbg !752 {
entry:
  %val = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #7, !dbg !758
  call void @llvm.dbg.declare(metadata ptr %val, metadata !757, metadata !DIExpression()), !dbg !758
  %0 = call i64 asm sideeffect "# ALT: oldinstr2\0A661:\0A\09rdtsc\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 1*32+27)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence; rdtsc\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09rdtscp\0A6652:\0A.popsection\0A", "=A,~{ecx},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !759, !srcloc !760
  store i64 %0, ptr %val, align 8, !dbg !759
  %1 = load i64, ptr %val, align 8, !dbg !761
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #7, !dbg !762
  ret i64 %1, !dbg !763
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i64 @vread_pvclock() #0 align 16 !dbg !764 {
entry:
  %retval = alloca i64, align 4
  %pvti = alloca ptr, align 4
  %version = alloca i32, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pvti) #7, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %pvti, metadata !768, metadata !DIExpression()), !dbg !794
  store ptr @pvclock_page, ptr %pvti, align 4, !dbg !794
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #7, !dbg !795
  call void @llvm.dbg.declare(metadata ptr %version, metadata !791, metadata !DIExpression()), !dbg !796
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !797
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !792, metadata !DIExpression()), !dbg !798
  br label %do.body, !dbg !799

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %pvti, align 4, !dbg !800
  %call = call i32 @pvclock_read_begin(ptr noundef %0) #6, !dbg !802
  store i32 %call, ptr %version, align 4, !dbg !803
  %1 = load ptr, ptr %pvti, align 4, !dbg !804
  %flags = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %1, i32 0, i32 6, !dbg !804
  %2 = load i8, ptr %flags, align 1, !dbg !804
  %conv = zext i8 %2 to i32, !dbg !804
  %and = and i32 %conv, 1, !dbg !804
  %tobool = icmp ne i32 %and, 0, !dbg !804
  %lnot = xor i1 %tobool, true, !dbg !804
  %lnot1 = xor i1 %lnot, true, !dbg !804
  %lnot2 = xor i1 %lnot1, true, !dbg !804
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !804
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !804
  %tobool3 = icmp ne i32 %expval, 0, !dbg !804
  br i1 %tobool3, label %if.then, label %if.end, !dbg !806

if.then:                                          ; preds = %do.body
  store i64 -1, ptr %retval, align 4, !dbg !807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !807

if.end:                                           ; preds = %do.body
  %3 = load ptr, ptr %pvti, align 4, !dbg !808
  %call4 = call i64 @rdtsc_ordered() #6, !dbg !809
  %call5 = call i64 @__pvclock_read_cycles(ptr noundef %3, i64 noundef %call4) #6, !dbg !810
  store i64 %call5, ptr %ret, align 8, !dbg !811
  br label %do.cond, !dbg !812

do.cond:                                          ; preds = %if.end
  %4 = load ptr, ptr %pvti, align 4, !dbg !813
  %5 = load i32, ptr %version, align 4, !dbg !814
  %call6 = call zeroext i1 @pvclock_read_retry(ptr noundef %4, i32 noundef %5) #6, !dbg !815
  br i1 %call6, label %do.body, label %do.end, !dbg !812, !llvm.loop !816

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr %ret, align 8, !dbg !818
  %and7 = and i64 %6, 9223372036854775807, !dbg !819
  store i64 %and7, ptr %retval, align 4, !dbg !820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !820

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !821
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #7, !dbg !821
  call void @llvm.lifetime.end.p0(i64 4, ptr %pvti) #7, !dbg !821
  %7 = load i64, ptr %retval, align 4, !dbg !821
  ret i64 %7, !dbg !821
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @pvclock_read_begin(ptr noundef %src) #2 align 16 !dbg !822 {
entry:
  %src.addr = alloca ptr, align 4
  %version = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !827, metadata !DIExpression()), !dbg !829
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #7, !dbg !830
  call void @llvm.dbg.declare(metadata ptr %version, metadata !828, metadata !DIExpression()), !dbg !831
  %0 = load ptr, ptr %src.addr, align 4, !dbg !832
  %version1 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %0, i32 0, i32 0, !dbg !833
  %1 = load i32, ptr %version1, align 1, !dbg !833
  %and = and i32 %1, -2, !dbg !834
  store i32 %and, ptr %version, align 4, !dbg !831
  br label %do.body, !dbg !835

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !836

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !838

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !838

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !836

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !840

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !842

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !842

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !840, !srcloc !844
  br label %do.cond7, !dbg !840

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !840

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !836

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !836

do.end10:                                         ; preds = %do.cond9
  %2 = load i32, ptr %version, align 4, !dbg !845
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #7, !dbg !846
  ret i32 %2, !dbg !847
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i64 @__pvclock_read_cycles(ptr noundef %src, i64 noundef %tsc) #2 align 16 !dbg !848 {
entry:
  %src.addr = alloca ptr, align 4
  %tsc.addr = alloca i64, align 8
  %delta = alloca i64, align 8
  %offset = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !852, metadata !DIExpression()), !dbg !856
  store i64 %tsc, ptr %tsc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsc.addr, metadata !853, metadata !DIExpression()), !dbg !857
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #7, !dbg !858
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !854, metadata !DIExpression()), !dbg !859
  %0 = load i64, ptr %tsc.addr, align 8, !dbg !860
  %1 = load ptr, ptr %src.addr, align 4, !dbg !861
  %tsc_timestamp = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %1, i32 0, i32 2, !dbg !862
  %2 = load i64, ptr %tsc_timestamp, align 1, !dbg !862
  %sub = sub i64 %0, %2, !dbg !863
  store i64 %sub, ptr %delta, align 8, !dbg !859
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #7, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !855, metadata !DIExpression()), !dbg !865
  %3 = load i64, ptr %delta, align 8, !dbg !866
  %4 = load ptr, ptr %src.addr, align 4, !dbg !867
  %tsc_to_system_mul = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %4, i32 0, i32 4, !dbg !868
  %5 = load i32, ptr %tsc_to_system_mul, align 1, !dbg !868
  %6 = load ptr, ptr %src.addr, align 4, !dbg !869
  %tsc_shift = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %6, i32 0, i32 5, !dbg !870
  %7 = load i8, ptr %tsc_shift, align 1, !dbg !870
  %conv = sext i8 %7 to i32, !dbg !869
  %call = call i64 @pvclock_scale_delta(i64 noundef %3, i32 noundef %5, i32 noundef %conv) #6, !dbg !871
  store i64 %call, ptr %offset, align 8, !dbg !865
  %8 = load ptr, ptr %src.addr, align 4, !dbg !872
  %system_time = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %8, i32 0, i32 3, !dbg !873
  %9 = load i64, ptr %system_time, align 1, !dbg !873
  %10 = load i64, ptr %offset, align 8, !dbg !874
  %add = add i64 %9, %10, !dbg !875
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #7, !dbg !876
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #7, !dbg !876
  ret i64 %add, !dbg !877
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal zeroext i1 @pvclock_read_retry(ptr noundef %src, i32 noundef %version) #2 align 16 !dbg !878 {
entry:
  %src.addr = alloca ptr, align 4
  %version.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !882, metadata !DIExpression()), !dbg !884
  store i32 %version, ptr %version.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %version.addr, metadata !883, metadata !DIExpression()), !dbg !885
  br label %do.body, !dbg !886

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !887

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !889

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !887

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !891

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !893

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !891, !srcloc !895
  br label %do.end5, !dbg !891

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !887

do.end6:                                          ; preds = %do.end5
  %0 = load i32, ptr %version.addr, align 4, !dbg !896
  %1 = load ptr, ptr %src.addr, align 4, !dbg !896
  %version7 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %1, i32 0, i32 0, !dbg !896
  %2 = load i32, ptr %version7, align 1, !dbg !896
  %cmp = icmp ne i32 %0, %2, !dbg !896
  %lnot = xor i1 %cmp, true, !dbg !896
  %lnot8 = xor i1 %lnot, true, !dbg !896
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !896
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !896
  %tobool = icmp ne i32 %expval, 0, !dbg !896
  ret i1 %tobool, !dbg !897
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i64 @pvclock_scale_delta(i64 noundef %delta, i32 noundef %mul_frac, i32 noundef %shift) #2 align 16 !dbg !898 {
entry:
  %delta.addr = alloca i64, align 8
  %mul_frac.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  %product = alloca i64, align 8
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store i64 %delta, ptr %delta.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delta.addr, metadata !902, metadata !DIExpression()), !dbg !908
  store i32 %mul_frac, ptr %mul_frac.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mul_frac.addr, metadata !903, metadata !DIExpression()), !dbg !909
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !904, metadata !DIExpression()), !dbg !910
  call void @llvm.lifetime.start.p0(i64 8, ptr %product) #7, !dbg !911
  call void @llvm.dbg.declare(metadata ptr %product, metadata !905, metadata !DIExpression()), !dbg !912
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp1) #7, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !906, metadata !DIExpression()), !dbg !914
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp2) #7, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %tmp2, metadata !907, metadata !DIExpression()), !dbg !915
  %0 = load i32, ptr %shift.addr, align 4, !dbg !916
  %cmp = icmp slt i32 %0, 0, !dbg !918
  br i1 %cmp, label %if.then, label %if.else, !dbg !919

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %shift.addr, align 4, !dbg !920
  %sub = sub i32 0, %1, !dbg !921
  %2 = load i64, ptr %delta.addr, align 8, !dbg !922
  %sh_prom = zext i32 %sub to i64, !dbg !922
  %shr = lshr i64 %2, %sh_prom, !dbg !922
  store i64 %shr, ptr %delta.addr, align 8, !dbg !922
  br label %if.end, !dbg !923

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %shift.addr, align 4, !dbg !924
  %4 = load i64, ptr %delta.addr, align 8, !dbg !925
  %sh_prom1 = zext i32 %3 to i64, !dbg !925
  %shl = shl i64 %4, %sh_prom1, !dbg !925
  store i64 %shl, ptr %delta.addr, align 8, !dbg !925
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %delta.addr, align 8, !dbg !926
  %conv = trunc i64 %5 to i32, !dbg !927
  %6 = load i64, ptr %delta.addr, align 8, !dbg !928
  %shr2 = lshr i64 %6, 32, !dbg !929
  %conv3 = trunc i64 %shr2 to i32, !dbg !930
  %7 = load i32, ptr %mul_frac.addr, align 4, !dbg !931
  %8 = call { i64, i32, i32 } asm "mul  $5       ; mov  $4,%eax ; mov  %edx,$4 ; mul  $5       ; xor  $5,$5    ; add  $4,%eax ; adc  $5,%edx ; ", "=A,=r,=r,{ax},1,2,~{dirflag},~{fpsr},~{flags}"(i32 %conv, i32 %conv3, i32 %7) #8, !dbg !932, !srcloc !933
  %asmresult = extractvalue { i64, i32, i32 } %8, 0, !dbg !932
  %asmresult4 = extractvalue { i64, i32, i32 } %8, 1, !dbg !932
  %asmresult5 = extractvalue { i64, i32, i32 } %8, 2, !dbg !932
  store i64 %asmresult, ptr %product, align 8, !dbg !932
  store i32 %asmresult4, ptr %tmp1, align 4, !dbg !932
  store i32 %asmresult5, ptr %tmp2, align 4, !dbg !932
  %9 = load i64, ptr %product, align 8, !dbg !934
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp2) #7, !dbg !935
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp1) #7, !dbg !935
  call void @llvm.lifetime.end.p0(i64 8, ptr %product) #7, !dbg !935
  ret i64 %9, !dbg !936
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_time_data(ptr noundef %vd, ptr noundef %time) #0 align 16 !dbg !937 {
entry:
  %vd.addr = alloca ptr, align 4
  %time.addr = alloca ptr, align 4
  %t = alloca i32, align 4
  %tmp = alloca i64, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !941, metadata !DIExpression()), !dbg !944
  store ptr %time, ptr %time.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !942, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #7, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %t, metadata !943, metadata !DIExpression()), !dbg !947
  %0 = load ptr, ptr %vd.addr, align 4, !dbg !948
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 1, !dbg !950
  %1 = load i32, ptr %clock_mode, align 4, !dbg !950
  %cmp = icmp eq i32 %1, 2147483647, !dbg !951
  br i1 %cmp, label %if.then, label %if.end, !dbg !952

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vd.addr, align 4, !dbg !953
  %call = call ptr @__arch_get_timens_vdso_data(ptr noundef %2) #6, !dbg !954
  store ptr %call, ptr %vd.addr, align 4, !dbg !955
  br label %if.end, !dbg !956

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !957

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !959

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !959

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %vd.addr, align 4, !dbg !957
  %arrayidx = getelementptr %struct.vdso_data, ptr %3, i32 0, !dbg !957
  %4 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx, i32 0, i32 6, !dbg !957
  %arrayidx1 = getelementptr [12 x %struct.vdso_timestamp], ptr %4, i32 0, i32 0, !dbg !957
  %sec = getelementptr inbounds %struct.vdso_timestamp, ptr %arrayidx1, i32 0, i32 0, !dbg !957
  %5 = load volatile i64, ptr %sec, align 4, !dbg !957
  store i64 %5, ptr %tmp, align 4, !dbg !959
  %6 = load i64, ptr %tmp, align 4, !dbg !957
  %conv = trunc i64 %6 to i32, !dbg !961
  store i32 %conv, ptr %t, align 4, !dbg !962
  %7 = load ptr, ptr %time.addr, align 4, !dbg !963
  %tobool = icmp ne ptr %7, null, !dbg !963
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !965

if.then2:                                         ; preds = %do.end
  %8 = load i32, ptr %t, align 4, !dbg !966
  %9 = load ptr, ptr %time.addr, align 4, !dbg !967
  store i32 %8, ptr %9, align 4, !dbg !968
  br label %if.end3, !dbg !969

if.end3:                                          ; preds = %if.then2, %do.end
  %10 = load i32, ptr %t, align 4, !dbg !970
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #7, !dbg !971
  ret i32 %10, !dbg !972
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_clock_gettime32_data(ptr noundef %vd, i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !973 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 4
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  %ts = alloca %struct.__kernel_timespec, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !977, metadata !DIExpression()), !dbg !982
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !978, metadata !DIExpression()), !dbg !983
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !979, metadata !DIExpression()), !dbg !984
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #7, !dbg !985
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !980, metadata !DIExpression()), !dbg !986
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !987
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !981, metadata !DIExpression()), !dbg !988
  %0 = load ptr, ptr %vd.addr, align 4, !dbg !989
  %1 = load i32, ptr %clock.addr, align 4, !dbg !990
  %call = call i32 @__cvdso_clock_gettime_common(ptr noundef %0, i32 noundef %1, ptr noundef %ts) #6, !dbg !991
  store i32 %call, ptr %ret, align 4, !dbg !992
  %2 = load i32, ptr %ret, align 4, !dbg !993
  %tobool = icmp ne i32 %2, 0, !dbg !993
  %lnot = xor i1 %tobool, true, !dbg !993
  %lnot1 = xor i1 %lnot, true, !dbg !993
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !993
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !993
  %tobool2 = icmp ne i32 %expval, 0, !dbg !993
  br i1 %tobool2, label %if.then, label %if.end, !dbg !995

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %clock.addr, align 4, !dbg !996
  %4 = load ptr, ptr %res.addr, align 4, !dbg !997
  %call3 = call i32 @clock_gettime32_fallback(i32 noundef %3, ptr noundef %4) #6, !dbg !998
  store i32 %call3, ptr %retval, align 4, !dbg !999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !999

if.end:                                           ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 0, !dbg !1000
  %5 = load i64, ptr %tv_sec, align 4, !dbg !1000
  %conv = trunc i64 %5 to i32, !dbg !1001
  %6 = load ptr, ptr %res.addr, align 4, !dbg !1002
  %tv_sec4 = getelementptr inbounds %struct.old_timespec32, ptr %6, i32 0, i32 0, !dbg !1003
  store i32 %conv, ptr %tv_sec4, align 4, !dbg !1004
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 1, !dbg !1005
  %7 = load i64, ptr %tv_nsec, align 4, !dbg !1005
  %conv5 = trunc i64 %7 to i32, !dbg !1006
  %8 = load ptr, ptr %res.addr, align 4, !dbg !1007
  %tv_nsec6 = getelementptr inbounds %struct.old_timespec32, ptr %8, i32 0, i32 1, !dbg !1008
  store i32 %conv5, ptr %tv_nsec6, align 4, !dbg !1009
  %9 = load i32, ptr %ret, align 4, !dbg !1010
  store i32 %9, ptr %retval, align 4, !dbg !1011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1011

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1012
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #7, !dbg !1012
  %10 = load i32, ptr %retval, align 4, !dbg !1012
  ret i32 %10, !dbg !1012
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_clock_gettime_common(ptr noundef %vd, i32 noundef %clock, ptr noundef %ts) #2 align 16 !dbg !1013 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 4
  %clock.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 4
  %msk = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !1015, metadata !DIExpression()), !dbg !1019
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !1016, metadata !DIExpression()), !dbg !1020
  store ptr %ts, ptr %ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !1017, metadata !DIExpression()), !dbg !1021
  call void @llvm.lifetime.start.p0(i64 4, ptr %msk) #7, !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %msk, metadata !1018, metadata !DIExpression()), !dbg !1023
  %0 = load i32, ptr %clock.addr, align 4, !dbg !1024
  %cmp = icmp uge i32 %0, 16, !dbg !1024
  %lnot = xor i1 %cmp, true, !dbg !1024
  %lnot1 = xor i1 %lnot, true, !dbg !1024
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1024
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !1024
  %tobool = icmp ne i32 %expval, 0, !dbg !1024
  br i1 %tobool, label %if.then, label %if.end, !dbg !1026

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1027

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %clock.addr, align 4, !dbg !1028
  %shl = shl i32 1, %1, !dbg !1029
  store i32 %shl, ptr %msk, align 4, !dbg !1030
  %2 = load i32, ptr %msk, align 4, !dbg !1031
  %and = and i32 %2, 2179, !dbg !1031
  %tobool2 = icmp ne i32 %and, 0, !dbg !1031
  %lnot3 = xor i1 %tobool2, true, !dbg !1031
  %lnot5 = xor i1 %lnot3, true, !dbg !1031
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1031
  %expval7 = call i32 @llvm.expect.i32(i32 %lnot.ext6, i32 1), !dbg !1031
  %tobool8 = icmp ne i32 %expval7, 0, !dbg !1031
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !1033

if.then9:                                         ; preds = %if.end
  %3 = load ptr, ptr %vd.addr, align 4, !dbg !1034
  %arrayidx = getelementptr %struct.vdso_data, ptr %3, i32 0, !dbg !1034
  store ptr %arrayidx, ptr %vd.addr, align 4, !dbg !1035
  br label %if.end22, !dbg !1036

if.else:                                          ; preds = %if.end
  %4 = load i32, ptr %msk, align 4, !dbg !1037
  %and10 = and i32 %4, 96, !dbg !1039
  %tobool11 = icmp ne i32 %and10, 0, !dbg !1039
  br i1 %tobool11, label %if.then12, label %if.else14, !dbg !1040

if.then12:                                        ; preds = %if.else
  %5 = load ptr, ptr %vd.addr, align 4, !dbg !1041
  %arrayidx13 = getelementptr %struct.vdso_data, ptr %5, i32 0, !dbg !1041
  %6 = load i32, ptr %clock.addr, align 4, !dbg !1042
  %7 = load ptr, ptr %ts.addr, align 4, !dbg !1043
  %call = call i32 @do_coarse(ptr noundef %arrayidx13, i32 noundef %6, ptr noundef %7) #6, !dbg !1044
  store i32 %call, ptr %retval, align 4, !dbg !1045
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1045

if.else14:                                        ; preds = %if.else
  %8 = load i32, ptr %msk, align 4, !dbg !1046
  %and15 = and i32 %8, 16, !dbg !1048
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1048
  br i1 %tobool16, label %if.then17, label %if.else19, !dbg !1049

if.then17:                                        ; preds = %if.else14
  %9 = load ptr, ptr %vd.addr, align 4, !dbg !1050
  %arrayidx18 = getelementptr %struct.vdso_data, ptr %9, i32 1, !dbg !1050
  store ptr %arrayidx18, ptr %vd.addr, align 4, !dbg !1051
  br label %if.end20, !dbg !1052

if.else19:                                        ; preds = %if.else14
  store i32 -1, ptr %retval, align 4, !dbg !1053
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1053

if.end20:                                         ; preds = %if.then17
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then9
  %10 = load ptr, ptr %vd.addr, align 4, !dbg !1054
  %11 = load i32, ptr %clock.addr, align 4, !dbg !1055
  %12 = load ptr, ptr %ts.addr, align 4, !dbg !1056
  %call23 = call i32 @do_hres(ptr noundef %10, i32 noundef %11, ptr noundef %12) #6, !dbg !1057
  store i32 %call23, ptr %retval, align 4, !dbg !1058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1058

cleanup:                                          ; preds = %if.end22, %if.else19, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %msk) #7, !dbg !1059
  %13 = load i32, ptr %retval, align 4, !dbg !1059
  ret i32 %13, !dbg !1059
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @clock_gettime32_fallback(i32 noundef %_clkid, ptr noundef %_ts) #2 align 16 !dbg !1060 {
entry:
  %_clkid.addr = alloca i32, align 4
  %_ts.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  store i32 %_clkid, ptr %_clkid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_clkid.addr, metadata !1064, metadata !DIExpression()), !dbg !1067
  store ptr %_ts, ptr %_ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_ts.addr, metadata !1065, metadata !DIExpression()), !dbg !1068
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1066, metadata !DIExpression()), !dbg !1070
  %0 = load ptr, ptr %_ts.addr, align 4, !dbg !1071
  %1 = load i32, ptr %_clkid.addr, align 4, !dbg !1072
  %2 = load ptr, ptr %_ts.addr, align 4, !dbg !1073
  %3 = call i32 asm "mov %ebx, %edx \0Amov $3, %ebx \0Acall __kernel_vsyscall \0Amov %edx, %ebx \0A", "={ax},=*m,0,imr,{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.old_timespec32) %0, i32 265, i32 %1, ptr %2) #7, !dbg !1074, !srcloc !1075
  store i32 %3, ptr %ret, align 4, !dbg !1074
  %4 = load i32, ptr %ret, align 4, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1077
  ret i32 %4, !dbg !1078
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @do_coarse(ptr noundef %vd, i32 noundef %clk, ptr noundef %ts) #2 align 16 !dbg !1079 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 4
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 4
  %vdso_ts = alloca ptr, align 4
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !1081, metadata !DIExpression()), !dbg !1086
  store i32 %clk, ptr %clk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !1082, metadata !DIExpression()), !dbg !1087
  store ptr %ts, ptr %ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !1083, metadata !DIExpression()), !dbg !1088
  call void @llvm.lifetime.start.p0(i64 4, ptr %vdso_ts) #7, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !1084, metadata !DIExpression()), !dbg !1090
  %0 = load ptr, ptr %vd.addr, align 4, !dbg !1091
  %1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 6, !dbg !1092
  %2 = load i32, ptr %clk.addr, align 4, !dbg !1093
  %arrayidx = getelementptr [12 x %struct.vdso_timestamp], ptr %1, i32 0, i32 %2, !dbg !1091
  store ptr %arrayidx, ptr %vdso_ts, align 4, !dbg !1090
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1085, metadata !DIExpression()), !dbg !1095
  br label %do.body, !dbg !1096

do.body:                                          ; preds = %do.cond15, %entry
  br label %while.cond, !dbg !1097

while.cond:                                       ; preds = %if.end, %do.body
  br label %do.body1, !dbg !1099

do.body1:                                         ; preds = %while.cond
  br label %do.cond, !dbg !1101

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1101

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %vd.addr, align 4, !dbg !1099
  %seq2 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 0, !dbg !1099
  %4 = load volatile i32, ptr %seq2, align 4, !dbg !1099
  store i32 %4, ptr %tmp, align 4, !dbg !1101
  %5 = load i32, ptr %tmp, align 4, !dbg !1099
  store i32 %5, ptr %seq, align 4, !dbg !1103
  %and = and i32 %5, 1, !dbg !1104
  %tobool = icmp ne i32 %and, 0, !dbg !1097
  br i1 %tobool, label %while.body, label %while.end, !dbg !1097

while.body:                                       ; preds = %do.end
  %6 = load ptr, ptr %vd.addr, align 4, !dbg !1105
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %6, i32 0, i32 1, !dbg !1108
  %7 = load i32, ptr %clock_mode, align 4, !dbg !1108
  %cmp = icmp eq i32 %7, 2147483647, !dbg !1109
  br i1 %cmp, label %if.then, label %if.end, !dbg !1110

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %vd.addr, align 4, !dbg !1111
  %9 = load i32, ptr %clk.addr, align 4, !dbg !1112
  %10 = load ptr, ptr %ts.addr, align 4, !dbg !1113
  %call = call i32 @do_coarse_timens(ptr noundef %8, i32 noundef %9, ptr noundef %10) #6, !dbg !1114
  store i32 %call, ptr %retval, align 4, !dbg !1115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1115

if.end:                                           ; preds = %while.body
  call void @cpu_relax() #6, !dbg !1116
  br label %while.cond, !dbg !1097, !llvm.loop !1117

while.end:                                        ; preds = %do.end
  br label %do.body3, !dbg !1119

do.body3:                                         ; preds = %while.end
  br label %do.body4, !dbg !1120

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !1122

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1122

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !1120

do.body7:                                         ; preds = %do.end6
  br label %do.body8, !dbg !1124

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !1126

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1126

do.end10:                                         ; preds = %do.cond9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1124, !srcloc !1128
  br label %do.cond11, !dbg !1124

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !1124

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !1120

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !1120

do.end14:                                         ; preds = %do.cond13
  %11 = load ptr, ptr %vdso_ts, align 4, !dbg !1129
  %sec = getelementptr inbounds %struct.vdso_timestamp, ptr %11, i32 0, i32 0, !dbg !1130
  %12 = load i64, ptr %sec, align 4, !dbg !1130
  %13 = load ptr, ptr %ts.addr, align 4, !dbg !1131
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %13, i32 0, i32 0, !dbg !1132
  store i64 %12, ptr %tv_sec, align 4, !dbg !1133
  %14 = load ptr, ptr %vdso_ts, align 4, !dbg !1134
  %nsec = getelementptr inbounds %struct.vdso_timestamp, ptr %14, i32 0, i32 1, !dbg !1135
  %15 = load i64, ptr %nsec, align 4, !dbg !1135
  %16 = load ptr, ptr %ts.addr, align 4, !dbg !1136
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %16, i32 0, i32 1, !dbg !1137
  store i64 %15, ptr %tv_nsec, align 4, !dbg !1138
  br label %do.cond15, !dbg !1139

do.cond15:                                        ; preds = %do.end14
  %17 = load ptr, ptr %vd.addr, align 4, !dbg !1140
  %18 = load i32, ptr %seq, align 4, !dbg !1140
  %call16 = call i32 @vdso_read_retry(ptr noundef %17, i32 noundef %18) #6, !dbg !1140
  %tobool17 = icmp ne i32 %call16, 0, !dbg !1140
  %lnot = xor i1 %tobool17, true, !dbg !1140
  %lnot18 = xor i1 %lnot, true, !dbg !1140
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !1140
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !1140
  %tobool19 = icmp ne i32 %expval, 0, !dbg !1139
  br i1 %tobool19, label %do.body, label %do.end20, !dbg !1139, !llvm.loop !1141

do.end20:                                         ; preds = %do.cond15
  store i32 0, ptr %retval, align 4, !dbg !1143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1143

cleanup:                                          ; preds = %do.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 4, ptr %vdso_ts) #7, !dbg !1144
  %19 = load i32, ptr %retval, align 4, !dbg !1144
  ret i32 %19, !dbg !1144
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @do_coarse_timens(ptr noundef %vdns, i32 noundef %clk, ptr noundef %ts) #2 align 16 !dbg !1145 {
entry:
  %vdns.addr = alloca ptr, align 4
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 4
  %vd = alloca ptr, align 4
  %vdso_ts = alloca ptr, align 4
  %offs = alloca ptr, align 4
  %nsec = alloca i64, align 8
  %sec = alloca i64, align 8
  %seq = alloca i32, align 4
  store ptr %vdns, ptr %vdns.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vdns.addr, metadata !1147, metadata !DIExpression()), !dbg !1156
  store i32 %clk, ptr %clk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !1148, metadata !DIExpression()), !dbg !1157
  store ptr %ts, ptr %ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !1149, metadata !DIExpression()), !dbg !1158
  call void @llvm.lifetime.start.p0(i64 4, ptr %vd) #7, !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !1150, metadata !DIExpression()), !dbg !1160
  %0 = load ptr, ptr %vdns.addr, align 4, !dbg !1161
  %call = call ptr @__arch_get_timens_vdso_data(ptr noundef %0) #6, !dbg !1162
  store ptr %call, ptr %vd, align 4, !dbg !1160
  call void @llvm.lifetime.start.p0(i64 4, ptr %vdso_ts) #7, !dbg !1163
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !1151, metadata !DIExpression()), !dbg !1164
  %1 = load ptr, ptr %vd, align 4, !dbg !1165
  %2 = getelementptr inbounds %struct.vdso_data, ptr %1, i32 0, i32 6, !dbg !1166
  %3 = load i32, ptr %clk.addr, align 4, !dbg !1167
  %arrayidx = getelementptr [12 x %struct.vdso_timestamp], ptr %2, i32 0, i32 %3, !dbg !1165
  store ptr %arrayidx, ptr %vdso_ts, align 4, !dbg !1164
  call void @llvm.lifetime.start.p0(i64 4, ptr %offs) #7, !dbg !1168
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !1152, metadata !DIExpression()), !dbg !1169
  %4 = load ptr, ptr %vdns.addr, align 4, !dbg !1170
  %5 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 6, !dbg !1171
  %6 = load i32, ptr %clk.addr, align 4, !dbg !1172
  %arrayidx1 = getelementptr [12 x %struct.timens_offset], ptr %5, i32 0, i32 %6, !dbg !1170
  store ptr %arrayidx1, ptr %offs, align 4, !dbg !1169
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsec) #7, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %nsec, metadata !1153, metadata !DIExpression()), !dbg !1174
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #7, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1154, metadata !DIExpression()), !dbg !1176
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1155, metadata !DIExpression()), !dbg !1178
  br label %do.body, !dbg !1179

do.body:                                          ; preds = %do.cond, %entry
  %7 = load ptr, ptr %vd, align 4, !dbg !1180
  %call2 = call i32 @vdso_read_begin(ptr noundef %7) #6, !dbg !1182
  store i32 %call2, ptr %seq, align 4, !dbg !1183
  %8 = load ptr, ptr %vdso_ts, align 4, !dbg !1184
  %sec3 = getelementptr inbounds %struct.vdso_timestamp, ptr %8, i32 0, i32 0, !dbg !1185
  %9 = load i64, ptr %sec3, align 4, !dbg !1185
  store i64 %9, ptr %sec, align 8, !dbg !1186
  %10 = load ptr, ptr %vdso_ts, align 4, !dbg !1187
  %nsec4 = getelementptr inbounds %struct.vdso_timestamp, ptr %10, i32 0, i32 1, !dbg !1188
  %11 = load i64, ptr %nsec4, align 4, !dbg !1188
  store i64 %11, ptr %nsec, align 8, !dbg !1189
  br label %do.cond, !dbg !1190

do.cond:                                          ; preds = %do.body
  %12 = load ptr, ptr %vd, align 4, !dbg !1191
  %13 = load i32, ptr %seq, align 4, !dbg !1191
  %call5 = call i32 @vdso_read_retry(ptr noundef %12, i32 noundef %13) #6, !dbg !1191
  %tobool = icmp ne i32 %call5, 0, !dbg !1191
  %lnot = xor i1 %tobool, true, !dbg !1191
  %lnot6 = xor i1 %lnot, true, !dbg !1191
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !1191
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !1191
  %tobool7 = icmp ne i32 %expval, 0, !dbg !1190
  br i1 %tobool7, label %do.body, label %do.end, !dbg !1190, !llvm.loop !1192

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %offs, align 4, !dbg !1194
  %sec8 = getelementptr inbounds %struct.timens_offset, ptr %14, i32 0, i32 0, !dbg !1195
  %15 = load i64, ptr %sec8, align 4, !dbg !1195
  %16 = load i64, ptr %sec, align 8, !dbg !1196
  %add = add i64 %16, %15, !dbg !1196
  store i64 %add, ptr %sec, align 8, !dbg !1196
  %17 = load ptr, ptr %offs, align 4, !dbg !1197
  %nsec9 = getelementptr inbounds %struct.timens_offset, ptr %17, i32 0, i32 1, !dbg !1198
  %18 = load i64, ptr %nsec9, align 4, !dbg !1198
  %19 = load i64, ptr %nsec, align 8, !dbg !1199
  %add10 = add i64 %19, %18, !dbg !1199
  store i64 %add10, ptr %nsec, align 8, !dbg !1199
  %20 = load i64, ptr %sec, align 8, !dbg !1200
  %21 = load i64, ptr %nsec, align 8, !dbg !1201
  %call11 = call i32 @__iter_div_u64_rem(i64 noundef %21, i32 noundef 1000000000, ptr noundef %nsec) #6, !dbg !1202
  %conv = zext i32 %call11 to i64, !dbg !1202
  %add12 = add i64 %20, %conv, !dbg !1203
  %22 = load ptr, ptr %ts.addr, align 4, !dbg !1204
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %22, i32 0, i32 0, !dbg !1205
  store i64 %add12, ptr %tv_sec, align 4, !dbg !1206
  %23 = load i64, ptr %nsec, align 8, !dbg !1207
  %24 = load ptr, ptr %ts.addr, align 4, !dbg !1208
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %24, i32 0, i32 1, !dbg !1209
  store i64 %23, ptr %tv_nsec, align 4, !dbg !1210
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #7, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsec) #7, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 4, ptr %offs) #7, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 4, ptr %vdso_ts) #7, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 4, ptr %vd) #7, !dbg !1211
  ret i32 0, !dbg !1212
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_clock_gettime_data(ptr noundef %vd, i32 noundef %clock, ptr noundef %ts) #0 align 16 !dbg !1213 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 4
  %clock.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !1215, metadata !DIExpression()), !dbg !1219
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !1216, metadata !DIExpression()), !dbg !1220
  store ptr %ts, ptr %ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !1217, metadata !DIExpression()), !dbg !1221
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1218, metadata !DIExpression()), !dbg !1223
  %0 = load ptr, ptr %vd.addr, align 4, !dbg !1224
  %1 = load i32, ptr %clock.addr, align 4, !dbg !1225
  %2 = load ptr, ptr %ts.addr, align 4, !dbg !1226
  %call = call i32 @__cvdso_clock_gettime_common(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6, !dbg !1227
  store i32 %call, ptr %ret, align 4, !dbg !1223
  %3 = load i32, ptr %ret, align 4, !dbg !1228
  %tobool = icmp ne i32 %3, 0, !dbg !1228
  %lnot = xor i1 %tobool, true, !dbg !1228
  %lnot1 = xor i1 %lnot, true, !dbg !1228
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1228
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !1228
  %tobool2 = icmp ne i32 %expval, 0, !dbg !1228
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1230

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %clock.addr, align 4, !dbg !1231
  %5 = load ptr, ptr %ts.addr, align 4, !dbg !1232
  %call3 = call i32 @clock_gettime_fallback(i32 noundef %4, ptr noundef %5) #6, !dbg !1233
  store i32 %call3, ptr %retval, align 4, !dbg !1234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1234

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1235

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1236
  %6 = load i32, ptr %retval, align 4, !dbg !1236
  ret i32 %6, !dbg !1236
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @clock_gettime_fallback(i32 noundef %_clkid, ptr noundef %_ts) #2 align 16 !dbg !1237 {
entry:
  %_clkid.addr = alloca i32, align 4
  %_ts.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  store i32 %_clkid, ptr %_clkid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_clkid.addr, metadata !1241, metadata !DIExpression()), !dbg !1244
  store ptr %_ts, ptr %_ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_ts.addr, metadata !1242, metadata !DIExpression()), !dbg !1245
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1246
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1243, metadata !DIExpression()), !dbg !1247
  %0 = load ptr, ptr %_ts.addr, align 4, !dbg !1248
  %1 = load i32, ptr %_clkid.addr, align 4, !dbg !1249
  %2 = load ptr, ptr %_ts.addr, align 4, !dbg !1250
  %3 = call i32 asm "mov %ebx, %edx \0Amov $3, %ebx \0Acall __kernel_vsyscall \0Amov %edx, %ebx \0A", "={ax},=*m,0,imr,{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__kernel_timespec) %0, i32 403, i32 %1, ptr %2) #7, !dbg !1251, !srcloc !1252
  store i32 %3, ptr %ret, align 4, !dbg !1251
  %4 = load i32, ptr %ret, align 4, !dbg !1253
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1254
  ret i32 %4, !dbg !1255
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_clock_getres_time32_data(ptr noundef %vd, i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !1256 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 4
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  %ts = alloca %struct.__kernel_timespec, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !1258, metadata !DIExpression()), !dbg !1263
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !1259, metadata !DIExpression()), !dbg !1264
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !1260, metadata !DIExpression()), !dbg !1265
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #7, !dbg !1266
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !1261, metadata !DIExpression()), !dbg !1267
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1262, metadata !DIExpression()), !dbg !1269
  %0 = load ptr, ptr %vd.addr, align 4, !dbg !1270
  %1 = load i32, ptr %clock.addr, align 4, !dbg !1271
  %call = call i32 @__cvdso_clock_getres_common(ptr noundef %0, i32 noundef %1, ptr noundef %ts) #6, !dbg !1272
  store i32 %call, ptr %ret, align 4, !dbg !1273
  %2 = load i32, ptr %ret, align 4, !dbg !1274
  %tobool = icmp ne i32 %2, 0, !dbg !1274
  %lnot = xor i1 %tobool, true, !dbg !1274
  %lnot1 = xor i1 %lnot, true, !dbg !1274
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1274
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !1274
  %tobool2 = icmp ne i32 %expval, 0, !dbg !1274
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1276

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %clock.addr, align 4, !dbg !1277
  %4 = load ptr, ptr %res.addr, align 4, !dbg !1278
  %call3 = call i32 @clock_getres32_fallback(i32 noundef %3, ptr noundef %4) #6, !dbg !1279
  store i32 %call3, ptr %retval, align 4, !dbg !1280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1280

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %res.addr, align 4, !dbg !1281
  %tobool4 = icmp ne ptr %5, null, !dbg !1281
  %lnot5 = xor i1 %tobool4, true, !dbg !1281
  %lnot7 = xor i1 %lnot5, true, !dbg !1281
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !1281
  %expval9 = call i32 @llvm.expect.i32(i32 %lnot.ext8, i32 1), !dbg !1281
  %tobool10 = icmp ne i32 %expval9, 0, !dbg !1281
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !1283

if.then11:                                        ; preds = %if.end
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 0, !dbg !1284
  %6 = load i64, ptr %tv_sec, align 4, !dbg !1284
  %conv = trunc i64 %6 to i32, !dbg !1286
  %7 = load ptr, ptr %res.addr, align 4, !dbg !1287
  %tv_sec12 = getelementptr inbounds %struct.old_timespec32, ptr %7, i32 0, i32 0, !dbg !1288
  store i32 %conv, ptr %tv_sec12, align 4, !dbg !1289
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 1, !dbg !1290
  %8 = load i64, ptr %tv_nsec, align 4, !dbg !1290
  %conv13 = trunc i64 %8 to i32, !dbg !1291
  %9 = load ptr, ptr %res.addr, align 4, !dbg !1292
  %tv_nsec14 = getelementptr inbounds %struct.old_timespec32, ptr %9, i32 0, i32 1, !dbg !1293
  store i32 %conv13, ptr %tv_nsec14, align 4, !dbg !1294
  br label %if.end15, !dbg !1295

if.end15:                                         ; preds = %if.then11, %if.end
  %10 = load i32, ptr %ret, align 4, !dbg !1296
  store i32 %10, ptr %retval, align 4, !dbg !1297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1297

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1298
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #7, !dbg !1298
  %11 = load i32, ptr %retval, align 4, !dbg !1298
  ret i32 %11, !dbg !1298
}

; Function Attrs: noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @__cvdso_clock_getres_common(ptr noundef %vd, i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !1299 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 4
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  %msk = alloca i32, align 4
  %ns = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !1301, metadata !DIExpression()), !dbg !1306
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !1302, metadata !DIExpression()), !dbg !1307
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !1303, metadata !DIExpression()), !dbg !1308
  call void @llvm.lifetime.start.p0(i64 4, ptr %msk) #7, !dbg !1309
  call void @llvm.dbg.declare(metadata ptr %msk, metadata !1304, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #7, !dbg !1311
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !1305, metadata !DIExpression()), !dbg !1312
  %0 = load i32, ptr %clock.addr, align 4, !dbg !1313
  %cmp = icmp uge i32 %0, 16, !dbg !1313
  %lnot = xor i1 %cmp, true, !dbg !1313
  %lnot1 = xor i1 %lnot, true, !dbg !1313
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1313
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !1313
  %tobool = icmp ne i32 %expval, 0, !dbg !1313
  br i1 %tobool, label %if.then, label %if.end, !dbg !1315

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1316

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %vd.addr, align 4, !dbg !1317
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %1, i32 0, i32 1, !dbg !1319
  %2 = load i32, ptr %clock_mode, align 4, !dbg !1319
  %cmp2 = icmp eq i32 %2, 2147483647, !dbg !1320
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1321

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %vd.addr, align 4, !dbg !1322
  %call = call ptr @__arch_get_timens_vdso_data(ptr noundef %3) #6, !dbg !1323
  store ptr %call, ptr %vd.addr, align 4, !dbg !1324
  br label %if.end4, !dbg !1325

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i32, ptr %clock.addr, align 4, !dbg !1326
  %shl = shl i32 1, %4, !dbg !1327
  store i32 %shl, ptr %msk, align 4, !dbg !1328
  %5 = load i32, ptr %msk, align 4, !dbg !1329
  %and = and i32 %5, 2195, !dbg !1331
  %tobool5 = icmp ne i32 %and, 0, !dbg !1331
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1332

if.then6:                                         ; preds = %if.end4
  br label %do.body, !dbg !1333

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !1336

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1336

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %vd.addr, align 4, !dbg !1333
  %arrayidx = getelementptr %struct.vdso_data, ptr %6, i32 0, !dbg !1333
  %hrtimer_res = getelementptr inbounds %struct.vdso_data, ptr %arrayidx, i32 0, i32 9, !dbg !1333
  %7 = load volatile i32, ptr %hrtimer_res, align 4, !dbg !1333
  store i32 %7, ptr %tmp, align 4, !dbg !1336
  %8 = load i32, ptr %tmp, align 4, !dbg !1333
  %conv = zext i32 %8 to i64, !dbg !1338
  store i64 %conv, ptr %ns, align 8, !dbg !1339
  br label %if.end12, !dbg !1340

if.else:                                          ; preds = %if.end4
  %9 = load i32, ptr %msk, align 4, !dbg !1341
  %and7 = and i32 %9, 96, !dbg !1343
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1343
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !1344

if.then9:                                         ; preds = %if.else
  store i64 1000000, ptr %ns, align 8, !dbg !1345
  br label %if.end11, !dbg !1347

if.else10:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4, !dbg !1348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1348

if.end11:                                         ; preds = %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %do.end
  %10 = load ptr, ptr %res.addr, align 4, !dbg !1350
  %tobool13 = icmp ne ptr %10, null, !dbg !1350
  %lnot14 = xor i1 %tobool13, true, !dbg !1350
  %lnot16 = xor i1 %lnot14, true, !dbg !1350
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !1350
  %expval18 = call i32 @llvm.expect.i32(i32 %lnot.ext17, i32 1), !dbg !1350
  %tobool19 = icmp ne i32 %expval18, 0, !dbg !1350
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1352

if.then20:                                        ; preds = %if.end12
  %11 = load ptr, ptr %res.addr, align 4, !dbg !1353
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %11, i32 0, i32 0, !dbg !1355
  store i64 0, ptr %tv_sec, align 4, !dbg !1356
  %12 = load i64, ptr %ns, align 8, !dbg !1357
  %13 = load ptr, ptr %res.addr, align 4, !dbg !1358
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %13, i32 0, i32 1, !dbg !1359
  store i64 %12, ptr %tv_nsec, align 4, !dbg !1360
  br label %if.end21, !dbg !1361

if.end21:                                         ; preds = %if.then20, %if.end12
  store i32 0, ptr %retval, align 4, !dbg !1362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1362

cleanup:                                          ; preds = %if.end21, %if.else10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #7, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 4, ptr %msk) #7, !dbg !1363
  %14 = load i32, ptr %retval, align 4, !dbg !1363
  ret i32 %14, !dbg !1363
}

; Function Attrs: alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid
define internal i32 @clock_getres32_fallback(i32 noundef %_clkid, ptr noundef %_ts) #2 align 16 !dbg !1364 {
entry:
  %_clkid.addr = alloca i32, align 4
  %_ts.addr = alloca ptr, align 4
  %ret = alloca i32, align 4
  store i32 %_clkid, ptr %_clkid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_clkid.addr, metadata !1366, metadata !DIExpression()), !dbg !1369
  store ptr %_ts, ptr %_ts.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_ts.addr, metadata !1367, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1368, metadata !DIExpression()), !dbg !1372
  %0 = load ptr, ptr %_ts.addr, align 4, !dbg !1373
  %1 = load i32, ptr %_clkid.addr, align 4, !dbg !1374
  %2 = load ptr, ptr %_ts.addr, align 4, !dbg !1375
  %3 = call i32 asm "mov %ebx, %edx \0Amov $3, %ebx \0Acall __kernel_vsyscall \0Amov %edx, %ebx \0A", "={ax},=*m,0,imr,{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.old_timespec32) %0, i32 266, i32 %1, ptr %2) #7, !dbg !1376, !srcloc !1377
  store i32 %3, ptr %ret, align 4, !dbg !1376
  %4 = load i32, ptr %ret, align 4, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1379
  ret i32 %4, !dbg !1380
}

attributes #0 = { noimplicitfloat noredzone nounwind null_pointer_is_valid "frame-pointer"="all" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline noimplicitfloat noredzone nounwind null_pointer_is_valid "frame-pointer"="all" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint noimplicitfloat noredzone nounwind null_pointer_is_valid "frame-pointer"="all" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i686" "target-features"="+cmov,+cx8,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noimplicitfloat noredzone }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/entry/vdso/vdso32/.vclock_gettime.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -Wno-sign-compare -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -m32 -msoft-float -mregparm=0 -fpic -fno-stack-protector -foptimize-sibling-calls -fno-omit-frame-pointer -D DISABLE_BRANCH_PROFILING -mretpoline -D KBUILD_MODFILE=\22arch/x86/entry/vdso/vclock_gettime\22 -D KBUILD_BASENAME=\22vclock_gettime\22 -D KBUILD_MODNAME=\22vclock_gettime\22 -D __KBUILD_MODNAME=kmod_vclock_gettime -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/entry/vdso/vdso32/vclock_gettime.ll arch/x86/entry/vdso/vdso32/vclock_gettime.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/entry/vdso/vdso32/vclock_gettime.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "038d3132cc7e8b5228fed37a318e4bfa")
!2 = !{!3, !13}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !4, line: 11, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5c94bac8b1931d6fab42a415ede12b1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0)
!8 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1)
!9 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2)
!10 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3)
!11 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4)
!12 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !5, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0)
!17 = !DIEnumerator(name: "true", value: 1)
!18 = !{!19, !20, !24, !27, !30, !33}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !5)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !29)
!29 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !21, line: 22, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !23, line: 30, baseType: !32)
!32 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!36 = !{i32 1, !"NumRegisterParameters", i32 0}
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 8, !"cf-protection-branch", i32 1}
!41 = !{i32 8, !"PIC Level", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{i32 1, !"override-stack-alignment", i32 8}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "__vdso_gettimeofday", scope: !46, file: !46, line: 20, type: !47, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!46 = !DIFile(filename: "arch/x86/entry/vdso/vdso32/../vclock_gettime.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a96c9f89913d9bae16ddc52a6f774863")
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !50, !59}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_old_timeval", file: !52, line: 25, size: 64, elements: !53)
!52 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!53 = !{!54, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !51, file: !52, line: 26, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !56, line: 15, baseType: !57)
!56 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!57 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !51, file: !52, line: 27, baseType: !55, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !61, line: 33, size: 64, elements: !62)
!61 = !DIFile(filename: "./include/uapi/linux/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29d85d53923887a6837976761c3c5189")
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !60, file: !61, line: 34, baseType: !49, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !60, file: !61, line: 35, baseType: !49, size: 32, offset: 32)
!65 = !{!66, !67}
!66 = !DILocalVariable(name: "tv", arg: 1, scope: !45, file: !46, line: 20, type: !50)
!67 = !DILocalVariable(name: "tz", arg: 2, scope: !45, file: !46, line: 20, type: !59)
!68 = !DILocation(line: 20, column: 54, scope: !45)
!69 = !DILocation(line: 20, column: 75, scope: !45)
!70 = !DILocation(line: 22, column: 30, scope: !45)
!71 = !DILocation(line: 22, column: 34, scope: !45)
!72 = !DILocation(line: 22, column: 9, scope: !45)
!73 = !DILocation(line: 22, column: 2, scope: !45)
!74 = distinct !DISubprogram(name: "__cvdso_gettimeofday", scope: !75, file: !75, line: 326, type: !47, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!75 = !DIFile(filename: "arch/x86/entry/vdso/vdso32/../../../../../lib/vdso/gettimeofday.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31c4ce4e53df0c79acd3e891a41828f0")
!76 = !{!77, !78}
!77 = !DILocalVariable(name: "tv", arg: 1, scope: !74, file: !75, line: 326, type: !50)
!78 = !DILocalVariable(name: "tz", arg: 2, scope: !74, file: !75, line: 326, type: !59)
!79 = !DILocation(line: 326, column: 51, scope: !74)
!80 = !DILocation(line: 326, column: 72, scope: !74)
!81 = !DILocation(line: 328, column: 35, scope: !74)
!82 = !DILocation(line: 328, column: 59, scope: !74)
!83 = !DILocation(line: 328, column: 63, scope: !74)
!84 = !DILocation(line: 328, column: 9, scope: !74)
!85 = !DILocation(line: 328, column: 2, scope: !74)
!86 = distinct !DISubprogram(name: "__vdso_time", scope: !46, file: !46, line: 28, type: !87, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_old_time_t", file: !56, line: 89, baseType: !55)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!91 = !{!92}
!92 = !DILocalVariable(name: "t", arg: 1, scope: !86, file: !46, line: 28, type: !90)
!93 = !DILocation(line: 28, column: 54, scope: !86)
!94 = !DILocation(line: 30, column: 22, scope: !86)
!95 = !DILocation(line: 30, column: 9, scope: !86)
!96 = !DILocation(line: 30, column: 2, scope: !86)
!97 = distinct !DISubprogram(name: "__cvdso_time", scope: !75, file: !75, line: 349, type: !87, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!98 = !{!99}
!99 = !DILocalVariable(name: "time", arg: 1, scope: !97, file: !75, line: 349, type: !90)
!100 = !DILocation(line: 349, column: 77, scope: !97)
!101 = !DILocation(line: 351, column: 27, scope: !97)
!102 = !DILocation(line: 351, column: 51, scope: !97)
!103 = !DILocation(line: 351, column: 9, scope: !97)
!104 = !DILocation(line: 351, column: 2, scope: !97)
!105 = distinct !DISubprogram(name: "__vdso_clock_gettime", scope: !46, file: !46, line: 62, type: !106, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!106 = !DISubroutineType(types: !107)
!107 = !{!49, !108, !111}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !109, line: 32, baseType: !110)
!109 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !56, line: 96, baseType: !49)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !113, line: 7, size: 64, elements: !114)
!113 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!114 = !{!115, !119}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !112, file: !113, line: 8, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !113, line: 5, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !21, line: 20, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !23, line: 26, baseType: !49)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !112, file: !113, line: 9, baseType: !117, size: 32, offset: 32)
!120 = !{!121, !122}
!121 = !DILocalVariable(name: "clock", arg: 1, scope: !105, file: !46, line: 62, type: !108)
!122 = !DILocalVariable(name: "ts", arg: 2, scope: !105, file: !46, line: 62, type: !111)
!123 = !DILocation(line: 62, column: 36, scope: !105)
!124 = !DILocation(line: 62, column: 66, scope: !105)
!125 = !DILocation(line: 64, column: 33, scope: !105)
!126 = !DILocation(line: 64, column: 40, scope: !105)
!127 = !DILocation(line: 64, column: 9, scope: !105)
!128 = !DILocation(line: 64, column: 2, scope: !105)
!129 = distinct !DISubprogram(name: "__cvdso_clock_gettime32", scope: !75, file: !75, line: 292, type: !106, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!130 = !{!131, !132}
!131 = !DILocalVariable(name: "clock", arg: 1, scope: !129, file: !75, line: 292, type: !108)
!132 = !DILocalVariable(name: "res", arg: 2, scope: !129, file: !75, line: 292, type: !111)
!133 = !DILocation(line: 292, column: 35, scope: !129)
!134 = !DILocation(line: 292, column: 65, scope: !129)
!135 = !DILocation(line: 294, column: 38, scope: !129)
!136 = !DILocation(line: 294, column: 62, scope: !129)
!137 = !DILocation(line: 294, column: 69, scope: !129)
!138 = !DILocation(line: 294, column: 9, scope: !129)
!139 = !DILocation(line: 294, column: 2, scope: !129)
!140 = distinct !DISubprogram(name: "__vdso_clock_gettime64", scope: !46, file: !46, line: 70, type: !141, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!141 = !DISubroutineType(types: !142)
!142 = !{!49, !108, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !52, line: 7, size: 128, elements: !145)
!145 = !{!146, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !144, file: !52, line: 8, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !56, line: 93, baseType: !32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !144, file: !52, line: 9, baseType: !32, size: 64, offset: 64)
!149 = !{!150, !151}
!150 = !DILocalVariable(name: "clock", arg: 1, scope: !140, file: !46, line: 70, type: !108)
!151 = !DILocalVariable(name: "ts", arg: 2, scope: !140, file: !46, line: 70, type: !143)
!152 = !DILocation(line: 70, column: 38, scope: !140)
!153 = !DILocation(line: 70, column: 71, scope: !140)
!154 = !DILocation(line: 72, column: 31, scope: !140)
!155 = !DILocation(line: 72, column: 38, scope: !140)
!156 = !DILocation(line: 72, column: 9, scope: !140)
!157 = !DILocation(line: 72, column: 2, scope: !140)
!158 = distinct !DISubprogram(name: "__cvdso_clock_gettime", scope: !75, file: !75, line: 266, type: !141, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !159)
!159 = !{!160, !161}
!160 = !DILocalVariable(name: "clock", arg: 1, scope: !158, file: !75, line: 266, type: !108)
!161 = !DILocalVariable(name: "ts", arg: 2, scope: !158, file: !75, line: 266, type: !143)
!162 = !DILocation(line: 266, column: 33, scope: !158)
!163 = !DILocation(line: 266, column: 66, scope: !158)
!164 = !DILocation(line: 268, column: 36, scope: !158)
!165 = !DILocation(line: 268, column: 60, scope: !158)
!166 = !DILocation(line: 268, column: 67, scope: !158)
!167 = !DILocation(line: 268, column: 9, scope: !158)
!168 = !DILocation(line: 268, column: 2, scope: !158)
!169 = distinct !DISubprogram(name: "__vdso_clock_getres", scope: !46, file: !46, line: 78, type: !106, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!170 = !{!171, !172}
!171 = !DILocalVariable(name: "clock", arg: 1, scope: !169, file: !46, line: 78, type: !108)
!172 = !DILocalVariable(name: "res", arg: 2, scope: !169, file: !46, line: 78, type: !111)
!173 = !DILocation(line: 78, column: 35, scope: !169)
!174 = !DILocation(line: 78, column: 65, scope: !169)
!175 = !DILocation(line: 80, column: 37, scope: !169)
!176 = !DILocation(line: 80, column: 44, scope: !169)
!177 = !DILocation(line: 80, column: 9, scope: !169)
!178 = !DILocation(line: 80, column: 2, scope: !169)
!179 = distinct !DISubprogram(name: "__cvdso_clock_getres_time32", scope: !75, file: !75, line: 435, type: !106, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !180)
!180 = !{!181, !182}
!181 = !DILocalVariable(name: "clock", arg: 1, scope: !179, file: !75, line: 435, type: !108)
!182 = !DILocalVariable(name: "res", arg: 2, scope: !179, file: !75, line: 435, type: !111)
!183 = !DILocation(line: 435, column: 39, scope: !179)
!184 = !DILocation(line: 435, column: 69, scope: !179)
!185 = !DILocation(line: 437, column: 42, scope: !179)
!186 = !DILocation(line: 438, column: 7, scope: !179)
!187 = !DILocation(line: 438, column: 14, scope: !179)
!188 = !DILocation(line: 437, column: 9, scope: !179)
!189 = !DILocation(line: 437, column: 2, scope: !179)
!190 = distinct !DISubprogram(name: "__cvdso_gettimeofday_data", scope: !75, file: !75, line: 299, type: !191, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !229)
!191 = !DISubroutineType(types: !192)
!192 = !{!49, !193, !50, !59}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_data", file: !196, line: 90, size: 1920, elements: !197)
!196 = !DIFile(filename: "./include/vdso/datapage.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd561b8fc8d778c148cc9e4ad5fe7dc5")
!197 = !{!198, !199, !200, !201, !202, !203, !204, !222, !223, !224, !225, !226}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !195, file: !196, line: 91, baseType: !20, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "clock_mode", scope: !195, file: !196, line: 93, baseType: !117, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !195, file: !196, line: 94, baseType: !27, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !195, file: !196, line: 95, baseType: !27, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !195, file: !196, line: 96, baseType: !20, size: 32, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !195, file: !196, line: 97, baseType: !20, size: 32, offset: 224)
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !195, file: !196, line: 99, baseType: !205, size: 1536, offset: 256)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !195, file: !196, line: 99, size: 1536, elements: !206)
!206 = !{!207, !215}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "basetime", scope: !205, file: !196, line: 100, baseType: !208, size: 1536)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 1536, elements: !213)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_timestamp", file: !196, line: 54, size: 128, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !209, file: !196, line: 55, baseType: !27, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !209, file: !196, line: 56, baseType: !27, size: 64, offset: 64)
!213 = !{!214}
!214 = !DISubrange(count: 12)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !205, file: !196, line: 101, baseType: !216, size: 1536)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 1536, elements: !213)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timens_offset", file: !218, line: 7, size: 128, elements: !219)
!218 = !DIFile(filename: "./include/vdso/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba8fbefc3ceb6aad90a49911c36b3121")
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !217, file: !218, line: 8, baseType: !30, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !217, file: !218, line: 9, baseType: !27, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !195, file: !196, line: 104, baseType: !117, size: 32, offset: 1792)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !195, file: !196, line: 105, baseType: !117, size: 32, offset: 1824)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_res", scope: !195, file: !196, line: 106, baseType: !20, size: 32, offset: 1856)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !195, file: !196, line: 107, baseType: !20, size: 32, offset: 1888)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !195, file: !196, line: 109, baseType: !227, offset: 1920)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_vdso_data", file: !196, line: 25, elements: !228)
!228 = !{}
!229 = !{!230, !231, !232, !233}
!230 = !DILocalVariable(name: "vd", arg: 1, scope: !190, file: !75, line: 299, type: !193)
!231 = !DILocalVariable(name: "tv", arg: 2, scope: !190, file: !75, line: 300, type: !50)
!232 = !DILocalVariable(name: "tz", arg: 3, scope: !190, file: !75, line: 300, type: !59)
!233 = !DILocalVariable(name: "ts", scope: !234, file: !75, line: 304, type: !144)
!234 = distinct !DILexicalBlock(scope: !235, file: !75, line: 303, column: 26)
!235 = distinct !DILexicalBlock(scope: !190, file: !75, line: 303, column: 6)
!236 = !DILocation(line: 299, column: 51, scope: !190)
!237 = !DILocation(line: 300, column: 35, scope: !190)
!238 = !DILocation(line: 300, column: 56, scope: !190)
!239 = !DILocation(line: 303, column: 6, scope: !235)
!240 = !DILocation(line: 303, column: 6, scope: !190)
!241 = !DILocation(line: 304, column: 3, scope: !234)
!242 = !DILocation(line: 304, column: 28, scope: !234)
!243 = !DILocation(line: 306, column: 16, scope: !244)
!244 = distinct !DILexicalBlock(scope: !234, file: !75, line: 306, column: 7)
!245 = !DILocation(line: 306, column: 7, scope: !244)
!246 = !DILocation(line: 306, column: 7, scope: !234)
!247 = !DILocation(line: 307, column: 33, scope: !244)
!248 = !DILocation(line: 307, column: 37, scope: !244)
!249 = !DILocation(line: 307, column: 11, scope: !244)
!250 = !DILocation(line: 307, column: 4, scope: !244)
!251 = !DILocation(line: 309, column: 19, scope: !234)
!252 = !DILocation(line: 309, column: 16, scope: !234)
!253 = !DILocation(line: 309, column: 3, scope: !234)
!254 = !DILocation(line: 309, column: 7, scope: !234)
!255 = !DILocation(line: 309, column: 14, scope: !234)
!256 = !DILocation(line: 310, column: 25, scope: !234)
!257 = !DILocation(line: 310, column: 17, scope: !234)
!258 = !DILocation(line: 310, column: 33, scope: !234)
!259 = !DILocation(line: 310, column: 3, scope: !234)
!260 = !DILocation(line: 310, column: 7, scope: !234)
!261 = !DILocation(line: 310, column: 15, scope: !234)
!262 = !DILocation(line: 311, column: 2, scope: !235)
!263 = !DILocation(line: 311, column: 2, scope: !234)
!264 = !DILocation(line: 313, column: 6, scope: !265)
!265 = distinct !DILexicalBlock(scope: !190, file: !75, line: 313, column: 6)
!266 = !DILocation(line: 313, column: 6, scope: !190)
!267 = !DILocation(line: 315, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !75, line: 314, column: 7)
!269 = distinct !DILexicalBlock(scope: !265, file: !75, line: 313, column: 28)
!270 = !DILocation(line: 315, column: 11, scope: !268)
!271 = !DILocation(line: 315, column: 22, scope: !268)
!272 = !DILocation(line: 314, column: 7, scope: !269)
!273 = !DILocation(line: 316, column: 37, scope: !268)
!274 = !DILocation(line: 316, column: 9, scope: !268)
!275 = !DILocation(line: 316, column: 7, scope: !268)
!276 = !DILocation(line: 316, column: 4, scope: !268)
!277 = !DILocation(line: 318, column: 24, scope: !269)
!278 = !DILocation(line: 318, column: 43, scope: !269)
!279 = !DILocation(line: 318, column: 3, scope: !269)
!280 = !DILocation(line: 318, column: 7, scope: !269)
!281 = !DILocation(line: 318, column: 22, scope: !269)
!282 = !DILocation(line: 319, column: 20, scope: !269)
!283 = !DILocation(line: 319, column: 39, scope: !269)
!284 = !DILocation(line: 319, column: 3, scope: !269)
!285 = !DILocation(line: 319, column: 7, scope: !269)
!286 = !DILocation(line: 319, column: 18, scope: !269)
!287 = !DILocation(line: 320, column: 2, scope: !269)
!288 = !DILocation(line: 322, column: 2, scope: !190)
!289 = !DILocation(line: 323, column: 1, scope: !190)
!290 = distinct !DISubprogram(name: "__arch_get_vdso_data", scope: !291, file: !291, line: 276, type: !292, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!291 = !DIFile(filename: "./arch/x86/include/asm/vdso/gettimeofday.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "959d5bb738ac1ae9a29c1296e8c700f5")
!292 = !DISubroutineType(types: !293)
!293 = !{!193}
!294 = !DILocation(line: 278, column: 2, scope: !290)
!295 = distinct !DISubprogram(name: "do_hres", scope: !75, file: !75, line: 110, type: !296, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!49, !193, !108, !143}
!298 = !{!299, !300, !301, !302, !305, !306, !307, !308, !309}
!299 = !DILocalVariable(name: "vd", arg: 1, scope: !295, file: !75, line: 110, type: !193)
!300 = !DILocalVariable(name: "clk", arg: 2, scope: !295, file: !75, line: 110, type: !108)
!301 = !DILocalVariable(name: "ts", arg: 3, scope: !295, file: !75, line: 111, type: !143)
!302 = !DILocalVariable(name: "vdso_ts", scope: !295, file: !75, line: 113, type: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!305 = !DILocalVariable(name: "cycles", scope: !295, file: !75, line: 114, type: !27)
!306 = !DILocalVariable(name: "last", scope: !295, file: !75, line: 114, type: !27)
!307 = !DILocalVariable(name: "sec", scope: !295, file: !75, line: 114, type: !27)
!308 = !DILocalVariable(name: "ns", scope: !295, file: !75, line: 114, type: !27)
!309 = !DILocalVariable(name: "seq", scope: !295, file: !75, line: 115, type: !20)
!310 = !DILocation(line: 110, column: 60, scope: !295)
!311 = !DILocation(line: 110, column: 74, scope: !295)
!312 = !DILocation(line: 111, column: 34, scope: !295)
!313 = !DILocation(line: 113, column: 2, scope: !295)
!314 = !DILocation(line: 113, column: 31, scope: !295)
!315 = !DILocation(line: 113, column: 42, scope: !295)
!316 = !DILocation(line: 113, column: 46, scope: !295)
!317 = !DILocation(line: 113, column: 55, scope: !295)
!318 = !DILocation(line: 114, column: 2, scope: !295)
!319 = !DILocation(line: 114, column: 6, scope: !295)
!320 = !DILocation(line: 114, column: 14, scope: !295)
!321 = !DILocation(line: 114, column: 20, scope: !295)
!322 = !DILocation(line: 114, column: 25, scope: !295)
!323 = !DILocation(line: 115, column: 2, scope: !295)
!324 = !DILocation(line: 115, column: 6, scope: !295)
!325 = !DILocation(line: 118, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !295, file: !75, line: 118, column: 6)
!327 = !DILocation(line: 118, column: 6, scope: !295)
!328 = !DILocation(line: 119, column: 3, scope: !326)
!329 = !DILocation(line: 121, column: 2, scope: !295)
!330 = !DILocation(line: 133, column: 3, scope: !331)
!331 = distinct !DILexicalBlock(scope: !295, file: !75, line: 121, column: 5)
!332 = !DILocation(line: 133, column: 10, scope: !333)
!333 = distinct !DILexicalBlock(scope: !331, file: !75, line: 133, column: 10)
!334 = !DILocation(line: 133, column: 10, scope: !335)
!335 = distinct !DILexicalBlock(scope: !333, file: !75, line: 133, column: 10)
!336 = !DILocation(line: 133, column: 10, scope: !331)
!337 = !DILocation(line: 135, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !75, line: 134, column: 8)
!339 = distinct !DILexicalBlock(scope: !331, file: !75, line: 133, column: 52)
!340 = !DILocation(line: 135, column: 12, scope: !338)
!341 = !DILocation(line: 135, column: 23, scope: !338)
!342 = !DILocation(line: 134, column: 8, scope: !339)
!343 = !DILocation(line: 136, column: 27, scope: !338)
!344 = !DILocation(line: 136, column: 31, scope: !338)
!345 = !DILocation(line: 136, column: 36, scope: !338)
!346 = !DILocation(line: 136, column: 12, scope: !338)
!347 = !DILocation(line: 136, column: 5, scope: !338)
!348 = !DILocation(line: 137, column: 4, scope: !339)
!349 = distinct !{!349, !330, !350, !351, !352}
!350 = !DILocation(line: 138, column: 3, scope: !331)
!351 = !{!"llvm.loop.mustprogress"}
!352 = !{!"llvm.loop.unroll.disable"}
!353 = !DILocation(line: 139, column: 3, scope: !331)
!354 = !DILocation(line: 139, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !331, file: !75, line: 139, column: 3)
!356 = !DILocation(line: 139, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !355, file: !75, line: 139, column: 3)
!358 = !DILocation(line: 139, column: 3, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !75, line: 139, column: 3)
!360 = !DILocation(line: 139, column: 3, scope: !361)
!361 = distinct !DILexicalBlock(scope: !359, file: !75, line: 139, column: 3)
!362 = !{i64 2152320290}
!363 = !DILocation(line: 141, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !331, file: !75, line: 141, column: 7)
!365 = !DILocation(line: 141, column: 7, scope: !331)
!366 = !DILocation(line: 142, column: 4, scope: !364)
!367 = !DILocation(line: 144, column: 34, scope: !331)
!368 = !DILocation(line: 144, column: 38, scope: !331)
!369 = !DILocation(line: 144, column: 50, scope: !331)
!370 = !DILocation(line: 144, column: 12, scope: !331)
!371 = !DILocation(line: 144, column: 10, scope: !331)
!372 = !DILocation(line: 145, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !331, file: !75, line: 145, column: 7)
!374 = !DILocation(line: 145, column: 7, scope: !331)
!375 = !DILocation(line: 146, column: 4, scope: !373)
!376 = !DILocation(line: 147, column: 8, scope: !331)
!377 = !DILocation(line: 147, column: 17, scope: !331)
!378 = !DILocation(line: 147, column: 6, scope: !331)
!379 = !DILocation(line: 148, column: 10, scope: !331)
!380 = !DILocation(line: 148, column: 14, scope: !331)
!381 = !DILocation(line: 148, column: 8, scope: !331)
!382 = !DILocation(line: 149, column: 25, scope: !331)
!383 = !DILocation(line: 149, column: 33, scope: !331)
!384 = !DILocation(line: 149, column: 39, scope: !331)
!385 = !DILocation(line: 149, column: 43, scope: !331)
!386 = !DILocation(line: 149, column: 49, scope: !331)
!387 = !DILocation(line: 149, column: 53, scope: !331)
!388 = !DILocation(line: 149, column: 9, scope: !331)
!389 = !DILocation(line: 149, column: 6, scope: !331)
!390 = !DILocation(line: 150, column: 22, scope: !331)
!391 = !DILocation(line: 150, column: 26, scope: !331)
!392 = !DILocation(line: 150, column: 30, scope: !331)
!393 = !DILocation(line: 150, column: 8, scope: !331)
!394 = !DILocation(line: 150, column: 6, scope: !331)
!395 = !DILocation(line: 151, column: 9, scope: !331)
!396 = !DILocation(line: 151, column: 18, scope: !331)
!397 = !DILocation(line: 151, column: 7, scope: !331)
!398 = !DILocation(line: 152, column: 2, scope: !331)
!399 = !DILocation(line: 152, column: 11, scope: !295)
!400 = distinct !{!400, !329, !401, !351, !352}
!401 = !DILocation(line: 152, column: 45, scope: !295)
!402 = !DILocation(line: 158, column: 15, scope: !295)
!403 = !DILocation(line: 158, column: 40, scope: !295)
!404 = !DILocation(line: 158, column: 21, scope: !295)
!405 = !DILocation(line: 158, column: 19, scope: !295)
!406 = !DILocation(line: 158, column: 2, scope: !295)
!407 = !DILocation(line: 158, column: 6, scope: !295)
!408 = !DILocation(line: 158, column: 13, scope: !295)
!409 = !DILocation(line: 159, column: 16, scope: !295)
!410 = !DILocation(line: 159, column: 2, scope: !295)
!411 = !DILocation(line: 159, column: 6, scope: !295)
!412 = !DILocation(line: 159, column: 14, scope: !295)
!413 = !DILocation(line: 161, column: 2, scope: !295)
!414 = !DILocation(line: 162, column: 1, scope: !295)
!415 = distinct !DISubprogram(name: "gettimeofday_fallback", scope: !291, file: !291, line: 143, type: !416, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{!57, !50, !59}
!418 = !{!419, !420, !421}
!419 = !DILocalVariable(name: "_tv", arg: 1, scope: !415, file: !291, line: 143, type: !50)
!420 = !DILocalVariable(name: "_tz", arg: 2, scope: !415, file: !291, line: 144, type: !59)
!421 = !DILocalVariable(name: "ret", scope: !415, file: !291, line: 146, type: !57)
!422 = !DILocation(line: 143, column: 57, scope: !415)
!423 = !DILocation(line: 144, column: 24, scope: !415)
!424 = !DILocation(line: 146, column: 2, scope: !415)
!425 = !DILocation(line: 146, column: 7, scope: !415)
!426 = !DILocation(line: 154, column: 35, scope: !415)
!427 = !DILocation(line: 154, column: 46, scope: !415)
!428 = !DILocation(line: 148, column: 2, scope: !415)
!429 = !{i64 1845732, i64 1845757, i64 1845778, i64 1845808}
!430 = !DILocation(line: 157, column: 9, scope: !415)
!431 = !DILocation(line: 158, column: 1, scope: !415)
!432 = !DILocation(line: 157, column: 2, scope: !415)
!433 = distinct !DISubprogram(name: "__arch_get_timens_vdso_data", scope: !291, file: !291, line: 62, type: !434, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!193, !193}
!436 = !{!437}
!437 = !DILocalVariable(name: "vd", arg: 1, scope: !433, file: !291, line: 62, type: !193)
!438 = !DILocation(line: 62, column: 77, scope: !433)
!439 = !DILocation(line: 64, column: 2, scope: !433)
!440 = distinct !DISubprogram(name: "__arch_vdso_hres_capable", scope: !75, file: !75, line: 28, type: !441, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!441 = !DISubroutineType(types: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !109, line: 35, baseType: !444)
!444 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!445 = !DILocation(line: 30, column: 2, scope: !440)
!446 = distinct !DISubprogram(name: "do_hres_timens", scope: !75, file: !75, line: 49, type: !296, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !447)
!447 = !{!448, !449, !450, !451, !452, !455, !456, !457, !458, !459, !460}
!448 = !DILocalVariable(name: "vdns", arg: 1, scope: !446, file: !75, line: 49, type: !193)
!449 = !DILocalVariable(name: "clk", arg: 2, scope: !446, file: !75, line: 49, type: !108)
!450 = !DILocalVariable(name: "ts", arg: 3, scope: !446, file: !75, line: 50, type: !143)
!451 = !DILocalVariable(name: "vd", scope: !446, file: !75, line: 52, type: !193)
!452 = !DILocalVariable(name: "offs", scope: !446, file: !75, line: 53, type: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!455 = !DILocalVariable(name: "vdso_ts", scope: !446, file: !75, line: 54, type: !303)
!456 = !DILocalVariable(name: "cycles", scope: !446, file: !75, line: 55, type: !27)
!457 = !DILocalVariable(name: "last", scope: !446, file: !75, line: 55, type: !27)
!458 = !DILocalVariable(name: "ns", scope: !446, file: !75, line: 55, type: !27)
!459 = !DILocalVariable(name: "seq", scope: !446, file: !75, line: 56, type: !20)
!460 = !DILocalVariable(name: "sec", scope: !446, file: !75, line: 57, type: !30)
!461 = !DILocation(line: 49, column: 67, scope: !446)
!462 = !DILocation(line: 49, column: 83, scope: !446)
!463 = !DILocation(line: 50, column: 34, scope: !446)
!464 = !DILocation(line: 52, column: 2, scope: !446)
!465 = !DILocation(line: 52, column: 26, scope: !446)
!466 = !DILocation(line: 53, column: 2, scope: !446)
!467 = !DILocation(line: 53, column: 30, scope: !446)
!468 = !DILocation(line: 53, column: 38, scope: !446)
!469 = !DILocation(line: 53, column: 44, scope: !446)
!470 = !DILocation(line: 53, column: 51, scope: !446)
!471 = !DILocation(line: 54, column: 2, scope: !446)
!472 = !DILocation(line: 54, column: 31, scope: !446)
!473 = !DILocation(line: 55, column: 2, scope: !446)
!474 = !DILocation(line: 55, column: 6, scope: !446)
!475 = !DILocation(line: 55, column: 14, scope: !446)
!476 = !DILocation(line: 55, column: 20, scope: !446)
!477 = !DILocation(line: 56, column: 2, scope: !446)
!478 = !DILocation(line: 56, column: 6, scope: !446)
!479 = !DILocation(line: 57, column: 2, scope: !446)
!480 = !DILocation(line: 57, column: 6, scope: !446)
!481 = !DILocation(line: 59, column: 7, scope: !446)
!482 = !DILocation(line: 59, column: 15, scope: !446)
!483 = !DILocation(line: 59, column: 19, scope: !446)
!484 = !DILocation(line: 59, column: 12, scope: !446)
!485 = !DILocation(line: 59, column: 5, scope: !446)
!486 = !DILocation(line: 60, column: 35, scope: !446)
!487 = !DILocation(line: 60, column: 7, scope: !446)
!488 = !DILocation(line: 60, column: 5, scope: !446)
!489 = !DILocation(line: 61, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !446, file: !75, line: 61, column: 6)
!491 = !DILocation(line: 61, column: 10, scope: !490)
!492 = !DILocation(line: 61, column: 6, scope: !446)
!493 = !DILocation(line: 62, column: 9, scope: !490)
!494 = !DILocation(line: 62, column: 6, scope: !490)
!495 = !DILocation(line: 62, column: 3, scope: !490)
!496 = !DILocation(line: 64, column: 9, scope: !490)
!497 = !DILocation(line: 64, column: 6, scope: !490)
!498 = !DILocation(line: 65, column: 13, scope: !446)
!499 = !DILocation(line: 65, column: 17, scope: !446)
!500 = !DILocation(line: 65, column: 26, scope: !446)
!501 = !DILocation(line: 65, column: 10, scope: !446)
!502 = !DILocation(line: 67, column: 2, scope: !446)
!503 = !DILocation(line: 68, column: 25, scope: !504)
!504 = distinct !DILexicalBlock(scope: !446, file: !75, line: 67, column: 5)
!505 = !DILocation(line: 68, column: 9, scope: !504)
!506 = !DILocation(line: 68, column: 7, scope: !504)
!507 = !DILocation(line: 70, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !75, line: 70, column: 7)
!509 = !DILocation(line: 70, column: 7, scope: !504)
!510 = !DILocation(line: 71, column: 4, scope: !508)
!511 = !DILocation(line: 73, column: 34, scope: !504)
!512 = !DILocation(line: 73, column: 38, scope: !504)
!513 = !DILocation(line: 73, column: 50, scope: !504)
!514 = !DILocation(line: 73, column: 12, scope: !504)
!515 = !DILocation(line: 73, column: 10, scope: !504)
!516 = !DILocation(line: 74, column: 7, scope: !517)
!517 = distinct !DILexicalBlock(scope: !504, file: !75, line: 74, column: 7)
!518 = !DILocation(line: 74, column: 7, scope: !504)
!519 = !DILocation(line: 75, column: 4, scope: !517)
!520 = !DILocation(line: 76, column: 8, scope: !504)
!521 = !DILocation(line: 76, column: 17, scope: !504)
!522 = !DILocation(line: 76, column: 6, scope: !504)
!523 = !DILocation(line: 77, column: 10, scope: !504)
!524 = !DILocation(line: 77, column: 14, scope: !504)
!525 = !DILocation(line: 77, column: 8, scope: !504)
!526 = !DILocation(line: 78, column: 25, scope: !504)
!527 = !DILocation(line: 78, column: 33, scope: !504)
!528 = !DILocation(line: 78, column: 39, scope: !504)
!529 = !DILocation(line: 78, column: 43, scope: !504)
!530 = !DILocation(line: 78, column: 49, scope: !504)
!531 = !DILocation(line: 78, column: 53, scope: !504)
!532 = !DILocation(line: 78, column: 9, scope: !504)
!533 = !DILocation(line: 78, column: 6, scope: !504)
!534 = !DILocation(line: 79, column: 22, scope: !504)
!535 = !DILocation(line: 79, column: 26, scope: !504)
!536 = !DILocation(line: 79, column: 30, scope: !504)
!537 = !DILocation(line: 79, column: 8, scope: !504)
!538 = !DILocation(line: 79, column: 6, scope: !504)
!539 = !DILocation(line: 80, column: 9, scope: !504)
!540 = !DILocation(line: 80, column: 18, scope: !504)
!541 = !DILocation(line: 80, column: 7, scope: !504)
!542 = !DILocation(line: 81, column: 2, scope: !504)
!543 = !DILocation(line: 81, column: 11, scope: !446)
!544 = distinct !{!544, !502, !545, !351, !352}
!545 = !DILocation(line: 81, column: 45, scope: !446)
!546 = !DILocation(line: 84, column: 9, scope: !446)
!547 = !DILocation(line: 84, column: 15, scope: !446)
!548 = !DILocation(line: 84, column: 6, scope: !446)
!549 = !DILocation(line: 85, column: 8, scope: !446)
!550 = !DILocation(line: 85, column: 14, scope: !446)
!551 = !DILocation(line: 85, column: 5, scope: !446)
!552 = !DILocation(line: 91, column: 15, scope: !446)
!553 = !DILocation(line: 91, column: 40, scope: !446)
!554 = !DILocation(line: 91, column: 21, scope: !446)
!555 = !DILocation(line: 91, column: 19, scope: !446)
!556 = !DILocation(line: 91, column: 2, scope: !446)
!557 = !DILocation(line: 91, column: 6, scope: !446)
!558 = !DILocation(line: 91, column: 13, scope: !446)
!559 = !DILocation(line: 92, column: 16, scope: !446)
!560 = !DILocation(line: 92, column: 2, scope: !446)
!561 = !DILocation(line: 92, column: 6, scope: !446)
!562 = !DILocation(line: 92, column: 14, scope: !446)
!563 = !DILocation(line: 94, column: 2, scope: !446)
!564 = !DILocation(line: 95, column: 1, scope: !446)
!565 = distinct !DISubprogram(name: "cpu_relax", scope: !566, file: !566, line: 16, type: !567, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!566 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!567 = !DISubroutineType(types: !568)
!568 = !{null}
!569 = !DILocation(line: 18, column: 2, scope: !565)
!570 = !DILocation(line: 19, column: 1, scope: !565)
!571 = distinct !DISubprogram(name: "arch_vdso_clocksource_ok", scope: !291, file: !291, line: 281, type: !572, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !574)
!572 = !DISubroutineType(types: !573)
!573 = !{!443, !193}
!574 = !{!575}
!575 = !DILocalVariable(name: "vd", arg: 1, scope: !571, file: !291, line: 281, type: !193)
!576 = !DILocation(line: 281, column: 69, scope: !571)
!577 = !DILocation(line: 283, column: 2, scope: !571)
!578 = distinct !DISubprogram(name: "__arch_get_hw_counter", scope: !291, file: !291, line: 250, type: !579, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!27, !117, !193}
!581 = !{!582, !583}
!582 = !DILocalVariable(name: "clock_mode", arg: 1, scope: !578, file: !291, line: 250, type: !117)
!583 = !DILocalVariable(name: "vd", arg: 2, scope: !578, file: !291, line: 251, type: !193)
!584 = !DILocation(line: 250, column: 45, scope: !578)
!585 = !DILocation(line: 251, column: 30, scope: !578)
!586 = !DILocation(line: 253, column: 6, scope: !587)
!587 = distinct !DILexicalBlock(scope: !578, file: !291, line: 253, column: 6)
!588 = !DILocation(line: 253, column: 6, scope: !578)
!589 = !DILocation(line: 254, column: 15, scope: !587)
!590 = !DILocation(line: 254, column: 31, scope: !587)
!591 = !DILocation(line: 254, column: 3, scope: !587)
!592 = !DILocation(line: 262, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !578, file: !291, line: 262, column: 6)
!594 = !DILocation(line: 262, column: 17, scope: !593)
!595 = !DILocation(line: 262, column: 6, scope: !578)
!596 = !DILocation(line: 263, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !291, line: 262, column: 44)
!598 = !{i64 2152313954}
!599 = !DILocation(line: 264, column: 10, scope: !597)
!600 = !DILocation(line: 264, column: 3, scope: !597)
!601 = !DILocation(line: 273, column: 2, scope: !578)
!602 = !DILocation(line: 274, column: 1, scope: !578)
!603 = distinct !DISubprogram(name: "arch_vdso_cycles_ok", scope: !291, file: !291, line: 296, type: !604, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!443, !27}
!606 = !{!607}
!607 = !DILocalVariable(name: "cycles", arg: 1, scope: !603, file: !291, line: 296, type: !27)
!608 = !DILocation(line: 296, column: 44, scope: !603)
!609 = !DILocation(line: 298, column: 14, scope: !603)
!610 = !DILocation(line: 298, column: 21, scope: !603)
!611 = !DILocation(line: 298, column: 2, scope: !603)
!612 = distinct !DISubprogram(name: "vdso_calc_delta", scope: !291, file: !291, line: 321, type: !613, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{!27, !27, !27, !27, !20}
!615 = !{!616, !617, !618, !619, !620}
!616 = !DILocalVariable(name: "cycles", arg: 1, scope: !612, file: !291, line: 321, type: !27)
!617 = !DILocalVariable(name: "last", arg: 2, scope: !612, file: !291, line: 321, type: !27)
!618 = !DILocalVariable(name: "mask", arg: 3, scope: !612, file: !291, line: 321, type: !27)
!619 = !DILocalVariable(name: "mult", arg: 4, scope: !612, file: !291, line: 321, type: !20)
!620 = !DILocalVariable(name: "delta", scope: !612, file: !291, line: 327, type: !27)
!621 = !DILocation(line: 321, column: 25, scope: !612)
!622 = !DILocation(line: 321, column: 37, scope: !612)
!623 = !DILocation(line: 321, column: 47, scope: !612)
!624 = !DILocation(line: 321, column: 57, scope: !612)
!625 = !DILocation(line: 327, column: 2, scope: !612)
!626 = !DILocation(line: 327, column: 6, scope: !612)
!627 = !DILocation(line: 327, column: 15, scope: !612)
!628 = !DILocation(line: 327, column: 24, scope: !612)
!629 = !DILocation(line: 327, column: 22, scope: !612)
!630 = !DILocation(line: 327, column: 30, scope: !612)
!631 = !DILocation(line: 333, column: 6, scope: !632)
!632 = distinct !DILexicalBlock(scope: !612, file: !291, line: 333, column: 6)
!633 = !DILocation(line: 333, column: 6, scope: !612)
!634 = !DILocation(line: 334, column: 3, scope: !632)
!635 = !DILocation(line: 336, column: 9, scope: !612)
!636 = !DILocation(line: 336, column: 17, scope: !612)
!637 = !DILocation(line: 336, column: 15, scope: !612)
!638 = !DILocation(line: 336, column: 2, scope: !612)
!639 = !DILocation(line: 337, column: 1, scope: !612)
!640 = distinct !DISubprogram(name: "vdso_shift_ns", scope: !75, file: !75, line: 21, type: !641, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!27, !27, !20}
!643 = !{!644, !645}
!644 = !DILocalVariable(name: "ns", arg: 1, scope: !640, file: !75, line: 21, type: !27)
!645 = !DILocalVariable(name: "shift", arg: 2, scope: !640, file: !75, line: 21, type: !20)
!646 = !DILocation(line: 21, column: 46, scope: !640)
!647 = !DILocation(line: 21, column: 54, scope: !640)
!648 = !DILocation(line: 23, column: 9, scope: !640)
!649 = !DILocation(line: 23, column: 15, scope: !640)
!650 = !DILocation(line: 23, column: 12, scope: !640)
!651 = !DILocation(line: 23, column: 2, scope: !640)
!652 = distinct !DISubprogram(name: "vdso_read_retry", scope: !653, file: !653, line: 20, type: !654, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !656)
!653 = !DIFile(filename: "./include/vdso/helpers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787bbf2acf68ad352252cd20c7d4bd95")
!654 = !DISubroutineType(types: !655)
!655 = !{!20, !193, !20}
!656 = !{!657, !658, !659}
!657 = !DILocalVariable(name: "vd", arg: 1, scope: !652, file: !653, line: 20, type: !193)
!658 = !DILocalVariable(name: "start", arg: 2, scope: !652, file: !653, line: 21, type: !20)
!659 = !DILocalVariable(name: "seq", scope: !652, file: !653, line: 23, type: !20)
!660 = !DILocation(line: 20, column: 68, scope: !652)
!661 = !DILocation(line: 21, column: 13, scope: !652)
!662 = !DILocation(line: 23, column: 2, scope: !652)
!663 = !DILocation(line: 23, column: 6, scope: !652)
!664 = !DILocation(line: 25, column: 2, scope: !652)
!665 = !DILocation(line: 25, column: 2, scope: !666)
!666 = distinct !DILexicalBlock(scope: !652, file: !653, line: 25, column: 2)
!667 = !DILocation(line: 25, column: 2, scope: !668)
!668 = distinct !DILexicalBlock(scope: !666, file: !653, line: 25, column: 2)
!669 = !DILocation(line: 25, column: 2, scope: !670)
!670 = distinct !DILexicalBlock(scope: !666, file: !653, line: 25, column: 2)
!671 = !DILocation(line: 25, column: 2, scope: !672)
!672 = distinct !DILexicalBlock(scope: !670, file: !653, line: 25, column: 2)
!673 = !{i64 2149363989}
!674 = !DILocation(line: 26, column: 8, scope: !675)
!675 = distinct !DILexicalBlock(scope: !652, file: !653, line: 26, column: 8)
!676 = !DILocation(line: 26, column: 8, scope: !677)
!677 = distinct !DILexicalBlock(scope: !675, file: !653, line: 26, column: 8)
!678 = !DILocation(line: 26, column: 6, scope: !652)
!679 = !DILocation(line: 27, column: 9, scope: !652)
!680 = !DILocation(line: 27, column: 16, scope: !652)
!681 = !DILocation(line: 27, column: 13, scope: !652)
!682 = !DILocation(line: 28, column: 1, scope: !652)
!683 = !DILocation(line: 27, column: 2, scope: !652)
!684 = distinct !DISubprogram(name: "__iter_div_u64_rem", scope: !685, file: !685, line: 6, type: !686, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !689)
!685 = !DIFile(filename: "./include/vdso/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c73242fa3ce9a71c3ee6785d9a4c12ba")
!686 = !DISubroutineType(types: !687)
!687 = !{!20, !27, !20, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!689 = !{!690, !691, !692, !693}
!690 = !DILocalVariable(name: "dividend", arg: 1, scope: !684, file: !685, line: 6, type: !27)
!691 = !DILocalVariable(name: "divisor", arg: 2, scope: !684, file: !685, line: 6, type: !20)
!692 = !DILocalVariable(name: "remainder", arg: 3, scope: !684, file: !685, line: 6, type: !688)
!693 = !DILocalVariable(name: "ret", scope: !684, file: !685, line: 8, type: !20)
!694 = !DILocation(line: 6, column: 24, scope: !684)
!695 = !DILocation(line: 6, column: 38, scope: !684)
!696 = !DILocation(line: 6, column: 52, scope: !684)
!697 = !DILocation(line: 8, column: 2, scope: !684)
!698 = !DILocation(line: 8, column: 6, scope: !684)
!699 = !DILocation(line: 10, column: 2, scope: !684)
!700 = !DILocation(line: 10, column: 9, scope: !684)
!701 = !DILocation(line: 10, column: 21, scope: !684)
!702 = !DILocation(line: 10, column: 18, scope: !684)
!703 = !DILocation(line: 13, column: 3, scope: !704)
!704 = distinct !DILexicalBlock(scope: !684, file: !685, line: 10, column: 30)
!705 = !{i64 470012}
!706 = !DILocation(line: 15, column: 15, scope: !704)
!707 = !DILocation(line: 15, column: 12, scope: !704)
!708 = !DILocation(line: 16, column: 6, scope: !704)
!709 = distinct !{!709, !699, !710, !351, !352}
!710 = !DILocation(line: 17, column: 2, scope: !684)
!711 = !DILocation(line: 19, column: 15, scope: !684)
!712 = !DILocation(line: 19, column: 3, scope: !684)
!713 = !DILocation(line: 19, column: 13, scope: !684)
!714 = !DILocation(line: 21, column: 9, scope: !684)
!715 = !DILocation(line: 22, column: 1, scope: !684)
!716 = !DILocation(line: 21, column: 2, scope: !684)
!717 = distinct !DISubprogram(name: "vdso_read_begin", scope: !653, file: !653, line: 9, type: !718, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!20, !193}
!720 = !{!721, !722}
!721 = !DILocalVariable(name: "vd", arg: 1, scope: !717, file: !653, line: 9, type: !193)
!722 = !DILocalVariable(name: "seq", scope: !717, file: !653, line: 11, type: !20)
!723 = !DILocation(line: 9, column: 68, scope: !717)
!724 = !DILocation(line: 11, column: 2, scope: !717)
!725 = !DILocation(line: 11, column: 6, scope: !717)
!726 = !DILocation(line: 13, column: 2, scope: !717)
!727 = !DILocation(line: 13, column: 9, scope: !728)
!728 = distinct !DILexicalBlock(scope: !717, file: !653, line: 13, column: 9)
!729 = !DILocation(line: 13, column: 9, scope: !730)
!730 = distinct !DILexicalBlock(scope: !728, file: !653, line: 13, column: 9)
!731 = !DILocation(line: 13, column: 9, scope: !717)
!732 = !DILocation(line: 14, column: 3, scope: !717)
!733 = distinct !{!733, !726, !734, !351, !352}
!734 = !DILocation(line: 14, column: 13, scope: !717)
!735 = !DILocation(line: 16, column: 2, scope: !717)
!736 = !DILocation(line: 16, column: 2, scope: !737)
!737 = distinct !DILexicalBlock(scope: !717, file: !653, line: 16, column: 2)
!738 = !DILocation(line: 16, column: 2, scope: !739)
!739 = distinct !DILexicalBlock(scope: !737, file: !653, line: 16, column: 2)
!740 = !DILocation(line: 16, column: 2, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !653, line: 16, column: 2)
!742 = !DILocation(line: 16, column: 2, scope: !743)
!743 = distinct !DILexicalBlock(scope: !741, file: !653, line: 16, column: 2)
!744 = !{i64 2149363604}
!745 = !DILocation(line: 17, column: 9, scope: !717)
!746 = !DILocation(line: 18, column: 1, scope: !717)
!747 = !DILocation(line: 17, column: 2, scope: !717)
!748 = distinct !DISubprogram(name: "rep_nop", scope: !566, file: !566, line: 11, type: !567, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!749 = !DILocation(line: 13, column: 2, scope: !748)
!750 = !{i64 1754276}
!751 = !DILocation(line: 14, column: 1, scope: !748)
!752 = distinct !DISubprogram(name: "rdtsc_ordered", scope: !753, file: !753, line: 197, type: !754, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !756)
!753 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!754 = !DISubroutineType(types: !755)
!755 = !{!29}
!756 = !{!757}
!757 = !DILocalVariable(name: "val", scope: !752, file: !753, line: 199, type: !29)
!758 = !DILocation(line: 199, column: 2, scope: !752)
!759 = !DILocation(line: 215, column: 2, scope: !752)
!760 = !{i64 2149164025, i64 2149164058, i64 2149164064, i64 2149164080, i64 2149164099, i64 2149164130, i64 2149165082, i64 2149163656, i64 2149165088, i64 2149165136, i64 2149165200, i64 2149165264, i64 2149165321, i64 2149165528, i64 2149165576, i64 2149165640, i64 2149165704, i64 2149165761, i64 2149163774, i64 2149163799, i64 2149165968, i64 2149166097, i64 2149166029, i64 2149166111, i64 2149166125, i64 2149166247, i64 2149166186, i64 2149166261, i64 2149163933}
!761 = !DILocation(line: 222, column: 9, scope: !752)
!762 = !DILocation(line: 223, column: 1, scope: !752)
!763 = !DILocation(line: 222, column: 2, scope: !752)
!764 = distinct !DISubprogram(name: "vread_pvclock", scope: !291, file: !291, line: 197, type: !765, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!27}
!767 = !{!768, !791, !792}
!768 = !DILocalVariable(name: "pvti", scope: !764, file: !291, line: 199, type: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vcpu_time_info", file: !772, line: 26, size: 256, elements: !773)
!772 = !DIFile(filename: "./arch/x86/include/asm/pvclock-abi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63a96b2b2f7b6470cea45a7a079d9d9a")
!773 = !{!774, !775, !776, !777, !778, !779, !783, !787}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !771, file: !772, line: 27, baseType: !20, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pad0", scope: !771, file: !772, line: 28, baseType: !20, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_timestamp", scope: !771, file: !772, line: 29, baseType: !27, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !771, file: !772, line: 30, baseType: !27, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_to_system_mul", scope: !771, file: !772, line: 31, baseType: !20, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_shift", scope: !771, file: !772, line: 32, baseType: !780, size: 8, offset: 224)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !21, line: 16, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !23, line: 20, baseType: !782)
!782 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !772, line: 33, baseType: !784, size: 8, offset: 232)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !786)
!786 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !771, file: !772, line: 34, baseType: !788, size: 16, offset: 240)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 16, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 2)
!791 = !DILocalVariable(name: "version", scope: !764, file: !291, line: 200, type: !20)
!792 = !DILocalVariable(name: "ret", scope: !764, file: !291, line: 201, type: !27)
!793 = !DILocation(line: 199, column: 2, scope: !764)
!794 = !DILocation(line: 199, column: 39, scope: !764)
!795 = !DILocation(line: 200, column: 2, scope: !764)
!796 = !DILocation(line: 200, column: 6, scope: !764)
!797 = !DILocation(line: 201, column: 2, scope: !764)
!798 = !DILocation(line: 201, column: 6, scope: !764)
!799 = !DILocation(line: 225, column: 2, scope: !764)
!800 = !DILocation(line: 226, column: 32, scope: !801)
!801 = distinct !DILexicalBlock(scope: !764, file: !291, line: 225, column: 5)
!802 = !DILocation(line: 226, column: 13, scope: !801)
!803 = !DILocation(line: 226, column: 11, scope: !801)
!804 = !DILocation(line: 228, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !291, line: 228, column: 7)
!806 = !DILocation(line: 228, column: 7, scope: !801)
!807 = !DILocation(line: 229, column: 4, scope: !805)
!808 = !DILocation(line: 231, column: 31, scope: !801)
!809 = !DILocation(line: 231, column: 37, scope: !801)
!810 = !DILocation(line: 231, column: 9, scope: !801)
!811 = !DILocation(line: 231, column: 7, scope: !801)
!812 = !DILocation(line: 232, column: 2, scope: !801)
!813 = !DILocation(line: 232, column: 30, scope: !764)
!814 = !DILocation(line: 232, column: 36, scope: !764)
!815 = !DILocation(line: 232, column: 11, scope: !764)
!816 = distinct !{!816, !799, !817, !351, !352}
!817 = !DILocation(line: 232, column: 44, scope: !764)
!818 = !DILocation(line: 234, column: 9, scope: !764)
!819 = !DILocation(line: 234, column: 13, scope: !764)
!820 = !DILocation(line: 234, column: 2, scope: !764)
!821 = !DILocation(line: 235, column: 1, scope: !764)
!822 = distinct !DISubprogram(name: "pvclock_read_begin", scope: !823, file: !823, line: 22, type: !824, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !826)
!823 = !DIFile(filename: "./arch/x86/include/asm/pvclock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0842e5b6b68f91de74c4dd8305b2bfa6")
!824 = !DISubroutineType(types: !825)
!825 = !{!5, !769}
!826 = !{!827, !828}
!827 = !DILocalVariable(name: "src", arg: 1, scope: !822, file: !823, line: 22, type: !769)
!828 = !DILocalVariable(name: "version", scope: !822, file: !823, line: 24, type: !5)
!829 = !DILocation(line: 22, column: 66, scope: !822)
!830 = !DILocation(line: 24, column: 2, scope: !822)
!831 = !DILocation(line: 24, column: 11, scope: !822)
!832 = !DILocation(line: 24, column: 21, scope: !822)
!833 = !DILocation(line: 24, column: 26, scope: !822)
!834 = !DILocation(line: 24, column: 34, scope: !822)
!835 = !DILocation(line: 26, column: 2, scope: !822)
!836 = !DILocation(line: 26, column: 2, scope: !837)
!837 = distinct !DILexicalBlock(scope: !822, file: !823, line: 26, column: 2)
!838 = !DILocation(line: 26, column: 2, scope: !839)
!839 = distinct !DILexicalBlock(scope: !837, file: !823, line: 26, column: 2)
!840 = !DILocation(line: 26, column: 2, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !823, line: 26, column: 2)
!842 = !DILocation(line: 26, column: 2, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !823, line: 26, column: 2)
!844 = !{i64 2149396634}
!845 = !DILocation(line: 27, column: 9, scope: !822)
!846 = !DILocation(line: 28, column: 1, scope: !822)
!847 = !DILocation(line: 27, column: 2, scope: !822)
!848 = distinct !DISubprogram(name: "__pvclock_read_cycles", scope: !823, file: !823, line: 83, type: !849, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!27, !769, !27}
!851 = !{!852, !853, !854, !855}
!852 = !DILocalVariable(name: "src", arg: 1, scope: !848, file: !823, line: 83, type: !769)
!853 = !DILocalVariable(name: "tsc", arg: 2, scope: !848, file: !823, line: 83, type: !27)
!854 = !DILocalVariable(name: "delta", scope: !848, file: !823, line: 85, type: !27)
!855 = !DILocalVariable(name: "offset", scope: !848, file: !823, line: 86, type: !27)
!856 = !DILocation(line: 83, column: 64, scope: !848)
!857 = !DILocation(line: 83, column: 73, scope: !848)
!858 = !DILocation(line: 85, column: 2, scope: !848)
!859 = !DILocation(line: 85, column: 6, scope: !848)
!860 = !DILocation(line: 85, column: 14, scope: !848)
!861 = !DILocation(line: 85, column: 20, scope: !848)
!862 = !DILocation(line: 85, column: 25, scope: !848)
!863 = !DILocation(line: 85, column: 18, scope: !848)
!864 = !DILocation(line: 86, column: 2, scope: !848)
!865 = !DILocation(line: 86, column: 6, scope: !848)
!866 = !DILocation(line: 86, column: 35, scope: !848)
!867 = !DILocation(line: 86, column: 42, scope: !848)
!868 = !DILocation(line: 86, column: 47, scope: !848)
!869 = !DILocation(line: 87, column: 11, scope: !848)
!870 = !DILocation(line: 87, column: 16, scope: !848)
!871 = !DILocation(line: 86, column: 15, scope: !848)
!872 = !DILocation(line: 88, column: 9, scope: !848)
!873 = !DILocation(line: 88, column: 14, scope: !848)
!874 = !DILocation(line: 88, column: 28, scope: !848)
!875 = !DILocation(line: 88, column: 26, scope: !848)
!876 = !DILocation(line: 89, column: 1, scope: !848)
!877 = !DILocation(line: 88, column: 2, scope: !848)
!878 = distinct !DISubprogram(name: "pvclock_read_retry", scope: !823, file: !823, line: 31, type: !879, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!443, !769, !5}
!881 = !{!882, !883}
!882 = !DILocalVariable(name: "src", arg: 1, scope: !878, file: !823, line: 31, type: !769)
!883 = !DILocalVariable(name: "version", arg: 2, scope: !878, file: !823, line: 32, type: !5)
!884 = !DILocation(line: 31, column: 62, scope: !878)
!885 = !DILocation(line: 32, column: 13, scope: !878)
!886 = !DILocation(line: 35, column: 2, scope: !878)
!887 = !DILocation(line: 35, column: 2, scope: !888)
!888 = distinct !DILexicalBlock(scope: !878, file: !823, line: 35, column: 2)
!889 = !DILocation(line: 35, column: 2, scope: !890)
!890 = distinct !DILexicalBlock(scope: !888, file: !823, line: 35, column: 2)
!891 = !DILocation(line: 35, column: 2, scope: !892)
!892 = distinct !DILexicalBlock(scope: !888, file: !823, line: 35, column: 2)
!893 = !DILocation(line: 35, column: 2, scope: !894)
!894 = distinct !DILexicalBlock(scope: !892, file: !823, line: 35, column: 2)
!895 = !{i64 2149397019}
!896 = !DILocation(line: 36, column: 9, scope: !878)
!897 = !DILocation(line: 36, column: 2, scope: !878)
!898 = distinct !DISubprogram(name: "pvclock_scale_delta", scope: !823, file: !823, line: 43, type: !899, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !901)
!899 = !DISubroutineType(types: !900)
!900 = !{!27, !27, !20, !49}
!901 = !{!902, !903, !904, !905, !906, !907}
!902 = !DILocalVariable(name: "delta", arg: 1, scope: !898, file: !823, line: 43, type: !27)
!903 = !DILocalVariable(name: "mul_frac", arg: 2, scope: !898, file: !823, line: 43, type: !20)
!904 = !DILocalVariable(name: "shift", arg: 3, scope: !898, file: !823, line: 43, type: !49)
!905 = !DILocalVariable(name: "product", scope: !898, file: !823, line: 45, type: !27)
!906 = !DILocalVariable(name: "tmp1", scope: !898, file: !823, line: 47, type: !20)
!907 = !DILocalVariable(name: "tmp2", scope: !898, file: !823, line: 47, type: !20)
!908 = !DILocation(line: 43, column: 52, scope: !898)
!909 = !DILocation(line: 43, column: 63, scope: !898)
!910 = !DILocation(line: 43, column: 77, scope: !898)
!911 = !DILocation(line: 45, column: 2, scope: !898)
!912 = !DILocation(line: 45, column: 6, scope: !898)
!913 = !DILocation(line: 47, column: 2, scope: !898)
!914 = !DILocation(line: 47, column: 6, scope: !898)
!915 = !DILocation(line: 47, column: 12, scope: !898)
!916 = !DILocation(line: 52, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !898, file: !823, line: 52, column: 6)
!918 = !DILocation(line: 52, column: 12, scope: !917)
!919 = !DILocation(line: 52, column: 6, scope: !898)
!920 = !DILocation(line: 53, column: 14, scope: !917)
!921 = !DILocation(line: 53, column: 13, scope: !917)
!922 = !DILocation(line: 53, column: 9, scope: !917)
!923 = !DILocation(line: 53, column: 3, scope: !917)
!924 = !DILocation(line: 55, column: 13, scope: !917)
!925 = !DILocation(line: 55, column: 9, scope: !917)
!926 = !DILocation(line: 67, column: 15, scope: !898)
!927 = !DILocation(line: 67, column: 10, scope: !898)
!928 = !DILocation(line: 67, column: 34, scope: !898)
!929 = !DILocation(line: 67, column: 40, scope: !898)
!930 = !DILocation(line: 67, column: 28, scope: !898)
!931 = !DILocation(line: 67, column: 54, scope: !898)
!932 = !DILocation(line: 58, column: 2, scope: !898)
!933 = !{i64 1909832}
!934 = !DILocation(line: 79, column: 9, scope: !898)
!935 = !DILocation(line: 80, column: 1, scope: !898)
!936 = !DILocation(line: 79, column: 2, scope: !898)
!937 = distinct !DISubprogram(name: "__cvdso_time_data", scope: !75, file: !75, line: 333, type: !938, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{!89, !193, !90}
!940 = !{!941, !942, !943}
!941 = !DILocalVariable(name: "vd", arg: 1, scope: !937, file: !75, line: 333, type: !193)
!942 = !DILocalVariable(name: "time", arg: 2, scope: !937, file: !75, line: 333, type: !90)
!943 = !DILocalVariable(name: "t", scope: !937, file: !75, line: 335, type: !89)
!944 = !DILocation(line: 333, column: 43, scope: !937)
!945 = !DILocation(line: 333, column: 68, scope: !937)
!946 = !DILocation(line: 335, column: 2, scope: !937)
!947 = !DILocation(line: 335, column: 22, scope: !937)
!948 = !DILocation(line: 338, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !937, file: !75, line: 337, column: 6)
!950 = !DILocation(line: 338, column: 10, scope: !949)
!951 = !DILocation(line: 338, column: 21, scope: !949)
!952 = !DILocation(line: 337, column: 6, scope: !937)
!953 = !DILocation(line: 339, column: 36, scope: !949)
!954 = !DILocation(line: 339, column: 8, scope: !949)
!955 = !DILocation(line: 339, column: 6, scope: !949)
!956 = !DILocation(line: 339, column: 3, scope: !949)
!957 = !DILocation(line: 341, column: 6, scope: !958)
!958 = distinct !DILexicalBlock(scope: !937, file: !75, line: 341, column: 6)
!959 = !DILocation(line: 341, column: 6, scope: !960)
!960 = distinct !DILexicalBlock(scope: !958, file: !75, line: 341, column: 6)
!961 = !DILocation(line: 341, column: 6, scope: !937)
!962 = !DILocation(line: 341, column: 4, scope: !937)
!963 = !DILocation(line: 343, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !937, file: !75, line: 343, column: 6)
!965 = !DILocation(line: 343, column: 6, scope: !937)
!966 = !DILocation(line: 344, column: 11, scope: !964)
!967 = !DILocation(line: 344, column: 4, scope: !964)
!968 = !DILocation(line: 344, column: 9, scope: !964)
!969 = !DILocation(line: 344, column: 3, scope: !964)
!970 = !DILocation(line: 346, column: 9, scope: !937)
!971 = !DILocation(line: 347, column: 1, scope: !937)
!972 = !DILocation(line: 346, column: 2, scope: !937)
!973 = distinct !DISubprogram(name: "__cvdso_clock_gettime32_data", scope: !75, file: !75, line: 273, type: !974, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!49, !193, !108, !111}
!976 = !{!977, !978, !979, !980, !981}
!977 = !DILocalVariable(name: "vd", arg: 1, scope: !973, file: !75, line: 273, type: !193)
!978 = !DILocalVariable(name: "clock", arg: 2, scope: !973, file: !75, line: 273, type: !108)
!979 = !DILocalVariable(name: "res", arg: 3, scope: !973, file: !75, line: 274, type: !111)
!980 = !DILocalVariable(name: "ts", scope: !973, file: !75, line: 276, type: !144)
!981 = !DILocalVariable(name: "ret", scope: !973, file: !75, line: 277, type: !49)
!982 = !DILocation(line: 273, column: 54, scope: !973)
!983 = !DILocation(line: 273, column: 68, scope: !973)
!984 = !DILocation(line: 274, column: 32, scope: !973)
!985 = !DILocation(line: 276, column: 2, scope: !973)
!986 = !DILocation(line: 276, column: 27, scope: !973)
!987 = !DILocation(line: 277, column: 2, scope: !973)
!988 = !DILocation(line: 277, column: 6, scope: !973)
!989 = !DILocation(line: 279, column: 37, scope: !973)
!990 = !DILocation(line: 279, column: 41, scope: !973)
!991 = !DILocation(line: 279, column: 8, scope: !973)
!992 = !DILocation(line: 279, column: 6, scope: !973)
!993 = !DILocation(line: 281, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !973, file: !75, line: 281, column: 6)
!995 = !DILocation(line: 281, column: 6, scope: !973)
!996 = !DILocation(line: 282, column: 35, scope: !994)
!997 = !DILocation(line: 282, column: 42, scope: !994)
!998 = !DILocation(line: 282, column: 10, scope: !994)
!999 = !DILocation(line: 282, column: 3, scope: !994)
!1000 = !DILocation(line: 285, column: 19, scope: !973)
!1001 = !DILocation(line: 285, column: 16, scope: !973)
!1002 = !DILocation(line: 285, column: 2, scope: !973)
!1003 = !DILocation(line: 285, column: 7, scope: !973)
!1004 = !DILocation(line: 285, column: 14, scope: !973)
!1005 = !DILocation(line: 286, column: 20, scope: !973)
!1006 = !DILocation(line: 286, column: 17, scope: !973)
!1007 = !DILocation(line: 286, column: 2, scope: !973)
!1008 = !DILocation(line: 286, column: 7, scope: !973)
!1009 = !DILocation(line: 286, column: 15, scope: !973)
!1010 = !DILocation(line: 288, column: 9, scope: !973)
!1011 = !DILocation(line: 288, column: 2, scope: !973)
!1012 = !DILocation(line: 289, column: 1, scope: !973)
!1013 = distinct !DISubprogram(name: "__cvdso_clock_gettime_common", scope: !75, file: !75, line: 228, type: !296, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1014)
!1014 = !{!1015, !1016, !1017, !1018}
!1015 = !DILocalVariable(name: "vd", arg: 1, scope: !1013, file: !75, line: 228, type: !193)
!1016 = !DILocalVariable(name: "clock", arg: 2, scope: !1013, file: !75, line: 228, type: !108)
!1017 = !DILocalVariable(name: "ts", arg: 3, scope: !1013, file: !75, line: 229, type: !143)
!1018 = !DILocalVariable(name: "msk", scope: !1013, file: !75, line: 231, type: !20)
!1019 = !DILocation(line: 228, column: 54, scope: !1013)
!1020 = !DILocation(line: 228, column: 68, scope: !1013)
!1021 = !DILocation(line: 229, column: 35, scope: !1013)
!1022 = !DILocation(line: 231, column: 2, scope: !1013)
!1023 = !DILocation(line: 231, column: 6, scope: !1013)
!1024 = !DILocation(line: 234, column: 6, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1013, file: !75, line: 234, column: 6)
!1026 = !DILocation(line: 234, column: 6, scope: !1013)
!1027 = !DILocation(line: 235, column: 3, scope: !1025)
!1028 = !DILocation(line: 241, column: 14, scope: !1013)
!1029 = !DILocation(line: 241, column: 11, scope: !1013)
!1030 = !DILocation(line: 241, column: 6, scope: !1013)
!1031 = !DILocation(line: 242, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1013, file: !75, line: 242, column: 6)
!1033 = !DILocation(line: 242, column: 6, scope: !1013)
!1034 = !DILocation(line: 243, column: 9, scope: !1032)
!1035 = !DILocation(line: 243, column: 6, scope: !1032)
!1036 = !DILocation(line: 243, column: 3, scope: !1032)
!1037 = !DILocation(line: 244, column: 11, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1032, file: !75, line: 244, column: 11)
!1039 = !DILocation(line: 244, column: 15, scope: !1038)
!1040 = !DILocation(line: 244, column: 11, scope: !1032)
!1041 = !DILocation(line: 245, column: 21, scope: !1038)
!1042 = !DILocation(line: 245, column: 41, scope: !1038)
!1043 = !DILocation(line: 245, column: 48, scope: !1038)
!1044 = !DILocation(line: 245, column: 10, scope: !1038)
!1045 = !DILocation(line: 245, column: 3, scope: !1038)
!1046 = !DILocation(line: 246, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1038, file: !75, line: 246, column: 11)
!1048 = !DILocation(line: 246, column: 15, scope: !1047)
!1049 = !DILocation(line: 246, column: 11, scope: !1038)
!1050 = !DILocation(line: 247, column: 9, scope: !1047)
!1051 = !DILocation(line: 247, column: 6, scope: !1047)
!1052 = !DILocation(line: 247, column: 3, scope: !1047)
!1053 = !DILocation(line: 249, column: 3, scope: !1047)
!1054 = !DILocation(line: 251, column: 17, scope: !1013)
!1055 = !DILocation(line: 251, column: 21, scope: !1013)
!1056 = !DILocation(line: 251, column: 28, scope: !1013)
!1057 = !DILocation(line: 251, column: 9, scope: !1013)
!1058 = !DILocation(line: 251, column: 2, scope: !1013)
!1059 = !DILocation(line: 252, column: 1, scope: !1013)
!1060 = distinct !DISubprogram(name: "clock_gettime32_fallback", scope: !291, file: !291, line: 126, type: !1061, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!57, !108, !111}
!1063 = !{!1064, !1065, !1066}
!1064 = !DILocalVariable(name: "_clkid", arg: 1, scope: !1060, file: !291, line: 126, type: !108)
!1065 = !DILocalVariable(name: "_ts", arg: 2, scope: !1060, file: !291, line: 126, type: !111)
!1066 = !DILocalVariable(name: "ret", scope: !1060, file: !291, line: 128, type: !57)
!1067 = !DILocation(line: 126, column: 41, scope: !1060)
!1068 = !DILocation(line: 126, column: 72, scope: !1060)
!1069 = !DILocation(line: 128, column: 2, scope: !1060)
!1070 = !DILocation(line: 128, column: 7, scope: !1060)
!1071 = !DILocation(line: 135, column: 24, scope: !1060)
!1072 = !DILocation(line: 136, column: 44, scope: !1060)
!1073 = !DILocation(line: 136, column: 58, scope: !1060)
!1074 = !DILocation(line: 130, column: 2, scope: !1060)
!1075 = !{i64 1845376, i64 1845401, i64 1845428, i64 1845458}
!1076 = !DILocation(line: 139, column: 9, scope: !1060)
!1077 = !DILocation(line: 140, column: 1, scope: !1060)
!1078 = !DILocation(line: 139, column: 2, scope: !1060)
!1079 = distinct !DISubprogram(name: "do_coarse", scope: !75, file: !75, line: 201, type: !296, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085}
!1081 = !DILocalVariable(name: "vd", arg: 1, scope: !1079, file: !75, line: 201, type: !193)
!1082 = !DILocalVariable(name: "clk", arg: 2, scope: !1079, file: !75, line: 201, type: !108)
!1083 = !DILocalVariable(name: "ts", arg: 3, scope: !1079, file: !75, line: 202, type: !143)
!1084 = !DILocalVariable(name: "vdso_ts", scope: !1079, file: !75, line: 204, type: !303)
!1085 = !DILocalVariable(name: "seq", scope: !1079, file: !75, line: 205, type: !20)
!1086 = !DILocation(line: 201, column: 62, scope: !1079)
!1087 = !DILocation(line: 201, column: 76, scope: !1079)
!1088 = !DILocation(line: 202, column: 36, scope: !1079)
!1089 = !DILocation(line: 204, column: 2, scope: !1079)
!1090 = !DILocation(line: 204, column: 31, scope: !1079)
!1091 = !DILocation(line: 204, column: 42, scope: !1079)
!1092 = !DILocation(line: 204, column: 46, scope: !1079)
!1093 = !DILocation(line: 204, column: 55, scope: !1079)
!1094 = !DILocation(line: 205, column: 2, scope: !1079)
!1095 = !DILocation(line: 205, column: 6, scope: !1079)
!1096 = !DILocation(line: 207, column: 2, scope: !1079)
!1097 = !DILocation(line: 212, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1079, file: !75, line: 207, column: 5)
!1099 = !DILocation(line: 212, column: 17, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1098, file: !75, line: 212, column: 17)
!1101 = !DILocation(line: 212, column: 17, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1100, file: !75, line: 212, column: 17)
!1103 = !DILocation(line: 212, column: 15, scope: !1098)
!1104 = !DILocation(line: 212, column: 37, scope: !1098)
!1105 = !DILocation(line: 214, column: 8, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !75, line: 213, column: 8)
!1107 = distinct !DILexicalBlock(scope: !1098, file: !75, line: 212, column: 42)
!1108 = !DILocation(line: 214, column: 12, scope: !1106)
!1109 = !DILocation(line: 214, column: 23, scope: !1106)
!1110 = !DILocation(line: 213, column: 8, scope: !1107)
!1111 = !DILocation(line: 215, column: 29, scope: !1106)
!1112 = !DILocation(line: 215, column: 33, scope: !1106)
!1113 = !DILocation(line: 215, column: 38, scope: !1106)
!1114 = !DILocation(line: 215, column: 12, scope: !1106)
!1115 = !DILocation(line: 215, column: 5, scope: !1106)
!1116 = !DILocation(line: 216, column: 4, scope: !1107)
!1117 = distinct !{!1117, !1097, !1118, !351, !352}
!1118 = !DILocation(line: 217, column: 3, scope: !1098)
!1119 = !DILocation(line: 218, column: 3, scope: !1098)
!1120 = !DILocation(line: 218, column: 3, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1098, file: !75, line: 218, column: 3)
!1122 = !DILocation(line: 218, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !75, line: 218, column: 3)
!1124 = !DILocation(line: 218, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !75, line: 218, column: 3)
!1126 = !DILocation(line: 218, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1125, file: !75, line: 218, column: 3)
!1128 = !{i64 2152324415}
!1129 = !DILocation(line: 220, column: 16, scope: !1098)
!1130 = !DILocation(line: 220, column: 25, scope: !1098)
!1131 = !DILocation(line: 220, column: 3, scope: !1098)
!1132 = !DILocation(line: 220, column: 7, scope: !1098)
!1133 = !DILocation(line: 220, column: 14, scope: !1098)
!1134 = !DILocation(line: 221, column: 17, scope: !1098)
!1135 = !DILocation(line: 221, column: 26, scope: !1098)
!1136 = !DILocation(line: 221, column: 3, scope: !1098)
!1137 = !DILocation(line: 221, column: 7, scope: !1098)
!1138 = !DILocation(line: 221, column: 15, scope: !1098)
!1139 = !DILocation(line: 222, column: 2, scope: !1098)
!1140 = !DILocation(line: 222, column: 11, scope: !1079)
!1141 = distinct !{!1141, !1096, !1142, !351, !352}
!1142 = !DILocation(line: 222, column: 45, scope: !1079)
!1143 = !DILocation(line: 224, column: 2, scope: !1079)
!1144 = !DILocation(line: 225, column: 1, scope: !1079)
!1145 = distinct !DISubprogram(name: "do_coarse_timens", scope: !75, file: !75, line: 165, type: !296, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155}
!1147 = !DILocalVariable(name: "vdns", arg: 1, scope: !1145, file: !75, line: 165, type: !193)
!1148 = !DILocalVariable(name: "clk", arg: 2, scope: !1145, file: !75, line: 165, type: !108)
!1149 = !DILocalVariable(name: "ts", arg: 3, scope: !1145, file: !75, line: 166, type: !143)
!1150 = !DILocalVariable(name: "vd", scope: !1145, file: !75, line: 168, type: !193)
!1151 = !DILocalVariable(name: "vdso_ts", scope: !1145, file: !75, line: 169, type: !303)
!1152 = !DILocalVariable(name: "offs", scope: !1145, file: !75, line: 170, type: !453)
!1153 = !DILocalVariable(name: "nsec", scope: !1145, file: !75, line: 171, type: !27)
!1154 = !DILocalVariable(name: "sec", scope: !1145, file: !75, line: 172, type: !30)
!1155 = !DILocalVariable(name: "seq", scope: !1145, file: !75, line: 173, type: !117)
!1156 = !DILocation(line: 165, column: 69, scope: !1145)
!1157 = !DILocation(line: 165, column: 85, scope: !1145)
!1158 = !DILocation(line: 166, column: 36, scope: !1145)
!1159 = !DILocation(line: 168, column: 2, scope: !1145)
!1160 = !DILocation(line: 168, column: 26, scope: !1145)
!1161 = !DILocation(line: 168, column: 59, scope: !1145)
!1162 = !DILocation(line: 168, column: 31, scope: !1145)
!1163 = !DILocation(line: 169, column: 2, scope: !1145)
!1164 = !DILocation(line: 169, column: 31, scope: !1145)
!1165 = !DILocation(line: 169, column: 42, scope: !1145)
!1166 = !DILocation(line: 169, column: 46, scope: !1145)
!1167 = !DILocation(line: 169, column: 55, scope: !1145)
!1168 = !DILocation(line: 170, column: 2, scope: !1145)
!1169 = !DILocation(line: 170, column: 30, scope: !1145)
!1170 = !DILocation(line: 170, column: 38, scope: !1145)
!1171 = !DILocation(line: 170, column: 44, scope: !1145)
!1172 = !DILocation(line: 170, column: 51, scope: !1145)
!1173 = !DILocation(line: 171, column: 2, scope: !1145)
!1174 = !DILocation(line: 171, column: 6, scope: !1145)
!1175 = !DILocation(line: 172, column: 2, scope: !1145)
!1176 = !DILocation(line: 172, column: 6, scope: !1145)
!1177 = !DILocation(line: 173, column: 2, scope: !1145)
!1178 = !DILocation(line: 173, column: 6, scope: !1145)
!1179 = !DILocation(line: 175, column: 2, scope: !1145)
!1180 = !DILocation(line: 176, column: 25, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1145, file: !75, line: 175, column: 5)
!1182 = !DILocation(line: 176, column: 9, scope: !1181)
!1183 = !DILocation(line: 176, column: 7, scope: !1181)
!1184 = !DILocation(line: 177, column: 9, scope: !1181)
!1185 = !DILocation(line: 177, column: 18, scope: !1181)
!1186 = !DILocation(line: 177, column: 7, scope: !1181)
!1187 = !DILocation(line: 178, column: 10, scope: !1181)
!1188 = !DILocation(line: 178, column: 19, scope: !1181)
!1189 = !DILocation(line: 178, column: 8, scope: !1181)
!1190 = !DILocation(line: 179, column: 2, scope: !1181)
!1191 = !DILocation(line: 179, column: 11, scope: !1145)
!1192 = distinct !{!1192, !1179, !1193, !351, !352}
!1193 = !DILocation(line: 179, column: 45, scope: !1145)
!1194 = !DILocation(line: 182, column: 9, scope: !1145)
!1195 = !DILocation(line: 182, column: 15, scope: !1145)
!1196 = !DILocation(line: 182, column: 6, scope: !1145)
!1197 = !DILocation(line: 183, column: 10, scope: !1145)
!1198 = !DILocation(line: 183, column: 16, scope: !1145)
!1199 = !DILocation(line: 183, column: 7, scope: !1145)
!1200 = !DILocation(line: 189, column: 15, scope: !1145)
!1201 = !DILocation(line: 189, column: 40, scope: !1145)
!1202 = !DILocation(line: 189, column: 21, scope: !1145)
!1203 = !DILocation(line: 189, column: 19, scope: !1145)
!1204 = !DILocation(line: 189, column: 2, scope: !1145)
!1205 = !DILocation(line: 189, column: 6, scope: !1145)
!1206 = !DILocation(line: 189, column: 13, scope: !1145)
!1207 = !DILocation(line: 190, column: 16, scope: !1145)
!1208 = !DILocation(line: 190, column: 2, scope: !1145)
!1209 = !DILocation(line: 190, column: 6, scope: !1145)
!1210 = !DILocation(line: 190, column: 14, scope: !1145)
!1211 = !DILocation(line: 192, column: 1, scope: !1145)
!1212 = !DILocation(line: 191, column: 2, scope: !1145)
!1213 = distinct !DISubprogram(name: "__cvdso_clock_gettime_data", scope: !75, file: !75, line: 255, type: !296, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1214)
!1214 = !{!1215, !1216, !1217, !1218}
!1215 = !DILocalVariable(name: "vd", arg: 1, scope: !1213, file: !75, line: 255, type: !193)
!1216 = !DILocalVariable(name: "clock", arg: 2, scope: !1213, file: !75, line: 255, type: !108)
!1217 = !DILocalVariable(name: "ts", arg: 3, scope: !1213, file: !75, line: 256, type: !143)
!1218 = !DILocalVariable(name: "ret", scope: !1213, file: !75, line: 258, type: !49)
!1219 = !DILocation(line: 255, column: 52, scope: !1213)
!1220 = !DILocation(line: 255, column: 66, scope: !1213)
!1221 = !DILocation(line: 256, column: 33, scope: !1213)
!1222 = !DILocation(line: 258, column: 2, scope: !1213)
!1223 = !DILocation(line: 258, column: 6, scope: !1213)
!1224 = !DILocation(line: 258, column: 41, scope: !1213)
!1225 = !DILocation(line: 258, column: 45, scope: !1213)
!1226 = !DILocation(line: 258, column: 52, scope: !1213)
!1227 = !DILocation(line: 258, column: 12, scope: !1213)
!1228 = !DILocation(line: 260, column: 6, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1213, file: !75, line: 260, column: 6)
!1230 = !DILocation(line: 260, column: 6, scope: !1213)
!1231 = !DILocation(line: 261, column: 33, scope: !1229)
!1232 = !DILocation(line: 261, column: 40, scope: !1229)
!1233 = !DILocation(line: 261, column: 10, scope: !1229)
!1234 = !DILocation(line: 261, column: 3, scope: !1229)
!1235 = !DILocation(line: 262, column: 2, scope: !1213)
!1236 = !DILocation(line: 263, column: 1, scope: !1213)
!1237 = distinct !DISubprogram(name: "clock_gettime_fallback", scope: !291, file: !291, line: 109, type: !1238, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1240)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!57, !108, !143}
!1240 = !{!1241, !1242, !1243}
!1241 = !DILocalVariable(name: "_clkid", arg: 1, scope: !1237, file: !291, line: 109, type: !108)
!1242 = !DILocalVariable(name: "_ts", arg: 2, scope: !1237, file: !291, line: 109, type: !143)
!1243 = !DILocalVariable(name: "ret", scope: !1237, file: !291, line: 111, type: !57)
!1244 = !DILocation(line: 109, column: 39, scope: !1237)
!1245 = !DILocation(line: 109, column: 73, scope: !1237)
!1246 = !DILocation(line: 111, column: 2, scope: !1237)
!1247 = !DILocation(line: 111, column: 7, scope: !1237)
!1248 = !DILocation(line: 118, column: 24, scope: !1237)
!1249 = !DILocation(line: 119, column: 46, scope: !1237)
!1250 = !DILocation(line: 119, column: 60, scope: !1237)
!1251 = !DILocation(line: 113, column: 2, scope: !1237)
!1252 = !{i64 1845030, i64 1845055, i64 1845082, i64 1845112}
!1253 = !DILocation(line: 122, column: 9, scope: !1237)
!1254 = !DILocation(line: 123, column: 1, scope: !1237)
!1255 = !DILocation(line: 122, column: 2, scope: !1237)
!1256 = distinct !DISubprogram(name: "__cvdso_clock_getres_time32_data", scope: !75, file: !75, line: 416, type: !974, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262}
!1258 = !DILocalVariable(name: "vd", arg: 1, scope: !1256, file: !75, line: 416, type: !193)
!1259 = !DILocalVariable(name: "clock", arg: 2, scope: !1256, file: !75, line: 416, type: !108)
!1260 = !DILocalVariable(name: "res", arg: 3, scope: !1256, file: !75, line: 417, type: !111)
!1261 = !DILocalVariable(name: "ts", scope: !1256, file: !75, line: 419, type: !144)
!1262 = !DILocalVariable(name: "ret", scope: !1256, file: !75, line: 420, type: !49)
!1263 = !DILocation(line: 416, column: 58, scope: !1256)
!1264 = !DILocation(line: 416, column: 72, scope: !1256)
!1265 = !DILocation(line: 417, column: 29, scope: !1256)
!1266 = !DILocation(line: 419, column: 2, scope: !1256)
!1267 = !DILocation(line: 419, column: 27, scope: !1256)
!1268 = !DILocation(line: 420, column: 2, scope: !1256)
!1269 = !DILocation(line: 420, column: 6, scope: !1256)
!1270 = !DILocation(line: 422, column: 36, scope: !1256)
!1271 = !DILocation(line: 422, column: 40, scope: !1256)
!1272 = !DILocation(line: 422, column: 8, scope: !1256)
!1273 = !DILocation(line: 422, column: 6, scope: !1256)
!1274 = !DILocation(line: 424, column: 6, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1256, file: !75, line: 424, column: 6)
!1276 = !DILocation(line: 424, column: 6, scope: !1256)
!1277 = !DILocation(line: 425, column: 34, scope: !1275)
!1278 = !DILocation(line: 425, column: 41, scope: !1275)
!1279 = !DILocation(line: 425, column: 10, scope: !1275)
!1280 = !DILocation(line: 425, column: 3, scope: !1275)
!1281 = !DILocation(line: 427, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1256, file: !75, line: 427, column: 6)
!1283 = !DILocation(line: 427, column: 6, scope: !1256)
!1284 = !DILocation(line: 428, column: 20, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !75, line: 427, column: 19)
!1286 = !DILocation(line: 428, column: 17, scope: !1285)
!1287 = !DILocation(line: 428, column: 3, scope: !1285)
!1288 = !DILocation(line: 428, column: 8, scope: !1285)
!1289 = !DILocation(line: 428, column: 15, scope: !1285)
!1290 = !DILocation(line: 429, column: 21, scope: !1285)
!1291 = !DILocation(line: 429, column: 18, scope: !1285)
!1292 = !DILocation(line: 429, column: 3, scope: !1285)
!1293 = !DILocation(line: 429, column: 8, scope: !1285)
!1294 = !DILocation(line: 429, column: 16, scope: !1285)
!1295 = !DILocation(line: 430, column: 2, scope: !1285)
!1296 = !DILocation(line: 431, column: 9, scope: !1256)
!1297 = !DILocation(line: 431, column: 2, scope: !1256)
!1298 = !DILocation(line: 432, column: 1, scope: !1256)
!1299 = distinct !DISubprogram(name: "__cvdso_clock_getres_common", scope: !75, file: !75, line: 357, type: !296, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1305}
!1301 = !DILocalVariable(name: "vd", arg: 1, scope: !1299, file: !75, line: 357, type: !193)
!1302 = !DILocalVariable(name: "clock", arg: 2, scope: !1299, file: !75, line: 357, type: !108)
!1303 = !DILocalVariable(name: "res", arg: 3, scope: !1299, file: !75, line: 358, type: !143)
!1304 = !DILocalVariable(name: "msk", scope: !1299, file: !75, line: 360, type: !20)
!1305 = !DILocalVariable(name: "ns", scope: !1299, file: !75, line: 361, type: !27)
!1306 = !DILocation(line: 357, column: 57, scope: !1299)
!1307 = !DILocation(line: 357, column: 71, scope: !1299)
!1308 = !DILocation(line: 358, column: 31, scope: !1299)
!1309 = !DILocation(line: 360, column: 2, scope: !1299)
!1310 = !DILocation(line: 360, column: 6, scope: !1299)
!1311 = !DILocation(line: 361, column: 2, scope: !1299)
!1312 = !DILocation(line: 361, column: 6, scope: !1299)
!1313 = !DILocation(line: 364, column: 6, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1299, file: !75, line: 364, column: 6)
!1315 = !DILocation(line: 364, column: 6, scope: !1299)
!1316 = !DILocation(line: 365, column: 3, scope: !1314)
!1317 = !DILocation(line: 368, column: 6, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1299, file: !75, line: 367, column: 6)
!1319 = !DILocation(line: 368, column: 10, scope: !1318)
!1320 = !DILocation(line: 368, column: 21, scope: !1318)
!1321 = !DILocation(line: 367, column: 6, scope: !1299)
!1322 = !DILocation(line: 369, column: 36, scope: !1318)
!1323 = !DILocation(line: 369, column: 8, scope: !1318)
!1324 = !DILocation(line: 369, column: 6, scope: !1318)
!1325 = !DILocation(line: 369, column: 3, scope: !1318)
!1326 = !DILocation(line: 375, column: 14, scope: !1299)
!1327 = !DILocation(line: 375, column: 11, scope: !1299)
!1328 = !DILocation(line: 375, column: 6, scope: !1299)
!1329 = !DILocation(line: 376, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1299, file: !75, line: 376, column: 6)
!1331 = !DILocation(line: 376, column: 10, scope: !1330)
!1332 = !DILocation(line: 376, column: 6, scope: !1299)
!1333 = !DILocation(line: 380, column: 8, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !75, line: 380, column: 8)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !75, line: 376, column: 36)
!1336 = !DILocation(line: 380, column: 8, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !75, line: 380, column: 8)
!1338 = !DILocation(line: 380, column: 8, scope: !1335)
!1339 = !DILocation(line: 380, column: 6, scope: !1335)
!1340 = !DILocation(line: 381, column: 2, scope: !1335)
!1341 = !DILocation(line: 381, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1330, file: !75, line: 381, column: 13)
!1343 = !DILocation(line: 381, column: 17, scope: !1342)
!1344 = !DILocation(line: 381, column: 13, scope: !1330)
!1345 = !DILocation(line: 385, column: 6, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !75, line: 381, column: 32)
!1347 = !DILocation(line: 386, column: 2, scope: !1346)
!1348 = !DILocation(line: 387, column: 3, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1342, file: !75, line: 386, column: 9)
!1350 = !DILocation(line: 390, column: 6, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1299, file: !75, line: 390, column: 6)
!1352 = !DILocation(line: 390, column: 6, scope: !1299)
!1353 = !DILocation(line: 391, column: 3, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1351, file: !75, line: 390, column: 19)
!1355 = !DILocation(line: 391, column: 8, scope: !1354)
!1356 = !DILocation(line: 391, column: 15, scope: !1354)
!1357 = !DILocation(line: 392, column: 18, scope: !1354)
!1358 = !DILocation(line: 392, column: 3, scope: !1354)
!1359 = !DILocation(line: 392, column: 8, scope: !1354)
!1360 = !DILocation(line: 392, column: 16, scope: !1354)
!1361 = !DILocation(line: 393, column: 2, scope: !1354)
!1362 = !DILocation(line: 394, column: 2, scope: !1299)
!1363 = !DILocation(line: 395, column: 1, scope: !1299)
!1364 = distinct !DISubprogram(name: "clock_getres32_fallback", scope: !291, file: !291, line: 178, type: !1061, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DILocalVariable(name: "_clkid", arg: 1, scope: !1364, file: !291, line: 178, type: !108)
!1367 = !DILocalVariable(name: "_ts", arg: 2, scope: !1364, file: !291, line: 178, type: !111)
!1368 = !DILocalVariable(name: "ret", scope: !1364, file: !291, line: 180, type: !57)
!1369 = !DILocation(line: 178, column: 40, scope: !1364)
!1370 = !DILocation(line: 178, column: 71, scope: !1364)
!1371 = !DILocation(line: 180, column: 2, scope: !1364)
!1372 = !DILocation(line: 180, column: 7, scope: !1364)
!1373 = !DILocation(line: 187, column: 24, scope: !1364)
!1374 = !DILocation(line: 188, column: 43, scope: !1364)
!1375 = !DILocation(line: 188, column: 57, scope: !1364)
!1376 = !DILocation(line: 182, column: 2, scope: !1364)
!1377 = !{i64 1846404, i64 1846429, i64 1846456, i64 1846486}
!1378 = !DILocation(line: 191, column: 9, scope: !1364)
!1379 = !DILocation(line: 192, column: 1, scope: !1364)
!1380 = !DILocation(line: 191, column: 2, scope: !1364)
