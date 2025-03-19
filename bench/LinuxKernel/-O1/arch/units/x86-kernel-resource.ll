; ModuleID = 'arch/x86/kernel/resource.c'
source_filename = "arch/x86/kernel/resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.e820_table = type { i32, [320 x %struct.e820_entry] }
%struct.e820_entry = type <{ i64, i64, i32 }>

@pci_use_e820 = external dso_local global i8, align 1
@e820_table = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [71 x i8] c"\016resource: avoiding allocation from e820 entry [mem %#010Lx-%#010Lx]\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [47 x i8] c"\016resource: remaining [mem %pa-%pa] available\0A\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_remove_reservations(ptr noundef %avail) #0 align 16 !dbg !37 {
entry:
  %avail.addr = alloca ptr, align 8
  store ptr %avail, ptr %avail.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %avail.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load ptr, ptr %avail.addr, align 8, !dbg !66
  %flags = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3, !dbg !68
  %1 = load i64, ptr %flags, align 8, !dbg !68
  %and = and i64 %1, 512, !dbg !69
  %tobool = icmp ne i64 %and, 0, !dbg !69
  br i1 %tobool, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %avail.addr, align 8, !dbg !71
  call void @resource_clip(ptr noundef %2, i64 noundef 4292870144, i64 noundef 4294967295) #5, !dbg !73
  %3 = load ptr, ptr %avail.addr, align 8, !dbg !74
  call void @remove_e820_regions(ptr noundef %3) #5, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !77
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @resource_clip(ptr noundef %res, i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !78 {
entry:
  %res.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !82, metadata !DIExpression()), !dbg !87
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !83, metadata !DIExpression()), !dbg !88
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !84, metadata !DIExpression()), !dbg !89
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #6, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %low, metadata !85, metadata !DIExpression()), !dbg !91
  store i64 0, ptr %low, align 8, !dbg !91
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #6, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %high, metadata !86, metadata !DIExpression()), !dbg !92
  store i64 0, ptr %high, align 8, !dbg !92
  %0 = load ptr, ptr %res.addr, align 8, !dbg !93
  %end1 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !95
  %1 = load i64, ptr %end1, align 8, !dbg !95
  %2 = load i64, ptr %start.addr, align 8, !dbg !96
  %cmp = icmp ult i64 %1, %2, !dbg !97
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !98

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %res.addr, align 8, !dbg !99
  %start2 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 0, !dbg !100
  %4 = load i64, ptr %start2, align 8, !dbg !100
  %5 = load i64, ptr %end.addr, align 8, !dbg !101
  %cmp3 = icmp ugt i64 %4, %5, !dbg !102
  br i1 %cmp3, label %if.then, label %if.end, !dbg !103

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !104

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %res.addr, align 8, !dbg !105
  %start4 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 0, !dbg !107
  %7 = load i64, ptr %start4, align 8, !dbg !107
  %8 = load i64, ptr %start.addr, align 8, !dbg !108
  %cmp5 = icmp ult i64 %7, %8, !dbg !109
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !110

if.then6:                                         ; preds = %if.end
  %9 = load i64, ptr %start.addr, align 8, !dbg !111
  %10 = load ptr, ptr %res.addr, align 8, !dbg !112
  %start7 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 0, !dbg !113
  %11 = load i64, ptr %start7, align 8, !dbg !113
  %sub = sub i64 %9, %11, !dbg !114
  store i64 %sub, ptr %low, align 8, !dbg !115
  br label %if.end8, !dbg !116

if.end8:                                          ; preds = %if.then6, %if.end
  %12 = load ptr, ptr %res.addr, align 8, !dbg !117
  %end9 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1, !dbg !119
  %13 = load i64, ptr %end9, align 8, !dbg !119
  %14 = load i64, ptr %end.addr, align 8, !dbg !120
  %cmp10 = icmp ugt i64 %13, %14, !dbg !121
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !122

