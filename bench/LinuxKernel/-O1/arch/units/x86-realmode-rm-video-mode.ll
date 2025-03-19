; ModuleID = 'arch/x86/realmode/rm/video-mode.c'
source_filename = "arch/x86/realmode/rm/video-mode.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.card_info = type { ptr, ptr, ptr, ptr, i32, i32, i16, i16 }
%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.mode_info = type { i16, i16, i16, i16 }

@probe_cards.probed = internal global [2 x i8] zeroinitializer, align 1, !dbg !0
@video_cards = external dso_local global [0 x %struct.card_info], align 4
@video_cards_end = external dso_local global [0 x %struct.card_info], align 4
@adapter = dso_local global i32 0, align 4, !dbg !19
@force_x = dso_local global i32 0, align 4, !dbg !21
@force_y = dso_local global i32 0, align 4, !dbg !23
@do_restore = dso_local global i32 0, align 4, !dbg !25
@graphic_mode = dso_local global i32 0, align 4, !dbg !27
@pio_ops = external dso_local global %struct.port_io_ops, align 4

; Function Attrs: nounwind
define dso_local void @probe_cards(i32 inreg noundef %unsafe) #0 !dbg !2 {
entry:
  %unsafe.addr = alloca i32, align 4
  %card = alloca ptr, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %unsafe, ptr %unsafe.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %unsafe.addr, metadata !30, metadata !DIExpression()), !dbg !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %card) #5, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %card, metadata !31, metadata !DIExpression()), !dbg !74
  %0 = load i32, ptr %unsafe.addr, align 4, !dbg !75
  %arrayidx = getelementptr inbounds [2 x i8], ptr @probe_cards.probed, i32 0, i32 %0, !dbg !77
  %1 = load i8, ptr %arrayidx, align 1, !dbg !77
  %tobool = icmp ne i8 %1, 0, !dbg !77
  br i1 %tobool, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !79

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %unsafe.addr, align 4, !dbg !80
  %arrayidx1 = getelementptr inbounds [2 x i8], ptr @probe_cards.probed, i32 0, i32 %2, !dbg !81
  store i8 1, ptr %arrayidx1, align 1, !dbg !82
  store ptr @video_cards, ptr %card, align 4, !dbg !83
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %card, align 4, !dbg !86
  %cmp = icmp ult ptr %3, @video_cards_end, !dbg !88
  br i1 %cmp, label %for.body, label %for.end, !dbg !89

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %card, align 4, !dbg !90
  %unsafe2 = getelementptr inbounds %struct.card_info, ptr %4, i32 0, i32 5, !dbg !93
  %5 = load i32, ptr %unsafe2, align 4, !dbg !93
  %6 = load i32, ptr %unsafe.addr, align 4, !dbg !94
  %cmp3 = icmp eq i32 %5, %6, !dbg !95
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !96

if.then4:                                         ; preds = %for.body
  %7 = load ptr, ptr %card, align 4, !dbg !97
  %probe = getelementptr inbounds %struct.card_info, ptr %7, i32 0, i32 2, !dbg !100
  %8 = load ptr, ptr %probe, align 4, !dbg !100
  %tobool5 = icmp ne ptr %8, null, !dbg !97
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !101

if.then6:                                         ; preds = %if.then4
  %9 = load ptr, ptr %card, align 4, !dbg !102
  %probe7 = getelementptr inbounds %struct.card_info, ptr %9, i32 0, i32 2, !dbg !103
  %10 = load ptr, ptr %probe7, align 4, !dbg !103
  %call = call i32 %10() #6, !dbg !102
  %11 = load ptr, ptr %card, align 4, !dbg !104
  %nmodes = getelementptr inbounds %struct.card_info, ptr %11, i32 0, i32 4, !dbg !105
  store i32 %call, ptr %nmodes, align 4, !dbg !106
  br label %if.end9, !dbg !104

if.else:                                          ; preds = %if.then4
  %12 = load ptr, ptr %card, align 4, !dbg !107
  %nmodes8 = getelementptr inbounds %struct.card_info, ptr %12, i32 0, i32 4, !dbg !108
  store i32 0, ptr %nmodes8, align 4, !dbg !109
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %if.end10, !dbg !110

if.end10:                                         ; preds = %if.end9, %for.body
  br label %for.inc, !dbg !111

for.inc:                                          ; preds = %if.end10
  %13 = load ptr, ptr %card, align 4, !dbg !112
  %incdec.ptr = getelementptr inbounds %struct.card_info, ptr %13, i32 1, !dbg !112
  store ptr %incdec.ptr, ptr %card, align 4, !dbg !112
  br label %for.cond, !dbg !113, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !118
  br label %cleanup, !dbg !118

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %card) #5, !dbg !118
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !118

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
define dso_local i32 @mode_defined(i16 inreg noundef zeroext %mode) #0 !dbg !119 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i16, align 2
  %card = alloca ptr, align 4
  %mi = alloca ptr, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !123, metadata !DIExpression()), !dbg !127
  call void @llvm.lifetime.start.p0(i64 4, ptr %card) #5, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %card, metadata !124, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #5, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !125, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %i, metadata !126, metadata !DIExpression()), !dbg !133
  store ptr @video_cards, ptr %card, align 4, !dbg !134
  br label %for.cond, !dbg !136

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load ptr, ptr %card, align 4, !dbg !137
  %cmp = icmp ult ptr %0, @video_cards_end, !dbg !139
  br i1 %cmp, label %for.body, label %for.end10, !dbg !140

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %card, align 4, !dbg !141
  %modes = getelementptr inbounds %struct.card_info, ptr %1, i32 0, i32 3, !dbg !143
  %2 = load ptr, ptr %modes, align 4, !dbg !143
  store ptr %2, ptr %mi, align 4, !dbg !144
  store i32 0, ptr %i, align 4, !dbg !145
  br label %for.cond1, !dbg !147

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %i, align 4, !dbg !148
  %4 = load ptr, ptr %card, align 4, !dbg !150
  %nmodes = getelementptr inbounds %struct.card_info, ptr %4, i32 0, i32 4, !dbg !151
  %5 = load i32, ptr %nmodes, align 4, !dbg !151
  %cmp2 = icmp slt i32 %3, %5, !dbg !152
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !153

for.body3:                                        ; preds = %for.cond1
  %6 = load ptr, ptr %mi, align 4, !dbg !154
  %mode4 = getelementptr inbounds %struct.mode_info, ptr %6, i32 0, i32 0, !dbg !157
  %7 = load i16, ptr %mode4, align 2, !dbg !157
  %conv = zext i16 %7 to i32, !dbg !154
  %8 = load i16, ptr %mode.addr, align 2, !dbg !158
  %conv5 = zext i16 %8 to i32, !dbg !158
  %cmp6 = icmp eq i32 %conv, %conv5, !dbg !159
  br i1 %cmp6, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %for.body3
  store i32 1, ptr %retval, align 4, !dbg !161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !161

if.end:                                           ; preds = %for.body3
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !163
  %inc = add nsw i32 %9, 1, !dbg !163
  store i32 %inc, ptr %i, align 4, !dbg !163
  %10 = load ptr, ptr %mi, align 4, !dbg !164
  %incdec.ptr = getelementptr inbounds %struct.mode_info, ptr %10, i32 1, !dbg !164
  store ptr %incdec.ptr, ptr %mi, align 4, !dbg !164
  br label %for.cond1, !dbg !165, !llvm.loop !166

for.end:                                          ; preds = %for.cond1
  br label %for.inc8, !dbg !168

for.inc8:                                         ; preds = %for.end
  %11 = load ptr, ptr %card, align 4, !dbg !169
  %incdec.ptr9 = getelementptr inbounds %struct.card_info, ptr %11, i32 1, !dbg !169
  store ptr %incdec.ptr9, ptr %card, align 4, !dbg !169
  br label %for.cond, !dbg !170, !llvm.loop !171

for.end10:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !173

cleanup:                                          ; preds = %for.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !174
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #5, !dbg !174
  call void @llvm.lifetime.end.p0(i64 4, ptr %card) #5, !dbg !174
  %12 = load i32, ptr %retval, align 4, !dbg !174
  ret i32 %12, !dbg !174
}

