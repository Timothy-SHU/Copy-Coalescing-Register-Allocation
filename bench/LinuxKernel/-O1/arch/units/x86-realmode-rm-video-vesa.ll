; ModuleID = 'arch/x86/realmode/rm/video-vesa.c'
source_filename = "arch/x86/realmode/rm/video-vesa.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.card_info = type { ptr, ptr, ptr, ptr, i32, i32, i16, i16 }
%struct.vesa_mode_info = type { i16, [2 x i8], i16, i16, [2 x i16], %struct.far_ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i16, [206 x i8] }
%struct.far_ptr = type { i16, i16 }
%struct.vesa_general_info = type <{ i32, i16, %struct.far_ptr, i32, %struct.far_ptr, i16, [236 x i8] }>
%struct.biosregs = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mode_info = type { i16, i16, i16, i16 }
%struct.anon.0 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [5 x i8] c"VESA\00", align 1, !dbg !0
@video_vesa = internal global %struct.card_info { ptr @.str, ptr @vesa_set_mode, ptr @vesa_probe, ptr null, i32 0, i32 0, i16 512, i16 512 }, section ".videocards", align 4, !dbg !7
@vminfo = internal global %struct.vesa_mode_info zeroinitializer, align 1, !dbg !36
@graphic_mode = external dso_local global i32, align 4
@force_x = external dso_local global i32, align 4
@force_y = external dso_local global i32, align 4
@do_restore = external dso_local global i32, align 4
@vginfo = internal global %struct.vesa_general_info zeroinitializer, align 1, !dbg !89
@HEAP = external dso_local global ptr, align 4
@heap_end = external dso_local global ptr, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @video_vesa], section "llvm.metadata"

; Function Attrs: nounwind
define internal i32 @vesa_set_mode(ptr inreg noundef %mode) #0 !dbg !127 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca ptr, align 4
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %is_graphic = alloca i32, align 4
  %vesa_mode = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !129, metadata !DIExpression()), !dbg !214
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !130, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !211, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_graphic) #6, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %is_graphic, metadata !212, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 2, ptr %vesa_mode) #6, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %vesa_mode, metadata !213, metadata !DIExpression()), !dbg !221
  %0 = load ptr, ptr %mode.addr, align 4, !dbg !222
  %mode1 = getelementptr inbounds %struct.mode_info, ptr %0, i32 0, i32 0, !dbg !223
  %1 = load i16, ptr %mode1, align 2, !dbg !223
  %conv = zext i16 %1 to i32, !dbg !222
  %sub = sub nsw i32 %conv, 512, !dbg !224
  %conv2 = trunc i32 %sub to i16, !dbg !222
  store i16 %conv2, ptr %vesa_mode, align 2, !dbg !221
  call void @llvm.memset.p0.i32(ptr align 1 @vminfo, i8 0, i32 256, i1 false), !dbg !225
  call void @initregs(ptr inreg noundef %ireg) #7, !dbg !226
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !227
  %ax = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 14, !dbg !227
  store i16 20225, ptr %ax, align 4, !dbg !228
  %3 = load i16, ptr %vesa_mode, align 2, !dbg !229
  %4 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !230
  %cx = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 12, !dbg !230
  store i16 %3, ptr %cx, align 4, !dbg !231
  %5 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !232
  %di = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 0, !dbg !232
  store i16 ptrtoint (ptr @vminfo to i16), ptr %di, align 4, !dbg !233
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #7, !dbg !234
  %6 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !235
  %ax3 = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 14, !dbg !235
  %7 = load i16, ptr %ax3, align 4, !dbg !235
  %conv4 = zext i16 %7 to i32, !dbg !237
  %cmp = icmp ne i32 %conv4, 79, !dbg !238
  br i1 %cmp, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !240

if.end:                                           ; preds = %entry
  %8 = load i16, ptr @vminfo, align 1, !dbg !241
  %conv6 = zext i16 %8 to i32, !dbg !243
  %and = and i32 %conv6, 21, !dbg !244
  %cmp7 = icmp eq i32 %and, 5, !dbg !245
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !246

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %is_graphic, align 4, !dbg !247
  br label %if.end10, !dbg !249

if.else:                                          ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !250

if.end10:                                         ; preds = %if.then9
  call void @initregs(ptr inreg noundef %ireg) #7, !dbg !252
  %9 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !253
  %ax11 = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 14, !dbg !253
  store i16 20226, ptr %ax11, align 4, !dbg !254
  %10 = load i16, ptr %vesa_mode, align 2, !dbg !255
  %11 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !256
  %bx = getelementptr inbounds %struct.anon.0, ptr %11, i32 0, i32 8, !dbg !256
  store i16 %10, ptr %bx, align 4, !dbg !257
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #7, !dbg !258
  %12 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !259
  %ax12 = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 14, !dbg !259
  %13 = load i16, ptr %ax12, align 4, !dbg !259
  %conv13 = zext i16 %13 to i32, !dbg !261
  %cmp14 = icmp ne i32 %conv13, 79, !dbg !262
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !263

if.then16:                                        ; preds = %if.end10
  store i32 -1, ptr %retval, align 4, !dbg !264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !264

if.end17:                                         ; preds = %if.end10
  %14 = load i32, ptr %is_graphic, align 4, !dbg !265
  store i32 %14, ptr @graphic_mode, align 4, !dbg !266
  %15 = load i32, ptr %is_graphic, align 4, !dbg !267
  %tobool = icmp ne i32 %15, 0, !dbg !267
  br i1 %tobool, label %if.else21, label %if.then18, !dbg !269

if.then18:                                        ; preds = %if.end17
  %16 = load ptr, ptr %mode.addr, align 4, !dbg !270
  %x = getelementptr inbounds %struct.mode_info, ptr %16, i32 0, i32 1, !dbg !272
  %17 = load i16, ptr %x, align 2, !dbg !272
  %conv19 = zext i16 %17 to i32, !dbg !270
  store i32 %conv19, ptr @force_x, align 4, !dbg !273
  %18 = load ptr, ptr %mode.addr, align 4, !dbg !274
  %y = getelementptr inbounds %struct.mode_info, ptr %18, i32 0, i32 2, !dbg !275
  %19 = load i16, ptr %y, align 2, !dbg !275
  %conv20 = zext i16 %19 to i32, !dbg !274
  store i32 %conv20, ptr @force_y, align 4, !dbg !276
  store i32 1, ptr @do_restore, align 4, !dbg !277
  br label %if.end22, !dbg !278

if.else21:                                        ; preds = %if.end17
  call void @vesa_store_mode_params_graphics() #7, !dbg !279
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then18
  store i32 0, ptr %retval, align 4, !dbg !281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !281