if.then11:                                        ; preds = %if.end8
  %15 = load ptr, ptr %res.addr, align 8, !dbg !123
  %end12 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 1, !dbg !124
  %16 = load i64, ptr %end12, align 8, !dbg !124
  %17 = load i64, ptr %end.addr, align 8, !dbg !125
  %sub13 = sub i64 %16, %17, !dbg !126
  store i64 %sub13, ptr %high, align 8, !dbg !127
  br label %if.end14, !dbg !128

if.end14:                                         ; preds = %if.then11, %if.end8
  %18 = load i64, ptr %low, align 8, !dbg !129
  %19 = load i64, ptr %high, align 8, !dbg !131
  %cmp15 = icmp ugt i64 %18, %19, !dbg !132
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !133

if.then16:                                        ; preds = %if.end14
  %20 = load i64, ptr %start.addr, align 8, !dbg !134
  %sub17 = sub i64 %20, 1, !dbg !135
  %21 = load ptr, ptr %res.addr, align 8, !dbg !136
  %end18 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1, !dbg !137
  store i64 %sub17, ptr %end18, align 8, !dbg !138
  br label %if.end20, !dbg !136

if.else:                                          ; preds = %if.end14
  %22 = load i64, ptr %end.addr, align 8, !dbg !139
  %add = add i64 %22, 1, !dbg !140
  %23 = load ptr, ptr %res.addr, align 8, !dbg !141
  %start19 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 0, !dbg !142
  store i64 %add, ptr %start19, align 8, !dbg !143
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !144
  br label %cleanup, !dbg !144

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #6, !dbg !144
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #6, !dbg !144
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !144

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_e820_regions(ptr noundef %avail) #0 align 16 !dbg !145 {
entry:
  %avail.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %e820_start = alloca i64, align 8
  %e820_end = alloca i64, align 8
  %orig = alloca %struct.resource, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  store ptr %avail, ptr %avail.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %avail.addr, metadata !147, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %i, metadata !148, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #6, !dbg !163
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !150, metadata !DIExpression()), !dbg !164
  call void @llvm.lifetime.start.p0(i64 8, ptr %e820_start) #6, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %e820_start, metadata !157, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.start.p0(i64 8, ptr %e820_end) #6, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %e820_end, metadata !158, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 64, ptr %orig) #6, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %orig, metadata !159, metadata !DIExpression()), !dbg !169
  %0 = load ptr, ptr %avail.addr, align 8, !dbg !170
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %orig, ptr align 8 %0, i64 64, i1 false), !dbg !171
  %1 = load i8, ptr @pci_use_e820, align 1, !dbg !172, !range !174, !noundef !175
  %tobool = trunc i8 %1 to i1, !dbg !172
  br i1 %tobool, label %if.end, label %if.then, !dbg !176

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !177

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !178
  br label %for.cond, !dbg !180

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !181
  %3 = load ptr, ptr @e820_table, align 8, !dbg !183
  %nr_entries = getelementptr inbounds %struct.e820_table, ptr %3, i32 0, i32 0, !dbg !184
  %4 = load i32, ptr %nr_entries, align 4, !dbg !184
  %cmp = icmp ult i32 %2, %4, !dbg !185
  br i1 %cmp, label %for.body, label %for.end, !dbg !186

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr @e820_table, align 8, !dbg !187
  %entries = getelementptr inbounds %struct.e820_table, ptr %5, i32 0, i32 1, !dbg !189
  %6 = load i32, ptr %i, align 4, !dbg !190
  %idxprom = sext i32 %6 to i64, !dbg !187
  %arrayidx = getelementptr [320 x %struct.e820_entry], ptr %entries, i64 0, i64 %idxprom, !dbg !187
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !191
  %7 = load ptr, ptr %entry1, align 8, !dbg !192
  %addr = getelementptr inbounds %struct.e820_entry, ptr %7, i32 0, i32 0, !dbg !193
  %8 = load i64, ptr %addr, align 1, !dbg !193
  store i64 %8, ptr %e820_start, align 8, !dbg !194
  %9 = load ptr, ptr %entry1, align 8, !dbg !195
  %addr2 = getelementptr inbounds %struct.e820_entry, ptr %9, i32 0, i32 0, !dbg !196
  %10 = load i64, ptr %addr2, align 1, !dbg !196
  %11 = load ptr, ptr %entry1, align 8, !dbg !197
  %size = getelementptr inbounds %struct.e820_entry, ptr %11, i32 0, i32 1, !dbg !198
  %12 = load i64, ptr %size, align 1, !dbg !198
  %add = add i64 %10, %12, !dbg !199
  %sub = sub i64 %add, 1, !dbg !200
  store i64 %sub, ptr %e820_end, align 8, !dbg !201
  %13 = load ptr, ptr %avail.addr, align 8, !dbg !202
  %14 = load i64, ptr %e820_start, align 8, !dbg !203
  %15 = load i64, ptr %e820_end, align 8, !dbg !204
  call void @resource_clip(ptr noundef %13, i64 noundef %14, i64 noundef %15) #5, !dbg !205
  %start = getelementptr inbounds %struct.resource, ptr %orig, i32 0, i32 0, !dbg !206
  %16 = load i64, ptr %start, align 8, !dbg !206
  %17 = load ptr, ptr %avail.addr, align 8, !dbg !208
  %start3 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 0, !dbg !209
  %18 = load i64, ptr %start3, align 8, !dbg !209
  %cmp4 = icmp ne i64 %16, %18, !dbg !210
  br i1 %cmp4, label %if.then7, label %lor.lhs.false, !dbg !211