; Function Attrs: nounwind
define dso_local i32 @set_mode(i16 inreg noundef zeroext %mode) #0 !dbg !175 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i16, align 2
  %rv = alloca i32, align 4
  %real_mode = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !177, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #5, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !178, metadata !DIExpression()), !dbg !182
  call void @llvm.lifetime.start.p0(i64 2, ptr %real_mode) #5, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %real_mode, metadata !179, metadata !DIExpression()), !dbg !184
  %0 = load i16, ptr %mode.addr, align 2, !dbg !185
  %conv = zext i16 %0 to i32, !dbg !185
  %cmp = icmp eq i32 %conv, 3844, !dbg !187
  br i1 %cmp, label %if.then, label %if.else, !dbg !188

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !189

if.else:                                          ; preds = %entry
  %1 = load i16, ptr %mode.addr, align 2, !dbg !190
  %conv2 = zext i16 %1 to i32, !dbg !190
  %cmp3 = icmp eq i32 %conv2, 65535, !dbg !192
  br i1 %cmp3, label %if.then5, label %if.else6, !dbg !193

if.then5:                                         ; preds = %if.else
  store i16 3840, ptr %mode.addr, align 2, !dbg !194
  br label %if.end11, !dbg !195

if.else6:                                         ; preds = %if.else
  %2 = load i16, ptr %mode.addr, align 2, !dbg !196
  %conv7 = zext i16 %2 to i32, !dbg !196
  %cmp8 = icmp eq i32 %conv7, 65534, !dbg !198
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !199

if.then10:                                        ; preds = %if.else6
  store i16 3841, ptr %mode.addr, align 2, !dbg !200
  br label %if.end, !dbg !201

if.end:                                           ; preds = %if.then10, %if.else6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %3 = load i16, ptr %mode.addr, align 2, !dbg !202
  %call = call i32 @raw_set_mode(i16 inreg noundef zeroext %3, ptr inreg noundef %real_mode) #6, !dbg !203
  store i32 %call, ptr %rv, align 4, !dbg !204
  %4 = load i32, ptr %rv, align 4, !dbg !205
  %tobool = icmp ne i32 %4, 0, !dbg !205
  br i1 %tobool, label %if.then13, label %if.end14, !dbg !207

if.then13:                                        ; preds = %if.end12
  %5 = load i32, ptr %rv, align 4, !dbg !208
  store i32 %5, ptr %retval, align 4, !dbg !209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !209

if.end14:                                         ; preds = %if.end12
  %6 = load i16, ptr %mode.addr, align 2, !dbg !210
  %conv15 = zext i16 %6 to i32, !dbg !210
  %and = and i32 %conv15, 32768, !dbg !212
  %tobool16 = icmp ne i32 %and, 0, !dbg !212
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !213

if.then17:                                        ; preds = %if.end14
  call void @vga_recalc_vertical() #6, !dbg !214
  br label %if.end18, !dbg !214

if.end18:                                         ; preds = %if.then17, %if.end14
  store i32 0, ptr %retval, align 4, !dbg !215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !215

cleanup:                                          ; preds = %if.end18, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %real_mode) #5, !dbg !216
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #5, !dbg !216
  %7 = load i32, ptr %retval, align 4, !dbg !216
  ret i32 %7, !dbg !216
}

; Function Attrs: nounwind
define internal i32 @raw_set_mode(i16 inreg noundef zeroext %mode, ptr inreg noundef %real_mode) #0 !dbg !217 {
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
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !222, metadata !DIExpression()), !dbg !241
  store ptr %real_mode, ptr %real_mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %real_mode.addr, metadata !223, metadata !DIExpression()), !dbg !242
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmode) #5, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %nmode, metadata !224, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %i, metadata !225, metadata !DIExpression()), !dbg !245
  call void @llvm.lifetime.start.p0(i64 4, ptr %card) #5, !dbg !246
  call void @llvm.dbg.declare(metadata ptr %card, metadata !226, metadata !DIExpression()), !dbg !247
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #5, !dbg !248
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !227, metadata !DIExpression()), !dbg !249
  %0 = load i16, ptr %mode.addr, align 2, !dbg !250
  %conv = zext i16 %0 to i32, !dbg !250
  %and = and i32 %conv, -32769, !dbg !250
  %conv1 = trunc i32 %and to i16, !dbg !250
  store i16 %conv1, ptr %mode.addr, align 2, !dbg !250
  store i32 0, ptr %nmode, align 4, !dbg !251
  store ptr @video_cards, ptr %card, align 4, !dbg !252
  br label %for.cond, !dbg !253

for.cond:                                         ; preds = %for.inc32, %entry
  %1 = load ptr, ptr %card, align 4, !dbg !254
  %cmp = icmp ult ptr %1, @video_cards_end, !dbg !255
  br i1 %cmp, label %for.body, label %for.end34, !dbg !256

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %card, align 4, !dbg !257
  %modes = getelementptr inbounds %struct.card_info, ptr %2, i32 0, i32 3, !dbg !258
  %3 = load ptr, ptr %modes, align 4, !dbg !258
  store ptr %3, ptr %mi, align 4, !dbg !259
  store i32 0, ptr %i, align 4, !dbg !260
  br label %for.cond3, !dbg !261

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %i, align 4, !dbg !262
  %5 = load ptr, ptr %card, align 4, !dbg !263
  %nmodes = getelementptr inbounds %struct.card_info, ptr %5, i32 0, i32 4, !dbg !264
  %6 = load i32, ptr %nmodes, align 4, !dbg !264
  %cmp4 = icmp slt i32 %4, %6, !dbg !265
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !266

for.body6:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %visible) #5, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %visible, metadata !228, metadata !DIExpression()), !dbg !268
  %7 = load ptr, ptr %mi, align 4, !dbg !269
  %x = getelementptr inbounds %struct.mode_info, ptr %7, i32 0, i32 1, !dbg !270
  %8 = load i16, ptr %x, align 2, !dbg !270
  %conv7 = zext i16 %8 to i32, !dbg !269
  %tobool = icmp ne i32 %conv7, 0, !dbg !269
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !271

lor.rhs:                                          ; preds = %for.body6
  %9 = load ptr, ptr %mi, align 4, !dbg !272
  %y = getelementptr inbounds %struct.mode_info, ptr %9, i32 0, i32 2, !dbg !273
  %10 = load i16, ptr %y, align 2, !dbg !273
  %conv8 = zext i16 %10 to i32, !dbg !272
  %tobool9 = icmp ne i32 %conv8, 0, !dbg !271
  br label %lor.end, !dbg !271

