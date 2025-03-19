; ModuleID = 'drivers/usb/common/debug.c'
source_filename = "drivers/usb/common/debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_usb_decode_ctrl: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad usb_decode_ctrl ; .previous"

@__UNIQUE_ID___addressable_usb_decode_ctrl3 = internal global ptr @usb_decode_ctrl, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [31 x i8] c"Get Device Status(Length = %d)\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [45 x i8] c"Get Interface Status(Intf = %d, Length = %d)\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [28 x i8] c"Get Endpoint Status(ep%d%s)\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [4 x i8] c"out\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [24 x i8] c"%s Device Feature(%s%s)\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [4 x i8] c"Set\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !45
@.str.9 = private unnamed_addr constant [25 x i8] c"%s Interface Feature(%s)\00", align 1, !dbg !50
@.str.10 = private unnamed_addr constant [17 x i8] c"Function Suspend\00", align 1, !dbg !55
@.str.11 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1, !dbg !60
@.str.12 = private unnamed_addr constant [31 x i8] c"%s Endpoint Feature(%s ep%d%s)\00", align 1, !dbg !65
@.str.13 = private unnamed_addr constant [5 x i8] c"Halt\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [13 x i8] c"Self Powered\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [14 x i8] c"Remote Wakeup\00", align 1, !dbg !77
@.str.16 = private unnamed_addr constant [10 x i8] c"Test Mode\00", align 1, !dbg !82
@.str.17 = private unnamed_addr constant [10 x i8] c"U1 Enable\00", align 1, !dbg !87
@.str.18 = private unnamed_addr constant [10 x i8] c"U2 Enable\00", align 1, !dbg !89
@.str.19 = private unnamed_addr constant [11 x i8] c"LTM Enable\00", align 1, !dbg !91
@.str.20 = private unnamed_addr constant [9 x i8] c": TEST_J\00", align 1, !dbg !96
@.str.21 = private unnamed_addr constant [9 x i8] c": TEST_K\00", align 1, !dbg !101
@.str.22 = private unnamed_addr constant [15 x i8] c": TEST_SE0_NAK\00", align 1, !dbg !103
@.str.23 = private unnamed_addr constant [14 x i8] c": TEST_PACKET\00", align 1, !dbg !108
@.str.24 = private unnamed_addr constant [16 x i8] c": TEST_FORCE_EN\00", align 1, !dbg !110
@.str.25 = private unnamed_addr constant [10 x i8] c": UNKNOWN\00", align 1, !dbg !115
@.str.26 = private unnamed_addr constant [25 x i8] c"Set Address(Addr = %02x)\00", align 1, !dbg !117
@.str.27 = private unnamed_addr constant [7 x i8] c"Device\00", align 1, !dbg !119
@.str.28 = private unnamed_addr constant [14 x i8] c"Configuration\00", align 1, !dbg !124
@.str.29 = private unnamed_addr constant [7 x i8] c"String\00", align 1, !dbg !126
@.str.30 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1, !dbg !128
@.str.31 = private unnamed_addr constant [9 x i8] c"Endpoint\00", align 1, !dbg !130
@.str.32 = private unnamed_addr constant [17 x i8] c"Device Qualifier\00", align 1, !dbg !132
@.str.33 = private unnamed_addr constant [19 x i8] c"Other Speed Config\00", align 1, !dbg !134
@.str.34 = private unnamed_addr constant [16 x i8] c"Interface Power\00", align 1, !dbg !139
@.str.35 = private unnamed_addr constant [4 x i8] c"OTG\00", align 1, !dbg !141
@.str.36 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1, !dbg !143
@.str.37 = private unnamed_addr constant [22 x i8] c"Interface Association\00", align 1, !dbg !145
@.str.38 = private unnamed_addr constant [4 x i8] c"BOS\00", align 1, !dbg !150
@.str.39 = private unnamed_addr constant [18 x i8] c"Device Capability\00", align 1, !dbg !152
@.str.40 = private unnamed_addr constant [11 x i8] c"Pipe Usage\00", align 1, !dbg !157
@.str.41 = private unnamed_addr constant [22 x i8] c"SS Endpoint Companion\00", align 1, !dbg !159
@.str.42 = private unnamed_addr constant [35 x i8] c"SSP Isochronous Endpoint Companion\00", align 1, !dbg !161
@.str.43 = private unnamed_addr constant [42 x i8] c"%s %s Descriptor(Index = %d, Length = %d)\00", align 1, !dbg !166
@.str.44 = private unnamed_addr constant [4 x i8] c"Get\00", align 1, !dbg !171
@.str.45 = private unnamed_addr constant [31 x i8] c"Get Configuration(Length = %d)\00", align 1, !dbg !173
@.str.46 = private unnamed_addr constant [31 x i8] c"Set Configuration(Config = %d)\00", align 1, !dbg !175
@.str.47 = private unnamed_addr constant [38 x i8] c"Get Interface(Intf = %d, Length = %d)\00", align 1, !dbg !177
@.str.48 = private unnamed_addr constant [43 x i8] c"Set Interface(Intf = %d, Alt.Setting = %d)\00", align 1, !dbg !182
@.str.49 = private unnamed_addr constant [40 x i8] c"Synch Frame(Endpoint = %d, Length = %d)\00", align 1, !dbg !187
@.str.50 = private unnamed_addr constant [21 x i8] c"Set SEL(Length = %d)\00", align 1, !dbg !192
@.str.51 = private unnamed_addr constant [37 x i8] c"Set Isochronous Delay(Delay = %d ns)\00", align 1, !dbg !197
@.str.52 = private unnamed_addr constant [71 x i8] c"Type=%s Recipient=%s Dir=%s bRequest=%u wValue=%u wIndex=%u wLength=%u\00", align 1, !dbg !202
@.str.53 = private unnamed_addr constant [9 x i8] c"Standard\00", align 1, !dbg !207
@.str.54 = private unnamed_addr constant [7 x i8] c"Vendor\00", align 1, !dbg !209
@.str.55 = private unnamed_addr constant [6 x i8] c"Class\00", align 1, !dbg !211
@.str.56 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1, !dbg !213
@.str.57 = private unnamed_addr constant [3 x i8] c"IN\00", align 1, !dbg !215
@.str.58 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1, !dbg !217
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_usb_decode_ctrl3], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @usb_decode_ctrl(ptr noundef %str, i64 noundef %size, i8 noundef zeroext %bRequestType, i8 noundef zeroext %bRequest, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength) #0 align 16 !dbg !228 {
entry:
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %bRequestType.addr = alloca i8, align 1
  %bRequest.addr = alloca i8, align 1
  %wValue.addr = alloca i16, align 2
  %wIndex.addr = alloca i16, align 2
  %wLength.addr = alloca i16, align 2
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !246, metadata !DIExpression()), !dbg !253
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !247, metadata !DIExpression()), !dbg !254
  store i8 %bRequestType, ptr %bRequestType.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequestType.addr, metadata !248, metadata !DIExpression()), !dbg !255
  store i8 %bRequest, ptr %bRequest.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequest.addr, metadata !249, metadata !DIExpression()), !dbg !256
  store i16 %wValue, ptr %wValue.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !250, metadata !DIExpression()), !dbg !257
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !251, metadata !DIExpression()), !dbg !258
  store i16 %wLength, ptr %wLength.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wLength.addr, metadata !252, metadata !DIExpression()), !dbg !259
  %0 = load i8, ptr %bRequestType.addr, align 1, !dbg !260
  %conv = zext i8 %0 to i32, !dbg !260
  %and = and i32 %conv, 96, !dbg !261
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 64, label %sw.bb1
    i32 32, label %sw.bb1
  ], !dbg !262

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !263
  %2 = load i64, ptr %size.addr, align 8, !dbg !265
  %3 = load i8, ptr %bRequestType.addr, align 1, !dbg !266
  %4 = load i8, ptr %bRequest.addr, align 1, !dbg !267
  %5 = load i16, ptr %wValue.addr, align 2, !dbg !268
  %6 = load i16, ptr %wIndex.addr, align 2, !dbg !269
  %7 = load i16, ptr %wLength.addr, align 2, !dbg !270
  call void @usb_decode_ctrl_standard(ptr noundef %1, i64 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) #4, !dbg !271
  br label %sw.epilog, !dbg !272

sw.bb1:                                           ; preds = %entry, %entry
  br label %sw.default, !dbg !273

sw.default:                                       ; preds = %entry, %sw.bb1
  %8 = load ptr, ptr %str.addr, align 8, !dbg !274
  %9 = load i64, ptr %size.addr, align 8, !dbg !275
  %10 = load i8, ptr %bRequestType.addr, align 1, !dbg !276
  %11 = load i8, ptr %bRequest.addr, align 1, !dbg !277
  %12 = load i16, ptr %wValue.addr, align 2, !dbg !278
  %13 = load i16, ptr %wIndex.addr, align 2, !dbg !279
  %14 = load i16, ptr %wLength.addr, align 2, !dbg !280
  call void @usb_decode_ctrl_generic(ptr noundef %8, i64 noundef %9, i8 noundef zeroext %10, i8 noundef zeroext %11, i16 noundef zeroext %12, i16 noundef zeroext %13, i16 noundef zeroext %14) #4, !dbg !281
  br label %sw.epilog, !dbg !282

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %15 = load ptr, ptr %str.addr, align 8, !dbg !283
  ret ptr %15, !dbg !284
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_ctrl_standard(ptr noundef %str, i64 noundef %size, i8 noundef zeroext %bRequestType, i8 noundef zeroext %bRequest, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength) #0 align 16 !dbg !285 {
entry:
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %bRequestType.addr = alloca i8, align 1
  %bRequest.addr = alloca i8, align 1
  %wValue.addr = alloca i16, align 2
  %wIndex.addr = alloca i16, align 2
  %wLength.addr = alloca i16, align 2
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !289, metadata !DIExpression()), !dbg !296
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !290, metadata !DIExpression()), !dbg !297
  store i8 %bRequestType, ptr %bRequestType.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequestType.addr, metadata !291, metadata !DIExpression()), !dbg !298
  store i8 %bRequest, ptr %bRequest.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequest.addr, metadata !292, metadata !DIExpression()), !dbg !299
  store i16 %wValue, ptr %wValue.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !293, metadata !DIExpression()), !dbg !300
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !294, metadata !DIExpression()), !dbg !301
  store i16 %wLength, ptr %wLength.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wLength.addr, metadata !295, metadata !DIExpression()), !dbg !302
  %0 = load i8, ptr %bRequest.addr, align 1, !dbg !303
  %conv = zext i8 %0 to i32, !dbg !303
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb1
    i32 5, label %sw.bb2
    i32 6, label %sw.bb3
    i32 7, label %sw.bb3
    i32 8, label %sw.bb4
    i32 9, label %sw.bb5
    i32 10, label %sw.bb7
    i32 11, label %sw.bb8
    i32 12, label %sw.bb10
    i32 48, label %sw.bb11
    i32 49, label %sw.bb12
  ], !dbg !304

