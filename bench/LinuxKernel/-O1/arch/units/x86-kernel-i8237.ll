; ModuleID = 'arch/x86/kernel/i8237.c'
source_filename = "arch/x86/kernel/i8237.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_i8237__189_76_i8237A_init_ops\22, \22a\22\09\09"
module asm "__initcall__kmod_i8237__189_76_i8237A_init_ops6:\09\09\09"
module asm ".long\09__initstub__kmod_i8237__189_76_i8237A_init_ops6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID___addressable___initstub__kmod_i8237__189_76_i8237A_init_ops6190 = internal global ptr @__initstub__kmod_i8237__189_76_i8237A_init_ops6, section ".discard.addressable", align 8, !dbg !0
@i8237_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr null, ptr @i8237A_resume, ptr null }, align 8, !dbg !7
@dma_spin_lock = external dso_local global %struct.spinlock, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_i8237__189_76_i8237A_init_ops6190], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_i8237__189_76_i8237A_init_ops6() #0 section ".init.text" align 16 !dbg !38 {
entry:
  %call = call i32 @i8237A_init_ops() #7, !dbg !39
  ret i32 %call, !dbg !39
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @i8237A_init_ops() #0 section ".init.text" align 16 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %call = call zeroext i8 @__inb(i16 noundef zeroext 135) #8, !dbg !41
  %conv = zext i8 %call to i32, !dbg !41
  %cmp = icmp eq i32 %conv, 255, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !45
  br label %return, !dbg !45

if.end:                                           ; preds = %entry
  %call2 = call zeroext i1 @x86_pnpbios_disabled() #8, !dbg !46
  br i1 %call2, label %land.lhs.true, label %if.end8, !dbg !48

land.lhs.true:                                    ; preds = %if.end
  %call4 = call i32 @dmi_get_bios_year() #8, !dbg !49
  %cmp5 = icmp sge i32 %call4, 2017, !dbg !50
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !51

if.then7:                                         ; preds = %land.lhs.true
  store i32 -19, ptr %retval, align 4, !dbg !52
  br label %return, !dbg !52

if.end8:                                          ; preds = %land.lhs.true, %if.end
  call void @register_syscore_ops(ptr noundef @i8237_syscore_ops) #8, !dbg !53
  store i32 0, ptr %retval, align 4, !dbg !54
  br label %return, !dbg !54

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %0 = load i32, ptr %retval, align 4, !dbg !55
  ret i32 %0, !dbg !55
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #1 align 16 !dbg !56 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !69, metadata !DIExpression()), !dbg !71
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #9, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %value, metadata !70, metadata !DIExpression()), !dbg !71
  %0 = load i16, ptr %port.addr, align 2, !dbg !71
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #9, !dbg !71, !srcloc !72
  store i8 %1, ptr %value, align 1, !dbg !71
  %2 = load i8, ptr %value, align 1, !dbg !71
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #9, !dbg !71
  ret i8 %2, !dbg !71
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !73 dso_local zeroext i1 @x86_pnpbios_disabled() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !79 dso_local i32 @dmi_get_bios_year() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !81 dso_local void @register_syscore_ops(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i8237A_resume() #5 align 16 !dbg !85 {
entry:
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !87, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %i, metadata !89, metadata !DIExpression()), !dbg !93
  %call = call i64 @claim_dma_lock() #8, !dbg !94
  store i64 %call, ptr %flags, align 8, !dbg !95
  call void @__outb(i8 noundef zeroext 0, i16 noundef zeroext 13) #8, !dbg !96
  call void @__outb(i8 noundef zeroext 0, i16 noundef zeroext 218) #8, !dbg !97
  store i32 0, ptr %i, align 4, !dbg !98
  br label %for.cond, !dbg !100

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !101
  %cmp = icmp slt i32 %0, 8, !dbg !103
  br i1 %cmp, label %for.body, label %for.end, !dbg !104

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !105
  call void @set_dma_addr(i32 noundef %1, i32 noundef 0) #8, !dbg !107
  %2 = load i32, ptr %i, align 4, !dbg !108
  call void @set_dma_count(i32 noundef %2, i32 noundef 1) #8, !dbg !109
  br label %for.inc, !dbg !110

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !111
  %inc = add i32 %3, 1, !dbg !111
  store i32 %inc, ptr %i, align 4, !dbg !111
  br label %for.cond, !dbg !112, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  call void @enable_dma(i32 noundef 4) #8, !dbg !117
  %4 = load i64, ptr %flags, align 8, !dbg !118
  call void @release_dma_lock(i64 noundef %4) #8, !dbg !119
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !120
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !120
  ret void, !dbg !120
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @claim_dma_lock() #6 align 16 !dbg !121 {
entry:
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #9, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !126, metadata !DIExpression()), !dbg !133
  br label %do.body, !dbg !134

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !135

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !127, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !131, metadata !DIExpression()), !dbg !136
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !136
  %conv = zext i1 %cmp to i32, !dbg !136
  store i32 1, ptr %tmp, align 4, !dbg !136
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !137
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !137
  %0 = load i32, ptr %tmp, align 4, !dbg !136
  %call = call ptr @spinlock_check(ptr noundef @dma_spin_lock) #8, !dbg !137
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #8, !dbg !137
  store i64 %call2, ptr %flags, align 8, !dbg !137
  br label %do.cond, !dbg !137

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !137

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !135

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !135

