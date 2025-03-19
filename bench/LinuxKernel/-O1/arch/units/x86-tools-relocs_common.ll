; ModuleID = 'arch/x86/tools/relocs_common.c'
source_filename = "arch/x86/tools/relocs_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"--abs-syms\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"--abs-relocs\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"--reloc-info\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"--text\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [11 x i8] c"--realmode\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !21
@.str.6 = private unnamed_addr constant [20 x i8] c"Cannot open %s: %s\0A\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [19 x i8] c"Cannot read %s: %s\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [73 x i8] c"relocs [--abs-syms|--abs-relocs|--reloc-info|--text|--realmode] vmlinux\0A\00", align 1, !dbg !36

; Function Attrs: noreturn nounwind uwtable
define dso_local void @die(ptr noundef %fmt, ...) #0 !dbg !50 {
entry:
  %fmt.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %fmt, ptr %fmt.addr, align 8, !tbaa !71
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !55, metadata !DIExpression()), !dbg !75
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #10, !dbg !76
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !56, metadata !DIExpression()), !dbg !77
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !78
  call void @llvm.va_start(ptr %arraydecay), !dbg !78
  %0 = load ptr, ptr @stderr, align 8, !dbg !79, !tbaa !71
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !80, !tbaa !71
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !81
  %call = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay1), !dbg !82
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !83
  call void @llvm.va_end(ptr %arraydecay2), !dbg !83
  call void @exit(i32 noundef 1) #11, !dbg !84
  unreachable, !dbg !84
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

declare !dbg !85 i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: noreturn nounwind
declare !dbg !149 void @exit(i32 noundef) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #6 !dbg !153 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %show_absolute_syms = alloca i32, align 4
  %show_absolute_relocs = alloca i32, align 4
  %show_reloc_info = alloca i32, align 4
  %as_text = alloca i32, align 4
  %use_real_mode = alloca i32, align 4
  %fname = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %i = alloca i32, align 4
  %e_ident = alloca [16 x i8], align 16
  %arg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !177
  call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !158, metadata !DIExpression()), !dbg !179
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !71
  call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !159, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 4, ptr %show_absolute_syms) #10, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %show_absolute_syms, metadata !160, metadata !DIExpression()), !dbg !182
  call void @llvm.lifetime.start.p0(i64 4, ptr %show_absolute_relocs) #10, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %show_absolute_relocs, metadata !161, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %show_reloc_info) #10, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %show_reloc_info, metadata !162, metadata !DIExpression()), !dbg !184
  call void @llvm.lifetime.start.p0(i64 4, ptr %as_text) #10, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %as_text, metadata !163, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 4, ptr %use_real_mode) #10, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %use_real_mode, metadata !164, metadata !DIExpression()), !dbg !187
  call void @llvm.lifetime.start.p0(i64 8, ptr %fname) #10, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %fname, metadata !165, metadata !DIExpression()), !dbg !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #10, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %fp, metadata !166, metadata !DIExpression()), !dbg !191
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %i, metadata !167, metadata !DIExpression()), !dbg !193
  call void @llvm.lifetime.start.p0(i64 16, ptr %e_ident) #10, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %e_ident, metadata !168, metadata !DIExpression()), !dbg !195
  store i32 0, ptr %show_absolute_syms, align 4, !dbg !196, !tbaa !177
  store i32 0, ptr %show_absolute_relocs, align 4, !dbg !197, !tbaa !177
  store i32 0, ptr %show_reloc_info, align 4, !dbg !198, !tbaa !177
  store i32 0, ptr %as_text, align 4, !dbg !199, !tbaa !177
  store i32 0, ptr %use_real_mode, align 4, !dbg !200, !tbaa !177
  store ptr null, ptr %fname, align 8, !dbg !201, !tbaa !71
  store i32 1, ptr %i, align 4, !dbg !202, !tbaa !177
  br label %for.cond, !dbg !203

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !204, !tbaa !177
  %1 = load i32, ptr %argc.addr, align 4, !dbg !205, !tbaa !177
  %cmp = icmp slt i32 %0, %1, !dbg !206
  br i1 %cmp, label %for.body, label %for.end, !dbg !207

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #10, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !173, metadata !DIExpression()), !dbg !209
  %2 = load ptr, ptr %argv.addr, align 8, !dbg !210, !tbaa !71
  %3 = load i32, ptr %i, align 4, !dbg !211, !tbaa !177
  %idxprom = sext i32 %3 to i64, !dbg !210
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom, !dbg !210
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !210, !tbaa !71
  store ptr %4, ptr %arg, align 8, !dbg !209, !tbaa !71
  %5 = load ptr, ptr %arg, align 8, !dbg !212, !tbaa !71
  %6 = load i8, ptr %5, align 1, !dbg !214, !tbaa !215
  %conv = sext i8 %6 to i32, !dbg !214
  %cmp1 = icmp eq i32 %conv, 45, !dbg !216
  br i1 %cmp1, label %if.then, label %if.else, !dbg !217

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %arg, align 8, !dbg !218, !tbaa !71
  %call = call i32 @strcmp(ptr noundef %7, ptr noundef @.str) #12, !dbg !221
  %cmp3 = icmp eq i32 %call, 0, !dbg !222
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !223

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %show_absolute_syms, align 4, !dbg !224, !tbaa !177
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !226

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %arg, align 8, !dbg !227, !tbaa !71
  %call6 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.1) #12, !dbg !229
  %cmp7 = icmp eq i32 %call6, 0, !dbg !230
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !231

