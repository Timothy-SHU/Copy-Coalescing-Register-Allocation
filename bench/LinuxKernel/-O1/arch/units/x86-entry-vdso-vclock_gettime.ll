; ModuleID = 'arch/x86/entry/vdso/vclock_gettime.c'
source_filename = "arch/x86/entry/vdso/vclock_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_vsyscall_time_info = type { %struct.pvclock_vcpu_time_info, [32 x i8] }
%struct.pvclock_vcpu_time_info = type { i32, i32, i64, i64, i32, i8, i8, [2 x i8] }
%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.__kernel_timespec = type { i64, i64 }
%struct.__kernel_old_timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.timens_offset = type { i64, i64 }

@pvclock_page = external hidden global %struct.pvclock_vsyscall_time_info, align 64
@timens__vdso_data = external hidden global [2 x %struct.vdso_data], align 16
@vvar__vdso_data = external hidden global [2 x %struct.vdso_data], align 16

@gettimeofday = weak alias i32 (ptr, ptr), ptr @__vdso_gettimeofday
@time = weak alias i64 (ptr), ptr @__vdso_time
@clock_gettime = weak alias i32 (i32, ptr), ptr @__vdso_clock_gettime
@clock_getres = weak alias i32 (i32, ptr), ptr @__vdso_clock_getres

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define i32 @__vdso_gettimeofday(ptr noundef %tv, ptr noundef %tz) #0 align 16 !dbg !46 {
entry:
  %tv.addr = alloca ptr, align 8
  %tz.addr = alloca ptr, align 8
  store ptr %tv, ptr %tv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !66, metadata !DIExpression()), !dbg !68
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !67, metadata !DIExpression()), !dbg !69
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !70
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !71
  %call = call i32 @__cvdso_gettimeofday(ptr noundef %0, ptr noundef %1) #6, !dbg !72
  ret i32 %call, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @__cvdso_gettimeofday(ptr noundef %tv, ptr noundef %tz) #0 align 16 !dbg !74 {
entry:
  %tv.addr = alloca ptr, align 8
  %tz.addr = alloca ptr, align 8
  store ptr %tv, ptr %tv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !77, metadata !DIExpression()), !dbg !79
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !78, metadata !DIExpression()), !dbg !80
  %call = call ptr @__arch_get_vdso_data() #6, !dbg !81
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !82
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !83
  %call1 = call i32 @__cvdso_gettimeofday_data(ptr noundef %call, ptr noundef %0, ptr noundef %1) #6, !dbg !84
  ret i32 %call1, !dbg !85
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define i64 @__vdso_time(ptr noundef %t) #0 align 16 !dbg !86 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load ptr, ptr %t.addr, align 8, !dbg !94
  %call = call i64 @__cvdso_time(ptr noundef %0) #6, !dbg !95
  ret i64 %call, !dbg !96
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @__cvdso_time(ptr noundef %time) #0 align 16 !dbg !97 {
entry:
  %time.addr = alloca ptr, align 8
  store ptr %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %call = call ptr @__arch_get_vdso_data() #6, !dbg !101
  %0 = load ptr, ptr %time.addr, align 8, !dbg !102
  %call1 = call i64 @__cvdso_time_data(ptr noundef %call, ptr noundef %0) #6, !dbg !103
  ret i64 %call1, !dbg !104
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define i32 @__vdso_clock_gettime(i32 noundef %clock, ptr noundef %ts) #0 align 16 !dbg !105 {
entry:
  %clock.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !118, metadata !DIExpression()), !dbg !120
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !119, metadata !DIExpression()), !dbg !121
  %0 = load i32, ptr %clock.addr, align 4, !dbg !122
  %1 = load ptr, ptr %ts.addr, align 8, !dbg !123
  %call = call i32 @__cvdso_clock_gettime(i32 noundef %0, ptr noundef %1) #6, !dbg !124
  ret i32 %call, !dbg !125
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @__cvdso_clock_gettime(i32 noundef %clock, ptr noundef %ts) #0 align 16 !dbg !126 {
entry:
  %clock.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !128, metadata !DIExpression()), !dbg !130
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !129, metadata !DIExpression()), !dbg !131
  %call = call ptr @__arch_get_vdso_data() #6, !dbg !132
  %0 = load i32, ptr %clock.addr, align 4, !dbg !133
  %1 = load ptr, ptr %ts.addr, align 8, !dbg !134
  %call1 = call i32 @__cvdso_clock_gettime_data(ptr noundef %call, i32 noundef %0, ptr noundef %1) #6, !dbg !135
  ret i32 %call1, !dbg !136
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define i32 @__vdso_clock_getres(i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !137 {
entry:
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !139, metadata !DIExpression()), !dbg !141
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !140, metadata !DIExpression()), !dbg !142
  %0 = load i32, ptr %clock.addr, align 4, !dbg !143
  %1 = load ptr, ptr %res.addr, align 8, !dbg !144
  %call = call i32 @__cvdso_clock_getres(i32 noundef %0, ptr noundef %1) #6, !dbg !145
  ret i32 %call, !dbg !146
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @__cvdso_clock_getres(i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !147 {
entry:
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !149, metadata !DIExpression()), !dbg !151
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !150, metadata !DIExpression()), !dbg !152
  %call = call ptr @__arch_get_vdso_data() #6, !dbg !153
  %0 = load i32, ptr %clock.addr, align 4, !dbg !154
  %1 = load ptr, ptr %res.addr, align 8, !dbg !155
  %call1 = call i32 @__cvdso_clock_getres_data(ptr noundef %call, i32 noundef %0, ptr noundef %1) #6, !dbg !156
  ret i32 %call1, !dbg !157
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @__cvdso_gettimeofday_data(ptr noundef %vd, ptr noundef %tv, ptr noundef %tz) #0 align 16 !dbg !158 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 8
  %tv.addr = alloca ptr, align 8
  %tz.addr = alloca ptr, align 8
  %ts = alloca %struct.__kernel_timespec, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !200, metadata !DIExpression()), !dbg !206
  store ptr %tv, ptr %tv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tv.addr, metadata !201, metadata !DIExpression()), !dbg !207
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !202, metadata !DIExpression()), !dbg !208
  %0 = load ptr, ptr %tv.addr, align 8, !dbg !209
  %cmp = icmp ne ptr %0, null, !dbg !209
  %lnot = xor i1 %cmp, true, !dbg !209
  %lnot1 = xor i1 %lnot, true, !dbg !209
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !209
  %conv = sext i32 %lnot.ext to i64, !dbg !209
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !209
  %tobool = icmp ne i64 %expval, 0, !dbg !209
  br i1 %tobool, label %if.then, label %if.end9, !dbg !210

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #7, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !203, metadata !DIExpression()), !dbg !212
  %1 = load ptr, ptr %vd.addr, align 8, !dbg !213
  %arrayidx = getelementptr %struct.vdso_data, ptr %1, i64 0, !dbg !213
  %call = call i32 @do_hres(ptr noundef %arrayidx, i32 noundef 0, ptr noundef %ts) #6, !dbg !215
  %tobool2 = icmp ne i32 %call, 0, !dbg !215
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !216

if.then3:                                         ; preds = %if.then
  %2 = load ptr, ptr %tv.addr, align 8, !dbg !217
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !218
  %call4 = call i64 @gettimeofday_fallback(ptr noundef %2, ptr noundef %3) #6, !dbg !219
  %conv5 = trunc i64 %call4 to i32, !dbg !219
  store i32 %conv5, ptr %retval, align 4, !dbg !220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !220

if.end:                                           ; preds = %if.then
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 0, !dbg !221
  %4 = load i64, ptr %tv_sec, align 8, !dbg !221
  %5 = load ptr, ptr %tv.addr, align 8, !dbg !222
  %tv_sec6 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %5, i32 0, i32 0, !dbg !223
  store i64 %4, ptr %tv_sec6, align 8, !dbg !224
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %ts, i32 0, i32 1, !dbg !225
  %6 = load i64, ptr %tv_nsec, align 8, !dbg !225
  %conv7 = trunc i64 %6 to i32, !dbg !226
  %conv8 = zext i32 %conv7 to i64, !dbg !226
  %div = sdiv i64 %conv8, 1000, !dbg !227
  %7 = load ptr, ptr %tv.addr, align 8, !dbg !228
  %tv_usec = getelementptr inbounds %struct.__kernel_old_timeval, ptr %7, i32 0, i32 1, !dbg !229
  store i64 %div, ptr %tv_usec, align 8, !dbg !230
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !231
  br label %cleanup, !dbg !231

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #7, !dbg !231
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end9, !dbg !232

if.end9:                                          ; preds = %cleanup.cont, %entry
  %8 = load ptr, ptr %tz.addr, align 8, !dbg !233
  %cmp10 = icmp ne ptr %8, null, !dbg !233
  %lnot12 = xor i1 %cmp10, true, !dbg !233
  %lnot14 = xor i1 %lnot12, true, !dbg !233
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !233
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !233
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !233
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !233
  br i1 %tobool18, label %if.then19, label %if.end29, !dbg !235

if.then19:                                        ; preds = %if.end9
  %9 = load ptr, ptr %vd.addr, align 8, !dbg !236
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %9, i32 0, i32 1, !dbg !239
  %10 = load i32, ptr %clock_mode, align 4, !dbg !239
  %cmp20 = icmp eq i32 %10, 2147483647, !dbg !240
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !241

if.then22:                                        ; preds = %if.then19
  %11 = load ptr, ptr %vd.addr, align 8, !dbg !242
  %call23 = call ptr @__arch_get_timens_vdso_data(ptr noundef %11) #6, !dbg !243
  store ptr %call23, ptr %vd.addr, align 8, !dbg !244
  br label %if.end24, !dbg !245

if.end24:                                         ; preds = %if.then22, %if.then19
  %12 = load ptr, ptr %vd.addr, align 8, !dbg !246
  %arrayidx25 = getelementptr %struct.vdso_data, ptr %12, i64 0, !dbg !246
  %tz_minuteswest = getelementptr inbounds %struct.vdso_data, ptr %arrayidx25, i32 0, i32 7, !dbg !247
  %13 = load i32, ptr %tz_minuteswest, align 8, !dbg !247
  %14 = load ptr, ptr %tz.addr, align 8, !dbg !248
  %tz_minuteswest26 = getelementptr inbounds %struct.timezone, ptr %14, i32 0, i32 0, !dbg !249
  store i32 %13, ptr %tz_minuteswest26, align 4, !dbg !250
  %15 = load ptr, ptr %vd.addr, align 8, !dbg !251
  %arrayidx27 = getelementptr %struct.vdso_data, ptr %15, i64 0, !dbg !251
  %tz_dsttime = getelementptr inbounds %struct.vdso_data, ptr %arrayidx27, i32 0, i32 8, !dbg !252
  %16 = load i32, ptr %tz_dsttime, align 4, !dbg !252
  %17 = load ptr, ptr %tz.addr, align 8, !dbg !253
  %tz_dsttime28 = getelementptr inbounds %struct.timezone, ptr %17, i32 0, i32 1, !dbg !254
  store i32 %16, ptr %tz_dsttime28, align 4, !dbg !255
  br label %if.end29, !dbg !256

if.end29:                                         ; preds = %if.end24, %if.end9
  store i32 0, ptr %retval, align 4, !dbg !257
  br label %return, !dbg !257

return:                                           ; preds = %if.end29, %cleanup
  %18 = load i32, ptr %retval, align 4, !dbg !258
  ret i32 %18, !dbg !258

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal ptr @__arch_get_vdso_data() #2 align 16 !dbg !259 {
entry:
  ret ptr @vvar__vdso_data, !dbg !263
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @do_hres(ptr noundef %vd, i32 noundef %clk, ptr noundef %ts) #2 align 16 !dbg !264 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 8
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %vdso_ts = alloca ptr, align 8
  %cycles = alloca i64, align 8
  %last = alloca i64, align 8
  %sec = alloca i64, align 8
  %ns = alloca i64, align 8
  %seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !268, metadata !DIExpression()), !dbg !279
  store i32 %clk, ptr %clk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !269, metadata !DIExpression()), !dbg !280
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !270, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdso_ts) #7, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !271, metadata !DIExpression()), !dbg !283
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !284
  %1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 6, !dbg !285
  %2 = load i32, ptr %clk.addr, align 4, !dbg !286
  %idxprom = sext i32 %2 to i64, !dbg !284
  %arrayidx = getelementptr [12 x %struct.vdso_timestamp], ptr %1, i64 0, i64 %idxprom, !dbg !284
  store ptr %arrayidx, ptr %vdso_ts, align 8, !dbg !283
  call void @llvm.lifetime.start.p0(i64 8, ptr %cycles) #7, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %cycles, metadata !274, metadata !DIExpression()), !dbg !288
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #7, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %last, metadata !275, metadata !DIExpression()), !dbg !289
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #7, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !276, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #7, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !277, metadata !DIExpression()), !dbg !291
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !278, metadata !DIExpression()), !dbg !293
  %call = call zeroext i1 @__arch_vdso_hres_capable() #6, !dbg !294
  br i1 %call, label %if.end, label %if.then, !dbg !296

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !297

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !298

do.body:                                          ; preds = %do.cond50, %if.end
  br label %while.cond, !dbg !299

while.cond:                                       ; preds = %if.end8, %do.body
  br label %do.body1, !dbg !301

do.body1:                                         ; preds = %while.cond
  br label %do.cond, !dbg !303

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !303

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %vd.addr, align 8, !dbg !301
  %seq2 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 0, !dbg !301
  %4 = load volatile i32, ptr %seq2, align 8, !dbg !301
  store i32 %4, ptr %tmp, align 4, !dbg !303
  %5 = load i32, ptr %tmp, align 4, !dbg !301
  store i32 %5, ptr %seq, align 4, !dbg !305
  %and = and i32 %5, 1, !dbg !305
  %tobool = icmp ne i32 %and, 0, !dbg !305
  %lnot = xor i1 %tobool, true, !dbg !305
  %lnot3 = xor i1 %lnot, true, !dbg !305
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !305
  %conv = sext i32 %lnot.ext to i64, !dbg !305
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !305
  %tobool4 = icmp ne i64 %expval, 0, !dbg !299
  br i1 %tobool4, label %while.body, label %while.end, !dbg !299

while.body:                                       ; preds = %do.end
  %6 = load ptr, ptr %vd.addr, align 8, !dbg !306
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %6, i32 0, i32 1, !dbg !309
  %7 = load i32, ptr %clock_mode, align 4, !dbg !309
  %cmp = icmp eq i32 %7, 2147483647, !dbg !310
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !311

if.then6:                                         ; preds = %while.body
  %8 = load ptr, ptr %vd.addr, align 8, !dbg !312
  %9 = load i32, ptr %clk.addr, align 4, !dbg !313
  %10 = load ptr, ptr %ts.addr, align 8, !dbg !314
  %call7 = call i32 @do_hres_timens(ptr noundef %8, i32 noundef %9, ptr noundef %10) #6, !dbg !315
  store i32 %call7, ptr %retval, align 4, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

if.end8:                                          ; preds = %while.body
  call void @cpu_relax() #6, !dbg !317
  br label %while.cond, !dbg !299, !llvm.loop !318

while.end:                                        ; preds = %do.end
  br label %do.body9, !dbg !322

do.body9:                                         ; preds = %while.end
  br label %do.body10, !dbg !323

do.body10:                                        ; preds = %do.body9
  br label %do.cond11, !dbg !325

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !325

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !323

do.body13:                                        ; preds = %do.end12
  br label %do.body14, !dbg !327

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !329

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !329

do.end16:                                         ; preds = %do.cond15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !327, !srcloc !331
  br label %do.cond17, !dbg !327

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !327

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !323

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !323

do.end20:                                         ; preds = %do.cond19
  %11 = load ptr, ptr %vd.addr, align 8, !dbg !332
  %call21 = call zeroext i1 @arch_vdso_clocksource_ok(ptr noundef %11) #6, !dbg !332
  %lnot22 = xor i1 %call21, true, !dbg !332
  %lnot24 = xor i1 %lnot22, true, !dbg !332
  %lnot26 = xor i1 %lnot24, true, !dbg !332
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !332
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !332
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !332
  %tobool30 = icmp ne i64 %expval29, 0, !dbg !332
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !334

if.then31:                                        ; preds = %do.end20
  store i32 -1, ptr %retval, align 4, !dbg !335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !335

if.end32:                                         ; preds = %do.end20
  %12 = load ptr, ptr %vd.addr, align 8, !dbg !336
  %clock_mode33 = getelementptr inbounds %struct.vdso_data, ptr %12, i32 0, i32 1, !dbg !337
  %13 = load i32, ptr %clock_mode33, align 4, !dbg !337
  %14 = load ptr, ptr %vd.addr, align 8, !dbg !338
  %call34 = call i64 @__arch_get_hw_counter(i32 noundef %13, ptr noundef %14) #6, !dbg !339
  store i64 %call34, ptr %cycles, align 8, !dbg !340
  %15 = load i64, ptr %cycles, align 8, !dbg !341
  %call35 = call zeroext i1 @arch_vdso_cycles_ok(i64 noundef %15) #6, !dbg !341
  %lnot36 = xor i1 %call35, true, !dbg !341
  %lnot38 = xor i1 %lnot36, true, !dbg !341
  %lnot40 = xor i1 %lnot38, true, !dbg !341
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !341
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !341
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !341
  %tobool44 = icmp ne i64 %expval43, 0, !dbg !341
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !343

if.then45:                                        ; preds = %if.end32
  store i32 -1, ptr %retval, align 4, !dbg !344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !344

if.end46:                                         ; preds = %if.end32
  %16 = load ptr, ptr %vdso_ts, align 8, !dbg !345
  %nsec = getelementptr inbounds %struct.vdso_timestamp, ptr %16, i32 0, i32 1, !dbg !346
  %17 = load i64, ptr %nsec, align 8, !dbg !346
  store i64 %17, ptr %ns, align 8, !dbg !347
  %18 = load ptr, ptr %vd.addr, align 8, !dbg !348
  %cycle_last = getelementptr inbounds %struct.vdso_data, ptr %18, i32 0, i32 2, !dbg !349
  %19 = load i64, ptr %cycle_last, align 8, !dbg !349
  store i64 %19, ptr %last, align 8, !dbg !350
  %20 = load i64, ptr %cycles, align 8, !dbg !351
  %21 = load i64, ptr %last, align 8, !dbg !352
  %22 = load ptr, ptr %vd.addr, align 8, !dbg !353
  %mask = getelementptr inbounds %struct.vdso_data, ptr %22, i32 0, i32 3, !dbg !354
  %23 = load i64, ptr %mask, align 8, !dbg !354
  %24 = load ptr, ptr %vd.addr, align 8, !dbg !355
  %mult = getelementptr inbounds %struct.vdso_data, ptr %24, i32 0, i32 4, !dbg !356
  %25 = load i32, ptr %mult, align 8, !dbg !356
  %call47 = call i64 @vdso_calc_delta(i64 noundef %20, i64 noundef %21, i64 noundef %23, i32 noundef %25) #6, !dbg !357
  %26 = load i64, ptr %ns, align 8, !dbg !358
  %add = add i64 %26, %call47, !dbg !358
  store i64 %add, ptr %ns, align 8, !dbg !358
  %27 = load i64, ptr %ns, align 8, !dbg !359
  %28 = load ptr, ptr %vd.addr, align 8, !dbg !360
  %shift = getelementptr inbounds %struct.vdso_data, ptr %28, i32 0, i32 5, !dbg !361
  %29 = load i32, ptr %shift, align 4, !dbg !361
  %call48 = call i64 @vdso_shift_ns(i64 noundef %27, i32 noundef %29) #6, !dbg !362
  store i64 %call48, ptr %ns, align 8, !dbg !363
  %30 = load ptr, ptr %vdso_ts, align 8, !dbg !364
  %sec49 = getelementptr inbounds %struct.vdso_timestamp, ptr %30, i32 0, i32 0, !dbg !365
  %31 = load i64, ptr %sec49, align 8, !dbg !365
  store i64 %31, ptr %sec, align 8, !dbg !366
  br label %do.cond50, !dbg !367

do.cond50:                                        ; preds = %if.end46
  %32 = load ptr, ptr %vd.addr, align 8, !dbg !368
  %33 = load i32, ptr %seq, align 4, !dbg !368
  %call51 = call i32 @vdso_read_retry(ptr noundef %32, i32 noundef %33) #6, !dbg !368
  %tobool52 = icmp ne i32 %call51, 0, !dbg !368
  %lnot53 = xor i1 %tobool52, true, !dbg !368
  %lnot55 = xor i1 %lnot53, true, !dbg !368
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !368
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !368
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !368
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !367
  br i1 %tobool59, label %do.body, label %do.end60, !dbg !367, !llvm.loop !369

do.end60:                                         ; preds = %do.cond50
  %34 = load i64, ptr %sec, align 8, !dbg !371
  %35 = load i64, ptr %ns, align 8, !dbg !372
  %call61 = call i32 @__iter_div_u64_rem(i64 noundef %35, i32 noundef 1000000000, ptr noundef %ns) #6, !dbg !373
  %conv62 = zext i32 %call61 to i64, !dbg !373
  %add63 = add i64 %34, %conv62, !dbg !374
  %36 = load ptr, ptr %ts.addr, align 8, !dbg !375
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %36, i32 0, i32 0, !dbg !376
  store i64 %add63, ptr %tv_sec, align 8, !dbg !377
  %37 = load i64, ptr %ns, align 8, !dbg !378
  %38 = load ptr, ptr %ts.addr, align 8, !dbg !379
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %38, i32 0, i32 1, !dbg !380
  store i64 %37, ptr %tv_nsec, align 8, !dbg !381
  store i32 0, ptr %retval, align 4, !dbg !382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !382

