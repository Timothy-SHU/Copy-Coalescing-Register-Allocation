; ModuleID = 'drivers/net/phy/linkmode.c'
source_filename = "drivers/net/phy/linkmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_linkmode_resolve_pause: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad linkmode_resolve_pause ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_linkmode_set_pause: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad linkmode_set_pause ; .previous"

@__UNIQUE_ID___addressable_linkmode_resolve_pause338 = internal global ptr @linkmode_resolve_pause, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_linkmode_set_pause339 = internal global ptr @linkmode_set_pause, section ".discard.addressable", align 8, !dbg !129
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_linkmode_resolve_pause338, ptr @__UNIQUE_ID___addressable_linkmode_set_pause339], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @linkmode_resolve_pause(ptr noundef %local_adv, ptr noundef %partner_adv, ptr noundef %tx_pause, ptr noundef %rx_pause) #0 align 16 !dbg !140 {
entry:
  %local_adv.addr = alloca ptr, align 8
  %partner_adv.addr = alloca ptr, align 8
  %tx_pause.addr = alloca ptr, align 8
  %rx_pause.addr = alloca ptr, align 8
  %m = alloca [2 x i64], align 16
  store ptr %local_adv, ptr %local_adv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %local_adv.addr, metadata !147, metadata !DIExpression()), !dbg !155
  store ptr %partner_adv, ptr %partner_adv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %partner_adv.addr, metadata !148, metadata !DIExpression()), !dbg !156
  store ptr %tx_pause, ptr %tx_pause.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tx_pause.addr, metadata !149, metadata !DIExpression()), !dbg !157
  store ptr %rx_pause, ptr %rx_pause.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rx_pause.addr, metadata !150, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 16, ptr %m) #8, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %m, metadata !151, metadata !DIExpression()), !dbg !159
  %arraydecay = getelementptr inbounds [2 x i64], ptr %m, i64 0, i64 0, !dbg !160
  %0 = load ptr, ptr %local_adv.addr, align 8, !dbg !161
  %1 = load ptr, ptr %partner_adv.addr, align 8, !dbg !162
  call void @linkmode_and(ptr noundef %arraydecay, ptr noundef %0, ptr noundef %1) #9, !dbg !163
  %arraydecay1 = getelementptr inbounds [2 x i64], ptr %m, i64 0, i64 0, !dbg !164
  %call = call i32 @linkmode_test_bit(i32 noundef 13, ptr noundef %arraydecay1) #9, !dbg !166
  %tobool = icmp ne i32 %call, 0, !dbg !166
  br i1 %tobool, label %if.then, label %if.else, !dbg !167

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tx_pause.addr, align 8, !dbg !168
  store i8 1, ptr %2, align 1, !dbg !170
  %3 = load ptr, ptr %rx_pause.addr, align 8, !dbg !171
  store i8 1, ptr %3, align 1, !dbg !172
  br label %if.end12, !dbg !173

if.else:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %m, i64 0, i64 0, !dbg !174
  %call3 = call i32 @linkmode_test_bit(i32 noundef 14, ptr noundef %arraydecay2) #9, !dbg !176
  %tobool4 = icmp ne i32 %call3, 0, !dbg !176
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !177

if.then5:                                         ; preds = %if.else
  %4 = load ptr, ptr %partner_adv.addr, align 8, !dbg !178
  %call6 = call i32 @linkmode_test_bit(i32 noundef 13, ptr noundef %4) #9, !dbg !180
  %tobool7 = icmp ne i32 %call6, 0, !dbg !180
  %5 = load ptr, ptr %tx_pause.addr, align 8, !dbg !181
  %frombool = zext i1 %tobool7 to i8, !dbg !182
  store i8 %frombool, ptr %5, align 1, !dbg !182
  %6 = load ptr, ptr %local_adv.addr, align 8, !dbg !183
  %call8 = call i32 @linkmode_test_bit(i32 noundef 13, ptr noundef %6) #9, !dbg !184
  %tobool9 = icmp ne i32 %call8, 0, !dbg !184
  %7 = load ptr, ptr %rx_pause.addr, align 8, !dbg !185
  %frombool10 = zext i1 %tobool9 to i8, !dbg !186
  store i8 %frombool10, ptr %7, align 1, !dbg !186
  br label %if.end, !dbg !187