do.end4:                                          ; preds = %do.cond3
  %1 = load i64, ptr %flags, align 8, !dbg !138
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #9, !dbg !139
  ret i64 %1, !dbg !140
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #1 align 16 !dbg !141 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !145, metadata !DIExpression()), !dbg !147
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load i8, ptr %value.addr, align 1, !dbg !147
  %1 = load i16, ptr %port.addr, align 2, !dbg !147
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #9, !dbg !147, !srcloc !148
  ret void, !dbg !147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_dma_addr(i32 noundef %dmanr, i32 noundef %a) #6 align 16 !dbg !149 {
entry:
  %dmanr.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !154, metadata !DIExpression()), !dbg !156
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !155, metadata !DIExpression()), !dbg !157
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !158
  %1 = load i32, ptr %a.addr, align 4, !dbg !159
  %shr = lshr i32 %1, 16, !dbg !160
  %conv = trunc i32 %shr to i8, !dbg !159
  call void @set_dma_page(i32 noundef %0, i8 noundef zeroext %conv) #8, !dbg !161
  %2 = load i32, ptr %dmanr.addr, align 4, !dbg !162
  %cmp = icmp ule i32 %2, 3, !dbg !164
  br i1 %cmp, label %if.then, label %if.else, !dbg !165

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %a.addr, align 4, !dbg !166
  %and = and i32 %3, 255, !dbg !168
  %conv2 = trunc i32 %and to i8, !dbg !166
  %4 = load i32, ptr %dmanr.addr, align 4, !dbg !169
  %and3 = and i32 %4, 3, !dbg !170
  %shl = shl i32 %and3, 1, !dbg !171
  %add = add i32 %shl, 0, !dbg !172
  %conv4 = trunc i32 %add to i16, !dbg !173
  call void @__outb(i8 noundef zeroext %conv2, i16 noundef zeroext %conv4) #8, !dbg !174
  %5 = load i32, ptr %a.addr, align 4, !dbg !175
  %shr5 = lshr i32 %5, 8, !dbg !176
  %and6 = and i32 %shr5, 255, !dbg !177
  %conv7 = trunc i32 %and6 to i8, !dbg !178
  %6 = load i32, ptr %dmanr.addr, align 4, !dbg !179
  %and8 = and i32 %6, 3, !dbg !180
  %shl9 = shl i32 %and8, 1, !dbg !181
  %add10 = add i32 %shl9, 0, !dbg !182
  %conv11 = trunc i32 %add10 to i16, !dbg !183
  call void @__outb(i8 noundef zeroext %conv7, i16 noundef zeroext %conv11) #8, !dbg !184
  br label %if.end, !dbg !185

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %a.addr, align 4, !dbg !186
  %shr12 = lshr i32 %7, 1, !dbg !188
  %and13 = and i32 %shr12, 255, !dbg !189
  %conv14 = trunc i32 %and13 to i8, !dbg !190
  %8 = load i32, ptr %dmanr.addr, align 4, !dbg !191
  %and15 = and i32 %8, 3, !dbg !192
  %shl16 = shl i32 %and15, 2, !dbg !193
  %add17 = add i32 %shl16, 192, !dbg !194
  %conv18 = trunc i32 %add17 to i16, !dbg !195
  call void @__outb(i8 noundef zeroext %conv14, i16 noundef zeroext %conv18) #8, !dbg !196
  %9 = load i32, ptr %a.addr, align 4, !dbg !197
  %shr19 = lshr i32 %9, 9, !dbg !198
  %and20 = and i32 %shr19, 255, !dbg !199
  %conv21 = trunc i32 %and20 to i8, !dbg !200
  %10 = load i32, ptr %dmanr.addr, align 4, !dbg !201
  %and22 = and i32 %10, 3, !dbg !202
  %shl23 = shl i32 %and22, 2, !dbg !203
  %add24 = add i32 %shl23, 192, !dbg !204
  %conv25 = trunc i32 %add24 to i16, !dbg !205
  call void @__outb(i8 noundef zeroext %conv21, i16 noundef zeroext %conv25) #8, !dbg !206
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !207
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_dma_count(i32 noundef %dmanr, i32 noundef %count) #6 align 16 !dbg !208 {
entry:
  %dmanr.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !210, metadata !DIExpression()), !dbg !212
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !211, metadata !DIExpression()), !dbg !213
  %0 = load i32, ptr %count.addr, align 4, !dbg !214
  %dec = add i32 %0, -1, !dbg !214
  store i32 %dec, ptr %count.addr, align 4, !dbg !214
  %1 = load i32, ptr %dmanr.addr, align 4, !dbg !215
  %cmp = icmp ule i32 %1, 3, !dbg !217
  br i1 %cmp, label %if.then, label %if.else, !dbg !218

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %count.addr, align 4, !dbg !219
  %and = and i32 %2, 255, !dbg !221
  %conv = trunc i32 %and to i8, !dbg !219
  %3 = load i32, ptr %dmanr.addr, align 4, !dbg !222
  %and1 = and i32 %3, 3, !dbg !223
  %shl = shl i32 %and1, 1, !dbg !224
  %add = add i32 %shl, 1, !dbg !225
  %add2 = add i32 %add, 0, !dbg !226
  %conv3 = trunc i32 %add2 to i16, !dbg !227
  call void @__outb(i8 noundef zeroext %conv, i16 noundef zeroext %conv3) #8, !dbg !228
  %4 = load i32, ptr %count.addr, align 4, !dbg !229
  %shr = lshr i32 %4, 8, !dbg !230
  %and4 = and i32 %shr, 255, !dbg !231
  %conv5 = trunc i32 %and4 to i8, !dbg !232
  %5 = load i32, ptr %dmanr.addr, align 4, !dbg !233
  %and6 = and i32 %5, 3, !dbg !234
  %shl7 = shl i32 %and6, 1, !dbg !235
  %add8 = add i32 %shl7, 1, !dbg !236
  %add9 = add i32 %add8, 0, !dbg !237
  %conv10 = trunc i32 %add9 to i16, !dbg !238
  call void @__outb(i8 noundef zeroext %conv5, i16 noundef zeroext %conv10) #8, !dbg !239
  br label %if.end, !dbg !240

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %count.addr, align 4, !dbg !241
  %shr11 = lshr i32 %6, 1, !dbg !243
  %and12 = and i32 %shr11, 255, !dbg !244
  %conv13 = trunc i32 %and12 to i8, !dbg !245
  %7 = load i32, ptr %dmanr.addr, align 4, !dbg !246
  %and14 = and i32 %7, 3, !dbg !247
  %shl15 = shl i32 %and14, 2, !dbg !248
  %add16 = add i32 %shl15, 2, !dbg !249
  %add17 = add i32 %add16, 192, !dbg !250
  %conv18 = trunc i32 %add17 to i16, !dbg !251
  call void @__outb(i8 noundef zeroext %conv13, i16 noundef zeroext %conv18) #8, !dbg !252
  %8 = load i32, ptr %count.addr, align 4, !dbg !253
  %shr19 = lshr i32 %8, 9, !dbg !254
  %and20 = and i32 %shr19, 255, !dbg !255
  %conv21 = trunc i32 %and20 to i8, !dbg !256
  %9 = load i32, ptr %dmanr.addr, align 4, !dbg !257
  %and22 = and i32 %9, 3, !dbg !258
  %shl23 = shl i32 %and22, 2, !dbg !259
  %add24 = add i32 %shl23, 2, !dbg !260
  %add25 = add i32 %add24, 192, !dbg !261
  %conv26 = trunc i32 %add25 to i16, !dbg !262
  call void @__outb(i8 noundef zeroext %conv21, i16 noundef zeroext %conv26) #8, !dbg !263
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !264
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @enable_dma(i32 noundef %dmanr) #6 align 16 !dbg !265 {
entry:
  %dmanr.addr = alloca i32, align 4
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !271
  %cmp = icmp ule i32 %0, 3, !dbg !273
  br i1 %cmp, label %if.then, label %if.else, !dbg !274

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %dmanr.addr, align 4, !dbg !275
  %conv = trunc i32 %1 to i8, !dbg !275
  call void @__outb(i8 noundef zeroext %conv, i16 noundef zeroext 10) #8, !dbg !276
  br label %if.end, !dbg !276

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %dmanr.addr, align 4, !dbg !277
  %and = and i32 %2, 3, !dbg !278
  %conv1 = trunc i32 %and to i8, !dbg !277
  call void @__outb(i8 noundef zeroext %conv1, i16 noundef zeroext 212) #8, !dbg !279
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !280
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @release_dma_lock(i64 noundef %flags) #6 align 16 !dbg !281 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i64, ptr %flags.addr, align 8, !dbg !287
  call void @spin_unlock_irqrestore(ptr noundef @dma_spin_lock, i64 noundef %0) #8, !dbg !288
  ret void, !dbg !289
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !290 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #2 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #1 align 16 !dbg !322 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !338
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !339
  ret ptr %1, !dbg !340
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_dma_page(i32 noundef %dmanr, i8 noundef zeroext %pagenr) #6 align 16 !dbg !341 {
entry:
  %dmanr.addr = alloca i32, align 4
  %pagenr.addr = alloca i8, align 1
  store i32 %dmanr, ptr %dmanr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dmanr.addr, metadata !346, metadata !DIExpression()), !dbg !348
  store i8 %pagenr, ptr %pagenr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %pagenr.addr, metadata !347, metadata !DIExpression()), !dbg !349
  %0 = load i32, ptr %dmanr.addr, align 4, !dbg !350
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 7, label %sw.bb10
  ], !dbg !351

