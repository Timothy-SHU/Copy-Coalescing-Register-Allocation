; ModuleID = 'arch/x86/boot/video-bios.c'
source_filename = "arch/x86/boot/video-bios.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.card_info = type { ptr, ptr, ptr, ptr, i32, i32, i16, i16 }
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
%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.mode_info = type { i16, i16, i16, i16 }
%struct.biosregs = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.1 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.0 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [5 x i8] c"BIOS\00", align 1, !dbg !0
@video_bios = internal global %struct.card_info { ptr @.str, ptr @bios_set_mode, ptr @bios_probe, ptr null, i32 0, i32 1, i16 256, i16 128 }, section ".videocards", align 4, !dbg !7
@do_restore = external dso_local global i32, align 4
@boot_params = external dso_local global %struct.boot_params, align 1
@adapter = external dso_local global i32, align 4
@HEAP = external dso_local global ptr, align 4
@heap_end = external dso_local global ptr, align 4
@pio_ops = external dso_local global %struct.port_io_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @video_bios], section "llvm.metadata"

; Function Attrs: nounwind
define internal i32 @bios_set_mode(ptr inreg noundef %mi) #0 !dbg !63 {
entry:
  %mi.addr = alloca ptr, align 4
  store ptr %mi, ptr %mi.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mi.addr, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load ptr, ptr %mi.addr, align 4, !dbg !67
  %mode = getelementptr inbounds %struct.mode_info, ptr %0, i32 0, i32 0, !dbg !68
  %1 = load i16, ptr %mode, align 2, !dbg !68
  %conv = zext i16 %1 to i32, !dbg !67
  %sub = sub nsw i32 %conv, 256, !dbg !69
  %conv1 = trunc i32 %sub to i8, !dbg !67
  %call = call i32 @set_bios_mode(i8 inreg noundef zeroext %conv1) #5, !dbg !70
  ret i32 %call, !dbg !71
}

; Function Attrs: nounwind
define internal i32 @bios_probe() #0 !dbg !72 {
entry:
  %retval = alloca i32, align 4
  %mode = alloca i8, align 1
  %saved_mode = alloca i8, align 1
  %crtc = alloca i16, align 2
  %mi = alloca ptr, align 4
  %nmodes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %mode) #6, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !74, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 1, ptr %saved_mode) #6, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %saved_mode, metadata !75, metadata !DIExpression()), !dbg !82
  %0 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 4), align 1, !dbg !83
  store i8 %0, ptr %saved_mode, align 1, !dbg !82
  call void @llvm.lifetime.start.p0(i64 2, ptr %crtc) #6, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !76, metadata !DIExpression()), !dbg !85
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !77, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmodes) #6, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %nmodes, metadata !78, metadata !DIExpression()), !dbg !89
  store i32 0, ptr %nmodes, align 4, !dbg !89
  %1 = load i32, ptr @adapter, align 4, !dbg !90
  %cmp = icmp ne i32 %1, 1, !dbg !92
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !93

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr @adapter, align 4, !dbg !94
  %cmp1 = icmp ne i32 %2, 2, !dbg !95
  br i1 %cmp1, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !97
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @set_fs(i16 inreg noundef zeroext 0) #5, !dbg !98
  %call = call zeroext i16 @vga_crtc() #5, !dbg !99
  store i16 %call, ptr %crtc, align 2, !dbg !100
  %call2 = call ptr @__get_heap(i32 inreg noundef 8, i32 inreg noundef 2, i32 inreg noundef 0) #5, !dbg !101
  store ptr %call2, ptr getelementptr inbounds (%struct.card_info, ptr @video_bios, i32 0, i32 3), align 4, !dbg !102
  store i8 20, ptr %mode, align 1, !dbg !103
  br label %for.cond, !dbg !105

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8, ptr %mode, align 1, !dbg !106
  %conv = zext i8 %3 to i32, !dbg !106
  %cmp3 = icmp sle i32 %conv, 127, !dbg !108
  br i1 %cmp3, label %for.body, label %for.end, !dbg !109

for.body:                                         ; preds = %for.cond
  %call5 = call zeroext i1 @heap_free(i32 inreg noundef 8) #5, !dbg !110
  br i1 %call5, label %if.end7, label %if.then6, !dbg !113

if.then6:                                         ; preds = %for.body
  br label %for.end, !dbg !114

if.end7:                                          ; preds = %for.body
  %4 = load i8, ptr %mode, align 1, !dbg !115
  %conv8 = zext i8 %4 to i32, !dbg !115
  %add = add nsw i32 256, %conv8, !dbg !117
  %conv9 = trunc i32 %add to i16, !dbg !118
  %call10 = call i32 @mode_defined(i16 inreg noundef zeroext %conv9) #5, !dbg !119
  %tobool = icmp ne i32 %call10, 0, !dbg !119
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !120

if.then11:                                        ; preds = %if.end7
  br label %for.inc, !dbg !121

if.end12:                                         ; preds = %if.end7
  %5 = load i8, ptr %mode, align 1, !dbg !122
  %call13 = call i32 @set_bios_mode(i8 inreg noundef zeroext %5) #5, !dbg !124
  %tobool14 = icmp ne i32 %call13, 0, !dbg !124
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !125

if.then15:                                        ; preds = %if.end12
  br label %for.inc, !dbg !126

if.end16:                                         ; preds = %if.end12
  %call17 = call zeroext i8 @in_idx(i16 inreg noundef zeroext 960, i8 inreg noundef zeroext 16) #5, !dbg !127
  %conv18 = zext i8 %call17 to i32, !dbg !127
  %and = and i32 %conv18, 1, !dbg !129
  %tobool19 = icmp ne i32 %and, 0, !dbg !129
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !130

if.then20:                                        ; preds = %if.end16
  br label %for.inc, !dbg !131