if.else11:                                        ; preds = %if.else
  %8 = load ptr, ptr %tx_pause.addr, align 8, !dbg !188
  store i8 0, ptr %8, align 1, !dbg !190
  %9 = load ptr, ptr %rx_pause.addr, align 8, !dbg !191
  store i8 0, ptr %9, align 1, !dbg !192
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %m) #8, !dbg !193
  ret void, !dbg !193
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @linkmode_and(ptr noundef %dst, ptr noundef %a, ptr noundef %b) #3 align 16 !dbg !194 {
entry:
  %dst.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !199, metadata !DIExpression()), !dbg !202
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !200, metadata !DIExpression()), !dbg !203
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !201, metadata !DIExpression()), !dbg !204
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !205
  %1 = load ptr, ptr %a.addr, align 8, !dbg !206
  %2 = load ptr, ptr %b.addr, align 8, !dbg !207
  %call = call zeroext i1 @bitmap_and(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 102) #9, !dbg !208
  ret void, !dbg !209
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @linkmode_test_bit(i32 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !210 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !218, metadata !DIExpression()), !dbg !220
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !219, metadata !DIExpression()), !dbg !221
  %0 = load i32, ptr %nr.addr, align 4, !dbg !222
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !222
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !222

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !222
  %3 = ptrtoint ptr %2 to i64, !dbg !222
  %cmp = icmp ne i64 %3, 0, !dbg !222
  %conv = zext i1 %cmp to i32, !dbg !222
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !222
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !222

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !222
  %6 = ptrtoint ptr %5 to i64, !dbg !222
  %cmp2 = icmp ne i64 %6, 0, !dbg !222
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !222

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !222
  %8 = load i64, ptr %7, align 8, !dbg !222
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !222
  br i1 %9, label %cond.true, label %cond.false, !dbg !222

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load i32, ptr %nr.addr, align 4, !dbg !222
  %conv5 = sext i32 %10 to i64, !dbg !222
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !222
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv5, ptr noundef %11) #9, !dbg !222
  %conv6 = zext i1 %call to i32, !dbg !222
  br label %cond.end, !dbg !222

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %nr.addr, align 4, !dbg !222
  %conv7 = sext i32 %12 to i64, !dbg !222
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !222
  %call8 = call zeroext i1 @_test_bit(i64 noundef %conv7, ptr noundef %13) #9, !dbg !222
  %conv9 = zext i1 %call8 to i32, !dbg !222
  br label %cond.end, !dbg !222

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv6, %cond.true ], [ %conv9, %cond.false ], !dbg !222
  ret i32 %cond, !dbg !223
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @linkmode_set_pause(ptr noundef %advertisement, i1 noundef zeroext %tx, i1 noundef zeroext %rx) #0 align 16 !dbg !224 {
entry:
  %advertisement.addr = alloca ptr, align 8
  %tx.addr = alloca i8, align 1
  %rx.addr = alloca i8, align 1
  store ptr %advertisement, ptr %advertisement.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %advertisement.addr, metadata !228, metadata !DIExpression()), !dbg !231
  %frombool = zext i1 %tx to i8
  store i8 %frombool, ptr %tx.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tx.addr, metadata !229, metadata !DIExpression()), !dbg !232
  %frombool1 = zext i1 %rx to i8
  store i8 %frombool1, ptr %rx.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rx.addr, metadata !230, metadata !DIExpression()), !dbg !233
  %0 = load ptr, ptr %advertisement.addr, align 8, !dbg !234
  %1 = load i8, ptr %rx.addr, align 1, !dbg !235, !range !236, !noundef !237
  %tobool = trunc i8 %1 to i1, !dbg !235
  %conv = zext i1 %tobool to i32, !dbg !235
  call void @linkmode_mod_bit(i32 noundef 13, ptr noundef %0, i32 noundef %conv) #9, !dbg !238
  %2 = load ptr, ptr %advertisement.addr, align 8, !dbg !239
  %3 = load i8, ptr %rx.addr, align 1, !dbg !240, !range !236, !noundef !237
  %tobool2 = trunc i8 %3 to i1, !dbg !240
  %conv3 = zext i1 %tobool2 to i32, !dbg !240
  %4 = load i8, ptr %tx.addr, align 1, !dbg !241, !range !236, !noundef !237
  %tobool4 = trunc i8 %4 to i1, !dbg !241
  %conv5 = zext i1 %tobool4 to i32, !dbg !241
  %xor = xor i32 %conv3, %conv5, !dbg !242
  call void @linkmode_mod_bit(i32 noundef 14, ptr noundef %2, i32 noundef %xor) #9, !dbg !243
  ret void, !dbg !244
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @linkmode_mod_bit(i32 noundef %nr, ptr noundef %addr, i32 noundef %set) #3 align 16 !dbg !245 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %set.addr = alloca i32, align 4
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !250, metadata !DIExpression()), !dbg !253
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !251, metadata !DIExpression()), !dbg !254
  store i32 %set, ptr %set.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !252, metadata !DIExpression()), !dbg !255
  %0 = load i32, ptr %set.addr, align 4, !dbg !256
  %tobool = icmp ne i32 %0, 0, !dbg !256
  br i1 %tobool, label %if.then, label %if.else, !dbg !258

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %nr.addr, align 4, !dbg !259
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !260
  call void @linkmode_set_bit(i32 noundef %1, ptr noundef %2) #9, !dbg !261
  br label %if.end, !dbg !261

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %nr.addr, align 4, !dbg !262
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !263
  call void @linkmode_clear_bit(i32 noundef %3, ptr noundef %4) #9, !dbg !264
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !265
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_and(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #3 align 16 !dbg !266 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !271, metadata !DIExpression()), !dbg !275
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !272, metadata !DIExpression()), !dbg !276
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !273, metadata !DIExpression()), !dbg !277
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !274, metadata !DIExpression()), !dbg !278
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !279
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !279
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !279

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !279
  %cmp = icmp ule i32 %2, 64, !dbg !279
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !279

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !279
  %cmp2 = icmp ugt i32 %3, 0, !dbg !279
  br i1 %cmp2, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !282
  %5 = load i64, ptr %4, align 8, !dbg !283
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !284
  %7 = load i64, ptr %6, align 8, !dbg !285
  %and = and i64 %5, %7, !dbg !286
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !287
  %sub = sub i32 0, %8, !dbg !287
  %and3 = and i32 %sub, 63, !dbg !287
  %sh_prom = zext i32 %and3 to i64, !dbg !287
  %shr = lshr i64 -1, %sh_prom, !dbg !287
  %and4 = and i64 %and, %shr, !dbg !288
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !289
  store i64 %and4, ptr %9, align 8, !dbg !290
  %cmp5 = icmp ne i64 %and4, 0, !dbg !291
  store i1 %cmp5, ptr %retval, align 1, !dbg !292
  br label %return, !dbg !292

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !293
  %11 = load ptr, ptr %src1.addr, align 8, !dbg !294
  %12 = load ptr, ptr %src2.addr, align 8, !dbg !295
  %13 = load i32, ptr %nbits.addr, align 4, !dbg !296
  %call = call zeroext i1 @__bitmap_and(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %13) #9, !dbg !297
  store i1 %call, ptr %retval, align 1, !dbg !298
  br label %return, !dbg !298

