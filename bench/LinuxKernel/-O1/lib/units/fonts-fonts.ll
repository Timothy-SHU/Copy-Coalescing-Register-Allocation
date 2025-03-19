; ModuleID = 'lib/fonts/fonts.c'
source_filename = "lib/fonts/fonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_find_font: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad find_font ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_get_default_font: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad get_default_font ; .previous"

%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@fonts = internal global [1 x ptr] [ptr @font_vga_8x16], align 8, !dbg !0
@__UNIQUE_ID___addressable_find_font196 = internal global ptr @find_font, section ".discard.addressable", align 8, !dbg !8
@__UNIQUE_ID___addressable_get_default_font197 = internal global ptr @get_default_font, section ".discard.addressable", align 8, !dbg !10
@__UNIQUE_ID_author198 = internal constant [50 x i8] c"font.author=James Simmons <jsimmons@users.sf.net>\00", section ".modinfo", align 1, !dbg !12
@__UNIQUE_ID_description199 = internal constant [31 x i8] c"font.description=Console Fonts\00", section ".modinfo", align 1, !dbg !19
@__UNIQUE_ID_file200 = internal constant [25 x i8] c"font.file=lib/fonts/font\00", section ".modinfo", align 1, !dbg !24
@__UNIQUE_ID_license201 = internal constant [17 x i8] c"font.license=GPL\00", section ".modinfo", align 1, !dbg !29
@font_vga_8x16 = external dso_local constant %struct.font_desc, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_find_font196, ptr @__UNIQUE_ID___addressable_get_default_font197, ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_file200, ptr @__UNIQUE_ID_license201], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @find_font(ptr noundef %name) #0 align 16 !dbg !62 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !66, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %i, metadata !67, metadata !DIExpression()), !dbg !70
  br label %do.body, !dbg !71

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !72

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !72

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !dbg !74
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc, %do.end
  %0 = load i32, ptr %i, align 4, !dbg !77
  %conv = zext i32 %0 to i64, !dbg !77
  %cmp = icmp ult i64 %conv, 1, !dbg !79
  br i1 %cmp, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !81
  %idxprom = zext i32 %1 to i64, !dbg !83
  %arrayidx = getelementptr [1 x ptr], ptr @fonts, i64 0, i64 %idxprom, !dbg !83
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !83
  %name2 = getelementptr inbounds %struct.font_desc, ptr %2, i32 0, i32 1, !dbg !84
  %3 = load ptr, ptr %name2, align 8, !dbg !84
  %4 = load ptr, ptr %name.addr, align 8, !dbg !85
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %4) #5, !dbg !86
  %tobool = icmp ne i32 %call, 0, !dbg !86
  br i1 %tobool, label %if.end, label %if.then, !dbg !87

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !88
  %idxprom3 = zext i32 %5 to i64, !dbg !89
  %arrayidx4 = getelementptr [1 x ptr], ptr @fonts, i64 0, i64 %idxprom3, !dbg !89
  %6 = load ptr, ptr %arrayidx4, align 8, !dbg !89
  store ptr %6, ptr %retval, align 8, !dbg !90
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !90

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !91

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !92
  %inc = add i32 %7, 1, !dbg !92
  store i32 %inc, ptr %i, align 4, !dbg !92
  br label %for.cond, !dbg !93, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !98
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !98

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !99
  %8 = load ptr, ptr %retval, align 8, !dbg !99
  ret ptr %8, !dbg !99
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !100 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_default_font(i32 noundef %xres, i32 noundef %yres, i32 noundef %font_w, i32 noundef %font_h) #0 align 16 !dbg !104 {
entry:
  %xres.addr = alloca i32, align 4
  %yres.addr = alloca i32, align 4
  %font_w.addr = alloca i32, align 4
  %font_h.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %cc = alloca i32, align 4
  %res = alloca i32, align 4
  %f = alloca ptr, align 8
  %g = alloca ptr, align 8
  store i32 %xres, ptr %xres.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %xres.addr, metadata !112, metadata !DIExpression()), !dbg !122
  store i32 %yres, ptr %yres.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %yres.addr, metadata !113, metadata !DIExpression()), !dbg !123
  store i32 %font_w, ptr %font_w.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %font_w.addr, metadata !114, metadata !DIExpression()), !dbg !124
  store i32 %font_h, ptr %font_h.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %font_h.addr, metadata !115, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %i, metadata !116, metadata !DIExpression()), !dbg !127
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %c, metadata !117, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %cc) #4, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %cc, metadata !118, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #4, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %res, metadata !119, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #4, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %f, metadata !120, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 8, ptr %g) #4, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %g, metadata !121, metadata !DIExpression()), !dbg !133
  store ptr null, ptr %g, align 8, !dbg !134
  store i32 -10000, ptr %cc, align 4, !dbg !135
  store i32 0, ptr %i, align 4, !dbg !136
  br label %for.cond, !dbg !138

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !139
  %conv = sext i32 %0 to i64, !dbg !139
  %cmp = icmp ult i64 %conv, 1, !dbg !141
  br i1 %cmp, label %for.body, label %for.end, !dbg !142

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !143
  %idxprom = sext i32 %1 to i64, !dbg !145
  %arrayidx = getelementptr [1 x ptr], ptr @fonts, i64 0, i64 %idxprom, !dbg !145
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !145
  store ptr %2, ptr %f, align 8, !dbg !146
  %3 = load ptr, ptr %f, align 8, !dbg !147
  %pref = getelementptr inbounds %struct.font_desc, ptr %3, i32 0, i32 6, !dbg !148
  %4 = load i32, ptr %pref, align 8, !dbg !148
  store i32 %4, ptr %c, align 4, !dbg !149
  %5 = load i32, ptr %yres.addr, align 4, !dbg !150
  %cmp2 = icmp slt i32 %5, 400, !dbg !152
  %conv3 = zext i1 %cmp2 to i32, !dbg !152
  %6 = load ptr, ptr %f, align 8, !dbg !153
  %height = getelementptr inbounds %struct.font_desc, ptr %6, i32 0, i32 3, !dbg !154
  %7 = load i32, ptr %height, align 4, !dbg !154
  %cmp4 = icmp ule i32 %7, 8, !dbg !155
  %conv5 = zext i1 %cmp4 to i32, !dbg !155
  %cmp6 = icmp eq i32 %conv3, %conv5, !dbg !156
  br i1 %cmp6, label %if.then, label %if.end, !dbg !157

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %c, align 4, !dbg !158
  %add = add i32 %8, 1000, !dbg !158
  store i32 %add, ptr %c, align 4, !dbg !158
  br label %if.end, !dbg !159

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, ptr %xres.addr, align 4, !dbg !160
  %10 = load ptr, ptr %f, align 8, !dbg !161
  %width = getelementptr inbounds %struct.font_desc, ptr %10, i32 0, i32 2, !dbg !162
  %11 = load i32, ptr %width, align 8, !dbg !162
  %div = udiv i32 %9, %11, !dbg !163
  %12 = load i32, ptr %yres.addr, align 4, !dbg !164
  %13 = load ptr, ptr %f, align 8, !dbg !165
  %height8 = getelementptr inbounds %struct.font_desc, ptr %13, i32 0, i32 3, !dbg !166
  %14 = load i32, ptr %height8, align 4, !dbg !166
  %div9 = udiv i32 %12, %14, !dbg !167
  %mul = mul i32 %div, %div9, !dbg !168
  %div10 = udiv i32 %mul, 1000, !dbg !169
  store i32 %div10, ptr %res, align 4, !dbg !170
  %15 = load i32, ptr %res, align 4, !dbg !171
  %cmp11 = icmp sgt i32 %15, 20, !dbg !173
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !174

