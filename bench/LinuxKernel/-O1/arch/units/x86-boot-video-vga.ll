; ModuleID = 'arch/x86/boot/video-vga.c'
source_filename = "arch/x86/boot/video-vga.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.card_info = type { ptr, ptr, ptr, ptr, i32, i32, i16, i16 }
%struct.mode_info = type { i16, i16, i16, i16 }
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

@pio_ops = external dso_local global %struct.port_io_ops, align 4
@.str = private unnamed_addr constant [4 x i8] c"VGA\00", align 1, !dbg !0
@video_vga = internal global %struct.card_info { ptr @.str, ptr @vga_set_mode, ptr @vga_probe, ptr null, i32 0, i32 0, i16 0, i16 0 }, section ".videocards", align 4, !dbg !7
@force_x = external dso_local global i32, align 4
@force_y = external dso_local global i32, align 4
@do_restore = external dso_local global i32, align 4
@vga_probe.card_name = internal global [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str], align 4, !dbg !18
@.str.1 = private unnamed_addr constant [12 x i8] c"CGA/MDA/HGC\00", align 1, !dbg !11
@.str.2 = private unnamed_addr constant [4 x i8] c"EGA\00", align 1, !dbg !16
@vga_probe.mode_lists = internal global [3 x ptr] [ptr @cga_modes, ptr @ega_modes, ptr @vga_modes], align 4, !dbg !123
@cga_modes = internal global [1 x %struct.mode_info] [%struct.mode_info { i16 3840, i16 80, i16 25, i16 0 }], align 2, !dbg !137
@ega_modes = internal global [2 x %struct.mode_info] [%struct.mode_info { i16 3840, i16 80, i16 25, i16 0 }, %struct.mode_info { i16 3841, i16 80, i16 43, i16 0 }], align 2, !dbg !142
@vga_modes = internal global [7 x %struct.mode_info] [%struct.mode_info { i16 3840, i16 80, i16 25, i16 0 }, %struct.mode_info { i16 3841, i16 80, i16 50, i16 0 }, %struct.mode_info { i16 3842, i16 80, i16 43, i16 0 }, %struct.mode_info { i16 3843, i16 80, i16 28, i16 0 }, %struct.mode_info { i16 3845, i16 80, i16 30, i16 0 }, %struct.mode_info { i16 3846, i16 80, i16 34, i16 0 }, %struct.mode_info { i16 3847, i16 80, i16 60, i16 0 }], align 2, !dbg !147
@vga_probe.mode_count = internal global [3 x i32] [i32 1, i32 2, i32 7], align 4, !dbg !134
@boot_params = external dso_local global %struct.boot_params, align 1
@adapter = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @video_vga], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local zeroext i16 @vga_crtc() #0 !dbg !172 {
entry:
  %0 = load ptr, ptr @pio_ops, align 4, !dbg !175
  %call = call zeroext i8 %0(i16 inreg noundef zeroext 972) #5, !dbg !175
  %conv = zext i8 %call to i32, !dbg !175
  %and = and i32 %conv, 1, !dbg !176
  %tobool = icmp ne i32 %and, 0, !dbg !177
  %1 = zext i1 %tobool to i64, !dbg !177
  %cond = select i1 %tobool, i32 980, i32 948, !dbg !177
  %conv1 = trunc i32 %cond to i16, !dbg !177
  ret i16 %conv1, !dbg !178
}

; Function Attrs: nounwind
define internal i32 @vga_set_mode(ptr inreg noundef %mode) #0 !dbg !179 {
entry:
  %mode.addr = alloca ptr, align 4
  store ptr %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !181, metadata !DIExpression()), !dbg !182
  %call = call zeroext i8 @vga_set_basic_mode() #5, !dbg !183
  %0 = load ptr, ptr %mode.addr, align 4, !dbg !184
  %x = getelementptr inbounds %struct.mode_info, ptr %0, i32 0, i32 1, !dbg !185
  %1 = load i16, ptr %x, align 2, !dbg !185
  %conv = zext i16 %1 to i32, !dbg !184
  store i32 %conv, ptr @force_x, align 4, !dbg !186
  %2 = load ptr, ptr %mode.addr, align 4, !dbg !187
  %y = getelementptr inbounds %struct.mode_info, ptr %2, i32 0, i32 2, !dbg !188
  %3 = load i16, ptr %y, align 2, !dbg !188
  %conv1 = zext i16 %3 to i32, !dbg !187
  store i32 %conv1, ptr @force_y, align 4, !dbg !189
  %4 = load ptr, ptr %mode.addr, align 4, !dbg !190
  %mode2 = getelementptr inbounds %struct.mode_info, ptr %4, i32 0, i32 0, !dbg !191
  %5 = load i16, ptr %mode2, align 2, !dbg !191
  %conv3 = zext i16 %5 to i32, !dbg !190
  switch i32 %conv3, label %sw.epilog [
    i32 3840, label %sw.epilog
    i32 3841, label %sw.bb
    i32 3842, label %sw.bb4
    i32 3843, label %sw.bb5
    i32 3845, label %sw.bb6
    i32 3846, label %sw.bb7
    i32 3847, label %sw.bb8
  ], !dbg !192

sw.bb:                                            ; preds = %entry
  call void @vga_set_8font() #5, !dbg !193
  br label %sw.epilog, !dbg !195

sw.bb4:                                           ; preds = %entry
  call void @vga_set_80x43() #5, !dbg !196
  br label %sw.epilog, !dbg !197

sw.bb5:                                           ; preds = %entry
  call void @vga_set_14font() #5, !dbg !198
  br label %sw.epilog, !dbg !199

sw.bb6:                                           ; preds = %entry
  call void @vga_set_80x30() #5, !dbg !200
  br label %sw.epilog, !dbg !201

sw.bb7:                                           ; preds = %entry
  call void @vga_set_80x34() #5, !dbg !202
  br label %sw.epilog, !dbg !203

sw.bb8:                                           ; preds = %entry
  call void @vga_set_80x60() #5, !dbg !204
  br label %sw.epilog, !dbg !205

sw.epilog:                                        ; preds = %entry, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb, %entry
  ret i32 0, !dbg !206
}

