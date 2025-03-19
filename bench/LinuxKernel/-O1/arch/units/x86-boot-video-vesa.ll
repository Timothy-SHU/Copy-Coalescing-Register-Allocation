; ModuleID = 'arch/x86/boot/video-vesa.c'
source_filename = "arch/x86/boot/video-vesa.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.card_info = type { ptr, ptr, ptr, ptr, i32, i32, i16, i16 }
%struct.vesa_mode_info = type { i16, [2 x i8], i16, i16, [2 x i16], %struct.far_ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i16, [206 x i8] }
%struct.far_ptr = type { i16, i16 }
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
%struct.vesa_general_info = type <{ i32, i16, %struct.far_ptr, i32, %struct.far_ptr, i16, [236 x i8] }>
%struct.biosregs = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mode_info = type { i16, i16, i16, i16 }
%struct.anon.0 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.1 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [5 x i8] c"VESA\00", align 1, !dbg !0
@video_vesa = internal global %struct.card_info { ptr @.str, ptr @vesa_set_mode, ptr @vesa_probe, ptr null, i32 0, i32 0, i16 512, i16 512 }, section ".videocards", align 4, !dbg !7
@vminfo = internal global %struct.vesa_mode_info zeroinitializer, align 1, !dbg !35
@graphic_mode = external dso_local global i32, align 4
@force_x = external dso_local global i32, align 4
@force_y = external dso_local global i32, align 4
@do_restore = external dso_local global i32, align 4
@boot_params = external dso_local global %struct.boot_params, align 1
@vginfo = internal global %struct.vesa_general_info zeroinitializer, align 1, !dbg !88
@HEAP = external dso_local global ptr, align 4
@heap_end = external dso_local global ptr, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @video_vesa], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local void @vesa_store_edid() #0 !dbg !126 {
entry:
  ret void, !dbg !129
}

; Function Attrs: nounwind
define internal i32 @vesa_set_mode(ptr inreg noundef %mode) #0 !dbg !130 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca ptr, align 4
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %is_graphic = alloca i32, align 4
  %vesa_mode = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !132, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #7, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !133, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #7, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !214, metadata !DIExpression()), !dbg !220
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_graphic) #7, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %is_graphic, metadata !215, metadata !DIExpression()), !dbg !222
  call void @llvm.lifetime.start.p0(i64 2, ptr %vesa_mode) #7, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %vesa_mode, metadata !216, metadata !DIExpression()), !dbg !224
  %0 = load ptr, ptr %mode.addr, align 4, !dbg !225
  %mode1 = getelementptr inbounds %struct.mode_info, ptr %0, i32 0, i32 0, !dbg !226
  %1 = load i16, ptr %mode1, align 2, !dbg !226
  %conv = zext i16 %1 to i32, !dbg !225
  %sub = sub nsw i32 %conv, 512, !dbg !227
  %conv2 = trunc i32 %sub to i16, !dbg !225
  store i16 %conv2, ptr %vesa_mode, align 2, !dbg !224
  call void @llvm.memset.p0.i32(ptr align 1 @vminfo, i8 0, i32 256, i1 false), !dbg !228
  call void @initregs(ptr inreg noundef %ireg) #8, !dbg !229
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !230
  %ax = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 14, !dbg !230
  store i16 20225, ptr %ax, align 4, !dbg !231
  %3 = load i16, ptr %vesa_mode, align 2, !dbg !232
  %4 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !233
  %cx = getelementptr inbounds %struct.anon.0, ptr %4, i32 0, i32 12, !dbg !233
  store i16 %3, ptr %cx, align 4, !dbg !234
  %5 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !235
  %di = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 0, !dbg !235
  store i16 ptrtoint (ptr @vminfo to i16), ptr %di, align 4, !dbg !236
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #8, !dbg !237
  %6 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !238
  %ax3 = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 14, !dbg !238
  %7 = load i16, ptr %ax3, align 4, !dbg !238
  %conv4 = zext i16 %7 to i32, !dbg !240
  %cmp = icmp ne i32 %conv4, 79, !dbg !241
  br i1 %cmp, label %if.then, label %if.end, !dbg !242

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !243

if.end:                                           ; preds = %entry
  %8 = load i16, ptr @vminfo, align 1, !dbg !244
  %conv6 = zext i16 %8 to i32, !dbg !246
  %and = and i32 %conv6, 21, !dbg !247
  %cmp7 = icmp eq i32 %and, 5, !dbg !248
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !249

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %is_graphic, align 4, !dbg !250
  br label %if.end10, !dbg !252

if.else:                                          ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !253

if.end10:                                         ; preds = %if.then9
  call void @initregs(ptr inreg noundef %ireg) #8, !dbg !255
  %9 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !256
  %ax11 = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 14, !dbg !256
  store i16 20226, ptr %ax11, align 4, !dbg !257
  %10 = load i16, ptr %vesa_mode, align 2, !dbg !258
  %11 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !259
  %bx = getelementptr inbounds %struct.anon.0, ptr %11, i32 0, i32 8, !dbg !259
  store i16 %10, ptr %bx, align 4, !dbg !260
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #8, !dbg !261
  %12 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !262
  %ax12 = getelementptr inbounds %struct.anon.0, ptr %12, i32 0, i32 14, !dbg !262
  %13 = load i16, ptr %ax12, align 4, !dbg !262
  %conv13 = zext i16 %13 to i32, !dbg !264
  %cmp14 = icmp ne i32 %conv13, 79, !dbg !265
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !266

if.then16:                                        ; preds = %if.end10
  store i32 -1, ptr %retval, align 4, !dbg !267
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !267

if.end17:                                         ; preds = %if.end10
  %14 = load i32, ptr %is_graphic, align 4, !dbg !268
  store i32 %14, ptr @graphic_mode, align 4, !dbg !269
  %15 = load i32, ptr %is_graphic, align 4, !dbg !270
  %tobool = icmp ne i32 %15, 0, !dbg !270
  br i1 %tobool, label %if.else21, label %if.then18, !dbg !272

if.then18:                                        ; preds = %if.end17
  %16 = load ptr, ptr %mode.addr, align 4, !dbg !273
  %x = getelementptr inbounds %struct.mode_info, ptr %16, i32 0, i32 1, !dbg !275
  %17 = load i16, ptr %x, align 2, !dbg !275
  %conv19 = zext i16 %17 to i32, !dbg !273
  store i32 %conv19, ptr @force_x, align 4, !dbg !276
  %18 = load ptr, ptr %mode.addr, align 4, !dbg !277
  %y = getelementptr inbounds %struct.mode_info, ptr %18, i32 0, i32 2, !dbg !278
  %19 = load i16, ptr %y, align 2, !dbg !278
  %conv20 = zext i16 %19 to i32, !dbg !277
  store i32 %conv20, ptr @force_y, align 4, !dbg !279
  store i32 1, ptr @do_restore, align 4, !dbg !280
  br label %if.end22, !dbg !281

if.else21:                                        ; preds = %if.end17
  call void @vesa_store_mode_params_graphics() #8, !dbg !282
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then18
  store i32 0, ptr %retval, align 4, !dbg !284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !284

cleanup:                                          ; preds = %if.end22, %if.then16, %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %vesa_mode) #7, !dbg !285
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_graphic) #7, !dbg !285
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #7, !dbg !285
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #7, !dbg !285
  %20 = load i32, ptr %retval, align 4, !dbg !285
  ret i32 %20, !dbg !285
}

