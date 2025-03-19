; ModuleID = 'lib/llist.c'
source_filename = "lib/llist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_llist_add_batch: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad llist_add_batch ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_llist_del_first: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad llist_del_first ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_llist_reverse_order: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad llist_reverse_order ; .previous"

%struct.llist_head = type { ptr }
%struct.llist_node = type { ptr }

@__UNIQUE_ID___addressable_llist_add_batch13 = internal global ptr @llist_add_batch, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_llist_del_first17 = internal global ptr @llist_del_first, section ".discard.addressable", align 8, !dbg !30
@__UNIQUE_ID___addressable_llist_reverse_order18 = internal global ptr @llist_reverse_order, section ".discard.addressable", align 8, !dbg !32
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_llist_add_batch13, ptr @__UNIQUE_ID___addressable_llist_del_first17, ptr @__UNIQUE_ID___addressable_llist_reverse_order18], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @llist_add_batch(ptr noundef %new_first, ptr noundef %new_last, ptr noundef %head) #0 align 16 !dbg !43 {
entry:
  %new_first.addr = alloca ptr, align 8
  %new_last.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp8 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp13 = alloca i64, align 8
  store ptr %new_first, ptr %new_first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_first.addr, metadata !54, metadata !DIExpression()), !dbg !67
  store ptr %new_last, ptr %new_last.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_last.addr, metadata !55, metadata !DIExpression()), !dbg !68
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !56, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #7, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %first, metadata !57, metadata !DIExpression()), !dbg !71
  br label %do.body, !dbg !72

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !74

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !74

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %head.addr, align 8, !dbg !72
  %first1 = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !72
  %1 = load volatile ptr, ptr %first1, align 8, !dbg !72
  store ptr %1, ptr %tmp, align 8, !dbg !74
  %2 = load ptr, ptr %tmp, align 8, !dbg !72
  store ptr %2, ptr %first, align 8, !dbg !71
  br label %do.body2, !dbg !76

do.body2:                                         ; preds = %if.end, %do.end
  %3 = load ptr, ptr %first, align 8, !dbg !77
  %4 = load ptr, ptr %new_last.addr, align 8, !dbg !79
  %next = getelementptr inbounds %struct.llist_node, ptr %4, i32 0, i32 0, !dbg !80
  store ptr %3, ptr %next, align 8, !dbg !81
  br label %do.cond3, !dbg !82

do.cond3:                                         ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #7, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !58, metadata !DIExpression()), !dbg !83
  %5 = load ptr, ptr %head.addr, align 8, !dbg !83
  %first4 = getelementptr inbounds %struct.llist_head, ptr %5, i32 0, i32 0, !dbg !83
  store ptr %first4, ptr %__ai_ptr, align 8, !dbg !83
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #7, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !60, metadata !DIExpression()), !dbg !83
  store ptr %first, ptr %__ai_oldp, align 8, !dbg !83
  br label %do.body5, !dbg !83

do.body5:                                         ; preds = %do.cond3
  br label %do.cond6, !dbg !84

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !84

