; ModuleID = 'lib/dec_and_lock.c'
source_filename = "lib/dec_and_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__atomic_dec_and_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _atomic_dec_and_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__atomic_dec_and_lock_irqsave: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _atomic_dec_and_lock_irqsave ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__atomic_dec_and_raw_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _atomic_dec_and_raw_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__atomic_dec_and_raw_lock_irqsave: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _atomic_dec_and_raw_lock_irqsave ; .previous"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID___addressable__atomic_dec_and_lock61 = internal global ptr @_atomic_dec_and_lock, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable__atomic_dec_and_lock_irqsave62 = internal global ptr @_atomic_dec_and_lock_irqsave, section ".discard.addressable", align 8, !dbg !25
@__UNIQUE_ID___addressable__atomic_dec_and_raw_lock63 = internal global ptr @_atomic_dec_and_raw_lock, section ".discard.addressable", align 8, !dbg !27
@__UNIQUE_ID___addressable__atomic_dec_and_raw_lock_irqsave64 = internal global ptr @_atomic_dec_and_raw_lock_irqsave, section ".discard.addressable", align 8, !dbg !29
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable__atomic_dec_and_lock61, ptr @__UNIQUE_ID___addressable__atomic_dec_and_lock_irqsave62, ptr @__UNIQUE_ID___addressable__atomic_dec_and_raw_lock63, ptr @__UNIQUE_ID___addressable__atomic_dec_and_raw_lock_irqsave64], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_atomic_dec_and_lock(ptr noundef %atomic, ptr noundef %lock) #0 align 16 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %atomic.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  store ptr %atomic, ptr %atomic.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %atomic.addr, metadata !87, metadata !DIExpression()), !dbg !89
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !88, metadata !DIExpression()), !dbg !90
  %0 = load ptr, ptr %atomic.addr, align 8, !dbg !91
  %call = call zeroext i1 @atomic_add_unless(ptr noundef %0, i32 noundef -1, i32 noundef 1) #8, !dbg !93
  br i1 %call, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !95
  br label %return, !dbg !95

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !96
  call void @spin_lock(ptr noundef %1) #8, !dbg !97
  %2 = load ptr, ptr %atomic.addr, align 8, !dbg !98
  %call1 = call zeroext i1 @atomic_dec_and_test(ptr noundef %2) #8, !dbg !100
  br i1 %call1, label %if.then2, label %if.end3, !dbg !101

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !102
  br label %return, !dbg !102

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !103
  call void @spin_unlock(ptr noundef %3) #8, !dbg !104
  store i32 0, ptr %retval, align 4, !dbg !105
  br label %return, !dbg !105

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !106
  ret i32 %4, !dbg !106
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #2 align 16 !dbg !107 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !114, metadata !DIExpression()), !dbg !117
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !115, metadata !DIExpression()), !dbg !118
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !116, metadata !DIExpression()), !dbg !119
  br label %do.body, !dbg !120

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !121

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !123
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !124
  %1 = load ptr, ptr %v.addr, align 8, !dbg !125
  %2 = load i32, ptr %a.addr, align 4, !dbg !126
  %3 = load i32, ptr %u.addr, align 4, !dbg !127
  %call = call zeroext i1 @raw_atomic_add_unless(ptr noundef %1, i32 noundef %2, i32 noundef %3) #8, !dbg !128
  ret i1 %call, !dbg !129
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #2 align 16 !dbg !130 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !137
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !137
  call void @_raw_spin_lock(ptr noundef %1) #8, !dbg !137
  ret void, !dbg !138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_dec_and_test(ptr noundef %v) #2 align 16 !dbg !139 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !143, metadata !DIExpression()), !dbg !144
  br label %do.body, !dbg !145

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !146

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !148
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !149
  %1 = load ptr, ptr %v.addr, align 8, !dbg !150
  %call = call zeroext i1 @raw_atomic_dec_and_test(ptr noundef %1) #8, !dbg !151
  ret i1 %call, !dbg !152
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #2 align 16 !dbg !153 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !157
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !157
  call void @_raw_spin_unlock(ptr noundef %1) #8, !dbg !157
  ret void, !dbg !158
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_atomic_dec_and_lock_irqsave(ptr noundef %atomic, ptr noundef %lock, ptr noundef %flags) #0 align 16 !dbg !159 {
entry:
  %retval = alloca i32, align 4
  %atomic.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %atomic, ptr %atomic.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %atomic.addr, metadata !165, metadata !DIExpression()), !dbg !173
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !166, metadata !DIExpression()), !dbg !174
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !167, metadata !DIExpression()), !dbg !175
  %0 = load ptr, ptr %atomic.addr, align 8, !dbg !176
  %call = call zeroext i1 @atomic_add_unless(ptr noundef %0, i32 noundef -1, i32 noundef 1) #8, !dbg !178
  br i1 %call, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !180
  br label %return, !dbg !180

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !181

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !182

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !168, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !172, metadata !DIExpression()), !dbg !183
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !183
  %conv = zext i1 %cmp to i32, !dbg !183
  store i32 1, ptr %tmp, align 4, !dbg !183
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !184
  %1 = load i32, ptr %tmp, align 4, !dbg !183
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !184
  %call2 = call ptr @spinlock_check(ptr noundef %2) #8, !dbg !184
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #8, !dbg !184
  %3 = load ptr, ptr %flags.addr, align 8, !dbg !184
  store i64 %call3, ptr %3, align 8, !dbg !184
  br label %do.end, !dbg !184

do.end:                                           ; preds = %do.body1
  br label %do.end4, !dbg !182

do.end4:                                          ; preds = %do.end
  %4 = load ptr, ptr %atomic.addr, align 8, !dbg !185
  %call5 = call zeroext i1 @atomic_dec_and_test(ptr noundef %4) #8, !dbg !187
  br i1 %call5, label %if.then6, label %if.end7, !dbg !188

if.then6:                                         ; preds = %do.end4
  store i32 1, ptr %retval, align 4, !dbg !189
  br label %return, !dbg !189

