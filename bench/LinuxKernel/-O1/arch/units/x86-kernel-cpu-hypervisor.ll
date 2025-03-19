; ModuleID = 'arch/x86/kernel/cpu/hypervisor.c'
source_filename = "arch/x86/kernel/cpu/hypervisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x86_hyper_type: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad x86_hyper_type ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.x86_init_ops = type { %struct.x86_init_resources, %struct.x86_init_mpparse, %struct.x86_init_irqs, %struct.x86_init_oem, %struct.x86_init_paging, %struct.x86_init_timers, %struct.x86_init_iommu, %struct.x86_init_pci, %struct.x86_hyper_init, %struct.x86_init_acpi }
%struct.x86_init_resources = type { ptr, ptr, ptr, ptr }
%struct.x86_init_mpparse = type { ptr, ptr, ptr }
%struct.x86_init_irqs = type { ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_oem = type { ptr, ptr }
%struct.x86_init_paging = type { ptr }
%struct.x86_init_timers = type { ptr, ptr, ptr }
%struct.x86_init_iommu = type { ptr }
%struct.x86_init_pci = type { ptr, ptr, ptr, ptr }
%struct.x86_hyper_init = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x86_init_acpi = type { ptr, ptr, ptr }
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.hypervisor_x86 = type { ptr, ptr, i32, %struct.x86_hyper_init, %struct.x86_hyper_runtime, i8 }

@x86_hyper_type = hidden global i32 0, align 4, !dbg !0
@__UNIQUE_ID___addressable_x86_hyper_type148 = internal global ptr @x86_hyper_type, section ".discard.addressable", align 8, !dbg !31
@__setup_str_parse_nopv = internal constant [5 x i8] c"nopv\00", section ".init.rodata", align 1, !dbg !53
@__setup_parse_nopv = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_nopv, ptr @parse_nopv, i32 1 }, section ".init.setup", align 8, !dbg !33
@x86_init = external dso_local global %struct.x86_init_ops, align 8
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@nopv = hidden global i8 0, section ".init.data", align 1, !dbg !48
@hypervisors = internal constant [3 x ptr] [ptr @x86_hyper_vmware, ptr @x86_hyper_ms_hyperv, ptr @x86_hyper_kvm], section ".init.rodata", align 16, !dbg !63
@.str = private unnamed_addr constant [27 x i8] c"\016Hypervisor detected: %s\0A\00", align 1, !dbg !58
@x86_hyper_vmware = external dso_local constant %struct.hypervisor_x86, align 8
@x86_hyper_ms_hyperv = external dso_local constant %struct.hypervisor_x86, align 8
@x86_hyper_kvm = external dso_local constant %struct.hypervisor_x86, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_x86_hyper_type148, ptr @__setup_parse_nopv], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @parse_nopv(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !190 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !192, metadata !DIExpression()), !dbg !193
  store i8 1, ptr @nopv, align 1, !dbg !194
  ret i32 0, !dbg !195
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @init_hypervisor_platform() #0 section ".init.text" align 16 !dbg !196 {
entry:
  %h = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #6, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %h, metadata !198, metadata !DIExpression()), !dbg !200
  %call = call ptr @detect_hypervisor_vendor() #7, !dbg !201
  store ptr %call, ptr %h, align 8, !dbg !202
  %0 = load ptr, ptr %h, align 8, !dbg !203
  %tobool = icmp ne ptr %0, null, !dbg !203
  br i1 %tobool, label %if.end, label %if.then, !dbg !205

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !206

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %h, align 8, !dbg !207
  %init = getelementptr inbounds %struct.hypervisor_x86, ptr %1, i32 0, i32 3, !dbg !208
  call void @copy_array(ptr noundef %init, ptr noundef getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 8), i32 noundef 48) #7, !dbg !209
  %2 = load ptr, ptr %h, align 8, !dbg !210
  %runtime = getelementptr inbounds %struct.hypervisor_x86, ptr %2, i32 0, i32 4, !dbg !211
  call void @copy_array(ptr noundef %runtime, ptr noundef getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 15), i32 noundef 32) #7, !dbg !212
  %3 = load ptr, ptr %h, align 8, !dbg !213
  %type = getelementptr inbounds %struct.hypervisor_x86, ptr %3, i32 0, i32 2, !dbg !214
  %4 = load i32, ptr %type, align 8, !dbg !214
  store i32 %4, ptr @x86_hyper_type, align 4, !dbg !215
  %5 = load ptr, ptr getelementptr inbounds (%struct.x86_init_ops, ptr @x86_init, i32 0, i32 8), align 8, !dbg !216
  call void %5() #8, !dbg !217
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !218
  br label %cleanup, !dbg !218

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #6, !dbg !218
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !218

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @detect_hypervisor_vendor() #3 section ".init.text" align 16 !dbg !219 {
entry:
  %h = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pri = alloca i32, align 4
  %max_pri = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #6, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %h, metadata !223, metadata !DIExpression()), !dbg !229
  store ptr null, ptr %h, align 8, !dbg !229
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %p, metadata !224, metadata !DIExpression()), !dbg !230
  call void @llvm.lifetime.start.p0(i64 4, ptr %pri) #6, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %pri, metadata !226, metadata !DIExpression()), !dbg !232
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_pri) #6, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %max_pri, metadata !227, metadata !DIExpression()), !dbg !233
  store i32 0, ptr %max_pri, align 4, !dbg !233
  store ptr @hypervisors, ptr %p, align 8, !dbg !234
  br label %for.cond, !dbg !236

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %p, align 8, !dbg !237
  %cmp = icmp ult ptr %0, getelementptr (ptr, ptr @hypervisors, i64 3), !dbg !239
  br i1 %cmp, label %for.body, label %for.end, !dbg !240

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr @nopv, align 1, !dbg !241, !range !244, !noundef !245
  %tobool = trunc i8 %1 to i1, !dbg !241
  %lnot = xor i1 %tobool, true, !dbg !241
  %lnot1 = xor i1 %lnot, true, !dbg !241
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !241
  %conv = sext i32 %lnot.ext to i64, !dbg !241
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !241
  %tobool2 = icmp ne i64 %expval, 0, !dbg !241
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !246

