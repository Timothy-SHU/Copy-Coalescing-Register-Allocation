; ModuleID = 'lib/rcuref.c'
source_filename = "lib/rcuref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rcuref_get_slowpath: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rcuref_get_slowpath ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rcuref_put_slowpath: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rcuref_put_slowpath ; .previous"

%struct.rcuref_t = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@rcuref_get_slowpath.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"rcuref saturated - leaking memory\00", align 1, !dbg !40
@.str.1 = private unnamed_addr constant [13 x i8] c"lib/rcuref.c\00", align 1, !dbg !46
@__UNIQUE_ID___addressable_rcuref_get_slowpath47 = internal global ptr @rcuref_get_slowpath, section ".discard.addressable", align 8, !dbg !51
@rcuref_put_slowpath.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !53
@.str.2 = private unnamed_addr constant [26 x i8] c"rcuref - imbalanced put()\00", align 1, !dbg !74
@__UNIQUE_ID___addressable_rcuref_put_slowpath48 = internal global ptr @rcuref_put_slowpath, section ".discard.addressable", align 8, !dbg !79
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_rcuref_get_slowpath47, ptr @__UNIQUE_ID___addressable_rcuref_put_slowpath48], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rcuref_get_slowpath(ptr noundef %ref) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i1, align 1
  %ref.addr = alloca ptr, align 8
  %cnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp52 = alloca i64, align 8
  %tmp61 = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !82, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #7, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %cnt, metadata !83, metadata !DIExpression()), !dbg !108
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !109
  %refcnt = getelementptr inbounds %struct.rcuref_t, ptr %0, i32 0, i32 0, !dbg !110
  %call = call i32 @atomic_read(ptr noundef %refcnt) #8, !dbg !111
  store i32 %call, ptr %cnt, align 4, !dbg !108
  %1 = load i32, ptr %cnt, align 4, !dbg !112
  %cmp = icmp uge i32 %1, -1073741824, !dbg !114
  br i1 %cmp, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ref.addr, align 8, !dbg !116
  %refcnt1 = getelementptr inbounds %struct.rcuref_t, ptr %2, i32 0, i32 0, !dbg !118
  call void @atomic_set(ptr noundef %refcnt1, i32 noundef -536870912) #8, !dbg !119
  store i1 false, ptr %retval, align 1, !dbg !120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !120

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #7, !dbg !121
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !84, metadata !DIExpression()), !dbg !121
  %3 = load i32, ptr %cnt, align 4, !dbg !121
  %cmp2 = icmp ugt i32 %3, 2147483647, !dbg !121
  %lnot = xor i1 %cmp2, true, !dbg !121
  %lnot3 = xor i1 %lnot, true, !dbg !121
  %frombool = zext i1 %lnot3 to i8, !dbg !121
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !121
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #7, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !87, metadata !DIExpression()), !dbg !122
  %4 = load i8, ptr %__ret_do_once, align 1, !dbg !122, !range !123, !noundef !124
  %tobool = trunc i8 %4 to i1, !dbg !122
  %lnot4 = xor i1 %tobool, true, !dbg !122
  %lnot5 = xor i1 %lnot4, true, !dbg !122
  %frombool6 = zext i1 %lnot5 to i8, !dbg !122
  store i8 %frombool6, ptr %__ret_cond, align 1, !dbg !122
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #7, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !90, metadata !DIExpression()), !dbg !122
  store i8 0, ptr %__ret_once, align 1, !dbg !122
  %5 = load i8, ptr %__ret_cond, align 1, !dbg !125, !range !123, !noundef !124
  %tobool7 = trunc i8 %5 to i1, !dbg !125
  br i1 %tobool7, label %land.rhs, label %land.end, !dbg !125

land.rhs:                                         ; preds = %if.end
  %6 = load i8, ptr @rcuref_get_slowpath.__already_done, align 1, !dbg !125, !range !123, !noundef !124
  %tobool8 = trunc i8 %6 to i1, !dbg !125
  %lnot9 = xor i1 %tobool8, true, !dbg !125
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %7 = phi i1 [ false, %if.end ], [ %lnot9, %land.rhs ], !dbg !127
  %lnot10 = xor i1 %7, true, !dbg !125
  %lnot11 = xor i1 %lnot10, true, !dbg !125
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !125
  %conv = sext i32 %lnot.ext to i64, !dbg !125
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !125
  %tobool12 = icmp ne i64 %expval, 0, !dbg !125
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !122

if.then13:                                        ; preds = %land.end
  store i8 1, ptr @rcuref_get_slowpath.__already_done, align 1, !dbg !128
  store i8 1, ptr %__ret_once, align 1, !dbg !128
  br label %if.end14, !dbg !128

if.end14:                                         ; preds = %if.then13, %land.end
  %8 = load i8, ptr %__ret_once, align 1, !dbg !122, !range !123, !noundef !124
  %tobool15 = trunc i8 %8 to i1, !dbg !122
  %lnot16 = xor i1 %tobool15, true, !dbg !122
  %lnot18 = xor i1 %lnot16, true, !dbg !122
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !122
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !122
  %expval21 = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !122
  store i64 %expval21, ptr %tmp, align 8, !dbg !125
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #7, !dbg !130
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #7, !dbg !130
  %9 = load i64, ptr %tmp, align 8, !dbg !122
  %tobool22 = icmp ne i64 %9, 0, !dbg !130
  br i1 %tobool22, label %if.then23, label %if.end60, !dbg !121

if.then23:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !91, metadata !DIExpression()), !dbg !131
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !131
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !132
  %tobool24 = icmp ne i32 %10, 0, !dbg !132
  %lnot25 = xor i1 %tobool24, true, !dbg !132
  %lnot27 = xor i1 %lnot25, true, !dbg !132
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !132
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !132
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !132
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !132
  br i1 %tobool31, label %if.then32, label %if.end51, !dbg !131

if.then32:                                        ; preds = %if.then23
  br label %do.body, !dbg !132

do.body:                                          ; preds = %if.then32
  br label %do.body33, !dbg !133

do.body33:                                        ; preds = %do.body
  br label %do.cond, !dbg !134

do.cond:                                          ; preds = %do.body33
  br label %do.end, !dbg !134

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #8, !dbg !133
  br label %do.body34, !dbg !133

do.body34:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !93, metadata !DIExpression()), !dbg !136
  store i32 2313, ptr %__flags, align 4, !dbg !136
  br label %do.body35, !dbg !136

do.body35:                                        ; preds = %do.body34
  br label %do.cond36, !dbg !137

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !137

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !136

do.body38:                                        ; preds = %do.end37
  %11 = load i32, ptr %__flags, align 4, !dbg !139
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 214, i32 %11, i64 12) #7, !dbg !139, !srcloc !141
  br label %do.cond39, !dbg !139

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !139

