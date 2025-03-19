; ModuleID = 'arch/x86/boot/memory.c'
source_filename = "arch/x86/boot/memory.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type { i64, i64, i32 }
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.2, %union.anon.9, i8, i8 }>
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i16, i16, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i8, i8, i16, i32, i64 }
%struct.biosregs = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.1 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@boot_params = external dso_local global %struct.boot_params, align 1
@detect_memory_e820.buf = internal global %struct.boot_e820_entry zeroinitializer, align 1, !dbg !0

; Function Attrs: nounwind
define dso_local void @detect_memory() #0 !dbg !125 {
entry:
  call void @detect_memory_e820() #5, !dbg !126
  call void @detect_memory_e801() #5, !dbg !127
  call void @detect_memory_88() #5, !dbg !128
  ret void, !dbg !129
}

; Function Attrs: nounwind
define internal void @detect_memory_e820() #0 !dbg !2 {
entry:
  %count = alloca i32, align 4
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %desc = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %count, metadata !15, metadata !DIExpression()), !dbg !131
  store i32 0, ptr %count, align 4, !dbg !131
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !17, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !108, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 4, ptr %desc) #6, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !109, metadata !DIExpression()), !dbg !136
  store ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 31), ptr %desc, align 4, !dbg !136
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !137
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !138
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !138
  store i16 -6112, ptr %ax, align 4, !dbg !139
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !140
  %cx = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 12, !dbg !140
  store i16 20, ptr %cx, align 4, !dbg !141
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !142
  %edx = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 5, !dbg !142
  store i32 1397571920, ptr %edx, align 4, !dbg !143
  %3 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !144
  %di = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 0, !dbg !144
  store i16 ptrtoint (ptr @detect_memory_e820.buf to i16), ptr %di, align 4, !dbg !145
  br label %do.body, !dbg !146

do.body:                                          ; preds = %land.end, %entry
  call void @intcall(i8 inreg noundef zeroext 21, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !147
  %4 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !149
  %ebx = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 4, !dbg !149
  %5 = load i32, ptr %ebx, align 4, !dbg !149
  %6 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !150
  %ebx1 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 4, !dbg !150
  store i32 %5, ptr %ebx1, align 4, !dbg !151
  %7 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !152
  %eflags = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 10, !dbg !152
  %8 = load i32, ptr %eflags, align 4, !dbg !152
  %and = and i32 %8, 1, !dbg !154
  %tobool = icmp ne i32 %and, 0, !dbg !154
  br i1 %tobool, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !156

if.end:                                           ; preds = %do.body
  %9 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !157
  %eax = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 7, !dbg !157
  %10 = load i32, ptr %eax, align 4, !dbg !157
  %cmp = icmp ne i32 %10, 1397571920, !dbg !159
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !160

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %count, align 4, !dbg !161
  br label %do.end, !dbg !163

if.end3:                                          ; preds = %if.end
  %11 = load ptr, ptr %desc, align 4, !dbg !164
  %incdec.ptr = getelementptr inbounds %struct.boot_e820_entry, ptr %11, i32 1, !dbg !164
  store ptr %incdec.ptr, ptr %desc, align 4, !dbg !164
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr align 1 @detect_memory_e820.buf, i32 20, i1 false), !dbg !165
  %12 = load i32, ptr %count, align 4, !dbg !166
  %inc = add nsw i32 %12, 1, !dbg !166
  store i32 %inc, ptr %count, align 4, !dbg !166
  br label %do.cond, !dbg !167

do.cond:                                          ; preds = %if.end3
  %13 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !168
  %ebx4 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 4, !dbg !168
  %14 = load i32, ptr %ebx4, align 4, !dbg !168
  %tobool5 = icmp ne i32 %14, 0, !dbg !169
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !170

land.rhs:                                         ; preds = %do.cond
  %15 = load i32, ptr %count, align 4, !dbg !171
  %cmp6 = icmp ult i32 %15, 128, !dbg !172
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %16 = phi i1 [ false, %do.cond ], [ %cmp6, %land.rhs ], !dbg !173
  br i1 %16, label %do.body, label %do.end, !dbg !167, !llvm.loop !174

