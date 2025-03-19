; ModuleID = 'sound/core/isadma.c'
source_filename = "sound/core/isadma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_dma_program: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_dma_program ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_dma_disable: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_dma_disable ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_dma_pointer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_dma_pointer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_devm_request_dma: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_devm_request_dma ; .previous"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_dma_data = type { i32 }

@__UNIQUE_ID___addressable_snd_dma_program205 = internal global ptr @snd_dma_program, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_snd_dma_disable206 = internal global ptr @snd_dma_disable, section ".discard.addressable", align 8, !dbg !83
@__UNIQUE_ID___addressable_snd_dma_pointer207 = internal global ptr @snd_dma_pointer, section ".discard.addressable", align 8, !dbg !85
@.str = private unnamed_addr constant [18 x i8] c"__snd_release_dma\00", align 1, !dbg !87
@__UNIQUE_ID___addressable_snd_devm_request_dma208 = internal global ptr @snd_devm_request_dma, section ".discard.addressable", align 8, !dbg !93
@dma_spin_lock = external dso_local global %struct.spinlock, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_snd_dma_program205, ptr @__UNIQUE_ID___addressable_snd_dma_disable206, ptr @__UNIQUE_ID___addressable_snd_dma_pointer207, ptr @__UNIQUE_ID___addressable_snd_devm_request_dma208], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_dma_program(i64 noundef %dma, i64 noundef %addr, i32 noundef %size, i16 noundef zeroext %mode) #0 align 16 !dbg !104 {
entry:
  %dma.addr = alloca i64, align 8
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %mode.addr = alloca i16, align 2
  %flags = alloca i64, align 8
  store i64 %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !110, metadata !DIExpression()), !dbg !115
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !111, metadata !DIExpression()), !dbg !116
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !112, metadata !DIExpression()), !dbg !117
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !113, metadata !DIExpression()), !dbg !118
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !119
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !114, metadata !DIExpression()), !dbg !120
  %call = call i64 @claim_dma_lock() #8, !dbg !121
  store i64 %call, ptr %flags, align 8, !dbg !122
  %0 = load i64, ptr %dma.addr, align 8, !dbg !123
  %conv = trunc i64 %0 to i32, !dbg !123
  call void @disable_dma(i32 noundef %conv) #8, !dbg !124
  %1 = load i64, ptr %dma.addr, align 8, !dbg !125
  %conv1 = trunc i64 %1 to i32, !dbg !125
  call void @clear_dma_ff(i32 noundef %conv1) #8, !dbg !126
  %2 = load i64, ptr %dma.addr, align 8, !dbg !127
  %conv2 = trunc i64 %2 to i32, !dbg !127
  %3 = load i16, ptr %mode.addr, align 2, !dbg !128
  %conv3 = trunc i16 %3 to i8, !dbg !128
  call void @set_dma_mode(i32 noundef %conv2, i8 noundef zeroext %conv3) #8, !dbg !129
  %4 = load i64, ptr %dma.addr, align 8, !dbg !130
  %conv4 = trunc i64 %4 to i32, !dbg !130
  %5 = load i64, ptr %addr.addr, align 8, !dbg !131
  %conv5 = trunc i64 %5 to i32, !dbg !131
  call void @set_dma_addr(i32 noundef %conv4, i32 noundef %conv5) #8, !dbg !132
  %6 = load i64, ptr %dma.addr, align 8, !dbg !133
  %conv6 = trunc i64 %6 to i32, !dbg !133
  %7 = load i32, ptr %size.addr, align 4, !dbg !134
  call void @set_dma_count(i32 noundef %conv6, i32 noundef %7) #8, !dbg !135
  %8 = load i16, ptr %mode.addr, align 2, !dbg !136
  %conv7 = zext i16 %8 to i32, !dbg !136
  %and = and i32 %conv7, 256, !dbg !138
  %tobool = icmp ne i32 %and, 0, !dbg !138
  br i1 %tobool, label %if.end, label %if.then, !dbg !139

if.then:                                          ; preds = %entry
  %9 = load i64, ptr %dma.addr, align 8, !dbg !140
  %conv8 = trunc i64 %9 to i32, !dbg !140
  call void @enable_dma(i32 noundef %conv8) #8, !dbg !141
  br label %if.end, !dbg !141

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, ptr %flags, align 8, !dbg !142
  call void @release_dma_lock(i64 noundef %10) #8, !dbg !143
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !144
  ret void, !dbg !144
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @claim_dma_lock() #3 align 16 !dbg !145 {
entry:
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !150, metadata !DIExpression()), !dbg !157
  br label %do.body, !dbg !158

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !159

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !160
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !151, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !160
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !155, metadata !DIExpression()), !dbg !160
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !160
  %conv = zext i1 %cmp to i32, !dbg !160
  store i32 1, ptr %tmp, align 4, !dbg !160
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !161
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !161
  %0 = load i32, ptr %tmp, align 4, !dbg !160
  %call = call ptr @spinlock_check(ptr noundef @dma_spin_lock) #8, !dbg !161
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #8, !dbg !161
  store i64 %call2, ptr %flags, align 8, !dbg !161
  br label %do.cond, !dbg !161

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !161

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !159

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !159

do.end4:                                          ; preds = %do.cond3
  %1 = load i64, ptr %flags, align 8, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !163
  ret i64 %1, !dbg !164
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @disable_dma(i32 noundef %dmanr) #3 align 16 !dbg !165 {
entry:
  %dmanr.addr = alloca i32, align 4
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !171
  %cmp = icmp ule i32 %0, 3, !dbg !173
  br i1 %cmp, label %if.then, label %if.else, !dbg !174

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %dmanr.addr, align 4, !dbg !175
  %or = or i32 %1, 4, !dbg !176
  %conv = trunc i32 %or to i8, !dbg !175
  call void @__outb(i8 noundef zeroext %conv, i16 noundef zeroext 10) #8, !dbg !177
  br label %if.end, !dbg !177

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %dmanr.addr, align 4, !dbg !178
  %and = and i32 %2, 3, !dbg !179
  %or1 = or i32 %and, 4, !dbg !180
  %conv2 = trunc i32 %or1 to i8, !dbg !181
  call void @__outb(i8 noundef zeroext %conv2, i16 noundef zeroext 212) #8, !dbg !182
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !183
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_dma_ff(i32 noundef %dmanr) #3 align 16 !dbg !184 {
entry:
  %dmanr.addr = alloca i32, align 4
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !186, metadata !DIExpression()), !dbg !187
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !188
  %cmp = icmp ule i32 %0, 3, !dbg !190
  br i1 %cmp, label %if.then, label %if.else, !dbg !191

if.then:                                          ; preds = %entry
  call void @__outb(i8 noundef zeroext 0, i16 noundef zeroext 12) #8, !dbg !192
  br label %if.end, !dbg !192

if.else:                                          ; preds = %entry
  call void @__outb(i8 noundef zeroext 0, i16 noundef zeroext 216) #8, !dbg !193
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_dma_mode(i32 noundef %dmanr, i8 noundef zeroext %mode) #3 align 16 !dbg !195 {
entry:
  %dmanr.addr = alloca i32, align 4
  %mode.addr = alloca i8, align 1
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !199, metadata !DIExpression()), !dbg !201
  store i8 %mode, ptr %mode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !200, metadata !DIExpression()), !dbg !202
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !203
  %cmp = icmp ule i32 %0, 3, !dbg !205
  br i1 %cmp, label %if.then, label %if.else, !dbg !206

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %mode.addr, align 1, !dbg !207
  %conv = zext i8 %1 to i32, !dbg !207
  %2 = load i32, ptr %dmanr.addr, align 4, !dbg !208
  %or = or i32 %conv, %2, !dbg !209
  %conv1 = trunc i32 %or to i8, !dbg !207
  call void @__outb(i8 noundef zeroext %conv1, i16 noundef zeroext 11) #8, !dbg !210
  br label %if.end, !dbg !210

if.else:                                          ; preds = %entry
  %3 = load i8, ptr %mode.addr, align 1, !dbg !211
  %conv2 = zext i8 %3 to i32, !dbg !211
  %4 = load i32, ptr %dmanr.addr, align 4, !dbg !212
  %and = and i32 %4, 3, !dbg !213
  %or3 = or i32 %conv2, %and, !dbg !214
  %conv4 = trunc i32 %or3 to i8, !dbg !211
  call void @__outb(i8 noundef zeroext %conv4, i16 noundef zeroext 214) #8, !dbg !215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !216
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_dma_addr(i32 noundef %dmanr, i32 noundef %a) #3 align 16 !dbg !217 {
entry:
  %dmanr.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !221, metadata !DIExpression()), !dbg !223
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !222, metadata !DIExpression()), !dbg !224
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !225
  %1 = load i32, ptr %a.addr, align 4, !dbg !226
  %shr = lshr i32 %1, 16, !dbg !227
  %conv = trunc i32 %shr to i8, !dbg !226
  call void @set_dma_page(i32 noundef %0, i8 noundef zeroext %conv) #8, !dbg !228
  %2 = load i32, ptr %dmanr.addr, align 4, !dbg !229
  %cmp = icmp ule i32 %2, 3, !dbg !231
  br i1 %cmp, label %if.then, label %if.else, !dbg !232

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %a.addr, align 4, !dbg !233
  %and = and i32 %3, 255, !dbg !235
  %conv2 = trunc i32 %and to i8, !dbg !233
  %4 = load i32, ptr %dmanr.addr, align 4, !dbg !236
  %and3 = and i32 %4, 3, !dbg !237
  %shl = shl i32 %and3, 1, !dbg !238
  %add = add i32 %shl, 0, !dbg !239
  %conv4 = trunc i32 %add to i16, !dbg !240
  call void @__outb(i8 noundef zeroext %conv2, i16 noundef zeroext %conv4) #8, !dbg !241
  %5 = load i32, ptr %a.addr, align 4, !dbg !242
  %shr5 = lshr i32 %5, 8, !dbg !243
  %and6 = and i32 %shr5, 255, !dbg !244
  %conv7 = trunc i32 %and6 to i8, !dbg !245
  %6 = load i32, ptr %dmanr.addr, align 4, !dbg !246
  %and8 = and i32 %6, 3, !dbg !247
  %shl9 = shl i32 %and8, 1, !dbg !248
  %add10 = add i32 %shl9, 0, !dbg !249
  %conv11 = trunc i32 %add10 to i16, !dbg !250
  call void @__outb(i8 noundef zeroext %conv7, i16 noundef zeroext %conv11) #8, !dbg !251
  br label %if.end, !dbg !252

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %a.addr, align 4, !dbg !253
  %shr12 = lshr i32 %7, 1, !dbg !255
  %and13 = and i32 %shr12, 255, !dbg !256
  %conv14 = trunc i32 %and13 to i8, !dbg !257
  %8 = load i32, ptr %dmanr.addr, align 4, !dbg !258
  %and15 = and i32 %8, 3, !dbg !259
  %shl16 = shl i32 %and15, 2, !dbg !260
  %add17 = add i32 %shl16, 192, !dbg !261
  %conv18 = trunc i32 %add17 to i16, !dbg !262
  call void @__outb(i8 noundef zeroext %conv14, i16 noundef zeroext %conv18) #8, !dbg !263
  %9 = load i32, ptr %a.addr, align 4, !dbg !264
  %shr19 = lshr i32 %9, 9, !dbg !265
  %and20 = and i32 %shr19, 255, !dbg !266
  %conv21 = trunc i32 %and20 to i8, !dbg !267
  %10 = load i32, ptr %dmanr.addr, align 4, !dbg !268
  %and22 = and i32 %10, 3, !dbg !269
  %shl23 = shl i32 %and22, 2, !dbg !270
  %add24 = add i32 %shl23, 192, !dbg !271
  %conv25 = trunc i32 %add24 to i16, !dbg !272
  call void @__outb(i8 noundef zeroext %conv21, i16 noundef zeroext %conv25) #8, !dbg !273
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_dma_count(i32 noundef %dmanr, i32 noundef %count) #3 align 16 !dbg !275 {
entry:
  %dmanr.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !277, metadata !DIExpression()), !dbg !279
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !278, metadata !DIExpression()), !dbg !280
  %0 = load i32, ptr %count.addr, align 4, !dbg !281
  %dec = add i32 %0, -1, !dbg !281
  store i32 %dec, ptr %count.addr, align 4, !dbg !281
  %1 = load i32, ptr %dmanr.addr, align 4, !dbg !282
  %cmp = icmp ule i32 %1, 3, !dbg !284
  br i1 %cmp, label %if.then, label %if.else, !dbg !285

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %count.addr, align 4, !dbg !286
  %and = and i32 %2, 255, !dbg !288
  %conv = trunc i32 %and to i8, !dbg !286
  %3 = load i32, ptr %dmanr.addr, align 4, !dbg !289
  %and1 = and i32 %3, 3, !dbg !290
  %shl = shl i32 %and1, 1, !dbg !291
  %add = add i32 %shl, 1, !dbg !292
  %add2 = add i32 %add, 0, !dbg !293
  %conv3 = trunc i32 %add2 to i16, !dbg !294
  call void @__outb(i8 noundef zeroext %conv, i16 noundef zeroext %conv3) #8, !dbg !295
  %4 = load i32, ptr %count.addr, align 4, !dbg !296
  %shr = lshr i32 %4, 8, !dbg !297
  %and4 = and i32 %shr, 255, !dbg !298
  %conv5 = trunc i32 %and4 to i8, !dbg !299
  %5 = load i32, ptr %dmanr.addr, align 4, !dbg !300
  %and6 = and i32 %5, 3, !dbg !301
  %shl7 = shl i32 %and6, 1, !dbg !302
  %add8 = add i32 %shl7, 1, !dbg !303
  %add9 = add i32 %add8, 0, !dbg !304
  %conv10 = trunc i32 %add9 to i16, !dbg !305
  call void @__outb(i8 noundef zeroext %conv5, i16 noundef zeroext %conv10) #8, !dbg !306
  br label %if.end, !dbg !307

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %count.addr, align 4, !dbg !308
  %shr11 = lshr i32 %6, 1, !dbg !310
  %and12 = and i32 %shr11, 255, !dbg !311
  %conv13 = trunc i32 %and12 to i8, !dbg !312
  %7 = load i32, ptr %dmanr.addr, align 4, !dbg !313
  %and14 = and i32 %7, 3, !dbg !314
  %shl15 = shl i32 %and14, 2, !dbg !315
  %add16 = add i32 %shl15, 2, !dbg !316
  %add17 = add i32 %add16, 192, !dbg !317
  %conv18 = trunc i32 %add17 to i16, !dbg !318
  call void @__outb(i8 noundef zeroext %conv13, i16 noundef zeroext %conv18) #8, !dbg !319
  %8 = load i32, ptr %count.addr, align 4, !dbg !320
  %shr19 = lshr i32 %8, 9, !dbg !321
  %and20 = and i32 %shr19, 255, !dbg !322
  %conv21 = trunc i32 %and20 to i8, !dbg !323
  %9 = load i32, ptr %dmanr.addr, align 4, !dbg !324
  %and22 = and i32 %9, 3, !dbg !325
  %shl23 = shl i32 %and22, 2, !dbg !326
  %add24 = add i32 %shl23, 2, !dbg !327
  %add25 = add i32 %add24, 192, !dbg !328
  %conv26 = trunc i32 %add25 to i16, !dbg !329
  call void @__outb(i8 noundef zeroext %conv21, i16 noundef zeroext %conv26) #8, !dbg !330
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @enable_dma(i32 noundef %dmanr) #3 align 16 !dbg !332 {
entry:
  %dmanr.addr = alloca i32, align 4
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !336
  %cmp = icmp ule i32 %0, 3, !dbg !338
  br i1 %cmp, label %if.then, label %if.else, !dbg !339

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %dmanr.addr, align 4, !dbg !340
  %conv = trunc i32 %1 to i8, !dbg !340
  call void @__outb(i8 noundef zeroext %conv, i16 noundef zeroext 10) #8, !dbg !341
  br label %if.end, !dbg !341

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %dmanr.addr, align 4, !dbg !342
  %and = and i32 %2, 3, !dbg !343
  %conv1 = trunc i32 %and to i8, !dbg !342
  call void @__outb(i8 noundef zeroext %conv1, i16 noundef zeroext 212) #8, !dbg !344
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !345
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @release_dma_lock(i64 noundef %flags) #3 align 16 !dbg !346 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i64, ptr %flags.addr, align 8, !dbg !352
  call void @spin_unlock_irqrestore(ptr noundef @dma_spin_lock, i64 noundef %0) #8, !dbg !353
  ret void, !dbg !354
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_dma_disable(i64 noundef %dma) #0 align 16 !dbg !355 {
entry:
  %dma.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  store i64 %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !357, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !358, metadata !DIExpression()), !dbg !361
  %call = call i64 @claim_dma_lock() #8, !dbg !362
  store i64 %call, ptr %flags, align 8, !dbg !363
  %0 = load i64, ptr %dma.addr, align 8, !dbg !364
  %conv = trunc i64 %0 to i32, !dbg !364
  call void @clear_dma_ff(i32 noundef %conv) #8, !dbg !365
  %1 = load i64, ptr %dma.addr, align 8, !dbg !366
  %conv1 = trunc i64 %1 to i32, !dbg !366
  call void @disable_dma(i32 noundef %conv1) #8, !dbg !367
  %2 = load i64, ptr %flags, align 8, !dbg !368
  call void @release_dma_lock(i64 noundef %2) #8, !dbg !369
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !370
  ret void, !dbg !370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_dma_pointer(i64 noundef %dma, i32 noundef %size) #0 align 16 !dbg !371 {