cleanup:                                          ; preds = %if.end22, %if.then16, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %vesa_mode) #6, !dbg !282
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_graphic) #6, !dbg !282
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !282
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !282
  %20 = load i32, ptr %retval, align 4, !dbg !282
  ret i32 %20, !dbg !282
}

; Function Attrs: nounwind
define internal i32 @vesa_probe() #0 !dbg !283 {
entry:
  %retval = alloca i32, align 4
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %mode = alloca i16, align 2
  %mode_ptr = alloca i32, align 4
  %mi = alloca ptr, align 4
  %nmodes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #6, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !285, metadata !DIExpression()), !dbg !293
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #6, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !286, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #6, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !287, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode_ptr) #6, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %mode_ptr, metadata !288, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #6, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !290, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmodes) #6, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %nmodes, metadata !291, metadata !DIExpression()), !dbg !302
  store i32 0, ptr %nmodes, align 4, !dbg !302
  %call = call ptr @__get_heap(i32 inreg noundef 8, i32 inreg noundef 2, i32 inreg noundef 0) #7, !dbg !303
  store ptr %call, ptr getelementptr inbounds (%struct.card_info, ptr @video_vesa, i32 0, i32 3), align 4, !dbg !304
  call void @initregs(ptr inreg noundef %ireg) #7, !dbg !305
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !306
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !306
  store i16 20224, ptr %ax, align 4, !dbg !307
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !308
  %di = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !308
  store i16 ptrtoint (ptr @vginfo to i16), ptr %di, align 4, !dbg !309
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #7, !dbg !310
  %2 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !311
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 14, !dbg !311
  %3 = load i16, ptr %ax1, align 4, !dbg !311
  %conv = zext i16 %3 to i32, !dbg !313
  %cmp = icmp ne i32 %conv, 79, !dbg !314
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !315

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr @vginfo, align 1, !dbg !316
  %cmp3 = icmp ne i32 %4, 1095976278, !dbg !317
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !318

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load i16, ptr getelementptr inbounds (%struct.vesa_general_info, ptr @vginfo, i32 0, i32 1), align 1, !dbg !319
  %conv6 = zext i16 %5 to i32, !dbg !320
  %cmp7 = icmp slt i32 %conv6, 258, !dbg !321
  br i1 %cmp7, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !323

if.end:                                           ; preds = %lor.lhs.false5
  %6 = load i16, ptr getelementptr inbounds (%struct.vesa_general_info, ptr @vginfo, i32 0, i32 4, i32 1), align 1, !dbg !324
  call void @set_fs(i16 inreg noundef zeroext %6) #7, !dbg !325
  %7 = load i16, ptr getelementptr inbounds (%struct.vesa_general_info, ptr @vginfo, i32 0, i32 4), align 1, !dbg !326
  %conv9 = zext i16 %7 to i32, !dbg !327
  store i32 %conv9, ptr %mode_ptr, align 4, !dbg !328
  br label %while.cond, !dbg !329

while.cond:                                       ; preds = %if.end55, %if.then26, %if.then18, %if.end
  %8 = load i32, ptr %mode_ptr, align 4, !dbg !330
  %call10 = call zeroext i16 @rdfs16(i32 inreg noundef %8) #7, !dbg !331
  store i16 %call10, ptr %mode, align 2, !dbg !332
  %conv11 = zext i16 %call10 to i32, !dbg !333
  %cmp12 = icmp ne i32 %conv11, 65535, !dbg !334
  br i1 %cmp12, label %while.body, label %while.end, !dbg !329

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %mode_ptr, align 4, !dbg !335
  %add = add i32 %9, 2, !dbg !335
  store i32 %add, ptr %mode_ptr, align 4, !dbg !335
  %call14 = call zeroext i1 @heap_free(i32 inreg noundef 8) #7, !dbg !337
  br i1 %call14, label %if.end16, label %if.then15, !dbg !339

if.then15:                                        ; preds = %while.body
  br label %while.end, !dbg !340

if.end16:                                         ; preds = %while.body
  %10 = load i16, ptr %mode, align 2, !dbg !341
  %conv17 = zext i16 %10 to i32, !dbg !341
  %and = and i32 %conv17, -512, !dbg !343
  %tobool = icmp ne i32 %and, 0, !dbg !343
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !344

if.then18:                                        ; preds = %if.end16
  br label %while.cond, !dbg !345, !llvm.loop !346

if.end19:                                         ; preds = %if.end16
  call void @llvm.memset.p0.i32(ptr align 1 @vminfo, i8 0, i32 256, i1 false), !dbg !350
  %11 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !351
  %ax20 = getelementptr inbounds %struct.anon.0, ptr %11, i32 0, i32 14, !dbg !351
  store i16 20225, ptr %ax20, align 4, !dbg !352
  %12 = load i16, ptr %mode, align 2, !dbg !353
  %13 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !354
  %cx = getelementptr inbounds %struct.anon.0, ptr %13, i32 0, i32 12, !dbg !354
  store i16 %12, ptr %cx, align 4, !dbg !355
  %14 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !356
  %di21 = getelementptr inbounds %struct.anon.0, ptr %14, i32 0, i32 0, !dbg !356
  store i16 ptrtoint (ptr @vminfo to i16), ptr %di21, align 4, !dbg !357
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #7, !dbg !358
  %15 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !359
  %ax22 = getelementptr inbounds %struct.anon.0, ptr %15, i32 0, i32 14, !dbg !359
  %16 = load i16, ptr %ax22, align 4, !dbg !359
  %conv23 = zext i16 %16 to i32, !dbg !361
  %cmp24 = icmp ne i32 %conv23, 79, !dbg !362
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !363

if.then26:                                        ; preds = %if.end19
  br label %while.cond, !dbg !364, !llvm.loop !346

if.end27:                                         ; preds = %if.end19
  %17 = load i16, ptr @vminfo, align 1, !dbg !365
  %conv28 = zext i16 %17 to i32, !dbg !367
  %and29 = and i32 %conv28, 21, !dbg !368
  %cmp30 = icmp eq i32 %and29, 5, !dbg !369
  br i1 %cmp30, label %if.then32, label %if.else, !dbg !370

