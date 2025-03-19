; ModuleID = 'arch/x86/kernel/io_delay.c'
source_filename = "arch/x86/kernel/io_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_native_io_delay: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad native_io_delay ; .previous"

%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.obs_kernel_param = type { ptr, ptr, i32 }

@io_delay_type = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !0
@__UNIQUE_ID___addressable_native_io_delay189 = internal global ptr @native_io_delay, section ".discard.addressable", align 8, !dbg !7
@io_delay_override = internal global i32 0, section ".init.data", align 4, !dbg !25
@io_delay_0xed_port_dmi_table = internal constant [6 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @dmi_io_delay_0xed_port, ptr @.str, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Quanta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"30B7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_io_delay_0xed_port, ptr @.str.1, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Quanta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"30B9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_io_delay_0xed_port, ptr @.str.2, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Quanta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"30B8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_io_delay_0xed_port, ptr @.str.3, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Quanta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"30BF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_io_delay_0xed_port, ptr @.str.4, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Quanta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"30D3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !49
@__setup_str_io_delay_param = internal constant [9 x i8] c"io_delay\00", section ".init.rodata", align 1, !dbg !83
@__setup_io_delay_param = internal global %struct.obs_kernel_param { ptr @__setup_str_io_delay_param, ptr @io_delay_param, i32 1 }, section ".init.setup", align 8, !dbg !9
@.str = private unnamed_addr constant [22 x i8] c"Compaq Presario V6000\00", align 1, !dbg !27
@.str.1 = private unnamed_addr constant [20 x i8] c"HP Pavilion dv9000z\00", align 1, !dbg !32
@.str.2 = private unnamed_addr constant [19 x i8] c"HP Pavilion dv6000\00", align 1, !dbg !37
@.str.3 = private unnamed_addr constant [19 x i8] c"HP Pavilion tx1000\00", align 1, !dbg !42
@.str.4 = private unnamed_addr constant [14 x i8] c"Presario F700\00", align 1, !dbg !44
@.str.5 = private unnamed_addr constant [33 x i8] c"\015%s: using 0xed I/O delay port\0A\00", align 1, !dbg !78
@.str.6 = private unnamed_addr constant [5 x i8] c"0x80\00", align 1, !dbg !88
@.str.7 = private unnamed_addr constant [5 x i8] c"0xed\00", align 1, !dbg !93
@.str.8 = private unnamed_addr constant [7 x i8] c"udelay\00", align 1, !dbg !95
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !100
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_native_io_delay189, ptr @__setup_io_delay_param], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @native_io_delay() #0 align 16 !dbg !111 {
entry:
  %0 = load i32, ptr @io_delay_type, align 4, !dbg !114
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.epilog
  ], !dbg !115

sw.default:                                       ; preds = %entry
  br label %sw.bb, !dbg !116

sw.bb:                                            ; preds = %entry, %sw.default
  call void asm sideeffect "outb %al, $$0x80", "~{dirflag},~{fpsr},~{flags}"() #5, !dbg !117, !srcloc !119
  br label %sw.epilog, !dbg !120

sw.bb1:                                           ; preds = %entry
  call void asm sideeffect "outb %al, $$0xed", "~{dirflag},~{fpsr},~{flags}"() #5, !dbg !121, !srcloc !122
  br label %sw.epilog, !dbg !123

