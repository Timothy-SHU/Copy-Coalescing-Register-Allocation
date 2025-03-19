; ModuleID = 'lib/lockref.c'
source_filename = "lib/lockref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lockref_get: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad lockref_get ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lockref_get_not_zero: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad lockref_get_not_zero ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lockref_put_not_zero: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad lockref_put_not_zero ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lockref_put_return: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad lockref_put_return ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lockref_put_or_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad lockref_put_or_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lockref_mark_dead: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad lockref_mark_dead ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_lockref_get_not_dead: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad lockref_get_not_dead ; .previous"

%struct.lockref = type { %union.anon }
%union.anon = type { i64 }
%struct.anon = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID___addressable_lockref_get64 = internal global ptr @lockref_get, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_lockref_get_not_zero68 = internal global ptr @lockref_get_not_zero, section ".discard.addressable", align 8, !dbg !29
@__UNIQUE_ID___addressable_lockref_put_not_zero72 = internal global ptr @lockref_put_not_zero, section ".discard.addressable", align 8, !dbg !31
@__UNIQUE_ID___addressable_lockref_put_return76 = internal global ptr @lockref_put_return, section ".discard.addressable", align 8, !dbg !33
@__UNIQUE_ID___addressable_lockref_put_or_lock80 = internal global ptr @lockref_put_or_lock, section ".discard.addressable", align 8, !dbg !35
@.str = private unnamed_addr constant [14 x i8] c"lib/lockref.c\00", align 1, !dbg !37
@__UNIQUE_ID___addressable_lockref_mark_dead81 = internal global ptr @lockref_mark_dead, section ".discard.addressable", align 8, !dbg !43
@__UNIQUE_ID___addressable_lockref_get_not_dead85 = internal global ptr @lockref_get_not_dead, section ".discard.addressable", align 8, !dbg !45
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_lockref_get64, ptr @__UNIQUE_ID___addressable_lockref_get_not_zero68, ptr @__UNIQUE_ID___addressable_lockref_put_not_zero72, ptr @__UNIQUE_ID___addressable_lockref_put_return76, ptr @__UNIQUE_ID___addressable_lockref_put_or_lock80, ptr @__UNIQUE_ID___addressable_lockref_mark_dead81, ptr @__UNIQUE_ID___addressable_lockref_get_not_dead85], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @lockref_get(ptr noundef %lockref) #0 align 16 !dbg !56 {
entry:
  %lockref.addr = alloca ptr, align 8
  %retry = alloca i32, align 4
  %old = alloca %struct.lockref, align 8
  %tmp = alloca i64, align 8
  %new = alloca %struct.lockref, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp9 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp25 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lockref, ptr %lockref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockref.addr, metadata !114, metadata !DIExpression()), !dbg !133
  br label %do.body, !dbg !134

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #9, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !115, metadata !DIExpression()), !dbg !135
  store i32 100, ptr %retry, align 4, !dbg !135
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #9, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %old, metadata !117, metadata !DIExpression()), !dbg !135
  br label %do.body1, !dbg !135

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !136

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !136

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !138

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !140

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !140

do.end4:                                          ; preds = %do.cond3
  %0 = load ptr, ptr %lockref.addr, align 8, !dbg !138
  %1 = getelementptr inbounds %struct.lockref, ptr %0, i32 0, i32 0, !dbg !138
  %2 = load volatile i64, ptr %1, align 8, !dbg !138
  store i64 %2, ptr %tmp, align 8, !dbg !140
  %3 = load i64, ptr %tmp, align 8, !dbg !138
  %4 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !135
  store i64 %3, ptr %4, align 8, !dbg !135
  br label %while.cond, !dbg !135

while.cond:                                       ; preds = %cleanup.cont, %do.end4
  %5 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !135
  %lock = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !135
  %6 = getelementptr inbounds %struct.spinlock, ptr %lock, i32 0, i32 0, !dbg !135
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !135
  %coerce.dive = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !135
  %coerce.dive5 = getelementptr inbounds %union.anon.1, ptr %coerce.dive, i32 0, i32 0, !dbg !135
  %coerce.dive6 = getelementptr inbounds %struct.atomic_t, ptr %coerce.dive5, i32 0, i32 0, !dbg !135
  %7 = load i32, ptr %coerce.dive6, align 8, !dbg !135
  %call = call i32 @queued_spin_value_unlocked(i32 %7) #10, !dbg !135
  %tobool = icmp ne i32 %call, 0, !dbg !135
  %lnot = xor i1 %tobool, true, !dbg !135
  %lnot7 = xor i1 %lnot, true, !dbg !135
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !135
  %conv = sext i32 %lnot.ext to i64, !dbg !135
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !135
  %tobool8 = icmp ne i64 %expval, 0, !dbg !135
  br i1 %tobool8, label %while.body, label %while.end, !dbg !135

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %new, metadata !118, metadata !DIExpression()), !dbg !142
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new, ptr align 8 %old, i64 8, i1 false), !dbg !142
  %8 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !142
  %count = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !142
  %9 = load i32, ptr %count, align 4, !dbg !142
  %inc = add i32 %9, 1, !dbg !142
  store i32 %inc, ptr %count, align 4, !dbg !142
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #9, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !120, metadata !DIExpression()), !dbg !143
  %10 = load ptr, ptr %lockref.addr, align 8, !dbg !143
  %11 = getelementptr inbounds %struct.lockref, ptr %10, i32 0, i32 0, !dbg !143
  store ptr %11, ptr %__ai_ptr, align 8, !dbg !143
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #9, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !123, metadata !DIExpression()), !dbg !143
  %12 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !143
  store ptr %12, ptr %__ai_oldp, align 8, !dbg !143
  %13 = load ptr, ptr %__ai_ptr, align 8, !dbg !143
  call void @instrument_atomic_read_write(ptr noundef %13, i64 noundef 8) #10, !dbg !143
  %14 = load ptr, ptr %__ai_oldp, align 8, !dbg !143
  call void @instrument_read_write(ptr noundef %14, i64 noundef 8) #10, !dbg !143
  br label %do.body10, !dbg !144

do.body10:                                        ; preds = %while.body
  br label %do.cond11, !dbg !145

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !145

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %success, metadata !124, metadata !DIExpression()), !dbg !147
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !129, metadata !DIExpression()), !dbg !147
  %15 = load ptr, ptr %__ai_oldp, align 8, !dbg !147
  store ptr %15, ptr %_old, align 8, !dbg !147
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #9, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !130, metadata !DIExpression()), !dbg !147
  %16 = load ptr, ptr %_old, align 8, !dbg !147
  %17 = load i64, ptr %16, align 8, !dbg !147
  store i64 %17, ptr %__old, align 8, !dbg !147
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #9, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !131, metadata !DIExpression()), !dbg !147
  %18 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !147
  %19 = load i64, ptr %18, align 8, !dbg !147
  store i64 %19, ptr %__new, align 8, !dbg !147
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !132, metadata !DIExpression()), !dbg !147
  %20 = load ptr, ptr %__ai_ptr, align 8, !dbg !147
  store ptr %20, ptr %__ptr, align 8, !dbg !147
  %21 = load ptr, ptr %__ptr, align 8, !dbg !147
  %22 = load i64, ptr %__old, align 8, !dbg !147
  %23 = load i64, ptr %__new, align 8, !dbg !147
  %24 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %21, i64 %23, ptr elementtype(i64) %21, i64 %22) #9, !dbg !147, !srcloc !148
  %asmresult = extractvalue { i8, i64 } %24, 0, !dbg !147
  %asmresult14 = extractvalue { i8, i64 } %24, 1, !dbg !147
  %25 = icmp ult i8 %asmresult, 2, !dbg !147
  call void @llvm.assume(i1 %25), !dbg !147
  store i8 %asmresult, ptr %success, align 1, !dbg !147
  store i64 %asmresult14, ptr %__old, align 8, !dbg !147
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !147
  %26 = load i8, ptr %success, align 1, !dbg !149, !range !151, !noundef !152
  %tobool15 = trunc i8 %26 to i1, !dbg !149
  %lnot16 = xor i1 %tobool15, true, !dbg !149
  %lnot18 = xor i1 %lnot16, true, !dbg !149
  %lnot20 = xor i1 %lnot18, true, !dbg !149
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !149
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !149
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !149
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !149
  br i1 %tobool24, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %do.end12
  %27 = load i64, ptr %__old, align 8, !dbg !149
  %28 = load ptr, ptr %_old, align 8, !dbg !149
  store i64 %27, ptr %28, align 8, !dbg !149
  br label %if.end, !dbg !149

if.end:                                           ; preds = %if.then, %do.end12
  %29 = load i8, ptr %success, align 1, !dbg !147, !range !151, !noundef !152
  %tobool26 = trunc i8 %29 to i1, !dbg !147
  %lnot27 = xor i1 %tobool26, true, !dbg !147
  %lnot29 = xor i1 %lnot27, true, !dbg !147
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !147
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !147
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 1), !dbg !147
  store i64 %expval32, ptr %tmp25, align 8, !dbg !149
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #9, !dbg !144
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #9, !dbg !144
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !144
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !144
  %30 = load i64, ptr %tmp25, align 8, !dbg !147
  store i64 %30, ptr %tmp13, align 8, !dbg !145
  %31 = load i64, ptr %tmp13, align 8, !dbg !144
  store i64 %31, ptr %tmp9, align 8, !dbg !143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #9, !dbg !153
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #9, !dbg !153
  %32 = load i64, ptr %tmp9, align 8, !dbg !143
  %tobool33 = icmp ne i64 %32, 0, !dbg !153
  %lnot34 = xor i1 %tobool33, true, !dbg !153
  %lnot36 = xor i1 %lnot34, true, !dbg !153
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !153
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !153
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 1), !dbg !153
  %tobool40 = icmp ne i64 %expval39, 0, !dbg !153
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !142

if.then41:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !154

if.end42:                                         ; preds = %if.end
  %33 = load i32, ptr %retry, align 4, !dbg !156
  %dec = add i32 %33, -1, !dbg !156
  store i32 %dec, ptr %retry, align 4, !dbg !156
  %tobool43 = icmp ne i32 %dec, 0, !dbg !156
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !142

if.then44:                                        ; preds = %if.end42
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !156

if.end45:                                         ; preds = %if.end42
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !135
  br label %cleanup, !dbg !135

cleanup:                                          ; preds = %if.end45, %if.then44, %if.then41
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9, !dbg !135
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !135, !llvm.loop !158

while.end:                                        ; preds = %cleanup, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !134
  br label %cleanup46, !dbg !134

cleanup46:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #9, !dbg !134
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #9, !dbg !134
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %unreachable [
    i32 0, label %cleanup.cont49
    i32 1, label %return
  ]

cleanup.cont49:                                   ; preds = %cleanup46
  br label %do.end51, !dbg !135

do.end51:                                         ; preds = %cleanup.cont49
  %34 = load ptr, ptr %lockref.addr, align 8, !dbg !161
  %35 = getelementptr inbounds %struct.lockref, ptr %34, i32 0, i32 0, !dbg !162
  %lock52 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 0, !dbg !162
  call void @spin_lock(ptr noundef %lock52) #10, !dbg !163
  %36 = load ptr, ptr %lockref.addr, align 8, !dbg !164
  %37 = getelementptr inbounds %struct.lockref, ptr %36, i32 0, i32 0, !dbg !165
  %count53 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 1, !dbg !165
  %38 = load i32, ptr %count53, align 4, !dbg !166
  %inc54 = add i32 %38, 1, !dbg !166
  store i32 %inc54, ptr %count53, align 4, !dbg !166
  %39 = load ptr, ptr %lockref.addr, align 8, !dbg !167
  %40 = getelementptr inbounds %struct.lockref, ptr %39, i32 0, i32 0, !dbg !168
  %lock55 = getelementptr inbounds %struct.anon, ptr %40, i32 0, i32 0, !dbg !168
  call void @spin_unlock(ptr noundef %lock55) #10, !dbg !169
  br label %return, !dbg !170

return:                                           ; preds = %do.end51, %cleanup46
  ret void, !dbg !170

unreachable:                                      ; preds = %cleanup46
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_value_unlocked(i32 %lock.coerce) #3 align 16 !dbg !171 {
entry:
  %lock = alloca %struct.qspinlock, align 4
  %coerce.dive = getelementptr inbounds %struct.qspinlock, ptr %lock, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %union.anon.1, ptr %coerce.dive, i32 0, i32 0
  %coerce.dive2 = getelementptr inbounds %struct.atomic_t, ptr %coerce.dive1, i32 0, i32 0
  store i32 %lock.coerce, ptr %coerce.dive2, align 4
  call void @llvm.dbg.declare(metadata ptr %lock, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = getelementptr inbounds %struct.qspinlock, ptr %lock, i32 0, i32 0, !dbg !178
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !179
  %1 = load i32, ptr %counter, align 4, !dbg !179
  %tobool = icmp ne i32 %1, 0, !dbg !180
  %lnot = xor i1 %tobool, true, !dbg !180
  %lnot.ext = zext i1 %lnot to i32, !dbg !180
  ret i32 %lnot.ext, !dbg !181
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !182 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !195, metadata !DIExpression()), !dbg !197
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !196, metadata !DIExpression()), !dbg !198
  %0 = load ptr, ptr %v.addr, align 8, !dbg !199
  %1 = load i64, ptr %size.addr, align 8, !dbg !200
  %conv = trunc i64 %1 to i32, !dbg !200
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !201
  %2 = load ptr, ptr %v.addr, align 8, !dbg !202
  %3 = load i64, ptr %size.addr, align 8, !dbg !202
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !202
  ret void, !dbg !203
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !204 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !206, metadata !DIExpression()), !dbg !208
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !207, metadata !DIExpression()), !dbg !209
  %0 = load ptr, ptr %v.addr, align 8, !dbg !210
  %1 = load i64, ptr %size.addr, align 8, !dbg !211
  %conv = trunc i64 %1 to i32, !dbg !211
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !212
  %2 = load ptr, ptr %v.addr, align 8, !dbg !213
  %3 = load i64, ptr %size.addr, align 8, !dbg !213
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #10, !dbg !213
  ret void, !dbg !214
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #3 align 16 !dbg !215 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !223
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !223
  call void @_raw_spin_lock(ptr noundef %1) #10, !dbg !223
  ret void, !dbg !224
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #3 align 16 !dbg !225 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !229
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !229
  call void @_raw_spin_unlock(ptr noundef %1) #10, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lockref_get_not_zero(ptr noundef %lockref) #0 align 16 !dbg !231 {