sw.bb:                                            ; preds = %entry
  %1 = load i8, ptr %bRequestType.addr, align 1, !dbg !305
  %2 = load i16, ptr %wIndex.addr, align 2, !dbg !307
  %3 = load i16, ptr %wLength.addr, align 2, !dbg !308
  %4 = load ptr, ptr %str.addr, align 8, !dbg !309
  %5 = load i64, ptr %size.addr, align 8, !dbg !310
  call void @usb_decode_get_status(i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef %4, i64 noundef %5) #4, !dbg !311
  br label %sw.epilog, !dbg !312

sw.bb1:                                           ; preds = %entry, %entry
  %6 = load i8, ptr %bRequestType.addr, align 1, !dbg !313
  %7 = load i8, ptr %bRequest.addr, align 1, !dbg !314
  %8 = load i16, ptr %wValue.addr, align 2, !dbg !315
  %9 = load i16, ptr %wIndex.addr, align 2, !dbg !316
  %10 = load ptr, ptr %str.addr, align 8, !dbg !317
  %11 = load i64, ptr %size.addr, align 8, !dbg !318
  call void @usb_decode_set_clear_feature(i8 noundef zeroext %6, i8 noundef zeroext %7, i16 noundef zeroext %8, i16 noundef zeroext %9, ptr noundef %10, i64 noundef %11) #4, !dbg !319
  br label %sw.epilog, !dbg !320

sw.bb2:                                           ; preds = %entry
  %12 = load i16, ptr %wValue.addr, align 2, !dbg !321
  %13 = load ptr, ptr %str.addr, align 8, !dbg !322
  %14 = load i64, ptr %size.addr, align 8, !dbg !323
  call void @usb_decode_set_address(i16 noundef zeroext %12, ptr noundef %13, i64 noundef %14) #4, !dbg !324
  br label %sw.epilog, !dbg !325

sw.bb3:                                           ; preds = %entry, %entry
  %15 = load i8, ptr %bRequestType.addr, align 1, !dbg !326
  %16 = load i8, ptr %bRequest.addr, align 1, !dbg !327
  %17 = load i16, ptr %wValue.addr, align 2, !dbg !328
  %18 = load i16, ptr %wIndex.addr, align 2, !dbg !329
  %19 = load i16, ptr %wLength.addr, align 2, !dbg !330
  %20 = load ptr, ptr %str.addr, align 8, !dbg !331
  %21 = load i64, ptr %size.addr, align 8, !dbg !332
  call void @usb_decode_get_set_descriptor(i8 noundef zeroext %15, i8 noundef zeroext %16, i16 noundef zeroext %17, i16 noundef zeroext %18, i16 noundef zeroext %19, ptr noundef %20, i64 noundef %21) #4, !dbg !333
  br label %sw.epilog, !dbg !334

sw.bb4:                                           ; preds = %entry
  %22 = load i16, ptr %wLength.addr, align 2, !dbg !335
  %23 = load ptr, ptr %str.addr, align 8, !dbg !336
  %24 = load i64, ptr %size.addr, align 8, !dbg !337
  call void @usb_decode_get_configuration(i16 noundef zeroext %22, ptr noundef %23, i64 noundef %24) #4, !dbg !338
  br label %sw.epilog, !dbg !339

sw.bb5:                                           ; preds = %entry
  %25 = load i16, ptr %wValue.addr, align 2, !dbg !340
  %conv6 = trunc i16 %25 to i8, !dbg !340
  %26 = load ptr, ptr %str.addr, align 8, !dbg !341
  %27 = load i64, ptr %size.addr, align 8, !dbg !342
  call void @usb_decode_set_configuration(i8 noundef zeroext %conv6, ptr noundef %26, i64 noundef %27) #4, !dbg !343
  br label %sw.epilog, !dbg !344

sw.bb7:                                           ; preds = %entry
  %28 = load i16, ptr %wIndex.addr, align 2, !dbg !345
  %29 = load i16, ptr %wLength.addr, align 2, !dbg !346
  %30 = load ptr, ptr %str.addr, align 8, !dbg !347
  %31 = load i64, ptr %size.addr, align 8, !dbg !348
  call void @usb_decode_get_intf(i16 noundef zeroext %28, i16 noundef zeroext %29, ptr noundef %30, i64 noundef %31) #4, !dbg !349
  br label %sw.epilog, !dbg !350

sw.bb8:                                           ; preds = %entry
  %32 = load i16, ptr %wValue.addr, align 2, !dbg !351
  %conv9 = trunc i16 %32 to i8, !dbg !351
  %33 = load i16, ptr %wIndex.addr, align 2, !dbg !352
  %34 = load ptr, ptr %str.addr, align 8, !dbg !353
  %35 = load i64, ptr %size.addr, align 8, !dbg !354
  call void @usb_decode_set_intf(i8 noundef zeroext %conv9, i16 noundef zeroext %33, ptr noundef %34, i64 noundef %35) #4, !dbg !355
  br label %sw.epilog, !dbg !356

sw.bb10:                                          ; preds = %entry
  %36 = load i16, ptr %wIndex.addr, align 2, !dbg !357
  %37 = load i16, ptr %wLength.addr, align 2, !dbg !358
  %38 = load ptr, ptr %str.addr, align 8, !dbg !359
  %39 = load i64, ptr %size.addr, align 8, !dbg !360
  call void @usb_decode_synch_frame(i16 noundef zeroext %36, i16 noundef zeroext %37, ptr noundef %38, i64 noundef %39) #4, !dbg !361
  br label %sw.epilog, !dbg !362

sw.bb11:                                          ; preds = %entry
  %40 = load i16, ptr %wLength.addr, align 2, !dbg !363
  %41 = load ptr, ptr %str.addr, align 8, !dbg !364
  %42 = load i64, ptr %size.addr, align 8, !dbg !365
  call void @usb_decode_set_sel(i16 noundef zeroext %40, ptr noundef %41, i64 noundef %42) #4, !dbg !366
  br label %sw.epilog, !dbg !367

sw.bb12:                                          ; preds = %entry
  %43 = load i16, ptr %wValue.addr, align 2, !dbg !368
  %conv13 = trunc i16 %43 to i8, !dbg !368
  %44 = load ptr, ptr %str.addr, align 8, !dbg !369
  %45 = load i64, ptr %size.addr, align 8, !dbg !370
  call void @usb_decode_set_isoch_delay(i8 noundef zeroext %conv13, ptr noundef %44, i64 noundef %45) #4, !dbg !371
  br label %sw.epilog, !dbg !372

sw.default:                                       ; preds = %entry
  %46 = load ptr, ptr %str.addr, align 8, !dbg !373
  %47 = load i64, ptr %size.addr, align 8, !dbg !374
  %48 = load i8, ptr %bRequestType.addr, align 1, !dbg !375
  %49 = load i8, ptr %bRequest.addr, align 1, !dbg !376
  %50 = load i16, ptr %wValue.addr, align 2, !dbg !377
  %51 = load i16, ptr %wIndex.addr, align 2, !dbg !378
  %52 = load i16, ptr %wLength.addr, align 2, !dbg !379
  call void @usb_decode_ctrl_generic(ptr noundef %46, i64 noundef %47, i8 noundef zeroext %48, i8 noundef zeroext %49, i16 noundef zeroext %50, i16 noundef zeroext %51, i16 noundef zeroext %52) #4, !dbg !380
  br label %sw.epilog, !dbg !381

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb8, %sw.bb7, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !382
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_ctrl_generic(ptr noundef %str, i64 noundef %size, i8 noundef zeroext %bRequestType, i8 noundef zeroext %bRequest, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength) #0 align 16 !dbg !383 {
entry:
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %bRequestType.addr = alloca i8, align 1
  %bRequest.addr = alloca i8, align 1
  %wValue.addr = alloca i16, align 2
  %wIndex.addr = alloca i16, align 2
  %wLength.addr = alloca i16, align 2
  %recip = alloca i8, align 1
  %type = alloca i8, align 1
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !385, metadata !DIExpression()), !dbg !396
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !386, metadata !DIExpression()), !dbg !397
  store i8 %bRequestType, ptr %bRequestType.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequestType.addr, metadata !387, metadata !DIExpression()), !dbg !398
  store i8 %bRequest, ptr %bRequest.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequest.addr, metadata !388, metadata !DIExpression()), !dbg !399
  store i16 %wValue, ptr %wValue.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !389, metadata !DIExpression()), !dbg !400
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !390, metadata !DIExpression()), !dbg !401
  store i16 %wLength, ptr %wLength.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wLength.addr, metadata !391, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 1, ptr %recip) #5, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %recip, metadata !392, metadata !DIExpression()), !dbg !404
  %0 = load i8, ptr %bRequestType.addr, align 1, !dbg !405
  %conv = zext i8 %0 to i32, !dbg !405
  %and = and i32 %conv, 31, !dbg !406
  %conv1 = trunc i32 %and to i8, !dbg !405
  store i8 %conv1, ptr %recip, align 1, !dbg !404
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #5, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %type, metadata !395, metadata !DIExpression()), !dbg !408
  %1 = load i8, ptr %bRequestType.addr, align 1, !dbg !409
  %conv2 = zext i8 %1 to i32, !dbg !409
  %and3 = and i32 %conv2, 96, !dbg !410
  %conv4 = trunc i32 %and3 to i8, !dbg !409
  store i8 %conv4, ptr %type, align 1, !dbg !408
  %2 = load ptr, ptr %str.addr, align 8, !dbg !411
  %3 = load i64, ptr %size.addr, align 8, !dbg !412
  %4 = load i8, ptr %type, align 1, !dbg !413
  %conv5 = zext i8 %4 to i32, !dbg !413
  %cmp = icmp eq i32 %conv5, 0, !dbg !414
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !415

cond.true:                                        ; preds = %entry
  br label %cond.end16, !dbg !415

cond.false:                                       ; preds = %entry
  %5 = load i8, ptr %type, align 1, !dbg !416
  %conv7 = zext i8 %5 to i32, !dbg !416
  %cmp8 = icmp eq i32 %conv7, 64, !dbg !417
  br i1 %cmp8, label %cond.true10, label %cond.false11, !dbg !418

cond.true10:                                      ; preds = %cond.false
  br label %cond.end, !dbg !418

cond.false11:                                     ; preds = %cond.false
  %6 = load i8, ptr %type, align 1, !dbg !419
  %conv12 = zext i8 %6 to i32, !dbg !419
  %cmp13 = icmp eq i32 %conv12, 32, !dbg !420
  %7 = zext i1 %cmp13 to i64, !dbg !421
  %cond = select i1 %cmp13, ptr @.str.55, ptr @.str.56, !dbg !421
  br label %cond.end, !dbg !418

cond.end:                                         ; preds = %cond.false11, %cond.true10
  %cond15 = phi ptr [ @.str.54, %cond.true10 ], [ %cond, %cond.false11 ], !dbg !418
  br label %cond.end16, !dbg !415

cond.end16:                                       ; preds = %cond.end, %cond.true
  %cond17 = phi ptr [ @.str.53, %cond.true ], [ %cond15, %cond.end ], !dbg !415
  %8 = load i8, ptr %recip, align 1, !dbg !422
  %conv18 = zext i8 %8 to i32, !dbg !422
  %cmp19 = icmp eq i32 %conv18, 0, !dbg !423
  br i1 %cmp19, label %cond.true21, label %cond.false22, !dbg !424

