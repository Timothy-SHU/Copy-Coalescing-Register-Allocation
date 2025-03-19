; ModuleID = 'arch/x86/realmode/rm/wakemain.c'
source_filename = "arch/x86/realmode/rm/wakemain.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.wakeup_header = type <{ i16, i32, i16, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }>
%struct.port_io_ops = type { ptr, ptr, ptr }

@wakeup_header = external dso_local global %struct.wakeup_header, align 1
@.str = private unnamed_addr constant [5 x i8] c"...-\00", align 1, !dbg !0
@pio_ops = dso_local global %struct.port_io_ops zeroinitializer, align 4, !dbg !7

; Function Attrs: nounwind
define dso_local void @main() #0 !dbg !40 {
entry:
  call void @init_default_io_ops() #6, !dbg !43
  %0 = load i32, ptr getelementptr inbounds (%struct.wakeup_header, ptr @wakeup_header, i32 0, i32 13), align 1, !dbg !44
  %cmp = icmp ne i32 %0, 305419896, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  br label %while.body, !dbg !48

while.body:                                       ; preds = %if.then, %while.body
  br label %while.body, !dbg !48, !llvm.loop !49

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.wakeup_header, ptr @wakeup_header, i32 0, i32 12), align 1, !dbg !52
  %and = and i32 %1, 4, !dbg !54
  %tobool = icmp ne i32 %and, 0, !dbg !54
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !55

if.then1:                                         ; preds = %if.end
  call void @send_morse(ptr inreg noundef @.str) #6, !dbg !56
  br label %if.end2, !dbg !56

if.end2:                                          ; preds = %if.then1, %if.end
  %2 = load i32, ptr getelementptr inbounds (%struct.wakeup_header, ptr @wakeup_header, i32 0, i32 12), align 1, !dbg !57
  %and3 = and i32 %2, 1, !dbg !59
  %tobool4 = icmp ne i32 %and3, 0, !dbg !59
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !60

if.then5:                                         ; preds = %if.end2
  call void asm sideeffect "lcallw   $$0xc000,$$3", "~{dirflag},~{fpsr},~{flags}"() #7, !dbg !61, !srcloc !62
  br label %if.end6, !dbg !61

if.end6:                                          ; preds = %if.then5, %if.end2
  %3 = load i32, ptr getelementptr inbounds (%struct.wakeup_header, ptr @wakeup_header, i32 0, i32 12), align 1, !dbg !63
  %and7 = and i32 %3, 2, !dbg !65
  %tobool8 = icmp ne i32 %and7, 0, !dbg !65
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !66

if.then9:                                         ; preds = %if.end6
  call void @probe_cards(i32 inreg noundef 0) #6, !dbg !67
  %4 = load i16, ptr @wakeup_header, align 1, !dbg !69
  %call = call i32 @set_mode(i16 inreg noundef zeroext %4) #6, !dbg !70
  br label %if.end10, !dbg !71

if.end10:                                         ; preds = %if.then9, %if.end6
  ret void, !dbg !72
}

; Function Attrs: inlinehint nounwind
define internal void @init_default_io_ops() #1 !dbg !73 {
entry:
  store ptr @__inb, ptr @pio_ops, align 4, !dbg !74
  store ptr @__outb, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !75
  store ptr @__outw, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 2), align 4, !dbg !76
  ret void, !dbg !77
}

; Function Attrs: nounwind
define internal void @send_morse(ptr inreg noundef %pattern) #0 !dbg !78 {
entry:
  %pattern.addr = alloca ptr, align 4
  %s = alloca i8, align 1
  store ptr %pattern, ptr %pattern.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pattern.addr, metadata !84, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 1, ptr %s) #7, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %s, metadata !85, metadata !DIExpression()), !dbg !88
  br label %while.cond, !dbg !89

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load ptr, ptr %pattern.addr, align 4, !dbg !90
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1, !dbg !90
  store ptr %incdec.ptr, ptr %pattern.addr, align 4, !dbg !90
  %1 = load i8, ptr %0, align 1, !dbg !91
  store i8 %1, ptr %s, align 1, !dbg !92
  %tobool = icmp ne i8 %1, 0, !dbg !89
  br i1 %tobool, label %while.body, label %while.end, !dbg !89