entry:
  %retval = alloca i32, align 4
  %lockref.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %retry = alloca i32, align 4
  %old = alloca %struct.lockref, align 8
  %tmp = alloca i64, align 8
  %new = alloca %struct.lockref, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp12 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp30 = alloca i64, align 8
  store ptr %lockref, ptr %lockref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockref.addr, metadata !235, metadata !DIExpression()), !dbg !253
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #9, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !236, metadata !DIExpression()), !dbg !255
  br label %do.body, !dbg !256

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #9, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !237, metadata !DIExpression()), !dbg !257
  store i32 100, ptr %retry, align 4, !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #9, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %old, metadata !239, metadata !DIExpression()), !dbg !257
  br label %do.body2, !dbg !257

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !258

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !258

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !260

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !262

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !262

do.end5:                                          ; preds = %do.cond4
  %0 = load ptr, ptr %lockref.addr, align 8, !dbg !260
  %1 = getelementptr inbounds %struct.lockref, ptr %0, i32 0, i32 0, !dbg !260
  %2 = load volatile i64, ptr %1, align 8, !dbg !260
  store i64 %2, ptr %tmp, align 8, !dbg !262
  %3 = load i64, ptr %tmp, align 8, !dbg !260
  %4 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !257
  store i64 %3, ptr %4, align 8, !dbg !257
  br label %while.cond, !dbg !257

while.cond:                                       ; preds = %cleanup.cont, %do.end5
  %5 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !257
  %lock = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !257
  %6 = getelementptr inbounds %struct.spinlock, ptr %lock, i32 0, i32 0, !dbg !257
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !257
  %coerce.dive = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !257
  %coerce.dive6 = getelementptr inbounds %union.anon.1, ptr %coerce.dive, i32 0, i32 0, !dbg !257
  %coerce.dive7 = getelementptr inbounds %struct.atomic_t, ptr %coerce.dive6, i32 0, i32 0, !dbg !257
  %7 = load i32, ptr %coerce.dive7, align 8, !dbg !257
  %call = call i32 @queued_spin_value_unlocked(i32 %7) #10, !dbg !257
  %tobool = icmp ne i32 %call, 0, !dbg !257
  %lnot = xor i1 %tobool, true, !dbg !257
  %lnot8 = xor i1 %lnot, true, !dbg !257
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !257
  %conv = sext i32 %lnot.ext to i64, !dbg !257
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !257
  %tobool9 = icmp ne i64 %expval, 0, !dbg !257
  br i1 %tobool9, label %while.body, label %while.end, !dbg !257

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %new, metadata !240, metadata !DIExpression()), !dbg !264
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new, ptr align 8 %old, i64 8, i1 false), !dbg !264
  %8 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !264
  %count = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !264
  %9 = load i32, ptr %count, align 4, !dbg !264
  %inc = add i32 %9, 1, !dbg !264
  store i32 %inc, ptr %count, align 4, !dbg !264
  %10 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !265
  %count10 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1, !dbg !265
  %11 = load i32, ptr %count10, align 4, !dbg !265
  %cmp = icmp sle i32 %11, 0, !dbg !265
  br i1 %cmp, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !265

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #9, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !242, metadata !DIExpression()), !dbg !267
  %12 = load ptr, ptr %lockref.addr, align 8, !dbg !267
  %13 = getelementptr inbounds %struct.lockref, ptr %12, i32 0, i32 0, !dbg !267
  store ptr %13, ptr %__ai_ptr, align 8, !dbg !267
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #9, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !245, metadata !DIExpression()), !dbg !267
  %14 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !267
  store ptr %14, ptr %__ai_oldp, align 8, !dbg !267
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !267
  call void @instrument_atomic_read_write(ptr noundef %15, i64 noundef 8) #10, !dbg !267
  %16 = load ptr, ptr %__ai_oldp, align 8, !dbg !267
  call void @instrument_read_write(ptr noundef %16, i64 noundef 8) #10, !dbg !267
  br label %do.body13, !dbg !268

do.body13:                                        ; preds = %if.end
  br label %do.cond14, !dbg !269

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !269

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %success, metadata !246, metadata !DIExpression()), !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !249, metadata !DIExpression()), !dbg !271
  %17 = load ptr, ptr %__ai_oldp, align 8, !dbg !271
  store ptr %17, ptr %_old, align 8, !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #9, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !250, metadata !DIExpression()), !dbg !271
  %18 = load ptr, ptr %_old, align 8, !dbg !271
  %19 = load i64, ptr %18, align 8, !dbg !271
  store i64 %19, ptr %__old, align 8, !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #9, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !251, metadata !DIExpression()), !dbg !271
  %20 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !271
  %21 = load i64, ptr %20, align 8, !dbg !271
  store i64 %21, ptr %__new, align 8, !dbg !271
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !252, metadata !DIExpression()), !dbg !271
  %22 = load ptr, ptr %__ai_ptr, align 8, !dbg !271
  store ptr %22, ptr %__ptr, align 8, !dbg !271
  %23 = load ptr, ptr %__ptr, align 8, !dbg !271
  %24 = load i64, ptr %__old, align 8, !dbg !271
  %25 = load i64, ptr %__new, align 8, !dbg !271
  %26 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %23, i64 %25, ptr elementtype(i64) %23, i64 %24) #9, !dbg !271, !srcloc !272
  %asmresult = extractvalue { i8, i64 } %26, 0, !dbg !271
  %asmresult17 = extractvalue { i8, i64 } %26, 1, !dbg !271
  %27 = icmp ult i8 %asmresult, 2, !dbg !271
  call void @llvm.assume(i1 %27), !dbg !271
  store i8 %asmresult, ptr %success, align 1, !dbg !271
  store i64 %asmresult17, ptr %__old, align 8, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !271
  %28 = load i8, ptr %success, align 1, !dbg !273, !range !151, !noundef !152
  %tobool18 = trunc i8 %28 to i1, !dbg !273
  %lnot19 = xor i1 %tobool18, true, !dbg !273
  %lnot21 = xor i1 %lnot19, true, !dbg !273
  %lnot23 = xor i1 %lnot21, true, !dbg !273
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !273
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !273
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !273
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !273
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !271

if.then28:                                        ; preds = %do.end15
  %29 = load i64, ptr %__old, align 8, !dbg !273
  %30 = load ptr, ptr %_old, align 8, !dbg !273
  store i64 %29, ptr %30, align 8, !dbg !273
  br label %if.end29, !dbg !273

if.end29:                                         ; preds = %if.then28, %do.end15
  %31 = load i8, ptr %success, align 1, !dbg !271, !range !151, !noundef !152
  %tobool31 = trunc i8 %31 to i1, !dbg !271
  %lnot32 = xor i1 %tobool31, true, !dbg !271
  %lnot34 = xor i1 %lnot32, true, !dbg !271
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !271
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !271
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 1), !dbg !271
  store i64 %expval37, ptr %tmp30, align 8, !dbg !273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #9, !dbg !268
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #9, !dbg !268
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !268
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !268
  %32 = load i64, ptr %tmp30, align 8, !dbg !271
  store i64 %32, ptr %tmp16, align 8, !dbg !269
  %33 = load i64, ptr %tmp16, align 8, !dbg !268
  store i64 %33, ptr %tmp12, align 8, !dbg !267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #9, !dbg !275
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #9, !dbg !275
  %34 = load i64, ptr %tmp12, align 8, !dbg !267
  %tobool38 = icmp ne i64 %34, 0, !dbg !275
  %lnot39 = xor i1 %tobool38, true, !dbg !275
  %lnot41 = xor i1 %lnot39, true, !dbg !275
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !275
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !275
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 1), !dbg !275
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !275
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !264

if.then46:                                        ; preds = %if.end29
  store i32 1, ptr %retval, align 4, !dbg !276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !276

if.end47:                                         ; preds = %if.end29
  %35 = load i32, ptr %retry, align 4, !dbg !278
  %dec = add i32 %35, -1, !dbg !278
  store i32 %dec, ptr %retry, align 4, !dbg !278
  %tobool48 = icmp ne i32 %dec, 0, !dbg !278
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !264

if.then49:                                        ; preds = %if.end47
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !278

if.end50:                                         ; preds = %if.end47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !257
  br label %cleanup, !dbg !257

cleanup:                                          ; preds = %if.end50, %if.then49, %if.then46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9, !dbg !257
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !257, !llvm.loop !280

while.end:                                        ; preds = %cleanup, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !256
  br label %cleanup51, !dbg !256

cleanup51:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #9, !dbg !256
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #9, !dbg !256
  %cleanup.dest53 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest53, label %cleanup66 [
    i32 0, label %cleanup.cont54
  ]

cleanup.cont54:                                   ; preds = %cleanup51
  br label %do.cond55, !dbg !257

do.cond55:                                        ; preds = %cleanup.cont54
  br label %do.end56, !dbg !257

do.end56:                                         ; preds = %do.cond55
  %36 = load ptr, ptr %lockref.addr, align 8, !dbg !281
  %37 = getelementptr inbounds %struct.lockref, ptr %36, i32 0, i32 0, !dbg !282
  %lock57 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 0, !dbg !282
  call void @spin_lock(ptr noundef %lock57) #10, !dbg !283
  store i32 0, ptr %retval1, align 4, !dbg !284
  %38 = load ptr, ptr %lockref.addr, align 8, !dbg !285
  %39 = getelementptr inbounds %struct.lockref, ptr %38, i32 0, i32 0, !dbg !287
  %count58 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 1, !dbg !287
  %40 = load i32, ptr %count58, align 4, !dbg !287
  %cmp59 = icmp sgt i32 %40, 0, !dbg !288
  br i1 %cmp59, label %if.then61, label %if.end64, !dbg !289

if.then61:                                        ; preds = %do.end56
  %41 = load ptr, ptr %lockref.addr, align 8, !dbg !290
  %42 = getelementptr inbounds %struct.lockref, ptr %41, i32 0, i32 0, !dbg !292
  %count62 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1, !dbg !292
  %43 = load i32, ptr %count62, align 4, !dbg !293
  %inc63 = add i32 %43, 1, !dbg !293
  store i32 %inc63, ptr %count62, align 4, !dbg !293
  store i32 1, ptr %retval1, align 4, !dbg !294
  br label %if.end64, !dbg !295

if.end64:                                         ; preds = %if.then61, %do.end56
  %44 = load ptr, ptr %lockref.addr, align 8, !dbg !296
  %45 = getelementptr inbounds %struct.lockref, ptr %44, i32 0, i32 0, !dbg !297
  %lock65 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 0, !dbg !297
  call void @spin_unlock(ptr noundef %lock65) #10, !dbg !298
  %46 = load i32, ptr %retval1, align 4, !dbg !299
  store i32 %46, ptr %retval, align 4, !dbg !300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !300

cleanup66:                                        ; preds = %if.end64, %cleanup51
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #9, !dbg !301
  %47 = load i32, ptr %retval, align 4, !dbg !301
  ret i32 %47, !dbg !301
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lockref_put_not_zero(ptr noundef %lockref) #0 align 16 !dbg !302 {
entry:
  %retval = alloca i32, align 4
  %lockref.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %retry = alloca i32, align 4
  %old = alloca %struct.lockref, align 8
  %tmp = alloca i64, align 8
  %new = alloca %struct.lockref, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp12 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp30 = alloca i64, align 8
  store ptr %lockref, ptr %lockref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockref.addr, metadata !304, metadata !DIExpression()), !dbg !322
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #9, !dbg !323
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !305, metadata !DIExpression()), !dbg !324
  br label %do.body, !dbg !325

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #9, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !306, metadata !DIExpression()), !dbg !326
  store i32 100, ptr %retry, align 4, !dbg !326
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #9, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %old, metadata !308, metadata !DIExpression()), !dbg !326
  br label %do.body2, !dbg !326

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !327

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !327

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !329

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !331

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !331

do.end5:                                          ; preds = %do.cond4
  %0 = load ptr, ptr %lockref.addr, align 8, !dbg !329
  %1 = getelementptr inbounds %struct.lockref, ptr %0, i32 0, i32 0, !dbg !329
  %2 = load volatile i64, ptr %1, align 8, !dbg !329
  store i64 %2, ptr %tmp, align 8, !dbg !331
  %3 = load i64, ptr %tmp, align 8, !dbg !329
  %4 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !326
  store i64 %3, ptr %4, align 8, !dbg !326
  br label %while.cond, !dbg !326

while.cond:                                       ; preds = %cleanup.cont, %do.end5
  %5 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !326
  %lock = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !326
  %6 = getelementptr inbounds %struct.spinlock, ptr %lock, i32 0, i32 0, !dbg !326
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !326
  %coerce.dive = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !326
  %coerce.dive6 = getelementptr inbounds %union.anon.1, ptr %coerce.dive, i32 0, i32 0, !dbg !326
  %coerce.dive7 = getelementptr inbounds %struct.atomic_t, ptr %coerce.dive6, i32 0, i32 0, !dbg !326
  %7 = load i32, ptr %coerce.dive7, align 8, !dbg !326
  %call = call i32 @queued_spin_value_unlocked(i32 %7) #10, !dbg !326
  %tobool = icmp ne i32 %call, 0, !dbg !326
  %lnot = xor i1 %tobool, true, !dbg !326
  %lnot8 = xor i1 %lnot, true, !dbg !326
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !326
  %conv = sext i32 %lnot.ext to i64, !dbg !326
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !326
  %tobool9 = icmp ne i64 %expval, 0, !dbg !326
  br i1 %tobool9, label %while.body, label %while.end, !dbg !326

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %new, metadata !309, metadata !DIExpression()), !dbg !333
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new, ptr align 8 %old, i64 8, i1 false), !dbg !333
  %8 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !333
  %count = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !333
  %9 = load i32, ptr %count, align 4, !dbg !333
  %dec = add i32 %9, -1, !dbg !333
  store i32 %dec, ptr %count, align 4, !dbg !333
  %10 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !334
  %count10 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1, !dbg !334
  %11 = load i32, ptr %count10, align 4, !dbg !334
  %cmp = icmp sle i32 %11, 1, !dbg !334
  br i1 %cmp, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !334

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #9, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !311, metadata !DIExpression()), !dbg !336
  %12 = load ptr, ptr %lockref.addr, align 8, !dbg !336
  %13 = getelementptr inbounds %struct.lockref, ptr %12, i32 0, i32 0, !dbg !336
  store ptr %13, ptr %__ai_ptr, align 8, !dbg !336
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #9, !dbg !336
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !314, metadata !DIExpression()), !dbg !336
  %14 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !336
  store ptr %14, ptr %__ai_oldp, align 8, !dbg !336
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !336
  call void @instrument_atomic_read_write(ptr noundef %15, i64 noundef 8) #10, !dbg !336
  %16 = load ptr, ptr %__ai_oldp, align 8, !dbg !336
  call void @instrument_read_write(ptr noundef %16, i64 noundef 8) #10, !dbg !336
  br label %do.body13, !dbg !337