if.end7:                                          ; preds = %do.end4
  %5 = load ptr, ptr %lock.addr, align 8, !dbg !190
  %6 = load ptr, ptr %flags.addr, align 8, !dbg !191
  %7 = load i64, ptr %6, align 8, !dbg !192
  call void @spin_unlock_irqrestore(ptr noundef %5, i64 noundef %7) #8, !dbg !193
  store i32 0, ptr %retval, align 4, !dbg !194
  br label %return, !dbg !194

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !195
  ret i32 %8, !dbg !195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !196 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #2 align 16 !dbg !202 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !206, metadata !DIExpression()), !dbg !207
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !208
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !209
  ret ptr %1, !dbg !210
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #2 align 16 !dbg !211 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !215, metadata !DIExpression()), !dbg !221
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !216, metadata !DIExpression()), !dbg !222
  br label %do.body, !dbg !223

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !220, metadata !DIExpression()), !dbg !224
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !224
  %conv = zext i1 %cmp to i32, !dbg !224
  store i32 1, ptr %tmp, align 4, !dbg !224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !225
  %0 = load i32, ptr %tmp, align 4, !dbg !224
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !225
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !225
  %3 = load i64, ptr %flags.addr, align 8, !dbg !225
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #8, !dbg !225
  br label %do.end, !dbg !225

do.end:                                           ; preds = %do.body
  ret void, !dbg !226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_atomic_dec_and_raw_lock(ptr noundef %atomic, ptr noundef %lock) #0 align 16 !dbg !227 {
entry:
  %retval = alloca i32, align 4
  %atomic.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  store ptr %atomic, ptr %atomic.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %atomic.addr, metadata !231, metadata !DIExpression()), !dbg !233
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !232, metadata !DIExpression()), !dbg !234
  %0 = load ptr, ptr %atomic.addr, align 8, !dbg !235
  %call = call zeroext i1 @atomic_add_unless(ptr noundef %0, i32 noundef -1, i32 noundef 1) #8, !dbg !237
  br i1 %call, label %if.then, label %if.end, !dbg !238

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !239
  br label %return, !dbg !239

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !240
  call void @_raw_spin_lock(ptr noundef %1) #8, !dbg !240
  %2 = load ptr, ptr %atomic.addr, align 8, !dbg !241
  %call1 = call zeroext i1 @atomic_dec_and_test(ptr noundef %2) #8, !dbg !243
  br i1 %call1, label %if.then2, label %if.end3, !dbg !244

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !245
  br label %return, !dbg !245

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !246
  call void @_raw_spin_unlock(ptr noundef %3) #8, !dbg !246
  store i32 0, ptr %retval, align 4, !dbg !247
  br label %return, !dbg !247

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !248
  ret i32 %4, !dbg !248
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !249 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !252 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_atomic_dec_and_raw_lock_irqsave(ptr noundef %atomic, ptr noundef %lock, ptr noundef %flags) #0 align 16 !dbg !253 {
entry:
  %retval = alloca i32, align 4
  %atomic.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store ptr %atomic, ptr %atomic.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %atomic.addr, metadata !257, metadata !DIExpression()), !dbg !268
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !258, metadata !DIExpression()), !dbg !269
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !259, metadata !DIExpression()), !dbg !270
  %0 = load ptr, ptr %atomic.addr, align 8, !dbg !271
  %call = call zeroext i1 @atomic_add_unless(ptr noundef %0, i32 noundef -1, i32 noundef 1) #8, !dbg !273
  br i1 %call, label %if.then, label %if.end, !dbg !274

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !275
  br label %return, !dbg !275

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !276

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !260, metadata !DIExpression()), !dbg !277
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !263, metadata !DIExpression()), !dbg !277
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !277
  %conv = zext i1 %cmp to i32, !dbg !277
  store i32 1, ptr %tmp, align 4, !dbg !277
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !278
  %1 = load i32, ptr %tmp, align 4, !dbg !277
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !278
  %call1 = call i64 @_raw_spin_lock_irqsave(ptr noundef %2) #8, !dbg !278
  %3 = load ptr, ptr %flags.addr, align 8, !dbg !278
  store i64 %call1, ptr %3, align 8, !dbg !278
  br label %do.end, !dbg !278

do.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %atomic.addr, align 8, !dbg !279
  %call2 = call zeroext i1 @atomic_dec_and_test(ptr noundef %4) #8, !dbg !281
  br i1 %call2, label %if.then3, label %if.end4, !dbg !282

if.then3:                                         ; preds = %do.end
  store i32 1, ptr %retval, align 4, !dbg !283
  br label %return, !dbg !283

if.end4:                                          ; preds = %do.end
  br label %do.body5, !dbg !284

do.body5:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #9, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !264, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #9, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !267, metadata !DIExpression()), !dbg !285
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !285
  %conv9 = zext i1 %cmp8 to i32, !dbg !285
  store i32 1, ptr %tmp10, align 4, !dbg !285
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #9, !dbg !286
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #9, !dbg !286
  %5 = load i32, ptr %tmp10, align 4, !dbg !285
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !286
  %7 = load ptr, ptr %flags.addr, align 8, !dbg !286
  %8 = load i64, ptr %7, align 8, !dbg !286
  call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i64 noundef %8) #8, !dbg !286
  br label %do.end11, !dbg !286

do.end11:                                         ; preds = %do.body5
  store i32 0, ptr %retval, align 4, !dbg !287
  br label %return, !dbg !287