return:                                           ; preds = %if.end, %if.then
  %14 = load i1, ptr %retval, align 1, !dbg !299
  ret i1 %14, !dbg !299
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !300 dso_local zeroext i1 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !301 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !306, metadata !DIExpression()), !dbg !311
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !307, metadata !DIExpression()), !dbg !312
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %p, metadata !308, metadata !DIExpression()), !dbg !314
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !315
  %1 = load i64, ptr %nr.addr, align 8, !dbg !316
  %div = udiv i64 %1, 64, !dbg !316
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !317
  store ptr %add.ptr, ptr %p, align 8, !dbg !314
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #8, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !309, metadata !DIExpression()), !dbg !319
  %2 = load i64, ptr %nr.addr, align 8, !dbg !320
  %rem = urem i64 %2, 64, !dbg !320
  %shl = shl i64 1, %rem, !dbg !320
  store i64 %shl, ptr %mask, align 8, !dbg !319
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %val, metadata !310, metadata !DIExpression()), !dbg !322
  %3 = load ptr, ptr %p, align 8, !dbg !323
  %4 = load i64, ptr %3, align 8, !dbg !324
  store i64 %4, ptr %val, align 8, !dbg !322
  %5 = load i64, ptr %val, align 8, !dbg !325
  %6 = load i64, ptr %mask, align 8, !dbg !326
  %and = and i64 %5, %6, !dbg !327
  %tobool = icmp ne i64 %and, 0, !dbg !328
  %lnot = xor i1 %tobool, true, !dbg !328
  %lnot1 = xor i1 %lnot, true, !dbg !329
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #8, !dbg !330
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !330
  ret i1 %lnot1, !dbg !331
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !332 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !335, metadata !DIExpression()), !dbg !337
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !336, metadata !DIExpression()), !dbg !338
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !339
  %1 = load i64, ptr %nr.addr, align 8, !dbg !340
  %div = udiv i64 %1, 64, !dbg !340
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !341
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !342
  %2 = load i64, ptr %nr.addr, align 8, !dbg !343
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !344
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !345
  ret i1 %call, !dbg !346
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !347 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !359, metadata !DIExpression()), !dbg !361
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !360, metadata !DIExpression()), !dbg !362
  %0 = load ptr, ptr %v.addr, align 8, !dbg !363
  %1 = load i64, ptr %size.addr, align 8, !dbg !364
  %conv = trunc i64 %1 to i32, !dbg !364
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !365
  %2 = load ptr, ptr %v.addr, align 8, !dbg !366
  %3 = load i64, ptr %size.addr, align 8, !dbg !366
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !366
  ret void, !dbg !367
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !368 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !371, metadata !DIExpression()), !dbg !373
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !372, metadata !DIExpression()), !dbg !374
  %0 = load i64, ptr %nr.addr, align 8, !dbg !375
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !376
  br i1 %1, label %cond.true, label %cond.false, !dbg !376

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !377
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !378
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !379
  %conv = zext i1 %call to i32, !dbg !379
  br label %cond.end, !dbg !376

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !380
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !381
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #9, !dbg !382
  %conv2 = zext i1 %call1 to i32, !dbg !382
  br label %cond.end, !dbg !376

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !376
  %tobool = icmp ne i32 %cond, 0, !dbg !376
  ret i1 %tobool, !dbg !383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !384 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !389, metadata !DIExpression()), !dbg !391
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !390, metadata !DIExpression()), !dbg !392
  ret i1 true, !dbg !393
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !394 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !399, metadata !DIExpression()), !dbg !402
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !400, metadata !DIExpression()), !dbg !403
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !401, metadata !DIExpression()), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !406 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !410, metadata !DIExpression()), !dbg !412
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !411, metadata !DIExpression()), !dbg !413
  %0 = load i64, ptr %nr.addr, align 8, !dbg !414
  %and = and i64 %0, 63, !dbg !415
  %shl = shl i64 1, %and, !dbg !416
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !417
  %2 = load i64, ptr %nr.addr, align 8, !dbg !418
  %shr = ashr i64 %2, 6, !dbg !419
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !417
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !417
  %and1 = and i64 %shl, %3, !dbg !420
  %cmp = icmp ne i64 %and1, 0, !dbg !421
  ret i1 %cmp, !dbg !422
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !423 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !425, metadata !DIExpression()), !dbg !428
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !426, metadata !DIExpression()), !dbg !429
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #8, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !427, metadata !DIExpression()), !dbg !431
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !432
  %1 = load i64, ptr %nr.addr, align 8, !dbg !433
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #8, !dbg !434, !srcloc !435
  %3 = icmp ult i8 %2, 2, !dbg !434
  call void @llvm.assume(i1 %3), !dbg !434
  store i8 %2, ptr %oldbit, align 1, !dbg !434
  %4 = load i8, ptr %oldbit, align 1, !dbg !436, !range !236, !noundef !237
  %tobool = trunc i8 %4 to i1, !dbg !436
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #8, !dbg !437
  ret i1 %tobool, !dbg !438
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @linkmode_set_bit(i32 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !439 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !443, metadata !DIExpression()), !dbg !445
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !444, metadata !DIExpression()), !dbg !446
  %0 = load i32, ptr %nr.addr, align 4, !dbg !447
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !447
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !447

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !447
  %3 = ptrtoint ptr %2 to i64, !dbg !447
  %cmp = icmp ne i64 %3, 0, !dbg !447
  %conv = zext i1 %cmp to i32, !dbg !447
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !447
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !447

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !447
  %6 = ptrtoint ptr %5 to i64, !dbg !447
  %cmp2 = icmp ne i64 %6, 0, !dbg !447
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !447

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !447
  %8 = load i64, ptr %7, align 8, !dbg !447
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !447
  br i1 %9, label %cond.true, label %cond.false, !dbg !447

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load i32, ptr %nr.addr, align 4, !dbg !447
  %conv5 = sext i32 %10 to i64, !dbg !447
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !447
  call void @generic___set_bit(i64 noundef %conv5, ptr noundef %11) #9, !dbg !447
  br label %cond.end, !dbg !447

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %nr.addr, align 4, !dbg !447
  %conv6 = sext i32 %12 to i64, !dbg !447
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !447
  call void @___set_bit(i64 noundef %conv6, ptr noundef %13) #9, !dbg !447
  br label %cond.end, !dbg !447

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void, !dbg !448
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @linkmode_clear_bit(i32 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !449 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !451, metadata !DIExpression()), !dbg !453
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !452, metadata !DIExpression()), !dbg !454
  %0 = load i32, ptr %nr.addr, align 4, !dbg !455
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !455
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !455

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !455
  %3 = ptrtoint ptr %2 to i64, !dbg !455
  %cmp = icmp ne i64 %3, 0, !dbg !455
  %conv = zext i1 %cmp to i32, !dbg !455
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !455
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !455

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !455
  %6 = ptrtoint ptr %5 to i64, !dbg !455
  %cmp2 = icmp ne i64 %6, 0, !dbg !455
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !455

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !455
  %8 = load i64, ptr %7, align 8, !dbg !455
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !455
  br i1 %9, label %cond.true, label %cond.false, !dbg !455

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load i32, ptr %nr.addr, align 4, !dbg !455
  %conv5 = sext i32 %10 to i64, !dbg !455
  %11 = load ptr, ptr %addr.addr, align 8, !dbg !455
  call void @generic___clear_bit(i64 noundef %conv5, ptr noundef %11) #9, !dbg !455
  br label %cond.end, !dbg !455

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %nr.addr, align 4, !dbg !455
  %conv6 = sext i32 %12 to i64, !dbg !455
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !455
  call void @___clear_bit(i64 noundef %conv6, ptr noundef %13) #9, !dbg !455
  br label %cond.end, !dbg !455

