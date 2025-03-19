; ModuleID = 'net/ipv4/metrics.c'
source_filename = "net/ipv4/metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ip_fib_metrics_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ip_fib_metrics_init ; .previous"

%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, ptr, i16, [20 x i8], i8, [80 x i8] }
%struct.nlattr = type { i16, i16 }

@dst_default_metrics = external dso_local constant %struct.dst_metrics, align 4
@__UNIQUE_ID___addressable_ip_fib_metrics_init709 = internal global ptr @ip_fib_metrics_init, section ".discard.addressable", align 8, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !85
@ip_metrics_convert.__msg = internal constant [20 x i8] c"Invalid metric type\00", align 16, !dbg !90
@ip_metrics_convert.__msg.1 = internal constant [33 x i8] c"Unknown tcp congestion algorithm\00", align 16, !dbg !211
@ip_metrics_convert.__msg.2 = internal constant [29 x i8] c"Invalid attribute in metrics\00", align 16, !dbg !216
@ip_metrics_convert.__msg.3 = internal constant [54 x i8] c"Unknown flag set in feature mask in metrics attribute\00", align 16, !dbg !221
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_ip_fib_metrics_init709], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ip_fib_metrics_init(ptr noundef %fc_mx, i32 noundef %fc_mx_len, ptr noundef %extack) #0 align 16 !dbg !235 {
entry:
  %retval = alloca ptr, align 8
  %fc_mx.addr = alloca ptr, align 8
  %fc_mx_len.addr = alloca i32, align 4
  %extack.addr = alloca ptr, align 8
  %fib_metrics = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fc_mx, ptr %fc_mx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc_mx.addr, metadata !239, metadata !DIExpression()), !dbg !244
  store i32 %fc_mx_len, ptr %fc_mx_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fc_mx_len.addr, metadata !240, metadata !DIExpression()), !dbg !245
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !241, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 8, ptr %fib_metrics) #13, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %fib_metrics, metadata !242, metadata !DIExpression()), !dbg !248
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %err, metadata !243, metadata !DIExpression()), !dbg !250
  %0 = load ptr, ptr %fc_mx.addr, align 8, !dbg !251
  %tobool = icmp ne ptr %0, null, !dbg !251
  br i1 %tobool, label %if.end, label %if.then, !dbg !253

if.then:                                          ; preds = %entry
  store ptr @dst_default_metrics, ptr %retval, align 8, !dbg !254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !254

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #14, !dbg !255
  store ptr %call, ptr %fib_metrics, align 8, !dbg !256
  %1 = load ptr, ptr %fib_metrics, align 8, !dbg !257
  %tobool1 = icmp ne ptr %1, null, !dbg !257
  %lnot = xor i1 %tobool1, true, !dbg !257
  %lnot2 = xor i1 %lnot, true, !dbg !257
  %lnot3 = xor i1 %lnot2, true, !dbg !257
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !257
  %conv = sext i32 %lnot.ext to i64, !dbg !257
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !257
  %tobool4 = icmp ne i64 %expval, 0, !dbg !257
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !259

if.then5:                                         ; preds = %if.end
  %call6 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !260
  store ptr %call6, ptr %retval, align 8, !dbg !261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !261

if.end7:                                          ; preds = %if.end
  %2 = load ptr, ptr %fc_mx.addr, align 8, !dbg !262
  %3 = load i32, ptr %fc_mx_len.addr, align 4, !dbg !263
  %4 = load ptr, ptr %fib_metrics, align 8, !dbg !264
  %metrics = getelementptr inbounds %struct.dst_metrics, ptr %4, i32 0, i32 0, !dbg !265
  %arraydecay = getelementptr inbounds [17 x i32], ptr %metrics, i64 0, i64 0, !dbg !264
  %5 = load ptr, ptr %extack.addr, align 8, !dbg !266
  %call8 = call i32 @ip_metrics_convert(ptr noundef %2, i32 noundef %3, ptr noundef %arraydecay, ptr noundef %5) #15, !dbg !267
  store i32 %call8, ptr %err, align 4, !dbg !268
  %6 = load i32, ptr %err, align 4, !dbg !269
  %tobool9 = icmp ne i32 %6, 0, !dbg !269
  br i1 %tobool9, label %if.else, label %if.then10, !dbg !271

if.then10:                                        ; preds = %if.end7
  %7 = load ptr, ptr %fib_metrics, align 8, !dbg !272
  %refcnt = getelementptr inbounds %struct.dst_metrics, ptr %7, i32 0, i32 1, !dbg !274
  call void @refcount_set(ptr noundef %refcnt, i32 noundef 1) #15, !dbg !275
  br label %if.end13, !dbg !276

if.else:                                          ; preds = %if.end7
  %8 = load ptr, ptr %fib_metrics, align 8, !dbg !277
  call void @kfree(ptr noundef %8) #15, !dbg !279
  %9 = load i32, ptr %err, align 4, !dbg !280
  %conv11 = sext i32 %9 to i64, !dbg !280
  %call12 = call ptr @ERR_PTR(i64 noundef %conv11) #15, !dbg !281
  store ptr %call12, ptr %fib_metrics, align 8, !dbg !282
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  %10 = load ptr, ptr %fib_metrics, align 8, !dbg !283
  store ptr %10, ptr %retval, align 8, !dbg !284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !284

cleanup:                                          ; preds = %if.end13, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !285
  call void @llvm.lifetime.end.p0(i64 8, ptr %fib_metrics) #13, !dbg !285
  %11 = load ptr, ptr %retval, align 8, !dbg !285
  ret ptr %11, !dbg !285
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !286 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !294, metadata !DIExpression()), !dbg !296
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !295, metadata !DIExpression()), !dbg !297
  %0 = load i64, ptr %size.addr, align 8, !dbg !298
  %1 = load i32, ptr %flags.addr, align 4, !dbg !299
  %or = or i32 %1, 256, !dbg !300
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #14, !dbg !301
  ret ptr %call, !dbg !302
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !303 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load i64, ptr %error.addr, align 8, !dbg !311
  %1 = inttoptr i64 %0 to ptr, !dbg !312
  ret ptr %1, !dbg !313
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ip_metrics_convert(ptr noundef %fc_mx, i32 noundef %fc_mx_len, ptr noundef %metrics, ptr noundef %extack) #0 align 16 !dbg !92 {
entry:
  %retval = alloca i32, align 4
  %fc_mx.addr = alloca ptr, align 8
  %fc_mx_len.addr = alloca i32, align 4
  %metrics.addr = alloca ptr, align 8
  %extack.addr = alloca ptr, align 8
  %ecn_ca = alloca i8, align 1
  %nla = alloca ptr, align 8
  %remaining = alloca i32, align 4
  %type = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__extack = alloca ptr, align 8
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp21 = alloca [16 x i8], align 16
  %__extack29 = alloca ptr, align 8
  %__extack43 = alloca ptr, align 8
  %__extack80 = alloca ptr, align 8
  store ptr %fc_mx, ptr %fc_mx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fc_mx.addr, metadata !169, metadata !DIExpression()), !dbg !314
  store i32 %fc_mx_len, ptr %fc_mx_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fc_mx_len.addr, metadata !170, metadata !DIExpression()), !dbg !315
  store ptr %metrics, ptr %metrics.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %metrics.addr, metadata !171, metadata !DIExpression()), !dbg !316
  store ptr %extack, ptr %extack.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %extack.addr, metadata !172, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 1, ptr %ecn_ca) #13, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %ecn_ca, metadata !173, metadata !DIExpression()), !dbg !319
  store i8 0, ptr %ecn_ca, align 1, !dbg !319
  call void @llvm.lifetime.start.p0(i64 8, ptr %nla) #13, !dbg !320
  call void @llvm.dbg.declare(metadata ptr %nla, metadata !176, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 4, ptr %remaining) #13, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %remaining, metadata !177, metadata !DIExpression()), !dbg !323
  %0 = load ptr, ptr %fc_mx.addr, align 8, !dbg !324
  store ptr %0, ptr %nla, align 8, !dbg !324
  %1 = load i32, ptr %fc_mx_len.addr, align 4, !dbg !324
  store i32 %1, ptr %remaining, align 4, !dbg !324
  br label %for.cond, !dbg !324

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %nla, align 8, !dbg !325
  %3 = load i32, ptr %remaining, align 4, !dbg !325
  %call = call i32 @nla_ok(ptr noundef %2, i32 noundef %3) #15, !dbg !325
  %tobool = icmp ne i32 %call, 0, !dbg !324
  br i1 %tobool, label %for.body, label %for.end, !dbg !324

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #13, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %type, metadata !178, metadata !DIExpression()), !dbg !327
  %4 = load ptr, ptr %nla, align 8, !dbg !328
  %call1 = call i32 @nla_type(ptr noundef %4) #15, !dbg !329
  store i32 %call1, ptr %type, align 4, !dbg !327
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #13, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %val, metadata !182, metadata !DIExpression()), !dbg !331
  %5 = load i32, ptr %type, align 4, !dbg !332
  %tobool2 = icmp ne i32 %5, 0, !dbg !332
  br i1 %tobool2, label %if.end, label %if.then, !dbg !334

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !335

if.end:                                           ; preds = %for.body
  %6 = load i32, ptr %type, align 4, !dbg !336
  %cmp = icmp sgt i32 %6, 17, !dbg !337
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !338

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !339

do.body:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack) #13, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %__extack, metadata !183, metadata !DIExpression()), !dbg !340
  %7 = load ptr, ptr %extack.addr, align 8, !dbg !340
  store ptr %7, ptr %__extack, align 8, !dbg !340
  call void @do_trace_netlink_extack(ptr noundef @ip_metrics_convert.__msg) #15, !dbg !340
  %8 = load ptr, ptr %__extack, align 8, !dbg !341
  %tobool4 = icmp ne ptr %8, null, !dbg !341
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !340

if.then5:                                         ; preds = %do.body
  %9 = load ptr, ptr %__extack, align 8, !dbg !341
  %_msg = getelementptr inbounds %struct.netlink_ext_ack, ptr %9, i32 0, i32 0, !dbg !341
  store ptr @ip_metrics_convert.__msg, ptr %_msg, align 8, !dbg !341
  br label %if.end6, !dbg !341

if.end6:                                          ; preds = %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack) #13, !dbg !339
  br label %do.cond, !dbg !340

do.cond:                                          ; preds = %if.end6
  br label %do.end, !dbg !340

do.end:                                           ; preds = %do.cond
  store i32 -22, ptr %retval, align 4, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !343

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #13, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !187, metadata !DIExpression()), !dbg !344
  %10 = load i32, ptr %type, align 4, !dbg !344
  store i32 %10, ptr %_i, align 4, !dbg !344
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #13, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !189, metadata !DIExpression()), !dbg !344
  store i32 18, ptr %_s, align 4, !dbg !344
  call void @llvm.lifetime.start.p0(i64 8, ptr %_mask) #13, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %_mask, metadata !190, metadata !DIExpression()), !dbg !344
  %11 = load i32, ptr %_i, align 4, !dbg !344
  %conv = sext i32 %11 to i64, !dbg !344
  %12 = load i32, ptr %_s, align 4, !dbg !344
  %conv8 = sext i32 %12 to i64, !dbg !344
  %call9 = call i64 @array_index_mask_nospec(i64 noundef %conv, i64 noundef %conv8) #15, !dbg !344
  store i64 %call9, ptr %_mask, align 8, !dbg !344
  br label %do.body10, !dbg !344