; Function Attrs: nounwind
define internal i32 @vesa_probe() #0 !dbg !286 {
entry:
  %retval = alloca i32, align 4
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %mode = alloca i16, align 2
  %mode_ptr = alloca i32, align 4
  %mi = alloca ptr, align 4
  %nmodes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #7, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !288, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #7, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !289, metadata !DIExpression()), !dbg !297
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #7, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !290, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode_ptr) #7, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %mode_ptr, metadata !291, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #7, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !293, metadata !DIExpression()), !dbg !303
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmodes) #7, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %nmodes, metadata !294, metadata !DIExpression()), !dbg !305
  store i32 0, ptr %nmodes, align 4, !dbg !305
  %call = call ptr @__get_heap(i32 inreg noundef 8, i32 inreg noundef 2, i32 inreg noundef 0) #8, !dbg !306
  store ptr %call, ptr getelementptr inbounds (%struct.card_info, ptr @video_vesa, i32 0, i32 3), align 4, !dbg !307
  call void @initregs(ptr inreg noundef %ireg) #8, !dbg !308
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !309
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !309
  store i16 20224, ptr %ax, align 4, !dbg !310
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !311
  %di = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 0, !dbg !311
  store i16 ptrtoint (ptr @vginfo to i16), ptr %di, align 4, !dbg !312
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #8, !dbg !313
  %2 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !314
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %2, i32 0, i32 14, !dbg !314
  %3 = load i16, ptr %ax1, align 4, !dbg !314
  %conv = zext i16 %3 to i32, !dbg !316
  %cmp = icmp ne i32 %conv, 79, !dbg !317
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !318

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr @vginfo, align 1, !dbg !319
  %cmp3 = icmp ne i32 %4, 1095976278, !dbg !320
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !321

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load i16, ptr getelementptr inbounds (%struct.vesa_general_info, ptr @vginfo, i32 0, i32 1), align 1, !dbg !322
  %conv6 = zext i16 %5 to i32, !dbg !323
  %cmp7 = icmp slt i32 %conv6, 258, !dbg !324
  br i1 %cmp7, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !326

if.end:                                           ; preds = %lor.lhs.false5
  %6 = load i16, ptr getelementptr inbounds (%struct.vesa_general_info, ptr @vginfo, i32 0, i32 4, i32 1), align 1, !dbg !327
  call void @set_fs(i16 inreg noundef zeroext %6) #8, !dbg !328
  %7 = load i16, ptr getelementptr inbounds (%struct.vesa_general_info, ptr @vginfo, i32 0, i32 4), align 1, !dbg !329
  %conv9 = zext i16 %7 to i32, !dbg !330
  store i32 %conv9, ptr %mode_ptr, align 4, !dbg !331
  br label %while.cond, !dbg !332

while.cond:                                       ; preds = %if.end55, %if.then26, %if.then18, %if.end
  %8 = load i32, ptr %mode_ptr, align 4, !dbg !333
  %call10 = call zeroext i16 @rdfs16(i32 inreg noundef %8) #8, !dbg !334
  store i16 %call10, ptr %mode, align 2, !dbg !335
  %conv11 = zext i16 %call10 to i32, !dbg !336
  %cmp12 = icmp ne i32 %conv11, 65535, !dbg !337
  br i1 %cmp12, label %while.body, label %while.end, !dbg !332

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %mode_ptr, align 4, !dbg !338
  %add = add i32 %9, 2, !dbg !338
  store i32 %add, ptr %mode_ptr, align 4, !dbg !338
  %call14 = call zeroext i1 @heap_free(i32 inreg noundef 8) #8, !dbg !340
  br i1 %call14, label %if.end16, label %if.then15, !dbg !342

if.then15:                                        ; preds = %while.body
  br label %while.end, !dbg !343

if.end16:                                         ; preds = %while.body
  %10 = load i16, ptr %mode, align 2, !dbg !344
  %conv17 = zext i16 %10 to i32, !dbg !344
  %and = and i32 %conv17, -512, !dbg !346
  %tobool = icmp ne i32 %and, 0, !dbg !346
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !347

if.then18:                                        ; preds = %if.end16
  br label %while.cond, !dbg !348, !llvm.loop !349

if.end19:                                         ; preds = %if.end16
  call void @llvm.memset.p0.i32(ptr align 1 @vminfo, i8 0, i32 256, i1 false), !dbg !353
  %11 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !354
  %ax20 = getelementptr inbounds %struct.anon.0, ptr %11, i32 0, i32 14, !dbg !354
  store i16 20225, ptr %ax20, align 4, !dbg !355
  %12 = load i16, ptr %mode, align 2, !dbg !356
  %13 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !357
  %cx = getelementptr inbounds %struct.anon.0, ptr %13, i32 0, i32 12, !dbg !357
  store i16 %12, ptr %cx, align 4, !dbg !358
  %14 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !359
  %di21 = getelementptr inbounds %struct.anon.0, ptr %14, i32 0, i32 0, !dbg !359
  store i16 ptrtoint (ptr @vminfo to i16), ptr %di21, align 4, !dbg !360
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #8, !dbg !361
  %15 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !362
  %ax22 = getelementptr inbounds %struct.anon.0, ptr %15, i32 0, i32 14, !dbg !362
  %16 = load i16, ptr %ax22, align 4, !dbg !362
  %conv23 = zext i16 %16 to i32, !dbg !364
  %cmp24 = icmp ne i32 %conv23, 79, !dbg !365
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !366

if.then26:                                        ; preds = %if.end19
  br label %while.cond, !dbg !367, !llvm.loop !349

if.end27:                                         ; preds = %if.end19
  %17 = load i16, ptr @vminfo, align 1, !dbg !368
  %conv28 = zext i16 %17 to i32, !dbg !370
  %and29 = and i32 %conv28, 21, !dbg !371
  %cmp30 = icmp eq i32 %and29, 5, !dbg !372
  br i1 %cmp30, label %if.then32, label %if.else, !dbg !373

if.then32:                                        ; preds = %if.end27
  %call33 = call ptr @__get_heap(i32 inreg noundef 8, i32 inreg noundef 2, i32 inreg noundef 1) #8, !dbg !374
  store ptr %call33, ptr %mi, align 4, !dbg !376
  %18 = load i16, ptr %mode, align 2, !dbg !377
  %conv34 = zext i16 %18 to i32, !dbg !377
  %add35 = add nsw i32 %conv34, 512, !dbg !378
  %conv36 = trunc i32 %add35 to i16, !dbg !377
  %19 = load ptr, ptr %mi, align 4, !dbg !379
  %mode37 = getelementptr inbounds %struct.mode_info, ptr %19, i32 0, i32 0, !dbg !380
  store i16 %conv36, ptr %mode37, align 2, !dbg !381
  %20 = load ptr, ptr %mi, align 4, !dbg !382
  %depth = getelementptr inbounds %struct.mode_info, ptr %20, i32 0, i32 3, !dbg !383
  store i16 0, ptr %depth, align 2, !dbg !384
  %21 = load i16, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 7), align 1, !dbg !385
  %22 = load ptr, ptr %mi, align 4, !dbg !386
  %x = getelementptr inbounds %struct.mode_info, ptr %22, i32 0, i32 1, !dbg !387
  store i16 %21, ptr %x, align 2, !dbg !388
  %23 = load i16, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 8), align 1, !dbg !389
  %24 = load ptr, ptr %mi, align 4, !dbg !390
  %y = getelementptr inbounds %struct.mode_info, ptr %24, i32 0, i32 2, !dbg !391
  store i16 %23, ptr %y, align 2, !dbg !392
  %25 = load i32, ptr %nmodes, align 4, !dbg !393
  %inc = add nsw i32 %25, 1, !dbg !393
  store i32 %inc, ptr %nmodes, align 4, !dbg !393
  br label %if.end55, !dbg !394

if.else:                                          ; preds = %if.end27
  %26 = load i16, ptr @vminfo, align 1, !dbg !395
  %conv38 = zext i16 %26 to i32, !dbg !397
  %and39 = and i32 %conv38, 153, !dbg !398
  %cmp40 = icmp eq i32 %and39, 153, !dbg !399
  br i1 %cmp40, label %land.lhs.true, label %if.end54, !dbg !400

land.lhs.true:                                    ; preds = %if.else
  %27 = load i8, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 14), align 1, !dbg !401
  %conv42 = zext i8 %27 to i32, !dbg !402
  %cmp43 = icmp eq i32 %conv42, 4, !dbg !403
  br i1 %cmp43, label %land.lhs.true49, label %lor.lhs.false45, !dbg !404

lor.lhs.false45:                                  ; preds = %land.lhs.true
  %28 = load i8, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 14), align 1, !dbg !405
  %conv46 = zext i8 %28 to i32, !dbg !406
  %cmp47 = icmp eq i32 %conv46, 6, !dbg !407
  br i1 %cmp47, label %land.lhs.true49, label %if.end54, !dbg !408

land.lhs.true49:                                  ; preds = %lor.lhs.false45, %land.lhs.true
  %29 = load i8, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 11), align 1, !dbg !409
  %conv50 = zext i8 %29 to i32, !dbg !410
  %cmp51 = icmp eq i32 %conv50, 1, !dbg !411
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !412

if.then53:                                        ; preds = %land.lhs.true49
  br label %if.end54, !dbg !413