while.body:                                       ; preds = %while.cond
  %2 = load i8, ptr %s, align 1, !dbg !93
  %conv = sext i8 %2 to i32, !dbg !93
  switch i32 %conv, label %sw.default [
    i32 46, label %sw.bb
    i32 45, label %sw.bb1
  ], !dbg !95

sw.bb:                                            ; preds = %while.body
  call void @beep(i32 inreg noundef 880) #6, !dbg !96
  call void @udelay(i32 inreg noundef 125000) #6, !dbg !98
  call void @beep(i32 inreg noundef 0) #6, !dbg !99
  call void @udelay(i32 inreg noundef 125000) #6, !dbg !100
  br label %sw.epilog, !dbg !101

sw.bb1:                                           ; preds = %while.body
  call void @beep(i32 inreg noundef 587) #6, !dbg !102
  call void @udelay(i32 inreg noundef 375000) #6, !dbg !103
  call void @beep(i32 inreg noundef 0) #6, !dbg !104
  call void @udelay(i32 inreg noundef 125000) #6, !dbg !105
  br label %sw.epilog, !dbg !106

sw.default:                                       ; preds = %while.body
  call void @udelay(i32 inreg noundef 375000) #6, !dbg !107
  br label %sw.epilog, !dbg !108

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  br label %while.cond, !dbg !89, !llvm.loop !109

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %s) #7, !dbg !112
  ret void, !dbg !112
}

declare !dbg !113 dso_local void @probe_cards(i32 inreg noundef) #2

declare !dbg !118 dso_local i32 @set_mode(i16 inreg noundef zeroext) #2

; Function Attrs: alwaysinline nounwind
define internal zeroext i8 @__inb(i16 inreg noundef zeroext %port) #3 !dbg !121 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #7, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %value, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = load i16, ptr %port.addr, align 2, !dbg !126
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #7, !dbg !126, !srcloc !127
  store i8 %1, ptr %value, align 1, !dbg !126
  %2 = load i8, ptr %value, align 1, !dbg !126
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #7, !dbg !126
  ret i8 %2, !dbg !126
}

; Function Attrs: alwaysinline nounwind
define internal void @__outb(i8 inreg noundef zeroext %value, i16 inreg noundef zeroext %port) #3 !dbg !128 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !130, metadata !DIExpression()), !dbg !132
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load i8, ptr %value.addr, align 1, !dbg !132
  %1 = load i16, ptr %port.addr, align 2, !dbg !132
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #7, !dbg !132, !srcloc !133
  ret void, !dbg !132
}

; Function Attrs: alwaysinline nounwind
define internal void @__outw(i16 inreg noundef zeroext %value, i16 inreg noundef zeroext %port) #3 !dbg !134 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i16, align 2
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !136, metadata !DIExpression()), !dbg !138
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = load i16, ptr %value.addr, align 2, !dbg !138
  %1 = load i16, ptr %port.addr, align 2, !dbg !138
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16 %1) #7, !dbg !138, !srcloc !139
  ret void, !dbg !138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
define internal void @beep(i32 inreg noundef %hz) #0 !dbg !140 {
entry:
  %hz.addr = alloca i32, align 4
  %enable = alloca i8, align 1
  %div = alloca i16, align 2
  store i32 %hz, ptr %hz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hz.addr, metadata !145, metadata !DIExpression()), !dbg !150
  call void @llvm.lifetime.start.p0(i64 1, ptr %enable) #7, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %enable, metadata !146, metadata !DIExpression()), !dbg !152
  %0 = load i32, ptr %hz.addr, align 4, !dbg !153
  %tobool = icmp ne i32 %0, 0, !dbg !153
  br i1 %tobool, label %if.else, label %if.then, !dbg !154