sw.bb:                                            ; preds = %entry
  %1 = load i8, ptr %pagenr.addr, align 1, !dbg !352
  call void @__outb(i8 noundef zeroext %1, i16 noundef zeroext 135) #8, !dbg !354
  br label %sw.epilog, !dbg !355

sw.bb1:                                           ; preds = %entry
  %2 = load i8, ptr %pagenr.addr, align 1, !dbg !356
  call void @__outb(i8 noundef zeroext %2, i16 noundef zeroext 131) #8, !dbg !357
  br label %sw.epilog, !dbg !358

sw.bb2:                                           ; preds = %entry
  %3 = load i8, ptr %pagenr.addr, align 1, !dbg !359
  call void @__outb(i8 noundef zeroext %3, i16 noundef zeroext 129) #8, !dbg !360
  br label %sw.epilog, !dbg !361

sw.bb3:                                           ; preds = %entry
  %4 = load i8, ptr %pagenr.addr, align 1, !dbg !362
  call void @__outb(i8 noundef zeroext %4, i16 noundef zeroext 130) #8, !dbg !363
  br label %sw.epilog, !dbg !364

sw.bb4:                                           ; preds = %entry
  %5 = load i8, ptr %pagenr.addr, align 1, !dbg !365
  %conv = zext i8 %5 to i32, !dbg !365
  %and = and i32 %conv, 254, !dbg !366
  %conv5 = trunc i32 %and to i8, !dbg !365
  call void @__outb(i8 noundef zeroext %conv5, i16 noundef zeroext 139) #8, !dbg !367
  br label %sw.epilog, !dbg !368

