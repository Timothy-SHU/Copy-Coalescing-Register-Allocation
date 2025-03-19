; ModuleID = 'arch/x86/realmode/rm/video-vga.c'
source_filename = "arch/x86/realmode/rm/video-vga.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.card_info = type { ptr, ptr, ptr, ptr, i32, i32, i16, i16 }
%struct.mode_info = type { i16, i16, i16, i16 }
%struct.biosregs = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.1 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@pio_ops = external dso_local global %struct.port_io_ops, align 4
@.str = private unnamed_addr constant [4 x i8] c"VGA\00", align 1, !dbg !0
@video_vga = internal global %struct.card_info { ptr @.str, ptr @vga_set_mode, ptr @vga_probe, ptr null, i32 0, i32 0, i16 0, i16 0 }, section ".videocards", align 4, !dbg !7
@force_x = external dso_local global i32, align 4
@force_y = external dso_local global i32, align 4
@do_restore = external dso_local global i32, align 4
@vga_probe.card_name = internal global [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str], align 4, !dbg !19
@.str.1 = private unnamed_addr constant [12 x i8] c"CGA/MDA/HGC\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [4 x i8] c"EGA\00", align 1, !dbg !17
@vga_probe.mode_lists = internal global [3 x ptr] [ptr @cga_modes, ptr @ega_modes, ptr @vga_modes], align 4, !dbg !124
@cga_modes = internal global [1 x %struct.mode_info] [%struct.mode_info { i16 3840, i16 80, i16 25, i16 0 }], align 2, !dbg !138
@ega_modes = internal global [2 x %struct.mode_info] [%struct.mode_info { i16 3840, i16 80, i16 25, i16 0 }, %struct.mode_info { i16 3841, i16 80, i16 43, i16 0 }], align 2, !dbg !143
@vga_modes = internal global [7 x %struct.mode_info] [%struct.mode_info { i16 3840, i16 80, i16 25, i16 0 }, %struct.mode_info { i16 3841, i16 80, i16 50, i16 0 }, %struct.mode_info { i16 3842, i16 80, i16 43, i16 0 }, %struct.mode_info { i16 3843, i16 80, i16 28, i16 0 }, %struct.mode_info { i16 3845, i16 80, i16 30, i16 0 }, %struct.mode_info { i16 3846, i16 80, i16 34, i16 0 }, %struct.mode_info { i16 3847, i16 80, i16 60, i16 0 }], align 2, !dbg !148
@vga_probe.mode_count = internal global [3 x i32] [i32 1, i32 2, i32 7], align 4, !dbg !135
@adapter = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @video_vga], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local zeroext i16 @vga_crtc() #0 !dbg !173 {
entry:
  %0 = load ptr, ptr @pio_ops, align 4, !dbg !176
  %call = call zeroext i8 %0(i16 inreg noundef zeroext 972) #5, !dbg !176
  %conv = zext i8 %call to i32, !dbg !176
  %and = and i32 %conv, 1, !dbg !177
  %tobool = icmp ne i32 %and, 0, !dbg !178
  %1 = zext i1 %tobool to i64, !dbg !178
  %cond = select i1 %tobool, i32 980, i32 948, !dbg !178
  %conv1 = trunc i32 %cond to i16, !dbg !178
  ret i16 %conv1, !dbg !179
}

; Function Attrs: nounwind
define internal i32 @vga_set_mode(ptr inreg noundef %mode) #0 !dbg !180 {
entry:
  %mode.addr = alloca ptr, align 4
  store ptr %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !182, metadata !DIExpression()), !dbg !183
  %call = call zeroext i8 @vga_set_basic_mode() #5, !dbg !184
  %0 = load ptr, ptr %mode.addr, align 4, !dbg !185
  %x = getelementptr inbounds %struct.mode_info, ptr %0, i32 0, i32 1, !dbg !186
  %1 = load i16, ptr %x, align 2, !dbg !186
  %conv = zext i16 %1 to i32, !dbg !185
  store i32 %conv, ptr @force_x, align 4, !dbg !187
  %2 = load ptr, ptr %mode.addr, align 4, !dbg !188
  %y = getelementptr inbounds %struct.mode_info, ptr %2, i32 0, i32 2, !dbg !189
  %3 = load i16, ptr %y, align 2, !dbg !189
  %conv1 = zext i16 %3 to i32, !dbg !188
  store i32 %conv1, ptr @force_y, align 4, !dbg !190
  %4 = load ptr, ptr %mode.addr, align 4, !dbg !191
  %mode2 = getelementptr inbounds %struct.mode_info, ptr %4, i32 0, i32 0, !dbg !192
  %5 = load i16, ptr %mode2, align 2, !dbg !192
  %conv3 = zext i16 %5 to i32, !dbg !191
  switch i32 %conv3, label %sw.epilog [
    i32 3840, label %sw.epilog
    i32 3841, label %sw.bb
    i32 3842, label %sw.bb4
    i32 3843, label %sw.bb5
    i32 3845, label %sw.bb6
    i32 3846, label %sw.bb7
    i32 3847, label %sw.bb8
  ], !dbg !193

sw.bb:                                            ; preds = %entry
  call void @vga_set_8font() #5, !dbg !194
  br label %sw.epilog, !dbg !196

sw.bb4:                                           ; preds = %entry
  call void @vga_set_80x43() #5, !dbg !197
  br label %sw.epilog, !dbg !198

sw.bb5:                                           ; preds = %entry
  call void @vga_set_14font() #5, !dbg !199
  br label %sw.epilog, !dbg !200

sw.bb6:                                           ; preds = %entry
  call void @vga_set_80x30() #5, !dbg !201
  br label %sw.epilog, !dbg !202

sw.bb7:                                           ; preds = %entry
  call void @vga_set_80x34() #5, !dbg !203
  br label %sw.epilog, !dbg !204

sw.bb8:                                           ; preds = %entry
  call void @vga_set_80x60() #5, !dbg !205
  br label %sw.epilog, !dbg !206

sw.epilog:                                        ; preds = %entry, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb, %entry
  ret i32 0, !dbg !207
}