cond.true21:                                      ; preds = %cond.end16
  br label %cond.end34, !dbg !424

cond.false22:                                     ; preds = %cond.end16
  %9 = load i8, ptr %recip, align 1, !dbg !425
  %conv23 = zext i8 %9 to i32, !dbg !425
  %cmp24 = icmp eq i32 %conv23, 1, !dbg !426
  br i1 %cmp24, label %cond.true26, label %cond.false27, !dbg !427

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end32, !dbg !427

cond.false27:                                     ; preds = %cond.false22
  %10 = load i8, ptr %recip, align 1, !dbg !428
  %conv28 = zext i8 %10 to i32, !dbg !428
  %cmp29 = icmp eq i32 %conv28, 2, !dbg !429
  %11 = zext i1 %cmp29 to i64, !dbg !430
  %cond31 = select i1 %cmp29, ptr @.str.31, ptr @.str.56, !dbg !430
  br label %cond.end32, !dbg !427

cond.end32:                                       ; preds = %cond.false27, %cond.true26
  %cond33 = phi ptr [ @.str.30, %cond.true26 ], [ %cond31, %cond.false27 ], !dbg !427
  br label %cond.end34, !dbg !424

cond.end34:                                       ; preds = %cond.end32, %cond.true21
  %cond35 = phi ptr [ @.str.27, %cond.true21 ], [ %cond33, %cond.end32 ], !dbg !424
  %12 = load i8, ptr %bRequestType.addr, align 1, !dbg !431
  %conv36 = zext i8 %12 to i32, !dbg !431
  %and37 = and i32 %conv36, 128, !dbg !432
  %tobool = icmp ne i32 %and37, 0, !dbg !433
  %13 = zext i1 %tobool to i64, !dbg !433
  %cond38 = select i1 %tobool, ptr @.str.57, ptr @.str.58, !dbg !433
  %14 = load i8, ptr %bRequest.addr, align 1, !dbg !434
  %conv39 = zext i8 %14 to i32, !dbg !434
  %15 = load i16, ptr %wValue.addr, align 2, !dbg !435
  %conv40 = zext i16 %15 to i32, !dbg !435
  %16 = load i16, ptr %wIndex.addr, align 2, !dbg !436
  %conv41 = zext i16 %16 to i32, !dbg !436
  %17 = load i16, ptr %wLength.addr, align 2, !dbg !437
  %conv42 = zext i16 %17 to i32, !dbg !437
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %3, ptr noundef @.str.52, ptr noundef %cond17, ptr noundef %cond35, ptr noundef %cond38, i32 noundef %conv39, i32 noundef %conv40, i32 noundef %conv41, i32 noundef %conv42) #4, !dbg !438
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #5, !dbg !439
  call void @llvm.lifetime.end.p0(i64 1, ptr %recip) #5, !dbg !439
  ret void, !dbg !439
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_get_status(i8 noundef zeroext %bRequestType, i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !440 {
entry:
  %bRequestType.addr = alloca i8, align 1
  %wIndex.addr = alloca i16, align 2
  %wLength.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i8 %bRequestType, ptr %bRequestType.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequestType.addr, metadata !444, metadata !DIExpression()), !dbg !449
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !445, metadata !DIExpression()), !dbg !450
  store i16 %wLength, ptr %wLength.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wLength.addr, metadata !446, metadata !DIExpression()), !dbg !451
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !447, metadata !DIExpression()), !dbg !452
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !448, metadata !DIExpression()), !dbg !453
  %0 = load i8, ptr %bRequestType.addr, align 1, !dbg !454
  %conv = zext i8 %0 to i32, !dbg !454
  %and = and i32 %conv, 31, !dbg !455
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb6
  ], !dbg !456

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !457
  %2 = load i64, ptr %size.addr, align 8, !dbg !459
  %3 = load i16, ptr %wLength.addr, align 2, !dbg !460
  %conv1 = zext i16 %3 to i32, !dbg !460
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str, i32 noundef %conv1) #4, !dbg !461
  br label %sw.epilog, !dbg !462

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %str.addr, align 8, !dbg !463
  %5 = load i64, ptr %size.addr, align 8, !dbg !464
  %6 = load i16, ptr %wIndex.addr, align 2, !dbg !465
  %conv3 = zext i16 %6 to i32, !dbg !465
  %7 = load i16, ptr %wLength.addr, align 2, !dbg !466
  %conv4 = zext i16 %7 to i32, !dbg !466
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %4, i64 noundef %5, ptr noundef @.str.1, i32 noundef %conv3, i32 noundef %conv4) #4, !dbg !467
  br label %sw.epilog, !dbg !468

sw.bb6:                                           ; preds = %entry
  %8 = load ptr, ptr %str.addr, align 8, !dbg !469
  %9 = load i64, ptr %size.addr, align 8, !dbg !470
  %10 = load i16, ptr %wIndex.addr, align 2, !dbg !471
  %conv7 = zext i16 %10 to i32, !dbg !471
  %and8 = and i32 %conv7, -129, !dbg !472
  %11 = load i16, ptr %wIndex.addr, align 2, !dbg !473
  %conv9 = zext i16 %11 to i32, !dbg !473
  %and10 = and i32 %conv9, 128, !dbg !474
  %tobool = icmp ne i32 %and10, 0, !dbg !473
  %12 = zext i1 %tobool to i64, !dbg !473
  %cond = select i1 %tobool, ptr @.str.3, ptr @.str.4, !dbg !473
  %call11 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %8, i64 noundef %9, ptr noundef @.str.2, i32 noundef %and8, ptr noundef %cond) #4, !dbg !475
  br label %sw.epilog, !dbg !476

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb2, %sw.bb
  ret void, !dbg !477
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_set_clear_feature(i8 noundef zeroext %bRequestType, i8 noundef zeroext %bRequest, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !478 {
entry:
  %bRequestType.addr = alloca i8, align 1
  %bRequest.addr = alloca i8, align 1
  %wValue.addr = alloca i16, align 2
  %wIndex.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i8 %bRequestType, ptr %bRequestType.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequestType.addr, metadata !482, metadata !DIExpression()), !dbg !488
  store i8 %bRequest, ptr %bRequest.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequest.addr, metadata !483, metadata !DIExpression()), !dbg !489
  store i16 %wValue, ptr %wValue.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !484, metadata !DIExpression()), !dbg !490
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !485, metadata !DIExpression()), !dbg !491
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !486, metadata !DIExpression()), !dbg !492
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !487, metadata !DIExpression()), !dbg !493
  %0 = load i8, ptr %bRequestType.addr, align 1, !dbg !494
  %conv = zext i8 %0 to i32, !dbg !494
  %and = and i32 %conv, 31, !dbg !495
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb19
  ], !dbg !496

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8, !dbg !497
  %2 = load i64, ptr %size.addr, align 8, !dbg !499
  %3 = load i8, ptr %bRequest.addr, align 1, !dbg !500
  %conv1 = zext i8 %3 to i32, !dbg !500
  %cmp = icmp eq i32 %conv1, 1, !dbg !501
  %4 = zext i1 %cmp to i64, !dbg !500
  %cond = select i1 %cmp, ptr @.str.6, ptr @.str.7, !dbg !500
  %5 = load i16, ptr %wValue.addr, align 2, !dbg !502
  %call = call ptr @usb_decode_device_feature(i16 noundef zeroext %5) #4, !dbg !503
  %6 = load i16, ptr %wValue.addr, align 2, !dbg !504
  %conv3 = zext i16 %6 to i32, !dbg !504
  %cmp4 = icmp eq i32 %conv3, 2, !dbg !505
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !504

cond.true:                                        ; preds = %sw.bb
  %7 = load i16, ptr %wIndex.addr, align 2, !dbg !506
  %call6 = call ptr @usb_decode_test_mode(i16 noundef zeroext %7) #4, !dbg !507
  br label %cond.end, !dbg !504

cond.false:                                       ; preds = %sw.bb
  br label %cond.end, !dbg !504

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi ptr [ %call6, %cond.true ], [ @.str.8, %cond.false ], !dbg !504
  %call8 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.5, ptr noundef %cond, ptr noundef %call, ptr noundef %cond7) #4, !dbg !508
  br label %sw.epilog, !dbg !509

sw.bb9:                                           ; preds = %entry
  %8 = load ptr, ptr %str.addr, align 8, !dbg !510
  %9 = load i64, ptr %size.addr, align 8, !dbg !511
  %10 = load i8, ptr %bRequest.addr, align 1, !dbg !512
  %conv10 = zext i8 %10 to i32, !dbg !512
  %cmp11 = icmp eq i32 %conv10, 1, !dbg !513
  %11 = zext i1 %cmp11 to i64, !dbg !512
  %cond13 = select i1 %cmp11, ptr @.str.6, ptr @.str.7, !dbg !512
  %12 = load i16, ptr %wValue.addr, align 2, !dbg !514
  %conv14 = zext i16 %12 to i32, !dbg !514
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !515
  %13 = zext i1 %cmp15 to i64, !dbg !514
  %cond17 = select i1 %cmp15, ptr @.str.10, ptr @.str.11, !dbg !514
  %call18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %8, i64 noundef %9, ptr noundef @.str.9, ptr noundef %cond13, ptr noundef %cond17) #4, !dbg !516
  br label %sw.epilog, !dbg !517

sw.bb19:                                          ; preds = %entry
  %14 = load ptr, ptr %str.addr, align 8, !dbg !518
  %15 = load i64, ptr %size.addr, align 8, !dbg !519
  %16 = load i8, ptr %bRequest.addr, align 1, !dbg !520
  %conv20 = zext i8 %16 to i32, !dbg !520
  %cmp21 = icmp eq i32 %conv20, 1, !dbg !521
  %17 = zext i1 %cmp21 to i64, !dbg !520
  %cond23 = select i1 %cmp21, ptr @.str.6, ptr @.str.7, !dbg !520
  %18 = load i16, ptr %wValue.addr, align 2, !dbg !522
  %conv24 = zext i16 %18 to i32, !dbg !522
  %cmp25 = icmp eq i32 %conv24, 0, !dbg !523
  %19 = zext i1 %cmp25 to i64, !dbg !522
  %cond27 = select i1 %cmp25, ptr @.str.13, ptr @.str.11, !dbg !522
  %20 = load i16, ptr %wIndex.addr, align 2, !dbg !524
  %conv28 = zext i16 %20 to i32, !dbg !524
  %and29 = and i32 %conv28, -129, !dbg !525
  %21 = load i16, ptr %wIndex.addr, align 2, !dbg !526
  %conv30 = zext i16 %21 to i32, !dbg !526
  %and31 = and i32 %conv30, 128, !dbg !527
  %tobool = icmp ne i32 %and31, 0, !dbg !526
  %22 = zext i1 %tobool to i64, !dbg !526
  %cond32 = select i1 %tobool, ptr @.str.3, ptr @.str.4, !dbg !526
  %call33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %14, i64 noundef %15, ptr noundef @.str.12, ptr noundef %cond23, ptr noundef %cond27, i32 noundef %and29, ptr noundef %cond32) #4, !dbg !528
  br label %sw.epilog, !dbg !529