sw.bb6:                                           ; preds = %entry
  %6 = load i8, ptr %pagenr.addr, align 1, !dbg !369
  %conv7 = zext i8 %6 to i32, !dbg !369
  %and8 = and i32 %conv7, 254, !dbg !370
  %conv9 = trunc i32 %and8 to i8, !dbg !369
  call void @__outb(i8 noundef zeroext %conv9, i16 noundef zeroext 137) #8, !dbg !371
  br label %sw.epilog, !dbg !372

sw.bb10:                                          ; preds = %entry
  %7 = load i8, ptr %pagenr.addr, align 1, !dbg !373
  %conv11 = zext i8 %7 to i32, !dbg !373
  %and12 = and i32 %conv11, 254, !dbg !374
  %conv13 = trunc i32 %and12 to i8, !dbg !373
  call void @__outb(i8 noundef zeroext %conv13, i16 noundef zeroext 138) #8, !dbg !375
  br label %sw.epilog, !dbg !376

sw.epilog:                                        ; preds = %entry, %sw.bb10, %sw.bb6, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !377
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #1 align 16 !dbg !378 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !382, metadata !DIExpression()), !dbg !388
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !383, metadata !DIExpression()), !dbg !389
  br label %do.body, !dbg !390

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !384, metadata !DIExpression()), !dbg !391
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !387, metadata !DIExpression()), !dbg !391
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !391
  %conv = zext i1 %cmp to i32, !dbg !391
  store i32 1, ptr %tmp, align 4, !dbg !391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !392
  %0 = load i32, ptr %tmp, align 4, !dbg !391
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !392
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !392
  %3 = load i64, ptr %flags.addr, align 8, !dbg !392
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #8, !dbg !392
  br label %do.end, !dbg !392