do.body13:                                        ; preds = %if.end
  br label %do.cond14, !dbg !338

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !338

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %success, metadata !315, metadata !DIExpression()), !dbg !340
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !318, metadata !DIExpression()), !dbg !340
  %17 = load ptr, ptr %__ai_oldp, align 8, !dbg !340
  store ptr %17, ptr %_old, align 8, !dbg !340
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #9, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !319, metadata !DIExpression()), !dbg !340
  %18 = load ptr, ptr %_old, align 8, !dbg !340
  %19 = load i64, ptr %18, align 8, !dbg !340
  store i64 %19, ptr %__old, align 8, !dbg !340
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #9, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !320, metadata !DIExpression()), !dbg !340
  %20 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !340
  %21 = load i64, ptr %20, align 8, !dbg !340
  store i64 %21, ptr %__new, align 8, !dbg !340
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !321, metadata !DIExpression()), !dbg !340
  %22 = load ptr, ptr %__ai_ptr, align 8, !dbg !340
  store ptr %22, ptr %__ptr, align 8, !dbg !340
  %23 = load ptr, ptr %__ptr, align 8, !dbg !340
  %24 = load i64, ptr %__old, align 8, !dbg !340
  %25 = load i64, ptr %__new, align 8, !dbg !340
  %26 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %23, i64 %25, ptr elementtype(i64) %23, i64 %24) #9, !dbg !340, !srcloc !341
  %asmresult = extractvalue { i8, i64 } %26, 0, !dbg !340
  %asmresult17 = extractvalue { i8, i64 } %26, 1, !dbg !340
  %27 = icmp ult i8 %asmresult, 2, !dbg !340
  call void @llvm.assume(i1 %27), !dbg !340
  store i8 %asmresult, ptr %success, align 1, !dbg !340
  store i64 %asmresult17, ptr %__old, align 8, !dbg !340
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !340
  %28 = load i8, ptr %success, align 1, !dbg !342, !range !151, !noundef !152
  %tobool18 = trunc i8 %28 to i1, !dbg !342
  %lnot19 = xor i1 %tobool18, true, !dbg !342
  %lnot21 = xor i1 %lnot19, true, !dbg !342
  %lnot23 = xor i1 %lnot21, true, !dbg !342
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !342
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !342
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !342
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !342
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !340

if.then28:                                        ; preds = %do.end15
  %29 = load i64, ptr %__old, align 8, !dbg !342
  %30 = load ptr, ptr %_old, align 8, !dbg !342
  store i64 %29, ptr %30, align 8, !dbg !342
  br label %if.end29, !dbg !342

if.end29:                                         ; preds = %if.then28, %do.end15
  %31 = load i8, ptr %success, align 1, !dbg !340, !range !151, !noundef !152
  %tobool31 = trunc i8 %31 to i1, !dbg !340
  %lnot32 = xor i1 %tobool31, true, !dbg !340
  %lnot34 = xor i1 %lnot32, true, !dbg !340
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !340
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !340
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 1), !dbg !340
  store i64 %expval37, ptr %tmp30, align 8, !dbg !342
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !337
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !337
  %32 = load i64, ptr %tmp30, align 8, !dbg !340
  store i64 %32, ptr %tmp16, align 8, !dbg !338
  %33 = load i64, ptr %tmp16, align 8, !dbg !337
  store i64 %33, ptr %tmp12, align 8, !dbg !336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #9, !dbg !344
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #9, !dbg !344
  %34 = load i64, ptr %tmp12, align 8, !dbg !336
  %tobool38 = icmp ne i64 %34, 0, !dbg !344
  %lnot39 = xor i1 %tobool38, true, !dbg !344
  %lnot41 = xor i1 %lnot39, true, !dbg !344
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !344
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !344
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 1), !dbg !344
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !344
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !333

if.then46:                                        ; preds = %if.end29
  store i32 1, ptr %retval, align 4, !dbg !345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !345

if.end47:                                         ; preds = %if.end29
  %35 = load i32, ptr %retry, align 4, !dbg !347
  %dec48 = add i32 %35, -1, !dbg !347
  store i32 %dec48, ptr %retry, align 4, !dbg !347
  %tobool49 = icmp ne i32 %dec48, 0, !dbg !347
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !333

if.then50:                                        ; preds = %if.end47
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !347

if.end51:                                         ; preds = %if.end47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !326
  br label %cleanup, !dbg !326

cleanup:                                          ; preds = %if.end51, %if.then50, %if.then46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9, !dbg !326
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup52 [
    i32 0, label %cleanup.cont
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !326, !llvm.loop !349

while.end:                                        ; preds = %cleanup, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !325
  br label %cleanup52, !dbg !325

cleanup52:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #9, !dbg !325
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #9, !dbg !325
  %cleanup.dest54 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest54, label %cleanup67 [
    i32 0, label %cleanup.cont55
  ]

cleanup.cont55:                                   ; preds = %cleanup52
  br label %do.cond56, !dbg !326

do.cond56:                                        ; preds = %cleanup.cont55
  br label %do.end57, !dbg !326

do.end57:                                         ; preds = %do.cond56
  %36 = load ptr, ptr %lockref.addr, align 8, !dbg !350
  %37 = getelementptr inbounds %struct.lockref, ptr %36, i32 0, i32 0, !dbg !351
  %lock58 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 0, !dbg !351
  call void @spin_lock(ptr noundef %lock58) #10, !dbg !352
  store i32 0, ptr %retval1, align 4, !dbg !353
  %38 = load ptr, ptr %lockref.addr, align 8, !dbg !354
  %39 = getelementptr inbounds %struct.lockref, ptr %38, i32 0, i32 0, !dbg !356
  %count59 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 1, !dbg !356
  %40 = load i32, ptr %count59, align 4, !dbg !356
  %cmp60 = icmp sgt i32 %40, 1, !dbg !357
  br i1 %cmp60, label %if.then62, label %if.end65, !dbg !358

if.then62:                                        ; preds = %do.end57
  %41 = load ptr, ptr %lockref.addr, align 8, !dbg !359
  %42 = getelementptr inbounds %struct.lockref, ptr %41, i32 0, i32 0, !dbg !361
  %count63 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1, !dbg !361
  %43 = load i32, ptr %count63, align 4, !dbg !362
  %dec64 = add i32 %43, -1, !dbg !362
  store i32 %dec64, ptr %count63, align 4, !dbg !362
  store i32 1, ptr %retval1, align 4, !dbg !363
  br label %if.end65, !dbg !364

if.end65:                                         ; preds = %if.then62, %do.end57
  %44 = load ptr, ptr %lockref.addr, align 8, !dbg !365
  %45 = getelementptr inbounds %struct.lockref, ptr %44, i32 0, i32 0, !dbg !366
  %lock66 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 0, !dbg !366
  call void @spin_unlock(ptr noundef %lock66) #10, !dbg !367
  %46 = load i32, ptr %retval1, align 4, !dbg !368
  store i32 %46, ptr %retval, align 4, !dbg !369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup67, !dbg !369

cleanup67:                                        ; preds = %if.end65, %cleanup52
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #9, !dbg !370
  %47 = load i32, ptr %retval, align 4, !dbg !370
  ret i32 %47, !dbg !370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lockref_put_return(ptr noundef %lockref) #0 align 16 !dbg !371 {
entry:
  %retval = alloca i32, align 4
  %lockref.addr = alloca ptr, align 8
  %retry = alloca i32, align 4
  %old = alloca %struct.lockref, align 8
  %tmp = alloca i64, align 8
  %new = alloca %struct.lockref, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp11 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp29 = alloca i64, align 8
  store ptr %lockref, ptr %lockref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockref.addr, metadata !373, metadata !DIExpression()), !dbg !390
  br label %do.body, !dbg !391

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #9, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !374, metadata !DIExpression()), !dbg !392
  store i32 100, ptr %retry, align 4, !dbg !392
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #9, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %old, metadata !376, metadata !DIExpression()), !dbg !392
  br label %do.body1, !dbg !392

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !393

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !393

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !395

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !397

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !397

do.end4:                                          ; preds = %do.cond3
  %0 = load ptr, ptr %lockref.addr, align 8, !dbg !395
  %1 = getelementptr inbounds %struct.lockref, ptr %0, i32 0, i32 0, !dbg !395
  %2 = load volatile i64, ptr %1, align 8, !dbg !395
  store i64 %2, ptr %tmp, align 8, !dbg !397
  %3 = load i64, ptr %tmp, align 8, !dbg !395
  %4 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !392
  store i64 %3, ptr %4, align 8, !dbg !392
  br label %while.cond, !dbg !392

while.cond:                                       ; preds = %cleanup.cont, %do.end4
  %5 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !392
  %lock = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !392
  %6 = getelementptr inbounds %struct.spinlock, ptr %lock, i32 0, i32 0, !dbg !392
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !392
  %coerce.dive = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !392
  %coerce.dive5 = getelementptr inbounds %union.anon.1, ptr %coerce.dive, i32 0, i32 0, !dbg !392
  %coerce.dive6 = getelementptr inbounds %struct.atomic_t, ptr %coerce.dive5, i32 0, i32 0, !dbg !392
  %7 = load i32, ptr %coerce.dive6, align 8, !dbg !392
  %call = call i32 @queued_spin_value_unlocked(i32 %7) #10, !dbg !392
  %tobool = icmp ne i32 %call, 0, !dbg !392
  %lnot = xor i1 %tobool, true, !dbg !392
  %lnot7 = xor i1 %lnot, true, !dbg !392
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !392
  %conv = sext i32 %lnot.ext to i64, !dbg !392
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !392
  %tobool8 = icmp ne i64 %expval, 0, !dbg !392
  br i1 %tobool8, label %while.body, label %while.end, !dbg !392

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9, !dbg !399
  call void @llvm.dbg.declare(metadata ptr %new, metadata !377, metadata !DIExpression()), !dbg !399
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new, ptr align 8 %old, i64 8, i1 false), !dbg !399
  %8 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !399
  %count = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !399
  %9 = load i32, ptr %count, align 4, !dbg !399
  %dec = add i32 %9, -1, !dbg !399
  store i32 %dec, ptr %count, align 4, !dbg !399
  %10 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !400
  %count9 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1, !dbg !400
  %11 = load i32, ptr %count9, align 4, !dbg !400
  %cmp = icmp sle i32 %11, 0, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4, !dbg !400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !400

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #9, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !379, metadata !DIExpression()), !dbg !402
  %12 = load ptr, ptr %lockref.addr, align 8, !dbg !402
  %13 = getelementptr inbounds %struct.lockref, ptr %12, i32 0, i32 0, !dbg !402
  store ptr %13, ptr %__ai_ptr, align 8, !dbg !402
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #9, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !382, metadata !DIExpression()), !dbg !402
  %14 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !402
  store ptr %14, ptr %__ai_oldp, align 8, !dbg !402
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !402
  call void @instrument_atomic_read_write(ptr noundef %15, i64 noundef 8) #10, !dbg !402
  %16 = load ptr, ptr %__ai_oldp, align 8, !dbg !402
  call void @instrument_read_write(ptr noundef %16, i64 noundef 8) #10, !dbg !402
  br label %do.body12, !dbg !403

do.body12:                                        ; preds = %if.end
  br label %do.cond13, !dbg !404

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !404

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %success, metadata !383, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !386, metadata !DIExpression()), !dbg !406
  %17 = load ptr, ptr %__ai_oldp, align 8, !dbg !406
  store ptr %17, ptr %_old, align 8, !dbg !406
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #9, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !387, metadata !DIExpression()), !dbg !406
  %18 = load ptr, ptr %_old, align 8, !dbg !406
  %19 = load i64, ptr %18, align 8, !dbg !406
  store i64 %19, ptr %__old, align 8, !dbg !406
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #9, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !388, metadata !DIExpression()), !dbg !406
  %20 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !406
  %21 = load i64, ptr %20, align 8, !dbg !406
  store i64 %21, ptr %__new, align 8, !dbg !406
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !406
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !389, metadata !DIExpression()), !dbg !406
  %22 = load ptr, ptr %__ai_ptr, align 8, !dbg !406
  store ptr %22, ptr %__ptr, align 8, !dbg !406
  %23 = load ptr, ptr %__ptr, align 8, !dbg !406
  %24 = load i64, ptr %__old, align 8, !dbg !406
  %25 = load i64, ptr %__new, align 8, !dbg !406
  %26 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %23, i64 %25, ptr elementtype(i64) %23, i64 %24) #9, !dbg !406, !srcloc !407
  %asmresult = extractvalue { i8, i64 } %26, 0, !dbg !406
  %asmresult16 = extractvalue { i8, i64 } %26, 1, !dbg !406
  %27 = icmp ult i8 %asmresult, 2, !dbg !406
  call void @llvm.assume(i1 %27), !dbg !406
  store i8 %asmresult, ptr %success, align 1, !dbg !406
  store i64 %asmresult16, ptr %__old, align 8, !dbg !406
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !406
  %28 = load i8, ptr %success, align 1, !dbg !408, !range !151, !noundef !152
  %tobool17 = trunc i8 %28 to i1, !dbg !408
  %lnot18 = xor i1 %tobool17, true, !dbg !408
  %lnot20 = xor i1 %lnot18, true, !dbg !408
  %lnot22 = xor i1 %lnot20, true, !dbg !408
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !408
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !408
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !408
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !408
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !406

if.then27:                                        ; preds = %do.end14
  %29 = load i64, ptr %__old, align 8, !dbg !408
  %30 = load ptr, ptr %_old, align 8, !dbg !408
  store i64 %29, ptr %30, align 8, !dbg !408
  br label %if.end28, !dbg !408

