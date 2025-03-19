; ModuleID = 'arch/x86/realmode/rm/video-bios.c'
source_filename = "arch/x86/realmode/rm/video-bios.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.card_info = type { ptr, ptr, ptr, ptr, i32, i32, i16, i16 }
%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.mode_info = type { i16, i16, i16, i16 }
%struct.biosregs = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.1 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [5 x i8] c"BIOS\00", align 1, !dbg !0
@video_bios = internal global %struct.card_info { ptr @.str, ptr @bios_set_mode, ptr @bios_probe, ptr null, i32 0, i32 1, i16 256, i16 128 }, section ".videocards", align 4, !dbg !7
@do_restore = external dso_local global i32, align 4
@adapter = external dso_local global i32, align 4
@HEAP = external dso_local global ptr, align 4
@heap_end = external dso_local global ptr, align 4
@pio_ops = external dso_local global %struct.port_io_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @video_bios], section "llvm.metadata"

; Function Attrs: nounwind
define internal i32 @bios_set_mode(ptr inreg noundef %mi) #0 !dbg !64 {
entry:
  %mi.addr = alloca ptr, align 4
  store ptr %mi, ptr %mi.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mi.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load ptr, ptr %mi.addr, align 4, !dbg !68
  %mode = getelementptr inbounds %struct.mode_info, ptr %0, i32 0, i32 0, !dbg !69
  %1 = load i16, ptr %mode, align 2, !dbg !69
  %conv = zext i16 %1 to i32, !dbg !68
  %sub = sub nsw i32 %conv, 256, !dbg !70
  %conv1 = trunc i32 %sub to i8, !dbg !68
  %call = call i32 @set_bios_mode(i8 inreg noundef zeroext %conv1) #5, !dbg !71
  ret i32 %call, !dbg !72
}

; Function Attrs: nounwind
define internal i32 @bios_probe() #0 !dbg !73 {
entry:
  %retval = alloca i32, align 4
  %mode = alloca i8, align 1
  %saved_mode = alloca i8, align 1
  %crtc = alloca i16, align 2
  %mi = alloca ptr, align 4
  %nmodes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %mode) #6, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !75, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 1, ptr %saved_mode) #6, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %saved_mode, metadata !76, metadata !DIExpression()), !dbg !83
  store i8 3, ptr %saved_mode, align 1, !dbg !83
  call void @llvm.lifetime.start.p0(i64 2, ptr %crtc) #6, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !77, metadata !DIExpression()), !dbg !85
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !78, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmodes) #6, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %nmodes, metadata !79, metadata !DIExpression()), !dbg !89
  store i32 0, ptr %nmodes, align 4, !dbg !89
  %0 = load i32, ptr @adapter, align 4, !dbg !90
  %cmp = icmp ne i32 %0, 1, !dbg !92
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !93

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @adapter, align 4, !dbg !94
  %cmp1 = icmp ne i32 %1, 2, !dbg !95
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
  %2 = load i8, ptr %mode, align 1, !dbg !106
  %conv = zext i8 %2 to i32, !dbg !106
  %cmp3 = icmp sle i32 %conv, 127, !dbg !108
  br i1 %cmp3, label %for.body, label %for.end, !dbg !109

for.body:                                         ; preds = %for.cond
  %call5 = call zeroext i1 @heap_free(i32 inreg noundef 8) #5, !dbg !110
  br i1 %call5, label %if.end7, label %if.then6, !dbg !113

if.then6:                                         ; preds = %for.body
  br label %for.end, !dbg !114

if.end7:                                          ; preds = %for.body
  %3 = load i8, ptr %mode, align 1, !dbg !115
  %conv8 = zext i8 %3 to i32, !dbg !115
  %add = add nsw i32 256, %conv8, !dbg !117
  %conv9 = trunc i32 %add to i16, !dbg !118
  %call10 = call i32 @mode_defined(i16 inreg noundef zeroext %conv9) #5, !dbg !119
  %tobool = icmp ne i32 %call10, 0, !dbg !119
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !120

if.then11:                                        ; preds = %if.end7
  br label %for.inc, !dbg !121

if.end12:                                         ; preds = %if.end7
  %4 = load i8, ptr %mode, align 1, !dbg !122
  %call13 = call i32 @set_bios_mode(i8 inreg noundef zeroext %4) #5, !dbg !124
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
  %5 = load i16, ptr %crtc, align 2, !dbg !137
  %call28 = call zeroext i8 @in_idx(i16 inreg noundef zeroext %5, i8 inreg noundef zeroext 15) #5, !dbg !139
  %tobool29 = icmp ne i8 %call28, 0, !dbg !139
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !140

