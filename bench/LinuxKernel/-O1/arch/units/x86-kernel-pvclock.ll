; ModuleID = 'arch/x86/kernel/pvclock.c'
source_filename = "arch/x86/kernel/pvclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pvclock_get_pvti_cpu0_va: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pvclock_get_pvti_cpu0_va ; .previous"

%struct.atomic64_t = type { i64 }
%struct.pvclock_vcpu_time_info = type { i32, i32, i64, i64, i32, i8, i8, [2 x i8] }
%struct.timespec64 = type { i64, i64 }
%struct.pvclock_wall_clock = type { i32, i32, i32 }

@valid_flags = internal global i8 0, section ".data..read_mostly", align 1, !dbg !0
@last_value = internal global %struct.atomic64_t zeroinitializer, align 8, !dbg !81
@.str = private unnamed_addr constant [26 x i8] c"arch/x86/kernel/pvclock.c\00", align 1, !dbg !44
@pvti_cpu0_va = internal global ptr null, section ".data..read_mostly", align 8, !dbg !52
@__UNIQUE_ID___addressable_pvclock_get_pvti_cpu0_va290 = internal global ptr @pvclock_get_pvti_cpu0_va, section ".discard.addressable", align 8, !dbg !50
@vclocks_used = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_pvclock_get_pvti_cpu0_va290], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pvclock_set_flags(i8 noundef zeroext %flags) #0 align 16 !dbg !96 {
entry:
  %flags.addr = alloca i8, align 1
  store i8 %flags, ptr %flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = load i8, ptr %flags.addr, align 1, !dbg !102
  store i8 %0, ptr @valid_flags, align 1, !dbg !103
  ret void, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pvclock_tsc_khz(ptr noundef %src) #0 align 16 !dbg !105 {
entry:
  %src.addr = alloca ptr, align 8
  %pv_tsc_khz = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !111, metadata !DIExpression()), !dbg !117
  call void @llvm.lifetime.start.p0(i64 8, ptr %pv_tsc_khz) #9, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %pv_tsc_khz, metadata !112, metadata !DIExpression()), !dbg !119
  store i64 4294967296000000, ptr %pv_tsc_khz, align 8, !dbg !119
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #9, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !113, metadata !DIExpression()), !dbg !120
  %0 = load ptr, ptr %src.addr, align 8, !dbg !120
  %tsc_to_system_mul = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %0, i32 0, i32 4, !dbg !120
  %1 = load i32, ptr %tsc_to_system_mul, align 1, !dbg !120
  store i32 %1, ptr %__base, align 4, !dbg !120
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #9, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !116, metadata !DIExpression()), !dbg !120
  %2 = load i64, ptr %pv_tsc_khz, align 8, !dbg !120
  %3 = load i32, ptr %__base, align 4, !dbg !120
  %conv = zext i32 %3 to i64, !dbg !120
  %rem = urem i64 %2, %conv, !dbg !120
  %conv1 = trunc i64 %rem to i32, !dbg !120
  store i32 %conv1, ptr %__rem, align 4, !dbg !120
  %4 = load i64, ptr %pv_tsc_khz, align 8, !dbg !120
  %5 = load i32, ptr %__base, align 4, !dbg !120
  %conv2 = zext i32 %5 to i64, !dbg !120
  %div = udiv i64 %4, %conv2, !dbg !120
  store i64 %div, ptr %pv_tsc_khz, align 8, !dbg !120
  %6 = load i32, ptr %__rem, align 4, !dbg !120
  store i32 %6, ptr %tmp, align 4, !dbg !120
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #9, !dbg !121
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #9, !dbg !121
  %7 = load i32, ptr %tmp, align 4, !dbg !120
  %8 = load ptr, ptr %src.addr, align 8, !dbg !122
  %tsc_shift = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %8, i32 0, i32 5, !dbg !124
  %9 = load i8, ptr %tsc_shift, align 1, !dbg !124
  %conv3 = sext i8 %9 to i32, !dbg !122
  %cmp = icmp slt i32 %conv3, 0, !dbg !125
  br i1 %cmp, label %if.then, label %if.else, !dbg !126

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %src.addr, align 8, !dbg !127
  %tsc_shift5 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %10, i32 0, i32 5, !dbg !128
  %11 = load i8, ptr %tsc_shift5, align 1, !dbg !128
  %conv6 = sext i8 %11 to i32, !dbg !127
  %sub = sub i32 0, %conv6, !dbg !129
  %12 = load i64, ptr %pv_tsc_khz, align 8, !dbg !130
  %sh_prom = zext i32 %sub to i64, !dbg !130
  %shl = shl i64 %12, %sh_prom, !dbg !130
  store i64 %shl, ptr %pv_tsc_khz, align 8, !dbg !130
  br label %if.end, !dbg !131

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %src.addr, align 8, !dbg !132
  %tsc_shift7 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %13, i32 0, i32 5, !dbg !133
  %14 = load i8, ptr %tsc_shift7, align 1, !dbg !133
  %conv8 = sext i8 %14 to i32, !dbg !132
  %15 = load i64, ptr %pv_tsc_khz, align 8, !dbg !134
  %sh_prom9 = zext i32 %conv8 to i64, !dbg !134
  %shr = lshr i64 %15, %sh_prom9, !dbg !134
  store i64 %shr, ptr %pv_tsc_khz, align 8, !dbg !134
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i64, ptr %pv_tsc_khz, align 8, !dbg !135
  call void @llvm.lifetime.end.p0(i64 8, ptr %pv_tsc_khz) #9, !dbg !136
  ret i64 %16, !dbg !137
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pvclock_touch_watchdogs() #0 align 16 !dbg !138 {
entry:
  call void @touch_softlockup_watchdog_sync() #10, !dbg !141
  call void @clocksource_touch_watchdog() #10, !dbg !142
  call void @rcu_cpu_stall_reset() #10, !dbg !143
  call void @reset_hung_task_detector() #10, !dbg !144
  ret void, !dbg !145
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_softlockup_watchdog_sync() #3 align 16 !dbg !146 {
entry:
  ret void, !dbg !148
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !149 dso_local void @clocksource_touch_watchdog() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !151 dso_local void @rcu_cpu_stall_reset() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reset_hung_task_detector() #3 align 16 !dbg !153 {
entry:
  ret void, !dbg !154
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pvclock_resume() #0 align 16 !dbg !155 {
entry:
  call void @atomic64_set(ptr noundef @last_value, i64 noundef 0) #10, !dbg !156
  ret void, !dbg !157
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !158 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !164, metadata !DIExpression()), !dbg !166
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !165, metadata !DIExpression()), !dbg !167
  %0 = load ptr, ptr %v.addr, align 8, !dbg !168
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #10, !dbg !169
  %1 = load ptr, ptr %v.addr, align 8, !dbg !170
  %2 = load i64, ptr %i.addr, align 8, !dbg !171
  call void @raw_atomic64_set(ptr noundef %1, i64 noundef %2) #10, !dbg !172
  ret void, !dbg !173
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @pvclock_read_flags(ptr noundef %src) #0 align 16 !dbg !174 {
entry:
  %src.addr = alloca ptr, align 8
  %version = alloca i32, align 4
  %flags = alloca i8, align 1
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #9, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %version, metadata !179, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags) #9, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !180, metadata !DIExpression()), !dbg !185
  br label %do.body, !dbg !186

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %src.addr, align 8, !dbg !187
  %call = call i32 @pvclock_read_begin(ptr noundef %0) #10, !dbg !189
  store i32 %call, ptr %version, align 4, !dbg !190
  %1 = load ptr, ptr %src.addr, align 8, !dbg !191
  %flags1 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %1, i32 0, i32 6, !dbg !192
  %2 = load i8, ptr %flags1, align 1, !dbg !192
  store i8 %2, ptr %flags, align 1, !dbg !193
  br label %do.cond, !dbg !194

do.cond:                                          ; preds = %do.body
  %3 = load ptr, ptr %src.addr, align 8, !dbg !195
  %4 = load i32, ptr %version, align 4, !dbg !196
  %call2 = call zeroext i1 @pvclock_read_retry(ptr noundef %3, i32 noundef %4) #10, !dbg !197
  br i1 %call2, label %do.body, label %do.end, !dbg !194, !llvm.loop !198

do.end:                                           ; preds = %do.cond
  %5 = load i8, ptr %flags, align 1, !dbg !202
  %conv = zext i8 %5 to i32, !dbg !202
  %6 = load i8, ptr @valid_flags, align 1, !dbg !203
  %conv3 = zext i8 %6 to i32, !dbg !203
  %and = and i32 %conv, %conv3, !dbg !204
  %conv4 = trunc i32 %and to i8, !dbg !202
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags) #9, !dbg !205
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #9, !dbg !205
  ret i8 %conv4, !dbg !206
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pvclock_read_begin(ptr noundef %src) #5 align 16 !dbg !207 {
entry:
  %src.addr = alloca ptr, align 8
  %version = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #9, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %version, metadata !214, metadata !DIExpression()), !dbg !217
  %0 = load ptr, ptr %src.addr, align 8, !dbg !218
  %version1 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %0, i32 0, i32 0, !dbg !219
  %1 = load i32, ptr %version1, align 1, !dbg !219
  %and = and i32 %1, -2, !dbg !220
  store i32 %and, ptr %version, align 4, !dbg !217
  br label %do.body, !dbg !221

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !222

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !224

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !224

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !222

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !226

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !228

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !228

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !226, !srcloc !230
  br label %do.cond7, !dbg !226

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !226

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !222

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !222

do.end10:                                         ; preds = %do.cond9
  %2 = load i32, ptr %version, align 4, !dbg !231
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #9, !dbg !232
  ret i32 %2, !dbg !233
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pvclock_read_retry(ptr noundef %src, i32 noundef %version) #5 align 16 !dbg !234 {
entry:
  %src.addr = alloca ptr, align 8
  %version.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !240, metadata !DIExpression()), !dbg !242
  store i32 %version, ptr %version.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %version.addr, metadata !241, metadata !DIExpression()), !dbg !243
  br label %do.body, !dbg !244

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !245

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !247

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !245

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !249

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !251

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !249, !srcloc !253
  br label %do.end5, !dbg !249

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !245