entry:
  %retval = alloca i32, align 4
  %dma.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %result = alloca i32, align 4
  %result1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %dma, ptr %dma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !375, metadata !DIExpression()), !dbg !380
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !376, metadata !DIExpression()), !dbg !381
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !377, metadata !DIExpression()), !dbg !383
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #7, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %result, metadata !378, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 4, ptr %result1) #7, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %result1, metadata !379, metadata !DIExpression()), !dbg !386
  %call = call i64 @claim_dma_lock() #8, !dbg !387
  store i64 %call, ptr %flags, align 8, !dbg !388
  %0 = load i64, ptr %dma.addr, align 8, !dbg !389
  %conv = trunc i64 %0 to i32, !dbg !389
  call void @clear_dma_ff(i32 noundef %conv) #8, !dbg !390
  %1 = load i64, ptr %dma.addr, align 8, !dbg !391
  %conv1 = trunc i64 %1 to i32, !dbg !391
  call void @disable_dma(i32 noundef %conv1) #8, !dbg !393
  %2 = load i64, ptr %dma.addr, align 8, !dbg !394
  %conv2 = trunc i64 %2 to i32, !dbg !394
  %call3 = call i32 @get_dma_residue(i32 noundef %conv2) #8, !dbg !395
  store i32 %call3, ptr %result, align 4, !dbg !396
  %3 = load i64, ptr %dma.addr, align 8, !dbg !397
  %conv4 = trunc i64 %3 to i32, !dbg !397
  %call5 = call i32 @get_dma_residue(i32 noundef %conv4) #8, !dbg !398
  store i32 %call5, ptr %result1, align 4, !dbg !399
  %4 = load i64, ptr %dma.addr, align 8, !dbg !400
  %conv6 = trunc i64 %4 to i32, !dbg !400
  call void @enable_dma(i32 noundef %conv6) #8, !dbg !402
  %5 = load i64, ptr %flags, align 8, !dbg !403
  call void @release_dma_lock(i64 noundef %5) #8, !dbg !404
  %6 = load i32, ptr %result, align 4, !dbg !405
  %7 = load i32, ptr %result1, align 4, !dbg !405
  %cmp = icmp ult i32 %6, %7, !dbg !405
  %lnot = xor i1 %cmp, true, !dbg !405
  %lnot8 = xor i1 %lnot, true, !dbg !405
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !405
  %conv9 = sext i32 %lnot.ext to i64, !dbg !405
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !405
  %tobool = icmp ne i64 %expval, 0, !dbg !405
  br i1 %tobool, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %result1, align 4, !dbg !408
  store i32 %8, ptr %result, align 4, !dbg !409
  br label %if.end, !dbg !410

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %result, align 4, !dbg !411
  %10 = load i32, ptr %size.addr, align 4, !dbg !413
  %cmp10 = icmp uge i32 %9, %10, !dbg !414
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !415

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, ptr %result, align 4, !dbg !416
  %cmp12 = icmp eq i32 %11, 0, !dbg !417
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !418

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !419

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i32, ptr %size.addr, align 4, !dbg !420
  %13 = load i32, ptr %result, align 4, !dbg !421
  %sub = sub i32 %12, %13, !dbg !422
  store i32 %sub, ptr %retval, align 4, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

cleanup:                                          ; preds = %if.else, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %result1) #7, !dbg !424
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #7, !dbg !424
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !424
  %14 = load i32, ptr %retval, align 4, !dbg !424
  ret i32 %14, !dbg !424
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_dma_residue(i32 noundef %dmanr) #3 align 16 !dbg !425 {
entry:
  %dmanr.addr = alloca i32, align 4
  %io_port = alloca i32, align 4
  %count = alloca i16, align 2
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !429, metadata !DIExpression()), !dbg !432
  call void @llvm.lifetime.start.p0(i64 4, ptr %io_port) #7, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %io_port, metadata !430, metadata !DIExpression()), !dbg !434
  call void @llvm.lifetime.start.p0(i64 2, ptr %count) #7, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %count, metadata !431, metadata !DIExpression()), !dbg !436
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !437
  %cmp = icmp ule i32 %0, 3, !dbg !438
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !439

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %dmanr.addr, align 4, !dbg !440
  %and = and i32 %1, 3, !dbg !441
  %shl = shl i32 %and, 1, !dbg !442
  %add = add i32 %shl, 1, !dbg !443
  %add1 = add i32 %add, 0, !dbg !444
  br label %cond.end, !dbg !439

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %dmanr.addr, align 4, !dbg !445
  %and2 = and i32 %2, 3, !dbg !446
  %shl3 = shl i32 %and2, 2, !dbg !447
  %add4 = add i32 %shl3, 2, !dbg !448
  %add5 = add i32 %add4, 192, !dbg !449
  br label %cond.end, !dbg !439

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add1, %cond.true ], [ %add5, %cond.false ], !dbg !439
  store i32 %cond, ptr %io_port, align 4, !dbg !450
  %3 = load i32, ptr %io_port, align 4, !dbg !451
  %conv = trunc i32 %3 to i16, !dbg !451
  %call = call zeroext i8 @__inb(i16 noundef zeroext %conv) #8, !dbg !452
  %conv6 = zext i8 %call to i32, !dbg !452
  %add7 = add i32 1, %conv6, !dbg !453
  %conv8 = trunc i32 %add7 to i16, !dbg !454
  store i16 %conv8, ptr %count, align 2, !dbg !455
  %4 = load i32, ptr %io_port, align 4, !dbg !456
  %conv9 = trunc i32 %4 to i16, !dbg !456
  %call10 = call zeroext i8 @__inb(i16 noundef zeroext %conv9) #8, !dbg !457
  %conv11 = zext i8 %call10 to i32, !dbg !457
  %shl12 = shl i32 %conv11, 8, !dbg !458
  %5 = load i16, ptr %count, align 2, !dbg !459
  %conv13 = zext i16 %5 to i32, !dbg !459
  %add14 = add i32 %conv13, %shl12, !dbg !459
  %conv15 = trunc i32 %add14 to i16, !dbg !459
  store i16 %conv15, ptr %count, align 2, !dbg !459
  %6 = load i32, ptr %dmanr.addr, align 4, !dbg !460
  %cmp16 = icmp ule i32 %6, 3, !dbg !461
  br i1 %cmp16, label %cond.true18, label %cond.false20, !dbg !462

cond.true18:                                      ; preds = %cond.end
  %7 = load i16, ptr %count, align 2, !dbg !463
  %conv19 = zext i16 %7 to i32, !dbg !463
  br label %cond.end23, !dbg !462

cond.false20:                                     ; preds = %cond.end
  %8 = load i16, ptr %count, align 2, !dbg !464
  %conv21 = zext i16 %8 to i32, !dbg !464
  %shl22 = shl i32 %conv21, 1, !dbg !465
  br label %cond.end23, !dbg !462

cond.end23:                                       ; preds = %cond.false20, %cond.true18
  %cond24 = phi i32 [ %conv19, %cond.true18 ], [ %shl22, %cond.false20 ], !dbg !462
  call void @llvm.lifetime.end.p0(i64 2, ptr %count) #7, !dbg !466
  call void @llvm.lifetime.end.p0(i64 4, ptr %io_port) #7, !dbg !466
  ret i32 %cond24, !dbg !467
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_devm_request_dma(ptr noundef %dev, i32 noundef %dma, ptr noundef %name) #0 align 16 !dbg !468 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %dma.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2042, metadata !DIExpression()), !dbg !2050
  store i32 %dma, ptr %dma.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dma.addr, metadata !2043, metadata !DIExpression()), !dbg !2051
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !2044, metadata !DIExpression()), !dbg !2052
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !2053
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2045, metadata !DIExpression()), !dbg !2054
  %0 = load i32, ptr %dma.addr, align 4, !dbg !2055
  %1 = load ptr, ptr %name.addr, align 8, !dbg !2057
  %call = call i32 @request_dma(i32 noundef %0, ptr noundef %1) #8, !dbg !2058
  %tobool = icmp ne i32 %call, 0, !dbg !2058
  br i1 %tobool, label %if.then, label %if.end, !dbg !2059

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !2060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2060

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @__devres_alloc_node(ptr noundef @__snd_release_dma, i64 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef @.str) #8, !dbg !2061
  store ptr %call1, ptr %p, align 8, !dbg !2062
  %2 = load ptr, ptr %p, align 8, !dbg !2063
  %tobool2 = icmp ne ptr %2, null, !dbg !2063
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2065

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %dma.addr, align 4, !dbg !2066
  call void @free_dma(i32 noundef %3) #8, !dbg !2068
  store i32 -12, ptr %retval, align 4, !dbg !2069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2069

if.end4:                                          ; preds = %if.end
  %4 = load i32, ptr %dma.addr, align 4, !dbg !2070
  %5 = load ptr, ptr %p, align 8, !dbg !2071
  %dma5 = getelementptr inbounds %struct.snd_dma_data, ptr %5, i32 0, i32 0, !dbg !2072
  store i32 %4, ptr %dma5, align 4, !dbg !2073
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2074
  %7 = load ptr, ptr %p, align 8, !dbg !2075
  call void @devres_add(ptr noundef %6, ptr noundef %7) #8, !dbg !2076
  store i32 0, ptr %retval, align 4, !dbg !2077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2077

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !2078
  %8 = load i32, ptr %retval, align 4, !dbg !2078
  ret i32 %8, !dbg !2078
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2079 dso_local i32 @request_dma(i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2082 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__snd_release_dma(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !2089 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2091, metadata !DIExpression()), !dbg !2094
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #7, !dbg !2096
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2093, metadata !DIExpression()), !dbg !2097
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2098
  store ptr %0, ptr %p, align 8, !dbg !2097
  %1 = load ptr, ptr %p, align 8, !dbg !2099
  %dma = getelementptr inbounds %struct.snd_dma_data, ptr %1, i32 0, i32 0, !dbg !2100
  %2 = load i32, ptr %dma, align 4, !dbg !2100
  %conv = sext i32 %2 to i64, !dbg !2099
  call void @snd_dma_disable(i64 noundef %conv) #8, !dbg !2101
  %3 = load ptr, ptr %p, align 8, !dbg !2102
  %dma1 = getelementptr inbounds %struct.snd_dma_data, ptr %3, i32 0, i32 0, !dbg !2103
  %4 = load i32, ptr %dma1, align 4, !dbg !2103
  call void @free_dma(i32 noundef %4) #8, !dbg !2104
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #7, !dbg !2105
  ret void, !dbg !2105
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2106 dso_local void @free_dma(i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2107 dso_local void @devres_add(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2108 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !2113 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2119, metadata !DIExpression()), !dbg !2120
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2121
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2122
  ret ptr %1, !dbg !2123
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #6 align 16 !dbg !2124 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2129, metadata !DIExpression()), !dbg !2131
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !2130, metadata !DIExpression()), !dbg !2131
  %0 = load i8, ptr %value.addr, align 1, !dbg !2131
  %1 = load i16, ptr %port.addr, align 2, !dbg !2131
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #7, !dbg !2131, !srcloc !2132
  ret void, !dbg !2131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_dma_page(i32 noundef %dmanr, i8 noundef zeroext %pagenr) #3 align 16 !dbg !2133 {
entry:
  %dmanr.addr = alloca i32, align 4
  %pagenr.addr = alloca i8, align 1
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !2135, metadata !DIExpression()), !dbg !2137
  store i8 %pagenr, ptr %pagenr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %pagenr.addr, metadata !2136, metadata !DIExpression()), !dbg !2138
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !2139
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 7, label %sw.bb10
  ], !dbg !2140

sw.bb:                                            ; preds = %entry
  %1 = load i8, ptr %pagenr.addr, align 1, !dbg !2141
  call void @__outb(i8 noundef zeroext %1, i16 noundef zeroext 135) #8, !dbg !2143
  br label %sw.epilog, !dbg !2144

sw.bb1:                                           ; preds = %entry
  %2 = load i8, ptr %pagenr.addr, align 1, !dbg !2145
  call void @__outb(i8 noundef zeroext %2, i16 noundef zeroext 131) #8, !dbg !2146
  br label %sw.epilog, !dbg !2147

sw.bb2:                                           ; preds = %entry
  %3 = load i8, ptr %pagenr.addr, align 1, !dbg !2148
  call void @__outb(i8 noundef zeroext %3, i16 noundef zeroext 129) #8, !dbg !2149
  br label %sw.epilog, !dbg !2150

sw.bb3:                                           ; preds = %entry
  %4 = load i8, ptr %pagenr.addr, align 1, !dbg !2151
  call void @__outb(i8 noundef zeroext %4, i16 noundef zeroext 130) #8, !dbg !2152
  br label %sw.epilog, !dbg !2153

sw.bb4:                                           ; preds = %entry
  %5 = load i8, ptr %pagenr.addr, align 1, !dbg !2154
  %conv = zext i8 %5 to i32, !dbg !2154
  %and = and i32 %conv, 254, !dbg !2155
  %conv5 = trunc i32 %and to i8, !dbg !2154
  call void @__outb(i8 noundef zeroext %conv5, i16 noundef zeroext 139) #8, !dbg !2156
  br label %sw.epilog, !dbg !2157

sw.bb6:                                           ; preds = %entry
  %6 = load i8, ptr %pagenr.addr, align 1, !dbg !2158
  %conv7 = zext i8 %6 to i32, !dbg !2158
  %and8 = and i32 %conv7, 254, !dbg !2159
  %conv9 = trunc i32 %and8 to i8, !dbg !2158
  call void @__outb(i8 noundef zeroext %conv9, i16 noundef zeroext 137) #8, !dbg !2160
  br label %sw.epilog, !dbg !2161

sw.bb10:                                          ; preds = %entry
  %7 = load i8, ptr %pagenr.addr, align 1, !dbg !2162
  %conv11 = zext i8 %7 to i32, !dbg !2162
  %and12 = and i32 %conv11, 254, !dbg !2163
  %conv13 = trunc i32 %and12 to i8, !dbg !2162
  call void @__outb(i8 noundef zeroext %conv13, i16 noundef zeroext 138) #8, !dbg !2164
  br label %sw.epilog, !dbg !2165

sw.epilog:                                        ; preds = %entry, %sw.bb10, %sw.bb6, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !2166
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !2167 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2171, metadata !DIExpression()), !dbg !2177
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2172, metadata !DIExpression()), !dbg !2178
  br label %do.body, !dbg !2179

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #7, !dbg !2180
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2173, metadata !DIExpression()), !dbg !2180
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #7, !dbg !2180
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2176, metadata !DIExpression()), !dbg !2180
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2180
  %conv = zext i1 %cmp to i32, !dbg !2180
  store i32 1, ptr %tmp, align 4, !dbg !2180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #7, !dbg !2181
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #7, !dbg !2181
  %0 = load i32, ptr %tmp, align 4, !dbg !2180
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !2181
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !2181
  %3 = load i64, ptr %flags.addr, align 8, !dbg !2181
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #8, !dbg !2181
  br label %do.end, !dbg !2181