; Function Attrs: nounwind
define internal i32 @vga_probe() #0 !dbg !20 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !25, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !117, metadata !DIExpression()), !dbg !209
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !210
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !211
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !211
  store i16 4608, ptr %ax, align 4, !dbg !212
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !213
  %bl = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 16, !dbg !213
  store i8 16, ptr %bl, align 4, !dbg !214
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !215
  %2 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !216
  %bx = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 8, !dbg !216
  %3 = load i16, ptr %bx, align 4, !dbg !216
  store i16 %3, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 8), align 1, !dbg !217
  %4 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !218
  %bl1 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 16, !dbg !218
  %5 = load i8, ptr %bl1, align 4, !dbg !218
  %conv = zext i8 %5 to i32, !dbg !220
  %cmp = icmp ne i32 %conv, 16, !dbg !221
  br i1 %cmp, label %if.then, label %if.else8, !dbg !222

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !223
  %ax3 = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 14, !dbg !223
  store i16 6656, ptr %ax3, align 4, !dbg !225
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !226
  %7 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !227
  %al = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 28, !dbg !227
  %8 = load i8, ptr %al, align 4, !dbg !227
  %conv4 = zext i8 %8 to i32, !dbg !229
  %cmp5 = icmp eq i32 %conv4, 26, !dbg !230
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !231

if.then7:                                         ; preds = %if.then
  store i32 2, ptr @adapter, align 4, !dbg !232
  store i8 1, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 11), align 1, !dbg !234
  br label %if.end, !dbg !235

if.else:                                          ; preds = %if.then
  store i32 1, ptr @adapter, align 4, !dbg !236
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end9, !dbg !238

if.else8:                                         ; preds = %entry
  store i32 0, ptr @adapter, align 4, !dbg !239
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %if.end
  %9 = load i32, ptr @adapter, align 4, !dbg !241
  %arrayidx = getelementptr inbounds [3 x ptr], ptr @vga_probe.mode_lists, i32 0, i32 %9, !dbg !242
  %10 = load ptr, ptr %arrayidx, align 4, !dbg !242
  store ptr %10, ptr getelementptr inbounds (%struct.card_info, ptr @video_vga, i32 0, i32 3), align 4, !dbg !243
  %11 = load i32, ptr @adapter, align 4, !dbg !244
  %arrayidx10 = getelementptr inbounds [3 x ptr], ptr @vga_probe.card_name, i32 0, i32 %11, !dbg !245
  %12 = load ptr, ptr %arrayidx10, align 4, !dbg !245
  store ptr %12, ptr @video_vga, align 4, !dbg !246
  %13 = load i32, ptr @adapter, align 4, !dbg !247
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr @vga_probe.mode_count, i32 0, i32 %13, !dbg !248
  %14 = load i32, ptr %arrayidx11, align 4, !dbg !248
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !249
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !249
  ret i32 %14, !dbg !250
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define internal zeroext i8 @vga_set_basic_mode() #0 !dbg !251 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %mode = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !255, metadata !DIExpression()), !dbg !259
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !256, metadata !DIExpression()), !dbg !260
  call void @llvm.lifetime.start.p0(i64 1, ptr %mode) #6, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !257, metadata !DIExpression()), !dbg !262
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !263
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !264
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !264
  store i16 3840, ptr %ax, align 4, !dbg !265
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !266
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !267
  %al = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 28, !dbg !267
  %2 = load i8, ptr %al, align 4, !dbg !267
  store i8 %2, ptr %mode, align 1, !dbg !268
  %3 = load i8, ptr %mode, align 1, !dbg !269
  %conv = zext i8 %3 to i32, !dbg !269
  %cmp = icmp ne i32 %conv, 3, !dbg !271
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !272

land.lhs.true:                                    ; preds = %entry
  %4 = load i8, ptr %mode, align 1, !dbg !273
  %conv2 = zext i8 %4 to i32, !dbg !273
  %cmp3 = icmp ne i32 %conv2, 7, !dbg !274
  br i1 %cmp3, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %land.lhs.true
  store i8 3, ptr %mode, align 1, !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i8, ptr %mode, align 1, !dbg !278
  %conv5 = zext i8 %5 to i16, !dbg !278
  %6 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !279
  %ax6 = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 14, !dbg !279
  store i16 %conv5, ptr %ax6, align 4, !dbg !280
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !281
  store i32 1, ptr @do_restore, align 4, !dbg !282
  %7 = load i8, ptr %mode, align 1, !dbg !283
  call void @llvm.lifetime.end.p0(i64 1, ptr %mode) #6, !dbg !284
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !284
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !284
  ret i8 %7, !dbg !285
}

; Function Attrs: nounwind
define internal void @vga_set_8font() #0 !dbg !286 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !290, metadata !DIExpression()), !dbg !292
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !293
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !294
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !294
  store i16 4370, ptr %ax, align 4, !dbg !295
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !296
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !297
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 14, !dbg !297
  store i16 4608, ptr %ax1, align 4, !dbg !298
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !299
  %bl = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 16, !dbg !299
  store i8 32, ptr %bl, align 4, !dbg !300
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !301
  %3 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !302
  %ax2 = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 14, !dbg !302
  store i16 4609, ptr %ax2, align 4, !dbg !303
  %4 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !304
  %bl3 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 16, !dbg !304
  store i8 52, ptr %bl3, align 4, !dbg !305
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !306
  %5 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !307
  %ax4 = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 14, !dbg !307
  store i16 256, ptr %ax4, align 4, !dbg !308
  %6 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !309
  %cx = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 12, !dbg !309
  store i16 1543, ptr %cx, align 4, !dbg !310
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !311
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !312
  ret void, !dbg !312
}

; Function Attrs: nounwind
define internal void @vga_set_80x43() #0 !dbg !313 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !316
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !315, metadata !DIExpression()), !dbg !317
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !318
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !319
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !319
  store i16 4609, ptr %ax, align 4, !dbg !320
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !321
  %bl = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 16, !dbg !321
  store i8 48, ptr %bl, align 4, !dbg !322
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !323
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !324
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 14, !dbg !324
  store i16 3, ptr %ax1, align 4, !dbg !325
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !326
  call void @vga_set_8font() #5, !dbg !327
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !328
  ret void, !dbg !328
}

