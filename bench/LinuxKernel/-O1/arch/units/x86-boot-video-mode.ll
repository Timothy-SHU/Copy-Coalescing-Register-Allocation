; ModuleID = 'arch/x86/boot/video-mode.c'
source_filename = "arch/x86/boot/video-mode.c"
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
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }
%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.mode_info = type { i16, i16, i16, i16 }

@probe_cards.probed = internal global [2 x i8] zeroinitializer, align 1, !dbg !0
@video_cards = external dso_local global [0 x %struct.card_info], align 4
@video_cards_end = external dso_local global [0 x %struct.card_info], align 4
@boot_params = external dso_local global %struct.boot_params, align 1
@adapter = dso_local global i32 0, align 4, !dbg !18
@force_x = dso_local global i32 0, align 4, !dbg !20
@force_y = dso_local global i32 0, align 4, !dbg !22
@do_restore = dso_local global i32 0, align 4, !dbg !24
@graphic_mode = dso_local global i32 0, align 4, !dbg !26
@pio_ops = external dso_local global %struct.port_io_ops, align 4

; Function Attrs: nounwind
define dso_local void @probe_cards(i32 inreg noundef %unsafe) #0 !dbg !2 {
entry:
  %unsafe.addr = alloca i32, align 4
  %card = alloca ptr, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %unsafe, ptr %unsafe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %unsafe.addr, metadata !29, metadata !DIExpression()), !dbg !71
  call void @llvm.lifetime.start.p0(i64 4, ptr %card) #5, !dbg !72
  call void @llvm.dbg.declare(metadata ptr %card, metadata !30, metadata !DIExpression()), !dbg !73
  %0 = load i32, ptr %unsafe.addr, align 4, !dbg !74
  %arrayidx = getelementptr inbounds [2 x i8], ptr @probe_cards.probed, i32 0, i32 %0, !dbg !76
  %1 = load i8, ptr %arrayidx, align 1, !dbg !76
  %tobool = icmp ne i8 %1, 0, !dbg !76
  br i1 %tobool, label %if.then, label %if.end, !dbg !77

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !78

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %unsafe.addr, align 4, !dbg !79
  %arrayidx1 = getelementptr inbounds [2 x i8], ptr @probe_cards.probed, i32 0, i32 %2, !dbg !80
  store i8 1, ptr %arrayidx1, align 1, !dbg !81
  store ptr @video_cards, ptr %card, align 4, !dbg !82
  br label %for.cond, !dbg !84

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %card, align 4, !dbg !85
  %cmp = icmp ult ptr %3, @video_cards_end, !dbg !87
  br i1 %cmp, label %for.body, label %for.end, !dbg !88

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %card, align 4, !dbg !89
  %unsafe2 = getelementptr inbounds %struct.card_info, ptr %4, i32 0, i32 5, !dbg !92
  %5 = load i32, ptr %unsafe2, align 4, !dbg !92
  %6 = load i32, ptr %unsafe.addr, align 4, !dbg !93
  %cmp3 = icmp eq i32 %5, %6, !dbg !94
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !95

if.then4:                                         ; preds = %for.body
  %7 = load ptr, ptr %card, align 4, !dbg !96
  %probe = getelementptr inbounds %struct.card_info, ptr %7, i32 0, i32 2, !dbg !99
  %8 = load ptr, ptr %probe, align 4, !dbg !99
  %tobool5 = icmp ne ptr %8, null, !dbg !96
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !100

if.then6:                                         ; preds = %if.then4
  %9 = load ptr, ptr %card, align 4, !dbg !101
  %probe7 = getelementptr inbounds %struct.card_info, ptr %9, i32 0, i32 2, !dbg !102
  %10 = load ptr, ptr %probe7, align 4, !dbg !102
  %call = call i32 %10() #6, !dbg !101
  %11 = load ptr, ptr %card, align 4, !dbg !103
  %nmodes = getelementptr inbounds %struct.card_info, ptr %11, i32 0, i32 4, !dbg !104
  store i32 %call, ptr %nmodes, align 4, !dbg !105
  br label %if.end9, !dbg !103

if.else:                                          ; preds = %if.then4
  %12 = load ptr, ptr %card, align 4, !dbg !106
  %nmodes8 = getelementptr inbounds %struct.card_info, ptr %12, i32 0, i32 4, !dbg !107
  store i32 0, ptr %nmodes8, align 4, !dbg !108
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %if.end10, !dbg !109

if.end10:                                         ; preds = %if.end9, %for.body
  br label %for.inc, !dbg !110

for.inc:                                          ; preds = %if.end10
  %13 = load ptr, ptr %card, align 4, !dbg !111
  %incdec.ptr = getelementptr inbounds %struct.card_info, ptr %13, i32 1, !dbg !111
  store ptr %incdec.ptr, ptr %card, align 4, !dbg !111
  br label %for.cond, !dbg !112, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !117
  br label %cleanup, !dbg !117

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %card) #5, !dbg !117
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !117

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local i32 @mode_defined(i16 inreg noundef zeroext %mode) #0 !dbg !118 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i16, align 2
  %card = alloca ptr, align 4
  %mi = alloca ptr, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !122, metadata !DIExpression()), !dbg !126
  call void @llvm.lifetime.start.p0(i64 4, ptr %card) #5, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %card, metadata !123, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #5, !dbg !129
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !124, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %i, metadata !125, metadata !DIExpression()), !dbg !132
  store ptr @video_cards, ptr %card, align 4, !dbg !133
  br label %for.cond, !dbg !135

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load ptr, ptr %card, align 4, !dbg !136
  %cmp = icmp ult ptr %0, @video_cards_end, !dbg !138
  br i1 %cmp, label %for.body, label %for.end10, !dbg !139

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %card, align 4, !dbg !140
  %modes = getelementptr inbounds %struct.card_info, ptr %1, i32 0, i32 3, !dbg !142
  %2 = load ptr, ptr %modes, align 4, !dbg !142
  store ptr %2, ptr %mi, align 4, !dbg !143
  store i32 0, ptr %i, align 4, !dbg !144
  br label %for.cond1, !dbg !146

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %i, align 4, !dbg !147
  %4 = load ptr, ptr %card, align 4, !dbg !149
  %nmodes = getelementptr inbounds %struct.card_info, ptr %4, i32 0, i32 4, !dbg !150
  %5 = load i32, ptr %nmodes, align 4, !dbg !150
  %cmp2 = icmp slt i32 %3, %5, !dbg !151
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !152

for.body3:                                        ; preds = %for.cond1
  %6 = load ptr, ptr %mi, align 4, !dbg !153
  %mode4 = getelementptr inbounds %struct.mode_info, ptr %6, i32 0, i32 0, !dbg !156
  %7 = load i16, ptr %mode4, align 2, !dbg !156
  %conv = zext i16 %7 to i32, !dbg !153
  %8 = load i16, ptr %mode.addr, align 2, !dbg !157
  %conv5 = zext i16 %8 to i32, !dbg !157
  %cmp6 = icmp eq i32 %conv, %conv5, !dbg !158
  br i1 %cmp6, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %for.body3
  store i32 1, ptr %retval, align 4, !dbg !160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !160

if.end:                                           ; preds = %for.body3
  br label %for.inc, !dbg !161

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !162
  %inc = add nsw i32 %9, 1, !dbg !162
  store i32 %inc, ptr %i, align 4, !dbg !162
  %10 = load ptr, ptr %mi, align 4, !dbg !163
  %incdec.ptr = getelementptr inbounds %struct.mode_info, ptr %10, i32 1, !dbg !163
  store ptr %incdec.ptr, ptr %mi, align 4, !dbg !163
  br label %for.cond1, !dbg !164, !llvm.loop !165

for.end:                                          ; preds = %for.cond1
  br label %for.inc8, !dbg !167

for.inc8:                                         ; preds = %for.end
  %11 = load ptr, ptr %card, align 4, !dbg !168
  %incdec.ptr9 = getelementptr inbounds %struct.card_info, ptr %11, i32 1, !dbg !168
  store ptr %incdec.ptr9, ptr %card, align 4, !dbg !168
  br label %for.cond, !dbg !169, !llvm.loop !170

for.end10:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !172