sw.epilog:                                        ; preds = %entry, %sw.bb19, %sw.bb9, %cond.end
  ret void, !dbg !530
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_set_address(i16 noundef zeroext %wValue, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !531 {
entry:
  %wValue.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i16 %wValue, ptr %wValue.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !535, metadata !DIExpression()), !dbg !538
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !536, metadata !DIExpression()), !dbg !539
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !537, metadata !DIExpression()), !dbg !540
  %0 = load ptr, ptr %str.addr, align 8, !dbg !541
  %1 = load i64, ptr %size.addr, align 8, !dbg !542
  %2 = load i16, ptr %wValue.addr, align 2, !dbg !543
  %conv = zext i16 %2 to i32, !dbg !543
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.26, i32 noundef %conv) #4, !dbg !544
  ret void, !dbg !545
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_get_set_descriptor(i8 noundef zeroext %bRequestType, i8 noundef zeroext %bRequest, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !546 {
entry:
  %bRequestType.addr = alloca i8, align 1
  %bRequest.addr = alloca i8, align 1
  %wValue.addr = alloca i16, align 2
  %wIndex.addr = alloca i16, align 2
  %wLength.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  store i8 %bRequestType, ptr %bRequestType.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequestType.addr, metadata !550, metadata !DIExpression()), !dbg !558
  store i8 %bRequest, ptr %bRequest.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bRequest.addr, metadata !551, metadata !DIExpression()), !dbg !559
  store i16 %wValue, ptr %wValue.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !552, metadata !DIExpression()), !dbg !560
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !553, metadata !DIExpression()), !dbg !561
  store i16 %wLength, ptr %wLength.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wLength.addr, metadata !554, metadata !DIExpression()), !dbg !562
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !555, metadata !DIExpression()), !dbg !563
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !556, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #5, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %s, metadata !557, metadata !DIExpression()), !dbg !566
  %0 = load i16, ptr %wValue.addr, align 2, !dbg !567
  %conv = zext i16 %0 to i32, !dbg !567
  %shr = ashr i32 %conv, 8, !dbg !568
  switch i32 %shr, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 8, label %sw.bb7
    i32 9, label %sw.bb8
    i32 10, label %sw.bb9
    i32 11, label %sw.bb10
    i32 15, label %sw.bb11
    i32 16, label %sw.bb12
    i32 36, label %sw.bb13
    i32 48, label %sw.bb14
    i32 49, label %sw.bb15
  ], !dbg !569

sw.bb:                                            ; preds = %entry
  store ptr @.str.27, ptr %s, align 8, !dbg !570
  br label %sw.epilog, !dbg !572

sw.bb1:                                           ; preds = %entry
  store ptr @.str.28, ptr %s, align 8, !dbg !573
  br label %sw.epilog, !dbg !574

sw.bb2:                                           ; preds = %entry
  store ptr @.str.29, ptr %s, align 8, !dbg !575
  br label %sw.epilog, !dbg !576

sw.bb3:                                           ; preds = %entry
  store ptr @.str.30, ptr %s, align 8, !dbg !577
  br label %sw.epilog, !dbg !578

sw.bb4:                                           ; preds = %entry
  store ptr @.str.31, ptr %s, align 8, !dbg !579
  br label %sw.epilog, !dbg !580

sw.bb5:                                           ; preds = %entry
  store ptr @.str.32, ptr %s, align 8, !dbg !581
  br label %sw.epilog, !dbg !582

sw.bb6:                                           ; preds = %entry
  store ptr @.str.33, ptr %s, align 8, !dbg !583
  br label %sw.epilog, !dbg !584

sw.bb7:                                           ; preds = %entry
  store ptr @.str.34, ptr %s, align 8, !dbg !585
  br label %sw.epilog, !dbg !586

sw.bb8:                                           ; preds = %entry
  store ptr @.str.35, ptr %s, align 8, !dbg !587
  br label %sw.epilog, !dbg !588

sw.bb9:                                           ; preds = %entry
  store ptr @.str.36, ptr %s, align 8, !dbg !589
  br label %sw.epilog, !dbg !590

sw.bb10:                                          ; preds = %entry
  store ptr @.str.37, ptr %s, align 8, !dbg !591
  br label %sw.epilog, !dbg !592

sw.bb11:                                          ; preds = %entry
  store ptr @.str.38, ptr %s, align 8, !dbg !593
  br label %sw.epilog, !dbg !594

sw.bb12:                                          ; preds = %entry
  store ptr @.str.39, ptr %s, align 8, !dbg !595
  br label %sw.epilog, !dbg !596

sw.bb13:                                          ; preds = %entry
  store ptr @.str.40, ptr %s, align 8, !dbg !597
  br label %sw.epilog, !dbg !598

sw.bb14:                                          ; preds = %entry
  store ptr @.str.41, ptr %s, align 8, !dbg !599
  br label %sw.epilog, !dbg !600

sw.bb15:                                          ; preds = %entry
  store ptr @.str.42, ptr %s, align 8, !dbg !601
  br label %sw.epilog, !dbg !602

sw.default:                                       ; preds = %entry
  store ptr @.str.11, ptr %s, align 8, !dbg !603
  br label %sw.epilog, !dbg !604

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %str.addr, align 8, !dbg !605
  %2 = load i64, ptr %size.addr, align 8, !dbg !606
  %3 = load i8, ptr %bRequest.addr, align 1, !dbg !607
  %conv16 = zext i8 %3 to i32, !dbg !607
  %cmp = icmp eq i32 %conv16, 6, !dbg !608
  %4 = zext i1 %cmp to i64, !dbg !607
  %cond = select i1 %cmp, ptr @.str.44, ptr @.str.7, !dbg !607
  %5 = load ptr, ptr %s, align 8, !dbg !609
  %6 = load i16, ptr %wValue.addr, align 2, !dbg !610
  %conv18 = zext i16 %6 to i32, !dbg !610
  %and = and i32 %conv18, 255, !dbg !611
  %7 = load i16, ptr %wLength.addr, align 2, !dbg !612
  %conv19 = zext i16 %7 to i32, !dbg !612
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %2, ptr noundef @.str.43, ptr noundef %cond, ptr noundef %5, i32 noundef %and, i32 noundef %conv19) #4, !dbg !613
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #5, !dbg !614
  ret void, !dbg !614
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_get_configuration(i16 noundef zeroext %wLength, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !615 {
entry:
  %wLength.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i16 %wLength, ptr %wLength.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wLength.addr, metadata !617, metadata !DIExpression()), !dbg !620
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !618, metadata !DIExpression()), !dbg !621
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !619, metadata !DIExpression()), !dbg !622
  %0 = load ptr, ptr %str.addr, align 8, !dbg !623
  %1 = load i64, ptr %size.addr, align 8, !dbg !624
  %2 = load i16, ptr %wLength.addr, align 2, !dbg !625
  %conv = zext i16 %2 to i32, !dbg !625
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.45, i32 noundef %conv) #4, !dbg !626
  ret void, !dbg !627
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_set_configuration(i8 noundef zeroext %wValue, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !628 {
entry:
  %wValue.addr = alloca i8, align 1
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i8 %wValue, ptr %wValue.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !632, metadata !DIExpression()), !dbg !635
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !633, metadata !DIExpression()), !dbg !636
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !634, metadata !DIExpression()), !dbg !637
  %0 = load ptr, ptr %str.addr, align 8, !dbg !638
  %1 = load i64, ptr %size.addr, align 8, !dbg !639
  %2 = load i8, ptr %wValue.addr, align 1, !dbg !640
  %conv = zext i8 %2 to i32, !dbg !640
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.46, i32 noundef %conv) #4, !dbg !641
  ret void, !dbg !642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_get_intf(i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !643 {
entry:
  %wIndex.addr = alloca i16, align 2
  %wLength.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !647, metadata !DIExpression()), !dbg !651
  store i16 %wLength, ptr %wLength.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wLength.addr, metadata !648, metadata !DIExpression()), !dbg !652
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !649, metadata !DIExpression()), !dbg !653
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !650, metadata !DIExpression()), !dbg !654
  %0 = load ptr, ptr %str.addr, align 8, !dbg !655
  %1 = load i64, ptr %size.addr, align 8, !dbg !656
  %2 = load i16, ptr %wIndex.addr, align 2, !dbg !657
  %conv = zext i16 %2 to i32, !dbg !657
  %3 = load i16, ptr %wLength.addr, align 2, !dbg !658
  %conv1 = zext i16 %3 to i32, !dbg !658
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.47, i32 noundef %conv, i32 noundef %conv1) #4, !dbg !659
  ret void, !dbg !660
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_set_intf(i8 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !661 {
entry:
  %wValue.addr = alloca i8, align 1
  %wIndex.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i8 %wValue, ptr %wValue.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !665, metadata !DIExpression()), !dbg !669
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !666, metadata !DIExpression()), !dbg !670
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !667, metadata !DIExpression()), !dbg !671
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !668, metadata !DIExpression()), !dbg !672
  %0 = load ptr, ptr %str.addr, align 8, !dbg !673
  %1 = load i64, ptr %size.addr, align 8, !dbg !674
  %2 = load i16, ptr %wIndex.addr, align 2, !dbg !675
  %conv = zext i16 %2 to i32, !dbg !675
  %3 = load i8, ptr %wValue.addr, align 1, !dbg !676
  %conv1 = zext i8 %3 to i32, !dbg !676
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.48, i32 noundef %conv, i32 noundef %conv1) #4, !dbg !677
  ret void, !dbg !678
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_synch_frame(i16 noundef zeroext %wIndex, i16 noundef zeroext %wLength, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !679 {
entry:
  %wIndex.addr = alloca i16, align 2
  %wLength.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !681, metadata !DIExpression()), !dbg !685
  store i16 %wLength, ptr %wLength.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wLength.addr, metadata !682, metadata !DIExpression()), !dbg !686
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !683, metadata !DIExpression()), !dbg !687
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !684, metadata !DIExpression()), !dbg !688
  %0 = load ptr, ptr %str.addr, align 8, !dbg !689
  %1 = load i64, ptr %size.addr, align 8, !dbg !690
  %2 = load i16, ptr %wIndex.addr, align 2, !dbg !691
  %conv = zext i16 %2 to i32, !dbg !691
  %3 = load i16, ptr %wLength.addr, align 2, !dbg !692
  %conv1 = zext i16 %3 to i32, !dbg !692
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.49, i32 noundef %conv, i32 noundef %conv1) #4, !dbg !693
  ret void, !dbg !694
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_set_sel(i16 noundef zeroext %wLength, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !695 {
entry:
  %wLength.addr = alloca i16, align 2
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i16 %wLength, ptr %wLength.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wLength.addr, metadata !697, metadata !DIExpression()), !dbg !700
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !698, metadata !DIExpression()), !dbg !701
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !699, metadata !DIExpression()), !dbg !702
  %0 = load ptr, ptr %str.addr, align 8, !dbg !703
  %1 = load i64, ptr %size.addr, align 8, !dbg !704
  %2 = load i16, ptr %wLength.addr, align 2, !dbg !705
  %conv = zext i16 %2 to i32, !dbg !705
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.50, i32 noundef %conv) #4, !dbg !706
  ret void, !dbg !707
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @usb_decode_set_isoch_delay(i8 noundef zeroext %wValue, ptr noundef %str, i64 noundef %size) #0 align 16 !dbg !708 {
entry:
  %wValue.addr = alloca i8, align 1
  %str.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store i8 %wValue, ptr %wValue.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !710, metadata !DIExpression()), !dbg !713
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !711, metadata !DIExpression()), !dbg !714
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !712, metadata !DIExpression()), !dbg !715
  %0 = load ptr, ptr %str.addr, align 8, !dbg !716
  %1 = load i64, ptr %size.addr, align 8, !dbg !717
  %2 = load i8, ptr %wValue.addr, align 1, !dbg !718
  %conv = zext i8 %2 to i32, !dbg !718
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.51, i32 noundef %conv) #4, !dbg !719
  ret void, !dbg !720
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !721 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_decode_device_feature(i16 noundef zeroext %wValue) #0 align 16 !dbg !726 {
entry:
  %retval = alloca ptr, align 8
  %wValue.addr = alloca i16, align 2
  store i16 %wValue, ptr %wValue.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wValue.addr, metadata !731, metadata !DIExpression()), !dbg !732
  %0 = load i16, ptr %wValue.addr, align 2, !dbg !733
  %conv = zext i16 %0 to i32, !dbg !733
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 48, label %sw.bb3
    i32 49, label %sw.bb4
    i32 50, label %sw.bb5
  ], !dbg !734