do.body10:                                        ; preds = %if.end7
  br label %do.cond11, !dbg !345

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !345

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !344

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !347

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !347

do.end15:                                         ; preds = %do.cond14
  %13 = load i32, ptr %_i, align 4, !dbg !344
  %conv16 = sext i32 %13 to i64, !dbg !344
  %14 = load i64, ptr %_mask, align 8, !dbg !344
  %and = and i64 %conv16, %14, !dbg !344
  %conv17 = trunc i64 %and to i32, !dbg !344
  store i32 %conv17, ptr %tmp, align 4, !dbg !347
  call void @llvm.lifetime.end.p0(i64 8, ptr %_mask) #13, !dbg !349
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #13, !dbg !349
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #13, !dbg !349
  %15 = load i32, ptr %tmp, align 4, !dbg !344
  store i32 %15, ptr %type, align 4, !dbg !350
  %16 = load i32, ptr %type, align 4, !dbg !351
  %cmp18 = icmp eq i32 %16, 16, !dbg !352
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !353

if.then20:                                        ; preds = %do.end15
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp21) #13, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %tmp21, metadata !191, metadata !DIExpression()), !dbg !355
  %arraydecay = getelementptr inbounds [16 x i8], ptr %tmp21, i64 0, i64 0, !dbg !356
  %17 = load ptr, ptr %nla, align 8, !dbg !357
  %call22 = call i64 @nla_strscpy(ptr noundef %arraydecay, ptr noundef %17, i64 noundef 16) #15, !dbg !358
  %arraydecay23 = getelementptr inbounds [16 x i8], ptr %tmp21, i64 0, i64 0, !dbg !359
  %call24 = call i32 @tcp_ca_get_key_by_name(ptr noundef %arraydecay23, ptr noundef %ecn_ca) #15, !dbg !360
  store i32 %call24, ptr %val, align 4, !dbg !361
  %18 = load i32, ptr %val, align 4, !dbg !362
  %cmp25 = icmp eq i32 %18, 0, !dbg !363
  br i1 %cmp25, label %if.then27, label %if.end36, !dbg !364

if.then27:                                        ; preds = %if.then20
  br label %do.body28, !dbg !365

do.body28:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack29) #13, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %__extack29, metadata !197, metadata !DIExpression()), !dbg !366
  %19 = load ptr, ptr %extack.addr, align 8, !dbg !366
  store ptr %19, ptr %__extack29, align 8, !dbg !366
  call void @do_trace_netlink_extack(ptr noundef @ip_metrics_convert.__msg.1) #15, !dbg !366
  %20 = load ptr, ptr %__extack29, align 8, !dbg !367
  %tobool30 = icmp ne ptr %20, null, !dbg !367
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !366

if.then31:                                        ; preds = %do.body28
  %21 = load ptr, ptr %__extack29, align 8, !dbg !367
  %_msg32 = getelementptr inbounds %struct.netlink_ext_ack, ptr %21, i32 0, i32 0, !dbg !367
  store ptr @ip_metrics_convert.__msg.1, ptr %_msg32, align 8, !dbg !367
  br label %if.end33, !dbg !367

if.end33:                                         ; preds = %if.then31, %do.body28
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack29) #13, !dbg !365
  br label %do.cond34, !dbg !366

do.cond34:                                        ; preds = %if.end33
  br label %do.end35, !dbg !366

do.end35:                                         ; preds = %do.cond34
  store i32 -22, ptr %retval, align 4, !dbg !369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !369

if.end36:                                         ; preds = %if.then20
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !370
  br label %cleanup, !dbg !370

cleanup:                                          ; preds = %if.end36, %do.end35
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp21) #13, !dbg !370
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup88 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end52, !dbg !371

if.else:                                          ; preds = %do.end15
  %22 = load ptr, ptr %nla, align 8, !dbg !372
  %call37 = call i32 @nla_len(ptr noundef %22) #15, !dbg !373
  %conv38 = sext i32 %call37 to i64, !dbg !373
  %cmp39 = icmp ne i64 %conv38, 4, !dbg !374
  br i1 %cmp39, label %if.then41, label %if.end50, !dbg !375

if.then41:                                        ; preds = %if.else
  br label %do.body42, !dbg !376

do.body42:                                        ; preds = %if.then41
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack43) #13, !dbg !377
  call void @llvm.dbg.declare(metadata ptr %__extack43, metadata !201, metadata !DIExpression()), !dbg !377
  %23 = load ptr, ptr %extack.addr, align 8, !dbg !377
  store ptr %23, ptr %__extack43, align 8, !dbg !377
  call void @do_trace_netlink_extack(ptr noundef @ip_metrics_convert.__msg.2) #15, !dbg !377
  %24 = load ptr, ptr %__extack43, align 8, !dbg !378
  %tobool44 = icmp ne ptr %24, null, !dbg !378
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !377

if.then45:                                        ; preds = %do.body42
  %25 = load ptr, ptr %__extack43, align 8, !dbg !380
  %_msg46 = getelementptr inbounds %struct.netlink_ext_ack, ptr %25, i32 0, i32 0, !dbg !380
  store ptr @ip_metrics_convert.__msg.2, ptr %_msg46, align 8, !dbg !380
  %26 = load ptr, ptr %nla, align 8, !dbg !380
  %27 = load ptr, ptr %__extack43, align 8, !dbg !380
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %27, i32 0, i32 1, !dbg !380
  store ptr %26, ptr %bad_attr, align 8, !dbg !380
  %28 = load ptr, ptr %__extack43, align 8, !dbg !380
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %28, i32 0, i32 2, !dbg !380
  store ptr null, ptr %policy, align 8, !dbg !380
  br label %if.end47, !dbg !380

if.end47:                                         ; preds = %if.then45, %do.body42
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack43) #13, !dbg !376
  br label %do.cond48, !dbg !377

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !377

do.end49:                                         ; preds = %do.cond48
  store i32 -22, ptr %retval, align 4, !dbg !382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !382

if.end50:                                         ; preds = %if.else
  %29 = load ptr, ptr %nla, align 8, !dbg !383
  %call51 = call i32 @nla_get_u32(ptr noundef %29) #15, !dbg !384
  store i32 %call51, ptr %val, align 4, !dbg !385
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %cleanup.cont
  %30 = load i32, ptr %type, align 4, !dbg !386
  %cmp53 = icmp eq i32 %30, 8, !dbg !388
  br i1 %cmp53, label %land.lhs.true, label %if.end58, !dbg !389

land.lhs.true:                                    ; preds = %if.end52
  %31 = load i32, ptr %val, align 4, !dbg !390
  %cmp55 = icmp ugt i32 %31, 65495, !dbg !391
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !392

if.then57:                                        ; preds = %land.lhs.true
  store i32 65495, ptr %val, align 4, !dbg !393
  br label %if.end58, !dbg !394

if.end58:                                         ; preds = %if.then57, %land.lhs.true, %if.end52
  %32 = load i32, ptr %type, align 4, !dbg !395
  %cmp59 = icmp eq i32 %32, 2, !dbg !397
  br i1 %cmp59, label %land.lhs.true61, label %if.end65, !dbg !398

land.lhs.true61:                                  ; preds = %if.end58
  %33 = load i32, ptr %val, align 4, !dbg !399
  %cmp62 = icmp ugt i32 %33, 65520, !dbg !400
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !401

if.then64:                                        ; preds = %land.lhs.true61
  store i32 65520, ptr %val, align 4, !dbg !402
  br label %if.end65, !dbg !403

if.end65:                                         ; preds = %if.then64, %land.lhs.true61, %if.end58
  %34 = load i32, ptr %type, align 4, !dbg !404
  %cmp66 = icmp eq i32 %34, 10, !dbg !406
  br i1 %cmp66, label %land.lhs.true68, label %if.end72, !dbg !407

land.lhs.true68:                                  ; preds = %if.end65
  %35 = load i32, ptr %val, align 4, !dbg !408
  %cmp69 = icmp ugt i32 %35, 255, !dbg !409
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !410

if.then71:                                        ; preds = %land.lhs.true68
  store i32 255, ptr %val, align 4, !dbg !411
  br label %if.end72, !dbg !412

if.end72:                                         ; preds = %if.then71, %land.lhs.true68, %if.end65
  %36 = load i32, ptr %type, align 4, !dbg !413
  %cmp73 = icmp eq i32 %36, 12, !dbg !414
  br i1 %cmp73, label %land.lhs.true75, label %if.end87, !dbg !415

land.lhs.true75:                                  ; preds = %if.end72
  %37 = load i32, ptr %val, align 4, !dbg !416
  %and76 = and i32 %37, -16, !dbg !417
  %tobool77 = icmp ne i32 %and76, 0, !dbg !417
  br i1 %tobool77, label %if.then78, label %if.end87, !dbg !418

if.then78:                                        ; preds = %land.lhs.true75
  br label %do.body79, !dbg !419

do.body79:                                        ; preds = %if.then78
  call void @llvm.lifetime.start.p0(i64 8, ptr %__extack80) #13, !dbg !420
  call void @llvm.dbg.declare(metadata ptr %__extack80, metadata !206, metadata !DIExpression()), !dbg !420
  %38 = load ptr, ptr %extack.addr, align 8, !dbg !420
  store ptr %38, ptr %__extack80, align 8, !dbg !420
  call void @do_trace_netlink_extack(ptr noundef @ip_metrics_convert.__msg.3) #15, !dbg !420
  %39 = load ptr, ptr %__extack80, align 8, !dbg !421
  %tobool81 = icmp ne ptr %39, null, !dbg !421
  br i1 %tobool81, label %if.then82, label %if.end84, !dbg !420

if.then82:                                        ; preds = %do.body79
  %40 = load ptr, ptr %__extack80, align 8, !dbg !421
  %_msg83 = getelementptr inbounds %struct.netlink_ext_ack, ptr %40, i32 0, i32 0, !dbg !421
  store ptr @ip_metrics_convert.__msg.3, ptr %_msg83, align 8, !dbg !421
  br label %if.end84, !dbg !421

if.end84:                                         ; preds = %if.then82, %do.body79
  call void @llvm.lifetime.end.p0(i64 8, ptr %__extack80) #13, !dbg !419
  br label %do.cond85, !dbg !420

do.cond85:                                        ; preds = %if.end84
  br label %do.end86, !dbg !420

do.end86:                                         ; preds = %do.cond85
  store i32 -22, ptr %retval, align 4, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88, !dbg !423

if.end87:                                         ; preds = %land.lhs.true75, %if.end72
  %41 = load i32, ptr %val, align 4, !dbg !424
  %42 = load ptr, ptr %metrics.addr, align 8, !dbg !425
  %43 = load i32, ptr %type, align 4, !dbg !426
  %sub = sub i32 %43, 1, !dbg !427
  %idxprom = sext i32 %sub to i64, !dbg !425
  %arrayidx = getelementptr i32, ptr %42, i64 %idxprom, !dbg !425
  store i32 %41, ptr %arrayidx, align 4, !dbg !428
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !429
  br label %cleanup88, !dbg !429

cleanup88:                                        ; preds = %if.end87, %do.end86, %do.end49, %cleanup, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #13, !dbg !429
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #13, !dbg !429
  %cleanup.dest90 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest90, label %cleanup97 [
    i32 0, label %cleanup.cont91
    i32 4, label %for.inc
  ]

