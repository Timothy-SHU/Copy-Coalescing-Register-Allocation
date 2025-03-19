; ModuleID = 'arch/x86/boot/a20.c'
source_filename = "arch/x86/boot/a20.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.biosregs = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@pio_ops = external dso_local global %struct.port_io_ops, align 4

; Function Attrs: nounwind
define dso_local i32 @enable_a20() #0 !dbg !17 {
entry:
  %retval = alloca i32, align 4
  %loops = alloca i32, align 4
  %kbc_err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %loops) #5, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %loops, metadata !22, metadata !DIExpression()), !dbg !25
  store i32 255, ptr %loops, align 4, !dbg !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %kbc_err) #5, !dbg !26
  call void @llvm.dbg.declare(metadata ptr %kbc_err, metadata !23, metadata !DIExpression()), !dbg !27
  br label %while.cond, !dbg !28

while.cond:                                       ; preds = %if.end21, %entry
  %0 = load i32, ptr %loops, align 4, !dbg !29
  %dec = add nsw i32 %0, -1, !dbg !29
  store i32 %dec, ptr %loops, align 4, !dbg !29
  %tobool = icmp ne i32 %0, 0, !dbg !28
  br i1 %tobool, label %while.body, label %while.end, !dbg !28

while.body:                                       ; preds = %while.cond
  %call = call i32 @a20_test_short() #6, !dbg !30
  %tobool1 = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool1, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !34
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !34

if.end:                                           ; preds = %while.body
  call void @enable_a20_bios() #6, !dbg !35
  %call2 = call i32 @a20_test_short() #6, !dbg !36
  %tobool3 = icmp ne i32 %call2, 0, !dbg !36
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !38

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !39
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !39

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @empty_8042() #6, !dbg !40
  store i32 %call6, ptr %kbc_err, align 4, !dbg !41
  %call7 = call i32 @a20_test_short() #6, !dbg !42
  %tobool8 = icmp ne i32 %call7, 0, !dbg !42
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !44

if.then9:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !45
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !45

if.end10:                                         ; preds = %if.end5
  %1 = load i32, ptr %kbc_err, align 4, !dbg !46
  %tobool11 = icmp ne i32 %1, 0, !dbg !46
  br i1 %tobool11, label %if.end17, label %if.then12, !dbg !48

if.then12:                                        ; preds = %if.end10
  call void @enable_a20_kbc() #6, !dbg !49
  %call13 = call i32 @a20_test_long() #6, !dbg !51
  %tobool14 = icmp ne i32 %call13, 0, !dbg !51
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !53

if.then15:                                        ; preds = %if.then12
  store i32 0, ptr %retval, align 4, !dbg !54
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !54

if.end16:                                         ; preds = %if.then12
  br label %if.end17, !dbg !55

if.end17:                                         ; preds = %if.end16, %if.end10
  call void @enable_a20_fast() #6, !dbg !56
  %call18 = call i32 @a20_test_long() #6, !dbg !57
  %tobool19 = icmp ne i32 %call18, 0, !dbg !57
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !59

if.then20:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4, !dbg !60
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !60

if.end21:                                         ; preds = %if.end17
  br label %while.cond, !dbg !28, !llvm.loop !61

while.end:                                        ; preds = %while.cond
  store i32 -1, ptr %retval, align 4, !dbg !65
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !65

cleanup:                                          ; preds = %while.end, %if.then20, %if.then15, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %kbc_err) #5, !dbg !66
  call void @llvm.lifetime.end.p0(i64 4, ptr %loops) #5, !dbg !66
  %2 = load i32, ptr %retval, align 4, !dbg !66
  ret i32 %2, !dbg !66
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
define internal i32 @a20_test_short() #0 !dbg !67 {
entry:
  %call = call i32 @a20_test(i32 inreg noundef 32) #6, !dbg !68
  ret i32 %call, !dbg !69
}

; Function Attrs: nounwind
define internal void @enable_a20_bios() #0 !dbg !70 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #5, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !74, metadata !DIExpression()), !dbg !162
  call void @initregs(ptr inreg noundef %ireg) #6, !dbg !163
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !164
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !164
  store i16 9217, ptr %ax, align 4, !dbg !165
  call void @intcall(i8 inreg noundef zeroext 21, ptr inreg noundef %ireg, ptr inreg noundef null) #6, !dbg !166
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #5, !dbg !167
  ret void, !dbg !167
}

; Function Attrs: nounwind
define internal i32 @empty_8042() #0 !dbg !168 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i8, align 1
  %loops = alloca i32, align 4
  %ffs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #5, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %status, metadata !170, metadata !DIExpression()), !dbg !174
  call void @llvm.lifetime.start.p0(i64 4, ptr %loops) #5, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %loops, metadata !171, metadata !DIExpression()), !dbg !176
  store i32 100000, ptr %loops, align 4, !dbg !176
  call void @llvm.lifetime.start.p0(i64 4, ptr %ffs) #5, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %ffs, metadata !172, metadata !DIExpression()), !dbg !178
  store i32 32, ptr %ffs, align 4, !dbg !178
  br label %while.cond, !dbg !179

while.cond:                                       ; preds = %if.end15, %entry
  %0 = load i32, ptr %loops, align 4, !dbg !180
  %dec = add nsw i32 %0, -1, !dbg !180
  store i32 %dec, ptr %loops, align 4, !dbg !180
  %tobool = icmp ne i32 %0, 0, !dbg !179
  br i1 %tobool, label %while.body, label %while.end, !dbg !179