; Function Attrs: nounwind
define internal i32 @vga_probe() #0 !dbg !21 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !26, metadata !DIExpression()), !dbg !209
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !118, metadata !DIExpression()), !dbg !210
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !211
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !212
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !212
  store i16 4608, ptr %ax, align 4, !dbg !213
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !214
  %bl = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 16, !dbg !214
  store i8 16, ptr %bl, align 4, !dbg !215
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !216
  %2 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !217
  %bl1 = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 16, !dbg !217
  %3 = load i8, ptr %bl1, align 4, !dbg !217
  %conv = zext i8 %3 to i32, !dbg !219
  %cmp = icmp ne i32 %conv, 16, !dbg !220
  br i1 %cmp, label %if.then, label %if.else8, !dbg !221

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !222
  %ax3 = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 14, !dbg !222
  store i16 6656, ptr %ax3, align 4, !dbg !224
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !225
  %5 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !226
  %al = getelementptr inbounds %struct.anon.1, ptr %5, i32 0, i32 28, !dbg !226
  %6 = load i8, ptr %al, align 4, !dbg !226
  %conv4 = zext i8 %6 to i32, !dbg !228
  %cmp5 = icmp eq i32 %conv4, 26, !dbg !229
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !230

if.then7:                                         ; preds = %if.then
  store i32 2, ptr @adapter, align 4, !dbg !231
  br label %if.end, !dbg !233

if.else:                                          ; preds = %if.then
  store i32 1, ptr @adapter, align 4, !dbg !234
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end9, !dbg !236

if.else8:                                         ; preds = %entry
  store i32 0, ptr @adapter, align 4, !dbg !237
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.end
  %7 = load i32, ptr @adapter, align 4, !dbg !239
  %arrayidx = getelementptr inbounds [3 x ptr], ptr @vga_probe.mode_lists, i32 0, i32 %7, !dbg !240
  %8 = load ptr, ptr %arrayidx, align 4, !dbg !240
  store ptr %8, ptr getelementptr inbounds (%struct.card_info, ptr @video_vga, i32 0, i32 3), align 4, !dbg !241
  %9 = load i32, ptr @adapter, align 4, !dbg !242
  %arrayidx10 = getelementptr inbounds [3 x ptr], ptr @vga_probe.card_name, i32 0, i32 %9, !dbg !243
  %10 = load ptr, ptr %arrayidx10, align 4, !dbg !243
  store ptr %10, ptr @video_vga, align 4, !dbg !244
  %11 = load i32, ptr @adapter, align 4, !dbg !245
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr @vga_probe.mode_count, i32 0, i32 %11, !dbg !246
  %12 = load i32, ptr %arrayidx11, align 4, !dbg !246
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !247
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !247
  ret i32 %12, !dbg !248
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define internal zeroext i8 @vga_set_basic_mode() #0 !dbg !249 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %mode = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !256
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !253, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !256
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !254, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 1, ptr %mode) #6, !dbg !259
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !255, metadata !DIExpression()), !dbg !260
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !261
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !262
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !262
  store i16 3840, ptr %ax, align 4, !dbg !263
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !264
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !265
  %al = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 28, !dbg !265
  %2 = load i8, ptr %al, align 4, !dbg !265
  store i8 %2, ptr %mode, align 1, !dbg !266
  %3 = load i8, ptr %mode, align 1, !dbg !267
  %conv = zext i8 %3 to i32, !dbg !267
  %cmp = icmp ne i32 %conv, 3, !dbg !269
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !270

land.lhs.true:                                    ; preds = %entry
  %4 = load i8, ptr %mode, align 1, !dbg !271
  %conv2 = zext i8 %4 to i32, !dbg !271
  %cmp3 = icmp ne i32 %conv2, 7, !dbg !272
  br i1 %cmp3, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %land.lhs.true
  store i8 3, ptr %mode, align 1, !dbg !274
  br label %if.end, !dbg !275

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8, ptr %mode, align 1, !dbg !276
  %conv5 = zext i8 %5 to i16, !dbg !276
  %6 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !277
  %ax6 = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 14, !dbg !277
  store i16 %conv5, ptr %ax6, align 4, !dbg !278
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !279
  store i32 1, ptr @do_restore, align 4, !dbg !280
  %7 = load i8, ptr %mode, align 1, !dbg !281
  call void @llvm.lifetime.end.p0(i64 1, ptr %mode) #6, !dbg !282
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !282
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !282
  ret i8 %7, !dbg !283
}

; Function Attrs: nounwind
define internal void @vga_set_8font() #0 !dbg !284 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !289
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !288, metadata !DIExpression()), !dbg !290
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !291
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !292
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !292
  store i16 4370, ptr %ax, align 4, !dbg !293
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !294
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !295
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 14, !dbg !295
  store i16 4608, ptr %ax1, align 4, !dbg !296
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !297
  %bl = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 16, !dbg !297
  store i8 32, ptr %bl, align 4, !dbg !298
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !299
  %3 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !300
  %ax2 = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 14, !dbg !300
  store i16 4609, ptr %ax2, align 4, !dbg !301
  %4 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !302
  %bl3 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 16, !dbg !302
  store i8 52, ptr %bl3, align 4, !dbg !303
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !304
  %5 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !305
  %ax4 = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 14, !dbg !305
  store i16 256, ptr %ax4, align 4, !dbg !306
  %6 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !307
  %cx = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 12, !dbg !307
  store i16 1543, ptr %cx, align 4, !dbg !308
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !309
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !310
  ret void, !dbg !310
}

; Function Attrs: nounwind
define internal void @vga_set_80x43() #0 !dbg !311 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !313, metadata !DIExpression()), !dbg !315
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !316
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !317
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !317
  store i16 4609, ptr %ax, align 4, !dbg !318
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !319
  %bl = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 16, !dbg !319
  store i8 48, ptr %bl, align 4, !dbg !320
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !321
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !322
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 14, !dbg !322
  store i16 3, ptr %ax1, align 4, !dbg !323
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !324
  call void @vga_set_8font() #5, !dbg !325
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !326
  ret void, !dbg !326
}

