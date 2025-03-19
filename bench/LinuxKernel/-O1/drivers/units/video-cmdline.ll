; ModuleID = 'drivers/video/cmdline.c'
source_filename = "drivers/video/cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_video_get_options: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad video_get_options ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___video_get_options: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __video_get_options ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }

@__UNIQUE_ID___addressable_video_get_options350 = internal global ptr @video_get_options, section ".discard.addressable", align 8, !dbg !0
@video_of_only = internal global i32 0, section ".data..read_mostly", align 4, !dbg !32
@__UNIQUE_ID___addressable___video_get_options351 = internal global ptr @__video_get_options, section ".discard.addressable", align 8, !dbg !15
@__setup_str_video_setup = internal constant [7 x i8] c"video=\00", section ".init.rodata", align 1, !dbg !41
@__setup_video_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_video_setup, ptr @video_setup, i32 0 }, section ".init.setup", align 8, !dbg !17
@video_options = internal global [32 x ptr] zeroinitializer, section ".data..read_mostly", align 16, !dbg !34
@video_option = internal global ptr null, section ".data..read_mostly", align 8, !dbg !39
@.str = private unnamed_addr constant [7 x i8] c"ofonly\00", align 1, !dbg !46
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_video_get_options350, ptr @__UNIQUE_ID___addressable___video_get_options351, ptr @__setup_video_setup], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @video_get_options(ptr noundef %name) #0 align 16 !dbg !58 {
entry:
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load ptr, ptr %name.addr, align 8, !dbg !64
  %call = call ptr @__video_get_option_string(ptr noundef %0) #5, !dbg !65
  ret ptr %call, !dbg !66
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__video_get_option_string(ptr noundef %name) #0 align 16 !dbg !67 {
entry:
  %name.addr = alloca ptr, align 8
  %options = alloca ptr, align 8
  %name_len = alloca i64, align 8
  %i = alloca i32, align 4
  %opt = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !69, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 8, ptr %options) #6, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %options, metadata !70, metadata !DIExpression()), !dbg !84
  store ptr null, ptr %options, align 8, !dbg !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_len) #6, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %name_len, metadata !71, metadata !DIExpression()), !dbg !86
  store i64 0, ptr %name_len, align 8, !dbg !86
  %0 = load ptr, ptr %name.addr, align 8, !dbg !87
  %tobool = icmp ne ptr %0, null, !dbg !87
  br i1 %tobool, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !90
  %call = call i64 @strlen(ptr noundef %1) #5, !dbg !91
  store i64 %call, ptr %name_len, align 8, !dbg !92
  br label %if.end, !dbg !93

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %name_len, align 8, !dbg !94
  %tobool1 = icmp ne i64 %2, 0, !dbg !94
  br i1 %tobool1, label %if.then2, label %if.end26, !dbg !95

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %i, metadata !78, metadata !DIExpression()), !dbg !97
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #6, !dbg !98
  call void @llvm.dbg.declare(metadata ptr %opt, metadata !81, metadata !DIExpression()), !dbg !99
  store i32 0, ptr %i, align 4, !dbg !100
  br label %for.cond, !dbg !102

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, ptr %i, align 4, !dbg !103
  %conv = zext i32 %3 to i64, !dbg !103
  %cmp = icmp ult i64 %conv, 32, !dbg !105
  br i1 %cmp, label %for.body, label %for.end, !dbg !106

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !107
  %idxprom = zext i32 %4 to i64, !dbg !110
  %arrayidx = getelementptr [32 x ptr], ptr @video_options, i64 0, i64 %idxprom, !dbg !110
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !110
  %tobool4 = icmp ne ptr %5, null, !dbg !110
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !111

if.then5:                                         ; preds = %for.body
  br label %for.inc, !dbg !112