while.body:                                       ; preds = %while.cond
  call void @io_delay() #6, !dbg !181
  %1 = load ptr, ptr @pio_ops, align 4, !dbg !183
  %call = call zeroext i8 %1(i16 inreg noundef zeroext 100) #6, !dbg !183
  store i8 %call, ptr %status, align 1, !dbg !184
  %2 = load i8, ptr %status, align 1, !dbg !185
  %conv = zext i8 %2 to i32, !dbg !185
  %cmp = icmp eq i32 %conv, 255, !dbg !187
  br i1 %cmp, label %if.then, label %if.end5, !dbg !188

if.then:                                          ; preds = %while.body
  %3 = load i32, ptr %ffs, align 4, !dbg !189
  %dec2 = add nsw i32 %3, -1, !dbg !189
  store i32 %dec2, ptr %ffs, align 4, !dbg !189
  %tobool3 = icmp ne i32 %dec2, 0, !dbg !189
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !192

if.then4:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !193

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !194

if.end5:                                          ; preds = %if.end, %while.body
  %4 = load i8, ptr %status, align 1, !dbg !195
  %conv6 = zext i8 %4 to i32, !dbg !195
  %and = and i32 %conv6, 1, !dbg !197
  %tobool7 = icmp ne i32 %and, 0, !dbg !197
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !198

if.then8:                                         ; preds = %if.end5
  call void @io_delay() #6, !dbg !199
  %5 = load ptr, ptr @pio_ops, align 4, !dbg !201
  %call9 = call zeroext i8 %5(i16 inreg noundef zeroext 96) #6, !dbg !201
  br label %if.end15, !dbg !202

if.else:                                          ; preds = %if.end5
  %6 = load i8, ptr %status, align 1, !dbg !203
  %conv10 = zext i8 %6 to i32, !dbg !203
  %and11 = and i32 %conv10, 2, !dbg !205
  %tobool12 = icmp ne i32 %and11, 0, !dbg !205
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !206

if.then13:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !207

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then8
  br label %while.cond, !dbg !179, !llvm.loop !209

while.end:                                        ; preds = %while.cond
  store i32 -1, ptr %retval, align 4, !dbg !211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !211

cleanup:                                          ; preds = %while.end, %if.then13, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ffs) #5, !dbg !212
  call void @llvm.lifetime.end.p0(i64 4, ptr %loops) #5, !dbg !212
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #5, !dbg !212
  %7 = load i32, ptr %retval, align 4, !dbg !212
  ret i32 %7, !dbg !212
}

; Function Attrs: nounwind
define internal void @enable_a20_kbc() #0 !dbg !213 {
entry:
  %call = call i32 @empty_8042() #6, !dbg !214
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !215
  call void %0(i8 inreg noundef zeroext -47, i16 inreg noundef zeroext 100) #6, !dbg !215
  %call1 = call i32 @empty_8042() #6, !dbg !216
  %1 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !217
  call void %1(i8 inreg noundef zeroext -33, i16 inreg noundef zeroext 96) #6, !dbg !217
  %call2 = call i32 @empty_8042() #6, !dbg !218
  %2 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !219
  call void %2(i8 inreg noundef zeroext -1, i16 inreg noundef zeroext 100) #6, !dbg !219
  %call3 = call i32 @empty_8042() #6, !dbg !220
  ret void, !dbg !221
}

; Function Attrs: nounwind
define internal i32 @a20_test_long() #0 !dbg !222 {
entry:
  %call = call i32 @a20_test(i32 inreg noundef 2097152) #6, !dbg !223
  ret i32 %call, !dbg !224
}