lor.lhs.false:                                    ; preds = %for.body
  %end = getelementptr inbounds %struct.resource, ptr %orig, i32 0, i32 1, !dbg !212
  %19 = load i64, ptr %end, align 8, !dbg !212
  %20 = load ptr, ptr %avail.addr, align 8, !dbg !213
  %end5 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 1, !dbg !214
  %21 = load i64, ptr %end5, align 8, !dbg !214
  %cmp6 = icmp ne i64 %19, %21, !dbg !215
  br i1 %cmp6, label %if.then7, label %if.end20, !dbg !216

if.then7:                                         ; preds = %lor.lhs.false, %for.body
  br label %do.body, !dbg !217

do.body:                                          ; preds = %if.then7
  br label %do.cond, !dbg !220

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !220

do.end:                                           ; preds = %do.cond
  %22 = load i64, ptr %e820_start, align 8, !dbg !217
  %23 = load i64, ptr %e820_end, align 8, !dbg !217
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, i64 noundef %22, i64 noundef %23) #7, !dbg !217
  store i32 %call, ptr %tmp, align 4, !dbg !220
  %24 = load i32, ptr %tmp, align 4, !dbg !217
  %25 = load ptr, ptr %avail.addr, align 8, !dbg !222
  %end8 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1, !dbg !224
  %26 = load i64, ptr %end8, align 8, !dbg !224
  %27 = load ptr, ptr %avail.addr, align 8, !dbg !225
  %start9 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 0, !dbg !226
  %28 = load i64, ptr %start9, align 8, !dbg !226
  %cmp10 = icmp ugt i64 %26, %28, !dbg !227
  br i1 %cmp10, label %if.then11, label %if.end19, !dbg !228

if.then11:                                        ; preds = %do.end
  br label %do.body12, !dbg !229

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !231

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !231

do.end14:                                         ; preds = %do.cond13
  %29 = load ptr, ptr %avail.addr, align 8, !dbg !229
  %start16 = getelementptr inbounds %struct.resource, ptr %29, i32 0, i32 0, !dbg !229
  %30 = load ptr, ptr %avail.addr, align 8, !dbg !229
  %end17 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 1, !dbg !229
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %start16, ptr noundef %end17) #7, !dbg !229
  store i32 %call18, ptr %tmp15, align 4, !dbg !231
  %31 = load i32, ptr %tmp15, align 4, !dbg !229
  br label %if.end19, !dbg !233