if.then32:                                        ; preds = %if.end27
  %call33 = call ptr @__get_heap(i32 inreg noundef 8, i32 inreg noundef 2, i32 inreg noundef 1) #7, !dbg !371
  store ptr %call33, ptr %mi, align 4, !dbg !373
  %18 = load i16, ptr %mode, align 2, !dbg !374
  %conv34 = zext i16 %18 to i32, !dbg !374
  %add35 = add nsw i32 %conv34, 512, !dbg !375
  %conv36 = trunc i32 %add35 to i16, !dbg !374
  %19 = load ptr, ptr %mi, align 4, !dbg !376
  %mode37 = getelementptr inbounds %struct.mode_info, ptr %19, i32 0, i32 0, !dbg !377
  store i16 %conv36, ptr %mode37, align 2, !dbg !378
  %20 = load ptr, ptr %mi, align 4, !dbg !379
  %depth = getelementptr inbounds %struct.mode_info, ptr %20, i32 0, i32 3, !dbg !380
  store i16 0, ptr %depth, align 2, !dbg !381
  %21 = load i16, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 7), align 1, !dbg !382
  %22 = load ptr, ptr %mi, align 4, !dbg !383
  %x = getelementptr inbounds %struct.mode_info, ptr %22, i32 0, i32 1, !dbg !384
  store i16 %21, ptr %x, align 2, !dbg !385
  %23 = load i16, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 8), align 1, !dbg !386
  %24 = load ptr, ptr %mi, align 4, !dbg !387
  %y = getelementptr inbounds %struct.mode_info, ptr %24, i32 0, i32 2, !dbg !388
  store i16 %23, ptr %y, align 2, !dbg !389
  %25 = load i32, ptr %nmodes, align 4, !dbg !390
  %inc = add nsw i32 %25, 1, !dbg !390
  store i32 %inc, ptr %nmodes, align 4, !dbg !390
  br label %if.end55, !dbg !391

if.else:                                          ; preds = %if.end27
  %26 = load i16, ptr @vminfo, align 1, !dbg !392
  %conv38 = zext i16 %26 to i32, !dbg !394
  %and39 = and i32 %conv38, 153, !dbg !395
  %cmp40 = icmp eq i32 %and39, 153, !dbg !396
  br i1 %cmp40, label %land.lhs.true, label %if.end54, !dbg !397

land.lhs.true:                                    ; preds = %if.else
  %27 = load i8, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 14), align 1, !dbg !398
  %conv42 = zext i8 %27 to i32, !dbg !399
  %cmp43 = icmp eq i32 %conv42, 4, !dbg !400
  br i1 %cmp43, label %land.lhs.true49, label %lor.lhs.false45, !dbg !401

lor.lhs.false45:                                  ; preds = %land.lhs.true
  %28 = load i8, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 14), align 1, !dbg !402
  %conv46 = zext i8 %28 to i32, !dbg !403
  %cmp47 = icmp eq i32 %conv46, 6, !dbg !404
  br i1 %cmp47, label %land.lhs.true49, label %if.end54, !dbg !405

land.lhs.true49:                                  ; preds = %lor.lhs.false45, %land.lhs.true
  %29 = load i8, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 11), align 1, !dbg !406
  %conv50 = zext i8 %29 to i32, !dbg !407
  %cmp51 = icmp eq i32 %conv50, 1, !dbg !408
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !409

if.then53:                                        ; preds = %land.lhs.true49
  br label %if.end54, !dbg !410

if.end54:                                         ; preds = %if.then53, %land.lhs.true49, %lor.lhs.false45, %if.else
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then32
  br label %while.cond, !dbg !329, !llvm.loop !346

while.end:                                        ; preds = %if.then15, %while.cond
  %30 = load i32, ptr %nmodes, align 4, !dbg !412
  store i32 %30, ptr %retval, align 4, !dbg !413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !413

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmodes) #6, !dbg !414
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #6, !dbg !414
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode_ptr) #6, !dbg !414
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #6, !dbg !414
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #6, !dbg !414
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #6, !dbg !414
  %31 = load i32, ptr %retval, align 4, !dbg !414
  ret i32 %31, !dbg !414
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

declare !dbg !415 dso_local void @initregs(ptr inreg noundef) #4

declare !dbg !419 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #4

; Function Attrs: inlinehint nounwind
define internal void @vesa_store_mode_params_graphics() #5 !dbg !424 {
entry:
  ret void, !dbg !427
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind
define internal ptr @__get_heap(i32 inreg noundef %s, i32 inreg noundef %a, i32 inreg noundef %n) #5 !dbg !428 {
entry:
  %s.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  store i32 %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !432, metadata !DIExpression()), !dbg !436
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !433, metadata !DIExpression()), !dbg !437
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !434, metadata !DIExpression()), !dbg !438
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #6, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !435, metadata !DIExpression()), !dbg !440
  %0 = load ptr, ptr @HEAP, align 4, !dbg !441
  %1 = ptrtoint ptr %0 to i32, !dbg !442
  %2 = load i32, ptr %a.addr, align 4, !dbg !443
  %sub = sub i32 %2, 1, !dbg !444
  %add = add i32 %1, %sub, !dbg !445
  %3 = load i32, ptr %a.addr, align 4, !dbg !446
  %sub1 = sub i32 %3, 1, !dbg !447
  %not = xor i32 %sub1, -1, !dbg !448
  %and = and i32 %add, %not, !dbg !449
  %4 = inttoptr i32 %and to ptr, !dbg !450
  store ptr %4, ptr @HEAP, align 4, !dbg !451
  %5 = load ptr, ptr @HEAP, align 4, !dbg !452
  store ptr %5, ptr %tmp, align 4, !dbg !453
  %6 = load i32, ptr %s.addr, align 4, !dbg !454
  %7 = load i32, ptr %n.addr, align 4, !dbg !455
  %mul = mul i32 %6, %7, !dbg !456
  %8 = load ptr, ptr @HEAP, align 4, !dbg !457
  %add.ptr = getelementptr inbounds i8, ptr %8, i32 %mul, !dbg !457
  store ptr %add.ptr, ptr @HEAP, align 4, !dbg !457
  %9 = load ptr, ptr %tmp, align 4, !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #6, !dbg !459
  ret ptr %9, !dbg !460
}

; Function Attrs: inlinehint nounwind
define internal void @set_fs(i16 inreg noundef zeroext %seg) #5 !dbg !461 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load i16, ptr %seg.addr, align 2, !dbg !467
  call void asm sideeffect "movw $0,%fs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #6, !dbg !468, !srcloc !469
  ret void, !dbg !470
}

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @rdfs16(i32 inreg noundef %addr) #5 !dbg !471 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i16, align 2
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !475, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #6, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !476, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #6, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !477, metadata !DIExpression()), !dbg !483
  %0 = load i32, ptr %addr.addr, align 4, !dbg !483
  %1 = inttoptr i32 %0 to ptr, !dbg !483
  %2 = ptrtoint ptr %1 to i32, !dbg !483
  store i32 %2, ptr %__ptr, align 4, !dbg !483
  %3 = load i32, ptr %__ptr, align 4, !dbg !483
  %add = add i32 %3, 0, !dbg !483
  %4 = inttoptr i32 %add to ptr, !dbg !483
  store ptr %4, ptr %tmp, align 4, !dbg !483
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #6, !dbg !484
  %5 = load ptr, ptr %tmp, align 4, !dbg !483
  store ptr %5, ptr %ptr, align 4, !dbg !482
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #6, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %v, metadata !479, metadata !DIExpression()), !dbg !486
  %6 = load ptr, ptr %ptr, align 4, !dbg !487
  %7 = call i16 asm sideeffect "movw %fs:$1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %6) #6, !dbg !488, !srcloc !489
  store i16 %7, ptr %v, align 2, !dbg !488
  %8 = load i16, ptr %v, align 2, !dbg !490
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #6, !dbg !491
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #6, !dbg !491
  ret i16 %8, !dbg !492
}

