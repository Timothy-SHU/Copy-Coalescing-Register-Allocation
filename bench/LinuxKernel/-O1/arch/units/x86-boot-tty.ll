; ModuleID = 'arch/x86/boot/tty.c'
source_filename = "arch/x86/boot/tty.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.biosregs = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.1 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@early_serial_base = dso_local global i32 0, align 4, !dbg !0
@pio_ops = external dso_local global %struct.port_io_ops, align 4

; Function Attrs: nounwind
define dso_local void @putchar(i32 inreg noundef %ch) #0 section ".inittext" !dbg !12 {
entry:
  %ch.addr = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, ptr %ch.addr, align 4, !dbg !18
  %cmp = icmp eq i32 %0, 10, !dbg !20
  br i1 %cmp, label %if.then, label %if.end, !dbg !21

if.then:                                          ; preds = %entry
  call void @putchar(i32 inreg noundef 13) #4, !dbg !22
  br label %if.end, !dbg !22

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %ch.addr, align 4, !dbg !23
  call void @bios_putchar(i32 inreg noundef %1) #4, !dbg !24
  %2 = load i32, ptr @early_serial_base, align 4, !dbg !25
  %cmp1 = icmp ne i32 %2, 0, !dbg !27
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !28

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %ch.addr, align 4, !dbg !29
  call void @serial_putchar(i32 inreg noundef %3) #4, !dbg !30
  br label %if.end3, !dbg !30

if.end3:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !31
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define internal void @bios_putchar(i32 inreg noundef %ch) #0 section ".inittext" !dbg !32 {
entry:
  %ch.addr = alloca i32, align 4
  %ireg = alloca %struct.biosregs, align 4
  store i32 %ch, ptr %ch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !34, metadata !DIExpression()), !dbg !127
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #5, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !35, metadata !DIExpression()), !dbg !129
  call void @initregs(ptr inreg noundef %ireg) #4, !dbg !130
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !131
  %bx = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 8, !dbg !131
  store i16 7, ptr %bx, align 4, !dbg !132
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !133
  %cx = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 12, !dbg !133
  store i16 1, ptr %cx, align 4, !dbg !134
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !135
  %ah = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 29, !dbg !135
  store i8 14, ptr %ah, align 1, !dbg !136
  %3 = load i32, ptr %ch.addr, align 4, !dbg !137
  %conv = trunc i32 %3 to i8, !dbg !137
  %4 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !138
  %al = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 28, !dbg !138
  store i8 %conv, ptr %al, align 4, !dbg !139
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #4, !dbg !140
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #5, !dbg !141
  ret void, !dbg !141
}

; Function Attrs: nounwind
define internal void @serial_putchar(i32 inreg noundef %ch) #0 section ".inittext" !dbg !142 {
entry:
  %ch.addr = alloca i32, align 4
  %timeout = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !144, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %timeout) #5, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %timeout, metadata !145, metadata !DIExpression()), !dbg !148
  store i32 65535, ptr %timeout, align 4, !dbg !148
  br label %while.cond, !dbg !149

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @pio_ops, align 4, !dbg !150
  %1 = load i32, ptr @early_serial_base, align 4, !dbg !151
  %add = add nsw i32 %1, 5, !dbg !152
  %conv = trunc i32 %add to i16, !dbg !151
  %call = call zeroext i8 %0(i16 inreg noundef zeroext %conv) #4, !dbg !150
  %conv1 = zext i8 %call to i32, !dbg !150
  %and = and i32 %conv1, 32, !dbg !153
  %cmp = icmp eq i32 %and, 0, !dbg !154
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !155

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %timeout, align 4, !dbg !156
  %dec = add i32 %2, -1, !dbg !156
  store i32 %dec, ptr %timeout, align 4, !dbg !156
  %tobool = icmp ne i32 %dec, 0, !dbg !155
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !157
  br i1 %3, label %while.body, label %while.end, !dbg !149

while.body:                                       ; preds = %land.end
  call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #5, !dbg !158, !srcloc !159
  br label %while.cond, !dbg !149, !llvm.loop !160