do.end40:                                         ; preds = %do.cond39
  br label %do.body41, !dbg !136

do.body41:                                        ; preds = %do.end40
  br label %do.cond42, !dbg !142

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !142

do.end43:                                         ; preds = %do.cond42
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !133
  br label %do.cond44, !dbg !136

do.cond44:                                        ; preds = %do.end43
  br label %do.end45, !dbg !136

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !133

do.body46:                                        ; preds = %do.end45
  br label %do.cond47, !dbg !144

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !144

do.end48:                                         ; preds = %do.cond47
  br label %do.cond49, !dbg !133

do.cond49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !133

do.end50:                                         ; preds = %do.cond49
  br label %if.end51, !dbg !133

if.end51:                                         ; preds = %do.end50, %if.then23
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !131
  %tobool53 = icmp ne i32 %12, 0, !dbg !131
  %lnot54 = xor i1 %tobool53, true, !dbg !131
  %lnot56 = xor i1 %lnot54, true, !dbg !131
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !131
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !131
  %expval59 = call i64 @llvm.expect.i64(i64 %conv58, i64 0), !dbg !131
  store i64 %expval59, ptr %tmp52, align 8, !dbg !132
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !130
  %13 = load i64, ptr %tmp52, align 8, !dbg !131
  br label %if.end60, !dbg !130

if.end60:                                         ; preds = %if.end51, %if.end14
  %14 = load i8, ptr %__ret_do_once, align 1, !dbg !121, !range !123, !noundef !124
  %tobool62 = trunc i8 %14 to i1, !dbg !121
  %lnot63 = xor i1 %tobool62, true, !dbg !121
  %lnot65 = xor i1 %lnot63, true, !dbg !121
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !121
  %conv67 = sext i32 %lnot.ext66 to i64, !dbg !121
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0), !dbg !121
  store i64 %expval68, ptr %tmp61, align 8, !dbg !130
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #7, !dbg !146
  %15 = load i64, ptr %tmp61, align 8, !dbg !121
  %tobool69 = icmp ne i64 %15, 0, !dbg !146
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !147

if.then70:                                        ; preds = %if.end60
  %16 = load ptr, ptr %ref.addr, align 8, !dbg !148
  %refcnt71 = getelementptr inbounds %struct.rcuref_t, ptr %16, i32 0, i32 0, !dbg !149
  call void @atomic_set(ptr noundef %refcnt71, i32 noundef -1610612736) #8, !dbg !150
  br label %if.end72, !dbg !150

if.end72:                                         ; preds = %if.then70, %if.end60
  store i1 true, ptr %retval, align 1, !dbg !151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !151

cleanup:                                          ; preds = %if.end72, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #7, !dbg !152
  %17 = load i1, ptr %retval, align 1, !dbg !152
  ret i1 %17, !dbg !152
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !153 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = load ptr, ptr %v.addr, align 8, !dbg !162
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #8, !dbg !163
  %1 = load ptr, ptr %v.addr, align 8, !dbg !164
  %call = call i32 @raw_atomic_read(ptr noundef %1) #8, !dbg !165
  ret i32 %call, !dbg !166
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !167 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !172, metadata !DIExpression()), !dbg !174
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !173, metadata !DIExpression()), !dbg !175
  %0 = load ptr, ptr %v.addr, align 8, !dbg !176
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #8, !dbg !177
  %1 = load ptr, ptr %v.addr, align 8, !dbg !178
  %2 = load i32, ptr %i.addr, align 4, !dbg !179
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #8, !dbg !180
  ret void, !dbg !181
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !182 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @rcuref_put_slowpath(ptr noundef %ref, i32 noundef %cnt) #0 align 16 !dbg !55 {
entry:
  %retval = alloca i1, align 1
  %ref.addr = alloca ptr, align 8
  %cnt.addr = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp77 = alloca i64, align 8
  %tmp86 = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !59, metadata !DIExpression()), !dbg !188
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !60, metadata !DIExpression()), !dbg !189
  %0 = load i32, ptr %cnt.addr, align 4, !dbg !190
  %cmp = icmp eq i32 %0, -1, !dbg !190
  %lnot = xor i1 %cmp, true, !dbg !190
  %lnot1 = xor i1 %lnot, true, !dbg !190
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !190
  %conv = sext i32 %lnot.ext to i64, !dbg !190
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !190
  %tobool = icmp ne i64 %expval, 0, !dbg !190
  br i1 %tobool, label %if.then, label %if.end11, !dbg !192

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ref.addr, align 8, !dbg !193
  %refcnt = getelementptr inbounds %struct.rcuref_t, ptr %1, i32 0, i32 0, !dbg !196
  %call = call i32 @atomic_cmpxchg_release(ptr noundef %refcnt, i32 noundef -1, i32 noundef -536870912) #8, !dbg !197
  %cmp2 = icmp ne i32 %call, -1, !dbg !198
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !199

if.then4:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !200
  br label %return, !dbg !200

if.end:                                           ; preds = %if.then
  br label %do.body, !dbg !201

do.body:                                          ; preds = %if.end
  br label %do.body5, !dbg !202

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !204

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !202

do.body6:                                         ; preds = %do.end
  br label %do.body7, !dbg !206

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !208

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !206, !srcloc !210
  br label %do.end9, !dbg !206

do.end9:                                          ; preds = %do.end8
  br label %do.end10, !dbg !202

do.end10:                                         ; preds = %do.end9
  store i1 true, ptr %retval, align 1, !dbg !211
  br label %return, !dbg !211

if.end11:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #7, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !61, metadata !DIExpression()), !dbg !212
  %2 = load i32, ptr %cnt.addr, align 4, !dbg !212
  %cmp12 = icmp uge i32 %2, -1073741824, !dbg !212
  %lnot14 = xor i1 %cmp12, true, !dbg !212
  %lnot16 = xor i1 %lnot14, true, !dbg !212
  %frombool = zext i1 %lnot16 to i8, !dbg !212
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !212
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #7, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !64, metadata !DIExpression()), !dbg !213
  %3 = load i8, ptr %__ret_do_once, align 1, !dbg !213, !range !123, !noundef !124
  %tobool18 = trunc i8 %3 to i1, !dbg !213
  %lnot19 = xor i1 %tobool18, true, !dbg !213
  %lnot21 = xor i1 %lnot19, true, !dbg !213
  %frombool23 = zext i1 %lnot21 to i8, !dbg !213
  store i8 %frombool23, ptr %__ret_cond, align 1, !dbg !213
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #7, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !67, metadata !DIExpression()), !dbg !213
  store i8 0, ptr %__ret_once, align 1, !dbg !213
  %4 = load i8, ptr %__ret_cond, align 1, !dbg !214, !range !123, !noundef !124
  %tobool24 = trunc i8 %4 to i1, !dbg !214
  br i1 %tobool24, label %land.rhs, label %land.end, !dbg !214