; Function Attrs: nounwind
define internal void @enable_a20_fast() #0 !dbg !225 {
entry:
  %port_a = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %port_a) #5, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %port_a, metadata !227, metadata !DIExpression()), !dbg !229
  %0 = load ptr, ptr @pio_ops, align 4, !dbg !230
  %call = call zeroext i8 %0(i16 inreg noundef zeroext 146) #6, !dbg !230
  store i8 %call, ptr %port_a, align 1, !dbg !231
  %1 = load i8, ptr %port_a, align 1, !dbg !232
  %conv = zext i8 %1 to i32, !dbg !232
  %or = or i32 %conv, 2, !dbg !232
  %conv1 = trunc i32 %or to i8, !dbg !232
  store i8 %conv1, ptr %port_a, align 1, !dbg !232
  %2 = load i8, ptr %port_a, align 1, !dbg !233
  %conv2 = zext i8 %2 to i32, !dbg !233
  %and = and i32 %conv2, -2, !dbg !233
  %conv3 = trunc i32 %and to i8, !dbg !233
  store i8 %conv3, ptr %port_a, align 1, !dbg !233
  %3 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !234
  %4 = load i8, ptr %port_a, align 1, !dbg !235
  call void %3(i8 inreg noundef zeroext %4, i16 inreg noundef zeroext 146) #6, !dbg !234
  call void @llvm.lifetime.end.p0(i64 1, ptr %port_a) #5, !dbg !236
  ret void, !dbg !236
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal i32 @a20_test(i32 inreg noundef %loops) #0 !dbg !237 {
entry:
  %loops.addr = alloca i32, align 4
  %ok = alloca i32, align 4
  %saved = alloca i32, align 4
  %ctr = alloca i32, align 4
  store i32 %loops, ptr %loops.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %loops.addr, metadata !241, metadata !DIExpression()), !dbg !245
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #5, !dbg !246
  call void @llvm.dbg.declare(metadata ptr %ok, metadata !242, metadata !DIExpression()), !dbg !247
  store i32 0, ptr %ok, align 4, !dbg !247
  call void @llvm.lifetime.start.p0(i64 4, ptr %saved) #5, !dbg !248
  call void @llvm.dbg.declare(metadata ptr %saved, metadata !243, metadata !DIExpression()), !dbg !249
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctr) #5, !dbg !248
  call void @llvm.dbg.declare(metadata ptr %ctr, metadata !244, metadata !DIExpression()), !dbg !250
  call void @set_fs(i16 inreg noundef zeroext 0) #6, !dbg !251
  call void @set_gs(i16 inreg noundef zeroext -1) #6, !dbg !252
  %call = call i32 @rdfs32(i32 inreg noundef 512) #6, !dbg !253
  store i32 %call, ptr %ctr, align 4, !dbg !254
  store i32 %call, ptr %saved, align 4, !dbg !255
  br label %while.cond, !dbg !256

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %loops.addr, align 4, !dbg !257
  %dec = add nsw i32 %0, -1, !dbg !257
  store i32 %dec, ptr %loops.addr, align 4, !dbg !257
  %tobool = icmp ne i32 %0, 0, !dbg !256
  br i1 %tobool, label %while.body, label %while.end, !dbg !256

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %ctr, align 4, !dbg !258
  %inc = add nsw i32 %1, 1, !dbg !258
  store i32 %inc, ptr %ctr, align 4, !dbg !258
  call void @wrfs32(i32 inreg noundef %inc, i32 inreg noundef 512) #6, !dbg !260
  call void @io_delay() #6, !dbg !261
  %call1 = call i32 @rdgs32(i32 inreg noundef 528) #6, !dbg !262
  %2 = load i32, ptr %ctr, align 4, !dbg !263
  %xor = xor i32 %call1, %2, !dbg !264
  store i32 %xor, ptr %ok, align 4, !dbg !265
  %3 = load i32, ptr %ok, align 4, !dbg !266
  %tobool2 = icmp ne i32 %3, 0, !dbg !266
  br i1 %tobool2, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !269

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !256, !llvm.loop !270

while.end:                                        ; preds = %if.then, %while.cond
  %4 = load i32, ptr %saved, align 4, !dbg !272
  call void @wrfs32(i32 inreg noundef %4, i32 inreg noundef 512) #6, !dbg !273
  %5 = load i32, ptr %ok, align 4, !dbg !274
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctr) #5, !dbg !275
  call void @llvm.lifetime.end.p0(i64 4, ptr %saved) #5, !dbg !275
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #5, !dbg !275
  ret i32 %5, !dbg !276
}

; Function Attrs: inlinehint nounwind
define internal void @set_fs(i16 inreg noundef zeroext %seg) #3 !dbg !277 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i16, ptr %seg.addr, align 2, !dbg !283
  call void asm sideeffect "movw $0,%fs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #5, !dbg !284, !srcloc !285
  ret void, !dbg !286
}

; Function Attrs: inlinehint nounwind
define internal void @set_gs(i16 inreg noundef zeroext %seg) #3 !dbg !287 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i16, ptr %seg.addr, align 2, !dbg !291
  call void asm sideeffect "movw $0,%gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #5, !dbg !292, !srcloc !293
  ret void, !dbg !294
}

; Function Attrs: inlinehint nounwind
define internal i32 @rdfs32(i32 inreg noundef %addr) #3 !dbg !295 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i32, align 4
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !300, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #5, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !301, metadata !DIExpression()), !dbg !307
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #5, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !302, metadata !DIExpression()), !dbg !308
  %0 = load i32, ptr %addr.addr, align 4, !dbg !308
  %1 = inttoptr i32 %0 to ptr, !dbg !308
  %2 = ptrtoint ptr %1 to i32, !dbg !308
  store i32 %2, ptr %__ptr, align 4, !dbg !308
  %3 = load i32, ptr %__ptr, align 4, !dbg !308
  %add = add i32 %3, 0, !dbg !308
  %4 = inttoptr i32 %add to ptr, !dbg !308
  store ptr %4, ptr %tmp, align 4, !dbg !308
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #5, !dbg !309
  %5 = load ptr, ptr %tmp, align 4, !dbg !308
  store ptr %5, ptr %ptr, align 4, !dbg !307
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #5, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %v, metadata !304, metadata !DIExpression()), !dbg !311
  %6 = load ptr, ptr %ptr, align 4, !dbg !312
  %7 = call i32 asm sideeffect "movl %fs:$1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %6) #5, !dbg !313, !srcloc !314
  store i32 %7, ptr %v, align 4, !dbg !313
  %8 = load i32, ptr %v, align 4, !dbg !315
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #5, !dbg !316
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #5, !dbg !316
  ret i32 %8, !dbg !317
}