sw.bb:                                            ; preds = %entry
  store ptr @.str.14, ptr %retval, align 8, !dbg !735
  br label %return, !dbg !735

sw.bb1:                                           ; preds = %entry
  store ptr @.str.15, ptr %retval, align 8, !dbg !737
  br label %return, !dbg !737

sw.bb2:                                           ; preds = %entry
  store ptr @.str.16, ptr %retval, align 8, !dbg !738
  br label %return, !dbg !738

sw.bb3:                                           ; preds = %entry
  store ptr @.str.17, ptr %retval, align 8, !dbg !739
  br label %return, !dbg !739

sw.bb4:                                           ; preds = %entry
  store ptr @.str.18, ptr %retval, align 8, !dbg !740
  br label %return, !dbg !740

sw.bb5:                                           ; preds = %entry
  store ptr @.str.19, ptr %retval, align 8, !dbg !741
  br label %return, !dbg !741

sw.default:                                       ; preds = %entry
  store ptr @.str.11, ptr %retval, align 8, !dbg !742
  br label %return, !dbg !742

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !743
  ret ptr %1, !dbg !743
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @usb_decode_test_mode(i16 noundef zeroext %wIndex) #0 align 16 !dbg !744 {
entry:
  %retval = alloca ptr, align 8
  %wIndex.addr = alloca i16, align 2
  store i16 %wIndex, ptr %wIndex.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %wIndex.addr, metadata !746, metadata !DIExpression()), !dbg !747
  %0 = load i16, ptr %wIndex.addr, align 2, !dbg !748
  %conv = zext i16 %0 to i32, !dbg !748
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
  ], !dbg !749

sw.bb:                                            ; preds = %entry
  store ptr @.str.20, ptr %retval, align 8, !dbg !750
  br label %return, !dbg !750

sw.bb1:                                           ; preds = %entry
  store ptr @.str.21, ptr %retval, align 8, !dbg !752
  br label %return, !dbg !752

sw.bb2:                                           ; preds = %entry
  store ptr @.str.22, ptr %retval, align 8, !dbg !753
  br label %return, !dbg !753

sw.bb3:                                           ; preds = %entry
  store ptr @.str.23, ptr %retval, align 8, !dbg !754
  br label %return, !dbg !754

sw.bb4:                                           ; preds = %entry
  store ptr @.str.24, ptr %retval, align 8, !dbg !755
  br label %return, !dbg !755