do.end7:                                          ; preds = %do.cond6
  %6 = load ptr, ptr %__ai_ptr, align 8, !dbg !83
  call void @instrument_atomic_read_write(ptr noundef %6, i64 noundef 8) #8, !dbg !83
  %7 = load ptr, ptr %__ai_oldp, align 8, !dbg !83
  call void @instrument_read_write(ptr noundef %7, i64 noundef 8) #8, !dbg !83
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #7, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %success, metadata !61, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #7, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !63, metadata !DIExpression()), !dbg !86
  %8 = load ptr, ptr %__ai_oldp, align 8, !dbg !86
  store ptr %8, ptr %_old, align 8, !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #7, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !64, metadata !DIExpression()), !dbg !86
  %9 = load ptr, ptr %_old, align 8, !dbg !86
  %10 = load ptr, ptr %9, align 8, !dbg !86
  store ptr %10, ptr %__old, align 8, !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #7, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !65, metadata !DIExpression()), !dbg !86
  %11 = load ptr, ptr %new_first.addr, align 8, !dbg !86
  store ptr %11, ptr %__new, align 8, !dbg !86
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #7, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !66, metadata !DIExpression()), !dbg !86
  %12 = load ptr, ptr %__ai_ptr, align 8, !dbg !86
  store ptr %12, ptr %__ptr, align 8, !dbg !86
  %13 = load ptr, ptr %__ptr, align 8, !dbg !86
  %14 = load ptr, ptr %__old, align 8, !dbg !86
  %15 = load ptr, ptr %__new, align 8, !dbg !86
  %16 = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %13, ptr %15, ptr elementtype(i64) %13, ptr %14) #7, !dbg !86, !srcloc !87
  %asmresult = extractvalue { i8, ptr } %16, 0, !dbg !86
  %asmresult9 = extractvalue { i8, ptr } %16, 1, !dbg !86
  %17 = icmp ult i8 %asmresult, 2, !dbg !86
  call void @llvm.assume(i1 %17), !dbg !86
  store i8 %asmresult, ptr %success, align 1, !dbg !86
  store ptr %asmresult9, ptr %__old, align 8, !dbg !86
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #7, !dbg !86
  %18 = load i8, ptr %success, align 1, !dbg !88, !range !90, !noundef !91
  %tobool = trunc i8 %18 to i1, !dbg !88
  %lnot = xor i1 %tobool, true, !dbg !88
  %lnot10 = xor i1 %lnot, true, !dbg !88
  %lnot11 = xor i1 %lnot10, true, !dbg !88
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !88
  %conv = sext i32 %lnot.ext to i64, !dbg !88
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !88
  %tobool12 = icmp ne i64 %expval, 0, !dbg !88
  br i1 %tobool12, label %if.then, label %if.end, !dbg !86

if.then:                                          ; preds = %do.end7
  %19 = load ptr, ptr %__old, align 8, !dbg !88
  %20 = load ptr, ptr %_old, align 8, !dbg !88
  store ptr %19, ptr %20, align 8, !dbg !88
  br label %if.end, !dbg !88

if.end:                                           ; preds = %if.then, %do.end7
  %21 = load i8, ptr %success, align 1, !dbg !86, !range !90, !noundef !91
  %tobool14 = trunc i8 %21 to i1, !dbg !86
  %lnot15 = xor i1 %tobool14, true, !dbg !86
  %lnot17 = xor i1 %lnot15, true, !dbg !86
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !86
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !86
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 1), !dbg !86
  store i64 %expval20, ptr %tmp13, align 8, !dbg !88
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #7, !dbg !83
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #7, !dbg !83
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #7, !dbg !83
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #7, !dbg !83
  %22 = load i64, ptr %tmp13, align 8, !dbg !86
  store i64 %22, ptr %tmp8, align 8, !dbg !83
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #7, !dbg !92
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #7, !dbg !92
  %23 = load i64, ptr %tmp8, align 8, !dbg !83
  %tobool21 = icmp ne i64 %23, 0, !dbg !93
  %lnot22 = xor i1 %tobool21, true, !dbg !93
  br i1 %lnot22, label %do.body2, label %do.end24, !dbg !82, !llvm.loop !94