cleanup.cont91:                                   ; preds = %cleanup88
  br label %for.inc, !dbg !430

for.inc:                                          ; preds = %cleanup.cont91, %cleanup88
  %44 = load ptr, ptr %nla, align 8, !dbg !325
  %call92 = call ptr @nla_next(ptr noundef %44, ptr noundef %remaining) #15, !dbg !325
  store ptr %call92, ptr %nla, align 8, !dbg !325
  br label %for.cond, !dbg !325, !llvm.loop !431

for.end:                                          ; preds = %for.cond
  %45 = load i8, ptr %ecn_ca, align 1, !dbg !435, !range !437, !noundef !438
  %tobool93 = trunc i8 %45 to i1, !dbg !435
  br i1 %tobool93, label %if.then94, label %if.end96, !dbg !439

if.then94:                                        ; preds = %for.end
  %46 = load ptr, ptr %metrics.addr, align 8, !dbg !440
  %arrayidx95 = getelementptr i32, ptr %46, i64 11, !dbg !440
  %47 = load i32, ptr %arrayidx95, align 4, !dbg !441
  %or = or i32 %47, -2147483648, !dbg !441
  store i32 %or, ptr %arrayidx95, align 4, !dbg !441
  br label %if.end96, !dbg !440

if.end96:                                         ; preds = %if.then94, %for.end
  store i32 0, ptr %retval, align 4, !dbg !442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !442

cleanup97:                                        ; preds = %if.end96, %cleanup88
  call void @llvm.lifetime.end.p0(i64 4, ptr %remaining) #13, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr %nla) #13, !dbg !443
  call void @llvm.lifetime.end.p0(i64 1, ptr %ecn_ca) #13, !dbg !443
  %48 = load i32, ptr %retval, align 4, !dbg !443
  ret i32 %48, !dbg !443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #5 align 16 !dbg !444 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !449, metadata !DIExpression()), !dbg !451
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !450, metadata !DIExpression()), !dbg !452
  %0 = load ptr, ptr %r.addr, align 8, !dbg !453
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !454
  %1 = load i32, ptr %n.addr, align 4, !dbg !455
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #15, !dbg !456
  ret void, !dbg !457
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !458 dso_local void @kfree(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !463 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !465, metadata !DIExpression()), !dbg !470
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !466, metadata !DIExpression()), !dbg !471
  %0 = load i64, ptr %size.addr, align 8, !dbg !472
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !473
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !474

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !475
  %tobool = icmp ne i64 %2, 0, !dbg !475
  br i1 %tobool, label %if.then, label %if.end7, !dbg !476

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %index, metadata !467, metadata !DIExpression()), !dbg !478
  %3 = load i64, ptr %size.addr, align 8, !dbg !479
  %cmp = icmp ugt i64 %3, 8192, !dbg !481
  br i1 %cmp, label %if.then1, label %if.end, !dbg !482

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !483
  %5 = load i32, ptr %flags.addr, align 4, !dbg !484
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #14, !dbg !485
  store ptr %call, ptr %retval, align 8, !dbg !486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !486

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !487
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !487
  store i32 %call2, ptr %index, align 4, !dbg !488
  %7 = load i32, ptr %flags.addr, align 4, !dbg !489
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !490
  %9 = ptrtoint ptr %8 to i64, !dbg !490
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !491
  %idxprom = zext i32 %call3 to i64, !dbg !492
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !492
  %10 = load i32, ptr %index, align 4, !dbg !493
  %idxprom4 = zext i32 %10 to i64, !dbg !492
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !492
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !492
  %12 = load i32, ptr %flags.addr, align 4, !dbg !494
  %13 = load i64, ptr %size.addr, align 8, !dbg !495
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !496
  store ptr %call6, ptr %retval, align 8, !dbg !497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !497

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !498
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !499
  %15 = load i32, ptr %flags.addr, align 4, !dbg !500
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #14, !dbg !501
  store ptr %call8, ptr %retval, align 8, !dbg !502
  br label %return, !dbg !502

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !503
  ret ptr %16, !dbg !503
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !504 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !505 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !509, metadata !DIExpression()), !dbg !511
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !510, metadata !DIExpression()), !dbg !512
  %0 = load i64, ptr %size.addr, align 8, !dbg !513
  %tobool = icmp ne i64 %0, 0, !dbg !513
  br i1 %tobool, label %if.end, label %if.then, !dbg !515

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !516
  br label %return, !dbg !516

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !517
  %cmp = icmp ule i64 %1, 8, !dbg !519
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !520

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !521
  br label %return, !dbg !521

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !522
  %cmp3 = icmp ugt i64 %2, 64, !dbg !524
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !525

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !526
  %cmp4 = icmp ule i64 %3, 96, !dbg !527
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !528

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !529
  br label %return, !dbg !529

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !530
  %cmp7 = icmp ugt i64 %4, 128, !dbg !532
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !533

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !534
  %cmp9 = icmp ule i64 %5, 192, !dbg !535
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !536

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !537
  br label %return, !dbg !537

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !538
  %cmp12 = icmp ule i64 %6, 8, !dbg !540
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !541

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !542
  br label %return, !dbg !542

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !543
  %cmp15 = icmp ule i64 %7, 16, !dbg !545
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !546

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !547
  br label %return, !dbg !547

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !548
  %cmp18 = icmp ule i64 %8, 32, !dbg !550
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !551

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !552
  br label %return, !dbg !552

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !553
  %cmp21 = icmp ule i64 %9, 64, !dbg !555
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !556

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !557
  br label %return, !dbg !557

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !558
  %cmp24 = icmp ule i64 %10, 128, !dbg !560
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !561

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !562
  br label %return, !dbg !562

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !563
  %cmp27 = icmp ule i64 %11, 256, !dbg !565
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !566

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !567
  br label %return, !dbg !567

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !568
  %cmp30 = icmp ule i64 %12, 512, !dbg !570
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !571

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !572
  br label %return, !dbg !572

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !573
  %cmp33 = icmp ule i64 %13, 1024, !dbg !575
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !576

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !577
  br label %return, !dbg !577

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !578
  %cmp36 = icmp ule i64 %14, 2048, !dbg !580
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !581

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !582
  br label %return, !dbg !582

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !583
  %cmp39 = icmp ule i64 %15, 4096, !dbg !585
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !586

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !587
  br label %return, !dbg !587

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !588
  %cmp42 = icmp ule i64 %16, 8192, !dbg !590
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !591

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !592
  br label %return, !dbg !592

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !593
  %cmp45 = icmp ule i64 %17, 16384, !dbg !595
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !596

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !597
  br label %return, !dbg !597

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !598
  %cmp48 = icmp ule i64 %18, 32768, !dbg !600
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !601

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !602
  br label %return, !dbg !602

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !603
  %cmp51 = icmp ule i64 %19, 65536, !dbg !605
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !606

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !607
  br label %return, !dbg !607

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !608
  %cmp54 = icmp ule i64 %20, 131072, !dbg !610
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !611

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !612
  br label %return, !dbg !612

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !613
  %cmp57 = icmp ule i64 %21, 262144, !dbg !615
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !616

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !617
  br label %return, !dbg !617

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !618
  %cmp60 = icmp ule i64 %22, 524288, !dbg !620
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !621

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !622
  br label %return, !dbg !622

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !623
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !625
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !626

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !627
  br label %return, !dbg !627

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !628
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !630
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !631

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !632
  br label %return, !dbg !632

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !633, !range !437, !noundef !438
  %tobool69 = trunc i8 %25 to i1, !dbg !633
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !635

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !636

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #17, !dbg !637, !srcloc !640
  unreachable, !dbg !637

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !641

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !642

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !643

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !645

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !643

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #13, !dbg !647, !srcloc !649
  br label %do.end75, !dbg !647

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !643

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !650
  br label %return, !dbg !650

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !651
  ret i32 %26, !dbg !651
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !652 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !658 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !662, metadata !DIExpression()), !dbg !664
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !663, metadata !DIExpression()), !dbg !665
  %0 = load i32, ptr %flags.addr, align 4, !dbg !666
  %and = and i32 %0, 17, !dbg !666
  %cmp = icmp eq i32 %and, 0, !dbg !666
  %lnot = xor i1 %cmp, true, !dbg !666
  %lnot1 = xor i1 %lnot, true, !dbg !666
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !666
  %conv = sext i32 %lnot.ext to i64, !dbg !666
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !666
  %tobool = icmp ne i64 %expval, 0, !dbg !666
  br i1 %tobool, label %if.then, label %if.end, !dbg !668

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !669
  br label %return, !dbg !669

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !670
  %and2 = and i32 %1, 1, !dbg !672
  %tobool3 = icmp ne i32 %and2, 0, !dbg !672
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !673

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !674
  br label %return, !dbg !674

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !675
  br label %return, !dbg !675

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !677
  ret i32 %2, !dbg !677
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !678 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !679 dso_local void @__compiletime_assert_245() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_ok(ptr noundef %nla, i32 noundef %remaining) #5 align 16 !dbg !682 {
entry:
  %nla.addr = alloca ptr, align 8
  %remaining.addr = alloca i32, align 4
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !686, metadata !DIExpression()), !dbg !688
  store i32 %remaining, ptr %remaining.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %remaining.addr, metadata !687, metadata !DIExpression()), !dbg !689
  %0 = load i32, ptr %remaining.addr, align 4, !dbg !690
  %cmp = icmp sge i32 %0, 4, !dbg !691
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !692

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %nla.addr, align 8, !dbg !693
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %1, i32 0, i32 0, !dbg !694
  %2 = load i16, ptr %nla_len, align 2, !dbg !694
  %conv = zext i16 %2 to i64, !dbg !693
  %cmp1 = icmp uge i64 %conv, 4, !dbg !695
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !696

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load ptr, ptr %nla.addr, align 8, !dbg !697
  %nla_len3 = getelementptr inbounds %struct.nlattr, ptr %3, i32 0, i32 0, !dbg !698
  %4 = load i16, ptr %nla_len3, align 2, !dbg !698
  %conv4 = zext i16 %4 to i32, !dbg !697
  %5 = load i32, ptr %remaining.addr, align 4, !dbg !699
  %cmp5 = icmp sle i32 %conv4, %5, !dbg !700
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %6 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp5, %land.rhs ], !dbg !701
  %land.ext = zext i1 %6 to i32, !dbg !696
  ret i32 %land.ext, !dbg !702
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_type(ptr noundef %nla) #5 align 16 !dbg !703 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !707, metadata !DIExpression()), !dbg !708
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !709
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %0, i32 0, i32 1, !dbg !710
  %1 = load i16, ptr %nla_type, align 2, !dbg !710
  %conv = zext i16 %1 to i32, !dbg !709
  %and = and i32 %conv, -49153, !dbg !711
  ret i32 %and, !dbg !712
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !713 dso_local void @do_trace_netlink_extack(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @array_index_mask_nospec(i64 noundef %index, i64 noundef %size) #5 align 16 !dbg !716 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !721, metadata !DIExpression()), !dbg !724
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !722, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !723, metadata !DIExpression()), !dbg !727
  %0 = load i64, ptr %size.addr, align 8, !dbg !728
  %1 = load i64, ptr %index.addr, align 8, !dbg !729
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #13, !dbg !730, !srcloc !731
  store i64 %2, ptr %mask, align 8, !dbg !730
  %3 = load i64, ptr %mask, align 8, !dbg !732
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !733
  ret i64 %3, !dbg !734
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !735 dso_local i64 @nla_strscpy(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !741 dso_local i32 @tcp_ca_get_key_by_name(ptr noundef, ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_len(ptr noundef %nla) #5 align 16 !dbg !746 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !748, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !750
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %0, i32 0, i32 0, !dbg !751
  %1 = load i16, ptr %nla_len, align 2, !dbg !751
  %conv = zext i16 %1 to i32, !dbg !750
  %sub = sub i32 %conv, 4, !dbg !752
  ret i32 %sub, !dbg !753
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_get_u32(ptr noundef %nla) #5 align 16 !dbg !754 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !758, metadata !DIExpression()), !dbg !759
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !760
  %call = call ptr @nla_data(ptr noundef %0) #15, !dbg !761
  %1 = load i32, ptr %call, align 4, !dbg !762
  ret i32 %1, !dbg !763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nla_next(ptr noundef %nla, ptr noundef %remaining) #5 align 16 !dbg !764 {
entry:
  %nla.addr = alloca ptr, align 8
  %remaining.addr = alloca ptr, align 8
  %totlen = alloca i32, align 4
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !769, metadata !DIExpression()), !dbg !772
  store ptr %remaining, ptr %remaining.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remaining.addr, metadata !770, metadata !DIExpression()), !dbg !773
  call void @llvm.lifetime.start.p0(i64 4, ptr %totlen) #13, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %totlen, metadata !771, metadata !DIExpression()), !dbg !775
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !776
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %0, i32 0, i32 0, !dbg !776
  %1 = load i16, ptr %nla_len, align 2, !dbg !776
  %conv = zext i16 %1 to i32, !dbg !776
  %add = add i32 %conv, 4, !dbg !776
  %sub = sub i32 %add, 1, !dbg !776
  %and = and i32 %sub, -4, !dbg !776
  store i32 %and, ptr %totlen, align 4, !dbg !775
  %2 = load i32, ptr %totlen, align 4, !dbg !777
  %3 = load ptr, ptr %remaining.addr, align 8, !dbg !778
  %4 = load i32, ptr %3, align 4, !dbg !779
  %sub1 = sub i32 %4, %2, !dbg !779
  store i32 %sub1, ptr %3, align 4, !dbg !779
  %5 = load ptr, ptr %nla.addr, align 8, !dbg !780
  %6 = load i32, ptr %totlen, align 4, !dbg !781
  %idx.ext = zext i32 %6 to i64, !dbg !782
  %add.ptr = getelementptr i8, ptr %5, i64 %idx.ext, !dbg !782
  call void @llvm.lifetime.end.p0(i64 4, ptr %totlen) #13, !dbg !783
  ret ptr %add.ptr, !dbg !784
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nla_data(ptr noundef %nla) #5 align 16 !dbg !785 {
entry:
  %nla.addr = alloca ptr, align 8
  store ptr %nla, ptr %nla.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nla.addr, metadata !789, metadata !DIExpression()), !dbg !790
  %0 = load ptr, ptr %nla.addr, align 8, !dbg !791
  %add.ptr = getelementptr i8, ptr %0, i64 4, !dbg !792
  ret ptr %add.ptr, !dbg !793
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !794 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !800, metadata !DIExpression()), !dbg !802
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !801, metadata !DIExpression()), !dbg !803
  %0 = load ptr, ptr %v.addr, align 8, !dbg !804
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #15, !dbg !805
  %1 = load ptr, ptr %v.addr, align 8, !dbg !806
  %2 = load i32, ptr %i.addr, align 4, !dbg !807
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #15, !dbg !808
  ret void, !dbg !809
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !810 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !818, metadata !DIExpression()), !dbg !820
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !819, metadata !DIExpression()), !dbg !821
  %0 = load ptr, ptr %v.addr, align 8, !dbg !822
  %1 = load i64, ptr %size.addr, align 8, !dbg !823
  %conv = trunc i64 %1 to i32, !dbg !823
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !824
  %2 = load ptr, ptr %v.addr, align 8, !dbg !825
  %3 = load i64, ptr %size.addr, align 8, !dbg !825
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !825
  ret void, !dbg !826
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !827 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !830, metadata !DIExpression()), !dbg !832
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !831, metadata !DIExpression()), !dbg !833
  %0 = load ptr, ptr %v.addr, align 8, !dbg !834
  %1 = load i32, ptr %i.addr, align 4, !dbg !835
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #15, !dbg !836
  ret void, !dbg !837
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !838 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !843, metadata !DIExpression()), !dbg !845
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !844, metadata !DIExpression()), !dbg !846
  ret i1 true, !dbg !847
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !848 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !853, metadata !DIExpression()), !dbg !856
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !854, metadata !DIExpression()), !dbg !857
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !855, metadata !DIExpression()), !dbg !858
  ret void, !dbg !859
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !860 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !863, metadata !DIExpression()), !dbg !865
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !864, metadata !DIExpression()), !dbg !866
  br label %do.body, !dbg !867

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !868
  %1 = load ptr, ptr %v.addr, align 8, !dbg !868
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !868
  store volatile i32 %0, ptr %counter, align 4, !dbg !868
  br label %do.end, !dbg !868