cleanup:                                          ; preds = %do.end60, %if.then45, %if.then31, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #7, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #7, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #7, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %cycles) #7, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdso_ts) #7, !dbg !383
  %39 = load i32, ptr %retval, align 4, !dbg !383
  ret i32 %39, !dbg !383
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @gettimeofday_fallback(ptr noundef %_tv, ptr noundef %_tz) #2 align 16 !dbg !384 {
entry:
  %_tv.addr = alloca ptr, align 8
  %_tz.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %_tv, ptr %_tv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_tv.addr, metadata !388, metadata !DIExpression()), !dbg !391
  store ptr %_tz, ptr %_tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_tz.addr, metadata !389, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !390, metadata !DIExpression()), !dbg !394
  %0 = load ptr, ptr %_tv.addr, align 8, !dbg !395
  %1 = load ptr, ptr %_tz.addr, align 8, !dbg !396
  %2 = call i64 asm "syscall", "={ax},0,{di},{si},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 96, ptr %0, ptr %1) #7, !dbg !397, !srcloc !398
  store i64 %2, ptr %ret, align 8, !dbg !397
  %3 = load i64, ptr %ret, align 8, !dbg !399
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !400
  ret i64 %3, !dbg !401
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal ptr @__arch_get_timens_vdso_data(ptr noundef %vd) #2 align 16 !dbg !402 {
entry:
  %vd.addr = alloca ptr, align 8
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !406, metadata !DIExpression()), !dbg !407
  ret ptr @timens__vdso_data, !dbg !408
}

; Function Attrs: inlinehint noredzone nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @__arch_vdso_hres_capable() #5 align 16 !dbg !409 {
entry:
  ret i1 true, !dbg !414
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @do_hres_timens(ptr noundef %vdns, i32 noundef %clk, ptr noundef %ts) #2 align 16 !dbg !415 {
entry:
  %retval = alloca i32, align 4
  %vdns.addr = alloca ptr, align 8
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %offs = alloca ptr, align 8
  %vdso_ts = alloca ptr, align 8
  %cycles = alloca i64, align 8
  %last = alloca i64, align 8
  %ns = alloca i64, align 8
  %seq = alloca i32, align 4
  %sec = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdns, ptr %vdns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdns.addr, metadata !417, metadata !DIExpression()), !dbg !430
  store i32 %clk, ptr %clk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !418, metadata !DIExpression()), !dbg !431
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !419, metadata !DIExpression()), !dbg !432
  call void @llvm.lifetime.start.p0(i64 8, ptr %vd) #7, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !420, metadata !DIExpression()), !dbg !434
  call void @llvm.lifetime.start.p0(i64 8, ptr %offs) #7, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !421, metadata !DIExpression()), !dbg !436
  %0 = load ptr, ptr %vdns.addr, align 8, !dbg !437
  %1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 6, !dbg !438
  %2 = load i32, ptr %clk.addr, align 4, !dbg !439
  %idxprom = sext i32 %2 to i64, !dbg !437
  %arrayidx = getelementptr [12 x %struct.timens_offset], ptr %1, i64 0, i64 %idxprom, !dbg !437
  store ptr %arrayidx, ptr %offs, align 8, !dbg !436
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdso_ts) #7, !dbg !440
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !424, metadata !DIExpression()), !dbg !441
  call void @llvm.lifetime.start.p0(i64 8, ptr %cycles) #7, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %cycles, metadata !425, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #7, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %last, metadata !426, metadata !DIExpression()), !dbg !444
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #7, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !427, metadata !DIExpression()), !dbg !445
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !428, metadata !DIExpression()), !dbg !447
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #7, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !429, metadata !DIExpression()), !dbg !449
  %3 = load ptr, ptr %vdns.addr, align 8, !dbg !450
  %4 = load i32, ptr %clk.addr, align 4, !dbg !451
  %cmp = icmp eq i32 %4, 4, !dbg !452
  %5 = zext i1 %cmp to i64, !dbg !451
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !451
  %idx.ext = sext i32 %cond to i64, !dbg !453
  %idx.neg = sub i64 0, %idx.ext, !dbg !453
  %add.ptr = getelementptr %struct.vdso_data, ptr %3, i64 %idx.neg, !dbg !453
  store ptr %add.ptr, ptr %vd, align 8, !dbg !454
  %6 = load ptr, ptr %vd, align 8, !dbg !455
  %call = call ptr @__arch_get_timens_vdso_data(ptr noundef %6) #6, !dbg !456
  store ptr %call, ptr %vd, align 8, !dbg !457
  %7 = load i32, ptr %clk.addr, align 4, !dbg !458
  %cmp1 = icmp ne i32 %7, 4, !dbg !460
  br i1 %cmp1, label %if.then, label %if.else, !dbg !461

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %vd, align 8, !dbg !462
  %arrayidx2 = getelementptr %struct.vdso_data, ptr %8, i64 0, !dbg !462
  store ptr %arrayidx2, ptr %vd, align 8, !dbg !463
  br label %if.end, !dbg !464

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %vd, align 8, !dbg !465
  %arrayidx3 = getelementptr %struct.vdso_data, ptr %9, i64 1, !dbg !465
  store ptr %arrayidx3, ptr %vd, align 8, !dbg !466
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %vd, align 8, !dbg !467
  %11 = getelementptr inbounds %struct.vdso_data, ptr %10, i32 0, i32 6, !dbg !468
  %12 = load i32, ptr %clk.addr, align 4, !dbg !469
  %idxprom4 = sext i32 %12 to i64, !dbg !467
  %arrayidx5 = getelementptr [12 x %struct.vdso_timestamp], ptr %11, i64 0, i64 %idxprom4, !dbg !467
  store ptr %arrayidx5, ptr %vdso_ts, align 8, !dbg !470
  br label %do.body, !dbg !471

do.body:                                          ; preds = %do.cond, %if.end
  %13 = load ptr, ptr %vd, align 8, !dbg !472
  %call6 = call i32 @vdso_read_begin(ptr noundef %13) #6, !dbg !474
  store i32 %call6, ptr %seq, align 4, !dbg !475
  %14 = load ptr, ptr %vd, align 8, !dbg !476
  %call7 = call zeroext i1 @arch_vdso_clocksource_ok(ptr noundef %14) #6, !dbg !476
  %lnot = xor i1 %call7, true, !dbg !476
  %lnot8 = xor i1 %lnot, true, !dbg !476
  %lnot9 = xor i1 %lnot8, true, !dbg !476
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !476
  %conv = sext i32 %lnot.ext to i64, !dbg !476
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !476
  %tobool = icmp ne i64 %expval, 0, !dbg !476
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !478

if.then10:                                        ; preds = %do.body
  store i32 -1, ptr %retval, align 4, !dbg !479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !479

if.end11:                                         ; preds = %do.body
  %15 = load ptr, ptr %vd, align 8, !dbg !480
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %15, i32 0, i32 1, !dbg !481
  %16 = load i32, ptr %clock_mode, align 4, !dbg !481
  %17 = load ptr, ptr %vd, align 8, !dbg !482
  %call12 = call i64 @__arch_get_hw_counter(i32 noundef %16, ptr noundef %17) #6, !dbg !483
  store i64 %call12, ptr %cycles, align 8, !dbg !484
  %18 = load i64, ptr %cycles, align 8, !dbg !485
  %call13 = call zeroext i1 @arch_vdso_cycles_ok(i64 noundef %18) #6, !dbg !485
  %lnot14 = xor i1 %call13, true, !dbg !485
  %lnot16 = xor i1 %lnot14, true, !dbg !485
  %lnot18 = xor i1 %lnot16, true, !dbg !485
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !485
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !485
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !485
  %tobool22 = icmp ne i64 %expval21, 0, !dbg !485
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !487

if.then23:                                        ; preds = %if.end11
  store i32 -1, ptr %retval, align 4, !dbg !488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !488

if.end24:                                         ; preds = %if.end11
  %19 = load ptr, ptr %vdso_ts, align 8, !dbg !489
  %nsec = getelementptr inbounds %struct.vdso_timestamp, ptr %19, i32 0, i32 1, !dbg !490
  %20 = load i64, ptr %nsec, align 8, !dbg !490
  store i64 %20, ptr %ns, align 8, !dbg !491
  %21 = load ptr, ptr %vd, align 8, !dbg !492
  %cycle_last = getelementptr inbounds %struct.vdso_data, ptr %21, i32 0, i32 2, !dbg !493
  %22 = load i64, ptr %cycle_last, align 8, !dbg !493
  store i64 %22, ptr %last, align 8, !dbg !494
  %23 = load i64, ptr %cycles, align 8, !dbg !495
  %24 = load i64, ptr %last, align 8, !dbg !496
  %25 = load ptr, ptr %vd, align 8, !dbg !497
  %mask = getelementptr inbounds %struct.vdso_data, ptr %25, i32 0, i32 3, !dbg !498
  %26 = load i64, ptr %mask, align 8, !dbg !498
  %27 = load ptr, ptr %vd, align 8, !dbg !499
  %mult = getelementptr inbounds %struct.vdso_data, ptr %27, i32 0, i32 4, !dbg !500
  %28 = load i32, ptr %mult, align 8, !dbg !500
  %call25 = call i64 @vdso_calc_delta(i64 noundef %23, i64 noundef %24, i64 noundef %26, i32 noundef %28) #6, !dbg !501
  %29 = load i64, ptr %ns, align 8, !dbg !502
  %add = add i64 %29, %call25, !dbg !502
  store i64 %add, ptr %ns, align 8, !dbg !502
  %30 = load i64, ptr %ns, align 8, !dbg !503
  %31 = load ptr, ptr %vd, align 8, !dbg !504
  %shift = getelementptr inbounds %struct.vdso_data, ptr %31, i32 0, i32 5, !dbg !505
  %32 = load i32, ptr %shift, align 4, !dbg !505
  %call26 = call i64 @vdso_shift_ns(i64 noundef %30, i32 noundef %32) #6, !dbg !506
  store i64 %call26, ptr %ns, align 8, !dbg !507
  %33 = load ptr, ptr %vdso_ts, align 8, !dbg !508
  %sec27 = getelementptr inbounds %struct.vdso_timestamp, ptr %33, i32 0, i32 0, !dbg !509
  %34 = load i64, ptr %sec27, align 8, !dbg !509
  store i64 %34, ptr %sec, align 8, !dbg !510
  br label %do.cond, !dbg !511

do.cond:                                          ; preds = %if.end24
  %35 = load ptr, ptr %vd, align 8, !dbg !512
  %36 = load i32, ptr %seq, align 4, !dbg !512
  %call28 = call i32 @vdso_read_retry(ptr noundef %35, i32 noundef %36) #6, !dbg !512
  %tobool29 = icmp ne i32 %call28, 0, !dbg !512
  %lnot30 = xor i1 %tobool29, true, !dbg !512
  %lnot32 = xor i1 %lnot30, true, !dbg !512
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !512
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !512
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !512
  %tobool36 = icmp ne i64 %expval35, 0, !dbg !511
  br i1 %tobool36, label %do.body, label %do.end, !dbg !511, !llvm.loop !513

do.end:                                           ; preds = %do.cond
  %37 = load ptr, ptr %offs, align 8, !dbg !515
  %sec37 = getelementptr inbounds %struct.timens_offset, ptr %37, i32 0, i32 0, !dbg !516
  %38 = load i64, ptr %sec37, align 8, !dbg !516
  %39 = load i64, ptr %sec, align 8, !dbg !517
  %add38 = add i64 %39, %38, !dbg !517
  store i64 %add38, ptr %sec, align 8, !dbg !517
  %40 = load ptr, ptr %offs, align 8, !dbg !518
  %nsec39 = getelementptr inbounds %struct.timens_offset, ptr %40, i32 0, i32 1, !dbg !519
  %41 = load i64, ptr %nsec39, align 8, !dbg !519
  %42 = load i64, ptr %ns, align 8, !dbg !520
  %add40 = add i64 %42, %41, !dbg !520
  store i64 %add40, ptr %ns, align 8, !dbg !520
  %43 = load i64, ptr %sec, align 8, !dbg !521
  %44 = load i64, ptr %ns, align 8, !dbg !522
  %call41 = call i32 @__iter_div_u64_rem(i64 noundef %44, i32 noundef 1000000000, ptr noundef %ns) #6, !dbg !523
  %conv42 = zext i32 %call41 to i64, !dbg !523
  %add43 = add i64 %43, %conv42, !dbg !524
  %45 = load ptr, ptr %ts.addr, align 8, !dbg !525
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %45, i32 0, i32 0, !dbg !526
  store i64 %add43, ptr %tv_sec, align 8, !dbg !527
  %46 = load i64, ptr %ns, align 8, !dbg !528
  %47 = load ptr, ptr %ts.addr, align 8, !dbg !529
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %47, i32 0, i32 1, !dbg !530
  store i64 %46, ptr %tv_nsec, align 8, !dbg !531
  store i32 0, ptr %retval, align 4, !dbg !532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !532

cleanup:                                          ; preds = %do.end, %if.then23, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %cycles) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdso_ts) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %offs) #7, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %vd) #7, !dbg !533
  %48 = load i32, ptr %retval, align 4, !dbg !533
  ret i32 %48, !dbg !533
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal void @cpu_relax() #2 align 16 !dbg !534 {
entry:
  call void @rep_nop() #6, !dbg !538
  ret void, !dbg !539
}

; Function Attrs: inlinehint noredzone nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @arch_vdso_clocksource_ok(ptr noundef %vd) #5 align 16 !dbg !540 {
entry:
  %vd.addr = alloca ptr, align 8
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !544, metadata !DIExpression()), !dbg !545
  ret i1 true, !dbg !546
}

; Function Attrs: inlinehint noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @__arch_get_hw_counter(i32 noundef %clock_mode, ptr noundef %vd) #5 align 16 !dbg !547 {
entry:
  %retval = alloca i64, align 8
  %clock_mode.addr = alloca i32, align 4
  %vd.addr = alloca ptr, align 8
  store i32 %clock_mode, ptr %clock_mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock_mode.addr, metadata !551, metadata !DIExpression()), !dbg !553
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !552, metadata !DIExpression()), !dbg !554
  %0 = load i32, ptr %clock_mode.addr, align 4, !dbg !555
  %cmp = icmp eq i32 %0, 1, !dbg !555
  %lnot = xor i1 %cmp, true, !dbg !555
  %lnot1 = xor i1 %lnot, true, !dbg !555
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !555
  %conv = sext i32 %lnot.ext to i64, !dbg !555
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !555
  %tobool = icmp ne i64 %expval, 0, !dbg !555
  br i1 %tobool, label %if.then, label %if.end, !dbg !557

if.then:                                          ; preds = %entry
  %call = call i64 @rdtsc_ordered() #6, !dbg !558
  %and = and i64 %call, 9223372036854775807, !dbg !559
  store i64 %and, ptr %retval, align 8, !dbg !560
  br label %return, !dbg !560

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %clock_mode.addr, align 4, !dbg !561
  %cmp2 = icmp eq i32 %1, 2, !dbg !563
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !564

if.then4:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !565, !srcloc !567
  %call5 = call i64 @vread_pvclock() #6, !dbg !568
  store i64 %call5, ptr %retval, align 8, !dbg !569
  br label %return, !dbg !569

if.end6:                                          ; preds = %if.end
  store i64 -1, ptr %retval, align 8, !dbg !570
  br label %return, !dbg !570

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %2 = load i64, ptr %retval, align 8, !dbg !571
  ret i64 %2, !dbg !571
}

; Function Attrs: inlinehint noredzone nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @arch_vdso_cycles_ok(i64 noundef %cycles) #5 align 16 !dbg !572 {
entry:
  %cycles.addr = alloca i64, align 8
  store i64 %cycles, ptr %cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycles.addr, metadata !576, metadata !DIExpression()), !dbg !577
  %0 = load i64, ptr %cycles.addr, align 8, !dbg !578
  %cmp = icmp sge i64 %0, 0, !dbg !579
  ret i1 %cmp, !dbg !580
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @vdso_calc_delta(i64 noundef %cycles, i64 noundef %last, i64 noundef %mask, i32 noundef %mult) #2 align 16 !dbg !581 {
entry:
  %retval = alloca i64, align 8
  %cycles.addr = alloca i64, align 8
  %last.addr = alloca i64, align 8
  %mask.addr = alloca i64, align 8
  %mult.addr = alloca i32, align 4
  %delta = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %cycles, ptr %cycles.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cycles.addr, metadata !585, metadata !DIExpression()), !dbg !590
  store i64 %last, ptr %last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !586, metadata !DIExpression()), !dbg !591
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !587, metadata !DIExpression()), !dbg !592
  store i32 %mult, ptr %mult.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mult.addr, metadata !588, metadata !DIExpression()), !dbg !593
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #7, !dbg !594
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !589, metadata !DIExpression()), !dbg !595
  %0 = load i64, ptr %cycles.addr, align 8, !dbg !596
  %1 = load i64, ptr %last.addr, align 8, !dbg !597
  %sub = sub i64 %0, %1, !dbg !598
  %and = and i64 %sub, 9223372036854775807, !dbg !599
  store i64 %and, ptr %delta, align 8, !dbg !595
  %2 = load i64, ptr %delta, align 8, !dbg !600
  %and1 = and i64 %2, 4611686018427387904, !dbg !600
  %tobool = icmp ne i64 %and1, 0, !dbg !600
  %lnot = xor i1 %tobool, true, !dbg !600
  %lnot2 = xor i1 %lnot, true, !dbg !600
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !600
  %conv = sext i32 %lnot.ext to i64, !dbg !600
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !600
  %tobool3 = icmp ne i64 %expval, 0, !dbg !600
  br i1 %tobool3, label %if.then, label %if.end, !dbg !602

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !603

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %delta, align 8, !dbg !604
  %4 = load i32, ptr %mult.addr, align 4, !dbg !605
  %conv4 = zext i32 %4 to i64, !dbg !605
  %mul = mul i64 %3, %conv4, !dbg !606
  store i64 %mul, ptr %retval, align 8, !dbg !607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !607

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #7, !dbg !608
  %5 = load i64, ptr %retval, align 8, !dbg !608
  ret i64 %5, !dbg !608
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @vdso_shift_ns(i64 noundef %ns, i32 noundef %shift) #2 align 16 !dbg !609 {
entry:
  %ns.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !613, metadata !DIExpression()), !dbg !615
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !614, metadata !DIExpression()), !dbg !616
  %0 = load i64, ptr %ns.addr, align 8, !dbg !617
  %1 = load i32, ptr %shift.addr, align 4, !dbg !618
  %sh_prom = zext i32 %1 to i64, !dbg !619
  %shr = lshr i64 %0, %sh_prom, !dbg !619
  ret i64 %shr, !dbg !620
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @vdso_read_retry(ptr noundef %vd, i32 noundef %start) #2 align 16 !dbg !621 {
entry:
  %vd.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !626, metadata !DIExpression()), !dbg !629
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !627, metadata !DIExpression()), !dbg !630
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !631
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !628, metadata !DIExpression()), !dbg !632
  br label %do.body, !dbg !633

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !634

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !636

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !636

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !634

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !638

do.body3:                                         ; preds = %do.body2
  br label %do.cond4, !dbg !640

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !640

do.end5:                                          ; preds = %do.cond4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !638, !srcloc !642
  br label %do.cond6, !dbg !638

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !638

do.end7:                                          ; preds = %do.cond6
  br label %do.cond8, !dbg !634

do.cond8:                                         ; preds = %do.end7
  br label %do.end9, !dbg !634

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !643

do.body10:                                        ; preds = %do.end9
  br label %do.cond11, !dbg !645

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !645

do.end12:                                         ; preds = %do.cond11
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !643
  %seq13 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 0, !dbg !643
  %1 = load volatile i32, ptr %seq13, align 8, !dbg !643
  store i32 %1, ptr %tmp, align 4, !dbg !645
  %2 = load i32, ptr %tmp, align 4, !dbg !643
  store i32 %2, ptr %seq, align 4, !dbg !647
  %3 = load i32, ptr %seq, align 4, !dbg !648
  %4 = load i32, ptr %start.addr, align 4, !dbg !649
  %cmp = icmp ne i32 %3, %4, !dbg !650
  %conv = zext i1 %cmp to i32, !dbg !650
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !651
  ret i32 %conv, !dbg !652
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @__iter_div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #2 align 16 !dbg !653 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !659, metadata !DIExpression()), !dbg !663
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !660, metadata !DIExpression()), !dbg !664
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !661, metadata !DIExpression()), !dbg !665
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !666
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !662, metadata !DIExpression()), !dbg !667
  store i32 0, ptr %ret, align 4, !dbg !667
  br label %while.cond, !dbg !668

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !669
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !670
  %conv = zext i32 %1 to i64, !dbg !670
  %cmp = icmp uge i64 %0, %conv, !dbg !671
  br i1 %cmp, label %while.body, label %while.end, !dbg !668

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %dividend.addr, align 8, !dbg !672
  call void asm "", "=*rm,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %dividend.addr, i64 %2) #7, !dbg !672, !srcloc !674
  %3 = load i32, ptr %divisor.addr, align 4, !dbg !675
  %conv2 = zext i32 %3 to i64, !dbg !675
  %4 = load i64, ptr %dividend.addr, align 8, !dbg !676
  %sub = sub i64 %4, %conv2, !dbg !676
  store i64 %sub, ptr %dividend.addr, align 8, !dbg !676
  %5 = load i32, ptr %ret, align 4, !dbg !677
  %inc = add i32 %5, 1, !dbg !677
  store i32 %inc, ptr %ret, align 4, !dbg !677
  br label %while.cond, !dbg !668, !llvm.loop !678