do.end24:                                         ; preds = %if.end
  %24 = load ptr, ptr %first, align 8, !dbg !98
  %tobool25 = icmp ne ptr %24, null, !dbg !99
  %lnot26 = xor i1 %tobool25, true, !dbg !99
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #7, !dbg !100
  ret i1 %lnot26, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !102 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !115, metadata !DIExpression()), !dbg !117
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !116, metadata !DIExpression()), !dbg !118
  %0 = load ptr, ptr %v.addr, align 8, !dbg !119
  %1 = load i64, ptr %size.addr, align 8, !dbg !120
  %conv = trunc i64 %1 to i32, !dbg !120
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !121
  %2 = load ptr, ptr %v.addr, align 8, !dbg !122
  %3 = load i64, ptr %size.addr, align 8, !dbg !122
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !122
  ret void, !dbg !123
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !124 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !126, metadata !DIExpression()), !dbg !128
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !127, metadata !DIExpression()), !dbg !129
  %0 = load ptr, ptr %v.addr, align 8, !dbg !130
  %1 = load i64, ptr %size.addr, align 8, !dbg !131
  %conv = trunc i64 %1 to i32, !dbg !131
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !132
  %2 = load ptr, ptr %v.addr, align 8, !dbg !133
  %3 = load i64, ptr %size.addr, align 8, !dbg !133
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 3) #8, !dbg !133
  ret void, !dbg !134
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @llist_del_first(ptr noundef %head) #0 align 16 !dbg !135 {
entry:
  %retval = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %next = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp10 = alloca ptr, align 8
  %__ai_ptr = alloca ptr, align 8
  %__ai_oldp = alloca ptr, align 8
  %tmp17 = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca ptr, align 8
  %__new = alloca ptr, align 8
  %__ptr = alloca ptr, align 8
  %tmp24 = alloca i64, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !139, metadata !DIExpression()), !dbg !153
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #7, !dbg !154
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !140, metadata !DIExpression()), !dbg !155
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #7, !dbg !154
  call void @llvm.dbg.declare(metadata ptr %next, metadata !141, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #7, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !142, metadata !DIExpression()), !dbg !157
  br label %do.body, !dbg !158

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !160

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !160

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %head.addr, align 8, !dbg !158
  %first = getelementptr inbounds %struct.llist_head, ptr %0, i32 0, i32 0, !dbg !158
  %1 = load volatile ptr, ptr %first, align 8, !dbg !158
  store ptr %1, ptr %tmp, align 8, !dbg !160
  %2 = load ptr, ptr %tmp, align 8, !dbg !158
  store ptr %2, ptr %___p1, align 8, !dbg !157
  br label %do.body2, !dbg !157

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !162

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !162

do.end4:                                          ; preds = %do.cond3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !157, !srcloc !164
  %3 = load ptr, ptr %___p1, align 8, !dbg !157
  store ptr %3, ptr %tmp5, align 8, !dbg !157
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #7, !dbg !165
  %4 = load ptr, ptr %tmp5, align 8, !dbg !157
  store ptr %4, ptr %entry1, align 8, !dbg !166
  br label %do.body6, !dbg !167

do.body6:                                         ; preds = %if.end23, %do.end4
  %5 = load ptr, ptr %entry1, align 8, !dbg !168
  %cmp = icmp eq ptr %5, null, !dbg !171
  br i1 %cmp, label %if.then, label %if.end, !dbg !172

if.then:                                          ; preds = %do.body6
  store ptr null, ptr %retval, align 8, !dbg !173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !173

if.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !174

do.body7:                                         ; preds = %if.end
  br label %do.cond8, !dbg !176

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !176

do.end9:                                          ; preds = %do.cond8
  %6 = load ptr, ptr %entry1, align 8, !dbg !174
  %next11 = getelementptr inbounds %struct.llist_node, ptr %6, i32 0, i32 0, !dbg !174
  %7 = load volatile ptr, ptr %next11, align 8, !dbg !174
  store ptr %7, ptr %tmp10, align 8, !dbg !176
  %8 = load ptr, ptr %tmp10, align 8, !dbg !174
  store ptr %8, ptr %next, align 8, !dbg !178
  br label %do.cond12, !dbg !179

do.cond12:                                        ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #7, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !144, metadata !DIExpression()), !dbg !180
  %9 = load ptr, ptr %head.addr, align 8, !dbg !180
  %first13 = getelementptr inbounds %struct.llist_head, ptr %9, i32 0, i32 0, !dbg !180
  store ptr %first13, ptr %__ai_ptr, align 8, !dbg !180
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_oldp) #7, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %__ai_oldp, metadata !146, metadata !DIExpression()), !dbg !180
  store ptr %entry1, ptr %__ai_oldp, align 8, !dbg !180
  br label %do.body14, !dbg !180

do.body14:                                        ; preds = %do.cond12
  br label %do.cond15, !dbg !181

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !181