sw.bb2:                                           ; preds = %entry
  call void @__const_udelay(i64 noundef 8590) #6, !dbg !124
  br label %sw.epilog, !dbg !129

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !130
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !131 dso_local void @__const_udelay(i64 noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @io_delay_init() #2 section ".init.text" align 16 !dbg !136 {
entry:
  %0 = load i32, ptr @io_delay_override, align 4, !dbg !137
  %tobool = icmp ne i32 %0, 0, !dbg !137
  br i1 %tobool, label %if.end, label %if.then, !dbg !139

if.then:                                          ; preds = %entry
  %call = call i32 @dmi_check_system(ptr noundef @io_delay_0xed_port_dmi_table) #6, !dbg !140
  br label %if.end, !dbg !140

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !141
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !142 dso_local i32 @dmi_check_system(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @io_delay_param(ptr noundef %s) #2 section ".init.text" align 16 !dbg !144 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load ptr, ptr %s.addr, align 8, !dbg !148
  %tobool = icmp ne ptr %0, null, !dbg !148
  br i1 %tobool, label %if.end, label %if.then, !dbg !150

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !151
  br label %return, !dbg !151

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !152
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.6) #6, !dbg !154
  %tobool1 = icmp ne i32 %call, 0, !dbg !154
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !155

if.then2:                                         ; preds = %if.end
  store i32 0, ptr @io_delay_type, align 4, !dbg !156
  br label %if.end18, !dbg !157

if.else:                                          ; preds = %if.end
  %2 = load ptr, ptr %s.addr, align 8, !dbg !158
  %call3 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.7) #6, !dbg !160
  %tobool4 = icmp ne i32 %call3, 0, !dbg !160
  br i1 %tobool4, label %if.else6, label %if.then5, !dbg !161

if.then5:                                         ; preds = %if.else
  store i32 1, ptr @io_delay_type, align 4, !dbg !162
  br label %if.end17, !dbg !163

if.else6:                                         ; preds = %if.else
  %3 = load ptr, ptr %s.addr, align 8, !dbg !164
  %call7 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.8) #6, !dbg !166
  %tobool8 = icmp ne i32 %call7, 0, !dbg !166
  br i1 %tobool8, label %if.else10, label %if.then9, !dbg !167

if.then9:                                         ; preds = %if.else6
  store i32 2, ptr @io_delay_type, align 4, !dbg !168
  br label %if.end16, !dbg !169

if.else10:                                        ; preds = %if.else6
  %4 = load ptr, ptr %s.addr, align 8, !dbg !170
  %call11 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.9) #6, !dbg !172
  %tobool12 = icmp ne i32 %call11, 0, !dbg !172
  br i1 %tobool12, label %if.else14, label %if.then13, !dbg !173

if.then13:                                        ; preds = %if.else10
  store i32 3, ptr @io_delay_type, align 4, !dbg !174
  br label %if.end15, !dbg !175

if.else14:                                        ; preds = %if.else10
  store i32 -22, ptr %retval, align 4, !dbg !176
  br label %return, !dbg !176

if.end15:                                         ; preds = %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then9
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then2
  store i32 1, ptr @io_delay_override, align 4, !dbg !177
  store i32 0, ptr %retval, align 4, !dbg !178
  br label %return, !dbg !178