if.then9:                                         ; preds = %if.end
  store i32 1, ptr %show_absolute_relocs, align 4, !dbg !232, !tbaa !177
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !234

if.end10:                                         ; preds = %if.end
  %9 = load ptr, ptr %arg, align 8, !dbg !235, !tbaa !71
  %call11 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.2) #12, !dbg !237
  %cmp12 = icmp eq i32 %call11, 0, !dbg !238
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !239

if.then14:                                        ; preds = %if.end10
  store i32 1, ptr %show_reloc_info, align 4, !dbg !240, !tbaa !177
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

if.end15:                                         ; preds = %if.end10
  %10 = load ptr, ptr %arg, align 8, !dbg !243, !tbaa !71
  %call16 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.3) #12, !dbg !245
  %cmp17 = icmp eq i32 %call16, 0, !dbg !246
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !247

if.then19:                                        ; preds = %if.end15
  store i32 1, ptr %as_text, align 4, !dbg !248, !tbaa !177
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !250

if.end20:                                         ; preds = %if.end15
  %11 = load ptr, ptr %arg, align 8, !dbg !251, !tbaa !71
  %call21 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.4) #12, !dbg !253
  %cmp22 = icmp eq i32 %call21, 0, !dbg !254
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !255

if.then24:                                        ; preds = %if.end20
  store i32 1, ptr %use_real_mode, align 4, !dbg !256, !tbaa !177
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !258

if.end25:                                         ; preds = %if.end20
  br label %if.end28, !dbg !259

if.else:                                          ; preds = %for.body
  %12 = load ptr, ptr %fname, align 8, !dbg !260, !tbaa !71
  %tobool = icmp ne ptr %12, null, !dbg !260
  br i1 %tobool, label %if.end27, label %if.then26, !dbg !262

if.then26:                                        ; preds = %if.else
  %13 = load ptr, ptr %arg, align 8, !dbg !263, !tbaa !71
  store ptr %13, ptr %fname, align 8, !dbg !265, !tbaa !71
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !266

if.end27:                                         ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end25
  call void @usage(), !dbg !267
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !268
  br label %cleanup, !dbg !268

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then24, %if.then19, %if.then14, %if.then9, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #10, !dbg !268
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !269

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %14 = load i32, ptr %i, align 4, !dbg !270, !tbaa !177
  %inc = add nsw i32 %14, 1, !dbg !270
  store i32 %inc, ptr %i, align 4, !dbg !270, !tbaa !177
  br label %for.cond, !dbg !271, !llvm.loop !272

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %fname, align 8, !dbg !276, !tbaa !71
  %tobool29 = icmp ne ptr %15, null, !dbg !276
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !278