land.rhs:                                         ; preds = %if.end11
  %5 = load i8, ptr @rcuref_put_slowpath.__already_done, align 1, !dbg !214, !range !123, !noundef !124
  %tobool26 = trunc i8 %5 to i1, !dbg !214
  %lnot27 = xor i1 %tobool26, true, !dbg !214
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end11
  %6 = phi i1 [ false, %if.end11 ], [ %lnot27, %land.rhs ], !dbg !216
  %lnot29 = xor i1 %6, true, !dbg !214
  %lnot31 = xor i1 %lnot29, true, !dbg !214
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !214
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !214
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !214
  %tobool35 = icmp ne i64 %expval34, 0, !dbg !214
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !213

if.then36:                                        ; preds = %land.end
  store i8 1, ptr @rcuref_put_slowpath.__already_done, align 1, !dbg !217
  store i8 1, ptr %__ret_once, align 1, !dbg !217
  br label %if.end37, !dbg !217

if.end37:                                         ; preds = %if.then36, %land.end
  %7 = load i8, ptr %__ret_once, align 1, !dbg !213, !range !123, !noundef !124
  %tobool38 = trunc i8 %7 to i1, !dbg !213
  %lnot39 = xor i1 %tobool38, true, !dbg !213
  %lnot41 = xor i1 %lnot39, true, !dbg !213
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !213
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !213
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !213
  store i64 %expval44, ptr %tmp, align 8, !dbg !214
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #7, !dbg !219
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #7, !dbg !219
  %8 = load i64, ptr %tmp, align 8, !dbg !213
  %tobool45 = icmp ne i64 %8, 0, !dbg !219
  br i1 %tobool45, label %if.then46, label %if.end85, !dbg !212

if.then46:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !68, metadata !DIExpression()), !dbg !220
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !220
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !221
  %tobool47 = icmp ne i32 %9, 0, !dbg !221
  %lnot48 = xor i1 %tobool47, true, !dbg !221
  %lnot50 = xor i1 %lnot48, true, !dbg !221
  %lnot.ext51 = zext i1 %lnot50 to i32, !dbg !221
  %conv52 = sext i32 %lnot.ext51 to i64, !dbg !221
  %expval53 = call i64 @llvm.expect.i64(i64 %conv52, i64 0), !dbg !221
  %tobool54 = icmp ne i64 %expval53, 0, !dbg !221
  br i1 %tobool54, label %if.then55, label %if.end76, !dbg !220

if.then55:                                        ; preds = %if.then46
  br label %do.body56, !dbg !221

do.body56:                                        ; preds = %if.then55
  br label %do.body57, !dbg !222

do.body57:                                        ; preds = %do.body56
  br label %do.cond, !dbg !223

do.cond:                                          ; preds = %do.body57
  br label %do.end58, !dbg !223

do.end58:                                         ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2) #8, !dbg !222
  br label %do.body59, !dbg !222

do.body59:                                        ; preds = %do.end58
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !70, metadata !DIExpression()), !dbg !225
  store i32 2313, ptr %__flags, align 4, !dbg !225
  br label %do.body60, !dbg !225

do.body60:                                        ; preds = %do.body59
  br label %do.cond61, !dbg !226

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !226

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !225

do.body63:                                        ; preds = %do.end62
  %10 = load i32, ptr %__flags, align 4, !dbg !228
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 266, i32 %10, i64 12) #7, !dbg !228, !srcloc !230
  br label %do.cond64, !dbg !228

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !228

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !225

do.body66:                                        ; preds = %do.end65
  br label %do.cond67, !dbg !231

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !231

do.end68:                                         ; preds = %do.cond67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !222
  br label %do.cond69, !dbg !225

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !225

do.end70:                                         ; preds = %do.cond69
  br label %do.body71, !dbg !222

do.body71:                                        ; preds = %do.end70
  br label %do.cond72, !dbg !233

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !233

do.end73:                                         ; preds = %do.cond72
  br label %do.cond74, !dbg !222

do.cond74:                                        ; preds = %do.end73
  br label %do.end75, !dbg !222

do.end75:                                         ; preds = %do.cond74
  br label %if.end76, !dbg !222

if.end76:                                         ; preds = %do.end75, %if.then46
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !220
  %tobool78 = icmp ne i32 %11, 0, !dbg !220
  %lnot79 = xor i1 %tobool78, true, !dbg !220
  %lnot81 = xor i1 %lnot79, true, !dbg !220
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !220
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !220
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0), !dbg !220
  store i64 %expval84, ptr %tmp77, align 8, !dbg !221
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !219
  %12 = load i64, ptr %tmp77, align 8, !dbg !220
  br label %if.end85, !dbg !219

if.end85:                                         ; preds = %if.end76, %if.end37
  %13 = load i8, ptr %__ret_do_once, align 1, !dbg !212, !range !123, !noundef !124
  %tobool87 = trunc i8 %13 to i1, !dbg !212
  %lnot88 = xor i1 %tobool87, true, !dbg !212
  %lnot90 = xor i1 %lnot88, true, !dbg !212
  %lnot.ext91 = zext i1 %lnot90 to i32, !dbg !212
  %conv92 = sext i32 %lnot.ext91 to i64, !dbg !212
  %expval93 = call i64 @llvm.expect.i64(i64 %conv92, i64 0), !dbg !212
  store i64 %expval93, ptr %tmp86, align 8, !dbg !219
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #7, !dbg !235
  %14 = load i64, ptr %tmp86, align 8, !dbg !212
  %tobool94 = icmp ne i64 %14, 0, !dbg !235
  br i1 %tobool94, label %if.then95, label %if.end97, !dbg !236

if.then95:                                        ; preds = %if.end85
  %15 = load ptr, ptr %ref.addr, align 8, !dbg !237
  %refcnt96 = getelementptr inbounds %struct.rcuref_t, ptr %15, i32 0, i32 0, !dbg !239
  call void @atomic_set(ptr noundef %refcnt96, i32 noundef -536870912) #8, !dbg !240
  store i1 false, ptr %retval, align 1, !dbg !241
  br label %return, !dbg !241

if.end97:                                         ; preds = %if.end85
  %16 = load i32, ptr %cnt.addr, align 4, !dbg !242
  %cmp98 = icmp ugt i32 %16, 2147483647, !dbg !244
  br i1 %cmp98, label %if.then100, label %if.end102, !dbg !245