return:                                           ; preds = %if.end18, %if.else14, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !179
  ret i32 %5, !dbg !179
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @dmi_io_delay_0xed_port(ptr noundef %id) #2 section ".init.text" align 16 !dbg !180 {
entry:
  %id.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = load i32, ptr @io_delay_type, align 4, !dbg !184
  %cmp = icmp eq i32 %0, 0, !dbg !186
  br i1 %cmp, label %if.then, label %if.end, !dbg !187

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !188

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !191

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %id.addr, align 8, !dbg !188
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %1, i32 0, i32 1, !dbg !188
  %2 = load ptr, ptr %ident, align 8, !dbg !188
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %2) #7, !dbg !188
  store i32 %call, ptr %tmp, align 4, !dbg !191
  %3 = load i32, ptr %tmp, align 4, !dbg !188
  store i32 1, ptr @io_delay_type, align 4, !dbg !193
  br label %if.end, !dbg !194

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !195
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !196 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !200 dso_local i32 @strcmp(ptr noundef, ptr noundef) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "io_delay_type", scope: !2, file: !3, line: 31, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.io_delay.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/io_delay\22 -D KBUILD_BASENAME=\22io_delay\22 -D KBUILD_MODNAME=\22io_delay\22 -D __KBUILD_MODNAME=kmod_io_delay -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/io_delay.ll arch/x86/kernel/io_delay.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/io_delay.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3436b9371243635aba217c7d88265bd8")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9, !25, !27, !32, !37, !42, !44, !49, !78, !83, !88, !93, !95, !100}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_native_io_delay189", scope: !2, file: !3, line: 62, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__setup_io_delay_param", scope: !2, file: !3, line: 148, type: !11, isLocal: true, isDefinition: true, align: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !12, line: 324, size: 192, elements: !13)
!12 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!13 = !{!14, !18, !24}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !11, file: !12, line: 325, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !11, file: !12, line: 326, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !11, file: !12, line: 327, baseType: !22, size: 32, offset: 128)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "io_delay_override", scope: !2, file: !3, line: 33, type: !22, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 176, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 22)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 20)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 152, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 19)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !39, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 112, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 14)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "io_delay_0xed_port_dmi_table", scope: !2, file: !3, line: 78, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16512, elements: !76)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !54, line: 587, size: 2752, elements: !55)
!54 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!55 = !{!56, !61, !62, !75}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !53, file: !54, line: 588, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!22, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !53, file: !54, line: 589, baseType: !15, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !53, file: !54, line: 590, baseType: !63, size: 2560, offset: 128)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2560, elements: !73)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !54, line: 581, size: 640, elements: !65)
!65 = !{!66, !68, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !64, file: !54, line: 582, baseType: !67, size: 7, flags: DIFlagBitField, extraData: i64 0)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !64, file: !54, line: 583, baseType: !67, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !64, file: !54, line: 584, baseType: !70, size: 632, offset: 8)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 632, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 79)
!73 = !{!74}
!74 = !DISubrange(count: 4)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !53, file: !54, line: 591, baseType: !5, size: 64, offset: 2688)
!76 = !{!77}
!77 = !DISubrange(count: 6)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 264, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 33)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "__setup_str_io_delay_param", scope: !2, file: !3, line: 148, type: !85, isLocal: true, isDefinition: true, align: 8)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 72, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 9)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 40, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 5)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !90, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 56, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 7)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !90, isLocal: true, isDefinition: true)
!102 = !{i32 7, !"Dwarf Version", i32 5}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 8, !"cf-protection-branch", i32 1}
!106 = !{i32 4, !"function_return_thunk_extern", i32 1}
!107 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!108 = !{i32 1, !"Code Model", i32 2}
!109 = !{i32 1, !"override-stack-alignment", i32 8}
!110 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!111 = distinct !DISubprogram(name: "native_io_delay", scope: !3, file: !3, line: 38, type: !112, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{null}
!114 = !DILocation(line: 40, column: 10, scope: !111)
!115 = !DILocation(line: 40, column: 2, scope: !111)
!116 = !DILocation(line: 40, column: 25, scope: !111)
!117 = !DILocation(line: 43, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !111, file: !3, line: 40, column: 25)
!119 = !{i64 1148}
!120 = !DILocation(line: 44, column: 3, scope: !118)
!121 = !DILocation(line: 46, column: 3, scope: !118)
!122 = !{i64 1219}
!123 = !DILocation(line: 47, column: 3, scope: !118)
!124 = !DILocation(line: 56, column: 3, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 56, column: 3)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 56, column: 3)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 56, column: 3)
!128 = distinct !DILexicalBlock(scope: !118, file: !3, line: 56, column: 3)
!129 = !DILocation(line: 57, column: 3, scope: !118)
!130 = !DILocation(line: 61, column: 1, scope: !111)
!131 = !DISubprogram(name: "__const_udelay", scope: !132, file: !132, line: 11, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135}
!135 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!136 = distinct !DISubprogram(name: "io_delay_init", scope: !3, file: !3, line: 122, type: !112, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!137 = !DILocation(line: 124, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !136, file: !3, line: 124, column: 6)
!139 = !DILocation(line: 124, column: 6, scope: !136)
!140 = !DILocation(line: 125, column: 3, scope: !138)
!141 = !DILocation(line: 126, column: 1, scope: !136)
!142 = !DISubprogram(name: "dmi_check_system", scope: !143, file: !143, line: 100, type: !58, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!144 = distinct !DISubprogram(name: "io_delay_param", scope: !3, file: !3, line: 128, type: !20, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !145)
!145 = !{!146}
!146 = !DILocalVariable(name: "s", arg: 1, scope: !144, file: !3, line: 128, type: !23)
!147 = !DILocation(line: 128, column: 40, scope: !144)
!148 = !DILocation(line: 130, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !3, line: 130, column: 6)
!150 = !DILocation(line: 130, column: 6, scope: !144)
!151 = !DILocation(line: 131, column: 3, scope: !149)
!152 = !DILocation(line: 133, column: 14, scope: !153)
!153 = distinct !DILexicalBlock(scope: !144, file: !3, line: 133, column: 6)
!154 = !DILocation(line: 133, column: 7, scope: !153)
!155 = !DILocation(line: 133, column: 6, scope: !144)
!156 = !DILocation(line: 134, column: 17, scope: !153)
!157 = !DILocation(line: 134, column: 3, scope: !153)
!158 = !DILocation(line: 135, column: 19, scope: !159)
!159 = distinct !DILexicalBlock(scope: !153, file: !3, line: 135, column: 11)
!160 = !DILocation(line: 135, column: 12, scope: !159)
!161 = !DILocation(line: 135, column: 11, scope: !153)
!162 = !DILocation(line: 136, column: 17, scope: !159)
!163 = !DILocation(line: 136, column: 3, scope: !159)
!164 = !DILocation(line: 137, column: 19, scope: !165)
!165 = distinct !DILexicalBlock(scope: !159, file: !3, line: 137, column: 11)
!166 = !DILocation(line: 137, column: 12, scope: !165)
!167 = !DILocation(line: 137, column: 11, scope: !159)
!168 = !DILocation(line: 138, column: 17, scope: !165)
!169 = !DILocation(line: 138, column: 3, scope: !165)
!170 = !DILocation(line: 139, column: 19, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !3, line: 139, column: 11)
!172 = !DILocation(line: 139, column: 12, scope: !171)
!173 = !DILocation(line: 139, column: 11, scope: !165)
!174 = !DILocation(line: 140, column: 17, scope: !171)
!175 = !DILocation(line: 140, column: 3, scope: !171)
!176 = !DILocation(line: 142, column: 3, scope: !171)
!177 = !DILocation(line: 144, column: 20, scope: !144)
!178 = !DILocation(line: 145, column: 2, scope: !144)
!179 = !DILocation(line: 146, column: 1, scope: !144)
!180 = distinct !DISubprogram(name: "dmi_io_delay_0xed_port", scope: !3, file: !3, line: 64, type: !58, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!181 = !{!182}
!182 = !DILocalVariable(name: "id", arg: 1, scope: !180, file: !3, line: 64, type: !60)
!183 = !DILocation(line: 64, column: 70, scope: !180)
!184 = !DILocation(line: 66, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !3, line: 66, column: 6)
!186 = !DILocation(line: 66, column: 20, scope: !185)
!187 = !DILocation(line: 66, column: 6, scope: !180)
!188 = !DILocation(line: 67, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 67, column: 3)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 66, column: 43)
!191 = !DILocation(line: 67, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 67, column: 3)
!193 = !DILocation(line: 68, column: 17, scope: !190)
!194 = !DILocation(line: 69, column: 2, scope: !190)
!195 = !DILocation(line: 71, column: 2, scope: !180)
!196 = !DISubprogram(name: "_printk", scope: !197, file: !197, line: 153, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!198 = !DISubroutineType(types: !199)
!199 = !{!22, !15, null}
!200 = !DISubprogram(name: "strcmp", scope: !201, file: !201, line: 88, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!202 = !DISubroutineType(types: !203)
!203 = !{!22, !15, !15}