if.then30:                                        ; preds = %for.end
  call void @usage(), !dbg !279
  br label %if.end31, !dbg !281

if.end31:                                         ; preds = %if.then30, %for.end
  %16 = load ptr, ptr %fname, align 8, !dbg !282, !tbaa !71
  %call32 = call noalias ptr @fopen(ptr noundef %16, ptr noundef @.str.5), !dbg !283
  store ptr %call32, ptr %fp, align 8, !dbg !284, !tbaa !71
  %17 = load ptr, ptr %fp, align 8, !dbg !285, !tbaa !71
  %tobool33 = icmp ne ptr %17, null, !dbg !285
  br i1 %tobool33, label %if.end37, label %if.then34, !dbg !287

if.then34:                                        ; preds = %if.end31
  %18 = load ptr, ptr %fname, align 8, !dbg !288, !tbaa !71
  %call35 = call ptr @__errno_location() #13, !dbg !290
  %19 = load i32, ptr %call35, align 4, !dbg !290, !tbaa !177
  %call36 = call ptr @strerror(i32 noundef %19) #10, !dbg !291
  call void (ptr, ...) @die(ptr noundef @.str.6, ptr noundef %18, ptr noundef %call36) #14, !dbg !292
  unreachable, !dbg !292

if.end37:                                         ; preds = %if.end31
  %20 = load ptr, ptr %fp, align 8, !dbg !293, !tbaa !71
  %call38 = call i64 @fread(ptr noundef %e_ident, i64 noundef 1, i64 noundef 16, ptr noundef %20), !dbg !295
  %cmp39 = icmp ne i64 %call38, 16, !dbg !296
  br i1 %cmp39, label %if.then41, label %if.end44, !dbg !297

if.then41:                                        ; preds = %if.end37
  %21 = load ptr, ptr %fname, align 8, !dbg !298, !tbaa !71
  %call42 = call ptr @__errno_location() #13, !dbg !300
  %22 = load i32, ptr %call42, align 4, !dbg !300, !tbaa !177
  %call43 = call ptr @strerror(i32 noundef %22) #10, !dbg !301
  call void (ptr, ...) @die(ptr noundef @.str.7, ptr noundef %21, ptr noundef %call43) #14, !dbg !302
  unreachable, !dbg !302

if.end44:                                         ; preds = %if.end37
  %23 = load ptr, ptr %fp, align 8, !dbg !303, !tbaa !71
  call void @rewind(ptr noundef %23), !dbg !304
  %arrayidx45 = getelementptr inbounds [16 x i8], ptr %e_ident, i64 0, i64 4, !dbg !305
  %24 = load i8, ptr %arrayidx45, align 4, !dbg !305, !tbaa !215
  %conv46 = zext i8 %24 to i32, !dbg !305
  %cmp47 = icmp eq i32 %conv46, 2, !dbg !307
  br i1 %cmp47, label %if.then49, label %if.else50, !dbg !308

if.then49:                                        ; preds = %if.end44
  %25 = load ptr, ptr %fp, align 8, !dbg !309, !tbaa !71
  %26 = load i32, ptr %use_real_mode, align 4, !dbg !310, !tbaa !177
  %27 = load i32, ptr %as_text, align 4, !dbg !311, !tbaa !177
  %28 = load i32, ptr %show_absolute_syms, align 4, !dbg !312, !tbaa !177
  %29 = load i32, ptr %show_absolute_relocs, align 4, !dbg !313, !tbaa !177
  %30 = load i32, ptr %show_reloc_info, align 4, !dbg !314, !tbaa !177
  call void @process_64(ptr noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30), !dbg !315
  br label %if.end51, !dbg !315