lor.end:                                          ; preds = %lor.rhs, %for.body6
  %11 = phi i1 [ true, %for.body6 ], [ %tobool9, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32, !dbg !271
  store i32 %lor.ext, ptr %visible, align 4, !dbg !268
  %12 = load i16, ptr %mode.addr, align 2, !dbg !274
  %conv10 = zext i16 %12 to i32, !dbg !274
  %13 = load i32, ptr %nmode, align 4, !dbg !276
  %cmp11 = icmp eq i32 %conv10, %13, !dbg !277
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false, !dbg !278

land.lhs.true:                                    ; preds = %lor.end
  %14 = load i32, ptr %visible, align 4, !dbg !279
  %tobool13 = icmp ne i32 %14, 0, !dbg !279
  br i1 %tobool13, label %if.then, label %lor.lhs.false, !dbg !280

lor.lhs.false:                                    ; preds = %land.lhs.true, %lor.end
  %15 = load i16, ptr %mode.addr, align 2, !dbg !281
  %conv14 = zext i16 %15 to i32, !dbg !281
  %16 = load ptr, ptr %mi, align 4, !dbg !282
  %mode15 = getelementptr inbounds %struct.mode_info, ptr %16, i32 0, i32 0, !dbg !283
  %17 = load i16, ptr %mode15, align 2, !dbg !283
  %conv16 = zext i16 %17 to i32, !dbg !282
  %cmp17 = icmp eq i32 %conv14, %conv16, !dbg !284
  br i1 %cmp17, label %if.then, label %lor.lhs.false19, !dbg !285

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %18 = load i16, ptr %mode.addr, align 2, !dbg !286
  %conv20 = zext i16 %18 to i32, !dbg !286
  %19 = load ptr, ptr %mi, align 4, !dbg !287
  %y21 = getelementptr inbounds %struct.mode_info, ptr %19, i32 0, i32 2, !dbg !288
  %20 = load i16, ptr %y21, align 2, !dbg !288
  %conv22 = zext i16 %20 to i32, !dbg !287
  %shl = shl i32 %conv22, 8, !dbg !289
  %21 = load ptr, ptr %mi, align 4, !dbg !290
  %x23 = getelementptr inbounds %struct.mode_info, ptr %21, i32 0, i32 1, !dbg !291
  %22 = load i16, ptr %x23, align 2, !dbg !291
  %conv24 = zext i16 %22 to i32, !dbg !290
  %add = add nsw i32 %shl, %conv24, !dbg !292
  %cmp25 = icmp eq i32 %conv20, %add, !dbg !293
  br i1 %cmp25, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %lor.lhs.false19, %lor.lhs.false, %land.lhs.true
  %23 = load ptr, ptr %mi, align 4, !dbg !295
  %mode27 = getelementptr inbounds %struct.mode_info, ptr %23, i32 0, i32 0, !dbg !297
  %24 = load i16, ptr %mode27, align 2, !dbg !297
  %25 = load ptr, ptr %real_mode.addr, align 4, !dbg !298
  store i16 %24, ptr %25, align 2, !dbg !299
  %26 = load ptr, ptr %card, align 4, !dbg !300
  %set_mode = getelementptr inbounds %struct.card_info, ptr %26, i32 0, i32 1, !dbg !301
  %27 = load ptr, ptr %set_mode, align 4, !dbg !301
  %28 = load ptr, ptr %mi, align 4, !dbg !302
  %call = call i32 %27(ptr inreg noundef %28) #6, !dbg !300
  store i32 %call, ptr %retval, align 4, !dbg !303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !303

if.end:                                           ; preds = %lor.lhs.false19
  %29 = load i32, ptr %visible, align 4, !dbg !304
  %tobool28 = icmp ne i32 %29, 0, !dbg !304
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !306

if.then29:                                        ; preds = %if.end
  %30 = load i32, ptr %nmode, align 4, !dbg !307
  %inc = add nsw i32 %30, 1, !dbg !307
  store i32 %inc, ptr %nmode, align 4, !dbg !307
  br label %if.end30, !dbg !308

if.end30:                                         ; preds = %if.then29, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !309
  br label %cleanup, !dbg !309

cleanup:                                          ; preds = %if.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %visible) #5, !dbg !309
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup62 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !310

for.inc:                                          ; preds = %cleanup.cont
  %31 = load i32, ptr %i, align 4, !dbg !311
  %inc31 = add nsw i32 %31, 1, !dbg !311
  store i32 %inc31, ptr %i, align 4, !dbg !311
  %32 = load ptr, ptr %mi, align 4, !dbg !312
  %incdec.ptr = getelementptr inbounds %struct.mode_info, ptr %32, i32 1, !dbg !312
  store ptr %incdec.ptr, ptr %mi, align 4, !dbg !312
  br label %for.cond3, !dbg !313, !llvm.loop !314

for.end:                                          ; preds = %for.cond3
  br label %for.inc32, !dbg !316

for.inc32:                                        ; preds = %for.end
  %33 = load ptr, ptr %card, align 4, !dbg !317
  %incdec.ptr33 = getelementptr inbounds %struct.card_info, ptr %33, i32 1, !dbg !317
  store ptr %incdec.ptr33, ptr %card, align 4, !dbg !317
  br label %for.cond, !dbg !318, !llvm.loop !319

for.end34:                                        ; preds = %for.cond
  store ptr @video_cards, ptr %card, align 4, !dbg !321
  br label %for.cond35, !dbg !322

for.cond35:                                       ; preds = %for.inc59, %for.end34
  %34 = load ptr, ptr %card, align 4, !dbg !323
  %cmp36 = icmp ult ptr %34, @video_cards_end, !dbg !324
  br i1 %cmp36, label %for.body38, label %for.end61, !dbg !325

for.body38:                                       ; preds = %for.cond35
  %35 = load i16, ptr %mode.addr, align 2, !dbg !326
  %conv39 = zext i16 %35 to i32, !dbg !326
  %36 = load ptr, ptr %card, align 4, !dbg !327
  %xmode_first = getelementptr inbounds %struct.card_info, ptr %36, i32 0, i32 6, !dbg !328
  %37 = load i16, ptr %xmode_first, align 4, !dbg !328
  %conv40 = zext i16 %37 to i32, !dbg !327
  %cmp41 = icmp sge i32 %conv39, %conv40, !dbg !329
  br i1 %cmp41, label %land.lhs.true43, label %if.end58, !dbg !330

land.lhs.true43:                                  ; preds = %for.body38
  %38 = load i16, ptr %mode.addr, align 2, !dbg !331
  %conv44 = zext i16 %38 to i32, !dbg !331
  %39 = load ptr, ptr %card, align 4, !dbg !332
  %xmode_first45 = getelementptr inbounds %struct.card_info, ptr %39, i32 0, i32 6, !dbg !333
  %40 = load i16, ptr %xmode_first45, align 4, !dbg !333
  %conv46 = zext i16 %40 to i32, !dbg !332
  %41 = load ptr, ptr %card, align 4, !dbg !334
  %xmode_n = getelementptr inbounds %struct.card_info, ptr %41, i32 0, i32 7, !dbg !335
  %42 = load i16, ptr %xmode_n, align 2, !dbg !335
  %conv47 = zext i16 %42 to i32, !dbg !334
  %add48 = add nsw i32 %conv46, %conv47, !dbg !336
  %cmp49 = icmp slt i32 %conv44, %add48, !dbg !337
  br i1 %cmp49, label %if.then51, label %if.end58, !dbg !338

if.then51:                                        ; preds = %land.lhs.true43
  call void @llvm.lifetime.start.p0(i64 8, ptr %mix) #5, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %mix, metadata !235, metadata !DIExpression()), !dbg !340
  %43 = load i16, ptr %mode.addr, align 2, !dbg !341
  %mode52 = getelementptr inbounds %struct.mode_info, ptr %mix, i32 0, i32 0, !dbg !342
  store i16 %43, ptr %mode52, align 2, !dbg !343
  %44 = load ptr, ptr %real_mode.addr, align 4, !dbg !344
  store i16 %43, ptr %44, align 2, !dbg !345
  %y53 = getelementptr inbounds %struct.mode_info, ptr %mix, i32 0, i32 2, !dbg !346
  store i16 0, ptr %y53, align 2, !dbg !347
  %x54 = getelementptr inbounds %struct.mode_info, ptr %mix, i32 0, i32 1, !dbg !348
  store i16 0, ptr %x54, align 2, !dbg !349
  %45 = load ptr, ptr %card, align 4, !dbg !350
  %set_mode55 = getelementptr inbounds %struct.card_info, ptr %45, i32 0, i32 1, !dbg !351
  %46 = load ptr, ptr %set_mode55, align 4, !dbg !351
  %call56 = call i32 %46(ptr inreg noundef %mix) #6, !dbg !350
  store i32 %call56, ptr %retval, align 4, !dbg !352
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mix) #5, !dbg !353
  br label %cleanup62

if.end58:                                         ; preds = %land.lhs.true43, %for.body38
  br label %for.inc59, !dbg !354

for.inc59:                                        ; preds = %if.end58
  %47 = load ptr, ptr %card, align 4, !dbg !355
  %incdec.ptr60 = getelementptr inbounds %struct.card_info, ptr %47, i32 1, !dbg !355
  store ptr %incdec.ptr60, ptr %card, align 4, !dbg !355
  br label %for.cond35, !dbg !356, !llvm.loop !357

for.end61:                                        ; preds = %for.cond35
  store i32 -1, ptr %retval, align 4, !dbg !359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup62, !dbg !359

cleanup62:                                        ; preds = %for.end61, %if.then51, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #5, !dbg !360
  call void @llvm.lifetime.end.p0(i64 4, ptr %card) #5, !dbg !360
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !360
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmode) #5, !dbg !360
  %48 = load i32, ptr %retval, align 4, !dbg !360
  ret i32 %48, !dbg !360
}