; Function Attrs: nounwind
define internal void @vga_set_14font() #0 !dbg !327 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !329, metadata !DIExpression()), !dbg !331
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !332
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !333
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !333
  store i16 4369, ptr %ax, align 4, !dbg !334
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !335
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !336
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 14, !dbg !336
  store i16 4609, ptr %ax1, align 4, !dbg !337
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !338
  %bl = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 16, !dbg !338
  store i8 52, ptr %bl, align 4, !dbg !339
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !340
  %3 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !341
  %ax2 = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 14, !dbg !341
  store i16 256, ptr %ax2, align 4, !dbg !342
  %4 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !343
  %cx = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 12, !dbg !343
  store i16 2828, ptr %cx, align 4, !dbg !344
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !345
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !346
  ret void, !dbg !346
}

; Function Attrs: nounwind
define internal void @vga_set_80x30() #0 !dbg !347 {
entry:
  call void @vga_set_480_scanlines() #5, !dbg !348
  call void @vga_set_vertical_end(i32 inreg noundef 480) #5, !dbg !349
  ret void, !dbg !350
}

; Function Attrs: nounwind
define internal void @vga_set_80x34() #0 !dbg !351 {
entry:
  call void @vga_set_480_scanlines() #5, !dbg !352
  call void @vga_set_14font() #5, !dbg !353
  call void @vga_set_vertical_end(i32 inreg noundef 476) #5, !dbg !354
  ret void, !dbg !355
}

; Function Attrs: nounwind
define internal void @vga_set_80x60() #0 !dbg !356 {
entry:
  call void @vga_set_480_scanlines() #5, !dbg !357
  call void @vga_set_8font() #5, !dbg !358
  call void @vga_set_vertical_end(i32 inreg noundef 480) #5, !dbg !359
  ret void, !dbg !360
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !361 dso_local void @initregs(ptr inreg noundef) #3

declare !dbg !365 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define internal void @vga_set_480_scanlines() #0 !dbg !370 {
entry:
  %crtc = alloca i16, align 2
  %csel = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr %crtc) #6, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !372, metadata !DIExpression()), !dbg !375
  call void @llvm.lifetime.start.p0(i64 1, ptr %csel) #6, !dbg !376
  call void @llvm.dbg.declare(metadata ptr %csel, metadata !373, metadata !DIExpression()), !dbg !377
  %call = call zeroext i16 @vga_crtc() #5, !dbg !378
  store i16 %call, ptr %crtc, align 2, !dbg !379
  %0 = load i16, ptr %crtc, align 2, !dbg !380
  call void @out_idx(i8 inreg noundef zeroext 12, i16 inreg noundef zeroext %0, i8 inreg noundef zeroext 17) #5, !dbg !381
  %1 = load i16, ptr %crtc, align 2, !dbg !382
  call void @out_idx(i8 inreg noundef zeroext 11, i16 inreg noundef zeroext %1, i8 inreg noundef zeroext 6) #5, !dbg !383
  %2 = load i16, ptr %crtc, align 2, !dbg !384
  call void @out_idx(i8 inreg noundef zeroext 62, i16 inreg noundef zeroext %2, i8 inreg noundef zeroext 7) #5, !dbg !385
  %3 = load i16, ptr %crtc, align 2, !dbg !386
  call void @out_idx(i8 inreg noundef zeroext -22, i16 inreg noundef zeroext %3, i8 inreg noundef zeroext 16) #5, !dbg !387
  %4 = load i16, ptr %crtc, align 2, !dbg !388
  call void @out_idx(i8 inreg noundef zeroext -33, i16 inreg noundef zeroext %4, i8 inreg noundef zeroext 18) #5, !dbg !389
  %5 = load i16, ptr %crtc, align 2, !dbg !390
  call void @out_idx(i8 inreg noundef zeroext -25, i16 inreg noundef zeroext %5, i8 inreg noundef zeroext 21) #5, !dbg !391
  %6 = load i16, ptr %crtc, align 2, !dbg !392
  call void @out_idx(i8 inreg noundef zeroext 4, i16 inreg noundef zeroext %6, i8 inreg noundef zeroext 22) #5, !dbg !393
  %7 = load ptr, ptr @pio_ops, align 4, !dbg !394
  %call1 = call zeroext i8 %7(i16 inreg noundef zeroext 972) #5, !dbg !394
  store i8 %call1, ptr %csel, align 1, !dbg !395
  %8 = load i8, ptr %csel, align 1, !dbg !396
  %conv = zext i8 %8 to i32, !dbg !396
  %and = and i32 %conv, 13, !dbg !396
  %conv2 = trunc i32 %and to i8, !dbg !396
  store i8 %conv2, ptr %csel, align 1, !dbg !396
  %9 = load i8, ptr %csel, align 1, !dbg !397
  %conv3 = zext i8 %9 to i32, !dbg !397
  %or = or i32 %conv3, 226, !dbg !397
  %conv4 = trunc i32 %or to i8, !dbg !397
  store i8 %conv4, ptr %csel, align 1, !dbg !397
  %10 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !398
  %11 = load i8, ptr %csel, align 1, !dbg !399
  call void %10(i8 inreg noundef zeroext %11, i16 inreg noundef zeroext 962) #5, !dbg !398
  call void @llvm.lifetime.end.p0(i64 1, ptr %csel) #6, !dbg !400
  call void @llvm.lifetime.end.p0(i64 2, ptr %crtc) #6, !dbg !400
  ret void, !dbg !400
}