if.end28:                                         ; preds = %if.then27, %do.end14
  %31 = load i8, ptr %success, align 1, !dbg !406, !range !151, !noundef !152
  %tobool30 = trunc i8 %31 to i1, !dbg !406
  %lnot31 = xor i1 %tobool30, true, !dbg !406
  %lnot33 = xor i1 %lnot31, true, !dbg !406
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !406
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !406
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 1), !dbg !406
  store i64 %expval36, ptr %tmp29, align 8, !dbg !408
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #9, !dbg !403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #9, !dbg !403
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !403
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !403
  %32 = load i64, ptr %tmp29, align 8, !dbg !406
  store i64 %32, ptr %tmp15, align 8, !dbg !404
  %33 = load i64, ptr %tmp15, align 8, !dbg !403
  store i64 %33, ptr %tmp11, align 8, !dbg !402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #9, !dbg !410
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #9, !dbg !410
  %34 = load i64, ptr %tmp11, align 8, !dbg !402
  %tobool37 = icmp ne i64 %34, 0, !dbg !410
  %lnot38 = xor i1 %tobool37, true, !dbg !410
  %lnot40 = xor i1 %lnot38, true, !dbg !410
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !410
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !410
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 1), !dbg !410
  %tobool44 = icmp ne i64 %expval43, 0, !dbg !410
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !399

if.then45:                                        ; preds = %if.end28
  %35 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !411
  %count46 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 1, !dbg !411
  %36 = load i32, ptr %count46, align 4, !dbg !411
  store i32 %36, ptr %retval, align 4, !dbg !411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !411

if.end47:                                         ; preds = %if.end28
  %37 = load i32, ptr %retry, align 4, !dbg !413
  %dec48 = add i32 %37, -1, !dbg !413
  store i32 %dec48, ptr %retry, align 4, !dbg !413
  %tobool49 = icmp ne i32 %dec48, 0, !dbg !413
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !399

if.then50:                                        ; preds = %if.end47
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !413

if.end51:                                         ; preds = %if.end47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !392
  br label %cleanup, !dbg !392

cleanup:                                          ; preds = %if.end51, %if.then50, %if.then45, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9, !dbg !392
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup52 [
    i32 0, label %cleanup.cont
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !392, !llvm.loop !415

while.end:                                        ; preds = %cleanup, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !391
  br label %cleanup52, !dbg !391

cleanup52:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #9, !dbg !391
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #9, !dbg !391
  %cleanup.dest54 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest54, label %unreachable [
    i32 0, label %cleanup.cont55
    i32 1, label %return
  ]

cleanup.cont55:                                   ; preds = %cleanup52
  br label %do.end57, !dbg !392

do.end57:                                         ; preds = %cleanup.cont55
  store i32 -1, ptr %retval, align 4, !dbg !416
  br label %return, !dbg !416

return:                                           ; preds = %do.end57, %cleanup52
  %38 = load i32, ptr %retval, align 4, !dbg !417
  ret i32 %38, !dbg !417

unreachable:                                      ; preds = %cleanup52
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lockref_put_or_lock(ptr noundef %lockref) #0 align 16 !dbg !418 {
entry:
  %retval = alloca i32, align 4
  %lockref.addr = alloca ptr, align 8
  %retry = alloca i32, align 4
  %old = alloca %struct.lockref, align 8
  %tmp = alloca i64, align 8
  %new = alloca %struct.lockref, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp11 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp29 = alloca i64, align 8
  store ptr %lockref, ptr %lockref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockref.addr, metadata !420, metadata !DIExpression()), !dbg !437
  br label %do.body, !dbg !438

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #9, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !421, metadata !DIExpression()), !dbg !439
  store i32 100, ptr %retry, align 4, !dbg !439
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #9, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %old, metadata !423, metadata !DIExpression()), !dbg !439
  br label %do.body1, !dbg !439

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !440

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !440

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !442

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !444

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !444

do.end4:                                          ; preds = %do.cond3
  %0 = load ptr, ptr %lockref.addr, align 8, !dbg !442
  %1 = getelementptr inbounds %struct.lockref, ptr %0, i32 0, i32 0, !dbg !442
  %2 = load volatile i64, ptr %1, align 8, !dbg !442
  store i64 %2, ptr %tmp, align 8, !dbg !444
  %3 = load i64, ptr %tmp, align 8, !dbg !442
  %4 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !439
  store i64 %3, ptr %4, align 8, !dbg !439
  br label %while.cond, !dbg !439

while.cond:                                       ; preds = %cleanup.cont, %do.end4
  %5 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !439
  %lock = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !439
  %6 = getelementptr inbounds %struct.spinlock, ptr %lock, i32 0, i32 0, !dbg !439
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !439
  %coerce.dive = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !439
  %coerce.dive5 = getelementptr inbounds %union.anon.1, ptr %coerce.dive, i32 0, i32 0, !dbg !439
  %coerce.dive6 = getelementptr inbounds %struct.atomic_t, ptr %coerce.dive5, i32 0, i32 0, !dbg !439
  %7 = load i32, ptr %coerce.dive6, align 8, !dbg !439
  %call = call i32 @queued_spin_value_unlocked(i32 %7) #10, !dbg !439
  %tobool = icmp ne i32 %call, 0, !dbg !439
  %lnot = xor i1 %tobool, true, !dbg !439
  %lnot7 = xor i1 %lnot, true, !dbg !439
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !439
  %conv = sext i32 %lnot.ext to i64, !dbg !439
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !439
  %tobool8 = icmp ne i64 %expval, 0, !dbg !439
  br i1 %tobool8, label %while.body, label %while.end, !dbg !439

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %new, metadata !424, metadata !DIExpression()), !dbg !446
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new, ptr align 8 %old, i64 8, i1 false), !dbg !446
  %8 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !446
  %count = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !446
  %9 = load i32, ptr %count, align 4, !dbg !446
  %dec = add i32 %9, -1, !dbg !446
  store i32 %dec, ptr %count, align 4, !dbg !446
  %10 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !447
  %count9 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1, !dbg !447
  %11 = load i32, ptr %count9, align 4, !dbg !447
  %cmp = icmp sle i32 %11, 1, !dbg !447
  br i1 %cmp, label %if.then, label %if.end, !dbg !446

if.then:                                          ; preds = %while.body
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !447

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #9, !dbg !449
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !426, metadata !DIExpression()), !dbg !449
  %12 = load ptr, ptr %lockref.addr, align 8, !dbg !449
  %13 = getelementptr inbounds %struct.lockref, ptr %12, i32 0, i32 0, !dbg !449
  store ptr %13, ptr %__ai_ptr, align 8, !dbg !449
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #9, !dbg !449
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !429, metadata !DIExpression()), !dbg !449
  %14 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !449
  store ptr %14, ptr %__ai_oldp, align 8, !dbg !449
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !449
  call void @instrument_atomic_read_write(ptr noundef %15, i64 noundef 8) #10, !dbg !449
  %16 = load ptr, ptr %__ai_oldp, align 8, !dbg !449
  call void @instrument_read_write(ptr noundef %16, i64 noundef 8) #10, !dbg !449
  br label %do.body12, !dbg !450

do.body12:                                        ; preds = %if.end
  br label %do.cond13, !dbg !451

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !451

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %success, metadata !430, metadata !DIExpression()), !dbg !453
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !433, metadata !DIExpression()), !dbg !453
  %17 = load ptr, ptr %__ai_oldp, align 8, !dbg !453
  store ptr %17, ptr %_old, align 8, !dbg !453
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #9, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !434, metadata !DIExpression()), !dbg !453
  %18 = load ptr, ptr %_old, align 8, !dbg !453
  %19 = load i64, ptr %18, align 8, !dbg !453
  store i64 %19, ptr %__old, align 8, !dbg !453
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #9, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !435, metadata !DIExpression()), !dbg !453
  %20 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !453
  %21 = load i64, ptr %20, align 8, !dbg !453
  store i64 %21, ptr %__new, align 8, !dbg !453
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !436, metadata !DIExpression()), !dbg !453
  %22 = load ptr, ptr %__ai_ptr, align 8, !dbg !453
  store ptr %22, ptr %__ptr, align 8, !dbg !453
  %23 = load ptr, ptr %__ptr, align 8, !dbg !453
  %24 = load i64, ptr %__old, align 8, !dbg !453
  %25 = load i64, ptr %__new, align 8, !dbg !453
  %26 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %23, i64 %25, ptr elementtype(i64) %23, i64 %24) #9, !dbg !453, !srcloc !454
  %asmresult = extractvalue { i8, i64 } %26, 0, !dbg !453
  %asmresult16 = extractvalue { i8, i64 } %26, 1, !dbg !453
  %27 = icmp ult i8 %asmresult, 2, !dbg !453
  call void @llvm.assume(i1 %27), !dbg !453
  store i8 %asmresult, ptr %success, align 1, !dbg !453
  store i64 %asmresult16, ptr %__old, align 8, !dbg !453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !453
  %28 = load i8, ptr %success, align 1, !dbg !455, !range !151, !noundef !152
  %tobool17 = trunc i8 %28 to i1, !dbg !455
  %lnot18 = xor i1 %tobool17, true, !dbg !455
  %lnot20 = xor i1 %lnot18, true, !dbg !455
  %lnot22 = xor i1 %lnot20, true, !dbg !455
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !455
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !455
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !455
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !455
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !453

if.then27:                                        ; preds = %do.end14
  %29 = load i64, ptr %__old, align 8, !dbg !455
  %30 = load ptr, ptr %_old, align 8, !dbg !455
  store i64 %29, ptr %30, align 8, !dbg !455
  br label %if.end28, !dbg !455

if.end28:                                         ; preds = %if.then27, %do.end14
  %31 = load i8, ptr %success, align 1, !dbg !453, !range !151, !noundef !152
  %tobool30 = trunc i8 %31 to i1, !dbg !453
  %lnot31 = xor i1 %tobool30, true, !dbg !453
  %lnot33 = xor i1 %lnot31, true, !dbg !453
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !453
  %conv35 = sext i32 %lnot.ext34 to i64, !dbg !453
  %expval36 = call i64 @llvm.expect.i64(i64 %conv35, i64 1), !dbg !453
  store i64 %expval36, ptr %tmp29, align 8, !dbg !455
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #9, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #9, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !450
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !450
  %32 = load i64, ptr %tmp29, align 8, !dbg !453
  store i64 %32, ptr %tmp15, align 8, !dbg !451
  %33 = load i64, ptr %tmp15, align 8, !dbg !450
  store i64 %33, ptr %tmp11, align 8, !dbg !449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #9, !dbg !457
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #9, !dbg !457
  %34 = load i64, ptr %tmp11, align 8, !dbg !449
  %tobool37 = icmp ne i64 %34, 0, !dbg !457
  %lnot38 = xor i1 %tobool37, true, !dbg !457
  %lnot40 = xor i1 %lnot38, true, !dbg !457
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !457
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !457
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 1), !dbg !457
  %tobool44 = icmp ne i64 %expval43, 0, !dbg !457
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !446

if.then45:                                        ; preds = %if.end28
  store i32 1, ptr %retval, align 4, !dbg !458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !458

if.end46:                                         ; preds = %if.end28
  %35 = load i32, ptr %retry, align 4, !dbg !460
  %dec47 = add i32 %35, -1, !dbg !460
  store i32 %dec47, ptr %retry, align 4, !dbg !460
  %tobool48 = icmp ne i32 %dec47, 0, !dbg !460
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !446

if.then49:                                        ; preds = %if.end46
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !460

if.end50:                                         ; preds = %if.end46
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !439
  br label %cleanup, !dbg !439

cleanup:                                          ; preds = %if.end50, %if.then49, %if.then45, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9, !dbg !439
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !439, !llvm.loop !462

while.end:                                        ; preds = %cleanup, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !438
  br label %cleanup51, !dbg !438

cleanup51:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #9, !dbg !438
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #9, !dbg !438
  %cleanup.dest53 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest53, label %unreachable [
    i32 0, label %cleanup.cont54
    i32 1, label %return
  ]

cleanup.cont54:                                   ; preds = %cleanup51
  br label %do.end56, !dbg !439

do.end56:                                         ; preds = %cleanup.cont54
  %36 = load ptr, ptr %lockref.addr, align 8, !dbg !463
  %37 = getelementptr inbounds %struct.lockref, ptr %36, i32 0, i32 0, !dbg !464
  %lock57 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 0, !dbg !464
  call void @spin_lock(ptr noundef %lock57) #10, !dbg !465
  %38 = load ptr, ptr %lockref.addr, align 8, !dbg !466
  %39 = getelementptr inbounds %struct.lockref, ptr %38, i32 0, i32 0, !dbg !468
  %count58 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 1, !dbg !468
  %40 = load i32, ptr %count58, align 4, !dbg !468
  %cmp59 = icmp sle i32 %40, 1, !dbg !469
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !470

if.then61:                                        ; preds = %do.end56
  store i32 0, ptr %retval, align 4, !dbg !471
  br label %return, !dbg !471

if.end62:                                         ; preds = %do.end56
  %41 = load ptr, ptr %lockref.addr, align 8, !dbg !472
  %42 = getelementptr inbounds %struct.lockref, ptr %41, i32 0, i32 0, !dbg !473
  %count63 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1, !dbg !473
  %43 = load i32, ptr %count63, align 4, !dbg !474
  %dec64 = add i32 %43, -1, !dbg !474
  store i32 %dec64, ptr %count63, align 4, !dbg !474
  %44 = load ptr, ptr %lockref.addr, align 8, !dbg !475
  %45 = getelementptr inbounds %struct.lockref, ptr %44, i32 0, i32 0, !dbg !476
  %lock65 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 0, !dbg !476
  call void @spin_unlock(ptr noundef %lock65) #10, !dbg !477
  store i32 1, ptr %retval, align 4, !dbg !478
  br label %return, !dbg !478

return:                                           ; preds = %if.end62, %if.then61, %cleanup51
  %46 = load i32, ptr %retval, align 4, !dbg !479
  ret i32 %46, !dbg !479