if.then:                                          ; preds = %entry
  store i8 0, ptr %enable, align 1, !dbg !155
  br label %if.end, !dbg !157

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr %div) #7, !dbg !158
  call void @llvm.dbg.declare(metadata ptr %div, metadata !147, metadata !DIExpression()), !dbg !159
  %1 = load i32, ptr %hz.addr, align 4, !dbg !160
  %div1 = udiv i32 1193181, %1, !dbg !161
  %conv = trunc i32 %div1 to i16, !dbg !162
  store i16 %conv, ptr %div, align 2, !dbg !159
  %2 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !163
  call void %2(i8 inreg noundef zeroext -74, i16 inreg noundef zeroext 67) #6, !dbg !163
  call void @io_delay() #6, !dbg !164
  %3 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !165
  %4 = load i16, ptr %div, align 2, !dbg !166
  %conv2 = trunc i16 %4 to i8, !dbg !166
  call void %3(i8 inreg noundef zeroext %conv2, i16 inreg noundef zeroext 66) #6, !dbg !165
  call void @io_delay() #6, !dbg !167
  %5 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !168
  %6 = load i16, ptr %div, align 2, !dbg !169
  %conv3 = zext i16 %6 to i32, !dbg !169
  %shr = ashr i32 %conv3, 8, !dbg !170
  %conv4 = trunc i32 %shr to i8, !dbg !169
  call void %5(i8 inreg noundef zeroext %conv4, i16 inreg noundef zeroext 66) #6, !dbg !168
  call void @io_delay() #6, !dbg !171
  store i8 3, ptr %enable, align 1, !dbg !172
  call void @llvm.lifetime.end.p0(i64 2, ptr %div) #7, !dbg !173
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr @pio_ops, align 4, !dbg !174
  %call = call zeroext i8 %7(i16 inreg noundef zeroext 97) #6, !dbg !174
  call void @io_delay() #6, !dbg !175
  %8 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !176
  %9 = load i8, ptr %enable, align 1, !dbg !177
  call void %8(i8 inreg noundef zeroext %9, i16 inreg noundef zeroext 97) #6, !dbg !176
  call void @io_delay() #6, !dbg !178
  call void @llvm.lifetime.end.p0(i64 1, ptr %enable) #7, !dbg !179
  ret void, !dbg !179
}

; Function Attrs: nounwind
define internal void @udelay(i32 inreg noundef %loops) #0 !dbg !180 {
entry:
  %loops.addr = alloca i32, align 4
  store i32 %loops, ptr %loops.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %loops.addr, metadata !182, metadata !DIExpression()), !dbg !183
  br label %while.cond, !dbg !184

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %loops.addr, align 4, !dbg !185
  %dec = add nsw i32 %0, -1, !dbg !185
  store i32 %dec, ptr %loops.addr, align 4, !dbg !185
  %tobool = icmp ne i32 %0, 0, !dbg !184
  br i1 %tobool, label %while.body, label %while.end, !dbg !184

while.body:                                       ; preds = %while.cond
  call void @io_delay() #6, !dbg !186
  br label %while.cond, !dbg !184, !llvm.loop !187

while.end:                                        ; preds = %while.cond
  ret void, !dbg !189
}