cleanup:                                          ; preds = %for.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !173
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #5, !dbg !173
  call void @llvm.lifetime.end.p0(i64 4, ptr %card) #5, !dbg !173
  %12 = load i32, ptr %retval, align 4, !dbg !173
  ret i32 %12, !dbg !173
}

; Function Attrs: nounwind
define dso_local i32 @set_mode(i16 inreg noundef zeroext %mode) #0 !dbg !174 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i16, align 2
  %rv = alloca i32, align 4
  %real_mode = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !176, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #5, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 2, ptr %real_mode) #5, !dbg !182
  call void @llvm.dbg.declare(metadata ptr %real_mode, metadata !178, metadata !DIExpression()), !dbg !183
  %0 = load i16, ptr %mode.addr, align 2, !dbg !184
  %conv = zext i16 %0 to i32, !dbg !184
  %cmp = icmp eq i32 %conv, 3844, !dbg !186
  br i1 %cmp, label %if.then, label %if.else, !dbg !187

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !188

if.else:                                          ; preds = %entry
  %1 = load i16, ptr %mode.addr, align 2, !dbg !189
  %conv2 = zext i16 %1 to i32, !dbg !189
  %cmp3 = icmp eq i32 %conv2, 65535, !dbg !191
  br i1 %cmp3, label %if.then5, label %if.else6, !dbg !192

if.then5:                                         ; preds = %if.else
  store i16 3840, ptr %mode.addr, align 2, !dbg !193
  br label %if.end11, !dbg !194

if.else6:                                         ; preds = %if.else
  %2 = load i16, ptr %mode.addr, align 2, !dbg !195
  %conv7 = zext i16 %2 to i32, !dbg !195
  %cmp8 = icmp eq i32 %conv7, 65534, !dbg !197
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !198

if.then10:                                        ; preds = %if.else6
  store i16 3841, ptr %mode.addr, align 2, !dbg !199
  br label %if.end, !dbg !200

if.end:                                           ; preds = %if.then10, %if.else6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %3 = load i16, ptr %mode.addr, align 2, !dbg !201
  %call = call i32 @raw_set_mode(i16 inreg noundef zeroext %3, ptr inreg noundef %real_mode) #6, !dbg !202
  store i32 %call, ptr %rv, align 4, !dbg !203
  %4 = load i32, ptr %rv, align 4, !dbg !204
  %tobool = icmp ne i32 %4, 0, !dbg !204
  br i1 %tobool, label %if.then13, label %if.end14, !dbg !206

if.then13:                                        ; preds = %if.end12
  %5 = load i32, ptr %rv, align 4, !dbg !207
  store i32 %5, ptr %retval, align 4, !dbg !208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !208

if.end14:                                         ; preds = %if.end12
  %6 = load i16, ptr %mode.addr, align 2, !dbg !209
  %conv15 = zext i16 %6 to i32, !dbg !209
  %and = and i32 %conv15, 32768, !dbg !211
  %tobool16 = icmp ne i32 %and, 0, !dbg !211
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !212

if.then17:                                        ; preds = %if.end14
  call void @vga_recalc_vertical() #6, !dbg !213
  br label %if.end18, !dbg !213

if.end18:                                         ; preds = %if.then17, %if.end14
  %7 = load i16, ptr %real_mode, align 2, !dbg !214
  store i16 %7, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 4), align 1, !dbg !215
  store i32 0, ptr %retval, align 4, !dbg !216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !216

cleanup:                                          ; preds = %if.end18, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %real_mode) #5, !dbg !217
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #5, !dbg !217
  %8 = load i32, ptr %retval, align 4, !dbg !217
  ret i32 %8, !dbg !217
}

; Function Attrs: nounwind
define internal i32 @raw_set_mode(i16 inreg noundef zeroext %mode, ptr inreg noundef %real_mode) #0 !dbg !218 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i16, align 2
  %real_mode.addr = alloca ptr, align 4
  %nmode = alloca i32, align 4
  %i = alloca i32, align 4
  %card = alloca ptr, align 4
  %mi = alloca ptr, align 4
  %visible = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %mix = alloca %struct.mode_info, align 2
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !223, metadata !DIExpression()), !dbg !242
  store ptr %real_mode, ptr %real_mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %real_mode.addr, metadata !224, metadata !DIExpression()), !dbg !243
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmode) #5, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %nmode, metadata !225, metadata !DIExpression()), !dbg !245
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %i, metadata !226, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 4, ptr %card) #5, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %card, metadata !227, metadata !DIExpression()), !dbg !248
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #5, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !228, metadata !DIExpression()), !dbg !250
  %0 = load i16, ptr %mode.addr, align 2, !dbg !251
  %conv = zext i16 %0 to i32, !dbg !251
  %and = and i32 %conv, -32769, !dbg !251
  %conv1 = trunc i32 %and to i16, !dbg !251
  store i16 %conv1, ptr %mode.addr, align 2, !dbg !251
  store i32 0, ptr %nmode, align 4, !dbg !252
  store ptr @video_cards, ptr %card, align 4, !dbg !253
  br label %for.cond, !dbg !254

for.cond:                                         ; preds = %for.inc32, %entry
  %1 = load ptr, ptr %card, align 4, !dbg !255
  %cmp = icmp ult ptr %1, @video_cards_end, !dbg !256
  br i1 %cmp, label %for.body, label %for.end34, !dbg !257

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %card, align 4, !dbg !258
  %modes = getelementptr inbounds %struct.card_info, ptr %2, i32 0, i32 3, !dbg !259
  %3 = load ptr, ptr %modes, align 4, !dbg !259
  store ptr %3, ptr %mi, align 4, !dbg !260
  store i32 0, ptr %i, align 4, !dbg !261
  br label %for.cond3, !dbg !262

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %i, align 4, !dbg !263
  %5 = load ptr, ptr %card, align 4, !dbg !264
  %nmodes = getelementptr inbounds %struct.card_info, ptr %5, i32 0, i32 4, !dbg !265
  %6 = load i32, ptr %nmodes, align 4, !dbg !265
  %cmp4 = icmp slt i32 %4, %6, !dbg !266
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !267

for.body6:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %visible) #5, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %visible, metadata !229, metadata !DIExpression()), !dbg !269
  %7 = load ptr, ptr %mi, align 4, !dbg !270
  %x = getelementptr inbounds %struct.mode_info, ptr %7, i32 0, i32 1, !dbg !271
  %8 = load i16, ptr %x, align 2, !dbg !271
  %conv7 = zext i16 %8 to i32, !dbg !270
  %tobool = icmp ne i32 %conv7, 0, !dbg !270
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !272

lor.rhs:                                          ; preds = %for.body6
  %9 = load ptr, ptr %mi, align 4, !dbg !273
  %y = getelementptr inbounds %struct.mode_info, ptr %9, i32 0, i32 2, !dbg !274
  %10 = load i16, ptr %y, align 2, !dbg !274
  %conv8 = zext i16 %10 to i32, !dbg !273
  %tobool9 = icmp ne i32 %conv8, 0, !dbg !272
  br label %lor.end, !dbg !272