; Function Attrs: nounwind
define internal void @vga_set_vertical_end(i32 inreg noundef %lines) #0 !dbg !401 {
entry:
  %lines.addr = alloca i32, align 4
  %crtc = alloca i16, align 2
  %ovfw = alloca i8, align 1
  %end = alloca i32, align 4
  store i32 %lines, ptr %lines.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lines.addr, metadata !405, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 2, ptr %crtc) #6, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !406, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 1, ptr %ovfw) #6, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %ovfw, metadata !407, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #6, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %end, metadata !408, metadata !DIExpression()), !dbg !415
  %0 = load i32, ptr %lines.addr, align 4, !dbg !416
  %sub = sub nsw i32 %0, 1, !dbg !417
  store i32 %sub, ptr %end, align 4, !dbg !415
  %call = call zeroext i16 @vga_crtc() #5, !dbg !418
  store i16 %call, ptr %crtc, align 2, !dbg !419
  %1 = load i32, ptr %end, align 4, !dbg !420
  %shr = ashr i32 %1, 7, !dbg !421
  %and = and i32 %shr, 2, !dbg !422
  %or = or i32 60, %and, !dbg !423
  %2 = load i32, ptr %end, align 4, !dbg !424
  %shr1 = ashr i32 %2, 3, !dbg !425
  %and2 = and i32 %shr1, 64, !dbg !426
  %or3 = or i32 %or, %and2, !dbg !427
  %conv = trunc i32 %or3 to i8, !dbg !428
  store i8 %conv, ptr %ovfw, align 1, !dbg !429
  %3 = load i8, ptr %ovfw, align 1, !dbg !430
  %4 = load i16, ptr %crtc, align 2, !dbg !431
  call void @out_idx(i8 inreg noundef zeroext %3, i16 inreg noundef zeroext %4, i8 inreg noundef zeroext 7) #5, !dbg !432
  %5 = load i32, ptr %end, align 4, !dbg !433
  %conv4 = trunc i32 %5 to i8, !dbg !433
  %6 = load i16, ptr %crtc, align 2, !dbg !434
  call void @out_idx(i8 inreg noundef zeroext %conv4, i16 inreg noundef zeroext %6, i8 inreg noundef zeroext 18) #5, !dbg !435
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #6, !dbg !436
  call void @llvm.lifetime.end.p0(i64 1, ptr %ovfw) #6, !dbg !436
  call void @llvm.lifetime.end.p0(i64 2, ptr %crtc) #6, !dbg !436
  ret void, !dbg !436
}

