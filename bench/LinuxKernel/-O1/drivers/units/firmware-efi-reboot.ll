; ModuleID = 'drivers/firmware/efi/reboot.c'
source_filename = "drivers/firmware/efi/reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_reboot__267_78_efi_shutdown_init\22, \22a\22\09\09"
module asm "__initcall__kmod_reboot__267_78_efi_shutdown_init7:\09\09\09"
module asm ".long\09__initstub__kmod_reboot__267_78_efi_shutdown_init7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.efi = type { ptr, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i64 }
%struct.efi_memory_map = type { i64, ptr, ptr, i32, i64, i64, i64 }

@efi_reboot_quirk_mode = hidden global i32 -1, align 4, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"cold\00", align 1, !dbg !32
@.str.1 = private unnamed_addr constant [5 x i8] c"warm\00", align 1, !dbg !38
@.str.2 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1, !dbg !40
@.str.3 = private unnamed_addr constant [9 x i8] c"platform\00", align 1, !dbg !45
@__const.efi_reboot.str = private unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 16
@.str.4 = private unnamed_addr constant [96 x i8] c"\012efi: %s reset requested but pending capsule update requires %s reset... Performing %s reset.\0A\00", align 1, !dbg !47
@efi = external dso_local global %struct.efi, align 8
@__UNIQUE_ID___addressable___initstub__kmod_reboot__267_78_efi_shutdown_init7268 = internal global ptr @__initstub__kmod_reboot__267_78_efi_shutdown_init7, section ".discard.addressable", align 8, !dbg !52
@efi_sys_off_handler = internal global ptr null, align 8, !dbg !54
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_reboot__267_78_efi_shutdown_init7268], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @efi_reboot(i32 noundef %reboot_mode, ptr noundef %__unused) #0 align 16 !dbg !67 {
entry:
  %reboot_mode.addr = alloca i32, align 4
  %__unused.addr = alloca ptr, align 8
  %str = alloca [4 x ptr], align 16
  %efi_mode = alloca i32, align 4
  %cap_reset_mode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %reboot_mode, ptr %reboot_mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reboot_mode.addr, metadata !73, metadata !DIExpression()), !dbg !81
  store ptr %__unused, ptr %__unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %__unused.addr, metadata !74, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 32, ptr %str) #9, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %str, metadata !75, metadata !DIExpression()), !dbg !84
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %str, ptr align 16 @__const.efi_reboot.str, i64 32, i1 false), !dbg !84
  call void @llvm.lifetime.start.p0(i64 4, ptr %efi_mode) #9, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %efi_mode, metadata !79, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap_reset_mode) #9, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %cap_reset_mode, metadata !80, metadata !DIExpression()), !dbg !87
  %call = call zeroext i1 @efi_rt_services_supported(i32 noundef 1024) #10, !dbg !88
  br i1 %call, label %if.end, label %if.then, !dbg !90

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !91

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %reboot_mode.addr, align 4, !dbg !92
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
  ], !dbg !93

sw.bb:                                            ; preds = %if.end, %if.end
  store i32 1, ptr %efi_mode, align 4, !dbg !94
  br label %sw.epilog, !dbg !96

sw.default:                                       ; preds = %if.end
  store i32 0, ptr %efi_mode, align 4, !dbg !97
  br label %sw.epilog, !dbg !98

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %1 = load i32, ptr @efi_reboot_quirk_mode, align 4, !dbg !99
  %cmp = icmp ne i32 %1, -1, !dbg !101
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !102

if.then1:                                         ; preds = %sw.epilog
  %2 = load i32, ptr @efi_reboot_quirk_mode, align 4, !dbg !103
  store i32 %2, ptr %efi_mode, align 4, !dbg !104
  br label %if.end2, !dbg !105

if.end2:                                          ; preds = %if.then1, %sw.epilog
  %call3 = call zeroext i1 @efi_capsule_pending(ptr noundef %cap_reset_mode) #10, !dbg !106
  br i1 %call3, label %if.then4, label %if.end13, !dbg !108

if.then4:                                         ; preds = %if.end2
  %3 = load i32, ptr %efi_mode, align 4, !dbg !109
  %4 = load i32, ptr %cap_reset_mode, align 4, !dbg !112
  %cmp5 = icmp ne i32 %3, %4, !dbg !113
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !114