land.lhs.true:                                    ; preds = %for.body
  %2 = load ptr, ptr %p, align 8, !dbg !247
  %3 = load ptr, ptr %2, align 8, !dbg !248
  %ignore_nopv = getelementptr inbounds %struct.hypervisor_x86, ptr %3, i32 0, i32 5, !dbg !249
  %4 = load i8, ptr %ignore_nopv, align 8, !dbg !249, !range !244, !noundef !245
  %tobool3 = trunc i8 %4 to i1, !dbg !249
  br i1 %tobool3, label %if.end, label %if.then, !dbg !250

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !251

if.end:                                           ; preds = %land.lhs.true, %for.body
  %5 = load ptr, ptr %p, align 8, !dbg !252
  %6 = load ptr, ptr %5, align 8, !dbg !253
  %detect = getelementptr inbounds %struct.hypervisor_x86, ptr %6, i32 0, i32 1, !dbg !254
  %7 = load ptr, ptr %detect, align 8, !dbg !254
  %call = call i32 %7() #8, !dbg !255
  store i32 %call, ptr %pri, align 4, !dbg !256
  %8 = load i32, ptr %pri, align 4, !dbg !257
  %9 = load i32, ptr %max_pri, align 4, !dbg !259
  %cmp4 = icmp ugt i32 %8, %9, !dbg !260
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !261

if.then6:                                         ; preds = %if.end
  %10 = load i32, ptr %pri, align 4, !dbg !262
  store i32 %10, ptr %max_pri, align 4, !dbg !264
  %11 = load ptr, ptr %p, align 8, !dbg !265
  %12 = load ptr, ptr %11, align 8, !dbg !266
  store ptr %12, ptr %h, align 8, !dbg !267
  br label %if.end7, !dbg !268

if.end7:                                          ; preds = %if.then6, %if.end
  br label %for.inc, !dbg !269

for.inc:                                          ; preds = %if.end7, %if.then
  %13 = load ptr, ptr %p, align 8, !dbg !270
  %incdec.ptr = getelementptr ptr, ptr %13, i32 1, !dbg !270
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !270
  br label %for.cond, !dbg !271, !llvm.loop !272

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %h, align 8, !dbg !276
  %tobool8 = icmp ne ptr %14, null, !dbg !276
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !278