while.end:                                        ; preds = %while.cond
  %6 = load i64, ptr %dividend.addr, align 8, !dbg !680
  %7 = load ptr, ptr %remainder.addr, align 8, !dbg !681
  store i64 %6, ptr %7, align 8, !dbg !682
  %8 = load i32, ptr %ret, align 4, !dbg !683
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !684
  ret i32 %8, !dbg !685
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @vdso_read_begin(ptr noundef %vd) #2 align 16 !dbg !686 {
entry:
  %vd.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !690, metadata !DIExpression()), !dbg !692
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !693
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !691, metadata !DIExpression()), !dbg !694
  br label %while.cond, !dbg !695

while.cond:                                       ; preds = %while.body, %entry
  br label %do.body, !dbg !696

do.body:                                          ; preds = %while.cond
  br label %do.cond, !dbg !698

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !698

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !696
  %seq1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 0, !dbg !696
  %1 = load volatile i32, ptr %seq1, align 8, !dbg !696
  store i32 %1, ptr %tmp, align 4, !dbg !698
  %2 = load i32, ptr %tmp, align 4, !dbg !696
  store i32 %2, ptr %seq, align 4, !dbg !700
  %and = and i32 %2, 1, !dbg !700
  %tobool = icmp ne i32 %and, 0, !dbg !700
  %lnot = xor i1 %tobool, true, !dbg !700
  %lnot2 = xor i1 %lnot, true, !dbg !700
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !700
  %conv = sext i32 %lnot.ext to i64, !dbg !700
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !700
  %tobool3 = icmp ne i64 %expval, 0, !dbg !695
  br i1 %tobool3, label %while.body, label %while.end, !dbg !695

while.body:                                       ; preds = %do.end
  call void @cpu_relax() #6, !dbg !701
  br label %while.cond, !dbg !695, !llvm.loop !702

while.end:                                        ; preds = %do.end
  br label %do.body4, !dbg !704

do.body4:                                         ; preds = %while.end
  br label %do.body5, !dbg !705

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !707

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !707

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !705

do.body8:                                         ; preds = %do.end7
  br label %do.body9, !dbg !709

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !711

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !711

do.end11:                                         ; preds = %do.cond10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !709, !srcloc !713
  br label %do.cond12, !dbg !709

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !709

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !705

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !705

do.end15:                                         ; preds = %do.cond14
  %3 = load i32, ptr %seq, align 4, !dbg !714
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !715
  ret i32 %3, !dbg !716
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal void @rep_nop() #2 align 16 !dbg !717 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !718, !srcloc !719
  ret void, !dbg !720
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @rdtsc_ordered() #2 align 16 !dbg !721 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #7, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %low, metadata !726, metadata !DIExpression()), !dbg !729
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #7, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %high, metadata !728, metadata !DIExpression()), !dbg !729
  %0 = call { i64, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09rdtsc\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 1*32+27)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence; rdtsc\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09rdtscp\0A6652:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !730, !srcloc !731
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !730
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !730
  store i64 %asmresult, ptr %low, align 8, !dbg !730
  store i64 %asmresult1, ptr %high, align 8, !dbg !730
  %1 = load i64, ptr %low, align 8, !dbg !732
  %2 = load i64, ptr %high, align 8, !dbg !732
  %shl = shl i64 %2, 32, !dbg !732
  %or = or i64 %1, %shl, !dbg !732
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #7, !dbg !733
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #7, !dbg !733
  ret i64 %or, !dbg !734
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @vread_pvclock() #0 align 16 !dbg !735 {
entry:
  %retval = alloca i64, align 8
  %pvti = alloca ptr, align 8
  %version = alloca i32, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pvti) #7, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %pvti, metadata !739, metadata !DIExpression()), !dbg !765
  store ptr @pvclock_page, ptr %pvti, align 8, !dbg !765
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #7, !dbg !766
  call void @llvm.dbg.declare(metadata ptr %version, metadata !762, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !768
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !763, metadata !DIExpression()), !dbg !769
  br label %do.body, !dbg !770

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %pvti, align 8, !dbg !771
  %call = call i32 @pvclock_read_begin(ptr noundef %0) #6, !dbg !773
  store i32 %call, ptr %version, align 4, !dbg !774
  %1 = load ptr, ptr %pvti, align 8, !dbg !775
  %flags = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %1, i32 0, i32 6, !dbg !775
  %2 = load i8, ptr %flags, align 1, !dbg !775
  %conv = zext i8 %2 to i32, !dbg !775
  %and = and i32 %conv, 1, !dbg !775
  %tobool = icmp ne i32 %and, 0, !dbg !775
  %lnot = xor i1 %tobool, true, !dbg !775
  %lnot1 = xor i1 %lnot, true, !dbg !775
  %lnot2 = xor i1 %lnot1, true, !dbg !775
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !775
  %conv3 = sext i32 %lnot.ext to i64, !dbg !775
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !775
  %tobool4 = icmp ne i64 %expval, 0, !dbg !775
  br i1 %tobool4, label %if.then, label %if.end, !dbg !777

if.then:                                          ; preds = %do.body
  store i64 -1, ptr %retval, align 8, !dbg !778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !778

if.end:                                           ; preds = %do.body
  %3 = load ptr, ptr %pvti, align 8, !dbg !779
  %call5 = call i64 @rdtsc_ordered() #6, !dbg !780
  %call6 = call i64 @__pvclock_read_cycles(ptr noundef %3, i64 noundef %call5) #6, !dbg !781
  store i64 %call6, ptr %ret, align 8, !dbg !782
  br label %do.cond, !dbg !783

do.cond:                                          ; preds = %if.end
  %4 = load ptr, ptr %pvti, align 8, !dbg !784
  %5 = load i32, ptr %version, align 4, !dbg !785
  %call7 = call zeroext i1 @pvclock_read_retry(ptr noundef %4, i32 noundef %5) #6, !dbg !786
  br i1 %call7, label %do.body, label %do.end, !dbg !783, !llvm.loop !787

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr %ret, align 8, !dbg !789
  %and8 = and i64 %6, 9223372036854775807, !dbg !790
  store i64 %and8, ptr %retval, align 8, !dbg !791
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !791

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !792
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #7, !dbg !792
  call void @llvm.lifetime.end.p0(i64 8, ptr %pvti) #7, !dbg !792
  %7 = load i64, ptr %retval, align 8, !dbg !792
  ret i64 %7, !dbg !792
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @pvclock_read_begin(ptr noundef %src) #2 align 16 !dbg !793 {
entry:
  %src.addr = alloca ptr, align 8
  %version = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !798, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #7, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %version, metadata !799, metadata !DIExpression()), !dbg !802
  %0 = load ptr, ptr %src.addr, align 8, !dbg !803
  %version1 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %0, i32 0, i32 0, !dbg !804
  %1 = load i32, ptr %version1, align 1, !dbg !804
  %and = and i32 %1, -2, !dbg !805
  store i32 %and, ptr %version, align 4, !dbg !802
  br label %do.body, !dbg !806

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !807

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !809

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !809

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !807

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !811

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !813

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !813

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !811, !srcloc !815
  br label %do.cond7, !dbg !811

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !811

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !807

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !807

do.end10:                                         ; preds = %do.cond9
  %2 = load i32, ptr %version, align 4, !dbg !816
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #7, !dbg !817
  ret i32 %2, !dbg !818
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @__pvclock_read_cycles(ptr noundef %src, i64 noundef %tsc) #2 align 16 !dbg !819 {
entry:
  %src.addr = alloca ptr, align 8
  %tsc.addr = alloca i64, align 8
  %delta = alloca i64, align 8
  %offset = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !823, metadata !DIExpression()), !dbg !827
  store i64 %tsc, ptr %tsc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsc.addr, metadata !824, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #7, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !825, metadata !DIExpression()), !dbg !830
  %0 = load i64, ptr %tsc.addr, align 8, !dbg !831
  %1 = load ptr, ptr %src.addr, align 8, !dbg !832
  %tsc_timestamp = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %1, i32 0, i32 2, !dbg !833
  %2 = load i64, ptr %tsc_timestamp, align 1, !dbg !833
  %sub = sub i64 %0, %2, !dbg !834
  store i64 %sub, ptr %delta, align 8, !dbg !830
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #7, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !826, metadata !DIExpression()), !dbg !836
  %3 = load i64, ptr %delta, align 8, !dbg !837
  %4 = load ptr, ptr %src.addr, align 8, !dbg !838
  %tsc_to_system_mul = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %4, i32 0, i32 4, !dbg !839
  %5 = load i32, ptr %tsc_to_system_mul, align 1, !dbg !839
  %6 = load ptr, ptr %src.addr, align 8, !dbg !840
  %tsc_shift = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %6, i32 0, i32 5, !dbg !841
  %7 = load i8, ptr %tsc_shift, align 1, !dbg !841
  %conv = sext i8 %7 to i32, !dbg !840
  %call = call i64 @pvclock_scale_delta(i64 noundef %3, i32 noundef %5, i32 noundef %conv) #6, !dbg !842
  store i64 %call, ptr %offset, align 8, !dbg !836
  %8 = load ptr, ptr %src.addr, align 8, !dbg !843
  %system_time = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %8, i32 0, i32 3, !dbg !844
  %9 = load i64, ptr %system_time, align 1, !dbg !844
  %10 = load i64, ptr %offset, align 8, !dbg !845
  %add = add i64 %9, %10, !dbg !846
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #7, !dbg !847
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #7, !dbg !847
  ret i64 %add, !dbg !848
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal zeroext i1 @pvclock_read_retry(ptr noundef %src, i32 noundef %version) #2 align 16 !dbg !849 {
entry:
  %src.addr = alloca ptr, align 8
  %version.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !853, metadata !DIExpression()), !dbg !855
  store i32 %version, ptr %version.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %version.addr, metadata !854, metadata !DIExpression()), !dbg !856
  br label %do.body, !dbg !857

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !858

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !860

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !858

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !862

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !864

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !862, !srcloc !866
  br label %do.end5, !dbg !862

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !858

do.end6:                                          ; preds = %do.end5
  %0 = load i32, ptr %version.addr, align 4, !dbg !867
  %1 = load ptr, ptr %src.addr, align 8, !dbg !867
  %version7 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %1, i32 0, i32 0, !dbg !867
  %2 = load i32, ptr %version7, align 1, !dbg !867
  %cmp = icmp ne i32 %0, %2, !dbg !867
  %lnot = xor i1 %cmp, true, !dbg !867
  %lnot8 = xor i1 %lnot, true, !dbg !867
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !867
  %conv = sext i32 %lnot.ext to i64, !dbg !867
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !867
  %tobool = icmp ne i64 %expval, 0, !dbg !867
  ret i1 %tobool, !dbg !868
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @pvclock_scale_delta(i64 noundef %delta, i32 noundef %mul_frac, i32 noundef %shift) #2 align 16 !dbg !869 {
entry:
  %delta.addr = alloca i64, align 8
  %mul_frac.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  %product = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %delta, ptr %delta.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delta.addr, metadata !873, metadata !DIExpression()), !dbg !879
  store i32 %mul_frac, ptr %mul_frac.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mul_frac.addr, metadata !874, metadata !DIExpression()), !dbg !880
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !875, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 8, ptr %product) #7, !dbg !882
  call void @llvm.dbg.declare(metadata ptr %product, metadata !876, metadata !DIExpression()), !dbg !883
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !884
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !877, metadata !DIExpression()), !dbg !885
  %0 = load i32, ptr %shift.addr, align 4, !dbg !886
  %cmp = icmp slt i32 %0, 0, !dbg !888
  br i1 %cmp, label %if.then, label %if.else, !dbg !889

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %shift.addr, align 4, !dbg !890
  %sub = sub i32 0, %1, !dbg !891
  %2 = load i64, ptr %delta.addr, align 8, !dbg !892
  %sh_prom = zext i32 %sub to i64, !dbg !892
  %shr = lshr i64 %2, %sh_prom, !dbg !892
  store i64 %shr, ptr %delta.addr, align 8, !dbg !892
  br label %if.end, !dbg !893

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %shift.addr, align 4, !dbg !894
  %4 = load i64, ptr %delta.addr, align 8, !dbg !895
  %sh_prom1 = zext i32 %3 to i64, !dbg !895
  %shl = shl i64 %4, %sh_prom1, !dbg !895
  store i64 %shl, ptr %delta.addr, align 8, !dbg !895
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %delta.addr, align 8, !dbg !896
  %6 = load i32, ptr %mul_frac.addr, align 4, !dbg !897
  %conv = zext i32 %6 to i64, !dbg !898
  %7 = call { i64, i64 } asm "mulq $3 ; shrd $$32, $1, $0", "={ax},={dx},0,rm,~{dirflag},~{fpsr},~{flags}"(i64 %5, i64 %conv) #8, !dbg !899, !srcloc !900
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !899
  %asmresult2 = extractvalue { i64, i64 } %7, 1, !dbg !899
  store i64 %asmresult, ptr %product, align 8, !dbg !899
  store i64 %asmresult2, ptr %tmp, align 8, !dbg !899
  %8 = load i64, ptr %product, align 8, !dbg !901
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !902
  call void @llvm.lifetime.end.p0(i64 8, ptr %product) #7, !dbg !902
  ret i64 %8, !dbg !903
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @__cvdso_time_data(ptr noundef %vd, ptr noundef %time) #0 align 16 !dbg !904 {
entry:
  %vd.addr = alloca ptr, align 8
  %time.addr = alloca ptr, align 8
  %t = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !908, metadata !DIExpression()), !dbg !911
  store ptr %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !909, metadata !DIExpression()), !dbg !912
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #7, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %t, metadata !910, metadata !DIExpression()), !dbg !914
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !915
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 1, !dbg !917
  %1 = load i32, ptr %clock_mode, align 4, !dbg !917
  %cmp = icmp eq i32 %1, 2147483647, !dbg !918
  br i1 %cmp, label %if.then, label %if.end, !dbg !919

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vd.addr, align 8, !dbg !920
  %call = call ptr @__arch_get_timens_vdso_data(ptr noundef %2) #6, !dbg !921
  store ptr %call, ptr %vd.addr, align 8, !dbg !922
  br label %if.end, !dbg !923

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !924

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !926

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !926

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %vd.addr, align 8, !dbg !924
  %arrayidx = getelementptr %struct.vdso_data, ptr %3, i64 0, !dbg !924
  %4 = getelementptr inbounds %struct.vdso_data, ptr %arrayidx, i32 0, i32 6, !dbg !924
  %arrayidx1 = getelementptr [12 x %struct.vdso_timestamp], ptr %4, i64 0, i64 0, !dbg !924
  %sec = getelementptr inbounds %struct.vdso_timestamp, ptr %arrayidx1, i32 0, i32 0, !dbg !924
  %5 = load volatile i64, ptr %sec, align 8, !dbg !924
  store i64 %5, ptr %tmp, align 8, !dbg !926
  %6 = load i64, ptr %tmp, align 8, !dbg !924
  store i64 %6, ptr %t, align 8, !dbg !928
  %7 = load ptr, ptr %time.addr, align 8, !dbg !929
  %tobool = icmp ne ptr %7, null, !dbg !929
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !931

if.then2:                                         ; preds = %do.end
  %8 = load i64, ptr %t, align 8, !dbg !932
  %9 = load ptr, ptr %time.addr, align 8, !dbg !933
  store i64 %8, ptr %9, align 8, !dbg !934
  br label %if.end3, !dbg !935

if.end3:                                          ; preds = %if.then2, %do.end
  %10 = load i64, ptr %t, align 8, !dbg !936
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #7, !dbg !937
  ret i64 %10, !dbg !938
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @__cvdso_clock_gettime_data(ptr noundef %vd, i32 noundef %clock, ptr noundef %ts) #0 align 16 !dbg !939 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 8
  %clock.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !941, metadata !DIExpression()), !dbg !945
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !942, metadata !DIExpression()), !dbg !946
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !943, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !944, metadata !DIExpression()), !dbg !949
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !950
  %1 = load i32, ptr %clock.addr, align 4, !dbg !951
  %2 = load ptr, ptr %ts.addr, align 8, !dbg !952
  %call = call i32 @__cvdso_clock_gettime_common(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6, !dbg !953
  store i32 %call, ptr %ret, align 4, !dbg !949
  %3 = load i32, ptr %ret, align 4, !dbg !954
  %tobool = icmp ne i32 %3, 0, !dbg !954
  %lnot = xor i1 %tobool, true, !dbg !954
  %lnot1 = xor i1 %lnot, true, !dbg !954
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !954
  %conv = sext i32 %lnot.ext to i64, !dbg !954
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !954
  %tobool2 = icmp ne i64 %expval, 0, !dbg !954
  br i1 %tobool2, label %if.then, label %if.end, !dbg !956

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %clock.addr, align 4, !dbg !957
  %5 = load ptr, ptr %ts.addr, align 8, !dbg !958
  %call3 = call i64 @clock_gettime_fallback(i32 noundef %4, ptr noundef %5) #6, !dbg !959
  %conv4 = trunc i64 %call3 to i32, !dbg !959
  store i32 %conv4, ptr %retval, align 4, !dbg !960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !960

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !961

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !962
  %6 = load i32, ptr %retval, align 4, !dbg !962
  ret i32 %6, !dbg !962
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @__cvdso_clock_gettime_common(ptr noundef %vd, i32 noundef %clock, ptr noundef %ts) #2 align 16 !dbg !963 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 8
  %clock.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %msk = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !965, metadata !DIExpression()), !dbg !969
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !966, metadata !DIExpression()), !dbg !970
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !967, metadata !DIExpression()), !dbg !971
  call void @llvm.lifetime.start.p0(i64 4, ptr %msk) #7, !dbg !972
  call void @llvm.dbg.declare(metadata ptr %msk, metadata !968, metadata !DIExpression()), !dbg !973
  %0 = load i32, ptr %clock.addr, align 4, !dbg !974
  %cmp = icmp uge i32 %0, 16, !dbg !974
  %lnot = xor i1 %cmp, true, !dbg !974
  %lnot1 = xor i1 %lnot, true, !dbg !974
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !974
  %conv = sext i32 %lnot.ext to i64, !dbg !974
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !974
  %tobool = icmp ne i64 %expval, 0, !dbg !974
  br i1 %tobool, label %if.then, label %if.end, !dbg !976

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !977
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !977

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %clock.addr, align 4, !dbg !978
  %shl = shl i32 1, %1, !dbg !979
  store i32 %shl, ptr %msk, align 4, !dbg !980
  %2 = load i32, ptr %msk, align 4, !dbg !981
  %conv2 = zext i32 %2 to i64, !dbg !981
  %and = and i64 %conv2, 2179, !dbg !981
  %tobool3 = icmp ne i64 %and, 0, !dbg !981
  %lnot4 = xor i1 %tobool3, true, !dbg !981
  %lnot6 = xor i1 %lnot4, true, !dbg !981
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !981
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !981
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !981
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !981
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !983

if.then11:                                        ; preds = %if.end
  %3 = load ptr, ptr %vd.addr, align 8, !dbg !984
  %arrayidx = getelementptr %struct.vdso_data, ptr %3, i64 0, !dbg !984
  store ptr %arrayidx, ptr %vd.addr, align 8, !dbg !985
  br label %if.end26, !dbg !986

if.else:                                          ; preds = %if.end
  %4 = load i32, ptr %msk, align 4, !dbg !987
  %conv12 = zext i32 %4 to i64, !dbg !987
  %and13 = and i64 %conv12, 96, !dbg !989
  %tobool14 = icmp ne i64 %and13, 0, !dbg !989
  br i1 %tobool14, label %if.then15, label %if.else17, !dbg !990

if.then15:                                        ; preds = %if.else
  %5 = load ptr, ptr %vd.addr, align 8, !dbg !991
  %arrayidx16 = getelementptr %struct.vdso_data, ptr %5, i64 0, !dbg !991
  %6 = load i32, ptr %clock.addr, align 4, !dbg !992
  %7 = load ptr, ptr %ts.addr, align 8, !dbg !993
  %call = call i32 @do_coarse(ptr noundef %arrayidx16, i32 noundef %6, ptr noundef %7) #6, !dbg !994
  store i32 %call, ptr %retval, align 4, !dbg !995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !995

if.else17:                                        ; preds = %if.else
  %8 = load i32, ptr %msk, align 4, !dbg !996
  %conv18 = zext i32 %8 to i64, !dbg !996
  %and19 = and i64 %conv18, 16, !dbg !998
  %tobool20 = icmp ne i64 %and19, 0, !dbg !998
  br i1 %tobool20, label %if.then21, label %if.else23, !dbg !999