unreachable:                                      ; preds = %cleanup51
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @lockref_mark_dead(ptr noundef %lockref) #0 align 16 !dbg !480 {
entry:
  %lockref.addr = alloca ptr, align 8
  store ptr %lockref, ptr %lockref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockref.addr, metadata !482, metadata !DIExpression()), !dbg !483
  br label %do.body, !dbg !484

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %lockref.addr, align 8, !dbg !485
  %1 = getelementptr inbounds %struct.lockref, ptr %0, i32 0, i32 0, !dbg !485
  %lock = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !485
  %2 = getelementptr inbounds %struct.spinlock, ptr %lock, i32 0, i32 0, !dbg !485
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !485
  %call = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #10, !dbg !485
  %tobool = icmp ne i32 %call, 0, !dbg !485
  %lnot = xor i1 %tobool, true, !dbg !485
  %lnot1 = xor i1 %lnot, true, !dbg !485
  %lnot2 = xor i1 %lnot1, true, !dbg !485
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !485
  %conv = sext i32 %lnot.ext to i64, !dbg !485
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !485
  %tobool3 = icmp ne i64 %expval, 0, !dbg !485
  br i1 %tobool3, label %if.then, label %if.end, !dbg !488

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !485

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !489

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !491

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !489

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 162, i32 0, i64 12) #9, !dbg !493, !srcloc !495
  br label %do.end7, !dbg !493

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !489

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !489

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !488

do.end9:                                          ; preds = %if.end
  %3 = load ptr, ptr %lockref.addr, align 8, !dbg !496
  %4 = getelementptr inbounds %struct.lockref, ptr %3, i32 0, i32 0, !dbg !497
  %count = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1, !dbg !497
  store i32 -128, ptr %count, align 4, !dbg !498
  ret void, !dbg !499
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_is_locked(ptr noundef %lock) #3 align 16 !dbg !500 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !507
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !508
  %call = call i32 @atomic_read(ptr noundef %1) #10, !dbg !509
  ret i32 %call, !dbg !510
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @lockref_get_not_dead(ptr noundef %lockref) #0 align 16 !dbg !511 {
entry:
  %retval = alloca i32, align 4
  %lockref.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %retry = alloca i32, align 4
  %old = alloca %struct.lockref, align 8
  %tmp = alloca i64, align 8
  %new = alloca %struct.lockref, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp12 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp30 = alloca i64, align 8
  store ptr %lockref, ptr %lockref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockref.addr, metadata !513, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #9, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !514, metadata !DIExpression()), !dbg !533
  br label %do.body, !dbg !534

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %retry) #9, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %retry, metadata !515, metadata !DIExpression()), !dbg !535
  store i32 100, ptr %retry, align 4, !dbg !535
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #9, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %old, metadata !517, metadata !DIExpression()), !dbg !535
  br label %do.body2, !dbg !535

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !536

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !536

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !538

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !540

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !540

do.end5:                                          ; preds = %do.cond4
  %0 = load ptr, ptr %lockref.addr, align 8, !dbg !538
  %1 = getelementptr inbounds %struct.lockref, ptr %0, i32 0, i32 0, !dbg !538
  %2 = load volatile i64, ptr %1, align 8, !dbg !538
  store i64 %2, ptr %tmp, align 8, !dbg !540
  %3 = load i64, ptr %tmp, align 8, !dbg !538
  %4 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !535
  store i64 %3, ptr %4, align 8, !dbg !535
  br label %while.cond, !dbg !535

while.cond:                                       ; preds = %cleanup.cont, %do.end5
  %5 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !535
  %lock = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !535
  %6 = getelementptr inbounds %struct.spinlock, ptr %lock, i32 0, i32 0, !dbg !535
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !535
  %coerce.dive = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !535
  %coerce.dive6 = getelementptr inbounds %union.anon.1, ptr %coerce.dive, i32 0, i32 0, !dbg !535
  %coerce.dive7 = getelementptr inbounds %struct.atomic_t, ptr %coerce.dive6, i32 0, i32 0, !dbg !535
  %7 = load i32, ptr %coerce.dive7, align 8, !dbg !535
  %call = call i32 @queued_spin_value_unlocked(i32 %7) #10, !dbg !535
  %tobool = icmp ne i32 %call, 0, !dbg !535
  %lnot = xor i1 %tobool, true, !dbg !535
  %lnot8 = xor i1 %lnot, true, !dbg !535
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !535
  %conv = sext i32 %lnot.ext to i64, !dbg !535
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !535
  %tobool9 = icmp ne i64 %expval, 0, !dbg !535
  br i1 %tobool9, label %while.body, label %while.end, !dbg !535

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #9, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %new, metadata !518, metadata !DIExpression()), !dbg !542
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %new, ptr align 8 %old, i64 8, i1 false), !dbg !542
  %8 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !542
  %count = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !542
  %9 = load i32, ptr %count, align 4, !dbg !542
  %inc = add i32 %9, 1, !dbg !542
  store i32 %inc, ptr %count, align 4, !dbg !542
  %10 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !543
  %count10 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1, !dbg !543
  %11 = load i32, ptr %count10, align 4, !dbg !543
  %cmp = icmp slt i32 %11, 0, !dbg !543
  br i1 %cmp, label %if.then, label %if.end, !dbg !542

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !543

if.end:                                           ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #9, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !520, metadata !DIExpression()), !dbg !545
  %12 = load ptr, ptr %lockref.addr, align 8, !dbg !545
  %13 = getelementptr inbounds %struct.lockref, ptr %12, i32 0, i32 0, !dbg !545
  store ptr %13, ptr %__ai_ptr, align 8, !dbg !545
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #9, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !523, metadata !DIExpression()), !dbg !545
  %14 = getelementptr inbounds %struct.lockref, ptr %old, i32 0, i32 0, !dbg !545
  store ptr %14, ptr %__ai_oldp, align 8, !dbg !545
  %15 = load ptr, ptr %__ai_ptr, align 8, !dbg !545
  call void @instrument_atomic_read_write(ptr noundef %15, i64 noundef 8) #10, !dbg !545
  %16 = load ptr, ptr %__ai_oldp, align 8, !dbg !545
  call void @instrument_read_write(ptr noundef %16, i64 noundef 8) #10, !dbg !545
  br label %do.body13, !dbg !546

do.body13:                                        ; preds = %if.end
  br label %do.cond14, !dbg !547

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !547

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %success, metadata !524, metadata !DIExpression()), !dbg !549
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !527, metadata !DIExpression()), !dbg !549
  %17 = load ptr, ptr %__ai_oldp, align 8, !dbg !549
  store ptr %17, ptr %_old, align 8, !dbg !549
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #9, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !528, metadata !DIExpression()), !dbg !549
  %18 = load ptr, ptr %_old, align 8, !dbg !549
  %19 = load i64, ptr %18, align 8, !dbg !549
  store i64 %19, ptr %__old, align 8, !dbg !549
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #9, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !529, metadata !DIExpression()), !dbg !549
  %20 = getelementptr inbounds %struct.lockref, ptr %new, i32 0, i32 0, !dbg !549
  %21 = load i64, ptr %20, align 8, !dbg !549
  store i64 %21, ptr %__new, align 8, !dbg !549
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !530, metadata !DIExpression()), !dbg !549
  %22 = load ptr, ptr %__ai_ptr, align 8, !dbg !549
  store ptr %22, ptr %__ptr, align 8, !dbg !549
  %23 = load ptr, ptr %__ptr, align 8, !dbg !549
  %24 = load i64, ptr %__old, align 8, !dbg !549
  %25 = load i64, ptr %__new, align 8, !dbg !549
  %26 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %23, i64 %25, ptr elementtype(i64) %23, i64 %24) #9, !dbg !549, !srcloc !550
  %asmresult = extractvalue { i8, i64 } %26, 0, !dbg !549
  %asmresult17 = extractvalue { i8, i64 } %26, 1, !dbg !549
  %27 = icmp ult i8 %asmresult, 2, !dbg !549
  call void @llvm.assume(i1 %27), !dbg !549
  store i8 %asmresult, ptr %success, align 1, !dbg !549
  store i64 %asmresult17, ptr %__old, align 8, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !549
  %28 = load i8, ptr %success, align 1, !dbg !551, !range !151, !noundef !152
  %tobool18 = trunc i8 %28 to i1, !dbg !551
  %lnot19 = xor i1 %tobool18, true, !dbg !551
  %lnot21 = xor i1 %lnot19, true, !dbg !551
  %lnot23 = xor i1 %lnot21, true, !dbg !551
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !551
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !551
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !551
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !551
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !549

if.then28:                                        ; preds = %do.end15
  %29 = load i64, ptr %__old, align 8, !dbg !551
  %30 = load ptr, ptr %_old, align 8, !dbg !551
  store i64 %29, ptr %30, align 8, !dbg !551
  br label %if.end29, !dbg !551

if.end29:                                         ; preds = %if.then28, %do.end15
  %31 = load i8, ptr %success, align 1, !dbg !549, !range !151, !noundef !152
  %tobool31 = trunc i8 %31 to i1, !dbg !549
  %lnot32 = xor i1 %tobool31, true, !dbg !549
  %lnot34 = xor i1 %lnot32, true, !dbg !549
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !549
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !549
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 1), !dbg !549
  store i64 %expval37, ptr %tmp30, align 8, !dbg !551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #9, !dbg !546
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #9, !dbg !546
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !546
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !546
  %32 = load i64, ptr %tmp30, align 8, !dbg !549
  store i64 %32, ptr %tmp16, align 8, !dbg !547
  %33 = load i64, ptr %tmp16, align 8, !dbg !546
  store i64 %33, ptr %tmp12, align 8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #9, !dbg !553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #9, !dbg !553
  %34 = load i64, ptr %tmp12, align 8, !dbg !545
  %tobool38 = icmp ne i64 %34, 0, !dbg !553
  %lnot39 = xor i1 %tobool38, true, !dbg !553
  %lnot41 = xor i1 %lnot39, true, !dbg !553
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !553
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !553
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 1), !dbg !553
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !553
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !542

if.then46:                                        ; preds = %if.end29
  store i32 1, ptr %retval, align 4, !dbg !554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !554

if.end47:                                         ; preds = %if.end29
  %35 = load i32, ptr %retry, align 4, !dbg !556
  %dec = add i32 %35, -1, !dbg !556
  store i32 %dec, ptr %retry, align 4, !dbg !556
  %tobool48 = icmp ne i32 %dec, 0, !dbg !556
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !542

if.then49:                                        ; preds = %if.end47
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !556

if.end50:                                         ; preds = %if.end47
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !535
  br label %cleanup, !dbg !535

cleanup:                                          ; preds = %if.end50, %if.then49, %if.then46, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #9, !dbg !535
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
    i32 9, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !535, !llvm.loop !558

while.end:                                        ; preds = %cleanup, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !534
  br label %cleanup51, !dbg !534

cleanup51:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #9, !dbg !534
  call void @llvm.lifetime.end.p0(i64 4, ptr %retry) #9, !dbg !534
  %cleanup.dest53 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest53, label %cleanup66 [
    i32 0, label %cleanup.cont54
  ]

cleanup.cont54:                                   ; preds = %cleanup51
  br label %do.cond55, !dbg !535

do.cond55:                                        ; preds = %cleanup.cont54
  br label %do.end56, !dbg !535

do.end56:                                         ; preds = %do.cond55
  %36 = load ptr, ptr %lockref.addr, align 8, !dbg !559
  %37 = getelementptr inbounds %struct.lockref, ptr %36, i32 0, i32 0, !dbg !560
  %lock57 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 0, !dbg !560
  call void @spin_lock(ptr noundef %lock57) #10, !dbg !561
  store i32 0, ptr %retval1, align 4, !dbg !562
  %38 = load ptr, ptr %lockref.addr, align 8, !dbg !563
  %39 = getelementptr inbounds %struct.lockref, ptr %38, i32 0, i32 0, !dbg !565
  %count58 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 1, !dbg !565
  %40 = load i32, ptr %count58, align 4, !dbg !565
  %cmp59 = icmp sge i32 %40, 0, !dbg !566
  br i1 %cmp59, label %if.then61, label %if.end64, !dbg !567

if.then61:                                        ; preds = %do.end56
  %41 = load ptr, ptr %lockref.addr, align 8, !dbg !568
  %42 = getelementptr inbounds %struct.lockref, ptr %41, i32 0, i32 0, !dbg !570
  %count62 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1, !dbg !570
  %43 = load i32, ptr %count62, align 4, !dbg !571
  %inc63 = add i32 %43, 1, !dbg !571
  store i32 %inc63, ptr %count62, align 4, !dbg !571
  store i32 1, ptr %retval1, align 4, !dbg !572
  br label %if.end64, !dbg !573

if.end64:                                         ; preds = %if.then61, %do.end56
  %44 = load ptr, ptr %lockref.addr, align 8, !dbg !574
  %45 = getelementptr inbounds %struct.lockref, ptr %44, i32 0, i32 0, !dbg !575
  %lock65 = getelementptr inbounds %struct.anon, ptr %45, i32 0, i32 0, !dbg !575
  call void @spin_unlock(ptr noundef %lock65) #10, !dbg !576
  %46 = load i32, ptr %retval1, align 4, !dbg !577
  store i32 %46, ptr %retval, align 4, !dbg !578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66, !dbg !578