lor.end:                                          ; preds = %lor.rhs, %for.body6
  %11 = phi i1 [ true, %for.body6 ], [ %tobool9, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32, !dbg !272
  store i32 %lor.ext, ptr %visible, align 4, !dbg !269
  %12 = load i16, ptr %mode.addr, align 2, !dbg !275
  %conv10 = zext i16 %12 to i32, !dbg !275
  %13 = load i32, ptr %nmode, align 4, !dbg !277
  %cmp11 = icmp eq i32 %conv10, %13, !dbg !278
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false, !dbg !279

land.lhs.true:                                    ; preds = %lor.end
  %14 = load i32, ptr %visible, align 4, !dbg !280
  %tobool13 = icmp ne i32 %14, 0, !dbg !280
  br i1 %tobool13, label %if.then, label %lor.lhs.false, !dbg !281

lor.lhs.false:                                    ; preds = %land.lhs.true, %lor.end
  %15 = load i16, ptr %mode.addr, align 2, !dbg !282
  %conv14 = zext i16 %15 to i32, !dbg !282
  %16 = load ptr, ptr %mi, align 4, !dbg !283
  %mode15 = getelementptr inbounds %struct.mode_info, ptr %16, i32 0, i32 0, !dbg !284
  %17 = load i16, ptr %mode15, align 2, !dbg !284
  %conv16 = zext i16 %17 to i32, !dbg !283
  %cmp17 = icmp eq i32 %conv14, %conv16, !dbg !285
  br i1 %cmp17, label %if.then, label %lor.lhs.false19, !dbg !286

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %18 = load i16, ptr %mode.addr, align 2, !dbg !287
  %conv20 = zext i16 %18 to i32, !dbg !287
  %19 = load ptr, ptr %mi, align 4, !dbg !288
  %y21 = getelementptr inbounds %struct.mode_info, ptr %19, i32 0, i32 2, !dbg !289
  %20 = load i16, ptr %y21, align 2, !dbg !289
  %conv22 = zext i16 %20 to i32, !dbg !288
  %shl = shl i32 %conv22, 8, !dbg !290
  %21 = load ptr, ptr %mi, align 4, !dbg !291
  %x23 = getelementptr inbounds %struct.mode_info, ptr %21, i32 0, i32 1, !dbg !292
  %22 = load i16, ptr %x23, align 2, !dbg !292
  %conv24 = zext i16 %22 to i32, !dbg !291
  %add = add nsw i32 %shl, %conv24, !dbg !293
  %cmp25 = icmp eq i32 %conv20, %add, !dbg !294
  br i1 %cmp25, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %lor.lhs.false19, %lor.lhs.false, %land.lhs.true
  %23 = load ptr, ptr %mi, align 4, !dbg !296
  %mode27 = getelementptr inbounds %struct.mode_info, ptr %23, i32 0, i32 0, !dbg !298
  %24 = load i16, ptr %mode27, align 2, !dbg !298
  %25 = load ptr, ptr %real_mode.addr, align 4, !dbg !299
  store i16 %24, ptr %25, align 2, !dbg !300
  %26 = load ptr, ptr %card, align 4, !dbg !301
  %set_mode = getelementptr inbounds %struct.card_info, ptr %26, i32 0, i32 1, !dbg !302
  %27 = load ptr, ptr %set_mode, align 4, !dbg !302
  %28 = load ptr, ptr %mi, align 4, !dbg !303
  %call = call i32 %27(ptr inreg noundef %28) #6, !dbg !301
  store i32 %call, ptr %retval, align 4, !dbg !304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !304

if.end:                                           ; preds = %lor.lhs.false19
  %29 = load i32, ptr %visible, align 4, !dbg !305
  %tobool28 = icmp ne i32 %29, 0, !dbg !305
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !307

if.then29:                                        ; preds = %if.end
  %30 = load i32, ptr %nmode, align 4, !dbg !308
  %inc = add nsw i32 %30, 1, !dbg !308
  store i32 %inc, ptr %nmode, align 4, !dbg !308
  br label %if.end30, !dbg !309

if.end30:                                         ; preds = %if.then29, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !310
  br label %cleanup, !dbg !310

cleanup:                                          ; preds = %if.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %visible) #5, !dbg !310
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !311

for.inc:                                          ; preds = %cleanup.cont
  %31 = load i32, ptr %i, align 4, !dbg !312
  %inc31 = add nsw i32 %31, 1, !dbg !312
  store i32 %inc31, ptr %i, align 4, !dbg !312
  %32 = load ptr, ptr %mi, align 4, !dbg !313
  %incdec.ptr = getelementptr inbounds %struct.mode_info, ptr %32, i32 1, !dbg !313
  store ptr %incdec.ptr, ptr %mi, align 4, !dbg !313
  br label %for.cond3, !dbg !314, !llvm.loop !315

for.end:                                          ; preds = %for.cond3
  br label %for.inc32, !dbg !317

for.inc32:                                        ; preds = %for.end
  %33 = load ptr, ptr %card, align 4, !dbg !318
  %incdec.ptr33 = getelementptr inbounds %struct.card_info, ptr %33, i32 1, !dbg !318
  store ptr %incdec.ptr33, ptr %card, align 4, !dbg !318
  br label %for.cond, !dbg !319, !llvm.loop !320

for.end34:                                        ; preds = %for.cond
  store ptr @video_cards, ptr %card, align 4, !dbg !322
  br label %for.cond35, !dbg !323

for.cond35:                                       ; preds = %for.inc59, %for.end34
  %34 = load ptr, ptr %card, align 4, !dbg !324
  %cmp36 = icmp ult ptr %34, @video_cards_end, !dbg !325
  br i1 %cmp36, label %for.body38, label %for.end61, !dbg !326

for.body38:                                       ; preds = %for.cond35
  %35 = load i16, ptr %mode.addr, align 2, !dbg !327
  %conv39 = zext i16 %35 to i32, !dbg !327
  %36 = load ptr, ptr %card, align 4, !dbg !328
  %xmode_first = getelementptr inbounds %struct.card_info, ptr %36, i32 0, i32 6, !dbg !329
  %37 = load i16, ptr %xmode_first, align 4, !dbg !329
  %conv40 = zext i16 %37 to i32, !dbg !328
  %cmp41 = icmp sge i32 %conv39, %conv40, !dbg !330
  br i1 %cmp41, label %land.lhs.true43, label %if.end58, !dbg !331

land.lhs.true43:                                  ; preds = %for.body38
  %38 = load i16, ptr %mode.addr, align 2, !dbg !332
  %conv44 = zext i16 %38 to i32, !dbg !332
  %39 = load ptr, ptr %card, align 4, !dbg !333
  %xmode_first45 = getelementptr inbounds %struct.card_info, ptr %39, i32 0, i32 6, !dbg !334
  %40 = load i16, ptr %xmode_first45, align 4, !dbg !334
  %conv46 = zext i16 %40 to i32, !dbg !333
  %41 = load ptr, ptr %card, align 4, !dbg !335
  %xmode_n = getelementptr inbounds %struct.card_info, ptr %41, i32 0, i32 7, !dbg !336
  %42 = load i16, ptr %xmode_n, align 2, !dbg !336
  %conv47 = zext i16 %42 to i32, !dbg !335
  %add48 = add nsw i32 %conv46, %conv47, !dbg !337
  %cmp49 = icmp slt i32 %conv44, %add48, !dbg !338
  br i1 %cmp49, label %if.then51, label %if.end58, !dbg !339

if.then51:                                        ; preds = %land.lhs.true43
  call void @llvm.lifetime.start.p0(i64 8, ptr %mix) #5, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %mix, metadata !236, metadata !DIExpression()), !dbg !341
  %43 = load i16, ptr %mode.addr, align 2, !dbg !342
  %mode52 = getelementptr inbounds %struct.mode_info, ptr %mix, i32 0, i32 0, !dbg !343
  store i16 %43, ptr %mode52, align 2, !dbg !344
  %44 = load ptr, ptr %real_mode.addr, align 4, !dbg !345
  store i16 %43, ptr %44, align 2, !dbg !346
  %y53 = getelementptr inbounds %struct.mode_info, ptr %mix, i32 0, i32 2, !dbg !347
  store i16 0, ptr %y53, align 2, !dbg !348
  %x54 = getelementptr inbounds %struct.mode_info, ptr %mix, i32 0, i32 1, !dbg !349
  store i16 0, ptr %x54, align 2, !dbg !350
  %45 = load ptr, ptr %card, align 4, !dbg !351
  %set_mode55 = getelementptr inbounds %struct.card_info, ptr %45, i32 0, i32 1, !dbg !352
  %46 = load ptr, ptr %set_mode55, align 4, !dbg !352
  %call56 = call i32 %46(ptr inreg noundef %mix) #6, !dbg !351
  store i32 %call56, ptr %retval, align 4, !dbg !353
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mix) #5, !dbg !354
  br label %cleanup62

if.end58:                                         ; preds = %land.lhs.true43, %for.body38
  br label %for.inc59, !dbg !355

for.inc59:                                        ; preds = %if.end58
  %47 = load ptr, ptr %card, align 4, !dbg !356
  %incdec.ptr60 = getelementptr inbounds %struct.card_info, ptr %47, i32 1, !dbg !356
  store ptr %incdec.ptr60, ptr %card, align 4, !dbg !356
  br label %for.cond35, !dbg !357, !llvm.loop !358