; Function Attrs: inlinehint nounwind
define internal zeroext i1 @heap_free(i32 inreg noundef %n) #5 !dbg !493 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load ptr, ptr @heap_end, align 4, !dbg !501
  %1 = load ptr, ptr @HEAP, align 4, !dbg !502
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i32, !dbg !503
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32, !dbg !503
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !503
  %2 = load i32, ptr %n.addr, align 4, !dbg !504
  %cmp = icmp sge i32 %sub.ptr.sub, %2, !dbg !505
  ret i1 %cmp, !dbg !506
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/video-vesa.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a0097563657b8e02346dc1ea9ad13d2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "video_vesa", scope: !9, file: !2, line: 272, type: !103, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !10, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/realmode/rm/.video-vesa.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -D _WAKEUP -I ./arch/x86/boot -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/realmode/rm/video-vesa\22 -D KBUILD_BASENAME=\22video_vesa\22 -D KBUILD_MODNAME=\22video_vesa\22 -D __KBUILD_MODNAME=kmod_video_vesa -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/realmode/rm/video-vesa.ll arch/x86/realmode/rm/video-vesa.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !35, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "arch/x86/realmode/rm/video-vesa.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fbfad7af42157a8bcd9f257afdbea8")
!11 = !{!12, !17, !30, !31, !32, !33, !34}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 61, baseType: !14)
!13 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !15, line: 68, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_info", file: !19, line: 64, size: 64, elements: !20)
!19 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/video.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e17e471001fcbd7daaae50249ab4298")
!20 = !{!21, !27, !28, !29}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !18, file: !19, line: 65, baseType: !22, size: 16)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !26)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !18, file: !19, line: 66, baseType: !22, size: 16, offset: 16)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !18, file: !19, line: 66, baseType: !22, size: 16, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !18, file: !19, line: 67, baseType: !22, size: 16, offset: 48)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 32)
!32 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !{!0, !7, !36, !89}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "vminfo", scope: !9, file: !2, line: 21, type: !38, isLocal: true, isDefinition: true)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vesa_mode_info", file: !39, line: 29, size: 2048, elements: !40)
!39 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/vesa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4edd07366f8e39a6f359cd41996505b")
!40 = !{!41, !42, !49, !50, !51, !53, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !83, !84, !85}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "mode_attr", scope: !38, file: !39, line: 30, baseType: !22, size: 16)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "win_attr", scope: !38, file: !39, line: 31, baseType: !43, size: 16, offset: 16)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 16, elements: !47)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !46)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!48}
!48 = !DISubrange(count: 2)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "win_grain", scope: !38, file: !39, line: 32, baseType: !22, size: 16, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "win_size", scope: !38, file: !39, line: 33, baseType: !22, size: 16, offset: 48)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "win_seg", scope: !38, file: !39, line: 34, baseType: !52, size: 32, offset: 64)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !47)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "win_scheme", scope: !38, file: !39, line: 35, baseType: !54, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "far_ptr", file: !39, line: 13, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 11, size: 32, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !55, file: !39, line: 12, baseType: !22, size: 16)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !55, file: !39, line: 12, baseType: !22, size: 16, offset: 16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "logical_scan", scope: !38, file: !39, line: 36, baseType: !22, size: 16, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "h_res", scope: !38, file: !39, line: 38, baseType: !22, size: 16, offset: 144)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "v_res", scope: !38, file: !39, line: 39, baseType: !22, size: 16, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "char_width", scope: !38, file: !39, line: 40, baseType: !44, size: 8, offset: 176)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "char_height", scope: !38, file: !39, line: 41, baseType: !44, size: 8, offset: 184)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "memory_planes", scope: !38, file: !39, line: 42, baseType: !44, size: 8, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !38, file: !39, line: 43, baseType: !44, size: 8, offset: 200)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "banks", scope: !38, file: !39, line: 44, baseType: !44, size: 8, offset: 208)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "memory_layout", scope: !38, file: !39, line: 45, baseType: !44, size: 8, offset: 216)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "bank_size", scope: !38, file: !39, line: 46, baseType: !44, size: 8, offset: 224)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "image_planes", scope: !38, file: !39, line: 47, baseType: !44, size: 8, offset: 232)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "page_function", scope: !38, file: !39, line: 48, baseType: !44, size: 8, offset: 240)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rmask", scope: !38, file: !39, line: 50, baseType: !44, size: 8, offset: 248)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rpos", scope: !38, file: !39, line: 51, baseType: !44, size: 8, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gmask", scope: !38, file: !39, line: 52, baseType: !44, size: 8, offset: 264)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gpos", scope: !38, file: !39, line: 53, baseType: !44, size: 8, offset: 272)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "bmask", scope: !38, file: !39, line: 54, baseType: !44, size: 8, offset: 280)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "bpos", scope: !38, file: !39, line: 55, baseType: !44, size: 8, offset: 288)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "resv_mask", scope: !38, file: !39, line: 56, baseType: !44, size: 8, offset: 296)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "resv_pos", scope: !38, file: !39, line: 57, baseType: !44, size: 8, offset: 304)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "dcm_info", scope: !38, file: !39, line: 58, baseType: !44, size: 8, offset: 312)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_ptr", scope: !38, file: !39, line: 60, baseType: !81, size: 32, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "offscreen_ptr", scope: !38, file: !39, line: 61, baseType: !81, size: 32, offset: 352)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "offscreen_size", scope: !38, file: !39, line: 62, baseType: !22, size: 16, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !38, file: !39, line: 64, baseType: !86, size: 1648, offset: 400)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1648, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 206)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "vginfo", scope: !9, file: !2, line: 20, type: !91, isLocal: true, isDefinition: true)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vesa_general_info", file: !39, line: 16, size: 2048, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98, !99}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !91, file: !39, line: 17, baseType: !81, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !91, file: !39, line: 18, baseType: !22, size: 16, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_string", scope: !91, file: !39, line: 19, baseType: !54, size: 32, offset: 48)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !91, file: !39, line: 20, baseType: !81, size: 32, offset: 80)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "video_mode_ptr", scope: !91, file: !39, line: 21, baseType: !54, size: 32, offset: 112)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "total_memory", scope: !91, file: !39, line: 22, baseType: !22, size: 16, offset: 144)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !91, file: !39, line: 24, baseType: !100, size: 1888, offset: 160)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1888, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 236)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_info", file: !19, line: 70, size: 224, elements: !104)
!104 = !{!105, !108, !112, !116, !117, !118, !119, !120}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !103, file: !19, line: 71, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !103, file: !19, line: 72, baseType: !109, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!110 = !DISubroutineType(types: !111)
!111 = !{!34, !17}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !103, file: !19, line: 73, baseType: !113, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!114 = !DISubroutineType(types: !115)
!115 = !{!34}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !103, file: !19, line: 74, baseType: !17, size: 32, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "nmodes", scope: !103, file: !19, line: 75, baseType: !34, size: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !103, file: !19, line: 76, baseType: !34, size: 32, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_first", scope: !103, file: !19, line: 77, baseType: !22, size: 16, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_n", scope: !103, file: !19, line: 78, baseType: !22, size: 16, offset: 208)
!121 = !{i32 1, !"NumRegisterParameters", i32 3}
!122 = !{i32 7, !"Dwarf Version", i32 5}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{i32 1, !"wchar_size", i32 4}
!125 = !{i32 1, !"override-stack-alignment", i32 4}
!126 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!127 = distinct !DISubprogram(name: "vesa_set_mode", scope: !2, file: !2, line: 104, type: !110, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !128)
!128 = !{!129, !130, !211, !212, !213}
!129 = !DILocalVariable(name: "mode", arg: 1, scope: !127, file: !2, line: 104, type: !17)
!130 = !DILocalVariable(name: "ireg", scope: !127, file: !2, line: 106, type: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !132, line: 206, size: 352, elements: !133)
!132 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !132, line: 207, baseType: !135, size: 352)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !132, line: 207, size: 352, elements: !136)
!136 = !{!137, !151, !176}
!137 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !132, line: 208, baseType: !138, size: 352)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !132, line: 208, size: 352, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !138, file: !132, line: 209, baseType: !81, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !138, file: !132, line: 210, baseType: !81, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !138, file: !132, line: 211, baseType: !81, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !138, file: !132, line: 212, baseType: !81, size: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !138, file: !132, line: 213, baseType: !81, size: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !138, file: !132, line: 214, baseType: !81, size: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !138, file: !132, line: 215, baseType: !81, size: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !138, file: !132, line: 216, baseType: !81, size: 32, offset: 224)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !138, file: !132, line: 217, baseType: !81, size: 32, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !138, file: !132, line: 218, baseType: !81, size: 32, offset: 288)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !138, file: !132, line: 219, baseType: !81, size: 32, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !132, line: 221, baseType: !152, size: 352)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !132, line: 221, size: 352, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !152, file: !132, line: 222, baseType: !22, size: 16)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !152, file: !132, line: 222, baseType: !22, size: 16, offset: 16)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !152, file: !132, line: 223, baseType: !22, size: 16, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !152, file: !132, line: 223, baseType: !22, size: 16, offset: 48)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !152, file: !132, line: 224, baseType: !22, size: 16, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !152, file: !132, line: 224, baseType: !22, size: 16, offset: 80)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !152, file: !132, line: 225, baseType: !22, size: 16, offset: 96)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !152, file: !132, line: 225, baseType: !22, size: 16, offset: 112)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !152, file: !132, line: 226, baseType: !22, size: 16, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !152, file: !132, line: 226, baseType: !22, size: 16, offset: 144)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !152, file: !132, line: 227, baseType: !22, size: 16, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !152, file: !132, line: 227, baseType: !22, size: 16, offset: 176)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !152, file: !132, line: 228, baseType: !22, size: 16, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !152, file: !132, line: 228, baseType: !22, size: 16, offset: 208)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !152, file: !132, line: 229, baseType: !22, size: 16, offset: 224)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !152, file: !132, line: 229, baseType: !22, size: 16, offset: 240)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !152, file: !132, line: 230, baseType: !22, size: 16, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !152, file: !132, line: 230, baseType: !22, size: 16, offset: 272)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !152, file: !132, line: 231, baseType: !22, size: 16, offset: 288)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !152, file: !132, line: 231, baseType: !22, size: 16, offset: 304)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !132, line: 232, baseType: !22, size: 16, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !152, file: !132, line: 232, baseType: !22, size: 16, offset: 336)
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !135, file: !132, line: 234, baseType: !177, size: 256)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !132, line: 234, size: 256, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !177, file: !132, line: 235, baseType: !44, size: 8)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !177, file: !132, line: 235, baseType: !44, size: 8, offset: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !177, file: !132, line: 235, baseType: !44, size: 8, offset: 16)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !177, file: !132, line: 235, baseType: !44, size: 8, offset: 24)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !177, file: !132, line: 236, baseType: !44, size: 8, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !177, file: !132, line: 236, baseType: !44, size: 8, offset: 40)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !177, file: !132, line: 236, baseType: !44, size: 8, offset: 48)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !177, file: !132, line: 236, baseType: !44, size: 8, offset: 56)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !177, file: !132, line: 237, baseType: !44, size: 8, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !177, file: !132, line: 237, baseType: !44, size: 8, offset: 72)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !177, file: !132, line: 237, baseType: !44, size: 8, offset: 80)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !177, file: !132, line: 237, baseType: !44, size: 8, offset: 88)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !177, file: !132, line: 238, baseType: !44, size: 8, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !177, file: !132, line: 238, baseType: !44, size: 8, offset: 104)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !177, file: !132, line: 238, baseType: !44, size: 8, offset: 112)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !177, file: !132, line: 238, baseType: !44, size: 8, offset: 120)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !177, file: !132, line: 239, baseType: !44, size: 8, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !177, file: !132, line: 239, baseType: !44, size: 8, offset: 136)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !177, file: !132, line: 239, baseType: !44, size: 8, offset: 144)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !177, file: !132, line: 239, baseType: !44, size: 8, offset: 152)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !177, file: !132, line: 240, baseType: !44, size: 8, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !177, file: !132, line: 240, baseType: !44, size: 8, offset: 168)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !177, file: !132, line: 240, baseType: !44, size: 8, offset: 176)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !177, file: !132, line: 240, baseType: !44, size: 8, offset: 184)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !177, file: !132, line: 241, baseType: !44, size: 8, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !177, file: !132, line: 241, baseType: !44, size: 8, offset: 200)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !177, file: !132, line: 241, baseType: !44, size: 8, offset: 208)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !177, file: !132, line: 241, baseType: !44, size: 8, offset: 216)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !177, file: !132, line: 242, baseType: !44, size: 8, offset: 224)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !177, file: !132, line: 242, baseType: !44, size: 8, offset: 232)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !177, file: !132, line: 242, baseType: !44, size: 8, offset: 240)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !177, file: !132, line: 242, baseType: !44, size: 8, offset: 248)
!211 = !DILocalVariable(name: "oreg", scope: !127, file: !2, line: 106, type: !131)
!212 = !DILocalVariable(name: "is_graphic", scope: !127, file: !2, line: 107, type: !34)
!213 = !DILocalVariable(name: "vesa_mode", scope: !127, file: !2, line: 108, type: !22)
!214 = !DILocation(line: 104, column: 44, scope: !127)
!215 = !DILocation(line: 106, column: 2, scope: !127)
!216 = !DILocation(line: 106, column: 18, scope: !127)
!217 = !DILocation(line: 106, column: 24, scope: !127)
!218 = !DILocation(line: 107, column: 2, scope: !127)
!219 = !DILocation(line: 107, column: 6, scope: !127)
!220 = !DILocation(line: 108, column: 2, scope: !127)
!221 = !DILocation(line: 108, column: 6, scope: !127)
!222 = !DILocation(line: 108, column: 18, scope: !127)
!223 = !DILocation(line: 108, column: 24, scope: !127)
!224 = !DILocation(line: 108, column: 29, scope: !127)
!225 = !DILocation(line: 110, column: 2, scope: !127)
!226 = !DILocation(line: 112, column: 2, scope: !127)
!227 = !DILocation(line: 113, column: 7, scope: !127)
!228 = !DILocation(line: 113, column: 10, scope: !127)
!229 = !DILocation(line: 114, column: 12, scope: !127)
!230 = !DILocation(line: 114, column: 7, scope: !127)
!231 = !DILocation(line: 114, column: 10, scope: !127)
!232 = !DILocation(line: 115, column: 7, scope: !127)
!233 = !DILocation(line: 115, column: 10, scope: !127)
!234 = !DILocation(line: 116, column: 2, scope: !127)
!235 = !DILocation(line: 118, column: 11, scope: !236)
!236 = distinct !DILexicalBlock(scope: !127, file: !2, line: 118, column: 6)
!237 = !DILocation(line: 118, column: 6, scope: !236)
!238 = !DILocation(line: 118, column: 14, scope: !236)
!239 = !DILocation(line: 118, column: 6, scope: !127)
!240 = !DILocation(line: 119, column: 3, scope: !236)
!241 = !DILocation(line: 121, column: 14, scope: !242)
!242 = distinct !DILexicalBlock(scope: !127, file: !2, line: 121, column: 6)
!243 = !DILocation(line: 121, column: 7, scope: !242)
!244 = !DILocation(line: 121, column: 24, scope: !242)
!245 = !DILocation(line: 121, column: 32, scope: !242)
!246 = !DILocation(line: 121, column: 6, scope: !127)
!247 = !DILocation(line: 123, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !2, line: 121, column: 41)
!249 = !DILocation(line: 130, column: 2, scope: !248)
!250 = !DILocation(line: 131, column: 3, scope: !251)
!251 = distinct !DILexicalBlock(scope: !242, file: !2, line: 130, column: 9)
!252 = !DILocation(line: 135, column: 2, scope: !127)
!253 = !DILocation(line: 136, column: 7, scope: !127)
!254 = !DILocation(line: 136, column: 10, scope: !127)
!255 = !DILocation(line: 137, column: 12, scope: !127)
!256 = !DILocation(line: 137, column: 7, scope: !127)
!257 = !DILocation(line: 137, column: 10, scope: !127)
!258 = !DILocation(line: 138, column: 2, scope: !127)
!259 = !DILocation(line: 140, column: 11, scope: !260)
!260 = distinct !DILexicalBlock(scope: !127, file: !2, line: 140, column: 6)
!261 = !DILocation(line: 140, column: 6, scope: !260)
!262 = !DILocation(line: 140, column: 14, scope: !260)
!263 = !DILocation(line: 140, column: 6, scope: !127)
!264 = !DILocation(line: 141, column: 3, scope: !260)
!265 = !DILocation(line: 143, column: 17, scope: !127)
!266 = !DILocation(line: 143, column: 15, scope: !127)
!267 = !DILocation(line: 144, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !127, file: !2, line: 144, column: 6)
!269 = !DILocation(line: 144, column: 6, scope: !127)
!270 = !DILocation(line: 146, column: 13, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !2, line: 144, column: 19)
!272 = !DILocation(line: 146, column: 19, scope: !271)
!273 = !DILocation(line: 146, column: 11, scope: !271)
!274 = !DILocation(line: 147, column: 13, scope: !271)
!275 = !DILocation(line: 147, column: 19, scope: !271)
!276 = !DILocation(line: 147, column: 11, scope: !271)
!277 = !DILocation(line: 148, column: 14, scope: !271)
!278 = !DILocation(line: 149, column: 2, scope: !271)
!279 = !DILocation(line: 151, column: 3, scope: !280)
!280 = distinct !DILexicalBlock(scope: !268, file: !2, line: 149, column: 9)
!281 = !DILocation(line: 154, column: 2, scope: !127)
!282 = !DILocation(line: 155, column: 1, scope: !127)
!283 = distinct !DISubprogram(name: "vesa_probe", scope: !2, file: !2, line: 31, type: !114, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !284)
!284 = !{!285, !286, !287, !288, !290, !291}
!285 = !DILocalVariable(name: "ireg", scope: !283, file: !2, line: 33, type: !131)
!286 = !DILocalVariable(name: "oreg", scope: !283, file: !2, line: 33, type: !131)
!287 = !DILocalVariable(name: "mode", scope: !283, file: !2, line: 34, type: !22)
!288 = !DILocalVariable(name: "mode_ptr", scope: !283, file: !2, line: 35, type: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !132, line: 76, baseType: !16)
!290 = !DILocalVariable(name: "mi", scope: !283, file: !2, line: 36, type: !17)
!291 = !DILocalVariable(name: "nmodes", scope: !283, file: !2, line: 37, type: !34)
!292 = !DILocation(line: 33, column: 2, scope: !283)
!293 = !DILocation(line: 33, column: 18, scope: !283)
!294 = !DILocation(line: 33, column: 24, scope: !283)
!295 = !DILocation(line: 34, column: 2, scope: !283)
!296 = !DILocation(line: 34, column: 6, scope: !283)
!297 = !DILocation(line: 35, column: 2, scope: !283)
!298 = !DILocation(line: 35, column: 9, scope: !283)
!299 = !DILocation(line: 36, column: 2, scope: !283)
!300 = !DILocation(line: 36, column: 20, scope: !283)
!301 = !DILocation(line: 37, column: 2, scope: !283)
!302 = !DILocation(line: 37, column: 6, scope: !283)
!303 = !DILocation(line: 39, column: 21, scope: !283)
!304 = !DILocation(line: 39, column: 19, scope: !283)
!305 = !DILocation(line: 41, column: 2, scope: !283)
!306 = !DILocation(line: 42, column: 7, scope: !283)
!307 = !DILocation(line: 42, column: 10, scope: !283)
!308 = !DILocation(line: 43, column: 7, scope: !283)
!309 = !DILocation(line: 43, column: 10, scope: !283)
!310 = !DILocation(line: 44, column: 2, scope: !283)
!311 = !DILocation(line: 46, column: 11, scope: !312)
!312 = distinct !DILexicalBlock(scope: !283, file: !2, line: 46, column: 6)
!313 = !DILocation(line: 46, column: 6, scope: !312)
!314 = !DILocation(line: 46, column: 14, scope: !312)
!315 = !DILocation(line: 46, column: 24, scope: !312)
!316 = !DILocation(line: 47, column: 13, scope: !312)
!317 = !DILocation(line: 47, column: 23, scope: !312)
!318 = !DILocation(line: 47, column: 37, scope: !312)
!319 = !DILocation(line: 48, column: 13, scope: !312)
!320 = !DILocation(line: 48, column: 6, scope: !312)
!321 = !DILocation(line: 48, column: 21, scope: !312)
!322 = !DILocation(line: 46, column: 6, scope: !283)
!323 = !DILocation(line: 49, column: 3, scope: !312)
!324 = !DILocation(line: 51, column: 31, scope: !283)
!325 = !DILocation(line: 51, column: 2, scope: !283)
!326 = !DILocation(line: 52, column: 35, scope: !283)
!327 = !DILocation(line: 52, column: 13, scope: !283)
!328 = !DILocation(line: 52, column: 11, scope: !283)
!329 = !DILocation(line: 54, column: 2, scope: !283)
!330 = !DILocation(line: 54, column: 24, scope: !283)
!331 = !DILocation(line: 54, column: 17, scope: !283)
!332 = !DILocation(line: 54, column: 15, scope: !283)
!333 = !DILocation(line: 54, column: 9, scope: !283)
!334 = !DILocation(line: 54, column: 35, scope: !283)
!335 = !DILocation(line: 55, column: 12, scope: !336)
!336 = distinct !DILexicalBlock(scope: !283, file: !2, line: 54, column: 46)
!337 = !DILocation(line: 57, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !2, line: 57, column: 7)
!339 = !DILocation(line: 57, column: 7, scope: !336)
!340 = !DILocation(line: 58, column: 4, scope: !338)
!341 = !DILocation(line: 60, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !336, file: !2, line: 60, column: 7)
!343 = !DILocation(line: 60, column: 12, scope: !342)
!344 = !DILocation(line: 60, column: 7, scope: !336)
!345 = !DILocation(line: 61, column: 4, scope: !342)
!346 = distinct !{!346, !329, !347, !348, !349}
!347 = !DILocation(line: 99, column: 2, scope: !283)
!348 = !{!"llvm.loop.mustprogress"}
!349 = !{!"llvm.loop.unroll.disable"}
!350 = !DILocation(line: 63, column: 3, scope: !336)
!351 = !DILocation(line: 65, column: 8, scope: !336)
!352 = !DILocation(line: 65, column: 11, scope: !336)
!353 = !DILocation(line: 66, column: 13, scope: !336)
!354 = !DILocation(line: 66, column: 8, scope: !336)
!355 = !DILocation(line: 66, column: 11, scope: !336)
!356 = !DILocation(line: 67, column: 8, scope: !336)
!357 = !DILocation(line: 67, column: 11, scope: !336)
!358 = !DILocation(line: 68, column: 3, scope: !336)
!359 = !DILocation(line: 70, column: 12, scope: !360)
!360 = distinct !DILexicalBlock(scope: !336, file: !2, line: 70, column: 7)
!361 = !DILocation(line: 70, column: 7, scope: !360)
!362 = !DILocation(line: 70, column: 15, scope: !360)
!363 = !DILocation(line: 70, column: 7, scope: !336)
!364 = !DILocation(line: 71, column: 4, scope: !360)
!365 = !DILocation(line: 73, column: 15, scope: !366)
!366 = distinct !DILexicalBlock(scope: !336, file: !2, line: 73, column: 7)
!367 = !DILocation(line: 73, column: 8, scope: !366)
!368 = !DILocation(line: 73, column: 25, scope: !366)
!369 = !DILocation(line: 73, column: 33, scope: !366)
!370 = !DILocation(line: 73, column: 7, scope: !336)
!371 = !DILocation(line: 76, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !366, file: !2, line: 73, column: 42)
!373 = !DILocation(line: 76, column: 7, scope: !372)
!374 = !DILocation(line: 77, column: 16, scope: !372)
!375 = !DILocation(line: 77, column: 21, scope: !372)
!376 = !DILocation(line: 77, column: 4, scope: !372)
!377 = !DILocation(line: 77, column: 8, scope: !372)
!378 = !DILocation(line: 77, column: 14, scope: !372)
!379 = !DILocation(line: 78, column: 4, scope: !372)
!380 = !DILocation(line: 78, column: 8, scope: !372)
!381 = !DILocation(line: 78, column: 14, scope: !372)
!382 = !DILocation(line: 79, column: 23, scope: !372)
!383 = !DILocation(line: 79, column: 4, scope: !372)
!384 = !DILocation(line: 79, column: 8, scope: !372)
!385 = !DILocation(line: 79, column: 14, scope: !372)
!386 = !DILocation(line: 80, column: 23, scope: !372)
!387 = !DILocation(line: 80, column: 4, scope: !372)
!388 = !DILocation(line: 80, column: 8, scope: !372)
!389 = !DILocation(line: 80, column: 14, scope: !372)
!390 = !DILocation(line: 81, column: 10, scope: !372)
!391 = !DILocation(line: 82, column: 3, scope: !372)
!392 = !DILocation(line: 82, column: 22, scope: !393)
!393 = distinct !DILexicalBlock(scope: !366, file: !2, line: 82, column: 14)
!394 = !DILocation(line: 82, column: 15, scope: !393)
!395 = !DILocation(line: 82, column: 32, scope: !393)
!396 = !DILocation(line: 82, column: 40, scope: !393)
!397 = !DILocation(line: 82, column: 48, scope: !393)
!398 = !DILocation(line: 83, column: 15, scope: !393)
!399 = !DILocation(line: 83, column: 8, scope: !393)
!400 = !DILocation(line: 83, column: 29, scope: !393)
!401 = !DILocation(line: 83, column: 34, scope: !393)
!402 = !DILocation(line: 84, column: 15, scope: !393)
!403 = !DILocation(line: 84, column: 8, scope: !393)
!404 = !DILocation(line: 84, column: 29, scope: !393)
!405 = !DILocation(line: 84, column: 35, scope: !393)
!406 = !DILocation(line: 85, column: 14, scope: !393)
!407 = !DILocation(line: 85, column: 7, scope: !393)
!408 = !DILocation(line: 85, column: 28, scope: !393)
!409 = !DILocation(line: 82, column: 14, scope: !366)
!410 = !DILocation(line: 98, column: 3, scope: !411)
!411 = distinct !DILexicalBlock(scope: !393, file: !2, line: 85, column: 34)
!412 = !DILocation(line: 101, column: 9, scope: !283)
!413 = !DILocation(line: 101, column: 2, scope: !283)
!414 = !DILocation(line: 102, column: 1, scope: !283)
!415 = !DISubprogram(name: "initregs", scope: !132, file: !132, line: 302, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!419 = !DISubprogram(name: "intcall", scope: !132, file: !132, line: 246, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !44, !422, !418}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!424 = distinct !DISubprogram(name: "vesa_store_mode_params_graphics", scope: !2, file: !2, line: 28, type: !425, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!425 = !DISubroutineType(types: !426)
!426 = !{null}
!427 = !DILocation(line: 28, column: 59, scope: !424)
!428 = distinct !DISubprogram(name: "__get_heap", scope: !132, file: !132, line: 175, type: !429, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!30, !12, !12, !12}
!431 = !{!432, !433, !434, !435}
!432 = !DILocalVariable(name: "s", arg: 1, scope: !428, file: !132, line: 175, type: !12)
!433 = !DILocalVariable(name: "a", arg: 2, scope: !428, file: !132, line: 175, type: !12)
!434 = !DILocalVariable(name: "n", arg: 3, scope: !428, file: !132, line: 175, type: !12)
!435 = !DILocalVariable(name: "tmp", scope: !428, file: !132, line: 177, type: !30)
!436 = !DILocation(line: 175, column: 39, scope: !428)
!437 = !DILocation(line: 175, column: 49, scope: !428)
!438 = !DILocation(line: 175, column: 59, scope: !428)
!439 = !DILocation(line: 177, column: 2, scope: !428)
!440 = !DILocation(line: 177, column: 8, scope: !428)
!441 = !DILocation(line: 179, column: 27, scope: !428)
!442 = !DILocation(line: 179, column: 19, scope: !428)
!443 = !DILocation(line: 179, column: 33, scope: !428)
!444 = !DILocation(line: 179, column: 34, scope: !428)
!445 = !DILocation(line: 179, column: 31, scope: !428)
!446 = !DILocation(line: 179, column: 43, scope: !428)
!447 = !DILocation(line: 179, column: 44, scope: !428)
!448 = !DILocation(line: 179, column: 41, scope: !428)
!449 = !DILocation(line: 179, column: 39, scope: !428)
!450 = !DILocation(line: 179, column: 9, scope: !428)
!451 = !DILocation(line: 179, column: 7, scope: !428)
!452 = !DILocation(line: 180, column: 8, scope: !428)
!453 = !DILocation(line: 180, column: 6, scope: !428)
!454 = !DILocation(line: 181, column: 10, scope: !428)
!455 = !DILocation(line: 181, column: 12, scope: !428)
!456 = !DILocation(line: 181, column: 11, scope: !428)
!457 = !DILocation(line: 181, column: 7, scope: !428)
!458 = !DILocation(line: 182, column: 9, scope: !428)
!459 = !DILocation(line: 183, column: 1, scope: !428)
!460 = !DILocation(line: 182, column: 2, scope: !428)
!461 = distinct !DISubprogram(name: "set_fs", scope: !132, file: !132, line: 54, type: !462, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !22}
!464 = !{!465}
!465 = !DILocalVariable(name: "seg", arg: 1, scope: !461, file: !132, line: 54, type: !22)
!466 = !DILocation(line: 54, column: 31, scope: !461)
!467 = !DILocation(line: 56, column: 40, scope: !461)
!468 = !DILocation(line: 56, column: 2, scope: !461)
!469 = !{i64 118998}
!470 = !DILocation(line: 57, column: 1, scope: !461)
!471 = distinct !DISubprogram(name: "rdfs16", scope: !132, file: !132, line: 85, type: !472, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{!22, !289}
!474 = !{!475, !476, !477, !479}
!475 = !DILocalVariable(name: "addr", arg: 1, scope: !471, file: !132, line: 85, type: !289)
!476 = !DILocalVariable(name: "ptr", scope: !471, file: !132, line: 87, type: !31)
!477 = !DILocalVariable(name: "__ptr", scope: !478, file: !132, line: 87, type: !32)
!478 = distinct !DILexicalBlock(scope: !471, file: !132, line: 87, column: 20)
!479 = !DILocalVariable(name: "v", scope: !471, file: !132, line: 88, type: !22)
!480 = !DILocation(line: 85, column: 33, scope: !471)
!481 = !DILocation(line: 87, column: 2, scope: !471)
!482 = !DILocation(line: 87, column: 7, scope: !471)
!483 = !DILocation(line: 87, column: 20, scope: !478)
!484 = !DILocation(line: 87, column: 20, scope: !471)
!485 = !DILocation(line: 88, column: 2, scope: !471)
!486 = !DILocation(line: 88, column: 6, scope: !471)
!487 = !DILocation(line: 89, column: 52, scope: !471)
!488 = !DILocation(line: 89, column: 2, scope: !471)
!489 = !{i64 119609}
!490 = !DILocation(line: 90, column: 9, scope: !471)
!491 = !DILocation(line: 91, column: 1, scope: !471)
!492 = !DILocation(line: 90, column: 2, scope: !471)
!493 = distinct !DISubprogram(name: "heap_free", scope: !132, file: !132, line: 187, type: !494, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !498)
!494 = !DISubroutineType(types: !495)
!495 = !{!496, !12}
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 35, baseType: !497)
!497 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!498 = !{!499}
!499 = !DILocalVariable(name: "n", arg: 1, scope: !493, file: !132, line: 187, type: !12)
!500 = !DILocation(line: 187, column: 37, scope: !493)
!501 = !DILocation(line: 189, column: 15, scope: !493)
!502 = !DILocation(line: 189, column: 24, scope: !493)
!503 = !DILocation(line: 189, column: 23, scope: !493)
!504 = !DILocation(line: 189, column: 38, scope: !493)
!505 = !DILocation(line: 189, column: 30, scope: !493)
!506 = !DILocation(line: 189, column: 2, scope: !493)