if.then21:                                        ; preds = %if.else17
  %9 = load ptr, ptr %vd.addr, align 8, !dbg !1000
  %arrayidx22 = getelementptr %struct.vdso_data, ptr %9, i64 1, !dbg !1000
  store ptr %arrayidx22, ptr %vd.addr, align 8, !dbg !1001
  br label %if.end24, !dbg !1002

if.else23:                                        ; preds = %if.else17
  store i32 -1, ptr %retval, align 4, !dbg !1003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1003

if.end24:                                         ; preds = %if.then21
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then11
  %10 = load ptr, ptr %vd.addr, align 8, !dbg !1004
  %11 = load i32, ptr %clock.addr, align 4, !dbg !1005
  %12 = load ptr, ptr %ts.addr, align 8, !dbg !1006
  %call27 = call i32 @do_hres(ptr noundef %10, i32 noundef %11, ptr noundef %12) #6, !dbg !1007
  store i32 %call27, ptr %retval, align 4, !dbg !1008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1008

cleanup:                                          ; preds = %if.end26, %if.else23, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %msk) #7, !dbg !1009
  %13 = load i32, ptr %retval, align 4, !dbg !1009
  ret i32 %13, !dbg !1009
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @clock_gettime_fallback(i32 noundef %_clkid, ptr noundef %_ts) #2 align 16 !dbg !1010 {
entry:
  %_clkid.addr = alloca i32, align 4
  %_ts.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store i32 %_clkid, ptr %_clkid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_clkid.addr, metadata !1014, metadata !DIExpression()), !dbg !1017
  store ptr %_ts, ptr %_ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_ts.addr, metadata !1015, metadata !DIExpression()), !dbg !1018
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1016, metadata !DIExpression()), !dbg !1020
  %0 = load ptr, ptr %_ts.addr, align 8, !dbg !1021
  %1 = load i32, ptr %_clkid.addr, align 4, !dbg !1022
  %2 = load ptr, ptr %_ts.addr, align 8, !dbg !1023
  %3 = call i64 asm "syscall", "={ax},=*m,0,{di},{si},~{rcx},~{r11},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__kernel_timespec) %0, i64 228, i32 %1, ptr %2) #7, !dbg !1024, !srcloc !1025
  store i64 %3, ptr %ret, align 8, !dbg !1024
  %4 = load i64, ptr %ret, align 8, !dbg !1026
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !1027
  ret i64 %4, !dbg !1028
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @do_coarse(ptr noundef %vd, i32 noundef %clk, ptr noundef %ts) #2 align 16 !dbg !1029 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 8
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %vdso_ts = alloca ptr, align 8
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !1031, metadata !DIExpression()), !dbg !1036
  store i32 %clk, ptr %clk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !1032, metadata !DIExpression()), !dbg !1037
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !1033, metadata !DIExpression()), !dbg !1038
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdso_ts) #7, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !1034, metadata !DIExpression()), !dbg !1040
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !1041
  %1 = getelementptr inbounds %struct.vdso_data, ptr %0, i32 0, i32 6, !dbg !1042
  %2 = load i32, ptr %clk.addr, align 4, !dbg !1043
  %idxprom = sext i32 %2 to i64, !dbg !1041
  %arrayidx = getelementptr [12 x %struct.vdso_timestamp], ptr %1, i64 0, i64 %idxprom, !dbg !1041
  store ptr %arrayidx, ptr %vdso_ts, align 8, !dbg !1040
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !1044
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1035, metadata !DIExpression()), !dbg !1045
  br label %do.body, !dbg !1046

do.body:                                          ; preds = %do.cond15, %entry
  br label %while.cond, !dbg !1047

while.cond:                                       ; preds = %if.end, %do.body
  br label %do.body1, !dbg !1049

do.body1:                                         ; preds = %while.cond
  br label %do.cond, !dbg !1051

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1051

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %vd.addr, align 8, !dbg !1049
  %seq2 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 0, !dbg !1049
  %4 = load volatile i32, ptr %seq2, align 8, !dbg !1049
  store i32 %4, ptr %tmp, align 4, !dbg !1051
  %5 = load i32, ptr %tmp, align 4, !dbg !1049
  store i32 %5, ptr %seq, align 4, !dbg !1053
  %and = and i32 %5, 1, !dbg !1054
  %tobool = icmp ne i32 %and, 0, !dbg !1047
  br i1 %tobool, label %while.body, label %while.end, !dbg !1047

while.body:                                       ; preds = %do.end
  %6 = load ptr, ptr %vd.addr, align 8, !dbg !1055
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %6, i32 0, i32 1, !dbg !1058
  %7 = load i32, ptr %clock_mode, align 4, !dbg !1058
  %cmp = icmp eq i32 %7, 2147483647, !dbg !1059
  br i1 %cmp, label %if.then, label %if.end, !dbg !1060

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %vd.addr, align 8, !dbg !1061
  %9 = load i32, ptr %clk.addr, align 4, !dbg !1062
  %10 = load ptr, ptr %ts.addr, align 8, !dbg !1063
  %call = call i32 @do_coarse_timens(ptr noundef %8, i32 noundef %9, ptr noundef %10) #6, !dbg !1064
  store i32 %call, ptr %retval, align 4, !dbg !1065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1065

if.end:                                           ; preds = %while.body
  call void @cpu_relax() #6, !dbg !1066
  br label %while.cond, !dbg !1047, !llvm.loop !1067

while.end:                                        ; preds = %do.end
  br label %do.body3, !dbg !1069

do.body3:                                         ; preds = %while.end
  br label %do.body4, !dbg !1070

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !1072

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1072

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !1070

do.body7:                                         ; preds = %do.end6
  br label %do.body8, !dbg !1074

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !1076

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1076

do.end10:                                         ; preds = %do.cond9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !1074, !srcloc !1078
  br label %do.cond11, !dbg !1074

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !1074

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !1070

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !1070

do.end14:                                         ; preds = %do.cond13
  %11 = load ptr, ptr %vdso_ts, align 8, !dbg !1079
  %sec = getelementptr inbounds %struct.vdso_timestamp, ptr %11, i32 0, i32 0, !dbg !1080
  %12 = load i64, ptr %sec, align 8, !dbg !1080
  %13 = load ptr, ptr %ts.addr, align 8, !dbg !1081
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %13, i32 0, i32 0, !dbg !1082
  store i64 %12, ptr %tv_sec, align 8, !dbg !1083
  %14 = load ptr, ptr %vdso_ts, align 8, !dbg !1084
  %nsec = getelementptr inbounds %struct.vdso_timestamp, ptr %14, i32 0, i32 1, !dbg !1085
  %15 = load i64, ptr %nsec, align 8, !dbg !1085
  %16 = load ptr, ptr %ts.addr, align 8, !dbg !1086
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %16, i32 0, i32 1, !dbg !1087
  store i64 %15, ptr %tv_nsec, align 8, !dbg !1088
  br label %do.cond15, !dbg !1089

do.cond15:                                        ; preds = %do.end14
  %17 = load ptr, ptr %vd.addr, align 8, !dbg !1090
  %18 = load i32, ptr %seq, align 4, !dbg !1090
  %call16 = call i32 @vdso_read_retry(ptr noundef %17, i32 noundef %18) #6, !dbg !1090
  %tobool17 = icmp ne i32 %call16, 0, !dbg !1090
  %lnot = xor i1 %tobool17, true, !dbg !1090
  %lnot18 = xor i1 %lnot, true, !dbg !1090
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !1090
  %conv = sext i32 %lnot.ext to i64, !dbg !1090
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1090
  %tobool19 = icmp ne i64 %expval, 0, !dbg !1089
  br i1 %tobool19, label %do.body, label %do.end20, !dbg !1089, !llvm.loop !1091

do.end20:                                         ; preds = %do.cond15
  store i32 0, ptr %retval, align 4, !dbg !1093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1093

cleanup:                                          ; preds = %do.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !1094
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdso_ts) #7, !dbg !1094
  %19 = load i32, ptr %retval, align 4, !dbg !1094
  ret i32 %19, !dbg !1094
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @do_coarse_timens(ptr noundef %vdns, i32 noundef %clk, ptr noundef %ts) #2 align 16 !dbg !1095 {
entry:
  %vdns.addr = alloca ptr, align 8
  %clk.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %vdso_ts = alloca ptr, align 8
  %offs = alloca ptr, align 8
  %nsec = alloca i64, align 8
  %sec = alloca i64, align 8
  %seq = alloca i32, align 4
  store ptr %vdns, ptr %vdns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdns.addr, metadata !1097, metadata !DIExpression()), !dbg !1106
  store i32 %clk, ptr %clk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clk.addr, metadata !1098, metadata !DIExpression()), !dbg !1107
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !1099, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.start.p0(i64 8, ptr %vd) #7, !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %vd, metadata !1100, metadata !DIExpression()), !dbg !1110
  %0 = load ptr, ptr %vdns.addr, align 8, !dbg !1111
  %call = call ptr @__arch_get_timens_vdso_data(ptr noundef %0) #6, !dbg !1112
  store ptr %call, ptr %vd, align 8, !dbg !1110
  call void @llvm.lifetime.start.p0(i64 8, ptr %vdso_ts) #7, !dbg !1113
  call void @llvm.dbg.declare(metadata ptr %vdso_ts, metadata !1101, metadata !DIExpression()), !dbg !1114
  %1 = load ptr, ptr %vd, align 8, !dbg !1115
  %2 = getelementptr inbounds %struct.vdso_data, ptr %1, i32 0, i32 6, !dbg !1116
  %3 = load i32, ptr %clk.addr, align 4, !dbg !1117
  %idxprom = sext i32 %3 to i64, !dbg !1115
  %arrayidx = getelementptr [12 x %struct.vdso_timestamp], ptr %2, i64 0, i64 %idxprom, !dbg !1115
  store ptr %arrayidx, ptr %vdso_ts, align 8, !dbg !1114
  call void @llvm.lifetime.start.p0(i64 8, ptr %offs) #7, !dbg !1118
  call void @llvm.dbg.declare(metadata ptr %offs, metadata !1102, metadata !DIExpression()), !dbg !1119
  %4 = load ptr, ptr %vdns.addr, align 8, !dbg !1120
  %5 = getelementptr inbounds %struct.vdso_data, ptr %4, i32 0, i32 6, !dbg !1121
  %6 = load i32, ptr %clk.addr, align 4, !dbg !1122
  %idxprom1 = sext i32 %6 to i64, !dbg !1120
  %arrayidx2 = getelementptr [12 x %struct.timens_offset], ptr %5, i64 0, i64 %idxprom1, !dbg !1120
  store ptr %arrayidx2, ptr %offs, align 8, !dbg !1119
  call void @llvm.lifetime.start.p0(i64 8, ptr %nsec) #7, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %nsec, metadata !1103, metadata !DIExpression()), !dbg !1124
  call void @llvm.lifetime.start.p0(i64 8, ptr %sec) #7, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %sec, metadata !1104, metadata !DIExpression()), !dbg !1126
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #7, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1105, metadata !DIExpression()), !dbg !1128
  br label %do.body, !dbg !1129

do.body:                                          ; preds = %do.cond, %entry
  %7 = load ptr, ptr %vd, align 8, !dbg !1130
  %call3 = call i32 @vdso_read_begin(ptr noundef %7) #6, !dbg !1132
  store i32 %call3, ptr %seq, align 4, !dbg !1133
  %8 = load ptr, ptr %vdso_ts, align 8, !dbg !1134
  %sec4 = getelementptr inbounds %struct.vdso_timestamp, ptr %8, i32 0, i32 0, !dbg !1135
  %9 = load i64, ptr %sec4, align 8, !dbg !1135
  store i64 %9, ptr %sec, align 8, !dbg !1136
  %10 = load ptr, ptr %vdso_ts, align 8, !dbg !1137
  %nsec5 = getelementptr inbounds %struct.vdso_timestamp, ptr %10, i32 0, i32 1, !dbg !1138
  %11 = load i64, ptr %nsec5, align 8, !dbg !1138
  store i64 %11, ptr %nsec, align 8, !dbg !1139
  br label %do.cond, !dbg !1140

do.cond:                                          ; preds = %do.body
  %12 = load ptr, ptr %vd, align 8, !dbg !1141
  %13 = load i32, ptr %seq, align 4, !dbg !1141
  %call6 = call i32 @vdso_read_retry(ptr noundef %12, i32 noundef %13) #6, !dbg !1141
  %tobool = icmp ne i32 %call6, 0, !dbg !1141
  %lnot = xor i1 %tobool, true, !dbg !1141
  %lnot7 = xor i1 %lnot, true, !dbg !1141
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !1141
  %conv = sext i32 %lnot.ext to i64, !dbg !1141
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1141
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1140
  br i1 %tobool8, label %do.body, label %do.end, !dbg !1140, !llvm.loop !1142

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %offs, align 8, !dbg !1144
  %sec9 = getelementptr inbounds %struct.timens_offset, ptr %14, i32 0, i32 0, !dbg !1145
  %15 = load i64, ptr %sec9, align 8, !dbg !1145
  %16 = load i64, ptr %sec, align 8, !dbg !1146
  %add = add i64 %16, %15, !dbg !1146
  store i64 %add, ptr %sec, align 8, !dbg !1146
  %17 = load ptr, ptr %offs, align 8, !dbg !1147
  %nsec10 = getelementptr inbounds %struct.timens_offset, ptr %17, i32 0, i32 1, !dbg !1148
  %18 = load i64, ptr %nsec10, align 8, !dbg !1148
  %19 = load i64, ptr %nsec, align 8, !dbg !1149
  %add11 = add i64 %19, %18, !dbg !1149
  store i64 %add11, ptr %nsec, align 8, !dbg !1149
  %20 = load i64, ptr %sec, align 8, !dbg !1150
  %21 = load i64, ptr %nsec, align 8, !dbg !1151
  %call12 = call i32 @__iter_div_u64_rem(i64 noundef %21, i32 noundef 1000000000, ptr noundef %nsec) #6, !dbg !1152
  %conv13 = zext i32 %call12 to i64, !dbg !1152
  %add14 = add i64 %20, %conv13, !dbg !1153
  %22 = load ptr, ptr %ts.addr, align 8, !dbg !1154
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %22, i32 0, i32 0, !dbg !1155
  store i64 %add14, ptr %tv_sec, align 8, !dbg !1156
  %23 = load i64, ptr %nsec, align 8, !dbg !1157
  %24 = load ptr, ptr %ts.addr, align 8, !dbg !1158
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %24, i32 0, i32 1, !dbg !1159
  store i64 %23, ptr %tv_nsec, align 8, !dbg !1160
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #7, !dbg !1161
  call void @llvm.lifetime.end.p0(i64 8, ptr %sec) #7, !dbg !1161
  call void @llvm.lifetime.end.p0(i64 8, ptr %nsec) #7, !dbg !1161
  call void @llvm.lifetime.end.p0(i64 8, ptr %offs) #7, !dbg !1161
  call void @llvm.lifetime.end.p0(i64 8, ptr %vdso_ts) #7, !dbg !1161
  call void @llvm.lifetime.end.p0(i64 8, ptr %vd) #7, !dbg !1161
  ret i32 0, !dbg !1162
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @__cvdso_clock_getres_data(ptr noundef %vd, i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !1163 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 8
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !1165, metadata !DIExpression()), !dbg !1169
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !1166, metadata !DIExpression()), !dbg !1170
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !1167, metadata !DIExpression()), !dbg !1171
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1168, metadata !DIExpression()), !dbg !1173
  %0 = load ptr, ptr %vd.addr, align 8, !dbg !1174
  %1 = load i32, ptr %clock.addr, align 4, !dbg !1175
  %2 = load ptr, ptr %res.addr, align 8, !dbg !1176
  %call = call i32 @__cvdso_clock_getres_common(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6, !dbg !1177
  store i32 %call, ptr %ret, align 4, !dbg !1173
  %3 = load i32, ptr %ret, align 4, !dbg !1178
  %tobool = icmp ne i32 %3, 0, !dbg !1178
  %lnot = xor i1 %tobool, true, !dbg !1178
  %lnot1 = xor i1 %lnot, true, !dbg !1178
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1178
  %conv = sext i32 %lnot.ext to i64, !dbg !1178
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1178
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1178
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1180

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %clock.addr, align 4, !dbg !1181
  %5 = load ptr, ptr %res.addr, align 8, !dbg !1182
  %call3 = call i64 @clock_getres_fallback(i32 noundef %4, ptr noundef %5) #6, !dbg !1183
  %conv4 = trunc i64 %call3 to i32, !dbg !1183
  store i32 %conv4, ptr %retval, align 4, !dbg !1184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1184

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1185

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !1186
  %6 = load i32, ptr %retval, align 4, !dbg !1186
  ret i32 %6, !dbg !1186
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define internal i32 @__cvdso_clock_getres_common(ptr noundef %vd, i32 noundef %clock, ptr noundef %res) #0 align 16 !dbg !1187 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 8
  %clock.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %msk = alloca i32, align 4
  %ns = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %vd, ptr %vd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vd.addr, metadata !1189, metadata !DIExpression()), !dbg !1194
  store i32 %clock, ptr %clock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %clock.addr, metadata !1190, metadata !DIExpression()), !dbg !1195
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !1191, metadata !DIExpression()), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 4, ptr %msk) #7, !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %msk, metadata !1192, metadata !DIExpression()), !dbg !1198
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #7, !dbg !1199
  call void @llvm.dbg.declare(metadata ptr %ns, metadata !1193, metadata !DIExpression()), !dbg !1200
  %0 = load i32, ptr %clock.addr, align 4, !dbg !1201
  %cmp = icmp uge i32 %0, 16, !dbg !1201
  %lnot = xor i1 %cmp, true, !dbg !1201
  %lnot1 = xor i1 %lnot, true, !dbg !1201
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1201
  %conv = sext i32 %lnot.ext to i64, !dbg !1201
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1201
  %tobool = icmp ne i64 %expval, 0, !dbg !1201
  br i1 %tobool, label %if.then, label %if.end, !dbg !1203

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1204

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %vd.addr, align 8, !dbg !1205
  %clock_mode = getelementptr inbounds %struct.vdso_data, ptr %1, i32 0, i32 1, !dbg !1207
  %2 = load i32, ptr %clock_mode, align 4, !dbg !1207
  %cmp2 = icmp eq i32 %2, 2147483647, !dbg !1208
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1209

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %vd.addr, align 8, !dbg !1210
  %call = call ptr @__arch_get_timens_vdso_data(ptr noundef %3) #6, !dbg !1211
  store ptr %call, ptr %vd.addr, align 8, !dbg !1212
  br label %if.end5, !dbg !1213

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = load i32, ptr %clock.addr, align 4, !dbg !1214
  %shl = shl i32 1, %4, !dbg !1215
  store i32 %shl, ptr %msk, align 4, !dbg !1216
  %5 = load i32, ptr %msk, align 4, !dbg !1217
  %conv6 = zext i32 %5 to i64, !dbg !1217
  %and = and i64 %conv6, 2195, !dbg !1219
  %tobool7 = icmp ne i64 %and, 0, !dbg !1219
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1220

if.then8:                                         ; preds = %if.end5
  br label %do.body, !dbg !1221

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !1224

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1224

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %vd.addr, align 8, !dbg !1221
  %arrayidx = getelementptr %struct.vdso_data, ptr %6, i64 0, !dbg !1221
  %hrtimer_res = getelementptr inbounds %struct.vdso_data, ptr %arrayidx, i32 0, i32 9, !dbg !1221
  %7 = load volatile i32, ptr %hrtimer_res, align 8, !dbg !1221
  store i32 %7, ptr %tmp, align 4, !dbg !1224
  %8 = load i32, ptr %tmp, align 4, !dbg !1221
  %conv9 = zext i32 %8 to i64, !dbg !1226
  store i64 %conv9, ptr %ns, align 8, !dbg !1227
  br label %if.end16, !dbg !1228

if.else:                                          ; preds = %if.end5
  %9 = load i32, ptr %msk, align 4, !dbg !1229
  %conv10 = zext i32 %9 to i64, !dbg !1229
  %and11 = and i64 %conv10, 96, !dbg !1231
  %tobool12 = icmp ne i64 %and11, 0, !dbg !1231
  br i1 %tobool12, label %if.then13, label %if.else14, !dbg !1232

if.then13:                                        ; preds = %if.else
  store i64 1000000, ptr %ns, align 8, !dbg !1233
  br label %if.end15, !dbg !1235

if.else14:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4, !dbg !1236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1236

if.end15:                                         ; preds = %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %do.end
  %10 = load ptr, ptr %res.addr, align 8, !dbg !1238
  %tobool17 = icmp ne ptr %10, null, !dbg !1238
  %lnot18 = xor i1 %tobool17, true, !dbg !1238
  %lnot20 = xor i1 %lnot18, true, !dbg !1238
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1238
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !1238
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 1), !dbg !1238
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !1238
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1240