while.end:                                        ; preds = %land.end
  %4 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !163
  %5 = load i32, ptr %ch.addr, align 4, !dbg !164
  %conv3 = trunc i32 %5 to i8, !dbg !164
  %6 = load i32, ptr @early_serial_base, align 4, !dbg !165
  %add4 = add nsw i32 %6, 0, !dbg !166
  %conv5 = trunc i32 %add4 to i16, !dbg !165
  call void %4(i8 inreg noundef zeroext %conv3, i16 inreg noundef zeroext %conv5) #4, !dbg !163
  call void @llvm.lifetime.end.p0(i64 4, ptr %timeout) #5, !dbg !167
  ret void, !dbg !167
}

; Function Attrs: nounwind
define dso_local void @puts(ptr inreg noundef %str) #0 section ".inittext" !dbg !168 {
entry:
  %str.addr = alloca ptr, align 4
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !175, metadata !DIExpression()), !dbg !176
  br label %while.cond, !dbg !177

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %str.addr, align 4, !dbg !178
  %1 = load i8, ptr %0, align 1, !dbg !179
  %tobool = icmp ne i8 %1, 0, !dbg !177
  br i1 %tobool, label %while.body, label %while.end, !dbg !177

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 4, !dbg !180
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1, !dbg !180
  store ptr %incdec.ptr, ptr %str.addr, align 4, !dbg !180
  %3 = load i8, ptr %2, align 1, !dbg !181
  %conv = sext i8 %3 to i32, !dbg !181
  call void @putchar(i32 inreg noundef %conv) #4, !dbg !182
  br label %while.cond, !dbg !177, !llvm.loop !183

while.end:                                        ; preds = %while.cond
  ret void, !dbg !185
}

; Function Attrs: nounwind
define dso_local i32 @getchar() #0 !dbg !186 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #5, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #5, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !191, metadata !DIExpression()), !dbg !194
  call void @initregs(ptr inreg noundef %ireg) #4, !dbg !195
  call void @intcall(i8 inreg noundef zeroext 22, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #4, !dbg !196
  %0 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !197
  %al = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 28, !dbg !197
  %1 = load i8, ptr %al, align 4, !dbg !197
  %conv = zext i8 %1 to i32, !dbg !198
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #5, !dbg !199
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #5, !dbg !199
  ret i32 %conv, !dbg !200
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !201 dso_local void @initregs(ptr inreg noundef) #3

declare !dbg !205 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local void @kbd_flush() #0 !dbg !210 {
entry:
  br label %for.cond, !dbg !213

for.cond:                                         ; preds = %if.end, %entry
  %call = call i32 @kbd_pending() #4, !dbg !214
  %tobool = icmp ne i32 %call, 0, !dbg !214
  br i1 %tobool, label %if.end, label %if.then, !dbg !219

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !220

if.end:                                           ; preds = %for.cond
  %call1 = call i32 @getchar() #4, !dbg !221
  br label %for.cond, !dbg !222, !llvm.loop !223

for.end:                                          ; preds = %if.then
  ret void, !dbg !226
}

; Function Attrs: nounwind
define internal i32 @kbd_pending() #0 !dbg !227 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #5, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !229, metadata !DIExpression()), !dbg !232
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #5, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !230, metadata !DIExpression()), !dbg !233
  call void @initregs(ptr inreg noundef %ireg) #4, !dbg !234
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !235
  %ah = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 29, !dbg !235
  store i8 1, ptr %ah, align 1, !dbg !236
  call void @intcall(i8 inreg noundef zeroext 22, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #4, !dbg !237
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !238
  %eflags = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 10, !dbg !238
  %2 = load i32, ptr %eflags, align 4, !dbg !238
  %and = and i32 %2, 64, !dbg !239
  %tobool = icmp ne i32 %and, 0, !dbg !240
  %lnot = xor i1 %tobool, true, !dbg !240
  %lnot.ext = zext i1 %lnot to i32, !dbg !240
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #5, !dbg !241
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #5, !dbg !241
  ret i32 %lnot.ext, !dbg !242
}

; Function Attrs: nounwind
define dso_local i32 @getchar_timeout() #0 !dbg !243 {
entry:
  %retval = alloca i32, align 4
  %cnt = alloca i32, align 4
  %t0 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #5, !dbg !248
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !245, metadata !DIExpression()), !dbg !249
  store i32 30, ptr %cnt, align 4, !dbg !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %t0) #5, !dbg !250
  call void @llvm.dbg.declare(metadata ptr %t0, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 4, ptr %t1) #5, !dbg !250
  call void @llvm.dbg.declare(metadata ptr %t1, metadata !247, metadata !DIExpression()), !dbg !252
  %call = call zeroext i8 @gettime() #4, !dbg !253
  %conv = zext i8 %call to i32, !dbg !253
  store i32 %conv, ptr %t0, align 4, !dbg !254
  br label %while.cond, !dbg !255