if.end6:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !113
  %idxprom7 = zext i32 %6 to i64, !dbg !115
  %arrayidx8 = getelementptr [32 x ptr], ptr @video_options, i64 0, i64 %idxprom7, !dbg !115
  %7 = load ptr, ptr %arrayidx8, align 8, !dbg !115
  %arrayidx9 = getelementptr i8, ptr %7, i64 0, !dbg !115
  %8 = load i8, ptr %arrayidx9, align 1, !dbg !115
  %conv10 = zext i8 %8 to i32, !dbg !115
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !116
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !117

if.then13:                                        ; preds = %if.end6
  br label %for.inc, !dbg !118

if.end14:                                         ; preds = %if.end6
  %9 = load i32, ptr %i, align 4, !dbg !119
  %idxprom15 = zext i32 %9 to i64, !dbg !120
  %arrayidx16 = getelementptr [32 x ptr], ptr @video_options, i64 0, i64 %idxprom15, !dbg !120
  %10 = load ptr, ptr %arrayidx16, align 8, !dbg !120
  store ptr %10, ptr %opt, align 8, !dbg !121
  %11 = load ptr, ptr %opt, align 8, !dbg !122
  %12 = load ptr, ptr %name.addr, align 8, !dbg !124
  %13 = load i64, ptr %name_len, align 8, !dbg !125
  %call17 = call i32 @strncmp(ptr noundef %11, ptr noundef %12, i64 noundef %13) #5, !dbg !126
  %tobool18 = icmp ne i32 %call17, 0, !dbg !126
  br i1 %tobool18, label %if.end25, label %land.lhs.true, !dbg !127

land.lhs.true:                                    ; preds = %if.end14
  %14 = load ptr, ptr %opt, align 8, !dbg !128
  %15 = load i64, ptr %name_len, align 8, !dbg !129
  %arrayidx19 = getelementptr i8, ptr %14, i64 %15, !dbg !128
  %16 = load i8, ptr %arrayidx19, align 1, !dbg !128
  %conv20 = zext i8 %16 to i32, !dbg !128
  %cmp21 = icmp eq i32 %conv20, 58, !dbg !130
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !131

if.then23:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %opt, align 8, !dbg !132
  %18 = load i64, ptr %name_len, align 8, !dbg !133
  %add.ptr = getelementptr i8, ptr %17, i64 %18, !dbg !134
  %add.ptr24 = getelementptr i8, ptr %add.ptr, i64 1, !dbg !135
  store ptr %add.ptr24, ptr %options, align 8, !dbg !136
  br label %if.end25, !dbg !137

if.end25:                                         ; preds = %if.then23, %land.lhs.true, %if.end14
  br label %for.inc, !dbg !138

for.inc:                                          ; preds = %if.end25, %if.then13, %if.then5
  %19 = load i32, ptr %i, align 4, !dbg !139
  %inc = add i32 %19, 1, !dbg !139
  store i32 %inc, ptr %i, align 4, !dbg !139
  br label %for.cond, !dbg !140, !llvm.loop !141

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #6, !dbg !145
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !145
  br label %if.end26, !dbg !146

if.end26:                                         ; preds = %for.end, %if.end
  %20 = load ptr, ptr %options, align 8, !dbg !147
  %tobool27 = icmp ne ptr %20, null, !dbg !147
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !149

if.then28:                                        ; preds = %if.end26
  %21 = load ptr, ptr @video_option, align 8, !dbg !150
  store ptr %21, ptr %options, align 8, !dbg !151
  br label %if.end29, !dbg !152