if.then9:                                         ; preds = %for.end
  br label %do.body, !dbg !279

do.body:                                          ; preds = %if.then9
  br label %do.cond, !dbg !281

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !281

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %h, align 8, !dbg !279
  %name = getelementptr inbounds %struct.hypervisor_x86, ptr %15, i32 0, i32 0, !dbg !279
  %16 = load ptr, ptr %name, align 8, !dbg !279
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %16) #7, !dbg !279
  store i32 %call10, ptr %tmp, align 4, !dbg !281
  %17 = load i32, ptr %tmp, align 4, !dbg !279
  br label %if.end11, !dbg !283

if.end11:                                         ; preds = %do.end, %for.end
  %18 = load ptr, ptr %h, align 8, !dbg !284
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_pri) #6, !dbg !285
  call void @llvm.lifetime.end.p0(i64 4, ptr %pri) #6, !dbg !285
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !285
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #6, !dbg !285
  ret ptr %18, !dbg !286
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @copy_array(ptr noundef %src, ptr noundef %target, i32 noundef %size) #0 section ".init.text" align 16 !dbg !287 {
entry:
  %src.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %from = alloca ptr, align 8
  %to = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !291, metadata !DIExpression()), !dbg !298
  store ptr %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !292, metadata !DIExpression()), !dbg !299
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %i, metadata !294, metadata !DIExpression()), !dbg !302
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %n, metadata !295, metadata !DIExpression()), !dbg !303
  %0 = load i32, ptr %size.addr, align 4, !dbg !304
  %conv = zext i32 %0 to i64, !dbg !304
  %div = udiv i64 %conv, 8, !dbg !305
  %conv1 = trunc i64 %div to i32, !dbg !304
  store i32 %conv1, ptr %n, align 4, !dbg !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #6, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %from, metadata !296, metadata !DIExpression()), !dbg !307
  %1 = load ptr, ptr %src.addr, align 8, !dbg !308
  store ptr %1, ptr %from, align 8, !dbg !307
  call void @llvm.lifetime.start.p0(i64 8, ptr %to) #6, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %to, metadata !297, metadata !DIExpression()), !dbg !310
  %2 = load ptr, ptr %target.addr, align 8, !dbg !311
  store ptr %2, ptr %to, align 8, !dbg !310
  store i32 0, ptr %i, align 4, !dbg !312
  br label %for.cond, !dbg !314

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !315
  %4 = load i32, ptr %n, align 4, !dbg !317
  %cmp = icmp ult i32 %3, %4, !dbg !318
  br i1 %cmp, label %for.body, label %for.end, !dbg !319

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %from, align 8, !dbg !320
  %6 = load i32, ptr %i, align 4, !dbg !322
  %idxprom = zext i32 %6 to i64, !dbg !320
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !320
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !320
  %tobool = icmp ne ptr %7, null, !dbg !320
  br i1 %tobool, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %from, align 8, !dbg !324
  %9 = load i32, ptr %i, align 4, !dbg !325
  %idxprom3 = zext i32 %9 to i64, !dbg !324
  %arrayidx4 = getelementptr ptr, ptr %8, i64 %idxprom3, !dbg !324
  %10 = load ptr, ptr %arrayidx4, align 8, !dbg !324
  %11 = load ptr, ptr %to, align 8, !dbg !326
  %12 = load i32, ptr %i, align 4, !dbg !327
  %idxprom5 = zext i32 %12 to i64, !dbg !326
  %arrayidx6 = getelementptr ptr, ptr %11, i64 %idxprom5, !dbg !326
  store ptr %10, ptr %arrayidx6, align 8, !dbg !328
  br label %if.end, !dbg !326

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !329

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !dbg !330
  %inc = add i32 %13, 1, !dbg !330
  store i32 %inc, ptr %i, align 4, !dbg !330
  br label %for.cond, !dbg !331, !llvm.loop !332

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %to) #6, !dbg !334
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #6, !dbg !334
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6, !dbg !334
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !334
  ret void, !dbg !334
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !335 dso_local i32 @_printk(ptr noundef, ...) #5

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x86_hyper_type", scope: !2, file: !3, line: 50, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.hypervisor.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/hypervisor\22 -D KBUILD_BASENAME=\22hypervisor\22 -D KBUILD_MODNAME=\22hypervisor\22 -D __KBUILD_MODNAME=kmod_hypervisor -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/hypervisor.ll arch/x86/kernel/cpu/hypervisor.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/hypervisor.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0247f8e5ce16e9bda3ef7d4e91a8aa0")
!4 = !{!5, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "x86_hypervisor_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/hypervisor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c3d187261c297a091f71fc8abfac2f1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "X86_HYPER_NATIVE", value: 0)
!10 = !DIEnumerator(name: "X86_HYPER_VMWARE", value: 1)
!11 = !DIEnumerator(name: "X86_HYPER_MS_HYPERV", value: 2)
!12 = !DIEnumerator(name: "X86_HYPER_XEN_PV", value: 3)
!13 = !DIEnumerator(name: "X86_HYPER_XEN_HVM", value: 4)
!14 = !DIEnumerator(name: "X86_HYPER_KVM", value: 5)
!15 = !DIEnumerator(name: "X86_HYPER_JAILHOUSE", value: 6)
!16 = !DIEnumerator(name: "X86_HYPER_ACRN", value: 7)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 10, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !{!23, !24, !25, !29}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!30 = !{!31, !33, !0, !48, !53, !58, !63}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x86_hyper_type148", scope: !2, file: !3, line: 51, type: !23, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__setup_parse_nopv", scope: !2, file: !3, line: 59, type: !35, isLocal: true, isDefinition: true, align: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !36, line: 324, size: 192, elements: !37)
!36 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!37 = !{!38, !42, !47}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !35, file: !36, line: 325, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !35, file: !36, line: 326, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!24, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !35, file: !36, line: 327, baseType: !24, size: 32, offset: 128)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "nopv", scope: !2, file: !3, line: 53, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !51, line: 35, baseType: !52)
!51 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!52 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "__setup_str_parse_nopv", scope: !2, file: !3, line: 59, type: !55, isLocal: true, isDefinition: true, align: 8)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 40, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 5)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 216, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 27)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "hypervisors", scope: !2, file: !3, line: 29, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 192, elements: !179)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hypervisor_x86", file: !6, line: 41, size: 896, elements: !70)
!70 = !{!71, !72, !81, !82, !98, !178}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !69, file: !6, line: 43, baseType: !39, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !69, file: !6, line: 46, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 110, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !7)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !6, line: 49, baseType: !5, size: 32, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !69, file: !6, line: 52, baseType: !83, size: 384, offset: 192)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hyper_init", file: !84, line: 124, size: 384, elements: !85)
!84 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!85 = !{!86, !90, !91, !95, !96, !97}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "init_platform", scope: !83, file: !84, line: 125, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "guest_late_init", scope: !83, file: !84, line: 126, baseType: !87, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "x2apic_available", scope: !83, file: !84, line: 127, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!50}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "msi_ext_dest_id", scope: !83, file: !84, line: 128, baseType: !92, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem_mapping", scope: !83, file: !84, line: 129, baseType: !87, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "init_after_bootmem", scope: !83, file: !84, line: 130, baseType: !87, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !69, file: !6, line: 55, baseType: !99, size: 256, offset: 576)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_hyper_runtime", file: !84, line: 270, size: 256, elements: !100)
!100 = !{!101, !105, !170, !174}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pin_vcpu", scope: !99, file: !84, line: 271, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !24}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sev_es_hcall_prepare", scope: !99, file: !84, line: 272, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !109, !111}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "ghcb", file: !84, line: 7, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !113, line: 103, size: 1344, elements: !114)
!113 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!114 = !{!115, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !150, !151, !152}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !112, file: !113, line: 109, baseType: !116, size: 64)
!116 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !112, file: !113, line: 110, baseType: !116, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !112, file: !113, line: 111, baseType: !116, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !112, file: !113, line: 112, baseType: !116, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !112, file: !113, line: 113, baseType: !116, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !112, file: !113, line: 114, baseType: !116, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !112, file: !113, line: 117, baseType: !116, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !112, file: !113, line: 118, baseType: !116, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !112, file: !113, line: 119, baseType: !116, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !112, file: !113, line: 120, baseType: !116, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !112, file: !113, line: 121, baseType: !116, size: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !112, file: !113, line: 122, baseType: !116, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !112, file: !113, line: 123, baseType: !116, size: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !112, file: !113, line: 124, baseType: !116, size: 64, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !112, file: !113, line: 125, baseType: !116, size: 64, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !112, file: !113, line: 139, baseType: !116, size: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !112, file: !113, line: 142, baseType: !116, size: 64, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !113, line: 144, baseType: !134, size: 64, offset: 1088)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !113, line: 144, size: 64, elements: !135)
!135 = !{!136, !140, !144}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !134, file: !113, line: 146, baseType: !137, size: 16)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !139)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !134, file: !113, line: 148, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !143)
!143 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !134, file: !113, line: 150, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !113, line: 59, size: 64, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !145, file: !113, line: 61, baseType: !141, size: 16, flags: DIFlagBitField, extraData: i64 0)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !145, file: !113, line: 63, baseType: !141, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !145, file: !113, line: 65, baseType: !141, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !113, line: 153, baseType: !116, size: 64, offset: 1152)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !112, file: !113, line: 154, baseType: !116, size: 64, offset: 1216)
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !113, line: 156, baseType: !153, size: 64, offset: 1280)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !113, line: 156, size: 64, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !153, file: !113, line: 158, baseType: !137, size: 16)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !153, file: !113, line: 160, baseType: !141, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !153, file: !113, line: 162, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !113, line: 69, size: 64, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !158, file: !113, line: 71, baseType: !141, size: 16, flags: DIFlagBitField, extraData: i64 0)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !158, file: !113, line: 73, baseType: !141, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !158, file: !113, line: 75, baseType: !141, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !158, file: !113, line: 77, baseType: !141, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !158, file: !113, line: 80, baseType: !141, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !113, line: 83, baseType: !141, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !158, file: !113, line: 86, baseType: !141, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !158, file: !113, line: 88, baseType: !141, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !158, file: !113, line: 93, baseType: !141, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !158, file: !113, line: 100, baseType: !141, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "sev_es_hcall_finish", scope: !99, file: !84, line: 273, baseType: !171, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!50, !109, !111}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "is_private_mmio", scope: !99, file: !84, line: 274, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!50, !141}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_nopv", scope: !69, file: !6, line: 58, baseType: !50, size: 8, offset: 832)
!179 = !{!180}
!180 = !DISubrange(count: 3)
!181 = !{i32 7, !"Dwarf Version", i32 5}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 8, !"cf-protection-branch", i32 1}
!185 = !{i32 4, !"function_return_thunk_extern", i32 1}
!186 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!187 = !{i32 1, !"Code Model", i32 2}
!188 = !{i32 1, !"override-stack-alignment", i32 8}
!189 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!190 = distinct !DISubprogram(name: "parse_nopv", scope: !3, file: !3, line: 54, type: !44, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !191)
!191 = !{!192}
!192 = !DILocalVariable(name: "arg", arg: 1, scope: !190, file: !3, line: 54, type: !46)
!193 = !DILocation(line: 54, column: 36, scope: !190)
!194 = !DILocation(line: 56, column: 7, scope: !190)
!195 = !DILocation(line: 57, column: 2, scope: !190)
!196 = distinct !DISubprogram(name: "init_hypervisor_platform", scope: !3, file: !3, line: 95, type: !88, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!197 = !{!198}
!198 = !DILocalVariable(name: "h", scope: !196, file: !3, line: 97, type: !67)
!199 = !DILocation(line: 97, column: 2, scope: !196)
!200 = !DILocation(line: 97, column: 31, scope: !196)
!201 = !DILocation(line: 99, column: 6, scope: !196)
!202 = !DILocation(line: 99, column: 4, scope: !196)
!203 = !DILocation(line: 101, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !196, file: !3, line: 101, column: 6)
!205 = !DILocation(line: 101, column: 6, scope: !196)
!206 = !DILocation(line: 102, column: 3, scope: !204)
!207 = !DILocation(line: 104, column: 14, scope: !196)
!208 = !DILocation(line: 104, column: 17, scope: !196)
!209 = !DILocation(line: 104, column: 2, scope: !196)
!210 = !DILocation(line: 105, column: 14, scope: !196)
!211 = !DILocation(line: 105, column: 17, scope: !196)
!212 = !DILocation(line: 105, column: 2, scope: !196)
!213 = !DILocation(line: 107, column: 19, scope: !196)
!214 = !DILocation(line: 107, column: 22, scope: !196)
!215 = !DILocation(line: 107, column: 17, scope: !196)
!216 = !DILocation(line: 108, column: 17, scope: !196)
!217 = !DILocation(line: 108, column: 2, scope: !196)
!218 = !DILocation(line: 109, column: 1, scope: !196)
!219 = distinct !DISubprogram(name: "detect_hypervisor_vendor", scope: !3, file: !3, line: 62, type: !220, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!67}
!222 = !{!223, !224, !226, !227}
!223 = !DILocalVariable(name: "h", scope: !219, file: !3, line: 64, type: !67)
!224 = !DILocalVariable(name: "p", scope: !219, file: !3, line: 64, type: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!226 = !DILocalVariable(name: "pri", scope: !219, file: !3, line: 65, type: !76)
!227 = !DILocalVariable(name: "max_pri", scope: !219, file: !3, line: 65, type: !76)
!228 = !DILocation(line: 64, column: 2, scope: !219)
!229 = !DILocation(line: 64, column: 31, scope: !219)
!230 = !DILocation(line: 64, column: 50, scope: !219)
!231 = !DILocation(line: 65, column: 2, scope: !219)
!232 = !DILocation(line: 65, column: 11, scope: !219)
!233 = !DILocation(line: 65, column: 16, scope: !219)
!234 = !DILocation(line: 67, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !219, file: !3, line: 67, column: 2)
!236 = !DILocation(line: 67, column: 7, scope: !235)
!237 = !DILocation(line: 67, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !3, line: 67, column: 2)
!239 = !DILocation(line: 67, column: 26, scope: !238)
!240 = !DILocation(line: 67, column: 2, scope: !235)
!241 = !DILocation(line: 68, column: 7, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 68, column: 7)
!243 = distinct !DILexicalBlock(scope: !238, file: !3, line: 67, column: 72)
!244 = !{i8 0, i8 2}
!245 = !{}
!246 = !DILocation(line: 68, column: 22, scope: !242)
!247 = !DILocation(line: 68, column: 28, scope: !242)
!248 = !DILocation(line: 68, column: 27, scope: !242)
!249 = !DILocation(line: 68, column: 32, scope: !242)
!250 = !DILocation(line: 68, column: 7, scope: !243)
!251 = !DILocation(line: 69, column: 4, scope: !242)
!252 = !DILocation(line: 71, column: 11, scope: !243)
!253 = !DILocation(line: 71, column: 10, scope: !243)
!254 = !DILocation(line: 71, column: 15, scope: !243)
!255 = !DILocation(line: 71, column: 9, scope: !243)
!256 = !DILocation(line: 71, column: 7, scope: !243)
!257 = !DILocation(line: 72, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !243, file: !3, line: 72, column: 7)
!259 = !DILocation(line: 72, column: 13, scope: !258)
!260 = !DILocation(line: 72, column: 11, scope: !258)
!261 = !DILocation(line: 72, column: 7, scope: !243)
!262 = !DILocation(line: 73, column: 14, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !3, line: 72, column: 22)
!264 = !DILocation(line: 73, column: 12, scope: !263)
!265 = !DILocation(line: 74, column: 9, scope: !263)
!266 = !DILocation(line: 74, column: 8, scope: !263)
!267 = !DILocation(line: 74, column: 6, scope: !263)
!268 = !DILocation(line: 75, column: 3, scope: !263)
!269 = !DILocation(line: 76, column: 2, scope: !243)
!270 = !DILocation(line: 67, column: 68, scope: !238)
!271 = !DILocation(line: 67, column: 2, scope: !238)
!272 = distinct !{!272, !240, !273, !274, !275}
!273 = !DILocation(line: 76, column: 2, scope: !235)
!274 = !{!"llvm.loop.mustprogress"}
!275 = !{!"llvm.loop.unroll.disable"}
!276 = !DILocation(line: 78, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !219, file: !3, line: 78, column: 6)
!278 = !DILocation(line: 78, column: 6, scope: !219)
!279 = !DILocation(line: 79, column: 3, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !3, line: 79, column: 3)
!281 = !DILocation(line: 79, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !280, file: !3, line: 79, column: 3)
!283 = !DILocation(line: 79, column: 3, scope: !277)
!284 = !DILocation(line: 81, column: 9, scope: !219)
!285 = !DILocation(line: 82, column: 1, scope: !219)
!286 = !DILocation(line: 81, column: 2, scope: !219)
!287 = distinct !DISubprogram(name: "copy_array", scope: !3, file: !3, line: 84, type: !288, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !27, !23, !7}
!290 = !{!291, !292, !293, !294, !295, !296, !297}
!291 = !DILocalVariable(name: "src", arg: 1, scope: !287, file: !3, line: 84, type: !27)
!292 = !DILocalVariable(name: "target", arg: 2, scope: !287, file: !3, line: 84, type: !23)
!293 = !DILocalVariable(name: "size", arg: 3, scope: !287, file: !3, line: 84, type: !7)
!294 = !DILocalVariable(name: "i", scope: !287, file: !3, line: 86, type: !7)
!295 = !DILocalVariable(name: "n", scope: !287, file: !3, line: 86, type: !7)
!296 = !DILocalVariable(name: "from", scope: !287, file: !3, line: 87, type: !25)
!297 = !DILocalVariable(name: "to", scope: !287, file: !3, line: 88, type: !29)
!298 = !DILocation(line: 84, column: 43, scope: !287)
!299 = !DILocation(line: 84, column: 54, scope: !287)
!300 = !DILocation(line: 84, column: 75, scope: !287)
!301 = !DILocation(line: 86, column: 2, scope: !287)
!302 = !DILocation(line: 86, column: 15, scope: !287)
!303 = !DILocation(line: 86, column: 18, scope: !287)
!304 = !DILocation(line: 86, column: 22, scope: !287)
!305 = !DILocation(line: 86, column: 27, scope: !287)
!306 = !DILocation(line: 87, column: 2, scope: !287)
!307 = !DILocation(line: 87, column: 22, scope: !287)
!308 = !DILocation(line: 87, column: 51, scope: !287)
!309 = !DILocation(line: 88, column: 2, scope: !287)
!310 = !DILocation(line: 88, column: 15, scope: !287)
!311 = !DILocation(line: 88, column: 35, scope: !287)
!312 = !DILocation(line: 90, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !287, file: !3, line: 90, column: 2)
!314 = !DILocation(line: 90, column: 7, scope: !313)
!315 = !DILocation(line: 90, column: 14, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !3, line: 90, column: 2)
!317 = !DILocation(line: 90, column: 18, scope: !316)
!318 = !DILocation(line: 90, column: 16, scope: !316)
!319 = !DILocation(line: 90, column: 2, scope: !313)
!320 = !DILocation(line: 91, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !3, line: 91, column: 7)
!322 = !DILocation(line: 91, column: 12, scope: !321)
!323 = !DILocation(line: 91, column: 7, scope: !316)
!324 = !DILocation(line: 92, column: 12, scope: !321)
!325 = !DILocation(line: 92, column: 17, scope: !321)
!326 = !DILocation(line: 92, column: 4, scope: !321)
!327 = !DILocation(line: 92, column: 7, scope: !321)
!328 = !DILocation(line: 92, column: 10, scope: !321)
!329 = !DILocation(line: 91, column: 13, scope: !321)
!330 = !DILocation(line: 90, column: 22, scope: !316)
!331 = !DILocation(line: 90, column: 2, scope: !316)
!332 = distinct !{!332, !319, !333, !274, !275}
!333 = !DILocation(line: 92, column: 18, scope: !313)
!334 = !DILocation(line: 93, column: 1, scope: !287)
!335 = !DISubprogram(name: "_printk", scope: !336, file: !336, line: 153, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!337 = !DISubroutineType(types: !338)
!338 = !{!24, !39, null}