while.cond:                                       ; preds = %if.end8, %entry
  %0 = load i32, ptr %cnt, align 4, !dbg !256
  %tobool = icmp ne i32 %0, 0, !dbg !255
  br i1 %tobool, label %while.body, label %while.end, !dbg !255

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @kbd_pending() #4, !dbg !257
  %tobool2 = icmp ne i32 %call1, 0, !dbg !257
  br i1 %tobool2, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %while.body
  %call3 = call i32 @getchar() #4, !dbg !261
  store i32 %call3, ptr %retval, align 4, !dbg !262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !262

if.end:                                           ; preds = %while.body
  %call4 = call zeroext i8 @gettime() #4, !dbg !263
  %conv5 = zext i8 %call4 to i32, !dbg !263
  store i32 %conv5, ptr %t1, align 4, !dbg !264
  %1 = load i32, ptr %t0, align 4, !dbg !265
  %2 = load i32, ptr %t1, align 4, !dbg !267
  %cmp = icmp ne i32 %1, %2, !dbg !268
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !269

if.then7:                                         ; preds = %if.end
  %3 = load i32, ptr %cnt, align 4, !dbg !270
  %dec = add nsw i32 %3, -1, !dbg !270
  store i32 %dec, ptr %cnt, align 4, !dbg !270
  %4 = load i32, ptr %t1, align 4, !dbg !272
  store i32 %4, ptr %t0, align 4, !dbg !273
  br label %if.end8, !dbg !274

if.end8:                                          ; preds = %if.then7, %if.end
  br label %while.cond, !dbg !255, !llvm.loop !275

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !277

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %t1) #5, !dbg !278
  call void @llvm.lifetime.end.p0(i64 4, ptr %t0) #5, !dbg !278
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #5, !dbg !278
  %5 = load i32, ptr %retval, align 4, !dbg !278
  ret i32 %5, !dbg !278
}