; Function Attrs: inlinehint nounwind
define internal void @wrfs32(i32 inreg noundef %v, i32 inreg noundef %addr) #3 !dbg !318 {
entry:
  %v.addr = alloca i32, align 4
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  store i32 %v, ptr %v.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !322, metadata !DIExpression()), !dbg !327
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !323, metadata !DIExpression()), !dbg !328
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #5, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !324, metadata !DIExpression()), !dbg !330
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #5, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !325, metadata !DIExpression()), !dbg !331
  %0 = load i32, ptr %addr.addr, align 4, !dbg !331
  %1 = inttoptr i32 %0 to ptr, !dbg !331
  %2 = ptrtoint ptr %1 to i32, !dbg !331
  store i32 %2, ptr %__ptr, align 4, !dbg !331
  %3 = load i32, ptr %__ptr, align 4, !dbg !331
  %add = add i32 %3, 0, !dbg !331
  %4 = inttoptr i32 %add to ptr, !dbg !331
  store ptr %4, ptr %tmp, align 4, !dbg !331
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #5, !dbg !332
  %5 = load ptr, ptr %tmp, align 4, !dbg !331
  store ptr %5, ptr %ptr, align 4, !dbg !330
  %6 = load ptr, ptr %ptr, align 4, !dbg !333
  %7 = load i32, ptr %v.addr, align 4, !dbg !334
  call void asm sideeffect "movl $1,%fs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %6, i32 %7, ptr elementtype(i32) %6) #5, !dbg !335, !srcloc !336
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #5, !dbg !337
  ret void, !dbg !337
}

; Function Attrs: inlinehint nounwind
define internal void @io_delay() #3 !dbg !338 {
entry:
  %DELAY_PORT = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %DELAY_PORT) #5, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %DELAY_PORT, metadata !340, metadata !DIExpression()), !dbg !343
  store i16 128, ptr %DELAY_PORT, align 2, !dbg !343
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !344
  call void %0(i8 inreg noundef zeroext 0, i16 inreg noundef zeroext 128) #6, !dbg !344
  call void @llvm.lifetime.end.p0(i64 2, ptr %DELAY_PORT) #5, !dbg !345
  ret void, !dbg !345
}

; Function Attrs: inlinehint nounwind
define internal i32 @rdgs32(i32 inreg noundef %addr) #3 !dbg !346 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i32, align 4
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !348, metadata !DIExpression()), !dbg !353
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #5, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !349, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #5, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !350, metadata !DIExpression()), !dbg !356
  %0 = load i32, ptr %addr.addr, align 4, !dbg !356
  %1 = inttoptr i32 %0 to ptr, !dbg !356
  %2 = ptrtoint ptr %1 to i32, !dbg !356
  store i32 %2, ptr %__ptr, align 4, !dbg !356
  %3 = load i32, ptr %__ptr, align 4, !dbg !356
  %add = add i32 %3, 0, !dbg !356
  %4 = inttoptr i32 %add to ptr, !dbg !356
  store ptr %4, ptr %tmp, align 4, !dbg !356
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #5, !dbg !357
  %5 = load ptr, ptr %tmp, align 4, !dbg !356
  store ptr %5, ptr %ptr, align 4, !dbg !355
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #5, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %v, metadata !352, metadata !DIExpression()), !dbg !359
  %6 = load ptr, ptr %ptr, align 4, !dbg !360
  %7 = call i32 asm sideeffect "movl %gs:$1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %6) #5, !dbg !361, !srcloc !362
  store i32 %7, ptr %v, align 4, !dbg !361
  %8 = load i32, ptr %v, align 4, !dbg !363
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #5, !dbg !364
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #5, !dbg !364
  ret i32 %8, !dbg !365
}

declare !dbg !366 dso_local void @initregs(ptr inreg noundef) #4