do.end:                                           ; preds = %do.body
  ret void, !dbg !2182
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2183 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #6 align 16 !dbg !2186 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !2190, metadata !DIExpression()), !dbg !2192
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #7, !dbg !2192
  call void @llvm.dbg.declare(metadata ptr %value, metadata !2191, metadata !DIExpression()), !dbg !2192
  %0 = load i16, ptr %port.addr, align 2, !dbg !2192
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #7, !dbg !2192, !srcloc !2193
  store i8 %1, ptr %value, align 1, !dbg !2192
  %2 = load i8, ptr %value, align 1, !dbg !2192
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #7, !dbg !2192
  ret i8 %2, !dbg !2192
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_dma_program205", scope: !2, file: !3, line: 43, type: !79, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.isadma.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd\22 -D KBUILD_BASENAME=\22isadma\22 -D KBUILD_MODNAME=\22snd\22 -D __KBUILD_MODNAME=kmod_snd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/isadma.ll sound/core/isadma.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !78, globals: !82, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/isadma.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "56e169fe7ecc6232f688f7d5411363a1")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !20, line: 45, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!23 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!24 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !26, line: 487, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!29 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!30 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!31 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !38, line: 620, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!41 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!42 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!43 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!44 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !38, line: 597, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!49 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!50 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!51 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!52 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!56 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!57 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!58 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!59 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!60 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!61 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!65 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!66 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!70 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!71 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!75 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!76 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!77 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !81, line: 154, baseType: !7)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!82 = !{!0, !83, !85, !87, !93}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_dma_disable206", scope: !2, file: !3, line: 60, type: !79, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_dma_pointer207", scope: !2, file: !3, line: 99, type: !79, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 144, elements: !91)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !{!92}
!92 = !DISubrange(count: 18)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_devm_request_dma208", scope: !2, file: !3, line: 138, type: !79, isLocal: true, isDefinition: true)
!95 = !{i32 7, !"Dwarf Version", i32 5}
!96 = !{i32 2, !"Debug Info Version", i32 3}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 8, !"cf-protection-branch", i32 1}
!99 = !{i32 4, !"function_return_thunk_extern", i32 1}
!100 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!101 = !{i32 1, !"Code Model", i32 2}
!102 = !{i32 1, !"override-stack-alignment", i32 8}
!103 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!104 = distinct !DISubprogram(name: "snd_dma_program", scope: !3, file: !3, line: 27, type: !105, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !107, !7, !108}
!107 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !{!110, !111, !112, !113, !114}
!110 = !DILocalVariable(name: "dma", arg: 1, scope: !104, file: !3, line: 27, type: !107)
!111 = !DILocalVariable(name: "addr", arg: 2, scope: !104, file: !3, line: 28, type: !107)
!112 = !DILocalVariable(name: "size", arg: 3, scope: !104, file: !3, line: 28, type: !7)
!113 = !DILocalVariable(name: "mode", arg: 4, scope: !104, file: !3, line: 29, type: !108)
!114 = !DILocalVariable(name: "flags", scope: !104, file: !3, line: 31, type: !107)
!115 = !DILocation(line: 27, column: 36, scope: !104)
!116 = !DILocation(line: 28, column: 22, scope: !104)
!117 = !DILocation(line: 28, column: 41, scope: !104)
!118 = !DILocation(line: 29, column: 37, scope: !104)
!119 = !DILocation(line: 31, column: 2, scope: !104)
!120 = !DILocation(line: 31, column: 16, scope: !104)
!121 = !DILocation(line: 33, column: 10, scope: !104)
!122 = !DILocation(line: 33, column: 8, scope: !104)
!123 = !DILocation(line: 34, column: 14, scope: !104)
!124 = !DILocation(line: 34, column: 2, scope: !104)
!125 = !DILocation(line: 35, column: 15, scope: !104)
!126 = !DILocation(line: 35, column: 2, scope: !104)
!127 = !DILocation(line: 36, column: 15, scope: !104)
!128 = !DILocation(line: 36, column: 20, scope: !104)
!129 = !DILocation(line: 36, column: 2, scope: !104)
!130 = !DILocation(line: 37, column: 15, scope: !104)
!131 = !DILocation(line: 37, column: 20, scope: !104)
!132 = !DILocation(line: 37, column: 2, scope: !104)
!133 = !DILocation(line: 38, column: 16, scope: !104)
!134 = !DILocation(line: 38, column: 21, scope: !104)
!135 = !DILocation(line: 38, column: 2, scope: !104)
!136 = !DILocation(line: 39, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !104, file: !3, line: 39, column: 6)
!138 = !DILocation(line: 39, column: 13, scope: !137)
!139 = !DILocation(line: 39, column: 6, scope: !104)
!140 = !DILocation(line: 40, column: 14, scope: !137)
!141 = !DILocation(line: 40, column: 3, scope: !137)
!142 = !DILocation(line: 41, column: 19, scope: !104)
!143 = !DILocation(line: 41, column: 2, scope: !104)
!144 = !DILocation(line: 42, column: 1, scope: !104)
!145 = distinct !DISubprogram(name: "claim_dma_lock", scope: !146, file: !146, line: 153, type: !147, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!146 = !DIFile(filename: "./arch/x86/include/asm/dma.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1cbc4b906fe0dad17ab59db75d10f715")
!147 = !DISubroutineType(types: !148)
!148 = !{!107}
!149 = !{!150, !151, !155}
!150 = !DILocalVariable(name: "flags", scope: !145, file: !146, line: 155, type: !107)
!151 = !DILocalVariable(name: "__dummy", scope: !152, file: !146, line: 156, type: !107)
!152 = distinct !DILexicalBlock(scope: !153, file: !146, line: 156, column: 2)
!153 = distinct !DILexicalBlock(scope: !154, file: !146, line: 156, column: 2)
!154 = distinct !DILexicalBlock(scope: !145, file: !146, line: 156, column: 2)
!155 = !DILocalVariable(name: "__dummy2", scope: !152, file: !146, line: 156, type: !107)
!156 = !DILocation(line: 155, column: 2, scope: !145)
!157 = !DILocation(line: 155, column: 16, scope: !145)
!158 = !DILocation(line: 156, column: 2, scope: !145)
!159 = !DILocation(line: 156, column: 2, scope: !154)
!160 = !DILocation(line: 156, column: 2, scope: !152)
!161 = !DILocation(line: 156, column: 2, scope: !153)
!162 = !DILocation(line: 157, column: 9, scope: !145)
!163 = !DILocation(line: 158, column: 1, scope: !145)
!164 = !DILocation(line: 157, column: 2, scope: !145)
!165 = distinct !DISubprogram(name: "disable_dma", scope: !146, file: !146, line: 175, type: !166, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !7}
!168 = !{!169}
!169 = !DILocalVariable(name: "dmanr", arg: 1, scope: !165, file: !146, line: 175, type: !7)
!170 = !DILocation(line: 175, column: 45, scope: !165)
!171 = !DILocation(line: 177, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !165, file: !146, line: 177, column: 6)
!173 = !DILocation(line: 177, column: 12, scope: !172)
!174 = !DILocation(line: 177, column: 6, scope: !165)
!175 = !DILocation(line: 178, column: 12, scope: !172)
!176 = !DILocation(line: 178, column: 18, scope: !172)
!177 = !DILocation(line: 178, column: 3, scope: !172)
!178 = !DILocation(line: 180, column: 13, scope: !172)
!179 = !DILocation(line: 180, column: 19, scope: !172)
!180 = !DILocation(line: 180, column: 24, scope: !172)
!181 = !DILocation(line: 180, column: 12, scope: !172)
!182 = !DILocation(line: 180, column: 3, scope: !172)
!183 = !DILocation(line: 181, column: 1, scope: !165)
!184 = distinct !DISubprogram(name: "clear_dma_ff", scope: !146, file: !146, line: 190, type: !166, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!185 = !{!186}
!186 = !DILocalVariable(name: "dmanr", arg: 1, scope: !184, file: !146, line: 190, type: !7)
!187 = !DILocation(line: 190, column: 46, scope: !184)
!188 = !DILocation(line: 192, column: 6, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !146, line: 192, column: 6)
!190 = !DILocation(line: 192, column: 12, scope: !189)
!191 = !DILocation(line: 192, column: 6, scope: !184)
!192 = !DILocation(line: 193, column: 3, scope: !189)
!193 = !DILocation(line: 195, column: 3, scope: !189)
!194 = !DILocation(line: 196, column: 1, scope: !184)
!195 = distinct !DISubprogram(name: "set_dma_mode", scope: !146, file: !146, line: 199, type: !196, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !7, !90}
!198 = !{!199, !200}
!199 = !DILocalVariable(name: "dmanr", arg: 1, scope: !195, file: !146, line: 199, type: !7)
!200 = !DILocalVariable(name: "mode", arg: 2, scope: !195, file: !146, line: 199, type: !90)
!201 = !DILocation(line: 199, column: 46, scope: !195)
!202 = !DILocation(line: 199, column: 58, scope: !195)
!203 = !DILocation(line: 201, column: 6, scope: !204)
!204 = distinct !DILexicalBlock(scope: !195, file: !146, line: 201, column: 6)
!205 = !DILocation(line: 201, column: 12, scope: !204)
!206 = !DILocation(line: 201, column: 6, scope: !195)
!207 = !DILocation(line: 202, column: 12, scope: !204)
!208 = !DILocation(line: 202, column: 19, scope: !204)
!209 = !DILocation(line: 202, column: 17, scope: !204)
!210 = !DILocation(line: 202, column: 3, scope: !204)
!211 = !DILocation(line: 204, column: 12, scope: !204)
!212 = !DILocation(line: 204, column: 20, scope: !204)
!213 = !DILocation(line: 204, column: 26, scope: !204)
!214 = !DILocation(line: 204, column: 17, scope: !204)
!215 = !DILocation(line: 204, column: 3, scope: !204)
!216 = !DILocation(line: 205, column: 1, scope: !195)
!217 = distinct !DISubprogram(name: "set_dma_addr", scope: !146, file: !146, line: 243, type: !218, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !7, !7}
!220 = !{!221, !222}
!221 = !DILocalVariable(name: "dmanr", arg: 1, scope: !217, file: !146, line: 243, type: !7)
!222 = !DILocalVariable(name: "a", arg: 2, scope: !217, file: !146, line: 243, type: !7)
!223 = !DILocation(line: 243, column: 46, scope: !217)
!224 = !DILocation(line: 243, column: 66, scope: !217)
!225 = !DILocation(line: 245, column: 15, scope: !217)
!226 = !DILocation(line: 245, column: 22, scope: !217)
!227 = !DILocation(line: 245, column: 23, scope: !217)
!228 = !DILocation(line: 245, column: 2, scope: !217)
!229 = !DILocation(line: 246, column: 6, scope: !230)
!230 = distinct !DILexicalBlock(scope: !217, file: !146, line: 246, column: 6)
!231 = !DILocation(line: 246, column: 12, scope: !230)
!232 = !DILocation(line: 246, column: 6, scope: !217)
!233 = !DILocation(line: 247, column: 12, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !146, line: 246, column: 19)
!235 = !DILocation(line: 247, column: 14, scope: !234)
!236 = !DILocation(line: 247, column: 24, scope: !234)
!237 = !DILocation(line: 247, column: 30, scope: !234)
!238 = !DILocation(line: 247, column: 35, scope: !234)
!239 = !DILocation(line: 247, column: 41, scope: !234)
!240 = !DILocation(line: 247, column: 22, scope: !234)
!241 = !DILocation(line: 247, column: 3, scope: !234)
!242 = !DILocation(line: 248, column: 13, scope: !234)
!243 = !DILocation(line: 248, column: 15, scope: !234)
!244 = !DILocation(line: 248, column: 21, scope: !234)
!245 = !DILocation(line: 248, column: 12, scope: !234)
!246 = !DILocation(line: 248, column: 31, scope: !234)
!247 = !DILocation(line: 248, column: 37, scope: !234)
!248 = !DILocation(line: 248, column: 42, scope: !234)
!249 = !DILocation(line: 248, column: 48, scope: !234)
!250 = !DILocation(line: 248, column: 29, scope: !234)
!251 = !DILocation(line: 248, column: 3, scope: !234)
!252 = !DILocation(line: 249, column: 2, scope: !234)
!253 = !DILocation(line: 250, column: 13, scope: !254)
!254 = distinct !DILexicalBlock(scope: !230, file: !146, line: 249, column: 11)
!255 = !DILocation(line: 250, column: 15, scope: !254)
!256 = !DILocation(line: 250, column: 21, scope: !254)
!257 = !DILocation(line: 250, column: 12, scope: !254)
!258 = !DILocation(line: 250, column: 31, scope: !254)
!259 = !DILocation(line: 250, column: 37, scope: !254)
!260 = !DILocation(line: 250, column: 42, scope: !254)
!261 = !DILocation(line: 250, column: 48, scope: !254)
!262 = !DILocation(line: 250, column: 29, scope: !254)
!263 = !DILocation(line: 250, column: 3, scope: !254)
!264 = !DILocation(line: 251, column: 13, scope: !254)
!265 = !DILocation(line: 251, column: 15, scope: !254)
!266 = !DILocation(line: 251, column: 21, scope: !254)
!267 = !DILocation(line: 251, column: 12, scope: !254)
!268 = !DILocation(line: 251, column: 31, scope: !254)
!269 = !DILocation(line: 251, column: 37, scope: !254)
!270 = !DILocation(line: 251, column: 42, scope: !254)
!271 = !DILocation(line: 251, column: 48, scope: !254)
!272 = !DILocation(line: 251, column: 29, scope: !254)
!273 = !DILocation(line: 251, column: 3, scope: !254)
!274 = !DILocation(line: 253, column: 1, scope: !217)
!275 = distinct !DISubprogram(name: "set_dma_count", scope: !146, file: !146, line: 264, type: !218, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !276)
!276 = !{!277, !278}
!277 = !DILocalVariable(name: "dmanr", arg: 1, scope: !275, file: !146, line: 264, type: !7)
!278 = !DILocalVariable(name: "count", arg: 2, scope: !275, file: !146, line: 264, type: !7)
!279 = !DILocation(line: 264, column: 47, scope: !275)
!280 = !DILocation(line: 264, column: 67, scope: !275)
!281 = !DILocation(line: 266, column: 7, scope: !275)
!282 = !DILocation(line: 267, column: 6, scope: !283)
!283 = distinct !DILexicalBlock(scope: !275, file: !146, line: 267, column: 6)
!284 = !DILocation(line: 267, column: 12, scope: !283)
!285 = !DILocation(line: 267, column: 6, scope: !275)
!286 = !DILocation(line: 268, column: 12, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !146, line: 267, column: 19)
!288 = !DILocation(line: 268, column: 18, scope: !287)
!289 = !DILocation(line: 268, column: 28, scope: !287)
!290 = !DILocation(line: 268, column: 34, scope: !287)
!291 = !DILocation(line: 268, column: 39, scope: !287)
!292 = !DILocation(line: 268, column: 45, scope: !287)
!293 = !DILocation(line: 268, column: 49, scope: !287)
!294 = !DILocation(line: 268, column: 26, scope: !287)
!295 = !DILocation(line: 268, column: 3, scope: !287)
!296 = !DILocation(line: 269, column: 13, scope: !287)
!297 = !DILocation(line: 269, column: 19, scope: !287)
!298 = !DILocation(line: 269, column: 25, scope: !287)
!299 = !DILocation(line: 269, column: 12, scope: !287)
!300 = !DILocation(line: 270, column: 7, scope: !287)
!301 = !DILocation(line: 270, column: 13, scope: !287)
!302 = !DILocation(line: 270, column: 18, scope: !287)
!303 = !DILocation(line: 270, column: 24, scope: !287)
!304 = !DILocation(line: 270, column: 28, scope: !287)
!305 = !DILocation(line: 270, column: 5, scope: !287)
!306 = !DILocation(line: 269, column: 3, scope: !287)
!307 = !DILocation(line: 271, column: 2, scope: !287)
!308 = !DILocation(line: 272, column: 13, scope: !309)
!309 = distinct !DILexicalBlock(scope: !283, file: !146, line: 271, column: 9)
!310 = !DILocation(line: 272, column: 19, scope: !309)
!311 = !DILocation(line: 272, column: 25, scope: !309)
!312 = !DILocation(line: 272, column: 12, scope: !309)
!313 = !DILocation(line: 273, column: 7, scope: !309)
!314 = !DILocation(line: 273, column: 13, scope: !309)
!315 = !DILocation(line: 273, column: 18, scope: !309)
!316 = !DILocation(line: 273, column: 24, scope: !309)
!317 = !DILocation(line: 273, column: 28, scope: !309)
!318 = !DILocation(line: 273, column: 5, scope: !309)
!319 = !DILocation(line: 272, column: 3, scope: !309)
!320 = !DILocation(line: 274, column: 13, scope: !309)
!321 = !DILocation(line: 274, column: 19, scope: !309)
!322 = !DILocation(line: 274, column: 25, scope: !309)
!323 = !DILocation(line: 274, column: 12, scope: !309)
!324 = !DILocation(line: 275, column: 7, scope: !309)
!325 = !DILocation(line: 275, column: 13, scope: !309)
!326 = !DILocation(line: 275, column: 18, scope: !309)
!327 = !DILocation(line: 275, column: 24, scope: !309)
!328 = !DILocation(line: 275, column: 28, scope: !309)
!329 = !DILocation(line: 275, column: 5, scope: !309)
!330 = !DILocation(line: 274, column: 3, scope: !309)
!331 = !DILocation(line: 277, column: 1, scope: !275)
!332 = distinct !DISubprogram(name: "enable_dma", scope: !146, file: !146, line: 167, type: !166, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!333 = !{!334}
!334 = !DILocalVariable(name: "dmanr", arg: 1, scope: !332, file: !146, line: 167, type: !7)
!335 = !DILocation(line: 167, column: 44, scope: !332)
!336 = !DILocation(line: 169, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !332, file: !146, line: 169, column: 6)
!338 = !DILocation(line: 169, column: 12, scope: !337)
!339 = !DILocation(line: 169, column: 6, scope: !332)
!340 = !DILocation(line: 170, column: 12, scope: !337)
!341 = !DILocation(line: 170, column: 3, scope: !337)
!342 = !DILocation(line: 172, column: 12, scope: !337)
!343 = !DILocation(line: 172, column: 18, scope: !337)
!344 = !DILocation(line: 172, column: 3, scope: !337)
!345 = !DILocation(line: 173, column: 1, scope: !332)
!346 = distinct !DISubprogram(name: "release_dma_lock", scope: !146, file: !146, line: 160, type: !347, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !107}
!349 = !{!350}
!350 = !DILocalVariable(name: "flags", arg: 1, scope: !346, file: !146, line: 160, type: !107)
!351 = !DILocation(line: 160, column: 51, scope: !346)
!352 = !DILocation(line: 162, column: 41, scope: !346)
!353 = !DILocation(line: 162, column: 2, scope: !346)
!354 = !DILocation(line: 163, column: 1, scope: !346)
!355 = distinct !DISubprogram(name: "snd_dma_disable", scope: !3, file: !3, line: 51, type: !347, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !356)
!356 = !{!357, !358}
!357 = !DILocalVariable(name: "dma", arg: 1, scope: !355, file: !3, line: 51, type: !107)
!358 = !DILocalVariable(name: "flags", scope: !355, file: !3, line: 53, type: !107)
!359 = !DILocation(line: 51, column: 36, scope: !355)
!360 = !DILocation(line: 53, column: 2, scope: !355)
!361 = !DILocation(line: 53, column: 16, scope: !355)
!362 = !DILocation(line: 55, column: 10, scope: !355)
!363 = !DILocation(line: 55, column: 8, scope: !355)
!364 = !DILocation(line: 56, column: 15, scope: !355)
!365 = !DILocation(line: 56, column: 2, scope: !355)
!366 = !DILocation(line: 57, column: 14, scope: !355)
!367 = !DILocation(line: 57, column: 2, scope: !355)
!368 = !DILocation(line: 58, column: 19, scope: !355)
!369 = !DILocation(line: 58, column: 2, scope: !355)
!370 = !DILocation(line: 59, column: 1, scope: !355)
!371 = distinct !DISubprogram(name: "snd_dma_pointer", scope: !3, file: !3, line: 69, type: !372, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{!7, !107, !7}
!374 = !{!375, !376, !377, !378, !379}
!375 = !DILocalVariable(name: "dma", arg: 1, scope: !371, file: !3, line: 69, type: !107)
!376 = !DILocalVariable(name: "size", arg: 2, scope: !371, file: !3, line: 69, type: !7)
!377 = !DILocalVariable(name: "flags", scope: !371, file: !3, line: 71, type: !107)
!378 = !DILocalVariable(name: "result", scope: !371, file: !3, line: 72, type: !7)
!379 = !DILocalVariable(name: "result1", scope: !371, file: !3, line: 72, type: !7)
!380 = !DILocation(line: 69, column: 44, scope: !371)
!381 = !DILocation(line: 69, column: 62, scope: !371)
!382 = !DILocation(line: 71, column: 2, scope: !371)
!383 = !DILocation(line: 71, column: 16, scope: !371)
!384 = !DILocation(line: 72, column: 2, scope: !371)
!385 = !DILocation(line: 72, column: 15, scope: !371)
!386 = !DILocation(line: 72, column: 23, scope: !371)
!387 = !DILocation(line: 74, column: 10, scope: !371)
!388 = !DILocation(line: 74, column: 8, scope: !371)
!389 = !DILocation(line: 75, column: 15, scope: !371)
!390 = !DILocation(line: 75, column: 2, scope: !371)
!391 = !DILocation(line: 77, column: 15, scope: !392)
!392 = distinct !DILexicalBlock(scope: !371, file: !3, line: 76, column: 6)
!393 = !DILocation(line: 77, column: 3, scope: !392)
!394 = !DILocation(line: 78, column: 27, scope: !371)
!395 = !DILocation(line: 78, column: 11, scope: !371)
!396 = !DILocation(line: 78, column: 9, scope: !371)
!397 = !DILocation(line: 84, column: 28, scope: !371)
!398 = !DILocation(line: 84, column: 12, scope: !371)
!399 = !DILocation(line: 84, column: 10, scope: !371)
!400 = !DILocation(line: 86, column: 14, scope: !401)
!401 = distinct !DILexicalBlock(scope: !371, file: !3, line: 85, column: 6)
!402 = !DILocation(line: 86, column: 3, scope: !401)
!403 = !DILocation(line: 87, column: 19, scope: !371)
!404 = !DILocation(line: 87, column: 2, scope: !371)
!405 = !DILocation(line: 88, column: 6, scope: !406)
!406 = distinct !DILexicalBlock(scope: !371, file: !3, line: 88, column: 6)
!407 = !DILocation(line: 88, column: 6, scope: !371)
!408 = !DILocation(line: 89, column: 12, scope: !406)
!409 = !DILocation(line: 89, column: 10, scope: !406)
!410 = !DILocation(line: 89, column: 3, scope: !406)
!411 = !DILocation(line: 94, column: 6, scope: !412)
!412 = distinct !DILexicalBlock(scope: !371, file: !3, line: 94, column: 6)
!413 = !DILocation(line: 94, column: 16, scope: !412)
!414 = !DILocation(line: 94, column: 13, scope: !412)
!415 = !DILocation(line: 94, column: 21, scope: !412)
!416 = !DILocation(line: 94, column: 24, scope: !412)
!417 = !DILocation(line: 94, column: 31, scope: !412)
!418 = !DILocation(line: 94, column: 6, scope: !371)
!419 = !DILocation(line: 95, column: 3, scope: !412)
!420 = !DILocation(line: 97, column: 10, scope: !412)
!421 = !DILocation(line: 97, column: 17, scope: !412)
!422 = !DILocation(line: 97, column: 15, scope: !412)
!423 = !DILocation(line: 97, column: 3, scope: !412)
!424 = !DILocation(line: 98, column: 1, scope: !371)
!425 = distinct !DISubprogram(name: "get_dma_residue", scope: !146, file: !146, line: 288, type: !426, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!46, !7}
!428 = !{!429, !430, !431}
!429 = !DILocalVariable(name: "dmanr", arg: 1, scope: !425, file: !146, line: 288, type: !7)
!430 = !DILocalVariable(name: "io_port", scope: !425, file: !146, line: 290, type: !7)
!431 = !DILocalVariable(name: "count", scope: !425, file: !146, line: 292, type: !108)
!432 = !DILocation(line: 288, column: 48, scope: !425)
!433 = !DILocation(line: 290, column: 2, scope: !425)
!434 = !DILocation(line: 290, column: 15, scope: !425)
!435 = !DILocation(line: 292, column: 2, scope: !425)
!436 = !DILocation(line: 292, column: 17, scope: !425)
!437 = !DILocation(line: 294, column: 13, scope: !425)
!438 = !DILocation(line: 294, column: 19, scope: !425)
!439 = !DILocation(line: 294, column: 12, scope: !425)
!440 = !DILocation(line: 294, column: 29, scope: !425)
!441 = !DILocation(line: 294, column: 35, scope: !425)
!442 = !DILocation(line: 294, column: 40, scope: !425)
!443 = !DILocation(line: 294, column: 46, scope: !425)
!444 = !DILocation(line: 294, column: 50, scope: !425)
!445 = !DILocation(line: 295, column: 7, scope: !425)
!446 = !DILocation(line: 295, column: 13, scope: !425)
!447 = !DILocation(line: 295, column: 18, scope: !425)
!448 = !DILocation(line: 295, column: 24, scope: !425)
!449 = !DILocation(line: 295, column: 28, scope: !425)
!450 = !DILocation(line: 294, column: 10, scope: !425)
!451 = !DILocation(line: 297, column: 22, scope: !425)
!452 = !DILocation(line: 297, column: 14, scope: !425)
!453 = !DILocation(line: 297, column: 12, scope: !425)
!454 = !DILocation(line: 297, column: 10, scope: !425)
!455 = !DILocation(line: 297, column: 8, scope: !425)
!456 = !DILocation(line: 298, column: 19, scope: !425)
!457 = !DILocation(line: 298, column: 11, scope: !425)
!458 = !DILocation(line: 298, column: 28, scope: !425)
!459 = !DILocation(line: 298, column: 8, scope: !425)
!460 = !DILocation(line: 300, column: 10, scope: !425)
!461 = !DILocation(line: 300, column: 16, scope: !425)
!462 = !DILocation(line: 300, column: 9, scope: !425)
!463 = !DILocation(line: 300, column: 24, scope: !425)
!464 = !DILocation(line: 300, column: 33, scope: !425)
!465 = !DILocation(line: 300, column: 39, scope: !425)
!466 = !DILocation(line: 301, column: 1, scope: !425)
!467 = !DILocation(line: 300, column: 2, scope: !425)
!468 = distinct !DISubprogram(name: "snd_devm_request_dma", scope: !3, file: !3, line: 123, type: !469, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2041)
!469 = !DISubroutineType(types: !470)
!470 = !{!46, !471, !46, !479}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !473)
!473 = !{!474, !1138, !1139, !1142, !1143, !1196, !1643, !1644, !1645, !1646, !1647, !1654, !1824, !1837, !1847, !1851, !1853, !1854, !1855, !1859, !1866, !1867, !1870, !1873, !1877, !1981, !1982, !1985, !1986, !1987, !1988, !2018, !2019, !2020, !2023, !2026, !2035, !2036, !2037, !2038, !2039, !2040}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !472, file: !26, line: 706, baseType: !475, size: 512)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !476, line: 64, size: 512, elements: !477)
!476 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!477 = !{!478, !481, !487, !489, !577, !1009, !1123, !1133, !1134, !1135, !1136, !1137}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !475, file: !476, line: 65, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !475, file: !476, line: 66, baseType: !482, size: 128, offset: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !81, line: 190, size: 128, elements: !483)
!483 = !{!484, !486}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !81, line: 191, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !482, file: !81, line: 191, baseType: !485, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !475, file: !476, line: 67, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !475, file: !476, line: 68, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !476, line: 168, size: 768, elements: !492)
!492 = !{!493, !494, !536, !537}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !491, file: !476, line: 169, baseType: !482, size: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !491, file: !476, line: 170, baseType: !495, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !496, line: 29, baseType: !497)
!496 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !496, line: 17, size: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, scope: !497, file: !496, line: 18, baseType: !500, size: 32)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !496, line: 18, size: 32, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !500, file: !496, line: 19, baseType: !503, size: 32)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !504, line: 14, size: 32, elements: !505)
!504 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !503, file: !504, line: 15, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !508, line: 44, baseType: !509)
!508 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !508, line: 14, size: 32, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !508, line: 15, baseType: !512, size: 32)
!512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !508, line: 15, size: 32, elements: !513)
!513 = !{!514, !519, !529}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !512, file: !508, line: 16, baseType: !515, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !81, line: 174, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 172, size: 32, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !516, file: !81, line: 173, baseType: !46, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !512, file: !508, line: 24, baseType: !520, size: 16)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !512, file: !508, line: 24, size: 16, elements: !521)
!521 = !{!522, !528}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !520, file: !508, line: 25, baseType: !523, size: 8)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !524, line: 17, baseType: !525)
!524 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !526, line: 21, baseType: !527)
!526 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!527 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !520, file: !508, line: 26, baseType: !523, size: 8, offset: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !512, file: !508, line: 28, baseType: !530, size: 32)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !512, file: !508, line: 28, size: 32, elements: !531)
!531 = !{!532, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !530, file: !508, line: 29, baseType: !533, size: 16)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !524, line: 19, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !526, line: 24, baseType: !108)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !530, file: !508, line: 30, baseType: !533, size: 16, offset: 16)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !491, file: !476, line: 171, baseType: !475, size: 512, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !491, file: !476, line: 172, baseType: !538, size: 64, offset: 704)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !476, line: 133, size: 192, elements: !541)
!541 = !{!542, !549, !554}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !540, file: !476, line: 134, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!46, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !476, line: 135, baseType: !550, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!479, !547}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !540, file: !476, line: 136, baseType: !555, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!46, !547, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !476, line: 125, size: 20736, elements: !561)
!561 = !{!562, !567, !571, !572, !576}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !560, file: !476, line: 126, baseType: !563, size: 192)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 192, elements: !565)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!565 = !{!566}
!566 = !DISubrange(count: 3)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !560, file: !476, line: 127, baseType: !568, size: 4096, offset: 192)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 4096, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !560, file: !476, line: 128, baseType: !46, size: 32, offset: 4288)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !560, file: !476, line: 129, baseType: !573, size: 16384, offset: 4320)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 16384, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 2048)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !560, file: !476, line: 130, baseType: !46, size: 32, offset: 20704)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !475, file: !476, line: 69, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !476, line: 116, size: 384, elements: !581)
!581 = !{!582, !586, !614, !956, !987, !991}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !580, file: !476, line: 117, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !488}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !580, file: !476, line: 118, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !590, line: 254, size: 128, elements: !591)
!590 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!591 = !{!592, !607}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !589, file: !590, line: 255, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!596, !488, !601, !564}
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !81, line: 66, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !598, line: 73, baseType: !599)
!598 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !598, line: 15, baseType: !600)
!600 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !590, line: 30, size: 128, elements: !603)
!603 = !{!604, !605}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !602, file: !590, line: 31, baseType: !479, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !602, file: !590, line: 32, baseType: !606, size: 16, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !81, line: 24, baseType: !108)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !589, file: !590, line: 256, baseType: !608, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!596, !488, !601, !479, !611}
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 61, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !598, line: 72, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !598, line: 16, baseType: !107)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !580, file: !476, line: 119, baseType: !615, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !590, line: 84, size: 320, elements: !619)
!619 = !{!620, !621, !625, !952, !954}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !618, file: !590, line: 85, baseType: !479, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !618, file: !590, line: 86, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!606, !488, !601, !46}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !618, file: !590, line: 88, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!606, !488, !629, !46}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !590, line: 175, size: 512, elements: !631)
!631 = !{!632, !633, !634, !635, !642, !652, !653}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !630, file: !590, line: 176, baseType: !602, size: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !630, file: !590, line: 177, baseType: !611, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !630, file: !590, line: 178, baseType: !79, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !630, file: !590, line: 179, baseType: !636, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !641, line: 32, flags: DIFlagFwdDecl)
!641 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !630, file: !590, line: 180, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!596, !646, !488, !629, !564, !649, !611}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !648, line: 537, flags: DIFlagFwdDecl)
!648 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !81, line: 52, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !598, line: 88, baseType: !651)
!651 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !630, file: !590, line: 182, baseType: !643, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !630, file: !590, line: 184, baseType: !654, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!46, !646, !488, !629, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !641, line: 625, size: 1344, elements: !659)
!659 = !{!660, !677, !900, !906, !913, !914, !919, !922, !934, !935, !938, !942, !943, !944, !945, !946, !950}
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !641, line: 628, baseType: !661, size: 128)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !641, line: 628, size: 128, elements: !662)
!662 = !{!663, !668}
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !641, line: 629, baseType: !664, size: 128)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !661, file: !641, line: 629, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !664, file: !641, line: 631, baseType: !107, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !664, file: !641, line: 632, baseType: !107, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !661, file: !641, line: 635, baseType: !669, size: 128, align: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !81, line: 232, size: 128, align: 64, elements: !670)
!670 = !{!671, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !81, line: 233, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !669, file: !81, line: 234, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !672}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !658, file: !641, line: 639, baseType: !678, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !641, line: 733, size: 10240, elements: !680)
!680 = !{!681, !896}
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !641, line: 734, baseType: !682, size: 10240)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !641, line: 734, size: 10240, elements: !683)
!683 = !{!684, !688, !702, !706, !707, !708, !709, !710, !711, !719, !720, !721, !730, !731, !740, !741, !742, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !789, !803, !806, !861, !862, !863, !866, !870, !871, !874, !875, !876, !883, !884}
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !641, line: 739, baseType: !685, size: 512, align: 512)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !682, file: !641, line: 739, size: 512, align: 512, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !685, file: !641, line: 747, baseType: !515, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !682, file: !641, line: 750, baseType: !689, size: 128, offset: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !690, line: 218, size: 128, elements: !691)
!690 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!691 = !{!692, !700, !701}
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !690, line: 219, baseType: !693, size: 32)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !690, line: 219, size: 32, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !693, file: !690, line: 220, baseType: !495, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !693, file: !690, line: 221, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !690, line: 197, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !690, line: 197, elements: !699)
!699 = !{}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !689, file: !690, line: 223, baseType: !7, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !689, file: !690, line: 224, baseType: !79, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !682, file: !641, line: 752, baseType: !703, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!107, !646, !107, !107, !107, !107}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !682, file: !641, line: 756, baseType: !107, size: 64, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !682, file: !641, line: 757, baseType: !107, size: 64, offset: 768)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !682, file: !641, line: 760, baseType: !107, size: 64, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !682, file: !641, line: 761, baseType: !107, size: 64, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !682, file: !641, line: 763, baseType: !107, size: 64, offset: 960)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !682, file: !641, line: 764, baseType: !712, size: 64, offset: 1024)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !648, line: 299, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 299, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !714, file: !648, line: 299, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !718, line: 18, baseType: !107)
!718 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!719 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !682, file: !641, line: 773, baseType: !515, size: 32, offset: 1088)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !682, file: !641, line: 785, baseType: !515, size: 32, offset: 1120)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !682, file: !641, line: 795, baseType: !722, size: 64, offset: 1152)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !641, line: 726, size: 128, elements: !724)
!724 = !{!725, !729}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !723, file: !641, line: 727, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !524, line: 23, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !526, line: 31, baseType: !728)
!728 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !723, file: !641, line: 728, baseType: !46, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !682, file: !641, line: 801, baseType: !107, size: 64, offset: 1216)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !682, file: !641, line: 804, baseType: !732, size: 64, offset: 1280)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !733, line: 13, baseType: !734)
!733 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !81, line: 181, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 179, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !735, file: !81, line: 180, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !524, line: 22, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !526, line: 30, baseType: !651)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !682, file: !641, line: 806, baseType: !46, size: 32, offset: 1344)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !682, file: !641, line: 808, baseType: !495, size: 32, offset: 1376)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !682, file: !641, line: 823, baseType: !743, size: 320, offset: 1408)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !744, line: 48, size: 320, elements: !745)
!744 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!745 = !{!746, !747, !748, !753, !755}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !743, file: !744, line: 49, baseType: !732, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !743, file: !744, line: 55, baseType: !732, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !743, file: !744, line: 57, baseType: !749, size: 32, offset: 128)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !750, line: 15, size: 32, elements: !751)
!750 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !749, file: !750, line: 20, baseType: !515, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !743, file: !744, line: 59, baseType: !754, size: 32, offset: 160)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !504, line: 23, baseType: !503)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !743, file: !744, line: 60, baseType: !482, size: 128, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !682, file: !641, line: 825, baseType: !482, size: 128, offset: 1728)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !682, file: !641, line: 845, baseType: !46, size: 32, offset: 1856)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !682, file: !641, line: 849, baseType: !107, size: 64, offset: 1920)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !682, file: !641, line: 850, baseType: !107, size: 64, offset: 1984)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !682, file: !641, line: 852, baseType: !107, size: 64, offset: 2048)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !682, file: !641, line: 853, baseType: !107, size: 64, offset: 2112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !682, file: !641, line: 854, baseType: !734, size: 64, offset: 2176)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !682, file: !641, line: 855, baseType: !107, size: 64, offset: 2240)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !682, file: !641, line: 856, baseType: !107, size: 64, offset: 2304)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !682, file: !641, line: 857, baseType: !107, size: 64, offset: 2368)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !682, file: !641, line: 858, baseType: !107, size: 64, offset: 2432)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !682, file: !641, line: 865, baseType: !768, size: 32, offset: 2496)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !769, line: 69, baseType: !770)
!769 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !769, line: 64, size: 32, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !770, file: !769, line: 65, baseType: !7, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !682, file: !641, line: 867, baseType: !495, size: 32, offset: 2528)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !682, file: !641, line: 869, baseType: !107, size: 64, offset: 2560)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !682, file: !641, line: 869, baseType: !107, size: 64, offset: 2624)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !682, file: !641, line: 869, baseType: !107, size: 64, offset: 2688)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !682, file: !641, line: 869, baseType: !107, size: 64, offset: 2752)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !682, file: !641, line: 870, baseType: !107, size: 64, offset: 2816)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !682, file: !641, line: 870, baseType: !107, size: 64, offset: 2880)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !682, file: !641, line: 870, baseType: !107, size: 64, offset: 2944)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !682, file: !641, line: 871, baseType: !107, size: 64, offset: 3008)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !682, file: !641, line: 871, baseType: !107, size: 64, offset: 3072)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !682, file: !641, line: 871, baseType: !107, size: 64, offset: 3136)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !682, file: !641, line: 871, baseType: !107, size: 64, offset: 3200)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !682, file: !641, line: 873, baseType: !786, size: 3328, offset: 3264)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 3328, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 52)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !682, file: !641, line: 875, baseType: !790, size: 1280, offset: 6592)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 1280, elements: !801)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !792, line: 22, size: 320, elements: !793)
!792 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!793 = !{!794, !795, !796, !797}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !791, file: !792, line: 23, baseType: !754, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !791, file: !792, line: 24, baseType: !738, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !791, file: !792, line: 26, baseType: !482, size: 128, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !791, file: !792, line: 28, baseType: !798, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !524, line: 20, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !526, line: 26, baseType: !46)
!801 = !{!802}
!802 = !DISubrange(count: 4)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !682, file: !641, line: 877, baseType: !804, size: 64, offset: 7872)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !641, line: 877, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !682, file: !641, line: 880, baseType: !807, size: 1088, offset: 7936)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !808, line: 72, baseType: !809)
!808 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !808, line: 23, size: 1088, elements: !810)
!810 = !{!811, !812, !813, !814, !815, !818, !819, !827, !828, !855, !856, !857}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !809, file: !808, line: 28, baseType: !726, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !809, file: !808, line: 38, baseType: !734, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !809, file: !808, line: 40, baseType: !107, size: 64, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !809, file: !808, line: 43, baseType: !743, size: 320, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !809, file: !808, line: 44, baseType: !816, size: 64, offset: 512)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !808, line: 44, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !809, file: !808, line: 48, baseType: !107, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !809, file: !808, line: 59, baseType: !820, size: 256, offset: 640)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !821, line: 66, size: 256, elements: !822)
!821 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!822 = !{!823, !824, !825, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !820, file: !821, line: 67, baseType: !732, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !820, file: !821, line: 68, baseType: !754, size: 32, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !820, file: !821, line: 70, baseType: !749, size: 32, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !820, file: !821, line: 72, baseType: !482, size: 128, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !809, file: !808, line: 60, baseType: !79, size: 64, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !809, file: !808, line: 61, baseType: !829, size: 64, offset: 960)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !832, line: 13, size: 1216, elements: !833)
!832 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!833 = !{!834, !835, !836, !837, !838, !839, !840, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !831, file: !832, line: 14, baseType: !79, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !831, file: !832, line: 15, baseType: !107, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !831, file: !832, line: 17, baseType: !107, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !831, file: !832, line: 17, baseType: !107, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !831, file: !832, line: 18, baseType: !107, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !831, file: !832, line: 18, baseType: !107, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !831, file: !832, line: 19, baseType: !841, size: 64, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !831, file: !832, line: 21, baseType: !600, size: 64, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !831, file: !832, line: 23, baseType: !600, size: 64, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !831, file: !832, line: 24, baseType: !600, size: 64, offset: 576)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !831, file: !832, line: 25, baseType: !600, size: 64, offset: 640)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !831, file: !832, line: 26, baseType: !600, size: 64, offset: 704)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !831, file: !832, line: 27, baseType: !600, size: 64, offset: 768)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !831, file: !832, line: 28, baseType: !600, size: 64, offset: 832)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !831, file: !832, line: 29, baseType: !600, size: 64, offset: 896)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !831, file: !832, line: 30, baseType: !600, size: 64, offset: 960)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !831, file: !832, line: 31, baseType: !600, size: 64, offset: 1024)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !831, file: !832, line: 32, baseType: !600, size: 64, offset: 1088)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !831, file: !832, line: 33, baseType: !600, size: 64, offset: 1152)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !809, file: !808, line: 63, baseType: !515, size: 32, offset: 1024)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !809, file: !808, line: 69, baseType: !533, size: 16, offset: 1056)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !809, file: !808, line: 70, baseType: !858, size: 16, offset: 1072)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !524, line: 18, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !526, line: 23, baseType: !860)
!860 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !641, line: 882, baseType: !107, size: 64, offset: 9024)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !682, file: !641, line: 885, baseType: !495, size: 32, offset: 9088)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !682, file: !641, line: 886, baseType: !864, size: 64, offset: 9152)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !641, line: 732, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !682, file: !641, line: 901, baseType: !867, size: 64, offset: 9216)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !869, line: 18, flags: DIFlagFwdDecl)
!869 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!870 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !682, file: !641, line: 904, baseType: !646, size: 64, offset: 9280)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !682, file: !641, line: 906, baseType: !872, size: 64, offset: 9344)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !641, line: 906, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !682, file: !641, line: 930, baseType: !515, size: 32, offset: 9408)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !682, file: !641, line: 933, baseType: !515, size: 32, offset: 9440)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !682, file: !641, line: 935, baseType: !877, size: 64, offset: 9472)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !878, line: 103, size: 64, elements: !879)
!878 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !877, file: !878, line: 104, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !878, line: 101, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !682, file: !641, line: 940, baseType: !732, size: 64, offset: 9536)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !682, file: !641, line: 942, baseType: !885, size: 256, offset: 9600)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !886, line: 98, size: 256, elements: !887)
!886 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!887 = !{!888, !889, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !885, file: !886, line: 99, baseType: !732, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !885, file: !886, line: 100, baseType: !482, size: 128, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !885, file: !886, line: 101, baseType: !891, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !886, line: 21, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !895}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !679, file: !641, line: 986, baseType: !897, offset: 10240)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, elements: !898)
!898 = !{!899}
!899 = !DISubrange(count: -1)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !658, file: !641, line: 640, baseType: !901, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !648, line: 297, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !648, line: 297, size: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !902, file: !648, line: 297, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !718, line: 19, baseType: !107)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !641, line: 646, baseType: !907, size: 64, offset: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !641, line: 646, size: 64, elements: !908)
!908 = !{!909, !912}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !907, file: !641, line: 647, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !641, line: 542, baseType: !107)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !907, file: !641, line: 648, baseType: !911, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !658, file: !641, line: 666, baseType: !46, size: 32, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !658, file: !641, line: 667, baseType: !915, size: 64, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !641, line: 579, size: 320, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !916, file: !641, line: 580, baseType: !743, size: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !658, file: !641, line: 670, baseType: !920, size: 8, offset: 448)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !81, line: 35, baseType: !921)
!921 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !658, file: !641, line: 681, baseType: !923, size: 256, offset: 512)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !641, line: 678, size: 256, elements: !924)
!924 = !{!925, !933}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !923, file: !641, line: 679, baseType: !926, size: 192, align: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !927, line: 5, size: 192, align: 64, elements: !928)
!927 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!928 = !{!929, !930, !932}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !926, file: !927, line: 6, baseType: !107, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !926, file: !927, line: 7, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !926, file: !927, line: 8, baseType: !931, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !923, file: !641, line: 680, baseType: !107, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !658, file: !641, line: 689, baseType: !482, size: 128, offset: 768)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !658, file: !641, line: 691, baseType: !936, size: 64, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !641, line: 691, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !658, file: !641, line: 694, baseType: !939, size: 64, offset: 960)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !641, line: 694, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !658, file: !641, line: 697, baseType: !107, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !658, file: !641, line: 699, baseType: !646, size: 64, offset: 1088)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !658, file: !641, line: 700, baseType: !79, size: 64, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !658, file: !641, line: 711, baseType: !732, size: 64, offset: 1216)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !658, file: !641, line: 717, baseType: !947, size: 64, offset: 1280)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !949, line: 54, flags: DIFlagFwdDecl)
!949 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !658, file: !641, line: 722, baseType: !951, offset: 1344)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !641, line: 570, elements: !699)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !618, file: !590, line: 90, baseType: !953, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !618, file: !590, line: 91, baseType: !955, size: 64, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !580, file: !476, line: 120, baseType: !957, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!960, !547}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !963)
!963 = !{!964, !965, !969, !973, !979, !983}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !962, file: !6, line: 40, baseType: !5, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !962, file: !6, line: 41, baseType: !966, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!920}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !962, file: !6, line: 42, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!79}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !962, file: !6, line: 43, baseType: !974, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!841, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !962, file: !6, line: 44, baseType: !980, size: 64, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!841}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !962, file: !6, line: 45, baseType: !984, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !79}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !580, file: !476, line: 121, baseType: !988, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!841, !547}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !580, file: !476, line: 122, baseType: !992, size: 64, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !547, !995, !1002}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !869, line: 23, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !869, line: 21, size: 32, elements: !998)
!998 = !{!999}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !997, file: !869, line: 22, baseType: !1000, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !81, line: 37, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !598, line: 49, baseType: !7)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !869, line: 28, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !869, line: 26, size: 32, elements: !1005)
!1005 = !{!1006}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1004, file: !869, line: 27, baseType: !1007, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !81, line: 38, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !598, line: 50, baseType: !7)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !475, file: !476, line: 70, baseType: !1010, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1012, line: 190, size: 1152, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1115, !1116, !1117, !1118, !1119, !1122}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1011, file: !1012, line: 191, baseType: !515, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1011, file: !1012, line: 192, baseType: !515, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1011, file: !1012, line: 202, baseType: !1010, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1011, file: !1012, line: 203, baseType: !479, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1011, file: !1012, line: 205, baseType: !926, size: 192, align: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1011, file: !1012, line: 207, baseType: !841, size: 64, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1011, file: !1012, line: 208, baseType: !7, size: 32, offset: 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !1012, line: 209, baseType: !1022, size: 256, offset: 512)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !1012, line: 209, size: 256, elements: !1023)
!1023 = !{!1024, !1036, !1040}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1022, file: !1012, line: 210, baseType: !1025, size: 256)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1012, line: 153, size: 256, elements: !1026)
!1026 = !{!1027, !1028, !1032, !1035}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1025, file: !1012, line: 154, baseType: !107, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1025, file: !1012, line: 156, baseType: !1029, size: 64, offset: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !927, line: 12, size: 64, elements: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1029, file: !927, line: 13, baseType: !931, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1025, file: !1012, line: 162, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1012, line: 162, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1025, file: !1012, line: 167, baseType: !107, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1022, file: !1012, line: 211, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1012, line: 170, size: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1037, file: !1012, line: 171, baseType: !1010, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1022, file: !1012, line: 212, baseType: !1041, size: 256)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1012, line: 174, size: 256, elements: !1042)
!1042 = !{!1043, !1110, !1113, !1114}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1041, file: !1012, line: 175, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1012, line: 271, size: 768, elements: !1047)
!1047 = !{!1048, !1070, !1074, !1078, !1083, !1087, !1091, !1095, !1096, !1097, !1098, !1106}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1046, file: !1012, line: 276, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!46, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1012, line: 251, size: 1216, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1053, file: !1012, line: 253, baseType: !1010, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1053, file: !1012, line: 254, baseType: !646, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1053, file: !1012, line: 255, baseType: !1058, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !949, line: 66, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1053, file: !1012, line: 256, baseType: !79, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1053, file: !1012, line: 259, baseType: !820, size: 256, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1053, file: !1012, line: 260, baseType: !820, size: 256, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1053, file: !1012, line: 261, baseType: !46, size: 32, offset: 768)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1053, file: !1012, line: 262, baseType: !482, size: 128, offset: 832)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1053, file: !1012, line: 263, baseType: !564, size: 64, offset: 960)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1053, file: !1012, line: 265, baseType: !611, size: 64, offset: 1024)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1053, file: !1012, line: 266, baseType: !920, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1053, file: !1012, line: 267, baseType: !920, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1053, file: !1012, line: 268, baseType: !939, size: 64, offset: 1152)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1046, file: !1012, line: 277, baseType: !1071, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !1052}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1046, file: !1012, line: 290, baseType: !1075, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!46, !1058, !79}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1046, file: !1012, line: 292, baseType: !1079, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!79, !1058, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1046, file: !1012, line: 293, baseType: !1084, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!79, !1058, !79, !1082}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1046, file: !1012, line: 294, baseType: !1088, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1058, !79}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1046, file: !1012, line: 296, baseType: !1092, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!596, !1052, !564, !611, !649}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1046, file: !1012, line: 306, baseType: !611, size: 64, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1046, file: !1012, line: 313, baseType: !920, size: 8, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1046, file: !1012, line: 314, baseType: !1092, size: 64, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1046, file: !1012, line: 317, baseType: !1099, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!1102, !1052, !1104}
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1103, line: 59, baseType: !7)
!1103 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1012, line: 31, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1046, file: !1012, line: 320, baseType: !1107, size: 64, offset: 704)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!46, !1052, !657}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1041, file: !1012, line: 176, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1012, line: 35, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1041, file: !1012, line: 177, baseType: !649, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1041, file: !1012, line: 178, baseType: !1010, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1011, file: !1012, line: 215, baseType: !79, size: 64, offset: 768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1011, file: !1012, line: 221, baseType: !726, size: 64, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1011, file: !1012, line: 223, baseType: !108, size: 16, offset: 896)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1011, file: !1012, line: 224, baseType: !606, size: 16, offset: 912)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1011, file: !1012, line: 225, baseType: !1120, size: 64, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1012, line: 36, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1011, file: !1012, line: 227, baseType: !669, size: 128, align: 64, offset: 1024)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !475, file: !476, line: 71, baseType: !1124, size: 32, offset: 448)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1125, line: 19, size: 32, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1124, file: !1125, line: 20, baseType: !1128, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1129, line: 113, baseType: !1130)
!1129 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1129, line: 111, size: 32, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1130, file: !1129, line: 112, baseType: !515, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !475, file: !476, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !475, file: !476, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !475, file: !476, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !475, file: !476, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !475, file: !476, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !472, file: !26, line: 707, baseType: !471, size: 64, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !472, file: !26, line: 709, baseType: !1140, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !472, file: !26, line: 711, baseType: !479, size: 64, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !26, line: 712, baseType: !1144, size: 64, offset: 704)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1156, !1161, !1165}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1146, file: !26, line: 90, baseType: !479, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1146, file: !26, line: 91, baseType: !615, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1146, file: !26, line: 92, baseType: !1151, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!46, !1154, !559}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1146, file: !26, line: 93, baseType: !1157, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!564, !1154, !1160, !995, !1002}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1146, file: !26, line: 95, baseType: !1162, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !471}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1146, file: !26, line: 97, baseType: !1166, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1168)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1169)
!1169 = !{!1170, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1168, file: !38, line: 287, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!46, !471}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1168, file: !38, line: 288, baseType: !1162, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1168, file: !38, line: 289, baseType: !1171, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1168, file: !38, line: 290, baseType: !1171, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1168, file: !38, line: 291, baseType: !1171, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1168, file: !38, line: 292, baseType: !1171, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1168, file: !38, line: 293, baseType: !1171, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1168, file: !38, line: 294, baseType: !1171, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1168, file: !38, line: 295, baseType: !1171, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1168, file: !38, line: 296, baseType: !1171, size: 64, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1168, file: !38, line: 297, baseType: !1171, size: 64, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1168, file: !38, line: 298, baseType: !1171, size: 64, offset: 704)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1168, file: !38, line: 299, baseType: !1171, size: 64, offset: 768)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1168, file: !38, line: 300, baseType: !1171, size: 64, offset: 832)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1168, file: !38, line: 301, baseType: !1171, size: 64, offset: 896)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1168, file: !38, line: 302, baseType: !1171, size: 64, offset: 960)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1168, file: !38, line: 303, baseType: !1171, size: 64, offset: 1024)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1168, file: !38, line: 304, baseType: !1171, size: 64, offset: 1088)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1168, file: !38, line: 305, baseType: !1171, size: 64, offset: 1152)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1168, file: !38, line: 306, baseType: !1171, size: 64, offset: 1216)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1168, file: !38, line: 307, baseType: !1171, size: 64, offset: 1280)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1168, file: !38, line: 308, baseType: !1171, size: 64, offset: 1344)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1168, file: !38, line: 309, baseType: !1171, size: 64, offset: 1408)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !472, file: !26, line: 714, baseType: !1197, size: 64, offset: 768)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1200, line: 80, size: 1344, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1642}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1199, file: !1200, line: 81, baseType: !479, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1199, file: !1200, line: 82, baseType: !479, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1199, file: !1200, line: 83, baseType: !615, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1199, file: !1200, line: 84, baseType: !615, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1199, file: !1200, line: 85, baseType: !615, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1199, file: !1200, line: 87, baseType: !1208, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!46, !471, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1594, !1595, !1596, !1597, !1601, !1605, !1606, !1607, !1608, !1609, !1617, !1618, !1619, !1620, !1621, !1622}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1212, file: !20, line: 97, baseType: !479, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1212, file: !20, line: 98, baseType: !1197, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1212, file: !20, line: 100, baseType: !1217, size: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1226, !1247, !1273, !1274, !1275, !1276, !1280, !1283, !1284, !1285, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1348, !1352, !1372, !1390, !1391, !1392, !1393, !1402, !1426, !1427, !1430, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1444, !1445, !1552, !1560, !1561, !1562, !1564, !1568, !1569, !1573, !1574, !1575, !1576, !1578, !1579, !1580, !1587, !1588, !1589, !1593}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1218, file: !13, line: 403, baseType: !12, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1218, file: !13, line: 406, baseType: !482, size: 128, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1218, file: !13, line: 409, baseType: !1223, size: 448, offset: 192)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 448, elements: !1224)
!1224 = !{!1225}
!1225 = !DISubrange(count: 56)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1218, file: !13, line: 417, baseType: !1227, size: 768, offset: 640)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1235}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1227, file: !13, line: 46, baseType: !475, size: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1227, file: !13, line: 47, baseType: !1217, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1227, file: !13, line: 48, baseType: !488, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1227, file: !13, line: 49, baseType: !1233, size: 64, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1227, file: !13, line: 50, baseType: !1236, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1238, line: 26, size: 256, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1237, file: !1238, line: 27, baseType: !7, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1237, file: !1238, line: 28, baseType: !1242, size: 192, offset: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1243, line: 43, size: 192, elements: !1244)
!1243 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1242, file: !1243, line: 44, baseType: !754, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1242, file: !1243, line: 45, baseType: !482, size: 128, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1218, file: !13, line: 418, baseType: !1248, size: 64, offset: 1408)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !1250)
!1250 = !{!1251, !1252, !1257, !1261, !1265, !1269}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1249, file: !13, line: 54, baseType: !602, size: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1249, file: !13, line: 55, baseType: !1253, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!596, !1248, !1256, !564}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1249, file: !13, line: 57, baseType: !1258, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!596, !1248, !1256, !479, !611}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1249, file: !13, line: 59, baseType: !1262, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !1217, !479}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1249, file: !13, line: 60, baseType: !1266, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!46, !1217}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1249, file: !13, line: 61, baseType: !1270, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1217}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1218, file: !13, line: 419, baseType: !479, size: 64, offset: 1472)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1218, file: !13, line: 420, baseType: !479, size: 64, offset: 1536)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1218, file: !13, line: 421, baseType: !488, size: 64, offset: 1600)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1218, file: !13, line: 424, baseType: !1277, size: 64, offset: 1664)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1218, file: !13, line: 425, baseType: !1281, size: 64, offset: 1728)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1218, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1218, file: !13, line: 435, baseType: !820, size: 256, offset: 1856)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1218, file: !13, line: 437, baseType: !1286, size: 64, offset: 2112)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1288, line: 69, size: 320, elements: !1289)
!1288 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1289 = !{!1290, !1291, !1292, !1309, !1311, !1315, !1316}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1287, file: !1288, line: 70, baseType: !479, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1287, file: !1288, line: 71, baseType: !1217, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1287, file: !1288, line: 72, baseType: !1293, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1288, line: 47, size: 256, elements: !1296)
!1296 = !{!1297, !1298, !1304, !1308}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1295, file: !1288, line: 49, baseType: !7, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1295, file: !1288, line: 51, baseType: !1299, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!46, !479, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1295, file: !1288, line: 53, baseType: !1305, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!46, !564, !1302}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1295, file: !1288, line: 55, baseType: !984, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1287, file: !1288, line: 73, baseType: !1310, size: 16, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1287, file: !1288, line: 74, baseType: !1312, size: 8, offset: 208)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !524, line: 16, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !526, line: 20, baseType: !1314)
!1314 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1287, file: !1288, line: 75, baseType: !523, size: 8, offset: 216)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !1288, line: 76, baseType: !1317, size: 64, offset: 256)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !1288, line: 76, size: 64, elements: !1318)
!1318 = !{!1319, !1320, !1327}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1317, file: !1288, line: 77, baseType: !79, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1317, file: !1288, line: 78, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1288, line: 86, size: 128, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1323, file: !1288, line: 87, baseType: !7, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1323, file: !1288, line: 88, baseType: !564, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1317, file: !1288, line: 79, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1288, line: 92, size: 256, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1336, !1337}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1330, file: !1288, line: 94, baseType: !7, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1330, file: !1288, line: 95, baseType: !7, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1330, file: !1288, line: 96, baseType: !1335, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1330, file: !1288, line: 97, baseType: !1293, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1330, file: !1288, line: 98, baseType: !79, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1218, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1218, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1218, file: !13, line: 442, baseType: !1277, size: 64, offset: 2240)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1218, file: !13, line: 443, baseType: !1281, size: 64, offset: 2304)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1218, file: !13, line: 444, baseType: !920, size: 8, offset: 2368)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1218, file: !13, line: 451, baseType: !920, size: 8, offset: 2376)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1218, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1218, file: !13, line: 455, baseType: !1346, size: 64, offset: 2432)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1218, file: !13, line: 458, baseType: !1349, size: 64, offset: 2496)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!46}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1218, file: !13, line: 460, baseType: !1353, size: 4032, align: 512, offset: 2560)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, size: 4032, elements: !1370)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1355)
!1355 = !{!1356, !1357, !1358}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1354, file: !13, line: 363, baseType: !79, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1354, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1354, file: !13, line: 367, baseType: !1359, size: 448, offset: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1359, file: !13, line: 320, baseType: !1217, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1359, file: !13, line: 321, baseType: !1363, size: 384, offset: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1364, line: 40, size: 384, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1363, file: !1364, line: 41, baseType: !1367, size: 384, align: 64)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, size: 384, align: 64, elements: !1368)
!1368 = !{!1369}
!1369 = !DISubrange(count: 2)
!1370 = !{!1371}
!1371 = !DISubrange(count: 7)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1218, file: !13, line: 463, baseType: !1373, size: 192, offset: 6592)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1374, line: 8, size: 192, elements: !1375)
!1374 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1375 = !{!1376, !1377, !1379}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1373, file: !1374, line: 10, baseType: !7, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1373, file: !1374, line: 11, baseType: !1378, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1373, file: !1374, line: 12, baseType: !1380, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1382, line: 59, size: 48, elements: !1383)
!1382 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1381, file: !1382, line: 60, baseType: !858, size: 16)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1381, file: !1382, line: 61, baseType: !858, size: 16, offset: 16)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1381, file: !1382, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1381, file: !1382, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1381, file: !1382, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1381, file: !1382, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1218, file: !13, line: 465, baseType: !107, size: 64, offset: 6784)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1218, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1218, file: !13, line: 470, baseType: !482, size: 128, offset: 6912)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1218, file: !13, line: 471, baseType: !1394, size: 64, offset: 7040)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1396, line: 33, size: 96, elements: !1397)
!1396 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1397 = !{!1398, !1399, !1400, !1401}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1395, file: !1396, line: 37, baseType: !46, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1395, file: !1396, line: 43, baseType: !46, size: 32, offset: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1395, file: !1396, line: 45, baseType: !108, size: 16, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !1396, line: 47, baseType: !108, size: 16, offset: 80)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1218, file: !13, line: 476, baseType: !1403, size: 64, offset: 7104)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1405)
!1405 = !{!1406, !1423, !1424, !1425}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1404, file: !13, line: 379, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1409, line: 204, baseType: !1410)
!1409 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1409, line: 197, size: 192, elements: !1411)
!1411 = !{!1412, !1415, !1416, !1417, !1419, !1421}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1410, file: !1409, line: 198, baseType: !1413, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1409, line: 21, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !526, line: 27, baseType: !7)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1410, file: !1409, line: 199, baseType: !527, size: 8, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1410, file: !1409, line: 200, baseType: !527, size: 8, offset: 40)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1410, file: !1409, line: 201, baseType: !1418, size: 16, offset: 48)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1409, line: 17, baseType: !534)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1410, file: !1409, line: 202, baseType: !1420, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1409, line: 16, baseType: !727)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1410, file: !1409, line: 203, baseType: !1422, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1409, line: 22, baseType: !727)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1404, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1404, file: !13, line: 381, baseType: !564, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1404, file: !13, line: 382, baseType: !564, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1218, file: !13, line: 477, baseType: !1404, size: 256, offset: 7168)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1218, file: !13, line: 480, baseType: !1428, size: 64, offset: 7424)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1218, file: !13, line: 483, baseType: !1431, size: 64, offset: 7488)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1218, file: !13, line: 488, baseType: !564, size: 64, offset: 7552)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1218, file: !13, line: 492, baseType: !79, size: 64, offset: 7616)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1218, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1218, file: !13, line: 495, baseType: !79, size: 64, offset: 7744)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1218, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1218, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1218, file: !13, line: 500, baseType: !1440, size: 64, offset: 7872)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1442, line: 45, baseType: !1443)
!1442 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1218, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1218, file: !13, line: 504, baseType: !1446, size: 64, offset: 8000)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1449, line: 96, size: 192, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1450 = !{!1451, !1452, !1513, !1516}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1448, file: !1449, line: 97, baseType: !7, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1448, file: !1449, line: 98, baseType: !1453, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1449, line: 24, size: 3072, elements: !1455)
!1455 = !{!1456, !1458, !1459, !1460, !1461, !1475, !1476, !1477, !1478, !1497, !1498, !1499, !1510, !1511, !1512}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1454, file: !1449, line: 26, baseType: !1457, size: 128)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 128, elements: !1368)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1454, file: !1449, line: 27, baseType: !1457, size: 128, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1454, file: !1449, line: 28, baseType: !46, size: 32, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1454, file: !1449, line: 31, baseType: !495, size: 32, align: 512, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1454, file: !1449, line: 32, baseType: !1462, size: 960, offset: 576)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1463, line: 206, size: 960, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1464 = !{!1465, !1466, !1469, !1471, !1472, !1474}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1462, file: !1463, line: 207, baseType: !672, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1462, file: !1463, line: 208, baseType: !1467, size: 256, offset: 64)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1468, size: 256, elements: !801)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1462, file: !1463, line: 209, baseType: !1470, size: 256, offset: 320)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !801)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1462, file: !1463, line: 213, baseType: !600, size: 64, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1462, file: !1463, line: 215, baseType: !1473, size: 256, offset: 640)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 256, elements: !801)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1462, file: !1463, line: 216, baseType: !523, size: 8, offset: 896)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1454, file: !1449, line: 33, baseType: !107, size: 64, offset: 1536)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1454, file: !1449, line: 34, baseType: !107, size: 64, offset: 1600)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1454, file: !1449, line: 35, baseType: !920, size: 8, offset: 1664)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1454, file: !1449, line: 36, baseType: !1479, size: 320, offset: 1728)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1480, line: 11, size: 320, elements: !1481)
!1480 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1481 = !{!1482, !1489, !1490, !1495}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1479, file: !1480, line: 16, baseType: !1483, size: 128)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !81, line: 198, size: 128, elements: !1484)
!1484 = !{!1485, !1487}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1483, file: !81, line: 199, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1483, file: !81, line: 199, baseType: !1488, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1479, file: !1480, line: 17, baseType: !107, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1479, file: !1480, line: 18, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1479, file: !1480, line: 19, baseType: !1496, size: 32, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !524, line: 21, baseType: !1414)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1454, file: !1449, line: 37, baseType: !885, size: 256, offset: 2048)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1454, file: !1449, line: 38, baseType: !669, size: 128, align: 64, offset: 2304)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1454, file: !1449, line: 39, baseType: !1500, size: 64, offset: 2432)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1449, line: 49, size: 768, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1501, file: !1449, line: 50, baseType: !495, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1501, file: !1449, line: 51, baseType: !1470, size: 256, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1501, file: !1449, line: 53, baseType: !1470, size: 256, offset: 320)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1501, file: !1449, line: 54, baseType: !107, size: 64, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1501, file: !1449, line: 55, baseType: !1500, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1501, file: !1449, line: 56, baseType: !46, size: 32, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1501, file: !1449, line: 57, baseType: !46, size: 32, offset: 736)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1454, file: !1449, line: 40, baseType: !107, size: 64, offset: 2496)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1454, file: !1449, line: 42, baseType: !46, size: 32, offset: 2560)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1454, file: !1449, line: 43, baseType: !1447, size: 64, offset: 2624)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1448, file: !1449, line: 99, baseType: !1514, offset: 128)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1515, line: 211, elements: !699)
!1515 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1448, file: !1449, line: 100, baseType: !1517, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1449, line: 63, size: 3008, elements: !1519)
!1519 = !{!1520, !1521, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1551}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1518, file: !1449, line: 64, baseType: !1500, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1518, file: !1449, line: 65, baseType: !1522, size: 192, offset: 64)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1500, size: 192, elements: !565)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1518, file: !1449, line: 67, baseType: !46, size: 32, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1518, file: !1449, line: 68, baseType: !820, size: 256, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !1449, line: 69, baseType: !495, size: 32, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1518, file: !1449, line: 70, baseType: !820, size: 256, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1518, file: !1449, line: 71, baseType: !107, size: 64, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1518, file: !1449, line: 72, baseType: !107, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1518, file: !1449, line: 73, baseType: !107, size: 64, offset: 1024)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1518, file: !1449, line: 74, baseType: !107, size: 64, offset: 1088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1518, file: !1449, line: 75, baseType: !107, size: 64, offset: 1152)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1518, file: !1449, line: 76, baseType: !107, size: 64, offset: 1216)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1518, file: !1449, line: 77, baseType: !107, size: 64, offset: 1280)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1518, file: !1449, line: 78, baseType: !107, size: 64, offset: 1344)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1518, file: !1449, line: 79, baseType: !920, size: 8, offset: 1408)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1518, file: !1449, line: 80, baseType: !107, size: 64, offset: 1472)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1518, file: !1449, line: 81, baseType: !820, size: 256, offset: 1536)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1518, file: !1449, line: 82, baseType: !1237, size: 256, offset: 1792)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1518, file: !1449, line: 84, baseType: !515, size: 32, offset: 2048)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1518, file: !1449, line: 87, baseType: !107, size: 64, offset: 2112)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1518, file: !1449, line: 88, baseType: !107, size: 64, offset: 2176)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1518, file: !1449, line: 89, baseType: !1543, size: 704, offset: 2240)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !886, line: 111, size: 704, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1550}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1543, file: !886, line: 112, baseType: !885, size: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1543, file: !886, line: 113, baseType: !1479, size: 320, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1543, file: !886, line: 116, baseType: !1548, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !886, line: 18, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1543, file: !886, line: 117, baseType: !46, size: 32, offset: 640)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1518, file: !1449, line: 90, baseType: !1447, size: 64, offset: 2944)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1218, file: !13, line: 515, baseType: !1553, size: 64, offset: 8064)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1555, line: 117, size: 128, elements: !1556)
!1555 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1554, file: !1555, line: 118, baseType: !799, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1554, file: !1555, line: 119, baseType: !799, size: 32, offset: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1554, file: !1555, line: 120, baseType: !600, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1218, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1218, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1218, file: !13, line: 520, baseType: !1563, size: 64, offset: 8192)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1218, file: !13, line: 523, baseType: !1565, size: 64, offset: 8256)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1218, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1218, file: !13, line: 525, baseType: !1570, size: 64, offset: 8384)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1218, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1218, file: !13, line: 533, baseType: !79, size: 64, offset: 8512)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1218, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1218, file: !13, line: 535, baseType: !1577, size: 64, offset: 8640)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1218, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1218, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1218, file: !13, line: 540, baseType: !1581, size: 64, offset: 8768)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1583, line: 32, size: 64, elements: !1584)
!1583 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1582, file: !1583, line: 33, baseType: !799, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1582, file: !1583, line: 34, baseType: !799, size: 32, offset: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1218, file: !13, line: 563, baseType: !482, size: 128, offset: 8832)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1218, file: !13, line: 565, baseType: !482, size: 128, offset: 8960)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1218, file: !13, line: 568, baseType: !1590, size: 64, offset: 9088)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1218, file: !13, line: 570, baseType: !515, size: 32, offset: 9152)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1212, file: !20, line: 101, baseType: !479, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1212, file: !20, line: 103, baseType: !920, size: 8, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1212, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1212, file: !20, line: 106, baseType: !1598, size: 64, offset: 320)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1212, file: !20, line: 107, baseType: !1602, size: 64, offset: 384)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1212, file: !20, line: 109, baseType: !1171, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1212, file: !20, line: 110, baseType: !1162, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1212, file: !20, line: 111, baseType: !1171, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1212, file: !20, line: 112, baseType: !1162, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1212, file: !20, line: 113, baseType: !1610, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!46, !471, !1613}
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1614, file: !38, line: 59, baseType: !46, size: 32)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1212, file: !20, line: 114, baseType: !1171, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1212, file: !20, line: 115, baseType: !615, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1212, file: !20, line: 116, baseType: !615, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1212, file: !20, line: 118, baseType: !1166, size: 64, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1212, file: !20, line: 119, baseType: !1162, size: 64, offset: 1024)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1212, file: !20, line: 121, baseType: !1623, size: 64, offset: 1088)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1199, file: !1200, line: 88, baseType: !1151, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1199, file: !1200, line: 89, baseType: !1171, size: 64, offset: 448)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1199, file: !1200, line: 90, baseType: !1162, size: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1199, file: !1200, line: 91, baseType: !1162, size: 64, offset: 576)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1199, file: !1200, line: 92, baseType: !1162, size: 64, offset: 640)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1199, file: !1200, line: 94, baseType: !1171, size: 64, offset: 704)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1199, file: !1200, line: 95, baseType: !1171, size: 64, offset: 768)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1199, file: !1200, line: 97, baseType: !1610, size: 64, offset: 832)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1199, file: !1200, line: 98, baseType: !1171, size: 64, offset: 896)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1199, file: !1200, line: 100, baseType: !1171, size: 64, offset: 960)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1199, file: !1200, line: 102, baseType: !1171, size: 64, offset: 1024)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1199, file: !1200, line: 103, baseType: !1162, size: 64, offset: 1088)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1199, file: !1200, line: 105, baseType: !1166, size: 64, offset: 1152)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1199, file: !1200, line: 107, baseType: !1639, size: 64, offset: 1216)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1641)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1200, line: 107, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1199, file: !1200, line: 109, baseType: !920, size: 8, offset: 1280)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !472, file: !26, line: 715, baseType: !1211, size: 64, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !472, file: !26, line: 717, baseType: !79, size: 64, offset: 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !472, file: !26, line: 719, baseType: !79, size: 64, offset: 960)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !472, file: !26, line: 721, baseType: !820, size: 256, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !472, file: !26, line: 725, baseType: !1648, size: 448, offset: 1280)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1649)
!1649 = !{!1650, !1651, !1652, !1653}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1648, file: !26, line: 518, baseType: !482, size: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1648, file: !26, line: 519, baseType: !482, size: 128, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1648, file: !26, line: 520, baseType: !482, size: 128, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1648, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !472, file: !26, line: 726, baseType: !1655, size: 2496, offset: 1728)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1701, !1702, !1703, !1704, !1705, !1706, !1777, !1778, !1779, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1817, !1821}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1655, file: !38, line: 664, baseType: !1613, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1655, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1655, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1655, file: !38, line: 667, baseType: !920, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1655, file: !38, line: 668, baseType: !920, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1655, file: !38, line: 669, baseType: !920, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1655, file: !38, line: 670, baseType: !920, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1655, file: !38, line: 671, baseType: !920, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1655, file: !38, line: 672, baseType: !920, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1655, file: !38, line: 673, baseType: !920, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1655, file: !38, line: 674, baseType: !920, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1655, file: !38, line: 675, baseType: !1496, size: 32, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1655, file: !38, line: 676, baseType: !495, size: 32, offset: 96)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1655, file: !38, line: 678, baseType: !482, size: 128, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1655, file: !38, line: 679, baseType: !1237, size: 256, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1655, file: !38, line: 680, baseType: !1673, size: 64, offset: 512)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1675, line: 43, size: 1536, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1676 = !{!1677, !1678, !1679, !1680, !1681, !1684, !1685, !1686, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1674, file: !1675, line: 44, baseType: !479, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1674, file: !1675, line: 45, baseType: !46, size: 32, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1674, file: !1675, line: 46, baseType: !482, size: 128, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1674, file: !1675, line: 47, baseType: !495, size: 32, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1674, file: !1675, line: 48, baseType: !1682, size: 64, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1674, file: !1675, line: 49, baseType: !1479, size: 320, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1674, file: !1675, line: 50, baseType: !107, size: 64, offset: 704)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1674, file: !1675, line: 51, baseType: !1687, size: 64, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1688, line: 29, baseType: !738)
!1688 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1674, file: !1675, line: 52, baseType: !1687, size: 64, offset: 832)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1674, file: !1675, line: 53, baseType: !1687, size: 64, offset: 896)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1674, file: !1675, line: 54, baseType: !1687, size: 64, offset: 960)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1674, file: !1675, line: 55, baseType: !1687, size: 64, offset: 1024)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1674, file: !1675, line: 56, baseType: !107, size: 64, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1674, file: !1675, line: 57, baseType: !107, size: 64, offset: 1152)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1674, file: !1675, line: 58, baseType: !107, size: 64, offset: 1216)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1674, file: !1675, line: 59, baseType: !107, size: 64, offset: 1280)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1674, file: !1675, line: 60, baseType: !107, size: 64, offset: 1344)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1674, file: !1675, line: 61, baseType: !471, size: 64, offset: 1408)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1674, file: !1675, line: 62, baseType: !920, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1674, file: !1675, line: 63, baseType: !920, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1655, file: !38, line: 681, baseType: !920, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1655, file: !38, line: 682, baseType: !920, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1655, file: !38, line: 683, baseType: !920, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1655, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1655, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1655, file: !38, line: 690, baseType: !1707, size: 512, offset: 640)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1708)
!1708 = !{!1709, !1715, !1716, !1721, !1773, !1774, !1775, !1776}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1707, file: !33, line: 119, baseType: !1710, size: 256)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1711, line: 9, size: 256, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1710, file: !1711, line: 10, baseType: !926, size: 192, align: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1710, file: !1711, line: 11, baseType: !1687, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1707, file: !33, line: 120, baseType: !1687, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1707, file: !33, line: 121, baseType: !1717, size: 64, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!32, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1707, file: !33, line: 122, baseType: !1722, size: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1724)
!1724 = !{!1725, !1750, !1751, !1754, !1759, !1760, !1768, !1772}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1723, file: !33, line: 160, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1727, file: !33, line: 216, baseType: !754, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1727, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1727, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1727, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1727, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1727, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1727, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1727, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1727, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1727, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1727, file: !33, line: 227, baseType: !108, size: 16, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1727, file: !33, line: 228, baseType: !108, size: 16, offset: 208)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1727, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1727, file: !33, line: 235, baseType: !1687, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1727, file: !33, line: 236, baseType: !1720, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1727, file: !33, line: 237, baseType: !1687, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1727, file: !33, line: 238, baseType: !1720, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1727, file: !33, line: 239, baseType: !1747, size: 4096, align: 512, offset: 512)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1723, size: 4096, align: 512, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 8)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1723, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1723, file: !33, line: 162, baseType: !1752, size: 32, offset: 96)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !81, line: 32, baseType: !1753)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !598, line: 96, baseType: !46)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1723, file: !33, line: 163, baseType: !1755, size: 32, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !769, line: 274, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !769, line: 274, size: 32, elements: !1757)
!1757 = !{!1758}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1756, file: !769, line: 274, baseType: !768, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1723, file: !33, line: 164, baseType: !1720, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1723, file: !33, line: 165, baseType: !1761, size: 128, offset: 256)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1711, line: 14, size: 128, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1761, file: !1711, line: 15, baseType: !1764, size: 128)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !927, line: 26, size: 128, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1764, file: !927, line: 27, baseType: !1029, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1764, file: !927, line: 28, baseType: !931, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1723, file: !33, line: 166, baseType: !1769, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1687}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1723, file: !33, line: 167, baseType: !1687, size: 64, offset: 448)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1707, file: !33, line: 123, baseType: !523, size: 8, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1707, file: !33, line: 124, baseType: !523, size: 8, offset: 456)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1707, file: !33, line: 125, baseType: !523, size: 8, offset: 464)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1707, file: !33, line: 126, baseType: !523, size: 8, offset: 472)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1655, file: !38, line: 691, baseType: !726, size: 64, offset: 1152)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1655, file: !38, line: 692, baseType: !885, size: 256, offset: 1216)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1655, file: !38, line: 693, baseType: !1780, size: 192, offset: 1472)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1781, line: 41, baseType: !1782)
!1781 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1781, line: 37, size: 192, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !1781, line: 38, baseType: !495, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1782, file: !1781, line: 39, baseType: !482, size: 128, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1655, file: !38, line: 694, baseType: !1682, size: 64, offset: 1664)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1655, file: !38, line: 695, baseType: !515, size: 32, offset: 1728)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1655, file: !38, line: 696, baseType: !515, size: 32, offset: 1760)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1655, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1655, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1655, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1655, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1655, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1655, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1655, file: !38, line: 703, baseType: !920, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1655, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1655, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1655, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1655, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1655, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1655, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1655, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1655, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1655, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1655, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1655, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1655, file: !38, line: 715, baseType: !726, size: 64, offset: 2048)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1655, file: !38, line: 716, baseType: !726, size: 64, offset: 2112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1655, file: !38, line: 717, baseType: !726, size: 64, offset: 2176)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1655, file: !38, line: 718, baseType: !726, size: 64, offset: 2240)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1655, file: !38, line: 720, baseType: !1812, size: 64, offset: 2304)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1813, file: !38, line: 633, baseType: !495, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1813, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1655, file: !38, line: 721, baseType: !1818, size: 64, offset: 2368)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !471, !799}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1655, file: !38, line: 722, baseType: !1822, size: 64, offset: 2432)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !472, file: !26, line: 727, baseType: !1825, size: 64, offset: 4224)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1834, !1835, !1836}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1826, file: !38, line: 743, baseType: !1168, size: 1472)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1826, file: !38, line: 744, baseType: !1171, size: 64, offset: 1472)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1826, file: !38, line: 745, baseType: !1831, size: 64, offset: 1536)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !471, !920}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1826, file: !38, line: 746, baseType: !1171, size: 64, offset: 1600)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1826, file: !38, line: 747, baseType: !1162, size: 64, offset: 1664)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1826, file: !38, line: 748, baseType: !1162, size: 64, offset: 1728)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !472, file: !26, line: 736, baseType: !1838, size: 128, offset: 4288)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1839)
!1839 = !{!1840, !1844}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1838, file: !26, line: 531, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1843, line: 13, flags: DIFlagFwdDecl)
!1843 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1838, file: !26, line: 532, baseType: !1845, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !472, file: !26, line: 738, baseType: !1848, size: 64, offset: 4416)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1850)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !472, file: !26, line: 740, baseType: !1852, size: 64, offset: 4480)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !472, file: !26, line: 741, baseType: !726, size: 64, offset: 4544)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !472, file: !26, line: 746, baseType: !726, size: 64, offset: 4608)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !472, file: !26, line: 747, baseType: !1856, size: 64, offset: 4672)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1858)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !472, file: !26, line: 749, baseType: !1860, size: 64, offset: 4736)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1862)
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1861, file: !26, line: 433, baseType: !7, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1861, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1861, file: !26, line: 435, baseType: !107, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !472, file: !26, line: 751, baseType: !482, size: 128, offset: 4800)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !472, file: !26, line: 762, baseType: !1868, size: 64, offset: 4928)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !472, file: !26, line: 770, baseType: !1871, offset: 4992)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1872, line: 5, elements: !699)
!1872 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !472, file: !26, line: 772, baseType: !1874, size: 64, offset: 4992)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1876, line: 18, flags: DIFlagFwdDecl)
!1876 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !472, file: !26, line: 773, baseType: !1878, size: 64, offset: 5056)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1880, line: 41, size: 512, elements: !1881)
!1880 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1881 = !{!1882, !1883, !1977, !1978, !1979, !1980}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1879, file: !1880, line: 42, baseType: !1878, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1879, file: !1880, line: 43, baseType: !1884, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1880, line: 125, size: 1408, elements: !1887)
!1887 = !{!1888, !1892, !1896, !1902, !1906, !1907, !1912, !1916, !1920, !1924, !1928, !1929, !1933, !1937, !1941, !1952, !1953, !1954, !1955, !1965, !1969, !1973}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1886, file: !1880, line: 126, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!1878, !1878}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1886, file: !1880, line: 127, baseType: !1893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !1878}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1886, file: !1880, line: 128, baseType: !1897, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!920, !1900}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1879)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1886, file: !1880, line: 129, baseType: !1903, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!841, !1900, !1154}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1886, file: !1880, line: 131, baseType: !1897, size: 64, offset: 256)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1886, file: !1880, line: 133, baseType: !1908, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1911, !1900}
!1911 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !1880, line: 132, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1886, file: !1880, line: 134, baseType: !1913, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!920, !1900, !479}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1886, file: !1880, line: 136, baseType: !1917, size: 64, offset: 448)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!46, !1900, !479, !7, !79, !611}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1886, file: !1880, line: 141, baseType: !1921, size: 64, offset: 512)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!46, !1900, !479, !1563, !611}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1886, file: !1880, line: 144, baseType: !1925, size: 64, offset: 576)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!479, !1900}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1886, file: !1880, line: 145, baseType: !1925, size: 64, offset: 640)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1886, file: !1880, line: 146, baseType: !1930, size: 64, offset: 704)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!1878, !1900}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1886, file: !1880, line: 148, baseType: !1934, size: 64, offset: 768)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1878, !1900, !1878}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1886, file: !1880, line: 151, baseType: !1938, size: 64, offset: 832)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1878, !1900, !479}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1886, file: !1880, line: 153, baseType: !1942, size: 64, offset: 896)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!46, !1900, !479, !479, !7, !7, !1945}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1880, line: 94, size: 640, elements: !1947)
!1947 = !{!1948, !1949, !1950}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1946, file: !1880, line: 95, baseType: !1878, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1946, file: !1880, line: 96, baseType: !7, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1946, file: !1880, line: 97, baseType: !1951, size: 512, offset: 128)
!1951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 512, elements: !1748)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1886, file: !1880, line: 158, baseType: !1934, size: 64, offset: 960)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1886, file: !1880, line: 161, baseType: !1930, size: 64, offset: 1024)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1886, file: !1880, line: 163, baseType: !1889, size: 64, offset: 1088)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1886, file: !1880, line: 164, baseType: !1956, size: 64, offset: 1152)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!46, !1900, !1959}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1880, line: 73, size: 128, elements: !1961)
!1961 = !{!1962, !1963, !1964}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1960, file: !1880, line: 74, baseType: !7, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1960, file: !1880, line: 75, baseType: !7, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1960, file: !1880, line: 76, baseType: !1900, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1886, file: !1880, line: 166, baseType: !1966, size: 64, offset: 1216)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!79, !1878, !46}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1886, file: !1880, line: 167, baseType: !1970, size: 64, offset: 1280)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!46, !1900, !7}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1886, file: !1880, line: 168, baseType: !1974, size: 64, offset: 1344)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!46, !1878}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1879, file: !1880, line: 44, baseType: !471, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1879, file: !1880, line: 45, baseType: !482, size: 128, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1879, file: !1880, line: 46, baseType: !482, size: 128, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1879, file: !1880, line: 47, baseType: !523, size: 8, offset: 448)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !472, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !472, file: !26, line: 778, baseType: !1983, size: 32, offset: 5152)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !81, line: 21, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !81, line: 18, baseType: !1496)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !472, file: !26, line: 779, baseType: !1496, size: 32, offset: 5184)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !472, file: !26, line: 781, baseType: !495, size: 32, offset: 5216)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !472, file: !26, line: 782, baseType: !482, size: 128, offset: 5248)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !472, file: !26, line: 784, baseType: !1989, size: 64, offset: 5376)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1991)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1992, line: 52, size: 768, elements: !1993)
!1992 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1993 = !{!1994, !1995, !1996, !1997, !1998, !2002, !2006, !2007, !2008, !2009, !2013, !2017}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1991, file: !1992, line: 53, baseType: !479, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1991, file: !1992, line: 55, baseType: !615, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1991, file: !1992, line: 56, baseType: !615, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1991, file: !1992, line: 58, baseType: !1151, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1991, file: !1992, line: 59, baseType: !1999, size: 64, offset: 256)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!564, !1154, !1160}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1991, file: !1992, line: 61, baseType: !2003, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !1989}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1991, file: !1992, line: 62, baseType: !1162, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1991, file: !1992, line: 64, baseType: !1171, size: 64, offset: 448)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1991, file: !1992, line: 66, baseType: !960, size: 64, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1991, file: !1992, line: 67, baseType: !2010, size: 64, offset: 576)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!841, !1154}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1991, file: !1992, line: 69, baseType: !2014, size: 64, offset: 640)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !1154, !995, !1002}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1991, file: !1992, line: 71, baseType: !1166, size: 64, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !472, file: !26, line: 785, baseType: !615, size: 64, offset: 5440)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !472, file: !26, line: 787, baseType: !1162, size: 64, offset: 5504)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !472, file: !26, line: 788, baseType: !2021, size: 64, offset: 5568)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !472, file: !26, line: 789, baseType: !2024, size: 64, offset: 5632)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !472, file: !26, line: 791, baseType: !2027, size: 64, offset: 5696)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033, !2034}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2028, file: !26, line: 598, baseType: !53, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2028, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2028, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2028, file: !26, line: 601, baseType: !920, size: 8, offset: 96)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2028, file: !26, line: 602, baseType: !920, size: 8, offset: 104)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !472, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !472, file: !26, line: 795, baseType: !920, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !472, file: !26, line: 796, baseType: !920, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !472, file: !26, line: 797, baseType: !920, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !472, file: !26, line: 798, baseType: !920, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !472, file: !26, line: 799, baseType: !920, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2041 = !{!2042, !2043, !2044, !2045}
!2042 = !DILocalVariable(name: "dev", arg: 1, scope: !468, file: !3, line: 123, type: !471)
!2043 = !DILocalVariable(name: "dma", arg: 2, scope: !468, file: !3, line: 123, type: !46)
!2044 = !DILocalVariable(name: "name", arg: 3, scope: !468, file: !3, line: 123, type: !479)
!2045 = !DILocalVariable(name: "p", scope: !468, file: !3, line: 125, type: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_data", file: !3, line: 101, size: 32, elements: !2048)
!2048 = !{!2049}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !2047, file: !3, line: 102, baseType: !46, size: 32)
!2050 = !DILocation(line: 123, column: 41, scope: !468)
!2051 = !DILocation(line: 123, column: 50, scope: !468)
!2052 = !DILocation(line: 123, column: 67, scope: !468)
!2053 = !DILocation(line: 125, column: 2, scope: !468)
!2054 = !DILocation(line: 125, column: 23, scope: !468)
!2055 = !DILocation(line: 127, column: 18, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !468, file: !3, line: 127, column: 6)
!2057 = !DILocation(line: 127, column: 23, scope: !2056)
!2058 = !DILocation(line: 127, column: 6, scope: !2056)
!2059 = !DILocation(line: 127, column: 6, scope: !468)
!2060 = !DILocation(line: 128, column: 3, scope: !2056)
!2061 = !DILocation(line: 129, column: 6, scope: !468)
!2062 = !DILocation(line: 129, column: 4, scope: !468)
!2063 = !DILocation(line: 130, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !468, file: !3, line: 130, column: 6)
!2065 = !DILocation(line: 130, column: 6, scope: !468)
!2066 = !DILocation(line: 131, column: 12, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 130, column: 10)
!2068 = !DILocation(line: 131, column: 3, scope: !2067)
!2069 = !DILocation(line: 132, column: 3, scope: !2067)
!2070 = !DILocation(line: 134, column: 11, scope: !468)
!2071 = !DILocation(line: 134, column: 2, scope: !468)
!2072 = !DILocation(line: 134, column: 5, scope: !468)
!2073 = !DILocation(line: 134, column: 9, scope: !468)
!2074 = !DILocation(line: 135, column: 13, scope: !468)
!2075 = !DILocation(line: 135, column: 18, scope: !468)
!2076 = !DILocation(line: 135, column: 2, scope: !468)
!2077 = !DILocation(line: 136, column: 2, scope: !468)
!2078 = !DILocation(line: 137, column: 1, scope: !468)
!2079 = !DISubprogram(name: "request_dma", scope: !146, file: !146, line: 306, type: !2080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!46, !7, !479}
!2082 = !DISubprogram(name: "__devres_alloc_node", scope: !26, file: !26, line: 274, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!79, !2085, !611, !80, !46, !479}
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !26, line: 271, baseType: !2086)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !471, !79}
!2089 = distinct !DISubprogram(name: "__snd_release_dma", scope: !3, file: !3, line: 105, type: !2087, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2090 = !{!2091, !2092, !2093}
!2091 = !DILocalVariable(name: "dev", arg: 1, scope: !2089, file: !3, line: 105, type: !471)
!2092 = !DILocalVariable(name: "data", arg: 2, scope: !2089, file: !3, line: 105, type: !79)
!2093 = !DILocalVariable(name: "p", scope: !2089, file: !3, line: 107, type: !2046)
!2094 = !DILocation(line: 105, column: 46, scope: !2089)
!2095 = !DILocation(line: 105, column: 57, scope: !2089)
!2096 = !DILocation(line: 107, column: 2, scope: !2089)
!2097 = !DILocation(line: 107, column: 23, scope: !2089)
!2098 = !DILocation(line: 107, column: 27, scope: !2089)
!2099 = !DILocation(line: 109, column: 18, scope: !2089)
!2100 = !DILocation(line: 109, column: 21, scope: !2089)
!2101 = !DILocation(line: 109, column: 2, scope: !2089)
!2102 = !DILocation(line: 110, column: 11, scope: !2089)
!2103 = !DILocation(line: 110, column: 14, scope: !2089)
!2104 = !DILocation(line: 110, column: 2, scope: !2089)
!2105 = !DILocation(line: 111, column: 1, scope: !2089)
!2106 = !DISubprogram(name: "free_dma", scope: !146, file: !146, line: 307, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2107 = !DISubprogram(name: "devres_add", scope: !26, file: !26, line: 286, type: !2087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2108 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !2109, file: !2109, line: 32, type: !2110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2109 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!107, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!2113 = distinct !DISubprogram(name: "spinlock_check", scope: !2114, file: !2114, line: 324, type: !2115, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2114 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!2112, !2117}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!2118 = !{!2119}
!2119 = !DILocalVariable(name: "lock", arg: 1, scope: !2113, file: !2114, line: 324, type: !2117)
!2120 = !DILocation(line: 324, column: 67, scope: !2113)
!2121 = !DILocation(line: 326, column: 10, scope: !2113)
!2122 = !DILocation(line: 326, column: 16, scope: !2113)
!2123 = !DILocation(line: 326, column: 2, scope: !2113)
!2124 = distinct !DISubprogram(name: "__outb", scope: !2125, file: !2125, line: 22, type: !2126, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2125 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!2126 = !DISubroutineType(types: !2127)
!2127 = !{null, !523, !533}
!2128 = !{!2129, !2130}
!2129 = !DILocalVariable(name: "value", arg: 1, scope: !2124, file: !2125, line: 22, type: !523)
!2130 = !DILocalVariable(name: "port", arg: 2, scope: !2124, file: !2125, line: 22, type: !533)
!2131 = !DILocation(line: 22, column: 1, scope: !2124)
!2132 = !{i64 2149752470}
!2133 = distinct !DISubprogram(name: "set_dma_page", scope: !146, file: !146, line: 212, type: !196, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2134 = !{!2135, !2136}
!2135 = !DILocalVariable(name: "dmanr", arg: 1, scope: !2133, file: !146, line: 212, type: !7)
!2136 = !DILocalVariable(name: "pagenr", arg: 2, scope: !2133, file: !146, line: 212, type: !90)
!2137 = !DILocation(line: 212, column: 46, scope: !2133)
!2138 = !DILocation(line: 212, column: 58, scope: !2133)
!2139 = !DILocation(line: 214, column: 10, scope: !2133)
!2140 = !DILocation(line: 214, column: 2, scope: !2133)
!2141 = !DILocation(line: 216, column: 12, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2133, file: !146, line: 214, column: 17)
!2143 = !DILocation(line: 216, column: 3, scope: !2142)
!2144 = !DILocation(line: 217, column: 3, scope: !2142)
!2145 = !DILocation(line: 219, column: 12, scope: !2142)
!2146 = !DILocation(line: 219, column: 3, scope: !2142)
!2147 = !DILocation(line: 220, column: 3, scope: !2142)
!2148 = !DILocation(line: 222, column: 12, scope: !2142)
!2149 = !DILocation(line: 222, column: 3, scope: !2142)
!2150 = !DILocation(line: 223, column: 3, scope: !2142)
!2151 = !DILocation(line: 225, column: 12, scope: !2142)
!2152 = !DILocation(line: 225, column: 3, scope: !2142)
!2153 = !DILocation(line: 226, column: 3, scope: !2142)
!2154 = !DILocation(line: 228, column: 12, scope: !2142)
!2155 = !DILocation(line: 228, column: 19, scope: !2142)
!2156 = !DILocation(line: 228, column: 3, scope: !2142)
!2157 = !DILocation(line: 229, column: 3, scope: !2142)
!2158 = !DILocation(line: 231, column: 12, scope: !2142)
!2159 = !DILocation(line: 231, column: 19, scope: !2142)
!2160 = !DILocation(line: 231, column: 3, scope: !2142)
!2161 = !DILocation(line: 232, column: 3, scope: !2142)
!2162 = !DILocation(line: 234, column: 12, scope: !2142)
!2163 = !DILocation(line: 234, column: 19, scope: !2142)
!2164 = !DILocation(line: 234, column: 3, scope: !2142)
!2165 = !DILocation(line: 235, column: 3, scope: !2142)
!2166 = !DILocation(line: 237, column: 1, scope: !2133)
!2167 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2114, file: !2114, line: 404, type: !2168, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !2117, !107}
!2170 = !{!2171, !2172, !2173, !2176}
!2171 = !DILocalVariable(name: "lock", arg: 1, scope: !2167, file: !2114, line: 404, type: !2117)
!2172 = !DILocalVariable(name: "flags", arg: 2, scope: !2167, file: !2114, line: 404, type: !107)
!2173 = !DILocalVariable(name: "__dummy", scope: !2174, file: !2114, line: 406, type: !107)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !2114, line: 406, column: 2)
!2175 = distinct !DILexicalBlock(scope: !2167, file: !2114, line: 406, column: 2)
!2176 = !DILocalVariable(name: "__dummy2", scope: !2174, file: !2114, line: 406, type: !107)
!2177 = !DILocation(line: 404, column: 64, scope: !2167)
!2178 = !DILocation(line: 404, column: 84, scope: !2167)
!2179 = !DILocation(line: 406, column: 2, scope: !2167)
!2180 = !DILocation(line: 406, column: 2, scope: !2174)
!2181 = !DILocation(line: 406, column: 2, scope: !2175)
!2182 = !DILocation(line: 407, column: 1, scope: !2167)
!2183 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !2109, file: !2109, line: 43, type: !2184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2112, !107}
!2186 = distinct !DISubprogram(name: "__inb", scope: !2125, file: !2125, line: 22, type: !2187, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!523, !533}
!2189 = !{!2190, !2191}
!2190 = !DILocalVariable(name: "port", arg: 1, scope: !2186, file: !2125, line: 22, type: !533)
!2191 = !DILocalVariable(name: "value", scope: !2186, file: !2125, line: 22, type: !523)
!2192 = !DILocation(line: 22, column: 1, scope: !2186)
!2193 = !{i64 2149752666}