if.end21:                                         ; preds = %if.end16
  %call22 = call zeroext i8 @in_idx(i16 inreg noundef zeroext 974, i8 inreg noundef zeroext 6) #5, !dbg !132
  %conv23 = zext i8 %call22 to i32, !dbg !132
  %and24 = and i32 %conv23, 1, !dbg !134
  %tobool25 = icmp ne i32 %and24, 0, !dbg !134
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !135

if.then26:                                        ; preds = %if.end21
  br label %for.inc, !dbg !136

if.end27:                                         ; preds = %if.end21
  %6 = load i16, ptr %crtc, align 2, !dbg !137
  %call28 = call zeroext i8 @in_idx(i16 inreg noundef zeroext %6, i8 inreg noundef zeroext 15) #5, !dbg !139
  %tobool29 = icmp ne i8 %call28, 0, !dbg !139
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !140

if.then30:                                        ; preds = %if.end27
  br label %for.inc, !dbg !141

if.end31:                                         ; preds = %if.end27
  %call32 = call ptr @__get_heap(i32 inreg noundef 8, i32 inreg noundef 2, i32 inreg noundef 1) #5, !dbg !142
  store ptr %call32, ptr %mi, align 4, !dbg !143
  %7 = load i8, ptr %mode, align 1, !dbg !144
  %conv33 = zext i8 %7 to i32, !dbg !144
  %add34 = add nsw i32 256, %conv33, !dbg !145
  %conv35 = trunc i32 %add34 to i16, !dbg !146
  %8 = load ptr, ptr %mi, align 4, !dbg !147
  %mode36 = getelementptr inbounds %struct.mode_info, ptr %8, i32 0, i32 0, !dbg !148
  store i16 %conv35, ptr %mode36, align 2, !dbg !149
  %9 = load ptr, ptr %mi, align 4, !dbg !150
  %depth = getelementptr inbounds %struct.mode_info, ptr %9, i32 0, i32 3, !dbg !151
  store i16 0, ptr %depth, align 2, !dbg !152
  %call37 = call zeroext i16 @rdfs16(i32 inreg noundef 1098) #5, !dbg !153
  %10 = load ptr, ptr %mi, align 4, !dbg !154
  %x = getelementptr inbounds %struct.mode_info, ptr %10, i32 0, i32 1, !dbg !155
  store i16 %call37, ptr %x, align 2, !dbg !156
  %call38 = call zeroext i8 @rdfs8(i32 inreg noundef 1156) #5, !dbg !157
  %conv39 = zext i8 %call38 to i32, !dbg !157
  %add40 = add nsw i32 %conv39, 1, !dbg !158
  %conv41 = trunc i32 %add40 to i16, !dbg !157
  %11 = load ptr, ptr %mi, align 4, !dbg !159
  %y = getelementptr inbounds %struct.mode_info, ptr %11, i32 0, i32 2, !dbg !160
  store i16 %conv41, ptr %y, align 2, !dbg !161
  %12 = load i32, ptr %nmodes, align 4, !dbg !162
  %inc = add nsw i32 %12, 1, !dbg !162
  store i32 %inc, ptr %nmodes, align 4, !dbg !162
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %if.end31, %if.then30, %if.then26, %if.then20, %if.then15, %if.then11
  %13 = load i8, ptr %mode, align 1, !dbg !164
  %inc42 = add i8 %13, 1, !dbg !164
  store i8 %inc42, ptr %mode, align 1, !dbg !164
  br label %for.cond, !dbg !165, !llvm.loop !166

for.end:                                          ; preds = %if.then6, %for.cond
  %14 = load i8, ptr %saved_mode, align 1, !dbg !170
  %call43 = call i32 @set_bios_mode(i8 inreg noundef zeroext %14) #5, !dbg !171
  %15 = load i32, ptr %nmodes, align 4, !dbg !172
  store i32 %15, ptr %retval, align 4, !dbg !173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !173

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmodes) #6, !dbg !174
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #6, !dbg !174
  call void @llvm.lifetime.end.p0(i64 2, ptr %crtc) #6, !dbg !174
  call void @llvm.lifetime.end.p0(i64 1, ptr %saved_mode) #6, !dbg !174
  call void @llvm.lifetime.end.p0(i64 1, ptr %mode) #6, !dbg !174
  %16 = load i32, ptr %retval, align 4, !dbg !174
  ret i32 %16, !dbg !174
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define internal i32 @set_bios_mode(i8 inreg noundef zeroext %mode) #0 !dbg !175 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i8, align 1
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %new_mode = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %mode, ptr %mode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !179, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !180, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !263, metadata !DIExpression()), !dbg !268
  call void @llvm.lifetime.start.p0(i64 1, ptr %new_mode) #6, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %new_mode, metadata !264, metadata !DIExpression()), !dbg !270
  call void @initregs(ptr inreg noundef %ireg) #5, !dbg !271
  %0 = load i8, ptr %mode.addr, align 1, !dbg !272
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !273
  %al = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 28, !dbg !273
  store i8 %0, ptr %al, align 4, !dbg !274
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !275
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !276
  %ah = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 29, !dbg !276
  store i8 15, ptr %ah, align 1, !dbg !277
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #5, !dbg !278
  store i32 1, ptr @do_restore, align 4, !dbg !279
  %3 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !280
  %al1 = getelementptr inbounds %struct.anon.1, ptr %3, i32 0, i32 28, !dbg !280
  %4 = load i8, ptr %al1, align 4, !dbg !280
  %conv = zext i8 %4 to i32, !dbg !281
  %and = and i32 %conv, 127, !dbg !282
  %conv2 = trunc i32 %and to i8, !dbg !281
  store i8 %conv2, ptr %new_mode, align 1, !dbg !283
  %5 = load i8, ptr %new_mode, align 1, !dbg !284
  %conv3 = zext i8 %5 to i32, !dbg !284
  %6 = load i8, ptr %mode.addr, align 1, !dbg !286
  %conv4 = zext i8 %6 to i32, !dbg !286
  %cmp = icmp eq i32 %conv3, %conv4, !dbg !287
  br i1 %cmp, label %if.then, label %if.end, !dbg !288

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !289