cleanup66:                                        ; preds = %if.end64, %cleanup51
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #9, !dbg !579
  %47 = load i32, ptr %retval, align 4, !dbg !579
  ret i32 %47, !dbg !579
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !580 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !585, metadata !DIExpression()), !dbg !587
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !586, metadata !DIExpression()), !dbg !588
  ret i1 true, !dbg !589
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !590 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !595, metadata !DIExpression()), !dbg !598
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !596, metadata !DIExpression()), !dbg !599
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !597, metadata !DIExpression()), !dbg !600
  ret void, !dbg !601
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !602 dso_local void @_raw_spin_lock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !608 dso_local void @_raw_spin_unlock(ptr noundef) #8 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !609 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !616, metadata !DIExpression()), !dbg !617
  %0 = load ptr, ptr %v.addr, align 8, !dbg !618
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #10, !dbg !619
  %1 = load ptr, ptr %v.addr, align 8, !dbg !620
  %call = call i32 @raw_atomic_read(ptr noundef %1) #10, !dbg !621
  ret i32 %call, !dbg !622
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !623 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !625, metadata !DIExpression()), !dbg !627
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !626, metadata !DIExpression()), !dbg !628
  %0 = load ptr, ptr %v.addr, align 8, !dbg !629
  %1 = load i64, ptr %size.addr, align 8, !dbg !630
  %conv = trunc i64 %1 to i32, !dbg !630
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !631
  %2 = load ptr, ptr %v.addr, align 8, !dbg !632
  %3 = load i64, ptr %size.addr, align 8, !dbg !632
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !632
  ret void, !dbg !633
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !634 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !637, metadata !DIExpression()), !dbg !638
  %0 = load ptr, ptr %v.addr, align 8, !dbg !639
  %call = call i32 @arch_atomic_read(ptr noundef %0) #10, !dbg !640
  ret i32 %call, !dbg !641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !642 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !644, metadata !DIExpression()), !dbg !646
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !645, metadata !DIExpression()), !dbg !647
  ret i1 true, !dbg !648
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !649 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !652, metadata !DIExpression()), !dbg !653
  %0 = load ptr, ptr %v.addr, align 8, !dbg !654
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !654
  %1 = load volatile i32, ptr %counter, align 4, !dbg !654
  ret i32 %1, !dbg !655
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lockref_get64", scope: !2, file: !3, line: 54, type: !23, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.lockref.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/lockref\22 -D KBUILD_BASENAME=\22lockref\22 -D KBUILD_MODNAME=\22lockref\22 -D __KBUILD_MODNAME=kmod_lockref -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/lockref.ll lib/lockref.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/lockref.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f0ee262287df548ef2045f4d19a7a54")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !16, !19, !23, !24}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !15)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !22, line: 23, baseType: !17)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !{!0, !29, !31, !33, !35, !37, !43, !45}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lockref_get_not_zero68", scope: !2, file: !3, line: 82, type: !23, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lockref_put_not_zero72", scope: !2, file: !3, line: 110, type: !23, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lockref_put_return76", scope: !2, file: !3, line: 130, type: !23, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lockref_put_or_lock80", scope: !2, file: !3, line: 154, type: !23, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 112, elements: !41)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{!42}
!42 = !DISubrange(count: 14)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lockref_mark_dead81", scope: !2, file: !3, line: 165, type: !23, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lockref_get_not_dead85", scope: !2, file: !3, line: 193, type: !23, isLocal: true, isDefinition: true)
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 8, !"cf-protection-branch", i32 1}
!51 = !{i32 4, !"function_return_thunk_extern", i32 1}
!52 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!53 = !{i32 1, !"Code Model", i32 2}
!54 = !{i32 1, !"override-stack-alignment", i32 8}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = distinct !DISubprogram(name: "lockref_get", scope: !3, file: !3, line: 42, type: !57, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !61, line: 25, size: 64, elements: !62)
!61 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !61, line: 26, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !61, line: 26, size: 64, elements: !65)
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !64, file: !61, line: 28, baseType: !17, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, scope: !64, file: !61, line: 30, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !64, file: !61, line: 30, size: 64, elements: !69)
!69 = !{!70, !112}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !68, file: !61, line: 31, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !72, line: 29, baseType: !73)
!72 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !72, line: 17, size: 32, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !72, line: 18, baseType: !76, size: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !73, file: !72, line: 18, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !76, file: !72, line: 19, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !80, line: 14, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !79, file: !80, line: 15, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !84, line: 44, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !84, line: 14, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 15, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 15, size: 32, elements: !89)
!89 = !{!90, !96, !104}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !84, line: 16, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !92, line: 174, baseType: !93)
!92 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 172, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !93, file: !92, line: 173, baseType: !27, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 24, baseType: !97, size: 16)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 24, size: 16, elements: !98)
!98 = !{!99, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !97, file: !84, line: 25, baseType: !100, size: 8)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !102)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !97, file: !84, line: 26, baseType: !100, size: 8, offset: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !84, line: 28, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !84, line: 28, size: 32, elements: !106)
!106 = !{!107, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !105, file: !84, line: 29, baseType: !108, size: 16)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !110)
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !105, file: !84, line: 30, baseType: !108, size: 16, offset: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !68, file: !61, line: 32, baseType: !27, size: 32, offset: 32)
!113 = !{!114, !115, !117, !118, !120, !123, !124, !129, !130, !131, !132}
!114 = !DILocalVariable(name: "lockref", arg: 1, scope: !56, file: !3, line: 42, type: !59)
!115 = !DILocalVariable(name: "retry", scope: !116, file: !3, line: 44, type: !27)
!116 = distinct !DILexicalBlock(scope: !56, file: !3, line: 44, column: 2)
!117 = !DILocalVariable(name: "old", scope: !116, file: !3, line: 44, type: !60)
!118 = !DILocalVariable(name: "new", scope: !119, file: !3, line: 44, type: !60)
!119 = distinct !DILexicalBlock(scope: !116, file: !3, line: 44, column: 2)
!120 = !DILocalVariable(name: "__ai_ptr", scope: !121, file: !3, line: 44, type: !16)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 44, column: 2)
!122 = distinct !DILexicalBlock(scope: !119, file: !3, line: 44, column: 2)
!123 = !DILocalVariable(name: "__ai_oldp", scope: !121, file: !3, line: 44, type: !16)
!124 = !DILocalVariable(name: "success", scope: !125, file: !3, line: 44, type: !127)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 44, column: 2)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 44, column: 2)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !92, line: 35, baseType: !128)
!128 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!129 = !DILocalVariable(name: "_old", scope: !125, file: !3, line: 44, type: !16)
!130 = !DILocalVariable(name: "__old", scope: !125, file: !3, line: 44, type: !17)
!131 = !DILocalVariable(name: "__new", scope: !125, file: !3, line: 44, type: !17)
!132 = !DILocalVariable(name: "__ptr", scope: !125, file: !3, line: 44, type: !19)
!133 = !DILocation(line: 42, column: 34, scope: !56)
!134 = !DILocation(line: 44, column: 2, scope: !56)
!135 = !DILocation(line: 44, column: 2, scope: !116)
!136 = !DILocation(line: 44, column: 2, scope: !137)
!137 = distinct !DILexicalBlock(scope: !116, file: !3, line: 44, column: 2)
!138 = !DILocation(line: 44, column: 2, scope: !139)
!139 = distinct !DILexicalBlock(scope: !116, file: !3, line: 44, column: 2)
!140 = !DILocation(line: 44, column: 2, scope: !141)
!141 = distinct !DILexicalBlock(scope: !139, file: !3, line: 44, column: 2)
!142 = !DILocation(line: 44, column: 2, scope: !119)
!143 = !DILocation(line: 44, column: 2, scope: !121)
!144 = !DILocation(line: 44, column: 2, scope: !126)
!145 = !DILocation(line: 44, column: 2, scope: !146)
!146 = distinct !DILexicalBlock(scope: !126, file: !3, line: 44, column: 2)
!147 = !DILocation(line: 44, column: 2, scope: !125)
!148 = !{i64 2149745937, i64 2149745976, i64 2149745997, i64 2149746034, i64 2149746057, i64 2149746066, i64 2149746105}
!149 = !DILocation(line: 44, column: 2, scope: !150)
!150 = distinct !DILexicalBlock(scope: !125, file: !3, line: 44, column: 2)
!151 = !{i8 0, i8 2}
!152 = !{}
!153 = !DILocation(line: 44, column: 2, scope: !122)
!154 = !DILocation(line: 44, column: 2, scope: !155)
!155 = distinct !DILexicalBlock(scope: !122, file: !3, line: 44, column: 2)
!156 = !DILocation(line: 44, column: 2, scope: !157)
!157 = distinct !DILexicalBlock(scope: !119, file: !3, line: 44, column: 2)
!158 = distinct !{!158, !135, !135, !159, !160}
!159 = !{!"llvm.loop.mustprogress"}
!160 = !{!"llvm.loop.unroll.disable"}
!161 = !DILocation(line: 50, column: 13, scope: !56)
!162 = !DILocation(line: 50, column: 22, scope: !56)
!163 = !DILocation(line: 50, column: 2, scope: !56)
!164 = !DILocation(line: 51, column: 2, scope: !56)
!165 = !DILocation(line: 51, column: 11, scope: !56)
!166 = !DILocation(line: 51, column: 16, scope: !56)
!167 = !DILocation(line: 52, column: 15, scope: !56)
!168 = !DILocation(line: 52, column: 24, scope: !56)
!169 = !DILocation(line: 52, column: 2, scope: !56)
!170 = !DILocation(line: 53, column: 1, scope: !56)
!171 = distinct !DISubprogram(name: "queued_spin_value_unlocked", scope: !172, file: !172, line: 71, type: !173, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !175)
!172 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!173 = !DISubroutineType(types: !174)
!174 = !{!27, !85}
!175 = !{!176}
!176 = !DILocalVariable(name: "lock", arg: 1, scope: !171, file: !172, line: 71, type: !85)
!177 = !DILocation(line: 71, column: 72, scope: !171)
!178 = !DILocation(line: 73, column: 15, scope: !171)
!179 = !DILocation(line: 73, column: 19, scope: !171)
!180 = !DILocation(line: 73, column: 9, scope: !171)
!181 = !DILocation(line: 73, column: 2, scope: !171)
!182 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !183, file: !183, line: 94, type: !184, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!183 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186, !189}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 61, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !191, line: 72, baseType: !192)
!191 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !191, line: 16, baseType: !193)
!193 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!194 = !{!195, !196}
!195 = !DILocalVariable(name: "v", arg: 1, scope: !182, file: !183, line: 94, type: !186)
!196 = !DILocalVariable(name: "size", arg: 2, scope: !182, file: !183, line: 94, type: !189)
!197 = !DILocation(line: 94, column: 79, scope: !182)
!198 = !DILocation(line: 94, column: 89, scope: !182)
!199 = !DILocation(line: 96, column: 20, scope: !182)
!200 = !DILocation(line: 96, column: 23, scope: !182)
!201 = !DILocation(line: 96, column: 2, scope: !182)
!202 = !DILocation(line: 97, column: 2, scope: !182)
!203 = !DILocation(line: 98, column: 1, scope: !182)
!204 = distinct !DISubprogram(name: "instrument_read_write", scope: !183, file: !183, line: 52, type: !184, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !205)
!205 = !{!206, !207}
!206 = !DILocalVariable(name: "v", arg: 1, scope: !204, file: !183, line: 52, type: !186)
!207 = !DILocalVariable(name: "size", arg: 2, scope: !204, file: !183, line: 52, type: !189)
!208 = !DILocation(line: 52, column: 72, scope: !204)
!209 = !DILocation(line: 52, column: 82, scope: !204)
!210 = !DILocation(line: 54, column: 20, scope: !204)
!211 = !DILocation(line: 54, column: 23, scope: !204)
!212 = !DILocation(line: 54, column: 2, scope: !204)
!213 = !DILocation(line: 55, column: 2, scope: !204)
!214 = !DILocation(line: 56, column: 1, scope: !204)
!215 = distinct !DISubprogram(name: "spin_lock", scope: !216, file: !216, line: 349, type: !217, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!216 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!220 = !{!221}
!221 = !DILocalVariable(name: "lock", arg: 1, scope: !215, file: !216, line: 349, type: !219)
!222 = !DILocation(line: 349, column: 51, scope: !215)
!223 = !DILocation(line: 351, column: 2, scope: !215)
!224 = !DILocation(line: 352, column: 1, scope: !215)
!225 = distinct !DISubprogram(name: "spin_unlock", scope: !216, file: !216, line: 389, type: !217, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!226 = !{!227}
!227 = !DILocalVariable(name: "lock", arg: 1, scope: !225, file: !216, line: 389, type: !219)
!228 = !DILocation(line: 389, column: 53, scope: !225)
!229 = !DILocation(line: 391, column: 2, scope: !225)
!230 = !DILocation(line: 392, column: 1, scope: !225)
!231 = distinct !DISubprogram(name: "lockref_get_not_zero", scope: !3, file: !3, line: 61, type: !232, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!27, !59}
!234 = !{!235, !236, !237, !239, !240, !242, !245, !246, !249, !250, !251, !252}
!235 = !DILocalVariable(name: "lockref", arg: 1, scope: !231, file: !3, line: 61, type: !59)
!236 = !DILocalVariable(name: "retval", scope: !231, file: !3, line: 63, type: !27)
!237 = !DILocalVariable(name: "retry", scope: !238, file: !3, line: 65, type: !27)
!238 = distinct !DILexicalBlock(scope: !231, file: !3, line: 65, column: 2)
!239 = !DILocalVariable(name: "old", scope: !238, file: !3, line: 65, type: !60)
!240 = !DILocalVariable(name: "new", scope: !241, file: !3, line: 65, type: !60)
!241 = distinct !DILexicalBlock(scope: !238, file: !3, line: 65, column: 2)
!242 = !DILocalVariable(name: "__ai_ptr", scope: !243, file: !3, line: 65, type: !16)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 65, column: 2)
!244 = distinct !DILexicalBlock(scope: !241, file: !3, line: 65, column: 2)
!245 = !DILocalVariable(name: "__ai_oldp", scope: !243, file: !3, line: 65, type: !16)
!246 = !DILocalVariable(name: "success", scope: !247, file: !3, line: 65, type: !127)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 65, column: 2)
!248 = distinct !DILexicalBlock(scope: !243, file: !3, line: 65, column: 2)
!249 = !DILocalVariable(name: "_old", scope: !247, file: !3, line: 65, type: !16)
!250 = !DILocalVariable(name: "__old", scope: !247, file: !3, line: 65, type: !17)
!251 = !DILocalVariable(name: "__new", scope: !247, file: !3, line: 65, type: !17)
!252 = !DILocalVariable(name: "__ptr", scope: !247, file: !3, line: 65, type: !19)
!253 = !DILocation(line: 61, column: 42, scope: !231)
!254 = !DILocation(line: 63, column: 2, scope: !231)
!255 = !DILocation(line: 63, column: 6, scope: !231)
!256 = !DILocation(line: 65, column: 2, scope: !231)
!257 = !DILocation(line: 65, column: 2, scope: !238)
!258 = !DILocation(line: 65, column: 2, scope: !259)
!259 = distinct !DILexicalBlock(scope: !238, file: !3, line: 65, column: 2)
!260 = !DILocation(line: 65, column: 2, scope: !261)
!261 = distinct !DILexicalBlock(scope: !238, file: !3, line: 65, column: 2)
!262 = !DILocation(line: 65, column: 2, scope: !263)
!263 = distinct !DILexicalBlock(scope: !261, file: !3, line: 65, column: 2)
!264 = !DILocation(line: 65, column: 2, scope: !241)
!265 = !DILocation(line: 65, column: 2, scope: !266)
!266 = distinct !DILexicalBlock(scope: !241, file: !3, line: 65, column: 2)
!267 = !DILocation(line: 65, column: 2, scope: !243)
!268 = !DILocation(line: 65, column: 2, scope: !248)
!269 = !DILocation(line: 65, column: 2, scope: !270)
!270 = distinct !DILexicalBlock(scope: !248, file: !3, line: 65, column: 2)
!271 = !DILocation(line: 65, column: 2, scope: !247)
!272 = !{i64 2149764514, i64 2149764553, i64 2149764574, i64 2149764611, i64 2149764634, i64 2149764643, i64 2149764682}
!273 = !DILocation(line: 65, column: 2, scope: !274)
!274 = distinct !DILexicalBlock(scope: !247, file: !3, line: 65, column: 2)
!275 = !DILocation(line: 65, column: 2, scope: !244)
!276 = !DILocation(line: 65, column: 2, scope: !277)
!277 = distinct !DILexicalBlock(scope: !244, file: !3, line: 65, column: 2)
!278 = !DILocation(line: 65, column: 2, scope: !279)
!279 = distinct !DILexicalBlock(scope: !241, file: !3, line: 65, column: 2)
!280 = distinct !{!280, !257, !257, !159, !160}
!281 = !DILocation(line: 73, column: 13, scope: !231)
!282 = !DILocation(line: 73, column: 22, scope: !231)
!283 = !DILocation(line: 73, column: 2, scope: !231)
!284 = !DILocation(line: 74, column: 9, scope: !231)
!285 = !DILocation(line: 75, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !231, file: !3, line: 75, column: 6)
!287 = !DILocation(line: 75, column: 15, scope: !286)
!288 = !DILocation(line: 75, column: 21, scope: !286)
!289 = !DILocation(line: 75, column: 6, scope: !231)
!290 = !DILocation(line: 76, column: 3, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !3, line: 75, column: 26)
!292 = !DILocation(line: 76, column: 12, scope: !291)
!293 = !DILocation(line: 76, column: 17, scope: !291)
!294 = !DILocation(line: 77, column: 10, scope: !291)
!295 = !DILocation(line: 78, column: 2, scope: !291)
!296 = !DILocation(line: 79, column: 15, scope: !231)
!297 = !DILocation(line: 79, column: 24, scope: !231)
!298 = !DILocation(line: 79, column: 2, scope: !231)
!299 = !DILocation(line: 80, column: 9, scope: !231)
!300 = !DILocation(line: 80, column: 2, scope: !231)
!301 = !DILocation(line: 81, column: 1, scope: !231)
!302 = distinct !DISubprogram(name: "lockref_put_not_zero", scope: !3, file: !3, line: 89, type: !232, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !303)
!303 = !{!304, !305, !306, !308, !309, !311, !314, !315, !318, !319, !320, !321}
!304 = !DILocalVariable(name: "lockref", arg: 1, scope: !302, file: !3, line: 89, type: !59)
!305 = !DILocalVariable(name: "retval", scope: !302, file: !3, line: 91, type: !27)
!306 = !DILocalVariable(name: "retry", scope: !307, file: !3, line: 93, type: !27)
!307 = distinct !DILexicalBlock(scope: !302, file: !3, line: 93, column: 2)
!308 = !DILocalVariable(name: "old", scope: !307, file: !3, line: 93, type: !60)
!309 = !DILocalVariable(name: "new", scope: !310, file: !3, line: 93, type: !60)
!310 = distinct !DILexicalBlock(scope: !307, file: !3, line: 93, column: 2)
!311 = !DILocalVariable(name: "__ai_ptr", scope: !312, file: !3, line: 93, type: !16)
!312 = distinct !DILexicalBlock(scope: !313, file: !3, line: 93, column: 2)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 93, column: 2)
!314 = !DILocalVariable(name: "__ai_oldp", scope: !312, file: !3, line: 93, type: !16)
!315 = !DILocalVariable(name: "success", scope: !316, file: !3, line: 93, type: !127)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 93, column: 2)
!317 = distinct !DILexicalBlock(scope: !312, file: !3, line: 93, column: 2)
!318 = !DILocalVariable(name: "_old", scope: !316, file: !3, line: 93, type: !16)
!319 = !DILocalVariable(name: "__old", scope: !316, file: !3, line: 93, type: !17)
!320 = !DILocalVariable(name: "__new", scope: !316, file: !3, line: 93, type: !17)
!321 = !DILocalVariable(name: "__ptr", scope: !316, file: !3, line: 93, type: !19)
!322 = !DILocation(line: 89, column: 42, scope: !302)
!323 = !DILocation(line: 91, column: 2, scope: !302)
!324 = !DILocation(line: 91, column: 6, scope: !302)
!325 = !DILocation(line: 93, column: 2, scope: !302)
!326 = !DILocation(line: 93, column: 2, scope: !307)
!327 = !DILocation(line: 93, column: 2, scope: !328)
!328 = distinct !DILexicalBlock(scope: !307, file: !3, line: 93, column: 2)
!329 = !DILocation(line: 93, column: 2, scope: !330)
!330 = distinct !DILexicalBlock(scope: !307, file: !3, line: 93, column: 2)
!331 = !DILocation(line: 93, column: 2, scope: !332)
!332 = distinct !DILexicalBlock(scope: !330, file: !3, line: 93, column: 2)
!333 = !DILocation(line: 93, column: 2, scope: !310)
!334 = !DILocation(line: 93, column: 2, scope: !335)
!335 = distinct !DILexicalBlock(scope: !310, file: !3, line: 93, column: 2)
!336 = !DILocation(line: 93, column: 2, scope: !312)
!337 = !DILocation(line: 93, column: 2, scope: !317)
!338 = !DILocation(line: 93, column: 2, scope: !339)
!339 = distinct !DILexicalBlock(scope: !317, file: !3, line: 93, column: 2)
!340 = !DILocation(line: 93, column: 2, scope: !316)
!341 = !{i64 2149779273, i64 2149779312, i64 2149779333, i64 2149779370, i64 2149779393, i64 2149779402, i64 2149779441}
!342 = !DILocation(line: 93, column: 2, scope: !343)
!343 = distinct !DILexicalBlock(scope: !316, file: !3, line: 93, column: 2)
!344 = !DILocation(line: 93, column: 2, scope: !313)
!345 = !DILocation(line: 93, column: 2, scope: !346)
!346 = distinct !DILexicalBlock(scope: !313, file: !3, line: 93, column: 2)
!347 = !DILocation(line: 93, column: 2, scope: !348)
!348 = distinct !DILexicalBlock(scope: !310, file: !3, line: 93, column: 2)
!349 = distinct !{!349, !326, !326, !159, !160}
!350 = !DILocation(line: 101, column: 13, scope: !302)
!351 = !DILocation(line: 101, column: 22, scope: !302)
!352 = !DILocation(line: 101, column: 2, scope: !302)
!353 = !DILocation(line: 102, column: 9, scope: !302)
!354 = !DILocation(line: 103, column: 6, scope: !355)
!355 = distinct !DILexicalBlock(scope: !302, file: !3, line: 103, column: 6)
!356 = !DILocation(line: 103, column: 15, scope: !355)
!357 = !DILocation(line: 103, column: 21, scope: !355)
!358 = !DILocation(line: 103, column: 6, scope: !302)
!359 = !DILocation(line: 104, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !355, file: !3, line: 103, column: 26)
!361 = !DILocation(line: 104, column: 12, scope: !360)
!362 = !DILocation(line: 104, column: 17, scope: !360)
!363 = !DILocation(line: 105, column: 10, scope: !360)
!364 = !DILocation(line: 106, column: 2, scope: !360)
!365 = !DILocation(line: 107, column: 15, scope: !302)
!366 = !DILocation(line: 107, column: 24, scope: !302)
!367 = !DILocation(line: 107, column: 2, scope: !302)
!368 = !DILocation(line: 108, column: 9, scope: !302)
!369 = !DILocation(line: 108, column: 2, scope: !302)
!370 = !DILocation(line: 109, column: 1, scope: !302)
!371 = distinct !DISubprogram(name: "lockref_put_return", scope: !3, file: !3, line: 119, type: !232, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !372)
!372 = !{!373, !374, !376, !377, !379, !382, !383, !386, !387, !388, !389}
!373 = !DILocalVariable(name: "lockref", arg: 1, scope: !371, file: !3, line: 119, type: !59)
!374 = !DILocalVariable(name: "retry", scope: !375, file: !3, line: 121, type: !27)
!375 = distinct !DILexicalBlock(scope: !371, file: !3, line: 121, column: 2)
!376 = !DILocalVariable(name: "old", scope: !375, file: !3, line: 121, type: !60)
!377 = !DILocalVariable(name: "new", scope: !378, file: !3, line: 121, type: !60)
!378 = distinct !DILexicalBlock(scope: !375, file: !3, line: 121, column: 2)
!379 = !DILocalVariable(name: "__ai_ptr", scope: !380, file: !3, line: 121, type: !16)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 121, column: 2)
!381 = distinct !DILexicalBlock(scope: !378, file: !3, line: 121, column: 2)
!382 = !DILocalVariable(name: "__ai_oldp", scope: !380, file: !3, line: 121, type: !16)
!383 = !DILocalVariable(name: "success", scope: !384, file: !3, line: 121, type: !127)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 121, column: 2)
!385 = distinct !DILexicalBlock(scope: !380, file: !3, line: 121, column: 2)
!386 = !DILocalVariable(name: "_old", scope: !384, file: !3, line: 121, type: !16)
!387 = !DILocalVariable(name: "__old", scope: !384, file: !3, line: 121, type: !17)
!388 = !DILocalVariable(name: "__new", scope: !384, file: !3, line: 121, type: !17)
!389 = !DILocalVariable(name: "__ptr", scope: !384, file: !3, line: 121, type: !19)
!390 = !DILocation(line: 119, column: 40, scope: !371)
!391 = !DILocation(line: 121, column: 2, scope: !371)
!392 = !DILocation(line: 121, column: 2, scope: !375)
!393 = !DILocation(line: 121, column: 2, scope: !394)
!394 = distinct !DILexicalBlock(scope: !375, file: !3, line: 121, column: 2)
!395 = !DILocation(line: 121, column: 2, scope: !396)
!396 = distinct !DILexicalBlock(scope: !375, file: !3, line: 121, column: 2)
!397 = !DILocation(line: 121, column: 2, scope: !398)
!398 = distinct !DILexicalBlock(scope: !396, file: !3, line: 121, column: 2)
!399 = !DILocation(line: 121, column: 2, scope: !378)
!400 = !DILocation(line: 121, column: 2, scope: !401)
!401 = distinct !DILexicalBlock(scope: !378, file: !3, line: 121, column: 2)
!402 = !DILocation(line: 121, column: 2, scope: !380)
!403 = !DILocation(line: 121, column: 2, scope: !385)
!404 = !DILocation(line: 121, column: 2, scope: !405)
!405 = distinct !DILexicalBlock(scope: !385, file: !3, line: 121, column: 2)
!406 = !DILocation(line: 121, column: 2, scope: !384)
!407 = !{i64 2149794041, i64 2149794080, i64 2149794101, i64 2149794138, i64 2149794161, i64 2149794170, i64 2149794209}
!408 = !DILocation(line: 121, column: 2, scope: !409)
!409 = distinct !DILexicalBlock(scope: !384, file: !3, line: 121, column: 2)
!410 = !DILocation(line: 121, column: 2, scope: !381)
!411 = !DILocation(line: 121, column: 2, scope: !412)
!412 = distinct !DILexicalBlock(scope: !381, file: !3, line: 121, column: 2)
!413 = !DILocation(line: 121, column: 2, scope: !414)
!414 = distinct !DILexicalBlock(scope: !378, file: !3, line: 121, column: 2)
!415 = distinct !{!415, !392, !392, !159, !160}
!416 = !DILocation(line: 128, column: 2, scope: !371)
!417 = !DILocation(line: 129, column: 1, scope: !371)
!418 = distinct !DISubprogram(name: "lockref_put_or_lock", scope: !3, file: !3, line: 137, type: !232, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!419 = !{!420, !421, !423, !424, !426, !429, !430, !433, !434, !435, !436}
!420 = !DILocalVariable(name: "lockref", arg: 1, scope: !418, file: !3, line: 137, type: !59)
!421 = !DILocalVariable(name: "retry", scope: !422, file: !3, line: 139, type: !27)
!422 = distinct !DILexicalBlock(scope: !418, file: !3, line: 139, column: 2)
!423 = !DILocalVariable(name: "old", scope: !422, file: !3, line: 139, type: !60)
!424 = !DILocalVariable(name: "new", scope: !425, file: !3, line: 139, type: !60)
!425 = distinct !DILexicalBlock(scope: !422, file: !3, line: 139, column: 2)
!426 = !DILocalVariable(name: "__ai_ptr", scope: !427, file: !3, line: 139, type: !16)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 139, column: 2)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 139, column: 2)
!429 = !DILocalVariable(name: "__ai_oldp", scope: !427, file: !3, line: 139, type: !16)
!430 = !DILocalVariable(name: "success", scope: !431, file: !3, line: 139, type: !127)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 139, column: 2)
!432 = distinct !DILexicalBlock(scope: !427, file: !3, line: 139, column: 2)
!433 = !DILocalVariable(name: "_old", scope: !431, file: !3, line: 139, type: !16)
!434 = !DILocalVariable(name: "__old", scope: !431, file: !3, line: 139, type: !17)
!435 = !DILocalVariable(name: "__new", scope: !431, file: !3, line: 139, type: !17)
!436 = !DILocalVariable(name: "__ptr", scope: !431, file: !3, line: 139, type: !19)
!437 = !DILocation(line: 137, column: 41, scope: !418)
!438 = !DILocation(line: 139, column: 2, scope: !418)
!439 = !DILocation(line: 139, column: 2, scope: !422)
!440 = !DILocation(line: 139, column: 2, scope: !441)
!441 = distinct !DILexicalBlock(scope: !422, file: !3, line: 139, column: 2)
!442 = !DILocation(line: 139, column: 2, scope: !443)
!443 = distinct !DILexicalBlock(scope: !422, file: !3, line: 139, column: 2)
!444 = !DILocation(line: 139, column: 2, scope: !445)
!445 = distinct !DILexicalBlock(scope: !443, file: !3, line: 139, column: 2)
!446 = !DILocation(line: 139, column: 2, scope: !425)
!447 = !DILocation(line: 139, column: 2, scope: !448)
!448 = distinct !DILexicalBlock(scope: !425, file: !3, line: 139, column: 2)
!449 = !DILocation(line: 139, column: 2, scope: !427)
!450 = !DILocation(line: 139, column: 2, scope: !432)
!451 = !DILocation(line: 139, column: 2, scope: !452)
!452 = distinct !DILexicalBlock(scope: !432, file: !3, line: 139, column: 2)
!453 = !DILocation(line: 139, column: 2, scope: !431)
!454 = !{i64 2149808743, i64 2149808782, i64 2149808803, i64 2149808840, i64 2149808863, i64 2149808872, i64 2149808911}
!455 = !DILocation(line: 139, column: 2, scope: !456)
!456 = distinct !DILexicalBlock(scope: !431, file: !3, line: 139, column: 2)
!457 = !DILocation(line: 139, column: 2, scope: !428)
!458 = !DILocation(line: 139, column: 2, scope: !459)
!459 = distinct !DILexicalBlock(scope: !428, file: !3, line: 139, column: 2)
!460 = !DILocation(line: 139, column: 2, scope: !461)
!461 = distinct !DILexicalBlock(scope: !425, file: !3, line: 139, column: 2)
!462 = distinct !{!462, !439, !439, !159, !160}
!463 = !DILocation(line: 147, column: 13, scope: !418)
!464 = !DILocation(line: 147, column: 22, scope: !418)
!465 = !DILocation(line: 147, column: 2, scope: !418)
!466 = !DILocation(line: 148, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !418, file: !3, line: 148, column: 6)
!468 = !DILocation(line: 148, column: 15, scope: !467)
!469 = !DILocation(line: 148, column: 21, scope: !467)
!470 = !DILocation(line: 148, column: 6, scope: !418)
!471 = !DILocation(line: 149, column: 3, scope: !467)
!472 = !DILocation(line: 150, column: 2, scope: !418)
!473 = !DILocation(line: 150, column: 11, scope: !418)
!474 = !DILocation(line: 150, column: 16, scope: !418)
!475 = !DILocation(line: 151, column: 15, scope: !418)
!476 = !DILocation(line: 151, column: 24, scope: !418)
!477 = !DILocation(line: 151, column: 2, scope: !418)
!478 = !DILocation(line: 152, column: 2, scope: !418)
!479 = !DILocation(line: 153, column: 1, scope: !418)
!480 = distinct !DISubprogram(name: "lockref_mark_dead", scope: !3, file: !3, line: 160, type: !57, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!481 = !{!482}
!482 = !DILocalVariable(name: "lockref", arg: 1, scope: !480, file: !3, line: 160, type: !59)
!483 = !DILocation(line: 160, column: 40, scope: !480)
!484 = !DILocation(line: 162, column: 2, scope: !480)
!485 = !DILocation(line: 162, column: 2, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 162, column: 2)
!487 = distinct !DILexicalBlock(scope: !480, file: !3, line: 162, column: 2)
!488 = !DILocation(line: 162, column: 2, scope: !487)
!489 = !DILocation(line: 162, column: 2, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 162, column: 2)
!491 = !DILocation(line: 162, column: 2, scope: !492)
!492 = distinct !DILexicalBlock(scope: !490, file: !3, line: 162, column: 2)
!493 = !DILocation(line: 162, column: 2, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !3, line: 162, column: 2)
!495 = !{i64 2149811791, i64 2149811820, i64 2149811866, i64 2149811924, i64 2149811978, i64 2149812032, i64 2149812087, i64 2149812118}
!496 = !DILocation(line: 163, column: 2, scope: !480)
!497 = !DILocation(line: 163, column: 11, scope: !480)
!498 = !DILocation(line: 163, column: 17, scope: !480)
!499 = !DILocation(line: 164, column: 1, scope: !480)
!500 = distinct !DISubprogram(name: "queued_spin_is_locked", scope: !172, file: !172, line: 51, type: !501, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!501 = !DISubroutineType(types: !502)
!502 = !{!27, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!504 = !{!505}
!505 = !DILocalVariable(name: "lock", arg: 1, scope: !500, file: !172, line: 51, type: !503)
!506 = !DILocation(line: 51, column: 68, scope: !500)
!507 = !DILocation(line: 57, column: 22, scope: !500)
!508 = !DILocation(line: 57, column: 28, scope: !500)
!509 = !DILocation(line: 57, column: 9, scope: !500)
!510 = !DILocation(line: 57, column: 2, scope: !500)
!511 = distinct !DISubprogram(name: "lockref_get_not_dead", scope: !3, file: !3, line: 172, type: !232, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!512 = !{!513, !514, !515, !517, !518, !520, !523, !524, !527, !528, !529, !530}
!513 = !DILocalVariable(name: "lockref", arg: 1, scope: !511, file: !3, line: 172, type: !59)
!514 = !DILocalVariable(name: "retval", scope: !511, file: !3, line: 174, type: !27)
!515 = !DILocalVariable(name: "retry", scope: !516, file: !3, line: 176, type: !27)
!516 = distinct !DILexicalBlock(scope: !511, file: !3, line: 176, column: 2)
!517 = !DILocalVariable(name: "old", scope: !516, file: !3, line: 176, type: !60)
!518 = !DILocalVariable(name: "new", scope: !519, file: !3, line: 176, type: !60)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 176, column: 2)
!520 = !DILocalVariable(name: "__ai_ptr", scope: !521, file: !3, line: 176, type: !16)
!521 = distinct !DILexicalBlock(scope: !522, file: !3, line: 176, column: 2)
!522 = distinct !DILexicalBlock(scope: !519, file: !3, line: 176, column: 2)
!523 = !DILocalVariable(name: "__ai_oldp", scope: !521, file: !3, line: 176, type: !16)
!524 = !DILocalVariable(name: "success", scope: !525, file: !3, line: 176, type: !127)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 176, column: 2)
!526 = distinct !DILexicalBlock(scope: !521, file: !3, line: 176, column: 2)
!527 = !DILocalVariable(name: "_old", scope: !525, file: !3, line: 176, type: !16)
!528 = !DILocalVariable(name: "__old", scope: !525, file: !3, line: 176, type: !17)
!529 = !DILocalVariable(name: "__new", scope: !525, file: !3, line: 176, type: !17)
!530 = !DILocalVariable(name: "__ptr", scope: !525, file: !3, line: 176, type: !19)
!531 = !DILocation(line: 172, column: 42, scope: !511)
!532 = !DILocation(line: 174, column: 2, scope: !511)
!533 = !DILocation(line: 174, column: 6, scope: !511)
!534 = !DILocation(line: 176, column: 2, scope: !511)
!535 = !DILocation(line: 176, column: 2, scope: !516)
!536 = !DILocation(line: 176, column: 2, scope: !537)
!537 = distinct !DILexicalBlock(scope: !516, file: !3, line: 176, column: 2)
!538 = !DILocation(line: 176, column: 2, scope: !539)
!539 = distinct !DILexicalBlock(scope: !516, file: !3, line: 176, column: 2)
!540 = !DILocation(line: 176, column: 2, scope: !541)
!541 = distinct !DILexicalBlock(scope: !539, file: !3, line: 176, column: 2)
!542 = !DILocation(line: 176, column: 2, scope: !519)
!543 = !DILocation(line: 176, column: 2, scope: !544)
!544 = distinct !DILexicalBlock(scope: !519, file: !3, line: 176, column: 2)
!545 = !DILocation(line: 176, column: 2, scope: !521)
!546 = !DILocation(line: 176, column: 2, scope: !526)
!547 = !DILocation(line: 176, column: 2, scope: !548)
!548 = distinct !DILexicalBlock(scope: !526, file: !3, line: 176, column: 2)
!549 = !DILocation(line: 176, column: 2, scope: !525)
!550 = !{i64 2149826579, i64 2149826618, i64 2149826639, i64 2149826676, i64 2149826699, i64 2149826708, i64 2149826747}
!551 = !DILocation(line: 176, column: 2, scope: !552)
!552 = distinct !DILexicalBlock(scope: !525, file: !3, line: 176, column: 2)
!553 = !DILocation(line: 176, column: 2, scope: !522)
!554 = !DILocation(line: 176, column: 2, scope: !555)
!555 = distinct !DILexicalBlock(scope: !522, file: !3, line: 176, column: 2)
!556 = !DILocation(line: 176, column: 2, scope: !557)
!557 = distinct !DILexicalBlock(scope: !519, file: !3, line: 176, column: 2)
!558 = distinct !{!558, !535, !535, !159, !160}
!559 = !DILocation(line: 184, column: 13, scope: !511)
!560 = !DILocation(line: 184, column: 22, scope: !511)
!561 = !DILocation(line: 184, column: 2, scope: !511)
!562 = !DILocation(line: 185, column: 9, scope: !511)
!563 = !DILocation(line: 186, column: 6, scope: !564)
!564 = distinct !DILexicalBlock(scope: !511, file: !3, line: 186, column: 6)
!565 = !DILocation(line: 186, column: 15, scope: !564)
!566 = !DILocation(line: 186, column: 21, scope: !564)
!567 = !DILocation(line: 186, column: 6, scope: !511)
!568 = !DILocation(line: 187, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !3, line: 186, column: 27)
!570 = !DILocation(line: 187, column: 12, scope: !569)
!571 = !DILocation(line: 187, column: 17, scope: !569)
!572 = !DILocation(line: 188, column: 10, scope: !569)
!573 = !DILocation(line: 189, column: 2, scope: !569)
!574 = !DILocation(line: 190, column: 15, scope: !511)
!575 = !DILocation(line: 190, column: 24, scope: !511)
!576 = !DILocation(line: 190, column: 2, scope: !511)
!577 = !DILocation(line: 191, column: 9, scope: !511)
!578 = !DILocation(line: 191, column: 2, scope: !511)
!579 = !DILocation(line: 192, column: 1, scope: !511)
!580 = distinct !DISubprogram(name: "kasan_check_write", scope: !581, file: !581, line: 44, type: !582, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !584)
!581 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!582 = !DISubroutineType(types: !583)
!583 = !{!127, !186, !7}
!584 = !{!585, !586}
!585 = !DILocalVariable(name: "p", arg: 1, scope: !580, file: !581, line: 44, type: !186)
!586 = !DILocalVariable(name: "size", arg: 2, scope: !580, file: !581, line: 44, type: !7)
!587 = !DILocation(line: 44, column: 59, scope: !580)
!588 = !DILocation(line: 44, column: 75, scope: !580)
!589 = !DILocation(line: 46, column: 2, scope: !580)
!590 = distinct !DISubprogram(name: "kcsan_check_access", scope: !591, file: !591, line: 229, type: !592, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!591 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!592 = !DISubroutineType(types: !593)
!593 = !{null, !186, !189, !27}
!594 = !{!595, !596, !597}
!595 = !DILocalVariable(name: "ptr", arg: 1, scope: !590, file: !591, line: 229, type: !186)
!596 = !DILocalVariable(name: "size", arg: 2, scope: !590, file: !591, line: 229, type: !189)
!597 = !DILocalVariable(name: "type", arg: 3, scope: !590, file: !591, line: 230, type: !27)
!598 = !DILocation(line: 229, column: 60, scope: !590)
!599 = !DILocation(line: 229, column: 72, scope: !590)
!600 = !DILocation(line: 230, column: 15, scope: !590)
!601 = !DILocation(line: 230, column: 23, scope: !590)
!602 = !DISubprogram(name: "_raw_spin_lock", scope: !603, file: !603, line: 22, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!604 = !DISubroutineType(types: !605)
!605 = !{null, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !80, line: 23, baseType: !79)
!608 = !DISubprogram(name: "_raw_spin_unlock", scope: !603, file: !603, line: 39, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = distinct !DISubprogram(name: "atomic_read", scope: !610, file: !610, line: 30, type: !611, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!610 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!611 = !DISubroutineType(types: !612)
!612 = !{!27, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!615 = !{!616}
!616 = !DILocalVariable(name: "v", arg: 1, scope: !609, file: !610, line: 30, type: !613)
!617 = !DILocation(line: 30, column: 29, scope: !609)
!618 = !DILocation(line: 32, column: 25, scope: !609)
!619 = !DILocation(line: 32, column: 2, scope: !609)
!620 = !DILocation(line: 33, column: 25, scope: !609)
!621 = !DILocation(line: 33, column: 9, scope: !609)
!622 = !DILocation(line: 33, column: 2, scope: !609)
!623 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !183, file: !183, line: 66, type: !184, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !624)
!624 = !{!625, !626}
!625 = !DILocalVariable(name: "v", arg: 1, scope: !623, file: !183, line: 66, type: !186)
!626 = !DILocalVariable(name: "size", arg: 2, scope: !623, file: !183, line: 66, type: !189)
!627 = !DILocation(line: 66, column: 73, scope: !623)
!628 = !DILocation(line: 66, column: 83, scope: !623)
!629 = !DILocation(line: 68, column: 19, scope: !623)
!630 = !DILocation(line: 68, column: 22, scope: !623)
!631 = !DILocation(line: 68, column: 2, scope: !623)
!632 = !DILocation(line: 69, column: 2, scope: !623)
!633 = !DILocation(line: 70, column: 1, scope: !623)
!634 = distinct !DISubprogram(name: "raw_atomic_read", scope: !635, file: !635, line: 442, type: !611, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!635 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!636 = !{!637}
!637 = !DILocalVariable(name: "v", arg: 1, scope: !634, file: !635, line: 442, type: !613)
!638 = !DILocation(line: 442, column: 33, scope: !634)
!639 = !DILocation(line: 444, column: 26, scope: !634)
!640 = !DILocation(line: 444, column: 9, scope: !634)
!641 = !DILocation(line: 444, column: 2, scope: !634)
!642 = distinct !DISubprogram(name: "kasan_check_read", scope: !581, file: !581, line: 40, type: !582, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!643 = !{!644, !645}
!644 = !DILocalVariable(name: "p", arg: 1, scope: !642, file: !581, line: 40, type: !186)
!645 = !DILocalVariable(name: "size", arg: 2, scope: !642, file: !581, line: 40, type: !7)
!646 = !DILocation(line: 40, column: 58, scope: !642)
!647 = !DILocation(line: 40, column: 74, scope: !642)
!648 = !DILocation(line: 42, column: 2, scope: !642)
!649 = distinct !DISubprogram(name: "arch_atomic_read", scope: !650, file: !650, line: 17, type: !611, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !651)
!650 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!651 = !{!652}
!652 = !DILocalVariable(name: "v", arg: 1, scope: !649, file: !650, line: 17, type: !613)
!653 = !DILocation(line: 17, column: 61, scope: !649)
!654 = !DILocation(line: 23, column: 9, scope: !649)
!655 = !DILocation(line: 23, column: 2, scope: !649)