if.then6:                                         ; preds = %if.then4
  br label %do.body, !dbg !115

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !117

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !117

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %efi_mode, align 4, !dbg !115
  %idxprom = sext i32 %5 to i64, !dbg !115
  %arrayidx = getelementptr [4 x ptr], ptr %str, i64 0, i64 %idxprom, !dbg !115
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !115
  %7 = load i32, ptr %cap_reset_mode, align 4, !dbg !115
  %idxprom7 = sext i32 %7 to i64, !dbg !115
  %arrayidx8 = getelementptr [4 x ptr], ptr %str, i64 0, i64 %idxprom7, !dbg !115
  %8 = load ptr, ptr %arrayidx8, align 8, !dbg !115
  %9 = load i32, ptr %cap_reset_mode, align 4, !dbg !115
  %idxprom9 = sext i32 %9 to i64, !dbg !115
  %arrayidx10 = getelementptr [4 x ptr], ptr %str, i64 0, i64 %idxprom9, !dbg !115
  %10 = load ptr, ptr %arrayidx10, align 8, !dbg !115
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %6, ptr noundef %8, ptr noundef %10) #11, !dbg !115
  store i32 %call11, ptr %tmp, align 4, !dbg !117
  %11 = load i32, ptr %tmp, align 4, !dbg !115
  br label %if.end12, !dbg !119

if.end12:                                         ; preds = %do.end, %if.then4
  %12 = load i32, ptr %cap_reset_mode, align 4, !dbg !120
  store i32 %12, ptr %efi_mode, align 4, !dbg !121
  br label %if.end13, !dbg !122

if.end13:                                         ; preds = %if.end12, %if.end2
  %13 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 8, !dbg !123
  %14 = load i32, ptr %efi_mode, align 4, !dbg !124
  call void %13(i32 noundef %14, i64 noundef 0, i64 noundef 0, ptr noundef null) #10, !dbg !125
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !126
  br label %cleanup, !dbg !126

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap_reset_mode) #9, !dbg !126
  call void @llvm.lifetime.end.p0(i64 4, ptr %efi_mode) #9, !dbg !126
  call void @llvm.lifetime.end.p0(i64 32, ptr %str) #9, !dbg !126
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !126

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_rt_services_supported(i32 noundef %mask) #4 align 16 !dbg !127 {
entry:
  %mask.addr = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4, !dbg !137
  %1 = load i32, ptr %mask.addr, align 4, !dbg !138
  %and = and i32 %0, %1, !dbg !139
  %2 = load i32, ptr %mask.addr, align 4, !dbg !140
  %cmp = icmp eq i32 %and, %2, !dbg !141
  ret i1 %cmp, !dbg !142
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @efi_capsule_pending(ptr noundef %reset_type) #4 align 16 !dbg !143 {
entry:
  %reset_type.addr = alloca ptr, align 8
  store ptr %reset_type, ptr %reset_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reset_type.addr, metadata !148, metadata !DIExpression()), !dbg !149
  ret i1 false, !dbg !150
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !151 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden zeroext i1 @efi_poweroff_required() #0 align 16 !dbg !155 {
entry:
  ret i1 false, !dbg !158
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_reboot__267_78_efi_shutdown_init7() #6 section ".init.text" align 16 !dbg !159 {
entry:
  %call = call i32 @efi_shutdown_init() #11, !dbg !162
  ret i32 %call, !dbg !162
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @efi_shutdown_init() #6 section ".init.text" align 16 !dbg !163 {
entry:
  %retval = alloca i32, align 4
  %call = call zeroext i1 @efi_rt_services_supported(i32 noundef 1024) #10, !dbg !164
  br i1 %call, label %if.end, label %if.then, !dbg !166

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !167
  br label %return, !dbg !167

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @efi_poweroff_required() #10, !dbg !168
  br i1 %call1, label %if.then2, label %if.end8, !dbg !170

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @register_sys_off_handler(i32 noundef 1, i32 noundef 225, ptr noundef @efi_power_off, ptr noundef null) #10, !dbg !171
  store ptr %call3, ptr @efi_sys_off_handler, align 8, !dbg !173
  %0 = load ptr, ptr @efi_sys_off_handler, align 8, !dbg !174
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %0) #10, !dbg !176
  br i1 %call4, label %if.then5, label %if.end7, !dbg !177