if.end29:                                         ; preds = %if.then28, %if.end26
  %22 = load ptr, ptr %options, align 8, !dbg !153
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_len) #6, !dbg !154
  call void @llvm.lifetime.end.p0(i64 8, ptr %options) #6, !dbg !154
  ret ptr %22, !dbg !155
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @__video_get_options(ptr noundef %name, ptr noundef %options, i1 noundef zeroext %is_of) #0 align 16 !dbg !156 {
entry:
  %name.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %is_of.addr = alloca i8, align 1
  %enabled = alloca i8, align 1
  %opt = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !163, metadata !DIExpression()), !dbg !168
  store ptr %options, ptr %options.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !164, metadata !DIExpression()), !dbg !169
  %frombool = zext i1 %is_of to i8
  store i8 %frombool, ptr %is_of.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_of.addr, metadata !165, metadata !DIExpression()), !dbg !170
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #6, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !166, metadata !DIExpression()), !dbg !172
  store i8 1, ptr %enabled, align 1, !dbg !172
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #6, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %opt, metadata !167, metadata !DIExpression()), !dbg !174
  store ptr null, ptr %opt, align 8, !dbg !174
  %0 = load i32, ptr @video_of_only, align 4, !dbg !175
  %tobool = icmp ne i32 %0, 0, !dbg !175
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !177

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %is_of.addr, align 1, !dbg !178, !range !179, !noundef !180
  %tobool1 = trunc i8 %1 to i1, !dbg !178
  br i1 %tobool1, label %if.end, label %if.then, !dbg !181

if.then:                                          ; preds = %land.lhs.true
  store i8 0, ptr %enabled, align 1, !dbg !182
  br label %if.end, !dbg !183

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !184
  %call = call ptr @__video_get_option_string(ptr noundef %2) #5, !dbg !185
  store ptr %call, ptr %opt, align 8, !dbg !186
  %3 = load ptr, ptr %options.addr, align 8, !dbg !187
  %tobool2 = icmp ne ptr %3, null, !dbg !187
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !189

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %opt, align 8, !dbg !190
  %5 = load ptr, ptr %options.addr, align 8, !dbg !191
  store ptr %4, ptr %5, align 8, !dbg !192
  br label %if.end4, !dbg !193

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i8, ptr %enabled, align 1, !dbg !194, !range !179, !noundef !180
  %tobool5 = trunc i8 %6 to i1, !dbg !194
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #6, !dbg !195
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #6, !dbg !195
  ret i1 %tobool5, !dbg !196
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @video_setup(ptr noundef %options) #3 section ".init.text" align 16 !dbg !197 {
entry:
  %options.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %options, ptr %options.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %options.addr, metadata !199, metadata !DIExpression()), !dbg !204
  %0 = load ptr, ptr %options.addr, align 8, !dbg !205
  %tobool = icmp ne ptr %0, null, !dbg !205
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !207

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %options.addr, align 8, !dbg !208
  %2 = load i8, ptr %1, align 1, !dbg !209
  %tobool1 = icmp ne i8 %2, 0, !dbg !209
  br i1 %tobool1, label %if.end, label %if.then, !dbg !210

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out, !dbg !211

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %options.addr, align 8, !dbg !212
  %call = call i32 @strncmp(ptr noundef %3, ptr noundef @.str, i64 noundef 6) #5, !dbg !214
  %tobool2 = icmp ne i32 %call, 0, !dbg !214
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !215

if.then3:                                         ; preds = %if.end
  store i32 1, ptr @video_of_only, align 4, !dbg !216
  br label %out, !dbg !218

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %options.addr, align 8, !dbg !219
  %call5 = call ptr @strchr(ptr noundef %4, i32 noundef 58) #5, !dbg !220
  %tobool6 = icmp ne ptr %call5, null, !dbg !220
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !221

if.then7:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %i, metadata !200, metadata !DIExpression()), !dbg !223
  store i64 0, ptr %i, align 8, !dbg !224
  br label %for.cond, !dbg !226

for.cond:                                         ; preds = %for.inc, %if.then7
  %5 = load i64, ptr %i, align 8, !dbg !227
  %cmp = icmp ult i64 %5, 32, !dbg !229
  br i1 %cmp, label %for.body, label %for.end, !dbg !230

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8, !dbg !231
  %arrayidx = getelementptr [32 x ptr], ptr @video_options, i64 0, i64 %6, !dbg !234
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !234
  %tobool8 = icmp ne ptr %7, null, !dbg !234
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !235

if.then9:                                         ; preds = %for.body
  %8 = load ptr, ptr %options.addr, align 8, !dbg !236
  %9 = load i64, ptr %i, align 8, !dbg !238
  %arrayidx10 = getelementptr [32 x ptr], ptr @video_options, i64 0, i64 %9, !dbg !239
  store ptr %8, ptr %arrayidx10, align 8, !dbg !240
  br label %for.end, !dbg !241