if.then13:                                        ; preds = %if.end
  %16 = load i32, ptr %res, align 4, !dbg !175
  %sub = sub i32 20, %16, !dbg !176
  %17 = load i32, ptr %c, align 4, !dbg !177
  %add14 = add i32 %17, %sub, !dbg !177
  store i32 %add14, ptr %c, align 4, !dbg !177
  br label %if.end15, !dbg !178

if.end15:                                         ; preds = %if.then13, %if.end
  %18 = load i32, ptr %font_w.addr, align 4, !dbg !179
  %19 = load ptr, ptr %f, align 8, !dbg !181
  %width16 = getelementptr inbounds %struct.font_desc, ptr %19, i32 0, i32 2, !dbg !182
  %20 = load i32, ptr %width16, align 8, !dbg !182
  %sub17 = sub i32 %20, 1, !dbg !183
  %shl = shl i32 1, %sub17, !dbg !184
  %and = and i32 %18, %shl, !dbg !185
  %tobool = icmp ne i32 %and, 0, !dbg !185
  br i1 %tobool, label %land.lhs.true, label %if.end25, !dbg !186

land.lhs.true:                                    ; preds = %if.end15
  %21 = load i32, ptr %font_h.addr, align 4, !dbg !187
  %22 = load ptr, ptr %f, align 8, !dbg !188
  %height18 = getelementptr inbounds %struct.font_desc, ptr %22, i32 0, i32 3, !dbg !189
  %23 = load i32, ptr %height18, align 4, !dbg !189
  %sub19 = sub i32 %23, 1, !dbg !190
  %shl20 = shl i32 1, %sub19, !dbg !191
  %and21 = and i32 %21, %shl20, !dbg !192
  %tobool22 = icmp ne i32 %and21, 0, !dbg !192
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !193