if.then25:                                        ; preds = %if.end16
  %11 = load ptr, ptr %res.addr, align 8, !dbg !1241
  %tv_sec = getelementptr inbounds %struct.__kernel_timespec, ptr %11, i32 0, i32 0, !dbg !1243
  store i64 0, ptr %tv_sec, align 8, !dbg !1244
  %12 = load i64, ptr %ns, align 8, !dbg !1245
  %13 = load ptr, ptr %res.addr, align 8, !dbg !1246
  %tv_nsec = getelementptr inbounds %struct.__kernel_timespec, ptr %13, i32 0, i32 1, !dbg !1247
  store i64 %12, ptr %tv_nsec, align 8, !dbg !1248
  br label %if.end26, !dbg !1249

if.end26:                                         ; preds = %if.then25, %if.end16
  store i32 0, ptr %retval, align 4, !dbg !1250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1250

cleanup:                                          ; preds = %if.end26, %if.else14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #7, !dbg !1251
  call void @llvm.lifetime.end.p0(i64 4, ptr %msk) #7, !dbg !1251
  %14 = load i32, ptr %retval, align 4, !dbg !1251
  ret i32 %14, !dbg !1251
}

; Function Attrs: alwaysinline noredzone nounwind null_pointer_is_valid uwtable
define internal i64 @clock_getres_fallback(i32 noundef %_clkid, ptr noundef %_ts) #2 align 16 !dbg !1252 {
entry:
  %_clkid.addr = alloca i32, align 4
  %_ts.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store i32 %_clkid, ptr %_clkid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %_clkid.addr, metadata !1254, metadata !DIExpression()), !dbg !1257
  store ptr %_ts, ptr %_ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_ts.addr, metadata !1255, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1256, metadata !DIExpression()), !dbg !1260
  %0 = load ptr, ptr %_ts.addr, align 8, !dbg !1261
  %1 = load i32, ptr %_clkid.addr, align 4, !dbg !1262
  %2 = load ptr, ptr %_ts.addr, align 8, !dbg !1263
  %3 = call i64 asm "syscall", "={ax},=*m,0,{di},{si},~{rcx},~{r11},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__kernel_timespec) %0, i64 229, i32 %1, ptr %2) #7, !dbg !1264, !srcloc !1265
  store i64 %3, ptr %ret, align 8, !dbg !1264
  %4 = load i64, ptr %ret, align 8, !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !1267
  ret i64 %4, !dbg !1268
}