cond.end:                                         ; preds = %cond.false, %cond.true
  ret void, !dbg !456
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !457 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !461, metadata !DIExpression()), !dbg !465
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !462, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #8, !dbg !467
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !463, metadata !DIExpression()), !dbg !468
  %0 = load i64, ptr %nr.addr, align 8, !dbg !469
  %rem = urem i64 %0, 64, !dbg !469
  %shl = shl i64 1, %rem, !dbg !469
  store i64 %shl, ptr %mask, align 8, !dbg !468
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !470
  call void @llvm.dbg.declare(metadata ptr %p, metadata !464, metadata !DIExpression()), !dbg !471
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !472
  %2 = load i64, ptr %nr.addr, align 8, !dbg !473
  %div = udiv i64 %2, 64, !dbg !473
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !474
  store ptr %add.ptr, ptr %p, align 8, !dbg !471
  %3 = load i64, ptr %mask, align 8, !dbg !475
  %4 = load ptr, ptr %p, align 8, !dbg !476
  %5 = load i64, ptr %4, align 8, !dbg !477
  %or = or i64 %5, %3, !dbg !477
  store i64 %or, ptr %4, align 8, !dbg !477
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !478
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #8, !dbg !478
  ret void, !dbg !478
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !479 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !481, metadata !DIExpression()), !dbg !483
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !482, metadata !DIExpression()), !dbg !484
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !485
  %1 = load i64, ptr %nr.addr, align 8, !dbg !486
  %div = udiv i64 %1, 64, !dbg !486
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !487
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !488
  %2 = load i64, ptr %nr.addr, align 8, !dbg !489
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !490
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !491
  ret void, !dbg !492
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !493 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !495, metadata !DIExpression()), !dbg !497
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !496, metadata !DIExpression()), !dbg !498
  %0 = load ptr, ptr %v.addr, align 8, !dbg !499
  %1 = load i64, ptr %size.addr, align 8, !dbg !500
  %conv = trunc i64 %1 to i32, !dbg !500
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !501
  %2 = load ptr, ptr %v.addr, align 8, !dbg !502
  %3 = load i64, ptr %size.addr, align 8, !dbg !502
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #9, !dbg !502
  ret void, !dbg !503
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !504 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !506, metadata !DIExpression()), !dbg !508
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !507, metadata !DIExpression()), !dbg !509
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !510
  %1 = load i64, ptr %nr.addr, align 8, !dbg !511
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #8, !dbg !512, !srcloc !513
  ret void, !dbg !514
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !515 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !517, metadata !DIExpression()), !dbg !519
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !518, metadata !DIExpression()), !dbg !520
  ret i1 true, !dbg !521
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !522 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !524, metadata !DIExpression()), !dbg !528
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !525, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #8, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !526, metadata !DIExpression()), !dbg !531
  %0 = load i64, ptr %nr.addr, align 8, !dbg !532
  %rem = urem i64 %0, 64, !dbg !532
  %shl = shl i64 1, %rem, !dbg !532
  store i64 %shl, ptr %mask, align 8, !dbg !531
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %p, metadata !527, metadata !DIExpression()), !dbg !534
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !535
  %2 = load i64, ptr %nr.addr, align 8, !dbg !536
  %div = udiv i64 %2, 64, !dbg !536
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !537
  store ptr %add.ptr, ptr %p, align 8, !dbg !534
  %3 = load i64, ptr %mask, align 8, !dbg !538
  %not = xor i64 %3, -1, !dbg !539
  %4 = load ptr, ptr %p, align 8, !dbg !540
  %5 = load i64, ptr %4, align 8, !dbg !541
  %and = and i64 %5, %not, !dbg !541
  store i64 %and, ptr %4, align 8, !dbg !541
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !542
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #8, !dbg !542
  ret void, !dbg !542
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !543 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !545, metadata !DIExpression()), !dbg !547
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !546, metadata !DIExpression()), !dbg !548
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !549
  %1 = load i64, ptr %nr.addr, align 8, !dbg !550
  %div = udiv i64 %1, 64, !dbg !550
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !551
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !552
  %2 = load i64, ptr %nr.addr, align 8, !dbg !553
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !554
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !555
  ret void, !dbg !556
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !557 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !559, metadata !DIExpression()), !dbg !561
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !560, metadata !DIExpression()), !dbg !562
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !563
  %1 = load i64, ptr %nr.addr, align 8, !dbg !564
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #8, !dbg !565, !srcloc !566
  ret void, !dbg !567
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_linkmode_resolve_pause338", scope: !2, file: !3, line: 44, type: !118, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/net/phy/.linkmode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/net/phy/libphy\22 -D KBUILD_BASENAME=\22linkmode\22 -D KBUILD_MODNAME=\22libphy\22 -D __KBUILD_MODNAME=kmod_libphy -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/net/phy/linkmode.ll drivers/net/phy/linkmode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !117, globals: !128, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/net/phy/linkmode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e73007f42918a5d1d9d2c038754169f")
!4 = !{!5, !112}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ethtool_link_mode_bit_indices", file: !6, line: 1679, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/ethtool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9220d03792ac517f4e9c9f8e4448f58")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!9 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT_Half_BIT", value: 0)
!10 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT_Full_BIT", value: 1)
!11 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseT_Half_BIT", value: 2)
!12 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseT_Full_BIT", value: 3)
!13 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseT_Half_BIT", value: 4)
!14 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseT_Full_BIT", value: 5)
!15 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Autoneg_BIT", value: 6)
!16 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_TP_BIT", value: 7)
!17 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_AUI_BIT", value: 8)
!18 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_MII_BIT", value: 9)
!19 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FIBRE_BIT", value: 10)
!20 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_BNC_BIT", value: 11)
!21 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseT_Full_BIT", value: 12)
!22 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Pause_BIT", value: 13)
!23 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Asym_Pause_BIT", value: 14)
!24 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_2500baseX_Full_BIT", value: 15)
!25 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_Backplane_BIT", value: 16)
!26 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseKX_Full_BIT", value: 17)
!27 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT", value: 18)
!28 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseKR_Full_BIT", value: 19)
!29 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseR_FEC_BIT", value: 20)
!30 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_20000baseMLD2_Full_BIT", value: 21)
!31 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_20000baseKR2_Full_BIT", value: 22)
!32 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseKR4_Full_BIT", value: 23)
!33 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseCR4_Full_BIT", value: 24)
!34 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseSR4_Full_BIT", value: 25)
!35 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_40000baseLR4_Full_BIT", value: 26)
!36 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseKR4_Full_BIT", value: 27)
!37 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseCR4_Full_BIT", value: 28)
!38 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseSR4_Full_BIT", value: 29)
!39 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_56000baseLR4_Full_BIT", value: 30)
!40 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_25000baseCR_Full_BIT", value: 31)
!41 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_25000baseKR_Full_BIT", value: 32)
!42 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_25000baseSR_Full_BIT", value: 33)
!43 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseCR2_Full_BIT", value: 34)
!44 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseKR2_Full_BIT", value: 35)
!45 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseKR4_Full_BIT", value: 36)
!46 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseSR4_Full_BIT", value: 37)
!47 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseCR4_Full_BIT", value: 38)
!48 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseLR4_ER4_Full_BIT", value: 39)
!49 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseSR2_Full_BIT", value: 40)
!50 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseX_Full_BIT", value: 41)
!51 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseCR_Full_BIT", value: 42)
!52 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseSR_Full_BIT", value: 43)
!53 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseLR_Full_BIT", value: 44)
!54 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseLRM_Full_BIT", value: 45)
!55 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10000baseER_Full_BIT", value: 46)
!56 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_2500baseT_Full_BIT", value: 47)
!57 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_5000baseT_Full_BIT", value: 48)
!58 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_NONE_BIT", value: 49)
!59 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_RS_BIT", value: 50)
!60 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_BASER_BIT", value: 51)
!61 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseKR_Full_BIT", value: 52)
!62 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseSR_Full_BIT", value: 53)
!63 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseCR_Full_BIT", value: 54)
!64 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseLR_ER_FR_Full_BIT", value: 55)
!65 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_50000baseDR_Full_BIT", value: 56)
!66 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseKR2_Full_BIT", value: 57)
!67 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseSR2_Full_BIT", value: 58)
!68 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseCR2_Full_BIT", value: 59)
!69 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseLR2_ER2_FR2_Full_BIT", value: 60)
!70 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseDR2_Full_BIT", value: 61)
!71 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseKR4_Full_BIT", value: 62)
!72 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseSR4_Full_BIT", value: 63)
!73 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseLR4_ER4_FR4_Full_BIT", value: 64)
!74 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseDR4_Full_BIT", value: 65)
!75 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseCR4_Full_BIT", value: 66)
!76 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseT1_Full_BIT", value: 67)
!77 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_1000baseT1_Full_BIT", value: 68)
!78 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseKR8_Full_BIT", value: 69)
!79 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseSR8_Full_BIT", value: 70)
!80 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseLR8_ER8_FR8_Full_BIT", value: 71)
!81 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseDR8_Full_BIT", value: 72)
!82 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseCR8_Full_BIT", value: 73)
!83 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_FEC_LLRS_BIT", value: 74)
!84 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseKR_Full_BIT", value: 75)
!85 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseSR_Full_BIT", value: 76)
!86 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseLR_ER_FR_Full_BIT", value: 77)
!87 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseCR_Full_BIT", value: 78)
!88 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100000baseDR_Full_BIT", value: 79)
!89 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseKR2_Full_BIT", value: 80)
!90 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseSR2_Full_BIT", value: 81)
!91 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseLR2_ER2_FR2_Full_BIT", value: 82)
!92 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseDR2_Full_BIT", value: 83)
!93 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_200000baseCR2_Full_BIT", value: 84)
!94 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseKR4_Full_BIT", value: 85)
!95 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseSR4_Full_BIT", value: 86)
!96 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseLR4_ER4_FR4_Full_BIT", value: 87)
!97 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseDR4_Full_BIT", value: 88)
!98 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_400000baseCR4_Full_BIT", value: 89)
!99 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseFX_Half_BIT", value: 90)
!100 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_100baseFX_Full_BIT", value: 91)
!101 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT1L_Full_BIT", value: 92)
!102 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseCR8_Full_BIT", value: 93)
!103 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseKR8_Full_BIT", value: 94)
!104 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseDR8_Full_BIT", value: 95)
!105 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseDR8_2_Full_BIT", value: 96)
!106 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseSR8_Full_BIT", value: 97)
!107 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_800000baseVR8_Full_BIT", value: 98)
!108 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT1S_Full_BIT", value: 99)
!109 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT1S_Half_BIT", value: 100)
!110 = !DIEnumerator(name: "ETHTOOL_LINK_MODE_10baseT1S_P2MP_Half_BIT", value: 101)
!111 = !DIEnumerator(name: "__ETHTOOL_LINK_MODE_MASK_NBITS", value: 102)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 10, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "false", value: 0)
!116 = !DIEnumerator(name: "true", value: 1)
!117 = !{!118, !119, !122, !124, !125}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !120, line: 42, baseType: !121)
!120 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!121 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !127)
!127 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!128 = !{!0, !129}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_linkmode_set_pause339", scope: !2, file: !3, line: 95, type: !118, isLocal: true, isDefinition: true)
!131 = !{i32 7, !"Dwarf Version", i32 5}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 8, !"cf-protection-branch", i32 1}
!135 = !{i32 4, !"function_return_thunk_extern", i32 1}
!136 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!137 = !{i32 1, !"Code Model", i32 2}
!138 = !{i32 1, !"override-stack-alignment", i32 8}
!139 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!140 = distinct !DISubprogram(name: "linkmode_resolve_pause", scope: !3, file: !3, line: 24, type: !141, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !122, !122, !143, !143}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !120, line: 35, baseType: !145)
!145 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!146 = !{!147, !148, !149, !150, !151}
!147 = !DILocalVariable(name: "local_adv", arg: 1, scope: !140, file: !3, line: 24, type: !122)
!148 = !DILocalVariable(name: "partner_adv", arg: 2, scope: !140, file: !3, line: 25, type: !122)
!149 = !DILocalVariable(name: "tx_pause", arg: 3, scope: !140, file: !3, line: 26, type: !143)
!150 = !DILocalVariable(name: "rx_pause", arg: 4, scope: !140, file: !3, line: 26, type: !143)
!151 = !DILocalVariable(name: "m", scope: !140, file: !3, line: 28, type: !152)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 2)
!155 = !DILocation(line: 24, column: 50, scope: !140)
!156 = !DILocation(line: 25, column: 29, scope: !140)
!157 = !DILocation(line: 26, column: 14, scope: !140)
!158 = !DILocation(line: 26, column: 30, scope: !140)
!159 = !DILocation(line: 28, column: 2, scope: !140)
!160 = !DILocation(line: 30, column: 15, scope: !140)
!161 = !DILocation(line: 30, column: 18, scope: !140)
!162 = !DILocation(line: 30, column: 29, scope: !140)
!163 = !DILocation(line: 30, column: 2, scope: !140)
!164 = !DILocation(line: 31, column: 53, scope: !165)
!165 = distinct !DILexicalBlock(scope: !140, file: !3, line: 31, column: 6)
!166 = !DILocation(line: 31, column: 6, scope: !165)
!167 = !DILocation(line: 31, column: 6, scope: !140)
!168 = !DILocation(line: 32, column: 4, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !3, line: 31, column: 57)
!170 = !DILocation(line: 32, column: 13, scope: !169)
!171 = !DILocation(line: 33, column: 4, scope: !169)
!172 = !DILocation(line: 33, column: 13, scope: !169)
!173 = !DILocation(line: 34, column: 2, scope: !169)
!174 = !DILocation(line: 34, column: 65, scope: !175)
!175 = distinct !DILexicalBlock(scope: !165, file: !3, line: 34, column: 13)
!176 = !DILocation(line: 34, column: 13, scope: !175)
!177 = !DILocation(line: 34, column: 13, scope: !165)
!178 = !DILocation(line: 36, column: 12, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 34, column: 69)
!180 = !DILocation(line: 35, column: 15, scope: !179)
!181 = !DILocation(line: 35, column: 4, scope: !179)
!182 = !DILocation(line: 35, column: 13, scope: !179)
!183 = !DILocation(line: 38, column: 12, scope: !179)
!184 = !DILocation(line: 37, column: 15, scope: !179)
!185 = !DILocation(line: 37, column: 4, scope: !179)
!186 = !DILocation(line: 37, column: 13, scope: !179)
!187 = !DILocation(line: 39, column: 2, scope: !179)
!188 = !DILocation(line: 40, column: 4, scope: !189)
!189 = distinct !DILexicalBlock(scope: !175, file: !3, line: 39, column: 9)
!190 = !DILocation(line: 40, column: 13, scope: !189)
!191 = !DILocation(line: 41, column: 4, scope: !189)
!192 = !DILocation(line: 41, column: 13, scope: !189)
!193 = !DILocation(line: 43, column: 1, scope: !140)
!194 = distinct !DISubprogram(name: "linkmode_and", scope: !195, file: !195, line: 18, type: !196, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !198)
!195 = !DIFile(filename: "./include/linux/linkmode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0ada951065a714be86835f4eaa41ef3")
!196 = !DISubroutineType(types: !197)
!197 = !{null, !124, !122, !122}
!198 = !{!199, !200, !201}
!199 = !DILocalVariable(name: "dst", arg: 1, scope: !194, file: !195, line: 18, type: !124)
!200 = !DILocalVariable(name: "a", arg: 2, scope: !194, file: !195, line: 18, type: !122)
!201 = !DILocalVariable(name: "b", arg: 3, scope: !194, file: !195, line: 19, type: !122)
!202 = !DILocation(line: 18, column: 48, scope: !194)
!203 = !DILocation(line: 18, column: 74, scope: !194)
!204 = !DILocation(line: 19, column: 26, scope: !194)
!205 = !DILocation(line: 21, column: 13, scope: !194)
!206 = !DILocation(line: 21, column: 18, scope: !194)
!207 = !DILocation(line: 21, column: 21, scope: !194)
!208 = !DILocation(line: 21, column: 2, scope: !194)
!209 = !DILocation(line: 22, column: 1, scope: !194)
!210 = distinct !DISubprogram(name: "linkmode_test_bit", scope: !195, file: !195, line: 69, type: !211, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !217)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !213, !214}
!213 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!217 = !{!218, !219}
!218 = !DILocalVariable(name: "nr", arg: 1, scope: !210, file: !195, line: 69, type: !213)
!219 = !DILocalVariable(name: "addr", arg: 2, scope: !210, file: !195, line: 69, type: !214)
!220 = !DILocation(line: 69, column: 41, scope: !210)
!221 = !DILocation(line: 69, column: 75, scope: !210)
!222 = !DILocation(line: 71, column: 9, scope: !210)
!223 = !DILocation(line: 71, column: 2, scope: !210)
!224 = distinct !DISubprogram(name: "linkmode_set_pause", scope: !3, file: !3, line: 89, type: !225, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !124, !144, !144}
!227 = !{!228, !229, !230}
!228 = !DILocalVariable(name: "advertisement", arg: 1, scope: !224, file: !3, line: 89, type: !124)
!229 = !DILocalVariable(name: "tx", arg: 2, scope: !224, file: !3, line: 89, type: !144)
!230 = !DILocalVariable(name: "rx", arg: 3, scope: !224, file: !3, line: 89, type: !144)
!231 = !DILocation(line: 89, column: 40, scope: !224)
!232 = !DILocation(line: 89, column: 60, scope: !224)
!233 = !DILocation(line: 89, column: 69, scope: !224)
!234 = !DILocation(line: 91, column: 48, scope: !224)
!235 = !DILocation(line: 91, column: 63, scope: !224)
!236 = !{i8 0, i8 2}
!237 = !{}
!238 = !DILocation(line: 91, column: 2, scope: !224)
!239 = !DILocation(line: 92, column: 53, scope: !224)
!240 = !DILocation(line: 93, column: 5, scope: !224)
!241 = !DILocation(line: 93, column: 10, scope: !224)
!242 = !DILocation(line: 93, column: 8, scope: !224)
!243 = !DILocation(line: 92, column: 2, scope: !224)
!244 = !DILocation(line: 94, column: 1, scope: !224)
!245 = distinct !DISubprogram(name: "linkmode_mod_bit", scope: !195, file: !195, line: 60, type: !246, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !213, !248, !213}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!249 = !{!250, !251, !252}
!250 = !DILocalVariable(name: "nr", arg: 1, scope: !245, file: !195, line: 60, type: !213)
!251 = !DILocalVariable(name: "addr", arg: 2, scope: !245, file: !195, line: 60, type: !248)
!252 = !DILocalVariable(name: "set", arg: 3, scope: !245, file: !195, line: 61, type: !213)
!253 = !DILocation(line: 60, column: 41, scope: !245)
!254 = !DILocation(line: 60, column: 69, scope: !245)
!255 = !DILocation(line: 61, column: 13, scope: !245)
!256 = !DILocation(line: 63, column: 6, scope: !257)
!257 = distinct !DILexicalBlock(scope: !245, file: !195, line: 63, column: 6)
!258 = !DILocation(line: 63, column: 6, scope: !245)
!259 = !DILocation(line: 64, column: 20, scope: !257)
!260 = !DILocation(line: 64, column: 24, scope: !257)
!261 = !DILocation(line: 64, column: 3, scope: !257)
!262 = !DILocation(line: 66, column: 22, scope: !257)
!263 = !DILocation(line: 66, column: 26, scope: !257)
!264 = !DILocation(line: 66, column: 3, scope: !257)
!265 = !DILocation(line: 67, column: 1, scope: !245)
!266 = distinct !DISubprogram(name: "bitmap_and", scope: !267, file: !267, line: 336, type: !268, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !270)
!267 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!268 = !DISubroutineType(types: !269)
!269 = !{!144, !124, !122, !122, !7}
!270 = !{!271, !272, !273, !274}
!271 = !DILocalVariable(name: "dst", arg: 1, scope: !266, file: !267, line: 336, type: !124)
!272 = !DILocalVariable(name: "src1", arg: 2, scope: !266, file: !267, line: 336, type: !122)
!273 = !DILocalVariable(name: "src2", arg: 3, scope: !266, file: !267, line: 337, type: !122)
!274 = !DILocalVariable(name: "nbits", arg: 4, scope: !266, file: !267, line: 337, type: !7)
!275 = !DILocation(line: 336, column: 46, scope: !266)
!276 = !DILocation(line: 336, column: 72, scope: !266)
!277 = !DILocation(line: 337, column: 25, scope: !266)
!278 = !DILocation(line: 337, column: 44, scope: !266)
!279 = !DILocation(line: 339, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !266, file: !267, line: 339, column: 6)
!281 = !DILocation(line: 339, column: 6, scope: !266)
!282 = !DILocation(line: 340, column: 19, scope: !280)
!283 = !DILocation(line: 340, column: 18, scope: !280)
!284 = !DILocation(line: 340, column: 27, scope: !280)
!285 = !DILocation(line: 340, column: 26, scope: !280)
!286 = !DILocation(line: 340, column: 24, scope: !280)
!287 = !DILocation(line: 340, column: 34, scope: !280)
!288 = !DILocation(line: 340, column: 32, scope: !280)
!289 = !DILocation(line: 340, column: 12, scope: !280)
!290 = !DILocation(line: 340, column: 16, scope: !280)
!291 = !DILocation(line: 340, column: 64, scope: !280)
!292 = !DILocation(line: 340, column: 3, scope: !280)
!293 = !DILocation(line: 341, column: 22, scope: !266)
!294 = !DILocation(line: 341, column: 27, scope: !266)
!295 = !DILocation(line: 341, column: 33, scope: !266)
!296 = !DILocation(line: 341, column: 39, scope: !266)
!297 = !DILocation(line: 341, column: 9, scope: !266)
!298 = !DILocation(line: 341, column: 2, scope: !266)
!299 = !DILocation(line: 342, column: 1, scope: !266)
!300 = !DISubprogram(name: "__bitmap_and", scope: !267, file: !267, line: 156, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = distinct !DISubprogram(name: "const_test_bit", scope: !302, file: !302, line: 166, type: !303, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!302 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!303 = !DISubroutineType(types: !304)
!304 = !{!144, !121, !214}
!305 = !{!306, !307, !308, !309, !310}
!306 = !DILocalVariable(name: "nr", arg: 1, scope: !301, file: !302, line: 166, type: !121)
!307 = !DILocalVariable(name: "addr", arg: 2, scope: !301, file: !302, line: 166, type: !214)
!308 = !DILocalVariable(name: "p", scope: !301, file: !302, line: 168, type: !122)
!309 = !DILocalVariable(name: "mask", scope: !301, file: !302, line: 169, type: !121)
!310 = !DILocalVariable(name: "val", scope: !301, file: !302, line: 170, type: !121)
!311 = !DILocation(line: 166, column: 30, scope: !301)
!312 = !DILocation(line: 166, column: 64, scope: !301)
!313 = !DILocation(line: 168, column: 2, scope: !301)
!314 = !DILocation(line: 168, column: 23, scope: !301)
!315 = !DILocation(line: 168, column: 50, scope: !301)
!316 = !DILocation(line: 168, column: 57, scope: !301)
!317 = !DILocation(line: 168, column: 55, scope: !301)
!318 = !DILocation(line: 169, column: 2, scope: !301)
!319 = !DILocation(line: 169, column: 16, scope: !301)
!320 = !DILocation(line: 169, column: 23, scope: !301)
!321 = !DILocation(line: 170, column: 2, scope: !301)
!322 = !DILocation(line: 170, column: 16, scope: !301)
!323 = !DILocation(line: 170, column: 23, scope: !301)
!324 = !DILocation(line: 170, column: 22, scope: !301)
!325 = !DILocation(line: 172, column: 12, scope: !301)
!326 = !DILocation(line: 172, column: 18, scope: !301)
!327 = !DILocation(line: 172, column: 16, scope: !301)
!328 = !DILocation(line: 172, column: 10, scope: !301)
!329 = !DILocation(line: 172, column: 9, scope: !301)
!330 = !DILocation(line: 173, column: 1, scope: !301)
!331 = !DILocation(line: 172, column: 2, scope: !301)
!332 = distinct !DISubprogram(name: "_test_bit", scope: !333, file: !333, line: 139, type: !303, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!333 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!334 = !{!335, !336}
!335 = !DILocalVariable(name: "nr", arg: 1, scope: !332, file: !333, line: 139, type: !121)
!336 = !DILocalVariable(name: "addr", arg: 2, scope: !332, file: !333, line: 139, type: !214)
!337 = !DILocation(line: 139, column: 25, scope: !332)
!338 = !DILocation(line: 139, column: 59, scope: !332)
!339 = !DILocation(line: 141, column: 25, scope: !332)
!340 = !DILocation(line: 141, column: 32, scope: !332)
!341 = !DILocation(line: 141, column: 30, scope: !332)
!342 = !DILocation(line: 141, column: 2, scope: !332)
!343 = !DILocation(line: 142, column: 23, scope: !332)
!344 = !DILocation(line: 142, column: 27, scope: !332)
!345 = !DILocation(line: 142, column: 9, scope: !332)
!346 = !DILocation(line: 142, column: 2, scope: !332)
!347 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !348, file: !348, line: 66, type: !349, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !358)
!348 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351, !354}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 61, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !356, line: 72, baseType: !357)
!356 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !356, line: 16, baseType: !121)
!358 = !{!359, !360}
!359 = !DILocalVariable(name: "v", arg: 1, scope: !347, file: !348, line: 66, type: !351)
!360 = !DILocalVariable(name: "size", arg: 2, scope: !347, file: !348, line: 66, type: !354)
!361 = !DILocation(line: 66, column: 73, scope: !347)
!362 = !DILocation(line: 66, column: 83, scope: !347)
!363 = !DILocation(line: 68, column: 19, scope: !347)
!364 = !DILocation(line: 68, column: 22, scope: !347)
!365 = !DILocation(line: 68, column: 2, scope: !347)
!366 = !DILocation(line: 69, column: 2, scope: !347)
!367 = !DILocation(line: 70, column: 1, scope: !347)
!368 = distinct !DISubprogram(name: "arch_test_bit", scope: !369, file: !369, line: 237, type: !303, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !370)
!369 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!370 = !{!371, !372}
!371 = !DILocalVariable(name: "nr", arg: 1, scope: !368, file: !369, line: 237, type: !121)
!372 = !DILocalVariable(name: "addr", arg: 2, scope: !368, file: !369, line: 237, type: !214)
!373 = !DILocation(line: 237, column: 29, scope: !368)
!374 = !DILocation(line: 237, column: 63, scope: !368)
!375 = !DILocation(line: 239, column: 30, scope: !368)
!376 = !DILocation(line: 239, column: 9, scope: !368)
!377 = !DILocation(line: 239, column: 54, scope: !368)
!378 = !DILocation(line: 239, column: 58, scope: !368)
!379 = !DILocation(line: 239, column: 36, scope: !368)
!380 = !DILocation(line: 240, column: 26, scope: !368)
!381 = !DILocation(line: 240, column: 30, scope: !368)
!382 = !DILocation(line: 240, column: 8, scope: !368)
!383 = !DILocation(line: 239, column: 2, scope: !368)
!384 = distinct !DISubprogram(name: "kasan_check_read", scope: !385, file: !385, line: 40, type: !386, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !388)
!385 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!386 = !DISubroutineType(types: !387)
!387 = !{!144, !351, !7}
!388 = !{!389, !390}
!389 = !DILocalVariable(name: "p", arg: 1, scope: !384, file: !385, line: 40, type: !351)
!390 = !DILocalVariable(name: "size", arg: 2, scope: !384, file: !385, line: 40, type: !7)
!391 = !DILocation(line: 40, column: 58, scope: !384)
!392 = !DILocation(line: 40, column: 74, scope: !384)
!393 = !DILocation(line: 42, column: 2, scope: !384)
!394 = distinct !DISubprogram(name: "kcsan_check_access", scope: !395, file: !395, line: 229, type: !396, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !398)
!395 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!396 = !DISubroutineType(types: !397)
!397 = !{null, !351, !354, !213}
!398 = !{!399, !400, !401}
!399 = !DILocalVariable(name: "ptr", arg: 1, scope: !394, file: !395, line: 229, type: !351)
!400 = !DILocalVariable(name: "size", arg: 2, scope: !394, file: !395, line: 229, type: !354)
!401 = !DILocalVariable(name: "type", arg: 3, scope: !394, file: !395, line: 230, type: !213)
!402 = !DILocation(line: 229, column: 60, scope: !394)
!403 = !DILocation(line: 229, column: 72, scope: !394)
!404 = !DILocation(line: 230, column: 15, scope: !394)
!405 = !DILocation(line: 230, column: 23, scope: !394)
!406 = distinct !DISubprogram(name: "constant_test_bit", scope: !369, file: !369, line: 204, type: !407, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!144, !127, !214}
!409 = !{!410, !411}
!410 = !DILocalVariable(name: "nr", arg: 1, scope: !406, file: !369, line: 204, type: !127)
!411 = !DILocalVariable(name: "addr", arg: 2, scope: !406, file: !369, line: 204, type: !214)
!412 = !DILocation(line: 204, column: 52, scope: !406)
!413 = !DILocation(line: 204, column: 86, scope: !406)
!414 = !DILocation(line: 206, column: 19, scope: !406)
!415 = !DILocation(line: 206, column: 22, scope: !406)
!416 = !DILocation(line: 206, column: 15, scope: !406)
!417 = !DILocation(line: 207, column: 4, scope: !406)
!418 = !DILocation(line: 207, column: 9, scope: !406)
!419 = !DILocation(line: 207, column: 12, scope: !406)
!420 = !DILocation(line: 206, column: 44, scope: !406)
!421 = !DILocation(line: 207, column: 37, scope: !406)
!422 = !DILocation(line: 206, column: 2, scope: !406)
!423 = distinct !DISubprogram(name: "variable_test_bit", scope: !369, file: !369, line: 224, type: !407, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!424 = !{!425, !426, !427}
!425 = !DILocalVariable(name: "nr", arg: 1, scope: !423, file: !369, line: 224, type: !127)
!426 = !DILocalVariable(name: "addr", arg: 2, scope: !423, file: !369, line: 224, type: !214)
!427 = !DILocalVariable(name: "oldbit", scope: !423, file: !369, line: 226, type: !144)
!428 = !DILocation(line: 224, column: 52, scope: !423)
!429 = !DILocation(line: 224, column: 86, scope: !423)
!430 = !DILocation(line: 226, column: 2, scope: !423)
!431 = !DILocation(line: 226, column: 7, scope: !423)
!432 = !DILocation(line: 231, column: 33, scope: !423)
!433 = !DILocation(line: 231, column: 46, scope: !423)
!434 = !DILocation(line: 228, column: 2, scope: !423)
!435 = !{i64 2147781757, i64 2147781831}
!436 = !DILocation(line: 233, column: 9, scope: !423)
!437 = !DILocation(line: 234, column: 1, scope: !423)
!438 = !DILocation(line: 233, column: 2, scope: !423)
!439 = distinct !DISubprogram(name: "linkmode_set_bit", scope: !195, file: !195, line: 41, type: !440, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !213, !248}
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "nr", arg: 1, scope: !439, file: !195, line: 41, type: !213)
!444 = !DILocalVariable(name: "addr", arg: 2, scope: !439, file: !195, line: 41, type: !248)
!445 = !DILocation(line: 41, column: 41, scope: !439)
!446 = !DILocation(line: 41, column: 69, scope: !439)
!447 = !DILocation(line: 43, column: 2, scope: !439)
!448 = !DILocation(line: 44, column: 1, scope: !439)
!449 = distinct !DISubprogram(name: "linkmode_clear_bit", scope: !195, file: !195, line: 55, type: !440, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !450)
!450 = !{!451, !452}
!451 = !DILocalVariable(name: "nr", arg: 1, scope: !449, file: !195, line: 55, type: !213)
!452 = !DILocalVariable(name: "addr", arg: 2, scope: !449, file: !195, line: 55, type: !248)
!453 = !DILocation(line: 55, column: 43, scope: !449)
!454 = !DILocation(line: 55, column: 71, scope: !449)
!455 = !DILocation(line: 57, column: 2, scope: !449)
!456 = !DILocation(line: 58, column: 1, scope: !449)
!457 = distinct !DISubprogram(name: "generic___set_bit", scope: !302, file: !302, line: 28, type: !458, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !121, !248}
!460 = !{!461, !462, !463, !464}
!461 = !DILocalVariable(name: "nr", arg: 1, scope: !457, file: !302, line: 28, type: !121)
!462 = !DILocalVariable(name: "addr", arg: 2, scope: !457, file: !302, line: 28, type: !248)
!463 = !DILocalVariable(name: "mask", scope: !457, file: !302, line: 30, type: !121)
!464 = !DILocalVariable(name: "p", scope: !457, file: !302, line: 31, type: !124)
!465 = !DILocation(line: 28, column: 33, scope: !457)
!466 = !DILocation(line: 28, column: 61, scope: !457)
!467 = !DILocation(line: 30, column: 2, scope: !457)
!468 = !DILocation(line: 30, column: 16, scope: !457)
!469 = !DILocation(line: 30, column: 23, scope: !457)
!470 = !DILocation(line: 31, column: 2, scope: !457)
!471 = !DILocation(line: 31, column: 17, scope: !457)
!472 = !DILocation(line: 31, column: 39, scope: !457)
!473 = !DILocation(line: 31, column: 47, scope: !457)
!474 = !DILocation(line: 31, column: 45, scope: !457)
!475 = !DILocation(line: 33, column: 9, scope: !457)
!476 = !DILocation(line: 33, column: 3, scope: !457)
!477 = !DILocation(line: 33, column: 6, scope: !457)
!478 = !DILocation(line: 34, column: 1, scope: !457)
!479 = distinct !DISubprogram(name: "___set_bit", scope: !333, file: !333, line: 26, type: !458, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !480)
!480 = !{!481, !482}
!481 = !DILocalVariable(name: "nr", arg: 1, scope: !479, file: !333, line: 26, type: !121)
!482 = !DILocalVariable(name: "addr", arg: 2, scope: !479, file: !333, line: 26, type: !248)
!483 = !DILocation(line: 26, column: 26, scope: !479)
!484 = !DILocation(line: 26, column: 54, scope: !479)
!485 = !DILocation(line: 28, column: 19, scope: !479)
!486 = !DILocation(line: 28, column: 26, scope: !479)
!487 = !DILocation(line: 28, column: 24, scope: !479)
!488 = !DILocation(line: 28, column: 2, scope: !479)
!489 = !DILocation(line: 29, column: 17, scope: !479)
!490 = !DILocation(line: 29, column: 21, scope: !479)
!491 = !DILocation(line: 29, column: 2, scope: !479)
!492 = !DILocation(line: 30, column: 1, scope: !479)
!493 = distinct !DISubprogram(name: "instrument_write", scope: !348, file: !348, line: 38, type: !349, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !494)
!494 = !{!495, !496}
!495 = !DILocalVariable(name: "v", arg: 1, scope: !493, file: !348, line: 38, type: !351)
!496 = !DILocalVariable(name: "size", arg: 2, scope: !493, file: !348, line: 38, type: !354)
!497 = !DILocation(line: 38, column: 67, scope: !493)
!498 = !DILocation(line: 38, column: 77, scope: !493)
!499 = !DILocation(line: 40, column: 20, scope: !493)
!500 = !DILocation(line: 40, column: 23, scope: !493)
!501 = !DILocation(line: 40, column: 2, scope: !493)
!502 = !DILocation(line: 41, column: 2, scope: !493)
!503 = !DILocation(line: 42, column: 1, scope: !493)
!504 = distinct !DISubprogram(name: "arch___set_bit", scope: !369, file: !369, line: 66, type: !458, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!505 = !{!506, !507}
!506 = !DILocalVariable(name: "nr", arg: 1, scope: !504, file: !369, line: 66, type: !121)
!507 = !DILocalVariable(name: "addr", arg: 2, scope: !504, file: !369, line: 66, type: !248)
!508 = !DILocation(line: 66, column: 30, scope: !504)
!509 = !DILocation(line: 66, column: 58, scope: !504)
!510 = !DILocation(line: 68, column: 44, scope: !504)
!511 = !DILocation(line: 68, column: 56, scope: !504)
!512 = !DILocation(line: 68, column: 2, scope: !504)
!513 = !{i64 2147769003}
!514 = !DILocation(line: 69, column: 1, scope: !504)
!515 = distinct !DISubprogram(name: "kasan_check_write", scope: !385, file: !385, line: 44, type: !386, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!516 = !{!517, !518}
!517 = !DILocalVariable(name: "p", arg: 1, scope: !515, file: !385, line: 44, type: !351)
!518 = !DILocalVariable(name: "size", arg: 2, scope: !515, file: !385, line: 44, type: !7)
!519 = !DILocation(line: 44, column: 59, scope: !515)
!520 = !DILocation(line: 44, column: 75, scope: !515)
!521 = !DILocation(line: 46, column: 2, scope: !515)
!522 = distinct !DISubprogram(name: "generic___clear_bit", scope: !302, file: !302, line: 37, type: !458, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !523)
!523 = !{!524, !525, !526, !527}
!524 = !DILocalVariable(name: "nr", arg: 1, scope: !522, file: !302, line: 37, type: !121)
!525 = !DILocalVariable(name: "addr", arg: 2, scope: !522, file: !302, line: 37, type: !248)
!526 = !DILocalVariable(name: "mask", scope: !522, file: !302, line: 39, type: !121)
!527 = !DILocalVariable(name: "p", scope: !522, file: !302, line: 40, type: !124)
!528 = !DILocation(line: 37, column: 35, scope: !522)
!529 = !DILocation(line: 37, column: 63, scope: !522)
!530 = !DILocation(line: 39, column: 2, scope: !522)
!531 = !DILocation(line: 39, column: 16, scope: !522)
!532 = !DILocation(line: 39, column: 23, scope: !522)
!533 = !DILocation(line: 40, column: 2, scope: !522)
!534 = !DILocation(line: 40, column: 17, scope: !522)
!535 = !DILocation(line: 40, column: 39, scope: !522)
!536 = !DILocation(line: 40, column: 47, scope: !522)
!537 = !DILocation(line: 40, column: 45, scope: !522)
!538 = !DILocation(line: 42, column: 9, scope: !522)
!539 = !DILocation(line: 42, column: 8, scope: !522)
!540 = !DILocation(line: 42, column: 3, scope: !522)
!541 = !DILocation(line: 42, column: 5, scope: !522)
!542 = !DILocation(line: 43, column: 1, scope: !522)
!543 = distinct !DISubprogram(name: "___clear_bit", scope: !333, file: !333, line: 42, type: !458, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !544)
!544 = !{!545, !546}
!545 = !DILocalVariable(name: "nr", arg: 1, scope: !543, file: !333, line: 42, type: !121)
!546 = !DILocalVariable(name: "addr", arg: 2, scope: !543, file: !333, line: 42, type: !248)
!547 = !DILocation(line: 42, column: 28, scope: !543)
!548 = !DILocation(line: 42, column: 56, scope: !543)
!549 = !DILocation(line: 44, column: 19, scope: !543)
!550 = !DILocation(line: 44, column: 26, scope: !543)
!551 = !DILocation(line: 44, column: 24, scope: !543)
!552 = !DILocation(line: 44, column: 2, scope: !543)
!553 = !DILocation(line: 45, column: 19, scope: !543)
!554 = !DILocation(line: 45, column: 23, scope: !543)
!555 = !DILocation(line: 45, column: 2, scope: !543)
!556 = !DILocation(line: 46, column: 1, scope: !543)
!557 = distinct !DISubprogram(name: "arch___clear_bit", scope: !369, file: !369, line: 92, type: !458, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !558)
!558 = !{!559, !560}
!559 = !DILocalVariable(name: "nr", arg: 1, scope: !557, file: !369, line: 92, type: !121)
!560 = !DILocalVariable(name: "addr", arg: 2, scope: !557, file: !369, line: 92, type: !248)
!561 = !DILocation(line: 92, column: 32, scope: !557)
!562 = !DILocation(line: 92, column: 60, scope: !557)
!563 = !DILocation(line: 94, column: 44, scope: !557)
!564 = !DILocation(line: 94, column: 56, scope: !557)
!565 = !DILocation(line: 94, column: 2, scope: !557)
!566 = !{i64 2147770548}
!567 = !DILocation(line: 95, column: 1, scope: !557)