if.end11:                                         ; preds = %for.body
  br label %for.inc, !dbg !242

for.inc:                                          ; preds = %if.end11
  %10 = load i64, ptr %i, align 8, !dbg !243
  %inc = add i64 %10, 1, !dbg !243
  store i64 %inc, ptr %i, align 8, !dbg !243
  br label %for.cond, !dbg !244, !llvm.loop !245

for.end:                                          ; preds = %if.then9, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !247
  br label %if.end12, !dbg !248

if.else:                                          ; preds = %if.end4
  %11 = load ptr, ptr %options.addr, align 8, !dbg !249
  store ptr %11, ptr @video_option, align 8, !dbg !251
  br label %if.end12

if.end12:                                         ; preds = %if.else, %for.end
  br label %out, !dbg !252

out:                                              ; preds = %if.end12, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !203), !dbg !253
  ret i32 1, !dbg !254
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !255 dso_local i64 @strlen(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !259 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !262 dso_local ptr @strchr(ptr noundef, i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_video_get_options350", scope: !2, file: !3, line: 81, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/video/.cmdline.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/video/cmdline\22 -D KBUILD_BASENAME=\22cmdline\22 -D KBUILD_MODNAME=\22cmdline\22 -D __KBUILD_MODNAME=kmod_cmdline -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/video/cmdline.ll drivers/video/cmdline.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/cmdline.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "052f8feb97786995e4cd69cdefcc8033")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!0, !15, !17, !32, !34, !39, !41, !46}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___video_get_options351", scope: !2, file: !3, line: 98, type: !12, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__setup_video_setup", scope: !2, file: !3, line: 133, type: !19, isLocal: true, isDefinition: true, align: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !20, line: 324, size: 192, elements: !21)
!20 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!21 = !{!22, !26, !31}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !19, file: !20, line: 325, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !19, file: !20, line: 326, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!13, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !19, file: !20, line: 327, baseType: !13, size: 32, offset: 128)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "video_of_only", scope: !2, file: !3, line: 31, type: !13, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "video_options", scope: !2, file: !3, line: 29, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 32)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "video_option", scope: !2, file: !3, line: 30, type: !23, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__setup_str_video_setup", scope: !2, file: !3, line: 133, type: !43, isLocal: true, isDefinition: true, align: 8)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 56, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 7)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 56, elements: !44)
!49 = !{i32 7, !"Dwarf Version", i32 5}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 8, !"cf-protection-branch", i32 1}
!53 = !{i32 4, !"function_return_thunk_extern", i32 1}
!54 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!55 = !{i32 1, !"Code Model", i32 2}
!56 = !{i32 1, !"override-stack-alignment", i32 8}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = distinct !DISubprogram(name: "video_get_options", scope: !3, file: !3, line: 77, type: !59, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{!23, !23}
!61 = !{!62}
!62 = !DILocalVariable(name: "name", arg: 1, scope: !58, file: !3, line: 77, type: !23)
!63 = !DILocation(line: 77, column: 43, scope: !58)
!64 = !DILocation(line: 79, column: 35, scope: !58)
!65 = !DILocation(line: 79, column: 9, scope: !58)
!66 = !DILocation(line: 79, column: 2, scope: !58)
!67 = distinct !DISubprogram(name: "__video_get_option_string", scope: !3, file: !3, line: 33, type: !59, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!68 = !{!69, !70, !71, !78, !81}
!69 = !DILocalVariable(name: "name", arg: 1, scope: !67, file: !3, line: 33, type: !23)
!70 = !DILocalVariable(name: "options", scope: !67, file: !3, line: 35, type: !23)
!71 = !DILocalVariable(name: "name_len", scope: !67, file: !3, line: 36, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 61, baseType: !74)
!73 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !75, line: 72, baseType: !76)
!75 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !75, line: 16, baseType: !77)
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocalVariable(name: "i", scope: !79, file: !3, line: 42, type: !7)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 41, column: 16)
!80 = distinct !DILexicalBlock(scope: !67, file: !3, line: 41, column: 6)
!81 = !DILocalVariable(name: "opt", scope: !79, file: !3, line: 43, type: !23)
!82 = !DILocation(line: 33, column: 58, scope: !67)
!83 = !DILocation(line: 35, column: 2, scope: !67)
!84 = !DILocation(line: 35, column: 14, scope: !67)
!85 = !DILocation(line: 36, column: 2, scope: !67)
!86 = !DILocation(line: 36, column: 9, scope: !67)
!87 = !DILocation(line: 38, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !67, file: !3, line: 38, column: 6)
!89 = !DILocation(line: 38, column: 6, scope: !67)
!90 = !DILocation(line: 39, column: 21, scope: !88)
!91 = !DILocation(line: 39, column: 14, scope: !88)
!92 = !DILocation(line: 39, column: 12, scope: !88)
!93 = !DILocation(line: 39, column: 3, scope: !88)
!94 = !DILocation(line: 41, column: 6, scope: !80)
!95 = !DILocation(line: 41, column: 6, scope: !67)
!96 = !DILocation(line: 42, column: 3, scope: !79)
!97 = !DILocation(line: 42, column: 16, scope: !79)
!98 = !DILocation(line: 43, column: 3, scope: !79)
!99 = !DILocation(line: 43, column: 15, scope: !79)
!100 = !DILocation(line: 45, column: 10, scope: !101)
!101 = distinct !DILexicalBlock(scope: !79, file: !3, line: 45, column: 3)
!102 = !DILocation(line: 45, column: 8, scope: !101)
!103 = !DILocation(line: 45, column: 15, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !3, line: 45, column: 3)
!105 = !DILocation(line: 45, column: 17, scope: !104)
!106 = !DILocation(line: 45, column: 3, scope: !101)
!107 = !DILocation(line: 46, column: 23, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 46, column: 8)
!109 = distinct !DILexicalBlock(scope: !104, file: !3, line: 45, column: 51)
!110 = !DILocation(line: 46, column: 9, scope: !108)
!111 = !DILocation(line: 46, column: 8, scope: !109)
!112 = !DILocation(line: 47, column: 5, scope: !108)
!113 = !DILocation(line: 48, column: 22, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !3, line: 48, column: 8)
!115 = !DILocation(line: 48, column: 8, scope: !114)
!116 = !DILocation(line: 48, column: 28, scope: !114)
!117 = !DILocation(line: 48, column: 8, scope: !109)
!118 = !DILocation(line: 49, column: 5, scope: !114)
!119 = !DILocation(line: 50, column: 24, scope: !109)
!120 = !DILocation(line: 50, column: 10, scope: !109)
!121 = !DILocation(line: 50, column: 8, scope: !109)
!122 = !DILocation(line: 51, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !109, file: !3, line: 51, column: 8)
!124 = !DILocation(line: 51, column: 22, scope: !123)
!125 = !DILocation(line: 51, column: 28, scope: !123)
!126 = !DILocation(line: 51, column: 9, scope: !123)
!127 = !DILocation(line: 51, column: 38, scope: !123)
!128 = !DILocation(line: 51, column: 41, scope: !123)
!129 = !DILocation(line: 51, column: 45, scope: !123)
!130 = !DILocation(line: 51, column: 55, scope: !123)
!131 = !DILocation(line: 51, column: 8, scope: !109)
!132 = !DILocation(line: 52, column: 15, scope: !123)
!133 = !DILocation(line: 52, column: 21, scope: !123)
!134 = !DILocation(line: 52, column: 19, scope: !123)
!135 = !DILocation(line: 52, column: 30, scope: !123)
!136 = !DILocation(line: 52, column: 13, scope: !123)
!137 = !DILocation(line: 52, column: 5, scope: !123)
!138 = !DILocation(line: 53, column: 3, scope: !109)
!139 = !DILocation(line: 45, column: 46, scope: !104)
!140 = !DILocation(line: 45, column: 3, scope: !104)
!141 = distinct !{!141, !106, !142, !143, !144}
!142 = !DILocation(line: 53, column: 3, scope: !101)
!143 = !{!"llvm.loop.mustprogress"}
!144 = !{!"llvm.loop.unroll.disable"}
!145 = !DILocation(line: 54, column: 2, scope: !80)
!146 = !DILocation(line: 54, column: 2, scope: !79)
!147 = !DILocation(line: 57, column: 7, scope: !148)
!148 = distinct !DILexicalBlock(scope: !67, file: !3, line: 57, column: 6)
!149 = !DILocation(line: 57, column: 6, scope: !67)
!150 = !DILocation(line: 58, column: 13, scope: !148)
!151 = !DILocation(line: 58, column: 11, scope: !148)
!152 = !DILocation(line: 58, column: 3, scope: !148)
!153 = !DILocation(line: 60, column: 9, scope: !67)
!154 = !DILocation(line: 61, column: 1, scope: !67)
!155 = !DILocation(line: 60, column: 2, scope: !67)
!156 = distinct !DISubprogram(name: "__video_get_options", scope: !3, file: !3, line: 83, type: !157, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !23, !161, !159}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !73, line: 35, baseType: !160)
!160 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!162 = !{!163, !164, !165, !166, !167}
!163 = !DILocalVariable(name: "name", arg: 1, scope: !156, file: !3, line: 83, type: !23)
!164 = !DILocalVariable(name: "options", arg: 2, scope: !156, file: !3, line: 83, type: !161)
!165 = !DILocalVariable(name: "is_of", arg: 3, scope: !156, file: !3, line: 83, type: !159)
!166 = !DILocalVariable(name: "enabled", scope: !156, file: !3, line: 85, type: !159)
!167 = !DILocalVariable(name: "opt", scope: !156, file: !3, line: 86, type: !23)
!168 = !DILocation(line: 83, column: 38, scope: !156)
!169 = !DILocation(line: 83, column: 57, scope: !156)
!170 = !DILocation(line: 83, column: 71, scope: !156)
!171 = !DILocation(line: 85, column: 2, scope: !156)
!172 = !DILocation(line: 85, column: 7, scope: !156)
!173 = !DILocation(line: 86, column: 2, scope: !156)
!174 = !DILocation(line: 86, column: 14, scope: !156)
!175 = !DILocation(line: 88, column: 6, scope: !176)
!176 = distinct !DILexicalBlock(scope: !156, file: !3, line: 88, column: 6)
!177 = !DILocation(line: 88, column: 20, scope: !176)
!178 = !DILocation(line: 88, column: 24, scope: !176)
!179 = !{i8 0, i8 2}
!180 = !{}
!181 = !DILocation(line: 88, column: 6, scope: !156)
!182 = !DILocation(line: 89, column: 11, scope: !176)
!183 = !DILocation(line: 89, column: 3, scope: !176)
!184 = !DILocation(line: 91, column: 34, scope: !156)
!185 = !DILocation(line: 91, column: 8, scope: !156)
!186 = !DILocation(line: 91, column: 6, scope: !156)
!187 = !DILocation(line: 93, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !156, file: !3, line: 93, column: 6)
!189 = !DILocation(line: 93, column: 6, scope: !156)
!190 = !DILocation(line: 94, column: 14, scope: !188)
!191 = !DILocation(line: 94, column: 4, scope: !188)
!192 = !DILocation(line: 94, column: 12, scope: !188)
!193 = !DILocation(line: 94, column: 3, scope: !188)
!194 = !DILocation(line: 96, column: 9, scope: !156)
!195 = !DILocation(line: 97, column: 1, scope: !156)
!196 = !DILocation(line: 96, column: 2, scope: !156)
!197 = distinct !DISubprogram(name: "video_setup", scope: !3, file: !3, line: 105, type: !28, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !198)
!198 = !{!199, !200, !203}
!199 = !DILocalVariable(name: "options", arg: 1, scope: !197, file: !3, line: 105, type: !30)
!200 = !DILocalVariable(name: "i", scope: !201, file: !3, line: 117, type: !72)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 115, column: 28)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 115, column: 6)
!203 = !DILabel(scope: !197, name: "out", file: !3, line: 130)
!204 = !DILocation(line: 105, column: 37, scope: !197)
!205 = !DILocation(line: 107, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !197, file: !3, line: 107, column: 6)
!207 = !DILocation(line: 107, column: 15, scope: !206)
!208 = !DILocation(line: 107, column: 20, scope: !206)
!209 = !DILocation(line: 107, column: 19, scope: !206)
!210 = !DILocation(line: 107, column: 6, scope: !197)
!211 = !DILocation(line: 108, column: 3, scope: !206)
!212 = !DILocation(line: 110, column: 15, scope: !213)
!213 = distinct !DILexicalBlock(scope: !197, file: !3, line: 110, column: 6)
!214 = !DILocation(line: 110, column: 7, scope: !213)
!215 = !DILocation(line: 110, column: 6, scope: !197)
!216 = !DILocation(line: 111, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !3, line: 110, column: 38)
!218 = !DILocation(line: 112, column: 3, scope: !217)
!219 = !DILocation(line: 115, column: 13, scope: !202)
!220 = !DILocation(line: 115, column: 6, scope: !202)
!221 = !DILocation(line: 115, column: 6, scope: !197)
!222 = !DILocation(line: 117, column: 3, scope: !201)
!223 = !DILocation(line: 117, column: 10, scope: !201)
!224 = !DILocation(line: 119, column: 10, scope: !225)
!225 = distinct !DILexicalBlock(scope: !201, file: !3, line: 119, column: 3)
!226 = !DILocation(line: 119, column: 8, scope: !225)
!227 = !DILocation(line: 119, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !3, line: 119, column: 3)
!229 = !DILocation(line: 119, column: 17, scope: !228)
!230 = !DILocation(line: 119, column: 3, scope: !225)
!231 = !DILocation(line: 120, column: 23, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 120, column: 8)
!233 = distinct !DILexicalBlock(scope: !228, file: !3, line: 119, column: 51)
!234 = !DILocation(line: 120, column: 9, scope: !232)
!235 = !DILocation(line: 120, column: 8, scope: !233)
!236 = !DILocation(line: 121, column: 24, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !3, line: 120, column: 27)
!238 = !DILocation(line: 121, column: 19, scope: !237)
!239 = !DILocation(line: 121, column: 5, scope: !237)
!240 = !DILocation(line: 121, column: 22, scope: !237)
!241 = !DILocation(line: 122, column: 5, scope: !237)
!242 = !DILocation(line: 124, column: 3, scope: !233)
!243 = !DILocation(line: 119, column: 47, scope: !228)
!244 = !DILocation(line: 119, column: 3, scope: !228)
!245 = distinct !{!245, !230, !246, !143, !144}
!246 = !DILocation(line: 124, column: 3, scope: !225)
!247 = !DILocation(line: 125, column: 2, scope: !202)
!248 = !DILocation(line: 125, column: 2, scope: !201)
!249 = !DILocation(line: 127, column: 18, scope: !250)
!250 = distinct !DILexicalBlock(scope: !202, file: !3, line: 125, column: 9)
!251 = !DILocation(line: 127, column: 16, scope: !250)
!252 = !DILocation(line: 115, column: 25, scope: !202)
!253 = !DILocation(line: 130, column: 1, scope: !197)
!254 = !DILocation(line: 131, column: 2, scope: !197)
!255 = !DISubprogram(name: "strlen", scope: !256, file: !256, line: 128, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!257 = !DISubroutineType(types: !258)
!258 = !{!77, !23}
!259 = !DISubprogram(name: "strncmp", scope: !256, file: !256, line: 91, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DISubroutineType(types: !261)
!261 = !{!13, !23, !23, !74}
!262 = !DISubprogram(name: "strchr", scope: !256, file: !256, line: 100, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{!30, !23, !13}