if.then30:                                        ; preds = %if.end27
  br label %for.inc, !dbg !141

if.end31:                                         ; preds = %if.end27
  %call32 = call ptr @__get_heap(i32 inreg noundef 8, i32 inreg noundef 2, i32 inreg noundef 1) #5, !dbg !142
  store ptr %call32, ptr %mi, align 4, !dbg !143
  %6 = load i8, ptr %mode, align 1, !dbg !144
  %conv33 = zext i8 %6 to i32, !dbg !144
  %add34 = add nsw i32 256, %conv33, !dbg !145
  %conv35 = trunc i32 %add34 to i16, !dbg !146
  %7 = load ptr, ptr %mi, align 4, !dbg !147
  %mode36 = getelementptr inbounds %struct.mode_info, ptr %7, i32 0, i32 0, !dbg !148
  store i16 %conv35, ptr %mode36, align 2, !dbg !149
  %8 = load ptr, ptr %mi, align 4, !dbg !150
  %depth = getelementptr inbounds %struct.mode_info, ptr %8, i32 0, i32 3, !dbg !151
  store i16 0, ptr %depth, align 2, !dbg !152
  %call37 = call zeroext i16 @rdfs16(i32 inreg noundef 1098) #5, !dbg !153
  %9 = load ptr, ptr %mi, align 4, !dbg !154
  %x = getelementptr inbounds %struct.mode_info, ptr %9, i32 0, i32 1, !dbg !155
  store i16 %call37, ptr %x, align 2, !dbg !156
  %call38 = call zeroext i8 @rdfs8(i32 inreg noundef 1156) #5, !dbg !157
  %conv39 = zext i8 %call38 to i32, !dbg !157
  %add40 = add nsw i32 %conv39, 1, !dbg !158
  %conv41 = trunc i32 %add40 to i16, !dbg !157
  %10 = load ptr, ptr %mi, align 4, !dbg !159
  %y = getelementptr inbounds %struct.mode_info, ptr %10, i32 0, i32 2, !dbg !160
  store i16 %conv41, ptr %y, align 2, !dbg !161
  %11 = load i32, ptr %nmodes, align 4, !dbg !162
  %inc = add nsw i32 %11, 1, !dbg !162
  store i32 %inc, ptr %nmodes, align 4, !dbg !162
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %if.end31, %if.then30, %if.then26, %if.then20, %if.then15, %if.then11
  %12 = load i8, ptr %mode, align 1, !dbg !164
  %inc42 = add i8 %12, 1, !dbg !164
  store i8 %inc42, ptr %mode, align 1, !dbg !164
  br label %for.cond, !dbg !165, !llvm.loop !166

for.end:                                          ; preds = %if.then6, %for.cond
  %13 = load i8, ptr %saved_mode, align 1, !dbg !170
  %call43 = call i32 @set_bios_mode(i8 inreg noundef zeroext %13) #5, !dbg !171
  %14 = load i32, ptr %nmodes, align 4, !dbg !172
  store i32 %14, ptr %retval, align 4, !dbg !173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !173

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmodes) #6, !dbg !174
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #6, !dbg !174
  call void @llvm.lifetime.end.p0(i64 2, ptr %crtc) #6, !dbg !174
  call void @llvm.lifetime.end.p0(i64 1, ptr %saved_mode) #6, !dbg !174
  call void @llvm.lifetime.end.p0(i64 1, ptr %mode) #6, !dbg !174
  %15 = load i32, ptr %retval, align 4, !dbg !174
  ret i32 %15, !dbg !174
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
  store i32 -1, ptr %retval, align 4, !dbg !290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !290

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_mode) #6, !dbg !291
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !291
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !291
  %7 = load i32, ptr %retval, align 4, !dbg !291
  ret i32 %7, !dbg !291
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !292 dso_local void @initregs(ptr inreg noundef) #3

declare !dbg !296 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind
define internal void @set_fs(i16 inreg noundef zeroext %seg) #4 !dbg !301 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i16, ptr %seg.addr, align 2, !dbg !307
  call void asm sideeffect "movw $0,%fs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #6, !dbg !308, !srcloc !309
  ret void, !dbg !310
}