if.then100:                                       ; preds = %if.end97
  %17 = load ptr, ptr %ref.addr, align 8, !dbg !246
  %refcnt101 = getelementptr inbounds %struct.rcuref_t, ptr %17, i32 0, i32 0, !dbg !247
  call void @atomic_set(ptr noundef %refcnt101, i32 noundef -1610612736) #8, !dbg !248
  br label %if.end102, !dbg !248

if.end102:                                        ; preds = %if.then100, %if.end97
  store i1 false, ptr %retval, align 1, !dbg !249
  br label %return, !dbg !249

return:                                           ; preds = %if.end102, %if.then95, %do.end10, %if.then4
  %18 = load i1, ptr %retval, align 1, !dbg !250
  ret i1 %18, !dbg !250
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_cmpxchg_release(ptr noundef %v, i32 noundef %old, i32 noundef %new) #3 align 16 !dbg !251 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !255, metadata !DIExpression()), !dbg !258
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !256, metadata !DIExpression()), !dbg !259
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !257, metadata !DIExpression()), !dbg !260
  br label %do.body, !dbg !261

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !262

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !264
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !265
  %1 = load ptr, ptr %v.addr, align 8, !dbg !266
  %2 = load i32, ptr %old.addr, align 4, !dbg !267
  %3 = load i32, ptr %new.addr, align 4, !dbg !268
  %call = call i32 @raw_atomic_cmpxchg_release(ptr noundef %1, i32 noundef %2, i32 noundef %3) #8, !dbg !269
  ret i32 %call, !dbg !270
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !271 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !284, metadata !DIExpression()), !dbg !286
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !285, metadata !DIExpression()), !dbg !287
  %0 = load ptr, ptr %v.addr, align 8, !dbg !288
  %1 = load i64, ptr %size.addr, align 8, !dbg !289
  %conv = trunc i64 %1 to i32, !dbg !289
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #8, !dbg !290
  %2 = load ptr, ptr %v.addr, align 8, !dbg !291
  %3 = load i64, ptr %size.addr, align 8, !dbg !291
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #8, !dbg !291
  ret void, !dbg !292
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !293 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load ptr, ptr %v.addr, align 8, !dbg !298
  %call = call i32 @arch_atomic_read(ptr noundef %0) #8, !dbg !299
  ret i32 %call, !dbg !300
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !301 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !306, metadata !DIExpression()), !dbg !308
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !307, metadata !DIExpression()), !dbg !309
  ret i1 true, !dbg !310
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !311 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !316, metadata !DIExpression()), !dbg !319
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !317, metadata !DIExpression()), !dbg !320
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !318, metadata !DIExpression()), !dbg !321
  ret void, !dbg !322
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !323 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %0 = load ptr, ptr %v.addr, align 8, !dbg !328
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !328
  %1 = load volatile i32, ptr %counter, align 4, !dbg !328
  ret i32 %1, !dbg !329
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !330 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !332, metadata !DIExpression()), !dbg !334
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !333, metadata !DIExpression()), !dbg !335
  %0 = load ptr, ptr %v.addr, align 8, !dbg !336
  %1 = load i64, ptr %size.addr, align 8, !dbg !337
  %conv = trunc i64 %1 to i32, !dbg !337
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !338
  %2 = load ptr, ptr %v.addr, align 8, !dbg !339
  %3 = load i64, ptr %size.addr, align 8, !dbg !339
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #8, !dbg !339
  ret void, !dbg !340
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !341 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !343, metadata !DIExpression()), !dbg !345
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !344, metadata !DIExpression()), !dbg !346
  %0 = load ptr, ptr %v.addr, align 8, !dbg !347
  %1 = load i32, ptr %i.addr, align 4, !dbg !348
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #8, !dbg !349
  ret void, !dbg !350
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !351 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !353, metadata !DIExpression()), !dbg !355
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !354, metadata !DIExpression()), !dbg !356
  ret i1 true, !dbg !357
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #3 align 16 !dbg !358 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !360, metadata !DIExpression()), !dbg !362
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !361, metadata !DIExpression()), !dbg !363
  br label %do.body, !dbg !364

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !365
  %1 = load ptr, ptr %v.addr, align 8, !dbg !365
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !365
  store volatile i32 %0, ptr %counter, align 4, !dbg !365
  br label %do.end, !dbg !365