; Function Attrs: nounwind
define internal void @vga_recalc_vertical() #0 !dbg !361 {
entry:
  %font_size = alloca i32, align 4
  %rows = alloca i32, align 4
  %crtc = alloca i16, align 2
  %pt = alloca i8, align 1
  %ov = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %font_size) #5, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %font_size, metadata !365, metadata !DIExpression()), !dbg !372
  call void @llvm.lifetime.start.p0(i64 4, ptr %rows) #5, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %rows, metadata !367, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 2, ptr %crtc) #5, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !368, metadata !DIExpression()), !dbg !375
  call void @llvm.lifetime.start.p0(i64 1, ptr %pt) #5, !dbg !376
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !369, metadata !DIExpression()), !dbg !377
  call void @llvm.lifetime.start.p0(i64 1, ptr %ov) #5, !dbg !376
  call void @llvm.dbg.declare(metadata ptr %ov, metadata !370, metadata !DIExpression()), !dbg !378
  call void @set_fs(i16 inreg noundef zeroext 0) #6, !dbg !379
  %call = call zeroext i8 @rdfs8(i32 inreg noundef 1157) #6, !dbg !380
  %conv = zext i8 %call to i32, !dbg !380
  store i32 %conv, ptr %font_size, align 4, !dbg !381
  %0 = load i32, ptr @force_y, align 4, !dbg !382
  %tobool = icmp ne i32 %0, 0, !dbg !382
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !382

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr @force_y, align 4, !dbg !383
  br label %cond.end, !dbg !382

cond.false:                                       ; preds = %entry
  %call1 = call zeroext i8 @rdfs8(i32 inreg noundef 1156) #6, !dbg !384
  %conv2 = zext i8 %call1 to i32, !dbg !384
  %add = add nsw i32 %conv2, 1, !dbg !385
  br label %cond.end, !dbg !382

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %add, %cond.false ], !dbg !382
  store i32 %cond, ptr %rows, align 4, !dbg !386
  %2 = load i32, ptr %font_size, align 4, !dbg !387
  %3 = load i32, ptr %rows, align 4, !dbg !388
  %mul = mul i32 %3, %2, !dbg !388
  store i32 %mul, ptr %rows, align 4, !dbg !388
  %4 = load i32, ptr %rows, align 4, !dbg !389
  %dec = add i32 %4, -1, !dbg !389
  store i32 %dec, ptr %rows, align 4, !dbg !389
  %call3 = call zeroext i16 @vga_crtc() #6, !dbg !390
  store i16 %call3, ptr %crtc, align 2, !dbg !391
  %5 = load i16, ptr %crtc, align 2, !dbg !392
  %call4 = call zeroext i8 @in_idx(i16 inreg noundef zeroext %5, i8 inreg noundef zeroext 17) #6, !dbg !393
  store i8 %call4, ptr %pt, align 1, !dbg !394
  %6 = load i8, ptr %pt, align 1, !dbg !395
  %conv5 = zext i8 %6 to i32, !dbg !395
  %and = and i32 %conv5, -129, !dbg !395
  %conv6 = trunc i32 %and to i8, !dbg !395
  store i8 %conv6, ptr %pt, align 1, !dbg !395
  %7 = load i8, ptr %pt, align 1, !dbg !396
  %8 = load i16, ptr %crtc, align 2, !dbg !397
  call void @out_idx(i8 inreg noundef zeroext %7, i16 inreg noundef zeroext %8, i8 inreg noundef zeroext 17) #6, !dbg !398
  %9 = load i32, ptr %rows, align 4, !dbg !399
  %conv7 = trunc i32 %9 to i8, !dbg !400
  %10 = load i16, ptr %crtc, align 2, !dbg !401
  call void @out_idx(i8 inreg noundef zeroext %conv7, i16 inreg noundef zeroext %10, i8 inreg noundef zeroext 18) #6, !dbg !402
  %11 = load i16, ptr %crtc, align 2, !dbg !403
  %call8 = call zeroext i8 @in_idx(i16 inreg noundef zeroext %11, i8 inreg noundef zeroext 7) #6, !dbg !404
  store i8 %call8, ptr %ov, align 1, !dbg !405
  %12 = load i8, ptr %ov, align 1, !dbg !406
  %conv9 = zext i8 %12 to i32, !dbg !406
  %and10 = and i32 %conv9, 189, !dbg !406
  %conv11 = trunc i32 %and10 to i8, !dbg !406
  store i8 %conv11, ptr %ov, align 1, !dbg !406
  %13 = load i32, ptr %rows, align 4, !dbg !407
  %shr = lshr i32 %13, 7, !dbg !408
  %and12 = and i32 %shr, 2, !dbg !409
  %14 = load i8, ptr %ov, align 1, !dbg !410
  %conv13 = zext i8 %14 to i32, !dbg !410
  %or = or i32 %conv13, %and12, !dbg !410
  %conv14 = trunc i32 %or to i8, !dbg !410
  store i8 %conv14, ptr %ov, align 1, !dbg !410
  %15 = load i32, ptr %rows, align 4, !dbg !411
  %shr15 = lshr i32 %15, 3, !dbg !412
  %and16 = and i32 %shr15, 64, !dbg !413
  %16 = load i8, ptr %ov, align 1, !dbg !414
  %conv17 = zext i8 %16 to i32, !dbg !414
  %or18 = or i32 %conv17, %and16, !dbg !414
  %conv19 = trunc i32 %or18 to i8, !dbg !414
  store i8 %conv19, ptr %ov, align 1, !dbg !414
  %17 = load i8, ptr %ov, align 1, !dbg !415
  %18 = load i16, ptr %crtc, align 2, !dbg !416
  call void @out_idx(i8 inreg noundef zeroext %17, i16 inreg noundef zeroext %18, i8 inreg noundef zeroext 7) #6, !dbg !417
  call void @llvm.lifetime.end.p0(i64 1, ptr %ov) #5, !dbg !418
  call void @llvm.lifetime.end.p0(i64 1, ptr %pt) #5, !dbg !418
  call void @llvm.lifetime.end.p0(i64 2, ptr %crtc) #5, !dbg !418
  call void @llvm.lifetime.end.p0(i64 4, ptr %rows) #5, !dbg !418
  call void @llvm.lifetime.end.p0(i64 4, ptr %font_size) #5, !dbg !418
  ret void, !dbg !418
}

; Function Attrs: inlinehint nounwind
define internal void @set_fs(i16 inreg noundef zeroext %seg) #3 !dbg !419 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i16, ptr %seg.addr, align 2, !dbg !426
  call void asm sideeffect "movw $0,%fs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #5, !dbg !427, !srcloc !428
  ret void, !dbg !429
}

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @rdfs8(i32 inreg noundef %addr) #3 !dbg !430 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i8, align 1
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !435, metadata !DIExpression()), !dbg !440
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #5, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !436, metadata !DIExpression()), !dbg !442
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #5, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !437, metadata !DIExpression()), !dbg !443
  %0 = load i32, ptr %addr.addr, align 4, !dbg !443
  %1 = inttoptr i32 %0 to ptr, !dbg !443
  %2 = ptrtoint ptr %1 to i32, !dbg !443
  store i32 %2, ptr %__ptr, align 4, !dbg !443
  %3 = load i32, ptr %__ptr, align 4, !dbg !443
  %add = add i32 %3, 0, !dbg !443
  %4 = inttoptr i32 %add to ptr, !dbg !443
  store ptr %4, ptr %tmp, align 4, !dbg !443
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #5, !dbg !444
  %5 = load ptr, ptr %tmp, align 4, !dbg !443
  store ptr %5, ptr %ptr, align 4, !dbg !442
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #5, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %v, metadata !439, metadata !DIExpression()), !dbg !446
  %6 = load ptr, ptr %ptr, align 4, !dbg !447
  %7 = call i8 asm sideeffect "movb %fs:$1,$0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %6) #5, !dbg !448, !srcloc !449
  store i8 %7, ptr %v, align 1, !dbg !448
  %8 = load i8, ptr %v, align 1, !dbg !450
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #5, !dbg !451
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #5, !dbg !451
  ret i8 %8, !dbg !452
}