do.end16:                                         ; preds = %do.cond15
  %10 = load ptr, ptr %__ai_ptr, align 8, !dbg !180
  call void @instrument_atomic_read_write(ptr noundef %10, i64 noundef 8) #8, !dbg !180
  %11 = load ptr, ptr %__ai_oldp, align 8, !dbg !180
  call void @instrument_read_write(ptr noundef %11, i64 noundef 8) #8, !dbg !180
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #7, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %success, metadata !147, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #7, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !149, metadata !DIExpression()), !dbg !183
  %12 = load ptr, ptr %__ai_oldp, align 8, !dbg !183
  store ptr %12, ptr %_old, align 8, !dbg !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #7, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !150, metadata !DIExpression()), !dbg !183
  %13 = load ptr, ptr %_old, align 8, !dbg !183
  %14 = load ptr, ptr %13, align 8, !dbg !183
  store ptr %14, ptr %__old, align 8, !dbg !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #7, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !151, metadata !DIExpression()), !dbg !183
  %15 = load ptr, ptr %next, align 8, !dbg !183
  store ptr %15, ptr %__new, align 8, !dbg !183
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #7, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !152, metadata !DIExpression()), !dbg !183
  %16 = load ptr, ptr %__ai_ptr, align 8, !dbg !183
  store ptr %16, ptr %__ptr, align 8, !dbg !183
  %17 = load ptr, ptr %__ptr, align 8, !dbg !183
  %18 = load ptr, ptr %__old, align 8, !dbg !183
  %19 = load ptr, ptr %__new, align 8, !dbg !183
  %20 = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %17, ptr %19, ptr elementtype(i64) %17, ptr %18) #7, !dbg !183, !srcloc !184
  %asmresult = extractvalue { i8, ptr } %20, 0, !dbg !183
  %asmresult18 = extractvalue { i8, ptr } %20, 1, !dbg !183
  %21 = icmp ult i8 %asmresult, 2, !dbg !183
  call void @llvm.assume(i1 %21), !dbg !183
  store i8 %asmresult, ptr %success, align 1, !dbg !183
  store ptr %asmresult18, ptr %__old, align 8, !dbg !183
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #7, !dbg !183
  %22 = load i8, ptr %success, align 1, !dbg !185, !range !90, !noundef !91
  %tobool = trunc i8 %22 to i1, !dbg !185
  %lnot = xor i1 %tobool, true, !dbg !185
  %lnot19 = xor i1 %lnot, true, !dbg !185
  %lnot20 = xor i1 %lnot19, true, !dbg !185
  %lnot.ext = zext i1 %lnot20 to i32, !dbg !185
  %conv = sext i32 %lnot.ext to i64, !dbg !185
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !185
  %tobool21 = icmp ne i64 %expval, 0, !dbg !185
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !183

if.then22:                                        ; preds = %do.end16
  %23 = load ptr, ptr %__old, align 8, !dbg !185
  %24 = load ptr, ptr %_old, align 8, !dbg !185
  store ptr %23, ptr %24, align 8, !dbg !185
  br label %if.end23, !dbg !185

if.end23:                                         ; preds = %if.then22, %do.end16
  %25 = load i8, ptr %success, align 1, !dbg !183, !range !90, !noundef !91
  %tobool25 = trunc i8 %25 to i1, !dbg !183
  %lnot26 = xor i1 %tobool25, true, !dbg !183
  %lnot28 = xor i1 %lnot26, true, !dbg !183
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !183
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !183
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 1), !dbg !183
  store i64 %expval31, ptr %tmp24, align 8, !dbg !185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #7, !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #7, !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #7, !dbg !180
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #7, !dbg !180
  %26 = load i64, ptr %tmp24, align 8, !dbg !183
  store i64 %26, ptr %tmp17, align 8, !dbg !180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_oldp) #7, !dbg !187
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #7, !dbg !187
  %27 = load i64, ptr %tmp17, align 8, !dbg !180
  %tobool32 = icmp ne i64 %27, 0, !dbg !188
  %lnot33 = xor i1 %tobool32, true, !dbg !188
  br i1 %lnot33, label %do.body6, label %do.end35, !dbg !179, !llvm.loop !189

do.end35:                                         ; preds = %if.end23
  %28 = load ptr, ptr %entry1, align 8, !dbg !191
  store ptr %28, ptr %retval, align 8, !dbg !192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !192