if.end:                                           ; preds = %entry
  %7 = load i8, ptr %new_mode, align 1, !dbg !290
  %conv6 = zext i8 %7 to i32, !dbg !290
  %8 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 4), align 1, !dbg !292
  %conv7 = zext i8 %8 to i32, !dbg !293
  %cmp8 = icmp ne i32 %conv6, %conv7, !dbg !294
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !295

if.then10:                                        ; preds = %if.end
  %9 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 4), align 1, !dbg !296
  %conv11 = zext i8 %9 to i16, !dbg !298
  %10 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !299
  %ax = getelementptr inbounds %struct.anon.0, ptr %10, i32 0, i32 14, !dbg !299
  store i16 %conv11, ptr %ax, align 4, !dbg !300
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #5, !dbg !301
  br label %if.end12, !dbg !302

if.end12:                                         ; preds = %if.then10, %if.end
  store i32 -1, ptr %retval, align 4, !dbg !303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !303

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_mode) #6, !dbg !304
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !304
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !304
  %11 = load i32, ptr %retval, align 4, !dbg !304
  ret i32 %11, !dbg !304
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !305 dso_local void @initregs(ptr inreg noundef) #3

declare !dbg !309 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind
define internal void @set_fs(i16 inreg noundef zeroext %seg) #4 !dbg !314 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i16, ptr %seg.addr, align 2, !dbg !320
  call void asm sideeffect "movw $0,%fs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #6, !dbg !321, !srcloc !322
  ret void, !dbg !323
}

declare !dbg !324 dso_local zeroext i16 @vga_crtc() #3

; Function Attrs: inlinehint nounwind
define internal ptr @__get_heap(i32 inreg noundef %s, i32 inreg noundef %a, i32 inreg noundef %n) #4 !dbg !327 {
entry:
  %s.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  store i32 %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !331, metadata !DIExpression()), !dbg !335
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !332, metadata !DIExpression()), !dbg !336
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !333, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #6, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !334, metadata !DIExpression()), !dbg !339
  %0 = load ptr, ptr @HEAP, align 4, !dbg !340
  %1 = ptrtoint ptr %0 to i32, !dbg !341
  %2 = load i32, ptr %a.addr, align 4, !dbg !342
  %sub = sub i32 %2, 1, !dbg !343
  %add = add i32 %1, %sub, !dbg !344
  %3 = load i32, ptr %a.addr, align 4, !dbg !345
  %sub1 = sub i32 %3, 1, !dbg !346
  %not = xor i32 %sub1, -1, !dbg !347
  %and = and i32 %add, %not, !dbg !348
  %4 = inttoptr i32 %and to ptr, !dbg !349
  store ptr %4, ptr @HEAP, align 4, !dbg !350
  %5 = load ptr, ptr @HEAP, align 4, !dbg !351
  store ptr %5, ptr %tmp, align 4, !dbg !352
  %6 = load i32, ptr %s.addr, align 4, !dbg !353
  %7 = load i32, ptr %n.addr, align 4, !dbg !354
  %mul = mul i32 %6, %7, !dbg !355
  %8 = load ptr, ptr @HEAP, align 4, !dbg !356
  %add.ptr = getelementptr inbounds i8, ptr %8, i32 %mul, !dbg !356
  store ptr %add.ptr, ptr @HEAP, align 4, !dbg !356
  %9 = load ptr, ptr %tmp, align 4, !dbg !357
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #6, !dbg !358
  ret ptr %9, !dbg !359
}

; Function Attrs: inlinehint nounwind
define internal zeroext i1 @heap_free(i32 inreg noundef %n) #4 !dbg !360 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load ptr, ptr @heap_end, align 4, !dbg !368
  %1 = load ptr, ptr @HEAP, align 4, !dbg !369
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i32, !dbg !370
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32, !dbg !370
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !370
  %2 = load i32, ptr %n.addr, align 4, !dbg !371
  %cmp = icmp sge i32 %sub.ptr.sub, %2, !dbg !372
  ret i1 %cmp, !dbg !373
}