declare !dbg !453 dso_local zeroext i16 @vga_crtc() #4

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @in_idx(i16 inreg noundef zeroext %port, i8 inreg noundef zeroext %index) #3 !dbg !456 {
entry:
  %port.addr = alloca i16, align 2
  %index.addr = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !460, metadata !DIExpression()), !dbg !462
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !461, metadata !DIExpression()), !dbg !463
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !464
  %1 = load i8, ptr %index.addr, align 1, !dbg !465
  %2 = load i16, ptr %port.addr, align 2, !dbg !466
  call void %0(i8 inreg noundef zeroext %1, i16 inreg noundef zeroext %2) #6, !dbg !464
  %3 = load ptr, ptr @pio_ops, align 4, !dbg !467
  %4 = load i16, ptr %port.addr, align 2, !dbg !468
  %conv = zext i16 %4 to i32, !dbg !468
  %add = add nsw i32 %conv, 1, !dbg !469
  %conv1 = trunc i32 %add to i16, !dbg !468
  %call = call zeroext i8 %3(i16 inreg noundef zeroext %conv1) #6, !dbg !467
  ret i8 %call, !dbg !470
}

; Function Attrs: inlinehint nounwind
define internal void @out_idx(i8 inreg noundef zeroext %v, i16 inreg noundef zeroext %port, i8 inreg noundef zeroext %index) #3 !dbg !471 {
entry:
  %v.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  %index.addr = alloca i8, align 1
  store i8 %v, ptr %v.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !475, metadata !DIExpression()), !dbg !478
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !476, metadata !DIExpression()), !dbg !479
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !477, metadata !DIExpression()), !dbg !480
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 2), align 4, !dbg !481
  %1 = load i8, ptr %index.addr, align 1, !dbg !482
  %conv = zext i8 %1 to i32, !dbg !482
  %2 = load i8, ptr %v.addr, align 1, !dbg !483
  %conv1 = zext i8 %2 to i32, !dbg !483
  %shl = shl i32 %conv1, 8, !dbg !484
  %add = add nsw i32 %conv, %shl, !dbg !485
  %conv2 = trunc i32 %add to i16, !dbg !482
  %3 = load i16, ptr %port.addr, align 2, !dbg !486
  call void %0(i16 inreg noundef zeroext %conv2, i16 inreg noundef zeroext %3) #6, !dbg !481
  ret void, !dbg !487
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "probed", scope: !2, file: !3, line: 34, type: !63, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "probe_cards", scope: !3, file: !3, line: 31, type: !4, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !29)
!3 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/video-mode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbfff206836f69f771af86d9ba067d0")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/realmode/rm/.video-mode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -D _WAKEUP -I ./arch/x86/boot -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/realmode/rm/video-mode\22 -D KBUILD_BASENAME=\22video_mode\22 -D KBUILD_MODNAME=\22video_mode\22 -D __KBUILD_MODNAME=kmod_video_mode -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/realmode/rm/video-mode.ll arch/x86/realmode/rm/video-mode.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !9, globals: !18, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "arch/x86/realmode/rm/video-mode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e9afc28400d76b99a396c220fe48bc2")
!9 = !{!10, !15, !16, !17}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !11, line: 17, baseType: !12)
!11 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !13, line: 21, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!16 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!18 = !{!0, !19, !21, !23, !25, !27}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "adapter", scope: !7, file: !3, line: 25, type: !6, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "force_x", scope: !7, file: !3, line: 26, type: !6, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "force_y", scope: !7, file: !3, line: 26, type: !6, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "do_restore", scope: !7, file: !3, line: 27, type: !6, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "graphic_mode", scope: !7, file: !3, line: 28, type: !6, isLocal: false, isDefinition: true)
!29 = !{!30, !31}
!30 = !DILocalVariable(name: "unsafe", arg: 1, scope: !2, file: !3, line: 31, type: !6)
!31 = !DILocalVariable(name: "card", scope: !2, file: !3, line: 33, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 32)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_info", file: !34, line: 70, size: 224, elements: !35)
!34 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/video.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e17e471001fcbd7daaae50249ab4298")
!35 = !{!36, !40, !54, !58, !59, !60, !61, !62}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !33, file: !34, line: 71, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !33, file: !34, line: 72, baseType: !41, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!42 = !DISubroutineType(types: !43)
!43 = !{!6, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_info", file: !34, line: 64, size: 64, elements: !46)
!46 = !{!47, !51, !52, !53}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !45, file: !34, line: 65, baseType: !48, size: 16)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !11, line: 19, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !13, line: 24, baseType: !50)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !45, file: !34, line: 66, baseType: !48, size: 16, offset: 16)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !45, file: !34, line: 66, baseType: !48, size: 16, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !45, file: !34, line: 67, baseType: !48, size: 16, offset: 48)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !33, file: !34, line: 73, baseType: !55, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!56 = !DISubroutineType(types: !57)
!57 = !{!6}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !33, file: !34, line: 74, baseType: !44, size: 32, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "nmodes", scope: !33, file: !34, line: 75, baseType: !6, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !33, file: !34, line: 76, baseType: !6, size: 32, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_first", scope: !33, file: !34, line: 77, baseType: !48, size: 16, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_n", scope: !33, file: !34, line: 78, baseType: !48, size: 16, offset: 208)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 2)
!66 = !{i32 1, !"NumRegisterParameters", i32 3}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 1, !"override-stack-alignment", i32 4}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = !DILocation(line: 31, column: 22, scope: !2)
!73 = !DILocation(line: 33, column: 2, scope: !2)
!74 = !DILocation(line: 33, column: 20, scope: !2)
!75 = !DILocation(line: 36, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !2, file: !3, line: 36, column: 6)
!77 = !DILocation(line: 36, column: 6, scope: !76)
!78 = !DILocation(line: 36, column: 6, scope: !2)
!79 = !DILocation(line: 37, column: 3, scope: !76)
!80 = !DILocation(line: 39, column: 9, scope: !2)
!81 = !DILocation(line: 39, column: 2, scope: !2)
!82 = !DILocation(line: 39, column: 17, scope: !2)
!83 = !DILocation(line: 41, column: 12, scope: !84)
!84 = distinct !DILexicalBlock(scope: !2, file: !3, line: 41, column: 2)
!85 = !DILocation(line: 41, column: 7, scope: !84)
!86 = !DILocation(line: 41, column: 27, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !3, line: 41, column: 2)
!88 = !DILocation(line: 41, column: 32, scope: !87)
!89 = !DILocation(line: 41, column: 2, scope: !84)
!90 = !DILocation(line: 42, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 42, column: 7)
!92 = distinct !DILexicalBlock(scope: !87, file: !3, line: 41, column: 59)
!93 = !DILocation(line: 42, column: 13, scope: !91)
!94 = !DILocation(line: 42, column: 23, scope: !91)
!95 = !DILocation(line: 42, column: 20, scope: !91)
!96 = !DILocation(line: 42, column: 7, scope: !92)
!97 = !DILocation(line: 43, column: 8, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 43, column: 8)
!99 = distinct !DILexicalBlock(scope: !91, file: !3, line: 42, column: 31)
!100 = !DILocation(line: 43, column: 14, scope: !98)
!101 = !DILocation(line: 43, column: 8, scope: !99)
!102 = !DILocation(line: 44, column: 20, scope: !98)
!103 = !DILocation(line: 44, column: 26, scope: !98)
!104 = !DILocation(line: 44, column: 5, scope: !98)
!105 = !DILocation(line: 44, column: 11, scope: !98)
!106 = !DILocation(line: 44, column: 18, scope: !98)
!107 = !DILocation(line: 46, column: 5, scope: !98)
!108 = !DILocation(line: 46, column: 11, scope: !98)
!109 = !DILocation(line: 46, column: 18, scope: !98)
!110 = !DILocation(line: 47, column: 3, scope: !99)
!111 = !DILocation(line: 48, column: 2, scope: !92)
!112 = !DILocation(line: 41, column: 55, scope: !87)
!113 = !DILocation(line: 41, column: 2, scope: !87)
!114 = distinct !{!114, !89, !115, !116, !117}
!115 = !DILocation(line: 48, column: 2, scope: !84)
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!"llvm.loop.unroll.disable"}
!118 = !DILocation(line: 49, column: 1, scope: !2)
!119 = distinct !DISubprogram(name: "mode_defined", scope: !3, file: !3, line: 52, type: !120, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!6, !48}
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(name: "mode", arg: 1, scope: !119, file: !3, line: 52, type: !48)
!124 = !DILocalVariable(name: "card", scope: !119, file: !3, line: 54, type: !32)
!125 = !DILocalVariable(name: "mi", scope: !119, file: !3, line: 55, type: !44)
!126 = !DILocalVariable(name: "i", scope: !119, file: !3, line: 56, type: !6)
!127 = !DILocation(line: 52, column: 22, scope: !119)
!128 = !DILocation(line: 54, column: 2, scope: !119)
!129 = !DILocation(line: 54, column: 20, scope: !119)
!130 = !DILocation(line: 55, column: 2, scope: !119)
!131 = !DILocation(line: 55, column: 20, scope: !119)
!132 = !DILocation(line: 56, column: 2, scope: !119)
!133 = !DILocation(line: 56, column: 6, scope: !119)
!134 = !DILocation(line: 58, column: 12, scope: !135)
!135 = distinct !DILexicalBlock(scope: !119, file: !3, line: 58, column: 2)
!136 = !DILocation(line: 58, column: 7, scope: !135)
!137 = !DILocation(line: 58, column: 27, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 58, column: 2)
!139 = !DILocation(line: 58, column: 32, scope: !138)
!140 = !DILocation(line: 58, column: 2, scope: !135)
!141 = !DILocation(line: 59, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !3, line: 58, column: 59)
!143 = !DILocation(line: 59, column: 14, scope: !142)
!144 = !DILocation(line: 59, column: 6, scope: !142)
!145 = !DILocation(line: 60, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 60, column: 3)
!147 = !DILocation(line: 60, column: 8, scope: !146)
!148 = !DILocation(line: 60, column: 15, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 60, column: 3)
!150 = !DILocation(line: 60, column: 19, scope: !149)
!151 = !DILocation(line: 60, column: 25, scope: !149)
!152 = !DILocation(line: 60, column: 17, scope: !149)
!153 = !DILocation(line: 60, column: 3, scope: !146)
!154 = !DILocation(line: 61, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 61, column: 8)
!156 = distinct !DILexicalBlock(scope: !149, file: !3, line: 60, column: 44)
!157 = !DILocation(line: 61, column: 12, scope: !155)
!158 = !DILocation(line: 61, column: 20, scope: !155)
!159 = !DILocation(line: 61, column: 17, scope: !155)
!160 = !DILocation(line: 61, column: 8, scope: !156)
!161 = !DILocation(line: 62, column: 5, scope: !155)
!162 = !DILocation(line: 63, column: 3, scope: !156)
!163 = !DILocation(line: 60, column: 34, scope: !149)
!164 = !DILocation(line: 60, column: 40, scope: !149)
!165 = !DILocation(line: 60, column: 3, scope: !149)
!166 = distinct !{!166, !153, !167, !116, !117}
!167 = !DILocation(line: 63, column: 3, scope: !146)
!168 = !DILocation(line: 64, column: 2, scope: !142)
!169 = !DILocation(line: 58, column: 55, scope: !138)
!170 = !DILocation(line: 58, column: 2, scope: !138)
!171 = distinct !{!171, !140, !172, !116, !117}
!172 = !DILocation(line: 64, column: 2, scope: !135)
!173 = !DILocation(line: 66, column: 2, scope: !119)
!174 = !DILocation(line: 67, column: 1, scope: !119)
!175 = distinct !DISubprogram(name: "set_mode", scope: !3, file: !3, line: 145, type: !120, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !176)
!176 = !{!177, !178, !179}
!177 = !DILocalVariable(name: "mode", arg: 1, scope: !175, file: !3, line: 145, type: !48)
!178 = !DILocalVariable(name: "rv", scope: !175, file: !3, line: 147, type: !6)
!179 = !DILocalVariable(name: "real_mode", scope: !175, file: !3, line: 148, type: !48)
!180 = !DILocation(line: 145, column: 18, scope: !175)
!181 = !DILocation(line: 147, column: 2, scope: !175)
!182 = !DILocation(line: 147, column: 6, scope: !175)
!183 = !DILocation(line: 148, column: 2, scope: !175)
!184 = !DILocation(line: 148, column: 6, scope: !175)
!185 = !DILocation(line: 151, column: 6, scope: !186)
!186 = distinct !DILexicalBlock(scope: !175, file: !3, line: 151, column: 6)
!187 = !DILocation(line: 151, column: 11, scope: !186)
!188 = !DILocation(line: 151, column: 6, scope: !175)
!189 = !DILocation(line: 152, column: 3, scope: !186)
!190 = !DILocation(line: 153, column: 11, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !3, line: 153, column: 11)
!192 = !DILocation(line: 153, column: 16, scope: !191)
!193 = !DILocation(line: 153, column: 11, scope: !186)
!194 = !DILocation(line: 154, column: 8, scope: !191)
!195 = !DILocation(line: 154, column: 3, scope: !191)
!196 = !DILocation(line: 155, column: 11, scope: !197)
!197 = distinct !DILexicalBlock(scope: !191, file: !3, line: 155, column: 11)
!198 = !DILocation(line: 155, column: 16, scope: !197)
!199 = !DILocation(line: 155, column: 11, scope: !191)
!200 = !DILocation(line: 156, column: 8, scope: !197)
!201 = !DILocation(line: 156, column: 3, scope: !197)
!202 = !DILocation(line: 158, column: 20, scope: !175)
!203 = !DILocation(line: 158, column: 7, scope: !175)
!204 = !DILocation(line: 158, column: 5, scope: !175)
!205 = !DILocation(line: 159, column: 6, scope: !206)
!206 = distinct !DILexicalBlock(scope: !175, file: !3, line: 159, column: 6)
!207 = !DILocation(line: 159, column: 6, scope: !175)
!208 = !DILocation(line: 160, column: 10, scope: !206)
!209 = !DILocation(line: 160, column: 3, scope: !206)
!210 = !DILocation(line: 162, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !175, file: !3, line: 162, column: 6)
!212 = !DILocation(line: 162, column: 11, scope: !211)
!213 = !DILocation(line: 162, column: 6, scope: !175)
!214 = !DILocation(line: 163, column: 3, scope: !211)
!215 = !DILocation(line: 170, column: 2, scope: !175)
!216 = !DILocation(line: 171, column: 1, scope: !175)
!217 = distinct !DISubprogram(name: "raw_set_mode", scope: !3, file: !3, line: 70, type: !218, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !221)
!218 = !DISubroutineType(types: !219)
!219 = !{!6, !48, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !235}
!222 = !DILocalVariable(name: "mode", arg: 1, scope: !217, file: !3, line: 70, type: !48)
!223 = !DILocalVariable(name: "real_mode", arg: 2, scope: !217, file: !3, line: 70, type: !220)
!224 = !DILocalVariable(name: "nmode", scope: !217, file: !3, line: 72, type: !6)
!225 = !DILocalVariable(name: "i", scope: !217, file: !3, line: 72, type: !6)
!226 = !DILocalVariable(name: "card", scope: !217, file: !3, line: 73, type: !32)
!227 = !DILocalVariable(name: "mi", scope: !217, file: !3, line: 74, type: !44)
!228 = !DILocalVariable(name: "visible", scope: !229, file: !3, line: 84, type: !6)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 83, column: 44)
!230 = distinct !DILexicalBlock(scope: !231, file: !3, line: 83, column: 3)
!231 = distinct !DILexicalBlock(scope: !232, file: !3, line: 83, column: 3)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 81, column: 59)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 81, column: 2)
!234 = distinct !DILexicalBlock(scope: !217, file: !3, line: 81, column: 2)
!235 = !DILocalVariable(name: "mix", scope: !236, file: !3, line: 102, type: !45)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 101, column: 47)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 100, column: 7)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 99, column: 59)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 99, column: 2)
!240 = distinct !DILexicalBlock(scope: !217, file: !3, line: 99, column: 2)
!241 = !DILocation(line: 70, column: 29, scope: !217)
!242 = !DILocation(line: 70, column: 40, scope: !217)
!243 = !DILocation(line: 72, column: 2, scope: !217)
!244 = !DILocation(line: 72, column: 6, scope: !217)
!245 = !DILocation(line: 72, column: 13, scope: !217)
!246 = !DILocation(line: 73, column: 2, scope: !217)
!247 = !DILocation(line: 73, column: 20, scope: !217)
!248 = !DILocation(line: 74, column: 2, scope: !217)
!249 = !DILocation(line: 74, column: 20, scope: !217)
!250 = !DILocation(line: 77, column: 7, scope: !217)
!251 = !DILocation(line: 80, column: 8, scope: !217)
!252 = !DILocation(line: 81, column: 12, scope: !234)
!253 = !DILocation(line: 81, column: 7, scope: !234)
!254 = !DILocation(line: 81, column: 27, scope: !233)
!255 = !DILocation(line: 81, column: 32, scope: !233)
!256 = !DILocation(line: 81, column: 2, scope: !234)
!257 = !DILocation(line: 82, column: 8, scope: !232)
!258 = !DILocation(line: 82, column: 14, scope: !232)
!259 = !DILocation(line: 82, column: 6, scope: !232)
!260 = !DILocation(line: 83, column: 10, scope: !231)
!261 = !DILocation(line: 83, column: 8, scope: !231)
!262 = !DILocation(line: 83, column: 15, scope: !230)
!263 = !DILocation(line: 83, column: 19, scope: !230)
!264 = !DILocation(line: 83, column: 25, scope: !230)
!265 = !DILocation(line: 83, column: 17, scope: !230)
!266 = !DILocation(line: 83, column: 3, scope: !231)
!267 = !DILocation(line: 84, column: 4, scope: !229)
!268 = !DILocation(line: 84, column: 8, scope: !229)
!269 = !DILocation(line: 84, column: 18, scope: !229)
!270 = !DILocation(line: 84, column: 22, scope: !229)
!271 = !DILocation(line: 84, column: 24, scope: !229)
!272 = !DILocation(line: 84, column: 27, scope: !229)
!273 = !DILocation(line: 84, column: 31, scope: !229)
!274 = !DILocation(line: 86, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !229, file: !3, line: 86, column: 8)
!276 = !DILocation(line: 86, column: 17, scope: !275)
!277 = !DILocation(line: 86, column: 14, scope: !275)
!278 = !DILocation(line: 86, column: 23, scope: !275)
!279 = !DILocation(line: 86, column: 26, scope: !275)
!280 = !DILocation(line: 86, column: 35, scope: !275)
!281 = !DILocation(line: 87, column: 8, scope: !275)
!282 = !DILocation(line: 87, column: 16, scope: !275)
!283 = !DILocation(line: 87, column: 20, scope: !275)
!284 = !DILocation(line: 87, column: 13, scope: !275)
!285 = !DILocation(line: 87, column: 25, scope: !275)
!286 = !DILocation(line: 88, column: 8, scope: !275)
!287 = !DILocation(line: 88, column: 17, scope: !275)
!288 = !DILocation(line: 88, column: 21, scope: !275)
!289 = !DILocation(line: 88, column: 23, scope: !275)
!290 = !DILocation(line: 88, column: 29, scope: !275)
!291 = !DILocation(line: 88, column: 33, scope: !275)
!292 = !DILocation(line: 88, column: 28, scope: !275)
!293 = !DILocation(line: 88, column: 13, scope: !275)
!294 = !DILocation(line: 86, column: 8, scope: !229)
!295 = !DILocation(line: 89, column: 18, scope: !296)
!296 = distinct !DILexicalBlock(scope: !275, file: !3, line: 88, column: 36)
!297 = !DILocation(line: 89, column: 22, scope: !296)
!298 = !DILocation(line: 89, column: 6, scope: !296)
!299 = !DILocation(line: 89, column: 16, scope: !296)
!300 = !DILocation(line: 90, column: 12, scope: !296)
!301 = !DILocation(line: 90, column: 18, scope: !296)
!302 = !DILocation(line: 90, column: 27, scope: !296)
!303 = !DILocation(line: 90, column: 5, scope: !296)
!304 = !DILocation(line: 93, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !229, file: !3, line: 93, column: 8)
!306 = !DILocation(line: 93, column: 8, scope: !229)
!307 = !DILocation(line: 94, column: 10, scope: !305)
!308 = !DILocation(line: 94, column: 5, scope: !305)
!309 = !DILocation(line: 95, column: 3, scope: !230)
!310 = !DILocation(line: 95, column: 3, scope: !229)
!311 = !DILocation(line: 83, column: 34, scope: !230)
!312 = !DILocation(line: 83, column: 40, scope: !230)
!313 = !DILocation(line: 83, column: 3, scope: !230)
!314 = distinct !{!314, !266, !315, !116, !117}
!315 = !DILocation(line: 95, column: 3, scope: !231)
!316 = !DILocation(line: 96, column: 2, scope: !232)
!317 = !DILocation(line: 81, column: 55, scope: !233)
!318 = !DILocation(line: 81, column: 2, scope: !233)
!319 = distinct !{!319, !256, !320, !116, !117}
!320 = !DILocation(line: 96, column: 2, scope: !234)
!321 = !DILocation(line: 99, column: 12, scope: !240)
!322 = !DILocation(line: 99, column: 7, scope: !240)
!323 = !DILocation(line: 99, column: 27, scope: !239)
!324 = !DILocation(line: 99, column: 32, scope: !239)
!325 = !DILocation(line: 99, column: 2, scope: !240)
!326 = !DILocation(line: 100, column: 7, scope: !237)
!327 = !DILocation(line: 100, column: 15, scope: !237)
!328 = !DILocation(line: 100, column: 21, scope: !237)
!329 = !DILocation(line: 100, column: 12, scope: !237)
!330 = !DILocation(line: 100, column: 33, scope: !237)
!331 = !DILocation(line: 101, column: 7, scope: !237)
!332 = !DILocation(line: 101, column: 14, scope: !237)
!333 = !DILocation(line: 101, column: 20, scope: !237)
!334 = !DILocation(line: 101, column: 32, scope: !237)
!335 = !DILocation(line: 101, column: 38, scope: !237)
!336 = !DILocation(line: 101, column: 31, scope: !237)
!337 = !DILocation(line: 101, column: 12, scope: !237)
!338 = !DILocation(line: 100, column: 7, scope: !238)
!339 = !DILocation(line: 102, column: 4, scope: !236)
!340 = !DILocation(line: 102, column: 21, scope: !236)
!341 = !DILocation(line: 103, column: 28, scope: !236)
!342 = !DILocation(line: 103, column: 21, scope: !236)
!343 = !DILocation(line: 103, column: 26, scope: !236)
!344 = !DILocation(line: 103, column: 5, scope: !236)
!345 = !DILocation(line: 103, column: 15, scope: !236)
!346 = !DILocation(line: 104, column: 16, scope: !236)
!347 = !DILocation(line: 104, column: 18, scope: !236)
!348 = !DILocation(line: 104, column: 8, scope: !236)
!349 = !DILocation(line: 104, column: 10, scope: !236)
!350 = !DILocation(line: 105, column: 11, scope: !236)
!351 = !DILocation(line: 105, column: 17, scope: !236)
!352 = !DILocation(line: 105, column: 4, scope: !236)
!353 = !DILocation(line: 106, column: 3, scope: !237)
!354 = !DILocation(line: 107, column: 2, scope: !238)
!355 = !DILocation(line: 99, column: 55, scope: !239)
!356 = !DILocation(line: 99, column: 2, scope: !239)
!357 = distinct !{!357, !325, !358, !116, !117}
!358 = !DILocation(line: 107, column: 2, scope: !240)
!359 = !DILocation(line: 110, column: 2, scope: !217)
!360 = !DILocation(line: 111, column: 1, scope: !217)
!361 = distinct !DISubprogram(name: "vga_recalc_vertical", scope: !3, file: !3, line: 116, type: !362, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{null}
!364 = !{!365, !367, !368, !369, !370}
!365 = !DILocalVariable(name: "font_size", scope: !361, file: !3, line: 118, type: !366)
!366 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!367 = !DILocalVariable(name: "rows", scope: !361, file: !3, line: 118, type: !366)
!368 = !DILocalVariable(name: "crtc", scope: !361, file: !3, line: 119, type: !48)
!369 = !DILocalVariable(name: "pt", scope: !361, file: !3, line: 120, type: !10)
!370 = !DILocalVariable(name: "ov", scope: !361, file: !3, line: 120, type: !10)
!371 = !DILocation(line: 118, column: 2, scope: !361)
!372 = !DILocation(line: 118, column: 15, scope: !361)
!373 = !DILocation(line: 118, column: 26, scope: !361)
!374 = !DILocation(line: 119, column: 2, scope: !361)
!375 = !DILocation(line: 119, column: 6, scope: !361)
!376 = !DILocation(line: 120, column: 2, scope: !361)
!377 = !DILocation(line: 120, column: 5, scope: !361)
!378 = !DILocation(line: 120, column: 9, scope: !361)
!379 = !DILocation(line: 122, column: 2, scope: !361)
!380 = !DILocation(line: 123, column: 14, scope: !361)
!381 = !DILocation(line: 123, column: 12, scope: !361)
!382 = !DILocation(line: 124, column: 9, scope: !361)
!383 = !DILocation(line: 124, column: 19, scope: !361)
!384 = !DILocation(line: 124, column: 29, scope: !361)
!385 = !DILocation(line: 124, column: 41, scope: !361)
!386 = !DILocation(line: 124, column: 7, scope: !361)
!387 = !DILocation(line: 126, column: 10, scope: !361)
!388 = !DILocation(line: 126, column: 7, scope: !361)
!389 = !DILocation(line: 127, column: 6, scope: !361)
!390 = !DILocation(line: 129, column: 9, scope: !361)
!391 = !DILocation(line: 129, column: 7, scope: !361)
!392 = !DILocation(line: 131, column: 14, scope: !361)
!393 = !DILocation(line: 131, column: 7, scope: !361)
!394 = !DILocation(line: 131, column: 5, scope: !361)
!395 = !DILocation(line: 132, column: 5, scope: !361)
!396 = !DILocation(line: 133, column: 10, scope: !361)
!397 = !DILocation(line: 133, column: 14, scope: !361)
!398 = !DILocation(line: 133, column: 2, scope: !361)
!399 = !DILocation(line: 135, column: 14, scope: !361)
!400 = !DILocation(line: 135, column: 10, scope: !361)
!401 = !DILocation(line: 135, column: 20, scope: !361)
!402 = !DILocation(line: 135, column: 2, scope: !361)
!403 = !DILocation(line: 137, column: 14, scope: !361)
!404 = !DILocation(line: 137, column: 7, scope: !361)
!405 = !DILocation(line: 137, column: 5, scope: !361)
!406 = !DILocation(line: 138, column: 5, scope: !361)
!407 = !DILocation(line: 139, column: 9, scope: !361)
!408 = !DILocation(line: 139, column: 14, scope: !361)
!409 = !DILocation(line: 139, column: 24, scope: !361)
!410 = !DILocation(line: 139, column: 5, scope: !361)
!411 = !DILocation(line: 140, column: 9, scope: !361)
!412 = !DILocation(line: 140, column: 14, scope: !361)
!413 = !DILocation(line: 140, column: 24, scope: !361)
!414 = !DILocation(line: 140, column: 5, scope: !361)
!415 = !DILocation(line: 141, column: 10, scope: !361)
!416 = !DILocation(line: 141, column: 14, scope: !361)
!417 = !DILocation(line: 141, column: 2, scope: !361)
!418 = !DILocation(line: 142, column: 1, scope: !361)
!419 = distinct !DISubprogram(name: "set_fs", scope: !420, file: !420, line: 54, type: !421, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !423)
!420 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!421 = !DISubroutineType(types: !422)
!422 = !{null, !48}
!423 = !{!424}
!424 = !DILocalVariable(name: "seg", arg: 1, scope: !419, file: !420, line: 54, type: !48)
!425 = !DILocation(line: 54, column: 31, scope: !419)
!426 = !DILocation(line: 56, column: 40, scope: !419)
!427 = !DILocation(line: 56, column: 2, scope: !419)
!428 = !{i64 116052}
!429 = !DILocation(line: 57, column: 1, scope: !419)
!430 = distinct !DISubprogram(name: "rdfs8", scope: !420, file: !420, line: 78, type: !431, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !434)
!431 = !DISubroutineType(types: !432)
!432 = !{!10, !433}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !420, line: 76, baseType: !366)
!434 = !{!435, !436, !437, !439}
!435 = !DILocalVariable(name: "addr", arg: 1, scope: !430, file: !420, line: 78, type: !433)
!436 = !DILocalVariable(name: "ptr", scope: !430, file: !420, line: 80, type: !15)
!437 = !DILocalVariable(name: "__ptr", scope: !438, file: !420, line: 80, type: !16)
!438 = distinct !DILexicalBlock(scope: !430, file: !420, line: 80, column: 18)
!439 = !DILocalVariable(name: "v", scope: !430, file: !420, line: 81, type: !10)
!440 = !DILocation(line: 78, column: 31, scope: !430)
!441 = !DILocation(line: 80, column: 2, scope: !430)
!442 = !DILocation(line: 80, column: 6, scope: !430)
!443 = !DILocation(line: 80, column: 18, scope: !438)
!444 = !DILocation(line: 80, column: 18, scope: !430)
!445 = !DILocation(line: 81, column: 2, scope: !430)
!446 = !DILocation(line: 81, column: 5, scope: !430)
!447 = !DILocation(line: 82, column: 52, scope: !430)
!448 = !DILocation(line: 82, column: 2, scope: !430)
!449 = !{i64 116501}
!450 = !DILocation(line: 83, column: 9, scope: !430)
!451 = !DILocation(line: 84, column: 1, scope: !430)
!452 = !DILocation(line: 83, column: 2, scope: !430)
!453 = !DISubprogram(name: "vga_crtc", scope: !34, file: !34, line: 116, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{!48}
!456 = distinct !DISubprogram(name: "in_idx", scope: !34, file: !34, line: 97, type: !457, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!10, !48, !10}
!459 = !{!460, !461}
!460 = !DILocalVariable(name: "port", arg: 1, scope: !456, file: !34, line: 97, type: !48)
!461 = !DILocalVariable(name: "index", arg: 2, scope: !456, file: !34, line: 97, type: !10)
!462 = !DILocation(line: 97, column: 29, scope: !456)
!463 = !DILocation(line: 97, column: 38, scope: !456)
!464 = !DILocation(line: 99, column: 2, scope: !456)
!465 = !DILocation(line: 99, column: 7, scope: !456)
!466 = !DILocation(line: 99, column: 14, scope: !456)
!467 = !DILocation(line: 100, column: 9, scope: !456)
!468 = !DILocation(line: 100, column: 13, scope: !456)
!469 = !DILocation(line: 100, column: 17, scope: !456)
!470 = !DILocation(line: 100, column: 2, scope: !456)
!471 = distinct !DISubprogram(name: "out_idx", scope: !34, file: !34, line: 103, type: !472, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !10, !48, !10}
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(name: "v", arg: 1, scope: !471, file: !34, line: 103, type: !10)
!476 = !DILocalVariable(name: "port", arg: 2, scope: !471, file: !34, line: 103, type: !48)
!477 = !DILocalVariable(name: "index", arg: 3, scope: !471, file: !34, line: 103, type: !10)
!478 = !DILocation(line: 103, column: 31, scope: !471)
!479 = !DILocation(line: 103, column: 38, scope: !471)
!480 = !DILocation(line: 103, column: 47, scope: !471)
!481 = !DILocation(line: 105, column: 2, scope: !471)
!482 = !DILocation(line: 105, column: 7, scope: !471)
!483 = !DILocation(line: 105, column: 14, scope: !471)
!484 = !DILocation(line: 105, column: 16, scope: !471)
!485 = !DILocation(line: 105, column: 12, scope: !471)
!486 = !DILocation(line: 105, column: 23, scope: !471)
!487 = !DILocation(line: 106, column: 1, scope: !471)