return:                                           ; preds = %do.end11, %if.then3, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !288
  ret i32 %9, !dbg !288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !289 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !292 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !304, metadata !DIExpression()), !dbg !306
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !305, metadata !DIExpression()), !dbg !307
  %0 = load ptr, ptr %v.addr, align 8, !dbg !308
  %1 = load i64, ptr %size.addr, align 8, !dbg !309
  %conv = trunc i64 %1 to i32, !dbg !309
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !310
  %2 = load ptr, ptr %v.addr, align 8, !dbg !311
  %3 = load i64, ptr %size.addr, align 8, !dbg !311
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !311
  ret void, !dbg !312
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #2 align 16 !dbg !313 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !316, metadata !DIExpression()), !dbg !319
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !317, metadata !DIExpression()), !dbg !320
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !318, metadata !DIExpression()), !dbg !321
  %0 = load ptr, ptr %v.addr, align 8, !dbg !322
  %1 = load i32, ptr %a.addr, align 4, !dbg !323
  %2 = load i32, ptr %u.addr, align 4, !dbg !324
  %call = call i32 @raw_atomic_fetch_add_unless(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8, !dbg !325
  %3 = load i32, ptr %u.addr, align 4, !dbg !326
  %cmp = icmp ne i32 %call, %3, !dbg !327
  ret i1 %cmp, !dbg !328
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !329 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !334, metadata !DIExpression()), !dbg !336
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !335, metadata !DIExpression()), !dbg !337
  ret i1 true, !dbg !338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !339 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !344, metadata !DIExpression()), !dbg !347
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !345, metadata !DIExpression()), !dbg !348
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !346, metadata !DIExpression()), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_unless(ptr noundef %v, i32 noundef %a, i32 noundef %u) #2 align 16 !dbg !351 {
entry:
  %v.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %u.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !355, metadata !DIExpression()), !dbg !359
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !356, metadata !DIExpression()), !dbg !360
  store i32 %u, ptr %u.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !357, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #9, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %c, metadata !358, metadata !DIExpression()), !dbg !363
  %0 = load ptr, ptr %v.addr, align 8, !dbg !364
  %call = call i32 @raw_atomic_read(ptr noundef %0) #8, !dbg !365
  store i32 %call, ptr %c, align 4, !dbg !363
  br label %do.body, !dbg !366

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %c, align 4, !dbg !367
  %2 = load i32, ptr %u.addr, align 4, !dbg !367
  %cmp = icmp eq i32 %1, %2, !dbg !367
  %lnot = xor i1 %cmp, true, !dbg !367
  %lnot1 = xor i1 %lnot, true, !dbg !367
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !367
  %conv = sext i32 %lnot.ext to i64, !dbg !367
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !367
  %tobool = icmp ne i64 %expval, 0, !dbg !367
  br i1 %tobool, label %if.then, label %if.end, !dbg !370

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !371

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !372

do.cond:                                          ; preds = %if.end
  %3 = load ptr, ptr %v.addr, align 8, !dbg !373
  %4 = load i32, ptr %c, align 4, !dbg !374
  %5 = load i32, ptr %a.addr, align 4, !dbg !375
  %add = add i32 %4, %5, !dbg !376
  %call2 = call zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %3, ptr noundef %c, i32 noundef %add) #8, !dbg !377
  %lnot3 = xor i1 %call2, true, !dbg !378
  br i1 %lnot3, label %do.body, label %do.end, !dbg !372, !llvm.loop !379