; Function Attrs: inlinehint nounwind
define internal void @io_delay() #1 !dbg !190 {
entry:
  %DELAY_PORT = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %DELAY_PORT) #7, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %DELAY_PORT, metadata !192, metadata !DIExpression()), !dbg !195
  store i16 128, ptr %DELAY_PORT, align 2, !dbg !195
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !196
  call void %0(i8 inreg noundef zeroext 0, i16 inreg noundef zeroext 128) #6, !dbg !196
  call void @llvm.lifetime.end.p0(i64 2, ptr %DELAY_PORT) #7, !dbg !197
  ret void, !dbg !197
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #3 = { alwaysinline nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/realmode/rm/wakemain.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fe81c4bde6038d4833a5900296fecb8d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "pio_ops", scope: !9, file: !2, line: 65, type: !11, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/realmode/rm/.wakemain.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -D _WAKEUP -I ./arch/x86/boot -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/realmode/rm/wakemain\22 -D KBUILD_BASENAME=\22wakemain\22 -D KBUILD_MODNAME=\22wakemain\22 -D __KBUILD_MODNAME=kmod_wakemain -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/realmode/rm/wakemain.ll arch/x86/realmode/rm/wakemain.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !10, splitDebugInlining: false, nameTableKind: None)
!10 = !{!0, !7}
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "port_io_ops", file: !12, line: 14, size: 96, elements: !13)
!12 = !DIFile(filename: "./arch/x86/boot/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3eae878608090f3626da203e8d7145d")
!13 = !{!14, !26, !30}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "f_inb", scope: !11, file: !12, line: 15, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !23}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !25)
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "f_outb", scope: !11, file: !12, line: 16, baseType: !27, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !18, !23}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "f_outw", scope: !11, file: !12, line: 17, baseType: !31, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !23, !23}
!34 = !{i32 1, !"NumRegisterParameters", i32 3}
!35 = !{i32 7, !"Dwarf Version", i32 5}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 1, !"override-stack-alignment", i32 4}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 67, type: !41, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!41 = !DISubroutineType(types: !42)
!42 = !{null}
!43 = !DILocation(line: 69, column: 2, scope: !40)
!44 = !DILocation(line: 72, column: 20, scope: !45)
!45 = distinct !DILexicalBlock(scope: !40, file: !2, line: 72, column: 6)
!46 = !DILocation(line: 72, column: 31, scope: !45)
!47 = !DILocation(line: 72, column: 6, scope: !40)
!48 = !DILocation(line: 73, column: 3, scope: !45)
!49 = distinct !{!49, !48, !50, !51}
!50 = !DILocation(line: 74, column: 4, scope: !45)
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !DILocation(line: 76, column: 20, scope: !53)
!53 = distinct !DILexicalBlock(scope: !40, file: !2, line: 76, column: 6)
!54 = !DILocation(line: 76, column: 35, scope: !53)
!55 = !DILocation(line: 76, column: 6, scope: !40)
!56 = !DILocation(line: 77, column: 3, scope: !53)
!57 = !DILocation(line: 79, column: 20, scope: !58)
!58 = distinct !DILexicalBlock(scope: !40, file: !2, line: 79, column: 6)
!59 = !DILocation(line: 79, column: 35, scope: !58)
!60 = !DILocation(line: 79, column: 6, scope: !40)
!61 = !DILocation(line: 80, column: 3, scope: !58)
!62 = !{i64 1480}
!63 = !DILocation(line: 82, column: 20, scope: !64)
!64 = distinct !DILexicalBlock(scope: !40, file: !2, line: 82, column: 6)
!65 = !DILocation(line: 82, column: 35, scope: !64)
!66 = !DILocation(line: 82, column: 6, scope: !40)
!67 = !DILocation(line: 84, column: 3, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !2, line: 82, column: 40)
!69 = !DILocation(line: 85, column: 26, scope: !68)
!70 = !DILocation(line: 85, column: 3, scope: !68)
!71 = !DILocation(line: 86, column: 2, scope: !68)
!72 = !DILocation(line: 87, column: 1, scope: !40)
!73 = distinct !DISubprogram(name: "init_default_io_ops", scope: !12, file: !12, line: 26, type: !41, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!74 = !DILocation(line: 28, column: 17, scope: !73)
!75 = !DILocation(line: 29, column: 17, scope: !73)
!76 = !DILocation(line: 30, column: 17, scope: !73)
!77 = !DILocation(line: 31, column: 1, scope: !73)
!78 = distinct !DISubprogram(name: "send_morse", scope: !2, file: !2, line: 40, type: !79, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !83)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!83 = !{!84, !85}
!84 = !DILocalVariable(name: "pattern", arg: 1, scope: !78, file: !2, line: 40, type: !81)
!85 = !DILocalVariable(name: "s", scope: !78, file: !2, line: 42, type: !4)
!86 = !DILocation(line: 40, column: 36, scope: !78)
!87 = !DILocation(line: 42, column: 2, scope: !78)
!88 = !DILocation(line: 42, column: 7, scope: !78)
!89 = !DILocation(line: 44, column: 2, scope: !78)
!90 = !DILocation(line: 44, column: 22, scope: !78)
!91 = !DILocation(line: 44, column: 14, scope: !78)
!92 = !DILocation(line: 44, column: 12, scope: !78)
!93 = !DILocation(line: 45, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !78, file: !2, line: 44, column: 27)
!95 = !DILocation(line: 45, column: 3, scope: !94)
!96 = !DILocation(line: 47, column: 4, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !2, line: 45, column: 14)
!98 = !DILocation(line: 48, column: 4, scope: !97)
!99 = !DILocation(line: 49, column: 4, scope: !97)
!100 = !DILocation(line: 50, column: 4, scope: !97)
!101 = !DILocation(line: 51, column: 4, scope: !97)
!102 = !DILocation(line: 53, column: 4, scope: !97)
!103 = !DILocation(line: 54, column: 4, scope: !97)
!104 = !DILocation(line: 55, column: 4, scope: !97)
!105 = !DILocation(line: 56, column: 4, scope: !97)
!106 = !DILocation(line: 57, column: 4, scope: !97)
!107 = !DILocation(line: 59, column: 4, scope: !97)
!108 = !DILocation(line: 60, column: 4, scope: !97)
!109 = distinct !{!109, !89, !110, !111, !51}
!110 = !DILocation(line: 62, column: 2, scope: !78)
!111 = !{!"llvm.loop.mustprogress"}
!112 = !DILocation(line: 63, column: 1, scope: !78)
!113 = !DISubprogram(name: "probe_cards", scope: !114, file: !114, line: 326, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DIFile(filename: "./arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117}
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DISubprogram(name: "set_mode", scope: !114, file: !114, line: 324, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!117, !23}
!121 = distinct !DISubprogram(name: "__inb", scope: !122, file: !122, line: 22, type: !16, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !123)
!122 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!123 = !{!124, !125}
!124 = !DILocalVariable(name: "port", arg: 1, scope: !121, file: !122, line: 22, type: !23)
!125 = !DILocalVariable(name: "value", scope: !121, file: !122, line: 22, type: !18)
!126 = !DILocation(line: 22, column: 1, scope: !121)
!127 = !{i64 2147846960}
!128 = distinct !DISubprogram(name: "__outb", scope: !122, file: !122, line: 22, type: !28, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !129)
!129 = !{!130, !131}
!130 = !DILocalVariable(name: "value", arg: 1, scope: !128, file: !122, line: 22, type: !18)
!131 = !DILocalVariable(name: "port", arg: 2, scope: !128, file: !122, line: 22, type: !23)
!132 = !DILocation(line: 22, column: 1, scope: !128)
!133 = !{i64 2147846764}
!134 = distinct !DISubprogram(name: "__outw", scope: !122, file: !122, line: 23, type: !32, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !135)
!135 = !{!136, !137}
!136 = !DILocalVariable(name: "value", arg: 1, scope: !134, file: !122, line: 23, type: !23)
!137 = !DILocalVariable(name: "port", arg: 2, scope: !134, file: !122, line: 23, type: !23)
!138 = !DILocation(line: 23, column: 1, scope: !134)
!139 = !{i64 2147847605}
!140 = distinct !DISubprogram(name: "beep", scope: !2, file: !2, line: 11, type: !141, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !144)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !143}
!143 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!144 = !{!145, !146, !147}
!145 = !DILocalVariable(name: "hz", arg: 1, scope: !140, file: !2, line: 11, type: !143)
!146 = !DILocalVariable(name: "enable", scope: !140, file: !2, line: 13, type: !18)
!147 = !DILocalVariable(name: "div", scope: !148, file: !2, line: 18, type: !23)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 17, column: 9)
!149 = distinct !DILexicalBlock(scope: !140, file: !2, line: 15, column: 6)
!150 = !DILocation(line: 11, column: 31, scope: !140)
!151 = !DILocation(line: 13, column: 2, scope: !140)
!152 = !DILocation(line: 13, column: 5, scope: !140)
!153 = !DILocation(line: 15, column: 7, scope: !149)
!154 = !DILocation(line: 15, column: 6, scope: !140)
!155 = !DILocation(line: 16, column: 10, scope: !156)
!156 = distinct !DILexicalBlock(scope: !149, file: !2, line: 15, column: 11)
!157 = !DILocation(line: 17, column: 2, scope: !156)
!158 = !DILocation(line: 18, column: 3, scope: !148)
!159 = !DILocation(line: 18, column: 7, scope: !148)
!160 = !DILocation(line: 18, column: 21, scope: !148)
!161 = !DILocation(line: 18, column: 20, scope: !148)
!162 = !DILocation(line: 18, column: 13, scope: !148)
!163 = !DILocation(line: 20, column: 3, scope: !148)
!164 = !DILocation(line: 21, column: 3, scope: !148)
!165 = !DILocation(line: 22, column: 3, scope: !148)
!166 = !DILocation(line: 22, column: 8, scope: !148)
!167 = !DILocation(line: 23, column: 3, scope: !148)
!168 = !DILocation(line: 24, column: 3, scope: !148)
!169 = !DILocation(line: 24, column: 8, scope: !148)
!170 = !DILocation(line: 24, column: 12, scope: !148)
!171 = !DILocation(line: 25, column: 3, scope: !148)
!172 = !DILocation(line: 27, column: 10, scope: !148)
!173 = !DILocation(line: 28, column: 2, scope: !149)
!174 = !DILocation(line: 29, column: 2, scope: !140)
!175 = !DILocation(line: 30, column: 2, scope: !140)
!176 = !DILocation(line: 31, column: 2, scope: !140)
!177 = !DILocation(line: 31, column: 7, scope: !140)
!178 = !DILocation(line: 32, column: 2, scope: !140)
!179 = !DILocation(line: 33, column: 1, scope: !140)
!180 = distinct !DISubprogram(name: "udelay", scope: !2, file: !2, line: 5, type: !115, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !181)
!181 = !{!182}
!182 = !DILocalVariable(name: "loops", arg: 1, scope: !180, file: !2, line: 5, type: !117)
!183 = !DILocation(line: 5, column: 24, scope: !180)
!184 = !DILocation(line: 7, column: 2, scope: !180)
!185 = !DILocation(line: 7, column: 14, scope: !180)
!186 = !DILocation(line: 8, column: 3, scope: !180)
!187 = distinct !{!187, !184, !188, !111, !51}
!188 = !DILocation(line: 8, column: 12, scope: !180)
!189 = !DILocation(line: 9, column: 1, scope: !180)
!190 = distinct !DISubprogram(name: "io_delay", scope: !114, file: !114, line: 39, type: !41, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !191)
!191 = !{!192}
!192 = !DILocalVariable(name: "DELAY_PORT", scope: !190, file: !114, line: 41, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!194 = !DILocation(line: 41, column: 2, scope: !190)
!195 = !DILocation(line: 41, column: 12, scope: !190)
!196 = !DILocation(line: 42, column: 2, scope: !190)
!197 = !DILocation(line: 43, column: 1, scope: !190)