if.then5:                                         ; preds = %if.then2
  %1 = load ptr, ptr @efi_sys_off_handler, align 8, !dbg !178
  %call6 = call i64 @PTR_ERR(ptr noundef %1) #10, !dbg !179
  %conv = trunc i64 %call6 to i32, !dbg !179
  store i32 %conv, ptr %retval, align 4, !dbg !180
  br label %return, !dbg !180

if.end7:                                          ; preds = %if.then2
  br label %if.end8, !dbg !181

if.end8:                                          ; preds = %if.end7, %if.end
  store i32 0, ptr %retval, align 4, !dbg !182
  br label %return, !dbg !182

return:                                           ; preds = %if.end8, %if.then5, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !183
  ret i32 %2, !dbg !183
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !184 dso_local ptr @register_sys_off_handler(i32 noundef, i32 noundef, ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @efi_power_off(ptr noundef %data) #0 align 16 !dbg !196 {
entry:
  %data.addr = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 8, !dbg !200
  call void %0(i32 noundef 2, i64 noundef 0, i64 noundef 0, ptr noundef null) #10, !dbg !201
  ret i32 0, !dbg !202
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !203 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !212
  %1 = ptrtoint ptr %0 to i64, !dbg !212
  %2 = inttoptr i64 %1 to ptr, !dbg !212
  %3 = ptrtoint ptr %2 to i64, !dbg !212
  %cmp = icmp uge i64 %3, -4095, !dbg !212
  %lnot = xor i1 %cmp, true, !dbg !212
  %lnot1 = xor i1 %lnot, true, !dbg !212
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !212
  %conv = sext i32 %lnot.ext to i64, !dbg !212
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !212
  %tobool = icmp ne i64 %expval, 0, !dbg !212
  ret i1 %tobool, !dbg !213
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !214 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !220
  %1 = ptrtoint ptr %0 to i64, !dbg !221
  ret i64 %1, !dbg !222
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "efi_reboot_quirk_mode", scope: !2, file: !3, line: 11, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/.reboot.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/firmware/efi/reboot\22 -D KBUILD_BASENAME=\22reboot\22 -D KBUILD_MODNAME=\22reboot\22 -D __KBUILD_MODNAME=kmod_reboot -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/reboot.ll drivers/firmware/efi/reboot.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !31, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/firmware/efi/reboot.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "685e11ed18bb236deab64a0300426809")
!4 = !{!5, !15, !21}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reboot_mode", file: !6, line: 17, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/reboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7764077571b3c42d5acdba437f8cc057")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "REBOOT_UNDEFINED", value: -1)
!10 = !DIEnumerator(name: "REBOOT_COLD", value: 0)
!11 = !DIEnumerator(name: "REBOOT_WARM", value: 1)
!12 = !DIEnumerator(name: "REBOOT_HARD", value: 2)
!13 = !DIEnumerator(name: "REBOOT_SOFT", value: 3)
!14 = !DIEnumerator(name: "REBOOT_GPIO", value: 4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 10, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sys_off_mode", file: !6, line: 92, baseType: !17, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "SYS_OFF_MODE_POWER_OFF_PREPARE", value: 0)
!24 = !DIEnumerator(name: "SYS_OFF_MODE_POWER_OFF", value: 1)
!25 = !DIEnumerator(name: "SYS_OFF_MODE_RESTART_PREPARE", value: 2)
!26 = !DIEnumerator(name: "SYS_OFF_MODE_RESTART", value: 3)
!27 = !{!28, !29, !30}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!31 = !{!0, !32, !38, !40, !45, !47, !52, !54}
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 15, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 40, elements: !36)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 5)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 15, type: !34, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 15, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 72, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 9)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 15, type: !42, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 768, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 96)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_reboot__267_78_efi_shutdown_init7268", scope: !2, file: !3, line: 78, type: !28, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "efi_sys_off_handler", scope: !2, file: !3, line: 9, type: !56, isLocal: true, isDefinition: true)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "sys_off_handler", file: !6, line: 10, flags: DIFlagFwdDecl)
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 8, !"cf-protection-branch", i32 1}
!62 = !{i32 4, !"function_return_thunk_extern", i32 1}
!63 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!64 = !{i32 1, !"Code Model", i32 2}
!65 = !{i32 1, !"override-stack-alignment", i32 8}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = distinct !DISubprogram(name: "efi_reboot", scope: !3, file: !3, line: 13, type: !68, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !5, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!72 = !{!73, !74, !75, !79, !80}
!73 = !DILocalVariable(name: "reboot_mode", arg: 1, scope: !67, file: !3, line: 13, type: !5)
!74 = !DILocalVariable(name: "__unused", arg: 2, scope: !67, file: !3, line: 13, type: !70)
!75 = !DILocalVariable(name: "str", scope: !67, file: !3, line: 15, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 4)
!79 = !DILocalVariable(name: "efi_mode", scope: !67, file: !3, line: 16, type: !7)
!80 = !DILocalVariable(name: "cap_reset_mode", scope: !67, file: !3, line: 16, type: !7)
!81 = !DILocation(line: 13, column: 34, scope: !67)
!82 = !DILocation(line: 13, column: 59, scope: !67)
!83 = !DILocation(line: 15, column: 2, scope: !67)
!84 = !DILocation(line: 15, column: 14, scope: !67)
!85 = !DILocation(line: 16, column: 2, scope: !67)
!86 = !DILocation(line: 16, column: 6, scope: !67)
!87 = !DILocation(line: 16, column: 16, scope: !67)
!88 = !DILocation(line: 18, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !67, file: !3, line: 18, column: 6)
!90 = !DILocation(line: 18, column: 6, scope: !67)
!91 = !DILocation(line: 19, column: 3, scope: !89)
!92 = !DILocation(line: 21, column: 10, scope: !67)
!93 = !DILocation(line: 21, column: 2, scope: !67)
!94 = !DILocation(line: 24, column: 12, scope: !95)
!95 = distinct !DILexicalBlock(scope: !67, file: !3, line: 21, column: 23)
!96 = !DILocation(line: 25, column: 3, scope: !95)
!97 = !DILocation(line: 27, column: 12, scope: !95)
!98 = !DILocation(line: 28, column: 3, scope: !95)
!99 = !DILocation(line: 34, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !67, file: !3, line: 34, column: 6)
!101 = !DILocation(line: 34, column: 28, scope: !100)
!102 = !DILocation(line: 34, column: 6, scope: !67)
!103 = !DILocation(line: 35, column: 14, scope: !100)
!104 = !DILocation(line: 35, column: 12, scope: !100)
!105 = !DILocation(line: 35, column: 3, scope: !100)
!106 = !DILocation(line: 37, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !67, file: !3, line: 37, column: 6)
!108 = !DILocation(line: 37, column: 6, scope: !67)
!109 = !DILocation(line: 38, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 38, column: 7)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 37, column: 44)
!112 = !DILocation(line: 38, column: 19, scope: !110)
!113 = !DILocation(line: 38, column: 16, scope: !110)
!114 = !DILocation(line: 38, column: 7, scope: !111)
!115 = !DILocation(line: 39, column: 4, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !3, line: 39, column: 4)
!117 = !DILocation(line: 39, column: 4, scope: !118)
!118 = distinct !DILexicalBlock(scope: !116, file: !3, line: 39, column: 4)
!119 = !DILocation(line: 39, column: 4, scope: !110)
!120 = !DILocation(line: 43, column: 14, scope: !111)
!121 = !DILocation(line: 43, column: 12, scope: !111)
!122 = !DILocation(line: 44, column: 2, scope: !111)
!123 = !DILocation(line: 46, column: 6, scope: !67)
!124 = !DILocation(line: 46, column: 19, scope: !67)
!125 = !DILocation(line: 46, column: 2, scope: !67)
!126 = !DILocation(line: 47, column: 1, scope: !67)
!127 = distinct !DISubprogram(name: "efi_rt_services_supported", scope: !128, file: !128, line: 894, type: !129, scopeLine: 895, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!128 = !DIFile(filename: "./include/linux/efi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2323d214b32d787c50a5d65c12a21824")
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !17}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !132, line: 35, baseType: !133)
!132 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!133 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!134 = !{!135}
!135 = !DILocalVariable(name: "mask", arg: 1, scope: !127, file: !128, line: 894, type: !17)
!136 = !DILocation(line: 894, column: 59, scope: !127)
!137 = !DILocation(line: 896, column: 14, scope: !127)
!138 = !DILocation(line: 896, column: 39, scope: !127)
!139 = !DILocation(line: 896, column: 37, scope: !127)
!140 = !DILocation(line: 896, column: 48, scope: !127)
!141 = !DILocation(line: 896, column: 45, scope: !127)
!142 = !DILocation(line: 896, column: 2, scope: !127)
!143 = distinct !DISubprogram(name: "efi_capsule_pending", scope: !128, file: !128, line: 1125, type: !144, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!131, !146}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!147 = !{!148}
!148 = !DILocalVariable(name: "reset_type", arg: 1, scope: !143, file: !128, line: 1125, type: !146)
!149 = !DILocation(line: 1125, column: 45, scope: !143)
!150 = !DILocation(line: 1125, column: 59, scope: !143)
!151 = !DISubprogram(name: "_printk", scope: !152, file: !152, line: 153, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!153 = !DISubroutineType(types: !154)
!154 = !{!7, !70, null}
!155 = distinct !DISubprogram(name: "efi_poweroff_required", scope: !3, file: !3, line: 49, type: !156, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!156 = !DISubroutineType(types: !157)
!157 = !{!131}
!158 = !DILocation(line: 51, column: 2, scope: !155)
!159 = distinct !DISubprogram(name: "__initstub__kmod_reboot__267_78_efi_shutdown_init7", scope: !3, file: !3, line: 78, type: !160, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!160 = !DISubroutineType(types: !161)
!161 = !{!7}
!162 = !DILocation(line: 78, column: 1, scope: !159)
!163 = distinct !DISubprogram(name: "efi_shutdown_init", scope: !3, file: !3, line: 61, type: !160, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!164 = !DILocation(line: 63, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !3, line: 63, column: 6)
!166 = !DILocation(line: 63, column: 6, scope: !163)
!167 = !DILocation(line: 64, column: 3, scope: !165)
!168 = !DILocation(line: 66, column: 6, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !3, line: 66, column: 6)
!170 = !DILocation(line: 66, column: 6, scope: !163)
!171 = !DILocation(line: 69, column: 4, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !3, line: 66, column: 31)
!173 = !DILocation(line: 68, column: 23, scope: !172)
!174 = !DILocation(line: 72, column: 14, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !3, line: 72, column: 7)
!176 = !DILocation(line: 72, column: 7, scope: !175)
!177 = !DILocation(line: 72, column: 7, scope: !172)
!178 = !DILocation(line: 73, column: 19, scope: !175)
!179 = !DILocation(line: 73, column: 11, scope: !175)
!180 = !DILocation(line: 73, column: 4, scope: !175)
!181 = !DILocation(line: 74, column: 2, scope: !172)
!182 = !DILocation(line: 76, column: 2, scope: !163)
!183 = !DILocation(line: 77, column: 1, scope: !163)
!184 = !DISubprogram(name: "register_sys_off_handler", scope: !6, file: !6, line: 140, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{!56, !21, !7, !187, !28}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!7, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_off_data", file: !6, line: 133, size: 192, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !191, file: !6, line: 134, baseType: !7, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cb_data", scope: !191, file: !6, line: 135, baseType: !28, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !191, file: !6, line: 136, baseType: !70, size: 64, offset: 128)
!196 = distinct !DISubprogram(name: "efi_power_off", scope: !3, file: !3, line: 54, type: !188, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!197 = !{!198}
!198 = !DILocalVariable(name: "data", arg: 1, scope: !196, file: !3, line: 54, type: !190)
!199 = !DILocation(line: 54, column: 47, scope: !196)
!200 = !DILocation(line: 56, column: 6, scope: !196)
!201 = !DILocation(line: 56, column: 2, scope: !196)
!202 = !DILocation(line: 58, column: 2, scope: !196)
!203 = distinct !DISubprogram(name: "IS_ERR", scope: !204, file: !204, line: 59, type: !205, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!204 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!205 = !DISubroutineType(types: !206)
!206 = !{!131, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!209 = !{!210}
!210 = !DILocalVariable(name: "ptr", arg: 1, scope: !203, file: !204, line: 59, type: !207)
!211 = !DILocation(line: 59, column: 60, scope: !203)
!212 = !DILocation(line: 61, column: 9, scope: !203)
!213 = !DILocation(line: 61, column: 2, scope: !203)
!214 = distinct !DISubprogram(name: "PTR_ERR", scope: !204, file: !204, line: 49, type: !215, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!30, !207}
!217 = !{!218}
!218 = !DILocalVariable(name: "ptr", arg: 1, scope: !214, file: !204, line: 49, type: !207)
!219 = !DILocation(line: 49, column: 61, scope: !214)
!220 = !DILocation(line: 51, column: 16, scope: !214)
!221 = !DILocation(line: 51, column: 9, scope: !214)
!222 = !DILocation(line: 51, column: 2, scope: !214)