if.end54:                                         ; preds = %if.then53, %land.lhs.true49, %lor.lhs.false45, %if.else
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then32
  br label %while.cond, !dbg !332, !llvm.loop !349

while.end:                                        ; preds = %if.then15, %while.cond
  %30 = load i32, ptr %nmodes, align 4, !dbg !415
  store i32 %30, ptr %retval, align 4, !dbg !416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !416

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmodes) #7, !dbg !417
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #7, !dbg !417
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode_ptr) #7, !dbg !417
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #7, !dbg !417
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #7, !dbg !417
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #7, !dbg !417
  %31 = load i32, ptr %retval, align 4, !dbg !417
  ret i32 %31, !dbg !417
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

declare !dbg !418 dso_local void @initregs(ptr inreg noundef) #4

declare !dbg !422 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #4

; Function Attrs: nounwind
define internal void @vesa_store_mode_params_graphics() #0 !dbg !427 {
entry:
  store i8 35, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 11), align 1, !dbg !428
  %0 = load i16, ptr @vminfo, align 1, !dbg !429
  store i16 %0, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 32), align 1, !dbg !430
  %1 = load i16, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 6), align 1, !dbg !431
  store i16 %1, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 20), align 1, !dbg !432
  %2 = load i16, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 7), align 1, !dbg !433
  store i16 %2, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 13), align 1, !dbg !434
  %3 = load i16, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 8), align 1, !dbg !435
  store i16 %3, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 14), align 1, !dbg !436
  %4 = load i8, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 12), align 1, !dbg !437
  %conv = zext i8 %4 to i16, !dbg !438
  store i16 %conv, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 15), align 1, !dbg !439
  %5 = load i8, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 16), align 1, !dbg !440
  %conv1 = zext i8 %5 to i16, !dbg !441
  store i16 %conv1, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 31), align 1, !dbg !442
  %6 = load i32, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 27), align 1, !dbg !443
  store i32 %6, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 16), align 1, !dbg !444
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 21), ptr align 1 getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 18), i32 8, i1 false), !dbg !445
  %7 = load i16, ptr getelementptr inbounds (%struct.vesa_general_info, ptr @vginfo, i32 0, i32 5), align 1, !dbg !446
  %conv2 = zext i16 %7 to i32, !dbg !447
  store i32 %conv2, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 17), align 1, !dbg !448
  %8 = load i8, ptr getelementptr inbounds (%struct.vesa_mode_info, ptr @vminfo, i32 0, i32 12), align 1, !dbg !449
  %conv3 = zext i8 %8 to i32, !dbg !451
  %cmp = icmp sle i32 %conv3, 8, !dbg !452
  br i1 %cmp, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %entry
  call void @vesa_dac_set_8bits() #8, !dbg !454
  br label %if.end, !dbg !454

if.end:                                           ; preds = %if.then, %entry
  call void @vesa_store_pm_info() #8, !dbg !455
  ret void, !dbg !456
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind
define internal void @vesa_dac_set_8bits() #0 !dbg !457 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %dac_size = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #7, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !459, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #7, !dbg !462
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !460, metadata !DIExpression()), !dbg !464
  call void @llvm.lifetime.start.p0(i64 1, ptr %dac_size) #7, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %dac_size, metadata !461, metadata !DIExpression()), !dbg !466
  store i8 6, ptr %dac_size, align 1, !dbg !466
  %0 = load i32, ptr getelementptr inbounds (%struct.vesa_general_info, ptr @vginfo, i32 0, i32 3), align 1, !dbg !467
  %and = and i32 %0, 1, !dbg !469
  %tobool = icmp ne i32 %and, 0, !dbg !469
  br i1 %tobool, label %if.then, label %if.end5, !dbg !470

if.then:                                          ; preds = %entry
  call void @initregs(ptr inreg noundef %ireg) #8, !dbg !471
  %1 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !473
  %ax = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 14, !dbg !473
  store i16 20232, ptr %ax, align 4, !dbg !474
  %2 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !475
  %bh = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 17, !dbg !475
  store i8 8, ptr %bh, align 1, !dbg !476
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #8, !dbg !477
  %3 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !478
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 14, !dbg !478
  %4 = load i16, ptr %ax1, align 4, !dbg !478
  %conv = zext i16 %4 to i32, !dbg !480
  %cmp = icmp eq i32 %conv, 79, !dbg !481
  br i1 %cmp, label %if.then3, label %if.end, !dbg !482

if.then3:                                         ; preds = %if.then
  %5 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !483
  %bh4 = getelementptr inbounds %struct.anon.1, ptr %5, i32 0, i32 17, !dbg !483
  %6 = load i8, ptr %bh4, align 1, !dbg !483
  store i8 %6, ptr %dac_size, align 1, !dbg !484
  br label %if.end, !dbg !485

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5, !dbg !486

if.end5:                                          ; preds = %if.end, %entry
  %7 = load i8, ptr %dac_size, align 1, !dbg !487
  store i8 %7, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 21), align 1, !dbg !488
  %8 = load i8, ptr %dac_size, align 1, !dbg !489
  store i8 %8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 23), align 1, !dbg !490
  %9 = load i8, ptr %dac_size, align 1, !dbg !491
  store i8 %9, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 25), align 1, !dbg !492
  %10 = load i8, ptr %dac_size, align 1, !dbg !493
  store i8 %10, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 27), align 1, !dbg !494
  store i8 0, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 22), align 1, !dbg !495
  store i8 0, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 24), align 1, !dbg !496
  store i8 0, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 26), align 1, !dbg !497
  store i8 0, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 28), align 1, !dbg !498
  call void @llvm.lifetime.end.p0(i64 1, ptr %dac_size) #7, !dbg !499
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #7, !dbg !499
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #7, !dbg !499
  ret void, !dbg !499
}

; Function Attrs: nounwind
define internal void @vesa_store_pm_info() #0 !dbg !500 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #7, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !502, metadata !DIExpression()), !dbg !505
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #7, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !503, metadata !DIExpression()), !dbg !506
  call void @initregs(ptr inreg noundef %ireg) #8, !dbg !507
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !508
  %ax = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 14, !dbg !508
  store i16 20234, ptr %ax, align 4, !dbg !509
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #8, !dbg !510
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !511
  %ax1 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 14, !dbg !511
  %2 = load i16, ptr %ax1, align 4, !dbg !511
  %conv = zext i16 %2 to i32, !dbg !513
  %cmp = icmp ne i32 %conv, 79, !dbg !514
  br i1 %cmp, label %if.then, label %if.end, !dbg !515

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !516

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !517
  %es = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 18, !dbg !517
  %4 = load i16, ptr %es, align 4, !dbg !517
  store i16 %4, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 29), align 1, !dbg !518
  %5 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !519
  %di = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 0, !dbg !519
  %6 = load i16, ptr %di, align 4, !dbg !519
  store i16 %6, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 30), align 1, !dbg !520
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !521
  br label %cleanup, !dbg !521

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #7, !dbg !521
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #7, !dbg !521
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !521

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind
define internal ptr @__get_heap(i32 inreg noundef %s, i32 inreg noundef %a, i32 inreg noundef %n) #6 !dbg !522 {
entry:
  %s.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  store i32 %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !526, metadata !DIExpression()), !dbg !530
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !527, metadata !DIExpression()), !dbg !531
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !528, metadata !DIExpression()), !dbg !532
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #7, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !529, metadata !DIExpression()), !dbg !534
  %0 = load ptr, ptr @HEAP, align 4, !dbg !535
  %1 = ptrtoint ptr %0 to i32, !dbg !536
  %2 = load i32, ptr %a.addr, align 4, !dbg !537
  %sub = sub i32 %2, 1, !dbg !538
  %add = add i32 %1, %sub, !dbg !539
  %3 = load i32, ptr %a.addr, align 4, !dbg !540
  %sub1 = sub i32 %3, 1, !dbg !541
  %not = xor i32 %sub1, -1, !dbg !542
  %and = and i32 %add, %not, !dbg !543
  %4 = inttoptr i32 %and to ptr, !dbg !544
  store ptr %4, ptr @HEAP, align 4, !dbg !545
  %5 = load ptr, ptr @HEAP, align 4, !dbg !546
  store ptr %5, ptr %tmp, align 4, !dbg !547
  %6 = load i32, ptr %s.addr, align 4, !dbg !548
  %7 = load i32, ptr %n.addr, align 4, !dbg !549
  %mul = mul i32 %6, %7, !dbg !550
  %8 = load ptr, ptr @HEAP, align 4, !dbg !551
  %add.ptr = getelementptr inbounds i8, ptr %8, i32 %mul, !dbg !551
  store ptr %add.ptr, ptr @HEAP, align 4, !dbg !551
  %9 = load ptr, ptr %tmp, align 4, !dbg !552
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #7, !dbg !553
  ret ptr %9, !dbg !554
}