; Function Attrs: nounwind
define internal void @vga_set_14font() #0 !dbg !329 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !331, metadata !DIExpression()), !dbg !333
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !334
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !335
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !335
  store i16 4369, ptr %ax, align 4, !dbg !336
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !337
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !338
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 14, !dbg !338
  store i16 4609, ptr %ax1, align 4, !dbg !339
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !340
  %bl = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 16, !dbg !340
  store i8 52, ptr %bl, align 4, !dbg !341
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !342
  %3 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !343
  %ax2 = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 14, !dbg !343
  store i16 256, ptr %ax2, align 4, !dbg !344
  %4 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !345
  %cx = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 12, !dbg !345
  store i16 2828, ptr %cx, align 4, !dbg !346
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !347
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !348
  ret void, !dbg !348
}

; Function Attrs: nounwind
define internal void @vga_set_80x30() #0 !dbg !349 {
entry:
  call void @vga_set_480_scanlines() #5, !dbg !350
  call void @vga_set_vertical_end(i32 inreg noundef 480) #5, !dbg !351
  ret void, !dbg !352
}

; Function Attrs: nounwind
define internal void @vga_set_80x34() #0 !dbg !353 {
entry:
  call void @vga_set_480_scanlines() #5, !dbg !354
  call void @vga_set_14font() #5, !dbg !355
  call void @vga_set_vertical_end(i32 inreg noundef 476) #5, !dbg !356
  ret void, !dbg !357
}

; Function Attrs: nounwind
define internal void @vga_set_80x60() #0 !dbg !358 {
entry:
  call void @vga_set_480_scanlines() #5, !dbg !359
  call void @vga_set_8font() #5, !dbg !360
  call void @vga_set_vertical_end(i32 inreg noundef 480) #5, !dbg !361
  ret void, !dbg !362
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !363 dso_local void @initregs(ptr inreg noundef) #3

declare !dbg !367 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define internal void @vga_set_480_scanlines() #0 !dbg !372 {
entry:
  %crtc = alloca i16, align 2
  %csel = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr %crtc) #6, !dbg !376
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !374, metadata !DIExpression()), !dbg !377
  call void @llvm.lifetime.start.p0(i64 1, ptr %csel) #6, !dbg !378
  call void @llvm.dbg.declare(metadata ptr %csel, metadata !375, metadata !DIExpression()), !dbg !379
  %call = call zeroext i16 @vga_crtc() #5, !dbg !380
  store i16 %call, ptr %crtc, align 2, !dbg !381
  %0 = load i16, ptr %crtc, align 2, !dbg !382
  call void @out_idx(i8 inreg noundef zeroext 12, i16 inreg noundef zeroext %0, i8 inreg noundef zeroext 17) #5, !dbg !383
  %1 = load i16, ptr %crtc, align 2, !dbg !384
  call void @out_idx(i8 inreg noundef zeroext 11, i16 inreg noundef zeroext %1, i8 inreg noundef zeroext 6) #5, !dbg !385
  %2 = load i16, ptr %crtc, align 2, !dbg !386
  call void @out_idx(i8 inreg noundef zeroext 62, i16 inreg noundef zeroext %2, i8 inreg noundef zeroext 7) #5, !dbg !387
  %3 = load i16, ptr %crtc, align 2, !dbg !388
  call void @out_idx(i8 inreg noundef zeroext -22, i16 inreg noundef zeroext %3, i8 inreg noundef zeroext 16) #5, !dbg !389
  %4 = load i16, ptr %crtc, align 2, !dbg !390
  call void @out_idx(i8 inreg noundef zeroext -33, i16 inreg noundef zeroext %4, i8 inreg noundef zeroext 18) #5, !dbg !391
  %5 = load i16, ptr %crtc, align 2, !dbg !392
  call void @out_idx(i8 inreg noundef zeroext -25, i16 inreg noundef zeroext %5, i8 inreg noundef zeroext 21) #5, !dbg !393
  %6 = load i16, ptr %crtc, align 2, !dbg !394
  call void @out_idx(i8 inreg noundef zeroext 4, i16 inreg noundef zeroext %6, i8 inreg noundef zeroext 22) #5, !dbg !395
  %7 = load ptr, ptr @pio_ops, align 4, !dbg !396
  %call1 = call zeroext i8 %7(i16 inreg noundef zeroext 972) #5, !dbg !396
  store i8 %call1, ptr %csel, align 1, !dbg !397
  %8 = load i8, ptr %csel, align 1, !dbg !398
  %conv = zext i8 %8 to i32, !dbg !398
  %and = and i32 %conv, 13, !dbg !398
  %conv2 = trunc i32 %and to i8, !dbg !398
  store i8 %conv2, ptr %csel, align 1, !dbg !398
  %9 = load i8, ptr %csel, align 1, !dbg !399
  %conv3 = zext i8 %9 to i32, !dbg !399
  %or = or i32 %conv3, 226, !dbg !399
  %conv4 = trunc i32 %or to i8, !dbg !399
  store i8 %conv4, ptr %csel, align 1, !dbg !399
  %10 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !400
  %11 = load i8, ptr %csel, align 1, !dbg !401
  call void %10(i8 inreg noundef zeroext %11, i16 inreg noundef zeroext 962) #5, !dbg !400
  call void @llvm.lifetime.end.p0(i64 1, ptr %csel) #6, !dbg !402
  call void @llvm.lifetime.end.p0(i64 2, ptr %crtc) #6, !dbg !402
  ret void, !dbg !402
}