do.end:                                           ; preds = %do.cond, %if.then
  %6 = load i32, ptr %c, align 4, !dbg !383
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #9, !dbg !384
  ret i32 %6, !dbg !385
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #2 align 16 !dbg !386 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load ptr, ptr %v.addr, align 8, !dbg !394
  %call = call i32 @arch_atomic_read(ptr noundef %0) #8, !dbg !395
  ret i32 %call, !dbg !396
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #2 align 16 !dbg !397 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !401, metadata !DIExpression()), !dbg !404
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !402, metadata !DIExpression()), !dbg !405
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !403, metadata !DIExpression()), !dbg !406
  %0 = load ptr, ptr %v.addr, align 8, !dbg !407
  %1 = load ptr, ptr %old.addr, align 8, !dbg !408
  %2 = load i32, ptr %new.addr, align 4, !dbg !409
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8, !dbg !410
  ret i1 %call, !dbg !411
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #2 align 16 !dbg !412 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load ptr, ptr %v.addr, align 8, !dbg !417
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !417
  %1 = load volatile i32, ptr %counter, align 4, !dbg !417
  ret i32 %1, !dbg !418
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #2 align 16 !dbg !419 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !421, metadata !DIExpression()), !dbg !430
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !422, metadata !DIExpression()), !dbg !431
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !423, metadata !DIExpression()), !dbg !432
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %success, metadata !424, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !426, metadata !DIExpression()), !dbg !433
  %0 = load ptr, ptr %old.addr, align 8, !dbg !433
  store ptr %0, ptr %_old, align 8, !dbg !433
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #9, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !427, metadata !DIExpression()), !dbg !433
  %1 = load ptr, ptr %_old, align 8, !dbg !433
  %2 = load i32, ptr %1, align 4, !dbg !433
  store i32 %2, ptr %__old, align 4, !dbg !433
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #9, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !428, metadata !DIExpression()), !dbg !433
  %3 = load i32, ptr %new.addr, align 4, !dbg !433
  store i32 %3, ptr %__new, align 4, !dbg !433
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !429, metadata !DIExpression()), !dbg !433
  %4 = load ptr, ptr %v.addr, align 8, !dbg !433
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !433
  store ptr %counter, ptr %__ptr, align 8, !dbg !433
  %5 = load ptr, ptr %__ptr, align 8, !dbg !433
  %6 = load i32, ptr %__old, align 4, !dbg !433
  %7 = load i32, ptr %__new, align 4, !dbg !433
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #9, !dbg !433, !srcloc !434
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !433
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !433
  %9 = icmp ult i8 %asmresult, 2, !dbg !433
  call void @llvm.assume(i1 %9), !dbg !433
  store i8 %asmresult, ptr %success, align 1, !dbg !433
  store i32 %asmresult1, ptr %__old, align 4, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !433
  %10 = load i8, ptr %success, align 1, !dbg !435, !range !437, !noundef !438
  %tobool = trunc i8 %10 to i1, !dbg !435
  %lnot = xor i1 %tobool, true, !dbg !435
  %lnot2 = xor i1 %lnot, true, !dbg !435
  %lnot3 = xor i1 %lnot2, true, !dbg !435
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !435
  %conv = sext i32 %lnot.ext to i64, !dbg !435
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !435
  %tobool4 = icmp ne i64 %expval, 0, !dbg !435
  br i1 %tobool4, label %if.then, label %if.end, !dbg !433

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !435
  %12 = load ptr, ptr %_old, align 8, !dbg !435
  store i32 %11, ptr %12, align 4, !dbg !435
  br label %if.end, !dbg !435

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !433, !range !437, !noundef !438
  %tobool5 = trunc i8 %13 to i1, !dbg !433
  %lnot6 = xor i1 %tobool5, true, !dbg !433
  %lnot8 = xor i1 %lnot6, true, !dbg !433
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !433
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !433
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !433
  store i64 %expval11, ptr %tmp, align 8, !dbg !435
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #9, !dbg !439
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #9, !dbg !439
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !439
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !439
  %14 = load i64, ptr %tmp, align 8, !dbg !433
  %tobool12 = icmp ne i64 %14, 0, !dbg !439
  ret i1 %tobool12, !dbg !440
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_dec_and_test(ptr noundef %v) #2 align 16 !dbg !441 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load ptr, ptr %v.addr, align 8, !dbg !445
  %call = call zeroext i1 @arch_atomic_dec_and_test(ptr noundef %0) #8, !dbg !446
  ret i1 %call, !dbg !447
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_dec_and_test(ptr noundef %v) #2 align 16 !dbg !448 {
entry:
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !450, metadata !DIExpression()), !dbg !453
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #9, !dbg !454
  call void @llvm.dbg.declare(metadata ptr %c, metadata !451, metadata !DIExpression()), !dbg !454
  %0 = load ptr, ptr %v.addr, align 8, !dbg !454
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !454
  %1 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #9, !dbg !454, !srcloc !455
  %2 = icmp ult i8 %1, 2, !dbg !454
  call void @llvm.assume(i1 %2), !dbg !454
  store i8 %1, ptr %c, align 1, !dbg !454
  %3 = load i8, ptr %c, align 1, !dbg !454, !range !437, !noundef !438
  %tobool = trunc i8 %3 to i1, !dbg !454
  %frombool = zext i1 %tobool to i8, !dbg !454
  store i8 %frombool, ptr %tmp, align 1, !dbg !454
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #9, !dbg !456
  %4 = load i8, ptr %tmp, align 1, !dbg !454, !range !437, !noundef !438
  %tobool1 = trunc i8 %4 to i1, !dbg !454
  ret i1 %tobool1, !dbg !457
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__atomic_dec_and_lock61", scope: !2, file: !3, line: 35, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.dec_and_lock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/dec_and_lock\22 -D KBUILD_BASENAME=\22dec_and_lock\22 -D KBUILD_MODNAME=\22dec_and_lock\22 -D __KBUILD_MODNAME=kmod_dec_and_lock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/dec_and_lock.ll lib/dec_and_lock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/dec_and_lock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "551e04654f962da08119a4b214cc6a4f")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !17, !18}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !{!0, !25, !27, !29}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__atomic_dec_and_lock_irqsave62", scope: !2, file: !3, line: 51, type: !12, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__atomic_dec_and_raw_lock63", scope: !2, file: !3, line: 66, type: !12, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__atomic_dec_and_raw_lock_irqsave64", scope: !2, file: !3, line: 82, type: !12, isLocal: true, isDefinition: true)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 8, !"cf-protection-branch", i32 1}
!35 = !{i32 4, !"function_return_thunk_extern", i32 1}
!36 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{i32 1, !"override-stack-alignment", i32 8}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = distinct !DISubprogram(name: "_atomic_dec_and_lock", scope: !3, file: !3, line: 21, type: !41, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !86)
!41 = !DISubroutineType(types: !42)
!42 = !{!16, !43, !49}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !46, file: !45, line: 173, baseType: !16, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !51, line: 29, baseType: !52)
!51 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !51, line: 17, size: 32, elements: !53)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, scope: !52, file: !51, line: 18, baseType: !55, size: 32)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !51, line: 18, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !55, file: !51, line: 19, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !59, line: 14, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !58, file: !59, line: 15, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !63, line: 44, baseType: !64)
!63 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !63, line: 14, size: 32, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !63, line: 15, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !64, file: !63, line: 15, size: 32, elements: !68)
!68 = !{!69, !70, !78}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !67, file: !63, line: 16, baseType: !44, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !63, line: 24, baseType: !71, size: 16)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !63, line: 24, size: 16, elements: !72)
!72 = !{!73, !77}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !71, file: !63, line: 25, baseType: !74, size: 8)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !76)
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !71, file: !63, line: 26, baseType: !74, size: 8, offset: 8)
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !63, line: 28, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !63, line: 28, size: 32, elements: !80)
!80 = !{!81, !85}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !79, file: !63, line: 29, baseType: !82, size: 16)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !84)
!84 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !79, file: !63, line: 30, baseType: !82, size: 16, offset: 16)
!86 = !{!87, !88}
!87 = !DILocalVariable(name: "atomic", arg: 1, scope: !40, file: !3, line: 21, type: !43)
!88 = !DILocalVariable(name: "lock", arg: 2, scope: !40, file: !3, line: 21, type: !49)
!89 = !DILocation(line: 21, column: 36, scope: !40)
!90 = !DILocation(line: 21, column: 56, scope: !40)
!91 = !DILocation(line: 24, column: 24, scope: !92)
!92 = distinct !DILexicalBlock(scope: !40, file: !3, line: 24, column: 6)
!93 = !DILocation(line: 24, column: 6, scope: !92)
!94 = !DILocation(line: 24, column: 6, scope: !40)
!95 = !DILocation(line: 25, column: 3, scope: !92)
!96 = !DILocation(line: 28, column: 12, scope: !40)
!97 = !DILocation(line: 28, column: 2, scope: !40)
!98 = !DILocation(line: 29, column: 26, scope: !99)
!99 = distinct !DILexicalBlock(scope: !40, file: !3, line: 29, column: 6)
!100 = !DILocation(line: 29, column: 6, scope: !99)
!101 = !DILocation(line: 29, column: 6, scope: !40)
!102 = !DILocation(line: 30, column: 3, scope: !99)
!103 = !DILocation(line: 31, column: 14, scope: !40)
!104 = !DILocation(line: 31, column: 2, scope: !40)
!105 = !DILocation(line: 32, column: 2, scope: !40)
!106 = !DILocation(line: 33, column: 1, scope: !40)
!107 = distinct !DISubprogram(name: "atomic_add_unless", scope: !108, file: !108, line: 1504, type: !109, scopeLine: 1505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!108 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !43, !16, !16}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !112)
!112 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!113 = !{!114, !115, !116}
!114 = !DILocalVariable(name: "v", arg: 1, scope: !107, file: !108, line: 1504, type: !43)
!115 = !DILocalVariable(name: "a", arg: 2, scope: !107, file: !108, line: 1504, type: !16)
!116 = !DILocalVariable(name: "u", arg: 3, scope: !107, file: !108, line: 1504, type: !16)
!117 = !DILocation(line: 1504, column: 29, scope: !107)
!118 = !DILocation(line: 1504, column: 36, scope: !107)
!119 = !DILocation(line: 1504, column: 43, scope: !107)
!120 = !DILocation(line: 1506, column: 2, scope: !107)
!121 = !DILocation(line: 1506, column: 2, scope: !122)
!122 = distinct !DILexicalBlock(scope: !107, file: !108, line: 1506, column: 2)
!123 = !DILocation(line: 1507, column: 31, scope: !107)
!124 = !DILocation(line: 1507, column: 2, scope: !107)
!125 = !DILocation(line: 1508, column: 31, scope: !107)
!126 = !DILocation(line: 1508, column: 34, scope: !107)
!127 = !DILocation(line: 1508, column: 37, scope: !107)
!128 = !DILocation(line: 1508, column: 9, scope: !107)
!129 = !DILocation(line: 1508, column: 2, scope: !107)
!130 = distinct !DISubprogram(name: "spin_lock", scope: !131, file: !131, line: 349, type: !132, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!131 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!132 = !DISubroutineType(types: !133)
!133 = !{null, !49}
!134 = !{!135}
!135 = !DILocalVariable(name: "lock", arg: 1, scope: !130, file: !131, line: 349, type: !49)
!136 = !DILocation(line: 349, column: 51, scope: !130)
!137 = !DILocation(line: 351, column: 2, scope: !130)
!138 = !DILocation(line: 352, column: 1, scope: !130)
!139 = distinct !DISubprogram(name: "atomic_dec_and_test", scope: !108, file: !108, line: 1372, type: !140, scopeLine: 1373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{!111, !43}
!142 = !{!143}
!143 = !DILocalVariable(name: "v", arg: 1, scope: !139, file: !108, line: 1372, type: !43)
!144 = !DILocation(line: 1372, column: 31, scope: !139)
!145 = !DILocation(line: 1374, column: 2, scope: !139)
!146 = !DILocation(line: 1374, column: 2, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !108, line: 1374, column: 2)
!148 = !DILocation(line: 1375, column: 31, scope: !139)
!149 = !DILocation(line: 1375, column: 2, scope: !139)
!150 = !DILocation(line: 1376, column: 33, scope: !139)
!151 = !DILocation(line: 1376, column: 9, scope: !139)
!152 = !DILocation(line: 1376, column: 2, scope: !139)
!153 = distinct !DISubprogram(name: "spin_unlock", scope: !131, file: !131, line: 389, type: !132, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!154 = !{!155}
!155 = !DILocalVariable(name: "lock", arg: 1, scope: !153, file: !131, line: 389, type: !49)
!156 = !DILocation(line: 389, column: 53, scope: !153)
!157 = !DILocation(line: 391, column: 2, scope: !153)
!158 = !DILocation(line: 392, column: 1, scope: !153)
!159 = distinct !DISubprogram(name: "_atomic_dec_and_lock_irqsave", scope: !3, file: !3, line: 37, type: !160, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!160 = !DISubroutineType(types: !161)
!161 = !{!16, !43, !49, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!164 = !{!165, !166, !167, !168, !172}
!165 = !DILocalVariable(name: "atomic", arg: 1, scope: !159, file: !3, line: 37, type: !43)
!166 = !DILocalVariable(name: "lock", arg: 2, scope: !159, file: !3, line: 37, type: !49)
!167 = !DILocalVariable(name: "flags", arg: 3, scope: !159, file: !3, line: 38, type: !162)
!168 = !DILocalVariable(name: "__dummy", scope: !169, file: !3, line: 45, type: !163)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 45, column: 2)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 45, column: 2)
!171 = distinct !DILexicalBlock(scope: !159, file: !3, line: 45, column: 2)
!172 = !DILocalVariable(name: "__dummy2", scope: !169, file: !3, line: 45, type: !163)
!173 = !DILocation(line: 37, column: 44, scope: !159)
!174 = !DILocation(line: 37, column: 64, scope: !159)
!175 = !DILocation(line: 38, column: 21, scope: !159)
!176 = !DILocation(line: 41, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !159, file: !3, line: 41, column: 6)
!178 = !DILocation(line: 41, column: 6, scope: !177)
!179 = !DILocation(line: 41, column: 6, scope: !159)
!180 = !DILocation(line: 42, column: 3, scope: !177)
!181 = !DILocation(line: 45, column: 2, scope: !159)
!182 = !DILocation(line: 45, column: 2, scope: !171)
!183 = !DILocation(line: 45, column: 2, scope: !169)
!184 = !DILocation(line: 45, column: 2, scope: !170)
!185 = !DILocation(line: 46, column: 26, scope: !186)
!186 = distinct !DILexicalBlock(scope: !159, file: !3, line: 46, column: 6)
!187 = !DILocation(line: 46, column: 6, scope: !186)
!188 = !DILocation(line: 46, column: 6, scope: !159)
!189 = !DILocation(line: 47, column: 3, scope: !186)
!190 = !DILocation(line: 48, column: 25, scope: !159)
!191 = !DILocation(line: 48, column: 32, scope: !159)
!192 = !DILocation(line: 48, column: 31, scope: !159)
!193 = !DILocation(line: 48, column: 2, scope: !159)
!194 = !DILocation(line: 49, column: 2, scope: !159)
!195 = !DILocation(line: 50, column: 1, scope: !159)
!196 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !197, file: !197, line: 32, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!197 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!198 = !DISubroutineType(types: !199)
!199 = !{!163, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !59, line: 23, baseType: !58)
!202 = distinct !DISubprogram(name: "spinlock_check", scope: !131, file: !131, line: 324, type: !203, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{!200, !49}
!205 = !{!206}
!206 = !DILocalVariable(name: "lock", arg: 1, scope: !202, file: !131, line: 324, type: !49)
!207 = !DILocation(line: 324, column: 67, scope: !202)
!208 = !DILocation(line: 326, column: 10, scope: !202)
!209 = !DILocation(line: 326, column: 16, scope: !202)
!210 = !DILocation(line: 326, column: 2, scope: !202)
!211 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !131, file: !131, line: 404, type: !212, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !49, !163}
!214 = !{!215, !216, !217, !220}
!215 = !DILocalVariable(name: "lock", arg: 1, scope: !211, file: !131, line: 404, type: !49)
!216 = !DILocalVariable(name: "flags", arg: 2, scope: !211, file: !131, line: 404, type: !163)
!217 = !DILocalVariable(name: "__dummy", scope: !218, file: !131, line: 406, type: !163)
!218 = distinct !DILexicalBlock(scope: !219, file: !131, line: 406, column: 2)
!219 = distinct !DILexicalBlock(scope: !211, file: !131, line: 406, column: 2)
!220 = !DILocalVariable(name: "__dummy2", scope: !218, file: !131, line: 406, type: !163)
!221 = !DILocation(line: 404, column: 64, scope: !211)
!222 = !DILocation(line: 404, column: 84, scope: !211)
!223 = !DILocation(line: 406, column: 2, scope: !211)
!224 = !DILocation(line: 406, column: 2, scope: !218)
!225 = !DILocation(line: 406, column: 2, scope: !219)
!226 = !DILocation(line: 407, column: 1, scope: !211)
!227 = distinct !DISubprogram(name: "_atomic_dec_and_raw_lock", scope: !3, file: !3, line: 53, type: !228, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!16, !43, !200}
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "atomic", arg: 1, scope: !227, file: !3, line: 53, type: !43)
!232 = !DILocalVariable(name: "lock", arg: 2, scope: !227, file: !3, line: 53, type: !200)
!233 = !DILocation(line: 53, column: 40, scope: !227)
!234 = !DILocation(line: 53, column: 64, scope: !227)
!235 = !DILocation(line: 56, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !227, file: !3, line: 56, column: 6)
!237 = !DILocation(line: 56, column: 6, scope: !236)
!238 = !DILocation(line: 56, column: 6, scope: !227)
!239 = !DILocation(line: 57, column: 3, scope: !236)
!240 = !DILocation(line: 60, column: 2, scope: !227)
!241 = !DILocation(line: 61, column: 26, scope: !242)
!242 = distinct !DILexicalBlock(scope: !227, file: !3, line: 61, column: 6)
!243 = !DILocation(line: 61, column: 6, scope: !242)
!244 = !DILocation(line: 61, column: 6, scope: !227)
!245 = !DILocation(line: 62, column: 3, scope: !242)
!246 = !DILocation(line: 63, column: 2, scope: !227)
!247 = !DILocation(line: 64, column: 2, scope: !227)
!248 = !DILocation(line: 65, column: 1, scope: !227)
!249 = !DISubprogram(name: "_raw_spin_lock", scope: !197, file: !197, line: 22, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !200}
!252 = !DISubprogram(name: "_raw_spin_unlock", scope: !197, file: !197, line: 39, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = distinct !DISubprogram(name: "_atomic_dec_and_raw_lock_irqsave", scope: !3, file: !3, line: 68, type: !254, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!16, !43, !200, !162}
!256 = !{!257, !258, !259, !260, !263, !264, !267}
!257 = !DILocalVariable(name: "atomic", arg: 1, scope: !253, file: !3, line: 68, type: !43)
!258 = !DILocalVariable(name: "lock", arg: 2, scope: !253, file: !3, line: 68, type: !200)
!259 = !DILocalVariable(name: "flags", arg: 3, scope: !253, file: !3, line: 69, type: !162)
!260 = !DILocalVariable(name: "__dummy", scope: !261, file: !3, line: 76, type: !163)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 76, column: 2)
!262 = distinct !DILexicalBlock(scope: !253, file: !3, line: 76, column: 2)
!263 = !DILocalVariable(name: "__dummy2", scope: !261, file: !3, line: 76, type: !163)
!264 = !DILocalVariable(name: "__dummy", scope: !265, file: !3, line: 79, type: !163)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 79, column: 2)
!266 = distinct !DILexicalBlock(scope: !253, file: !3, line: 79, column: 2)
!267 = !DILocalVariable(name: "__dummy2", scope: !265, file: !3, line: 79, type: !163)
!268 = !DILocation(line: 68, column: 48, scope: !253)
!269 = !DILocation(line: 68, column: 72, scope: !253)
!270 = !DILocation(line: 69, column: 25, scope: !253)
!271 = !DILocation(line: 72, column: 24, scope: !272)
!272 = distinct !DILexicalBlock(scope: !253, file: !3, line: 72, column: 6)
!273 = !DILocation(line: 72, column: 6, scope: !272)
!274 = !DILocation(line: 72, column: 6, scope: !253)
!275 = !DILocation(line: 73, column: 3, scope: !272)
!276 = !DILocation(line: 76, column: 2, scope: !253)
!277 = !DILocation(line: 76, column: 2, scope: !261)
!278 = !DILocation(line: 76, column: 2, scope: !262)
!279 = !DILocation(line: 77, column: 26, scope: !280)
!280 = distinct !DILexicalBlock(scope: !253, file: !3, line: 77, column: 6)
!281 = !DILocation(line: 77, column: 6, scope: !280)
!282 = !DILocation(line: 77, column: 6, scope: !253)
!283 = !DILocation(line: 78, column: 3, scope: !280)
!284 = !DILocation(line: 79, column: 2, scope: !253)
!285 = !DILocation(line: 79, column: 2, scope: !265)
!286 = !DILocation(line: 79, column: 2, scope: !266)
!287 = !DILocation(line: 80, column: 2, scope: !253)
!288 = !DILocation(line: 81, column: 1, scope: !253)
!289 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !197, file: !197, line: 43, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !200, !163}
!292 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !293, file: !293, line: 94, type: !294, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !303)
!293 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296, !299}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !301, line: 72, baseType: !302)
!301 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !301, line: 16, baseType: !163)
!303 = !{!304, !305}
!304 = !DILocalVariable(name: "v", arg: 1, scope: !292, file: !293, line: 94, type: !296)
!305 = !DILocalVariable(name: "size", arg: 2, scope: !292, file: !293, line: 94, type: !299)
!306 = !DILocation(line: 94, column: 79, scope: !292)
!307 = !DILocation(line: 94, column: 89, scope: !292)
!308 = !DILocation(line: 96, column: 20, scope: !292)
!309 = !DILocation(line: 96, column: 23, scope: !292)
!310 = !DILocation(line: 96, column: 2, scope: !292)
!311 = !DILocation(line: 97, column: 2, scope: !292)
!312 = !DILocation(line: 98, column: 1, scope: !292)
!313 = distinct !DISubprogram(name: "raw_atomic_add_unless", scope: !314, file: !314, line: 2428, type: !109, scopeLine: 2429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !315)
!314 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!315 = !{!316, !317, !318}
!316 = !DILocalVariable(name: "v", arg: 1, scope: !313, file: !314, line: 2428, type: !43)
!317 = !DILocalVariable(name: "a", arg: 2, scope: !313, file: !314, line: 2428, type: !16)
!318 = !DILocalVariable(name: "u", arg: 3, scope: !313, file: !314, line: 2428, type: !16)
!319 = !DILocation(line: 2428, column: 33, scope: !313)
!320 = !DILocation(line: 2428, column: 40, scope: !313)
!321 = !DILocation(line: 2428, column: 47, scope: !313)
!322 = !DILocation(line: 2433, column: 37, scope: !313)
!323 = !DILocation(line: 2433, column: 40, scope: !313)
!324 = !DILocation(line: 2433, column: 43, scope: !313)
!325 = !DILocation(line: 2433, column: 9, scope: !313)
!326 = !DILocation(line: 2433, column: 49, scope: !313)
!327 = !DILocation(line: 2433, column: 46, scope: !313)
!328 = !DILocation(line: 2433, column: 2, scope: !313)
!329 = distinct !DISubprogram(name: "kasan_check_write", scope: !330, file: !330, line: 44, type: !331, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!330 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!331 = !DISubroutineType(types: !332)
!332 = !{!111, !296, !7}
!333 = !{!334, !335}
!334 = !DILocalVariable(name: "p", arg: 1, scope: !329, file: !330, line: 44, type: !296)
!335 = !DILocalVariable(name: "size", arg: 2, scope: !329, file: !330, line: 44, type: !7)
!336 = !DILocation(line: 44, column: 59, scope: !329)
!337 = !DILocation(line: 44, column: 75, scope: !329)
!338 = !DILocation(line: 46, column: 2, scope: !329)
!339 = distinct !DISubprogram(name: "kcsan_check_access", scope: !340, file: !340, line: 229, type: !341, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !343)
!340 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!341 = !DISubroutineType(types: !342)
!342 = !{null, !296, !299, !16}
!343 = !{!344, !345, !346}
!344 = !DILocalVariable(name: "ptr", arg: 1, scope: !339, file: !340, line: 229, type: !296)
!345 = !DILocalVariable(name: "size", arg: 2, scope: !339, file: !340, line: 229, type: !299)
!346 = !DILocalVariable(name: "type", arg: 3, scope: !339, file: !340, line: 230, type: !16)
!347 = !DILocation(line: 229, column: 60, scope: !339)
!348 = !DILocation(line: 229, column: 72, scope: !339)
!349 = !DILocation(line: 230, column: 15, scope: !339)
!350 = !DILocation(line: 230, column: 23, scope: !339)
!351 = distinct !DISubprogram(name: "raw_atomic_fetch_add_unless", scope: !314, file: !314, line: 2399, type: !352, scopeLine: 2400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !354)
!352 = !DISubroutineType(types: !353)
!353 = !{!16, !43, !16, !16}
!354 = !{!355, !356, !357, !358}
!355 = !DILocalVariable(name: "v", arg: 1, scope: !351, file: !314, line: 2399, type: !43)
!356 = !DILocalVariable(name: "a", arg: 2, scope: !351, file: !314, line: 2399, type: !16)
!357 = !DILocalVariable(name: "u", arg: 3, scope: !351, file: !314, line: 2399, type: !16)
!358 = !DILocalVariable(name: "c", scope: !351, file: !314, line: 2404, type: !16)
!359 = !DILocation(line: 2399, column: 39, scope: !351)
!360 = !DILocation(line: 2399, column: 46, scope: !351)
!361 = !DILocation(line: 2399, column: 53, scope: !351)
!362 = !DILocation(line: 2404, column: 2, scope: !351)
!363 = !DILocation(line: 2404, column: 6, scope: !351)
!364 = !DILocation(line: 2404, column: 26, scope: !351)
!365 = !DILocation(line: 2404, column: 10, scope: !351)
!366 = !DILocation(line: 2406, column: 2, scope: !351)
!367 = !DILocation(line: 2407, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !314, line: 2407, column: 7)
!369 = distinct !DILexicalBlock(scope: !351, file: !314, line: 2406, column: 5)
!370 = !DILocation(line: 2407, column: 7, scope: !369)
!371 = !DILocation(line: 2408, column: 4, scope: !368)
!372 = !DILocation(line: 2409, column: 2, scope: !369)
!373 = !DILocation(line: 2409, column: 35, scope: !351)
!374 = !DILocation(line: 2409, column: 42, scope: !351)
!375 = !DILocation(line: 2409, column: 46, scope: !351)
!376 = !DILocation(line: 2409, column: 44, scope: !351)
!377 = !DILocation(line: 2409, column: 12, scope: !351)
!378 = !DILocation(line: 2409, column: 11, scope: !351)
!379 = distinct !{!379, !366, !380, !381, !382}
!380 = !DILocation(line: 2409, column: 48, scope: !351)
!381 = !{!"llvm.loop.mustprogress"}
!382 = !{!"llvm.loop.unroll.disable"}
!383 = !DILocation(line: 2411, column: 9, scope: !351)
!384 = !DILocation(line: 2413, column: 1, scope: !351)
!385 = !DILocation(line: 2411, column: 2, scope: !351)
!386 = distinct !DISubprogram(name: "raw_atomic_read", scope: !314, file: !314, line: 442, type: !387, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!387 = !DISubroutineType(types: !388)
!388 = !{!16, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!391 = !{!392}
!392 = !DILocalVariable(name: "v", arg: 1, scope: !386, file: !314, line: 442, type: !389)
!393 = !DILocation(line: 442, column: 33, scope: !386)
!394 = !DILocation(line: 444, column: 26, scope: !386)
!395 = !DILocation(line: 444, column: 9, scope: !386)
!396 = !DILocation(line: 444, column: 2, scope: !386)
!397 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg", scope: !314, file: !314, line: 2109, type: !398, scopeLine: 2110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!111, !43, !17, !16}
!400 = !{!401, !402, !403}
!401 = !DILocalVariable(name: "v", arg: 1, scope: !397, file: !314, line: 2109, type: !43)
!402 = !DILocalVariable(name: "old", arg: 2, scope: !397, file: !314, line: 2109, type: !17)
!403 = !DILocalVariable(name: "new", arg: 3, scope: !397, file: !314, line: 2109, type: !16)
!404 = !DILocation(line: 2109, column: 34, scope: !397)
!405 = !DILocation(line: 2109, column: 42, scope: !397)
!406 = !DILocation(line: 2109, column: 51, scope: !397)
!407 = !DILocation(line: 2112, column: 33, scope: !397)
!408 = !DILocation(line: 2112, column: 36, scope: !397)
!409 = !DILocation(line: 2112, column: 41, scope: !397)
!410 = !DILocation(line: 2112, column: 9, scope: !397)
!411 = !DILocation(line: 2112, column: 2, scope: !397)
!412 = distinct !DISubprogram(name: "arch_atomic_read", scope: !413, file: !413, line: 17, type: !387, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!413 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!414 = !{!415}
!415 = !DILocalVariable(name: "v", arg: 1, scope: !412, file: !413, line: 17, type: !389)
!416 = !DILocation(line: 17, column: 61, scope: !412)
!417 = !DILocation(line: 23, column: 9, scope: !412)
!418 = !DILocation(line: 23, column: 2, scope: !412)
!419 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !413, file: !413, line: 113, type: !398, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!420 = !{!421, !422, !423, !424, !426, !427, !428, !429}
!421 = !DILocalVariable(name: "v", arg: 1, scope: !419, file: !413, line: 113, type: !43)
!422 = !DILocalVariable(name: "old", arg: 2, scope: !419, file: !413, line: 113, type: !17)
!423 = !DILocalVariable(name: "new", arg: 3, scope: !419, file: !413, line: 113, type: !16)
!424 = !DILocalVariable(name: "success", scope: !425, file: !413, line: 115, type: !111)
!425 = distinct !DILexicalBlock(scope: !419, file: !413, line: 115, column: 9)
!426 = !DILocalVariable(name: "_old", scope: !425, file: !413, line: 115, type: !17)
!427 = !DILocalVariable(name: "__old", scope: !425, file: !413, line: 115, type: !16)
!428 = !DILocalVariable(name: "__new", scope: !425, file: !413, line: 115, type: !16)
!429 = !DILocalVariable(name: "__ptr", scope: !425, file: !413, line: 115, type: !18)
!430 = !DILocation(line: 113, column: 63, scope: !419)
!431 = !DILocation(line: 113, column: 71, scope: !419)
!432 = !DILocation(line: 113, column: 80, scope: !419)
!433 = !DILocation(line: 115, column: 9, scope: !425)
!434 = !{i64 2148812524, i64 2148812563, i64 2148812584, i64 2148812621, i64 2148812644, i64 2148812653, i64 2148812951}
!435 = !DILocation(line: 115, column: 9, scope: !436)
!436 = distinct !DILexicalBlock(scope: !425, file: !413, line: 115, column: 9)
!437 = !{i8 0, i8 2}
!438 = !{}
!439 = !DILocation(line: 115, column: 9, scope: !419)
!440 = !DILocation(line: 115, column: 2, scope: !419)
!441 = distinct !DISubprogram(name: "raw_atomic_dec_and_test", scope: !314, file: !314, line: 2254, type: !140, scopeLine: 2255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!442 = !{!443}
!443 = !DILocalVariable(name: "v", arg: 1, scope: !441, file: !314, line: 2254, type: !43)
!444 = !DILocation(line: 2254, column: 35, scope: !441)
!445 = !DILocation(line: 2257, column: 34, scope: !441)
!446 = !DILocation(line: 2257, column: 9, scope: !441)
!447 = !DILocation(line: 2257, column: 2, scope: !441)
!448 = distinct !DISubprogram(name: "arch_atomic_dec_and_test", scope: !413, file: !413, line: 65, type: !140, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!449 = !{!450, !451}
!450 = !DILocalVariable(name: "v", arg: 1, scope: !448, file: !413, line: 65, type: !43)
!451 = !DILocalVariable(name: "c", scope: !452, file: !413, line: 67, type: !111)
!452 = distinct !DILexicalBlock(scope: !448, file: !413, line: 67, column: 9)
!453 = !DILocation(line: 65, column: 64, scope: !448)
!454 = !DILocation(line: 67, column: 9, scope: !452)
!455 = !{i64 2148796256, i64 2148796295, i64 2148796316, i64 2148796353, i64 2148796376, i64 2148796385, i64 2148796459}
!456 = !DILocation(line: 67, column: 9, scope: !448)
!457 = !DILocation(line: 67, column: 2, scope: !448)