if.then23:                                        ; preds = %land.lhs.true
  %24 = load i32, ptr %c, align 4, !dbg !194
  %add24 = add i32 %24, 1000, !dbg !194
  store i32 %add24, ptr %c, align 4, !dbg !194
  br label %if.end25, !dbg !195

if.end25:                                         ; preds = %if.then23, %land.lhs.true, %if.end15
  %25 = load i32, ptr %c, align 4, !dbg !196
  %26 = load i32, ptr %cc, align 4, !dbg !198
  %cmp26 = icmp sgt i32 %25, %26, !dbg !199
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !200

if.then28:                                        ; preds = %if.end25
  %27 = load i32, ptr %c, align 4, !dbg !201
  store i32 %27, ptr %cc, align 4, !dbg !203
  %28 = load ptr, ptr %f, align 8, !dbg !204
  store ptr %28, ptr %g, align 8, !dbg !205
  br label %if.end29, !dbg !206

if.end29:                                         ; preds = %if.then28, %if.end25
  br label %for.inc, !dbg !207

for.inc:                                          ; preds = %if.end29
  %29 = load i32, ptr %i, align 4, !dbg !208
  %inc = add i32 %29, 1, !dbg !208
  store i32 %inc, ptr %i, align 4, !dbg !208
  br label %for.cond, !dbg !209, !llvm.loop !210

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %g, align 8, !dbg !212
  call void @llvm.lifetime.end.p0(i64 8, ptr %g) #4, !dbg !213
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #4, !dbg !213
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #4, !dbg !213
  call void @llvm.lifetime.end.p0(i64 4, ptr %cc) #4, !dbg !213
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4, !dbg !213
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !213
  ret ptr %30, !dbg !214
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fonts", scope: !2, file: !3, line: 23, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/fonts/.fonts.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/fonts/font\22 -D KBUILD_BASENAME=\22fonts\22 -D KBUILD_MODNAME=\22font\22 -D __KBUILD_MODNAME=kmod_font -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/fonts/fonts.ll lib/fonts/fonts.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/fonts/fonts.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42977d01bdf6a0c39e499438582a264f")
!4 = !{!5, !6}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!8, !10, !12, !19, !24, !29, !0}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_find_font196", scope: !2, file: !3, line: 92, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_get_default_font197", scope: !2, file: !3, line: 149, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author198", scope: !2, file: !3, line: 151, type: !14, isLocal: true, isDefinition: true, align: 8)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 400, elements: !17)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!18}
!18 = !DISubrange(count: 50)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description199", scope: !2, file: !3, line: 152, type: !21, isLocal: true, isDefinition: true, align: 8)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 248, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 31)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file200", scope: !2, file: !3, line: 153, type: !26, isLocal: true, isDefinition: true, align: 8)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 25)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license201", scope: !2, file: !3, line: 153, type: !31, isLocal: true, isDefinition: true, align: 8)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 136, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 17)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !51)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "font_desc", file: !38, line: 16, size: 384, elements: !39)
!38 = !DIFile(filename: "./include/linux/font.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51897eb7dffa33434693ee6ce0351da0")
!39 = !{!40, !41, !43, !45, !46, !47, !50}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !37, file: !38, line: 17, baseType: !5, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !37, file: !38, line: 18, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !37, file: !38, line: 19, baseType: !44, size: 32, offset: 128)
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !37, file: !38, line: 19, baseType: !44, size: 32, offset: 160)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "charcount", scope: !37, file: !38, line: 20, baseType: !44, size: 32, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !38, line: 21, baseType: !48, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "pref", scope: !37, file: !38, line: 22, baseType: !5, size: 32, offset: 320)
!51 = !{!52}
!52 = !DISubrange(count: 1)
!53 = !{i32 7, !"Dwarf Version", i32 5}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 8, !"cf-protection-branch", i32 1}
!57 = !{i32 4, !"function_return_thunk_extern", i32 1}
!58 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!59 = !{i32 1, !"Code Model", i32 2}
!60 = !{i32 1, !"override-stack-alignment", i32 8}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = distinct !DISubprogram(name: "find_font", scope: !3, file: !3, line: 82, type: !63, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{!35, !42}
!65 = !{!66, !67}
!66 = !DILocalVariable(name: "name", arg: 1, scope: !62, file: !3, line: 82, type: !42)
!67 = !DILocalVariable(name: "i", scope: !62, file: !3, line: 84, type: !44)
!68 = !DILocation(line: 82, column: 47, scope: !62)
!69 = !DILocation(line: 84, column: 2, scope: !62)
!70 = !DILocation(line: 84, column: 15, scope: !62)
!71 = !DILocation(line: 86, column: 2, scope: !62)
!72 = !DILocation(line: 86, column: 2, scope: !73)
!73 = distinct !DILexicalBlock(scope: !62, file: !3, line: 86, column: 2)
!74 = !DILocation(line: 87, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !62, file: !3, line: 87, column: 2)
!76 = !DILocation(line: 87, column: 7, scope: !75)
!77 = !DILocation(line: 87, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !3, line: 87, column: 2)
!79 = !DILocation(line: 87, column: 16, scope: !78)
!80 = !DILocation(line: 87, column: 2, scope: !75)
!81 = !DILocation(line: 88, column: 21, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !3, line: 88, column: 7)
!83 = !DILocation(line: 88, column: 15, scope: !82)
!84 = !DILocation(line: 88, column: 25, scope: !82)
!85 = !DILocation(line: 88, column: 31, scope: !82)
!86 = !DILocation(line: 88, column: 8, scope: !82)
!87 = !DILocation(line: 88, column: 7, scope: !78)
!88 = !DILocation(line: 89, column: 17, scope: !82)
!89 = !DILocation(line: 89, column: 11, scope: !82)
!90 = !DILocation(line: 89, column: 4, scope: !82)
!91 = !DILocation(line: 88, column: 35, scope: !82)
!92 = !DILocation(line: 87, column: 30, scope: !78)
!93 = !DILocation(line: 87, column: 2, scope: !78)
!94 = distinct !{!94, !80, !95, !96, !97}
!95 = !DILocation(line: 89, column: 18, scope: !75)
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !DILocation(line: 90, column: 2, scope: !62)
!99 = !DILocation(line: 91, column: 1, scope: !62)
!100 = !DISubprogram(name: "strcmp", scope: !101, file: !101, line: 88, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!102 = !DISubroutineType(types: !103)
!103 = !{!5, !42, !42}
!104 = distinct !DISubprogram(name: "get_default_font", scope: !3, file: !3, line: 109, type: !105, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!105 = !DISubroutineType(types: !106)
!106 = !{!35, !5, !5, !107, !107}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !108, line: 21, baseType: !109)
!108 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !110, line: 27, baseType: !44)
!110 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!112 = !DILocalVariable(name: "xres", arg: 1, scope: !104, file: !3, line: 109, type: !5)
!113 = !DILocalVariable(name: "yres", arg: 2, scope: !104, file: !3, line: 109, type: !5)
!114 = !DILocalVariable(name: "font_w", arg: 3, scope: !104, file: !3, line: 109, type: !107)
!115 = !DILocalVariable(name: "font_h", arg: 4, scope: !104, file: !3, line: 110, type: !107)
!116 = !DILocalVariable(name: "i", scope: !104, file: !3, line: 112, type: !5)
!117 = !DILocalVariable(name: "c", scope: !104, file: !3, line: 112, type: !5)
!118 = !DILocalVariable(name: "cc", scope: !104, file: !3, line: 112, type: !5)
!119 = !DILocalVariable(name: "res", scope: !104, file: !3, line: 112, type: !5)
!120 = !DILocalVariable(name: "f", scope: !104, file: !3, line: 113, type: !35)
!121 = !DILocalVariable(name: "g", scope: !104, file: !3, line: 113, type: !35)
!122 = !DILocation(line: 109, column: 46, scope: !104)
!123 = !DILocation(line: 109, column: 56, scope: !104)
!124 = !DILocation(line: 109, column: 66, scope: !104)
!125 = !DILocation(line: 110, column: 11, scope: !104)
!126 = !DILocation(line: 112, column: 2, scope: !104)
!127 = !DILocation(line: 112, column: 6, scope: !104)
!128 = !DILocation(line: 112, column: 9, scope: !104)
!129 = !DILocation(line: 112, column: 12, scope: !104)
!130 = !DILocation(line: 112, column: 16, scope: !104)
!131 = !DILocation(line: 113, column: 2, scope: !104)
!132 = !DILocation(line: 113, column: 26, scope: !104)
!133 = !DILocation(line: 113, column: 30, scope: !104)
!134 = !DILocation(line: 115, column: 4, scope: !104)
!135 = !DILocation(line: 116, column: 5, scope: !104)
!136 = !DILocation(line: 117, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !104, file: !3, line: 117, column: 2)
!138 = !DILocation(line: 117, column: 7, scope: !137)
!139 = !DILocation(line: 117, column: 14, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !3, line: 117, column: 2)
!141 = !DILocation(line: 117, column: 16, scope: !140)
!142 = !DILocation(line: 117, column: 2, scope: !137)
!143 = !DILocation(line: 118, column: 13, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !3, line: 117, column: 34)
!145 = !DILocation(line: 118, column: 7, scope: !144)
!146 = !DILocation(line: 118, column: 5, scope: !144)
!147 = !DILocation(line: 119, column: 7, scope: !144)
!148 = !DILocation(line: 119, column: 10, scope: !144)
!149 = !DILocation(line: 119, column: 5, scope: !144)
!150 = !DILocation(line: 130, column: 8, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !3, line: 130, column: 7)
!152 = !DILocation(line: 130, column: 13, scope: !151)
!153 = !DILocation(line: 130, column: 24, scope: !151)
!154 = !DILocation(line: 130, column: 27, scope: !151)
!155 = !DILocation(line: 130, column: 34, scope: !151)
!156 = !DILocation(line: 130, column: 20, scope: !151)
!157 = !DILocation(line: 130, column: 7, scope: !144)
!158 = !DILocation(line: 131, column: 6, scope: !151)
!159 = !DILocation(line: 131, column: 4, scope: !151)
!160 = !DILocation(line: 134, column: 10, scope: !144)
!161 = !DILocation(line: 134, column: 17, scope: !144)
!162 = !DILocation(line: 134, column: 20, scope: !144)
!163 = !DILocation(line: 134, column: 15, scope: !144)
!164 = !DILocation(line: 134, column: 30, scope: !144)
!165 = !DILocation(line: 134, column: 37, scope: !144)
!166 = !DILocation(line: 134, column: 40, scope: !144)
!167 = !DILocation(line: 134, column: 35, scope: !144)
!168 = !DILocation(line: 134, column: 27, scope: !144)
!169 = !DILocation(line: 134, column: 48, scope: !144)
!170 = !DILocation(line: 134, column: 7, scope: !144)
!171 = !DILocation(line: 135, column: 7, scope: !172)
!172 = distinct !DILexicalBlock(scope: !144, file: !3, line: 135, column: 7)
!173 = !DILocation(line: 135, column: 11, scope: !172)
!174 = !DILocation(line: 135, column: 7, scope: !144)
!175 = !DILocation(line: 136, column: 14, scope: !172)
!176 = !DILocation(line: 136, column: 12, scope: !172)
!177 = !DILocation(line: 136, column: 6, scope: !172)
!178 = !DILocation(line: 136, column: 4, scope: !172)
!179 = !DILocation(line: 138, column: 8, scope: !180)
!180 = distinct !DILexicalBlock(scope: !144, file: !3, line: 138, column: 7)
!181 = !DILocation(line: 138, column: 25, scope: !180)
!182 = !DILocation(line: 138, column: 28, scope: !180)
!183 = !DILocation(line: 138, column: 34, scope: !180)
!184 = !DILocation(line: 138, column: 21, scope: !180)
!185 = !DILocation(line: 138, column: 15, scope: !180)
!186 = !DILocation(line: 138, column: 41, scope: !180)
!187 = !DILocation(line: 139, column: 8, scope: !180)
!188 = !DILocation(line: 139, column: 25, scope: !180)
!189 = !DILocation(line: 139, column: 28, scope: !180)
!190 = !DILocation(line: 139, column: 35, scope: !180)
!191 = !DILocation(line: 139, column: 21, scope: !180)
!192 = !DILocation(line: 139, column: 15, scope: !180)
!193 = !DILocation(line: 138, column: 7, scope: !144)
!194 = !DILocation(line: 140, column: 6, scope: !180)
!195 = !DILocation(line: 140, column: 4, scope: !180)
!196 = !DILocation(line: 142, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !144, file: !3, line: 142, column: 7)
!198 = !DILocation(line: 142, column: 11, scope: !197)
!199 = !DILocation(line: 142, column: 9, scope: !197)
!200 = !DILocation(line: 142, column: 7, scope: !144)
!201 = !DILocation(line: 143, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !3, line: 142, column: 15)
!203 = !DILocation(line: 143, column: 7, scope: !202)
!204 = !DILocation(line: 144, column: 8, scope: !202)
!205 = !DILocation(line: 144, column: 6, scope: !202)
!206 = !DILocation(line: 145, column: 3, scope: !202)
!207 = !DILocation(line: 146, column: 2, scope: !144)
!208 = !DILocation(line: 117, column: 30, scope: !140)
!209 = !DILocation(line: 117, column: 2, scope: !140)
!210 = distinct !{!210, !142, !211, !96, !97}
!211 = !DILocation(line: 146, column: 2, scope: !137)
!212 = !DILocation(line: 147, column: 9, scope: !104)
!213 = !DILocation(line: 148, column: 1, scope: !104)
!214 = !DILocation(line: 147, column: 2, scope: !104)