do.end:                                           ; preds = %do.body
  ret void, !dbg !367
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !368 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !370, metadata !DIExpression()), !dbg !372
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !371, metadata !DIExpression()), !dbg !373
  %0 = load ptr, ptr %v.addr, align 8, !dbg !374
  %1 = load i64, ptr %size.addr, align 8, !dbg !375
  %conv = trunc i64 %1 to i32, !dbg !375
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !376
  %2 = load ptr, ptr %v.addr, align 8, !dbg !377
  %3 = load i64, ptr %size.addr, align 8, !dbg !377
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !377
  ret void, !dbg !378
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_cmpxchg_release(ptr noundef %v, i32 noundef %old, i32 noundef %new) #3 align 16 !dbg !379 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !381, metadata !DIExpression()), !dbg !384
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !382, metadata !DIExpression()), !dbg !385
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !383, metadata !DIExpression()), !dbg !386
  %0 = load ptr, ptr %v.addr, align 8, !dbg !387
  %1 = load i32, ptr %old.addr, align 4, !dbg !388
  %2 = load i32, ptr %new.addr, align 4, !dbg !389
  %call = call i32 @arch_atomic_cmpxchg(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8, !dbg !390
  ret i32 %call, !dbg !391
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_cmpxchg(ptr noundef %v, i32 noundef %old, i32 noundef %new) #3 align 16 !dbg !392 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i32, align 4
  %new.addr = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !394, metadata !DIExpression()), !dbg !402
  store i32 %old, ptr %old.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !395, metadata !DIExpression()), !dbg !403
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !396, metadata !DIExpression()), !dbg !404
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #7, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !397, metadata !DIExpression()), !dbg !405
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #7, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !399, metadata !DIExpression()), !dbg !405
  %0 = load i32, ptr %old.addr, align 4, !dbg !405
  store i32 %0, ptr %__old, align 4, !dbg !405
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #7, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !400, metadata !DIExpression()), !dbg !405
  %1 = load i32, ptr %new.addr, align 4, !dbg !405
  store i32 %1, ptr %__new, align 4, !dbg !405
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #7, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !401, metadata !DIExpression()), !dbg !405
  %2 = load ptr, ptr %v.addr, align 8, !dbg !405
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !405
  store ptr %counter, ptr %__ptr, align 8, !dbg !405
  %3 = load ptr, ptr %__ptr, align 8, !dbg !405
  %4 = load i32, ptr %__new, align 4, !dbg !405
  %5 = load i32, ptr %__old, align 4, !dbg !405
  %6 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3, i32 %4, i32 %5, ptr elementtype(i32) %3) #7, !dbg !405, !srcloc !406
  store i32 %6, ptr %__ret, align 4, !dbg !405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #7, !dbg !405
  %7 = load i32, ptr %__ret, align 4, !dbg !405
  store i32 %7, ptr %tmp, align 4, !dbg !405
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #7, !dbg !407
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #7, !dbg !407
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #7, !dbg !407
  %8 = load i32, ptr %tmp, align 4, !dbg !405
  ret i32 %8, !dbg !408
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__already_done", scope: !2, file: !3, line: 214, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "rcuref_get_slowpath", scope: !3, file: !3, line: 192, type: !4, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !81)
!3 = !DIFile(filename: "lib/rcuref.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f81a58e54a5431c71a374be108f344")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !7, line: 35, baseType: !8)
!7 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!8 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcuref_t", file: !7, line: 186, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 184, size: 32, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !11, file: !7, line: 185, baseType: !14, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !7, line: 174, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 172, size: 32, elements: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !15, file: !7, line: 173, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.rcuref.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/rcuref\22 -D KBUILD_BASENAME=\22rcuref\22 -D KBUILD_MODNAME=\22rcuref\22 -D __KBUILD_MODNAME=kmod_rcuref -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/rcuref.ll lib/rcuref.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !27, globals: !39, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 10, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "false", value: 0)
!26 = !DIEnumerator(name: "true", value: 1)
!27 = !{!28, !29, !32, !33}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !38, line: 27, baseType: !23)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!39 = !{!0, !40, !46, !51, !53, !74, !79}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 272, elements: !44)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !{!45}
!45 = !DISubrange(count: 34)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 104, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 13)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rcuref_get_slowpath47", scope: !19, file: !3, line: 218, type: !28, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "__already_done", scope: !55, file: !3, line: 266, type: !6, isLocal: true, isDefinition: true)
!55 = distinct !DISubprogram(name: "rcuref_put_slowpath", scope: !3, file: !3, line: 237, type: !56, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !58)
!56 = !DISubroutineType(types: !57)
!57 = !{!6, !9, !23}
!58 = !{!59, !60, !61, !64, !67, !68, !70}
!59 = !DILocalVariable(name: "ref", arg: 1, scope: !55, file: !3, line: 237, type: !9)
!60 = !DILocalVariable(name: "cnt", arg: 2, scope: !55, file: !3, line: 237, type: !23)
!61 = !DILocalVariable(name: "__ret_do_once", scope: !62, file: !3, line: 266, type: !6)
!62 = distinct !DILexicalBlock(scope: !63, file: !3, line: 266, column: 6)
!63 = distinct !DILexicalBlock(scope: !55, file: !3, line: 266, column: 6)
!64 = !DILocalVariable(name: "__ret_cond", scope: !65, file: !3, line: 266, type: !6)
!65 = distinct !DILexicalBlock(scope: !66, file: !3, line: 266, column: 6)
!66 = distinct !DILexicalBlock(scope: !62, file: !3, line: 266, column: 6)
!67 = !DILocalVariable(name: "__ret_once", scope: !65, file: !3, line: 266, type: !6)
!68 = !DILocalVariable(name: "__ret_warn_on", scope: !69, file: !3, line: 266, type: !18)
!69 = distinct !DILexicalBlock(scope: !66, file: !3, line: 266, column: 6)
!70 = !DILocalVariable(name: "__flags", scope: !71, file: !3, line: 266, type: !18)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 266, column: 6)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 266, column: 6)
!73 = distinct !DILexicalBlock(scope: !69, file: !3, line: 266, column: 6)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 266, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 208, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 26)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rcuref_put_slowpath48", scope: !19, file: !3, line: 280, type: !28, isLocal: true, isDefinition: true)
!81 = !{!82, !83, !84, !87, !90, !91, !93}
!82 = !DILocalVariable(name: "ref", arg: 1, scope: !2, file: !3, line: 192, type: !9)
!83 = !DILocalVariable(name: "cnt", scope: !2, file: !3, line: 194, type: !23)
!84 = !DILocalVariable(name: "__ret_do_once", scope: !85, file: !3, line: 214, type: !6)
!85 = distinct !DILexicalBlock(scope: !86, file: !3, line: 214, column: 6)
!86 = distinct !DILexicalBlock(scope: !2, file: !3, line: 214, column: 6)
!87 = !DILocalVariable(name: "__ret_cond", scope: !88, file: !3, line: 214, type: !6)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 214, column: 6)
!89 = distinct !DILexicalBlock(scope: !85, file: !3, line: 214, column: 6)
!90 = !DILocalVariable(name: "__ret_once", scope: !88, file: !3, line: 214, type: !6)
!91 = !DILocalVariable(name: "__ret_warn_on", scope: !92, file: !3, line: 214, type: !18)
!92 = distinct !DILexicalBlock(scope: !89, file: !3, line: 214, column: 6)
!93 = !DILocalVariable(name: "__flags", scope: !94, file: !3, line: 214, type: !18)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 214, column: 6)
!95 = distinct !DILexicalBlock(scope: !96, file: !3, line: 214, column: 6)
!96 = distinct !DILexicalBlock(scope: !92, file: !3, line: 214, column: 6)
!97 = !{i32 7, !"Dwarf Version", i32 5}
!98 = !{i32 2, !"Debug Info Version", i32 3}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 8, !"cf-protection-branch", i32 1}
!101 = !{i32 4, !"function_return_thunk_extern", i32 1}
!102 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!103 = !{i32 1, !"Code Model", i32 2}
!104 = !{i32 1, !"override-stack-alignment", i32 8}
!105 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!106 = !DILocation(line: 192, column: 36, scope: !2)
!107 = !DILocation(line: 194, column: 2, scope: !2)
!108 = !DILocation(line: 194, column: 15, scope: !2)
!109 = !DILocation(line: 194, column: 34, scope: !2)
!110 = !DILocation(line: 194, column: 39, scope: !2)
!111 = !DILocation(line: 194, column: 21, scope: !2)
!112 = !DILocation(line: 201, column: 6, scope: !113)
!113 = distinct !DILexicalBlock(scope: !2, file: !3, line: 201, column: 6)
!114 = !DILocation(line: 201, column: 10, scope: !113)
!115 = !DILocation(line: 201, column: 6, scope: !2)
!116 = !DILocation(line: 202, column: 15, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !3, line: 201, column: 30)
!118 = !DILocation(line: 202, column: 20, scope: !117)
!119 = !DILocation(line: 202, column: 3, scope: !117)
!120 = !DILocation(line: 203, column: 3, scope: !117)
!121 = !DILocation(line: 214, column: 6, scope: !85)
!122 = !DILocation(line: 214, column: 6, scope: !88)
!123 = !{i8 0, i8 2}
!124 = !{}
!125 = !DILocation(line: 214, column: 6, scope: !126)
!126 = distinct !DILexicalBlock(scope: !88, file: !3, line: 214, column: 6)
!127 = !DILocation(line: 0, scope: !126)
!128 = !DILocation(line: 214, column: 6, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 214, column: 6)
!130 = !DILocation(line: 214, column: 6, scope: !89)
!131 = !DILocation(line: 214, column: 6, scope: !92)
!132 = !DILocation(line: 214, column: 6, scope: !96)
!133 = !DILocation(line: 214, column: 6, scope: !95)
!134 = !DILocation(line: 214, column: 6, scope: !135)
!135 = distinct !DILexicalBlock(scope: !95, file: !3, line: 214, column: 6)
!136 = !DILocation(line: 214, column: 6, scope: !94)
!137 = !DILocation(line: 214, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !94, file: !3, line: 214, column: 6)
!139 = !DILocation(line: 214, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !94, file: !3, line: 214, column: 6)
!141 = !{i64 2149600449, i64 2149600478, i64 2149600524, i64 2149600582, i64 2149600636, i64 2149600690, i64 2149600745, i64 2149600776, i64 2149601084, i64 2149601090, i64 2149601137, i64 2149601160, i64 2149601186}
!142 = !DILocation(line: 214, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !94, file: !3, line: 214, column: 6)
!144 = !DILocation(line: 214, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !95, file: !3, line: 214, column: 6)
!146 = !DILocation(line: 214, column: 6, scope: !86)
!147 = !DILocation(line: 214, column: 6, scope: !2)
!148 = !DILocation(line: 215, column: 15, scope: !86)
!149 = !DILocation(line: 215, column: 20, scope: !86)
!150 = !DILocation(line: 215, column: 3, scope: !86)
!151 = !DILocation(line: 216, column: 2, scope: !2)
!152 = !DILocation(line: 217, column: 1, scope: !2)
!153 = distinct !DISubprogram(name: "atomic_read", scope: !154, file: !154, line: 30, type: !155, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !159)
!154 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!155 = !DISubroutineType(types: !156)
!156 = !{!18, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!159 = !{!160}
!160 = !DILocalVariable(name: "v", arg: 1, scope: !153, file: !154, line: 30, type: !157)
!161 = !DILocation(line: 30, column: 29, scope: !153)
!162 = !DILocation(line: 32, column: 25, scope: !153)
!163 = !DILocation(line: 32, column: 2, scope: !153)
!164 = !DILocation(line: 33, column: 25, scope: !153)
!165 = !DILocation(line: 33, column: 9, scope: !153)
!166 = !DILocation(line: 33, column: 2, scope: !153)
!167 = distinct !DISubprogram(name: "atomic_set", scope: !154, file: !154, line: 65, type: !168, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !171)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !170, !18}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!171 = !{!172, !173}
!172 = !DILocalVariable(name: "v", arg: 1, scope: !167, file: !154, line: 65, type: !170)
!173 = !DILocalVariable(name: "i", arg: 2, scope: !167, file: !154, line: 65, type: !18)
!174 = !DILocation(line: 65, column: 22, scope: !167)
!175 = !DILocation(line: 65, column: 29, scope: !167)
!176 = !DILocation(line: 67, column: 26, scope: !167)
!177 = !DILocation(line: 67, column: 2, scope: !167)
!178 = !DILocation(line: 68, column: 17, scope: !167)
!179 = !DILocation(line: 68, column: 20, scope: !167)
!180 = !DILocation(line: 68, column: 2, scope: !167)
!181 = !DILocation(line: 69, column: 1, scope: !167)
!182 = !DISubprogram(name: "__warn_printk", scope: !183, file: !183, line: 93, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186, null}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!188 = !DILocation(line: 237, column: 36, scope: !55)
!189 = !DILocation(line: 237, column: 54, scope: !55)
!190 = !DILocation(line: 240, column: 6, scope: !191)
!191 = distinct !DILexicalBlock(scope: !55, file: !3, line: 240, column: 6)
!192 = !DILocation(line: 240, column: 6, scope: !55)
!193 = !DILocation(line: 250, column: 31, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 250, column: 7)
!195 = distinct !DILexicalBlock(scope: !191, file: !3, line: 240, column: 35)
!196 = !DILocation(line: 250, column: 36, scope: !194)
!197 = !DILocation(line: 250, column: 7, scope: !194)
!198 = !DILocation(line: 250, column: 71, scope: !194)
!199 = !DILocation(line: 250, column: 7, scope: !195)
!200 = !DILocation(line: 251, column: 4, scope: !194)
!201 = !DILocation(line: 257, column: 3, scope: !195)
!202 = !DILocation(line: 257, column: 3, scope: !203)
!203 = distinct !DILexicalBlock(scope: !195, file: !3, line: 257, column: 3)
!204 = !DILocation(line: 257, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !203, file: !3, line: 257, column: 3)
!206 = !DILocation(line: 257, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 257, column: 3)
!208 = !DILocation(line: 257, column: 3, scope: !209)
!209 = distinct !DILexicalBlock(scope: !207, file: !3, line: 257, column: 3)
!210 = !{i64 2149603596}
!211 = !DILocation(line: 258, column: 3, scope: !195)
!212 = !DILocation(line: 266, column: 6, scope: !62)
!213 = !DILocation(line: 266, column: 6, scope: !65)
!214 = !DILocation(line: 266, column: 6, scope: !215)
!215 = distinct !DILexicalBlock(scope: !65, file: !3, line: 266, column: 6)
!216 = !DILocation(line: 0, scope: !215)
!217 = !DILocation(line: 266, column: 6, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !3, line: 266, column: 6)
!219 = !DILocation(line: 266, column: 6, scope: !66)
!220 = !DILocation(line: 266, column: 6, scope: !69)
!221 = !DILocation(line: 266, column: 6, scope: !73)
!222 = !DILocation(line: 266, column: 6, scope: !72)
!223 = !DILocation(line: 266, column: 6, scope: !224)
!224 = distinct !DILexicalBlock(scope: !72, file: !3, line: 266, column: 6)
!225 = !DILocation(line: 266, column: 6, scope: !71)
!226 = !DILocation(line: 266, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !71, file: !3, line: 266, column: 6)
!228 = !DILocation(line: 266, column: 6, scope: !229)
!229 = distinct !DILexicalBlock(scope: !71, file: !3, line: 266, column: 6)
!230 = !{i64 2149605177, i64 2149605206, i64 2149605252, i64 2149605310, i64 2149605364, i64 2149605418, i64 2149605473, i64 2149605504, i64 2149605812, i64 2149605818, i64 2149605865, i64 2149605888, i64 2149605914}
!231 = !DILocation(line: 266, column: 6, scope: !232)
!232 = distinct !DILexicalBlock(scope: !71, file: !3, line: 266, column: 6)
!233 = !DILocation(line: 266, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !72, file: !3, line: 266, column: 6)
!235 = !DILocation(line: 266, column: 6, scope: !63)
!236 = !DILocation(line: 266, column: 6, scope: !55)
!237 = !DILocation(line: 267, column: 15, scope: !238)
!238 = distinct !DILexicalBlock(scope: !63, file: !3, line: 266, column: 70)
!239 = !DILocation(line: 267, column: 20, scope: !238)
!240 = !DILocation(line: 267, column: 3, scope: !238)
!241 = !DILocation(line: 268, column: 3, scope: !238)
!242 = !DILocation(line: 276, column: 6, scope: !243)
!243 = distinct !DILexicalBlock(scope: !55, file: !3, line: 276, column: 6)
!244 = !DILocation(line: 276, column: 10, scope: !243)
!245 = !DILocation(line: 276, column: 6, scope: !55)
!246 = !DILocation(line: 277, column: 15, scope: !243)
!247 = !DILocation(line: 277, column: 20, scope: !243)
!248 = !DILocation(line: 277, column: 3, scope: !243)
!249 = !DILocation(line: 278, column: 2, scope: !55)
!250 = !DILocation(line: 279, column: 1, scope: !55)
!251 = distinct !DISubprogram(name: "atomic_cmpxchg_release", scope: !154, file: !154, line: 1230, type: !252, scopeLine: 1231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!18, !170, !18, !18}
!254 = !{!255, !256, !257}
!255 = !DILocalVariable(name: "v", arg: 1, scope: !251, file: !154, line: 1230, type: !170)
!256 = !DILocalVariable(name: "old", arg: 2, scope: !251, file: !154, line: 1230, type: !18)
!257 = !DILocalVariable(name: "new", arg: 3, scope: !251, file: !154, line: 1230, type: !18)
!258 = !DILocation(line: 1230, column: 34, scope: !251)
!259 = !DILocation(line: 1230, column: 41, scope: !251)
!260 = !DILocation(line: 1230, column: 50, scope: !251)
!261 = !DILocation(line: 1232, column: 2, scope: !251)
!262 = !DILocation(line: 1232, column: 2, scope: !263)
!263 = distinct !DILexicalBlock(scope: !251, file: !154, line: 1232, column: 2)
!264 = !DILocation(line: 1233, column: 31, scope: !251)
!265 = !DILocation(line: 1233, column: 2, scope: !251)
!266 = !DILocation(line: 1234, column: 36, scope: !251)
!267 = !DILocation(line: 1234, column: 39, scope: !251)
!268 = !DILocation(line: 1234, column: 44, scope: !251)
!269 = !DILocation(line: 1234, column: 9, scope: !251)
!270 = !DILocation(line: 1234, column: 2, scope: !251)
!271 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !272, file: !272, line: 66, type: !273, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !283)
!272 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!273 = !DISubroutineType(types: !274)
!274 = !{null, !275, !278}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 61, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !280, line: 72, baseType: !281)
!280 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !280, line: 16, baseType: !282)
!282 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!283 = !{!284, !285}
!284 = !DILocalVariable(name: "v", arg: 1, scope: !271, file: !272, line: 66, type: !275)
!285 = !DILocalVariable(name: "size", arg: 2, scope: !271, file: !272, line: 66, type: !278)
!286 = !DILocation(line: 66, column: 73, scope: !271)
!287 = !DILocation(line: 66, column: 83, scope: !271)
!288 = !DILocation(line: 68, column: 19, scope: !271)
!289 = !DILocation(line: 68, column: 22, scope: !271)
!290 = !DILocation(line: 68, column: 2, scope: !271)
!291 = !DILocation(line: 69, column: 2, scope: !271)
!292 = !DILocation(line: 70, column: 1, scope: !271)
!293 = distinct !DISubprogram(name: "raw_atomic_read", scope: !294, file: !294, line: 442, type: !155, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !295)
!294 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!295 = !{!296}
!296 = !DILocalVariable(name: "v", arg: 1, scope: !293, file: !294, line: 442, type: !157)
!297 = !DILocation(line: 442, column: 33, scope: !293)
!298 = !DILocation(line: 444, column: 26, scope: !293)
!299 = !DILocation(line: 444, column: 9, scope: !293)
!300 = !DILocation(line: 444, column: 2, scope: !293)
!301 = distinct !DISubprogram(name: "kasan_check_read", scope: !302, file: !302, line: 40, type: !303, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !305)
!302 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!303 = !DISubroutineType(types: !304)
!304 = !{!6, !275, !23}
!305 = !{!306, !307}
!306 = !DILocalVariable(name: "p", arg: 1, scope: !301, file: !302, line: 40, type: !275)
!307 = !DILocalVariable(name: "size", arg: 2, scope: !301, file: !302, line: 40, type: !23)
!308 = !DILocation(line: 40, column: 58, scope: !301)
!309 = !DILocation(line: 40, column: 74, scope: !301)
!310 = !DILocation(line: 42, column: 2, scope: !301)
!311 = distinct !DISubprogram(name: "kcsan_check_access", scope: !312, file: !312, line: 229, type: !313, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !315)
!312 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!313 = !DISubroutineType(types: !314)
!314 = !{null, !275, !278, !18}
!315 = !{!316, !317, !318}
!316 = !DILocalVariable(name: "ptr", arg: 1, scope: !311, file: !312, line: 229, type: !275)
!317 = !DILocalVariable(name: "size", arg: 2, scope: !311, file: !312, line: 229, type: !278)
!318 = !DILocalVariable(name: "type", arg: 3, scope: !311, file: !312, line: 230, type: !18)
!319 = !DILocation(line: 229, column: 60, scope: !311)
!320 = !DILocation(line: 229, column: 72, scope: !311)
!321 = !DILocation(line: 230, column: 15, scope: !311)
!322 = !DILocation(line: 230, column: 23, scope: !311)
!323 = distinct !DISubprogram(name: "arch_atomic_read", scope: !324, file: !324, line: 17, type: !155, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !325)
!324 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!325 = !{!326}
!326 = !DILocalVariable(name: "v", arg: 1, scope: !323, file: !324, line: 17, type: !157)
!327 = !DILocation(line: 17, column: 61, scope: !323)
!328 = !DILocation(line: 23, column: 9, scope: !323)
!329 = !DILocation(line: 23, column: 2, scope: !323)
!330 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !272, file: !272, line: 80, type: !273, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !331)
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "v", arg: 1, scope: !330, file: !272, line: 80, type: !275)
!333 = !DILocalVariable(name: "size", arg: 2, scope: !330, file: !272, line: 80, type: !278)
!334 = !DILocation(line: 80, column: 74, scope: !330)
!335 = !DILocation(line: 80, column: 84, scope: !330)
!336 = !DILocation(line: 82, column: 20, scope: !330)
!337 = !DILocation(line: 82, column: 23, scope: !330)
!338 = !DILocation(line: 82, column: 2, scope: !330)
!339 = !DILocation(line: 83, column: 2, scope: !330)
!340 = !DILocation(line: 84, column: 1, scope: !330)
!341 = distinct !DISubprogram(name: "raw_atomic_set", scope: !294, file: !294, line: 488, type: !168, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !342)
!342 = !{!343, !344}
!343 = !DILocalVariable(name: "v", arg: 1, scope: !341, file: !294, line: 488, type: !170)
!344 = !DILocalVariable(name: "i", arg: 2, scope: !341, file: !294, line: 488, type: !18)
!345 = !DILocation(line: 488, column: 26, scope: !341)
!346 = !DILocation(line: 488, column: 33, scope: !341)
!347 = !DILocation(line: 490, column: 18, scope: !341)
!348 = !DILocation(line: 490, column: 21, scope: !341)
!349 = !DILocation(line: 490, column: 2, scope: !341)
!350 = !DILocation(line: 491, column: 1, scope: !341)
!351 = distinct !DISubprogram(name: "kasan_check_write", scope: !302, file: !302, line: 44, type: !303, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !352)
!352 = !{!353, !354}
!353 = !DILocalVariable(name: "p", arg: 1, scope: !351, file: !302, line: 44, type: !275)
!354 = !DILocalVariable(name: "size", arg: 2, scope: !351, file: !302, line: 44, type: !23)
!355 = !DILocation(line: 44, column: 59, scope: !351)
!356 = !DILocation(line: 44, column: 75, scope: !351)
!357 = !DILocation(line: 46, column: 2, scope: !351)
!358 = distinct !DISubprogram(name: "arch_atomic_set", scope: !324, file: !324, line: 26, type: !168, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !359)
!359 = !{!360, !361}
!360 = !DILocalVariable(name: "v", arg: 1, scope: !358, file: !324, line: 26, type: !170)
!361 = !DILocalVariable(name: "i", arg: 2, scope: !358, file: !324, line: 26, type: !18)
!362 = !DILocation(line: 26, column: 55, scope: !358)
!363 = !DILocation(line: 26, column: 62, scope: !358)
!364 = !DILocation(line: 28, column: 2, scope: !358)
!365 = !DILocation(line: 28, column: 2, scope: !366)
!366 = distinct !DILexicalBlock(scope: !358, file: !324, line: 28, column: 2)
!367 = !DILocation(line: 29, column: 1, scope: !358)
!368 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !272, file: !272, line: 94, type: !273, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !369)
!369 = !{!370, !371}
!370 = !DILocalVariable(name: "v", arg: 1, scope: !368, file: !272, line: 94, type: !275)
!371 = !DILocalVariable(name: "size", arg: 2, scope: !368, file: !272, line: 94, type: !278)
!372 = !DILocation(line: 94, column: 79, scope: !368)
!373 = !DILocation(line: 94, column: 89, scope: !368)
!374 = !DILocation(line: 96, column: 20, scope: !368)
!375 = !DILocation(line: 96, column: 23, scope: !368)
!376 = !DILocation(line: 96, column: 2, scope: !368)
!377 = !DILocation(line: 97, column: 2, scope: !368)
!378 = !DILocation(line: 98, column: 1, scope: !368)
!379 = distinct !DISubprogram(name: "raw_atomic_cmpxchg_release", scope: !294, file: !294, line: 2057, type: !252, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !380)
!380 = !{!381, !382, !383}
!381 = !DILocalVariable(name: "v", arg: 1, scope: !379, file: !294, line: 2057, type: !170)
!382 = !DILocalVariable(name: "old", arg: 2, scope: !379, file: !294, line: 2057, type: !18)
!383 = !DILocalVariable(name: "new", arg: 3, scope: !379, file: !294, line: 2057, type: !18)
!384 = !DILocation(line: 2057, column: 38, scope: !379)
!385 = !DILocation(line: 2057, column: 45, scope: !379)
!386 = !DILocation(line: 2057, column: 54, scope: !379)
!387 = !DILocation(line: 2065, column: 29, scope: !379)
!388 = !DILocation(line: 2065, column: 32, scope: !379)
!389 = !DILocation(line: 2065, column: 37, scope: !379)
!390 = !DILocation(line: 2065, column: 9, scope: !379)
!391 = !DILocation(line: 2065, column: 2, scope: !379)
!392 = distinct !DISubprogram(name: "arch_atomic_cmpxchg", scope: !324, file: !324, line: 107, type: !252, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !393)
!393 = !{!394, !395, !396, !397, !399, !400, !401}
!394 = !DILocalVariable(name: "v", arg: 1, scope: !392, file: !324, line: 107, type: !170)
!395 = !DILocalVariable(name: "old", arg: 2, scope: !392, file: !324, line: 107, type: !18)
!396 = !DILocalVariable(name: "new", arg: 3, scope: !392, file: !324, line: 107, type: !18)
!397 = !DILocalVariable(name: "__ret", scope: !398, file: !324, line: 109, type: !18)
!398 = distinct !DILexicalBlock(scope: !392, file: !324, line: 109, column: 9)
!399 = !DILocalVariable(name: "__old", scope: !398, file: !324, line: 109, type: !18)
!400 = !DILocalVariable(name: "__new", scope: !398, file: !324, line: 109, type: !18)
!401 = !DILocalVariable(name: "__ptr", scope: !398, file: !324, line: 109, type: !33)
!402 = !DILocation(line: 107, column: 58, scope: !392)
!403 = !DILocation(line: 107, column: 65, scope: !392)
!404 = !DILocation(line: 107, column: 74, scope: !392)
!405 = !DILocation(line: 109, column: 9, scope: !398)
!406 = !{i64 2147812004, i64 2147812043, i64 2147812064, i64 2147812101, i64 2147812124, i64 2147812133}
!407 = !DILocation(line: 109, column: 9, scope: !392)
!408 = !DILocation(line: 109, column: 2, scope: !392)