declare !dbg !311 dso_local zeroext i16 @vga_crtc() #3

; Function Attrs: inlinehint nounwind
define internal ptr @__get_heap(i32 inreg noundef %s, i32 inreg noundef %a, i32 inreg noundef %n) #4 !dbg !314 {
entry:
  %s.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  store i32 %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !318, metadata !DIExpression()), !dbg !322
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !319, metadata !DIExpression()), !dbg !323
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !320, metadata !DIExpression()), !dbg !324
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #6, !dbg !325
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !321, metadata !DIExpression()), !dbg !326
  %0 = load ptr, ptr @HEAP, align 4, !dbg !327
  %1 = ptrtoint ptr %0 to i32, !dbg !328
  %2 = load i32, ptr %a.addr, align 4, !dbg !329
  %sub = sub i32 %2, 1, !dbg !330
  %add = add i32 %1, %sub, !dbg !331
  %3 = load i32, ptr %a.addr, align 4, !dbg !332
  %sub1 = sub i32 %3, 1, !dbg !333
  %not = xor i32 %sub1, -1, !dbg !334
  %and = and i32 %add, %not, !dbg !335
  %4 = inttoptr i32 %and to ptr, !dbg !336
  store ptr %4, ptr @HEAP, align 4, !dbg !337
  %5 = load ptr, ptr @HEAP, align 4, !dbg !338
  store ptr %5, ptr %tmp, align 4, !dbg !339
  %6 = load i32, ptr %s.addr, align 4, !dbg !340
  %7 = load i32, ptr %n.addr, align 4, !dbg !341
  %mul = mul i32 %6, %7, !dbg !342
  %8 = load ptr, ptr @HEAP, align 4, !dbg !343
  %add.ptr = getelementptr inbounds i8, ptr %8, i32 %mul, !dbg !343
  store ptr %add.ptr, ptr @HEAP, align 4, !dbg !343
  %9 = load ptr, ptr %tmp, align 4, !dbg !344
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #6, !dbg !345
  ret ptr %9, !dbg !346
}

; Function Attrs: inlinehint nounwind
define internal zeroext i1 @heap_free(i32 inreg noundef %n) #4 !dbg !347 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load ptr, ptr @heap_end, align 4, !dbg !355
  %1 = load ptr, ptr @HEAP, align 4, !dbg !356
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i32, !dbg !357
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32, !dbg !357
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !357
  %2 = load i32, ptr %n.addr, align 4, !dbg !358
  %cmp = icmp sge i32 %sub.ptr.sub, %2, !dbg !359
  ret i1 %cmp, !dbg !360
}