do.end:                                           ; preds = %land.end, %if.then2, %if.then
  %17 = load i32, ptr %count, align 4, !dbg !178
  %conv = trunc i32 %17 to i8, !dbg !178
  store i8 %conv, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 20), align 1, !dbg !179
  call void @llvm.lifetime.end.p0(i64 4, ptr %desc) #6, !dbg !180
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !180
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !180
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6, !dbg !180
  ret void, !dbg !180
}

; Function Attrs: nounwind
define internal void @detect_memory_e801() #0 !dbg !181 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !183, metadata !DIExpression()), !dbg !186
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !184, metadata !DIExpression()), !dbg !187
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !188
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !189
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !189
  store i16 -6143, ptr %ax, align 4, !dbg !190
  call void @intcall(i8 inreg noundef zeroext 21, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !191
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !192
  %eflags = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 10, !dbg !192
  %2 = load i32, ptr %eflags, align 4, !dbg !192
  %and = and i32 %2, 1, !dbg !194
  %tobool = icmp ne i32 %and, 0, !dbg !194
  br i1 %tobool, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !196

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !197
  %cx = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 12, !dbg !197
  %4 = load i16, ptr %cx, align 4, !dbg !197
  %conv = zext i16 %4 to i32, !dbg !199
  %tobool1 = icmp ne i32 %conv, 0, !dbg !199
  br i1 %tobool1, label %if.then4, label %lor.lhs.false, !dbg !200

lor.lhs.false:                                    ; preds = %if.end
  %5 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !201
  %dx = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 10, !dbg !201
  %6 = load i16, ptr %dx, align 4, !dbg !201
  %conv2 = zext i16 %6 to i32, !dbg !202
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !202
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !203

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !204
  %cx5 = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 12, !dbg !204
  %8 = load i16, ptr %cx5, align 4, !dbg !204
  %9 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !206
  %ax6 = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 14, !dbg !206
  store i16 %8, ptr %ax6, align 4, !dbg !207
  %10 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !208
  %dx7 = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 10, !dbg !208
  %11 = load i16, ptr %dx7, align 4, !dbg !208
  %12 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !209
  %bx = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 8, !dbg !209
  store i16 %11, ptr %bx, align 4, !dbg !210
  br label %if.end8, !dbg !211

if.end8:                                          ; preds = %if.then4, %lor.lhs.false
  %13 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !212
  %ax9 = getelementptr inbounds %struct.anon.0, ptr %13, i32 0, i32 14, !dbg !212
  %14 = load i16, ptr %ax9, align 4, !dbg !212
  %conv10 = zext i16 %14 to i32, !dbg !214
  %cmp = icmp sgt i32 %conv10, 15360, !dbg !215
  br i1 %cmp, label %if.then12, label %if.else, !dbg !216

if.then12:                                        ; preds = %if.end8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !217

if.else:                                          ; preds = %if.end8
  %15 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !219
  %ax13 = getelementptr inbounds %struct.anon.0, ptr %15, i32 0, i32 14, !dbg !219
  %16 = load i16, ptr %ax13, align 4, !dbg !219
  %conv14 = zext i16 %16 to i32, !dbg !221
  %cmp15 = icmp eq i32 %conv14, 15360, !dbg !222
  br i1 %cmp15, label %if.then17, label %if.else22, !dbg !223

if.then17:                                        ; preds = %if.else
  %17 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !224
  %bx18 = getelementptr inbounds %struct.anon.0, ptr %17, i32 0, i32 8, !dbg !224
  %18 = load i16, ptr %bx18, align 4, !dbg !224
  %conv19 = zext i16 %18 to i32, !dbg !226
  %shl = shl i32 %conv19, 6, !dbg !227
  %19 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !228
  %ax20 = getelementptr inbounds %struct.anon.0, ptr %19, i32 0, i32 14, !dbg !228
  %20 = load i16, ptr %ax20, align 4, !dbg !228
  %conv21 = zext i16 %20 to i32, !dbg !229
  %add = add nsw i32 %shl, %conv21, !dbg !230
  store i32 %add, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 18), align 1, !dbg !231
  br label %if.end25, !dbg !232

if.else22:                                        ; preds = %if.else
  %21 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !233
  %ax23 = getelementptr inbounds %struct.anon.0, ptr %21, i32 0, i32 14, !dbg !233
  %22 = load i16, ptr %ax23, align 4, !dbg !233
  %conv24 = zext i16 %22 to i32, !dbg !235
  store i32 %conv24, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 18), align 1, !dbg !236
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then17
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !237
  br label %cleanup, !dbg !237