do.end6:                                          ; preds = %do.end5
  %0 = load i32, ptr %version.addr, align 4, !dbg !254
  %1 = load ptr, ptr %src.addr, align 8, !dbg !254
  %version7 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %1, i32 0, i32 0, !dbg !254
  %2 = load i32, ptr %version7, align 1, !dbg !254
  %cmp = icmp ne i32 %0, %2, !dbg !254
  %lnot = xor i1 %cmp, true, !dbg !254
  %lnot8 = xor i1 %lnot, true, !dbg !254
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !254
  %conv = sext i32 %lnot.ext to i64, !dbg !254
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !254
  %tobool = icmp ne i64 %expval, 0, !dbg !254
  ret i1 %tobool, !dbg !255
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pvclock_clocksource_read(ptr noundef %src) #0 align 16 !dbg !256 {
entry:
  %src.addr = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load ptr, ptr %src.addr, align 8, !dbg !262
  %call = call i64 @__pvclock_clocksource_read(ptr noundef %0, i1 noundef zeroext true) #10, !dbg !263
  ret i64 %call, !dbg !264
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__pvclock_clocksource_read(ptr noundef %src, i1 noundef zeroext %dowd) #5 align 16 !dbg !265 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca ptr, align 8
  %dowd.addr = alloca i8, align 1
  %version = alloca i32, align 4
  %ret = alloca i64, align 8
  %last = alloca i64, align 8
  %flags = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !269, metadata !DIExpression()), !dbg !275
  %frombool = zext i1 %dowd to i8
  store i8 %frombool, ptr %dowd.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %dowd.addr, metadata !270, metadata !DIExpression()), !dbg !276
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #9, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %version, metadata !271, metadata !DIExpression()), !dbg !278
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !272, metadata !DIExpression()), !dbg !280
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #9, !dbg !281
  call void @llvm.dbg.declare(metadata ptr %last, metadata !273, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags) #9, !dbg !283
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !274, metadata !DIExpression()), !dbg !284
  br label %do.body, !dbg !285

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %src.addr, align 8, !dbg !286
  %call = call i32 @pvclock_read_begin(ptr noundef %0) #10, !dbg !288
  store i32 %call, ptr %version, align 4, !dbg !289
  %1 = load ptr, ptr %src.addr, align 8, !dbg !290
  %call1 = call i64 @rdtsc_ordered() #10, !dbg !291
  %call2 = call i64 @__pvclock_read_cycles(ptr noundef %1, i64 noundef %call1) #10, !dbg !292
  store i64 %call2, ptr %ret, align 8, !dbg !293
  %2 = load ptr, ptr %src.addr, align 8, !dbg !294
  %flags3 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %2, i32 0, i32 6, !dbg !295
  %3 = load i8, ptr %flags3, align 1, !dbg !295
  store i8 %3, ptr %flags, align 1, !dbg !296
  br label %do.cond, !dbg !297

do.cond:                                          ; preds = %do.body
  %4 = load ptr, ptr %src.addr, align 8, !dbg !298
  %5 = load i32, ptr %version, align 4, !dbg !299
  %call4 = call zeroext i1 @pvclock_read_retry(ptr noundef %4, i32 noundef %5) #10, !dbg !300
  br i1 %call4, label %do.body, label %do.end, !dbg !297, !llvm.loop !301

do.end:                                           ; preds = %do.cond
  %6 = load i8, ptr %dowd.addr, align 1, !dbg !303, !range !305, !noundef !306
  %tobool = trunc i8 %6 to i1, !dbg !303
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !307

land.lhs.true:                                    ; preds = %do.end
  %7 = load i8, ptr %flags, align 1, !dbg !308
  %conv = zext i8 %7 to i32, !dbg !308
  %and = and i32 %conv, 2, !dbg !308
  %cmp = icmp ne i32 %and, 0, !dbg !308
  %lnot = xor i1 %cmp, true, !dbg !308
  %lnot6 = xor i1 %lnot, true, !dbg !308
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !308
  %conv7 = sext i32 %lnot.ext to i64, !dbg !308
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !308
  %tobool8 = icmp ne i64 %expval, 0, !dbg !308
  br i1 %tobool8, label %if.then, label %if.end, !dbg !309

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %src.addr, align 8, !dbg !310
  %flags9 = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %8, i32 0, i32 6, !dbg !312
  %9 = load i8, ptr %flags9, align 1, !dbg !313
  %conv10 = zext i8 %9 to i32, !dbg !313
  %and11 = and i32 %conv10, -3, !dbg !313
  %conv12 = trunc i32 %and11 to i8, !dbg !313
  store i8 %conv12, ptr %flags9, align 1, !dbg !313
  call void @pvclock_touch_watchdogs() #10, !dbg !314
  br label %if.end, !dbg !315

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %10 = load i8, ptr @valid_flags, align 1, !dbg !316
  %conv13 = zext i8 %10 to i32, !dbg !316
  %and14 = and i32 %conv13, 1, !dbg !318
  %tobool15 = icmp ne i32 %and14, 0, !dbg !318
  br i1 %tobool15, label %land.lhs.true16, label %if.end21, !dbg !319

land.lhs.true16:                                  ; preds = %if.end
  %11 = load i8, ptr %flags, align 1, !dbg !320
  %conv17 = zext i8 %11 to i32, !dbg !320
  %and18 = and i32 %conv17, 1, !dbg !321
  %tobool19 = icmp ne i32 %and18, 0, !dbg !321
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !322

if.then20:                                        ; preds = %land.lhs.true16
  %12 = load i64, ptr %ret, align 8, !dbg !323
  store i64 %12, ptr %retval, align 8, !dbg !324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !324

if.end21:                                         ; preds = %land.lhs.true16, %if.end
  %call22 = call i64 @raw_atomic64_read(ptr noundef @last_value) #10, !dbg !325
  store i64 %call22, ptr %last, align 8, !dbg !326
  br label %do.body23, !dbg !327

do.body23:                                        ; preds = %do.cond28, %if.end21
  %13 = load i64, ptr %ret, align 8, !dbg !328
  %14 = load i64, ptr %last, align 8, !dbg !331
  %cmp24 = icmp ule i64 %13, %14, !dbg !332
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !333

if.then26:                                        ; preds = %do.body23
  %15 = load i64, ptr %last, align 8, !dbg !334
  store i64 %15, ptr %retval, align 8, !dbg !335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !335

if.end27:                                         ; preds = %do.body23
  br label %do.cond28, !dbg !336

do.cond28:                                        ; preds = %if.end27
  %16 = load i64, ptr %ret, align 8, !dbg !337
  %call29 = call zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef @last_value, ptr noundef %last, i64 noundef %16) #10, !dbg !338
  %lnot30 = xor i1 %call29, true, !dbg !339
  br i1 %lnot30, label %do.body23, label %do.end32, !dbg !336, !llvm.loop !340

do.end32:                                         ; preds = %do.cond28
  %17 = load i64, ptr %ret, align 8, !dbg !342
  store i64 %17, ptr %retval, align 8, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !343

cleanup:                                          ; preds = %do.end32, %if.then26, %if.then20
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags) #9, !dbg !344
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #9, !dbg !344
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9, !dbg !344
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #9, !dbg !344
  %18 = load i64, ptr %retval, align 8, !dbg !344
  ret i64 %18, !dbg !344
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pvclock_clocksource_read_nowd(ptr noundef %src) #6 section ".noinstr.text" align 16 !dbg !345 {
entry:
  %src.addr = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load ptr, ptr %src.addr, align 8, !dbg !349
  %call = call i64 @__pvclock_clocksource_read(ptr noundef %0, i1 noundef zeroext false) #10, !dbg !350
  ret i64 %call, !dbg !351
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pvclock_read_wallclock(ptr noundef %wall_clock, ptr noundef %vcpu_time, ptr noundef %ts) #0 align 16 !dbg !352 {
entry:
  %wall_clock.addr = alloca ptr, align 8
  %vcpu_time.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %version = alloca i32, align 4
  %delta = alloca i64, align 8
  %now = alloca %struct.timespec64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %wall_clock, ptr %wall_clock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wall_clock.addr, metadata !370, metadata !DIExpression()), !dbg !379
  store ptr %vcpu_time, ptr %vcpu_time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vcpu_time.addr, metadata !371, metadata !DIExpression()), !dbg !380
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !372, metadata !DIExpression()), !dbg !381
  call void @llvm.lifetime.start.p0(i64 4, ptr %version) #9, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %version, metadata !373, metadata !DIExpression()), !dbg !383
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #9, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !374, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 16, ptr %now) #9, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %now, metadata !375, metadata !DIExpression()), !dbg !387
  br label %do.body, !dbg !388

do.body:                                          ; preds = %lor.end, %entry
  %0 = load ptr, ptr %wall_clock.addr, align 8, !dbg !389
  %version1 = getelementptr inbounds %struct.pvclock_wall_clock, ptr %0, i32 0, i32 0, !dbg !391
  %1 = load i32, ptr %version1, align 1, !dbg !391
  store i32 %1, ptr %version, align 4, !dbg !392
  br label %do.body2, !dbg !393

do.body2:                                         ; preds = %do.body
  br label %do.body3, !dbg !394

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !396

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !396

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "lfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !394, !srcloc !398
  br label %do.cond4, !dbg !394

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !394

do.end5:                                          ; preds = %do.cond4
  %2 = load ptr, ptr %wall_clock.addr, align 8, !dbg !399
  %sec = getelementptr inbounds %struct.pvclock_wall_clock, ptr %2, i32 0, i32 1, !dbg !400
  %3 = load i32, ptr %sec, align 1, !dbg !400
  %conv = zext i32 %3 to i64, !dbg !399
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 0, !dbg !401
  store i64 %conv, ptr %tv_sec, align 8, !dbg !402
  %4 = load ptr, ptr %wall_clock.addr, align 8, !dbg !403
  %nsec = getelementptr inbounds %struct.pvclock_wall_clock, ptr %4, i32 0, i32 2, !dbg !404
  %5 = load i32, ptr %nsec, align 1, !dbg !404
  %conv6 = zext i32 %5 to i64, !dbg !403
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1, !dbg !405
  store i64 %conv6, ptr %tv_nsec, align 8, !dbg !406
  br label %do.body7, !dbg !407

do.body7:                                         ; preds = %do.end5
  br label %do.body8, !dbg !408

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !410

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !410

do.end10:                                         ; preds = %do.cond9
  call void asm sideeffect "lfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !408, !srcloc !412
  br label %do.cond11, !dbg !408

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !408

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !413