sw.default:                                       ; preds = %entry
  store ptr @.str.25, ptr %retval, align 8, !dbg !756
  br label %return, !dbg !756

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !757
  ret ptr %1, !dbg !757
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_usb_decode_ctrl3", scope: !2, file: !3, line: 319, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/usb/common/.debug.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/usb/common/usb-common\22 -D KBUILD_BASENAME=\22debug\22 -D KBUILD_MODNAME=\22usb_common\22 -D __KBUILD_MODNAME=kmod_usb_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/usb/common/debug.ll drivers/usb/common/debug.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/common/debug.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1e14ce04f37ac2823f20298d88f8d992")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !13, !18, !23, !28, !33, !38, !43, !45, !50, !55, !60, !65, !67, !72, !77, !82, !87, !89, !91, !96, !101, !103, !108, !110, !115, !117, !119, !124, !126, !128, !130, !132, !134, !139, !141, !143, !145, !150, !152, !157, !159, !161, !166, !171, !173, !175, !177, !182, !187, !192, !197, !202, !207, !209, !211, !213, !215, !217}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !3, line: 19, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 248, elements: !11)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!12}
!12 = !DISubrange(count: 31)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 23, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 360, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 45)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 224, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 28)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 24, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 3)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 4)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 24)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 48, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 6)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !30, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 25)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 136, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 17)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 8)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !9, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 40, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 5)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 104, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 13)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 14)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 80, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 10)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !84, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !84, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 88, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 11)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 72, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 9)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !98, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 15)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !79, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 16)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !84, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !52, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 56, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 7)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !79, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !121, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !84, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !98, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !57, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 152, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 19)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !112, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !30, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !40, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 176, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 22)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 146, type: !30, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 149, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 144, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 18)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !93, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !147, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 280, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 35)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 336, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 42)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !30, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !9, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !9, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 304, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 38)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 344, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 43)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 40)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 21)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 296, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 37)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !3, line: 219, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 568, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 71)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !98, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !3, line: 221, type: !121, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !40, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !62, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !25, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !30, isLocal: true, isDefinition: true)
!219 = !{i32 7, !"Dwarf Version", i32 5}
!220 = !{i32 2, !"Debug Info Version", i32 3}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 8, !"cf-protection-branch", i32 1}
!223 = !{i32 4, !"function_return_thunk_extern", i32 1}
!224 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!225 = !{i32 1, !"Code Model", i32 2}
!226 = !{i32 1, !"override-stack-alignment", i32 8}
!227 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!228 = distinct !DISubprogram(name: "usb_decode_ctrl", scope: !3, file: !3, line: 300, type: !229, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !233, !234, !240, !240, !243, !243, !243}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !235, line: 61, baseType: !236)
!235 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !237, line: 72, baseType: !238)
!237 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !237, line: 16, baseType: !239)
!239 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !241, line: 21, baseType: !242)
!241 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!242 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !241, line: 24, baseType: !244)
!244 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!245 = !{!246, !247, !248, !249, !250, !251, !252}
!246 = !DILocalVariable(name: "str", arg: 1, scope: !228, file: !3, line: 300, type: !233)
!247 = !DILocalVariable(name: "size", arg: 2, scope: !228, file: !3, line: 300, type: !234)
!248 = !DILocalVariable(name: "bRequestType", arg: 3, scope: !228, file: !3, line: 300, type: !240)
!249 = !DILocalVariable(name: "bRequest", arg: 4, scope: !228, file: !3, line: 301, type: !240)
!250 = !DILocalVariable(name: "wValue", arg: 5, scope: !228, file: !3, line: 301, type: !243)
!251 = !DILocalVariable(name: "wIndex", arg: 6, scope: !228, file: !3, line: 301, type: !243)
!252 = !DILocalVariable(name: "wLength", arg: 7, scope: !228, file: !3, line: 302, type: !243)
!253 = !DILocation(line: 300, column: 35, scope: !228)
!254 = !DILocation(line: 300, column: 47, scope: !228)
!255 = !DILocation(line: 300, column: 58, scope: !228)
!256 = !DILocation(line: 301, column: 13, scope: !228)
!257 = !DILocation(line: 301, column: 29, scope: !228)
!258 = !DILocation(line: 301, column: 43, scope: !228)
!259 = !DILocation(line: 302, column: 14, scope: !228)
!260 = !DILocation(line: 304, column: 10, scope: !228)
!261 = !DILocation(line: 304, column: 23, scope: !228)
!262 = !DILocation(line: 304, column: 2, scope: !228)
!263 = !DILocation(line: 306, column: 28, scope: !264)
!264 = distinct !DILexicalBlock(scope: !228, file: !3, line: 304, column: 40)
!265 = !DILocation(line: 306, column: 33, scope: !264)
!266 = !DILocation(line: 306, column: 39, scope: !264)
!267 = !DILocation(line: 306, column: 53, scope: !264)
!268 = !DILocation(line: 307, column: 7, scope: !264)
!269 = !DILocation(line: 307, column: 15, scope: !264)
!270 = !DILocation(line: 307, column: 23, scope: !264)
!271 = !DILocation(line: 306, column: 3, scope: !264)
!272 = !DILocation(line: 308, column: 3, scope: !264)
!273 = !DILocation(line: 310, column: 2, scope: !264)
!274 = !DILocation(line: 312, column: 27, scope: !264)
!275 = !DILocation(line: 312, column: 32, scope: !264)
!276 = !DILocation(line: 312, column: 38, scope: !264)
!277 = !DILocation(line: 312, column: 52, scope: !264)
!278 = !DILocation(line: 313, column: 6, scope: !264)
!279 = !DILocation(line: 313, column: 14, scope: !264)
!280 = !DILocation(line: 313, column: 22, scope: !264)
!281 = !DILocation(line: 312, column: 3, scope: !264)
!282 = !DILocation(line: 314, column: 3, scope: !264)
!283 = !DILocation(line: 317, column: 9, scope: !228)
!284 = !DILocation(line: 317, column: 2, scope: !228)
!285 = distinct !DISubprogram(name: "usb_decode_ctrl_standard", scope: !3, file: !3, line: 230, type: !286, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !288)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !233, !234, !240, !240, !243, !243, !243}
!288 = !{!289, !290, !291, !292, !293, !294, !295}
!289 = !DILocalVariable(name: "str", arg: 1, scope: !285, file: !3, line: 230, type: !233)
!290 = !DILocalVariable(name: "size", arg: 2, scope: !285, file: !3, line: 230, type: !234)
!291 = !DILocalVariable(name: "bRequestType", arg: 3, scope: !285, file: !3, line: 230, type: !240)
!292 = !DILocalVariable(name: "bRequest", arg: 4, scope: !285, file: !3, line: 231, type: !240)
!293 = !DILocalVariable(name: "wValue", arg: 5, scope: !285, file: !3, line: 231, type: !243)
!294 = !DILocalVariable(name: "wIndex", arg: 6, scope: !285, file: !3, line: 231, type: !243)
!295 = !DILocalVariable(name: "wLength", arg: 7, scope: !285, file: !3, line: 232, type: !243)
!296 = !DILocation(line: 230, column: 44, scope: !285)
!297 = !DILocation(line: 230, column: 56, scope: !285)
!298 = !DILocation(line: 230, column: 67, scope: !285)
!299 = !DILocation(line: 231, column: 15, scope: !285)
!300 = !DILocation(line: 231, column: 31, scope: !285)
!301 = !DILocation(line: 231, column: 45, scope: !285)
!302 = !DILocation(line: 232, column: 16, scope: !285)
!303 = !DILocation(line: 234, column: 10, scope: !285)
!304 = !DILocation(line: 234, column: 2, scope: !285)
!305 = !DILocation(line: 236, column: 25, scope: !306)
!306 = distinct !DILexicalBlock(scope: !285, file: !3, line: 234, column: 20)
!307 = !DILocation(line: 236, column: 39, scope: !306)
!308 = !DILocation(line: 236, column: 47, scope: !306)
!309 = !DILocation(line: 236, column: 56, scope: !306)
!310 = !DILocation(line: 236, column: 61, scope: !306)
!311 = !DILocation(line: 236, column: 3, scope: !306)
!312 = !DILocation(line: 237, column: 3, scope: !306)
!313 = !DILocation(line: 240, column: 32, scope: !306)
!314 = !DILocation(line: 240, column: 46, scope: !306)
!315 = !DILocation(line: 240, column: 56, scope: !306)
!316 = !DILocation(line: 241, column: 11, scope: !306)
!317 = !DILocation(line: 241, column: 19, scope: !306)
!318 = !DILocation(line: 241, column: 24, scope: !306)
!319 = !DILocation(line: 240, column: 3, scope: !306)
!320 = !DILocation(line: 242, column: 3, scope: !306)
!321 = !DILocation(line: 244, column: 26, scope: !306)
!322 = !DILocation(line: 244, column: 34, scope: !306)
!323 = !DILocation(line: 244, column: 39, scope: !306)
!324 = !DILocation(line: 244, column: 3, scope: !306)
!325 = !DILocation(line: 245, column: 3, scope: !306)
!326 = !DILocation(line: 248, column: 33, scope: !306)
!327 = !DILocation(line: 248, column: 47, scope: !306)
!328 = !DILocation(line: 248, column: 57, scope: !306)
!329 = !DILocation(line: 249, column: 12, scope: !306)
!330 = !DILocation(line: 249, column: 20, scope: !306)
!331 = !DILocation(line: 249, column: 29, scope: !306)
!332 = !DILocation(line: 249, column: 34, scope: !306)
!333 = !DILocation(line: 248, column: 3, scope: !306)
!334 = !DILocation(line: 250, column: 3, scope: !306)
!335 = !DILocation(line: 252, column: 32, scope: !306)
!336 = !DILocation(line: 252, column: 41, scope: !306)
!337 = !DILocation(line: 252, column: 46, scope: !306)
!338 = !DILocation(line: 252, column: 3, scope: !306)
!339 = !DILocation(line: 253, column: 3, scope: !306)
!340 = !DILocation(line: 255, column: 32, scope: !306)
!341 = !DILocation(line: 255, column: 40, scope: !306)
!342 = !DILocation(line: 255, column: 45, scope: !306)
!343 = !DILocation(line: 255, column: 3, scope: !306)
!344 = !DILocation(line: 256, column: 3, scope: !306)
!345 = !DILocation(line: 258, column: 23, scope: !306)
!346 = !DILocation(line: 258, column: 31, scope: !306)
!347 = !DILocation(line: 258, column: 40, scope: !306)
!348 = !DILocation(line: 258, column: 45, scope: !306)
!349 = !DILocation(line: 258, column: 3, scope: !306)
!350 = !DILocation(line: 259, column: 3, scope: !306)
!351 = !DILocation(line: 261, column: 23, scope: !306)
!352 = !DILocation(line: 261, column: 31, scope: !306)
!353 = !DILocation(line: 261, column: 39, scope: !306)
!354 = !DILocation(line: 261, column: 44, scope: !306)
!355 = !DILocation(line: 261, column: 3, scope: !306)
!356 = !DILocation(line: 262, column: 3, scope: !306)
!357 = !DILocation(line: 264, column: 26, scope: !306)
!358 = !DILocation(line: 264, column: 34, scope: !306)
!359 = !DILocation(line: 264, column: 43, scope: !306)
!360 = !DILocation(line: 264, column: 48, scope: !306)
!361 = !DILocation(line: 264, column: 3, scope: !306)
!362 = !DILocation(line: 265, column: 3, scope: !306)
!363 = !DILocation(line: 267, column: 22, scope: !306)
!364 = !DILocation(line: 267, column: 31, scope: !306)
!365 = !DILocation(line: 267, column: 36, scope: !306)
!366 = !DILocation(line: 267, column: 3, scope: !306)
!367 = !DILocation(line: 268, column: 3, scope: !306)
!368 = !DILocation(line: 270, column: 30, scope: !306)
!369 = !DILocation(line: 270, column: 38, scope: !306)
!370 = !DILocation(line: 270, column: 43, scope: !306)
!371 = !DILocation(line: 270, column: 3, scope: !306)
!372 = !DILocation(line: 271, column: 3, scope: !306)
!373 = !DILocation(line: 273, column: 27, scope: !306)
!374 = !DILocation(line: 273, column: 32, scope: !306)
!375 = !DILocation(line: 273, column: 38, scope: !306)
!376 = !DILocation(line: 273, column: 52, scope: !306)
!377 = !DILocation(line: 274, column: 6, scope: !306)
!378 = !DILocation(line: 274, column: 14, scope: !306)
!379 = !DILocation(line: 274, column: 22, scope: !306)
!380 = !DILocation(line: 273, column: 3, scope: !306)
!381 = !DILocation(line: 275, column: 3, scope: !306)
!382 = !DILocation(line: 277, column: 1, scope: !285)
!383 = distinct !DISubprogram(name: "usb_decode_ctrl_generic", scope: !3, file: !3, line: 211, type: !286, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !395}
!385 = !DILocalVariable(name: "str", arg: 1, scope: !383, file: !3, line: 211, type: !233)
!386 = !DILocalVariable(name: "size", arg: 2, scope: !383, file: !3, line: 211, type: !234)
!387 = !DILocalVariable(name: "bRequestType", arg: 3, scope: !383, file: !3, line: 211, type: !240)
!388 = !DILocalVariable(name: "bRequest", arg: 4, scope: !383, file: !3, line: 212, type: !240)
!389 = !DILocalVariable(name: "wValue", arg: 5, scope: !383, file: !3, line: 212, type: !243)
!390 = !DILocalVariable(name: "wIndex", arg: 6, scope: !383, file: !3, line: 212, type: !243)
!391 = !DILocalVariable(name: "wLength", arg: 7, scope: !383, file: !3, line: 213, type: !243)
!392 = !DILocalVariable(name: "recip", scope: !383, file: !3, line: 215, type: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !394, line: 17, baseType: !240)
!394 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!395 = !DILocalVariable(name: "type", scope: !383, file: !3, line: 216, type: !393)
!396 = !DILocation(line: 211, column: 43, scope: !383)
!397 = !DILocation(line: 211, column: 55, scope: !383)
!398 = !DILocation(line: 211, column: 66, scope: !383)
!399 = !DILocation(line: 212, column: 14, scope: !383)
!400 = !DILocation(line: 212, column: 30, scope: !383)
!401 = !DILocation(line: 212, column: 44, scope: !383)
!402 = !DILocation(line: 213, column: 15, scope: !383)
!403 = !DILocation(line: 215, column: 2, scope: !383)
!404 = !DILocation(line: 215, column: 5, scope: !383)
!405 = !DILocation(line: 215, column: 13, scope: !383)
!406 = !DILocation(line: 215, column: 26, scope: !383)
!407 = !DILocation(line: 216, column: 2, scope: !383)
!408 = !DILocation(line: 216, column: 5, scope: !383)
!409 = !DILocation(line: 216, column: 12, scope: !383)
!410 = !DILocation(line: 216, column: 25, scope: !383)
!411 = !DILocation(line: 218, column: 11, scope: !383)
!412 = !DILocation(line: 218, column: 16, scope: !383)
!413 = !DILocation(line: 220, column: 5, scope: !383)
!414 = !DILocation(line: 220, column: 10, scope: !383)
!415 = !DILocation(line: 220, column: 4, scope: !383)
!416 = !DILocation(line: 221, column: 5, scope: !383)
!417 = !DILocation(line: 221, column: 10, scope: !383)
!418 = !DILocation(line: 221, column: 4, scope: !383)
!419 = !DILocation(line: 222, column: 5, scope: !383)
!420 = !DILocation(line: 222, column: 10, scope: !383)
!421 = !DILocation(line: 222, column: 4, scope: !383)
!422 = !DILocation(line: 223, column: 5, scope: !383)
!423 = !DILocation(line: 223, column: 11, scope: !383)
!424 = !DILocation(line: 223, column: 4, scope: !383)
!425 = !DILocation(line: 224, column: 5, scope: !383)
!426 = !DILocation(line: 224, column: 11, scope: !383)
!427 = !DILocation(line: 224, column: 4, scope: !383)
!428 = !DILocation(line: 225, column: 5, scope: !383)
!429 = !DILocation(line: 225, column: 11, scope: !383)
!430 = !DILocation(line: 225, column: 4, scope: !383)
!431 = !DILocation(line: 226, column: 5, scope: !383)
!432 = !DILocation(line: 226, column: 18, scope: !383)
!433 = !DILocation(line: 226, column: 4, scope: !383)
!434 = !DILocation(line: 227, column: 4, scope: !383)
!435 = !DILocation(line: 227, column: 14, scope: !383)
!436 = !DILocation(line: 227, column: 22, scope: !383)
!437 = !DILocation(line: 227, column: 30, scope: !383)
!438 = !DILocation(line: 218, column: 2, scope: !383)
!439 = !DILocation(line: 228, column: 1, scope: !383)
!440 = distinct !DISubprogram(name: "usb_decode_get_status", scope: !3, file: !3, line: 14, type: !441, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !240, !243, !243, !233, !234}
!443 = !{!444, !445, !446, !447, !448}
!444 = !DILocalVariable(name: "bRequestType", arg: 1, scope: !440, file: !3, line: 14, type: !240)
!445 = !DILocalVariable(name: "wIndex", arg: 2, scope: !440, file: !3, line: 14, type: !243)
!446 = !DILocalVariable(name: "wLength", arg: 3, scope: !440, file: !3, line: 15, type: !243)
!447 = !DILocalVariable(name: "str", arg: 4, scope: !440, file: !3, line: 15, type: !233)
!448 = !DILocalVariable(name: "size", arg: 5, scope: !440, file: !3, line: 15, type: !234)
!449 = !DILocation(line: 14, column: 40, scope: !440)
!450 = !DILocation(line: 14, column: 60, scope: !440)
!451 = !DILocation(line: 15, column: 13, scope: !440)
!452 = !DILocation(line: 15, column: 28, scope: !440)
!453 = !DILocation(line: 15, column: 40, scope: !440)
!454 = !DILocation(line: 17, column: 10, scope: !440)
!455 = !DILocation(line: 17, column: 23, scope: !440)
!456 = !DILocation(line: 17, column: 2, scope: !440)
!457 = !DILocation(line: 19, column: 12, scope: !458)
!458 = distinct !DILexicalBlock(scope: !440, file: !3, line: 17, column: 41)
!459 = !DILocation(line: 19, column: 17, scope: !458)
!460 = !DILocation(line: 19, column: 57, scope: !458)
!461 = !DILocation(line: 19, column: 3, scope: !458)
!462 = !DILocation(line: 20, column: 3, scope: !458)
!463 = !DILocation(line: 22, column: 12, scope: !458)
!464 = !DILocation(line: 22, column: 17, scope: !458)
!465 = !DILocation(line: 24, column: 5, scope: !458)
!466 = !DILocation(line: 24, column: 13, scope: !458)
!467 = !DILocation(line: 22, column: 3, scope: !458)
!468 = !DILocation(line: 25, column: 3, scope: !458)
!469 = !DILocation(line: 27, column: 12, scope: !458)
!470 = !DILocation(line: 27, column: 17, scope: !458)
!471 = !DILocation(line: 28, column: 5, scope: !458)
!472 = !DILocation(line: 28, column: 12, scope: !458)
!473 = !DILocation(line: 29, column: 5, scope: !458)
!474 = !DILocation(line: 29, column: 12, scope: !458)
!475 = !DILocation(line: 27, column: 3, scope: !458)
!476 = !DILocation(line: 30, column: 3, scope: !458)
!477 = !DILocation(line: 32, column: 1, scope: !440)
!478 = distinct !DISubprogram(name: "usb_decode_set_clear_feature", scope: !3, file: !3, line: 72, type: !479, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !240, !240, !243, !243, !233, !234}
!481 = !{!482, !483, !484, !485, !486, !487}
!482 = !DILocalVariable(name: "bRequestType", arg: 1, scope: !478, file: !3, line: 72, type: !240)
!483 = !DILocalVariable(name: "bRequest", arg: 2, scope: !478, file: !3, line: 73, type: !240)
!484 = !DILocalVariable(name: "wValue", arg: 3, scope: !478, file: !3, line: 73, type: !243)
!485 = !DILocalVariable(name: "wIndex", arg: 4, scope: !478, file: !3, line: 74, type: !243)
!486 = !DILocalVariable(name: "str", arg: 5, scope: !478, file: !3, line: 74, type: !233)
!487 = !DILocalVariable(name: "size", arg: 6, scope: !478, file: !3, line: 74, type: !234)
!488 = !DILocation(line: 72, column: 47, scope: !478)
!489 = !DILocation(line: 73, column: 12, scope: !478)
!490 = !DILocation(line: 73, column: 28, scope: !478)
!491 = !DILocation(line: 74, column: 13, scope: !478)
!492 = !DILocation(line: 74, column: 27, scope: !478)
!493 = !DILocation(line: 74, column: 39, scope: !478)
!494 = !DILocation(line: 76, column: 10, scope: !478)
!495 = !DILocation(line: 76, column: 23, scope: !478)
!496 = !DILocation(line: 76, column: 2, scope: !478)
!497 = !DILocation(line: 78, column: 12, scope: !498)
!498 = distinct !DILexicalBlock(scope: !478, file: !3, line: 76, column: 41)
!499 = !DILocation(line: 78, column: 17, scope: !498)
!500 = !DILocation(line: 79, column: 5, scope: !498)
!501 = !DILocation(line: 79, column: 14, scope: !498)
!502 = !DILocation(line: 80, column: 31, scope: !498)
!503 = !DILocation(line: 80, column: 5, scope: !498)
!504 = !DILocation(line: 81, column: 5, scope: !498)
!505 = !DILocation(line: 81, column: 12, scope: !498)
!506 = !DILocation(line: 82, column: 26, scope: !498)
!507 = !DILocation(line: 82, column: 5, scope: !498)
!508 = !DILocation(line: 78, column: 3, scope: !498)
!509 = !DILocation(line: 83, column: 3, scope: !498)
!510 = !DILocation(line: 85, column: 12, scope: !498)
!511 = !DILocation(line: 85, column: 17, scope: !498)
!512 = !DILocation(line: 86, column: 5, scope: !498)
!513 = !DILocation(line: 86, column: 14, scope: !498)
!514 = !DILocation(line: 87, column: 5, scope: !498)
!515 = !DILocation(line: 87, column: 12, scope: !498)
!516 = !DILocation(line: 85, column: 3, scope: !498)
!517 = !DILocation(line: 89, column: 3, scope: !498)
!518 = !DILocation(line: 91, column: 12, scope: !498)
!519 = !DILocation(line: 91, column: 17, scope: !498)
!520 = !DILocation(line: 92, column: 5, scope: !498)
!521 = !DILocation(line: 92, column: 14, scope: !498)
!522 = !DILocation(line: 93, column: 5, scope: !498)
!523 = !DILocation(line: 93, column: 12, scope: !498)
!524 = !DILocation(line: 94, column: 5, scope: !498)
!525 = !DILocation(line: 94, column: 12, scope: !498)
!526 = !DILocation(line: 95, column: 5, scope: !498)
!527 = !DILocation(line: 95, column: 12, scope: !498)
!528 = !DILocation(line: 91, column: 3, scope: !498)
!529 = !DILocation(line: 96, column: 3, scope: !498)
!530 = !DILocation(line: 98, column: 1, scope: !478)
!531 = distinct !DISubprogram(name: "usb_decode_set_address", scope: !3, file: !3, line: 100, type: !532, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !243, !233, !234}
!534 = !{!535, !536, !537}
!535 = !DILocalVariable(name: "wValue", arg: 1, scope: !531, file: !3, line: 100, type: !243)
!536 = !DILocalVariable(name: "str", arg: 2, scope: !531, file: !3, line: 100, type: !233)
!537 = !DILocalVariable(name: "size", arg: 3, scope: !531, file: !3, line: 100, type: !234)
!538 = !DILocation(line: 100, column: 42, scope: !531)
!539 = !DILocation(line: 100, column: 56, scope: !531)
!540 = !DILocation(line: 100, column: 68, scope: !531)
!541 = !DILocation(line: 102, column: 11, scope: !531)
!542 = !DILocation(line: 102, column: 16, scope: !531)
!543 = !DILocation(line: 102, column: 50, scope: !531)
!544 = !DILocation(line: 102, column: 2, scope: !531)
!545 = !DILocation(line: 103, column: 1, scope: !531)
!546 = distinct !DISubprogram(name: "usb_decode_get_set_descriptor", scope: !3, file: !3, line: 105, type: !547, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !240, !240, !243, !243, !243, !233, !234}
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557}
!550 = !DILocalVariable(name: "bRequestType", arg: 1, scope: !546, file: !3, line: 105, type: !240)
!551 = !DILocalVariable(name: "bRequest", arg: 2, scope: !546, file: !3, line: 105, type: !240)
!552 = !DILocalVariable(name: "wValue", arg: 3, scope: !546, file: !3, line: 106, type: !243)
!553 = !DILocalVariable(name: "wIndex", arg: 4, scope: !546, file: !3, line: 106, type: !243)
!554 = !DILocalVariable(name: "wLength", arg: 5, scope: !546, file: !3, line: 107, type: !243)
!555 = !DILocalVariable(name: "str", arg: 6, scope: !546, file: !3, line: 107, type: !233)
!556 = !DILocalVariable(name: "size", arg: 7, scope: !546, file: !3, line: 107, type: !234)
!557 = !DILocalVariable(name: "s", scope: !546, file: !3, line: 109, type: !233)
!558 = !DILocation(line: 105, column: 48, scope: !546)
!559 = !DILocation(line: 105, column: 67, scope: !546)
!560 = !DILocation(line: 106, column: 14, scope: !546)
!561 = !DILocation(line: 106, column: 28, scope: !546)
!562 = !DILocation(line: 107, column: 14, scope: !546)
!563 = !DILocation(line: 107, column: 29, scope: !546)
!564 = !DILocation(line: 107, column: 41, scope: !546)
!565 = !DILocation(line: 109, column: 2, scope: !546)
!566 = !DILocation(line: 109, column: 8, scope: !546)
!567 = !DILocation(line: 111, column: 10, scope: !546)
!568 = !DILocation(line: 111, column: 17, scope: !546)
!569 = !DILocation(line: 111, column: 2, scope: !546)
!570 = !DILocation(line: 113, column: 5, scope: !571)
!571 = distinct !DILexicalBlock(scope: !546, file: !3, line: 111, column: 23)
!572 = !DILocation(line: 114, column: 3, scope: !571)
!573 = !DILocation(line: 116, column: 5, scope: !571)
!574 = !DILocation(line: 117, column: 3, scope: !571)
!575 = !DILocation(line: 119, column: 5, scope: !571)
!576 = !DILocation(line: 120, column: 3, scope: !571)
!577 = !DILocation(line: 122, column: 5, scope: !571)
!578 = !DILocation(line: 123, column: 3, scope: !571)
!579 = !DILocation(line: 125, column: 5, scope: !571)
!580 = !DILocation(line: 126, column: 3, scope: !571)
!581 = !DILocation(line: 128, column: 5, scope: !571)
!582 = !DILocation(line: 129, column: 3, scope: !571)
!583 = !DILocation(line: 131, column: 5, scope: !571)
!584 = !DILocation(line: 132, column: 3, scope: !571)
!585 = !DILocation(line: 134, column: 5, scope: !571)
!586 = !DILocation(line: 135, column: 3, scope: !571)
!587 = !DILocation(line: 137, column: 5, scope: !571)
!588 = !DILocation(line: 138, column: 3, scope: !571)
!589 = !DILocation(line: 140, column: 5, scope: !571)
!590 = !DILocation(line: 141, column: 3, scope: !571)
!591 = !DILocation(line: 143, column: 5, scope: !571)
!592 = !DILocation(line: 144, column: 3, scope: !571)
!593 = !DILocation(line: 146, column: 5, scope: !571)
!594 = !DILocation(line: 147, column: 3, scope: !571)
!595 = !DILocation(line: 149, column: 5, scope: !571)
!596 = !DILocation(line: 150, column: 3, scope: !571)
!597 = !DILocation(line: 152, column: 5, scope: !571)
!598 = !DILocation(line: 153, column: 3, scope: !571)
!599 = !DILocation(line: 155, column: 5, scope: !571)
!600 = !DILocation(line: 156, column: 3, scope: !571)
!601 = !DILocation(line: 158, column: 5, scope: !571)
!602 = !DILocation(line: 159, column: 3, scope: !571)
!603 = !DILocation(line: 161, column: 5, scope: !571)
!604 = !DILocation(line: 162, column: 3, scope: !571)
!605 = !DILocation(line: 165, column: 11, scope: !546)
!606 = !DILocation(line: 165, column: 16, scope: !546)
!607 = !DILocation(line: 166, column: 3, scope: !546)
!608 = !DILocation(line: 166, column: 12, scope: !546)
!609 = !DILocation(line: 167, column: 3, scope: !546)
!610 = !DILocation(line: 167, column: 6, scope: !546)
!611 = !DILocation(line: 167, column: 13, scope: !546)
!612 = !DILocation(line: 167, column: 21, scope: !546)
!613 = !DILocation(line: 165, column: 2, scope: !546)
!614 = !DILocation(line: 168, column: 1, scope: !546)
!615 = distinct !DISubprogram(name: "usb_decode_get_configuration", scope: !3, file: !3, line: 170, type: !532, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!616 = !{!617, !618, !619}
!617 = !DILocalVariable(name: "wLength", arg: 1, scope: !615, file: !3, line: 170, type: !243)
!618 = !DILocalVariable(name: "str", arg: 2, scope: !615, file: !3, line: 170, type: !233)
!619 = !DILocalVariable(name: "size", arg: 3, scope: !615, file: !3, line: 170, type: !234)
!620 = !DILocation(line: 170, column: 48, scope: !615)
!621 = !DILocation(line: 170, column: 63, scope: !615)
!622 = !DILocation(line: 170, column: 75, scope: !615)
!623 = !DILocation(line: 172, column: 11, scope: !615)
!624 = !DILocation(line: 172, column: 16, scope: !615)
!625 = !DILocation(line: 172, column: 56, scope: !615)
!626 = !DILocation(line: 172, column: 2, scope: !615)
!627 = !DILocation(line: 173, column: 1, scope: !615)
!628 = distinct !DISubprogram(name: "usb_decode_set_configuration", scope: !3, file: !3, line: 175, type: !629, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !240, !233, !234}
!631 = !{!632, !633, !634}
!632 = !DILocalVariable(name: "wValue", arg: 1, scope: !628, file: !3, line: 175, type: !240)
!633 = !DILocalVariable(name: "str", arg: 2, scope: !628, file: !3, line: 175, type: !233)
!634 = !DILocalVariable(name: "size", arg: 3, scope: !628, file: !3, line: 175, type: !234)
!635 = !DILocation(line: 175, column: 47, scope: !628)
!636 = !DILocation(line: 175, column: 61, scope: !628)
!637 = !DILocation(line: 175, column: 73, scope: !628)
!638 = !DILocation(line: 177, column: 11, scope: !628)
!639 = !DILocation(line: 177, column: 16, scope: !628)
!640 = !DILocation(line: 177, column: 56, scope: !628)
!641 = !DILocation(line: 177, column: 2, scope: !628)
!642 = !DILocation(line: 178, column: 1, scope: !628)
!643 = distinct !DISubprogram(name: "usb_decode_get_intf", scope: !3, file: !3, line: 180, type: !644, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !243, !243, !233, !234}
!646 = !{!647, !648, !649, !650}
!647 = !DILocalVariable(name: "wIndex", arg: 1, scope: !643, file: !3, line: 180, type: !243)
!648 = !DILocalVariable(name: "wLength", arg: 2, scope: !643, file: !3, line: 180, type: !243)
!649 = !DILocalVariable(name: "str", arg: 3, scope: !643, file: !3, line: 180, type: !233)
!650 = !DILocalVariable(name: "size", arg: 4, scope: !643, file: !3, line: 181, type: !234)
!651 = !DILocation(line: 180, column: 39, scope: !643)
!652 = !DILocation(line: 180, column: 53, scope: !643)
!653 = !DILocation(line: 180, column: 68, scope: !643)
!654 = !DILocation(line: 181, column: 12, scope: !643)
!655 = !DILocation(line: 183, column: 11, scope: !643)
!656 = !DILocation(line: 183, column: 16, scope: !643)
!657 = !DILocation(line: 184, column: 4, scope: !643)
!658 = !DILocation(line: 184, column: 12, scope: !643)
!659 = !DILocation(line: 183, column: 2, scope: !643)
!660 = !DILocation(line: 185, column: 1, scope: !643)
!661 = distinct !DISubprogram(name: "usb_decode_set_intf", scope: !3, file: !3, line: 187, type: !662, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !240, !243, !233, !234}
!664 = !{!665, !666, !667, !668}
!665 = !DILocalVariable(name: "wValue", arg: 1, scope: !661, file: !3, line: 187, type: !240)
!666 = !DILocalVariable(name: "wIndex", arg: 2, scope: !661, file: !3, line: 187, type: !243)
!667 = !DILocalVariable(name: "str", arg: 3, scope: !661, file: !3, line: 187, type: !233)
!668 = !DILocalVariable(name: "size", arg: 4, scope: !661, file: !3, line: 188, type: !234)
!669 = !DILocation(line: 187, column: 38, scope: !661)
!670 = !DILocation(line: 187, column: 52, scope: !661)
!671 = !DILocation(line: 187, column: 66, scope: !661)
!672 = !DILocation(line: 188, column: 12, scope: !661)
!673 = !DILocation(line: 190, column: 11, scope: !661)
!674 = !DILocation(line: 190, column: 16, scope: !661)
!675 = !DILocation(line: 191, column: 4, scope: !661)
!676 = !DILocation(line: 191, column: 12, scope: !661)
!677 = !DILocation(line: 190, column: 2, scope: !661)
!678 = !DILocation(line: 192, column: 1, scope: !661)
!679 = distinct !DISubprogram(name: "usb_decode_synch_frame", scope: !3, file: !3, line: 194, type: !644, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !680)
!680 = !{!681, !682, !683, !684}
!681 = !DILocalVariable(name: "wIndex", arg: 1, scope: !679, file: !3, line: 194, type: !243)
!682 = !DILocalVariable(name: "wLength", arg: 2, scope: !679, file: !3, line: 194, type: !243)
!683 = !DILocalVariable(name: "str", arg: 3, scope: !679, file: !3, line: 195, type: !233)
!684 = !DILocalVariable(name: "size", arg: 4, scope: !679, file: !3, line: 195, type: !234)
!685 = !DILocation(line: 194, column: 42, scope: !679)
!686 = !DILocation(line: 194, column: 56, scope: !679)
!687 = !DILocation(line: 195, column: 14, scope: !679)
!688 = !DILocation(line: 195, column: 26, scope: !679)
!689 = !DILocation(line: 197, column: 11, scope: !679)
!690 = !DILocation(line: 197, column: 16, scope: !679)
!691 = !DILocation(line: 198, column: 4, scope: !679)
!692 = !DILocation(line: 198, column: 12, scope: !679)
!693 = !DILocation(line: 197, column: 2, scope: !679)
!694 = !DILocation(line: 199, column: 1, scope: !679)
!695 = distinct !DISubprogram(name: "usb_decode_set_sel", scope: !3, file: !3, line: 201, type: !532, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!696 = !{!697, !698, !699}
!697 = !DILocalVariable(name: "wLength", arg: 1, scope: !695, file: !3, line: 201, type: !243)
!698 = !DILocalVariable(name: "str", arg: 2, scope: !695, file: !3, line: 201, type: !233)
!699 = !DILocalVariable(name: "size", arg: 3, scope: !695, file: !3, line: 201, type: !234)
!700 = !DILocation(line: 201, column: 38, scope: !695)
!701 = !DILocation(line: 201, column: 53, scope: !695)
!702 = !DILocation(line: 201, column: 65, scope: !695)
!703 = !DILocation(line: 203, column: 11, scope: !695)
!704 = !DILocation(line: 203, column: 16, scope: !695)
!705 = !DILocation(line: 203, column: 46, scope: !695)
!706 = !DILocation(line: 203, column: 2, scope: !695)
!707 = !DILocation(line: 204, column: 1, scope: !695)
!708 = distinct !DISubprogram(name: "usb_decode_set_isoch_delay", scope: !3, file: !3, line: 206, type: !629, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!709 = !{!710, !711, !712}
!710 = !DILocalVariable(name: "wValue", arg: 1, scope: !708, file: !3, line: 206, type: !240)
!711 = !DILocalVariable(name: "str", arg: 2, scope: !708, file: !3, line: 206, type: !233)
!712 = !DILocalVariable(name: "size", arg: 3, scope: !708, file: !3, line: 206, type: !234)
!713 = !DILocation(line: 206, column: 45, scope: !708)
!714 = !DILocation(line: 206, column: 59, scope: !708)
!715 = !DILocation(line: 206, column: 71, scope: !708)
!716 = !DILocation(line: 208, column: 11, scope: !708)
!717 = !DILocation(line: 208, column: 16, scope: !708)
!718 = !DILocation(line: 208, column: 62, scope: !708)
!719 = !DILocation(line: 208, column: 2, scope: !708)
!720 = !DILocation(line: 209, column: 1, scope: !708)
!721 = !DISubprogram(name: "snprintf", scope: !722, file: !722, line: 12, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!723 = !DISubroutineType(types: !724)
!724 = !{!725, !233, !234, !231, null}
!725 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!726 = distinct !DISubprogram(name: "usb_decode_device_feature", scope: !3, file: !3, line: 34, type: !727, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !730)
!727 = !DISubroutineType(types: !728)
!728 = !{!231, !729}
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !394, line: 19, baseType: !243)
!730 = !{!731}
!731 = !DILocalVariable(name: "wValue", arg: 1, scope: !726, file: !3, line: 34, type: !729)
!732 = !DILocation(line: 34, column: 50, scope: !726)
!733 = !DILocation(line: 36, column: 10, scope: !726)
!734 = !DILocation(line: 36, column: 2, scope: !726)
!735 = !DILocation(line: 38, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !726, file: !3, line: 36, column: 18)
!737 = !DILocation(line: 40, column: 3, scope: !736)
!738 = !DILocation(line: 42, column: 3, scope: !736)
!739 = !DILocation(line: 44, column: 3, scope: !736)
!740 = !DILocation(line: 46, column: 3, scope: !736)
!741 = !DILocation(line: 48, column: 3, scope: !736)
!742 = !DILocation(line: 50, column: 3, scope: !736)
!743 = !DILocation(line: 52, column: 1, scope: !726)
!744 = distinct !DISubprogram(name: "usb_decode_test_mode", scope: !3, file: !3, line: 54, type: !727, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !745)
!745 = !{!746}
!746 = !DILocalVariable(name: "wIndex", arg: 1, scope: !744, file: !3, line: 54, type: !729)
!747 = !DILocation(line: 54, column: 45, scope: !744)
!748 = !DILocation(line: 56, column: 10, scope: !744)
!749 = !DILocation(line: 56, column: 2, scope: !744)
!750 = !DILocation(line: 58, column: 3, scope: !751)
!751 = distinct !DILexicalBlock(scope: !744, file: !3, line: 56, column: 18)
!752 = !DILocation(line: 60, column: 3, scope: !751)
!753 = !DILocation(line: 62, column: 3, scope: !751)
!754 = !DILocation(line: 64, column: 3, scope: !751)
!755 = !DILocation(line: 66, column: 3, scope: !751)
!756 = !DILocation(line: 68, column: 3, scope: !751)
!757 = !DILocation(line: 70, column: 1, scope: !744)