do.end:                                           ; preds = %do.body
  ret void, !dbg !870
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone allocsize(0) }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ip_fib_metrics_init709", scope: !2, file: !3, line: 91, type: !69, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/ipv4/.metrics.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/ipv4/metrics\22 -D KBUILD_BASENAME=\22metrics\22 -D KBUILD_MODNAME=\22metrics\22 -D __KBUILD_MODNAME=kmod_metrics -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/ipv4/metrics.ll net/ipv4/metrics.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !84, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/ipv4/metrics.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6ad6a0e3e4727f2dbcc4c9e83836f3d")
!4 = !{!5, !11, !21}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 463, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/uapi/linux/rtnetlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3424c71d3a70e17dc50919bcbae9815d")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!24 = !DIEnumerator(name: "RTAX_UNSPEC", value: 0)
!25 = !DIEnumerator(name: "RTAX_LOCK", value: 1)
!26 = !DIEnumerator(name: "RTAX_MTU", value: 2)
!27 = !DIEnumerator(name: "RTAX_WINDOW", value: 3)
!28 = !DIEnumerator(name: "RTAX_RTT", value: 4)
!29 = !DIEnumerator(name: "RTAX_RTTVAR", value: 5)
!30 = !DIEnumerator(name: "RTAX_SSTHRESH", value: 6)
!31 = !DIEnumerator(name: "RTAX_CWND", value: 7)
!32 = !DIEnumerator(name: "RTAX_ADVMSS", value: 8)
!33 = !DIEnumerator(name: "RTAX_REORDERING", value: 9)
!34 = !DIEnumerator(name: "RTAX_HOPLIMIT", value: 10)
!35 = !DIEnumerator(name: "RTAX_INITCWND", value: 11)
!36 = !DIEnumerator(name: "RTAX_FEATURES", value: 12)
!37 = !DIEnumerator(name: "RTAX_RTO_MIN", value: 13)
!38 = !DIEnumerator(name: "RTAX_INITRWND", value: 14)
!39 = !DIEnumerator(name: "RTAX_QUICKACK", value: 15)
!40 = !DIEnumerator(name: "RTAX_CC_ALGO", value: 16)
!41 = !DIEnumerator(name: "RTAX_FASTOPEN_NO_COOKIE", value: 17)
!42 = !DIEnumerator(name: "__RTAX_MAX", value: 18)
!43 = !{!44, !68, !69, !70, !67, !71, !72, !74, !82}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_metrics", file: !46, line: 97, size: 576, align: 32, elements: !47)
!46 = !DIFile(filename: "./include/net/dst.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "edcd6ed294d3b0ae383328de49fb59e6")
!47 = !{!48, !56}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !45, file: !46, line: 98, baseType: !49, size: 544)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 544, elements: !54)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !51, line: 21, baseType: !52)
!51 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !53, line: 27, baseType: !7)
!53 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!54 = !{!55}
!55 = !DISubrange(count: 17)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !45, file: !46, line: 99, baseType: !57, size: 32, offset: 544)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !58, line: 113, baseType: !59)
!58 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !58, line: 111, size: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !59, file: !58, line: 112, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !63, line: 174, baseType: !64)
!63 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 172, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !64, file: !63, line: 173, baseType: !67, size: 32)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !63, line: 154, baseType: !7)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlattr", file: !76, line: 229, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/uapi/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "514e37a7f30dd6a10229f65d7bb14aa5")
!77 = !{!78, !81}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "nla_len", scope: !75, file: !76, line: 230, baseType: !79, size: 16)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !53, line: 24, baseType: !80)
!80 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "nla_type", scope: !75, file: !76, line: 231, baseType: !79, size: 16, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!84 = !{!0, !85, !90, !211, !216, !221}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 168, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 21)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "__msg", scope: !92, file: !3, line: 25, type: !210, isLocal: true, isDefinition: true)
!92 = distinct !DISubprogram(name: "ip_metrics_convert", scope: !3, file: !3, line: 10, type: !93, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!93 = !DISubroutineType(types: !94)
!94 = !{!67, !74, !67, !71, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_ext_ack", file: !97, line: 82, size: 1088, elements: !98)
!97 = !DIFile(filename: "./include/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cf765747b52eb2c956fc0567475222af")
!98 = !{!99, !102, !105, !157, !158, !159, !163, !164}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_msg", scope: !96, file: !97, line: 83, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "bad_attr", scope: !96, file: !97, line: 84, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !96, file: !97, line: 85, baseType: !106, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nla_policy", file: !109, line: 321, size: 128, elements: !110)
!109 = !DIFile(filename: "./include/net/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75ea2e9501d91e2f676980361db2fc9a")
!110 = !{!111, !115, !116, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !109, line: 322, baseType: !112, size: 8)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !51, line: 17, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !53, line: 21, baseType: !114)
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "validation_type", scope: !108, file: !109, line: 323, baseType: !112, size: 8, offset: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !108, file: !109, line: 324, baseType: !117, size: 16, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !51, line: 19, baseType: !79)
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !109, line: 325, baseType: !119, size: 64, offset: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !109, line: 325, size: 64, elements: !120)
!120 = !{!121, !122, !124, !125, !126, !127, !136, !145, !153}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "strict_start_type", scope: !119, file: !109, line: 347, baseType: !117, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bitfield32_valid", scope: !119, file: !109, line: 350, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !119, file: !109, line: 351, baseType: !123, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reject_message", scope: !119, file: !109, line: 352, baseType: !100, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "nested_policy", scope: !119, file: !109, line: 353, baseType: !106, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !119, file: !109, line: 354, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_range_validation", file: !109, line: 191, size: 128, elements: !130)
!130 = !{!131, !135}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !129, file: !109, line: 192, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !51, line: 23, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !53, line: 31, baseType: !134)
!134 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !129, file: !109, line: 192, baseType: !132, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "range_signed", scope: !119, file: !109, line: 355, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_range_validation_signed", file: !109, line: 195, size: 128, elements: !139)
!139 = !{!140, !144}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !138, file: !109, line: 196, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !51, line: 22, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !53, line: 30, baseType: !143)
!143 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !138, file: !109, line: 196, baseType: !141, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !109, line: 356, baseType: !146, size: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !119, file: !109, line: 356, size: 32, elements: !147)
!147 = !{!148, !152}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !146, file: !109, line: 357, baseType: !149, size: 16)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !51, line: 18, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !53, line: 23, baseType: !151)
!151 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !146, file: !109, line: 357, baseType: !149, size: 16, offset: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !119, file: !109, line: 359, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!67, !103, !95}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "miss_nest", scope: !96, file: !97, line: 86, baseType: !103, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "miss_type", scope: !96, file: !97, line: 87, baseType: !117, size: 16, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !96, file: !97, line: 88, baseType: !160, size: 160, offset: 272)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 160, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 20)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !96, file: !97, line: 89, baseType: !112, size: 8, offset: 432)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_msg_buf", scope: !96, file: !97, line: 90, baseType: !165, size: 640, offset: 440)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 640, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 80)
!168 = !{!169, !170, !171, !172, !173, !176, !177, !178, !182, !183, !187, !189, !190, !191, !197, !201, !206}
!169 = !DILocalVariable(name: "fc_mx", arg: 1, scope: !92, file: !3, line: 10, type: !74)
!170 = !DILocalVariable(name: "fc_mx_len", arg: 2, scope: !92, file: !3, line: 11, type: !67)
!171 = !DILocalVariable(name: "metrics", arg: 3, scope: !92, file: !3, line: 11, type: !71)
!172 = !DILocalVariable(name: "extack", arg: 4, scope: !92, file: !3, line: 12, type: !95)
!173 = !DILocalVariable(name: "ecn_ca", scope: !92, file: !3, line: 14, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !63, line: 35, baseType: !175)
!175 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!176 = !DILocalVariable(name: "nla", scope: !92, file: !3, line: 15, type: !74)
!177 = !DILocalVariable(name: "remaining", scope: !92, file: !3, line: 16, type: !67)
!178 = !DILocalVariable(name: "type", scope: !179, file: !3, line: 19, type: !67)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 18, column: 54)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 18, column: 2)
!181 = distinct !DILexicalBlock(scope: !92, file: !3, line: 18, column: 2)
!182 = !DILocalVariable(name: "val", scope: !179, file: !3, line: 20, type: !50)
!183 = !DILocalVariable(name: "__extack", scope: !184, file: !3, line: 25, type: !95)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 25, column: 4)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 24, column: 24)
!186 = distinct !DILexicalBlock(scope: !179, file: !3, line: 24, column: 7)
!187 = !DILocalVariable(name: "_i", scope: !188, file: !3, line: 29, type: !67)
!188 = distinct !DILexicalBlock(scope: !179, file: !3, line: 29, column: 10)
!189 = !DILocalVariable(name: "_s", scope: !188, file: !3, line: 29, type: !67)
!190 = !DILocalVariable(name: "_mask", scope: !188, file: !3, line: 29, type: !70)
!191 = !DILocalVariable(name: "tmp", scope: !192, file: !3, line: 31, type: !194)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 30, column: 29)
!193 = distinct !DILexicalBlock(scope: !179, file: !3, line: 30, column: 7)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 16)
!197 = !DILocalVariable(name: "__extack", scope: !198, file: !3, line: 36, type: !95)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 36, column: 5)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 35, column: 30)
!200 = distinct !DILexicalBlock(scope: !192, file: !3, line: 35, column: 8)
!201 = !DILocalVariable(name: "__extack", scope: !202, file: !3, line: 41, type: !95)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 41, column: 5)
!203 = distinct !DILexicalBlock(scope: !204, file: !3, line: 40, column: 37)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 40, column: 8)
!205 = distinct !DILexicalBlock(scope: !193, file: !3, line: 39, column: 10)
!206 = !DILocalVariable(name: "__extack", scope: !207, file: !3, line: 54, type: !95)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 54, column: 4)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 53, column: 60)
!209 = distinct !DILexicalBlock(scope: !179, file: !3, line: 53, column: 7)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 160, elements: !161)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "__msg", scope: !92, file: !3, line: 36, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 264, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 33)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "__msg", scope: !92, file: !3, line: 41, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 232, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 29)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "__msg", scope: !92, file: !3, line: 54, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 432, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 54)
!226 = !{i32 7, !"Dwarf Version", i32 5}
!227 = !{i32 2, !"Debug Info Version", i32 3}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 8, !"cf-protection-branch", i32 1}
!230 = !{i32 4, !"function_return_thunk_extern", i32 1}
!231 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!232 = !{i32 1, !"Code Model", i32 2}
!233 = !{i32 1, !"override-stack-alignment", i32 8}
!234 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!235 = distinct !DISubprogram(name: "ip_fib_metrics_init", scope: !3, file: !3, line: 66, type: !236, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!44, !74, !67, !95}
!238 = !{!239, !240, !241, !242, !243}
!239 = !DILocalVariable(name: "fc_mx", arg: 1, scope: !235, file: !3, line: 66, type: !74)
!240 = !DILocalVariable(name: "fc_mx_len", arg: 2, scope: !235, file: !3, line: 67, type: !67)
!241 = !DILocalVariable(name: "extack", arg: 3, scope: !235, file: !3, line: 68, type: !95)
!242 = !DILocalVariable(name: "fib_metrics", scope: !235, file: !3, line: 70, type: !44)
!243 = !DILocalVariable(name: "err", scope: !235, file: !3, line: 71, type: !67)
!244 = !DILocation(line: 66, column: 56, scope: !235)
!245 = !DILocation(line: 67, column: 10, scope: !235)
!246 = !DILocation(line: 68, column: 30, scope: !235)
!247 = !DILocation(line: 70, column: 2, scope: !235)
!248 = !DILocation(line: 70, column: 22, scope: !235)
!249 = !DILocation(line: 71, column: 2, scope: !235)
!250 = !DILocation(line: 71, column: 6, scope: !235)
!251 = !DILocation(line: 73, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !235, file: !3, line: 73, column: 6)
!253 = !DILocation(line: 73, column: 6, scope: !235)
!254 = !DILocation(line: 74, column: 3, scope: !252)
!255 = !DILocation(line: 76, column: 16, scope: !235)
!256 = !DILocation(line: 76, column: 14, scope: !235)
!257 = !DILocation(line: 77, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !235, file: !3, line: 77, column: 6)
!259 = !DILocation(line: 77, column: 6, scope: !235)
!260 = !DILocation(line: 78, column: 10, scope: !258)
!261 = !DILocation(line: 78, column: 3, scope: !258)
!262 = !DILocation(line: 80, column: 27, scope: !235)
!263 = !DILocation(line: 80, column: 34, scope: !235)
!264 = !DILocation(line: 80, column: 45, scope: !235)
!265 = !DILocation(line: 80, column: 58, scope: !235)
!266 = !DILocation(line: 81, column: 6, scope: !235)
!267 = !DILocation(line: 80, column: 8, scope: !235)
!268 = !DILocation(line: 80, column: 6, scope: !235)
!269 = !DILocation(line: 82, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !235, file: !3, line: 82, column: 6)
!271 = !DILocation(line: 82, column: 6, scope: !235)
!272 = !DILocation(line: 83, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !270, file: !3, line: 82, column: 12)
!274 = !DILocation(line: 83, column: 30, scope: !273)
!275 = !DILocation(line: 83, column: 3, scope: !273)
!276 = !DILocation(line: 84, column: 2, scope: !273)
!277 = !DILocation(line: 85, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !270, file: !3, line: 84, column: 9)
!279 = !DILocation(line: 85, column: 3, scope: !278)
!280 = !DILocation(line: 86, column: 25, scope: !278)
!281 = !DILocation(line: 86, column: 17, scope: !278)
!282 = !DILocation(line: 86, column: 15, scope: !278)
!283 = !DILocation(line: 89, column: 9, scope: !235)
!284 = !DILocation(line: 89, column: 2, scope: !235)
!285 = !DILocation(line: 90, column: 1, scope: !235)
!286 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !287, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !293)
!287 = !DISubroutineType(types: !288)
!288 = !{!69, !289, !68}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 61, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !291, line: 72, baseType: !292)
!291 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !291, line: 16, baseType: !70)
!293 = !{!294, !295}
!294 = !DILocalVariable(name: "size", arg: 1, scope: !286, file: !12, line: 719, type: !289)
!295 = !DILocalVariable(name: "flags", arg: 2, scope: !286, file: !12, line: 719, type: !68)
!296 = !DILocation(line: 719, column: 52, scope: !286)
!297 = !DILocation(line: 719, column: 64, scope: !286)
!298 = !DILocation(line: 721, column: 17, scope: !286)
!299 = !DILocation(line: 721, column: 23, scope: !286)
!300 = !DILocation(line: 721, column: 29, scope: !286)
!301 = !DILocation(line: 721, column: 9, scope: !286)
!302 = !DILocation(line: 721, column: 2, scope: !286)
!303 = distinct !DISubprogram(name: "ERR_PTR", scope: !304, file: !304, line: 39, type: !305, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!304 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!305 = !DISubroutineType(types: !306)
!306 = !{!69, !307}
!307 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!308 = !{!309}
!309 = !DILocalVariable(name: "error", arg: 1, scope: !303, file: !304, line: 39, type: !307)
!310 = !DILocation(line: 39, column: 48, scope: !303)
!311 = !DILocation(line: 41, column: 18, scope: !303)
!312 = !DILocation(line: 41, column: 9, scope: !303)
!313 = !DILocation(line: 41, column: 2, scope: !303)
!314 = !DILocation(line: 10, column: 46, scope: !92)
!315 = !DILocation(line: 11, column: 14, scope: !92)
!316 = !DILocation(line: 11, column: 30, scope: !92)
!317 = !DILocation(line: 12, column: 34, scope: !92)
!318 = !DILocation(line: 14, column: 2, scope: !92)
!319 = !DILocation(line: 14, column: 7, scope: !92)
!320 = !DILocation(line: 15, column: 2, scope: !92)
!321 = !DILocation(line: 15, column: 17, scope: !92)
!322 = !DILocation(line: 16, column: 2, scope: !92)
!323 = !DILocation(line: 16, column: 6, scope: !92)
!324 = !DILocation(line: 18, column: 2, scope: !181)
!325 = !DILocation(line: 18, column: 2, scope: !180)
!326 = !DILocation(line: 19, column: 3, scope: !179)
!327 = !DILocation(line: 19, column: 7, scope: !179)
!328 = !DILocation(line: 19, column: 23, scope: !179)
!329 = !DILocation(line: 19, column: 14, scope: !179)
!330 = !DILocation(line: 20, column: 3, scope: !179)
!331 = !DILocation(line: 20, column: 7, scope: !179)
!332 = !DILocation(line: 22, column: 8, scope: !333)
!333 = distinct !DILexicalBlock(scope: !179, file: !3, line: 22, column: 7)
!334 = !DILocation(line: 22, column: 7, scope: !179)
!335 = !DILocation(line: 23, column: 4, scope: !333)
!336 = !DILocation(line: 24, column: 7, scope: !186)
!337 = !DILocation(line: 24, column: 12, scope: !186)
!338 = !DILocation(line: 24, column: 7, scope: !179)
!339 = !DILocation(line: 25, column: 4, scope: !185)
!340 = !DILocation(line: 25, column: 4, scope: !184)
!341 = !DILocation(line: 25, column: 4, scope: !342)
!342 = distinct !DILexicalBlock(scope: !184, file: !3, line: 25, column: 4)
!343 = !DILocation(line: 26, column: 4, scope: !185)
!344 = !DILocation(line: 29, column: 10, scope: !188)
!345 = !DILocation(line: 29, column: 10, scope: !346)
!346 = distinct !DILexicalBlock(scope: !188, file: !3, line: 29, column: 10)
!347 = !DILocation(line: 29, column: 10, scope: !348)
!348 = distinct !DILexicalBlock(scope: !188, file: !3, line: 29, column: 10)
!349 = !DILocation(line: 29, column: 10, scope: !179)
!350 = !DILocation(line: 29, column: 8, scope: !179)
!351 = !DILocation(line: 30, column: 7, scope: !193)
!352 = !DILocation(line: 30, column: 12, scope: !193)
!353 = !DILocation(line: 30, column: 7, scope: !179)
!354 = !DILocation(line: 31, column: 4, scope: !192)
!355 = !DILocation(line: 31, column: 9, scope: !192)
!356 = !DILocation(line: 33, column: 16, scope: !192)
!357 = !DILocation(line: 33, column: 21, scope: !192)
!358 = !DILocation(line: 33, column: 4, scope: !192)
!359 = !DILocation(line: 34, column: 33, scope: !192)
!360 = !DILocation(line: 34, column: 10, scope: !192)
!361 = !DILocation(line: 34, column: 8, scope: !192)
!362 = !DILocation(line: 35, column: 8, scope: !200)
!363 = !DILocation(line: 35, column: 12, scope: !200)
!364 = !DILocation(line: 35, column: 8, scope: !192)
!365 = !DILocation(line: 36, column: 5, scope: !199)
!366 = !DILocation(line: 36, column: 5, scope: !198)
!367 = !DILocation(line: 36, column: 5, scope: !368)
!368 = distinct !DILexicalBlock(scope: !198, file: !3, line: 36, column: 5)
!369 = !DILocation(line: 37, column: 5, scope: !199)
!370 = !DILocation(line: 39, column: 3, scope: !193)
!371 = !DILocation(line: 39, column: 3, scope: !192)
!372 = !DILocation(line: 40, column: 16, scope: !204)
!373 = !DILocation(line: 40, column: 8, scope: !204)
!374 = !DILocation(line: 40, column: 21, scope: !204)
!375 = !DILocation(line: 40, column: 8, scope: !205)
!376 = !DILocation(line: 41, column: 5, scope: !203)
!377 = !DILocation(line: 41, column: 5, scope: !202)
!378 = !DILocation(line: 41, column: 5, scope: !379)
!379 = distinct !DILexicalBlock(scope: !202, file: !3, line: 41, column: 5)
!380 = !DILocation(line: 41, column: 5, scope: !381)
!381 = distinct !DILexicalBlock(scope: !379, file: !3, line: 41, column: 5)
!382 = !DILocation(line: 43, column: 5, scope: !203)
!383 = !DILocation(line: 45, column: 22, scope: !205)
!384 = !DILocation(line: 45, column: 10, scope: !205)
!385 = !DILocation(line: 45, column: 8, scope: !205)
!386 = !DILocation(line: 47, column: 7, scope: !387)
!387 = distinct !DILexicalBlock(scope: !179, file: !3, line: 47, column: 7)
!388 = !DILocation(line: 47, column: 12, scope: !387)
!389 = !DILocation(line: 47, column: 27, scope: !387)
!390 = !DILocation(line: 47, column: 30, scope: !387)
!391 = !DILocation(line: 47, column: 34, scope: !387)
!392 = !DILocation(line: 47, column: 7, scope: !179)
!393 = !DILocation(line: 48, column: 8, scope: !387)
!394 = !DILocation(line: 48, column: 4, scope: !387)
!395 = !DILocation(line: 49, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !179, file: !3, line: 49, column: 7)
!397 = !DILocation(line: 49, column: 12, scope: !396)
!398 = !DILocation(line: 49, column: 24, scope: !396)
!399 = !DILocation(line: 49, column: 27, scope: !396)
!400 = !DILocation(line: 49, column: 31, scope: !396)
!401 = !DILocation(line: 49, column: 7, scope: !179)
!402 = !DILocation(line: 50, column: 8, scope: !396)
!403 = !DILocation(line: 50, column: 4, scope: !396)
!404 = !DILocation(line: 51, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !179, file: !3, line: 51, column: 7)
!406 = !DILocation(line: 51, column: 12, scope: !405)
!407 = !DILocation(line: 51, column: 29, scope: !405)
!408 = !DILocation(line: 51, column: 32, scope: !405)
!409 = !DILocation(line: 51, column: 36, scope: !405)
!410 = !DILocation(line: 51, column: 7, scope: !179)
!411 = !DILocation(line: 52, column: 8, scope: !405)
!412 = !DILocation(line: 52, column: 4, scope: !405)
!413 = !DILocation(line: 53, column: 7, scope: !209)
!414 = !DILocation(line: 53, column: 12, scope: !209)
!415 = !DILocation(line: 53, column: 29, scope: !209)
!416 = !DILocation(line: 53, column: 33, scope: !209)
!417 = !DILocation(line: 53, column: 37, scope: !209)
!418 = !DILocation(line: 53, column: 7, scope: !179)
!419 = !DILocation(line: 54, column: 4, scope: !208)
!420 = !DILocation(line: 54, column: 4, scope: !207)
!421 = !DILocation(line: 54, column: 4, scope: !422)
!422 = distinct !DILexicalBlock(scope: !207, file: !3, line: 54, column: 4)
!423 = !DILocation(line: 55, column: 4, scope: !208)
!424 = !DILocation(line: 57, column: 23, scope: !179)
!425 = !DILocation(line: 57, column: 3, scope: !179)
!426 = !DILocation(line: 57, column: 11, scope: !179)
!427 = !DILocation(line: 57, column: 16, scope: !179)
!428 = !DILocation(line: 57, column: 21, scope: !179)
!429 = !DILocation(line: 58, column: 2, scope: !180)
!430 = !DILocation(line: 58, column: 2, scope: !179)
!431 = distinct !{!431, !324, !432, !433, !434}
!432 = !DILocation(line: 58, column: 2, scope: !181)
!433 = !{!"llvm.loop.mustprogress"}
!434 = !{!"llvm.loop.unroll.disable"}
!435 = !DILocation(line: 60, column: 6, scope: !436)
!436 = distinct !DILexicalBlock(scope: !92, file: !3, line: 60, column: 6)
!437 = !{i8 0, i8 2}
!438 = !{}
!439 = !DILocation(line: 60, column: 6, scope: !92)
!440 = !DILocation(line: 61, column: 3, scope: !436)
!441 = !DILocation(line: 61, column: 30, scope: !436)
!442 = !DILocation(line: 63, column: 2, scope: !92)
!443 = !DILocation(line: 64, column: 1, scope: !92)
!444 = distinct !DISubprogram(name: "refcount_set", scope: !58, file: !58, line: 134, type: !445, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !448)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !447, !67}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!448 = !{!449, !450}
!449 = !DILocalVariable(name: "r", arg: 1, scope: !444, file: !58, line: 134, type: !447)
!450 = !DILocalVariable(name: "n", arg: 2, scope: !444, file: !58, line: 134, type: !67)
!451 = !DILocation(line: 134, column: 45, scope: !444)
!452 = !DILocation(line: 134, column: 52, scope: !444)
!453 = !DILocation(line: 136, column: 14, scope: !444)
!454 = !DILocation(line: 136, column: 17, scope: !444)
!455 = !DILocation(line: 136, column: 23, scope: !444)
!456 = !DILocation(line: 136, column: 2, scope: !444)
!457 = !DILocation(line: 137, column: 1, scope: !444)
!458 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!463 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !287, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !464)
!464 = !{!465, !466, !467}
!465 = !DILocalVariable(name: "size", arg: 1, scope: !463, file: !12, line: 591, type: !289)
!466 = !DILocalVariable(name: "flags", arg: 2, scope: !463, file: !12, line: 591, type: !68)
!467 = !DILocalVariable(name: "index", scope: !468, file: !12, line: 594, type: !7)
!468 = distinct !DILexicalBlock(scope: !469, file: !12, line: 593, column: 42)
!469 = distinct !DILexicalBlock(scope: !463, file: !12, line: 593, column: 6)
!470 = !DILocation(line: 591, column: 61, scope: !463)
!471 = !DILocation(line: 591, column: 73, scope: !463)
!472 = !DILocation(line: 593, column: 27, scope: !469)
!473 = !DILocation(line: 593, column: 6, scope: !469)
!474 = !DILocation(line: 593, column: 33, scope: !469)
!475 = !DILocation(line: 593, column: 36, scope: !469)
!476 = !DILocation(line: 593, column: 6, scope: !463)
!477 = !DILocation(line: 594, column: 3, scope: !468)
!478 = !DILocation(line: 594, column: 16, scope: !468)
!479 = !DILocation(line: 596, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !468, file: !12, line: 596, column: 7)
!481 = !DILocation(line: 596, column: 12, scope: !480)
!482 = !DILocation(line: 596, column: 7, scope: !468)
!483 = !DILocation(line: 597, column: 25, scope: !480)
!484 = !DILocation(line: 597, column: 31, scope: !480)
!485 = !DILocation(line: 597, column: 11, scope: !480)
!486 = !DILocation(line: 597, column: 4, scope: !480)
!487 = !DILocation(line: 599, column: 11, scope: !468)
!488 = !DILocation(line: 599, column: 9, scope: !468)
!489 = !DILocation(line: 601, column: 33, scope: !468)
!490 = !DILocation(line: 601, column: 40, scope: !468)
!491 = !DILocation(line: 601, column: 20, scope: !468)
!492 = !DILocation(line: 601, column: 5, scope: !468)
!493 = !DILocation(line: 601, column: 51, scope: !468)
!494 = !DILocation(line: 602, column: 5, scope: !468)
!495 = !DILocation(line: 602, column: 12, scope: !468)
!496 = !DILocation(line: 600, column: 10, scope: !468)
!497 = !DILocation(line: 600, column: 3, scope: !468)
!498 = !DILocation(line: 603, column: 2, scope: !469)
!499 = !DILocation(line: 604, column: 19, scope: !463)
!500 = !DILocation(line: 604, column: 25, scope: !463)
!501 = !DILocation(line: 604, column: 9, scope: !463)
!502 = !DILocation(line: 604, column: 2, scope: !463)
!503 = !DILocation(line: 605, column: 1, scope: !463)
!504 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!505 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !506, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!7, !289, !174}
!508 = !{!509, !510}
!509 = !DILocalVariable(name: "size", arg: 1, scope: !505, file: !12, line: 444, type: !289)
!510 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !505, file: !12, line: 445, type: !174)
!511 = !DILocation(line: 444, column: 60, scope: !505)
!512 = !DILocation(line: 445, column: 16, scope: !505)
!513 = !DILocation(line: 447, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !505, file: !12, line: 447, column: 6)
!515 = !DILocation(line: 447, column: 6, scope: !505)
!516 = !DILocation(line: 448, column: 3, scope: !514)
!517 = !DILocation(line: 450, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !505, file: !12, line: 450, column: 6)
!519 = !DILocation(line: 450, column: 11, scope: !518)
!520 = !DILocation(line: 450, column: 6, scope: !505)
!521 = !DILocation(line: 451, column: 3, scope: !518)
!522 = !DILocation(line: 453, column: 32, scope: !523)
!523 = distinct !DILexicalBlock(scope: !505, file: !12, line: 453, column: 6)
!524 = !DILocation(line: 453, column: 37, scope: !523)
!525 = !DILocation(line: 453, column: 42, scope: !523)
!526 = !DILocation(line: 453, column: 45, scope: !523)
!527 = !DILocation(line: 453, column: 50, scope: !523)
!528 = !DILocation(line: 453, column: 6, scope: !505)
!529 = !DILocation(line: 454, column: 3, scope: !523)
!530 = !DILocation(line: 455, column: 32, scope: !531)
!531 = distinct !DILexicalBlock(scope: !505, file: !12, line: 455, column: 6)
!532 = !DILocation(line: 455, column: 37, scope: !531)
!533 = !DILocation(line: 455, column: 43, scope: !531)
!534 = !DILocation(line: 455, column: 46, scope: !531)
!535 = !DILocation(line: 455, column: 51, scope: !531)
!536 = !DILocation(line: 455, column: 6, scope: !505)
!537 = !DILocation(line: 456, column: 3, scope: !531)
!538 = !DILocation(line: 457, column: 6, scope: !539)
!539 = distinct !DILexicalBlock(scope: !505, file: !12, line: 457, column: 6)
!540 = !DILocation(line: 457, column: 11, scope: !539)
!541 = !DILocation(line: 457, column: 6, scope: !505)
!542 = !DILocation(line: 457, column: 26, scope: !539)
!543 = !DILocation(line: 458, column: 6, scope: !544)
!544 = distinct !DILexicalBlock(scope: !505, file: !12, line: 458, column: 6)
!545 = !DILocation(line: 458, column: 11, scope: !544)
!546 = !DILocation(line: 458, column: 6, scope: !505)
!547 = !DILocation(line: 458, column: 26, scope: !544)
!548 = !DILocation(line: 459, column: 6, scope: !549)
!549 = distinct !DILexicalBlock(scope: !505, file: !12, line: 459, column: 6)
!550 = !DILocation(line: 459, column: 11, scope: !549)
!551 = !DILocation(line: 459, column: 6, scope: !505)
!552 = !DILocation(line: 459, column: 26, scope: !549)
!553 = !DILocation(line: 460, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !505, file: !12, line: 460, column: 6)
!555 = !DILocation(line: 460, column: 11, scope: !554)
!556 = !DILocation(line: 460, column: 6, scope: !505)
!557 = !DILocation(line: 460, column: 26, scope: !554)
!558 = !DILocation(line: 461, column: 6, scope: !559)
!559 = distinct !DILexicalBlock(scope: !505, file: !12, line: 461, column: 6)
!560 = !DILocation(line: 461, column: 11, scope: !559)
!561 = !DILocation(line: 461, column: 6, scope: !505)
!562 = !DILocation(line: 461, column: 26, scope: !559)
!563 = !DILocation(line: 462, column: 6, scope: !564)
!564 = distinct !DILexicalBlock(scope: !505, file: !12, line: 462, column: 6)
!565 = !DILocation(line: 462, column: 11, scope: !564)
!566 = !DILocation(line: 462, column: 6, scope: !505)
!567 = !DILocation(line: 462, column: 26, scope: !564)
!568 = !DILocation(line: 463, column: 6, scope: !569)
!569 = distinct !DILexicalBlock(scope: !505, file: !12, line: 463, column: 6)
!570 = !DILocation(line: 463, column: 11, scope: !569)
!571 = !DILocation(line: 463, column: 6, scope: !505)
!572 = !DILocation(line: 463, column: 26, scope: !569)
!573 = !DILocation(line: 464, column: 6, scope: !574)
!574 = distinct !DILexicalBlock(scope: !505, file: !12, line: 464, column: 6)
!575 = !DILocation(line: 464, column: 11, scope: !574)
!576 = !DILocation(line: 464, column: 6, scope: !505)
!577 = !DILocation(line: 464, column: 26, scope: !574)
!578 = !DILocation(line: 465, column: 6, scope: !579)
!579 = distinct !DILexicalBlock(scope: !505, file: !12, line: 465, column: 6)
!580 = !DILocation(line: 465, column: 11, scope: !579)
!581 = !DILocation(line: 465, column: 6, scope: !505)
!582 = !DILocation(line: 465, column: 26, scope: !579)
!583 = !DILocation(line: 466, column: 6, scope: !584)
!584 = distinct !DILexicalBlock(scope: !505, file: !12, line: 466, column: 6)
!585 = !DILocation(line: 466, column: 11, scope: !584)
!586 = !DILocation(line: 466, column: 6, scope: !505)
!587 = !DILocation(line: 466, column: 26, scope: !584)
!588 = !DILocation(line: 467, column: 6, scope: !589)
!589 = distinct !DILexicalBlock(scope: !505, file: !12, line: 467, column: 6)
!590 = !DILocation(line: 467, column: 11, scope: !589)
!591 = !DILocation(line: 467, column: 6, scope: !505)
!592 = !DILocation(line: 467, column: 26, scope: !589)
!593 = !DILocation(line: 468, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !505, file: !12, line: 468, column: 6)
!595 = !DILocation(line: 468, column: 11, scope: !594)
!596 = !DILocation(line: 468, column: 6, scope: !505)
!597 = !DILocation(line: 468, column: 26, scope: !594)
!598 = !DILocation(line: 469, column: 6, scope: !599)
!599 = distinct !DILexicalBlock(scope: !505, file: !12, line: 469, column: 6)
!600 = !DILocation(line: 469, column: 11, scope: !599)
!601 = !DILocation(line: 469, column: 6, scope: !505)
!602 = !DILocation(line: 469, column: 26, scope: !599)
!603 = !DILocation(line: 470, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !505, file: !12, line: 470, column: 6)
!605 = !DILocation(line: 470, column: 11, scope: !604)
!606 = !DILocation(line: 470, column: 6, scope: !505)
!607 = !DILocation(line: 470, column: 26, scope: !604)
!608 = !DILocation(line: 471, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !505, file: !12, line: 471, column: 6)
!610 = !DILocation(line: 471, column: 11, scope: !609)
!611 = !DILocation(line: 471, column: 6, scope: !505)
!612 = !DILocation(line: 471, column: 26, scope: !609)
!613 = !DILocation(line: 472, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !505, file: !12, line: 472, column: 6)
!615 = !DILocation(line: 472, column: 11, scope: !614)
!616 = !DILocation(line: 472, column: 6, scope: !505)
!617 = !DILocation(line: 472, column: 26, scope: !614)
!618 = !DILocation(line: 473, column: 6, scope: !619)
!619 = distinct !DILexicalBlock(scope: !505, file: !12, line: 473, column: 6)
!620 = !DILocation(line: 473, column: 11, scope: !619)
!621 = !DILocation(line: 473, column: 6, scope: !505)
!622 = !DILocation(line: 473, column: 26, scope: !619)
!623 = !DILocation(line: 474, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !505, file: !12, line: 474, column: 6)
!625 = !DILocation(line: 474, column: 11, scope: !624)
!626 = !DILocation(line: 474, column: 6, scope: !505)
!627 = !DILocation(line: 474, column: 27, scope: !624)
!628 = !DILocation(line: 475, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !505, file: !12, line: 475, column: 6)
!630 = !DILocation(line: 475, column: 11, scope: !629)
!631 = !DILocation(line: 475, column: 6, scope: !505)
!632 = !DILocation(line: 475, column: 32, scope: !629)
!633 = !DILocation(line: 477, column: 50, scope: !634)
!634 = distinct !DILexicalBlock(scope: !505, file: !12, line: 477, column: 6)
!635 = !DILocation(line: 477, column: 6, scope: !505)
!636 = !DILocation(line: 478, column: 3, scope: !634)
!637 = !DILocation(line: 478, column: 3, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !12, line: 478, column: 3)
!639 = distinct !DILexicalBlock(scope: !634, file: !12, line: 478, column: 3)
!640 = !{i32 -2141542305}
!641 = !DILocation(line: 478, column: 3, scope: !639)
!642 = !DILocation(line: 480, column: 3, scope: !634)
!643 = !DILocation(line: 480, column: 3, scope: !644)
!644 = distinct !DILexicalBlock(scope: !634, file: !12, line: 480, column: 3)
!645 = !DILocation(line: 480, column: 3, scope: !646)
!646 = distinct !DILexicalBlock(scope: !644, file: !12, line: 480, column: 3)
!647 = !DILocation(line: 480, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !12, line: 480, column: 3)
!649 = !{i64 2153425194, i64 2153425223, i64 2153425269, i64 2153425327, i64 2153425381, i64 2153425435, i64 2153425490, i64 2153425521}
!650 = !DILocation(line: 483, column: 2, scope: !505)
!651 = !DILocation(line: 484, column: 1, scope: !505)
!652 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!653 = !DISubroutineType(types: !654)
!654 = !{!69, !655, !68, !289}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !657, line: 325, flags: DIFlagFwdDecl)
!657 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!658 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !659, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !661)
!659 = !DISubroutineType(types: !660)
!660 = !{!11, !68, !70}
!661 = !{!662, !663}
!662 = !DILocalVariable(name: "flags", arg: 1, scope: !658, file: !12, line: 401, type: !68)
!663 = !DILocalVariable(name: "caller", arg: 2, scope: !658, file: !12, line: 401, type: !70)
!664 = !DILocation(line: 401, column: 67, scope: !658)
!665 = !DILocation(line: 401, column: 88, scope: !658)
!666 = !DILocation(line: 407, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !658, file: !12, line: 407, column: 6)
!668 = !DILocation(line: 407, column: 6, scope: !658)
!669 = !DILocation(line: 413, column: 3, scope: !667)
!670 = !DILocation(line: 423, column: 38, scope: !671)
!671 = distinct !DILexicalBlock(scope: !658, file: !12, line: 423, column: 6)
!672 = !DILocation(line: 423, column: 44, scope: !671)
!673 = !DILocation(line: 423, column: 6, scope: !658)
!674 = !DILocation(line: 424, column: 3, scope: !671)
!675 = !DILocation(line: 426, column: 3, scope: !676)
!676 = distinct !DILexicalBlock(scope: !658, file: !12, line: 425, column: 6)
!677 = !DILocation(line: 429, column: 1, scope: !658)
!678 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!679 = !DISubprogram(name: "__compiletime_assert_245", scope: !12, file: !12, line: 478, type: !680, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!680 = !DISubroutineType(types: !681)
!681 = !{null}
!682 = distinct !DISubprogram(name: "nla_ok", scope: !109, file: !109, line: 1202, type: !683, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!67, !103, !67}
!685 = !{!686, !687}
!686 = !DILocalVariable(name: "nla", arg: 1, scope: !682, file: !109, line: 1202, type: !103)
!687 = !DILocalVariable(name: "remaining", arg: 2, scope: !682, file: !109, line: 1202, type: !67)
!688 = !DILocation(line: 1202, column: 47, scope: !682)
!689 = !DILocation(line: 1202, column: 56, scope: !682)
!690 = !DILocation(line: 1204, column: 9, scope: !682)
!691 = !DILocation(line: 1204, column: 19, scope: !682)
!692 = !DILocation(line: 1204, column: 41, scope: !682)
!693 = !DILocation(line: 1205, column: 9, scope: !682)
!694 = !DILocation(line: 1205, column: 14, scope: !682)
!695 = !DILocation(line: 1205, column: 22, scope: !682)
!696 = !DILocation(line: 1205, column: 38, scope: !682)
!697 = !DILocation(line: 1206, column: 9, scope: !682)
!698 = !DILocation(line: 1206, column: 14, scope: !682)
!699 = !DILocation(line: 1206, column: 25, scope: !682)
!700 = !DILocation(line: 1206, column: 22, scope: !682)
!701 = !DILocation(line: 0, scope: !682)
!702 = !DILocation(line: 1204, column: 2, scope: !682)
!703 = distinct !DISubprogram(name: "nla_type", scope: !109, file: !109, line: 1174, type: !704, scopeLine: 1175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !706)
!704 = !DISubroutineType(types: !705)
!705 = !{!67, !103}
!706 = !{!707}
!707 = !DILocalVariable(name: "nla", arg: 1, scope: !703, file: !109, line: 1174, type: !103)
!708 = !DILocation(line: 1174, column: 49, scope: !703)
!709 = !DILocation(line: 1176, column: 9, scope: !703)
!710 = !DILocation(line: 1176, column: 14, scope: !703)
!711 = !DILocation(line: 1176, column: 23, scope: !703)
!712 = !DILocation(line: 1176, column: 2, scope: !703)
!713 = !DISubprogram(name: "do_trace_netlink_extack", scope: !97, file: !97, line: 14, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !100}
!716 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !717, file: !717, line: 36, type: !718, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !720)
!717 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43f72005da64ca67c9ee720127636784")
!718 = !DISubroutineType(types: !719)
!719 = !{!70, !70, !70}
!720 = !{!721, !722, !723}
!721 = !DILocalVariable(name: "index", arg: 1, scope: !716, file: !717, line: 36, type: !70)
!722 = !DILocalVariable(name: "size", arg: 2, scope: !716, file: !717, line: 37, type: !70)
!723 = !DILocalVariable(name: "mask", scope: !716, file: !717, line: 39, type: !70)
!724 = !DILocation(line: 36, column: 67, scope: !716)
!725 = !DILocation(line: 37, column: 17, scope: !716)
!726 = !DILocation(line: 39, column: 2, scope: !716)
!727 = !DILocation(line: 39, column: 16, scope: !716)
!728 = !DILocation(line: 43, column: 9, scope: !716)
!729 = !DILocation(line: 43, column: 20, scope: !716)
!730 = !DILocation(line: 41, column: 2, scope: !716)
!731 = !{i64 440643}
!732 = !DILocation(line: 45, column: 9, scope: !716)
!733 = !DILocation(line: 46, column: 1, scope: !716)
!734 = !DILocation(line: 45, column: 2, scope: !716)
!735 = !DISubprogram(name: "nla_strscpy", scope: !109, file: !109, line: 521, type: !736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!736 = !DISubroutineType(types: !737)
!737 = !{!738, !72, !103, !289}
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !63, line: 66, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !291, line: 73, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !291, line: 15, baseType: !307)
!741 = !DISubprogram(name: "tcp_ca_get_key_by_name", scope: !742, file: !742, line: 1160, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DIFile(filename: "./include/net/tcp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba878804ebff95ff13d0bcccac538a6e")
!743 = !DISubroutineType(types: !744)
!744 = !{!50, !100, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!746 = distinct !DISubprogram(name: "nla_len", scope: !109, file: !109, line: 1192, type: !704, scopeLine: 1193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !747)
!747 = !{!748}
!748 = !DILocalVariable(name: "nla", arg: 1, scope: !746, file: !109, line: 1192, type: !103)
!749 = !DILocation(line: 1192, column: 48, scope: !746)
!750 = !DILocation(line: 1194, column: 9, scope: !746)
!751 = !DILocation(line: 1194, column: 14, scope: !746)
!752 = !DILocation(line: 1194, column: 22, scope: !746)
!753 = !DILocation(line: 1194, column: 2, scope: !746)
!754 = distinct !DISubprogram(name: "nla_get_u32", scope: !109, file: !109, line: 1598, type: !755, scopeLine: 1599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!50, !103}
!757 = !{!758}
!758 = !DILocalVariable(name: "nla", arg: 1, scope: !754, file: !109, line: 1598, type: !103)
!759 = !DILocation(line: 1598, column: 52, scope: !754)
!760 = !DILocation(line: 1600, column: 27, scope: !754)
!761 = !DILocation(line: 1600, column: 18, scope: !754)
!762 = !DILocation(line: 1600, column: 9, scope: !754)
!763 = !DILocation(line: 1600, column: 2, scope: !754)
!764 = distinct !DISubprogram(name: "nla_next", scope: !109, file: !109, line: 1217, type: !765, scopeLine: 1218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !768)
!765 = !DISubroutineType(types: !766)
!766 = !{!74, !103, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!768 = !{!769, !770, !771}
!769 = !DILocalVariable(name: "nla", arg: 1, scope: !764, file: !109, line: 1217, type: !103)
!770 = !DILocalVariable(name: "remaining", arg: 2, scope: !764, file: !109, line: 1217, type: !767)
!771 = !DILocalVariable(name: "totlen", scope: !764, file: !109, line: 1219, type: !7)
!772 = !DILocation(line: 1217, column: 60, scope: !764)
!773 = !DILocation(line: 1217, column: 70, scope: !764)
!774 = !DILocation(line: 1219, column: 2, scope: !764)
!775 = !DILocation(line: 1219, column: 15, scope: !764)
!776 = !DILocation(line: 1219, column: 24, scope: !764)
!777 = !DILocation(line: 1221, column: 16, scope: !764)
!778 = !DILocation(line: 1221, column: 3, scope: !764)
!779 = !DILocation(line: 1221, column: 13, scope: !764)
!780 = !DILocation(line: 1222, column: 37, scope: !764)
!781 = !DILocation(line: 1222, column: 43, scope: !764)
!782 = !DILocation(line: 1222, column: 41, scope: !764)
!783 = !DILocation(line: 1223, column: 1, scope: !764)
!784 = !DILocation(line: 1222, column: 2, scope: !764)
!785 = distinct !DISubprogram(name: "nla_data", scope: !109, file: !109, line: 1183, type: !786, scopeLine: 1184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{!69, !103}
!788 = !{!789}
!789 = !DILocalVariable(name: "nla", arg: 1, scope: !785, file: !109, line: 1183, type: !103)
!790 = !DILocation(line: 1183, column: 51, scope: !785)
!791 = !DILocation(line: 1185, column: 18, scope: !785)
!792 = !DILocation(line: 1185, column: 22, scope: !785)
!793 = !DILocation(line: 1185, column: 2, scope: !785)
!794 = distinct !DISubprogram(name: "atomic_set", scope: !795, file: !795, line: 65, type: !796, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !799)
!795 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!796 = !DISubroutineType(types: !797)
!797 = !{null, !798, !67}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!799 = !{!800, !801}
!800 = !DILocalVariable(name: "v", arg: 1, scope: !794, file: !795, line: 65, type: !798)
!801 = !DILocalVariable(name: "i", arg: 2, scope: !794, file: !795, line: 65, type: !67)
!802 = !DILocation(line: 65, column: 22, scope: !794)
!803 = !DILocation(line: 65, column: 29, scope: !794)
!804 = !DILocation(line: 67, column: 26, scope: !794)
!805 = !DILocation(line: 67, column: 2, scope: !794)
!806 = !DILocation(line: 68, column: 17, scope: !794)
!807 = !DILocation(line: 68, column: 20, scope: !794)
!808 = !DILocation(line: 68, column: 2, scope: !794)
!809 = !DILocation(line: 69, column: 1, scope: !794)
!810 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !811, file: !811, line: 80, type: !812, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !817)
!811 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!812 = !DISubroutineType(types: !813)
!813 = !{null, !814, !289}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!817 = !{!818, !819}
!818 = !DILocalVariable(name: "v", arg: 1, scope: !810, file: !811, line: 80, type: !814)
!819 = !DILocalVariable(name: "size", arg: 2, scope: !810, file: !811, line: 80, type: !289)
!820 = !DILocation(line: 80, column: 74, scope: !810)
!821 = !DILocation(line: 80, column: 84, scope: !810)
!822 = !DILocation(line: 82, column: 20, scope: !810)
!823 = !DILocation(line: 82, column: 23, scope: !810)
!824 = !DILocation(line: 82, column: 2, scope: !810)
!825 = !DILocation(line: 83, column: 2, scope: !810)
!826 = !DILocation(line: 84, column: 1, scope: !810)
!827 = distinct !DISubprogram(name: "raw_atomic_set", scope: !828, file: !828, line: 488, type: !796, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !829)
!828 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!829 = !{!830, !831}
!830 = !DILocalVariable(name: "v", arg: 1, scope: !827, file: !828, line: 488, type: !798)
!831 = !DILocalVariable(name: "i", arg: 2, scope: !827, file: !828, line: 488, type: !67)
!832 = !DILocation(line: 488, column: 26, scope: !827)
!833 = !DILocation(line: 488, column: 33, scope: !827)
!834 = !DILocation(line: 490, column: 18, scope: !827)
!835 = !DILocation(line: 490, column: 21, scope: !827)
!836 = !DILocation(line: 490, column: 2, scope: !827)
!837 = !DILocation(line: 491, column: 1, scope: !827)
!838 = distinct !DISubprogram(name: "kasan_check_write", scope: !839, file: !839, line: 44, type: !840, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!839 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!840 = !DISubroutineType(types: !841)
!841 = !{!174, !814, !7}
!842 = !{!843, !844}
!843 = !DILocalVariable(name: "p", arg: 1, scope: !838, file: !839, line: 44, type: !814)
!844 = !DILocalVariable(name: "size", arg: 2, scope: !838, file: !839, line: 44, type: !7)
!845 = !DILocation(line: 44, column: 59, scope: !838)
!846 = !DILocation(line: 44, column: 75, scope: !838)
!847 = !DILocation(line: 46, column: 2, scope: !838)
!848 = distinct !DISubprogram(name: "kcsan_check_access", scope: !849, file: !849, line: 229, type: !850, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !852)
!849 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!850 = !DISubroutineType(types: !851)
!851 = !{null, !814, !289, !67}
!852 = !{!853, !854, !855}
!853 = !DILocalVariable(name: "ptr", arg: 1, scope: !848, file: !849, line: 229, type: !814)
!854 = !DILocalVariable(name: "size", arg: 2, scope: !848, file: !849, line: 229, type: !289)
!855 = !DILocalVariable(name: "type", arg: 3, scope: !848, file: !849, line: 230, type: !67)
!856 = !DILocation(line: 229, column: 60, scope: !848)
!857 = !DILocation(line: 229, column: 72, scope: !848)
!858 = !DILocation(line: 230, column: 15, scope: !848)
!859 = !DILocation(line: 230, column: 23, scope: !848)
!860 = distinct !DISubprogram(name: "arch_atomic_set", scope: !861, file: !861, line: 26, type: !796, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !862)
!861 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!862 = !{!863, !864}
!863 = !DILocalVariable(name: "v", arg: 1, scope: !860, file: !861, line: 26, type: !798)
!864 = !DILocalVariable(name: "i", arg: 2, scope: !860, file: !861, line: 26, type: !67)
!865 = !DILocation(line: 26, column: 55, scope: !860)
!866 = !DILocation(line: 26, column: 62, scope: !860)
!867 = !DILocation(line: 28, column: 2, scope: !860)
!868 = !DILocation(line: 28, column: 2, scope: !869)
!869 = distinct !DILexicalBlock(scope: !860, file: !861, line: 28, column: 2)
!870 = !DILocation(line: 29, column: 1, scope: !860)