if.end19:                                         ; preds = %do.end14, %do.end
  %32 = load ptr, ptr %avail.addr, align 8, !dbg !234
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %orig, ptr align 8 %32, i64 64, i1 false), !dbg !235
  br label %if.end20, !dbg !236

if.end20:                                         ; preds = %if.end19, %lor.lhs.false
  br label %for.inc, !dbg !237

for.inc:                                          ; preds = %if.end20
  %33 = load i32, ptr %i, align 4, !dbg !238
  %inc = add i32 %33, 1, !dbg !238
  store i32 %inc, ptr %i, align 4, !dbg !238
  br label %for.cond, !dbg !239, !llvm.loop !240

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !244
  br label %cleanup, !dbg !244

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %orig) #6, !dbg !244
  call void @llvm.lifetime.end.p0(i64 8, ptr %e820_end) #6, !dbg !244
  call void @llvm.lifetime.end.p0(i64 8, ptr %e820_start) #6, !dbg !244
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #6, !dbg !244
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !244
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !244

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !245 dso_local i32 @_printk(ptr noundef, ...) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/resource.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0825cdf80ee396d2d1cd12cf3f6b67d5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 71)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 47)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.resource.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/resource\22 -D KBUILD_BASENAME=\22resource\22 -D KBUILD_MODNAME=\22resource\22 -D __KBUILD_MODNAME=kmod_resource -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/resource.ll arch/x86/kernel/resource.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !13, globals: !27, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "e820_type", file: !15, line: 10, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "./arch/x86/include/asm/e820/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3d4b2499539a4fc8ec760e67f9268a5")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26}
!18 = !DIEnumerator(name: "E820_TYPE_RAM", value: 1)
!19 = !DIEnumerator(name: "E820_TYPE_RESERVED", value: 2)
!20 = !DIEnumerator(name: "E820_TYPE_ACPI", value: 3)
!21 = !DIEnumerator(name: "E820_TYPE_NVS", value: 4)
!22 = !DIEnumerator(name: "E820_TYPE_UNUSABLE", value: 5)
!23 = !DIEnumerator(name: "E820_TYPE_PMEM", value: 7)
!24 = !DIEnumerator(name: "E820_TYPE_PRAM", value: 12)
!25 = !DIEnumerator(name: "E820_TYPE_SOFT_RESERVED", value: 4026531839, isUnsigned: true)
!26 = !DIEnumerator(name: "E820_TYPE_RESERVED_KERN", value: 128)
!27 = !{!0, !7}
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 8, !"cf-protection-branch", i32 1}
!32 = !{i32 4, !"function_return_thunk_extern", i32 1}
!33 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!34 = !{i32 1, !"Code Model", i32 2}
!35 = !{i32 1, !"override-stack-alignment", i32 8}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = distinct !DISubprogram(name: "arch_remove_reservations", scope: !2, file: !2, line: 60, type: !38, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !63)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !42, line: 21, size: 512, elements: !43)
!42 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!43 = !{!44, !53, !54, !57, !59, !60, !61, !62}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !41, file: !42, line: 22, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !46, line: 164, baseType: !47)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !46, line: 159, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !49, line: 23, baseType: !50)
!49 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !51, line: 31, baseType: !52)
!51 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!52 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !41, file: !42, line: 23, baseType: !45, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !42, line: 24, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !42, line: 25, baseType: !58, size: 64, offset: 192)
!58 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !41, file: !42, line: 26, baseType: !58, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !41, file: !42, line: 27, baseType: !40, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !41, file: !42, line: 27, baseType: !40, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !41, file: !42, line: 27, baseType: !40, size: 64, offset: 448)
!63 = !{!64}
!64 = !DILocalVariable(name: "avail", arg: 1, scope: !37, file: !2, line: 60, type: !40)
!65 = !DILocation(line: 60, column: 48, scope: !37)
!66 = !DILocation(line: 67, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !37, file: !2, line: 67, column: 6)
!68 = !DILocation(line: 67, column: 13, scope: !67)
!69 = !DILocation(line: 67, column: 19, scope: !67)
!70 = !DILocation(line: 67, column: 6, scope: !37)
!71 = !DILocation(line: 68, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !2, line: 67, column: 37)
!73 = !DILocation(line: 68, column: 3, scope: !72)
!74 = !DILocation(line: 70, column: 23, scope: !72)
!75 = !DILocation(line: 70, column: 3, scope: !72)
!76 = !DILocation(line: 71, column: 2, scope: !72)
!77 = !DILocation(line: 72, column: 1, scope: !37)
!78 = distinct !DISubprogram(name: "resource_clip", scope: !2, file: !2, line: 7, type: !79, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !40, !45, !45}
!81 = !{!82, !83, !84, !85, !86}
!82 = !DILocalVariable(name: "res", arg: 1, scope: !78, file: !2, line: 7, type: !40)
!83 = !DILocalVariable(name: "start", arg: 2, scope: !78, file: !2, line: 7, type: !45)
!84 = !DILocalVariable(name: "end", arg: 3, scope: !78, file: !2, line: 8, type: !45)
!85 = !DILocalVariable(name: "low", scope: !78, file: !2, line: 10, type: !45)
!86 = !DILocalVariable(name: "high", scope: !78, file: !2, line: 10, type: !45)
!87 = !DILocation(line: 7, column: 44, scope: !78)
!88 = !DILocation(line: 7, column: 65, scope: !78)
!89 = !DILocation(line: 8, column: 22, scope: !78)
!90 = !DILocation(line: 10, column: 2, scope: !78)
!91 = !DILocation(line: 10, column: 18, scope: !78)
!92 = !DILocation(line: 10, column: 27, scope: !78)
!93 = !DILocation(line: 12, column: 6, scope: !94)
!94 = distinct !DILexicalBlock(scope: !78, file: !2, line: 12, column: 6)
!95 = !DILocation(line: 12, column: 11, scope: !94)
!96 = !DILocation(line: 12, column: 17, scope: !94)
!97 = !DILocation(line: 12, column: 15, scope: !94)
!98 = !DILocation(line: 12, column: 23, scope: !94)
!99 = !DILocation(line: 12, column: 26, scope: !94)
!100 = !DILocation(line: 12, column: 31, scope: !94)
!101 = !DILocation(line: 12, column: 39, scope: !94)
!102 = !DILocation(line: 12, column: 37, scope: !94)
!103 = !DILocation(line: 12, column: 6, scope: !78)
!104 = !DILocation(line: 13, column: 3, scope: !94)
!105 = !DILocation(line: 15, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !78, file: !2, line: 15, column: 6)
!107 = !DILocation(line: 15, column: 11, scope: !106)
!108 = !DILocation(line: 15, column: 19, scope: !106)
!109 = !DILocation(line: 15, column: 17, scope: !106)
!110 = !DILocation(line: 15, column: 6, scope: !78)
!111 = !DILocation(line: 16, column: 9, scope: !106)
!112 = !DILocation(line: 16, column: 17, scope: !106)
!113 = !DILocation(line: 16, column: 22, scope: !106)
!114 = !DILocation(line: 16, column: 15, scope: !106)
!115 = !DILocation(line: 16, column: 7, scope: !106)
!116 = !DILocation(line: 16, column: 3, scope: !106)
!117 = !DILocation(line: 18, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !78, file: !2, line: 18, column: 6)
!119 = !DILocation(line: 18, column: 11, scope: !118)
!120 = !DILocation(line: 18, column: 17, scope: !118)
!121 = !DILocation(line: 18, column: 15, scope: !118)
!122 = !DILocation(line: 18, column: 6, scope: !78)
!123 = !DILocation(line: 19, column: 10, scope: !118)
!124 = !DILocation(line: 19, column: 15, scope: !118)
!125 = !DILocation(line: 19, column: 21, scope: !118)
!126 = !DILocation(line: 19, column: 19, scope: !118)
!127 = !DILocation(line: 19, column: 8, scope: !118)
!128 = !DILocation(line: 19, column: 3, scope: !118)
!129 = !DILocation(line: 22, column: 6, scope: !130)
!130 = distinct !DILexicalBlock(scope: !78, file: !2, line: 22, column: 6)
!131 = !DILocation(line: 22, column: 12, scope: !130)
!132 = !DILocation(line: 22, column: 10, scope: !130)
!133 = !DILocation(line: 22, column: 6, scope: !78)
!134 = !DILocation(line: 23, column: 14, scope: !130)
!135 = !DILocation(line: 23, column: 20, scope: !130)
!136 = !DILocation(line: 23, column: 3, scope: !130)
!137 = !DILocation(line: 23, column: 8, scope: !130)
!138 = !DILocation(line: 23, column: 12, scope: !130)
!139 = !DILocation(line: 25, column: 16, scope: !130)
!140 = !DILocation(line: 25, column: 20, scope: !130)
!141 = !DILocation(line: 25, column: 3, scope: !130)
!142 = !DILocation(line: 25, column: 8, scope: !130)
!143 = !DILocation(line: 25, column: 14, scope: !130)
!144 = !DILocation(line: 26, column: 1, scope: !78)
!145 = distinct !DISubprogram(name: "remove_e820_regions", scope: !2, file: !2, line: 28, type: !38, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !146)
!146 = !{!147, !148, !150, !157, !158, !159}
!147 = !DILocalVariable(name: "avail", arg: 1, scope: !145, file: !2, line: 28, type: !40)
!148 = !DILocalVariable(name: "i", scope: !145, file: !2, line: 30, type: !149)
!149 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!150 = !DILocalVariable(name: "entry", scope: !145, file: !2, line: 31, type: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e820_entry", file: !15, line: 55, size: 160, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !152, file: !15, line: 56, baseType: !48, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !152, file: !15, line: 57, baseType: !48, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !15, line: 58, baseType: !14, size: 32, offset: 128)
!157 = !DILocalVariable(name: "e820_start", scope: !145, file: !2, line: 32, type: !48)
!158 = !DILocalVariable(name: "e820_end", scope: !145, file: !2, line: 32, type: !48)
!159 = !DILocalVariable(name: "orig", scope: !145, file: !2, line: 33, type: !41)
!160 = !DILocation(line: 28, column: 50, scope: !145)
!161 = !DILocation(line: 30, column: 2, scope: !145)
!162 = !DILocation(line: 30, column: 6, scope: !145)
!163 = !DILocation(line: 31, column: 2, scope: !145)
!164 = !DILocation(line: 31, column: 21, scope: !145)
!165 = !DILocation(line: 32, column: 2, scope: !145)
!166 = !DILocation(line: 32, column: 6, scope: !145)
!167 = !DILocation(line: 32, column: 18, scope: !145)
!168 = !DILocation(line: 33, column: 2, scope: !145)
!169 = !DILocation(line: 33, column: 18, scope: !145)
!170 = !DILocation(line: 33, column: 26, scope: !145)
!171 = !DILocation(line: 33, column: 25, scope: !145)
!172 = !DILocation(line: 35, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !145, file: !2, line: 35, column: 6)
!174 = !{i8 0, i8 2}
!175 = !{}
!176 = !DILocation(line: 35, column: 6, scope: !145)
!177 = !DILocation(line: 36, column: 3, scope: !173)
!178 = !DILocation(line: 38, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !145, file: !2, line: 38, column: 2)
!180 = !DILocation(line: 38, column: 7, scope: !179)
!181 = !DILocation(line: 38, column: 14, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !2, line: 38, column: 2)
!183 = !DILocation(line: 38, column: 18, scope: !182)
!184 = !DILocation(line: 38, column: 30, scope: !182)
!185 = !DILocation(line: 38, column: 16, scope: !182)
!186 = !DILocation(line: 38, column: 2, scope: !179)
!187 = !DILocation(line: 39, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !182, file: !2, line: 38, column: 47)
!189 = !DILocation(line: 39, column: 24, scope: !188)
!190 = !DILocation(line: 39, column: 32, scope: !188)
!191 = !DILocation(line: 39, column: 9, scope: !188)
!192 = !DILocation(line: 40, column: 16, scope: !188)
!193 = !DILocation(line: 40, column: 23, scope: !188)
!194 = !DILocation(line: 40, column: 14, scope: !188)
!195 = !DILocation(line: 41, column: 14, scope: !188)
!196 = !DILocation(line: 41, column: 21, scope: !188)
!197 = !DILocation(line: 41, column: 28, scope: !188)
!198 = !DILocation(line: 41, column: 35, scope: !188)
!199 = !DILocation(line: 41, column: 26, scope: !188)
!200 = !DILocation(line: 41, column: 40, scope: !188)
!201 = !DILocation(line: 41, column: 12, scope: !188)
!202 = !DILocation(line: 43, column: 17, scope: !188)
!203 = !DILocation(line: 43, column: 24, scope: !188)
!204 = !DILocation(line: 43, column: 36, scope: !188)
!205 = !DILocation(line: 43, column: 3, scope: !188)
!206 = !DILocation(line: 44, column: 12, scope: !207)
!207 = distinct !DILexicalBlock(scope: !188, file: !2, line: 44, column: 7)
!208 = !DILocation(line: 44, column: 21, scope: !207)
!209 = !DILocation(line: 44, column: 28, scope: !207)
!210 = !DILocation(line: 44, column: 18, scope: !207)
!211 = !DILocation(line: 44, column: 34, scope: !207)
!212 = !DILocation(line: 44, column: 42, scope: !207)
!213 = !DILocation(line: 44, column: 49, scope: !207)
!214 = !DILocation(line: 44, column: 56, scope: !207)
!215 = !DILocation(line: 44, column: 46, scope: !207)
!216 = !DILocation(line: 44, column: 7, scope: !188)
!217 = !DILocation(line: 45, column: 4, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 45, column: 4)
!219 = distinct !DILexicalBlock(scope: !207, file: !2, line: 44, column: 61)
!220 = !DILocation(line: 45, column: 4, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !2, line: 45, column: 4)
!222 = !DILocation(line: 47, column: 8, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !2, line: 47, column: 8)
!224 = !DILocation(line: 47, column: 15, scope: !223)
!225 = !DILocation(line: 47, column: 21, scope: !223)
!226 = !DILocation(line: 47, column: 28, scope: !223)
!227 = !DILocation(line: 47, column: 19, scope: !223)
!228 = !DILocation(line: 47, column: 8, scope: !219)
!229 = !DILocation(line: 53, column: 5, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !2, line: 53, column: 5)
!231 = !DILocation(line: 53, column: 5, scope: !232)
!232 = distinct !DILexicalBlock(scope: !230, file: !2, line: 53, column: 5)
!233 = !DILocation(line: 53, column: 5, scope: !223)
!234 = !DILocation(line: 55, column: 12, scope: !219)
!235 = !DILocation(line: 55, column: 11, scope: !219)
!236 = !DILocation(line: 56, column: 3, scope: !219)
!237 = !DILocation(line: 57, column: 2, scope: !188)
!238 = !DILocation(line: 38, column: 43, scope: !182)
!239 = !DILocation(line: 38, column: 2, scope: !182)
!240 = distinct !{!240, !186, !241, !242, !243}
!241 = !DILocation(line: 57, column: 2, scope: !179)
!242 = !{!"llvm.loop.mustprogress"}
!243 = !{!"llvm.loop.unroll.disable"}
!244 = !DILocation(line: 58, column: 1, scope: !145)
!245 = !DISubprogram(name: "_printk", scope: !246, file: !246, line: 153, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!247 = !DISubroutineType(types: !248)
!248 = !{!149, !55, null}