declare !dbg !374 dso_local i32 @mode_defined(i16 inreg noundef zeroext) #3

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @in_idx(i16 inreg noundef zeroext %port, i8 inreg noundef zeroext %index) #4 !dbg !377 {
entry:
  %port.addr = alloca i16, align 2
  %index.addr = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !381, metadata !DIExpression()), !dbg !383
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !382, metadata !DIExpression()), !dbg !384
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !385
  %1 = load i8, ptr %index.addr, align 1, !dbg !386
  %2 = load i16, ptr %port.addr, align 2, !dbg !387
  call void %0(i8 inreg noundef zeroext %1, i16 inreg noundef zeroext %2) #5, !dbg !385
  %3 = load ptr, ptr @pio_ops, align 4, !dbg !388
  %4 = load i16, ptr %port.addr, align 2, !dbg !389
  %conv = zext i16 %4 to i32, !dbg !389
  %add = add nsw i32 %conv, 1, !dbg !390
  %conv1 = trunc i32 %add to i16, !dbg !389
  %call = call zeroext i8 %3(i16 inreg noundef zeroext %conv1) #5, !dbg !388
  ret i8 %call, !dbg !391
}

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @rdfs16(i32 inreg noundef %addr) #4 !dbg !392 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i16, align 2
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !397, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #6, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !398, metadata !DIExpression()), !dbg !404
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #6, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !399, metadata !DIExpression()), !dbg !405
  %0 = load i32, ptr %addr.addr, align 4, !dbg !405
  %1 = inttoptr i32 %0 to ptr, !dbg !405
  %2 = ptrtoint ptr %1 to i32, !dbg !405
  store i32 %2, ptr %__ptr, align 4, !dbg !405
  %3 = load i32, ptr %__ptr, align 4, !dbg !405
  %add = add i32 %3, 0, !dbg !405
  %4 = inttoptr i32 %add to ptr, !dbg !405
  store ptr %4, ptr %tmp, align 4, !dbg !405
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #6, !dbg !406
  %5 = load ptr, ptr %tmp, align 4, !dbg !405
  store ptr %5, ptr %ptr, align 4, !dbg !404
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #6, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %v, metadata !401, metadata !DIExpression()), !dbg !408
  %6 = load ptr, ptr %ptr, align 4, !dbg !409
  %7 = call i16 asm sideeffect "movw %fs:$1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %6) #6, !dbg !410, !srcloc !411
  store i16 %7, ptr %v, align 2, !dbg !410
  %8 = load i16, ptr %v, align 2, !dbg !412
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #6, !dbg !413
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #6, !dbg !413
  ret i16 %8, !dbg !414
}

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @rdfs8(i32 inreg noundef %addr) #4 !dbg !415 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i8, align 1
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !419, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #6, !dbg !425
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !420, metadata !DIExpression()), !dbg !426
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #6, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !421, metadata !DIExpression()), !dbg !427
  %0 = load i32, ptr %addr.addr, align 4, !dbg !427
  %1 = inttoptr i32 %0 to ptr, !dbg !427
  %2 = ptrtoint ptr %1 to i32, !dbg !427
  store i32 %2, ptr %__ptr, align 4, !dbg !427
  %3 = load i32, ptr %__ptr, align 4, !dbg !427
  %add = add i32 %3, 0, !dbg !427
  %4 = inttoptr i32 %add to ptr, !dbg !427
  store ptr %4, ptr %tmp, align 4, !dbg !427
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #6, !dbg !428
  %5 = load ptr, ptr %tmp, align 4, !dbg !427
  store ptr %5, ptr %ptr, align 4, !dbg !426
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #6, !dbg !429
  call void @llvm.dbg.declare(metadata ptr %v, metadata !423, metadata !DIExpression()), !dbg !430
  %6 = load ptr, ptr %ptr, align 4, !dbg !431
  %7 = call i8 asm sideeffect "movb %fs:$1,$0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %6) #6, !dbg !432, !srcloc !433
  store i8 %7, ptr %v, align 1, !dbg !432
  %8 = load i8, ptr %v, align 1, !dbg !434
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #6, !dbg !435
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #6, !dbg !435
  ret i8 %8, !dbg !436
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/video-bios.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84283e9d38178fd3e2e4bc6aebf1f392")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "video_bios", scope: !9, file: !2, line: 118, type: !39, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.video-bios.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/video-bios\22 -D KBUILD_BASENAME=\22video_bios\22 -D KBUILD_MODNAME=\22video_bios\22 -D __KBUILD_MODNAME=kmod_video_bios -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/video-bios.ll arch/x86/boot/video-bios.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !38, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !24, !25, !30, !31, !32, !33, !34}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_info", file: !13, line: 64, size: 64, elements: !14)
!13 = !DIFile(filename: "arch/x86/boot/video.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e17e471001fcbd7daaae50249ab4298")
!14 = !{!15, !21, !22, !23}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !12, file: !13, line: 65, baseType: !16, size: 16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !12, file: !13, line: 66, baseType: !16, size: 16, offset: 16)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !12, file: !13, line: 66, baseType: !16, size: 16, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !12, file: !13, line: 67, baseType: !16, size: 16, offset: 48)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 61, baseType: !27)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !28, line: 68, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!32 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !{!0, !7}
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_info", file: !13, line: 70, size: 224, elements: !40)
!40 = !{!41, !44, !48, !52, !53, !54, !55, !56}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !39, file: !13, line: 71, baseType: !42, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !39, file: !13, line: 72, baseType: !45, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!46 = !DISubroutineType(types: !47)
!47 = !{!30, !11}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !39, file: !13, line: 73, baseType: !49, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!50 = !DISubroutineType(types: !51)
!51 = !{!30}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !39, file: !13, line: 74, baseType: !11, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nmodes", scope: !39, file: !13, line: 75, baseType: !30, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !39, file: !13, line: 76, baseType: !30, size: 32, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_first", scope: !39, file: !13, line: 77, baseType: !16, size: 16, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_n", scope: !39, file: !13, line: 78, baseType: !16, size: 16, offset: 208)
!57 = !{i32 1, !"NumRegisterParameters", i32 3}
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{i32 1, !"override-stack-alignment", i32 4}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = distinct !DISubprogram(name: "bios_set_mode", scope: !2, file: !2, line: 24, type: !46, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !64)
!64 = !{!65}
!65 = !DILocalVariable(name: "mi", arg: 1, scope: !63, file: !2, line: 24, type: !11)
!66 = !DILocation(line: 24, column: 44, scope: !63)
!67 = !DILocation(line: 26, column: 23, scope: !63)
!68 = !DILocation(line: 26, column: 27, scope: !63)
!69 = !DILocation(line: 26, column: 32, scope: !63)
!70 = !DILocation(line: 26, column: 9, scope: !63)
!71 = !DILocation(line: 26, column: 2, scope: !63)
!72 = distinct !DISubprogram(name: "bios_probe", scope: !2, file: !2, line: 61, type: !50, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !73)
!73 = !{!74, !75, !76, !77, !78}
!74 = !DILocalVariable(name: "mode", scope: !72, file: !2, line: 63, type: !35)
!75 = !DILocalVariable(name: "saved_mode", scope: !72, file: !2, line: 67, type: !35)
!76 = !DILocalVariable(name: "crtc", scope: !72, file: !2, line: 69, type: !16)
!77 = !DILocalVariable(name: "mi", scope: !72, file: !2, line: 70, type: !11)
!78 = !DILocalVariable(name: "nmodes", scope: !72, file: !2, line: 71, type: !30)
!79 = !DILocation(line: 63, column: 2, scope: !72)
!80 = !DILocation(line: 63, column: 5, scope: !72)
!81 = !DILocation(line: 67, column: 2, scope: !72)
!82 = !DILocation(line: 67, column: 5, scope: !72)
!83 = !DILocation(line: 67, column: 42, scope: !72)
!84 = !DILocation(line: 69, column: 2, scope: !72)
!85 = !DILocation(line: 69, column: 6, scope: !72)
!86 = !DILocation(line: 70, column: 2, scope: !72)
!87 = !DILocation(line: 70, column: 20, scope: !72)
!88 = !DILocation(line: 71, column: 2, scope: !72)
!89 = !DILocation(line: 71, column: 6, scope: !72)
!90 = !DILocation(line: 73, column: 6, scope: !91)
!91 = distinct !DILexicalBlock(scope: !72, file: !2, line: 73, column: 6)
!92 = !DILocation(line: 73, column: 14, scope: !91)
!93 = !DILocation(line: 73, column: 29, scope: !91)
!94 = !DILocation(line: 73, column: 32, scope: !91)
!95 = !DILocation(line: 73, column: 40, scope: !91)
!96 = !DILocation(line: 73, column: 6, scope: !72)
!97 = !DILocation(line: 74, column: 3, scope: !91)
!98 = !DILocation(line: 76, column: 2, scope: !72)
!99 = !DILocation(line: 77, column: 9, scope: !72)
!100 = !DILocation(line: 77, column: 7, scope: !72)
!101 = !DILocation(line: 79, column: 21, scope: !72)
!102 = !DILocation(line: 79, column: 19, scope: !72)
!103 = !DILocation(line: 81, column: 12, scope: !104)
!104 = distinct !DILexicalBlock(scope: !72, file: !2, line: 81, column: 2)
!105 = !DILocation(line: 81, column: 7, scope: !104)
!106 = !DILocation(line: 81, column: 20, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !2, line: 81, column: 2)
!108 = !DILocation(line: 81, column: 25, scope: !107)
!109 = !DILocation(line: 81, column: 2, scope: !104)
!110 = !DILocation(line: 82, column: 8, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 82, column: 7)
!112 = distinct !DILexicalBlock(scope: !107, file: !2, line: 81, column: 42)
!113 = !DILocation(line: 82, column: 7, scope: !112)
!114 = !DILocation(line: 83, column: 4, scope: !111)
!115 = !DILocation(line: 85, column: 37, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !2, line: 85, column: 7)
!117 = !DILocation(line: 85, column: 36, scope: !116)
!118 = !DILocation(line: 85, column: 20, scope: !116)
!119 = !DILocation(line: 85, column: 7, scope: !116)
!120 = !DILocation(line: 85, column: 7, scope: !112)
!121 = !DILocation(line: 86, column: 4, scope: !116)
!122 = !DILocation(line: 88, column: 21, scope: !123)
!123 = distinct !DILexicalBlock(scope: !112, file: !2, line: 88, column: 7)
!124 = !DILocation(line: 88, column: 7, scope: !123)
!125 = !DILocation(line: 88, column: 7, scope: !112)
!126 = !DILocation(line: 89, column: 4, scope: !123)
!127 = !DILocation(line: 94, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !112, file: !2, line: 94, column: 7)
!129 = !DILocation(line: 94, column: 27, scope: !128)
!130 = !DILocation(line: 94, column: 7, scope: !112)
!131 = !DILocation(line: 95, column: 4, scope: !128)
!132 = !DILocation(line: 98, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !112, file: !2, line: 98, column: 7)
!134 = !DILocation(line: 98, column: 27, scope: !133)
!135 = !DILocation(line: 98, column: 7, scope: !112)
!136 = !DILocation(line: 99, column: 4, scope: !133)
!137 = !DILocation(line: 102, column: 14, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !2, line: 102, column: 7)
!139 = !DILocation(line: 102, column: 7, scope: !138)
!140 = !DILocation(line: 102, column: 7, scope: !112)
!141 = !DILocation(line: 103, column: 4, scope: !138)
!142 = !DILocation(line: 105, column: 8, scope: !112)
!143 = !DILocation(line: 105, column: 6, scope: !112)
!144 = !DILocation(line: 106, column: 31, scope: !112)
!145 = !DILocation(line: 106, column: 30, scope: !112)
!146 = !DILocation(line: 106, column: 14, scope: !112)
!147 = !DILocation(line: 106, column: 3, scope: !112)
!148 = !DILocation(line: 106, column: 7, scope: !112)
!149 = !DILocation(line: 106, column: 12, scope: !112)
!150 = !DILocation(line: 107, column: 3, scope: !112)
!151 = !DILocation(line: 107, column: 7, scope: !112)
!152 = !DILocation(line: 107, column: 13, scope: !112)
!153 = !DILocation(line: 108, column: 11, scope: !112)
!154 = !DILocation(line: 108, column: 3, scope: !112)
!155 = !DILocation(line: 108, column: 7, scope: !112)
!156 = !DILocation(line: 108, column: 9, scope: !112)
!157 = !DILocation(line: 109, column: 11, scope: !112)
!158 = !DILocation(line: 109, column: 23, scope: !112)
!159 = !DILocation(line: 109, column: 3, scope: !112)
!160 = !DILocation(line: 109, column: 7, scope: !112)
!161 = !DILocation(line: 109, column: 9, scope: !112)
!162 = !DILocation(line: 110, column: 9, scope: !112)
!163 = !DILocation(line: 111, column: 2, scope: !112)
!164 = !DILocation(line: 81, column: 38, scope: !107)
!165 = !DILocation(line: 81, column: 2, scope: !107)
!166 = distinct !{!166, !109, !167, !168, !169}
!167 = !DILocation(line: 111, column: 2, scope: !104)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !DILocation(line: 113, column: 16, scope: !72)
!171 = !DILocation(line: 113, column: 2, scope: !72)
!172 = !DILocation(line: 115, column: 9, scope: !72)
!173 = !DILocation(line: 115, column: 2, scope: !72)
!174 = !DILocation(line: 116, column: 1, scope: !72)
!175 = distinct !DISubprogram(name: "set_bios_mode", scope: !2, file: !2, line: 29, type: !176, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{!30, !35}
!178 = !{!179, !180, !263, !264}
!179 = !DILocalVariable(name: "mode", arg: 1, scope: !175, file: !2, line: 29, type: !35)
!180 = !DILocalVariable(name: "ireg", scope: !175, file: !2, line: 31, type: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !182, line: 206, size: 352, elements: !183)
!182 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !182, line: 207, baseType: !185, size: 352)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !182, line: 207, size: 352, elements: !186)
!186 = !{!187, !203, !228}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !182, line: 208, baseType: !188, size: 352)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !182, line: 208, size: 352, elements: !189)
!189 = !{!190, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !188, file: !182, line: 209, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !29)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !188, file: !182, line: 210, baseType: !191, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !188, file: !182, line: 211, baseType: !191, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !188, file: !182, line: 212, baseType: !191, size: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !188, file: !182, line: 213, baseType: !191, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !188, file: !182, line: 214, baseType: !191, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !188, file: !182, line: 215, baseType: !191, size: 32, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !188, file: !182, line: 216, baseType: !191, size: 32, offset: 224)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !188, file: !182, line: 217, baseType: !191, size: 32, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !188, file: !182, line: 218, baseType: !191, size: 32, offset: 288)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !188, file: !182, line: 219, baseType: !191, size: 32, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !182, line: 221, baseType: !204, size: 352)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !182, line: 221, size: 352, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !204, file: !182, line: 222, baseType: !16, size: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !204, file: !182, line: 222, baseType: !16, size: 16, offset: 16)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !204, file: !182, line: 223, baseType: !16, size: 16, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !204, file: !182, line: 223, baseType: !16, size: 16, offset: 48)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !204, file: !182, line: 224, baseType: !16, size: 16, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !204, file: !182, line: 224, baseType: !16, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !204, file: !182, line: 225, baseType: !16, size: 16, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !204, file: !182, line: 225, baseType: !16, size: 16, offset: 112)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !204, file: !182, line: 226, baseType: !16, size: 16, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !204, file: !182, line: 226, baseType: !16, size: 16, offset: 144)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !204, file: !182, line: 227, baseType: !16, size: 16, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !204, file: !182, line: 227, baseType: !16, size: 16, offset: 176)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !204, file: !182, line: 228, baseType: !16, size: 16, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !204, file: !182, line: 228, baseType: !16, size: 16, offset: 208)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !204, file: !182, line: 229, baseType: !16, size: 16, offset: 224)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !204, file: !182, line: 229, baseType: !16, size: 16, offset: 240)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !204, file: !182, line: 230, baseType: !16, size: 16, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !204, file: !182, line: 230, baseType: !16, size: 16, offset: 272)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !204, file: !182, line: 231, baseType: !16, size: 16, offset: 288)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !204, file: !182, line: 231, baseType: !16, size: 16, offset: 304)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !182, line: 232, baseType: !16, size: 16, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !204, file: !182, line: 232, baseType: !16, size: 16, offset: 336)
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !182, line: 234, baseType: !229, size: 256)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !182, line: 234, size: 256, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !229, file: !182, line: 235, baseType: !35, size: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !229, file: !182, line: 235, baseType: !35, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !229, file: !182, line: 235, baseType: !35, size: 8, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !229, file: !182, line: 235, baseType: !35, size: 8, offset: 24)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !229, file: !182, line: 236, baseType: !35, size: 8, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !229, file: !182, line: 236, baseType: !35, size: 8, offset: 40)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !229, file: !182, line: 236, baseType: !35, size: 8, offset: 48)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !229, file: !182, line: 236, baseType: !35, size: 8, offset: 56)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !229, file: !182, line: 237, baseType: !35, size: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !229, file: !182, line: 237, baseType: !35, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !229, file: !182, line: 237, baseType: !35, size: 8, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !229, file: !182, line: 237, baseType: !35, size: 8, offset: 88)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !229, file: !182, line: 238, baseType: !35, size: 8, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !229, file: !182, line: 238, baseType: !35, size: 8, offset: 104)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !229, file: !182, line: 238, baseType: !35, size: 8, offset: 112)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !229, file: !182, line: 238, baseType: !35, size: 8, offset: 120)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !229, file: !182, line: 239, baseType: !35, size: 8, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !229, file: !182, line: 239, baseType: !35, size: 8, offset: 136)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !229, file: !182, line: 239, baseType: !35, size: 8, offset: 144)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !229, file: !182, line: 239, baseType: !35, size: 8, offset: 152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !229, file: !182, line: 240, baseType: !35, size: 8, offset: 160)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !229, file: !182, line: 240, baseType: !35, size: 8, offset: 168)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !229, file: !182, line: 240, baseType: !35, size: 8, offset: 176)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !229, file: !182, line: 240, baseType: !35, size: 8, offset: 184)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !229, file: !182, line: 241, baseType: !35, size: 8, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !229, file: !182, line: 241, baseType: !35, size: 8, offset: 200)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !229, file: !182, line: 241, baseType: !35, size: 8, offset: 208)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !229, file: !182, line: 241, baseType: !35, size: 8, offset: 216)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !229, file: !182, line: 242, baseType: !35, size: 8, offset: 224)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !229, file: !182, line: 242, baseType: !35, size: 8, offset: 232)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !229, file: !182, line: 242, baseType: !35, size: 8, offset: 240)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !229, file: !182, line: 242, baseType: !35, size: 8, offset: 248)
!263 = !DILocalVariable(name: "oreg", scope: !175, file: !2, line: 31, type: !181)
!264 = !DILocalVariable(name: "new_mode", scope: !175, file: !2, line: 32, type: !35)
!265 = !DILocation(line: 29, column: 29, scope: !175)
!266 = !DILocation(line: 31, column: 2, scope: !175)
!267 = !DILocation(line: 31, column: 18, scope: !175)
!268 = !DILocation(line: 31, column: 24, scope: !175)
!269 = !DILocation(line: 32, column: 2, scope: !175)
!270 = !DILocation(line: 32, column: 5, scope: !175)
!271 = !DILocation(line: 34, column: 2, scope: !175)
!272 = !DILocation(line: 35, column: 12, scope: !175)
!273 = !DILocation(line: 35, column: 7, scope: !175)
!274 = !DILocation(line: 35, column: 10, scope: !175)
!275 = !DILocation(line: 36, column: 2, scope: !175)
!276 = !DILocation(line: 38, column: 7, scope: !175)
!277 = !DILocation(line: 38, column: 10, scope: !175)
!278 = !DILocation(line: 39, column: 2, scope: !175)
!279 = !DILocation(line: 41, column: 13, scope: !175)
!280 = !DILocation(line: 44, column: 18, scope: !175)
!281 = !DILocation(line: 44, column: 13, scope: !175)
!282 = !DILocation(line: 44, column: 21, scope: !175)
!283 = !DILocation(line: 44, column: 11, scope: !175)
!284 = !DILocation(line: 46, column: 6, scope: !285)
!285 = distinct !DILexicalBlock(scope: !175, file: !2, line: 46, column: 6)
!286 = !DILocation(line: 46, column: 18, scope: !285)
!287 = !DILocation(line: 46, column: 15, scope: !285)
!288 = !DILocation(line: 46, column: 6, scope: !175)
!289 = !DILocation(line: 47, column: 3, scope: !285)
!290 = !DILocation(line: 50, column: 6, scope: !291)
!291 = distinct !DILexicalBlock(scope: !175, file: !2, line: 50, column: 6)
!292 = !DILocation(line: 50, column: 42, scope: !291)
!293 = !DILocation(line: 50, column: 18, scope: !291)
!294 = !DILocation(line: 50, column: 15, scope: !291)
!295 = !DILocation(line: 50, column: 6, scope: !175)
!296 = !DILocation(line: 54, column: 37, scope: !297)
!297 = distinct !DILexicalBlock(scope: !291, file: !2, line: 50, column: 59)
!298 = !DILocation(line: 54, column: 13, scope: !297)
!299 = !DILocation(line: 54, column: 8, scope: !297)
!300 = !DILocation(line: 54, column: 11, scope: !297)
!301 = !DILocation(line: 55, column: 3, scope: !297)
!302 = !DILocation(line: 56, column: 2, scope: !297)
!303 = !DILocation(line: 58, column: 2, scope: !175)
!304 = !DILocation(line: 59, column: 1, scope: !175)
!305 = !DISubprogram(name: "initregs", scope: !182, file: !182, line: 302, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!309 = !DISubprogram(name: "intcall", scope: !182, file: !182, line: 246, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !35, !312, !308}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!314 = distinct !DISubprogram(name: "set_fs", scope: !182, file: !182, line: 54, type: !315, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !16}
!317 = !{!318}
!318 = !DILocalVariable(name: "seg", arg: 1, scope: !314, file: !182, line: 54, type: !16)
!319 = !DILocation(line: 54, column: 31, scope: !314)
!320 = !DILocation(line: 56, column: 40, scope: !314)
!321 = !DILocation(line: 56, column: 2, scope: !314)
!322 = !{i64 114947}
!323 = !DILocation(line: 57, column: 1, scope: !314)
!324 = !DISubprogram(name: "vga_crtc", scope: !13, file: !13, line: 116, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DISubroutineType(types: !326)
!326 = !{!16}
!327 = distinct !DISubprogram(name: "__get_heap", scope: !182, file: !182, line: 175, type: !328, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{!24, !25, !25, !25}
!330 = !{!331, !332, !333, !334}
!331 = !DILocalVariable(name: "s", arg: 1, scope: !327, file: !182, line: 175, type: !25)
!332 = !DILocalVariable(name: "a", arg: 2, scope: !327, file: !182, line: 175, type: !25)
!333 = !DILocalVariable(name: "n", arg: 3, scope: !327, file: !182, line: 175, type: !25)
!334 = !DILocalVariable(name: "tmp", scope: !327, file: !182, line: 177, type: !24)
!335 = !DILocation(line: 175, column: 39, scope: !327)
!336 = !DILocation(line: 175, column: 49, scope: !327)
!337 = !DILocation(line: 175, column: 59, scope: !327)
!338 = !DILocation(line: 177, column: 2, scope: !327)
!339 = !DILocation(line: 177, column: 8, scope: !327)
!340 = !DILocation(line: 179, column: 27, scope: !327)
!341 = !DILocation(line: 179, column: 19, scope: !327)
!342 = !DILocation(line: 179, column: 33, scope: !327)
!343 = !DILocation(line: 179, column: 34, scope: !327)
!344 = !DILocation(line: 179, column: 31, scope: !327)
!345 = !DILocation(line: 179, column: 43, scope: !327)
!346 = !DILocation(line: 179, column: 44, scope: !327)
!347 = !DILocation(line: 179, column: 41, scope: !327)
!348 = !DILocation(line: 179, column: 39, scope: !327)
!349 = !DILocation(line: 179, column: 9, scope: !327)
!350 = !DILocation(line: 179, column: 7, scope: !327)
!351 = !DILocation(line: 180, column: 8, scope: !327)
!352 = !DILocation(line: 180, column: 6, scope: !327)
!353 = !DILocation(line: 181, column: 10, scope: !327)
!354 = !DILocation(line: 181, column: 12, scope: !327)
!355 = !DILocation(line: 181, column: 11, scope: !327)
!356 = !DILocation(line: 181, column: 7, scope: !327)
!357 = !DILocation(line: 182, column: 9, scope: !327)
!358 = !DILocation(line: 183, column: 1, scope: !327)
!359 = !DILocation(line: 182, column: 2, scope: !327)
!360 = distinct !DISubprogram(name: "heap_free", scope: !182, file: !182, line: 187, type: !361, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !365)
!361 = !DISubroutineType(types: !362)
!362 = !{!363, !25}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !26, line: 35, baseType: !364)
!364 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!365 = !{!366}
!366 = !DILocalVariable(name: "n", arg: 1, scope: !360, file: !182, line: 187, type: !25)
!367 = !DILocation(line: 187, column: 37, scope: !360)
!368 = !DILocation(line: 189, column: 15, scope: !360)
!369 = !DILocation(line: 189, column: 24, scope: !360)
!370 = !DILocation(line: 189, column: 23, scope: !360)
!371 = !DILocation(line: 189, column: 38, scope: !360)
!372 = !DILocation(line: 189, column: 30, scope: !360)
!373 = !DILocation(line: 189, column: 2, scope: !360)
!374 = !DISubprogram(name: "mode_defined", scope: !13, file: !13, line: 84, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DISubroutineType(types: !376)
!376 = !{!30, !16}
!377 = distinct !DISubprogram(name: "in_idx", scope: !13, file: !13, line: 97, type: !378, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!35, !16, !35}
!380 = !{!381, !382}
!381 = !DILocalVariable(name: "port", arg: 1, scope: !377, file: !13, line: 97, type: !16)
!382 = !DILocalVariable(name: "index", arg: 2, scope: !377, file: !13, line: 97, type: !35)
!383 = !DILocation(line: 97, column: 29, scope: !377)
!384 = !DILocation(line: 97, column: 38, scope: !377)
!385 = !DILocation(line: 99, column: 2, scope: !377)
!386 = !DILocation(line: 99, column: 7, scope: !377)
!387 = !DILocation(line: 99, column: 14, scope: !377)
!388 = !DILocation(line: 100, column: 9, scope: !377)
!389 = !DILocation(line: 100, column: 13, scope: !377)
!390 = !DILocation(line: 100, column: 17, scope: !377)
!391 = !DILocation(line: 100, column: 2, scope: !377)
!392 = distinct !DISubprogram(name: "rdfs16", scope: !182, file: !182, line: 85, type: !393, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !396)
!393 = !DISubroutineType(types: !394)
!394 = !{!16, !395}
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !182, line: 76, baseType: !29)
!396 = !{!397, !398, !399, !401}
!397 = !DILocalVariable(name: "addr", arg: 1, scope: !392, file: !182, line: 85, type: !395)
!398 = !DILocalVariable(name: "ptr", scope: !392, file: !182, line: 87, type: !31)
!399 = !DILocalVariable(name: "__ptr", scope: !400, file: !182, line: 87, type: !32)
!400 = distinct !DILexicalBlock(scope: !392, file: !182, line: 87, column: 20)
!401 = !DILocalVariable(name: "v", scope: !392, file: !182, line: 88, type: !16)
!402 = !DILocation(line: 85, column: 33, scope: !392)
!403 = !DILocation(line: 87, column: 2, scope: !392)
!404 = !DILocation(line: 87, column: 7, scope: !392)
!405 = !DILocation(line: 87, column: 20, scope: !400)
!406 = !DILocation(line: 87, column: 20, scope: !392)
!407 = !DILocation(line: 88, column: 2, scope: !392)
!408 = !DILocation(line: 88, column: 6, scope: !392)
!409 = !DILocation(line: 89, column: 52, scope: !392)
!410 = !DILocation(line: 89, column: 2, scope: !392)
!411 = !{i64 115558}
!412 = !DILocation(line: 90, column: 9, scope: !392)
!413 = !DILocation(line: 91, column: 1, scope: !392)
!414 = !DILocation(line: 90, column: 2, scope: !392)
!415 = distinct !DISubprogram(name: "rdfs8", scope: !182, file: !182, line: 78, type: !416, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !418)
!416 = !DISubroutineType(types: !417)
!417 = !{!35, !395}
!418 = !{!419, !420, !421, !423}
!419 = !DILocalVariable(name: "addr", arg: 1, scope: !415, file: !182, line: 78, type: !395)
!420 = !DILocalVariable(name: "ptr", scope: !415, file: !182, line: 80, type: !34)
!421 = !DILocalVariable(name: "__ptr", scope: !422, file: !182, line: 80, type: !32)
!422 = distinct !DILexicalBlock(scope: !415, file: !182, line: 80, column: 18)
!423 = !DILocalVariable(name: "v", scope: !415, file: !182, line: 81, type: !35)
!424 = !DILocation(line: 78, column: 31, scope: !415)
!425 = !DILocation(line: 80, column: 2, scope: !415)
!426 = !DILocation(line: 80, column: 6, scope: !415)
!427 = !DILocation(line: 80, column: 18, scope: !422)
!428 = !DILocation(line: 80, column: 18, scope: !415)
!429 = !DILocation(line: 81, column: 2, scope: !415)
!430 = !DILocation(line: 81, column: 5, scope: !415)
!431 = !DILocation(line: 82, column: 52, scope: !415)
!432 = !DILocation(line: 82, column: 2, scope: !415)
!433 = !{i64 115396}
!434 = !DILocation(line: 83, column: 9, scope: !415)
!435 = !DILocation(line: 84, column: 1, scope: !415)
!436 = !DILocation(line: 83, column: 2, scope: !415)