; Function Attrs: nounwind
define internal void @vga_set_vertical_end(i32 inreg noundef %lines) #0 !dbg !403 {
entry:
  %lines.addr = alloca i32, align 4
  %crtc = alloca i16, align 2
  %ovfw = alloca i8, align 1
  %end = alloca i32, align 4
  store i32 %lines, ptr %lines.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lines.addr, metadata !407, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 2, ptr %crtc) #6, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !408, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 1, ptr %ovfw) #6, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %ovfw, metadata !409, metadata !DIExpression()), !dbg !415
  call void @llvm.lifetime.start.p0(i64 4, ptr %end) #6, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %end, metadata !410, metadata !DIExpression()), !dbg !417
  %0 = load i32, ptr %lines.addr, align 4, !dbg !418
  %sub = sub nsw i32 %0, 1, !dbg !419
  store i32 %sub, ptr %end, align 4, !dbg !417
  %call = call zeroext i16 @vga_crtc() #5, !dbg !420
  store i16 %call, ptr %crtc, align 2, !dbg !421
  %1 = load i32, ptr %end, align 4, !dbg !422
  %shr = ashr i32 %1, 7, !dbg !423
  %and = and i32 %shr, 2, !dbg !424
  %or = or i32 60, %and, !dbg !425
  %2 = load i32, ptr %end, align 4, !dbg !426
  %shr1 = ashr i32 %2, 3, !dbg !427
  %and2 = and i32 %shr1, 64, !dbg !428
  %or3 = or i32 %or, %and2, !dbg !429
  %conv = trunc i32 %or3 to i8, !dbg !430
  store i8 %conv, ptr %ovfw, align 1, !dbg !431
  %3 = load i8, ptr %ovfw, align 1, !dbg !432
  %4 = load i16, ptr %crtc, align 2, !dbg !433
  call void @out_idx(i8 inreg noundef zeroext %3, i16 inreg noundef zeroext %4, i8 inreg noundef zeroext 7) #5, !dbg !434
  %5 = load i32, ptr %end, align 4, !dbg !435
  %conv4 = trunc i32 %5 to i8, !dbg !435
  %6 = load i16, ptr %crtc, align 2, !dbg !436
  call void @out_idx(i8 inreg noundef zeroext %conv4, i16 inreg noundef zeroext %6, i8 inreg noundef zeroext 18) #5, !dbg !437
  call void @llvm.lifetime.end.p0(i64 4, ptr %end) #6, !dbg !438
  call void @llvm.lifetime.end.p0(i64 1, ptr %ovfw) #6, !dbg !438
  call void @llvm.lifetime.end.p0(i64 2, ptr %crtc) #6, !dbg !438
  ret void, !dbg !438
}