; Function Attrs: inlinehint nounwind
define internal void @out_idx(i8 inreg noundef zeroext %v, i16 inreg noundef zeroext %port, i8 inreg noundef zeroext %index) #4 !dbg !437 {
entry:
  %v.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  %index.addr = alloca i8, align 1
  store i8 %v, ptr %v.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !441, metadata !DIExpression()), !dbg !444
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !442, metadata !DIExpression()), !dbg !445
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !443, metadata !DIExpression()), !dbg !446
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 2), align 4, !dbg !447
  %1 = load i8, ptr %index.addr, align 1, !dbg !448
  %conv = zext i8 %1 to i32, !dbg !448
  %2 = load i8, ptr %v.addr, align 1, !dbg !449
  %conv1 = zext i8 %2 to i32, !dbg !449
  %shl = shl i32 %conv1, 8, !dbg !450
  %add = add nsw i32 %conv, %shl, !dbg !451
  %conv2 = trunc i32 %add to i16, !dbg !448
  %3 = load i16, ptr %port.addr, align 2, !dbg !452
  call void %0(i16 inreg noundef zeroext %conv2, i16 inreg noundef zeroext %3) #5, !dbg !447
  ret void, !dbg !453
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/video-vga.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2a053a047190e34d9d8a9d4f5648b55")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "video_vga", scope: !9, file: !2, line: 282, type: !153, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !10, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/realmode/rm/.video-vga.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -D _WAKEUP -I ./arch/x86/boot -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/realmode/rm/video-vga\22 -D KBUILD_BASENAME=\22video_vga\22 -D KBUILD_MODNAME=\22video_vga\22 -D __KBUILD_MODNAME=kmod_video_vga -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/realmode/rm/video-vga.ll arch/x86/realmode/rm/video-vga.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !11, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "arch/x86/realmode/rm/video-vga.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5109296c5a4cc6784dab70e2b3736e27")
!11 = !{!0, !7, !12, !17, !19, !124, !135, !138, !143, !148}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 12)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "card_name", scope: !21, file: !2, line: 233, type: !119, isLocal: true, isDefinition: true)
!21 = distinct !DISubprogram(name: "vga_probe", scope: !2, file: !2, line: 231, type: !22, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{!24}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !{!26, !118}
!26 = !DILocalVariable(name: "ireg", scope: !21, file: !2, line: 247, type: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !28, line: 206, size: 352, elements: !29)
!28 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, scope: !27, file: !28, line: 207, baseType: !31, size: 352)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !27, file: !28, line: 207, size: 352, elements: !32)
!32 = !{!33, !52, !80}
!33 = !DIDerivedType(tag: DW_TAG_member, scope: !31, file: !28, line: 208, baseType: !34, size: 352)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !28, line: 208, size: 352, elements: !35)
!35 = !{!36, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !34, file: !28, line: 209, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !38, line: 21, baseType: !39)
!38 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !40, line: 27, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !34, file: !28, line: 210, baseType: !37, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !34, file: !28, line: 211, baseType: !37, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !34, file: !28, line: 212, baseType: !37, size: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !34, file: !28, line: 213, baseType: !37, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !34, file: !28, line: 214, baseType: !37, size: 32, offset: 160)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !34, file: !28, line: 215, baseType: !37, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !34, file: !28, line: 216, baseType: !37, size: 32, offset: 224)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !34, file: !28, line: 217, baseType: !37, size: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !34, file: !28, line: 218, baseType: !37, size: 32, offset: 288)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !34, file: !28, line: 219, baseType: !37, size: 32, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, scope: !31, file: !28, line: 221, baseType: !53, size: 352)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !28, line: 221, size: 352, elements: !54)
!54 = !{!55, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !53, file: !28, line: 222, baseType: !56, size: 16)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !38, line: 19, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !40, line: 24, baseType: !58)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !53, file: !28, line: 222, baseType: !56, size: 16, offset: 16)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !53, file: !28, line: 223, baseType: !56, size: 16, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !53, file: !28, line: 223, baseType: !56, size: 16, offset: 48)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !53, file: !28, line: 224, baseType: !56, size: 16, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !53, file: !28, line: 224, baseType: !56, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !53, file: !28, line: 225, baseType: !56, size: 16, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !53, file: !28, line: 225, baseType: !56, size: 16, offset: 112)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !53, file: !28, line: 226, baseType: !56, size: 16, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !53, file: !28, line: 226, baseType: !56, size: 16, offset: 144)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !53, file: !28, line: 227, baseType: !56, size: 16, offset: 160)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !53, file: !28, line: 227, baseType: !56, size: 16, offset: 176)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !53, file: !28, line: 228, baseType: !56, size: 16, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !53, file: !28, line: 228, baseType: !56, size: 16, offset: 208)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !53, file: !28, line: 229, baseType: !56, size: 16, offset: 224)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !53, file: !28, line: 229, baseType: !56, size: 16, offset: 240)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !53, file: !28, line: 230, baseType: !56, size: 16, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !53, file: !28, line: 230, baseType: !56, size: 16, offset: 272)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !53, file: !28, line: 231, baseType: !56, size: 16, offset: 288)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !53, file: !28, line: 231, baseType: !56, size: 16, offset: 304)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !28, line: 232, baseType: !56, size: 16, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !53, file: !28, line: 232, baseType: !56, size: 16, offset: 336)
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !31, file: !28, line: 234, baseType: !81, size: 256)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !28, line: 234, size: 256, elements: !82)
!82 = !{!83, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !81, file: !28, line: 235, baseType: !84, size: 8)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !38, line: 17, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !40, line: 21, baseType: !86)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !81, file: !28, line: 235, baseType: !84, size: 8, offset: 8)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !81, file: !28, line: 235, baseType: !84, size: 8, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !81, file: !28, line: 235, baseType: !84, size: 8, offset: 24)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !81, file: !28, line: 236, baseType: !84, size: 8, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !81, file: !28, line: 236, baseType: !84, size: 8, offset: 40)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !81, file: !28, line: 236, baseType: !84, size: 8, offset: 48)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !81, file: !28, line: 236, baseType: !84, size: 8, offset: 56)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !81, file: !28, line: 237, baseType: !84, size: 8, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !81, file: !28, line: 237, baseType: !84, size: 8, offset: 72)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !81, file: !28, line: 237, baseType: !84, size: 8, offset: 80)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !81, file: !28, line: 237, baseType: !84, size: 8, offset: 88)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !81, file: !28, line: 238, baseType: !84, size: 8, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !81, file: !28, line: 238, baseType: !84, size: 8, offset: 104)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !81, file: !28, line: 238, baseType: !84, size: 8, offset: 112)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !81, file: !28, line: 238, baseType: !84, size: 8, offset: 120)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !81, file: !28, line: 239, baseType: !84, size: 8, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !81, file: !28, line: 239, baseType: !84, size: 8, offset: 136)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !81, file: !28, line: 239, baseType: !84, size: 8, offset: 144)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !81, file: !28, line: 239, baseType: !84, size: 8, offset: 152)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !81, file: !28, line: 240, baseType: !84, size: 8, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !81, file: !28, line: 240, baseType: !84, size: 8, offset: 168)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !81, file: !28, line: 240, baseType: !84, size: 8, offset: 176)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !81, file: !28, line: 240, baseType: !84, size: 8, offset: 184)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !81, file: !28, line: 241, baseType: !84, size: 8, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !81, file: !28, line: 241, baseType: !84, size: 8, offset: 200)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !81, file: !28, line: 241, baseType: !84, size: 8, offset: 208)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !81, file: !28, line: 241, baseType: !84, size: 8, offset: 216)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !81, file: !28, line: 242, baseType: !84, size: 8, offset: 224)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !81, file: !28, line: 242, baseType: !84, size: 8, offset: 232)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !81, file: !28, line: 242, baseType: !84, size: 8, offset: 240)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !81, file: !28, line: 242, baseType: !84, size: 8, offset: 248)
!118 = !DILocalVariable(name: "oreg", scope: !21, file: !2, line: 247, type: !27)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 96, elements: !122)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!122 = !{!123}
!123 = !DISubrange(count: 3)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "mode_lists", scope: !21, file: !2, line: 236, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 96, elements: !122)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_info", file: !129, line: 64, size: 64, elements: !130)
!129 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/video.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e17e471001fcbd7daaae50249ab4298")
!130 = !{!131, !132, !133, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !128, file: !129, line: 65, baseType: !56, size: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !128, file: !129, line: 66, baseType: !56, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !128, file: !129, line: 66, baseType: !56, size: 16, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !128, file: !129, line: 67, baseType: !56, size: 16, offset: 48)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "mode_count", scope: !21, file: !2, line: 241, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 96, elements: !122)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "cga_modes", scope: !9, file: !2, line: 32, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 1)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "ega_modes", scope: !9, file: !2, line: 27, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 2)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "vga_modes", scope: !9, file: !2, line: 17, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 448, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 7)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_info", file: !129, line: 70, size: 224, elements: !154)
!154 = !{!155, !156, !160, !162, !163, !164, !165, !166}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !153, file: !129, line: 71, baseType: !120, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !153, file: !129, line: 72, baseType: !157, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 32)
!158 = !DISubroutineType(types: !159)
!159 = !{!24, !127}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !153, file: !129, line: 73, baseType: !161, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !153, file: !129, line: 74, baseType: !127, size: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nmodes", scope: !153, file: !129, line: 75, baseType: !24, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !153, file: !129, line: 76, baseType: !24, size: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_first", scope: !153, file: !129, line: 77, baseType: !56, size: 16, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_n", scope: !153, file: !129, line: 78, baseType: !56, size: 16, offset: 208)
!167 = !{i32 1, !"NumRegisterParameters", i32 3}
!168 = !{i32 7, !"Dwarf Version", i32 5}
!169 = !{i32 2, !"Debug Info Version", i32 3}
!170 = !{i32 1, !"wchar_size", i32 4}
!171 = !{i32 1, !"override-stack-alignment", i32 4}
!172 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!173 = distinct !DISubprogram(name: "vga_crtc", scope: !2, file: !2, line: 132, type: !174, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!174 = !DISubroutineType(types: !175)
!175 = !{!56}
!176 = !DILocation(line: 134, column: 10, scope: !173)
!177 = !DILocation(line: 134, column: 21, scope: !173)
!178 = !DILocation(line: 134, column: 9, scope: !173)
!179 = !DILocation(line: 134, column: 2, scope: !173)
!180 = distinct !DISubprogram(name: "vga_set_mode", scope: !2, file: !2, line: 191, type: !158, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !181)
!181 = !{!182}
!182 = !DILocalVariable(name: "mode", arg: 1, scope: !180, file: !2, line: 191, type: !127)
!183 = !DILocation(line: 191, column: 43, scope: !180)
!184 = !DILocation(line: 194, column: 2, scope: !180)
!185 = !DILocation(line: 197, column: 12, scope: !180)
!186 = !DILocation(line: 197, column: 18, scope: !180)
!187 = !DILocation(line: 197, column: 10, scope: !180)
!188 = !DILocation(line: 198, column: 12, scope: !180)
!189 = !DILocation(line: 198, column: 18, scope: !180)
!190 = !DILocation(line: 198, column: 10, scope: !180)
!191 = !DILocation(line: 200, column: 10, scope: !180)
!192 = !DILocation(line: 200, column: 16, scope: !180)
!193 = !DILocation(line: 200, column: 2, scope: !180)
!194 = !DILocation(line: 204, column: 3, scope: !195)
!195 = distinct !DILexicalBlock(scope: !180, file: !2, line: 200, column: 22)
!196 = !DILocation(line: 205, column: 3, scope: !195)
!197 = !DILocation(line: 207, column: 3, scope: !195)
!198 = !DILocation(line: 208, column: 3, scope: !195)
!199 = !DILocation(line: 210, column: 3, scope: !195)
!200 = !DILocation(line: 211, column: 3, scope: !195)
!201 = !DILocation(line: 213, column: 3, scope: !195)
!202 = !DILocation(line: 214, column: 3, scope: !195)
!203 = !DILocation(line: 216, column: 3, scope: !195)
!204 = !DILocation(line: 217, column: 3, scope: !195)
!205 = !DILocation(line: 219, column: 3, scope: !195)
!206 = !DILocation(line: 220, column: 3, scope: !195)
!207 = !DILocation(line: 223, column: 2, scope: !180)
!208 = !DILocation(line: 247, column: 2, scope: !21)
!209 = !DILocation(line: 247, column: 18, scope: !21)
!210 = !DILocation(line: 247, column: 24, scope: !21)
!211 = !DILocation(line: 249, column: 2, scope: !21)
!212 = !DILocation(line: 251, column: 7, scope: !21)
!213 = !DILocation(line: 251, column: 10, scope: !21)
!214 = !DILocation(line: 252, column: 7, scope: !21)
!215 = !DILocation(line: 252, column: 10, scope: !21)
!216 = !DILocation(line: 253, column: 2, scope: !21)
!217 = !DILocation(line: 260, column: 11, scope: !218)
!218 = distinct !DILexicalBlock(scope: !21, file: !2, line: 260, column: 6)
!219 = !DILocation(line: 260, column: 6, scope: !218)
!220 = !DILocation(line: 260, column: 14, scope: !218)
!221 = !DILocation(line: 260, column: 6, scope: !21)
!222 = !DILocation(line: 262, column: 8, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !2, line: 260, column: 23)
!224 = !DILocation(line: 262, column: 11, scope: !223)
!225 = !DILocation(line: 263, column: 3, scope: !223)
!226 = !DILocation(line: 265, column: 12, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !2, line: 265, column: 7)
!228 = !DILocation(line: 265, column: 7, scope: !227)
!229 = !DILocation(line: 265, column: 15, scope: !227)
!230 = !DILocation(line: 265, column: 7, scope: !223)
!231 = !DILocation(line: 266, column: 12, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !2, line: 265, column: 24)
!233 = !DILocation(line: 270, column: 3, scope: !232)
!234 = !DILocation(line: 271, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !227, file: !2, line: 270, column: 10)
!236 = !DILocation(line: 273, column: 2, scope: !223)
!237 = !DILocation(line: 274, column: 11, scope: !238)
!238 = distinct !DILexicalBlock(scope: !218, file: !2, line: 273, column: 9)
!239 = !DILocation(line: 277, column: 31, scope: !21)
!240 = !DILocation(line: 277, column: 20, scope: !21)
!241 = !DILocation(line: 277, column: 18, scope: !21)
!242 = !DILocation(line: 278, column: 34, scope: !21)
!243 = !DILocation(line: 278, column: 24, scope: !21)
!244 = !DILocation(line: 278, column: 22, scope: !21)
!245 = !DILocation(line: 279, column: 20, scope: !21)
!246 = !DILocation(line: 279, column: 9, scope: !21)
!247 = !DILocation(line: 280, column: 1, scope: !21)
!248 = !DILocation(line: 279, column: 2, scope: !21)
!249 = distinct !DISubprogram(name: "vga_set_basic_mode", scope: !2, file: !2, line: 39, type: !250, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{!84}
!252 = !{!253, !254, !255}
!253 = !DILocalVariable(name: "ireg", scope: !249, file: !2, line: 41, type: !27)
!254 = !DILocalVariable(name: "oreg", scope: !249, file: !2, line: 41, type: !27)
!255 = !DILocalVariable(name: "mode", scope: !249, file: !2, line: 42, type: !84)
!256 = !DILocation(line: 41, column: 2, scope: !249)
!257 = !DILocation(line: 41, column: 18, scope: !249)
!258 = !DILocation(line: 41, column: 24, scope: !249)
!259 = !DILocation(line: 42, column: 2, scope: !249)
!260 = !DILocation(line: 42, column: 5, scope: !249)
!261 = !DILocation(line: 44, column: 2, scope: !249)
!262 = !DILocation(line: 47, column: 7, scope: !249)
!263 = !DILocation(line: 47, column: 10, scope: !249)
!264 = !DILocation(line: 48, column: 2, scope: !249)
!265 = !DILocation(line: 49, column: 14, scope: !249)
!266 = !DILocation(line: 49, column: 7, scope: !249)
!267 = !DILocation(line: 51, column: 6, scope: !268)
!268 = distinct !DILexicalBlock(scope: !249, file: !2, line: 51, column: 6)
!269 = !DILocation(line: 51, column: 11, scope: !268)
!270 = !DILocation(line: 51, column: 16, scope: !268)
!271 = !DILocation(line: 51, column: 19, scope: !268)
!272 = !DILocation(line: 51, column: 24, scope: !268)
!273 = !DILocation(line: 51, column: 6, scope: !249)
!274 = !DILocation(line: 52, column: 8, scope: !268)
!275 = !DILocation(line: 52, column: 3, scope: !268)
!276 = !DILocation(line: 55, column: 12, scope: !249)
!277 = !DILocation(line: 55, column: 7, scope: !249)
!278 = !DILocation(line: 55, column: 10, scope: !249)
!279 = !DILocation(line: 56, column: 2, scope: !249)
!280 = !DILocation(line: 57, column: 13, scope: !249)
!281 = !DILocation(line: 58, column: 9, scope: !249)
!282 = !DILocation(line: 59, column: 1, scope: !249)
!283 = !DILocation(line: 58, column: 2, scope: !249)
!284 = distinct !DISubprogram(name: "vga_set_8font", scope: !2, file: !2, line: 61, type: !285, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{null}
!287 = !{!288}
!288 = !DILocalVariable(name: "ireg", scope: !284, file: !2, line: 64, type: !27)
!289 = !DILocation(line: 64, column: 2, scope: !284)
!290 = !DILocation(line: 64, column: 18, scope: !284)
!291 = !DILocation(line: 66, column: 2, scope: !284)
!292 = !DILocation(line: 69, column: 7, scope: !284)
!293 = !DILocation(line: 69, column: 10, scope: !284)
!294 = !DILocation(line: 71, column: 2, scope: !284)
!295 = !DILocation(line: 74, column: 7, scope: !284)
!296 = !DILocation(line: 74, column: 10, scope: !284)
!297 = !DILocation(line: 75, column: 7, scope: !284)
!298 = !DILocation(line: 75, column: 10, scope: !284)
!299 = !DILocation(line: 76, column: 2, scope: !284)
!300 = !DILocation(line: 79, column: 7, scope: !284)
!301 = !DILocation(line: 79, column: 10, scope: !284)
!302 = !DILocation(line: 80, column: 7, scope: !284)
!303 = !DILocation(line: 80, column: 10, scope: !284)
!304 = !DILocation(line: 81, column: 2, scope: !284)
!305 = !DILocation(line: 84, column: 7, scope: !284)
!306 = !DILocation(line: 84, column: 10, scope: !284)
!307 = !DILocation(line: 85, column: 7, scope: !284)
!308 = !DILocation(line: 85, column: 10, scope: !284)
!309 = !DILocation(line: 86, column: 2, scope: !284)
!310 = !DILocation(line: 87, column: 1, scope: !284)
!311 = distinct !DISubprogram(name: "vga_set_80x43", scope: !2, file: !2, line: 112, type: !285, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !312)
!312 = !{!313}
!313 = !DILocalVariable(name: "ireg", scope: !311, file: !2, line: 115, type: !27)
!314 = !DILocation(line: 115, column: 2, scope: !311)
!315 = !DILocation(line: 115, column: 18, scope: !311)
!316 = !DILocation(line: 117, column: 2, scope: !311)
!317 = !DILocation(line: 120, column: 7, scope: !311)
!318 = !DILocation(line: 120, column: 10, scope: !311)
!319 = !DILocation(line: 121, column: 7, scope: !311)
!320 = !DILocation(line: 121, column: 10, scope: !311)
!321 = !DILocation(line: 122, column: 2, scope: !311)
!322 = !DILocation(line: 125, column: 7, scope: !311)
!323 = !DILocation(line: 125, column: 10, scope: !311)
!324 = !DILocation(line: 126, column: 2, scope: !311)
!325 = !DILocation(line: 128, column: 2, scope: !311)
!326 = !DILocation(line: 129, column: 1, scope: !311)
!327 = distinct !DISubprogram(name: "vga_set_14font", scope: !2, file: !2, line: 89, type: !285, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !328)
!328 = !{!329}
!329 = !DILocalVariable(name: "ireg", scope: !327, file: !2, line: 92, type: !27)
!330 = !DILocation(line: 92, column: 2, scope: !327)
!331 = !DILocation(line: 92, column: 18, scope: !327)
!332 = !DILocation(line: 94, column: 2, scope: !327)
!333 = !DILocation(line: 97, column: 7, scope: !327)
!334 = !DILocation(line: 97, column: 10, scope: !327)
!335 = !DILocation(line: 99, column: 2, scope: !327)
!336 = !DILocation(line: 102, column: 7, scope: !327)
!337 = !DILocation(line: 102, column: 10, scope: !327)
!338 = !DILocation(line: 103, column: 7, scope: !327)
!339 = !DILocation(line: 103, column: 10, scope: !327)
!340 = !DILocation(line: 104, column: 2, scope: !327)
!341 = !DILocation(line: 107, column: 7, scope: !327)
!342 = !DILocation(line: 107, column: 10, scope: !327)
!343 = !DILocation(line: 108, column: 7, scope: !327)
!344 = !DILocation(line: 108, column: 10, scope: !327)
!345 = !DILocation(line: 109, column: 2, scope: !327)
!346 = !DILocation(line: 110, column: 1, scope: !327)
!347 = distinct !DISubprogram(name: "vga_set_80x30", scope: !2, file: !2, line: 171, type: !285, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!348 = !DILocation(line: 173, column: 2, scope: !347)
!349 = !DILocation(line: 174, column: 2, scope: !347)
!350 = !DILocation(line: 175, column: 1, scope: !347)
!351 = distinct !DISubprogram(name: "vga_set_80x34", scope: !2, file: !2, line: 177, type: !285, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!352 = !DILocation(line: 179, column: 2, scope: !351)
!353 = !DILocation(line: 180, column: 2, scope: !351)
!354 = !DILocation(line: 181, column: 2, scope: !351)
!355 = !DILocation(line: 182, column: 1, scope: !351)
!356 = distinct !DISubprogram(name: "vga_set_80x60", scope: !2, file: !2, line: 184, type: !285, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!357 = !DILocation(line: 186, column: 2, scope: !356)
!358 = !DILocation(line: 187, column: 2, scope: !356)
!359 = !DILocation(line: 188, column: 2, scope: !356)
!360 = !DILocation(line: 189, column: 1, scope: !356)
!361 = !DISubprogram(name: "initregs", scope: !28, file: !28, line: 302, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!365 = !DISubprogram(name: "intcall", scope: !28, file: !28, line: 246, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !84, !368, !364}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!370 = distinct !DISubprogram(name: "vga_set_480_scanlines", scope: !2, file: !2, line: 137, type: !285, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !371)
!371 = !{!372, !373}
!372 = !DILocalVariable(name: "crtc", scope: !370, file: !2, line: 139, type: !56)
!373 = !DILocalVariable(name: "csel", scope: !370, file: !2, line: 140, type: !84)
!374 = !DILocation(line: 139, column: 2, scope: !370)
!375 = !DILocation(line: 139, column: 6, scope: !370)
!376 = !DILocation(line: 140, column: 2, scope: !370)
!377 = !DILocation(line: 140, column: 6, scope: !370)
!378 = !DILocation(line: 142, column: 9, scope: !370)
!379 = !DILocation(line: 142, column: 7, scope: !370)
!380 = !DILocation(line: 144, column: 16, scope: !370)
!381 = !DILocation(line: 144, column: 2, scope: !370)
!382 = !DILocation(line: 145, column: 16, scope: !370)
!383 = !DILocation(line: 145, column: 2, scope: !370)
!384 = !DILocation(line: 146, column: 16, scope: !370)
!385 = !DILocation(line: 146, column: 2, scope: !370)
!386 = !DILocation(line: 147, column: 16, scope: !370)
!387 = !DILocation(line: 147, column: 2, scope: !370)
!388 = !DILocation(line: 148, column: 16, scope: !370)
!389 = !DILocation(line: 148, column: 2, scope: !370)
!390 = !DILocation(line: 149, column: 16, scope: !370)
!391 = !DILocation(line: 149, column: 2, scope: !370)
!392 = !DILocation(line: 150, column: 16, scope: !370)
!393 = !DILocation(line: 150, column: 2, scope: !370)
!394 = !DILocation(line: 151, column: 9, scope: !370)
!395 = !DILocation(line: 151, column: 7, scope: !370)
!396 = !DILocation(line: 152, column: 7, scope: !370)
!397 = !DILocation(line: 153, column: 7, scope: !370)
!398 = !DILocation(line: 154, column: 2, scope: !370)
!399 = !DILocation(line: 154, column: 7, scope: !370)
!400 = !DILocation(line: 155, column: 1, scope: !370)
!401 = distinct !DISubprogram(name: "vga_set_vertical_end", scope: !2, file: !2, line: 157, type: !402, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !24}
!404 = !{!405, !406, !407, !408}
!405 = !DILocalVariable(name: "lines", arg: 1, scope: !401, file: !2, line: 157, type: !24)
!406 = !DILocalVariable(name: "crtc", scope: !401, file: !2, line: 159, type: !56)
!407 = !DILocalVariable(name: "ovfw", scope: !401, file: !2, line: 160, type: !84)
!408 = !DILocalVariable(name: "end", scope: !401, file: !2, line: 161, type: !24)
!409 = !DILocation(line: 157, column: 38, scope: !401)
!410 = !DILocation(line: 159, column: 2, scope: !401)
!411 = !DILocation(line: 159, column: 6, scope: !401)
!412 = !DILocation(line: 160, column: 2, scope: !401)
!413 = !DILocation(line: 160, column: 6, scope: !401)
!414 = !DILocation(line: 161, column: 2, scope: !401)
!415 = !DILocation(line: 161, column: 6, scope: !401)
!416 = !DILocation(line: 161, column: 12, scope: !401)
!417 = !DILocation(line: 161, column: 17, scope: !401)
!418 = !DILocation(line: 163, column: 9, scope: !401)
!419 = !DILocation(line: 163, column: 7, scope: !401)
!420 = !DILocation(line: 165, column: 18, scope: !401)
!421 = !DILocation(line: 165, column: 22, scope: !401)
!422 = !DILocation(line: 165, column: 32, scope: !401)
!423 = !DILocation(line: 165, column: 14, scope: !401)
!424 = !DILocation(line: 165, column: 44, scope: !401)
!425 = !DILocation(line: 165, column: 48, scope: !401)
!426 = !DILocation(line: 165, column: 58, scope: !401)
!427 = !DILocation(line: 165, column: 40, scope: !401)
!428 = !DILocation(line: 165, column: 9, scope: !401)
!429 = !DILocation(line: 165, column: 7, scope: !401)
!430 = !DILocation(line: 167, column: 10, scope: !401)
!431 = !DILocation(line: 167, column: 16, scope: !401)
!432 = !DILocation(line: 167, column: 2, scope: !401)
!433 = !DILocation(line: 168, column: 10, scope: !401)
!434 = !DILocation(line: 168, column: 16, scope: !401)
!435 = !DILocation(line: 168, column: 2, scope: !401)
!436 = !DILocation(line: 169, column: 1, scope: !401)
!437 = distinct !DISubprogram(name: "out_idx", scope: !129, file: !129, line: 103, type: !438, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !84, !56, !84}
!440 = !{!441, !442, !443}
!441 = !DILocalVariable(name: "v", arg: 1, scope: !437, file: !129, line: 103, type: !84)
!442 = !DILocalVariable(name: "port", arg: 2, scope: !437, file: !129, line: 103, type: !56)
!443 = !DILocalVariable(name: "index", arg: 3, scope: !437, file: !129, line: 103, type: !84)
!444 = !DILocation(line: 103, column: 31, scope: !437)
!445 = !DILocation(line: 103, column: 38, scope: !437)
!446 = !DILocation(line: 103, column: 47, scope: !437)
!447 = !DILocation(line: 105, column: 2, scope: !437)
!448 = !DILocation(line: 105, column: 7, scope: !437)
!449 = !DILocation(line: 105, column: 14, scope: !437)
!450 = !DILocation(line: 105, column: 16, scope: !437)
!451 = !DILocation(line: 105, column: 12, scope: !437)
!452 = !DILocation(line: 105, column: 23, scope: !437)
!453 = !DILocation(line: 106, column: 1, scope: !437)