cleanup:                                          ; preds = %do.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #7, !dbg !193
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #7, !dbg !193
  %29 = load ptr, ptr %retval, align 8, !dbg !193
  ret ptr %29, !dbg !193
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @llist_reverse_order(ptr noundef %head) #0 align 16 !dbg !194 {
entry:
  %head.addr = alloca ptr, align 8
  %new_head = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !198, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_head) #7, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %new_head, metadata !199, metadata !DIExpression()), !dbg !204
  store ptr null, ptr %new_head, align 8, !dbg !204
  br label %while.cond, !dbg !205

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %head.addr, align 8, !dbg !206
  %tobool = icmp ne ptr %0, null, !dbg !205
  br i1 %tobool, label %while.body, label %while.end, !dbg !205

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !200, metadata !DIExpression()), !dbg !208
  %1 = load ptr, ptr %head.addr, align 8, !dbg !209
  store ptr %1, ptr %tmp, align 8, !dbg !208
  %2 = load ptr, ptr %head.addr, align 8, !dbg !210
  %next = getelementptr inbounds %struct.llist_node, ptr %2, i32 0, i32 0, !dbg !211
  %3 = load ptr, ptr %next, align 8, !dbg !211
  store ptr %3, ptr %head.addr, align 8, !dbg !212
  %4 = load ptr, ptr %new_head, align 8, !dbg !213
  %5 = load ptr, ptr %tmp, align 8, !dbg !214
  %next1 = getelementptr inbounds %struct.llist_node, ptr %5, i32 0, i32 0, !dbg !215
  store ptr %4, ptr %next1, align 8, !dbg !216
  %6 = load ptr, ptr %tmp, align 8, !dbg !217
  store ptr %6, ptr %new_head, align 8, !dbg !218
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !219
  br label %while.cond, !dbg !205, !llvm.loop !220

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %new_head, align 8, !dbg !221
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_head) #7, !dbg !222
  ret ptr %7, !dbg !223
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !224 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !229, metadata !DIExpression()), !dbg !231
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !230, metadata !DIExpression()), !dbg !232
  ret i1 true, !dbg !233
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !234 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !240, metadata !DIExpression()), !dbg !243
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !241, metadata !DIExpression()), !dbg !244
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !242, metadata !DIExpression()), !dbg !245
  ret void, !dbg !246
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_llist_add_batch13", scope: !2, file: !3, line: 37, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.llist.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/llist\22 -D KBUILD_BASENAME=\22llist\22 -D KBUILD_MODNAME=\22llist\22 -D __KBUILD_MODNAME=kmod_llist -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/llist.ll lib/llist.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/llist.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "58516752fed4593e9114f206f963867c")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !20, !21, !28}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !17, line: 60, size: 64, elements: !18)
!17 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !16, file: !17, line: 61, baseType: !15, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !24, line: 23, baseType: !25)
!24 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !26, line: 31, baseType: !27)
!26 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!27 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !{!0, !30, !32}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_llist_del_first17", scope: !2, file: !3, line: 66, type: !28, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_llist_reverse_order18", scope: !2, file: !3, line: 88, type: !28, isLocal: true, isDefinition: true)
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 8, !"cf-protection-branch", i32 1}
!38 = !{i32 4, !"function_return_thunk_extern", i32 1}
!39 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!40 = !{i32 1, !"Code Model", i32 2}
!41 = !{i32 1, !"override-stack-alignment", i32 8}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = distinct !DISubprogram(name: "llist_add_batch", scope: !3, file: !3, line: 26, type: !44, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !15, !15, !49}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !47, line: 35, baseType: !48)
!47 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!48 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !17, line: 56, size: 64, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !50, file: !17, line: 57, baseType: !15, size: 64)
!53 = !{!54, !55, !56, !57, !58, !60, !61, !63, !64, !65, !66}
!54 = !DILocalVariable(name: "new_first", arg: 1, scope: !43, file: !3, line: 26, type: !15)
!55 = !DILocalVariable(name: "new_last", arg: 2, scope: !43, file: !3, line: 26, type: !15)
!56 = !DILocalVariable(name: "head", arg: 3, scope: !43, file: !3, line: 27, type: !49)
!57 = !DILocalVariable(name: "first", scope: !43, file: !3, line: 29, type: !15)
!58 = !DILocalVariable(name: "__ai_ptr", scope: !59, file: !3, line: 33, type: !20)
!59 = distinct !DILexicalBlock(scope: !43, file: !3, line: 33, column: 12)
!60 = !DILocalVariable(name: "__ai_oldp", scope: !59, file: !3, line: 33, type: !20)
!61 = !DILocalVariable(name: "success", scope: !62, file: !3, line: 33, type: !46)
!62 = distinct !DILexicalBlock(scope: !59, file: !3, line: 33, column: 12)
!63 = !DILocalVariable(name: "_old", scope: !62, file: !3, line: 33, type: !20)
!64 = !DILocalVariable(name: "__old", scope: !62, file: !3, line: 33, type: !15)
!65 = !DILocalVariable(name: "__new", scope: !62, file: !3, line: 33, type: !15)
!66 = !DILocalVariable(name: "__ptr", scope: !62, file: !3, line: 33, type: !21)
!67 = !DILocation(line: 26, column: 41, scope: !43)
!68 = !DILocation(line: 26, column: 71, scope: !43)
!69 = !DILocation(line: 27, column: 27, scope: !43)
!70 = !DILocation(line: 29, column: 2, scope: !43)
!71 = !DILocation(line: 29, column: 21, scope: !43)
!72 = !DILocation(line: 29, column: 29, scope: !73)
!73 = distinct !DILexicalBlock(scope: !43, file: !3, line: 29, column: 29)
!74 = !DILocation(line: 29, column: 29, scope: !75)
!75 = distinct !DILexicalBlock(scope: !73, file: !3, line: 29, column: 29)
!76 = !DILocation(line: 31, column: 2, scope: !43)
!77 = !DILocation(line: 32, column: 20, scope: !78)
!78 = distinct !DILexicalBlock(scope: !43, file: !3, line: 31, column: 5)
!79 = !DILocation(line: 32, column: 3, scope: !78)
!80 = !DILocation(line: 32, column: 13, scope: !78)
!81 = !DILocation(line: 32, column: 18, scope: !78)
!82 = !DILocation(line: 33, column: 2, scope: !78)
!83 = !DILocation(line: 33, column: 12, scope: !59)
!84 = !DILocation(line: 33, column: 12, scope: !85)
!85 = distinct !DILexicalBlock(scope: !59, file: !3, line: 33, column: 12)
!86 = !DILocation(line: 33, column: 12, scope: !62)
!87 = !{i64 2148589059, i64 2148589098, i64 2148589119, i64 2148589156, i64 2148589179, i64 2148589188, i64 2148589389}
!88 = !DILocation(line: 33, column: 12, scope: !89)
!89 = distinct !DILexicalBlock(scope: !62, file: !3, line: 33, column: 12)
!90 = !{i8 0, i8 2}
!91 = !{}
!92 = !DILocation(line: 33, column: 12, scope: !43)
!93 = !DILocation(line: 33, column: 11, scope: !43)
!94 = distinct !{!94, !76, !95, !96, !97}
!95 = !DILocation(line: 33, column: 56, scope: !43)
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !DILocation(line: 35, column: 10, scope: !43)
!99 = !DILocation(line: 35, column: 9, scope: !43)
!100 = !DILocation(line: 36, column: 1, scope: !43)
!101 = !DILocation(line: 35, column: 2, scope: !43)
!102 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !103, file: !103, line: 94, type: !104, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!103 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106, !109}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 61, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !111, line: 72, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !111, line: 16, baseType: !113)
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !{!115, !116}
!115 = !DILocalVariable(name: "v", arg: 1, scope: !102, file: !103, line: 94, type: !106)
!116 = !DILocalVariable(name: "size", arg: 2, scope: !102, file: !103, line: 94, type: !109)
!117 = !DILocation(line: 94, column: 79, scope: !102)
!118 = !DILocation(line: 94, column: 89, scope: !102)
!119 = !DILocation(line: 96, column: 20, scope: !102)
!120 = !DILocation(line: 96, column: 23, scope: !102)
!121 = !DILocation(line: 96, column: 2, scope: !102)
!122 = !DILocation(line: 97, column: 2, scope: !102)
!123 = !DILocation(line: 98, column: 1, scope: !102)
!124 = distinct !DISubprogram(name: "instrument_read_write", scope: !103, file: !103, line: 52, type: !104, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!125 = !{!126, !127}
!126 = !DILocalVariable(name: "v", arg: 1, scope: !124, file: !103, line: 52, type: !106)
!127 = !DILocalVariable(name: "size", arg: 2, scope: !124, file: !103, line: 52, type: !109)
!128 = !DILocation(line: 52, column: 72, scope: !124)
!129 = !DILocation(line: 52, column: 82, scope: !124)
!130 = !DILocation(line: 54, column: 20, scope: !124)
!131 = !DILocation(line: 54, column: 23, scope: !124)
!132 = !DILocation(line: 54, column: 2, scope: !124)
!133 = !DILocation(line: 55, column: 2, scope: !124)
!134 = !DILocation(line: 56, column: 1, scope: !124)
!135 = distinct !DISubprogram(name: "llist_del_first", scope: !3, file: !3, line: 53, type: !136, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!15, !49}
!138 = !{!139, !140, !141, !142, !144, !146, !147, !149, !150, !151, !152}
!139 = !DILocalVariable(name: "head", arg: 1, scope: !135, file: !3, line: 53, type: !49)
!140 = !DILocalVariable(name: "entry", scope: !135, file: !3, line: 55, type: !15)
!141 = !DILocalVariable(name: "next", scope: !135, file: !3, line: 55, type: !15)
!142 = !DILocalVariable(name: "___p1", scope: !143, file: !3, line: 57, type: !15)
!143 = distinct !DILexicalBlock(scope: !135, file: !3, line: 57, column: 10)
!144 = !DILocalVariable(name: "__ai_ptr", scope: !145, file: !3, line: 62, type: !20)
!145 = distinct !DILexicalBlock(scope: !135, file: !3, line: 62, column: 12)
!146 = !DILocalVariable(name: "__ai_oldp", scope: !145, file: !3, line: 62, type: !20)
!147 = !DILocalVariable(name: "success", scope: !148, file: !3, line: 62, type: !46)
!148 = distinct !DILexicalBlock(scope: !145, file: !3, line: 62, column: 12)
!149 = !DILocalVariable(name: "_old", scope: !148, file: !3, line: 62, type: !20)
!150 = !DILocalVariable(name: "__old", scope: !148, file: !3, line: 62, type: !15)
!151 = !DILocalVariable(name: "__new", scope: !148, file: !3, line: 62, type: !15)
!152 = !DILocalVariable(name: "__ptr", scope: !148, file: !3, line: 62, type: !21)
!153 = !DILocation(line: 53, column: 55, scope: !135)
!154 = !DILocation(line: 55, column: 2, scope: !135)
!155 = !DILocation(line: 55, column: 21, scope: !135)
!156 = !DILocation(line: 55, column: 29, scope: !135)
!157 = !DILocation(line: 57, column: 10, scope: !143)
!158 = !DILocation(line: 57, column: 10, scope: !159)
!159 = distinct !DILexicalBlock(scope: !143, file: !3, line: 57, column: 10)
!160 = !DILocation(line: 57, column: 10, scope: !161)
!161 = distinct !DILexicalBlock(scope: !159, file: !3, line: 57, column: 10)
!162 = !DILocation(line: 57, column: 10, scope: !163)
!163 = distinct !DILexicalBlock(scope: !143, file: !3, line: 57, column: 10)
!164 = !{i64 2148596068}
!165 = !DILocation(line: 57, column: 10, scope: !135)
!166 = !DILocation(line: 57, column: 8, scope: !135)
!167 = !DILocation(line: 58, column: 2, scope: !135)
!168 = !DILocation(line: 59, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 59, column: 7)
!170 = distinct !DILexicalBlock(scope: !135, file: !3, line: 58, column: 5)
!171 = !DILocation(line: 59, column: 13, scope: !169)
!172 = !DILocation(line: 59, column: 7, scope: !170)
!173 = !DILocation(line: 60, column: 4, scope: !169)
!174 = !DILocation(line: 61, column: 10, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 61, column: 10)
!176 = !DILocation(line: 61, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !175, file: !3, line: 61, column: 10)
!178 = !DILocation(line: 61, column: 8, scope: !170)
!179 = !DILocation(line: 62, column: 2, scope: !170)
!180 = !DILocation(line: 62, column: 12, scope: !145)
!181 = !DILocation(line: 62, column: 12, scope: !182)
!182 = distinct !DILexicalBlock(scope: !145, file: !3, line: 62, column: 12)
!183 = !DILocation(line: 62, column: 12, scope: !148)
!184 = !{i64 2148601971, i64 2148602010, i64 2148602031, i64 2148602068, i64 2148602091, i64 2148602100, i64 2148602301}
!185 = !DILocation(line: 62, column: 12, scope: !186)
!186 = distinct !DILexicalBlock(scope: !148, file: !3, line: 62, column: 12)
!187 = !DILocation(line: 62, column: 12, scope: !135)
!188 = !DILocation(line: 62, column: 11, scope: !135)
!189 = distinct !{!189, !167, !190, !96, !97}
!190 = !DILocation(line: 62, column: 51, scope: !135)
!191 = !DILocation(line: 64, column: 9, scope: !135)
!192 = !DILocation(line: 64, column: 2, scope: !135)
!193 = !DILocation(line: 65, column: 1, scope: !135)
!194 = distinct !DISubprogram(name: "llist_reverse_order", scope: !3, file: !3, line: 75, type: !195, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!15, !15}
!197 = !{!198, !199, !200}
!198 = !DILocalVariable(name: "head", arg: 1, scope: !194, file: !3, line: 75, type: !15)
!199 = !DILocalVariable(name: "new_head", scope: !194, file: !3, line: 77, type: !15)
!200 = !DILocalVariable(name: "tmp", scope: !201, file: !3, line: 80, type: !15)
!201 = distinct !DILexicalBlock(scope: !194, file: !3, line: 79, column: 15)
!202 = !DILocation(line: 75, column: 59, scope: !194)
!203 = !DILocation(line: 77, column: 2, scope: !194)
!204 = !DILocation(line: 77, column: 21, scope: !194)
!205 = !DILocation(line: 79, column: 2, scope: !194)
!206 = !DILocation(line: 79, column: 9, scope: !194)
!207 = !DILocation(line: 80, column: 3, scope: !201)
!208 = !DILocation(line: 80, column: 22, scope: !201)
!209 = !DILocation(line: 80, column: 28, scope: !201)
!210 = !DILocation(line: 81, column: 10, scope: !201)
!211 = !DILocation(line: 81, column: 16, scope: !201)
!212 = !DILocation(line: 81, column: 8, scope: !201)
!213 = !DILocation(line: 82, column: 15, scope: !201)
!214 = !DILocation(line: 82, column: 3, scope: !201)
!215 = !DILocation(line: 82, column: 8, scope: !201)
!216 = !DILocation(line: 82, column: 13, scope: !201)
!217 = !DILocation(line: 83, column: 14, scope: !201)
!218 = !DILocation(line: 83, column: 12, scope: !201)
!219 = !DILocation(line: 84, column: 2, scope: !194)
!220 = distinct !{!220, !205, !219, !96, !97}
!221 = !DILocation(line: 86, column: 9, scope: !194)
!222 = !DILocation(line: 87, column: 1, scope: !194)
!223 = !DILocation(line: 86, column: 2, scope: !194)
!224 = distinct !DISubprogram(name: "kasan_check_write", scope: !225, file: !225, line: 44, type: !226, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!225 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!226 = !DISubroutineType(types: !227)
!227 = !{!46, !106, !7}
!228 = !{!229, !230}
!229 = !DILocalVariable(name: "p", arg: 1, scope: !224, file: !225, line: 44, type: !106)
!230 = !DILocalVariable(name: "size", arg: 2, scope: !224, file: !225, line: 44, type: !7)
!231 = !DILocation(line: 44, column: 59, scope: !224)
!232 = !DILocation(line: 44, column: 75, scope: !224)
!233 = !DILocation(line: 46, column: 2, scope: !224)
!234 = distinct !DISubprogram(name: "kcsan_check_access", scope: !235, file: !235, line: 229, type: !236, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!235 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!236 = !DISubroutineType(types: !237)
!237 = !{null, !106, !109, !238}
!238 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!239 = !{!240, !241, !242}
!240 = !DILocalVariable(name: "ptr", arg: 1, scope: !234, file: !235, line: 229, type: !106)
!241 = !DILocalVariable(name: "size", arg: 2, scope: !234, file: !235, line: 229, type: !109)
!242 = !DILocalVariable(name: "type", arg: 3, scope: !234, file: !235, line: 230, type: !238)
!243 = !DILocation(line: 229, column: 60, scope: !234)
!244 = !DILocation(line: 229, column: 72, scope: !234)
!245 = !DILocation(line: 230, column: 15, scope: !234)
!246 = !DILocation(line: 230, column: 23, scope: !234)