attributes #0 = { noredzone nounwind null_pointer_is_valid uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline noredzone nounwind null_pointer_is_valid uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint noredzone nounwind null_pointer_is_valid uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/entry/vdso/.vclock_gettime.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -mcmodel=small -fPIC -O1 -fasynchronous-unwind-tables -m64 -fno-stack-protector -fno-omit-frame-pointer -foptimize-sibling-calls -D DISABLE_BRANCH_PROFILING -D BUILD_VDSO -mretpoline -D KBUILD_MODFILE=\22arch/x86/entry/vdso/vclock_gettime\22 -D KBUILD_BASENAME=\22vclock_gettime\22 -D KBUILD_MODNAME=\22vclock_gettime\22 -D __KBUILD_MODNAME=kmod_vclock_gettime -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/entry/vdso/vclock_gettime.ll arch/x86/entry/vdso/vclock_gettime.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !18, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/entry/vdso/vclock_gettime.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a96c9f89913d9bae16ddc52a6f774863")
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
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !5)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !5)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !29)
!29 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !21, line: 22, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !23, line: 30, baseType: !32)
!32 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 8, !"cf-protection-branch", i32 1}
!40 = !{i32 8, !"PIC Level", i32 2}
!41 = !{i32 1, !"Code Model", i32 1}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{i32 1, !"override-stack-alignment", i32 8}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = distinct !DISubprogram(name: "__vdso_gettimeofday", scope: !1, file: !1, line: 20, type: !47, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !50, !59}
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_old_timeval", file: !52, line: 25, size: 128, elements: !53)
!52 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!53 = !{!54, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !51, file: !52, line: 26, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !56, line: 15, baseType: !57)
!56 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!57 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !51, file: !52, line: 27, baseType: !55, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !61, line: 33, size: 64, elements: !62)
!61 = !DIFile(filename: "./include/uapi/linux/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29d85d53923887a6837976761c3c5189")
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !60, file: !61, line: 34, baseType: !49, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !60, file: !61, line: 35, baseType: !49, size: 32, offset: 32)
!65 = !{!66, !67}
!66 = !DILocalVariable(name: "tv", arg: 1, scope: !46, file: !1, line: 20, type: !50)
!67 = !DILocalVariable(name: "tz", arg: 2, scope: !46, file: !1, line: 20, type: !59)
!68 = !DILocation(line: 20, column: 54, scope: !46)
!69 = !DILocation(line: 20, column: 75, scope: !46)
!70 = !DILocation(line: 22, column: 30, scope: !46)
!71 = !DILocation(line: 22, column: 34, scope: !46)
!72 = !DILocation(line: 22, column: 9, scope: !46)
!73 = !DILocation(line: 22, column: 2, scope: !46)
!74 = distinct !DISubprogram(name: "__cvdso_gettimeofday", scope: !75, file: !75, line: 326, type: !47, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!75 = !DIFile(filename: "arch/x86/entry/vdso/../../../../lib/vdso/gettimeofday.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31c4ce4e53df0c79acd3e891a41828f0")
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
!86 = distinct !DISubprogram(name: "__vdso_time", scope: !1, file: !1, line: 28, type: !87, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_old_time_t", file: !56, line: 89, baseType: !55)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!91 = !{!92}
!92 = !DILocalVariable(name: "t", arg: 1, scope: !86, file: !1, line: 28, type: !90)
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
!105 = distinct !DISubprogram(name: "__vdso_clock_gettime", scope: !1, file: !1, line: 41, type: !106, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!106 = !DISubroutineType(types: !107)
!107 = !{!49, !108, !111}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !109, line: 32, baseType: !110)
!109 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !56, line: 96, baseType: !49)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !52, line: 7, size: 128, elements: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !112, file: !52, line: 8, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !56, line: 93, baseType: !32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !112, file: !52, line: 9, baseType: !32, size: 64, offset: 64)
!117 = !{!118, !119}
!118 = !DILocalVariable(name: "clock", arg: 1, scope: !105, file: !1, line: 41, type: !108)
!119 = !DILocalVariable(name: "ts", arg: 2, scope: !105, file: !1, line: 41, type: !111)
!120 = !DILocation(line: 41, column: 36, scope: !105)
!121 = !DILocation(line: 41, column: 69, scope: !105)
!122 = !DILocation(line: 43, column: 31, scope: !105)
!123 = !DILocation(line: 43, column: 38, scope: !105)
!124 = !DILocation(line: 43, column: 9, scope: !105)
!125 = !DILocation(line: 43, column: 2, scope: !105)
!126 = distinct !DISubprogram(name: "__cvdso_clock_gettime", scope: !75, file: !75, line: 266, type: !106, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!127 = !{!128, !129}
!128 = !DILocalVariable(name: "clock", arg: 1, scope: !126, file: !75, line: 266, type: !108)
!129 = !DILocalVariable(name: "ts", arg: 2, scope: !126, file: !75, line: 266, type: !111)
!130 = !DILocation(line: 266, column: 33, scope: !126)
!131 = !DILocation(line: 266, column: 66, scope: !126)
!132 = !DILocation(line: 268, column: 36, scope: !126)
!133 = !DILocation(line: 268, column: 60, scope: !126)
!134 = !DILocation(line: 268, column: 67, scope: !126)
!135 = !DILocation(line: 268, column: 9, scope: !126)
!136 = !DILocation(line: 268, column: 2, scope: !126)
!137 = distinct !DISubprogram(name: "__vdso_clock_getres", scope: !1, file: !1, line: 49, type: !106, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!138 = !{!139, !140}
!139 = !DILocalVariable(name: "clock", arg: 1, scope: !137, file: !1, line: 49, type: !108)
!140 = !DILocalVariable(name: "res", arg: 2, scope: !137, file: !1, line: 50, type: !111)
!141 = !DILocation(line: 49, column: 35, scope: !137)
!142 = !DILocation(line: 50, column: 30, scope: !137)
!143 = !DILocation(line: 52, column: 30, scope: !137)
!144 = !DILocation(line: 52, column: 37, scope: !137)
!145 = !DILocation(line: 52, column: 9, scope: !137)
!146 = !DILocation(line: 52, column: 2, scope: !137)
!147 = distinct !DISubprogram(name: "__cvdso_clock_getres", scope: !75, file: !75, line: 409, type: !106, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!148 = !{!149, !150}
!149 = !DILocalVariable(name: "clock", arg: 1, scope: !147, file: !75, line: 409, type: !108)
!150 = !DILocalVariable(name: "res", arg: 2, scope: !147, file: !75, line: 409, type: !111)
!151 = !DILocation(line: 409, column: 36, scope: !147)
!152 = !DILocation(line: 409, column: 69, scope: !147)
!153 = !DILocation(line: 411, column: 35, scope: !147)
!154 = !DILocation(line: 411, column: 59, scope: !147)
!155 = !DILocation(line: 411, column: 66, scope: !147)
!156 = !DILocation(line: 411, column: 9, scope: !147)
!157 = !DILocation(line: 411, column: 2, scope: !147)
!158 = distinct !DISubprogram(name: "__cvdso_gettimeofday_data", scope: !75, file: !75, line: 299, type: !159, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !199)
!159 = !DISubroutineType(types: !160)
!160 = !{!49, !161, !50, !59}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_data", file: !164, line: 90, size: 1920, elements: !165)
!164 = !DIFile(filename: "./include/vdso/datapage.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd561b8fc8d778c148cc9e4ad5fe7dc5")
!165 = !{!166, !167, !170, !171, !172, !173, !174, !192, !193, !194, !195, !196}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !163, file: !164, line: 91, baseType: !20, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "clock_mode", scope: !163, file: !164, line: 93, baseType: !168, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !21, line: 20, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !23, line: 26, baseType: !49)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_last", scope: !163, file: !164, line: 94, baseType: !27, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !163, file: !164, line: 95, baseType: !27, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !163, file: !164, line: 96, baseType: !20, size: 32, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !163, file: !164, line: 97, baseType: !20, size: 32, offset: 224)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !164, line: 99, baseType: !175, size: 1536, offset: 256)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !164, line: 99, size: 1536, elements: !176)
!176 = !{!177, !185}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "basetime", scope: !175, file: !164, line: 100, baseType: !178, size: 1536)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 1536, elements: !183)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_timestamp", file: !164, line: 54, size: 128, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !179, file: !164, line: 55, baseType: !27, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !179, file: !164, line: 56, baseType: !27, size: 64, offset: 64)
!183 = !{!184}
!184 = !DISubrange(count: 12)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !175, file: !164, line: 101, baseType: !186, size: 1536)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 1536, elements: !183)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timens_offset", file: !188, line: 7, size: 128, elements: !189)
!188 = !DIFile(filename: "./include/vdso/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba8fbefc3ceb6aad90a49911c36b3121")
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !187, file: !188, line: 8, baseType: !30, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !187, file: !188, line: 9, baseType: !27, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !163, file: !164, line: 104, baseType: !168, size: 32, offset: 1792)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !163, file: !164, line: 105, baseType: !168, size: 32, offset: 1824)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_res", scope: !163, file: !164, line: 106, baseType: !20, size: 32, offset: 1856)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !163, file: !164, line: 107, baseType: !20, size: 32, offset: 1888)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !163, file: !164, line: 109, baseType: !197, offset: 1920)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_vdso_data", file: !164, line: 25, elements: !198)
!198 = !{}
!199 = !{!200, !201, !202, !203}
!200 = !DILocalVariable(name: "vd", arg: 1, scope: !158, file: !75, line: 299, type: !161)
!201 = !DILocalVariable(name: "tv", arg: 2, scope: !158, file: !75, line: 300, type: !50)
!202 = !DILocalVariable(name: "tz", arg: 3, scope: !158, file: !75, line: 300, type: !59)
!203 = !DILocalVariable(name: "ts", scope: !204, file: !75, line: 304, type: !112)
!204 = distinct !DILexicalBlock(scope: !205, file: !75, line: 303, column: 26)
!205 = distinct !DILexicalBlock(scope: !158, file: !75, line: 303, column: 6)
!206 = !DILocation(line: 299, column: 51, scope: !158)
!207 = !DILocation(line: 300, column: 35, scope: !158)
!208 = !DILocation(line: 300, column: 56, scope: !158)
!209 = !DILocation(line: 303, column: 6, scope: !205)
!210 = !DILocation(line: 303, column: 6, scope: !158)
!211 = !DILocation(line: 304, column: 3, scope: !204)
!212 = !DILocation(line: 304, column: 28, scope: !204)
!213 = !DILocation(line: 306, column: 16, scope: !214)
!214 = distinct !DILexicalBlock(scope: !204, file: !75, line: 306, column: 7)
!215 = !DILocation(line: 306, column: 7, scope: !214)
!216 = !DILocation(line: 306, column: 7, scope: !204)
!217 = !DILocation(line: 307, column: 33, scope: !214)
!218 = !DILocation(line: 307, column: 37, scope: !214)
!219 = !DILocation(line: 307, column: 11, scope: !214)
!220 = !DILocation(line: 307, column: 4, scope: !214)
!221 = !DILocation(line: 309, column: 19, scope: !204)
!222 = !DILocation(line: 309, column: 3, scope: !204)
!223 = !DILocation(line: 309, column: 7, scope: !204)
!224 = !DILocation(line: 309, column: 14, scope: !204)
!225 = !DILocation(line: 310, column: 25, scope: !204)
!226 = !DILocation(line: 310, column: 17, scope: !204)
!227 = !DILocation(line: 310, column: 33, scope: !204)
!228 = !DILocation(line: 310, column: 3, scope: !204)
!229 = !DILocation(line: 310, column: 7, scope: !204)
!230 = !DILocation(line: 310, column: 15, scope: !204)
!231 = !DILocation(line: 311, column: 2, scope: !205)
!232 = !DILocation(line: 311, column: 2, scope: !204)
!233 = !DILocation(line: 313, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !158, file: !75, line: 313, column: 6)
!235 = !DILocation(line: 313, column: 6, scope: !158)
!236 = !DILocation(line: 315, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !75, line: 314, column: 7)
!238 = distinct !DILexicalBlock(scope: !234, file: !75, line: 313, column: 28)
!239 = !DILocation(line: 315, column: 11, scope: !237)
!240 = !DILocation(line: 315, column: 22, scope: !237)
!241 = !DILocation(line: 314, column: 7, scope: !238)
!242 = !DILocation(line: 316, column: 37, scope: !237)
!243 = !DILocation(line: 316, column: 9, scope: !237)
!244 = !DILocation(line: 316, column: 7, scope: !237)
!245 = !DILocation(line: 316, column: 4, scope: !237)
!246 = !DILocation(line: 318, column: 24, scope: !238)
!247 = !DILocation(line: 318, column: 43, scope: !238)
!248 = !DILocation(line: 318, column: 3, scope: !238)
!249 = !DILocation(line: 318, column: 7, scope: !238)
!250 = !DILocation(line: 318, column: 22, scope: !238)
!251 = !DILocation(line: 319, column: 20, scope: !238)
!252 = !DILocation(line: 319, column: 39, scope: !238)
!253 = !DILocation(line: 319, column: 3, scope: !238)
!254 = !DILocation(line: 319, column: 7, scope: !238)
!255 = !DILocation(line: 319, column: 18, scope: !238)
!256 = !DILocation(line: 320, column: 2, scope: !238)
!257 = !DILocation(line: 322, column: 2, scope: !158)
!258 = !DILocation(line: 323, column: 1, scope: !158)
!259 = distinct !DISubprogram(name: "__arch_get_vdso_data", scope: !260, file: !260, line: 276, type: !261, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!260 = !DIFile(filename: "./arch/x86/include/asm/vdso/gettimeofday.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "959d5bb738ac1ae9a29c1296e8c700f5")
!261 = !DISubroutineType(types: !262)
!262 = !{!161}
!263 = !DILocation(line: 278, column: 2, scope: !259)
!264 = distinct !DISubprogram(name: "do_hres", scope: !75, file: !75, line: 110, type: !265, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!49, !161, !108, !111}
!267 = !{!268, !269, !270, !271, !274, !275, !276, !277, !278}
!268 = !DILocalVariable(name: "vd", arg: 1, scope: !264, file: !75, line: 110, type: !161)
!269 = !DILocalVariable(name: "clk", arg: 2, scope: !264, file: !75, line: 110, type: !108)
!270 = !DILocalVariable(name: "ts", arg: 3, scope: !264, file: !75, line: 111, type: !111)
!271 = !DILocalVariable(name: "vdso_ts", scope: !264, file: !75, line: 113, type: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!274 = !DILocalVariable(name: "cycles", scope: !264, file: !75, line: 114, type: !27)
!275 = !DILocalVariable(name: "last", scope: !264, file: !75, line: 114, type: !27)
!276 = !DILocalVariable(name: "sec", scope: !264, file: !75, line: 114, type: !27)
!277 = !DILocalVariable(name: "ns", scope: !264, file: !75, line: 114, type: !27)
!278 = !DILocalVariable(name: "seq", scope: !264, file: !75, line: 115, type: !20)
!279 = !DILocation(line: 110, column: 60, scope: !264)
!280 = !DILocation(line: 110, column: 74, scope: !264)
!281 = !DILocation(line: 111, column: 34, scope: !264)
!282 = !DILocation(line: 113, column: 2, scope: !264)
!283 = !DILocation(line: 113, column: 31, scope: !264)
!284 = !DILocation(line: 113, column: 42, scope: !264)
!285 = !DILocation(line: 113, column: 46, scope: !264)
!286 = !DILocation(line: 113, column: 55, scope: !264)
!287 = !DILocation(line: 114, column: 2, scope: !264)
!288 = !DILocation(line: 114, column: 6, scope: !264)
!289 = !DILocation(line: 114, column: 14, scope: !264)
!290 = !DILocation(line: 114, column: 20, scope: !264)
!291 = !DILocation(line: 114, column: 25, scope: !264)
!292 = !DILocation(line: 115, column: 2, scope: !264)
!293 = !DILocation(line: 115, column: 6, scope: !264)
!294 = !DILocation(line: 118, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !264, file: !75, line: 118, column: 6)
!296 = !DILocation(line: 118, column: 6, scope: !264)
!297 = !DILocation(line: 119, column: 3, scope: !295)
!298 = !DILocation(line: 121, column: 2, scope: !264)
!299 = !DILocation(line: 133, column: 3, scope: !300)
!300 = distinct !DILexicalBlock(scope: !264, file: !75, line: 121, column: 5)
!301 = !DILocation(line: 133, column: 10, scope: !302)
!302 = distinct !DILexicalBlock(scope: !300, file: !75, line: 133, column: 10)
!303 = !DILocation(line: 133, column: 10, scope: !304)
!304 = distinct !DILexicalBlock(scope: !302, file: !75, line: 133, column: 10)
!305 = !DILocation(line: 133, column: 10, scope: !300)
!306 = !DILocation(line: 135, column: 8, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !75, line: 134, column: 8)
!308 = distinct !DILexicalBlock(scope: !300, file: !75, line: 133, column: 52)
!309 = !DILocation(line: 135, column: 12, scope: !307)
!310 = !DILocation(line: 135, column: 23, scope: !307)
!311 = !DILocation(line: 134, column: 8, scope: !308)
!312 = !DILocation(line: 136, column: 27, scope: !307)
!313 = !DILocation(line: 136, column: 31, scope: !307)
!314 = !DILocation(line: 136, column: 36, scope: !307)
!315 = !DILocation(line: 136, column: 12, scope: !307)
!316 = !DILocation(line: 136, column: 5, scope: !307)
!317 = !DILocation(line: 137, column: 4, scope: !308)
!318 = distinct !{!318, !299, !319, !320, !321}
!319 = !DILocation(line: 138, column: 3, scope: !300)
!320 = !{!"llvm.loop.mustprogress"}
!321 = !{!"llvm.loop.unroll.disable"}
!322 = !DILocation(line: 139, column: 3, scope: !300)
!323 = !DILocation(line: 139, column: 3, scope: !324)
!324 = distinct !DILexicalBlock(scope: !300, file: !75, line: 139, column: 3)
!325 = !DILocation(line: 139, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !324, file: !75, line: 139, column: 3)
!327 = !DILocation(line: 139, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !75, line: 139, column: 3)
!329 = !DILocation(line: 139, column: 3, scope: !330)
!330 = distinct !DILexicalBlock(scope: !328, file: !75, line: 139, column: 3)
!331 = !{i64 2152431601}
!332 = !DILocation(line: 141, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !300, file: !75, line: 141, column: 7)
!334 = !DILocation(line: 141, column: 7, scope: !300)
!335 = !DILocation(line: 142, column: 4, scope: !333)
!336 = !DILocation(line: 144, column: 34, scope: !300)
!337 = !DILocation(line: 144, column: 38, scope: !300)
!338 = !DILocation(line: 144, column: 50, scope: !300)
!339 = !DILocation(line: 144, column: 12, scope: !300)
!340 = !DILocation(line: 144, column: 10, scope: !300)
!341 = !DILocation(line: 145, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !300, file: !75, line: 145, column: 7)
!343 = !DILocation(line: 145, column: 7, scope: !300)
!344 = !DILocation(line: 146, column: 4, scope: !342)
!345 = !DILocation(line: 147, column: 8, scope: !300)
!346 = !DILocation(line: 147, column: 17, scope: !300)
!347 = !DILocation(line: 147, column: 6, scope: !300)
!348 = !DILocation(line: 148, column: 10, scope: !300)
!349 = !DILocation(line: 148, column: 14, scope: !300)
!350 = !DILocation(line: 148, column: 8, scope: !300)
!351 = !DILocation(line: 149, column: 25, scope: !300)
!352 = !DILocation(line: 149, column: 33, scope: !300)
!353 = !DILocation(line: 149, column: 39, scope: !300)
!354 = !DILocation(line: 149, column: 43, scope: !300)
!355 = !DILocation(line: 149, column: 49, scope: !300)
!356 = !DILocation(line: 149, column: 53, scope: !300)
!357 = !DILocation(line: 149, column: 9, scope: !300)
!358 = !DILocation(line: 149, column: 6, scope: !300)
!359 = !DILocation(line: 150, column: 22, scope: !300)
!360 = !DILocation(line: 150, column: 26, scope: !300)
!361 = !DILocation(line: 150, column: 30, scope: !300)
!362 = !DILocation(line: 150, column: 8, scope: !300)
!363 = !DILocation(line: 150, column: 6, scope: !300)
!364 = !DILocation(line: 151, column: 9, scope: !300)
!365 = !DILocation(line: 151, column: 18, scope: !300)
!366 = !DILocation(line: 151, column: 7, scope: !300)
!367 = !DILocation(line: 152, column: 2, scope: !300)
!368 = !DILocation(line: 152, column: 11, scope: !264)
!369 = distinct !{!369, !298, !370, !320, !321}
!370 = !DILocation(line: 152, column: 45, scope: !264)
!371 = !DILocation(line: 158, column: 15, scope: !264)
!372 = !DILocation(line: 158, column: 40, scope: !264)
!373 = !DILocation(line: 158, column: 21, scope: !264)
!374 = !DILocation(line: 158, column: 19, scope: !264)
!375 = !DILocation(line: 158, column: 2, scope: !264)
!376 = !DILocation(line: 158, column: 6, scope: !264)
!377 = !DILocation(line: 158, column: 13, scope: !264)
!378 = !DILocation(line: 159, column: 16, scope: !264)
!379 = !DILocation(line: 159, column: 2, scope: !264)
!380 = !DILocation(line: 159, column: 6, scope: !264)
!381 = !DILocation(line: 159, column: 14, scope: !264)
!382 = !DILocation(line: 161, column: 2, scope: !264)
!383 = !DILocation(line: 162, column: 1, scope: !264)
!384 = distinct !DISubprogram(name: "gettimeofday_fallback", scope: !260, file: !260, line: 83, type: !385, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{!57, !50, !59}
!387 = !{!388, !389, !390}
!388 = !DILocalVariable(name: "_tv", arg: 1, scope: !384, file: !260, line: 83, type: !50)
!389 = !DILocalVariable(name: "_tz", arg: 2, scope: !384, file: !260, line: 84, type: !59)
!390 = !DILocalVariable(name: "ret", scope: !384, file: !260, line: 86, type: !57)
!391 = !DILocation(line: 83, column: 57, scope: !384)
!392 = !DILocation(line: 84, column: 24, scope: !384)
!393 = !DILocation(line: 86, column: 2, scope: !384)
!394 = !DILocation(line: 86, column: 7, scope: !384)
!395 = !DILocation(line: 89, column: 36, scope: !384)
!396 = !DILocation(line: 89, column: 47, scope: !384)
!397 = !DILocation(line: 88, column: 2, scope: !384)
!398 = !{i64 1874611}
!399 = !DILocation(line: 91, column: 9, scope: !384)
!400 = !DILocation(line: 92, column: 1, scope: !384)
!401 = !DILocation(line: 91, column: 2, scope: !384)
!402 = distinct !DISubprogram(name: "__arch_get_timens_vdso_data", scope: !260, file: !260, line: 62, type: !403, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!161, !161}
!405 = !{!406}
!406 = !DILocalVariable(name: "vd", arg: 1, scope: !402, file: !260, line: 62, type: !161)
!407 = !DILocation(line: 62, column: 77, scope: !402)
!408 = !DILocation(line: 64, column: 2, scope: !402)
!409 = distinct !DISubprogram(name: "__arch_vdso_hres_capable", scope: !75, file: !75, line: 28, type: !410, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!410 = !DISubroutineType(types: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !109, line: 35, baseType: !413)
!413 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!414 = !DILocation(line: 30, column: 2, scope: !409)
!415 = distinct !DISubprogram(name: "do_hres_timens", scope: !75, file: !75, line: 49, type: !265, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !416)
!416 = !{!417, !418, !419, !420, !421, !424, !425, !426, !427, !428, !429}
!417 = !DILocalVariable(name: "vdns", arg: 1, scope: !415, file: !75, line: 49, type: !161)
!418 = !DILocalVariable(name: "clk", arg: 2, scope: !415, file: !75, line: 49, type: !108)
!419 = !DILocalVariable(name: "ts", arg: 3, scope: !415, file: !75, line: 50, type: !111)
!420 = !DILocalVariable(name: "vd", scope: !415, file: !75, line: 52, type: !161)
!421 = !DILocalVariable(name: "offs", scope: !415, file: !75, line: 53, type: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!424 = !DILocalVariable(name: "vdso_ts", scope: !415, file: !75, line: 54, type: !272)
!425 = !DILocalVariable(name: "cycles", scope: !415, file: !75, line: 55, type: !27)
!426 = !DILocalVariable(name: "last", scope: !415, file: !75, line: 55, type: !27)
!427 = !DILocalVariable(name: "ns", scope: !415, file: !75, line: 55, type: !27)
!428 = !DILocalVariable(name: "seq", scope: !415, file: !75, line: 56, type: !20)
!429 = !DILocalVariable(name: "sec", scope: !415, file: !75, line: 57, type: !30)
!430 = !DILocation(line: 49, column: 67, scope: !415)
!431 = !DILocation(line: 49, column: 83, scope: !415)
!432 = !DILocation(line: 50, column: 34, scope: !415)
!433 = !DILocation(line: 52, column: 2, scope: !415)
!434 = !DILocation(line: 52, column: 26, scope: !415)
!435 = !DILocation(line: 53, column: 2, scope: !415)
!436 = !DILocation(line: 53, column: 30, scope: !415)
!437 = !DILocation(line: 53, column: 38, scope: !415)
!438 = !DILocation(line: 53, column: 44, scope: !415)
!439 = !DILocation(line: 53, column: 51, scope: !415)
!440 = !DILocation(line: 54, column: 2, scope: !415)
!441 = !DILocation(line: 54, column: 31, scope: !415)
!442 = !DILocation(line: 55, column: 2, scope: !415)
!443 = !DILocation(line: 55, column: 6, scope: !415)
!444 = !DILocation(line: 55, column: 14, scope: !415)
!445 = !DILocation(line: 55, column: 20, scope: !415)
!446 = !DILocation(line: 56, column: 2, scope: !415)
!447 = !DILocation(line: 56, column: 6, scope: !415)
!448 = !DILocation(line: 57, column: 2, scope: !415)
!449 = !DILocation(line: 57, column: 6, scope: !415)
!450 = !DILocation(line: 59, column: 7, scope: !415)
!451 = !DILocation(line: 59, column: 15, scope: !415)
!452 = !DILocation(line: 59, column: 19, scope: !415)
!453 = !DILocation(line: 59, column: 12, scope: !415)
!454 = !DILocation(line: 59, column: 5, scope: !415)
!455 = !DILocation(line: 60, column: 35, scope: !415)
!456 = !DILocation(line: 60, column: 7, scope: !415)
!457 = !DILocation(line: 60, column: 5, scope: !415)
!458 = !DILocation(line: 61, column: 6, scope: !459)
!459 = distinct !DILexicalBlock(scope: !415, file: !75, line: 61, column: 6)
!460 = !DILocation(line: 61, column: 10, scope: !459)
!461 = !DILocation(line: 61, column: 6, scope: !415)
!462 = !DILocation(line: 62, column: 9, scope: !459)
!463 = !DILocation(line: 62, column: 6, scope: !459)
!464 = !DILocation(line: 62, column: 3, scope: !459)
!465 = !DILocation(line: 64, column: 9, scope: !459)
!466 = !DILocation(line: 64, column: 6, scope: !459)
!467 = !DILocation(line: 65, column: 13, scope: !415)
!468 = !DILocation(line: 65, column: 17, scope: !415)
!469 = !DILocation(line: 65, column: 26, scope: !415)
!470 = !DILocation(line: 65, column: 10, scope: !415)
!471 = !DILocation(line: 67, column: 2, scope: !415)
!472 = !DILocation(line: 68, column: 25, scope: !473)
!473 = distinct !DILexicalBlock(scope: !415, file: !75, line: 67, column: 5)
!474 = !DILocation(line: 68, column: 9, scope: !473)
!475 = !DILocation(line: 68, column: 7, scope: !473)
!476 = !DILocation(line: 70, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !75, line: 70, column: 7)
!478 = !DILocation(line: 70, column: 7, scope: !473)
!479 = !DILocation(line: 71, column: 4, scope: !477)
!480 = !DILocation(line: 73, column: 34, scope: !473)
!481 = !DILocation(line: 73, column: 38, scope: !473)
!482 = !DILocation(line: 73, column: 50, scope: !473)
!483 = !DILocation(line: 73, column: 12, scope: !473)
!484 = !DILocation(line: 73, column: 10, scope: !473)
!485 = !DILocation(line: 74, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !473, file: !75, line: 74, column: 7)
!487 = !DILocation(line: 74, column: 7, scope: !473)
!488 = !DILocation(line: 75, column: 4, scope: !486)
!489 = !DILocation(line: 76, column: 8, scope: !473)
!490 = !DILocation(line: 76, column: 17, scope: !473)
!491 = !DILocation(line: 76, column: 6, scope: !473)
!492 = !DILocation(line: 77, column: 10, scope: !473)
!493 = !DILocation(line: 77, column: 14, scope: !473)
!494 = !DILocation(line: 77, column: 8, scope: !473)
!495 = !DILocation(line: 78, column: 25, scope: !473)
!496 = !DILocation(line: 78, column: 33, scope: !473)
!497 = !DILocation(line: 78, column: 39, scope: !473)
!498 = !DILocation(line: 78, column: 43, scope: !473)
!499 = !DILocation(line: 78, column: 49, scope: !473)
!500 = !DILocation(line: 78, column: 53, scope: !473)
!501 = !DILocation(line: 78, column: 9, scope: !473)
!502 = !DILocation(line: 78, column: 6, scope: !473)
!503 = !DILocation(line: 79, column: 22, scope: !473)
!504 = !DILocation(line: 79, column: 26, scope: !473)
!505 = !DILocation(line: 79, column: 30, scope: !473)
!506 = !DILocation(line: 79, column: 8, scope: !473)
!507 = !DILocation(line: 79, column: 6, scope: !473)
!508 = !DILocation(line: 80, column: 9, scope: !473)
!509 = !DILocation(line: 80, column: 18, scope: !473)
!510 = !DILocation(line: 80, column: 7, scope: !473)
!511 = !DILocation(line: 81, column: 2, scope: !473)
!512 = !DILocation(line: 81, column: 11, scope: !415)
!513 = distinct !{!513, !471, !514, !320, !321}
!514 = !DILocation(line: 81, column: 45, scope: !415)
!515 = !DILocation(line: 84, column: 9, scope: !415)
!516 = !DILocation(line: 84, column: 15, scope: !415)
!517 = !DILocation(line: 84, column: 6, scope: !415)
!518 = !DILocation(line: 85, column: 8, scope: !415)
!519 = !DILocation(line: 85, column: 14, scope: !415)
!520 = !DILocation(line: 85, column: 5, scope: !415)
!521 = !DILocation(line: 91, column: 15, scope: !415)
!522 = !DILocation(line: 91, column: 40, scope: !415)
!523 = !DILocation(line: 91, column: 21, scope: !415)
!524 = !DILocation(line: 91, column: 19, scope: !415)
!525 = !DILocation(line: 91, column: 2, scope: !415)
!526 = !DILocation(line: 91, column: 6, scope: !415)
!527 = !DILocation(line: 91, column: 13, scope: !415)
!528 = !DILocation(line: 92, column: 16, scope: !415)
!529 = !DILocation(line: 92, column: 2, scope: !415)
!530 = !DILocation(line: 92, column: 6, scope: !415)
!531 = !DILocation(line: 92, column: 14, scope: !415)
!532 = !DILocation(line: 94, column: 2, scope: !415)
!533 = !DILocation(line: 95, column: 1, scope: !415)
!534 = distinct !DISubprogram(name: "cpu_relax", scope: !535, file: !535, line: 16, type: !536, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!535 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!536 = !DISubroutineType(types: !537)
!537 = !{null}
!538 = !DILocation(line: 18, column: 2, scope: !534)
!539 = !DILocation(line: 19, column: 1, scope: !534)
!540 = distinct !DISubprogram(name: "arch_vdso_clocksource_ok", scope: !260, file: !260, line: 281, type: !541, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !543)
!541 = !DISubroutineType(types: !542)
!542 = !{!412, !161}
!543 = !{!544}
!544 = !DILocalVariable(name: "vd", arg: 1, scope: !540, file: !260, line: 281, type: !161)
!545 = !DILocation(line: 281, column: 69, scope: !540)
!546 = !DILocation(line: 283, column: 2, scope: !540)
!547 = distinct !DISubprogram(name: "__arch_get_hw_counter", scope: !260, file: !260, line: 250, type: !548, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!27, !168, !161}
!550 = !{!551, !552}
!551 = !DILocalVariable(name: "clock_mode", arg: 1, scope: !547, file: !260, line: 250, type: !168)
!552 = !DILocalVariable(name: "vd", arg: 2, scope: !547, file: !260, line: 251, type: !161)
!553 = !DILocation(line: 250, column: 45, scope: !547)
!554 = !DILocation(line: 251, column: 30, scope: !547)
!555 = !DILocation(line: 253, column: 6, scope: !556)
!556 = distinct !DILexicalBlock(scope: !547, file: !260, line: 253, column: 6)
!557 = !DILocation(line: 253, column: 6, scope: !547)
!558 = !DILocation(line: 254, column: 15, scope: !556)
!559 = !DILocation(line: 254, column: 31, scope: !556)
!560 = !DILocation(line: 254, column: 3, scope: !556)
!561 = !DILocation(line: 262, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !547, file: !260, line: 262, column: 6)
!563 = !DILocation(line: 262, column: 17, scope: !562)
!564 = !DILocation(line: 262, column: 6, scope: !547)
!565 = !DILocation(line: 263, column: 3, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !260, line: 262, column: 44)
!567 = !{i64 2152425265}
!568 = !DILocation(line: 264, column: 10, scope: !566)
!569 = !DILocation(line: 264, column: 3, scope: !566)
!570 = !DILocation(line: 273, column: 2, scope: !547)
!571 = !DILocation(line: 274, column: 1, scope: !547)
!572 = distinct !DISubprogram(name: "arch_vdso_cycles_ok", scope: !260, file: !260, line: 296, type: !573, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !575)
!573 = !DISubroutineType(types: !574)
!574 = !{!412, !27}
!575 = !{!576}
!576 = !DILocalVariable(name: "cycles", arg: 1, scope: !572, file: !260, line: 296, type: !27)
!577 = !DILocation(line: 296, column: 44, scope: !572)
!578 = !DILocation(line: 298, column: 14, scope: !572)
!579 = !DILocation(line: 298, column: 21, scope: !572)
!580 = !DILocation(line: 298, column: 2, scope: !572)
!581 = distinct !DISubprogram(name: "vdso_calc_delta", scope: !260, file: !260, line: 321, type: !582, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{!27, !27, !27, !27, !20}
!584 = !{!585, !586, !587, !588, !589}
!585 = !DILocalVariable(name: "cycles", arg: 1, scope: !581, file: !260, line: 321, type: !27)
!586 = !DILocalVariable(name: "last", arg: 2, scope: !581, file: !260, line: 321, type: !27)
!587 = !DILocalVariable(name: "mask", arg: 3, scope: !581, file: !260, line: 321, type: !27)
!588 = !DILocalVariable(name: "mult", arg: 4, scope: !581, file: !260, line: 321, type: !20)
!589 = !DILocalVariable(name: "delta", scope: !581, file: !260, line: 327, type: !27)
!590 = !DILocation(line: 321, column: 25, scope: !581)
!591 = !DILocation(line: 321, column: 37, scope: !581)
!592 = !DILocation(line: 321, column: 47, scope: !581)
!593 = !DILocation(line: 321, column: 57, scope: !581)
!594 = !DILocation(line: 327, column: 2, scope: !581)
!595 = !DILocation(line: 327, column: 6, scope: !581)
!596 = !DILocation(line: 327, column: 15, scope: !581)
!597 = !DILocation(line: 327, column: 24, scope: !581)
!598 = !DILocation(line: 327, column: 22, scope: !581)
!599 = !DILocation(line: 327, column: 30, scope: !581)
!600 = !DILocation(line: 333, column: 6, scope: !601)
!601 = distinct !DILexicalBlock(scope: !581, file: !260, line: 333, column: 6)
!602 = !DILocation(line: 333, column: 6, scope: !581)
!603 = !DILocation(line: 334, column: 3, scope: !601)
!604 = !DILocation(line: 336, column: 9, scope: !581)
!605 = !DILocation(line: 336, column: 17, scope: !581)
!606 = !DILocation(line: 336, column: 15, scope: !581)
!607 = !DILocation(line: 336, column: 2, scope: !581)
!608 = !DILocation(line: 337, column: 1, scope: !581)
!609 = distinct !DISubprogram(name: "vdso_shift_ns", scope: !75, file: !75, line: 21, type: !610, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!27, !27, !20}
!612 = !{!613, !614}
!613 = !DILocalVariable(name: "ns", arg: 1, scope: !609, file: !75, line: 21, type: !27)
!614 = !DILocalVariable(name: "shift", arg: 2, scope: !609, file: !75, line: 21, type: !20)
!615 = !DILocation(line: 21, column: 46, scope: !609)
!616 = !DILocation(line: 21, column: 54, scope: !609)
!617 = !DILocation(line: 23, column: 9, scope: !609)
!618 = !DILocation(line: 23, column: 15, scope: !609)
!619 = !DILocation(line: 23, column: 12, scope: !609)
!620 = !DILocation(line: 23, column: 2, scope: !609)
!621 = distinct !DISubprogram(name: "vdso_read_retry", scope: !622, file: !622, line: 20, type: !623, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !625)
!622 = !DIFile(filename: "./include/vdso/helpers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787bbf2acf68ad352252cd20c7d4bd95")
!623 = !DISubroutineType(types: !624)
!624 = !{!20, !161, !20}
!625 = !{!626, !627, !628}
!626 = !DILocalVariable(name: "vd", arg: 1, scope: !621, file: !622, line: 20, type: !161)
!627 = !DILocalVariable(name: "start", arg: 2, scope: !621, file: !622, line: 21, type: !20)
!628 = !DILocalVariable(name: "seq", scope: !621, file: !622, line: 23, type: !20)
!629 = !DILocation(line: 20, column: 68, scope: !621)
!630 = !DILocation(line: 21, column: 13, scope: !621)
!631 = !DILocation(line: 23, column: 2, scope: !621)
!632 = !DILocation(line: 23, column: 6, scope: !621)
!633 = !DILocation(line: 25, column: 2, scope: !621)
!634 = !DILocation(line: 25, column: 2, scope: !635)
!635 = distinct !DILexicalBlock(scope: !621, file: !622, line: 25, column: 2)
!636 = !DILocation(line: 25, column: 2, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !622, line: 25, column: 2)
!638 = !DILocation(line: 25, column: 2, scope: !639)
!639 = distinct !DILexicalBlock(scope: !635, file: !622, line: 25, column: 2)
!640 = !DILocation(line: 25, column: 2, scope: !641)
!641 = distinct !DILexicalBlock(scope: !639, file: !622, line: 25, column: 2)
!642 = !{i64 2149389997}
!643 = !DILocation(line: 26, column: 8, scope: !644)
!644 = distinct !DILexicalBlock(scope: !621, file: !622, line: 26, column: 8)
!645 = !DILocation(line: 26, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !644, file: !622, line: 26, column: 8)
!647 = !DILocation(line: 26, column: 6, scope: !621)
!648 = !DILocation(line: 27, column: 9, scope: !621)
!649 = !DILocation(line: 27, column: 16, scope: !621)
!650 = !DILocation(line: 27, column: 13, scope: !621)
!651 = !DILocation(line: 28, column: 1, scope: !621)
!652 = !DILocation(line: 27, column: 2, scope: !621)
!653 = distinct !DISubprogram(name: "__iter_div_u64_rem", scope: !654, file: !654, line: 6, type: !655, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !658)
!654 = !DIFile(filename: "./include/vdso/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c73242fa3ce9a71c3ee6785d9a4c12ba")
!655 = !DISubroutineType(types: !656)
!656 = !{!20, !27, !20, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!658 = !{!659, !660, !661, !662}
!659 = !DILocalVariable(name: "dividend", arg: 1, scope: !653, file: !654, line: 6, type: !27)
!660 = !DILocalVariable(name: "divisor", arg: 2, scope: !653, file: !654, line: 6, type: !20)
!661 = !DILocalVariable(name: "remainder", arg: 3, scope: !653, file: !654, line: 6, type: !657)
!662 = !DILocalVariable(name: "ret", scope: !653, file: !654, line: 8, type: !20)
!663 = !DILocation(line: 6, column: 24, scope: !653)
!664 = !DILocation(line: 6, column: 38, scope: !653)
!665 = !DILocation(line: 6, column: 52, scope: !653)
!666 = !DILocation(line: 8, column: 2, scope: !653)
!667 = !DILocation(line: 8, column: 6, scope: !653)
!668 = !DILocation(line: 10, column: 2, scope: !653)
!669 = !DILocation(line: 10, column: 9, scope: !653)
!670 = !DILocation(line: 10, column: 21, scope: !653)
!671 = !DILocation(line: 10, column: 18, scope: !653)
!672 = !DILocation(line: 13, column: 3, scope: !673)
!673 = distinct !DILexicalBlock(scope: !653, file: !654, line: 10, column: 30)
!674 = !{i64 238704}
!675 = !DILocation(line: 15, column: 15, scope: !673)
!676 = !DILocation(line: 15, column: 12, scope: !673)
!677 = !DILocation(line: 16, column: 6, scope: !673)
!678 = distinct !{!678, !668, !679, !320, !321}
!679 = !DILocation(line: 17, column: 2, scope: !653)
!680 = !DILocation(line: 19, column: 15, scope: !653)
!681 = !DILocation(line: 19, column: 3, scope: !653)
!682 = !DILocation(line: 19, column: 13, scope: !653)
!683 = !DILocation(line: 21, column: 9, scope: !653)
!684 = !DILocation(line: 22, column: 1, scope: !653)
!685 = !DILocation(line: 21, column: 2, scope: !653)
!686 = distinct !DISubprogram(name: "vdso_read_begin", scope: !622, file: !622, line: 9, type: !687, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!20, !161}
!689 = !{!690, !691}
!690 = !DILocalVariable(name: "vd", arg: 1, scope: !686, file: !622, line: 9, type: !161)
!691 = !DILocalVariable(name: "seq", scope: !686, file: !622, line: 11, type: !20)
!692 = !DILocation(line: 9, column: 68, scope: !686)
!693 = !DILocation(line: 11, column: 2, scope: !686)
!694 = !DILocation(line: 11, column: 6, scope: !686)
!695 = !DILocation(line: 13, column: 2, scope: !686)
!696 = !DILocation(line: 13, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !686, file: !622, line: 13, column: 9)
!698 = !DILocation(line: 13, column: 9, scope: !699)
!699 = distinct !DILexicalBlock(scope: !697, file: !622, line: 13, column: 9)
!700 = !DILocation(line: 13, column: 9, scope: !686)
!701 = !DILocation(line: 14, column: 3, scope: !686)
!702 = distinct !{!702, !695, !703, !320, !321}
!703 = !DILocation(line: 14, column: 13, scope: !686)
!704 = !DILocation(line: 16, column: 2, scope: !686)
!705 = !DILocation(line: 16, column: 2, scope: !706)
!706 = distinct !DILexicalBlock(scope: !686, file: !622, line: 16, column: 2)
!707 = !DILocation(line: 16, column: 2, scope: !708)
!708 = distinct !DILexicalBlock(scope: !706, file: !622, line: 16, column: 2)
!709 = !DILocation(line: 16, column: 2, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !622, line: 16, column: 2)
!711 = !DILocation(line: 16, column: 2, scope: !712)
!712 = distinct !DILexicalBlock(scope: !710, file: !622, line: 16, column: 2)
!713 = !{i64 2149389612}
!714 = !DILocation(line: 17, column: 9, scope: !686)
!715 = !DILocation(line: 18, column: 1, scope: !686)
!716 = !DILocation(line: 17, column: 2, scope: !686)
!717 = distinct !DISubprogram(name: "rep_nop", scope: !535, file: !535, line: 11, type: !536, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!718 = !DILocation(line: 13, column: 2, scope: !717)
!719 = !{i64 1777455}
!720 = !DILocation(line: 14, column: 1, scope: !717)
!721 = distinct !DISubprogram(name: "rdtsc_ordered", scope: !722, file: !722, line: 197, type: !723, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !725)
!722 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!723 = !DISubroutineType(types: !724)
!724 = !{!29}
!725 = !{!726, !728}
!726 = !DILocalVariable(name: "low", scope: !721, file: !722, line: 199, type: !727)
!727 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!728 = !DILocalVariable(name: "high", scope: !721, file: !722, line: 199, type: !727)
!729 = !DILocation(line: 199, column: 2, scope: !721)
!730 = !DILocation(line: 215, column: 2, scope: !721)
!731 = !{i64 2149191435, i64 2149191468, i64 2149191474, i64 2149191490, i64 2149191509, i64 2149191540, i64 2149192492, i64 2149191066, i64 2149192498, i64 2149192546, i64 2149192610, i64 2149192674, i64 2149192731, i64 2149192938, i64 2149192986, i64 2149193050, i64 2149193114, i64 2149193171, i64 2149191184, i64 2149191209, i64 2149193378, i64 2149193507, i64 2149193439, i64 2149193521, i64 2149193535, i64 2149193657, i64 2149193596, i64 2149193671, i64 2149191343}
!732 = !DILocation(line: 222, column: 9, scope: !721)
!733 = !DILocation(line: 223, column: 1, scope: !721)
!734 = !DILocation(line: 222, column: 2, scope: !721)
!735 = distinct !DISubprogram(name: "vread_pvclock", scope: !260, file: !260, line: 197, type: !736, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!27}
!738 = !{!739, !762, !763}
!739 = !DILocalVariable(name: "pvti", scope: !735, file: !260, line: 199, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vcpu_time_info", file: !743, line: 26, size: 256, elements: !744)
!743 = !DIFile(filename: "./arch/x86/include/asm/pvclock-abi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63a96b2b2f7b6470cea45a7a079d9d9a")
!744 = !{!745, !746, !747, !748, !749, !750, !754, !758}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !742, file: !743, line: 27, baseType: !20, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "pad0", scope: !742, file: !743, line: 28, baseType: !20, size: 32, offset: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_timestamp", scope: !742, file: !743, line: 29, baseType: !27, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !742, file: !743, line: 30, baseType: !27, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_to_system_mul", scope: !742, file: !743, line: 31, baseType: !20, size: 32, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_shift", scope: !742, file: !743, line: 32, baseType: !751, size: 8, offset: 224)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !21, line: 16, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !23, line: 20, baseType: !753)
!753 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !743, line: 33, baseType: !755, size: 8, offset: 232)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !757)
!757 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !742, file: !743, line: 34, baseType: !759, size: 16, offset: 240)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 16, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 2)
!762 = !DILocalVariable(name: "version", scope: !735, file: !260, line: 200, type: !20)
!763 = !DILocalVariable(name: "ret", scope: !735, file: !260, line: 201, type: !27)
!764 = !DILocation(line: 199, column: 2, scope: !735)
!765 = !DILocation(line: 199, column: 39, scope: !735)
!766 = !DILocation(line: 200, column: 2, scope: !735)
!767 = !DILocation(line: 200, column: 6, scope: !735)
!768 = !DILocation(line: 201, column: 2, scope: !735)
!769 = !DILocation(line: 201, column: 6, scope: !735)
!770 = !DILocation(line: 225, column: 2, scope: !735)
!771 = !DILocation(line: 226, column: 32, scope: !772)
!772 = distinct !DILexicalBlock(scope: !735, file: !260, line: 225, column: 5)
!773 = !DILocation(line: 226, column: 13, scope: !772)
!774 = !DILocation(line: 226, column: 11, scope: !772)
!775 = !DILocation(line: 228, column: 7, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !260, line: 228, column: 7)
!777 = !DILocation(line: 228, column: 7, scope: !772)
!778 = !DILocation(line: 229, column: 4, scope: !776)
!779 = !DILocation(line: 231, column: 31, scope: !772)
!780 = !DILocation(line: 231, column: 37, scope: !772)
!781 = !DILocation(line: 231, column: 9, scope: !772)
!782 = !DILocation(line: 231, column: 7, scope: !772)
!783 = !DILocation(line: 232, column: 2, scope: !772)
!784 = !DILocation(line: 232, column: 30, scope: !735)
!785 = !DILocation(line: 232, column: 36, scope: !735)
!786 = !DILocation(line: 232, column: 11, scope: !735)
!787 = distinct !{!787, !770, !788, !320, !321}
!788 = !DILocation(line: 232, column: 44, scope: !735)
!789 = !DILocation(line: 234, column: 9, scope: !735)
!790 = !DILocation(line: 234, column: 13, scope: !735)
!791 = !DILocation(line: 234, column: 2, scope: !735)
!792 = !DILocation(line: 235, column: 1, scope: !735)
!793 = distinct !DISubprogram(name: "pvclock_read_begin", scope: !794, file: !794, line: 22, type: !795, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !797)
!794 = !DIFile(filename: "./arch/x86/include/asm/pvclock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0842e5b6b68f91de74c4dd8305b2bfa6")
!795 = !DISubroutineType(types: !796)
!796 = !{!5, !740}
!797 = !{!798, !799}
!798 = !DILocalVariable(name: "src", arg: 1, scope: !793, file: !794, line: 22, type: !740)
!799 = !DILocalVariable(name: "version", scope: !793, file: !794, line: 24, type: !5)
!800 = !DILocation(line: 22, column: 66, scope: !793)
!801 = !DILocation(line: 24, column: 2, scope: !793)
!802 = !DILocation(line: 24, column: 11, scope: !793)
!803 = !DILocation(line: 24, column: 21, scope: !793)
!804 = !DILocation(line: 24, column: 26, scope: !793)
!805 = !DILocation(line: 24, column: 34, scope: !793)
!806 = !DILocation(line: 26, column: 2, scope: !793)
!807 = !DILocation(line: 26, column: 2, scope: !808)
!808 = distinct !DILexicalBlock(scope: !793, file: !794, line: 26, column: 2)
!809 = !DILocation(line: 26, column: 2, scope: !810)
!810 = distinct !DILexicalBlock(scope: !808, file: !794, line: 26, column: 2)
!811 = !DILocation(line: 26, column: 2, scope: !812)
!812 = distinct !DILexicalBlock(scope: !808, file: !794, line: 26, column: 2)
!813 = !DILocation(line: 26, column: 2, scope: !814)
!814 = distinct !DILexicalBlock(scope: !812, file: !794, line: 26, column: 2)
!815 = !{i64 2149436094}
!816 = !DILocation(line: 27, column: 9, scope: !793)
!817 = !DILocation(line: 28, column: 1, scope: !793)
!818 = !DILocation(line: 27, column: 2, scope: !793)
!819 = distinct !DISubprogram(name: "__pvclock_read_cycles", scope: !794, file: !794, line: 83, type: !820, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!27, !740, !27}
!822 = !{!823, !824, !825, !826}
!823 = !DILocalVariable(name: "src", arg: 1, scope: !819, file: !794, line: 83, type: !740)
!824 = !DILocalVariable(name: "tsc", arg: 2, scope: !819, file: !794, line: 83, type: !27)
!825 = !DILocalVariable(name: "delta", scope: !819, file: !794, line: 85, type: !27)
!826 = !DILocalVariable(name: "offset", scope: !819, file: !794, line: 86, type: !27)
!827 = !DILocation(line: 83, column: 64, scope: !819)
!828 = !DILocation(line: 83, column: 73, scope: !819)
!829 = !DILocation(line: 85, column: 2, scope: !819)
!830 = !DILocation(line: 85, column: 6, scope: !819)
!831 = !DILocation(line: 85, column: 14, scope: !819)
!832 = !DILocation(line: 85, column: 20, scope: !819)
!833 = !DILocation(line: 85, column: 25, scope: !819)
!834 = !DILocation(line: 85, column: 18, scope: !819)
!835 = !DILocation(line: 86, column: 2, scope: !819)
!836 = !DILocation(line: 86, column: 6, scope: !819)
!837 = !DILocation(line: 86, column: 35, scope: !819)
!838 = !DILocation(line: 86, column: 42, scope: !819)
!839 = !DILocation(line: 86, column: 47, scope: !819)
!840 = !DILocation(line: 87, column: 11, scope: !819)
!841 = !DILocation(line: 87, column: 16, scope: !819)
!842 = !DILocation(line: 86, column: 15, scope: !819)
!843 = !DILocation(line: 88, column: 9, scope: !819)
!844 = !DILocation(line: 88, column: 14, scope: !819)
!845 = !DILocation(line: 88, column: 28, scope: !819)
!846 = !DILocation(line: 88, column: 26, scope: !819)
!847 = !DILocation(line: 89, column: 1, scope: !819)
!848 = !DILocation(line: 88, column: 2, scope: !819)
!849 = distinct !DISubprogram(name: "pvclock_read_retry", scope: !794, file: !794, line: 31, type: !850, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{!412, !740, !5}
!852 = !{!853, !854}
!853 = !DILocalVariable(name: "src", arg: 1, scope: !849, file: !794, line: 31, type: !740)
!854 = !DILocalVariable(name: "version", arg: 2, scope: !849, file: !794, line: 32, type: !5)
!855 = !DILocation(line: 31, column: 62, scope: !849)
!856 = !DILocation(line: 32, column: 13, scope: !849)
!857 = !DILocation(line: 35, column: 2, scope: !849)
!858 = !DILocation(line: 35, column: 2, scope: !859)
!859 = distinct !DILexicalBlock(scope: !849, file: !794, line: 35, column: 2)
!860 = !DILocation(line: 35, column: 2, scope: !861)
!861 = distinct !DILexicalBlock(scope: !859, file: !794, line: 35, column: 2)
!862 = !DILocation(line: 35, column: 2, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !794, line: 35, column: 2)
!864 = !DILocation(line: 35, column: 2, scope: !865)
!865 = distinct !DILexicalBlock(scope: !863, file: !794, line: 35, column: 2)
!866 = !{i64 2149436479}
!867 = !DILocation(line: 36, column: 9, scope: !849)
!868 = !DILocation(line: 36, column: 2, scope: !849)
!869 = distinct !DISubprogram(name: "pvclock_scale_delta", scope: !794, file: !794, line: 43, type: !870, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{!27, !27, !20, !49}
!872 = !{!873, !874, !875, !876, !877}
!873 = !DILocalVariable(name: "delta", arg: 1, scope: !869, file: !794, line: 43, type: !27)
!874 = !DILocalVariable(name: "mul_frac", arg: 2, scope: !869, file: !794, line: 43, type: !20)
!875 = !DILocalVariable(name: "shift", arg: 3, scope: !869, file: !794, line: 43, type: !49)
!876 = !DILocalVariable(name: "product", scope: !869, file: !794, line: 45, type: !27)
!877 = !DILocalVariable(name: "tmp", scope: !869, file: !794, line: 49, type: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulong", file: !109, line: 94, baseType: !727)
!879 = !DILocation(line: 43, column: 52, scope: !869)
!880 = !DILocation(line: 43, column: 63, scope: !869)
!881 = !DILocation(line: 43, column: 77, scope: !869)
!882 = !DILocation(line: 45, column: 2, scope: !869)
!883 = !DILocation(line: 45, column: 6, scope: !869)
!884 = !DILocation(line: 49, column: 2, scope: !869)
!885 = !DILocation(line: 49, column: 8, scope: !869)
!886 = !DILocation(line: 52, column: 6, scope: !887)
!887 = distinct !DILexicalBlock(scope: !869, file: !794, line: 52, column: 6)
!888 = !DILocation(line: 52, column: 12, scope: !887)
!889 = !DILocation(line: 52, column: 6, scope: !869)
!890 = !DILocation(line: 53, column: 14, scope: !887)
!891 = !DILocation(line: 53, column: 13, scope: !887)
!892 = !DILocation(line: 53, column: 9, scope: !887)
!893 = !DILocation(line: 53, column: 3, scope: !887)
!894 = !DILocation(line: 55, column: 13, scope: !887)
!895 = !DILocation(line: 55, column: 9, scope: !887)
!896 = !DILocation(line: 73, column: 9, scope: !869)
!897 = !DILocation(line: 74, column: 25, scope: !869)
!898 = !DILocation(line: 74, column: 20, scope: !869)
!899 = !DILocation(line: 69, column: 2, scope: !869)
!900 = !{i64 1949587}
!901 = !DILocation(line: 79, column: 9, scope: !869)
!902 = !DILocation(line: 80, column: 1, scope: !869)
!903 = !DILocation(line: 79, column: 2, scope: !869)
!904 = distinct !DISubprogram(name: "__cvdso_time_data", scope: !75, file: !75, line: 333, type: !905, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !907)
!905 = !DISubroutineType(types: !906)
!906 = !{!89, !161, !90}
!907 = !{!908, !909, !910}
!908 = !DILocalVariable(name: "vd", arg: 1, scope: !904, file: !75, line: 333, type: !161)
!909 = !DILocalVariable(name: "time", arg: 2, scope: !904, file: !75, line: 333, type: !90)
!910 = !DILocalVariable(name: "t", scope: !904, file: !75, line: 335, type: !89)
!911 = !DILocation(line: 333, column: 43, scope: !904)
!912 = !DILocation(line: 333, column: 68, scope: !904)
!913 = !DILocation(line: 335, column: 2, scope: !904)
!914 = !DILocation(line: 335, column: 22, scope: !904)
!915 = !DILocation(line: 338, column: 6, scope: !916)
!916 = distinct !DILexicalBlock(scope: !904, file: !75, line: 337, column: 6)
!917 = !DILocation(line: 338, column: 10, scope: !916)
!918 = !DILocation(line: 338, column: 21, scope: !916)
!919 = !DILocation(line: 337, column: 6, scope: !904)
!920 = !DILocation(line: 339, column: 36, scope: !916)
!921 = !DILocation(line: 339, column: 8, scope: !916)
!922 = !DILocation(line: 339, column: 6, scope: !916)
!923 = !DILocation(line: 339, column: 3, scope: !916)
!924 = !DILocation(line: 341, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !904, file: !75, line: 341, column: 6)
!926 = !DILocation(line: 341, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !925, file: !75, line: 341, column: 6)
!928 = !DILocation(line: 341, column: 4, scope: !904)
!929 = !DILocation(line: 343, column: 6, scope: !930)
!930 = distinct !DILexicalBlock(scope: !904, file: !75, line: 343, column: 6)
!931 = !DILocation(line: 343, column: 6, scope: !904)
!932 = !DILocation(line: 344, column: 11, scope: !930)
!933 = !DILocation(line: 344, column: 4, scope: !930)
!934 = !DILocation(line: 344, column: 9, scope: !930)
!935 = !DILocation(line: 344, column: 3, scope: !930)
!936 = !DILocation(line: 346, column: 9, scope: !904)
!937 = !DILocation(line: 347, column: 1, scope: !904)
!938 = !DILocation(line: 346, column: 2, scope: !904)
!939 = distinct !DISubprogram(name: "__cvdso_clock_gettime_data", scope: !75, file: !75, line: 255, type: !265, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !940)
!940 = !{!941, !942, !943, !944}
!941 = !DILocalVariable(name: "vd", arg: 1, scope: !939, file: !75, line: 255, type: !161)
!942 = !DILocalVariable(name: "clock", arg: 2, scope: !939, file: !75, line: 255, type: !108)
!943 = !DILocalVariable(name: "ts", arg: 3, scope: !939, file: !75, line: 256, type: !111)
!944 = !DILocalVariable(name: "ret", scope: !939, file: !75, line: 258, type: !49)
!945 = !DILocation(line: 255, column: 52, scope: !939)
!946 = !DILocation(line: 255, column: 66, scope: !939)
!947 = !DILocation(line: 256, column: 33, scope: !939)
!948 = !DILocation(line: 258, column: 2, scope: !939)
!949 = !DILocation(line: 258, column: 6, scope: !939)
!950 = !DILocation(line: 258, column: 41, scope: !939)
!951 = !DILocation(line: 258, column: 45, scope: !939)
!952 = !DILocation(line: 258, column: 52, scope: !939)
!953 = !DILocation(line: 258, column: 12, scope: !939)
!954 = !DILocation(line: 260, column: 6, scope: !955)
!955 = distinct !DILexicalBlock(scope: !939, file: !75, line: 260, column: 6)
!956 = !DILocation(line: 260, column: 6, scope: !939)
!957 = !DILocation(line: 261, column: 33, scope: !955)
!958 = !DILocation(line: 261, column: 40, scope: !955)
!959 = !DILocation(line: 261, column: 10, scope: !955)
!960 = !DILocation(line: 261, column: 3, scope: !955)
!961 = !DILocation(line: 262, column: 2, scope: !939)
!962 = !DILocation(line: 263, column: 1, scope: !939)
!963 = distinct !DISubprogram(name: "__cvdso_clock_gettime_common", scope: !75, file: !75, line: 228, type: !265, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !964)
!964 = !{!965, !966, !967, !968}
!965 = !DILocalVariable(name: "vd", arg: 1, scope: !963, file: !75, line: 228, type: !161)
!966 = !DILocalVariable(name: "clock", arg: 2, scope: !963, file: !75, line: 228, type: !108)
!967 = !DILocalVariable(name: "ts", arg: 3, scope: !963, file: !75, line: 229, type: !111)
!968 = !DILocalVariable(name: "msk", scope: !963, file: !75, line: 231, type: !20)
!969 = !DILocation(line: 228, column: 54, scope: !963)
!970 = !DILocation(line: 228, column: 68, scope: !963)
!971 = !DILocation(line: 229, column: 35, scope: !963)
!972 = !DILocation(line: 231, column: 2, scope: !963)
!973 = !DILocation(line: 231, column: 6, scope: !963)
!974 = !DILocation(line: 234, column: 6, scope: !975)
!975 = distinct !DILexicalBlock(scope: !963, file: !75, line: 234, column: 6)
!976 = !DILocation(line: 234, column: 6, scope: !963)
!977 = !DILocation(line: 235, column: 3, scope: !975)
!978 = !DILocation(line: 241, column: 14, scope: !963)
!979 = !DILocation(line: 241, column: 11, scope: !963)
!980 = !DILocation(line: 241, column: 6, scope: !963)
!981 = !DILocation(line: 242, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !963, file: !75, line: 242, column: 6)
!983 = !DILocation(line: 242, column: 6, scope: !963)
!984 = !DILocation(line: 243, column: 9, scope: !982)
!985 = !DILocation(line: 243, column: 6, scope: !982)
!986 = !DILocation(line: 243, column: 3, scope: !982)
!987 = !DILocation(line: 244, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !982, file: !75, line: 244, column: 11)
!989 = !DILocation(line: 244, column: 15, scope: !988)
!990 = !DILocation(line: 244, column: 11, scope: !982)
!991 = !DILocation(line: 245, column: 21, scope: !988)
!992 = !DILocation(line: 245, column: 41, scope: !988)
!993 = !DILocation(line: 245, column: 48, scope: !988)
!994 = !DILocation(line: 245, column: 10, scope: !988)
!995 = !DILocation(line: 245, column: 3, scope: !988)
!996 = !DILocation(line: 246, column: 11, scope: !997)
!997 = distinct !DILexicalBlock(scope: !988, file: !75, line: 246, column: 11)
!998 = !DILocation(line: 246, column: 15, scope: !997)
!999 = !DILocation(line: 246, column: 11, scope: !988)
!1000 = !DILocation(line: 247, column: 9, scope: !997)
!1001 = !DILocation(line: 247, column: 6, scope: !997)
!1002 = !DILocation(line: 247, column: 3, scope: !997)
!1003 = !DILocation(line: 249, column: 3, scope: !997)
!1004 = !DILocation(line: 251, column: 17, scope: !963)
!1005 = !DILocation(line: 251, column: 21, scope: !963)
!1006 = !DILocation(line: 251, column: 28, scope: !963)
!1007 = !DILocation(line: 251, column: 9, scope: !963)
!1008 = !DILocation(line: 251, column: 2, scope: !963)
!1009 = !DILocation(line: 252, column: 1, scope: !963)
!1010 = distinct !DISubprogram(name: "clock_gettime_fallback", scope: !260, file: !260, line: 71, type: !1011, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!57, !108, !111}
!1013 = !{!1014, !1015, !1016}
!1014 = !DILocalVariable(name: "_clkid", arg: 1, scope: !1010, file: !260, line: 71, type: !108)
!1015 = !DILocalVariable(name: "_ts", arg: 2, scope: !1010, file: !260, line: 71, type: !111)
!1016 = !DILocalVariable(name: "ret", scope: !1010, file: !260, line: 73, type: !57)
!1017 = !DILocation(line: 71, column: 39, scope: !1010)
!1018 = !DILocation(line: 71, column: 73, scope: !1010)
!1019 = !DILocation(line: 73, column: 2, scope: !1010)
!1020 = !DILocation(line: 73, column: 7, scope: !1010)
!1021 = !DILocation(line: 75, column: 38, scope: !1010)
!1022 = !DILocation(line: 76, column: 38, scope: !1010)
!1023 = !DILocation(line: 76, column: 52, scope: !1010)
!1024 = !DILocation(line: 75, column: 2, scope: !1010)
!1025 = !{i64 1874346}
!1026 = !DILocation(line: 79, column: 9, scope: !1010)
!1027 = !DILocation(line: 80, column: 1, scope: !1010)
!1028 = !DILocation(line: 79, column: 2, scope: !1010)
!1029 = distinct !DISubprogram(name: "do_coarse", scope: !75, file: !75, line: 201, type: !265, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035}
!1031 = !DILocalVariable(name: "vd", arg: 1, scope: !1029, file: !75, line: 201, type: !161)
!1032 = !DILocalVariable(name: "clk", arg: 2, scope: !1029, file: !75, line: 201, type: !108)
!1033 = !DILocalVariable(name: "ts", arg: 3, scope: !1029, file: !75, line: 202, type: !111)
!1034 = !DILocalVariable(name: "vdso_ts", scope: !1029, file: !75, line: 204, type: !272)
!1035 = !DILocalVariable(name: "seq", scope: !1029, file: !75, line: 205, type: !20)
!1036 = !DILocation(line: 201, column: 62, scope: !1029)
!1037 = !DILocation(line: 201, column: 76, scope: !1029)
!1038 = !DILocation(line: 202, column: 36, scope: !1029)
!1039 = !DILocation(line: 204, column: 2, scope: !1029)
!1040 = !DILocation(line: 204, column: 31, scope: !1029)
!1041 = !DILocation(line: 204, column: 42, scope: !1029)
!1042 = !DILocation(line: 204, column: 46, scope: !1029)
!1043 = !DILocation(line: 204, column: 55, scope: !1029)
!1044 = !DILocation(line: 205, column: 2, scope: !1029)
!1045 = !DILocation(line: 205, column: 6, scope: !1029)
!1046 = !DILocation(line: 207, column: 2, scope: !1029)
!1047 = !DILocation(line: 212, column: 3, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1029, file: !75, line: 207, column: 5)
!1049 = !DILocation(line: 212, column: 17, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1048, file: !75, line: 212, column: 17)
!1051 = !DILocation(line: 212, column: 17, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1050, file: !75, line: 212, column: 17)
!1053 = !DILocation(line: 212, column: 15, scope: !1048)
!1054 = !DILocation(line: 212, column: 37, scope: !1048)
!1055 = !DILocation(line: 214, column: 8, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !75, line: 213, column: 8)
!1057 = distinct !DILexicalBlock(scope: !1048, file: !75, line: 212, column: 42)
!1058 = !DILocation(line: 214, column: 12, scope: !1056)
!1059 = !DILocation(line: 214, column: 23, scope: !1056)
!1060 = !DILocation(line: 213, column: 8, scope: !1057)
!1061 = !DILocation(line: 215, column: 29, scope: !1056)
!1062 = !DILocation(line: 215, column: 33, scope: !1056)
!1063 = !DILocation(line: 215, column: 38, scope: !1056)
!1064 = !DILocation(line: 215, column: 12, scope: !1056)
!1065 = !DILocation(line: 215, column: 5, scope: !1056)
!1066 = !DILocation(line: 216, column: 4, scope: !1057)
!1067 = distinct !{!1067, !1047, !1068, !320, !321}
!1068 = !DILocation(line: 217, column: 3, scope: !1048)
!1069 = !DILocation(line: 218, column: 3, scope: !1048)
!1070 = !DILocation(line: 218, column: 3, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1048, file: !75, line: 218, column: 3)
!1072 = !DILocation(line: 218, column: 3, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !75, line: 218, column: 3)
!1074 = !DILocation(line: 218, column: 3, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !75, line: 218, column: 3)
!1076 = !DILocation(line: 218, column: 3, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1075, file: !75, line: 218, column: 3)
!1078 = !{i64 2152435726}
!1079 = !DILocation(line: 220, column: 16, scope: !1048)
!1080 = !DILocation(line: 220, column: 25, scope: !1048)
!1081 = !DILocation(line: 220, column: 3, scope: !1048)
!1082 = !DILocation(line: 220, column: 7, scope: !1048)
!1083 = !DILocation(line: 220, column: 14, scope: !1048)
!1084 = !DILocation(line: 221, column: 17, scope: !1048)
!1085 = !DILocation(line: 221, column: 26, scope: !1048)
!1086 = !DILocation(line: 221, column: 3, scope: !1048)
!1087 = !DILocation(line: 221, column: 7, scope: !1048)
!1088 = !DILocation(line: 221, column: 15, scope: !1048)
!1089 = !DILocation(line: 222, column: 2, scope: !1048)
!1090 = !DILocation(line: 222, column: 11, scope: !1029)
!1091 = distinct !{!1091, !1046, !1092, !320, !321}
!1092 = !DILocation(line: 222, column: 45, scope: !1029)
!1093 = !DILocation(line: 224, column: 2, scope: !1029)
!1094 = !DILocation(line: 225, column: 1, scope: !1029)
!1095 = distinct !DISubprogram(name: "do_coarse_timens", scope: !75, file: !75, line: 165, type: !265, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105}
!1097 = !DILocalVariable(name: "vdns", arg: 1, scope: !1095, file: !75, line: 165, type: !161)
!1098 = !DILocalVariable(name: "clk", arg: 2, scope: !1095, file: !75, line: 165, type: !108)
!1099 = !DILocalVariable(name: "ts", arg: 3, scope: !1095, file: !75, line: 166, type: !111)
!1100 = !DILocalVariable(name: "vd", scope: !1095, file: !75, line: 168, type: !161)
!1101 = !DILocalVariable(name: "vdso_ts", scope: !1095, file: !75, line: 169, type: !272)
!1102 = !DILocalVariable(name: "offs", scope: !1095, file: !75, line: 170, type: !422)
!1103 = !DILocalVariable(name: "nsec", scope: !1095, file: !75, line: 171, type: !27)
!1104 = !DILocalVariable(name: "sec", scope: !1095, file: !75, line: 172, type: !30)
!1105 = !DILocalVariable(name: "seq", scope: !1095, file: !75, line: 173, type: !168)
!1106 = !DILocation(line: 165, column: 69, scope: !1095)
!1107 = !DILocation(line: 165, column: 85, scope: !1095)
!1108 = !DILocation(line: 166, column: 36, scope: !1095)
!1109 = !DILocation(line: 168, column: 2, scope: !1095)
!1110 = !DILocation(line: 168, column: 26, scope: !1095)
!1111 = !DILocation(line: 168, column: 59, scope: !1095)
!1112 = !DILocation(line: 168, column: 31, scope: !1095)
!1113 = !DILocation(line: 169, column: 2, scope: !1095)
!1114 = !DILocation(line: 169, column: 31, scope: !1095)
!1115 = !DILocation(line: 169, column: 42, scope: !1095)
!1116 = !DILocation(line: 169, column: 46, scope: !1095)
!1117 = !DILocation(line: 169, column: 55, scope: !1095)
!1118 = !DILocation(line: 170, column: 2, scope: !1095)
!1119 = !DILocation(line: 170, column: 30, scope: !1095)
!1120 = !DILocation(line: 170, column: 38, scope: !1095)
!1121 = !DILocation(line: 170, column: 44, scope: !1095)
!1122 = !DILocation(line: 170, column: 51, scope: !1095)
!1123 = !DILocation(line: 171, column: 2, scope: !1095)
!1124 = !DILocation(line: 171, column: 6, scope: !1095)
!1125 = !DILocation(line: 172, column: 2, scope: !1095)
!1126 = !DILocation(line: 172, column: 6, scope: !1095)
!1127 = !DILocation(line: 173, column: 2, scope: !1095)
!1128 = !DILocation(line: 173, column: 6, scope: !1095)
!1129 = !DILocation(line: 175, column: 2, scope: !1095)
!1130 = !DILocation(line: 176, column: 25, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1095, file: !75, line: 175, column: 5)
!1132 = !DILocation(line: 176, column: 9, scope: !1131)
!1133 = !DILocation(line: 176, column: 7, scope: !1131)
!1134 = !DILocation(line: 177, column: 9, scope: !1131)
!1135 = !DILocation(line: 177, column: 18, scope: !1131)
!1136 = !DILocation(line: 177, column: 7, scope: !1131)
!1137 = !DILocation(line: 178, column: 10, scope: !1131)
!1138 = !DILocation(line: 178, column: 19, scope: !1131)
!1139 = !DILocation(line: 178, column: 8, scope: !1131)
!1140 = !DILocation(line: 179, column: 2, scope: !1131)
!1141 = !DILocation(line: 179, column: 11, scope: !1095)
!1142 = distinct !{!1142, !1129, !1143, !320, !321}
!1143 = !DILocation(line: 179, column: 45, scope: !1095)
!1144 = !DILocation(line: 182, column: 9, scope: !1095)
!1145 = !DILocation(line: 182, column: 15, scope: !1095)
!1146 = !DILocation(line: 182, column: 6, scope: !1095)
!1147 = !DILocation(line: 183, column: 10, scope: !1095)
!1148 = !DILocation(line: 183, column: 16, scope: !1095)
!1149 = !DILocation(line: 183, column: 7, scope: !1095)
!1150 = !DILocation(line: 189, column: 15, scope: !1095)
!1151 = !DILocation(line: 189, column: 40, scope: !1095)
!1152 = !DILocation(line: 189, column: 21, scope: !1095)
!1153 = !DILocation(line: 189, column: 19, scope: !1095)
!1154 = !DILocation(line: 189, column: 2, scope: !1095)
!1155 = !DILocation(line: 189, column: 6, scope: !1095)
!1156 = !DILocation(line: 189, column: 13, scope: !1095)
!1157 = !DILocation(line: 190, column: 16, scope: !1095)
!1158 = !DILocation(line: 190, column: 2, scope: !1095)
!1159 = !DILocation(line: 190, column: 6, scope: !1095)
!1160 = !DILocation(line: 190, column: 14, scope: !1095)
!1161 = !DILocation(line: 192, column: 1, scope: !1095)
!1162 = !DILocation(line: 191, column: 2, scope: !1095)
!1163 = distinct !DISubprogram(name: "__cvdso_clock_getres_data", scope: !75, file: !75, line: 398, type: !265, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1164)
!1164 = !{!1165, !1166, !1167, !1168}
!1165 = !DILocalVariable(name: "vd", arg: 1, scope: !1163, file: !75, line: 398, type: !161)
!1166 = !DILocalVariable(name: "clock", arg: 2, scope: !1163, file: !75, line: 398, type: !108)
!1167 = !DILocalVariable(name: "res", arg: 3, scope: !1163, file: !75, line: 399, type: !111)
!1168 = !DILocalVariable(name: "ret", scope: !1163, file: !75, line: 401, type: !49)
!1169 = !DILocation(line: 398, column: 55, scope: !1163)
!1170 = !DILocation(line: 398, column: 69, scope: !1163)
!1171 = !DILocation(line: 399, column: 36, scope: !1163)
!1172 = !DILocation(line: 401, column: 2, scope: !1163)
!1173 = !DILocation(line: 401, column: 6, scope: !1163)
!1174 = !DILocation(line: 401, column: 40, scope: !1163)
!1175 = !DILocation(line: 401, column: 44, scope: !1163)
!1176 = !DILocation(line: 401, column: 51, scope: !1163)
!1177 = !DILocation(line: 401, column: 12, scope: !1163)
!1178 = !DILocation(line: 403, column: 6, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1163, file: !75, line: 403, column: 6)
!1180 = !DILocation(line: 403, column: 6, scope: !1163)
!1181 = !DILocation(line: 404, column: 32, scope: !1179)
!1182 = !DILocation(line: 404, column: 39, scope: !1179)
!1183 = !DILocation(line: 404, column: 10, scope: !1179)
!1184 = !DILocation(line: 404, column: 3, scope: !1179)
!1185 = !DILocation(line: 405, column: 2, scope: !1163)
!1186 = !DILocation(line: 406, column: 1, scope: !1163)
!1187 = distinct !DISubprogram(name: "__cvdso_clock_getres_common", scope: !75, file: !75, line: 357, type: !265, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193}
!1189 = !DILocalVariable(name: "vd", arg: 1, scope: !1187, file: !75, line: 357, type: !161)
!1190 = !DILocalVariable(name: "clock", arg: 2, scope: !1187, file: !75, line: 357, type: !108)
!1191 = !DILocalVariable(name: "res", arg: 3, scope: !1187, file: !75, line: 358, type: !111)
!1192 = !DILocalVariable(name: "msk", scope: !1187, file: !75, line: 360, type: !20)
!1193 = !DILocalVariable(name: "ns", scope: !1187, file: !75, line: 361, type: !27)
!1194 = !DILocation(line: 357, column: 57, scope: !1187)
!1195 = !DILocation(line: 357, column: 71, scope: !1187)
!1196 = !DILocation(line: 358, column: 31, scope: !1187)
!1197 = !DILocation(line: 360, column: 2, scope: !1187)
!1198 = !DILocation(line: 360, column: 6, scope: !1187)
!1199 = !DILocation(line: 361, column: 2, scope: !1187)
!1200 = !DILocation(line: 361, column: 6, scope: !1187)
!1201 = !DILocation(line: 364, column: 6, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1187, file: !75, line: 364, column: 6)
!1203 = !DILocation(line: 364, column: 6, scope: !1187)
!1204 = !DILocation(line: 365, column: 3, scope: !1202)
!1205 = !DILocation(line: 368, column: 6, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1187, file: !75, line: 367, column: 6)
!1207 = !DILocation(line: 368, column: 10, scope: !1206)
!1208 = !DILocation(line: 368, column: 21, scope: !1206)
!1209 = !DILocation(line: 367, column: 6, scope: !1187)
!1210 = !DILocation(line: 369, column: 36, scope: !1206)
!1211 = !DILocation(line: 369, column: 8, scope: !1206)
!1212 = !DILocation(line: 369, column: 6, scope: !1206)
!1213 = !DILocation(line: 369, column: 3, scope: !1206)
!1214 = !DILocation(line: 375, column: 14, scope: !1187)
!1215 = !DILocation(line: 375, column: 11, scope: !1187)
!1216 = !DILocation(line: 375, column: 6, scope: !1187)
!1217 = !DILocation(line: 376, column: 6, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1187, file: !75, line: 376, column: 6)
!1219 = !DILocation(line: 376, column: 10, scope: !1218)
!1220 = !DILocation(line: 376, column: 6, scope: !1187)
!1221 = !DILocation(line: 380, column: 8, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !75, line: 380, column: 8)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !75, line: 376, column: 36)
!1224 = !DILocation(line: 380, column: 8, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !75, line: 380, column: 8)
!1226 = !DILocation(line: 380, column: 8, scope: !1223)
!1227 = !DILocation(line: 380, column: 6, scope: !1223)
!1228 = !DILocation(line: 381, column: 2, scope: !1223)
!1229 = !DILocation(line: 381, column: 13, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1218, file: !75, line: 381, column: 13)
!1231 = !DILocation(line: 381, column: 17, scope: !1230)
!1232 = !DILocation(line: 381, column: 13, scope: !1218)
!1233 = !DILocation(line: 385, column: 6, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !75, line: 381, column: 32)
!1235 = !DILocation(line: 386, column: 2, scope: !1234)
!1236 = !DILocation(line: 387, column: 3, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !75, line: 386, column: 9)
!1238 = !DILocation(line: 390, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1187, file: !75, line: 390, column: 6)
!1240 = !DILocation(line: 390, column: 6, scope: !1187)
!1241 = !DILocation(line: 391, column: 3, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !75, line: 390, column: 19)
!1243 = !DILocation(line: 391, column: 8, scope: !1242)
!1244 = !DILocation(line: 391, column: 15, scope: !1242)
!1245 = !DILocation(line: 392, column: 18, scope: !1242)
!1246 = !DILocation(line: 392, column: 3, scope: !1242)
!1247 = !DILocation(line: 392, column: 8, scope: !1242)
!1248 = !DILocation(line: 392, column: 16, scope: !1242)
!1249 = !DILocation(line: 393, column: 2, scope: !1242)
!1250 = !DILocation(line: 394, column: 2, scope: !1187)
!1251 = !DILocation(line: 395, column: 1, scope: !1187)
!1252 = distinct !DISubprogram(name: "clock_getres_fallback", scope: !260, file: !260, line: 95, type: !1011, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1253)
!1253 = !{!1254, !1255, !1256}
!1254 = !DILocalVariable(name: "_clkid", arg: 1, scope: !1252, file: !260, line: 95, type: !108)
!1255 = !DILocalVariable(name: "_ts", arg: 2, scope: !1252, file: !260, line: 95, type: !111)
!1256 = !DILocalVariable(name: "ret", scope: !1252, file: !260, line: 97, type: !57)
!1257 = !DILocation(line: 95, column: 38, scope: !1252)
!1258 = !DILocation(line: 95, column: 72, scope: !1252)
!1259 = !DILocation(line: 97, column: 2, scope: !1252)
!1260 = !DILocation(line: 97, column: 7, scope: !1252)
!1261 = !DILocation(line: 99, column: 38, scope: !1252)
!1262 = !DILocation(line: 100, column: 37, scope: !1252)
!1263 = !DILocation(line: 100, column: 51, scope: !1252)
!1264 = !DILocation(line: 99, column: 2, scope: !1252)
!1265 = !{i64 1874836}
!1266 = !DILocation(line: 103, column: 9, scope: !1252)
!1267 = !DILocation(line: 104, column: 1, scope: !1252)
!1268 = !DILocation(line: 103, column: 2, scope: !1252)