; Function Attrs: inlinehint nounwind
define internal void @out_idx(i8 inreg noundef zeroext %v, i16 inreg noundef zeroext %port, i8 inreg noundef zeroext %index) #4 !dbg !439 {
entry:
  %v.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  %index.addr = alloca i8, align 1
  store i8 %v, ptr %v.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !443, metadata !DIExpression()), !dbg !446
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !444, metadata !DIExpression()), !dbg !447
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !445, metadata !DIExpression()), !dbg !448
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 2), align 4, !dbg !449
  %1 = load i8, ptr %index.addr, align 1, !dbg !450
  %conv = zext i8 %1 to i32, !dbg !450
  %2 = load i8, ptr %v.addr, align 1, !dbg !451
  %conv1 = zext i8 %2 to i32, !dbg !451
  %shl = shl i32 %conv1, 8, !dbg !452
  %add = add nsw i32 %conv, %shl, !dbg !453
  %conv2 = trunc i32 %add to i16, !dbg !450
  %3 = load i16, ptr %port.addr, align 2, !dbg !454
  call void %0(i16 inreg noundef zeroext %conv2, i16 inreg noundef zeroext %3) #5, !dbg !449
  ret void, !dbg !455
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 283, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/video-vga.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2a053a047190e34d9d8a9d4f5648b55")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "video_vga", scope: !9, file: !2, line: 282, type: !152, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.video-vga.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/video-vga\22 -D KBUILD_BASENAME=\22video_vga\22 -D KBUILD_MODNAME=\22video_vga\22 -D __KBUILD_MODNAME=kmod_video_vga -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/video-vga.ll arch/x86/boot/video-vga.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !10, splitDebugInlining: false, nameTableKind: None)
!10 = !{!0, !7, !11, !16, !18, !123, !134, !137, !142, !147}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 12)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !3, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "card_name", scope: !20, file: !2, line: 233, type: !118, isLocal: true, isDefinition: true)
!20 = distinct !DISubprogram(name: "vga_probe", scope: !2, file: !2, line: 231, type: !21, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !117}
!25 = !DILocalVariable(name: "ireg", scope: !20, file: !2, line: 247, type: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !27, line: 206, size: 352, elements: !28)
!27 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, scope: !26, file: !27, line: 207, baseType: !30, size: 352)
!30 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !27, line: 207, size: 352, elements: !31)
!31 = !{!32, !51, !79}
!32 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !27, line: 208, baseType: !33, size: 352)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !27, line: 208, size: 352, elements: !34)
!34 = !{!35, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !33, file: !27, line: 209, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !37, line: 21, baseType: !38)
!37 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !39, line: 27, baseType: !40)
!39 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !33, file: !27, line: 210, baseType: !36, size: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !33, file: !27, line: 211, baseType: !36, size: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !33, file: !27, line: 212, baseType: !36, size: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !33, file: !27, line: 213, baseType: !36, size: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !33, file: !27, line: 214, baseType: !36, size: 32, offset: 160)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !33, file: !27, line: 215, baseType: !36, size: 32, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !33, file: !27, line: 216, baseType: !36, size: 32, offset: 224)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !33, file: !27, line: 217, baseType: !36, size: 32, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !33, file: !27, line: 218, baseType: !36, size: 32, offset: 288)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !33, file: !27, line: 219, baseType: !36, size: 32, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !27, line: 221, baseType: !52, size: 352)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !27, line: 221, size: 352, elements: !53)
!53 = !{!54, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !52, file: !27, line: 222, baseType: !55, size: 16)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !37, line: 19, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !39, line: 24, baseType: !57)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !52, file: !27, line: 222, baseType: !55, size: 16, offset: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !52, file: !27, line: 223, baseType: !55, size: 16, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !52, file: !27, line: 223, baseType: !55, size: 16, offset: 48)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !52, file: !27, line: 224, baseType: !55, size: 16, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !52, file: !27, line: 224, baseType: !55, size: 16, offset: 80)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !52, file: !27, line: 225, baseType: !55, size: 16, offset: 96)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !52, file: !27, line: 225, baseType: !55, size: 16, offset: 112)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !52, file: !27, line: 226, baseType: !55, size: 16, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !52, file: !27, line: 226, baseType: !55, size: 16, offset: 144)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !52, file: !27, line: 227, baseType: !55, size: 16, offset: 160)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !52, file: !27, line: 227, baseType: !55, size: 16, offset: 176)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !52, file: !27, line: 228, baseType: !55, size: 16, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !52, file: !27, line: 228, baseType: !55, size: 16, offset: 208)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !52, file: !27, line: 229, baseType: !55, size: 16, offset: 224)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !52, file: !27, line: 229, baseType: !55, size: 16, offset: 240)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !52, file: !27, line: 230, baseType: !55, size: 16, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !52, file: !27, line: 230, baseType: !55, size: 16, offset: 272)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !52, file: !27, line: 231, baseType: !55, size: 16, offset: 288)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !52, file: !27, line: 231, baseType: !55, size: 16, offset: 304)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !27, line: 232, baseType: !55, size: 16, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !52, file: !27, line: 232, baseType: !55, size: 16, offset: 336)
!79 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !27, line: 234, baseType: !80, size: 256)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !30, file: !27, line: 234, size: 256, elements: !81)
!81 = !{!82, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !80, file: !27, line: 235, baseType: !83, size: 8)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !37, line: 17, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !39, line: 21, baseType: !85)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !80, file: !27, line: 235, baseType: !83, size: 8, offset: 8)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !80, file: !27, line: 235, baseType: !83, size: 8, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !80, file: !27, line: 235, baseType: !83, size: 8, offset: 24)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !80, file: !27, line: 236, baseType: !83, size: 8, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !80, file: !27, line: 236, baseType: !83, size: 8, offset: 40)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !80, file: !27, line: 236, baseType: !83, size: 8, offset: 48)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !80, file: !27, line: 236, baseType: !83, size: 8, offset: 56)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !80, file: !27, line: 237, baseType: !83, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !80, file: !27, line: 237, baseType: !83, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !80, file: !27, line: 237, baseType: !83, size: 8, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !80, file: !27, line: 237, baseType: !83, size: 8, offset: 88)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !80, file: !27, line: 238, baseType: !83, size: 8, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !80, file: !27, line: 238, baseType: !83, size: 8, offset: 104)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !80, file: !27, line: 238, baseType: !83, size: 8, offset: 112)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !80, file: !27, line: 238, baseType: !83, size: 8, offset: 120)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !80, file: !27, line: 239, baseType: !83, size: 8, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !80, file: !27, line: 239, baseType: !83, size: 8, offset: 136)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !80, file: !27, line: 239, baseType: !83, size: 8, offset: 144)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !80, file: !27, line: 239, baseType: !83, size: 8, offset: 152)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !80, file: !27, line: 240, baseType: !83, size: 8, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !80, file: !27, line: 240, baseType: !83, size: 8, offset: 168)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !80, file: !27, line: 240, baseType: !83, size: 8, offset: 176)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !80, file: !27, line: 240, baseType: !83, size: 8, offset: 184)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !80, file: !27, line: 241, baseType: !83, size: 8, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !80, file: !27, line: 241, baseType: !83, size: 8, offset: 200)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !80, file: !27, line: 241, baseType: !83, size: 8, offset: 208)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !80, file: !27, line: 241, baseType: !83, size: 8, offset: 216)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !80, file: !27, line: 242, baseType: !83, size: 8, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !80, file: !27, line: 242, baseType: !83, size: 8, offset: 232)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !80, file: !27, line: 242, baseType: !83, size: 8, offset: 240)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !80, file: !27, line: 242, baseType: !83, size: 8, offset: 248)
!117 = !DILocalVariable(name: "oreg", scope: !20, file: !2, line: 247, type: !26)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 96, elements: !121)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!121 = !{!122}
!122 = !DISubrange(count: 3)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "mode_lists", scope: !20, file: !2, line: 236, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 96, elements: !121)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_info", file: !128, line: 64, size: 64, elements: !129)
!128 = !DIFile(filename: "arch/x86/boot/video.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e17e471001fcbd7daaae50249ab4298")
!129 = !{!130, !131, !132, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !127, file: !128, line: 65, baseType: !55, size: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !127, file: !128, line: 66, baseType: !55, size: 16, offset: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !127, file: !128, line: 66, baseType: !55, size: 16, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !127, file: !128, line: 67, baseType: !55, size: 16, offset: 48)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "mode_count", scope: !20, file: !2, line: 241, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 96, elements: !121)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "cga_modes", scope: !9, file: !2, line: 32, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 1)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "ega_modes", scope: !9, file: !2, line: 27, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 2)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "vga_modes", scope: !9, file: !2, line: 17, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 448, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 7)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_info", file: !128, line: 70, size: 224, elements: !153)
!153 = !{!154, !155, !159, !161, !162, !163, !164, !165}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !152, file: !128, line: 71, baseType: !119, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !152, file: !128, line: 72, baseType: !156, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 32)
!157 = !DISubroutineType(types: !158)
!158 = !{!23, !126}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !152, file: !128, line: 73, baseType: !160, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !152, file: !128, line: 74, baseType: !126, size: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nmodes", scope: !152, file: !128, line: 75, baseType: !23, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !152, file: !128, line: 76, baseType: !23, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_first", scope: !152, file: !128, line: 77, baseType: !55, size: 16, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_n", scope: !152, file: !128, line: 78, baseType: !55, size: 16, offset: 208)
!166 = !{i32 1, !"NumRegisterParameters", i32 3}
!167 = !{i32 7, !"Dwarf Version", i32 5}
!168 = !{i32 2, !"Debug Info Version", i32 3}
!169 = !{i32 1, !"wchar_size", i32 4}
!170 = !{i32 1, !"override-stack-alignment", i32 4}
!171 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!172 = distinct !DISubprogram(name: "vga_crtc", scope: !2, file: !2, line: 132, type: !173, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!173 = !DISubroutineType(types: !174)
!174 = !{!55}
!175 = !DILocation(line: 134, column: 10, scope: !172)
!176 = !DILocation(line: 134, column: 21, scope: !172)
!177 = !DILocation(line: 134, column: 9, scope: !172)
!178 = !DILocation(line: 134, column: 2, scope: !172)
!179 = distinct !DISubprogram(name: "vga_set_mode", scope: !2, file: !2, line: 191, type: !157, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !180)
!180 = !{!181}
!181 = !DILocalVariable(name: "mode", arg: 1, scope: !179, file: !2, line: 191, type: !126)
!182 = !DILocation(line: 191, column: 43, scope: !179)
!183 = !DILocation(line: 194, column: 2, scope: !179)
!184 = !DILocation(line: 197, column: 12, scope: !179)
!185 = !DILocation(line: 197, column: 18, scope: !179)
!186 = !DILocation(line: 197, column: 10, scope: !179)
!187 = !DILocation(line: 198, column: 12, scope: !179)
!188 = !DILocation(line: 198, column: 18, scope: !179)
!189 = !DILocation(line: 198, column: 10, scope: !179)
!190 = !DILocation(line: 200, column: 10, scope: !179)
!191 = !DILocation(line: 200, column: 16, scope: !179)
!192 = !DILocation(line: 200, column: 2, scope: !179)
!193 = !DILocation(line: 204, column: 3, scope: !194)
!194 = distinct !DILexicalBlock(scope: !179, file: !2, line: 200, column: 22)
!195 = !DILocation(line: 205, column: 3, scope: !194)
!196 = !DILocation(line: 207, column: 3, scope: !194)
!197 = !DILocation(line: 208, column: 3, scope: !194)
!198 = !DILocation(line: 210, column: 3, scope: !194)
!199 = !DILocation(line: 211, column: 3, scope: !194)
!200 = !DILocation(line: 213, column: 3, scope: !194)
!201 = !DILocation(line: 214, column: 3, scope: !194)
!202 = !DILocation(line: 216, column: 3, scope: !194)
!203 = !DILocation(line: 217, column: 3, scope: !194)
!204 = !DILocation(line: 219, column: 3, scope: !194)
!205 = !DILocation(line: 220, column: 3, scope: !194)
!206 = !DILocation(line: 223, column: 2, scope: !179)
!207 = !DILocation(line: 247, column: 2, scope: !20)
!208 = !DILocation(line: 247, column: 18, scope: !20)
!209 = !DILocation(line: 247, column: 24, scope: !20)
!210 = !DILocation(line: 249, column: 2, scope: !20)
!211 = !DILocation(line: 251, column: 7, scope: !20)
!212 = !DILocation(line: 251, column: 10, scope: !20)
!213 = !DILocation(line: 252, column: 7, scope: !20)
!214 = !DILocation(line: 252, column: 10, scope: !20)
!215 = !DILocation(line: 253, column: 2, scope: !20)
!216 = !DILocation(line: 256, column: 51, scope: !20)
!217 = !DILocation(line: 256, column: 44, scope: !20)
!218 = !DILocation(line: 260, column: 11, scope: !219)
!219 = distinct !DILexicalBlock(scope: !20, file: !2, line: 260, column: 6)
!220 = !DILocation(line: 260, column: 6, scope: !219)
!221 = !DILocation(line: 260, column: 14, scope: !219)
!222 = !DILocation(line: 260, column: 6, scope: !20)
!223 = !DILocation(line: 262, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !2, line: 260, column: 23)
!225 = !DILocation(line: 262, column: 11, scope: !224)
!226 = !DILocation(line: 263, column: 3, scope: !224)
!227 = !DILocation(line: 265, column: 12, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !2, line: 265, column: 7)
!229 = !DILocation(line: 265, column: 7, scope: !228)
!230 = !DILocation(line: 265, column: 15, scope: !228)
!231 = !DILocation(line: 265, column: 7, scope: !224)
!232 = !DILocation(line: 266, column: 12, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !2, line: 265, column: 24)
!234 = !DILocation(line: 268, column: 45, scope: !233)
!235 = !DILocation(line: 270, column: 3, scope: !233)
!236 = !DILocation(line: 271, column: 12, scope: !237)
!237 = distinct !DILexicalBlock(scope: !228, file: !2, line: 270, column: 10)
!238 = !DILocation(line: 273, column: 2, scope: !224)
!239 = !DILocation(line: 274, column: 11, scope: !240)
!240 = distinct !DILexicalBlock(scope: !219, file: !2, line: 273, column: 9)
!241 = !DILocation(line: 277, column: 31, scope: !20)
!242 = !DILocation(line: 277, column: 20, scope: !20)
!243 = !DILocation(line: 277, column: 18, scope: !20)
!244 = !DILocation(line: 278, column: 34, scope: !20)
!245 = !DILocation(line: 278, column: 24, scope: !20)
!246 = !DILocation(line: 278, column: 22, scope: !20)
!247 = !DILocation(line: 279, column: 20, scope: !20)
!248 = !DILocation(line: 279, column: 9, scope: !20)
!249 = !DILocation(line: 280, column: 1, scope: !20)
!250 = !DILocation(line: 279, column: 2, scope: !20)
!251 = distinct !DISubprogram(name: "vga_set_basic_mode", scope: !2, file: !2, line: 39, type: !252, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!83}
!254 = !{!255, !256, !257}
!255 = !DILocalVariable(name: "ireg", scope: !251, file: !2, line: 41, type: !26)
!256 = !DILocalVariable(name: "oreg", scope: !251, file: !2, line: 41, type: !26)
!257 = !DILocalVariable(name: "mode", scope: !251, file: !2, line: 42, type: !83)
!258 = !DILocation(line: 41, column: 2, scope: !251)
!259 = !DILocation(line: 41, column: 18, scope: !251)
!260 = !DILocation(line: 41, column: 24, scope: !251)
!261 = !DILocation(line: 42, column: 2, scope: !251)
!262 = !DILocation(line: 42, column: 5, scope: !251)
!263 = !DILocation(line: 44, column: 2, scope: !251)
!264 = !DILocation(line: 47, column: 7, scope: !251)
!265 = !DILocation(line: 47, column: 10, scope: !251)
!266 = !DILocation(line: 48, column: 2, scope: !251)
!267 = !DILocation(line: 49, column: 14, scope: !251)
!268 = !DILocation(line: 49, column: 7, scope: !251)
!269 = !DILocation(line: 51, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !251, file: !2, line: 51, column: 6)
!271 = !DILocation(line: 51, column: 11, scope: !270)
!272 = !DILocation(line: 51, column: 16, scope: !270)
!273 = !DILocation(line: 51, column: 19, scope: !270)
!274 = !DILocation(line: 51, column: 24, scope: !270)
!275 = !DILocation(line: 51, column: 6, scope: !251)
!276 = !DILocation(line: 52, column: 8, scope: !270)
!277 = !DILocation(line: 52, column: 3, scope: !270)
!278 = !DILocation(line: 55, column: 12, scope: !251)
!279 = !DILocation(line: 55, column: 7, scope: !251)
!280 = !DILocation(line: 55, column: 10, scope: !251)
!281 = !DILocation(line: 56, column: 2, scope: !251)
!282 = !DILocation(line: 57, column: 13, scope: !251)
!283 = !DILocation(line: 58, column: 9, scope: !251)
!284 = !DILocation(line: 59, column: 1, scope: !251)
!285 = !DILocation(line: 58, column: 2, scope: !251)
!286 = distinct !DISubprogram(name: "vga_set_8font", scope: !2, file: !2, line: 61, type: !287, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{null}
!289 = !{!290}
!290 = !DILocalVariable(name: "ireg", scope: !286, file: !2, line: 64, type: !26)
!291 = !DILocation(line: 64, column: 2, scope: !286)
!292 = !DILocation(line: 64, column: 18, scope: !286)
!293 = !DILocation(line: 66, column: 2, scope: !286)
!294 = !DILocation(line: 69, column: 7, scope: !286)
!295 = !DILocation(line: 69, column: 10, scope: !286)
!296 = !DILocation(line: 71, column: 2, scope: !286)
!297 = !DILocation(line: 74, column: 7, scope: !286)
!298 = !DILocation(line: 74, column: 10, scope: !286)
!299 = !DILocation(line: 75, column: 7, scope: !286)
!300 = !DILocation(line: 75, column: 10, scope: !286)
!301 = !DILocation(line: 76, column: 2, scope: !286)
!302 = !DILocation(line: 79, column: 7, scope: !286)
!303 = !DILocation(line: 79, column: 10, scope: !286)
!304 = !DILocation(line: 80, column: 7, scope: !286)
!305 = !DILocation(line: 80, column: 10, scope: !286)
!306 = !DILocation(line: 81, column: 2, scope: !286)
!307 = !DILocation(line: 84, column: 7, scope: !286)
!308 = !DILocation(line: 84, column: 10, scope: !286)
!309 = !DILocation(line: 85, column: 7, scope: !286)
!310 = !DILocation(line: 85, column: 10, scope: !286)
!311 = !DILocation(line: 86, column: 2, scope: !286)
!312 = !DILocation(line: 87, column: 1, scope: !286)
!313 = distinct !DISubprogram(name: "vga_set_80x43", scope: !2, file: !2, line: 112, type: !287, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !314)
!314 = !{!315}
!315 = !DILocalVariable(name: "ireg", scope: !313, file: !2, line: 115, type: !26)
!316 = !DILocation(line: 115, column: 2, scope: !313)
!317 = !DILocation(line: 115, column: 18, scope: !313)
!318 = !DILocation(line: 117, column: 2, scope: !313)
!319 = !DILocation(line: 120, column: 7, scope: !313)
!320 = !DILocation(line: 120, column: 10, scope: !313)
!321 = !DILocation(line: 121, column: 7, scope: !313)
!322 = !DILocation(line: 121, column: 10, scope: !313)
!323 = !DILocation(line: 122, column: 2, scope: !313)
!324 = !DILocation(line: 125, column: 7, scope: !313)
!325 = !DILocation(line: 125, column: 10, scope: !313)
!326 = !DILocation(line: 126, column: 2, scope: !313)
!327 = !DILocation(line: 128, column: 2, scope: !313)
!328 = !DILocation(line: 129, column: 1, scope: !313)
!329 = distinct !DISubprogram(name: "vga_set_14font", scope: !2, file: !2, line: 89, type: !287, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !330)
!330 = !{!331}
!331 = !DILocalVariable(name: "ireg", scope: !329, file: !2, line: 92, type: !26)
!332 = !DILocation(line: 92, column: 2, scope: !329)
!333 = !DILocation(line: 92, column: 18, scope: !329)
!334 = !DILocation(line: 94, column: 2, scope: !329)
!335 = !DILocation(line: 97, column: 7, scope: !329)
!336 = !DILocation(line: 97, column: 10, scope: !329)
!337 = !DILocation(line: 99, column: 2, scope: !329)
!338 = !DILocation(line: 102, column: 7, scope: !329)
!339 = !DILocation(line: 102, column: 10, scope: !329)
!340 = !DILocation(line: 103, column: 7, scope: !329)
!341 = !DILocation(line: 103, column: 10, scope: !329)
!342 = !DILocation(line: 104, column: 2, scope: !329)
!343 = !DILocation(line: 107, column: 7, scope: !329)
!344 = !DILocation(line: 107, column: 10, scope: !329)
!345 = !DILocation(line: 108, column: 7, scope: !329)
!346 = !DILocation(line: 108, column: 10, scope: !329)
!347 = !DILocation(line: 109, column: 2, scope: !329)
!348 = !DILocation(line: 110, column: 1, scope: !329)
!349 = distinct !DISubprogram(name: "vga_set_80x30", scope: !2, file: !2, line: 171, type: !287, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!350 = !DILocation(line: 173, column: 2, scope: !349)
!351 = !DILocation(line: 174, column: 2, scope: !349)
!352 = !DILocation(line: 175, column: 1, scope: !349)
!353 = distinct !DISubprogram(name: "vga_set_80x34", scope: !2, file: !2, line: 177, type: !287, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!354 = !DILocation(line: 179, column: 2, scope: !353)
!355 = !DILocation(line: 180, column: 2, scope: !353)
!356 = !DILocation(line: 181, column: 2, scope: !353)
!357 = !DILocation(line: 182, column: 1, scope: !353)
!358 = distinct !DISubprogram(name: "vga_set_80x60", scope: !2, file: !2, line: 184, type: !287, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!359 = !DILocation(line: 186, column: 2, scope: !358)
!360 = !DILocation(line: 187, column: 2, scope: !358)
!361 = !DILocation(line: 188, column: 2, scope: !358)
!362 = !DILocation(line: 189, column: 1, scope: !358)
!363 = !DISubprogram(name: "initregs", scope: !27, file: !27, line: 302, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!367 = !DISubprogram(name: "intcall", scope: !27, file: !27, line: 246, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !83, !370, !366}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!372 = distinct !DISubprogram(name: "vga_set_480_scanlines", scope: !2, file: !2, line: 137, type: !287, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !373)
!373 = !{!374, !375}
!374 = !DILocalVariable(name: "crtc", scope: !372, file: !2, line: 139, type: !55)
!375 = !DILocalVariable(name: "csel", scope: !372, file: !2, line: 140, type: !83)
!376 = !DILocation(line: 139, column: 2, scope: !372)
!377 = !DILocation(line: 139, column: 6, scope: !372)
!378 = !DILocation(line: 140, column: 2, scope: !372)
!379 = !DILocation(line: 140, column: 6, scope: !372)
!380 = !DILocation(line: 142, column: 9, scope: !372)
!381 = !DILocation(line: 142, column: 7, scope: !372)
!382 = !DILocation(line: 144, column: 16, scope: !372)
!383 = !DILocation(line: 144, column: 2, scope: !372)
!384 = !DILocation(line: 145, column: 16, scope: !372)
!385 = !DILocation(line: 145, column: 2, scope: !372)
!386 = !DILocation(line: 146, column: 16, scope: !372)
!387 = !DILocation(line: 146, column: 2, scope: !372)
!388 = !DILocation(line: 147, column: 16, scope: !372)
!389 = !DILocation(line: 147, column: 2, scope: !372)
!390 = !DILocation(line: 148, column: 16, scope: !372)
!391 = !DILocation(line: 148, column: 2, scope: !372)
!392 = !DILocation(line: 149, column: 16, scope: !372)
!393 = !DILocation(line: 149, column: 2, scope: !372)
!394 = !DILocation(line: 150, column: 16, scope: !372)
!395 = !DILocation(line: 150, column: 2, scope: !372)
!396 = !DILocation(line: 151, column: 9, scope: !372)
!397 = !DILocation(line: 151, column: 7, scope: !372)
!398 = !DILocation(line: 152, column: 7, scope: !372)
!399 = !DILocation(line: 153, column: 7, scope: !372)
!400 = !DILocation(line: 154, column: 2, scope: !372)
!401 = !DILocation(line: 154, column: 7, scope: !372)
!402 = !DILocation(line: 155, column: 1, scope: !372)
!403 = distinct !DISubprogram(name: "vga_set_vertical_end", scope: !2, file: !2, line: 157, type: !404, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !23}
!406 = !{!407, !408, !409, !410}
!407 = !DILocalVariable(name: "lines", arg: 1, scope: !403, file: !2, line: 157, type: !23)
!408 = !DILocalVariable(name: "crtc", scope: !403, file: !2, line: 159, type: !55)
!409 = !DILocalVariable(name: "ovfw", scope: !403, file: !2, line: 160, type: !83)
!410 = !DILocalVariable(name: "end", scope: !403, file: !2, line: 161, type: !23)
!411 = !DILocation(line: 157, column: 38, scope: !403)
!412 = !DILocation(line: 159, column: 2, scope: !403)
!413 = !DILocation(line: 159, column: 6, scope: !403)
!414 = !DILocation(line: 160, column: 2, scope: !403)
!415 = !DILocation(line: 160, column: 6, scope: !403)
!416 = !DILocation(line: 161, column: 2, scope: !403)
!417 = !DILocation(line: 161, column: 6, scope: !403)
!418 = !DILocation(line: 161, column: 12, scope: !403)
!419 = !DILocation(line: 161, column: 17, scope: !403)
!420 = !DILocation(line: 163, column: 9, scope: !403)
!421 = !DILocation(line: 163, column: 7, scope: !403)
!422 = !DILocation(line: 165, column: 18, scope: !403)
!423 = !DILocation(line: 165, column: 22, scope: !403)
!424 = !DILocation(line: 165, column: 32, scope: !403)
!425 = !DILocation(line: 165, column: 14, scope: !403)
!426 = !DILocation(line: 165, column: 44, scope: !403)
!427 = !DILocation(line: 165, column: 48, scope: !403)
!428 = !DILocation(line: 165, column: 58, scope: !403)
!429 = !DILocation(line: 165, column: 40, scope: !403)
!430 = !DILocation(line: 165, column: 9, scope: !403)
!431 = !DILocation(line: 165, column: 7, scope: !403)
!432 = !DILocation(line: 167, column: 10, scope: !403)
!433 = !DILocation(line: 167, column: 16, scope: !403)
!434 = !DILocation(line: 167, column: 2, scope: !403)
!435 = !DILocation(line: 168, column: 10, scope: !403)
!436 = !DILocation(line: 168, column: 16, scope: !403)
!437 = !DILocation(line: 168, column: 2, scope: !403)
!438 = !DILocation(line: 169, column: 1, scope: !403)
!439 = distinct !DISubprogram(name: "out_idx", scope: !128, file: !128, line: 103, type: !440, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !83, !55, !83}
!442 = !{!443, !444, !445}
!443 = !DILocalVariable(name: "v", arg: 1, scope: !439, file: !128, line: 103, type: !83)
!444 = !DILocalVariable(name: "port", arg: 2, scope: !439, file: !128, line: 103, type: !55)
!445 = !DILocalVariable(name: "index", arg: 3, scope: !439, file: !128, line: 103, type: !83)
!446 = !DILocation(line: 103, column: 31, scope: !439)
!447 = !DILocation(line: 103, column: 38, scope: !439)
!448 = !DILocation(line: 103, column: 47, scope: !439)
!449 = !DILocation(line: 105, column: 2, scope: !439)
!450 = !DILocation(line: 105, column: 7, scope: !439)
!451 = !DILocation(line: 105, column: 14, scope: !439)
!452 = !DILocation(line: 105, column: 16, scope: !439)
!453 = !DILocation(line: 105, column: 12, scope: !439)
!454 = !DILocation(line: 105, column: 23, scope: !439)
!455 = !DILocation(line: 106, column: 1, scope: !439)