for.end61:                                        ; preds = %for.cond35
  store i32 -1, ptr %retval, align 4, !dbg !360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup62, !dbg !360

cleanup62:                                        ; preds = %for.end61, %if.then51, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #5, !dbg !361
  call void @llvm.lifetime.end.p0(i64 4, ptr %card) #5, !dbg !361
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !361
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmode) #5, !dbg !361
  %48 = load i32, ptr %retval, align 4, !dbg !361
  ret i32 %48, !dbg !361
}

; Function Attrs: nounwind
define internal void @vga_recalc_vertical() #0 !dbg !362 {
entry:
  %font_size = alloca i32, align 4
  %rows = alloca i32, align 4
  %crtc = alloca i16, align 2
  %pt = alloca i8, align 1
  %ov = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %font_size) #5, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %font_size, metadata !366, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 4, ptr %rows) #5, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %rows, metadata !368, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 2, ptr %crtc) #5, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !369, metadata !DIExpression()), !dbg !376
  call void @llvm.lifetime.start.p0(i64 1, ptr %pt) #5, !dbg !377
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !370, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 1, ptr %ov) #5, !dbg !377
  call void @llvm.dbg.declare(metadata ptr %ov, metadata !371, metadata !DIExpression()), !dbg !379
  call void @set_fs(i16 inreg noundef zeroext 0) #6, !dbg !380
  %call = call zeroext i8 @rdfs8(i32 inreg noundef 1157) #6, !dbg !381
  %conv = zext i8 %call to i32, !dbg !381
  store i32 %conv, ptr %font_size, align 4, !dbg !382
  %0 = load i32, ptr @force_y, align 4, !dbg !383
  %tobool = icmp ne i32 %0, 0, !dbg !383
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !383

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr @force_y, align 4, !dbg !384
  br label %cond.end, !dbg !383

cond.false:                                       ; preds = %entry
  %call1 = call zeroext i8 @rdfs8(i32 inreg noundef 1156) #6, !dbg !385
  %conv2 = zext i8 %call1 to i32, !dbg !385
  %add = add nsw i32 %conv2, 1, !dbg !386
  br label %cond.end, !dbg !383

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %add, %cond.false ], !dbg !383
  store i32 %cond, ptr %rows, align 4, !dbg !387
  %2 = load i32, ptr %font_size, align 4, !dbg !388
  %3 = load i32, ptr %rows, align 4, !dbg !389
  %mul = mul i32 %3, %2, !dbg !389
  store i32 %mul, ptr %rows, align 4, !dbg !389
  %4 = load i32, ptr %rows, align 4, !dbg !390
  %dec = add i32 %4, -1, !dbg !390
  store i32 %dec, ptr %rows, align 4, !dbg !390
  %call3 = call zeroext i16 @vga_crtc() #6, !dbg !391
  store i16 %call3, ptr %crtc, align 2, !dbg !392
  %5 = load i16, ptr %crtc, align 2, !dbg !393
  %call4 = call zeroext i8 @in_idx(i16 inreg noundef zeroext %5, i8 inreg noundef zeroext 17) #6, !dbg !394
  store i8 %call4, ptr %pt, align 1, !dbg !395
  %6 = load i8, ptr %pt, align 1, !dbg !396
  %conv5 = zext i8 %6 to i32, !dbg !396
  %and = and i32 %conv5, -129, !dbg !396
  %conv6 = trunc i32 %and to i8, !dbg !396
  store i8 %conv6, ptr %pt, align 1, !dbg !396
  %7 = load i8, ptr %pt, align 1, !dbg !397
  %8 = load i16, ptr %crtc, align 2, !dbg !398
  call void @out_idx(i8 inreg noundef zeroext %7, i16 inreg noundef zeroext %8, i8 inreg noundef zeroext 17) #6, !dbg !399
  %9 = load i32, ptr %rows, align 4, !dbg !400
  %conv7 = trunc i32 %9 to i8, !dbg !401
  %10 = load i16, ptr %crtc, align 2, !dbg !402
  call void @out_idx(i8 inreg noundef zeroext %conv7, i16 inreg noundef zeroext %10, i8 inreg noundef zeroext 18) #6, !dbg !403
  %11 = load i16, ptr %crtc, align 2, !dbg !404
  %call8 = call zeroext i8 @in_idx(i16 inreg noundef zeroext %11, i8 inreg noundef zeroext 7) #6, !dbg !405
  store i8 %call8, ptr %ov, align 1, !dbg !406
  %12 = load i8, ptr %ov, align 1, !dbg !407
  %conv9 = zext i8 %12 to i32, !dbg !407
  %and10 = and i32 %conv9, 189, !dbg !407
  %conv11 = trunc i32 %and10 to i8, !dbg !407
  store i8 %conv11, ptr %ov, align 1, !dbg !407
  %13 = load i32, ptr %rows, align 4, !dbg !408
  %shr = lshr i32 %13, 7, !dbg !409
  %and12 = and i32 %shr, 2, !dbg !410
  %14 = load i8, ptr %ov, align 1, !dbg !411
  %conv13 = zext i8 %14 to i32, !dbg !411
  %or = or i32 %conv13, %and12, !dbg !411
  %conv14 = trunc i32 %or to i8, !dbg !411
  store i8 %conv14, ptr %ov, align 1, !dbg !411
  %15 = load i32, ptr %rows, align 4, !dbg !412
  %shr15 = lshr i32 %15, 3, !dbg !413
  %and16 = and i32 %shr15, 64, !dbg !414
  %16 = load i8, ptr %ov, align 1, !dbg !415
  %conv17 = zext i8 %16 to i32, !dbg !415
  %or18 = or i32 %conv17, %and16, !dbg !415
  %conv19 = trunc i32 %or18 to i8, !dbg !415
  store i8 %conv19, ptr %ov, align 1, !dbg !415
  %17 = load i8, ptr %ov, align 1, !dbg !416
  %18 = load i16, ptr %crtc, align 2, !dbg !417
  call void @out_idx(i8 inreg noundef zeroext %17, i16 inreg noundef zeroext %18, i8 inreg noundef zeroext 7) #6, !dbg !418
  call void @llvm.lifetime.end.p0(i64 1, ptr %ov) #5, !dbg !419
  call void @llvm.lifetime.end.p0(i64 1, ptr %pt) #5, !dbg !419
  call void @llvm.lifetime.end.p0(i64 2, ptr %crtc) #5, !dbg !419
  call void @llvm.lifetime.end.p0(i64 4, ptr %rows) #5, !dbg !419
  call void @llvm.lifetime.end.p0(i64 4, ptr %font_size) #5, !dbg !419
  ret void, !dbg !419
}

; Function Attrs: inlinehint nounwind
define internal void @set_fs(i16 inreg noundef zeroext %seg) #3 !dbg !420 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i16, ptr %seg.addr, align 2, !dbg !427
  call void asm sideeffect "movw $0,%fs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #5, !dbg !428, !srcloc !429
  ret void, !dbg !430
}

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @rdfs8(i32 inreg noundef %addr) #3 !dbg !431 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i8, align 1
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !436, metadata !DIExpression()), !dbg !441
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #5, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !437, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #5, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !438, metadata !DIExpression()), !dbg !444
  %0 = load i32, ptr %addr.addr, align 4, !dbg !444
  %1 = inttoptr i32 %0 to ptr, !dbg !444
  %2 = ptrtoint ptr %1 to i32, !dbg !444
  store i32 %2, ptr %__ptr, align 4, !dbg !444
  %3 = load i32, ptr %__ptr, align 4, !dbg !444
  %add = add i32 %3, 0, !dbg !444
  %4 = inttoptr i32 %add to ptr, !dbg !444
  store ptr %4, ptr %tmp, align 4, !dbg !444
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #5, !dbg !445
  %5 = load ptr, ptr %tmp, align 4, !dbg !444
  store ptr %5, ptr %ptr, align 4, !dbg !443
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #5, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %v, metadata !440, metadata !DIExpression()), !dbg !447
  %6 = load ptr, ptr %ptr, align 4, !dbg !448
  %7 = call i8 asm sideeffect "movb %fs:$1,$0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %6) #5, !dbg !449, !srcloc !450
  store i8 %7, ptr %v, align 1, !dbg !449
  %8 = load i8, ptr %v, align 1, !dbg !451
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #5, !dbg !452
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #5, !dbg !452
  ret i8 %8, !dbg !453
}