; Function Attrs: inlinehint nounwind
define internal void @set_fs(i16 inreg noundef zeroext %seg) #6 !dbg !555 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !559, metadata !DIExpression()), !dbg !560
  %0 = load i16, ptr %seg.addr, align 2, !dbg !561
  call void asm sideeffect "movw $0,%fs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #7, !dbg !562, !srcloc !563
  ret void, !dbg !564
}

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @rdfs16(i32 inreg noundef %addr) #6 !dbg !565 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i16, align 2
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !569, metadata !DIExpression()), !dbg !574
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #7, !dbg !575
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !570, metadata !DIExpression()), !dbg !576
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #7, !dbg !577
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !571, metadata !DIExpression()), !dbg !577
  %0 = load i32, ptr %addr.addr, align 4, !dbg !577
  %1 = inttoptr i32 %0 to ptr, !dbg !577
  %2 = ptrtoint ptr %1 to i32, !dbg !577
  store i32 %2, ptr %__ptr, align 4, !dbg !577
  %3 = load i32, ptr %__ptr, align 4, !dbg !577
  %add = add i32 %3, 0, !dbg !577
  %4 = inttoptr i32 %add to ptr, !dbg !577
  store ptr %4, ptr %tmp, align 4, !dbg !577
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #7, !dbg !578
  %5 = load ptr, ptr %tmp, align 4, !dbg !577
  store ptr %5, ptr %ptr, align 4, !dbg !576
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #7, !dbg !579
  call void @llvm.dbg.declare(metadata ptr %v, metadata !573, metadata !DIExpression()), !dbg !580
  %6 = load ptr, ptr %ptr, align 4, !dbg !581
  %7 = call i16 asm sideeffect "movw %fs:$1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %6) #7, !dbg !582, !srcloc !583
  store i16 %7, ptr %v, align 2, !dbg !582
  %8 = load i16, ptr %v, align 2, !dbg !584
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #7, !dbg !585
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #7, !dbg !585
  ret i16 %8, !dbg !586
}