cleanup:                                          ; preds = %if.end26, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !237
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !237
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !237

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
define internal void @detect_memory_88() #0 !dbg !238 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !241, metadata !DIExpression()), !dbg !244
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !245
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !246
  %ah = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 29, !dbg !246
  store i8 -120, ptr %ah, align 1, !dbg !247
  call void @intcall(i8 inreg noundef zeroext 21, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !248
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !249
  %ax = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 14, !dbg !249
  %2 = load i16, ptr %ax, align 4, !dbg !249
  store i16 %2, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 2), align 1, !dbg !250
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !251
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !251
  ret void, !dbg !251
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !252 dso_local void @initregs(ptr inreg noundef) #3

declare !dbg !256 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buf", scope: !2, file: !3, line: 23, type: !111, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "detect_memory_e820", scope: !3, file: !3, line: 18, type: !4, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !14)
!3 = !DIFile(filename: "arch/x86/boot/memory.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aaf769d9f1236107f1ce7541b655619b")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.memory.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/memory\22 -D KBUILD_BASENAME=\22memory\22 -D KBUILD_MODNAME=\22memory\22 -D __KBUILD_MODNAME=kmod_memory -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/memory.ll arch/x86/boot/memory.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !7, globals: !13, splitDebugInlining: false, nameTableKind: None)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !9, line: 61, baseType: !10)
!9 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !11, line: 68, baseType: !12)
!11 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!0}
!14 = !{!15, !17, !108, !109}
!15 = !DILocalVariable(name: "count", scope: !2, file: !3, line: 20, type: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(name: "ireg", scope: !2, file: !3, line: 21, type: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !19, line: 206, size: 352, elements: !20)
!19 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, scope: !18, file: !19, line: 207, baseType: !22, size: 352)
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 207, size: 352, elements: !23)
!23 = !{!24, !42, !70}
!24 = !DIDerivedType(tag: DW_TAG_member, scope: !22, file: !19, line: 208, baseType: !25, size: 352)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !19, line: 208, size: 352, elements: !26)
!26 = !{!27, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !25, file: !19, line: 209, baseType: !28, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !12)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !25, file: !19, line: 210, baseType: !28, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !25, file: !19, line: 211, baseType: !28, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !25, file: !19, line: 212, baseType: !28, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !25, file: !19, line: 213, baseType: !28, size: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !25, file: !19, line: 214, baseType: !28, size: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !25, file: !19, line: 215, baseType: !28, size: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !25, file: !19, line: 216, baseType: !28, size: 32, offset: 224)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !25, file: !19, line: 217, baseType: !28, size: 32, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !25, file: !19, line: 218, baseType: !28, size: 32, offset: 288)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !25, file: !19, line: 219, baseType: !28, size: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, scope: !22, file: !19, line: 221, baseType: !43, size: 352)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !19, line: 221, size: 352, elements: !44)
!44 = !{!45, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !43, file: !19, line: 222, baseType: !46, size: 16)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !29, line: 19, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !31, line: 24, baseType: !48)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !43, file: !19, line: 222, baseType: !46, size: 16, offset: 16)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !43, file: !19, line: 223, baseType: !46, size: 16, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !43, file: !19, line: 223, baseType: !46, size: 16, offset: 48)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !43, file: !19, line: 224, baseType: !46, size: 16, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !43, file: !19, line: 224, baseType: !46, size: 16, offset: 80)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !43, file: !19, line: 225, baseType: !46, size: 16, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !43, file: !19, line: 225, baseType: !46, size: 16, offset: 112)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !43, file: !19, line: 226, baseType: !46, size: 16, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !43, file: !19, line: 226, baseType: !46, size: 16, offset: 144)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !43, file: !19, line: 227, baseType: !46, size: 16, offset: 160)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !43, file: !19, line: 227, baseType: !46, size: 16, offset: 176)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !43, file: !19, line: 228, baseType: !46, size: 16, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !43, file: !19, line: 228, baseType: !46, size: 16, offset: 208)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !43, file: !19, line: 229, baseType: !46, size: 16, offset: 224)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !43, file: !19, line: 229, baseType: !46, size: 16, offset: 240)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !43, file: !19, line: 230, baseType: !46, size: 16, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !43, file: !19, line: 230, baseType: !46, size: 16, offset: 272)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !43, file: !19, line: 231, baseType: !46, size: 16, offset: 288)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !43, file: !19, line: 231, baseType: !46, size: 16, offset: 304)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !19, line: 232, baseType: !46, size: 16, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !43, file: !19, line: 232, baseType: !46, size: 16, offset: 336)
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !22, file: !19, line: 234, baseType: !71, size: 256)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !19, line: 234, size: 256, elements: !72)
!72 = !{!73, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !71, file: !19, line: 235, baseType: !74, size: 8)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !29, line: 17, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !76)
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !71, file: !19, line: 235, baseType: !74, size: 8, offset: 8)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !71, file: !19, line: 235, baseType: !74, size: 8, offset: 16)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !71, file: !19, line: 235, baseType: !74, size: 8, offset: 24)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !71, file: !19, line: 236, baseType: !74, size: 8, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !71, file: !19, line: 236, baseType: !74, size: 8, offset: 40)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !71, file: !19, line: 236, baseType: !74, size: 8, offset: 48)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !71, file: !19, line: 236, baseType: !74, size: 8, offset: 56)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !71, file: !19, line: 237, baseType: !74, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !71, file: !19, line: 237, baseType: !74, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !71, file: !19, line: 237, baseType: !74, size: 8, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !71, file: !19, line: 237, baseType: !74, size: 8, offset: 88)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !71, file: !19, line: 238, baseType: !74, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !71, file: !19, line: 238, baseType: !74, size: 8, offset: 104)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !71, file: !19, line: 238, baseType: !74, size: 8, offset: 112)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !71, file: !19, line: 238, baseType: !74, size: 8, offset: 120)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !71, file: !19, line: 239, baseType: !74, size: 8, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !71, file: !19, line: 239, baseType: !74, size: 8, offset: 136)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !71, file: !19, line: 239, baseType: !74, size: 8, offset: 144)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !71, file: !19, line: 239, baseType: !74, size: 8, offset: 152)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !71, file: !19, line: 240, baseType: !74, size: 8, offset: 160)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !71, file: !19, line: 240, baseType: !74, size: 8, offset: 168)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !71, file: !19, line: 240, baseType: !74, size: 8, offset: 176)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !71, file: !19, line: 240, baseType: !74, size: 8, offset: 184)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !71, file: !19, line: 241, baseType: !74, size: 8, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !71, file: !19, line: 241, baseType: !74, size: 8, offset: 200)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !71, file: !19, line: 241, baseType: !74, size: 8, offset: 208)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !71, file: !19, line: 241, baseType: !74, size: 8, offset: 216)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !71, file: !19, line: 242, baseType: !74, size: 8, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !71, file: !19, line: 242, baseType: !74, size: 8, offset: 232)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !71, file: !19, line: 242, baseType: !74, size: 8, offset: 240)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !71, file: !19, line: 242, baseType: !74, size: 8, offset: 248)
!108 = !DILocalVariable(name: "oreg", scope: !2, file: !3, line: 21, type: !18)
!109 = !DILocalVariable(name: "desc", scope: !2, file: !3, line: 22, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "boot_e820_entry", file: !112, line: 143, size: 160, elements: !113)
!112 = !DIFile(filename: "./arch/x86/include/uapi/asm/bootparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c199ebf8ec5f27be76bf20ea05d3d919")
!113 = !{!114, !117, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !111, file: !112, line: 144, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !116)
!116 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !111, file: !112, line: 145, baseType: !115, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !112, line: 146, baseType: !30, size: 32, offset: 128)
!119 = !{i32 1, !"NumRegisterParameters", i32 3}
!120 = !{i32 7, !"Dwarf Version", i32 5}
!121 = !{i32 2, !"Debug Info Version", i32 3}
!122 = !{i32 1, !"wchar_size", i32 4}
!123 = !{i32 1, !"override-stack-alignment", i32 4}
!124 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!125 = distinct !DISubprogram(name: "detect_memory", scope: !3, file: !3, line: 116, type: !4, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!126 = !DILocation(line: 118, column: 2, scope: !125)
!127 = !DILocation(line: 120, column: 2, scope: !125)
!128 = !DILocation(line: 122, column: 2, scope: !125)
!129 = !DILocation(line: 123, column: 1, scope: !125)
!130 = !DILocation(line: 20, column: 2, scope: !2)
!131 = !DILocation(line: 20, column: 6, scope: !2)
!132 = !DILocation(line: 21, column: 2, scope: !2)
!133 = !DILocation(line: 21, column: 18, scope: !2)
!134 = !DILocation(line: 21, column: 24, scope: !2)
!135 = !DILocation(line: 22, column: 2, scope: !2)
!136 = !DILocation(line: 22, column: 26, scope: !2)
!137 = !DILocation(line: 25, column: 2, scope: !2)
!138 = !DILocation(line: 26, column: 7, scope: !2)
!139 = !DILocation(line: 26, column: 11, scope: !2)
!140 = !DILocation(line: 27, column: 7, scope: !2)
!141 = !DILocation(line: 27, column: 11, scope: !2)
!142 = !DILocation(line: 28, column: 7, scope: !2)
!143 = !DILocation(line: 28, column: 11, scope: !2)
!144 = !DILocation(line: 29, column: 7, scope: !2)
!145 = !DILocation(line: 29, column: 11, scope: !2)
!146 = !DILocation(line: 45, column: 2, scope: !2)
!147 = !DILocation(line: 46, column: 3, scope: !148)
!148 = distinct !DILexicalBlock(scope: !2, file: !3, line: 45, column: 5)
!149 = !DILocation(line: 47, column: 19, scope: !148)
!150 = !DILocation(line: 47, column: 8, scope: !148)
!151 = !DILocation(line: 47, column: 12, scope: !148)
!152 = !DILocation(line: 52, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !3, line: 52, column: 7)
!154 = !DILocation(line: 52, column: 19, scope: !153)
!155 = !DILocation(line: 52, column: 7, scope: !148)
!156 = !DILocation(line: 53, column: 4, scope: !153)
!157 = !DILocation(line: 60, column: 12, scope: !158)
!158 = distinct !DILexicalBlock(scope: !148, file: !3, line: 60, column: 7)
!159 = !DILocation(line: 60, column: 16, scope: !158)
!160 = !DILocation(line: 60, column: 7, scope: !148)
!161 = !DILocation(line: 61, column: 10, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 60, column: 25)
!163 = !DILocation(line: 62, column: 4, scope: !162)
!164 = !DILocation(line: 65, column: 8, scope: !148)
!165 = !DILocation(line: 65, column: 13, scope: !148)
!166 = !DILocation(line: 66, column: 8, scope: !148)
!167 = !DILocation(line: 67, column: 2, scope: !148)
!168 = !DILocation(line: 67, column: 16, scope: !2)
!169 = !DILocation(line: 67, column: 11, scope: !2)
!170 = !DILocation(line: 67, column: 20, scope: !2)
!171 = !DILocation(line: 67, column: 23, scope: !2)
!172 = !DILocation(line: 67, column: 29, scope: !2)
!173 = !DILocation(line: 0, scope: !2)
!174 = distinct !{!174, !146, !175, !176, !177}
!175 = !DILocation(line: 67, column: 65, scope: !2)
!176 = !{!"llvm.loop.mustprogress"}
!177 = !{!"llvm.loop.unroll.disable"}
!178 = !DILocation(line: 69, column: 29, scope: !2)
!179 = !DILocation(line: 69, column: 27, scope: !2)
!180 = !DILocation(line: 70, column: 1, scope: !2)
!181 = distinct !DISubprogram(name: "detect_memory_e801", scope: !3, file: !3, line: 72, type: !4, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !182)
!182 = !{!183, !184}
!183 = !DILocalVariable(name: "ireg", scope: !181, file: !3, line: 74, type: !18)
!184 = !DILocalVariable(name: "oreg", scope: !181, file: !3, line: 74, type: !18)
!185 = !DILocation(line: 74, column: 2, scope: !181)
!186 = !DILocation(line: 74, column: 18, scope: !181)
!187 = !DILocation(line: 74, column: 24, scope: !181)
!188 = !DILocation(line: 76, column: 2, scope: !181)
!189 = !DILocation(line: 77, column: 7, scope: !181)
!190 = !DILocation(line: 77, column: 10, scope: !181)
!191 = !DILocation(line: 78, column: 2, scope: !181)
!192 = !DILocation(line: 80, column: 11, scope: !193)
!193 = distinct !DILexicalBlock(scope: !181, file: !3, line: 80, column: 6)
!194 = !DILocation(line: 80, column: 18, scope: !193)
!195 = !DILocation(line: 80, column: 6, scope: !181)
!196 = !DILocation(line: 81, column: 3, scope: !193)
!197 = !DILocation(line: 84, column: 11, scope: !198)
!198 = distinct !DILexicalBlock(scope: !181, file: !3, line: 84, column: 6)
!199 = !DILocation(line: 84, column: 6, scope: !198)
!200 = !DILocation(line: 84, column: 14, scope: !198)
!201 = !DILocation(line: 84, column: 22, scope: !198)
!202 = !DILocation(line: 84, column: 17, scope: !198)
!203 = !DILocation(line: 84, column: 6, scope: !181)
!204 = !DILocation(line: 85, column: 18, scope: !205)
!205 = distinct !DILexicalBlock(scope: !198, file: !3, line: 84, column: 26)
!206 = !DILocation(line: 85, column: 8, scope: !205)
!207 = !DILocation(line: 85, column: 11, scope: !205)
!208 = !DILocation(line: 86, column: 18, scope: !205)
!209 = !DILocation(line: 86, column: 8, scope: !205)
!210 = !DILocation(line: 86, column: 11, scope: !205)
!211 = !DILocation(line: 87, column: 2, scope: !205)
!212 = !DILocation(line: 89, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !181, file: !3, line: 89, column: 6)
!214 = !DILocation(line: 89, column: 6, scope: !213)
!215 = !DILocation(line: 89, column: 14, scope: !213)
!216 = !DILocation(line: 89, column: 6, scope: !181)
!217 = !DILocation(line: 90, column: 3, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !3, line: 89, column: 25)
!219 = !DILocation(line: 91, column: 18, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !3, line: 91, column: 13)
!221 = !DILocation(line: 91, column: 13, scope: !220)
!222 = !DILocation(line: 91, column: 21, scope: !220)
!223 = !DILocation(line: 91, column: 13, scope: !213)
!224 = !DILocation(line: 92, column: 33, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !3, line: 91, column: 33)
!226 = !DILocation(line: 92, column: 28, scope: !225)
!227 = !DILocation(line: 92, column: 36, scope: !225)
!228 = !DILocation(line: 92, column: 49, scope: !225)
!229 = !DILocation(line: 92, column: 44, scope: !225)
!230 = !DILocation(line: 92, column: 42, scope: !225)
!231 = !DILocation(line: 92, column: 25, scope: !225)
!232 = !DILocation(line: 93, column: 2, scope: !225)
!233 = !DILocation(line: 101, column: 32, scope: !234)
!234 = distinct !DILexicalBlock(scope: !220, file: !3, line: 93, column: 9)
!235 = !DILocation(line: 101, column: 27, scope: !234)
!236 = !DILocation(line: 101, column: 25, scope: !234)
!237 = !DILocation(line: 103, column: 1, scope: !181)
!238 = distinct !DISubprogram(name: "detect_memory_88", scope: !3, file: !3, line: 105, type: !4, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !239)
!239 = !{!240, !241}
!240 = !DILocalVariable(name: "ireg", scope: !238, file: !3, line: 107, type: !18)
!241 = !DILocalVariable(name: "oreg", scope: !238, file: !3, line: 107, type: !18)
!242 = !DILocation(line: 107, column: 2, scope: !238)
!243 = !DILocation(line: 107, column: 18, scope: !238)
!244 = !DILocation(line: 107, column: 24, scope: !238)
!245 = !DILocation(line: 109, column: 2, scope: !238)
!246 = !DILocation(line: 110, column: 7, scope: !238)
!247 = !DILocation(line: 110, column: 10, scope: !238)
!248 = !DILocation(line: 111, column: 2, scope: !238)
!249 = !DILocation(line: 113, column: 43, scope: !238)
!250 = !DILocation(line: 113, column: 36, scope: !238)
!251 = !DILocation(line: 114, column: 1, scope: !238)
!252 = !DISubprogram(name: "initregs", scope: !19, file: !19, line: 302, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!256 = !DISubprogram(name: "intcall", scope: !19, file: !19, line: 246, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !74, !259, !255}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