; Function Attrs: nounwind
define internal zeroext i8 @gettime() #0 !dbg !279 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #5, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #5, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !284, metadata !DIExpression()), !dbg !287
  call void @initregs(ptr inreg noundef %ireg) #4, !dbg !288
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !289
  %ah = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 29, !dbg !289
  store i8 2, ptr %ah, align 1, !dbg !290
  call void @intcall(i8 inreg noundef zeroext 26, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #4, !dbg !291
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !292
  %dh = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 21, !dbg !292
  %2 = load i8, ptr %dh, align 1, !dbg !292
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #5, !dbg !293
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #5, !dbg !293
  ret i8 %2, !dbg !294
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "early_serial_base", scope: !2, file: !3, line: 16, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.tty.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/tty\22 -D KBUILD_BASENAME=\22tty\22 -D KBUILD_MODNAME=\22tty\22 -D __KBUILD_MODNAME=kmod_tty -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/tty.ll arch/x86/boot/tty.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/tty.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b6321042890d180b71a04883fa7dd50")
!4 = !{!0}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 1, !"NumRegisterParameters", i32 3}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 1, !"override-stack-alignment", i32 4}
!11 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!12 = distinct !DISubprogram(name: "putchar", scope: !3, file: !3, line: 50, type: !13, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !5}
!15 = !{!16}
!16 = !DILocalVariable(name: "ch", arg: 1, scope: !12, file: !3, line: 50, type: !5)
!17 = !DILocation(line: 50, column: 41, scope: !12)
!18 = !DILocation(line: 52, column: 6, scope: !19)
!19 = distinct !DILexicalBlock(scope: !12, file: !3, line: 52, column: 6)
!20 = !DILocation(line: 52, column: 9, scope: !19)
!21 = !DILocation(line: 52, column: 6, scope: !12)
!22 = !DILocation(line: 53, column: 3, scope: !19)
!23 = !DILocation(line: 55, column: 15, scope: !12)
!24 = !DILocation(line: 55, column: 2, scope: !12)
!25 = !DILocation(line: 57, column: 6, scope: !26)
!26 = distinct !DILexicalBlock(scope: !12, file: !3, line: 57, column: 6)
!27 = !DILocation(line: 57, column: 24, scope: !26)
!28 = !DILocation(line: 57, column: 6, scope: !12)
!29 = !DILocation(line: 58, column: 18, scope: !26)
!30 = !DILocation(line: 58, column: 3, scope: !26)
!31 = !DILocation(line: 59, column: 1, scope: !12)
!32 = distinct !DISubprogram(name: "bios_putchar", scope: !3, file: !3, line: 38, type: !13, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!33 = !{!34, !35}
!34 = !DILocalVariable(name: "ch", arg: 1, scope: !32, file: !3, line: 38, type: !5)
!35 = !DILocalVariable(name: "ireg", scope: !32, file: !3, line: 40, type: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !37, line: 206, size: 352, elements: !38)
!37 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_member, scope: !36, file: !37, line: 207, baseType: !40, size: 352)
!40 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !36, file: !37, line: 207, size: 352, elements: !41)
!41 = !{!42, !61, !89}
!42 = !DIDerivedType(tag: DW_TAG_member, scope: !40, file: !37, line: 208, baseType: !43, size: 352)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !37, line: 208, size: 352, elements: !44)
!44 = !{!45, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !43, file: !37, line: 209, baseType: !46, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !47, line: 21, baseType: !48)
!47 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !49, line: 27, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !43, file: !37, line: 210, baseType: !46, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !43, file: !37, line: 211, baseType: !46, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !43, file: !37, line: 212, baseType: !46, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !43, file: !37, line: 213, baseType: !46, size: 32, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !43, file: !37, line: 214, baseType: !46, size: 32, offset: 160)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !43, file: !37, line: 215, baseType: !46, size: 32, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !43, file: !37, line: 216, baseType: !46, size: 32, offset: 224)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !43, file: !37, line: 217, baseType: !46, size: 32, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !43, file: !37, line: 218, baseType: !46, size: 32, offset: 288)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !43, file: !37, line: 219, baseType: !46, size: 32, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, scope: !40, file: !37, line: 221, baseType: !62, size: 352)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !37, line: 221, size: 352, elements: !63)
!63 = !{!64, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !62, file: !37, line: 222, baseType: !65, size: 16)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !47, line: 19, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !49, line: 24, baseType: !67)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !62, file: !37, line: 222, baseType: !65, size: 16, offset: 16)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !62, file: !37, line: 223, baseType: !65, size: 16, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !62, file: !37, line: 223, baseType: !65, size: 16, offset: 48)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !62, file: !37, line: 224, baseType: !65, size: 16, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !62, file: !37, line: 224, baseType: !65, size: 16, offset: 80)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !62, file: !37, line: 225, baseType: !65, size: 16, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !62, file: !37, line: 225, baseType: !65, size: 16, offset: 112)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !62, file: !37, line: 226, baseType: !65, size: 16, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !62, file: !37, line: 226, baseType: !65, size: 16, offset: 144)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !62, file: !37, line: 227, baseType: !65, size: 16, offset: 160)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !62, file: !37, line: 227, baseType: !65, size: 16, offset: 176)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !62, file: !37, line: 228, baseType: !65, size: 16, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !62, file: !37, line: 228, baseType: !65, size: 16, offset: 208)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !62, file: !37, line: 229, baseType: !65, size: 16, offset: 224)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !62, file: !37, line: 229, baseType: !65, size: 16, offset: 240)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !62, file: !37, line: 230, baseType: !65, size: 16, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !62, file: !37, line: 230, baseType: !65, size: 16, offset: 272)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !62, file: !37, line: 231, baseType: !65, size: 16, offset: 288)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !62, file: !37, line: 231, baseType: !65, size: 16, offset: 304)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !37, line: 232, baseType: !65, size: 16, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !62, file: !37, line: 232, baseType: !65, size: 16, offset: 336)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !40, file: !37, line: 234, baseType: !90, size: 256)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !40, file: !37, line: 234, size: 256, elements: !91)
!91 = !{!92, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !90, file: !37, line: 235, baseType: !93, size: 8)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !47, line: 17, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !49, line: 21, baseType: !95)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !90, file: !37, line: 235, baseType: !93, size: 8, offset: 8)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !90, file: !37, line: 235, baseType: !93, size: 8, offset: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !90, file: !37, line: 235, baseType: !93, size: 8, offset: 24)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !90, file: !37, line: 236, baseType: !93, size: 8, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !90, file: !37, line: 236, baseType: !93, size: 8, offset: 40)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !90, file: !37, line: 236, baseType: !93, size: 8, offset: 48)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !90, file: !37, line: 236, baseType: !93, size: 8, offset: 56)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !90, file: !37, line: 237, baseType: !93, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !90, file: !37, line: 237, baseType: !93, size: 8, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !90, file: !37, line: 237, baseType: !93, size: 8, offset: 80)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !90, file: !37, line: 237, baseType: !93, size: 8, offset: 88)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !90, file: !37, line: 238, baseType: !93, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !90, file: !37, line: 238, baseType: !93, size: 8, offset: 104)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !90, file: !37, line: 238, baseType: !93, size: 8, offset: 112)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !90, file: !37, line: 238, baseType: !93, size: 8, offset: 120)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !90, file: !37, line: 239, baseType: !93, size: 8, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !90, file: !37, line: 239, baseType: !93, size: 8, offset: 136)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !90, file: !37, line: 239, baseType: !93, size: 8, offset: 144)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !90, file: !37, line: 239, baseType: !93, size: 8, offset: 152)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !90, file: !37, line: 240, baseType: !93, size: 8, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !90, file: !37, line: 240, baseType: !93, size: 8, offset: 168)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !90, file: !37, line: 240, baseType: !93, size: 8, offset: 176)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !90, file: !37, line: 240, baseType: !93, size: 8, offset: 184)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !90, file: !37, line: 241, baseType: !93, size: 8, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !90, file: !37, line: 241, baseType: !93, size: 8, offset: 200)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !90, file: !37, line: 241, baseType: !93, size: 8, offset: 208)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !90, file: !37, line: 241, baseType: !93, size: 8, offset: 216)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !90, file: !37, line: 242, baseType: !93, size: 8, offset: 224)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !90, file: !37, line: 242, baseType: !93, size: 8, offset: 232)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !90, file: !37, line: 242, baseType: !93, size: 8, offset: 240)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !90, file: !37, line: 242, baseType: !93, size: 8, offset: 248)
!127 = !DILocation(line: 38, column: 53, scope: !32)
!128 = !DILocation(line: 40, column: 2, scope: !32)
!129 = !DILocation(line: 40, column: 18, scope: !32)
!130 = !DILocation(line: 42, column: 2, scope: !32)
!131 = !DILocation(line: 43, column: 7, scope: !32)
!132 = !DILocation(line: 43, column: 10, scope: !32)
!133 = !DILocation(line: 44, column: 7, scope: !32)
!134 = !DILocation(line: 44, column: 10, scope: !32)
!135 = !DILocation(line: 45, column: 7, scope: !32)
!136 = !DILocation(line: 45, column: 10, scope: !32)
!137 = !DILocation(line: 46, column: 12, scope: !32)
!138 = !DILocation(line: 46, column: 7, scope: !32)
!139 = !DILocation(line: 46, column: 10, scope: !32)
!140 = !DILocation(line: 47, column: 2, scope: !32)
!141 = !DILocation(line: 48, column: 1, scope: !32)
!142 = distinct !DISubprogram(name: "serial_putchar", scope: !3, file: !3, line: 28, type: !13, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!143 = !{!144, !145}
!144 = !DILocalVariable(name: "ch", arg: 1, scope: !142, file: !3, line: 28, type: !5)
!145 = !DILocalVariable(name: "timeout", scope: !142, file: !3, line: 30, type: !50)
!146 = !DILocation(line: 28, column: 55, scope: !142)
!147 = !DILocation(line: 30, column: 2, scope: !142)
!148 = !DILocation(line: 30, column: 11, scope: !142)
!149 = !DILocation(line: 32, column: 2, scope: !142)
!150 = !DILocation(line: 32, column: 10, scope: !142)
!151 = !DILocation(line: 32, column: 14, scope: !142)
!152 = !DILocation(line: 32, column: 32, scope: !142)
!153 = !DILocation(line: 32, column: 39, scope: !142)
!154 = !DILocation(line: 32, column: 49, scope: !142)
!155 = !DILocation(line: 32, column: 54, scope: !142)
!156 = !DILocation(line: 32, column: 57, scope: !142)
!157 = !DILocation(line: 0, scope: !142)
!158 = !DILocation(line: 33, column: 3, scope: !142)
!159 = !{i64 2147855046}
!160 = distinct !{!160, !149, !158, !161, !162}
!161 = !{!"llvm.loop.mustprogress"}
!162 = !{!"llvm.loop.unroll.disable"}
!163 = !DILocation(line: 35, column: 2, scope: !142)
!164 = !DILocation(line: 35, column: 7, scope: !142)
!165 = !DILocation(line: 35, column: 11, scope: !142)
!166 = !DILocation(line: 35, column: 29, scope: !142)
!167 = !DILocation(line: 36, column: 1, scope: !142)
!168 = distinct !DISubprogram(name: "puts", scope: !3, file: !3, line: 61, type: !169, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !174)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!174 = !{!175}
!175 = !DILocalVariable(name: "str", arg: 1, scope: !168, file: !3, line: 61, type: !171)
!176 = !DILocation(line: 61, column: 46, scope: !168)
!177 = !DILocation(line: 63, column: 2, scope: !168)
!178 = !DILocation(line: 63, column: 10, scope: !168)
!179 = !DILocation(line: 63, column: 9, scope: !168)
!180 = !DILocation(line: 64, column: 15, scope: !168)
!181 = !DILocation(line: 64, column: 11, scope: !168)
!182 = !DILocation(line: 64, column: 3, scope: !168)
!183 = distinct !{!183, !177, !184, !161, !162}
!184 = !DILocation(line: 64, column: 17, scope: !168)
!185 = !DILocation(line: 65, column: 1, scope: !168)
!186 = distinct !DISubprogram(name: "getchar", scope: !3, file: !3, line: 86, type: !187, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!5}
!189 = !{!190, !191}
!190 = !DILocalVariable(name: "ireg", scope: !186, file: !3, line: 88, type: !36)
!191 = !DILocalVariable(name: "oreg", scope: !186, file: !3, line: 88, type: !36)
!192 = !DILocation(line: 88, column: 2, scope: !186)
!193 = !DILocation(line: 88, column: 18, scope: !186)
!194 = !DILocation(line: 88, column: 24, scope: !186)
!195 = !DILocation(line: 90, column: 2, scope: !186)
!196 = !DILocation(line: 92, column: 2, scope: !186)
!197 = !DILocation(line: 94, column: 14, scope: !186)
!198 = !DILocation(line: 94, column: 9, scope: !186)
!199 = !DILocation(line: 95, column: 1, scope: !186)
!200 = !DILocation(line: 94, column: 2, scope: !186)
!201 = !DISubprogram(name: "initregs", scope: !37, file: !37, line: 302, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!205 = !DISubprogram(name: "intcall", scope: !37, file: !37, line: 246, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !93, !208, !204}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!210 = distinct !DISubprogram(name: "kbd_flush", scope: !3, file: !3, line: 108, type: !211, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!211 = !DISubroutineType(types: !212)
!212 = !{null}
!213 = !DILocation(line: 110, column: 2, scope: !210)
!214 = !DILocation(line: 111, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 111, column: 7)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 110, column: 11)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 110, column: 2)
!218 = distinct !DILexicalBlock(scope: !210, file: !3, line: 110, column: 2)
!219 = !DILocation(line: 111, column: 7, scope: !216)
!220 = !DILocation(line: 112, column: 4, scope: !215)
!221 = !DILocation(line: 113, column: 3, scope: !216)
!222 = !DILocation(line: 110, column: 2, scope: !217)
!223 = distinct !{!223, !224, !225, !162}
!224 = !DILocation(line: 110, column: 2, scope: !218)
!225 = !DILocation(line: 114, column: 2, scope: !218)
!226 = !DILocation(line: 115, column: 1, scope: !210)
!227 = distinct !DISubprogram(name: "kbd_pending", scope: !3, file: !3, line: 97, type: !187, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!228 = !{!229, !230}
!229 = !DILocalVariable(name: "ireg", scope: !227, file: !3, line: 99, type: !36)
!230 = !DILocalVariable(name: "oreg", scope: !227, file: !3, line: 99, type: !36)
!231 = !DILocation(line: 99, column: 2, scope: !227)
!232 = !DILocation(line: 99, column: 18, scope: !227)
!233 = !DILocation(line: 99, column: 24, scope: !227)
!234 = !DILocation(line: 101, column: 2, scope: !227)
!235 = !DILocation(line: 102, column: 7, scope: !227)
!236 = !DILocation(line: 102, column: 10, scope: !227)
!237 = !DILocation(line: 103, column: 2, scope: !227)
!238 = !DILocation(line: 105, column: 16, scope: !227)
!239 = !DILocation(line: 105, column: 23, scope: !227)
!240 = !DILocation(line: 105, column: 9, scope: !227)
!241 = !DILocation(line: 106, column: 1, scope: !227)
!242 = !DILocation(line: 105, column: 2, scope: !227)
!243 = distinct !DISubprogram(name: "getchar_timeout", scope: !3, file: !3, line: 117, type: !187, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!244 = !{!245, !246, !247}
!245 = !DILocalVariable(name: "cnt", scope: !243, file: !3, line: 119, type: !5)
!246 = !DILocalVariable(name: "t0", scope: !243, file: !3, line: 120, type: !5)
!247 = !DILocalVariable(name: "t1", scope: !243, file: !3, line: 120, type: !5)
!248 = !DILocation(line: 119, column: 2, scope: !243)
!249 = !DILocation(line: 119, column: 6, scope: !243)
!250 = !DILocation(line: 120, column: 2, scope: !243)
!251 = !DILocation(line: 120, column: 6, scope: !243)
!252 = !DILocation(line: 120, column: 10, scope: !243)
!253 = !DILocation(line: 122, column: 7, scope: !243)
!254 = !DILocation(line: 122, column: 5, scope: !243)
!255 = !DILocation(line: 124, column: 2, scope: !243)
!256 = !DILocation(line: 124, column: 9, scope: !243)
!257 = !DILocation(line: 125, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 125, column: 7)
!259 = distinct !DILexicalBlock(scope: !243, file: !3, line: 124, column: 14)
!260 = !DILocation(line: 125, column: 7, scope: !259)
!261 = !DILocation(line: 126, column: 11, scope: !258)
!262 = !DILocation(line: 126, column: 4, scope: !258)
!263 = !DILocation(line: 128, column: 8, scope: !259)
!264 = !DILocation(line: 128, column: 6, scope: !259)
!265 = !DILocation(line: 129, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !259, file: !3, line: 129, column: 7)
!267 = !DILocation(line: 129, column: 13, scope: !266)
!268 = !DILocation(line: 129, column: 10, scope: !266)
!269 = !DILocation(line: 129, column: 7, scope: !259)
!270 = !DILocation(line: 130, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !3, line: 129, column: 17)
!272 = !DILocation(line: 131, column: 9, scope: !271)
!273 = !DILocation(line: 131, column: 7, scope: !271)
!274 = !DILocation(line: 132, column: 3, scope: !271)
!275 = distinct !{!275, !255, !276, !161, !162}
!276 = !DILocation(line: 133, column: 2, scope: !243)
!277 = !DILocation(line: 135, column: 2, scope: !243)
!278 = !DILocation(line: 136, column: 1, scope: !243)
!279 = distinct !DISubprogram(name: "gettime", scope: !3, file: !3, line: 72, type: !280, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!93}
!282 = !{!283, !284}
!283 = !DILocalVariable(name: "ireg", scope: !279, file: !3, line: 74, type: !36)
!284 = !DILocalVariable(name: "oreg", scope: !279, file: !3, line: 74, type: !36)
!285 = !DILocation(line: 74, column: 2, scope: !279)
!286 = !DILocation(line: 74, column: 18, scope: !279)
!287 = !DILocation(line: 74, column: 24, scope: !279)
!288 = !DILocation(line: 76, column: 2, scope: !279)
!289 = !DILocation(line: 77, column: 7, scope: !279)
!290 = !DILocation(line: 77, column: 10, scope: !279)
!291 = !DILocation(line: 78, column: 2, scope: !279)
!292 = !DILocation(line: 80, column: 14, scope: !279)
!293 = !DILocation(line: 81, column: 1, scope: !279)
!294 = !DILocation(line: 80, column: 2, scope: !279)