declare !dbg !370 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #4

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.a20.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/a20\22 -D KBUILD_BASENAME=\22a20\22 -D KBUILD_MODNAME=\22a20\22 -D __KBUILD_MODNAME=kmod_a20 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/a20.ll arch/x86/boot/a20.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/boot/a20.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37c5ddbb151830a5d558f80a499f2685")
!2 = !{!3, !9, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !5, line: 21, baseType: !6)
!5 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!11 = !{i32 1, !"NumRegisterParameters", i32 3}
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 1, !"override-stack-alignment", i32 4}
!16 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!17 = distinct !DISubprogram(name: "enable_a20", scope: !1, file: !1, line: 128, type: !18, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!22, !23}
!22 = !DILocalVariable(name: "loops", scope: !17, file: !1, line: 130, type: !20)
!23 = !DILocalVariable(name: "kbc_err", scope: !17, file: !1, line: 131, type: !20)
!24 = !DILocation(line: 130, column: 8, scope: !17)
!25 = !DILocation(line: 130, column: 12, scope: !17)
!26 = !DILocation(line: 131, column: 8, scope: !17)
!27 = !DILocation(line: 131, column: 12, scope: !17)
!28 = !DILocation(line: 133, column: 8, scope: !17)
!29 = !DILocation(line: 133, column: 20, scope: !17)
!30 = !DILocation(line: 136, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 136, column: 13)
!32 = distinct !DILexicalBlock(scope: !17, file: !1, line: 133, column: 24)
!33 = !DILocation(line: 136, column: 13, scope: !32)
!34 = !DILocation(line: 137, column: 10, scope: !31)
!35 = !DILocation(line: 140, column: 9, scope: !32)
!36 = !DILocation(line: 141, column: 13, scope: !37)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 141, column: 13)
!38 = !DILocation(line: 141, column: 13, scope: !32)
!39 = !DILocation(line: 142, column: 10, scope: !37)
!40 = !DILocation(line: 145, column: 19, scope: !32)
!41 = !DILocation(line: 145, column: 17, scope: !32)
!42 = !DILocation(line: 147, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !1, line: 147, column: 13)
!44 = !DILocation(line: 147, column: 13, scope: !32)
!45 = !DILocation(line: 148, column: 10, scope: !43)
!46 = !DILocation(line: 150, column: 14, scope: !47)
!47 = distinct !DILexicalBlock(scope: !32, file: !1, line: 150, column: 13)
!48 = !DILocation(line: 150, column: 13, scope: !32)
!49 = !DILocation(line: 151, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 150, column: 23)
!51 = !DILocation(line: 152, column: 14, scope: !52)
!52 = distinct !DILexicalBlock(scope: !50, file: !1, line: 152, column: 14)
!53 = !DILocation(line: 152, column: 14, scope: !50)
!54 = !DILocation(line: 153, column: 11, scope: !52)
!55 = !DILocation(line: 154, column: 9, scope: !50)
!56 = !DILocation(line: 157, column: 9, scope: !32)
!57 = !DILocation(line: 158, column: 13, scope: !58)
!58 = distinct !DILexicalBlock(scope: !32, file: !1, line: 158, column: 13)
!59 = !DILocation(line: 158, column: 13, scope: !32)
!60 = !DILocation(line: 159, column: 10, scope: !58)
!61 = distinct !{!61, !28, !62, !63, !64}
!62 = !DILocation(line: 160, column: 8, scope: !17)
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !DILocation(line: 162, column: 8, scope: !17)
!66 = !DILocation(line: 163, column: 1, scope: !17)
!67 = distinct !DISubprogram(name: "a20_test_short", scope: !1, file: !1, line: 77, type: !18, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!68 = !DILocation(line: 79, column: 9, scope: !67)
!69 = !DILocation(line: 79, column: 2, scope: !67)
!70 = distinct !DISubprogram(name: "enable_a20_bios", scope: !1, file: !1, line: 89, type: !71, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{null}
!73 = !{!74}
!74 = !DILocalVariable(name: "ireg", scope: !70, file: !1, line: 91, type: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !76, line: 206, size: 352, elements: !77)
!76 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !76, line: 207, baseType: !79, size: 352)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !76, line: 207, size: 352, elements: !80)
!80 = !{!81, !95, !123}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !76, line: 208, baseType: !82, size: 352)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !76, line: 208, size: 352, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !82, file: !76, line: 209, baseType: !4, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !82, file: !76, line: 210, baseType: !4, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !82, file: !76, line: 211, baseType: !4, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !82, file: !76, line: 212, baseType: !4, size: 32, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !82, file: !76, line: 213, baseType: !4, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !82, file: !76, line: 214, baseType: !4, size: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !82, file: !76, line: 215, baseType: !4, size: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !82, file: !76, line: 216, baseType: !4, size: 32, offset: 224)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !82, file: !76, line: 217, baseType: !4, size: 32, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !82, file: !76, line: 218, baseType: !4, size: 32, offset: 288)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !82, file: !76, line: 219, baseType: !4, size: 32, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !76, line: 221, baseType: !96, size: 352)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !76, line: 221, size: 352, elements: !97)
!97 = !{!98, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !96, file: !76, line: 222, baseType: !99, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !5, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !7, line: 24, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !96, file: !76, line: 222, baseType: !99, size: 16, offset: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !96, file: !76, line: 223, baseType: !99, size: 16, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !96, file: !76, line: 223, baseType: !99, size: 16, offset: 48)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !96, file: !76, line: 224, baseType: !99, size: 16, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !96, file: !76, line: 224, baseType: !99, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !96, file: !76, line: 225, baseType: !99, size: 16, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !96, file: !76, line: 225, baseType: !99, size: 16, offset: 112)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !96, file: !76, line: 226, baseType: !99, size: 16, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !96, file: !76, line: 226, baseType: !99, size: 16, offset: 144)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !96, file: !76, line: 227, baseType: !99, size: 16, offset: 160)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !96, file: !76, line: 227, baseType: !99, size: 16, offset: 176)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !96, file: !76, line: 228, baseType: !99, size: 16, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !96, file: !76, line: 228, baseType: !99, size: 16, offset: 208)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !96, file: !76, line: 229, baseType: !99, size: 16, offset: 224)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !96, file: !76, line: 229, baseType: !99, size: 16, offset: 240)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !96, file: !76, line: 230, baseType: !99, size: 16, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !96, file: !76, line: 230, baseType: !99, size: 16, offset: 272)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !96, file: !76, line: 231, baseType: !99, size: 16, offset: 288)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !96, file: !76, line: 231, baseType: !99, size: 16, offset: 304)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !76, line: 232, baseType: !99, size: 16, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !96, file: !76, line: 232, baseType: !99, size: 16, offset: 336)
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !76, line: 234, baseType: !124, size: 256)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !76, line: 234, size: 256, elements: !125)
!125 = !{!126, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !124, file: !76, line: 235, baseType: !127, size: 8)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !5, line: 17, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !7, line: 21, baseType: !129)
!129 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !124, file: !76, line: 235, baseType: !127, size: 8, offset: 8)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !124, file: !76, line: 235, baseType: !127, size: 8, offset: 16)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !124, file: !76, line: 235, baseType: !127, size: 8, offset: 24)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !124, file: !76, line: 236, baseType: !127, size: 8, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !124, file: !76, line: 236, baseType: !127, size: 8, offset: 40)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !124, file: !76, line: 236, baseType: !127, size: 8, offset: 48)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !124, file: !76, line: 236, baseType: !127, size: 8, offset: 56)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !124, file: !76, line: 237, baseType: !127, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !124, file: !76, line: 237, baseType: !127, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !124, file: !76, line: 237, baseType: !127, size: 8, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !124, file: !76, line: 237, baseType: !127, size: 8, offset: 88)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !124, file: !76, line: 238, baseType: !127, size: 8, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !124, file: !76, line: 238, baseType: !127, size: 8, offset: 104)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !124, file: !76, line: 238, baseType: !127, size: 8, offset: 112)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !124, file: !76, line: 238, baseType: !127, size: 8, offset: 120)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !124, file: !76, line: 239, baseType: !127, size: 8, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !124, file: !76, line: 239, baseType: !127, size: 8, offset: 136)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !124, file: !76, line: 239, baseType: !127, size: 8, offset: 144)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !124, file: !76, line: 239, baseType: !127, size: 8, offset: 152)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !124, file: !76, line: 240, baseType: !127, size: 8, offset: 160)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !124, file: !76, line: 240, baseType: !127, size: 8, offset: 168)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !124, file: !76, line: 240, baseType: !127, size: 8, offset: 176)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !124, file: !76, line: 240, baseType: !127, size: 8, offset: 184)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !124, file: !76, line: 241, baseType: !127, size: 8, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !124, file: !76, line: 241, baseType: !127, size: 8, offset: 200)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !124, file: !76, line: 241, baseType: !127, size: 8, offset: 208)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !124, file: !76, line: 241, baseType: !127, size: 8, offset: 216)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !124, file: !76, line: 242, baseType: !127, size: 8, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !124, file: !76, line: 242, baseType: !127, size: 8, offset: 232)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !124, file: !76, line: 242, baseType: !127, size: 8, offset: 240)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !124, file: !76, line: 242, baseType: !127, size: 8, offset: 248)
!161 = !DILocation(line: 91, column: 2, scope: !70)
!162 = !DILocation(line: 91, column: 18, scope: !70)
!163 = !DILocation(line: 93, column: 2, scope: !70)
!164 = !DILocation(line: 94, column: 7, scope: !70)
!165 = !DILocation(line: 94, column: 10, scope: !70)
!166 = !DILocation(line: 95, column: 2, scope: !70)
!167 = !DILocation(line: 96, column: 1, scope: !70)
!168 = distinct !DISubprogram(name: "empty_8042", scope: !1, file: !1, line: 19, type: !18, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170, !171, !172}
!170 = !DILocalVariable(name: "status", scope: !168, file: !1, line: 21, type: !127)
!171 = !DILocalVariable(name: "loops", scope: !168, file: !1, line: 22, type: !20)
!172 = !DILocalVariable(name: "ffs", scope: !168, file: !1, line: 23, type: !20)
!173 = !DILocation(line: 21, column: 2, scope: !168)
!174 = !DILocation(line: 21, column: 5, scope: !168)
!175 = !DILocation(line: 22, column: 2, scope: !168)
!176 = !DILocation(line: 22, column: 6, scope: !168)
!177 = !DILocation(line: 23, column: 2, scope: !168)
!178 = !DILocation(line: 23, column: 6, scope: !168)
!179 = !DILocation(line: 25, column: 2, scope: !168)
!180 = !DILocation(line: 25, column: 14, scope: !168)
!181 = !DILocation(line: 26, column: 3, scope: !182)
!182 = distinct !DILexicalBlock(scope: !168, file: !1, line: 25, column: 18)
!183 = !DILocation(line: 28, column: 12, scope: !182)
!184 = !DILocation(line: 28, column: 10, scope: !182)
!185 = !DILocation(line: 29, column: 7, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 29, column: 7)
!187 = !DILocation(line: 29, column: 14, scope: !186)
!188 = !DILocation(line: 29, column: 7, scope: !182)
!189 = !DILocation(line: 31, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 31, column: 8)
!191 = distinct !DILexicalBlock(scope: !186, file: !1, line: 29, column: 23)
!192 = !DILocation(line: 31, column: 8, scope: !191)
!193 = !DILocation(line: 32, column: 5, scope: !190)
!194 = !DILocation(line: 33, column: 3, scope: !191)
!195 = !DILocation(line: 34, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !182, file: !1, line: 34, column: 7)
!197 = !DILocation(line: 34, column: 14, scope: !196)
!198 = !DILocation(line: 34, column: 7, scope: !182)
!199 = !DILocation(line: 36, column: 4, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 34, column: 19)
!201 = !DILocation(line: 37, column: 10, scope: !200)
!202 = !DILocation(line: 38, column: 3, scope: !200)
!203 = !DILocation(line: 38, column: 16, scope: !204)
!204 = distinct !DILexicalBlock(scope: !196, file: !1, line: 38, column: 14)
!205 = !DILocation(line: 38, column: 23, scope: !204)
!206 = !DILocation(line: 38, column: 14, scope: !196)
!207 = !DILocation(line: 40, column: 4, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !1, line: 38, column: 29)
!209 = distinct !{!209, !179, !210, !63, !64}
!210 = !DILocation(line: 42, column: 2, scope: !168)
!211 = !DILocation(line: 44, column: 2, scope: !168)
!212 = !DILocation(line: 45, column: 1, scope: !168)
!213 = distinct !DISubprogram(name: "enable_a20_kbc", scope: !1, file: !1, line: 98, type: !71, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!214 = !DILocation(line: 100, column: 2, scope: !213)
!215 = !DILocation(line: 102, column: 2, scope: !213)
!216 = !DILocation(line: 103, column: 2, scope: !213)
!217 = !DILocation(line: 105, column: 2, scope: !213)
!218 = !DILocation(line: 106, column: 2, scope: !213)
!219 = !DILocation(line: 108, column: 2, scope: !213)
!220 = !DILocation(line: 109, column: 2, scope: !213)
!221 = !DILocation(line: 110, column: 1, scope: !213)
!222 = distinct !DISubprogram(name: "a20_test_long", scope: !1, file: !1, line: 84, type: !18, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!223 = !DILocation(line: 86, column: 9, scope: !222)
!224 = !DILocation(line: 86, column: 2, scope: !222)
!225 = distinct !DISubprogram(name: "enable_a20_fast", scope: !1, file: !1, line: 112, type: !71, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!226 = !{!227}
!227 = !DILocalVariable(name: "port_a", scope: !225, file: !1, line: 114, type: !127)
!228 = !DILocation(line: 114, column: 2, scope: !225)
!229 = !DILocation(line: 114, column: 5, scope: !225)
!230 = !DILocation(line: 116, column: 11, scope: !225)
!231 = !DILocation(line: 116, column: 9, scope: !225)
!232 = !DILocation(line: 117, column: 9, scope: !225)
!233 = !DILocation(line: 118, column: 9, scope: !225)
!234 = !DILocation(line: 119, column: 2, scope: !225)
!235 = !DILocation(line: 119, column: 7, scope: !225)
!236 = !DILocation(line: 120, column: 1, scope: !225)
!237 = distinct !DISubprogram(name: "a20_test", scope: !1, file: !1, line: 54, type: !238, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!20, !20}
!240 = !{!241, !242, !243, !244}
!241 = !DILocalVariable(name: "loops", arg: 1, scope: !237, file: !1, line: 54, type: !20)
!242 = !DILocalVariable(name: "ok", scope: !237, file: !1, line: 56, type: !20)
!243 = !DILocalVariable(name: "saved", scope: !237, file: !1, line: 57, type: !20)
!244 = !DILocalVariable(name: "ctr", scope: !237, file: !1, line: 57, type: !20)
!245 = !DILocation(line: 54, column: 25, scope: !237)
!246 = !DILocation(line: 56, column: 2, scope: !237)
!247 = !DILocation(line: 56, column: 6, scope: !237)
!248 = !DILocation(line: 57, column: 2, scope: !237)
!249 = !DILocation(line: 57, column: 6, scope: !237)
!250 = !DILocation(line: 57, column: 13, scope: !237)
!251 = !DILocation(line: 59, column: 2, scope: !237)
!252 = !DILocation(line: 60, column: 2, scope: !237)
!253 = !DILocation(line: 62, column: 16, scope: !237)
!254 = !DILocation(line: 62, column: 14, scope: !237)
!255 = !DILocation(line: 62, column: 8, scope: !237)
!256 = !DILocation(line: 64, column: 2, scope: !237)
!257 = !DILocation(line: 64, column: 14, scope: !237)
!258 = !DILocation(line: 65, column: 10, scope: !259)
!259 = distinct !DILexicalBlock(scope: !237, file: !1, line: 64, column: 18)
!260 = !DILocation(line: 65, column: 3, scope: !259)
!261 = !DILocation(line: 66, column: 3, scope: !259)
!262 = !DILocation(line: 67, column: 8, scope: !259)
!263 = !DILocation(line: 67, column: 37, scope: !259)
!264 = !DILocation(line: 67, column: 35, scope: !259)
!265 = !DILocation(line: 67, column: 6, scope: !259)
!266 = !DILocation(line: 68, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !259, file: !1, line: 68, column: 7)
!268 = !DILocation(line: 68, column: 7, scope: !259)
!269 = !DILocation(line: 69, column: 4, scope: !267)
!270 = distinct !{!270, !256, !271, !63, !64}
!271 = !DILocation(line: 70, column: 2, scope: !237)
!272 = !DILocation(line: 72, column: 9, scope: !237)
!273 = !DILocation(line: 72, column: 2, scope: !237)
!274 = !DILocation(line: 73, column: 9, scope: !237)
!275 = !DILocation(line: 74, column: 1, scope: !237)
!276 = !DILocation(line: 73, column: 2, scope: !237)
!277 = distinct !DISubprogram(name: "set_fs", scope: !76, file: !76, line: 54, type: !278, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !99}
!280 = !{!281}
!281 = !DILocalVariable(name: "seg", arg: 1, scope: !277, file: !76, line: 54, type: !99)
!282 = !DILocation(line: 54, column: 31, scope: !277)
!283 = !DILocation(line: 56, column: 40, scope: !277)
!284 = !DILocation(line: 56, column: 2, scope: !277)
!285 = !{i64 115607}
!286 = !DILocation(line: 57, column: 1, scope: !277)
!287 = distinct !DISubprogram(name: "set_gs", scope: !76, file: !76, line: 65, type: !278, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !288)
!288 = !{!289}
!289 = !DILocalVariable(name: "seg", arg: 1, scope: !287, file: !76, line: 65, type: !99)
!290 = !DILocation(line: 65, column: 31, scope: !287)
!291 = !DILocation(line: 67, column: 40, scope: !287)
!292 = !DILocation(line: 67, column: 2, scope: !287)
!293 = !{i64 115792}
!294 = !DILocation(line: 68, column: 1, scope: !287)
!295 = distinct !DISubprogram(name: "rdfs32", scope: !76, file: !76, line: 92, type: !296, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !299)
!296 = !DISubroutineType(types: !297)
!297 = !{!4, !298}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !76, line: 76, baseType: !8)
!299 = !{!300, !301, !302, !304}
!300 = !DILocalVariable(name: "addr", arg: 1, scope: !295, file: !76, line: 92, type: !298)
!301 = !DILocalVariable(name: "ptr", scope: !295, file: !76, line: 94, type: !3)
!302 = !DILocalVariable(name: "__ptr", scope: !303, file: !76, line: 94, type: !9)
!303 = distinct !DILexicalBlock(scope: !295, file: !76, line: 94, column: 20)
!304 = !DILocalVariable(name: "v", scope: !295, file: !76, line: 95, type: !4)
!305 = !DILocation(line: 92, column: 33, scope: !295)
!306 = !DILocation(line: 94, column: 2, scope: !295)
!307 = !DILocation(line: 94, column: 7, scope: !295)
!308 = !DILocation(line: 94, column: 20, scope: !303)
!309 = !DILocation(line: 94, column: 20, scope: !295)
!310 = !DILocation(line: 95, column: 2, scope: !295)
!311 = !DILocation(line: 95, column: 6, scope: !295)
!312 = !DILocation(line: 96, column: 52, scope: !295)
!313 = !DILocation(line: 96, column: 2, scope: !295)
!314 = !{i64 116380}
!315 = !DILocation(line: 97, column: 9, scope: !295)
!316 = !DILocation(line: 98, column: 1, scope: !295)
!317 = !DILocation(line: 97, column: 2, scope: !295)
!318 = distinct !DISubprogram(name: "wrfs32", scope: !76, file: !76, line: 110, type: !319, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !4, !298}
!321 = !{!322, !323, !324, !325}
!322 = !DILocalVariable(name: "v", arg: 1, scope: !318, file: !76, line: 110, type: !4)
!323 = !DILocalVariable(name: "addr", arg: 2, scope: !318, file: !76, line: 110, type: !298)
!324 = !DILocalVariable(name: "ptr", scope: !318, file: !76, line: 112, type: !3)
!325 = !DILocalVariable(name: "__ptr", scope: !326, file: !76, line: 112, type: !9)
!326 = distinct !DILexicalBlock(scope: !318, file: !76, line: 112, column: 20)
!327 = !DILocation(line: 110, column: 31, scope: !318)
!328 = !DILocation(line: 110, column: 41, scope: !318)
!329 = !DILocation(line: 112, column: 2, scope: !318)
!330 = !DILocation(line: 112, column: 7, scope: !318)
!331 = !DILocation(line: 112, column: 20, scope: !326)
!332 = !DILocation(line: 112, column: 20, scope: !318)
!333 = !DILocation(line: 113, column: 42, scope: !318)
!334 = !DILocation(line: 113, column: 55, scope: !318)
!335 = !DILocation(line: 113, column: 2, scope: !318)
!336 = !{i64 116843}
!337 = !DILocation(line: 114, column: 1, scope: !318)
!338 = distinct !DISubprogram(name: "io_delay", scope: !76, file: !76, line: 39, type: !71, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !339)
!339 = !{!340}
!340 = !DILocalVariable(name: "DELAY_PORT", scope: !338, file: !76, line: 41, type: !341)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!342 = !DILocation(line: 41, column: 2, scope: !338)
!343 = !DILocation(line: 41, column: 12, scope: !338)
!344 = !DILocation(line: 42, column: 2, scope: !338)
!345 = !DILocation(line: 43, column: 1, scope: !338)
!346 = distinct !DISubprogram(name: "rdgs32", scope: !76, file: !76, line: 130, type: !296, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !347)
!347 = !{!348, !349, !350, !352}
!348 = !DILocalVariable(name: "addr", arg: 1, scope: !346, file: !76, line: 130, type: !298)
!349 = !DILocalVariable(name: "ptr", scope: !346, file: !76, line: 132, type: !3)
!350 = !DILocalVariable(name: "__ptr", scope: !351, file: !76, line: 132, type: !9)
!351 = distinct !DILexicalBlock(scope: !346, file: !76, line: 132, column: 20)
!352 = !DILocalVariable(name: "v", scope: !346, file: !76, line: 133, type: !4)
!353 = !DILocation(line: 130, column: 33, scope: !346)
!354 = !DILocation(line: 132, column: 2, scope: !346)
!355 = !DILocation(line: 132, column: 7, scope: !346)
!356 = !DILocation(line: 132, column: 20, scope: !351)
!357 = !DILocation(line: 132, column: 20, scope: !346)
!358 = !DILocation(line: 133, column: 2, scope: !346)
!359 = !DILocation(line: 133, column: 6, scope: !346)
!360 = !DILocation(line: 134, column: 52, scope: !346)
!361 = !DILocation(line: 134, column: 2, scope: !346)
!362 = !{i64 117315}
!363 = !DILocation(line: 135, column: 9, scope: !346)
!364 = !DILocation(line: 136, column: 1, scope: !346)
!365 = !DILocation(line: 135, column: 2, scope: !346)
!366 = !DISubprogram(name: "initregs", scope: !76, file: !76, line: 302, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!370 = !DISubprogram(name: "intcall", scope: !76, file: !76, line: 246, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !127, !373, !369}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