declare !dbg !361 dso_local i32 @mode_defined(i16 inreg noundef zeroext) #3

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @in_idx(i16 inreg noundef zeroext %port, i8 inreg noundef zeroext %index) #4 !dbg !364 {
entry:
  %port.addr = alloca i16, align 2
  %index.addr = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !368, metadata !DIExpression()), !dbg !370
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !369, metadata !DIExpression()), !dbg !371
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !372
  %1 = load i8, ptr %index.addr, align 1, !dbg !373
  %2 = load i16, ptr %port.addr, align 2, !dbg !374
  call void %0(i8 inreg noundef zeroext %1, i16 inreg noundef zeroext %2) #5, !dbg !372
  %3 = load ptr, ptr @pio_ops, align 4, !dbg !375
  %4 = load i16, ptr %port.addr, align 2, !dbg !376
  %conv = zext i16 %4 to i32, !dbg !376
  %add = add nsw i32 %conv, 1, !dbg !377
  %conv1 = trunc i32 %add to i16, !dbg !376
  %call = call zeroext i8 %3(i16 inreg noundef zeroext %conv1) #5, !dbg !375
  ret i8 %call, !dbg !378
}

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @rdfs16(i32 inreg noundef %addr) #4 !dbg !379 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i16, align 2
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !384, metadata !DIExpression()), !dbg !389
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #6, !dbg !390
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !385, metadata !DIExpression()), !dbg !391
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #6, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !386, metadata !DIExpression()), !dbg !392
  %0 = load i32, ptr %addr.addr, align 4, !dbg !392
  %1 = inttoptr i32 %0 to ptr, !dbg !392
  %2 = ptrtoint ptr %1 to i32, !dbg !392
  store i32 %2, ptr %__ptr, align 4, !dbg !392
  %3 = load i32, ptr %__ptr, align 4, !dbg !392
  %add = add i32 %3, 0, !dbg !392
  %4 = inttoptr i32 %add to ptr, !dbg !392
  store ptr %4, ptr %tmp, align 4, !dbg !392
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #6, !dbg !393
  %5 = load ptr, ptr %tmp, align 4, !dbg !392
  store ptr %5, ptr %ptr, align 4, !dbg !391
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #6, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %v, metadata !388, metadata !DIExpression()), !dbg !395
  %6 = load ptr, ptr %ptr, align 4, !dbg !396
  %7 = call i16 asm sideeffect "movw %fs:$1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %6) #6, !dbg !397, !srcloc !398
  store i16 %7, ptr %v, align 2, !dbg !397
  %8 = load i16, ptr %v, align 2, !dbg !399
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #6, !dbg !400
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #6, !dbg !400
  ret i16 %8, !dbg !401
}

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @rdfs8(i32 inreg noundef %addr) #4 !dbg !402 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i8, align 1
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !406, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #6, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !407, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #6, !dbg !414
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !408, metadata !DIExpression()), !dbg !414
  %0 = load i32, ptr %addr.addr, align 4, !dbg !414
  %1 = inttoptr i32 %0 to ptr, !dbg !414
  %2 = ptrtoint ptr %1 to i32, !dbg !414
  store i32 %2, ptr %__ptr, align 4, !dbg !414
  %3 = load i32, ptr %__ptr, align 4, !dbg !414
  %add = add i32 %3, 0, !dbg !414
  %4 = inttoptr i32 %add to ptr, !dbg !414
  store ptr %4, ptr %tmp, align 4, !dbg !414
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #6, !dbg !415
  %5 = load ptr, ptr %tmp, align 4, !dbg !414
  store ptr %5, ptr %ptr, align 4, !dbg !413
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #6, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %v, metadata !410, metadata !DIExpression()), !dbg !417
  %6 = load ptr, ptr %ptr, align 4, !dbg !418
  %7 = call i8 asm sideeffect "movb %fs:$1,$0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %6) #6, !dbg !419, !srcloc !420
  store i8 %7, ptr %v, align 1, !dbg !419
  %8 = load i8, ptr %v, align 1, !dbg !421
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #6, !dbg !422
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #6, !dbg !422
  ret i8 %8, !dbg !423
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/video-bios.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84283e9d38178fd3e2e4bc6aebf1f392")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "video_bios", scope: !9, file: !2, line: 118, type: !40, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !10, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/realmode/rm/.video-bios.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -D _WAKEUP -I ./arch/x86/boot -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/realmode/rm/video-bios\22 -D KBUILD_BASENAME=\22video_bios\22 -D KBUILD_MODNAME=\22video_bios\22 -D __KBUILD_MODNAME=kmod_video_bios -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/realmode/rm/video-bios.ll arch/x86/realmode/rm/video-bios.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !39, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "arch/x86/realmode/rm/video-bios.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd48899115a7961cd6c0087c4865bbef")
!11 = !{!12, !25, !26, !31, !32, !33, !34, !35}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_info", file: !14, line: 64, size: 64, elements: !15)
!14 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/video.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e17e471001fcbd7daaae50249ab4298")
!15 = !{!16, !22, !23, !24}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !14, line: 65, baseType: !17, size: 16)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !18, line: 19, baseType: !19)
!18 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !20, line: 24, baseType: !21)
!20 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !13, file: !14, line: 66, baseType: !17, size: 16, offset: 16)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !13, file: !14, line: 66, baseType: !17, size: 16, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !13, file: !14, line: 67, baseType: !17, size: 16, offset: 48)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 61, baseType: !28)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !29, line: 68, baseType: !30)
!29 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!33 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !18, line: 17, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !20, line: 21, baseType: !38)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!0, !7}
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_info", file: !14, line: 70, size: 224, elements: !41)
!41 = !{!42, !45, !49, !53, !54, !55, !56, !57}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !40, file: !14, line: 71, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !40, file: !14, line: 72, baseType: !46, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 32)
!47 = !DISubroutineType(types: !48)
!48 = !{!31, !12}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !40, file: !14, line: 73, baseType: !50, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!51 = !DISubroutineType(types: !52)
!52 = !{!31}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !40, file: !14, line: 74, baseType: !12, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nmodes", scope: !40, file: !14, line: 75, baseType: !31, size: 32, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !40, file: !14, line: 76, baseType: !31, size: 32, offset: 160)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_first", scope: !40, file: !14, line: 77, baseType: !17, size: 16, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_n", scope: !40, file: !14, line: 78, baseType: !17, size: 16, offset: 208)
!58 = !{i32 1, !"NumRegisterParameters", i32 3}
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 1, !"override-stack-alignment", i32 4}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = distinct !DISubprogram(name: "bios_set_mode", scope: !2, file: !2, line: 24, type: !47, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !65)
!65 = !{!66}
!66 = !DILocalVariable(name: "mi", arg: 1, scope: !64, file: !2, line: 24, type: !12)
!67 = !DILocation(line: 24, column: 44, scope: !64)
!68 = !DILocation(line: 26, column: 23, scope: !64)
!69 = !DILocation(line: 26, column: 27, scope: !64)
!70 = !DILocation(line: 26, column: 32, scope: !64)
!71 = !DILocation(line: 26, column: 9, scope: !64)
!72 = !DILocation(line: 26, column: 2, scope: !64)
!73 = distinct !DISubprogram(name: "bios_probe", scope: !2, file: !2, line: 61, type: !51, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !74)
!74 = !{!75, !76, !77, !78, !79}
!75 = !DILocalVariable(name: "mode", scope: !73, file: !2, line: 63, type: !36)
!76 = !DILocalVariable(name: "saved_mode", scope: !73, file: !2, line: 65, type: !36)
!77 = !DILocalVariable(name: "crtc", scope: !73, file: !2, line: 69, type: !17)
!78 = !DILocalVariable(name: "mi", scope: !73, file: !2, line: 70, type: !12)
!79 = !DILocalVariable(name: "nmodes", scope: !73, file: !2, line: 71, type: !31)
!80 = !DILocation(line: 63, column: 2, scope: !73)
!81 = !DILocation(line: 63, column: 5, scope: !73)
!82 = !DILocation(line: 65, column: 2, scope: !73)
!83 = !DILocation(line: 65, column: 5, scope: !73)
!84 = !DILocation(line: 69, column: 2, scope: !73)
!85 = !DILocation(line: 69, column: 6, scope: !73)
!86 = !DILocation(line: 70, column: 2, scope: !73)
!87 = !DILocation(line: 70, column: 20, scope: !73)
!88 = !DILocation(line: 71, column: 2, scope: !73)
!89 = !DILocation(line: 71, column: 6, scope: !73)
!90 = !DILocation(line: 73, column: 6, scope: !91)
!91 = distinct !DILexicalBlock(scope: !73, file: !2, line: 73, column: 6)
!92 = !DILocation(line: 73, column: 14, scope: !91)
!93 = !DILocation(line: 73, column: 29, scope: !91)
!94 = !DILocation(line: 73, column: 32, scope: !91)
!95 = !DILocation(line: 73, column: 40, scope: !91)
!96 = !DILocation(line: 73, column: 6, scope: !73)
!97 = !DILocation(line: 74, column: 3, scope: !91)
!98 = !DILocation(line: 76, column: 2, scope: !73)
!99 = !DILocation(line: 77, column: 9, scope: !73)
!100 = !DILocation(line: 77, column: 7, scope: !73)
!101 = !DILocation(line: 79, column: 21, scope: !73)
!102 = !DILocation(line: 79, column: 19, scope: !73)
!103 = !DILocation(line: 81, column: 12, scope: !104)
!104 = distinct !DILexicalBlock(scope: !73, file: !2, line: 81, column: 2)
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
!170 = !DILocation(line: 113, column: 16, scope: !73)
!171 = !DILocation(line: 113, column: 2, scope: !73)
!172 = !DILocation(line: 115, column: 9, scope: !73)
!173 = !DILocation(line: 115, column: 2, scope: !73)
!174 = !DILocation(line: 116, column: 1, scope: !73)
!175 = distinct !DISubprogram(name: "set_bios_mode", scope: !2, file: !2, line: 29, type: !176, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{!31, !36}
!178 = !{!179, !180, !263, !264}
!179 = !DILocalVariable(name: "mode", arg: 1, scope: !175, file: !2, line: 29, type: !36)
!180 = !DILocalVariable(name: "ireg", scope: !175, file: !2, line: 31, type: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !182, line: 206, size: 352, elements: !183)
!182 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !182, line: 207, baseType: !185, size: 352)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !182, line: 207, size: 352, elements: !186)
!186 = !{!187, !203, !228}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !182, line: 208, baseType: !188, size: 352)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !182, line: 208, size: 352, elements: !189)
!189 = !{!190, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !188, file: !182, line: 209, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !18, line: 21, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !20, line: 27, baseType: !30)
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
!206 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !204, file: !182, line: 222, baseType: !17, size: 16)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !204, file: !182, line: 222, baseType: !17, size: 16, offset: 16)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !204, file: !182, line: 223, baseType: !17, size: 16, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !204, file: !182, line: 223, baseType: !17, size: 16, offset: 48)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !204, file: !182, line: 224, baseType: !17, size: 16, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !204, file: !182, line: 224, baseType: !17, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !204, file: !182, line: 225, baseType: !17, size: 16, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !204, file: !182, line: 225, baseType: !17, size: 16, offset: 112)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !204, file: !182, line: 226, baseType: !17, size: 16, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !204, file: !182, line: 226, baseType: !17, size: 16, offset: 144)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !204, file: !182, line: 227, baseType: !17, size: 16, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !204, file: !182, line: 227, baseType: !17, size: 16, offset: 176)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !204, file: !182, line: 228, baseType: !17, size: 16, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !204, file: !182, line: 228, baseType: !17, size: 16, offset: 208)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !204, file: !182, line: 229, baseType: !17, size: 16, offset: 224)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !204, file: !182, line: 229, baseType: !17, size: 16, offset: 240)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !204, file: !182, line: 230, baseType: !17, size: 16, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !204, file: !182, line: 230, baseType: !17, size: 16, offset: 272)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !204, file: !182, line: 231, baseType: !17, size: 16, offset: 288)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !204, file: !182, line: 231, baseType: !17, size: 16, offset: 304)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !182, line: 232, baseType: !17, size: 16, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !204, file: !182, line: 232, baseType: !17, size: 16, offset: 336)
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !182, line: 234, baseType: !229, size: 256)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !182, line: 234, size: 256, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !229, file: !182, line: 235, baseType: !36, size: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !229, file: !182, line: 235, baseType: !36, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !229, file: !182, line: 235, baseType: !36, size: 8, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !229, file: !182, line: 235, baseType: !36, size: 8, offset: 24)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !229, file: !182, line: 236, baseType: !36, size: 8, offset: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !229, file: !182, line: 236, baseType: !36, size: 8, offset: 40)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !229, file: !182, line: 236, baseType: !36, size: 8, offset: 48)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !229, file: !182, line: 236, baseType: !36, size: 8, offset: 56)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !229, file: !182, line: 237, baseType: !36, size: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !229, file: !182, line: 237, baseType: !36, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !229, file: !182, line: 237, baseType: !36, size: 8, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !229, file: !182, line: 237, baseType: !36, size: 8, offset: 88)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !229, file: !182, line: 238, baseType: !36, size: 8, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !229, file: !182, line: 238, baseType: !36, size: 8, offset: 104)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !229, file: !182, line: 238, baseType: !36, size: 8, offset: 112)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !229, file: !182, line: 238, baseType: !36, size: 8, offset: 120)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !229, file: !182, line: 239, baseType: !36, size: 8, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !229, file: !182, line: 239, baseType: !36, size: 8, offset: 136)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !229, file: !182, line: 239, baseType: !36, size: 8, offset: 144)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !229, file: !182, line: 239, baseType: !36, size: 8, offset: 152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !229, file: !182, line: 240, baseType: !36, size: 8, offset: 160)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !229, file: !182, line: 240, baseType: !36, size: 8, offset: 168)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !229, file: !182, line: 240, baseType: !36, size: 8, offset: 176)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !229, file: !182, line: 240, baseType: !36, size: 8, offset: 184)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !229, file: !182, line: 241, baseType: !36, size: 8, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !229, file: !182, line: 241, baseType: !36, size: 8, offset: 200)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !229, file: !182, line: 241, baseType: !36, size: 8, offset: 208)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !229, file: !182, line: 241, baseType: !36, size: 8, offset: 216)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !229, file: !182, line: 242, baseType: !36, size: 8, offset: 224)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !229, file: !182, line: 242, baseType: !36, size: 8, offset: 232)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !229, file: !182, line: 242, baseType: !36, size: 8, offset: 240)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !229, file: !182, line: 242, baseType: !36, size: 8, offset: 248)
!263 = !DILocalVariable(name: "oreg", scope: !175, file: !2, line: 31, type: !181)
!264 = !DILocalVariable(name: "new_mode", scope: !175, file: !2, line: 32, type: !36)
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
!290 = !DILocation(line: 58, column: 2, scope: !175)
!291 = !DILocation(line: 59, column: 1, scope: !175)
!292 = !DISubprogram(name: "initregs", scope: !182, file: !182, line: 302, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!296 = !DISubprogram(name: "intcall", scope: !182, file: !182, line: 246, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !36, !299, !295}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!301 = distinct !DISubprogram(name: "set_fs", scope: !182, file: !182, line: 54, type: !302, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !17}
!304 = !{!305}
!305 = !DILocalVariable(name: "seg", arg: 1, scope: !301, file: !182, line: 54, type: !17)
!306 = !DILocation(line: 54, column: 31, scope: !301)
!307 = !DILocation(line: 56, column: 40, scope: !301)
!308 = !DILocation(line: 56, column: 2, scope: !301)
!309 = !{i64 115008}
!310 = !DILocation(line: 57, column: 1, scope: !301)
!311 = !DISubprogram(name: "vga_crtc", scope: !14, file: !14, line: 116, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DISubroutineType(types: !313)
!313 = !{!17}
!314 = distinct !DISubprogram(name: "__get_heap", scope: !182, file: !182, line: 175, type: !315, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{!25, !26, !26, !26}
!317 = !{!318, !319, !320, !321}
!318 = !DILocalVariable(name: "s", arg: 1, scope: !314, file: !182, line: 175, type: !26)
!319 = !DILocalVariable(name: "a", arg: 2, scope: !314, file: !182, line: 175, type: !26)
!320 = !DILocalVariable(name: "n", arg: 3, scope: !314, file: !182, line: 175, type: !26)
!321 = !DILocalVariable(name: "tmp", scope: !314, file: !182, line: 177, type: !25)
!322 = !DILocation(line: 175, column: 39, scope: !314)
!323 = !DILocation(line: 175, column: 49, scope: !314)
!324 = !DILocation(line: 175, column: 59, scope: !314)
!325 = !DILocation(line: 177, column: 2, scope: !314)
!326 = !DILocation(line: 177, column: 8, scope: !314)
!327 = !DILocation(line: 179, column: 27, scope: !314)
!328 = !DILocation(line: 179, column: 19, scope: !314)
!329 = !DILocation(line: 179, column: 33, scope: !314)
!330 = !DILocation(line: 179, column: 34, scope: !314)
!331 = !DILocation(line: 179, column: 31, scope: !314)
!332 = !DILocation(line: 179, column: 43, scope: !314)
!333 = !DILocation(line: 179, column: 44, scope: !314)
!334 = !DILocation(line: 179, column: 41, scope: !314)
!335 = !DILocation(line: 179, column: 39, scope: !314)
!336 = !DILocation(line: 179, column: 9, scope: !314)
!337 = !DILocation(line: 179, column: 7, scope: !314)
!338 = !DILocation(line: 180, column: 8, scope: !314)
!339 = !DILocation(line: 180, column: 6, scope: !314)
!340 = !DILocation(line: 181, column: 10, scope: !314)
!341 = !DILocation(line: 181, column: 12, scope: !314)
!342 = !DILocation(line: 181, column: 11, scope: !314)
!343 = !DILocation(line: 181, column: 7, scope: !314)
!344 = !DILocation(line: 182, column: 9, scope: !314)
!345 = !DILocation(line: 183, column: 1, scope: !314)
!346 = !DILocation(line: 182, column: 2, scope: !314)
!347 = distinct !DISubprogram(name: "heap_free", scope: !182, file: !182, line: 187, type: !348, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !352)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !26}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !351)
!351 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!352 = !{!353}
!353 = !DILocalVariable(name: "n", arg: 1, scope: !347, file: !182, line: 187, type: !26)
!354 = !DILocation(line: 187, column: 37, scope: !347)
!355 = !DILocation(line: 189, column: 15, scope: !347)
!356 = !DILocation(line: 189, column: 24, scope: !347)
!357 = !DILocation(line: 189, column: 23, scope: !347)
!358 = !DILocation(line: 189, column: 38, scope: !347)
!359 = !DILocation(line: 189, column: 30, scope: !347)
!360 = !DILocation(line: 189, column: 2, scope: !347)
!361 = !DISubprogram(name: "mode_defined", scope: !14, file: !14, line: 84, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubroutineType(types: !363)
!363 = !{!31, !17}
!364 = distinct !DISubprogram(name: "in_idx", scope: !14, file: !14, line: 97, type: !365, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !367)
!365 = !DISubroutineType(types: !366)
!366 = !{!36, !17, !36}
!367 = !{!368, !369}
!368 = !DILocalVariable(name: "port", arg: 1, scope: !364, file: !14, line: 97, type: !17)
!369 = !DILocalVariable(name: "index", arg: 2, scope: !364, file: !14, line: 97, type: !36)
!370 = !DILocation(line: 97, column: 29, scope: !364)
!371 = !DILocation(line: 97, column: 38, scope: !364)
!372 = !DILocation(line: 99, column: 2, scope: !364)
!373 = !DILocation(line: 99, column: 7, scope: !364)
!374 = !DILocation(line: 99, column: 14, scope: !364)
!375 = !DILocation(line: 100, column: 9, scope: !364)
!376 = !DILocation(line: 100, column: 13, scope: !364)
!377 = !DILocation(line: 100, column: 17, scope: !364)
!378 = !DILocation(line: 100, column: 2, scope: !364)
!379 = distinct !DISubprogram(name: "rdfs16", scope: !182, file: !182, line: 85, type: !380, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !383)
!380 = !DISubroutineType(types: !381)
!381 = !{!17, !382}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !182, line: 76, baseType: !30)
!383 = !{!384, !385, !386, !388}
!384 = !DILocalVariable(name: "addr", arg: 1, scope: !379, file: !182, line: 85, type: !382)
!385 = !DILocalVariable(name: "ptr", scope: !379, file: !182, line: 87, type: !32)
!386 = !DILocalVariable(name: "__ptr", scope: !387, file: !182, line: 87, type: !33)
!387 = distinct !DILexicalBlock(scope: !379, file: !182, line: 87, column: 20)
!388 = !DILocalVariable(name: "v", scope: !379, file: !182, line: 88, type: !17)
!389 = !DILocation(line: 85, column: 33, scope: !379)
!390 = !DILocation(line: 87, column: 2, scope: !379)
!391 = !DILocation(line: 87, column: 7, scope: !379)
!392 = !DILocation(line: 87, column: 20, scope: !387)
!393 = !DILocation(line: 87, column: 20, scope: !379)
!394 = !DILocation(line: 88, column: 2, scope: !379)
!395 = !DILocation(line: 88, column: 6, scope: !379)
!396 = !DILocation(line: 89, column: 52, scope: !379)
!397 = !DILocation(line: 89, column: 2, scope: !379)
!398 = !{i64 115619}
!399 = !DILocation(line: 90, column: 9, scope: !379)
!400 = !DILocation(line: 91, column: 1, scope: !379)
!401 = !DILocation(line: 90, column: 2, scope: !379)
!402 = distinct !DISubprogram(name: "rdfs8", scope: !182, file: !182, line: 78, type: !403, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!36, !382}
!405 = !{!406, !407, !408, !410}
!406 = !DILocalVariable(name: "addr", arg: 1, scope: !402, file: !182, line: 78, type: !382)
!407 = !DILocalVariable(name: "ptr", scope: !402, file: !182, line: 80, type: !35)
!408 = !DILocalVariable(name: "__ptr", scope: !409, file: !182, line: 80, type: !33)
!409 = distinct !DILexicalBlock(scope: !402, file: !182, line: 80, column: 18)
!410 = !DILocalVariable(name: "v", scope: !402, file: !182, line: 81, type: !36)
!411 = !DILocation(line: 78, column: 31, scope: !402)
!412 = !DILocation(line: 80, column: 2, scope: !402)
!413 = !DILocation(line: 80, column: 6, scope: !402)
!414 = !DILocation(line: 80, column: 18, scope: !409)
!415 = !DILocation(line: 80, column: 18, scope: !402)
!416 = !DILocation(line: 81, column: 2, scope: !402)
!417 = !DILocation(line: 81, column: 5, scope: !402)
!418 = !DILocation(line: 82, column: 52, scope: !402)
!419 = !DILocation(line: 82, column: 2, scope: !402)
!420 = !{i64 115457}
!421 = !DILocation(line: 83, column: 9, scope: !402)
!422 = !DILocation(line: 84, column: 1, scope: !402)
!423 = !DILocation(line: 83, column: 2, scope: !402)