do.cond13:                                        ; preds = %do.end12
  %6 = load ptr, ptr %wall_clock.addr, align 8, !dbg !414
  %version14 = getelementptr inbounds %struct.pvclock_wall_clock, ptr %6, i32 0, i32 0, !dbg !415
  %7 = load i32, ptr %version14, align 1, !dbg !415
  %and = and i32 %7, 1, !dbg !416
  %tobool = icmp ne i32 %and, 0, !dbg !416
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !417

lor.rhs:                                          ; preds = %do.cond13
  %8 = load i32, ptr %version, align 4, !dbg !418
  %9 = load ptr, ptr %wall_clock.addr, align 8, !dbg !419
  %version15 = getelementptr inbounds %struct.pvclock_wall_clock, ptr %9, i32 0, i32 0, !dbg !420
  %10 = load i32, ptr %version15, align 1, !dbg !420
  %cmp = icmp ne i32 %8, %10, !dbg !421
  br label %lor.end, !dbg !417

lor.end:                                          ; preds = %lor.rhs, %do.cond13
  %11 = phi i1 [ true, %do.cond13 ], [ %cmp, %lor.rhs ]
  br i1 %11, label %do.body, label %do.end17, !dbg !413, !llvm.loop !422

do.end17:                                         ; preds = %lor.end
  %12 = load ptr, ptr %vcpu_time.addr, align 8, !dbg !424
  %call = call i64 @pvclock_clocksource_read(ptr noundef %12) #10, !dbg !425
  store i64 %call, ptr %delta, align 8, !dbg !426
  %tv_sec18 = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 0, !dbg !427
  %13 = load i64, ptr %tv_sec18, align 8, !dbg !427
  %mul = mul i64 %13, 1000000000, !dbg !428
  %tv_nsec19 = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1, !dbg !429
  %14 = load i64, ptr %tv_nsec19, align 8, !dbg !429
  %add = add i64 %mul, %14, !dbg !430
  %15 = load i64, ptr %delta, align 8, !dbg !431
  %add20 = add i64 %15, %add, !dbg !431
  store i64 %add20, ptr %delta, align 8, !dbg !431
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #9, !dbg !432
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !376, metadata !DIExpression()), !dbg !432
  store i32 1000000000, ptr %__base, align 4, !dbg !432
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #9, !dbg !432
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !378, metadata !DIExpression()), !dbg !432
  %16 = load i64, ptr %delta, align 8, !dbg !432
  %17 = load i32, ptr %__base, align 4, !dbg !432
  %conv21 = zext i32 %17 to i64, !dbg !432
  %rem = urem i64 %16, %conv21, !dbg !432
  %conv22 = trunc i64 %rem to i32, !dbg !432
  store i32 %conv22, ptr %__rem, align 4, !dbg !432
  %18 = load i64, ptr %delta, align 8, !dbg !432
  %19 = load i32, ptr %__base, align 4, !dbg !432
  %conv23 = zext i32 %19 to i64, !dbg !432
  %div = udiv i64 %18, %conv23, !dbg !432
  store i64 %div, ptr %delta, align 8, !dbg !432
  %20 = load i32, ptr %__rem, align 4, !dbg !432
  store i32 %20, ptr %tmp, align 4, !dbg !432
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #9, !dbg !433
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #9, !dbg !433
  %21 = load i32, ptr %tmp, align 4, !dbg !432
  %conv24 = zext i32 %21 to i64, !dbg !433
  %tv_nsec25 = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1, !dbg !434
  store i64 %conv24, ptr %tv_nsec25, align 8, !dbg !435
  %22 = load i64, ptr %delta, align 8, !dbg !436
  %tv_sec26 = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 0, !dbg !437
  store i64 %22, ptr %tv_sec26, align 8, !dbg !438
  %23 = load ptr, ptr %ts.addr, align 8, !dbg !439
  %tv_sec27 = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 0, !dbg !440
  %24 = load i64, ptr %tv_sec27, align 8, !dbg !440
  %tv_nsec28 = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1, !dbg !441
  %25 = load i64, ptr %tv_nsec28, align 8, !dbg !441
  call void @set_normalized_timespec64(ptr noundef %23, i64 noundef %24, i64 noundef %25) #10, !dbg !442
  call void @llvm.lifetime.end.p0(i64 16, ptr %now) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #9, !dbg !443
  call void @llvm.lifetime.end.p0(i64 4, ptr %version) #9, !dbg !443
  ret void, !dbg !443
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !444 dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pvclock_set_pvti_cpu0_va(ptr noundef %pvti) #0 align 16 !dbg !447 {
entry:
  %pvti.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pvti, ptr %pvti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pvti.addr, metadata !451, metadata !DIExpression()), !dbg !458
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !452, metadata !DIExpression()), !dbg !459
  %call = call zeroext i1 @vclock_was_used(i32 noundef 2) #10, !dbg !459
  %lnot = xor i1 %call, true, !dbg !459
  %lnot1 = xor i1 %lnot, true, !dbg !459
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !459
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !459
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !460
  %tobool = icmp ne i32 %0, 0, !dbg !460
  %lnot2 = xor i1 %tobool, true, !dbg !460
  %lnot4 = xor i1 %lnot2, true, !dbg !460
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !460
  %conv = sext i32 %lnot.ext5 to i64, !dbg !460
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !460
  %tobool6 = icmp ne i64 %expval, 0, !dbg !460
  br i1 %tobool6, label %if.then, label %if.end, !dbg !459

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !460

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !455, metadata !DIExpression()), !dbg !461
  store i32 2305, ptr %__flags, align 4, !dbg !461
  br label %do.body7, !dbg !461

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !462

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !462

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !461

do.body8:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !464
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 158, i32 %1, i64 12) #9, !dbg !464, !srcloc !466
  br label %do.cond9, !dbg !464

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !464

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !461

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !467

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !467

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !460
  br label %do.cond14, !dbg !461

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !461

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !461

if.end:                                           ; preds = %do.end15, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !459
  %tobool16 = icmp ne i32 %2, 0, !dbg !459
  %lnot17 = xor i1 %tobool16, true, !dbg !459
  %lnot19 = xor i1 %lnot17, true, !dbg !459
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !459
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !459
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !459
  store i64 %expval22, ptr %tmp, align 8, !dbg !460
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !469
  %3 = load i64, ptr %tmp, align 8, !dbg !459
  %4 = load ptr, ptr %pvti.addr, align 8, !dbg !470
  store ptr %4, ptr @pvti_cpu0_va, align 8, !dbg !471
  ret void, !dbg !472
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vclock_was_used(i32 noundef %vclock) #3 align 16 !dbg !473 {
entry:
  %vclock.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %vclock, ptr %vclock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vclock.addr, metadata !478, metadata !DIExpression()), !dbg !479
  br label %do.body, !dbg !480

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !482

do.end:                                           ; preds = %do.body
  %0 = load volatile i32, ptr @vclocks_used, align 4, !dbg !480
  store i32 %0, ptr %tmp, align 4, !dbg !482
  %1 = load i32, ptr %tmp, align 4, !dbg !480
  %2 = load i32, ptr %vclock.addr, align 4, !dbg !484
  %shl = shl i32 1, %2, !dbg !485
  %and = and i32 %1, %shl, !dbg !486
  %tobool = icmp ne i32 %and, 0, !dbg !487
  ret i1 %tobool, !dbg !488
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pvclock_get_pvti_cpu0_va() #0 align 16 !dbg !489 {
entry:
  %0 = load ptr, ptr @pvti_cpu0_va, align 8, !dbg !492
  ret ptr %0, !dbg !493
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !494 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !506, metadata !DIExpression()), !dbg !508
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !507, metadata !DIExpression()), !dbg !509
  %0 = load ptr, ptr %v.addr, align 8, !dbg !510
  %1 = load i64, ptr %size.addr, align 8, !dbg !511
  %conv = trunc i64 %1 to i32, !dbg !511
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !512
  %2 = load ptr, ptr %v.addr, align 8, !dbg !513
  %3 = load i64, ptr %size.addr, align 8, !dbg !513
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #10, !dbg !513
  ret void, !dbg !514
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !515 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !518, metadata !DIExpression()), !dbg !520
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !519, metadata !DIExpression()), !dbg !521
  %0 = load ptr, ptr %v.addr, align 8, !dbg !522
  %1 = load i64, ptr %i.addr, align 8, !dbg !523
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #10, !dbg !524
  ret void, !dbg !525
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !526 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !531, metadata !DIExpression()), !dbg !533
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !532, metadata !DIExpression()), !dbg !534
  ret i1 true, !dbg !535
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !536 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !541, metadata !DIExpression()), !dbg !544
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !542, metadata !DIExpression()), !dbg !545
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !543, metadata !DIExpression()), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #5 align 16 !dbg !548 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !551, metadata !DIExpression()), !dbg !553
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !552, metadata !DIExpression()), !dbg !554
  br label %do.body, !dbg !555

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !556
  %1 = load ptr, ptr %v.addr, align 8, !dbg !556
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !556
  store volatile i64 %0, ptr %counter, align 8, !dbg !556
  br label %do.end, !dbg !556