; Function Attrs: inlinehint nounwind
define internal zeroext i1 @heap_free(i32 inreg noundef %n) #6 !dbg !587 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load ptr, ptr @heap_end, align 4, !dbg !595
  %1 = load ptr, ptr @HEAP, align 4, !dbg !596
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i32, !dbg !597
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32, !dbg !597
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !597
  %2 = load i32, ptr %n.addr, align 4, !dbg !598
  %cmp = icmp sge i32 %sub.ptr.sub, %2, !dbg !599
  ret i1 %cmp, !dbg !600
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/video-vesa.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a0097563657b8e02346dc1ea9ad13d2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "video_vesa", scope: !9, file: !2, line: 272, type: !102, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.video-vesa.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/video-vesa\22 -D KBUILD_BASENAME=\22video_vesa\22 -D KBUILD_MODNAME=\22video_vesa\22 -D __KBUILD_MODNAME=kmod_video_vesa -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/video-vesa.ll arch/x86/boot/video-vesa.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !34, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !16, !29, !30, !31, !32, !33}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 61, baseType: !13)
!12 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !14, line: 68, baseType: !15)
!14 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_info", file: !18, line: 64, size: 64, elements: !19)
!18 = !DIFile(filename: "arch/x86/boot/video.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e17e471001fcbd7daaae50249ab4298")
!19 = !{!20, !26, !27, !28}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !17, file: !18, line: 65, baseType: !21, size: 16)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !25)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !17, file: !18, line: 66, baseType: !21, size: 16, offset: 16)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !17, file: !18, line: 66, baseType: !21, size: 16, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !17, file: !18, line: 67, baseType: !21, size: 16, offset: 48)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!31 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{!0, !7, !35, !88}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "vminfo", scope: !9, file: !2, line: 21, type: !37, isLocal: true, isDefinition: true)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vesa_mode_info", file: !38, line: 29, size: 2048, elements: !39)
!38 = !DIFile(filename: "arch/x86/boot/vesa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4edd07366f8e39a6f359cd41996505b")
!39 = !{!40, !41, !48, !49, !50, !52, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !82, !83, !84}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mode_attr", scope: !37, file: !38, line: 30, baseType: !21, size: 16)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "win_attr", scope: !37, file: !38, line: 31, baseType: !42, size: 16, offset: 16)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 16, elements: !46)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !24, line: 21, baseType: !45)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!47}
!47 = !DISubrange(count: 2)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "win_grain", scope: !37, file: !38, line: 32, baseType: !21, size: 16, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "win_size", scope: !37, file: !38, line: 33, baseType: !21, size: 16, offset: 48)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "win_seg", scope: !37, file: !38, line: 34, baseType: !51, size: 32, offset: 64)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !46)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "win_scheme", scope: !37, file: !38, line: 35, baseType: !53, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "far_ptr", file: !38, line: 13, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 11, size: 32, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !54, file: !38, line: 12, baseType: !21, size: 16)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !54, file: !38, line: 12, baseType: !21, size: 16, offset: 16)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "logical_scan", scope: !37, file: !38, line: 36, baseType: !21, size: 16, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "h_res", scope: !37, file: !38, line: 38, baseType: !21, size: 16, offset: 144)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "v_res", scope: !37, file: !38, line: 39, baseType: !21, size: 16, offset: 160)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "char_width", scope: !37, file: !38, line: 40, baseType: !43, size: 8, offset: 176)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "char_height", scope: !37, file: !38, line: 41, baseType: !43, size: 8, offset: 184)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "memory_planes", scope: !37, file: !38, line: 42, baseType: !43, size: 8, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !37, file: !38, line: 43, baseType: !43, size: 8, offset: 200)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "banks", scope: !37, file: !38, line: 44, baseType: !43, size: 8, offset: 208)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "memory_layout", scope: !37, file: !38, line: 45, baseType: !43, size: 8, offset: 216)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "bank_size", scope: !37, file: !38, line: 46, baseType: !43, size: 8, offset: 224)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "image_planes", scope: !37, file: !38, line: 47, baseType: !43, size: 8, offset: 232)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "page_function", scope: !37, file: !38, line: 48, baseType: !43, size: 8, offset: 240)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "rmask", scope: !37, file: !38, line: 50, baseType: !43, size: 8, offset: 248)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rpos", scope: !37, file: !38, line: 51, baseType: !43, size: 8, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "gmask", scope: !37, file: !38, line: 52, baseType: !43, size: 8, offset: 264)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gpos", scope: !37, file: !38, line: 53, baseType: !43, size: 8, offset: 272)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "bmask", scope: !37, file: !38, line: 54, baseType: !43, size: 8, offset: 280)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "bpos", scope: !37, file: !38, line: 55, baseType: !43, size: 8, offset: 288)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "resv_mask", scope: !37, file: !38, line: 56, baseType: !43, size: 8, offset: 296)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "resv_pos", scope: !37, file: !38, line: 57, baseType: !43, size: 8, offset: 304)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "dcm_info", scope: !37, file: !38, line: 58, baseType: !43, size: 8, offset: 312)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lfb_ptr", scope: !37, file: !38, line: 60, baseType: !80, size: 32, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !15)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "offscreen_ptr", scope: !37, file: !38, line: 61, baseType: !80, size: 32, offset: 352)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "offscreen_size", scope: !37, file: !38, line: 62, baseType: !21, size: 16, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !37, file: !38, line: 64, baseType: !85, size: 1648, offset: 400)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1648, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 206)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "vginfo", scope: !9, file: !2, line: 20, type: !90, isLocal: true, isDefinition: true)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vesa_general_info", file: !38, line: 16, size: 2048, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !90, file: !38, line: 17, baseType: !80, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !90, file: !38, line: 18, baseType: !21, size: 16, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_string", scope: !90, file: !38, line: 19, baseType: !53, size: 32, offset: 48)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !90, file: !38, line: 20, baseType: !80, size: 32, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "video_mode_ptr", scope: !90, file: !38, line: 21, baseType: !53, size: 32, offset: 112)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "total_memory", scope: !90, file: !38, line: 22, baseType: !21, size: 16, offset: 144)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !90, file: !38, line: 24, baseType: !99, size: 1888, offset: 160)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 1888, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 236)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_info", file: !18, line: 70, size: 224, elements: !103)
!103 = !{!104, !107, !111, !115, !116, !117, !118, !119}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !102, file: !18, line: 71, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !102, file: !18, line: 72, baseType: !108, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = !DISubroutineType(types: !110)
!110 = !{!33, !16}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !102, file: !18, line: 73, baseType: !112, size: 32, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!113 = !DISubroutineType(types: !114)
!114 = !{!33}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !102, file: !18, line: 74, baseType: !16, size: 32, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "nmodes", scope: !102, file: !18, line: 75, baseType: !33, size: 32, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !102, file: !18, line: 76, baseType: !33, size: 32, offset: 160)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_first", scope: !102, file: !18, line: 77, baseType: !21, size: 16, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_n", scope: !102, file: !18, line: 78, baseType: !21, size: 16, offset: 208)
!120 = !{i32 1, !"NumRegisterParameters", i32 3}
!121 = !{i32 7, !"Dwarf Version", i32 5}
!122 = !{i32 2, !"Debug Info Version", i32 3}
!123 = !{i32 1, !"wchar_size", i32 4}
!124 = !{i32 1, !"override-stack-alignment", i32 4}
!125 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!126 = distinct !DISubprogram(name: "vesa_store_edid", scope: !2, file: !2, line: 236, type: !127, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!127 = !DISubroutineType(types: !128)
!128 = !{null}
!129 = !DILocation(line: 268, column: 1, scope: !126)
!130 = distinct !DISubprogram(name: "vesa_set_mode", scope: !2, file: !2, line: 104, type: !109, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !131)
!131 = !{!132, !133, !214, !215, !216}
!132 = !DILocalVariable(name: "mode", arg: 1, scope: !130, file: !2, line: 104, type: !16)
!133 = !DILocalVariable(name: "ireg", scope: !130, file: !2, line: 106, type: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !135, line: 206, size: 352, elements: !136)
!135 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !135, line: 207, baseType: !138, size: 352)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !135, line: 207, size: 352, elements: !139)
!139 = !{!140, !154, !179}
!140 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !135, line: 208, baseType: !141, size: 352)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !135, line: 208, size: 352, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !141, file: !135, line: 209, baseType: !80, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !141, file: !135, line: 210, baseType: !80, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !141, file: !135, line: 211, baseType: !80, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !141, file: !135, line: 212, baseType: !80, size: 32, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !141, file: !135, line: 213, baseType: !80, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !141, file: !135, line: 214, baseType: !80, size: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !141, file: !135, line: 215, baseType: !80, size: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !141, file: !135, line: 216, baseType: !80, size: 32, offset: 224)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !141, file: !135, line: 217, baseType: !80, size: 32, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !141, file: !135, line: 218, baseType: !80, size: 32, offset: 288)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !141, file: !135, line: 219, baseType: !80, size: 32, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !135, line: 221, baseType: !155, size: 352)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !135, line: 221, size: 352, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !155, file: !135, line: 222, baseType: !21, size: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !155, file: !135, line: 222, baseType: !21, size: 16, offset: 16)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !155, file: !135, line: 223, baseType: !21, size: 16, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !155, file: !135, line: 223, baseType: !21, size: 16, offset: 48)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !155, file: !135, line: 224, baseType: !21, size: 16, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !155, file: !135, line: 224, baseType: !21, size: 16, offset: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !155, file: !135, line: 225, baseType: !21, size: 16, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !155, file: !135, line: 225, baseType: !21, size: 16, offset: 112)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !155, file: !135, line: 226, baseType: !21, size: 16, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !155, file: !135, line: 226, baseType: !21, size: 16, offset: 144)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !155, file: !135, line: 227, baseType: !21, size: 16, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !155, file: !135, line: 227, baseType: !21, size: 16, offset: 176)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !155, file: !135, line: 228, baseType: !21, size: 16, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !155, file: !135, line: 228, baseType: !21, size: 16, offset: 208)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !155, file: !135, line: 229, baseType: !21, size: 16, offset: 224)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !155, file: !135, line: 229, baseType: !21, size: 16, offset: 240)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !155, file: !135, line: 230, baseType: !21, size: 16, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !155, file: !135, line: 230, baseType: !21, size: 16, offset: 272)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !155, file: !135, line: 231, baseType: !21, size: 16, offset: 288)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !155, file: !135, line: 231, baseType: !21, size: 16, offset: 304)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !155, file: !135, line: 232, baseType: !21, size: 16, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !155, file: !135, line: 232, baseType: !21, size: 16, offset: 336)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !135, line: 234, baseType: !180, size: 256)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !135, line: 234, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !180, file: !135, line: 235, baseType: !43, size: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !180, file: !135, line: 235, baseType: !43, size: 8, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !180, file: !135, line: 235, baseType: !43, size: 8, offset: 16)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !180, file: !135, line: 235, baseType: !43, size: 8, offset: 24)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !180, file: !135, line: 236, baseType: !43, size: 8, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !180, file: !135, line: 236, baseType: !43, size: 8, offset: 40)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !180, file: !135, line: 236, baseType: !43, size: 8, offset: 48)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !180, file: !135, line: 236, baseType: !43, size: 8, offset: 56)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !180, file: !135, line: 237, baseType: !43, size: 8, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !180, file: !135, line: 237, baseType: !43, size: 8, offset: 72)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !180, file: !135, line: 237, baseType: !43, size: 8, offset: 80)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !180, file: !135, line: 237, baseType: !43, size: 8, offset: 88)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !180, file: !135, line: 238, baseType: !43, size: 8, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !180, file: !135, line: 238, baseType: !43, size: 8, offset: 104)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !180, file: !135, line: 238, baseType: !43, size: 8, offset: 112)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !180, file: !135, line: 238, baseType: !43, size: 8, offset: 120)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !180, file: !135, line: 239, baseType: !43, size: 8, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !180, file: !135, line: 239, baseType: !43, size: 8, offset: 136)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !180, file: !135, line: 239, baseType: !43, size: 8, offset: 144)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !180, file: !135, line: 239, baseType: !43, size: 8, offset: 152)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !180, file: !135, line: 240, baseType: !43, size: 8, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !180, file: !135, line: 240, baseType: !43, size: 8, offset: 168)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !180, file: !135, line: 240, baseType: !43, size: 8, offset: 176)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !180, file: !135, line: 240, baseType: !43, size: 8, offset: 184)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !180, file: !135, line: 241, baseType: !43, size: 8, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !180, file: !135, line: 241, baseType: !43, size: 8, offset: 200)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !180, file: !135, line: 241, baseType: !43, size: 8, offset: 208)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !180, file: !135, line: 241, baseType: !43, size: 8, offset: 216)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !180, file: !135, line: 242, baseType: !43, size: 8, offset: 224)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !180, file: !135, line: 242, baseType: !43, size: 8, offset: 232)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !180, file: !135, line: 242, baseType: !43, size: 8, offset: 240)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !180, file: !135, line: 242, baseType: !43, size: 8, offset: 248)
!214 = !DILocalVariable(name: "oreg", scope: !130, file: !2, line: 106, type: !134)
!215 = !DILocalVariable(name: "is_graphic", scope: !130, file: !2, line: 107, type: !33)
!216 = !DILocalVariable(name: "vesa_mode", scope: !130, file: !2, line: 108, type: !21)
!217 = !DILocation(line: 104, column: 44, scope: !130)
!218 = !DILocation(line: 106, column: 2, scope: !130)
!219 = !DILocation(line: 106, column: 18, scope: !130)
!220 = !DILocation(line: 106, column: 24, scope: !130)
!221 = !DILocation(line: 107, column: 2, scope: !130)
!222 = !DILocation(line: 107, column: 6, scope: !130)
!223 = !DILocation(line: 108, column: 2, scope: !130)
!224 = !DILocation(line: 108, column: 6, scope: !130)
!225 = !DILocation(line: 108, column: 18, scope: !130)
!226 = !DILocation(line: 108, column: 24, scope: !130)
!227 = !DILocation(line: 108, column: 29, scope: !130)
!228 = !DILocation(line: 110, column: 2, scope: !130)
!229 = !DILocation(line: 112, column: 2, scope: !130)
!230 = !DILocation(line: 113, column: 7, scope: !130)
!231 = !DILocation(line: 113, column: 10, scope: !130)
!232 = !DILocation(line: 114, column: 12, scope: !130)
!233 = !DILocation(line: 114, column: 7, scope: !130)
!234 = !DILocation(line: 114, column: 10, scope: !130)
!235 = !DILocation(line: 115, column: 7, scope: !130)
!236 = !DILocation(line: 115, column: 10, scope: !130)
!237 = !DILocation(line: 116, column: 2, scope: !130)
!238 = !DILocation(line: 118, column: 11, scope: !239)
!239 = distinct !DILexicalBlock(scope: !130, file: !2, line: 118, column: 6)
!240 = !DILocation(line: 118, column: 6, scope: !239)
!241 = !DILocation(line: 118, column: 14, scope: !239)
!242 = !DILocation(line: 118, column: 6, scope: !130)
!243 = !DILocation(line: 119, column: 3, scope: !239)
!244 = !DILocation(line: 121, column: 14, scope: !245)
!245 = distinct !DILexicalBlock(scope: !130, file: !2, line: 121, column: 6)
!246 = !DILocation(line: 121, column: 7, scope: !245)
!247 = !DILocation(line: 121, column: 24, scope: !245)
!248 = !DILocation(line: 121, column: 32, scope: !245)
!249 = !DILocation(line: 121, column: 6, scope: !130)
!250 = !DILocation(line: 123, column: 14, scope: !251)
!251 = distinct !DILexicalBlock(scope: !245, file: !2, line: 121, column: 41)
!252 = !DILocation(line: 130, column: 2, scope: !251)
!253 = !DILocation(line: 131, column: 3, scope: !254)
!254 = distinct !DILexicalBlock(scope: !245, file: !2, line: 130, column: 9)
!255 = !DILocation(line: 135, column: 2, scope: !130)
!256 = !DILocation(line: 136, column: 7, scope: !130)
!257 = !DILocation(line: 136, column: 10, scope: !130)
!258 = !DILocation(line: 137, column: 12, scope: !130)
!259 = !DILocation(line: 137, column: 7, scope: !130)
!260 = !DILocation(line: 137, column: 10, scope: !130)
!261 = !DILocation(line: 138, column: 2, scope: !130)
!262 = !DILocation(line: 140, column: 11, scope: !263)
!263 = distinct !DILexicalBlock(scope: !130, file: !2, line: 140, column: 6)
!264 = !DILocation(line: 140, column: 6, scope: !263)
!265 = !DILocation(line: 140, column: 14, scope: !263)
!266 = !DILocation(line: 140, column: 6, scope: !130)
!267 = !DILocation(line: 141, column: 3, scope: !263)
!268 = !DILocation(line: 143, column: 17, scope: !130)
!269 = !DILocation(line: 143, column: 15, scope: !130)
!270 = !DILocation(line: 144, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !130, file: !2, line: 144, column: 6)
!272 = !DILocation(line: 144, column: 6, scope: !130)
!273 = !DILocation(line: 146, column: 13, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !2, line: 144, column: 19)
!275 = !DILocation(line: 146, column: 19, scope: !274)
!276 = !DILocation(line: 146, column: 11, scope: !274)
!277 = !DILocation(line: 147, column: 13, scope: !274)
!278 = !DILocation(line: 147, column: 19, scope: !274)
!279 = !DILocation(line: 147, column: 11, scope: !274)
!280 = !DILocation(line: 148, column: 14, scope: !274)
!281 = !DILocation(line: 149, column: 2, scope: !274)
!282 = !DILocation(line: 151, column: 3, scope: !283)
!283 = distinct !DILexicalBlock(scope: !271, file: !2, line: 149, column: 9)
!284 = !DILocation(line: 154, column: 2, scope: !130)
!285 = !DILocation(line: 155, column: 1, scope: !130)
!286 = distinct !DISubprogram(name: "vesa_probe", scope: !2, file: !2, line: 31, type: !113, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !287)
!287 = !{!288, !289, !290, !291, !293, !294}
!288 = !DILocalVariable(name: "ireg", scope: !286, file: !2, line: 33, type: !134)
!289 = !DILocalVariable(name: "oreg", scope: !286, file: !2, line: 33, type: !134)
!290 = !DILocalVariable(name: "mode", scope: !286, file: !2, line: 34, type: !21)
!291 = !DILocalVariable(name: "mode_ptr", scope: !286, file: !2, line: 35, type: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !135, line: 76, baseType: !15)
!293 = !DILocalVariable(name: "mi", scope: !286, file: !2, line: 36, type: !16)
!294 = !DILocalVariable(name: "nmodes", scope: !286, file: !2, line: 37, type: !33)
!295 = !DILocation(line: 33, column: 2, scope: !286)
!296 = !DILocation(line: 33, column: 18, scope: !286)
!297 = !DILocation(line: 33, column: 24, scope: !286)
!298 = !DILocation(line: 34, column: 2, scope: !286)
!299 = !DILocation(line: 34, column: 6, scope: !286)
!300 = !DILocation(line: 35, column: 2, scope: !286)
!301 = !DILocation(line: 35, column: 9, scope: !286)
!302 = !DILocation(line: 36, column: 2, scope: !286)
!303 = !DILocation(line: 36, column: 20, scope: !286)
!304 = !DILocation(line: 37, column: 2, scope: !286)
!305 = !DILocation(line: 37, column: 6, scope: !286)
!306 = !DILocation(line: 39, column: 21, scope: !286)
!307 = !DILocation(line: 39, column: 19, scope: !286)
!308 = !DILocation(line: 41, column: 2, scope: !286)
!309 = !DILocation(line: 42, column: 7, scope: !286)
!310 = !DILocation(line: 42, column: 10, scope: !286)
!311 = !DILocation(line: 43, column: 7, scope: !286)
!312 = !DILocation(line: 43, column: 10, scope: !286)
!313 = !DILocation(line: 44, column: 2, scope: !286)
!314 = !DILocation(line: 46, column: 11, scope: !315)
!315 = distinct !DILexicalBlock(scope: !286, file: !2, line: 46, column: 6)
!316 = !DILocation(line: 46, column: 6, scope: !315)
!317 = !DILocation(line: 46, column: 14, scope: !315)
!318 = !DILocation(line: 46, column: 24, scope: !315)
!319 = !DILocation(line: 47, column: 13, scope: !315)
!320 = !DILocation(line: 47, column: 23, scope: !315)
!321 = !DILocation(line: 47, column: 37, scope: !315)
!322 = !DILocation(line: 48, column: 13, scope: !315)
!323 = !DILocation(line: 48, column: 6, scope: !315)
!324 = !DILocation(line: 48, column: 21, scope: !315)
!325 = !DILocation(line: 46, column: 6, scope: !286)
!326 = !DILocation(line: 49, column: 3, scope: !315)
!327 = !DILocation(line: 51, column: 31, scope: !286)
!328 = !DILocation(line: 51, column: 2, scope: !286)
!329 = !DILocation(line: 52, column: 35, scope: !286)
!330 = !DILocation(line: 52, column: 13, scope: !286)
!331 = !DILocation(line: 52, column: 11, scope: !286)
!332 = !DILocation(line: 54, column: 2, scope: !286)
!333 = !DILocation(line: 54, column: 24, scope: !286)
!334 = !DILocation(line: 54, column: 17, scope: !286)
!335 = !DILocation(line: 54, column: 15, scope: !286)
!336 = !DILocation(line: 54, column: 9, scope: !286)
!337 = !DILocation(line: 54, column: 35, scope: !286)
!338 = !DILocation(line: 55, column: 12, scope: !339)
!339 = distinct !DILexicalBlock(scope: !286, file: !2, line: 54, column: 46)
!340 = !DILocation(line: 57, column: 8, scope: !341)
!341 = distinct !DILexicalBlock(scope: !339, file: !2, line: 57, column: 7)
!342 = !DILocation(line: 57, column: 7, scope: !339)
!343 = !DILocation(line: 58, column: 4, scope: !341)
!344 = !DILocation(line: 60, column: 7, scope: !345)
!345 = distinct !DILexicalBlock(scope: !339, file: !2, line: 60, column: 7)
!346 = !DILocation(line: 60, column: 12, scope: !345)
!347 = !DILocation(line: 60, column: 7, scope: !339)
!348 = !DILocation(line: 61, column: 4, scope: !345)
!349 = distinct !{!349, !332, !350, !351, !352}
!350 = !DILocation(line: 99, column: 2, scope: !286)
!351 = !{!"llvm.loop.mustprogress"}
!352 = !{!"llvm.loop.unroll.disable"}
!353 = !DILocation(line: 63, column: 3, scope: !339)
!354 = !DILocation(line: 65, column: 8, scope: !339)
!355 = !DILocation(line: 65, column: 11, scope: !339)
!356 = !DILocation(line: 66, column: 13, scope: !339)
!357 = !DILocation(line: 66, column: 8, scope: !339)
!358 = !DILocation(line: 66, column: 11, scope: !339)
!359 = !DILocation(line: 67, column: 8, scope: !339)
!360 = !DILocation(line: 67, column: 11, scope: !339)
!361 = !DILocation(line: 68, column: 3, scope: !339)
!362 = !DILocation(line: 70, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !339, file: !2, line: 70, column: 7)
!364 = !DILocation(line: 70, column: 7, scope: !363)
!365 = !DILocation(line: 70, column: 15, scope: !363)
!366 = !DILocation(line: 70, column: 7, scope: !339)
!367 = !DILocation(line: 71, column: 4, scope: !363)
!368 = !DILocation(line: 73, column: 15, scope: !369)
!369 = distinct !DILexicalBlock(scope: !339, file: !2, line: 73, column: 7)
!370 = !DILocation(line: 73, column: 8, scope: !369)
!371 = !DILocation(line: 73, column: 25, scope: !369)
!372 = !DILocation(line: 73, column: 33, scope: !369)
!373 = !DILocation(line: 73, column: 7, scope: !339)
!374 = !DILocation(line: 76, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !369, file: !2, line: 73, column: 42)
!376 = !DILocation(line: 76, column: 7, scope: !375)
!377 = !DILocation(line: 77, column: 16, scope: !375)
!378 = !DILocation(line: 77, column: 21, scope: !375)
!379 = !DILocation(line: 77, column: 4, scope: !375)
!380 = !DILocation(line: 77, column: 8, scope: !375)
!381 = !DILocation(line: 77, column: 14, scope: !375)
!382 = !DILocation(line: 78, column: 4, scope: !375)
!383 = !DILocation(line: 78, column: 8, scope: !375)
!384 = !DILocation(line: 78, column: 14, scope: !375)
!385 = !DILocation(line: 79, column: 23, scope: !375)
!386 = !DILocation(line: 79, column: 4, scope: !375)
!387 = !DILocation(line: 79, column: 8, scope: !375)
!388 = !DILocation(line: 79, column: 14, scope: !375)
!389 = !DILocation(line: 80, column: 23, scope: !375)
!390 = !DILocation(line: 80, column: 4, scope: !375)
!391 = !DILocation(line: 80, column: 8, scope: !375)
!392 = !DILocation(line: 80, column: 14, scope: !375)
!393 = !DILocation(line: 81, column: 10, scope: !375)
!394 = !DILocation(line: 82, column: 3, scope: !375)
!395 = !DILocation(line: 82, column: 22, scope: !396)
!396 = distinct !DILexicalBlock(scope: !369, file: !2, line: 82, column: 14)
!397 = !DILocation(line: 82, column: 15, scope: !396)
!398 = !DILocation(line: 82, column: 32, scope: !396)
!399 = !DILocation(line: 82, column: 40, scope: !396)
!400 = !DILocation(line: 82, column: 48, scope: !396)
!401 = !DILocation(line: 83, column: 15, scope: !396)
!402 = !DILocation(line: 83, column: 8, scope: !396)
!403 = !DILocation(line: 83, column: 29, scope: !396)
!404 = !DILocation(line: 83, column: 34, scope: !396)
!405 = !DILocation(line: 84, column: 15, scope: !396)
!406 = !DILocation(line: 84, column: 8, scope: !396)
!407 = !DILocation(line: 84, column: 29, scope: !396)
!408 = !DILocation(line: 84, column: 35, scope: !396)
!409 = !DILocation(line: 85, column: 14, scope: !396)
!410 = !DILocation(line: 85, column: 7, scope: !396)
!411 = !DILocation(line: 85, column: 28, scope: !396)
!412 = !DILocation(line: 82, column: 14, scope: !369)
!413 = !DILocation(line: 98, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !396, file: !2, line: 85, column: 34)
!415 = !DILocation(line: 101, column: 9, scope: !286)
!416 = !DILocation(line: 101, column: 2, scope: !286)
!417 = !DILocation(line: 102, column: 1, scope: !286)
!418 = !DISubprogram(name: "initregs", scope: !135, file: !135, line: 302, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!422 = !DISubprogram(name: "intcall", scope: !135, file: !135, line: 246, type: !423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !43, !425, !421}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!427 = distinct !DISubprogram(name: "vesa_store_mode_params_graphics", scope: !2, file: !2, line: 207, type: !127, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!428 = !DILocation(line: 210, column: 43, scope: !427)
!429 = !DILocation(line: 213, column: 51, scope: !427)
!430 = !DILocation(line: 213, column: 42, scope: !427)
!431 = !DILocation(line: 214, column: 50, scope: !427)
!432 = !DILocation(line: 214, column: 41, scope: !427)
!433 = !DILocation(line: 215, column: 45, scope: !427)
!434 = !DILocation(line: 215, column: 36, scope: !427)
!435 = !DILocation(line: 216, column: 46, scope: !427)
!436 = !DILocation(line: 216, column: 37, scope: !427)
!437 = !DILocation(line: 217, column: 45, scope: !427)
!438 = !DILocation(line: 217, column: 38, scope: !427)
!439 = !DILocation(line: 217, column: 36, scope: !427)
!440 = !DILocation(line: 218, column: 41, scope: !427)
!441 = !DILocation(line: 218, column: 34, scope: !427)
!442 = !DILocation(line: 218, column: 32, scope: !427)
!443 = !DILocation(line: 219, column: 44, scope: !427)
!444 = !DILocation(line: 219, column: 35, scope: !427)
!445 = !DILocation(line: 220, column: 2, scope: !427)
!446 = !DILocation(line: 224, column: 44, scope: !427)
!447 = !DILocation(line: 224, column: 37, scope: !427)
!448 = !DILocation(line: 224, column: 35, scope: !427)
!449 = !DILocation(line: 226, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !427, file: !2, line: 226, column: 6)
!451 = !DILocation(line: 226, column: 6, scope: !450)
!452 = !DILocation(line: 226, column: 17, scope: !450)
!453 = !DILocation(line: 226, column: 6, scope: !427)
!454 = !DILocation(line: 227, column: 3, scope: !450)
!455 = !DILocation(line: 229, column: 2, scope: !427)
!456 = !DILocation(line: 230, column: 1, scope: !427)
!457 = distinct !DISubprogram(name: "vesa_dac_set_8bits", scope: !2, file: !2, line: 161, type: !127, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !458)
!458 = !{!459, !460, !461}
!459 = !DILocalVariable(name: "ireg", scope: !457, file: !2, line: 163, type: !134)
!460 = !DILocalVariable(name: "oreg", scope: !457, file: !2, line: 163, type: !134)
!461 = !DILocalVariable(name: "dac_size", scope: !457, file: !2, line: 164, type: !43)
!462 = !DILocation(line: 163, column: 2, scope: !457)
!463 = !DILocation(line: 163, column: 18, scope: !457)
!464 = !DILocation(line: 163, column: 24, scope: !457)
!465 = !DILocation(line: 164, column: 2, scope: !457)
!466 = !DILocation(line: 164, column: 5, scope: !457)
!467 = !DILocation(line: 167, column: 13, scope: !468)
!468 = distinct !DILexicalBlock(scope: !457, file: !2, line: 167, column: 6)
!469 = !DILocation(line: 167, column: 26, scope: !468)
!470 = !DILocation(line: 167, column: 6, scope: !457)
!471 = !DILocation(line: 168, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !2, line: 167, column: 31)
!473 = !DILocation(line: 169, column: 8, scope: !472)
!474 = !DILocation(line: 169, column: 11, scope: !472)
!475 = !DILocation(line: 170, column: 8, scope: !472)
!476 = !DILocation(line: 170, column: 11, scope: !472)
!477 = !DILocation(line: 171, column: 3, scope: !472)
!478 = !DILocation(line: 172, column: 12, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !2, line: 172, column: 7)
!480 = !DILocation(line: 172, column: 7, scope: !479)
!481 = !DILocation(line: 172, column: 15, scope: !479)
!482 = !DILocation(line: 172, column: 7, scope: !472)
!483 = !DILocation(line: 173, column: 20, scope: !479)
!484 = !DILocation(line: 173, column: 13, scope: !479)
!485 = !DILocation(line: 173, column: 4, scope: !479)
!486 = !DILocation(line: 174, column: 2, scope: !472)
!487 = !DILocation(line: 177, column: 39, scope: !457)
!488 = !DILocation(line: 177, column: 37, scope: !457)
!489 = !DILocation(line: 178, column: 39, scope: !457)
!490 = !DILocation(line: 178, column: 37, scope: !457)
!491 = !DILocation(line: 179, column: 39, scope: !457)
!492 = !DILocation(line: 179, column: 37, scope: !457)
!493 = !DILocation(line: 180, column: 39, scope: !457)
!494 = !DILocation(line: 180, column: 37, scope: !457)
!495 = !DILocation(line: 182, column: 37, scope: !457)
!496 = !DILocation(line: 183, column: 37, scope: !457)
!497 = !DILocation(line: 184, column: 37, scope: !457)
!498 = !DILocation(line: 185, column: 37, scope: !457)
!499 = !DILocation(line: 186, column: 1, scope: !457)
!500 = distinct !DISubprogram(name: "vesa_store_pm_info", scope: !2, file: !2, line: 189, type: !127, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !501)
!501 = !{!502, !503}
!502 = !DILocalVariable(name: "ireg", scope: !500, file: !2, line: 191, type: !134)
!503 = !DILocalVariable(name: "oreg", scope: !500, file: !2, line: 191, type: !134)
!504 = !DILocation(line: 191, column: 2, scope: !500)
!505 = !DILocation(line: 191, column: 18, scope: !500)
!506 = !DILocation(line: 191, column: 24, scope: !500)
!507 = !DILocation(line: 193, column: 2, scope: !500)
!508 = !DILocation(line: 194, column: 7, scope: !500)
!509 = !DILocation(line: 194, column: 10, scope: !500)
!510 = !DILocation(line: 195, column: 2, scope: !500)
!511 = !DILocation(line: 197, column: 11, scope: !512)
!512 = distinct !DILexicalBlock(scope: !500, file: !2, line: 197, column: 6)
!513 = !DILocation(line: 197, column: 6, scope: !512)
!514 = !DILocation(line: 197, column: 14, scope: !512)
!515 = !DILocation(line: 197, column: 6, scope: !500)
!516 = !DILocation(line: 198, column: 3, scope: !512)
!517 = !DILocation(line: 200, column: 44, scope: !500)
!518 = !DILocation(line: 200, column: 37, scope: !500)
!519 = !DILocation(line: 201, column: 44, scope: !500)
!520 = !DILocation(line: 201, column: 37, scope: !500)
!521 = !DILocation(line: 202, column: 1, scope: !500)
!522 = distinct !DISubprogram(name: "__get_heap", scope: !135, file: !135, line: 175, type: !523, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!29, !11, !11, !11}
!525 = !{!526, !527, !528, !529}
!526 = !DILocalVariable(name: "s", arg: 1, scope: !522, file: !135, line: 175, type: !11)
!527 = !DILocalVariable(name: "a", arg: 2, scope: !522, file: !135, line: 175, type: !11)
!528 = !DILocalVariable(name: "n", arg: 3, scope: !522, file: !135, line: 175, type: !11)
!529 = !DILocalVariable(name: "tmp", scope: !522, file: !135, line: 177, type: !29)
!530 = !DILocation(line: 175, column: 39, scope: !522)
!531 = !DILocation(line: 175, column: 49, scope: !522)
!532 = !DILocation(line: 175, column: 59, scope: !522)
!533 = !DILocation(line: 177, column: 2, scope: !522)
!534 = !DILocation(line: 177, column: 8, scope: !522)
!535 = !DILocation(line: 179, column: 27, scope: !522)
!536 = !DILocation(line: 179, column: 19, scope: !522)
!537 = !DILocation(line: 179, column: 33, scope: !522)
!538 = !DILocation(line: 179, column: 34, scope: !522)
!539 = !DILocation(line: 179, column: 31, scope: !522)
!540 = !DILocation(line: 179, column: 43, scope: !522)
!541 = !DILocation(line: 179, column: 44, scope: !522)
!542 = !DILocation(line: 179, column: 41, scope: !522)
!543 = !DILocation(line: 179, column: 39, scope: !522)
!544 = !DILocation(line: 179, column: 9, scope: !522)
!545 = !DILocation(line: 179, column: 7, scope: !522)
!546 = !DILocation(line: 180, column: 8, scope: !522)
!547 = !DILocation(line: 180, column: 6, scope: !522)
!548 = !DILocation(line: 181, column: 10, scope: !522)
!549 = !DILocation(line: 181, column: 12, scope: !522)
!550 = !DILocation(line: 181, column: 11, scope: !522)
!551 = !DILocation(line: 181, column: 7, scope: !522)
!552 = !DILocation(line: 182, column: 9, scope: !522)
!553 = !DILocation(line: 183, column: 1, scope: !522)
!554 = !DILocation(line: 182, column: 2, scope: !522)
!555 = distinct !DISubprogram(name: "set_fs", scope: !135, file: !135, line: 54, type: !556, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !21}
!558 = !{!559}
!559 = !DILocalVariable(name: "seg", arg: 1, scope: !555, file: !135, line: 54, type: !21)
!560 = !DILocation(line: 54, column: 31, scope: !555)
!561 = !DILocation(line: 56, column: 40, scope: !555)
!562 = !DILocation(line: 56, column: 2, scope: !555)
!563 = !{i64 118937}
!564 = !DILocation(line: 57, column: 1, scope: !555)
!565 = distinct !DISubprogram(name: "rdfs16", scope: !135, file: !135, line: 85, type: !566, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!21, !292}
!568 = !{!569, !570, !571, !573}
!569 = !DILocalVariable(name: "addr", arg: 1, scope: !565, file: !135, line: 85, type: !292)
!570 = !DILocalVariable(name: "ptr", scope: !565, file: !135, line: 87, type: !30)
!571 = !DILocalVariable(name: "__ptr", scope: !572, file: !135, line: 87, type: !31)
!572 = distinct !DILexicalBlock(scope: !565, file: !135, line: 87, column: 20)
!573 = !DILocalVariable(name: "v", scope: !565, file: !135, line: 88, type: !21)
!574 = !DILocation(line: 85, column: 33, scope: !565)
!575 = !DILocation(line: 87, column: 2, scope: !565)
!576 = !DILocation(line: 87, column: 7, scope: !565)
!577 = !DILocation(line: 87, column: 20, scope: !572)
!578 = !DILocation(line: 87, column: 20, scope: !565)
!579 = !DILocation(line: 88, column: 2, scope: !565)
!580 = !DILocation(line: 88, column: 6, scope: !565)
!581 = !DILocation(line: 89, column: 52, scope: !565)
!582 = !DILocation(line: 89, column: 2, scope: !565)
!583 = !{i64 119548}
!584 = !DILocation(line: 90, column: 9, scope: !565)
!585 = !DILocation(line: 91, column: 1, scope: !565)
!586 = !DILocation(line: 90, column: 2, scope: !565)
!587 = distinct !DISubprogram(name: "heap_free", scope: !135, file: !135, line: 187, type: !588, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !592)
!588 = !DISubroutineType(types: !589)
!589 = !{!590, !11}
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !12, line: 35, baseType: !591)
!591 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!592 = !{!593}
!593 = !DILocalVariable(name: "n", arg: 1, scope: !587, file: !135, line: 187, type: !11)
!594 = !DILocation(line: 187, column: 37, scope: !587)
!595 = !DILocation(line: 189, column: 15, scope: !587)
!596 = !DILocation(line: 189, column: 24, scope: !587)
!597 = !DILocation(line: 189, column: 23, scope: !587)
!598 = !DILocation(line: 189, column: 38, scope: !587)
!599 = !DILocation(line: 189, column: 30, scope: !587)
!600 = !DILocation(line: 189, column: 2, scope: !587)