if.else50:                                        ; preds = %if.end44
  %31 = load ptr, ptr %fp, align 8, !dbg !316, !tbaa !71
  %32 = load i32, ptr %use_real_mode, align 4, !dbg !317, !tbaa !177
  %33 = load i32, ptr %as_text, align 4, !dbg !318, !tbaa !177
  %34 = load i32, ptr %show_absolute_syms, align 4, !dbg !319, !tbaa !177
  %35 = load i32, ptr %show_absolute_relocs, align 4, !dbg !320, !tbaa !177
  %36 = load i32, ptr %show_reloc_info, align 4, !dbg !321, !tbaa !177
  call void @process_32(ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36), !dbg !322
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.then49
  %37 = load ptr, ptr %fp, align 8, !dbg !323, !tbaa !71
  %call52 = call i32 @fclose(ptr noundef %37), !dbg !324
  store i32 0, ptr %retval, align 4, !dbg !325
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr %e_ident) #10, !dbg !326
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !326
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #10, !dbg !326
  call void @llvm.lifetime.end.p0(i64 8, ptr %fname) #10, !dbg !326
  call void @llvm.lifetime.end.p0(i64 4, ptr %use_real_mode) #10, !dbg !326
  call void @llvm.lifetime.end.p0(i64 4, ptr %as_text) #10, !dbg !326
  call void @llvm.lifetime.end.p0(i64 4, ptr %show_reloc_info) #10, !dbg !326
  call void @llvm.lifetime.end.p0(i64 4, ptr %show_absolute_relocs) #10, !dbg !326
  call void @llvm.lifetime.end.p0(i64 4, ptr %show_absolute_syms) #10, !dbg !326
  %38 = load i32, ptr %retval, align 4, !dbg !326
  ret i32 %38, !dbg !326

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !327 i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: nounwind uwtable
define internal void @usage() #6 !dbg !331 {
entry:
  call void (ptr, ...) @die(ptr noundef @.str.8) #14, !dbg !334
  unreachable, !dbg !334
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !335 noalias ptr @fopen(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare !dbg !338 ptr @strerror(i32 noundef) #8

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !341 ptr @__errno_location() #9

declare !dbg !346 i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

declare !dbg !350 void @rewind(ptr noundef) #4

declare !dbg !353 void @process_64(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare !dbg !357 void @process_32(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

declare !dbg !358 i32 @fclose(ptr noundef) #4

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { noreturn }

!llvm.dbg.cu = !{!41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/tools/relocs_common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2640c6a097871e6529c89d771c2540a3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 13)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 7)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !3, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 2)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 20)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 19)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 15, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 73)
!41 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/tools/.relocs_common.o.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O1 -fomit-frame-pointer -std=gnu11 -I ./tools/include -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/tools/relocs_common.ll arch/x86/tools/relocs_common.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !42, splitDebugInlining: false, nameTableKind: None)
!42 = !{!0, !7, !12, !14, !19, !21, !26, !31, !36}
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 2}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = distinct !DISubprogram(name: "die", scope: !2, file: !2, line: 4, type: !51, scopeLine: 5, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !54)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, null}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!54 = !{!55, !56}
!55 = !DILocalVariable(name: "fmt", arg: 1, scope: !50, file: !2, line: 4, type: !53)
!56 = !DILocalVariable(name: "ap", scope: !50, file: !2, line: 6, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !58, line: 12, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 192, elements: !69)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !62)
!62 = !{!63, !65, !66, !68}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !61, file: !2, line: 6, baseType: !64, size: 32)
!64 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !61, file: !2, line: 6, baseType: !64, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !61, file: !2, line: 6, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !61, file: !2, line: 6, baseType: !67, size: 64, offset: 128)
!69 = !{!70}
!70 = !DISubrange(count: 1)
!71 = !{!72, !72, i64 0}
!72 = !{!"any pointer", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !DILocation(line: 4, column: 16, scope: !50)
!76 = !DILocation(line: 6, column: 2, scope: !50)
!77 = !DILocation(line: 6, column: 10, scope: !50)
!78 = !DILocation(line: 7, column: 2, scope: !50)
!79 = !DILocation(line: 8, column: 11, scope: !50)
!80 = !DILocation(line: 8, column: 19, scope: !50)
!81 = !DILocation(line: 8, column: 24, scope: !50)
!82 = !DILocation(line: 8, column: 2, scope: !50)
!83 = !DILocation(line: 9, column: 2, scope: !50)
!84 = !DILocation(line: 10, column: 2, scope: !50)
!85 = !DISubprogram(name: "vfprintf", scope: !86, file: !86, line: 365, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!86 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !90, !145, !148}
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !112, !114, !115, !116, !120, !122, !124, !126, !129, !131, !134, !137, !138, !139, !143, !144}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !94, file: !95, line: 51, baseType: !89, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !94, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !94, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !94, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !94, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !94, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !94, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !94, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !94, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !94, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !94, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !94, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !94, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !95, line: 36, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !94, file: !95, line: 70, baseType: !113, size: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !94, file: !95, line: 72, baseType: !89, size: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !94, file: !95, line: 73, baseType: !89, size: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !94, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !118, line: 152, baseType: !119)
!118 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!119 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !94, file: !95, line: 77, baseType: !121, size: 16, offset: 1024)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !94, file: !95, line: 78, baseType: !123, size: 8, offset: 1040)
!123 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !94, file: !95, line: 79, baseType: !125, size: 8, offset: 1048)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !69)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !94, file: !95, line: 81, baseType: !127, size: 64, offset: 1088)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !95, line: 43, baseType: null)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !94, file: !95, line: 89, baseType: !130, size: 64, offset: 1152)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !118, line: 153, baseType: !119)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !94, file: !95, line: 91, baseType: !132, size: 64, offset: 1216)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !95, line: 37, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !94, file: !95, line: 92, baseType: !135, size: 64, offset: 1280)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !95, line: 38, flags: DIFlagFwdDecl)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !94, file: !95, line: 93, baseType: !113, size: 64, offset: 1344)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !94, file: !95, line: 94, baseType: !67, size: 64, offset: 1408)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !94, file: !95, line: 95, baseType: !140, size: 64, offset: 1472)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 18, baseType: !142)
!141 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!142 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !94, file: !95, line: 96, baseType: !89, size: 32, offset: 1536)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !94, file: !95, line: 98, baseType: !28, size: 160, offset: 1568)
!145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!149 = !DISubprogram(name: "exit", scope: !150, file: !150, line: 624, type: !151, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!150 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!151 = !DISubroutineType(types: !152)
!152 = !{null, !89}
!153 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 19, type: !154, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !41, retainedNodes: !157)
!154 = !DISubroutineType(types: !155)
!155 = !{!89, !89, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !173}
!158 = !DILocalVariable(name: "argc", arg: 1, scope: !153, file: !2, line: 19, type: !89)
!159 = !DILocalVariable(name: "argv", arg: 2, scope: !153, file: !2, line: 19, type: !156)
!160 = !DILocalVariable(name: "show_absolute_syms", scope: !153, file: !2, line: 21, type: !89)
!161 = !DILocalVariable(name: "show_absolute_relocs", scope: !153, file: !2, line: 21, type: !89)
!162 = !DILocalVariable(name: "show_reloc_info", scope: !153, file: !2, line: 21, type: !89)
!163 = !DILocalVariable(name: "as_text", scope: !153, file: !2, line: 22, type: !89)
!164 = !DILocalVariable(name: "use_real_mode", scope: !153, file: !2, line: 22, type: !89)
!165 = !DILocalVariable(name: "fname", scope: !153, file: !2, line: 23, type: !146)
!166 = !DILocalVariable(name: "fp", scope: !153, file: !2, line: 24, type: !91)
!167 = !DILocalVariable(name: "i", scope: !153, file: !2, line: 25, type: !89)
!168 = !DILocalVariable(name: "e_ident", scope: !153, file: !2, line: 26, type: !169)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, elements: !171)
!170 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!171 = !{!172}
!172 = !DISubrange(count: 16)
!173 = !DILocalVariable(name: "arg", scope: !174, file: !2, line: 35, type: !53)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 34, column: 29)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 34, column: 2)
!176 = distinct !DILexicalBlock(scope: !153, file: !2, line: 34, column: 2)
!177 = !{!178, !178, i64 0}
!178 = !{!"int", !73, i64 0}
!179 = !DILocation(line: 19, column: 14, scope: !153)
!180 = !DILocation(line: 19, column: 27, scope: !153)
!181 = !DILocation(line: 21, column: 2, scope: !153)
!182 = !DILocation(line: 21, column: 6, scope: !153)
!183 = !DILocation(line: 21, column: 26, scope: !153)
!184 = !DILocation(line: 21, column: 48, scope: !153)
!185 = !DILocation(line: 22, column: 2, scope: !153)
!186 = !DILocation(line: 22, column: 6, scope: !153)
!187 = !DILocation(line: 22, column: 15, scope: !153)
!188 = !DILocation(line: 23, column: 2, scope: !153)
!189 = !DILocation(line: 23, column: 14, scope: !153)
!190 = !DILocation(line: 24, column: 2, scope: !153)
!191 = !DILocation(line: 24, column: 8, scope: !153)
!192 = !DILocation(line: 25, column: 2, scope: !153)
!193 = !DILocation(line: 25, column: 6, scope: !153)
!194 = !DILocation(line: 26, column: 2, scope: !153)
!195 = !DILocation(line: 26, column: 16, scope: !153)
!196 = !DILocation(line: 28, column: 21, scope: !153)
!197 = !DILocation(line: 29, column: 23, scope: !153)
!198 = !DILocation(line: 30, column: 18, scope: !153)
!199 = !DILocation(line: 31, column: 10, scope: !153)
!200 = !DILocation(line: 32, column: 16, scope: !153)
!201 = !DILocation(line: 33, column: 8, scope: !153)
!202 = !DILocation(line: 34, column: 9, scope: !176)
!203 = !DILocation(line: 34, column: 7, scope: !176)
!204 = !DILocation(line: 34, column: 14, scope: !175)
!205 = !DILocation(line: 34, column: 18, scope: !175)
!206 = !DILocation(line: 34, column: 16, scope: !175)
!207 = !DILocation(line: 34, column: 2, scope: !176)
!208 = !DILocation(line: 35, column: 3, scope: !174)
!209 = !DILocation(line: 35, column: 9, scope: !174)
!210 = !DILocation(line: 35, column: 15, scope: !174)
!211 = !DILocation(line: 35, column: 20, scope: !174)
!212 = !DILocation(line: 36, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !174, file: !2, line: 36, column: 7)
!214 = !DILocation(line: 36, column: 7, scope: !213)
!215 = !{!73, !73, i64 0}
!216 = !DILocation(line: 36, column: 12, scope: !213)
!217 = !DILocation(line: 36, column: 7, scope: !174)
!218 = !DILocation(line: 37, column: 15, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !2, line: 37, column: 8)
!220 = distinct !DILexicalBlock(scope: !213, file: !2, line: 36, column: 20)
!221 = !DILocation(line: 37, column: 8, scope: !219)
!222 = !DILocation(line: 37, column: 34, scope: !219)
!223 = !DILocation(line: 37, column: 8, scope: !220)
!224 = !DILocation(line: 38, column: 24, scope: !225)
!225 = distinct !DILexicalBlock(scope: !219, file: !2, line: 37, column: 40)
!226 = !DILocation(line: 39, column: 5, scope: !225)
!227 = !DILocation(line: 41, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !220, file: !2, line: 41, column: 8)
!229 = !DILocation(line: 41, column: 8, scope: !228)
!230 = !DILocation(line: 41, column: 36, scope: !228)
!231 = !DILocation(line: 41, column: 8, scope: !220)
!232 = !DILocation(line: 42, column: 26, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !2, line: 41, column: 42)
!234 = !DILocation(line: 43, column: 5, scope: !233)
!235 = !DILocation(line: 45, column: 15, scope: !236)
!236 = distinct !DILexicalBlock(scope: !220, file: !2, line: 45, column: 8)
!237 = !DILocation(line: 45, column: 8, scope: !236)
!238 = !DILocation(line: 45, column: 36, scope: !236)
!239 = !DILocation(line: 45, column: 8, scope: !220)
!240 = !DILocation(line: 46, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !236, file: !2, line: 45, column: 42)
!242 = !DILocation(line: 47, column: 5, scope: !241)
!243 = !DILocation(line: 49, column: 15, scope: !244)
!244 = distinct !DILexicalBlock(scope: !220, file: !2, line: 49, column: 8)
!245 = !DILocation(line: 49, column: 8, scope: !244)
!246 = !DILocation(line: 49, column: 30, scope: !244)
!247 = !DILocation(line: 49, column: 8, scope: !220)
!248 = !DILocation(line: 50, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !2, line: 49, column: 36)
!250 = !DILocation(line: 51, column: 5, scope: !249)
!251 = !DILocation(line: 53, column: 15, scope: !252)
!252 = distinct !DILexicalBlock(scope: !220, file: !2, line: 53, column: 8)
!253 = !DILocation(line: 53, column: 8, scope: !252)
!254 = !DILocation(line: 53, column: 34, scope: !252)
!255 = !DILocation(line: 53, column: 8, scope: !220)
!256 = !DILocation(line: 54, column: 19, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !2, line: 53, column: 40)
!258 = !DILocation(line: 55, column: 5, scope: !257)
!259 = !DILocation(line: 57, column: 3, scope: !220)
!260 = !DILocation(line: 58, column: 13, scope: !261)
!261 = distinct !DILexicalBlock(scope: !213, file: !2, line: 58, column: 12)
!262 = !DILocation(line: 58, column: 12, scope: !213)
!263 = !DILocation(line: 59, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !2, line: 58, column: 20)
!265 = !DILocation(line: 59, column: 10, scope: !264)
!266 = !DILocation(line: 60, column: 4, scope: !264)
!267 = !DILocation(line: 62, column: 3, scope: !174)
!268 = !DILocation(line: 63, column: 2, scope: !175)
!269 = !DILocation(line: 63, column: 2, scope: !174)
!270 = !DILocation(line: 34, column: 25, scope: !175)
!271 = !DILocation(line: 34, column: 2, scope: !175)
!272 = distinct !{!272, !207, !273, !274, !275}
!273 = !DILocation(line: 63, column: 2, scope: !176)
!274 = !{!"llvm.loop.mustprogress"}
!275 = !{!"llvm.loop.unroll.disable"}
!276 = !DILocation(line: 64, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !153, file: !2, line: 64, column: 6)
!278 = !DILocation(line: 64, column: 6, scope: !153)
!279 = !DILocation(line: 65, column: 3, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !2, line: 64, column: 14)
!281 = !DILocation(line: 66, column: 2, scope: !280)
!282 = !DILocation(line: 67, column: 13, scope: !153)
!283 = !DILocation(line: 67, column: 7, scope: !153)
!284 = !DILocation(line: 67, column: 5, scope: !153)
!285 = !DILocation(line: 68, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !153, file: !2, line: 68, column: 6)
!287 = !DILocation(line: 68, column: 6, scope: !153)
!288 = !DILocation(line: 69, column: 31, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !2, line: 68, column: 11)
!290 = !DILocation(line: 69, column: 47, scope: !289)
!291 = !DILocation(line: 69, column: 38, scope: !289)
!292 = !DILocation(line: 69, column: 3, scope: !289)
!293 = !DILocation(line: 71, column: 36, scope: !294)
!294 = distinct !DILexicalBlock(scope: !153, file: !2, line: 71, column: 6)
!295 = !DILocation(line: 71, column: 6, scope: !294)
!296 = !DILocation(line: 71, column: 40, scope: !294)
!297 = !DILocation(line: 71, column: 6, scope: !153)
!298 = !DILocation(line: 72, column: 29, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !2, line: 71, column: 54)
!300 = !DILocation(line: 72, column: 45, scope: !299)
!301 = !DILocation(line: 72, column: 36, scope: !299)
!302 = !DILocation(line: 72, column: 3, scope: !299)
!303 = !DILocation(line: 74, column: 9, scope: !153)
!304 = !DILocation(line: 74, column: 2, scope: !153)
!305 = !DILocation(line: 75, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !153, file: !2, line: 75, column: 6)
!307 = !DILocation(line: 75, column: 24, scope: !306)
!308 = !DILocation(line: 75, column: 6, scope: !153)
!309 = !DILocation(line: 76, column: 14, scope: !306)
!310 = !DILocation(line: 76, column: 18, scope: !306)
!311 = !DILocation(line: 76, column: 33, scope: !306)
!312 = !DILocation(line: 77, column: 7, scope: !306)
!313 = !DILocation(line: 77, column: 27, scope: !306)
!314 = !DILocation(line: 78, column: 7, scope: !306)
!315 = !DILocation(line: 76, column: 3, scope: !306)
!316 = !DILocation(line: 80, column: 14, scope: !306)
!317 = !DILocation(line: 80, column: 18, scope: !306)
!318 = !DILocation(line: 80, column: 33, scope: !306)
!319 = !DILocation(line: 81, column: 7, scope: !306)
!320 = !DILocation(line: 81, column: 27, scope: !306)
!321 = !DILocation(line: 82, column: 7, scope: !306)
!322 = !DILocation(line: 80, column: 3, scope: !306)
!323 = !DILocation(line: 83, column: 9, scope: !153)
!324 = !DILocation(line: 83, column: 2, scope: !153)
!325 = !DILocation(line: 84, column: 2, scope: !153)
!326 = !DILocation(line: 85, column: 1, scope: !153)
!327 = !DISubprogram(name: "strcmp", scope: !328, file: !328, line: 156, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!329 = !DISubroutineType(types: !330)
!330 = !{!89, !146, !146}
!331 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 13, type: !332, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !41)
!332 = !DISubroutineType(types: !333)
!333 = !{null}
!334 = !DILocation(line: 15, column: 2, scope: !331)
!335 = !DISubprogram(name: "fopen", scope: !86, file: !86, line: 258, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DISubroutineType(types: !337)
!337 = !{!91, !145, !145}
!338 = !DISubprogram(name: "strerror", scope: !328, file: !328, line: 419, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DISubroutineType(types: !340)
!340 = !{!53, !89}
!341 = !DISubprogram(name: "__errno_location", scope: !342, file: !342, line: 37, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!343 = !DISubroutineType(types: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!346 = !DISubprogram(name: "fread", scope: !86, file: !86, line: 675, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubroutineType(types: !348)
!348 = !{!142, !349, !140, !140, !90}
!349 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!350 = !DISubprogram(name: "rewind", scope: !86, file: !86, line: 723, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !91}
!353 = !DISubprogram(name: "process_64", scope: !354, file: !354, line: 36, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DIFile(filename: "arch/x86/tools/relocs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d0059436f6812dc05cb9f158e59cffb")
!355 = !DISubroutineType(types: !356)
!356 = !{null, !91, !89, !89, !89, !89, !89}
!357 = !DISubprogram(name: "process_32", scope: !354, file: !354, line: 33, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubprogram(name: "fclose", scope: !86, file: !86, line: 178, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubroutineType(types: !360)
!360 = !{!89, !91}