do.end:                                           ; preds = %do.body
  ret void, !dbg !558
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__pvclock_read_cycles(ptr noundef %src, i64 noundef %tsc) #5 align 16 !dbg !559 {
entry:
  %src.addr = alloca ptr, align 8
  %tsc.addr = alloca i64, align 8
  %delta = alloca i64, align 8
  %offset = alloca i64, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !563, metadata !DIExpression()), !dbg !567
  store i64 %tsc, ptr %tsc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsc.addr, metadata !564, metadata !DIExpression()), !dbg !568
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #9, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !565, metadata !DIExpression()), !dbg !570
  %0 = load i64, ptr %tsc.addr, align 8, !dbg !571
  %1 = load ptr, ptr %src.addr, align 8, !dbg !572
  %tsc_timestamp = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %1, i32 0, i32 2, !dbg !573
  %2 = load i64, ptr %tsc_timestamp, align 1, !dbg !573
  %sub = sub i64 %0, %2, !dbg !574
  store i64 %sub, ptr %delta, align 8, !dbg !570
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #9, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !566, metadata !DIExpression()), !dbg !576
  %3 = load i64, ptr %delta, align 8, !dbg !577
  %4 = load ptr, ptr %src.addr, align 8, !dbg !578
  %tsc_to_system_mul = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %4, i32 0, i32 4, !dbg !579
  %5 = load i32, ptr %tsc_to_system_mul, align 1, !dbg !579
  %6 = load ptr, ptr %src.addr, align 8, !dbg !580
  %tsc_shift = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %6, i32 0, i32 5, !dbg !581
  %7 = load i8, ptr %tsc_shift, align 1, !dbg !581
  %conv = sext i8 %7 to i32, !dbg !580
  %call = call i64 @pvclock_scale_delta(i64 noundef %3, i32 noundef %5, i32 noundef %conv) #10, !dbg !582
  store i64 %call, ptr %offset, align 8, !dbg !576
  %8 = load ptr, ptr %src.addr, align 8, !dbg !583
  %system_time = getelementptr inbounds %struct.pvclock_vcpu_time_info, ptr %8, i32 0, i32 3, !dbg !584
  %9 = load i64, ptr %system_time, align 1, !dbg !584
  %10 = load i64, ptr %offset, align 8, !dbg !585
  %add = add i64 %9, %10, !dbg !586
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #9, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #9, !dbg !587
  ret i64 %add, !dbg !588
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rdtsc_ordered() #5 align 16 !dbg !589 {
entry:
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #9, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %low, metadata !594, metadata !DIExpression()), !dbg !596
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #9, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %high, metadata !595, metadata !DIExpression()), !dbg !596
  %0 = call { i64, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09rdtsc\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (20*32+ 2)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ( 1*32+27)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence; rdtsc\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09rdtscp\0A6652:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !597, !srcloc !598
  %asmresult = extractvalue { i64, i64 } %0, 0, !dbg !597
  %asmresult1 = extractvalue { i64, i64 } %0, 1, !dbg !597
  store i64 %asmresult, ptr %low, align 8, !dbg !597
  store i64 %asmresult1, ptr %high, align 8, !dbg !597
  %1 = load i64, ptr %low, align 8, !dbg !599
  %2 = load i64, ptr %high, align 8, !dbg !599
  %shl = shl i64 %2, 32, !dbg !599
  %or = or i64 %1, %shl, !dbg !599
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #9, !dbg !600
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #9, !dbg !600
  ret i64 %or, !dbg !601
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #5 align 16 !dbg !602 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !608, metadata !DIExpression()), !dbg !609
  %0 = load ptr, ptr %v.addr, align 8, !dbg !610
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #10, !dbg !611
  ret i64 %call, !dbg !612
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #5 align 16 !dbg !613 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !617, metadata !DIExpression()), !dbg !620
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !618, metadata !DIExpression()), !dbg !621
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !619, metadata !DIExpression()), !dbg !622
  %0 = load ptr, ptr %v.addr, align 8, !dbg !623
  %1 = load ptr, ptr %old.addr, align 8, !dbg !624
  %2 = load i64, ptr %new.addr, align 8, !dbg !625
  %call = call zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #10, !dbg !626
  ret i1 %call, !dbg !627
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pvclock_scale_delta(i64 noundef %delta, i32 noundef %mul_frac, i32 noundef %shift) #5 align 16 !dbg !628 {
entry:
  %delta.addr = alloca i64, align 8
  %mul_frac.addr = alloca i32, align 4
  %shift.addr = alloca i32, align 4
  %product = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %delta, ptr %delta.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delta.addr, metadata !632, metadata !DIExpression()), !dbg !638
  store i32 %mul_frac, ptr %mul_frac.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mul_frac.addr, metadata !633, metadata !DIExpression()), !dbg !639
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !634, metadata !DIExpression()), !dbg !640
  call void @llvm.lifetime.start.p0(i64 8, ptr %product) #9, !dbg !641
  call void @llvm.dbg.declare(metadata ptr %product, metadata !635, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #9, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !636, metadata !DIExpression()), !dbg !644
  %0 = load i32, ptr %shift.addr, align 4, !dbg !645
  %cmp = icmp slt i32 %0, 0, !dbg !647
  br i1 %cmp, label %if.then, label %if.else, !dbg !648

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %shift.addr, align 4, !dbg !649
  %sub = sub i32 0, %1, !dbg !650
  %2 = load i64, ptr %delta.addr, align 8, !dbg !651
  %sh_prom = zext i32 %sub to i64, !dbg !651
  %shr = lshr i64 %2, %sh_prom, !dbg !651
  store i64 %shr, ptr %delta.addr, align 8, !dbg !651
  br label %if.end, !dbg !652

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %shift.addr, align 4, !dbg !653
  %4 = load i64, ptr %delta.addr, align 8, !dbg !654
  %sh_prom1 = zext i32 %3 to i64, !dbg !654
  %shl = shl i64 %4, %sh_prom1, !dbg !654
  store i64 %shl, ptr %delta.addr, align 8, !dbg !654
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %delta.addr, align 8, !dbg !655
  %6 = load i32, ptr %mul_frac.addr, align 4, !dbg !656
  %conv = zext i32 %6 to i64, !dbg !657
  %7 = call { i64, i64 } asm "mulq $3 ; shrd $$32, $1, $0", "={ax},={dx},0,rm,~{dirflag},~{fpsr},~{flags}"(i64 %5, i64 %conv) #11, !dbg !658, !srcloc !659
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !658
  %asmresult2 = extractvalue { i64, i64 } %7, 1, !dbg !658
  store i64 %asmresult, ptr %product, align 8, !dbg !658
  store i64 %asmresult2, ptr %tmp, align 8, !dbg !658
  %8 = load i64, ptr %product, align 8, !dbg !660
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #9, !dbg !661
  call void @llvm.lifetime.end.p0(i64 8, ptr %product) #9, !dbg !661
  ret i64 %8, !dbg !662
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #5 align 16 !dbg !663 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !665, metadata !DIExpression()), !dbg !666
  %0 = load ptr, ptr %v.addr, align 8, !dbg !667
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !667
  %1 = load volatile i64, ptr %counter, align 8, !dbg !667
  ret i64 %1, !dbg !668
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #5 align 16 !dbg !669 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !671, metadata !DIExpression()), !dbg !680
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !672, metadata !DIExpression()), !dbg !681
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !673, metadata !DIExpression()), !dbg !682
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %success, metadata !674, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !676, metadata !DIExpression()), !dbg !683
  %0 = load ptr, ptr %old.addr, align 8, !dbg !683
  store ptr %0, ptr %_old, align 8, !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #9, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !677, metadata !DIExpression()), !dbg !683
  %1 = load ptr, ptr %_old, align 8, !dbg !683
  %2 = load i64, ptr %1, align 8, !dbg !683
  store i64 %2, ptr %__old, align 8, !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #9, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !678, metadata !DIExpression()), !dbg !683
  %3 = load i64, ptr %new.addr, align 8, !dbg !683
  store i64 %3, ptr %__new, align 8, !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !679, metadata !DIExpression()), !dbg !683
  %4 = load ptr, ptr %v.addr, align 8, !dbg !683
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %4, i32 0, i32 0, !dbg !683
  store ptr %counter, ptr %__ptr, align 8, !dbg !683
  %5 = load ptr, ptr %__ptr, align 8, !dbg !683
  %6 = load i64, ptr %__old, align 8, !dbg !683
  %7 = load i64, ptr %__new, align 8, !dbg !683
  %8 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %7, ptr elementtype(i64) %5, i64 %6) #9, !dbg !683, !srcloc !684
  %asmresult = extractvalue { i8, i64 } %8, 0, !dbg !683
  %asmresult1 = extractvalue { i8, i64 } %8, 1, !dbg !683
  %9 = icmp ult i8 %asmresult, 2, !dbg !683
  call void @llvm.assume(i1 %9), !dbg !683
  store i8 %asmresult, ptr %success, align 1, !dbg !683
  store i64 %asmresult1, ptr %__old, align 8, !dbg !683
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !683
  %10 = load i8, ptr %success, align 1, !dbg !685, !range !305, !noundef !306
  %tobool = trunc i8 %10 to i1, !dbg !685
  %lnot = xor i1 %tobool, true, !dbg !685
  %lnot2 = xor i1 %lnot, true, !dbg !685
  %lnot3 = xor i1 %lnot2, true, !dbg !685
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !685
  %conv = sext i32 %lnot.ext to i64, !dbg !685
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !685
  %tobool4 = icmp ne i64 %expval, 0, !dbg !685
  br i1 %tobool4, label %if.then, label %if.end, !dbg !683

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %__old, align 8, !dbg !685
  %12 = load ptr, ptr %_old, align 8, !dbg !685
  store i64 %11, ptr %12, align 8, !dbg !685
  br label %if.end, !dbg !685

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !683, !range !305, !noundef !306
  %tobool5 = trunc i8 %13 to i1, !dbg !683
  %lnot6 = xor i1 %tobool5, true, !dbg !683
  %lnot8 = xor i1 %lnot6, true, !dbg !683
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !683
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !683
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !683
  store i64 %expval11, ptr %tmp, align 8, !dbg !685
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #9, !dbg !687
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #9, !dbg !687
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !687
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !687
  %14 = load i64, ptr %tmp, align 8, !dbg !683
  %tobool12 = icmp ne i64 %14, 0, !dbg !687
  ret i1 %tobool12, !dbg !688
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "valid_flags", scope: !2, file: !3, line: 19, type: !74, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.pvclock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/pvclock\22 -D KBUILD_BASENAME=\22pvclock\22 -D KBUILD_MODNAME=\22pvclock\22 -D __KBUILD_MODNAME=kmod_pvclock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/pvclock.ll arch/x86/kernel/pvclock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !43, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/pvclock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b210bbb98a7324cd1cf828be26ac6be4")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !12, line: 11, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5c94bac8b1931d6fab42a415ede12b1")
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0)
!15 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1)
!16 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2)
!17 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3)
!18 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4)
!19 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647)
!20 = !{!21, !28, !29, !23, !34, !37, !38, !40}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 113, baseType: !23)
!22 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !24, line: 23, baseType: !25)
!24 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !26, line: 31, baseType: !27)
!26 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!27 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !24, line: 22, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !26, line: 30, baseType: !33)
!33 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!43 = !{!44, !50, !52, !0, !81}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 208, elements: !48)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !{!49}
!49 = !DISubrange(count: 26)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pvclock_get_pvti_cpu0_va290", scope: !2, file: !3, line: 166, type: !28, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "pvti_cpu0_va", scope: !2, file: !3, line: 20, type: !54, isLocal: true, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vsyscall_time_info", file: !56, line: 91, size: 512, align: 512, elements: !57)
!56 = !DIFile(filename: "./arch/x86/include/asm/pvclock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0842e5b6b68f91de74c4dd8305b2bfa6")
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pvti", scope: !55, file: !56, line: 92, baseType: !59, size: 256)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vcpu_time_info", file: !60, line: 26, size: 256, elements: !61)
!60 = !DIFile(filename: "./arch/x86/include/asm/pvclock-abi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "63a96b2b2f7b6470cea45a7a079d9d9a")
!61 = !{!62, !65, !66, !67, !68, !69, !73, !77}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !59, file: !60, line: 27, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !24, line: 21, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !26, line: 27, baseType: !7)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "pad0", scope: !59, file: !60, line: 28, baseType: !63, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_timestamp", scope: !59, file: !60, line: 29, baseType: !23, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !59, file: !60, line: 30, baseType: !23, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_to_system_mul", scope: !59, file: !60, line: 31, baseType: !63, size: 32, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_shift", scope: !59, file: !60, line: 32, baseType: !70, size: 8, offset: 224)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !24, line: 16, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !26, line: 20, baseType: !72)
!72 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !60, line: 33, baseType: !74, size: 8, offset: 232)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !24, line: 17, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !26, line: 21, baseType: !76)
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !59, file: !60, line: 34, baseType: !78, size: 16, offset: 240)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 16, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 2)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "last_value", scope: !2, file: !3, line: 47, type: !83, isLocal: true, isDefinition: true)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !22, line: 181, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 179, size: 64, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !84, file: !22, line: 180, baseType: !31, size: 64)
!87 = !{i32 7, !"Dwarf Version", i32 5}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 8, !"cf-protection-branch", i32 1}
!91 = !{i32 4, !"function_return_thunk_extern", i32 1}
!92 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!93 = !{i32 1, !"Code Model", i32 2}
!94 = !{i32 1, !"override-stack-alignment", i32 8}
!95 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!96 = distinct !DISubprogram(name: "pvclock_set_flags", scope: !3, file: !3, line: 22, type: !97, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !74}
!99 = !{!100}
!100 = !DILocalVariable(name: "flags", arg: 1, scope: !96, file: !3, line: 22, type: !74)
!101 = !DILocation(line: 22, column: 27, scope: !96)
!102 = !DILocation(line: 24, column: 16, scope: !96)
!103 = !DILocation(line: 24, column: 14, scope: !96)
!104 = !DILocation(line: 25, column: 1, scope: !96)
!105 = distinct !DISubprogram(name: "pvclock_tsc_khz", scope: !3, file: !3, line: 27, type: !106, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!110 = !{!111, !112, !113, !116}
!111 = !DILocalVariable(name: "src", arg: 1, scope: !105, file: !3, line: 27, type: !109)
!112 = !DILocalVariable(name: "pv_tsc_khz", scope: !105, file: !3, line: 29, type: !23)
!113 = !DILocalVariable(name: "__base", scope: !114, file: !3, line: 31, type: !115)
!114 = distinct !DILexicalBlock(scope: !105, file: !3, line: 31, column: 2)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 110, baseType: !63)
!116 = !DILocalVariable(name: "__rem", scope: !114, file: !3, line: 31, type: !115)
!117 = !DILocation(line: 27, column: 62, scope: !105)
!118 = !DILocation(line: 29, column: 2, scope: !105)
!119 = !DILocation(line: 29, column: 6, scope: !105)
!120 = !DILocation(line: 31, column: 2, scope: !114)
!121 = !DILocation(line: 31, column: 2, scope: !105)
!122 = !DILocation(line: 32, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !105, file: !3, line: 32, column: 6)
!124 = !DILocation(line: 32, column: 11, scope: !123)
!125 = !DILocation(line: 32, column: 21, scope: !123)
!126 = !DILocation(line: 32, column: 6, scope: !105)
!127 = !DILocation(line: 33, column: 19, scope: !123)
!128 = !DILocation(line: 33, column: 24, scope: !123)
!129 = !DILocation(line: 33, column: 18, scope: !123)
!130 = !DILocation(line: 33, column: 14, scope: !123)
!131 = !DILocation(line: 33, column: 3, scope: !123)
!132 = !DILocation(line: 35, column: 18, scope: !123)
!133 = !DILocation(line: 35, column: 23, scope: !123)
!134 = !DILocation(line: 35, column: 14, scope: !123)
!135 = !DILocation(line: 36, column: 9, scope: !105)
!136 = !DILocation(line: 37, column: 1, scope: !105)
!137 = !DILocation(line: 36, column: 2, scope: !105)
!138 = distinct !DISubprogram(name: "pvclock_touch_watchdogs", scope: !3, file: !3, line: 39, type: !139, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!139 = !DISubroutineType(types: !140)
!140 = !{null}
!141 = !DILocation(line: 41, column: 2, scope: !138)
!142 = !DILocation(line: 42, column: 2, scope: !138)
!143 = !DILocation(line: 43, column: 2, scope: !138)
!144 = !DILocation(line: 44, column: 2, scope: !138)
!145 = !DILocation(line: 45, column: 1, scope: !138)
!146 = distinct !DISubprogram(name: "touch_softlockup_watchdog_sync", scope: !147, file: !147, line: 55, type: !139, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!147 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5da5752bbe70ab061cfd0891798ac7e8")
!148 = !DILocation(line: 55, column: 59, scope: !146)
!149 = !DISubprogram(name: "clocksource_touch_watchdog", scope: !150, file: !150, line: 211, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DIFile(filename: "./include/linux/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f664f6d0ed93221709a7301012f8ae1")
!151 = !DISubprogram(name: "rcu_cpu_stall_reset", scope: !152, file: !152, line: 23, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!153 = distinct !DISubprogram(name: "reset_hung_task_detector", scope: !147, file: !147, line: 65, type: !139, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!154 = !DILocation(line: 65, column: 53, scope: !153)
!155 = distinct !DISubprogram(name: "pvclock_resume", scope: !3, file: !3, line: 49, type: !139, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!156 = !DILocation(line: 51, column: 2, scope: !155)
!157 = !DILocation(line: 52, column: 1, scope: !155)
!158 = distinct !DISubprogram(name: "atomic64_set", scope: !159, file: !159, line: 1629, type: !160, scopeLine: 1630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!159 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !31}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "v", arg: 1, scope: !158, file: !159, line: 1629, type: !162)
!165 = !DILocalVariable(name: "i", arg: 2, scope: !158, file: !159, line: 1629, type: !31)
!166 = !DILocation(line: 1629, column: 26, scope: !158)
!167 = !DILocation(line: 1629, column: 33, scope: !158)
!168 = !DILocation(line: 1631, column: 26, scope: !158)
!169 = !DILocation(line: 1631, column: 2, scope: !158)
!170 = !DILocation(line: 1632, column: 19, scope: !158)
!171 = !DILocation(line: 1632, column: 22, scope: !158)
!172 = !DILocation(line: 1632, column: 2, scope: !158)
!173 = !DILocation(line: 1633, column: 1, scope: !158)
!174 = distinct !DISubprogram(name: "pvclock_read_flags", scope: !3, file: !3, line: 54, type: !175, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{!74, !109}
!177 = !{!178, !179, !180}
!178 = !DILocalVariable(name: "src", arg: 1, scope: !174, file: !3, line: 54, type: !109)
!179 = !DILocalVariable(name: "version", scope: !174, file: !3, line: 56, type: !7)
!180 = !DILocalVariable(name: "flags", scope: !174, file: !3, line: 57, type: !74)
!181 = !DILocation(line: 54, column: 54, scope: !174)
!182 = !DILocation(line: 56, column: 2, scope: !174)
!183 = !DILocation(line: 56, column: 11, scope: !174)
!184 = !DILocation(line: 57, column: 2, scope: !174)
!185 = !DILocation(line: 57, column: 5, scope: !174)
!186 = !DILocation(line: 59, column: 2, scope: !174)
!187 = !DILocation(line: 60, column: 32, scope: !188)
!188 = distinct !DILexicalBlock(scope: !174, file: !3, line: 59, column: 5)
!189 = !DILocation(line: 60, column: 13, scope: !188)
!190 = !DILocation(line: 60, column: 11, scope: !188)
!191 = !DILocation(line: 61, column: 11, scope: !188)
!192 = !DILocation(line: 61, column: 16, scope: !188)
!193 = !DILocation(line: 61, column: 9, scope: !188)
!194 = !DILocation(line: 62, column: 2, scope: !188)
!195 = !DILocation(line: 62, column: 30, scope: !174)
!196 = !DILocation(line: 62, column: 35, scope: !174)
!197 = !DILocation(line: 62, column: 11, scope: !174)
!198 = distinct !{!198, !186, !199, !200, !201}
!199 = !DILocation(line: 62, column: 43, scope: !174)
!200 = !{!"llvm.loop.mustprogress"}
!201 = !{!"llvm.loop.unroll.disable"}
!202 = !DILocation(line: 64, column: 9, scope: !174)
!203 = !DILocation(line: 64, column: 17, scope: !174)
!204 = !DILocation(line: 64, column: 15, scope: !174)
!205 = !DILocation(line: 65, column: 1, scope: !174)
!206 = !DILocation(line: 64, column: 2, scope: !174)
!207 = distinct !DISubprogram(name: "pvclock_read_begin", scope: !56, file: !56, line: 22, type: !208, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!208 = !DISubroutineType(types: !209)
!209 = !{!7, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!212 = !{!213, !214}
!213 = !DILocalVariable(name: "src", arg: 1, scope: !207, file: !56, line: 22, type: !210)
!214 = !DILocalVariable(name: "version", scope: !207, file: !56, line: 24, type: !7)
!215 = !DILocation(line: 22, column: 66, scope: !207)
!216 = !DILocation(line: 24, column: 2, scope: !207)
!217 = !DILocation(line: 24, column: 11, scope: !207)
!218 = !DILocation(line: 24, column: 21, scope: !207)
!219 = !DILocation(line: 24, column: 26, scope: !207)
!220 = !DILocation(line: 24, column: 34, scope: !207)
!221 = !DILocation(line: 26, column: 2, scope: !207)
!222 = !DILocation(line: 26, column: 2, scope: !223)
!223 = distinct !DILexicalBlock(scope: !207, file: !56, line: 26, column: 2)
!224 = !DILocation(line: 26, column: 2, scope: !225)
!225 = distinct !DILexicalBlock(scope: !223, file: !56, line: 26, column: 2)
!226 = !DILocation(line: 26, column: 2, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !56, line: 26, column: 2)
!228 = !DILocation(line: 26, column: 2, scope: !229)
!229 = distinct !DILexicalBlock(scope: !227, file: !56, line: 26, column: 2)
!230 = !{i64 2154330528}
!231 = !DILocation(line: 27, column: 9, scope: !207)
!232 = !DILocation(line: 28, column: 1, scope: !207)
!233 = !DILocation(line: 27, column: 2, scope: !207)
!234 = distinct !DISubprogram(name: "pvclock_read_retry", scope: !56, file: !56, line: 31, type: !235, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !210, !7}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !22, line: 35, baseType: !238)
!238 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!239 = !{!240, !241}
!240 = !DILocalVariable(name: "src", arg: 1, scope: !234, file: !56, line: 31, type: !210)
!241 = !DILocalVariable(name: "version", arg: 2, scope: !234, file: !56, line: 32, type: !7)
!242 = !DILocation(line: 31, column: 62, scope: !234)
!243 = !DILocation(line: 32, column: 13, scope: !234)
!244 = !DILocation(line: 35, column: 2, scope: !234)
!245 = !DILocation(line: 35, column: 2, scope: !246)
!246 = distinct !DILexicalBlock(scope: !234, file: !56, line: 35, column: 2)
!247 = !DILocation(line: 35, column: 2, scope: !248)
!248 = distinct !DILexicalBlock(scope: !246, file: !56, line: 35, column: 2)
!249 = !DILocation(line: 35, column: 2, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !56, line: 35, column: 2)
!251 = !DILocation(line: 35, column: 2, scope: !252)
!252 = distinct !DILexicalBlock(scope: !250, file: !56, line: 35, column: 2)
!253 = !{i64 2154330913}
!254 = !DILocation(line: 36, column: 9, scope: !234)
!255 = !DILocation(line: 36, column: 2, scope: !234)
!256 = distinct !DISubprogram(name: "pvclock_clocksource_read", scope: !3, file: !3, line: 113, type: !257, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{!23, !109}
!259 = !{!260}
!260 = !DILocalVariable(name: "src", arg: 1, scope: !256, file: !3, line: 113, type: !109)
!261 = !DILocation(line: 113, column: 61, scope: !256)
!262 = !DILocation(line: 115, column: 36, scope: !256)
!263 = !DILocation(line: 115, column: 9, scope: !256)
!264 = !DILocation(line: 115, column: 2, scope: !256)
!265 = distinct !DISubprogram(name: "__pvclock_clocksource_read", scope: !3, file: !3, line: 68, type: !266, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{!23, !109, !237}
!268 = !{!269, !270, !271, !272, !273, !274}
!269 = !DILocalVariable(name: "src", arg: 1, scope: !265, file: !3, line: 68, type: !109)
!270 = !DILocalVariable(name: "dowd", arg: 2, scope: !265, file: !3, line: 68, type: !237)
!271 = !DILocalVariable(name: "version", scope: !265, file: !3, line: 70, type: !7)
!272 = !DILocalVariable(name: "ret", scope: !265, file: !3, line: 71, type: !23)
!273 = !DILocalVariable(name: "last", scope: !265, file: !3, line: 72, type: !23)
!274 = !DILocalVariable(name: "flags", scope: !265, file: !3, line: 73, type: !74)
!275 = !DILocation(line: 68, column: 63, scope: !265)
!276 = !DILocation(line: 68, column: 73, scope: !265)
!277 = !DILocation(line: 70, column: 2, scope: !265)
!278 = !DILocation(line: 70, column: 11, scope: !265)
!279 = !DILocation(line: 71, column: 2, scope: !265)
!280 = !DILocation(line: 71, column: 6, scope: !265)
!281 = !DILocation(line: 72, column: 2, scope: !265)
!282 = !DILocation(line: 72, column: 6, scope: !265)
!283 = !DILocation(line: 73, column: 2, scope: !265)
!284 = !DILocation(line: 73, column: 5, scope: !265)
!285 = !DILocation(line: 75, column: 2, scope: !265)
!286 = !DILocation(line: 76, column: 32, scope: !287)
!287 = distinct !DILexicalBlock(scope: !265, file: !3, line: 75, column: 5)
!288 = !DILocation(line: 76, column: 13, scope: !287)
!289 = !DILocation(line: 76, column: 11, scope: !287)
!290 = !DILocation(line: 77, column: 31, scope: !287)
!291 = !DILocation(line: 77, column: 36, scope: !287)
!292 = !DILocation(line: 77, column: 9, scope: !287)
!293 = !DILocation(line: 77, column: 7, scope: !287)
!294 = !DILocation(line: 78, column: 11, scope: !287)
!295 = !DILocation(line: 78, column: 16, scope: !287)
!296 = !DILocation(line: 78, column: 9, scope: !287)
!297 = !DILocation(line: 79, column: 2, scope: !287)
!298 = !DILocation(line: 79, column: 30, scope: !265)
!299 = !DILocation(line: 79, column: 35, scope: !265)
!300 = !DILocation(line: 79, column: 11, scope: !265)
!301 = distinct !{!301, !285, !302, !200, !201}
!302 = !DILocation(line: 79, column: 43, scope: !265)
!303 = !DILocation(line: 81, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !265, file: !3, line: 81, column: 6)
!305 = !{i8 0, i8 2}
!306 = !{}
!307 = !DILocation(line: 81, column: 11, scope: !304)
!308 = !DILocation(line: 81, column: 14, scope: !304)
!309 = !DILocation(line: 81, column: 6, scope: !265)
!310 = !DILocation(line: 82, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !304, file: !3, line: 81, column: 62)
!312 = !DILocation(line: 82, column: 8, scope: !311)
!313 = !DILocation(line: 82, column: 14, scope: !311)
!314 = !DILocation(line: 83, column: 3, scope: !311)
!315 = !DILocation(line: 84, column: 2, scope: !311)
!316 = !DILocation(line: 86, column: 7, scope: !317)
!317 = distinct !DILexicalBlock(scope: !265, file: !3, line: 86, column: 6)
!318 = !DILocation(line: 86, column: 19, scope: !317)
!319 = !DILocation(line: 86, column: 45, scope: !317)
!320 = !DILocation(line: 87, column: 4, scope: !317)
!321 = !DILocation(line: 87, column: 10, scope: !317)
!322 = !DILocation(line: 86, column: 6, scope: !265)
!323 = !DILocation(line: 88, column: 10, scope: !317)
!324 = !DILocation(line: 88, column: 3, scope: !317)
!325 = !DILocation(line: 104, column: 9, scope: !265)
!326 = !DILocation(line: 104, column: 7, scope: !265)
!327 = !DILocation(line: 105, column: 2, scope: !265)
!328 = !DILocation(line: 106, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 106, column: 7)
!330 = distinct !DILexicalBlock(scope: !265, file: !3, line: 105, column: 5)
!331 = !DILocation(line: 106, column: 14, scope: !329)
!332 = !DILocation(line: 106, column: 11, scope: !329)
!333 = !DILocation(line: 106, column: 7, scope: !330)
!334 = !DILocation(line: 107, column: 11, scope: !329)
!335 = !DILocation(line: 107, column: 4, scope: !329)
!336 = !DILocation(line: 108, column: 2, scope: !330)
!337 = !DILocation(line: 108, column: 57, scope: !265)
!338 = !DILocation(line: 108, column: 12, scope: !265)
!339 = !DILocation(line: 108, column: 11, scope: !265)
!340 = distinct !{!340, !327, !341, !200, !201}
!341 = !DILocation(line: 108, column: 61, scope: !265)
!342 = !DILocation(line: 110, column: 9, scope: !265)
!343 = !DILocation(line: 110, column: 2, scope: !265)
!344 = !DILocation(line: 111, column: 1, scope: !265)
!345 = distinct !DISubprogram(name: "pvclock_clocksource_read_nowd", scope: !3, file: !3, line: 118, type: !257, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !346)
!346 = !{!347}
!347 = !DILocalVariable(name: "src", arg: 1, scope: !345, file: !3, line: 118, type: !109)
!348 = !DILocation(line: 118, column: 74, scope: !345)
!349 = !DILocation(line: 120, column: 36, scope: !345)
!350 = !DILocation(line: 120, column: 9, scope: !345)
!351 = !DILocation(line: 120, column: 2, scope: !345)
!352 = distinct !DISubprogram(name: "pvclock_read_wallclock", scope: !3, file: !3, line: 123, type: !353, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !369)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !355, !109, !361}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_wall_clock", file: !60, line: 37, size: 96, elements: !357)
!357 = !{!358, !359, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !356, file: !60, line: 38, baseType: !63, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !356, file: !60, line: 39, baseType: !63, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !356, file: !60, line: 40, baseType: !63, size: 32, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !363, line: 13, size: 128, elements: !364)
!363 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!364 = !{!365, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !362, file: !363, line: 14, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !363, line: 8, baseType: !32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !362, file: !363, line: 15, baseType: !368, size: 64, offset: 64)
!368 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !378}
!370 = !DILocalVariable(name: "wall_clock", arg: 1, scope: !352, file: !3, line: 123, type: !355)
!371 = !DILocalVariable(name: "vcpu_time", arg: 2, scope: !352, file: !3, line: 124, type: !109)
!372 = !DILocalVariable(name: "ts", arg: 3, scope: !352, file: !3, line: 125, type: !361)
!373 = !DILocalVariable(name: "version", scope: !352, file: !3, line: 127, type: !63)
!374 = !DILocalVariable(name: "delta", scope: !352, file: !3, line: 128, type: !23)
!375 = !DILocalVariable(name: "now", scope: !352, file: !3, line: 129, type: !362)
!376 = !DILocalVariable(name: "__base", scope: !377, file: !3, line: 150, type: !115)
!377 = distinct !DILexicalBlock(scope: !352, file: !3, line: 150, column: 16)
!378 = !DILocalVariable(name: "__rem", scope: !377, file: !3, line: 150, type: !115)
!379 = !DILocation(line: 123, column: 56, scope: !352)
!380 = !DILocation(line: 124, column: 39, scope: !352)
!381 = !DILocation(line: 125, column: 27, scope: !352)
!382 = !DILocation(line: 127, column: 2, scope: !352)
!383 = !DILocation(line: 127, column: 6, scope: !352)
!384 = !DILocation(line: 128, column: 2, scope: !352)
!385 = !DILocation(line: 128, column: 6, scope: !352)
!386 = !DILocation(line: 129, column: 2, scope: !352)
!387 = !DILocation(line: 129, column: 20, scope: !352)
!388 = !DILocation(line: 132, column: 2, scope: !352)
!389 = !DILocation(line: 133, column: 13, scope: !390)
!390 = distinct !DILexicalBlock(scope: !352, file: !3, line: 132, column: 5)
!391 = !DILocation(line: 133, column: 25, scope: !390)
!392 = !DILocation(line: 133, column: 11, scope: !390)
!393 = !DILocation(line: 134, column: 3, scope: !390)
!394 = !DILocation(line: 134, column: 3, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !3, line: 134, column: 3)
!396 = !DILocation(line: 134, column: 3, scope: !397)
!397 = distinct !DILexicalBlock(scope: !395, file: !3, line: 134, column: 3)
!398 = !{i64 2154419220}
!399 = !DILocation(line: 142, column: 17, scope: !390)
!400 = !DILocation(line: 142, column: 29, scope: !390)
!401 = !DILocation(line: 142, column: 7, scope: !390)
!402 = !DILocation(line: 142, column: 15, scope: !390)
!403 = !DILocation(line: 143, column: 17, scope: !390)
!404 = !DILocation(line: 143, column: 29, scope: !390)
!405 = !DILocation(line: 143, column: 7, scope: !390)
!406 = !DILocation(line: 143, column: 15, scope: !390)
!407 = !DILocation(line: 144, column: 3, scope: !390)
!408 = !DILocation(line: 144, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !390, file: !3, line: 144, column: 3)
!410 = !DILocation(line: 144, column: 3, scope: !411)
!411 = distinct !DILexicalBlock(scope: !409, file: !3, line: 144, column: 3)
!412 = !{i64 2154419310}
!413 = !DILocation(line: 145, column: 2, scope: !390)
!414 = !DILocation(line: 145, column: 12, scope: !352)
!415 = !DILocation(line: 145, column: 24, scope: !352)
!416 = !DILocation(line: 145, column: 32, scope: !352)
!417 = !DILocation(line: 145, column: 37, scope: !352)
!418 = !DILocation(line: 145, column: 41, scope: !352)
!419 = !DILocation(line: 145, column: 52, scope: !352)
!420 = !DILocation(line: 145, column: 64, scope: !352)
!421 = !DILocation(line: 145, column: 49, scope: !352)
!422 = distinct !{!422, !388, !423, !200, !201}
!423 = !DILocation(line: 145, column: 72, scope: !352)
!424 = !DILocation(line: 147, column: 35, scope: !352)
!425 = !DILocation(line: 147, column: 10, scope: !352)
!426 = !DILocation(line: 147, column: 8, scope: !352)
!427 = !DILocation(line: 148, column: 15, scope: !352)
!428 = !DILocation(line: 148, column: 22, scope: !352)
!429 = !DILocation(line: 148, column: 43, scope: !352)
!430 = !DILocation(line: 148, column: 37, scope: !352)
!431 = !DILocation(line: 148, column: 8, scope: !352)
!432 = !DILocation(line: 150, column: 16, scope: !377)
!433 = !DILocation(line: 150, column: 16, scope: !352)
!434 = !DILocation(line: 150, column: 6, scope: !352)
!435 = !DILocation(line: 150, column: 14, scope: !352)
!436 = !DILocation(line: 151, column: 15, scope: !352)
!437 = !DILocation(line: 151, column: 6, scope: !352)
!438 = !DILocation(line: 151, column: 13, scope: !352)
!439 = !DILocation(line: 153, column: 28, scope: !352)
!440 = !DILocation(line: 153, column: 36, scope: !352)
!441 = !DILocation(line: 153, column: 48, scope: !352)
!442 = !DILocation(line: 153, column: 2, scope: !352)
!443 = !DILocation(line: 154, column: 1, scope: !352)
!444 = !DISubprogram(name: "set_normalized_timespec64", scope: !363, file: !363, line: 66, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !361, !366, !31}
!447 = distinct !DISubprogram(name: "pvclock_set_pvti_cpu0_va", scope: !3, file: !3, line: 156, type: !448, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !54}
!450 = !{!451, !452, !455}
!451 = !DILocalVariable(name: "pvti", arg: 1, scope: !447, file: !3, line: 156, type: !54)
!452 = !DILocalVariable(name: "__ret_warn_on", scope: !453, file: !3, line: 158, type: !454)
!453 = distinct !DILexicalBlock(scope: !447, file: !3, line: 158, column: 2)
!454 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!455 = !DILocalVariable(name: "__flags", scope: !456, file: !3, line: 158, type: !454)
!456 = distinct !DILexicalBlock(scope: !457, file: !3, line: 158, column: 2)
!457 = distinct !DILexicalBlock(scope: !453, file: !3, line: 158, column: 2)
!458 = !DILocation(line: 156, column: 66, scope: !447)
!459 = !DILocation(line: 158, column: 2, scope: !453)
!460 = !DILocation(line: 158, column: 2, scope: !457)
!461 = !DILocation(line: 158, column: 2, scope: !456)
!462 = !DILocation(line: 158, column: 2, scope: !463)
!463 = distinct !DILexicalBlock(scope: !456, file: !3, line: 158, column: 2)
!464 = !DILocation(line: 158, column: 2, scope: !465)
!465 = distinct !DILexicalBlock(scope: !456, file: !3, line: 158, column: 2)
!466 = !{i64 2154420093, i64 2154420122, i64 2154420168, i64 2154420226, i64 2154420280, i64 2154420334, i64 2154420389, i64 2154420420, i64 2154420728, i64 2154420734, i64 2154420781, i64 2154420804, i64 2154420830}
!467 = !DILocation(line: 158, column: 2, scope: !468)
!468 = distinct !DILexicalBlock(scope: !456, file: !3, line: 158, column: 2)
!469 = !DILocation(line: 158, column: 2, scope: !447)
!470 = !DILocation(line: 159, column: 17, scope: !447)
!471 = !DILocation(line: 159, column: 15, scope: !447)
!472 = !DILocation(line: 160, column: 1, scope: !447)
!473 = distinct !DISubprogram(name: "vclock_was_used", scope: !474, file: !474, line: 11, type: !475, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !477)
!474 = !DIFile(filename: "./arch/x86/include/asm/clocksource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6361f957ffa0e49ae33c4db6e2a6729d")
!475 = !DISubroutineType(types: !476)
!476 = !{!237, !454}
!477 = !{!478}
!478 = !DILocalVariable(name: "vclock", arg: 1, scope: !473, file: !474, line: 11, type: !454)
!479 = !DILocation(line: 11, column: 40, scope: !473)
!480 = !DILocation(line: 13, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !473, file: !474, line: 13, column: 9)
!482 = !DILocation(line: 13, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !481, file: !474, line: 13, column: 9)
!484 = !DILocation(line: 13, column: 42, scope: !473)
!485 = !DILocation(line: 13, column: 39, scope: !473)
!486 = !DILocation(line: 13, column: 33, scope: !473)
!487 = !DILocation(line: 13, column: 9, scope: !473)
!488 = !DILocation(line: 13, column: 2, scope: !473)
!489 = distinct !DISubprogram(name: "pvclock_get_pvti_cpu0_va", scope: !3, file: !3, line: 162, type: !490, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!490 = !DISubroutineType(types: !491)
!491 = !{!54}
!492 = !DILocation(line: 164, column: 9, scope: !489)
!493 = !DILocation(line: 164, column: 2, scope: !489)
!494 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !495, file: !495, line: 80, type: !496, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!495 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!496 = !DISubroutineType(types: !497)
!497 = !{null, !498, !501}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 61, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !503, line: 72, baseType: !504)
!503 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !503, line: 16, baseType: !108)
!505 = !{!506, !507}
!506 = !DILocalVariable(name: "v", arg: 1, scope: !494, file: !495, line: 80, type: !498)
!507 = !DILocalVariable(name: "size", arg: 2, scope: !494, file: !495, line: 80, type: !501)
!508 = !DILocation(line: 80, column: 74, scope: !494)
!509 = !DILocation(line: 80, column: 84, scope: !494)
!510 = !DILocation(line: 82, column: 20, scope: !494)
!511 = !DILocation(line: 82, column: 23, scope: !494)
!512 = !DILocation(line: 82, column: 2, scope: !494)
!513 = !DILocation(line: 83, column: 2, scope: !494)
!514 = !DILocation(line: 84, column: 1, scope: !494)
!515 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !516, file: !516, line: 2600, type: !160, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!516 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!517 = !{!518, !519}
!518 = !DILocalVariable(name: "v", arg: 1, scope: !515, file: !516, line: 2600, type: !162)
!519 = !DILocalVariable(name: "i", arg: 2, scope: !515, file: !516, line: 2600, type: !31)
!520 = !DILocation(line: 2600, column: 30, scope: !515)
!521 = !DILocation(line: 2600, column: 37, scope: !515)
!522 = !DILocation(line: 2602, column: 20, scope: !515)
!523 = !DILocation(line: 2602, column: 23, scope: !515)
!524 = !DILocation(line: 2602, column: 2, scope: !515)
!525 = !DILocation(line: 2603, column: 1, scope: !515)
!526 = distinct !DISubprogram(name: "kasan_check_write", scope: !527, file: !527, line: 44, type: !528, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!527 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!528 = !DISubroutineType(types: !529)
!529 = !{!237, !498, !7}
!530 = !{!531, !532}
!531 = !DILocalVariable(name: "p", arg: 1, scope: !526, file: !527, line: 44, type: !498)
!532 = !DILocalVariable(name: "size", arg: 2, scope: !526, file: !527, line: 44, type: !7)
!533 = !DILocation(line: 44, column: 59, scope: !526)
!534 = !DILocation(line: 44, column: 75, scope: !526)
!535 = !DILocation(line: 46, column: 2, scope: !526)
!536 = distinct !DISubprogram(name: "kcsan_check_access", scope: !537, file: !537, line: 229, type: !538, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !540)
!537 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!538 = !DISubroutineType(types: !539)
!539 = !{null, !498, !501, !454}
!540 = !{!541, !542, !543}
!541 = !DILocalVariable(name: "ptr", arg: 1, scope: !536, file: !537, line: 229, type: !498)
!542 = !DILocalVariable(name: "size", arg: 2, scope: !536, file: !537, line: 229, type: !501)
!543 = !DILocalVariable(name: "type", arg: 3, scope: !536, file: !537, line: 230, type: !454)
!544 = !DILocation(line: 229, column: 60, scope: !536)
!545 = !DILocation(line: 229, column: 72, scope: !536)
!546 = !DILocation(line: 230, column: 15, scope: !536)
!547 = !DILocation(line: 230, column: 23, scope: !536)
!548 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !549, file: !549, line: 18, type: !160, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !550)
!549 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!550 = !{!551, !552}
!551 = !DILocalVariable(name: "v", arg: 1, scope: !548, file: !549, line: 18, type: !162)
!552 = !DILocalVariable(name: "i", arg: 2, scope: !548, file: !549, line: 18, type: !31)
!553 = !DILocation(line: 18, column: 59, scope: !548)
!554 = !DILocation(line: 18, column: 66, scope: !548)
!555 = !DILocation(line: 20, column: 2, scope: !548)
!556 = !DILocation(line: 20, column: 2, scope: !557)
!557 = distinct !DILexicalBlock(scope: !548, file: !549, line: 20, column: 2)
!558 = !DILocation(line: 21, column: 1, scope: !548)
!559 = distinct !DISubprogram(name: "__pvclock_read_cycles", scope: !56, file: !56, line: 83, type: !560, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{!23, !210, !23}
!562 = !{!563, !564, !565, !566}
!563 = !DILocalVariable(name: "src", arg: 1, scope: !559, file: !56, line: 83, type: !210)
!564 = !DILocalVariable(name: "tsc", arg: 2, scope: !559, file: !56, line: 83, type: !23)
!565 = !DILocalVariable(name: "delta", scope: !559, file: !56, line: 85, type: !23)
!566 = !DILocalVariable(name: "offset", scope: !559, file: !56, line: 86, type: !23)
!567 = !DILocation(line: 83, column: 64, scope: !559)
!568 = !DILocation(line: 83, column: 73, scope: !559)
!569 = !DILocation(line: 85, column: 2, scope: !559)
!570 = !DILocation(line: 85, column: 6, scope: !559)
!571 = !DILocation(line: 85, column: 14, scope: !559)
!572 = !DILocation(line: 85, column: 20, scope: !559)
!573 = !DILocation(line: 85, column: 25, scope: !559)
!574 = !DILocation(line: 85, column: 18, scope: !559)
!575 = !DILocation(line: 86, column: 2, scope: !559)
!576 = !DILocation(line: 86, column: 6, scope: !559)
!577 = !DILocation(line: 86, column: 35, scope: !559)
!578 = !DILocation(line: 86, column: 42, scope: !559)
!579 = !DILocation(line: 86, column: 47, scope: !559)
!580 = !DILocation(line: 87, column: 11, scope: !559)
!581 = !DILocation(line: 87, column: 16, scope: !559)
!582 = !DILocation(line: 86, column: 15, scope: !559)
!583 = !DILocation(line: 88, column: 9, scope: !559)
!584 = !DILocation(line: 88, column: 14, scope: !559)
!585 = !DILocation(line: 88, column: 28, scope: !559)
!586 = !DILocation(line: 88, column: 26, scope: !559)
!587 = !DILocation(line: 89, column: 1, scope: !559)
!588 = !DILocation(line: 88, column: 2, scope: !559)
!589 = distinct !DISubprogram(name: "rdtsc_ordered", scope: !590, file: !590, line: 197, type: !591, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!590 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!591 = !DISubroutineType(types: !592)
!592 = !{!27}
!593 = !{!594, !595}
!594 = !DILocalVariable(name: "low", scope: !589, file: !590, line: 199, type: !108)
!595 = !DILocalVariable(name: "high", scope: !589, file: !590, line: 199, type: !108)
!596 = !DILocation(line: 199, column: 2, scope: !589)
!597 = !DILocation(line: 215, column: 2, scope: !589)
!598 = !{i64 2149207824, i64 2149207857, i64 2149207863, i64 2149207879, i64 2149207898, i64 2149207929, i64 2149208881, i64 2149207455, i64 2149208887, i64 2149208935, i64 2149208999, i64 2149209063, i64 2149209120, i64 2149209327, i64 2149209375, i64 2149209439, i64 2149209503, i64 2149209560, i64 2149207573, i64 2149207598, i64 2149209767, i64 2149209896, i64 2149209828, i64 2149209910, i64 2149209924, i64 2149210046, i64 2149209985, i64 2149210060, i64 2149207732}
!599 = !DILocation(line: 222, column: 9, scope: !589)
!600 = !DILocation(line: 223, column: 1, scope: !589)
!601 = !DILocation(line: 222, column: 2, scope: !589)
!602 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !516, file: !516, line: 2554, type: !603, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !607)
!603 = !DISubroutineType(types: !604)
!604 = !{!31, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!607 = !{!608}
!608 = !DILocalVariable(name: "v", arg: 1, scope: !602, file: !516, line: 2554, type: !605)
!609 = !DILocation(line: 2554, column: 37, scope: !602)
!610 = !DILocation(line: 2556, column: 28, scope: !602)
!611 = !DILocation(line: 2556, column: 9, scope: !602)
!612 = !DILocation(line: 2556, column: 2, scope: !602)
!613 = distinct !DISubprogram(name: "raw_atomic64_try_cmpxchg", scope: !516, file: !516, line: 4221, type: !614, scopeLine: 4222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{!237, !162, !37, !31}
!616 = !{!617, !618, !619}
!617 = !DILocalVariable(name: "v", arg: 1, scope: !613, file: !516, line: 4221, type: !162)
!618 = !DILocalVariable(name: "old", arg: 2, scope: !613, file: !516, line: 4221, type: !37)
!619 = !DILocalVariable(name: "new", arg: 3, scope: !613, file: !516, line: 4221, type: !31)
!620 = !DILocation(line: 4221, column: 38, scope: !613)
!621 = !DILocation(line: 4221, column: 46, scope: !613)
!622 = !DILocation(line: 4221, column: 55, scope: !613)
!623 = !DILocation(line: 4224, column: 35, scope: !613)
!624 = !DILocation(line: 4224, column: 38, scope: !613)
!625 = !DILocation(line: 4224, column: 43, scope: !613)
!626 = !DILocation(line: 4224, column: 9, scope: !613)
!627 = !DILocation(line: 4224, column: 2, scope: !613)
!628 = distinct !DISubprogram(name: "pvclock_scale_delta", scope: !56, file: !56, line: 43, type: !629, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!23, !23, !63, !454}
!631 = !{!632, !633, !634, !635, !636}
!632 = !DILocalVariable(name: "delta", arg: 1, scope: !628, file: !56, line: 43, type: !23)
!633 = !DILocalVariable(name: "mul_frac", arg: 2, scope: !628, file: !56, line: 43, type: !63)
!634 = !DILocalVariable(name: "shift", arg: 3, scope: !628, file: !56, line: 43, type: !454)
!635 = !DILocalVariable(name: "product", scope: !628, file: !56, line: 45, type: !23)
!636 = !DILocalVariable(name: "tmp", scope: !628, file: !56, line: 49, type: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulong", file: !22, line: 94, baseType: !108)
!638 = !DILocation(line: 43, column: 52, scope: !628)
!639 = !DILocation(line: 43, column: 63, scope: !628)
!640 = !DILocation(line: 43, column: 77, scope: !628)
!641 = !DILocation(line: 45, column: 2, scope: !628)
!642 = !DILocation(line: 45, column: 6, scope: !628)
!643 = !DILocation(line: 49, column: 2, scope: !628)
!644 = !DILocation(line: 49, column: 8, scope: !628)
!645 = !DILocation(line: 52, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !628, file: !56, line: 52, column: 6)
!647 = !DILocation(line: 52, column: 12, scope: !646)
!648 = !DILocation(line: 52, column: 6, scope: !628)
!649 = !DILocation(line: 53, column: 14, scope: !646)
!650 = !DILocation(line: 53, column: 13, scope: !646)
!651 = !DILocation(line: 53, column: 9, scope: !646)
!652 = !DILocation(line: 53, column: 3, scope: !646)
!653 = !DILocation(line: 55, column: 13, scope: !646)
!654 = !DILocation(line: 55, column: 9, scope: !646)
!655 = !DILocation(line: 73, column: 9, scope: !628)
!656 = !DILocation(line: 74, column: 25, scope: !628)
!657 = !DILocation(line: 74, column: 20, scope: !628)
!658 = !DILocation(line: 69, column: 2, scope: !628)
!659 = !{i64 6844021}
!660 = !DILocation(line: 79, column: 9, scope: !628)
!661 = !DILocation(line: 80, column: 1, scope: !628)
!662 = !DILocation(line: 79, column: 2, scope: !628)
!663 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !549, file: !549, line: 13, type: !603, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!664 = !{!665}
!665 = !DILocalVariable(name: "v", arg: 1, scope: !663, file: !549, line: 13, type: !605)
!666 = !DILocation(line: 13, column: 65, scope: !663)
!667 = !DILocation(line: 15, column: 9, scope: !663)
!668 = !DILocation(line: 15, column: 2, scope: !663)
!669 = distinct !DISubprogram(name: "arch_atomic64_try_cmpxchg", scope: !549, file: !549, line: 107, type: !614, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!670 = !{!671, !672, !673, !674, !676, !677, !678, !679}
!671 = !DILocalVariable(name: "v", arg: 1, scope: !669, file: !549, line: 107, type: !162)
!672 = !DILocalVariable(name: "old", arg: 2, scope: !669, file: !549, line: 107, type: !37)
!673 = !DILocalVariable(name: "new", arg: 3, scope: !669, file: !549, line: 107, type: !31)
!674 = !DILocalVariable(name: "success", scope: !675, file: !549, line: 109, type: !237)
!675 = distinct !DILexicalBlock(scope: !669, file: !549, line: 109, column: 9)
!676 = !DILocalVariable(name: "_old", scope: !675, file: !549, line: 109, type: !37)
!677 = !DILocalVariable(name: "__old", scope: !675, file: !549, line: 109, type: !31)
!678 = !DILocalVariable(name: "__new", scope: !675, file: !549, line: 109, type: !31)
!679 = !DILocalVariable(name: "__ptr", scope: !675, file: !549, line: 109, type: !38)
!680 = !DILocation(line: 107, column: 67, scope: !669)
!681 = !DILocation(line: 107, column: 75, scope: !669)
!682 = !DILocation(line: 107, column: 84, scope: !669)
!683 = !DILocation(line: 109, column: 9, scope: !675)
!684 = !{i64 2148699633, i64 2148699672, i64 2148699693, i64 2148699730, i64 2148699753, i64 2148699762, i64 2148699963}
!685 = !DILocation(line: 109, column: 9, scope: !686)
!686 = distinct !DILexicalBlock(scope: !675, file: !549, line: 109, column: 9)
!687 = !DILocation(line: 109, column: 9, scope: !669)
!688 = !DILocation(line: 109, column: 2, scope: !669)