declare !dbg !454 dso_local zeroext i16 @vga_crtc() #4

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @in_idx(i16 inreg noundef zeroext %port, i8 inreg noundef zeroext %index) #3 !dbg !457 {
entry:
  %port.addr = alloca i16, align 2
  %index.addr = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !461, metadata !DIExpression()), !dbg !463
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !462, metadata !DIExpression()), !dbg !464
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !465
  %1 = load i8, ptr %index.addr, align 1, !dbg !466
  %2 = load i16, ptr %port.addr, align 2, !dbg !467
  call void %0(i8 inreg noundef zeroext %1, i16 inreg noundef zeroext %2) #6, !dbg !465
  %3 = load ptr, ptr @pio_ops, align 4, !dbg !468
  %4 = load i16, ptr %port.addr, align 2, !dbg !469
  %conv = zext i16 %4 to i32, !dbg !469
  %add = add nsw i32 %conv, 1, !dbg !470
  %conv1 = trunc i32 %add to i16, !dbg !469
  %call = call zeroext i8 %3(i16 inreg noundef zeroext %conv1) #6, !dbg !468
  ret i8 %call, !dbg !471
}

; Function Attrs: inlinehint nounwind
define internal void @out_idx(i8 inreg noundef zeroext %v, i16 inreg noundef zeroext %port, i8 inreg noundef zeroext %index) #3 !dbg !472 {
entry:
  %v.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  %index.addr = alloca i8, align 1
  store i8 %v, ptr %v.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !476, metadata !DIExpression()), !dbg !479
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !477, metadata !DIExpression()), !dbg !480
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !478, metadata !DIExpression()), !dbg !481
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 2), align 4, !dbg !482
  %1 = load i8, ptr %index.addr, align 1, !dbg !483
  %conv = zext i8 %1 to i32, !dbg !483
  %2 = load i8, ptr %v.addr, align 1, !dbg !484
  %conv1 = zext i8 %2 to i32, !dbg !484
  %shl = shl i32 %conv1, 8, !dbg !485
  %add = add nsw i32 %conv, %shl, !dbg !486
  %conv2 = trunc i32 %add to i16, !dbg !483
  %3 = load i16, ptr %port.addr, align 2, !dbg !487
  call void %0(i16 inreg noundef zeroext %conv2, i16 inreg noundef zeroext %3) #6, !dbg !482
  ret void, !dbg !488
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "probed", scope: !2, file: !3, line: 34, type: !62, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "probe_cards", scope: !3, file: !3, line: 31, type: !4, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !28)
!3 = !DIFile(filename: "arch/x86/boot/video-mode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbfff206836f69f771af86d9ba067d0")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.video-mode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/video-mode\22 -D KBUILD_BASENAME=\22video_mode\22 -D KBUILD_MODNAME=\22video_mode\22 -D __KBUILD_MODNAME=kmod_video_mode -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/video-mode.ll arch/x86/boot/video-mode.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !8, globals: !17, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !14, !15, !16}
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !10, line: 17, baseType: !11)
!10 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !12, line: 21, baseType: !13)
!12 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!15 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!17 = !{!0, !18, !20, !22, !24, !26}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "adapter", scope: !7, file: !3, line: 25, type: !6, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "force_x", scope: !7, file: !3, line: 26, type: !6, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "force_y", scope: !7, file: !3, line: 26, type: !6, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "do_restore", scope: !7, file: !3, line: 27, type: !6, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "graphic_mode", scope: !7, file: !3, line: 28, type: !6, isLocal: false, isDefinition: true)
!28 = !{!29, !30}
!29 = !DILocalVariable(name: "unsafe", arg: 1, scope: !2, file: !3, line: 31, type: !6)
!30 = !DILocalVariable(name: "card", scope: !2, file: !3, line: 33, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_info", file: !33, line: 70, size: 224, elements: !34)
!33 = !DIFile(filename: "arch/x86/boot/video.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e17e471001fcbd7daaae50249ab4298")
!34 = !{!35, !39, !53, !57, !58, !59, !60, !61}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !32, file: !33, line: 71, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !32, file: !33, line: 72, baseType: !40, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DISubroutineType(types: !42)
!42 = !{!6, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_info", file: !33, line: 64, size: 64, elements: !45)
!45 = !{!46, !50, !51, !52}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !44, file: !33, line: 65, baseType: !47, size: 16)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !10, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !12, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !44, file: !33, line: 66, baseType: !47, size: 16, offset: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !44, file: !33, line: 66, baseType: !47, size: 16, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !44, file: !33, line: 67, baseType: !47, size: 16, offset: 48)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !32, file: !33, line: 73, baseType: !54, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DISubroutineType(types: !56)
!56 = !{!6}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !32, file: !33, line: 74, baseType: !43, size: 32, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nmodes", scope: !32, file: !33, line: 75, baseType: !6, size: 32, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !32, file: !33, line: 76, baseType: !6, size: 32, offset: 160)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_first", scope: !32, file: !33, line: 77, baseType: !47, size: 16, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_n", scope: !32, file: !33, line: 78, baseType: !47, size: 16, offset: 208)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 2)
!65 = !{i32 1, !"NumRegisterParameters", i32 3}
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 1, !"override-stack-alignment", i32 4}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = !DILocation(line: 31, column: 22, scope: !2)
!72 = !DILocation(line: 33, column: 2, scope: !2)
!73 = !DILocation(line: 33, column: 20, scope: !2)
!74 = !DILocation(line: 36, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !2, file: !3, line: 36, column: 6)
!76 = !DILocation(line: 36, column: 6, scope: !75)
!77 = !DILocation(line: 36, column: 6, scope: !2)
!78 = !DILocation(line: 37, column: 3, scope: !75)
!79 = !DILocation(line: 39, column: 9, scope: !2)
!80 = !DILocation(line: 39, column: 2, scope: !2)
!81 = !DILocation(line: 39, column: 17, scope: !2)
!82 = !DILocation(line: 41, column: 12, scope: !83)
!83 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!84 = !DILocation(line: 41, column: 7, scope: !83)
!85 = !DILocation(line: 41, column: 27, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !3, line: 41, column: 2)
!87 = !DILocation(line: 41, column: 32, scope: !86)
!88 = !DILocation(line: 41, column: 2, scope: !83)
!89 = !DILocation(line: 42, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 42, column: 7)
!91 = distinct !DILexicalBlock(scope: !86, file: !3, line: 41, column: 59)
!92 = !DILocation(line: 42, column: 13, scope: !90)
!93 = !DILocation(line: 42, column: 23, scope: !90)
!94 = !DILocation(line: 42, column: 20, scope: !90)
!95 = !DILocation(line: 42, column: 7, scope: !91)
!96 = !DILocation(line: 43, column: 8, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 43, column: 8)
!98 = distinct !DILexicalBlock(scope: !90, file: !3, line: 42, column: 31)
!99 = !DILocation(line: 43, column: 14, scope: !97)
!100 = !DILocation(line: 43, column: 8, scope: !98)
!101 = !DILocation(line: 44, column: 20, scope: !97)
!102 = !DILocation(line: 44, column: 26, scope: !97)
!103 = !DILocation(line: 44, column: 5, scope: !97)
!104 = !DILocation(line: 44, column: 11, scope: !97)
!105 = !DILocation(line: 44, column: 18, scope: !97)
!106 = !DILocation(line: 46, column: 5, scope: !97)
!107 = !DILocation(line: 46, column: 11, scope: !97)
!108 = !DILocation(line: 46, column: 18, scope: !97)
!109 = !DILocation(line: 47, column: 3, scope: !98)
!110 = !DILocation(line: 48, column: 2, scope: !91)
!111 = !DILocation(line: 41, column: 55, scope: !86)
!112 = !DILocation(line: 41, column: 2, scope: !86)
!113 = distinct !{!113, !88, !114, !115, !116}
!114 = !DILocation(line: 48, column: 2, scope: !83)
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!"llvm.loop.unroll.disable"}
!117 = !DILocation(line: 49, column: 1, scope: !2)
!118 = distinct !DISubprogram(name: "mode_defined", scope: !3, file: !3, line: 52, type: !119, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{!6, !47}
!121 = !{!122, !123, !124, !125}
!122 = !DILocalVariable(name: "mode", arg: 1, scope: !118, file: !3, line: 52, type: !47)
!123 = !DILocalVariable(name: "card", scope: !118, file: !3, line: 54, type: !31)
!124 = !DILocalVariable(name: "mi", scope: !118, file: !3, line: 55, type: !43)
!125 = !DILocalVariable(name: "i", scope: !118, file: !3, line: 56, type: !6)
!126 = !DILocation(line: 52, column: 22, scope: !118)
!127 = !DILocation(line: 54, column: 2, scope: !118)
!128 = !DILocation(line: 54, column: 20, scope: !118)
!129 = !DILocation(line: 55, column: 2, scope: !118)
!130 = !DILocation(line: 55, column: 20, scope: !118)
!131 = !DILocation(line: 56, column: 2, scope: !118)
!132 = !DILocation(line: 56, column: 6, scope: !118)
!133 = !DILocation(line: 58, column: 12, scope: !134)
!134 = distinct !DILexicalBlock(scope: !118, file: !3, line: 58, column: 2)
!135 = !DILocation(line: 58, column: 7, scope: !134)
!136 = !DILocation(line: 58, column: 27, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !3, line: 58, column: 2)
!138 = !DILocation(line: 58, column: 32, scope: !137)
!139 = !DILocation(line: 58, column: 2, scope: !134)
!140 = !DILocation(line: 59, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 58, column: 59)
!142 = !DILocation(line: 59, column: 14, scope: !141)
!143 = !DILocation(line: 59, column: 6, scope: !141)
!144 = !DILocation(line: 60, column: 10, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 60, column: 3)
!146 = !DILocation(line: 60, column: 8, scope: !145)
!147 = !DILocation(line: 60, column: 15, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !3, line: 60, column: 3)
!149 = !DILocation(line: 60, column: 19, scope: !148)
!150 = !DILocation(line: 60, column: 25, scope: !148)
!151 = !DILocation(line: 60, column: 17, scope: !148)
!152 = !DILocation(line: 60, column: 3, scope: !145)
!153 = !DILocation(line: 61, column: 8, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 61, column: 8)
!155 = distinct !DILexicalBlock(scope: !148, file: !3, line: 60, column: 44)
!156 = !DILocation(line: 61, column: 12, scope: !154)
!157 = !DILocation(line: 61, column: 20, scope: !154)
!158 = !DILocation(line: 61, column: 17, scope: !154)
!159 = !DILocation(line: 61, column: 8, scope: !155)
!160 = !DILocation(line: 62, column: 5, scope: !154)
!161 = !DILocation(line: 63, column: 3, scope: !155)
!162 = !DILocation(line: 60, column: 34, scope: !148)
!163 = !DILocation(line: 60, column: 40, scope: !148)
!164 = !DILocation(line: 60, column: 3, scope: !148)
!165 = distinct !{!165, !152, !166, !115, !116}
!166 = !DILocation(line: 63, column: 3, scope: !145)
!167 = !DILocation(line: 64, column: 2, scope: !141)
!168 = !DILocation(line: 58, column: 55, scope: !137)
!169 = !DILocation(line: 58, column: 2, scope: !137)
!170 = distinct !{!170, !139, !171, !115, !116}
!171 = !DILocation(line: 64, column: 2, scope: !134)
!172 = !DILocation(line: 66, column: 2, scope: !118)
!173 = !DILocation(line: 67, column: 1, scope: !118)
!174 = distinct !DISubprogram(name: "set_mode", scope: !3, file: !3, line: 145, type: !119, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !175)
!175 = !{!176, !177, !178}
!176 = !DILocalVariable(name: "mode", arg: 1, scope: !174, file: !3, line: 145, type: !47)
!177 = !DILocalVariable(name: "rv", scope: !174, file: !3, line: 147, type: !6)
!178 = !DILocalVariable(name: "real_mode", scope: !174, file: !3, line: 148, type: !47)
!179 = !DILocation(line: 145, column: 18, scope: !174)
!180 = !DILocation(line: 147, column: 2, scope: !174)
!181 = !DILocation(line: 147, column: 6, scope: !174)
!182 = !DILocation(line: 148, column: 2, scope: !174)
!183 = !DILocation(line: 148, column: 6, scope: !174)
!184 = !DILocation(line: 151, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !174, file: !3, line: 151, column: 6)
!186 = !DILocation(line: 151, column: 11, scope: !185)
!187 = !DILocation(line: 151, column: 6, scope: !174)
!188 = !DILocation(line: 152, column: 3, scope: !185)
!189 = !DILocation(line: 153, column: 11, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 153, column: 11)
!191 = !DILocation(line: 153, column: 16, scope: !190)
!192 = !DILocation(line: 153, column: 11, scope: !185)
!193 = !DILocation(line: 154, column: 8, scope: !190)
!194 = !DILocation(line: 154, column: 3, scope: !190)
!195 = !DILocation(line: 155, column: 11, scope: !196)
!196 = distinct !DILexicalBlock(scope: !190, file: !3, line: 155, column: 11)
!197 = !DILocation(line: 155, column: 16, scope: !196)
!198 = !DILocation(line: 155, column: 11, scope: !190)
!199 = !DILocation(line: 156, column: 8, scope: !196)
!200 = !DILocation(line: 156, column: 3, scope: !196)
!201 = !DILocation(line: 158, column: 20, scope: !174)
!202 = !DILocation(line: 158, column: 7, scope: !174)
!203 = !DILocation(line: 158, column: 5, scope: !174)
!204 = !DILocation(line: 159, column: 6, scope: !205)
!205 = distinct !DILexicalBlock(scope: !174, file: !3, line: 159, column: 6)
!206 = !DILocation(line: 159, column: 6, scope: !174)
!207 = !DILocation(line: 160, column: 10, scope: !205)
!208 = !DILocation(line: 160, column: 3, scope: !205)
!209 = !DILocation(line: 162, column: 6, scope: !210)
!210 = distinct !DILexicalBlock(scope: !174, file: !3, line: 162, column: 6)
!211 = !DILocation(line: 162, column: 11, scope: !210)
!212 = !DILocation(line: 162, column: 6, scope: !174)
!213 = !DILocation(line: 163, column: 3, scope: !210)
!214 = !DILocation(line: 168, column: 29, scope: !174)
!215 = !DILocation(line: 168, column: 27, scope: !174)
!216 = !DILocation(line: 170, column: 2, scope: !174)
!217 = !DILocation(line: 171, column: 1, scope: !174)
!218 = distinct !DISubprogram(name: "raw_set_mode", scope: !3, file: !3, line: 70, type: !219, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !222)
!219 = !DISubroutineType(types: !220)
!220 = !{!6, !47, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !236}
!223 = !DILocalVariable(name: "mode", arg: 1, scope: !218, file: !3, line: 70, type: !47)
!224 = !DILocalVariable(name: "real_mode", arg: 2, scope: !218, file: !3, line: 70, type: !221)
!225 = !DILocalVariable(name: "nmode", scope: !218, file: !3, line: 72, type: !6)
!226 = !DILocalVariable(name: "i", scope: !218, file: !3, line: 72, type: !6)
!227 = !DILocalVariable(name: "card", scope: !218, file: !3, line: 73, type: !31)
!228 = !DILocalVariable(name: "mi", scope: !218, file: !3, line: 74, type: !43)
!229 = !DILocalVariable(name: "visible", scope: !230, file: !3, line: 84, type: !6)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 83, column: 44)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 83, column: 3)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 83, column: 3)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 81, column: 59)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 81, column: 2)
!235 = distinct !DILexicalBlock(scope: !218, file: !3, line: 81, column: 2)
!236 = !DILocalVariable(name: "mix", scope: !237, file: !3, line: 102, type: !44)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 101, column: 47)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 100, column: 7)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 99, column: 59)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 99, column: 2)
!241 = distinct !DILexicalBlock(scope: !218, file: !3, line: 99, column: 2)
!242 = !DILocation(line: 70, column: 29, scope: !218)
!243 = !DILocation(line: 70, column: 40, scope: !218)
!244 = !DILocation(line: 72, column: 2, scope: !218)
!245 = !DILocation(line: 72, column: 6, scope: !218)
!246 = !DILocation(line: 72, column: 13, scope: !218)
!247 = !DILocation(line: 73, column: 2, scope: !218)
!248 = !DILocation(line: 73, column: 20, scope: !218)
!249 = !DILocation(line: 74, column: 2, scope: !218)
!250 = !DILocation(line: 74, column: 20, scope: !218)
!251 = !DILocation(line: 77, column: 7, scope: !218)
!252 = !DILocation(line: 80, column: 8, scope: !218)
!253 = !DILocation(line: 81, column: 12, scope: !235)
!254 = !DILocation(line: 81, column: 7, scope: !235)
!255 = !DILocation(line: 81, column: 27, scope: !234)
!256 = !DILocation(line: 81, column: 32, scope: !234)
!257 = !DILocation(line: 81, column: 2, scope: !235)
!258 = !DILocation(line: 82, column: 8, scope: !233)
!259 = !DILocation(line: 82, column: 14, scope: !233)
!260 = !DILocation(line: 82, column: 6, scope: !233)
!261 = !DILocation(line: 83, column: 10, scope: !232)
!262 = !DILocation(line: 83, column: 8, scope: !232)
!263 = !DILocation(line: 83, column: 15, scope: !231)
!264 = !DILocation(line: 83, column: 19, scope: !231)
!265 = !DILocation(line: 83, column: 25, scope: !231)
!266 = !DILocation(line: 83, column: 17, scope: !231)
!267 = !DILocation(line: 83, column: 3, scope: !232)
!268 = !DILocation(line: 84, column: 4, scope: !230)
!269 = !DILocation(line: 84, column: 8, scope: !230)
!270 = !DILocation(line: 84, column: 18, scope: !230)
!271 = !DILocation(line: 84, column: 22, scope: !230)
!272 = !DILocation(line: 84, column: 24, scope: !230)
!273 = !DILocation(line: 84, column: 27, scope: !230)
!274 = !DILocation(line: 84, column: 31, scope: !230)
!275 = !DILocation(line: 86, column: 9, scope: !276)
!276 = distinct !DILexicalBlock(scope: !230, file: !3, line: 86, column: 8)
!277 = !DILocation(line: 86, column: 17, scope: !276)
!278 = !DILocation(line: 86, column: 14, scope: !276)
!279 = !DILocation(line: 86, column: 23, scope: !276)
!280 = !DILocation(line: 86, column: 26, scope: !276)
!281 = !DILocation(line: 86, column: 35, scope: !276)
!282 = !DILocation(line: 87, column: 8, scope: !276)
!283 = !DILocation(line: 87, column: 16, scope: !276)
!284 = !DILocation(line: 87, column: 20, scope: !276)
!285 = !DILocation(line: 87, column: 13, scope: !276)
!286 = !DILocation(line: 87, column: 25, scope: !276)
!287 = !DILocation(line: 88, column: 8, scope: !276)
!288 = !DILocation(line: 88, column: 17, scope: !276)
!289 = !DILocation(line: 88, column: 21, scope: !276)
!290 = !DILocation(line: 88, column: 23, scope: !276)
!291 = !DILocation(line: 88, column: 29, scope: !276)
!292 = !DILocation(line: 88, column: 33, scope: !276)
!293 = !DILocation(line: 88, column: 28, scope: !276)
!294 = !DILocation(line: 88, column: 13, scope: !276)
!295 = !DILocation(line: 86, column: 8, scope: !230)
!296 = !DILocation(line: 89, column: 18, scope: !297)
!297 = distinct !DILexicalBlock(scope: !276, file: !3, line: 88, column: 36)
!298 = !DILocation(line: 89, column: 22, scope: !297)
!299 = !DILocation(line: 89, column: 6, scope: !297)
!300 = !DILocation(line: 89, column: 16, scope: !297)
!301 = !DILocation(line: 90, column: 12, scope: !297)
!302 = !DILocation(line: 90, column: 18, scope: !297)
!303 = !DILocation(line: 90, column: 27, scope: !297)
!304 = !DILocation(line: 90, column: 5, scope: !297)
!305 = !DILocation(line: 93, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !230, file: !3, line: 93, column: 8)
!307 = !DILocation(line: 93, column: 8, scope: !230)
!308 = !DILocation(line: 94, column: 10, scope: !306)
!309 = !DILocation(line: 94, column: 5, scope: !306)
!310 = !DILocation(line: 95, column: 3, scope: !231)
!311 = !DILocation(line: 95, column: 3, scope: !230)
!312 = !DILocation(line: 83, column: 34, scope: !231)
!313 = !DILocation(line: 83, column: 40, scope: !231)
!314 = !DILocation(line: 83, column: 3, scope: !231)
!315 = distinct !{!315, !267, !316, !115, !116}
!316 = !DILocation(line: 95, column: 3, scope: !232)
!317 = !DILocation(line: 96, column: 2, scope: !233)
!318 = !DILocation(line: 81, column: 55, scope: !234)
!319 = !DILocation(line: 81, column: 2, scope: !234)
!320 = distinct !{!320, !257, !321, !115, !116}
!321 = !DILocation(line: 96, column: 2, scope: !235)
!322 = !DILocation(line: 99, column: 12, scope: !241)
!323 = !DILocation(line: 99, column: 7, scope: !241)
!324 = !DILocation(line: 99, column: 27, scope: !240)
!325 = !DILocation(line: 99, column: 32, scope: !240)
!326 = !DILocation(line: 99, column: 2, scope: !241)
!327 = !DILocation(line: 100, column: 7, scope: !238)
!328 = !DILocation(line: 100, column: 15, scope: !238)
!329 = !DILocation(line: 100, column: 21, scope: !238)
!330 = !DILocation(line: 100, column: 12, scope: !238)
!331 = !DILocation(line: 100, column: 33, scope: !238)
!332 = !DILocation(line: 101, column: 7, scope: !238)
!333 = !DILocation(line: 101, column: 14, scope: !238)
!334 = !DILocation(line: 101, column: 20, scope: !238)
!335 = !DILocation(line: 101, column: 32, scope: !238)
!336 = !DILocation(line: 101, column: 38, scope: !238)
!337 = !DILocation(line: 101, column: 31, scope: !238)
!338 = !DILocation(line: 101, column: 12, scope: !238)
!339 = !DILocation(line: 100, column: 7, scope: !239)
!340 = !DILocation(line: 102, column: 4, scope: !237)
!341 = !DILocation(line: 102, column: 21, scope: !237)
!342 = !DILocation(line: 103, column: 28, scope: !237)
!343 = !DILocation(line: 103, column: 21, scope: !237)
!344 = !DILocation(line: 103, column: 26, scope: !237)
!345 = !DILocation(line: 103, column: 5, scope: !237)
!346 = !DILocation(line: 103, column: 15, scope: !237)
!347 = !DILocation(line: 104, column: 16, scope: !237)
!348 = !DILocation(line: 104, column: 18, scope: !237)
!349 = !DILocation(line: 104, column: 8, scope: !237)
!350 = !DILocation(line: 104, column: 10, scope: !237)
!351 = !DILocation(line: 105, column: 11, scope: !237)
!352 = !DILocation(line: 105, column: 17, scope: !237)
!353 = !DILocation(line: 105, column: 4, scope: !237)
!354 = !DILocation(line: 106, column: 3, scope: !238)
!355 = !DILocation(line: 107, column: 2, scope: !239)
!356 = !DILocation(line: 99, column: 55, scope: !240)
!357 = !DILocation(line: 99, column: 2, scope: !240)
!358 = distinct !{!358, !326, !359, !115, !116}
!359 = !DILocation(line: 107, column: 2, scope: !241)
!360 = !DILocation(line: 110, column: 2, scope: !218)
!361 = !DILocation(line: 111, column: 1, scope: !218)
!362 = distinct !DISubprogram(name: "vga_recalc_vertical", scope: !3, file: !3, line: 116, type: !363, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{null}
!365 = !{!366, !368, !369, !370, !371}
!366 = !DILocalVariable(name: "font_size", scope: !362, file: !3, line: 118, type: !367)
!367 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!368 = !DILocalVariable(name: "rows", scope: !362, file: !3, line: 118, type: !367)
!369 = !DILocalVariable(name: "crtc", scope: !362, file: !3, line: 119, type: !47)
!370 = !DILocalVariable(name: "pt", scope: !362, file: !3, line: 120, type: !9)
!371 = !DILocalVariable(name: "ov", scope: !362, file: !3, line: 120, type: !9)
!372 = !DILocation(line: 118, column: 2, scope: !362)
!373 = !DILocation(line: 118, column: 15, scope: !362)
!374 = !DILocation(line: 118, column: 26, scope: !362)
!375 = !DILocation(line: 119, column: 2, scope: !362)
!376 = !DILocation(line: 119, column: 6, scope: !362)
!377 = !DILocation(line: 120, column: 2, scope: !362)
!378 = !DILocation(line: 120, column: 5, scope: !362)
!379 = !DILocation(line: 120, column: 9, scope: !362)
!380 = !DILocation(line: 122, column: 2, scope: !362)
!381 = !DILocation(line: 123, column: 14, scope: !362)
!382 = !DILocation(line: 123, column: 12, scope: !362)
!383 = !DILocation(line: 124, column: 9, scope: !362)
!384 = !DILocation(line: 124, column: 19, scope: !362)
!385 = !DILocation(line: 124, column: 29, scope: !362)
!386 = !DILocation(line: 124, column: 41, scope: !362)
!387 = !DILocation(line: 124, column: 7, scope: !362)
!388 = !DILocation(line: 126, column: 10, scope: !362)
!389 = !DILocation(line: 126, column: 7, scope: !362)
!390 = !DILocation(line: 127, column: 6, scope: !362)
!391 = !DILocation(line: 129, column: 9, scope: !362)
!392 = !DILocation(line: 129, column: 7, scope: !362)
!393 = !DILocation(line: 131, column: 14, scope: !362)
!394 = !DILocation(line: 131, column: 7, scope: !362)
!395 = !DILocation(line: 131, column: 5, scope: !362)
!396 = !DILocation(line: 132, column: 5, scope: !362)
!397 = !DILocation(line: 133, column: 10, scope: !362)
!398 = !DILocation(line: 133, column: 14, scope: !362)
!399 = !DILocation(line: 133, column: 2, scope: !362)
!400 = !DILocation(line: 135, column: 14, scope: !362)
!401 = !DILocation(line: 135, column: 10, scope: !362)
!402 = !DILocation(line: 135, column: 20, scope: !362)
!403 = !DILocation(line: 135, column: 2, scope: !362)
!404 = !DILocation(line: 137, column: 14, scope: !362)
!405 = !DILocation(line: 137, column: 7, scope: !362)
!406 = !DILocation(line: 137, column: 5, scope: !362)
!407 = !DILocation(line: 138, column: 5, scope: !362)
!408 = !DILocation(line: 139, column: 9, scope: !362)
!409 = !DILocation(line: 139, column: 14, scope: !362)
!410 = !DILocation(line: 139, column: 24, scope: !362)
!411 = !DILocation(line: 139, column: 5, scope: !362)
!412 = !DILocation(line: 140, column: 9, scope: !362)
!413 = !DILocation(line: 140, column: 14, scope: !362)
!414 = !DILocation(line: 140, column: 24, scope: !362)
!415 = !DILocation(line: 140, column: 5, scope: !362)
!416 = !DILocation(line: 141, column: 10, scope: !362)
!417 = !DILocation(line: 141, column: 14, scope: !362)
!418 = !DILocation(line: 141, column: 2, scope: !362)
!419 = !DILocation(line: 142, column: 1, scope: !362)
!420 = distinct !DISubprogram(name: "set_fs", scope: !421, file: !421, line: 54, type: !422, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !424)
!421 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!422 = !DISubroutineType(types: !423)
!423 = !{null, !47}
!424 = !{!425}
!425 = !DILocalVariable(name: "seg", arg: 1, scope: !420, file: !421, line: 54, type: !47)
!426 = !DILocation(line: 54, column: 31, scope: !420)
!427 = !DILocation(line: 56, column: 40, scope: !420)
!428 = !DILocation(line: 56, column: 2, scope: !420)
!429 = !{i64 115991}
!430 = !DILocation(line: 57, column: 1, scope: !420)
!431 = distinct !DISubprogram(name: "rdfs8", scope: !421, file: !421, line: 78, type: !432, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !435)
!432 = !DISubroutineType(types: !433)
!433 = !{!9, !434}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !421, line: 76, baseType: !367)
!435 = !{!436, !437, !438, !440}
!436 = !DILocalVariable(name: "addr", arg: 1, scope: !431, file: !421, line: 78, type: !434)
!437 = !DILocalVariable(name: "ptr", scope: !431, file: !421, line: 80, type: !14)
!438 = !DILocalVariable(name: "__ptr", scope: !439, file: !421, line: 80, type: !15)
!439 = distinct !DILexicalBlock(scope: !431, file: !421, line: 80, column: 18)
!440 = !DILocalVariable(name: "v", scope: !431, file: !421, line: 81, type: !9)
!441 = !DILocation(line: 78, column: 31, scope: !431)
!442 = !DILocation(line: 80, column: 2, scope: !431)
!443 = !DILocation(line: 80, column: 6, scope: !431)
!444 = !DILocation(line: 80, column: 18, scope: !439)
!445 = !DILocation(line: 80, column: 18, scope: !431)
!446 = !DILocation(line: 81, column: 2, scope: !431)
!447 = !DILocation(line: 81, column: 5, scope: !431)
!448 = !DILocation(line: 82, column: 52, scope: !431)
!449 = !DILocation(line: 82, column: 2, scope: !431)
!450 = !{i64 116440}
!451 = !DILocation(line: 83, column: 9, scope: !431)
!452 = !DILocation(line: 84, column: 1, scope: !431)
!453 = !DILocation(line: 83, column: 2, scope: !431)
!454 = !DISubprogram(name: "vga_crtc", scope: !33, file: !33, line: 116, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!47}
!457 = distinct !DISubprogram(name: "in_idx", scope: !33, file: !33, line: 97, type: !458, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{!9, !47, !9}
!460 = !{!461, !462}
!461 = !DILocalVariable(name: "port", arg: 1, scope: !457, file: !33, line: 97, type: !47)
!462 = !DILocalVariable(name: "index", arg: 2, scope: !457, file: !33, line: 97, type: !9)
!463 = !DILocation(line: 97, column: 29, scope: !457)
!464 = !DILocation(line: 97, column: 38, scope: !457)
!465 = !DILocation(line: 99, column: 2, scope: !457)
!466 = !DILocation(line: 99, column: 7, scope: !457)
!467 = !DILocation(line: 99, column: 14, scope: !457)
!468 = !DILocation(line: 100, column: 9, scope: !457)
!469 = !DILocation(line: 100, column: 13, scope: !457)
!470 = !DILocation(line: 100, column: 17, scope: !457)
!471 = !DILocation(line: 100, column: 2, scope: !457)
!472 = distinct !DISubprogram(name: "out_idx", scope: !33, file: !33, line: 103, type: !473, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !9, !47, !9}
!475 = !{!476, !477, !478}
!476 = !DILocalVariable(name: "v", arg: 1, scope: !472, file: !33, line: 103, type: !9)
!477 = !DILocalVariable(name: "port", arg: 2, scope: !472, file: !33, line: 103, type: !47)
!478 = !DILocalVariable(name: "index", arg: 3, scope: !472, file: !33, line: 103, type: !9)
!479 = !DILocation(line: 103, column: 31, scope: !472)
!480 = !DILocation(line: 103, column: 38, scope: !472)
!481 = !DILocation(line: 103, column: 47, scope: !472)
!482 = !DILocation(line: 105, column: 2, scope: !472)
!483 = !DILocation(line: 105, column: 7, scope: !472)
!484 = !DILocation(line: 105, column: 14, scope: !472)
!485 = !DILocation(line: 105, column: 16, scope: !472)
!486 = !DILocation(line: 105, column: 12, scope: !472)
!487 = !DILocation(line: 105, column: 23, scope: !472)
!488 = !DILocation(line: 106, column: 1, scope: !472)