do.end:                                           ; preds = %do.body
  ret void, !dbg !393
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !394 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #2 section ".spinlock.text"

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_i8237__189_76_i8237A_init_ops6190", scope: !2, file: !3, line: 76, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.i8237.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/i8237\22 -D KBUILD_BASENAME=\22i8237\22 -D KBUILD_MODNAME=\22i8237\22 -D __KBUILD_MODNAME=kmod_i8237 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/i8237.ll arch/x86/kernel/i8237.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/i8237.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49446403197b6625482fb3b015e9d932")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "i8237_syscore_ops", scope: !2, file: !3, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscore_ops", file: !10, line: 13, size: 320, elements: !11)
!10 = !DIFile(filename: "./include/linux/syscore_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59d2685cd3ea081e18f1bbec40d890d")
!11 = !{!12, !19, !24, !28}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !9, file: !10, line: 14, baseType: !13, size: 128)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !14, line: 190, size: 128, elements: !15)
!14 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!15 = !{!16, !18}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !14, line: 191, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !13, file: !14, line: 191, baseType: !17, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !9, file: !10, line: 15, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !9, file: !10, line: 16, baseType: !25, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{null}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !9, file: !10, line: 17, baseType: !25, size: 64, offset: 256)
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 8, !"cf-protection-branch", i32 1}
!33 = !{i32 4, !"function_return_thunk_extern", i32 1}
!34 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!35 = !{i32 1, !"Code Model", i32 2}
!36 = !{i32 1, !"override-stack-alignment", i32 8}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = distinct !DISubprogram(name: "__initstub__kmod_i8237__189_76_i8237A_init_ops6", scope: !3, file: !3, line: 76, type: !21, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!39 = !DILocation(line: 76, column: 1, scope: !38)
!40 = distinct !DISubprogram(name: "i8237A_init_ops", scope: !3, file: !3, line: 48, type: !21, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!41 = !DILocation(line: 61, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !40, file: !3, line: 61, column: 6)
!43 = !DILocation(line: 61, column: 26, scope: !42)
!44 = !DILocation(line: 61, column: 6, scope: !40)
!45 = !DILocation(line: 62, column: 3, scope: !42)
!46 = !DILocation(line: 70, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !40, file: !3, line: 70, column: 6)
!48 = !DILocation(line: 70, column: 29, scope: !47)
!49 = !DILocation(line: 70, column: 32, scope: !47)
!50 = !DILocation(line: 70, column: 52, scope: !47)
!51 = !DILocation(line: 70, column: 6, scope: !40)
!52 = !DILocation(line: 71, column: 3, scope: !47)
!53 = !DILocation(line: 73, column: 2, scope: !40)
!54 = !DILocation(line: 74, column: 2, scope: !40)
!55 = !DILocation(line: 75, column: 1, scope: !40)
!56 = distinct !DISubprogram(name: "__inb", scope: !57, file: !57, line: 22, type: !58, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!57 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !65}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !61, line: 17, baseType: !62)
!61 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !63, line: 21, baseType: !64)
!63 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !61, line: 19, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !63, line: 24, baseType: !67)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "port", arg: 1, scope: !56, file: !57, line: 22, type: !65)
!70 = !DILocalVariable(name: "value", scope: !56, file: !57, line: 22, type: !60)
!71 = !DILocation(line: 22, column: 1, scope: !56)
!72 = !{i64 2152119940}
!73 = !DISubprogram(name: "x86_pnpbios_disabled", scope: !74, file: !74, line: 336, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!74 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!75 = !DISubroutineType(types: !76)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !14, line: 35, baseType: !78)
!78 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!79 = !DISubprogram(name: "dmi_get_bios_year", scope: !80, file: !80, line: 107, type: !21, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!80 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!81 = !DISubprogram(name: "register_syscore_ops", scope: !10, file: !10, line: 20, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!85 = distinct !DISubprogram(name: "i8237A_resume", scope: !3, file: !3, line: 22, type: !26, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !86)
!86 = !{!87, !89}
!87 = !DILocalVariable(name: "flags", scope: !85, file: !3, line: 24, type: !88)
!88 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DILocalVariable(name: "i", scope: !85, file: !3, line: 25, type: !23)
!90 = !DILocation(line: 24, column: 2, scope: !85)
!91 = !DILocation(line: 24, column: 16, scope: !85)
!92 = !DILocation(line: 25, column: 2, scope: !85)
!93 = !DILocation(line: 25, column: 6, scope: !85)
!94 = !DILocation(line: 27, column: 10, scope: !85)
!95 = !DILocation(line: 27, column: 8, scope: !85)
!96 = !DILocation(line: 29, column: 2, scope: !85)
!97 = !DILocation(line: 30, column: 2, scope: !85)
!98 = !DILocation(line: 32, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !85, file: !3, line: 32, column: 2)
!100 = !DILocation(line: 32, column: 7, scope: !99)
!101 = !DILocation(line: 32, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !3, line: 32, column: 2)
!103 = !DILocation(line: 32, column: 16, scope: !102)
!104 = !DILocation(line: 32, column: 2, scope: !99)
!105 = !DILocation(line: 33, column: 16, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !3, line: 32, column: 26)
!107 = !DILocation(line: 33, column: 3, scope: !106)
!108 = !DILocation(line: 35, column: 17, scope: !106)
!109 = !DILocation(line: 35, column: 3, scope: !106)
!110 = !DILocation(line: 36, column: 2, scope: !106)
!111 = !DILocation(line: 32, column: 22, scope: !102)
!112 = !DILocation(line: 32, column: 2, scope: !102)
!113 = distinct !{!113, !104, !114, !115, !116}
!114 = !DILocation(line: 36, column: 2, scope: !99)
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!"llvm.loop.unroll.disable"}
!117 = !DILocation(line: 39, column: 2, scope: !85)
!118 = !DILocation(line: 41, column: 19, scope: !85)
!119 = !DILocation(line: 41, column: 2, scope: !85)
!120 = !DILocation(line: 42, column: 1, scope: !85)
!121 = distinct !DISubprogram(name: "claim_dma_lock", scope: !122, file: !122, line: 153, type: !123, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!122 = !DIFile(filename: "./arch/x86/include/asm/dma.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1cbc4b906fe0dad17ab59db75d10f715")
!123 = !DISubroutineType(types: !124)
!124 = !{!88}
!125 = !{!126, !127, !131}
!126 = !DILocalVariable(name: "flags", scope: !121, file: !122, line: 155, type: !88)
!127 = !DILocalVariable(name: "__dummy", scope: !128, file: !122, line: 156, type: !88)
!128 = distinct !DILexicalBlock(scope: !129, file: !122, line: 156, column: 2)
!129 = distinct !DILexicalBlock(scope: !130, file: !122, line: 156, column: 2)
!130 = distinct !DILexicalBlock(scope: !121, file: !122, line: 156, column: 2)
!131 = !DILocalVariable(name: "__dummy2", scope: !128, file: !122, line: 156, type: !88)
!132 = !DILocation(line: 155, column: 2, scope: !121)
!133 = !DILocation(line: 155, column: 16, scope: !121)
!134 = !DILocation(line: 156, column: 2, scope: !121)
!135 = !DILocation(line: 156, column: 2, scope: !130)
!136 = !DILocation(line: 156, column: 2, scope: !128)
!137 = !DILocation(line: 156, column: 2, scope: !129)
!138 = !DILocation(line: 157, column: 9, scope: !121)
!139 = !DILocation(line: 158, column: 1, scope: !121)
!140 = !DILocation(line: 157, column: 2, scope: !121)
!141 = distinct !DISubprogram(name: "__outb", scope: !57, file: !57, line: 22, type: !142, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !60, !65}
!144 = !{!145, !146}
!145 = !DILocalVariable(name: "value", arg: 1, scope: !141, file: !57, line: 22, type: !60)
!146 = !DILocalVariable(name: "port", arg: 2, scope: !141, file: !57, line: 22, type: !65)
!147 = !DILocation(line: 22, column: 1, scope: !141)
!148 = !{i64 2152119744}
!149 = distinct !DISubprogram(name: "set_dma_addr", scope: !122, file: !122, line: 243, type: !150, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152, !152}
!152 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!153 = !{!154, !155}
!154 = !DILocalVariable(name: "dmanr", arg: 1, scope: !149, file: !122, line: 243, type: !152)
!155 = !DILocalVariable(name: "a", arg: 2, scope: !149, file: !122, line: 243, type: !152)
!156 = !DILocation(line: 243, column: 46, scope: !149)
!157 = !DILocation(line: 243, column: 66, scope: !149)
!158 = !DILocation(line: 245, column: 15, scope: !149)
!159 = !DILocation(line: 245, column: 22, scope: !149)
!160 = !DILocation(line: 245, column: 23, scope: !149)
!161 = !DILocation(line: 245, column: 2, scope: !149)
!162 = !DILocation(line: 246, column: 6, scope: !163)
!163 = distinct !DILexicalBlock(scope: !149, file: !122, line: 246, column: 6)
!164 = !DILocation(line: 246, column: 12, scope: !163)
!165 = !DILocation(line: 246, column: 6, scope: !149)
!166 = !DILocation(line: 247, column: 12, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !122, line: 246, column: 19)
!168 = !DILocation(line: 247, column: 14, scope: !167)
!169 = !DILocation(line: 247, column: 24, scope: !167)
!170 = !DILocation(line: 247, column: 30, scope: !167)
!171 = !DILocation(line: 247, column: 35, scope: !167)
!172 = !DILocation(line: 247, column: 41, scope: !167)
!173 = !DILocation(line: 247, column: 22, scope: !167)
!174 = !DILocation(line: 247, column: 3, scope: !167)
!175 = !DILocation(line: 248, column: 13, scope: !167)
!176 = !DILocation(line: 248, column: 15, scope: !167)
!177 = !DILocation(line: 248, column: 21, scope: !167)
!178 = !DILocation(line: 248, column: 12, scope: !167)
!179 = !DILocation(line: 248, column: 31, scope: !167)
!180 = !DILocation(line: 248, column: 37, scope: !167)
!181 = !DILocation(line: 248, column: 42, scope: !167)
!182 = !DILocation(line: 248, column: 48, scope: !167)
!183 = !DILocation(line: 248, column: 29, scope: !167)
!184 = !DILocation(line: 248, column: 3, scope: !167)
!185 = !DILocation(line: 249, column: 2, scope: !167)
!186 = !DILocation(line: 250, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !163, file: !122, line: 249, column: 11)
!188 = !DILocation(line: 250, column: 15, scope: !187)
!189 = !DILocation(line: 250, column: 21, scope: !187)
!190 = !DILocation(line: 250, column: 12, scope: !187)
!191 = !DILocation(line: 250, column: 31, scope: !187)
!192 = !DILocation(line: 250, column: 37, scope: !187)
!193 = !DILocation(line: 250, column: 42, scope: !187)
!194 = !DILocation(line: 250, column: 48, scope: !187)
!195 = !DILocation(line: 250, column: 29, scope: !187)
!196 = !DILocation(line: 250, column: 3, scope: !187)
!197 = !DILocation(line: 251, column: 13, scope: !187)
!198 = !DILocation(line: 251, column: 15, scope: !187)
!199 = !DILocation(line: 251, column: 21, scope: !187)
!200 = !DILocation(line: 251, column: 12, scope: !187)
!201 = !DILocation(line: 251, column: 31, scope: !187)
!202 = !DILocation(line: 251, column: 37, scope: !187)
!203 = !DILocation(line: 251, column: 42, scope: !187)
!204 = !DILocation(line: 251, column: 48, scope: !187)
!205 = !DILocation(line: 251, column: 29, scope: !187)
!206 = !DILocation(line: 251, column: 3, scope: !187)
!207 = !DILocation(line: 253, column: 1, scope: !149)
!208 = distinct !DISubprogram(name: "set_dma_count", scope: !122, file: !122, line: 264, type: !150, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!209 = !{!210, !211}
!210 = !DILocalVariable(name: "dmanr", arg: 1, scope: !208, file: !122, line: 264, type: !152)
!211 = !DILocalVariable(name: "count", arg: 2, scope: !208, file: !122, line: 264, type: !152)
!212 = !DILocation(line: 264, column: 47, scope: !208)
!213 = !DILocation(line: 264, column: 67, scope: !208)
!214 = !DILocation(line: 266, column: 7, scope: !208)
!215 = !DILocation(line: 267, column: 6, scope: !216)
!216 = distinct !DILexicalBlock(scope: !208, file: !122, line: 267, column: 6)
!217 = !DILocation(line: 267, column: 12, scope: !216)
!218 = !DILocation(line: 267, column: 6, scope: !208)
!219 = !DILocation(line: 268, column: 12, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !122, line: 267, column: 19)
!221 = !DILocation(line: 268, column: 18, scope: !220)
!222 = !DILocation(line: 268, column: 28, scope: !220)
!223 = !DILocation(line: 268, column: 34, scope: !220)
!224 = !DILocation(line: 268, column: 39, scope: !220)
!225 = !DILocation(line: 268, column: 45, scope: !220)
!226 = !DILocation(line: 268, column: 49, scope: !220)
!227 = !DILocation(line: 268, column: 26, scope: !220)
!228 = !DILocation(line: 268, column: 3, scope: !220)
!229 = !DILocation(line: 269, column: 13, scope: !220)
!230 = !DILocation(line: 269, column: 19, scope: !220)
!231 = !DILocation(line: 269, column: 25, scope: !220)
!232 = !DILocation(line: 269, column: 12, scope: !220)
!233 = !DILocation(line: 270, column: 7, scope: !220)
!234 = !DILocation(line: 270, column: 13, scope: !220)
!235 = !DILocation(line: 270, column: 18, scope: !220)
!236 = !DILocation(line: 270, column: 24, scope: !220)
!237 = !DILocation(line: 270, column: 28, scope: !220)
!238 = !DILocation(line: 270, column: 5, scope: !220)
!239 = !DILocation(line: 269, column: 3, scope: !220)
!240 = !DILocation(line: 271, column: 2, scope: !220)
!241 = !DILocation(line: 272, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !216, file: !122, line: 271, column: 9)
!243 = !DILocation(line: 272, column: 19, scope: !242)
!244 = !DILocation(line: 272, column: 25, scope: !242)
!245 = !DILocation(line: 272, column: 12, scope: !242)
!246 = !DILocation(line: 273, column: 7, scope: !242)
!247 = !DILocation(line: 273, column: 13, scope: !242)
!248 = !DILocation(line: 273, column: 18, scope: !242)
!249 = !DILocation(line: 273, column: 24, scope: !242)
!250 = !DILocation(line: 273, column: 28, scope: !242)
!251 = !DILocation(line: 273, column: 5, scope: !242)
!252 = !DILocation(line: 272, column: 3, scope: !242)
!253 = !DILocation(line: 274, column: 13, scope: !242)
!254 = !DILocation(line: 274, column: 19, scope: !242)
!255 = !DILocation(line: 274, column: 25, scope: !242)
!256 = !DILocation(line: 274, column: 12, scope: !242)
!257 = !DILocation(line: 275, column: 7, scope: !242)
!258 = !DILocation(line: 275, column: 13, scope: !242)
!259 = !DILocation(line: 275, column: 18, scope: !242)
!260 = !DILocation(line: 275, column: 24, scope: !242)
!261 = !DILocation(line: 275, column: 28, scope: !242)
!262 = !DILocation(line: 275, column: 5, scope: !242)
!263 = !DILocation(line: 274, column: 3, scope: !242)
!264 = !DILocation(line: 277, column: 1, scope: !208)
!265 = distinct !DISubprogram(name: "enable_dma", scope: !122, file: !122, line: 167, type: !266, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !152}
!268 = !{!269}
!269 = !DILocalVariable(name: "dmanr", arg: 1, scope: !265, file: !122, line: 167, type: !152)
!270 = !DILocation(line: 167, column: 44, scope: !265)
!271 = !DILocation(line: 169, column: 6, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !122, line: 169, column: 6)
!273 = !DILocation(line: 169, column: 12, scope: !272)
!274 = !DILocation(line: 169, column: 6, scope: !265)
!275 = !DILocation(line: 170, column: 12, scope: !272)
!276 = !DILocation(line: 170, column: 3, scope: !272)
!277 = !DILocation(line: 172, column: 12, scope: !272)
!278 = !DILocation(line: 172, column: 18, scope: !272)
!279 = !DILocation(line: 172, column: 3, scope: !272)
!280 = !DILocation(line: 173, column: 1, scope: !265)
!281 = distinct !DISubprogram(name: "release_dma_lock", scope: !122, file: !122, line: 160, type: !282, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !88}
!284 = !{!285}
!285 = !DILocalVariable(name: "flags", arg: 1, scope: !281, file: !122, line: 160, type: !88)
!286 = !DILocation(line: 160, column: 51, scope: !281)
!287 = !DILocation(line: 162, column: 41, scope: !281)
!288 = !DILocation(line: 162, column: 2, scope: !281)
!289 = !DILocation(line: 163, column: 1, scope: !281)
!290 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !291, file: !291, line: 32, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!292 = !DISubroutineType(types: !293)
!293 = !{!88, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !296, line: 23, baseType: !297)
!296 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !296, line: 14, size: 32, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !297, file: !296, line: 15, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !301, line: 44, baseType: !302)
!301 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !301, line: 14, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !301, line: 15, baseType: !305, size: 32)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !301, line: 15, size: 32, elements: !306)
!306 = !{!307, !312, !317}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !305, file: !301, line: 16, baseType: !308, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !14, line: 174, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 172, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !309, file: !14, line: 173, baseType: !23, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !301, line: 24, baseType: !313, size: 16)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !305, file: !301, line: 24, size: 16, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !313, file: !301, line: 25, baseType: !60, size: 8)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !313, file: !301, line: 26, baseType: !60, size: 8, offset: 8)
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !301, line: 28, baseType: !318, size: 32)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !305, file: !301, line: 28, size: 32, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !318, file: !301, line: 29, baseType: !65, size: 16)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !318, file: !301, line: 30, baseType: !65, size: 16, offset: 16)
!322 = distinct !DISubprogram(name: "spinlock_check", scope: !323, file: !323, line: 324, type: !324, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!323 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!324 = !DISubroutineType(types: !325)
!325 = !{!294, !326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !328, line: 29, baseType: !329)
!328 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !328, line: 17, size: 32, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !328, line: 18, baseType: !332, size: 32)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !328, line: 18, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !332, file: !328, line: 19, baseType: !297, size: 32)
!335 = !{!336}
!336 = !DILocalVariable(name: "lock", arg: 1, scope: !322, file: !323, line: 324, type: !326)
!337 = !DILocation(line: 324, column: 67, scope: !322)
!338 = !DILocation(line: 326, column: 10, scope: !322)
!339 = !DILocation(line: 326, column: 16, scope: !322)
!340 = !DILocation(line: 326, column: 2, scope: !322)
!341 = distinct !DISubprogram(name: "set_dma_page", scope: !122, file: !122, line: 212, type: !342, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !152, !344}
!344 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!345 = !{!346, !347}
!346 = !DILocalVariable(name: "dmanr", arg: 1, scope: !341, file: !122, line: 212, type: !152)
!347 = !DILocalVariable(name: "pagenr", arg: 2, scope: !341, file: !122, line: 212, type: !344)
!348 = !DILocation(line: 212, column: 46, scope: !341)
!349 = !DILocation(line: 212, column: 58, scope: !341)
!350 = !DILocation(line: 214, column: 10, scope: !341)
!351 = !DILocation(line: 214, column: 2, scope: !341)
!352 = !DILocation(line: 216, column: 12, scope: !353)
!353 = distinct !DILexicalBlock(scope: !341, file: !122, line: 214, column: 17)
!354 = !DILocation(line: 216, column: 3, scope: !353)
!355 = !DILocation(line: 217, column: 3, scope: !353)
!356 = !DILocation(line: 219, column: 12, scope: !353)
!357 = !DILocation(line: 219, column: 3, scope: !353)
!358 = !DILocation(line: 220, column: 3, scope: !353)
!359 = !DILocation(line: 222, column: 12, scope: !353)
!360 = !DILocation(line: 222, column: 3, scope: !353)
!361 = !DILocation(line: 223, column: 3, scope: !353)
!362 = !DILocation(line: 225, column: 12, scope: !353)
!363 = !DILocation(line: 225, column: 3, scope: !353)
!364 = !DILocation(line: 226, column: 3, scope: !353)
!365 = !DILocation(line: 228, column: 12, scope: !353)
!366 = !DILocation(line: 228, column: 19, scope: !353)
!367 = !DILocation(line: 228, column: 3, scope: !353)
!368 = !DILocation(line: 229, column: 3, scope: !353)
!369 = !DILocation(line: 231, column: 12, scope: !353)
!370 = !DILocation(line: 231, column: 19, scope: !353)
!371 = !DILocation(line: 231, column: 3, scope: !353)
!372 = !DILocation(line: 232, column: 3, scope: !353)
!373 = !DILocation(line: 234, column: 12, scope: !353)
!374 = !DILocation(line: 234, column: 19, scope: !353)
!375 = !DILocation(line: 234, column: 3, scope: !353)
!376 = !DILocation(line: 235, column: 3, scope: !353)
!377 = !DILocation(line: 237, column: 1, scope: !341)
!378 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !323, file: !323, line: 404, type: !379, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !326, !88}
!381 = !{!382, !383, !384, !387}
!382 = !DILocalVariable(name: "lock", arg: 1, scope: !378, file: !323, line: 404, type: !326)
!383 = !DILocalVariable(name: "flags", arg: 2, scope: !378, file: !323, line: 404, type: !88)
!384 = !DILocalVariable(name: "__dummy", scope: !385, file: !323, line: 406, type: !88)
!385 = distinct !DILexicalBlock(scope: !386, file: !323, line: 406, column: 2)
!386 = distinct !DILexicalBlock(scope: !378, file: !323, line: 406, column: 2)
!387 = !DILocalVariable(name: "__dummy2", scope: !385, file: !323, line: 406, type: !88)
!388 = !DILocation(line: 404, column: 64, scope: !378)
!389 = !DILocation(line: 404, column: 84, scope: !378)
!390 = !DILocation(line: 406, column: 2, scope: !378)
!391 = !DILocation(line: 406, column: 2, scope: !385)
!392 = !DILocation(line: 406, column: 2, scope: !386)
!393 = !DILocation(line: 407, column: 1, scope: !378)
!394 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !291, file: !291, line: 43, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !294, !88}
