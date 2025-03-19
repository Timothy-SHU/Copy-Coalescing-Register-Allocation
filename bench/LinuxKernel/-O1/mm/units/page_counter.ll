; ModuleID = 'mm/page_counter.c'
source_filename = "mm/page_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }
%struct.page_counter = type { %struct.atomic64_t, [56 x i8], %struct.cacheline_padding, i64, %struct.atomic64_t, %struct.atomic64_t, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, %struct.cacheline_padding, i64, i64, i64, i64, ptr, [24 x i8] }
%struct.atomic64_t = type { i64 }
%struct.cacheline_padding = type { [0 x i8] }

@page_counter_cancel.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !0
@.str = private unnamed_addr constant [42 x i8] c"page_counter underflow: %ld nr_pages=%lu\0A\00", align 1, !dbg !71
@.str.1 = private unnamed_addr constant [18 x i8] c"mm/page_counter.c\00", align 1, !dbg !76
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched145 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !81
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched145], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @page_counter_cancel(ptr noundef %counter, i64 noundef %nr_pages) #0 align 16 !dbg !2 {
entry:
  %counter.addr = alloca ptr, align 8
  %nr_pages.addr = alloca i64, align 8
  %new = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp48 = alloca i64, align 8
  %tmp57 = alloca i64, align 8
  store ptr %counter, ptr %counter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !89, metadata !DIExpression()), !dbg !116
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !90, metadata !DIExpression()), !dbg !117
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #7, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %new, metadata !91, metadata !DIExpression()), !dbg !119
  %0 = load i64, ptr %nr_pages.addr, align 8, !dbg !120
  %1 = load ptr, ptr %counter.addr, align 8, !dbg !121
  %usage = getelementptr inbounds %struct.page_counter, ptr %1, i32 0, i32 0, !dbg !122
  %call = call i64 @atomic_long_sub_return(i64 noundef %0, ptr noundef %usage) #8, !dbg !123
  store i64 %call, ptr %new, align 8, !dbg !124
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #7, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !92, metadata !DIExpression()), !dbg !125
  %2 = load i64, ptr %new, align 8, !dbg !125
  %cmp = icmp slt i64 %2, 0, !dbg !125
  %lnot = xor i1 %cmp, true, !dbg !125
  %lnot1 = xor i1 %lnot, true, !dbg !125
  %frombool = zext i1 %lnot1 to i8, !dbg !125
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !125
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #7, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !97, metadata !DIExpression()), !dbg !126
  %3 = load i8, ptr %__ret_do_once, align 1, !dbg !126, !range !127, !noundef !128
  %tobool = trunc i8 %3 to i1, !dbg !126
  %lnot2 = xor i1 %tobool, true, !dbg !126
  %lnot3 = xor i1 %lnot2, true, !dbg !126
  %frombool4 = zext i1 %lnot3 to i8, !dbg !126
  store i8 %frombool4, ptr %__ret_cond, align 1, !dbg !126
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #7, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !100, metadata !DIExpression()), !dbg !126
  store i8 0, ptr %__ret_once, align 1, !dbg !126
  %4 = load i8, ptr %__ret_cond, align 1, !dbg !129, !range !127, !noundef !128
  %tobool5 = trunc i8 %4 to i1, !dbg !129
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !129

land.rhs:                                         ; preds = %entry
  %5 = load i8, ptr @page_counter_cancel.__already_done, align 1, !dbg !129, !range !127, !noundef !128
  %tobool6 = trunc i8 %5 to i1, !dbg !129
  %lnot7 = xor i1 %tobool6, true, !dbg !129
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %lnot7, %land.rhs ], !dbg !131
  %lnot8 = xor i1 %6, true, !dbg !129
  %lnot9 = xor i1 %lnot8, true, !dbg !129
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !129
  %conv = sext i32 %lnot.ext to i64, !dbg !129
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !129
  %tobool10 = icmp ne i64 %expval, 0, !dbg !129
  br i1 %tobool10, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %land.end
  store i8 1, ptr @page_counter_cancel.__already_done, align 1, !dbg !132
  store i8 1, ptr %__ret_once, align 1, !dbg !132
  br label %if.end, !dbg !132

if.end:                                           ; preds = %if.then, %land.end
  %7 = load i8, ptr %__ret_once, align 1, !dbg !126, !range !127, !noundef !128
  %tobool11 = trunc i8 %7 to i1, !dbg !126
  %lnot12 = xor i1 %tobool11, true, !dbg !126
  %lnot14 = xor i1 %lnot12, true, !dbg !126
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !126
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !126
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !126
  store i64 %expval17, ptr %tmp, align 8, !dbg !129
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #7, !dbg !134
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #7, !dbg !134
  %8 = load i64, ptr %tmp, align 8, !dbg !126
  %tobool18 = icmp ne i64 %8, 0, !dbg !134
  br i1 %tobool18, label %if.then19, label %if.end56, !dbg !125

if.then19:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !101, metadata !DIExpression()), !dbg !135
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !135
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !136
  %tobool20 = icmp ne i32 %9, 0, !dbg !136
  %lnot21 = xor i1 %tobool20, true, !dbg !136
  %lnot23 = xor i1 %lnot21, true, !dbg !136
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !136
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !136
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !136
  %tobool27 = icmp ne i64 %expval26, 0, !dbg !136
  br i1 %tobool27, label %if.then28, label %if.end47, !dbg !135

if.then28:                                        ; preds = %if.then19
  br label %do.body, !dbg !136

do.body:                                          ; preds = %if.then28
  br label %do.body29, !dbg !137

do.body29:                                        ; preds = %do.body
  br label %do.cond, !dbg !138

do.cond:                                          ; preds = %do.body29
  br label %do.end, !dbg !138

do.end:                                           ; preds = %do.cond
  %10 = load i64, ptr %new, align 8, !dbg !137
  %11 = load i64, ptr %nr_pages.addr, align 8, !dbg !137
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, i64 noundef %10, i64 noundef %11) #8, !dbg !137
  br label %do.body30, !dbg !137

do.body30:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !103, metadata !DIExpression()), !dbg !140
  store i32 2313, ptr %__flags, align 4, !dbg !140
  br label %do.body31, !dbg !140

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !141

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !141

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !140

do.body34:                                        ; preds = %do.end33
  %12 = load i32, ptr %__flags, align 4, !dbg !143
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 56, i32 %12, i64 12) #7, !dbg !143, !srcloc !145
  br label %do.cond35, !dbg !143

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !143

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !140

do.body37:                                        ; preds = %do.end36
  br label %do.cond38, !dbg !146

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !146

do.end39:                                         ; preds = %do.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !137
  br label %do.cond40, !dbg !140

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !140

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !137

do.body42:                                        ; preds = %do.end41
  br label %do.cond43, !dbg !148

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !148

do.end44:                                         ; preds = %do.cond43
  br label %do.cond45, !dbg !137

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !137

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !137

if.end47:                                         ; preds = %do.end46, %if.then19
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !135
  %tobool49 = icmp ne i32 %13, 0, !dbg !135
  %lnot50 = xor i1 %tobool49, true, !dbg !135
  %lnot52 = xor i1 %lnot50, true, !dbg !135
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !135
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !135
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !135
  store i64 %expval55, ptr %tmp48, align 8, !dbg !136
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !134
  %14 = load i64, ptr %tmp48, align 8, !dbg !135
  br label %if.end56, !dbg !134

if.end56:                                         ; preds = %if.end47, %if.end
  %15 = load i8, ptr %__ret_do_once, align 1, !dbg !125, !range !127, !noundef !128
  %tobool58 = trunc i8 %15 to i1, !dbg !125
  %lnot59 = xor i1 %tobool58, true, !dbg !125
  %lnot61 = xor i1 %lnot59, true, !dbg !125
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !125
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !125
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !125
  store i64 %expval64, ptr %tmp57, align 8, !dbg !134
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #7, !dbg !150
  %16 = load i64, ptr %tmp57, align 8, !dbg !125
  %tobool65 = icmp ne i64 %16, 0, !dbg !150
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !151

if.then66:                                        ; preds = %if.end56
  store i64 0, ptr %new, align 8, !dbg !152
  %17 = load ptr, ptr %counter.addr, align 8, !dbg !154
  %usage67 = getelementptr inbounds %struct.page_counter, ptr %17, i32 0, i32 0, !dbg !155
  %18 = load i64, ptr %new, align 8, !dbg !156
  call void @atomic_long_set(ptr noundef %usage67, i64 noundef %18) #8, !dbg !157
  br label %if.end68, !dbg !158

if.end68:                                         ; preds = %if.then66, %if.end56
  %19 = load ptr, ptr %counter.addr, align 8, !dbg !159
  %20 = load i64, ptr %new, align 8, !dbg !160
  call void @propagate_protected_usage(ptr noundef %19, i64 noundef %20) #8, !dbg !161
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #7, !dbg !162
  ret void, !dbg !162
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_sub_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !163 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !169, metadata !DIExpression()), !dbg !171
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !170, metadata !DIExpression()), !dbg !172
  br label %do.body, !dbg !173

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !174

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !176
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #8, !dbg !177
  %1 = load i64, ptr %i.addr, align 8, !dbg !178
  %2 = load ptr, ptr %v.addr, align 8, !dbg !179
  %call = call i64 @raw_atomic_long_sub_return(i64 noundef %1, ptr noundef %2) #8, !dbg !180
  ret i64 %call, !dbg !181
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !182 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !188 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !192, metadata !DIExpression()), !dbg !194
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !193, metadata !DIExpression()), !dbg !195
  %0 = load ptr, ptr %v.addr, align 8, !dbg !196
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #8, !dbg !197
  %1 = load ptr, ptr %v.addr, align 8, !dbg !198
  %2 = load i64, ptr %i.addr, align 8, !dbg !199
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #8, !dbg !200
  ret void, !dbg !201
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @propagate_protected_usage(ptr noundef %c, i64 noundef %usage) #0 align 16 !dbg !202 {
entry:
  %c.addr = alloca ptr, align 8
  %usage.addr = alloca i64, align 8
  %protected = alloca i64, align 8
  %old_protected = alloca i64, align 8
  %delta = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x150 = alloca i64, align 8
  %__UNIQUE_ID___y151 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %__UNIQUE_ID___x153 = alloca i64, align 8
  %__UNIQUE_ID___y154 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %tmp15 = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !204, metadata !DIExpression()), !dbg !215
  store i64 %usage, ptr %usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !205, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 8, ptr %protected) #7, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %protected, metadata !206, metadata !DIExpression()), !dbg !218
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_protected) #7, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %old_protected, metadata !207, metadata !DIExpression()), !dbg !219
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #7, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !208, metadata !DIExpression()), !dbg !221
  %0 = load ptr, ptr %c.addr, align 8, !dbg !222
  %parent = getelementptr inbounds %struct.page_counter, ptr %0, i32 0, i32 16, !dbg !224
  %1 = load ptr, ptr %parent, align 32, !dbg !224
  %tobool = icmp ne ptr %1, null, !dbg !222
  br i1 %tobool, label %if.end, label %if.then, !dbg !225

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !226

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x150) #7, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x150, metadata !209, metadata !DIExpression()), !dbg !227
  %2 = load i64, ptr %usage.addr, align 8, !dbg !227
  store i64 %2, ptr %__UNIQUE_ID___x150, align 8, !dbg !227
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y151) #7, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y151, metadata !211, metadata !DIExpression()), !dbg !227
  br label %do.body, !dbg !228

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !230

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !230

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %c.addr, align 8, !dbg !228
  %min = getelementptr inbounds %struct.page_counter, ptr %3, i32 0, i32 12, !dbg !228
  %4 = load volatile i64, ptr %min, align 64, !dbg !228
  store i64 %4, ptr %tmp, align 8, !dbg !230
  %5 = load i64, ptr %tmp, align 8, !dbg !228
  store i64 %5, ptr %__UNIQUE_ID___y151, align 8, !dbg !227
  %6 = load i64, ptr %__UNIQUE_ID___x150, align 8, !dbg !227
  %7 = load i64, ptr %__UNIQUE_ID___y151, align 8, !dbg !227
  %cmp = icmp ult i64 %6, %7, !dbg !227
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !227

cond.true:                                        ; preds = %do.end
  %8 = load i64, ptr %__UNIQUE_ID___x150, align 8, !dbg !227
  br label %cond.end, !dbg !227

cond.false:                                       ; preds = %do.end
  %9 = load i64, ptr %__UNIQUE_ID___y151, align 8, !dbg !227
  br label %cond.end, !dbg !227

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !227
  store i64 %cond, ptr %tmp1, align 8, !dbg !227
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y151) #7, !dbg !232
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x150) #7, !dbg !232
  %10 = load i64, ptr %tmp1, align 8, !dbg !227
  store i64 %10, ptr %protected, align 8, !dbg !233
  %11 = load ptr, ptr %c.addr, align 8, !dbg !234
  %min_usage = getelementptr inbounds %struct.page_counter, ptr %11, i32 0, i32 4, !dbg !235
  %call = call i64 @atomic_long_read(ptr noundef %min_usage) #8, !dbg !236
  store i64 %call, ptr %old_protected, align 8, !dbg !237
  %12 = load i64, ptr %protected, align 8, !dbg !238
  %13 = load i64, ptr %old_protected, align 8, !dbg !240
  %cmp2 = icmp ne i64 %12, %13, !dbg !241
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !242

if.then3:                                         ; preds = %cond.end
  %14 = load ptr, ptr %c.addr, align 8, !dbg !243
  %min_usage4 = getelementptr inbounds %struct.page_counter, ptr %14, i32 0, i32 4, !dbg !245
  %15 = load i64, ptr %protected, align 8, !dbg !246
  %call5 = call i64 @atomic_long_xchg(ptr noundef %min_usage4, i64 noundef %15) #8, !dbg !247
  store i64 %call5, ptr %old_protected, align 8, !dbg !248
  %16 = load i64, ptr %protected, align 8, !dbg !249
  %17 = load i64, ptr %old_protected, align 8, !dbg !250
  %sub = sub i64 %16, %17, !dbg !251
  store i64 %sub, ptr %delta, align 8, !dbg !252
  %18 = load i64, ptr %delta, align 8, !dbg !253
  %tobool6 = icmp ne i64 %18, 0, !dbg !253
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !255

if.then7:                                         ; preds = %if.then3
  %19 = load i64, ptr %delta, align 8, !dbg !256
  %20 = load ptr, ptr %c.addr, align 8, !dbg !257
  %parent8 = getelementptr inbounds %struct.page_counter, ptr %20, i32 0, i32 16, !dbg !258
  %21 = load ptr, ptr %parent8, align 32, !dbg !258
  %children_min_usage = getelementptr inbounds %struct.page_counter, ptr %21, i32 0, i32 5, !dbg !259
  call void @atomic_long_add(i64 noundef %19, ptr noundef %children_min_usage) #8, !dbg !260
  br label %if.end9, !dbg !260

if.end9:                                          ; preds = %if.then7, %if.then3
  br label %if.end10, !dbg !261

if.end10:                                         ; preds = %if.end9, %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x153) #7, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x153, metadata !212, metadata !DIExpression()), !dbg !262
  %22 = load i64, ptr %usage.addr, align 8, !dbg !262
  store i64 %22, ptr %__UNIQUE_ID___x153, align 8, !dbg !262
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y154) #7, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y154, metadata !214, metadata !DIExpression()), !dbg !262
  br label %do.body11, !dbg !263

do.body11:                                        ; preds = %if.end10
  br label %do.cond12, !dbg !265

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !265

do.end13:                                         ; preds = %do.cond12
  %23 = load ptr, ptr %c.addr, align 8, !dbg !263
  %low = getelementptr inbounds %struct.page_counter, ptr %23, i32 0, i32 13, !dbg !263
  %24 = load volatile i64, ptr %low, align 8, !dbg !263
  store i64 %24, ptr %tmp14, align 8, !dbg !265
  %25 = load i64, ptr %tmp14, align 8, !dbg !263
  store i64 %25, ptr %__UNIQUE_ID___y154, align 8, !dbg !262
  %26 = load i64, ptr %__UNIQUE_ID___x153, align 8, !dbg !262
  %27 = load i64, ptr %__UNIQUE_ID___y154, align 8, !dbg !262
  %cmp16 = icmp ult i64 %26, %27, !dbg !262
  br i1 %cmp16, label %cond.true17, label %cond.false18, !dbg !262

cond.true17:                                      ; preds = %do.end13
  %28 = load i64, ptr %__UNIQUE_ID___x153, align 8, !dbg !262
  br label %cond.end19, !dbg !262

cond.false18:                                     ; preds = %do.end13
  %29 = load i64, ptr %__UNIQUE_ID___y154, align 8, !dbg !262
  br label %cond.end19, !dbg !262

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i64 [ %28, %cond.true17 ], [ %29, %cond.false18 ], !dbg !262
  store i64 %cond20, ptr %tmp15, align 8, !dbg !262
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y154) #7, !dbg !267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x153) #7, !dbg !267
  %30 = load i64, ptr %tmp15, align 8, !dbg !262
  store i64 %30, ptr %protected, align 8, !dbg !268
  %31 = load ptr, ptr %c.addr, align 8, !dbg !269
  %low_usage = getelementptr inbounds %struct.page_counter, ptr %31, i32 0, i32 7, !dbg !270
  %call21 = call i64 @atomic_long_read(ptr noundef %low_usage) #8, !dbg !271
  store i64 %call21, ptr %old_protected, align 8, !dbg !272
  %32 = load i64, ptr %protected, align 8, !dbg !273
  %33 = load i64, ptr %old_protected, align 8, !dbg !275
  %cmp22 = icmp ne i64 %32, %33, !dbg !276
  br i1 %cmp22, label %if.then23, label %if.end31, !dbg !277

if.then23:                                        ; preds = %cond.end19
  %34 = load ptr, ptr %c.addr, align 8, !dbg !278
  %low_usage24 = getelementptr inbounds %struct.page_counter, ptr %34, i32 0, i32 7, !dbg !280
  %35 = load i64, ptr %protected, align 8, !dbg !281
  %call25 = call i64 @atomic_long_xchg(ptr noundef %low_usage24, i64 noundef %35) #8, !dbg !282
  store i64 %call25, ptr %old_protected, align 8, !dbg !283
  %36 = load i64, ptr %protected, align 8, !dbg !284
  %37 = load i64, ptr %old_protected, align 8, !dbg !285
  %sub26 = sub i64 %36, %37, !dbg !286
  store i64 %sub26, ptr %delta, align 8, !dbg !287
  %38 = load i64, ptr %delta, align 8, !dbg !288
  %tobool27 = icmp ne i64 %38, 0, !dbg !288
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !290

if.then28:                                        ; preds = %if.then23
  %39 = load i64, ptr %delta, align 8, !dbg !291
  %40 = load ptr, ptr %c.addr, align 8, !dbg !292
  %parent29 = getelementptr inbounds %struct.page_counter, ptr %40, i32 0, i32 16, !dbg !293
  %41 = load ptr, ptr %parent29, align 32, !dbg !293
  %children_low_usage = getelementptr inbounds %struct.page_counter, ptr %41, i32 0, i32 8, !dbg !294
  call void @atomic_long_add(i64 noundef %39, ptr noundef %children_low_usage) #8, !dbg !295
  br label %if.end30, !dbg !295

if.end30:                                         ; preds = %if.then28, %if.then23
  br label %if.end31, !dbg !296

if.end31:                                         ; preds = %if.end30, %cond.end19
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !297
  br label %cleanup, !dbg !297

cleanup:                                          ; preds = %if.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #7, !dbg !297
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_protected) #7, !dbg !297
  call void @llvm.lifetime.end.p0(i64 8, ptr %protected) #7, !dbg !297
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !297

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @page_counter_charge(ptr noundef %counter, i64 noundef %nr_pages) #0 align 16 !dbg !298 {
entry:
  %counter.addr = alloca ptr, align 8
  %nr_pages.addr = alloca i64, align 8
  %c = alloca ptr, align 8
  %new = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %counter, ptr %counter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !300, metadata !DIExpression()), !dbg !307
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !301, metadata !DIExpression()), !dbg !308
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %c, metadata !302, metadata !DIExpression()), !dbg !310
  %0 = load ptr, ptr %counter.addr, align 8, !dbg !311
  store ptr %0, ptr %c, align 8, !dbg !312
  br label %for.cond, !dbg !313

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %c, align 8, !dbg !314
  %tobool = icmp ne ptr %1, null, !dbg !315
  br i1 %tobool, label %for.body, label %for.end, !dbg !315

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #7, !dbg !316
  call void @llvm.dbg.declare(metadata ptr %new, metadata !303, metadata !DIExpression()), !dbg !317
  %2 = load i64, ptr %nr_pages.addr, align 8, !dbg !318
  %3 = load ptr, ptr %c, align 8, !dbg !319
  %usage = getelementptr inbounds %struct.page_counter, ptr %3, i32 0, i32 0, !dbg !320
  %call = call i64 @atomic_long_add_return(i64 noundef %2, ptr noundef %usage) #8, !dbg !321
  store i64 %call, ptr %new, align 8, !dbg !322
  %4 = load ptr, ptr %c, align 8, !dbg !323
  %5 = load i64, ptr %new, align 8, !dbg !324
  call void @propagate_protected_usage(ptr noundef %4, i64 noundef %5) #8, !dbg !325
  %6 = load i64, ptr %new, align 8, !dbg !326
  br label %do.body, !dbg !328

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !330

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !330

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %c, align 8, !dbg !328
  %watermark = getelementptr inbounds %struct.page_counter, ptr %7, i32 0, i32 9, !dbg !328
  %8 = load volatile i64, ptr %watermark, align 16, !dbg !328
  store i64 %8, ptr %tmp, align 8, !dbg !330
  %9 = load i64, ptr %tmp, align 8, !dbg !328
  %cmp = icmp ugt i64 %6, %9, !dbg !332
  br i1 %cmp, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %do.end
  br label %do.body1, !dbg !334

do.body1:                                         ; preds = %if.then
  br label %do.body2, !dbg !335

do.body2:                                         ; preds = %do.body1
  br label %do.cond3, !dbg !337

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !337

do.end4:                                          ; preds = %do.cond3
  br label %do.body5, !dbg !335

do.body5:                                         ; preds = %do.end4
  %10 = load i64, ptr %new, align 8, !dbg !339
  %11 = load ptr, ptr %c, align 8, !dbg !339
  %watermark6 = getelementptr inbounds %struct.page_counter, ptr %11, i32 0, i32 9, !dbg !339
  store volatile i64 %10, ptr %watermark6, align 16, !dbg !339
  br label %do.cond7, !dbg !339

do.cond7:                                         ; preds = %do.body5
  br label %do.end8, !dbg !339

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !335

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !335

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !335

if.end:                                           ; preds = %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #7, !dbg !341
  br label %for.inc, !dbg !342

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %c, align 8, !dbg !343
  %parent = getelementptr inbounds %struct.page_counter, ptr %12, i32 0, i32 16, !dbg !344
  %13 = load ptr, ptr %parent, align 32, !dbg !344
  store ptr %13, ptr %c, align 8, !dbg !345
  br label %for.cond, !dbg !346, !llvm.loop !347

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !351
  ret void, !dbg !351
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_add_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !352 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !354, metadata !DIExpression()), !dbg !356
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !355, metadata !DIExpression()), !dbg !357
  br label %do.body, !dbg !358

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !359

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !361
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #8, !dbg !362
  %1 = load i64, ptr %i.addr, align 8, !dbg !363
  %2 = load ptr, ptr %v.addr, align 8, !dbg !364
  %call = call i64 @raw_atomic_long_add_return(i64 noundef %1, ptr noundef %2) #8, !dbg !365
  ret i64 %call, !dbg !366
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @page_counter_try_charge(ptr noundef %counter, i64 noundef %nr_pages, ptr noundef %fail) #0 align 16 !dbg !367 {
entry:
  %retval = alloca i1, align 1
  %counter.addr = alloca ptr, align 8
  %nr_pages.addr = alloca i64, align 8
  %fail.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %new = alloca i64, align 8
  %__v = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %counter, ptr %counter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !372, metadata !DIExpression()), !dbg !385
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !373, metadata !DIExpression()), !dbg !386
  store ptr %fail, ptr %fail.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fail.addr, metadata !374, metadata !DIExpression()), !dbg !387
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !388
  call void @llvm.dbg.declare(metadata ptr %c, metadata !375, metadata !DIExpression()), !dbg !389
  %0 = load ptr, ptr %counter.addr, align 8, !dbg !390
  store ptr %0, ptr %c, align 8, !dbg !391
  br label %for.cond, !dbg !392

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %c, align 8, !dbg !393
  %tobool = icmp ne ptr %1, null, !dbg !394
  br i1 %tobool, label %for.body, label %for.end, !dbg !394

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #7, !dbg !395
  call void @llvm.dbg.declare(metadata ptr %new, metadata !376, metadata !DIExpression()), !dbg !396
  %2 = load i64, ptr %nr_pages.addr, align 8, !dbg !397
  %3 = load ptr, ptr %c, align 8, !dbg !398
  %usage = getelementptr inbounds %struct.page_counter, ptr %3, i32 0, i32 0, !dbg !399
  %call = call i64 @atomic_long_add_return(i64 noundef %2, ptr noundef %usage) #8, !dbg !400
  store i64 %call, ptr %new, align 8, !dbg !401
  %4 = load i64, ptr %new, align 8, !dbg !402
  %5 = load ptr, ptr %c, align 8, !dbg !403
  %max = getelementptr inbounds %struct.page_counter, ptr %5, i32 0, i32 15, !dbg !404
  %6 = load i64, ptr %max, align 8, !dbg !404
  %cmp = icmp ugt i64 %4, %6, !dbg !405
  br i1 %cmp, label %if.then, label %if.end, !dbg !406

if.then:                                          ; preds = %for.body
  %7 = load i64, ptr %nr_pages.addr, align 8, !dbg !407
  %8 = load ptr, ptr %c, align 8, !dbg !408
  %usage1 = getelementptr inbounds %struct.page_counter, ptr %8, i32 0, i32 0, !dbg !409
  call void @atomic_long_sub(i64 noundef %7, ptr noundef %usage1) #8, !dbg !410
  call void @llvm.lifetime.start.p0(i64 8, ptr %__v) #7, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %__v, metadata !380, metadata !DIExpression()), !dbg !411
  call void @__kcsan_disable_current() #8, !dbg !412
  %9 = load ptr, ptr %c, align 8, !dbg !412
  %failcnt = getelementptr inbounds %struct.page_counter, ptr %9, i32 0, i32 10, !dbg !412
  %10 = load i64, ptr %failcnt, align 8, !dbg !412
  %inc = add i64 %10, 1, !dbg !412
  store i64 %inc, ptr %failcnt, align 8, !dbg !412
  store i64 %10, ptr %tmp, align 8, !dbg !412
  %11 = load i64, ptr %tmp, align 8, !dbg !412
  store i64 %11, ptr %__v, align 8, !dbg !411
  call void @__kcsan_enable_current() #8, !dbg !411
  %12 = load i64, ptr %__v, align 8, !dbg !411
  store i64 %12, ptr %tmp2, align 8, !dbg !411
  call void @llvm.lifetime.end.p0(i64 8, ptr %__v) #7, !dbg !414
  %13 = load i64, ptr %tmp2, align 8, !dbg !411
  %14 = load ptr, ptr %c, align 8, !dbg !415
  %15 = load ptr, ptr %fail.addr, align 8, !dbg !416
  store ptr %14, ptr %15, align 8, !dbg !417
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !418

if.end:                                           ; preds = %for.body
  %16 = load ptr, ptr %c, align 8, !dbg !419
  %17 = load i64, ptr %new, align 8, !dbg !420
  call void @propagate_protected_usage(ptr noundef %16, i64 noundef %17) #8, !dbg !421
  %18 = load i64, ptr %new, align 8, !dbg !422
  br label %do.body, !dbg !424

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !426

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !426

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %c, align 8, !dbg !424
  %watermark = getelementptr inbounds %struct.page_counter, ptr %19, i32 0, i32 9, !dbg !424
  %20 = load volatile i64, ptr %watermark, align 16, !dbg !424
  store i64 %20, ptr %tmp3, align 8, !dbg !426
  %21 = load i64, ptr %tmp3, align 8, !dbg !424
  %cmp4 = icmp ugt i64 %18, %21, !dbg !428
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !429

if.then5:                                         ; preds = %do.end
  br label %do.body6, !dbg !430

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !431

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !433

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !433

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !431

do.body10:                                        ; preds = %do.end9
  %22 = load i64, ptr %new, align 8, !dbg !435
  %23 = load ptr, ptr %c, align 8, !dbg !435
  %watermark11 = getelementptr inbounds %struct.page_counter, ptr %23, i32 0, i32 9, !dbg !435
  store volatile i64 %22, ptr %watermark11, align 16, !dbg !435
  br label %do.cond12, !dbg !435

do.cond12:                                        ; preds = %do.body10
  br label %do.end13, !dbg !435

do.end13:                                         ; preds = %do.cond12
  br label %do.cond14, !dbg !431

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !431

do.end15:                                         ; preds = %do.cond14
  br label %if.end16, !dbg !431

if.end16:                                         ; preds = %do.end15, %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !437
  br label %cleanup, !dbg !437

cleanup:                                          ; preds = %if.then, %if.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #7, !dbg !437
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup23 [
    i32 0, label %cleanup.cont
    i32 5, label %failed
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !438

for.inc:                                          ; preds = %cleanup.cont
  %24 = load ptr, ptr %c, align 8, !dbg !439
  %parent = getelementptr inbounds %struct.page_counter, ptr %24, i32 0, i32 16, !dbg !440
  %25 = load ptr, ptr %parent, align 32, !dbg !440
  store ptr %25, ptr %c, align 8, !dbg !441
  br label %for.cond, !dbg !442, !llvm.loop !443

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !445

failed:                                           ; preds = %cleanup
  call void @llvm.dbg.label(metadata !384), !dbg !446
  %26 = load ptr, ptr %counter.addr, align 8, !dbg !447
  store ptr %26, ptr %c, align 8, !dbg !449
  br label %for.cond17, !dbg !450

for.cond17:                                       ; preds = %for.inc20, %failed
  %27 = load ptr, ptr %c, align 8, !dbg !451
  %28 = load ptr, ptr %fail.addr, align 8, !dbg !453
  %29 = load ptr, ptr %28, align 8, !dbg !454
  %cmp18 = icmp ne ptr %27, %29, !dbg !455
  br i1 %cmp18, label %for.body19, label %for.end22, !dbg !456

for.body19:                                       ; preds = %for.cond17
  %30 = load ptr, ptr %c, align 8, !dbg !457
  %31 = load i64, ptr %nr_pages.addr, align 8, !dbg !458
  call void @page_counter_cancel(ptr noundef %30, i64 noundef %31) #8, !dbg !459
  br label %for.inc20, !dbg !459

for.inc20:                                        ; preds = %for.body19
  %32 = load ptr, ptr %c, align 8, !dbg !460
  %parent21 = getelementptr inbounds %struct.page_counter, ptr %32, i32 0, i32 16, !dbg !461
  %33 = load ptr, ptr %parent21, align 32, !dbg !461
  store ptr %33, ptr %c, align 8, !dbg !462
  br label %for.cond17, !dbg !463, !llvm.loop !464

for.end22:                                        ; preds = %for.cond17
  store i1 false, ptr %retval, align 1, !dbg !466
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup23, !dbg !466

cleanup23:                                        ; preds = %for.end22, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !467
  %34 = load i1, ptr %retval, align 1, !dbg !467
  ret i1 %34, !dbg !467
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_sub(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !468 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !472, metadata !DIExpression()), !dbg !474
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !473, metadata !DIExpression()), !dbg !475
  %0 = load ptr, ptr %v.addr, align 8, !dbg !476
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #8, !dbg !477
  %1 = load i64, ptr %i.addr, align 8, !dbg !478
  %2 = load ptr, ptr %v.addr, align 8, !dbg !479
  call void @raw_atomic_long_sub(i64 noundef %1, ptr noundef %2) #8, !dbg !480
  ret void, !dbg !481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_disable_current() #6 align 16 !dbg !482 {
entry:
  ret void, !dbg !486
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__kcsan_enable_current() #6 align 16 !dbg !487 {
entry:
  ret void, !dbg !488
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @page_counter_uncharge(ptr noundef %counter, i64 noundef %nr_pages) #0 align 16 !dbg !489 {
entry:
  %counter.addr = alloca ptr, align 8
  %nr_pages.addr = alloca i64, align 8
  %c = alloca ptr, align 8
  store ptr %counter, ptr %counter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !491, metadata !DIExpression()), !dbg !494
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !492, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %c, metadata !493, metadata !DIExpression()), !dbg !497
  %0 = load ptr, ptr %counter.addr, align 8, !dbg !498
  store ptr %0, ptr %c, align 8, !dbg !500
  br label %for.cond, !dbg !501

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %c, align 8, !dbg !502
  %tobool = icmp ne ptr %1, null, !dbg !504
  br i1 %tobool, label %for.body, label %for.end, !dbg !504

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %c, align 8, !dbg !505
  %3 = load i64, ptr %nr_pages.addr, align 8, !dbg !506
  call void @page_counter_cancel(ptr noundef %2, i64 noundef %3) #8, !dbg !507
  br label %for.inc, !dbg !507

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %c, align 8, !dbg !508
  %parent = getelementptr inbounds %struct.page_counter, ptr %4, i32 0, i32 16, !dbg !509
  %5 = load ptr, ptr %parent, align 32, !dbg !509
  store ptr %5, ptr %c, align 8, !dbg !510
  br label %for.cond, !dbg !511, !llvm.loop !512

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !514
  ret void, !dbg !514
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @page_counter_set_max(ptr noundef %counter, i64 noundef %nr_pages) #0 align 16 !dbg !515 {
entry:
  %retval = alloca i32, align 4
  %counter.addr = alloca ptr, align 8
  %nr_pages.addr = alloca i64, align 8
  %old = alloca i64, align 8
  %usage = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  store ptr %counter, ptr %counter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !519, metadata !DIExpression()), !dbg !531
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !520, metadata !DIExpression()), !dbg !532
  br label %for.cond, !dbg !533

for.cond:                                         ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #7, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %old, metadata !521, metadata !DIExpression()), !dbg !535
  call void @llvm.lifetime.start.p0(i64 8, ptr %usage) #7, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %usage, metadata !525, metadata !DIExpression()), !dbg !537
  %0 = load ptr, ptr %counter.addr, align 8, !dbg !538
  %call = call i64 @page_counter_read(ptr noundef %0) #8, !dbg !539
  store i64 %call, ptr %usage, align 8, !dbg !540
  %1 = load i64, ptr %usage, align 8, !dbg !541
  %2 = load i64, ptr %nr_pages.addr, align 8, !dbg !543
  %cmp = icmp ugt i64 %1, %2, !dbg !544
  br i1 %cmp, label %if.then, label %if.end, !dbg !545

if.then:                                          ; preds = %for.cond
  store i32 -16, ptr %retval, align 4, !dbg !546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !546

if.end:                                           ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #7, !dbg !547
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !526, metadata !DIExpression()), !dbg !547
  %3 = load ptr, ptr %counter.addr, align 8, !dbg !547
  %max = getelementptr inbounds %struct.page_counter, ptr %3, i32 0, i32 15, !dbg !547
  store ptr %max, ptr %__ai_ptr, align 8, !dbg !547
  br label %do.body, !dbg !547

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !548

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !548

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %__ai_ptr, align 8, !dbg !547
  call void @instrument_atomic_read_write(ptr noundef %4, i64 noundef 8) #8, !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #7, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !529, metadata !DIExpression()), !dbg !550
  %5 = load i64, ptr %nr_pages.addr, align 8, !dbg !550
  store i64 %5, ptr %__ret, align 8, !dbg !550
  %6 = load i64, ptr %__ret, align 8, !dbg !550
  %7 = load ptr, ptr %__ai_ptr, align 8, !dbg !550
  %8 = call i64 asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %7, i64 %6, ptr elementtype(i64) %7) #7, !dbg !550, !srcloc !551
  store i64 %8, ptr %__ret, align 8, !dbg !550
  %9 = load i64, ptr %__ret, align 8, !dbg !550
  store i64 %9, ptr %tmp1, align 8, !dbg !550
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #7, !dbg !547
  %10 = load i64, ptr %tmp1, align 8, !dbg !550
  store i64 %10, ptr %tmp, align 8, !dbg !547
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #7, !dbg !552
  %11 = load i64, ptr %tmp, align 8, !dbg !547
  store i64 %11, ptr %old, align 8, !dbg !553
  %12 = load ptr, ptr %counter.addr, align 8, !dbg !554
  %call2 = call i64 @page_counter_read(ptr noundef %12) #8, !dbg !556
  %13 = load i64, ptr %usage, align 8, !dbg !557
  %cmp3 = icmp ule i64 %call2, %13, !dbg !558
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !559

lor.lhs.false:                                    ; preds = %do.end
  %14 = load i64, ptr %nr_pages.addr, align 8, !dbg !560
  %15 = load i64, ptr %old, align 8, !dbg !561
  %cmp4 = icmp uge i64 %14, %15, !dbg !562
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !563

if.then5:                                         ; preds = %lor.lhs.false, %do.end
  store i32 0, ptr %retval, align 4, !dbg !564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !564

if.end6:                                          ; preds = %lor.lhs.false
  %16 = load i64, ptr %old, align 8, !dbg !565
  %17 = load ptr, ptr %counter.addr, align 8, !dbg !566
  %max7 = getelementptr inbounds %struct.page_counter, ptr %17, i32 0, i32 15, !dbg !567
  store i64 %16, ptr %max7, align 8, !dbg !568
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 199, i32 noundef 0) #8, !dbg !569
  %call9 = call i32 @_cond_resched() #8, !dbg !569
  store i32 %call9, ptr %tmp8, align 4, !dbg !569
  %18 = load i32, ptr %tmp8, align 4, !dbg !569
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !571
  br label %cleanup, !dbg !571

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %usage) #7, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #7, !dbg !571
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !572, !llvm.loop !573

return:                                           ; preds = %cleanup
  %19 = load i32, ptr %retval, align 4, !dbg !576
  ret i32 %19, !dbg !576

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @page_counter_read(ptr noundef %counter) #6 align 16 !dbg !577 {
entry:
  %counter.addr = alloca ptr, align 8
  store ptr %counter, ptr %counter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load ptr, ptr %counter.addr, align 8, !dbg !583
  %usage = getelementptr inbounds %struct.page_counter, ptr %0, i32 0, i32 0, !dbg !584
  %call = call i64 @atomic_long_read(ptr noundef %usage) #8, !dbg !585
  ret i64 %call, !dbg !586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !587 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !599, metadata !DIExpression()), !dbg !601
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !600, metadata !DIExpression()), !dbg !602
  %0 = load ptr, ptr %v.addr, align 8, !dbg !603
  %1 = load i64, ptr %size.addr, align 8, !dbg !604
  %conv = trunc i64 %1 to i32, !dbg !604
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !605
  %2 = load ptr, ptr %v.addr, align 8, !dbg !606
  %3 = load i64, ptr %size.addr, align 8, !dbg !606
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !606
  ret void, !dbg !607
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #6 align 16 !dbg !608 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !613, metadata !DIExpression()), !dbg !616
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !614, metadata !DIExpression()), !dbg !617
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !615, metadata !DIExpression()), !dbg !618
  ret void, !dbg !619
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #3 align 16 !dbg !83 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !620
  %0 = load ptr, ptr %tmp, align 8, !dbg !620
  %call = call i32 %0() #8, !dbg !622
  ret i32 %call, !dbg !623
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @page_counter_set_min(ptr noundef %counter, i64 noundef %nr_pages) #0 align 16 !dbg !624 {
entry:
  %counter.addr = alloca ptr, align 8
  %nr_pages.addr = alloca i64, align 8
  %c = alloca ptr, align 8
  store ptr %counter, ptr %counter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !626, metadata !DIExpression()), !dbg !629
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !627, metadata !DIExpression()), !dbg !630
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !631
  call void @llvm.dbg.declare(metadata ptr %c, metadata !628, metadata !DIExpression()), !dbg !632
  br label %do.body, !dbg !633

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !634

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !636

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !636

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !634

do.body2:                                         ; preds = %do.end
  %0 = load i64, ptr %nr_pages.addr, align 8, !dbg !638
  %1 = load ptr, ptr %counter.addr, align 8, !dbg !638
  %min = getelementptr inbounds %struct.page_counter, ptr %1, i32 0, i32 12, !dbg !638
  store volatile i64 %0, ptr %min, align 64, !dbg !638
  br label %do.cond3, !dbg !638

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !638

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !634

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !634

do.end6:                                          ; preds = %do.cond5
  %2 = load ptr, ptr %counter.addr, align 8, !dbg !640
  store ptr %2, ptr %c, align 8, !dbg !642
  br label %for.cond, !dbg !643

for.cond:                                         ; preds = %for.inc, %do.end6
  %3 = load ptr, ptr %c, align 8, !dbg !644
  %tobool = icmp ne ptr %3, null, !dbg !646
  br i1 %tobool, label %for.body, label %for.end, !dbg !646

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %c, align 8, !dbg !647
  %5 = load ptr, ptr %c, align 8, !dbg !648
  %usage = getelementptr inbounds %struct.page_counter, ptr %5, i32 0, i32 0, !dbg !649
  %call = call i64 @atomic_long_read(ptr noundef %usage) #8, !dbg !650
  call void @propagate_protected_usage(ptr noundef %4, i64 noundef %call) #8, !dbg !651
  br label %for.inc, !dbg !651

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %c, align 8, !dbg !652
  %parent = getelementptr inbounds %struct.page_counter, ptr %6, i32 0, i32 16, !dbg !653
  %7 = load ptr, ptr %parent, align 32, !dbg !653
  store ptr %7, ptr %c, align 8, !dbg !654
  br label %for.cond, !dbg !655, !llvm.loop !656

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !658
  ret void, !dbg !658
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #3 align 16 !dbg !659 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !665, metadata !DIExpression()), !dbg !666
  %0 = load ptr, ptr %v.addr, align 8, !dbg !667
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #8, !dbg !668
  %1 = load ptr, ptr %v.addr, align 8, !dbg !669
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #8, !dbg !670
  ret i64 %call, !dbg !671
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @page_counter_set_low(ptr noundef %counter, i64 noundef %nr_pages) #0 align 16 !dbg !672 {
entry:
  %counter.addr = alloca ptr, align 8
  %nr_pages.addr = alloca i64, align 8
  %c = alloca ptr, align 8
  store ptr %counter, ptr %counter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %counter.addr, metadata !674, metadata !DIExpression()), !dbg !677
  store i64 %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !675, metadata !DIExpression()), !dbg !678
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7, !dbg !679
  call void @llvm.dbg.declare(metadata ptr %c, metadata !676, metadata !DIExpression()), !dbg !680
  br label %do.body, !dbg !681

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !682

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !684

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !684

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !682

do.body2:                                         ; preds = %do.end
  %0 = load i64, ptr %nr_pages.addr, align 8, !dbg !686
  %1 = load ptr, ptr %counter.addr, align 8, !dbg !686
  %low = getelementptr inbounds %struct.page_counter, ptr %1, i32 0, i32 13, !dbg !686
  store volatile i64 %0, ptr %low, align 8, !dbg !686
  br label %do.cond3, !dbg !686

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !686

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !682

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !682

do.end6:                                          ; preds = %do.cond5
  %2 = load ptr, ptr %counter.addr, align 8, !dbg !688
  store ptr %2, ptr %c, align 8, !dbg !690
  br label %for.cond, !dbg !691

for.cond:                                         ; preds = %for.inc, %do.end6
  %3 = load ptr, ptr %c, align 8, !dbg !692
  %tobool = icmp ne ptr %3, null, !dbg !694
  br i1 %tobool, label %for.body, label %for.end, !dbg !694

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %c, align 8, !dbg !695
  %5 = load ptr, ptr %c, align 8, !dbg !696
  %usage = getelementptr inbounds %struct.page_counter, ptr %5, i32 0, i32 0, !dbg !697
  %call = call i64 @atomic_long_read(ptr noundef %usage) #8, !dbg !698
  call void @propagate_protected_usage(ptr noundef %4, i64 noundef %call) #8, !dbg !699
  br label %for.inc, !dbg !699

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %c, align 8, !dbg !700
  %parent = getelementptr inbounds %struct.page_counter, ptr %6, i32 0, i32 16, !dbg !701
  %7 = load ptr, ptr %parent, align 32, !dbg !701
  store ptr %7, ptr %c, align 8, !dbg !702
  br label %for.cond, !dbg !703, !llvm.loop !704

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7, !dbg !706
  ret void, !dbg !706
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @page_counter_memparse(ptr noundef %buf, ptr noundef %max, ptr noundef %nr_pages) #0 align 16 !dbg !707 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %nr_pages.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x161 = alloca i64, align 8
  %__UNIQUE_ID___y162 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !711, metadata !DIExpression()), !dbg !720
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !712, metadata !DIExpression()), !dbg !721
  store ptr %nr_pages, ptr %nr_pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr_pages.addr, metadata !713, metadata !DIExpression()), !dbg !722
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %end, metadata !714, metadata !DIExpression()), !dbg !724
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #7, !dbg !725
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !716, metadata !DIExpression()), !dbg !726
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !727
  %1 = load ptr, ptr %max.addr, align 8, !dbg !729
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef %1) #8, !dbg !730
  %tobool = icmp ne i32 %call, 0, !dbg !730
  br i1 %tobool, label %if.end, label %if.then, !dbg !731

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %nr_pages.addr, align 8, !dbg !732
  store i64 2251799813685247, ptr %2, align 8, !dbg !734
  store i32 0, ptr %retval, align 4, !dbg !735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !735

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !736
  %call1 = call i64 @memparse(ptr noundef %3, ptr noundef %end) #8, !dbg !737
  store i64 %call1, ptr %bytes, align 8, !dbg !738
  %4 = load ptr, ptr %end, align 8, !dbg !739
  %5 = load i8, ptr %4, align 1, !dbg !741
  %conv = zext i8 %5 to i32, !dbg !741
  %cmp = icmp ne i32 %conv, 0, !dbg !742
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !743

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !744

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x161) #7, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x161, metadata !717, metadata !DIExpression()), !dbg !745
  %6 = load i64, ptr %bytes, align 8, !dbg !745
  %div = udiv i64 %6, 4096, !dbg !745
  store i64 %div, ptr %__UNIQUE_ID___x161, align 8, !dbg !745
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y162) #7, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y162, metadata !719, metadata !DIExpression()), !dbg !745
  store i64 2251799813685247, ptr %__UNIQUE_ID___y162, align 8, !dbg !745
  %7 = load i64, ptr %__UNIQUE_ID___x161, align 8, !dbg !745
  %8 = load i64, ptr %__UNIQUE_ID___y162, align 8, !dbg !745
  %cmp5 = icmp ult i64 %7, %8, !dbg !745
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !745

cond.true:                                        ; preds = %if.end4
  %9 = load i64, ptr %__UNIQUE_ID___x161, align 8, !dbg !745
  br label %cond.end, !dbg !745

cond.false:                                       ; preds = %if.end4
  %10 = load i64, ptr %__UNIQUE_ID___y162, align 8, !dbg !745
  br label %cond.end, !dbg !745

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !745
  store i64 %cond, ptr %tmp, align 8, !dbg !745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y162) #7, !dbg !746
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x161) #7, !dbg !746
  %11 = load i64, ptr %tmp, align 8, !dbg !745
  %12 = load ptr, ptr %nr_pages.addr, align 8, !dbg !747
  store i64 %11, ptr %12, align 8, !dbg !748
  store i32 0, ptr %retval, align 4, !dbg !749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !749

cleanup:                                          ; preds = %cond.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #7, !dbg !750
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !750
  %13 = load i32, ptr %retval, align 4, !dbg !750
  ret i32 %13, !dbg !750
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !751 dso_local i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !755 dso_local i64 @memparse(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_sub_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !759 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !761, metadata !DIExpression()), !dbg !763
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !762, metadata !DIExpression()), !dbg !764
  %0 = load i64, ptr %i.addr, align 8, !dbg !765
  %1 = load ptr, ptr %v.addr, align 8, !dbg !766
  %call = call i64 @raw_atomic64_sub_return(i64 noundef %0, ptr noundef %1) #8, !dbg !767
  ret i64 %call, !dbg !768
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_sub_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !769 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !775, metadata !DIExpression()), !dbg !777
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !776, metadata !DIExpression()), !dbg !778
  %0 = load i64, ptr %i.addr, align 8, !dbg !779
  %1 = load ptr, ptr %v.addr, align 8, !dbg !780
  %call = call i64 @arch_atomic64_sub_return(i64 noundef %0, ptr noundef %1) #8, !dbg !781
  ret i64 %call, !dbg !782
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_sub_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !783 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !786, metadata !DIExpression()), !dbg !788
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !787, metadata !DIExpression()), !dbg !789
  %0 = load i64, ptr %i.addr, align 8, !dbg !790
  %sub = sub i64 0, %0, !dbg !791
  %1 = load ptr, ptr %v.addr, align 8, !dbg !792
  %call = call i64 @arch_atomic64_add_return(i64 noundef %sub, ptr noundef %1) #8, !dbg !793
  ret i64 %call, !dbg !794
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !795 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !797, metadata !DIExpression()), !dbg !801
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !798, metadata !DIExpression()), !dbg !802
  %0 = load i64, ptr %i.addr, align 8, !dbg !803
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #7, !dbg !804
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !799, metadata !DIExpression()), !dbg !804
  %1 = load i64, ptr %i.addr, align 8, !dbg !804
  store i64 %1, ptr %__ret, align 8, !dbg !804
  %2 = load i64, ptr %__ret, align 8, !dbg !804
  %3 = load ptr, ptr %v.addr, align 8, !dbg !804
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !804
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #7, !dbg !804, !srcloc !805
  store i64 %4, ptr %__ret, align 8, !dbg !804
  %5 = load i64, ptr %__ret, align 8, !dbg !804
  store i64 %5, ptr %tmp, align 8, !dbg !804
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #7, !dbg !806
  %6 = load i64, ptr %tmp, align 8, !dbg !804
  %add = add i64 %0, %6, !dbg !807
  ret i64 %add, !dbg !808
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !809 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !811, metadata !DIExpression()), !dbg !813
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !812, metadata !DIExpression()), !dbg !814
  %0 = load ptr, ptr %v.addr, align 8, !dbg !815
  %1 = load i64, ptr %size.addr, align 8, !dbg !816
  %conv = trunc i64 %1 to i32, !dbg !816
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !817
  %2 = load ptr, ptr %v.addr, align 8, !dbg !818
  %3 = load i64, ptr %size.addr, align 8, !dbg !818
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #8, !dbg !818
  ret void, !dbg !819
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !820 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !822, metadata !DIExpression()), !dbg !824
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !823, metadata !DIExpression()), !dbg !825
  %0 = load ptr, ptr %v.addr, align 8, !dbg !826
  %1 = load i64, ptr %i.addr, align 8, !dbg !827
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #8, !dbg !828
  ret void, !dbg !829
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !830 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !835, metadata !DIExpression()), !dbg !837
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !836, metadata !DIExpression()), !dbg !838
  ret i1 true, !dbg !839
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !840 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !844, metadata !DIExpression()), !dbg !847
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !845, metadata !DIExpression()), !dbg !848
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !846, metadata !DIExpression()), !dbg !849
  ret void, !dbg !850
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !851 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !855, metadata !DIExpression()), !dbg !857
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !856, metadata !DIExpression()), !dbg !858
  %0 = load ptr, ptr %v.addr, align 8, !dbg !859
  %1 = load i64, ptr %i.addr, align 8, !dbg !860
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #8, !dbg !861
  ret void, !dbg !862
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !863 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !865, metadata !DIExpression()), !dbg !867
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !866, metadata !DIExpression()), !dbg !868
  br label %do.body, !dbg !869

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !870
  %1 = load ptr, ptr %v.addr, align 8, !dbg !870
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !870
  store volatile i64 %0, ptr %counter, align 8, !dbg !870
  br label %do.end, !dbg !870

do.end:                                           ; preds = %do.body
  ret void, !dbg !872
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_xchg(ptr noundef %v, i64 noundef %new) #3 align 16 !dbg !873 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !877, metadata !DIExpression()), !dbg !879
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !878, metadata !DIExpression()), !dbg !880
  br label %do.body, !dbg !881

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !882

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !884
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #8, !dbg !885
  %1 = load ptr, ptr %v.addr, align 8, !dbg !886
  %2 = load i64, ptr %new.addr, align 8, !dbg !887
  %call = call i64 @raw_atomic_long_xchg(ptr noundef %1, i64 noundef %2) #8, !dbg !888
  ret i64 %call, !dbg !889
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_add(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !890 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !892, metadata !DIExpression()), !dbg !894
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !893, metadata !DIExpression()), !dbg !895
  %0 = load ptr, ptr %v.addr, align 8, !dbg !896
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #8, !dbg !897
  %1 = load i64, ptr %i.addr, align 8, !dbg !898
  %2 = load ptr, ptr %v.addr, align 8, !dbg !899
  call void @raw_atomic_long_add(i64 noundef %1, ptr noundef %2) #8, !dbg !900
  ret void, !dbg !901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_xchg(ptr noundef %v, i64 noundef %new) #3 align 16 !dbg !902 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !904, metadata !DIExpression()), !dbg !906
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !905, metadata !DIExpression()), !dbg !907
  %0 = load ptr, ptr %v.addr, align 8, !dbg !908
  %1 = load i64, ptr %new.addr, align 8, !dbg !909
  %call = call i64 @raw_atomic64_xchg(ptr noundef %0, i64 noundef %1) #8, !dbg !910
  ret i64 %call, !dbg !911
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_xchg(ptr noundef %v, i64 noundef %new) #3 align 16 !dbg !912 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !916, metadata !DIExpression()), !dbg !918
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !917, metadata !DIExpression()), !dbg !919
  %0 = load ptr, ptr %v.addr, align 8, !dbg !920
  %1 = load i64, ptr %new.addr, align 8, !dbg !921
  %call = call i64 @arch_atomic64_xchg(ptr noundef %0, i64 noundef %1) #8, !dbg !922
  ret i64 %call, !dbg !923
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_xchg(ptr noundef %v, i64 noundef %new) #3 align 16 !dbg !924 {
entry:
  %v.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !926, metadata !DIExpression()), !dbg !930
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !927, metadata !DIExpression()), !dbg !931
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #7, !dbg !932
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !928, metadata !DIExpression()), !dbg !932
  %0 = load i64, ptr %new.addr, align 8, !dbg !932
  store i64 %0, ptr %__ret, align 8, !dbg !932
  %1 = load i64, ptr %__ret, align 8, !dbg !932
  %2 = load ptr, ptr %v.addr, align 8, !dbg !932
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !932
  %3 = call i64 asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #7, !dbg !932, !srcloc !933
  store i64 %3, ptr %__ret, align 8, !dbg !932
  %4 = load i64, ptr %__ret, align 8, !dbg !932
  store i64 %4, ptr %tmp, align 8, !dbg !932
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #7, !dbg !934
  %5 = load i64, ptr %tmp, align 8, !dbg !932
  ret i64 %5, !dbg !935
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_add(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !936 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !938, metadata !DIExpression()), !dbg !940
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !939, metadata !DIExpression()), !dbg !941
  %0 = load i64, ptr %i.addr, align 8, !dbg !942
  %1 = load ptr, ptr %v.addr, align 8, !dbg !943
  call void @raw_atomic64_add(i64 noundef %0, ptr noundef %1) #8, !dbg !944
  ret void, !dbg !945
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_add(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !946 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !950, metadata !DIExpression()), !dbg !952
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !951, metadata !DIExpression()), !dbg !953
  %0 = load i64, ptr %i.addr, align 8, !dbg !954
  %1 = load ptr, ptr %v.addr, align 8, !dbg !955
  call void @arch_atomic64_add(i64 noundef %0, ptr noundef %1) #8, !dbg !956
  ret void, !dbg !957
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_add(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !958 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !960, metadata !DIExpression()), !dbg !962
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !961, metadata !DIExpression()), !dbg !963
  %0 = load ptr, ptr %v.addr, align 8, !dbg !964
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !965
  %1 = load i64, ptr %i.addr, align 8, !dbg !966
  %2 = load ptr, ptr %v.addr, align 8, !dbg !967
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !968
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #7, !dbg !969, !srcloc !970
  ret void, !dbg !971
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_add_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !972 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !974, metadata !DIExpression()), !dbg !976
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !975, metadata !DIExpression()), !dbg !977
  %0 = load i64, ptr %i.addr, align 8, !dbg !978
  %1 = load ptr, ptr %v.addr, align 8, !dbg !979
  %call = call i64 @raw_atomic64_add_return(i64 noundef %0, ptr noundef %1) #8, !dbg !980
  ret i64 %call, !dbg !981
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !982 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !984, metadata !DIExpression()), !dbg !986
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !985, metadata !DIExpression()), !dbg !987
  %0 = load i64, ptr %i.addr, align 8, !dbg !988
  %1 = load ptr, ptr %v.addr, align 8, !dbg !989
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #8, !dbg !990
  ret i64 %call, !dbg !991
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_sub(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !992 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !994, metadata !DIExpression()), !dbg !996
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !995, metadata !DIExpression()), !dbg !997
  %0 = load i64, ptr %i.addr, align 8, !dbg !998
  %1 = load ptr, ptr %v.addr, align 8, !dbg !999
  call void @raw_atomic64_sub(i64 noundef %0, ptr noundef %1) #8, !dbg !1000
  ret void, !dbg !1001
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_sub(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !1002 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1004, metadata !DIExpression()), !dbg !1006
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1005, metadata !DIExpression()), !dbg !1007
  %0 = load i64, ptr %i.addr, align 8, !dbg !1008
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1009
  call void @arch_atomic64_sub(i64 noundef %0, ptr noundef %1) #8, !dbg !1010
  ret void, !dbg !1011
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_sub(i64 noundef %i, ptr noundef %v) #3 align 16 !dbg !1012 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1014, metadata !DIExpression()), !dbg !1016
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1015, metadata !DIExpression()), !dbg !1017
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1018
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !1019
  %1 = load i64, ptr %i.addr, align 8, !dbg !1020
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1021
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !1022
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #7, !dbg !1023, !srcloc !1024
  ret void, !dbg !1025
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1026 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1028, metadata !DIExpression()), !dbg !1030
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1029, metadata !DIExpression()), !dbg !1031
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1032
  %1 = load i64, ptr %size.addr, align 8, !dbg !1033
  %conv = trunc i64 %1 to i32, !dbg !1033
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #8, !dbg !1034
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1035
  %3 = load i64, ptr %size.addr, align 8, !dbg !1035
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #8, !dbg !1035
  ret void, !dbg !1036
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #3 align 16 !dbg !1037 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1041
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #8, !dbg !1042
  ret i64 %call, !dbg !1043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !1044 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1046, metadata !DIExpression()), !dbg !1048
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1047, metadata !DIExpression()), !dbg !1049
  ret i1 true, !dbg !1050
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #3 align 16 !dbg !1051 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1057, metadata !DIExpression()), !dbg !1058
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1059
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #8, !dbg !1060
  ret i64 %call, !dbg !1061
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #3 align 16 !dbg !1062 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1064, metadata !DIExpression()), !dbg !1065
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1066
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !1066
  %1 = load volatile i64, ptr %counter, align 8, !dbg !1066
  ret i64 %1, !dbg !1067
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

!llvm.dbg.cu = !{!47}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__already_done", scope: !2, file: !3, line: 55, type: !95, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "page_counter_cancel", scope: !3, file: !3, line: 49, type: !4, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !88)
!3 = !DIFile(filename: "mm/page_counter.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb6c602bcac35211bfc4cc1c436fc11")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !33}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_counter", file: !8, line: 10, size: 1536, align: 512, elements: !9)
!8 = !DIFile(filename: "./include/linux/page_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0aa69dba5457c8659c8bb804877e419c")
!9 = !{!10, !23, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !7, file: !8, line: 15, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !12, line: 13, baseType: !13)
!12 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !14, line: 181, baseType: !15)
!14 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 179, size: 64, elements: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !15, file: !14, line: 180, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !19, line: 22, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !21, line: 30, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_pad1_", scope: !7, file: !8, line: 16, baseType: !24, align: 512, offset: 512)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheline_padding", file: !25, line: 93, align: 512, elements: !26)
!25 = !DIFile(filename: "./include/linux/cache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "599edcbe9a1f0cbc1eddd4ed9f4096ef")
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !24, file: !25, line: 94, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !30)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !{!31}
!31 = !DISubrange(count: 0)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !7, file: !8, line: 19, baseType: !33, size: 64, offset: 512)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "min_usage", scope: !7, file: !8, line: 20, baseType: !11, size: 64, offset: 576)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "children_min_usage", scope: !7, file: !8, line: 21, baseType: !11, size: 64, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "elow", scope: !7, file: !8, line: 24, baseType: !33, size: 64, offset: 704)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "low_usage", scope: !7, file: !8, line: 25, baseType: !11, size: 64, offset: 768)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "children_low_usage", scope: !7, file: !8, line: 26, baseType: !11, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !7, file: !8, line: 28, baseType: !33, size: 64, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "failcnt", scope: !7, file: !8, line: 29, baseType: !33, size: 64, offset: 960)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_pad2_", scope: !7, file: !8, line: 32, baseType: !24, align: 512, offset: 1024)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !7, file: !8, line: 34, baseType: !33, size: 64, offset: 1024)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !7, file: !8, line: 35, baseType: !33, size: 64, offset: 1088)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !7, file: !8, line: 36, baseType: !33, size: 64, offset: 1152)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !7, file: !8, line: 37, baseType: !33, size: 64, offset: 1216)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !7, file: !8, line: 38, baseType: !6, size: 64, offset: 1280)
!47 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.page_counter.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/page_counter\22 -D KBUILD_BASENAME=\22page_counter\22 -D KBUILD_MODNAME=\22page_counter\22 -D __KBUILD_MODNAME=kmod_page_counter -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/page_counter.ll mm/page_counter.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !48, retainedTypes: !55, globals: !70, splitDebugInlining: false, nameTableKind: None)
!48 = !{!49}
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 10, baseType: !51, size: 32, elements: !52)
!50 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!51 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0)
!54 = !DIEnumerator(name: "true", value: 1)
!55 = !{!56, !59, !60, !61, !64, !66, !67}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!60 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !63)
!63 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!70 = !{!0, !71, !76, !81}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 336, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 42)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 144, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 18)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched145", scope: !83, file: !84, line: 2104, type: !66, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "_cond_resched", scope: !84, file: !84, line: 2102, type: !85, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47)
!84 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!85 = !DISubroutineType(types: !86)
!86 = !{!87}
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !{!89, !90, !91, !92, !97, !100, !101, !103}
!89 = !DILocalVariable(name: "counter", arg: 1, scope: !2, file: !3, line: 49, type: !6)
!90 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !2, file: !3, line: 49, type: !33)
!91 = !DILocalVariable(name: "new", scope: !2, file: !3, line: 51, type: !60)
!92 = !DILocalVariable(name: "__ret_do_once", scope: !93, file: !3, line: 55, type: !95)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 55, column: 6)
!94 = distinct !DILexicalBlock(scope: !2, file: !3, line: 55, column: 6)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !14, line: 35, baseType: !96)
!96 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!97 = !DILocalVariable(name: "__ret_cond", scope: !98, file: !3, line: 55, type: !95)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 55, column: 6)
!99 = distinct !DILexicalBlock(scope: !93, file: !3, line: 55, column: 6)
!100 = !DILocalVariable(name: "__ret_once", scope: !98, file: !3, line: 55, type: !95)
!101 = !DILocalVariable(name: "__ret_warn_on", scope: !102, file: !3, line: 55, type: !87)
!102 = distinct !DILexicalBlock(scope: !99, file: !3, line: 55, column: 6)
!103 = !DILocalVariable(name: "__flags", scope: !104, file: !3, line: 55, type: !87)
!104 = distinct !DILexicalBlock(scope: !105, file: !3, line: 55, column: 6)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 55, column: 6)
!106 = distinct !DILexicalBlock(scope: !102, file: !3, line: 55, column: 6)
!107 = !{i32 7, !"Dwarf Version", i32 5}
!108 = !{i32 2, !"Debug Info Version", i32 3}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 8, !"cf-protection-branch", i32 1}
!111 = !{i32 4, !"function_return_thunk_extern", i32 1}
!112 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!113 = !{i32 1, !"Code Model", i32 2}
!114 = !{i32 1, !"override-stack-alignment", i32 8}
!115 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!116 = !DILocation(line: 49, column: 47, scope: !2)
!117 = !DILocation(line: 49, column: 70, scope: !2)
!118 = !DILocation(line: 51, column: 2, scope: !2)
!119 = !DILocation(line: 51, column: 7, scope: !2)
!120 = !DILocation(line: 53, column: 31, scope: !2)
!121 = !DILocation(line: 53, column: 42, scope: !2)
!122 = !DILocation(line: 53, column: 51, scope: !2)
!123 = !DILocation(line: 53, column: 8, scope: !2)
!124 = !DILocation(line: 53, column: 6, scope: !2)
!125 = !DILocation(line: 55, column: 6, scope: !93)
!126 = !DILocation(line: 55, column: 6, scope: !98)
!127 = !{i8 0, i8 2}
!128 = !{}
!129 = !DILocation(line: 55, column: 6, scope: !130)
!130 = distinct !DILexicalBlock(scope: !98, file: !3, line: 55, column: 6)
!131 = !DILocation(line: 0, scope: !130)
!132 = !DILocation(line: 55, column: 6, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !3, line: 55, column: 6)
!134 = !DILocation(line: 55, column: 6, scope: !99)
!135 = !DILocation(line: 55, column: 6, scope: !102)
!136 = !DILocation(line: 55, column: 6, scope: !106)
!137 = !DILocation(line: 55, column: 6, scope: !105)
!138 = !DILocation(line: 55, column: 6, scope: !139)
!139 = distinct !DILexicalBlock(scope: !105, file: !3, line: 55, column: 6)
!140 = !DILocation(line: 55, column: 6, scope: !104)
!141 = !DILocation(line: 55, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !104, file: !3, line: 55, column: 6)
!143 = !DILocation(line: 55, column: 6, scope: !144)
!144 = distinct !DILexicalBlock(scope: !104, file: !3, line: 55, column: 6)
!145 = !{i64 2150959925, i64 2150959954, i64 2150960000, i64 2150960058, i64 2150960112, i64 2150960166, i64 2150960221, i64 2150960252, i64 2150960560, i64 2150960566, i64 2150960613, i64 2150960636, i64 2150960662}
!146 = !DILocation(line: 55, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !104, file: !3, line: 55, column: 6)
!148 = !DILocation(line: 55, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !105, file: !3, line: 55, column: 6)
!150 = !DILocation(line: 55, column: 6, scope: !94)
!151 = !DILocation(line: 55, column: 6, scope: !2)
!152 = !DILocation(line: 57, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !94, file: !3, line: 56, column: 25)
!154 = !DILocation(line: 58, column: 20, scope: !153)
!155 = !DILocation(line: 58, column: 29, scope: !153)
!156 = !DILocation(line: 58, column: 36, scope: !153)
!157 = !DILocation(line: 58, column: 3, scope: !153)
!158 = !DILocation(line: 59, column: 2, scope: !153)
!159 = !DILocation(line: 60, column: 28, scope: !2)
!160 = !DILocation(line: 60, column: 37, scope: !2)
!161 = !DILocation(line: 60, column: 2, scope: !2)
!162 = !DILocation(line: 61, column: 1, scope: !2)
!163 = distinct !DISubprogram(name: "atomic_long_sub_return", scope: !164, file: !164, line: 3414, type: !165, scopeLine: 3415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !168)
!164 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!165 = !DISubroutineType(types: !166)
!166 = !{!60, !60, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!168 = !{!169, !170}
!169 = !DILocalVariable(name: "i", arg: 1, scope: !163, file: !164, line: 3414, type: !60)
!170 = !DILocalVariable(name: "v", arg: 2, scope: !163, file: !164, line: 3414, type: !167)
!171 = !DILocation(line: 3414, column: 29, scope: !163)
!172 = !DILocation(line: 3414, column: 47, scope: !163)
!173 = !DILocation(line: 3416, column: 2, scope: !163)
!174 = !DILocation(line: 3416, column: 2, scope: !175)
!175 = distinct !DILexicalBlock(scope: !163, file: !164, line: 3416, column: 2)
!176 = !DILocation(line: 3417, column: 31, scope: !163)
!177 = !DILocation(line: 3417, column: 2, scope: !163)
!178 = !DILocation(line: 3418, column: 36, scope: !163)
!179 = !DILocation(line: 3418, column: 39, scope: !163)
!180 = !DILocation(line: 3418, column: 9, scope: !163)
!181 = !DILocation(line: 3418, column: 2, scope: !163)
!182 = !DISubprogram(name: "__warn_printk", scope: !183, file: !183, line: 93, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!183 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!184 = !DISubroutineType(types: !185)
!185 = !{null, !186, null}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!188 = distinct !DISubprogram(name: "atomic_long_set", scope: !164, file: !164, line: 3193, type: !189, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !167, !60}
!191 = !{!192, !193}
!192 = !DILocalVariable(name: "v", arg: 1, scope: !188, file: !164, line: 3193, type: !167)
!193 = !DILocalVariable(name: "i", arg: 2, scope: !188, file: !164, line: 3193, type: !60)
!194 = !DILocation(line: 3193, column: 32, scope: !188)
!195 = !DILocation(line: 3193, column: 40, scope: !188)
!196 = !DILocation(line: 3195, column: 26, scope: !188)
!197 = !DILocation(line: 3195, column: 2, scope: !188)
!198 = !DILocation(line: 3196, column: 22, scope: !188)
!199 = !DILocation(line: 3196, column: 25, scope: !188)
!200 = !DILocation(line: 3196, column: 2, scope: !188)
!201 = !DILocation(line: 3197, column: 1, scope: !188)
!202 = distinct !DISubprogram(name: "propagate_protected_usage", scope: !3, file: !3, line: 16, type: !4, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !211, !212, !214}
!204 = !DILocalVariable(name: "c", arg: 1, scope: !202, file: !3, line: 16, type: !6)
!205 = !DILocalVariable(name: "usage", arg: 2, scope: !202, file: !3, line: 17, type: !33)
!206 = !DILocalVariable(name: "protected", scope: !202, file: !3, line: 19, type: !33)
!207 = !DILocalVariable(name: "old_protected", scope: !202, file: !3, line: 19, type: !33)
!208 = !DILocalVariable(name: "delta", scope: !202, file: !3, line: 20, type: !60)
!209 = !DILocalVariable(name: "__UNIQUE_ID___x150", scope: !210, file: !3, line: 25, type: !33)
!210 = distinct !DILexicalBlock(scope: !202, file: !3, line: 25, column: 14)
!211 = !DILocalVariable(name: "__UNIQUE_ID___y151", scope: !210, file: !3, line: 25, type: !33)
!212 = !DILocalVariable(name: "__UNIQUE_ID___x153", scope: !213, file: !3, line: 34, type: !33)
!213 = distinct !DILexicalBlock(scope: !202, file: !3, line: 34, column: 14)
!214 = !DILocalVariable(name: "__UNIQUE_ID___y154", scope: !213, file: !3, line: 34, type: !33)
!215 = !DILocation(line: 16, column: 60, scope: !202)
!216 = !DILocation(line: 17, column: 25, scope: !202)
!217 = !DILocation(line: 19, column: 2, scope: !202)
!218 = !DILocation(line: 19, column: 16, scope: !202)
!219 = !DILocation(line: 19, column: 27, scope: !202)
!220 = !DILocation(line: 20, column: 2, scope: !202)
!221 = !DILocation(line: 20, column: 7, scope: !202)
!222 = !DILocation(line: 22, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !202, file: !3, line: 22, column: 6)
!224 = !DILocation(line: 22, column: 10, scope: !223)
!225 = !DILocation(line: 22, column: 6, scope: !202)
!226 = !DILocation(line: 23, column: 3, scope: !223)
!227 = !DILocation(line: 25, column: 14, scope: !210)
!228 = !DILocation(line: 25, column: 14, scope: !229)
!229 = distinct !DILexicalBlock(scope: !210, file: !3, line: 25, column: 14)
!230 = !DILocation(line: 25, column: 14, scope: !231)
!231 = distinct !DILexicalBlock(scope: !229, file: !3, line: 25, column: 14)
!232 = !DILocation(line: 25, column: 14, scope: !202)
!233 = !DILocation(line: 25, column: 12, scope: !202)
!234 = !DILocation(line: 26, column: 36, scope: !202)
!235 = !DILocation(line: 26, column: 39, scope: !202)
!236 = !DILocation(line: 26, column: 18, scope: !202)
!237 = !DILocation(line: 26, column: 16, scope: !202)
!238 = !DILocation(line: 27, column: 6, scope: !239)
!239 = distinct !DILexicalBlock(scope: !202, file: !3, line: 27, column: 6)
!240 = !DILocation(line: 27, column: 19, scope: !239)
!241 = !DILocation(line: 27, column: 16, scope: !239)
!242 = !DILocation(line: 27, column: 6, scope: !202)
!243 = !DILocation(line: 28, column: 37, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !3, line: 27, column: 34)
!245 = !DILocation(line: 28, column: 40, scope: !244)
!246 = !DILocation(line: 28, column: 51, scope: !244)
!247 = !DILocation(line: 28, column: 19, scope: !244)
!248 = !DILocation(line: 28, column: 17, scope: !244)
!249 = !DILocation(line: 29, column: 11, scope: !244)
!250 = !DILocation(line: 29, column: 23, scope: !244)
!251 = !DILocation(line: 29, column: 21, scope: !244)
!252 = !DILocation(line: 29, column: 9, scope: !244)
!253 = !DILocation(line: 30, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !244, file: !3, line: 30, column: 7)
!255 = !DILocation(line: 30, column: 7, scope: !244)
!256 = !DILocation(line: 31, column: 20, scope: !254)
!257 = !DILocation(line: 31, column: 28, scope: !254)
!258 = !DILocation(line: 31, column: 31, scope: !254)
!259 = !DILocation(line: 31, column: 39, scope: !254)
!260 = !DILocation(line: 31, column: 4, scope: !254)
!261 = !DILocation(line: 32, column: 2, scope: !244)
!262 = !DILocation(line: 34, column: 14, scope: !213)
!263 = !DILocation(line: 34, column: 14, scope: !264)
!264 = distinct !DILexicalBlock(scope: !213, file: !3, line: 34, column: 14)
!265 = !DILocation(line: 34, column: 14, scope: !266)
!266 = distinct !DILexicalBlock(scope: !264, file: !3, line: 34, column: 14)
!267 = !DILocation(line: 34, column: 14, scope: !202)
!268 = !DILocation(line: 34, column: 12, scope: !202)
!269 = !DILocation(line: 35, column: 36, scope: !202)
!270 = !DILocation(line: 35, column: 39, scope: !202)
!271 = !DILocation(line: 35, column: 18, scope: !202)
!272 = !DILocation(line: 35, column: 16, scope: !202)
!273 = !DILocation(line: 36, column: 6, scope: !274)
!274 = distinct !DILexicalBlock(scope: !202, file: !3, line: 36, column: 6)
!275 = !DILocation(line: 36, column: 19, scope: !274)
!276 = !DILocation(line: 36, column: 16, scope: !274)
!277 = !DILocation(line: 36, column: 6, scope: !202)
!278 = !DILocation(line: 37, column: 37, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !3, line: 36, column: 34)
!280 = !DILocation(line: 37, column: 40, scope: !279)
!281 = !DILocation(line: 37, column: 51, scope: !279)
!282 = !DILocation(line: 37, column: 19, scope: !279)
!283 = !DILocation(line: 37, column: 17, scope: !279)
!284 = !DILocation(line: 38, column: 11, scope: !279)
!285 = !DILocation(line: 38, column: 23, scope: !279)
!286 = !DILocation(line: 38, column: 21, scope: !279)
!287 = !DILocation(line: 38, column: 9, scope: !279)
!288 = !DILocation(line: 39, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !279, file: !3, line: 39, column: 7)
!290 = !DILocation(line: 39, column: 7, scope: !279)
!291 = !DILocation(line: 40, column: 20, scope: !289)
!292 = !DILocation(line: 40, column: 28, scope: !289)
!293 = !DILocation(line: 40, column: 31, scope: !289)
!294 = !DILocation(line: 40, column: 39, scope: !289)
!295 = !DILocation(line: 40, column: 4, scope: !289)
!296 = !DILocation(line: 41, column: 2, scope: !279)
!297 = !DILocation(line: 42, column: 1, scope: !202)
!298 = distinct !DISubprogram(name: "page_counter_charge", scope: !3, file: !3, line: 70, type: !4, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !299)
!299 = !{!300, !301, !302, !303}
!300 = !DILocalVariable(name: "counter", arg: 1, scope: !298, file: !3, line: 70, type: !6)
!301 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !298, file: !3, line: 70, type: !33)
!302 = !DILocalVariable(name: "c", scope: !298, file: !3, line: 72, type: !6)
!303 = !DILocalVariable(name: "new", scope: !304, file: !3, line: 75, type: !60)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 74, column: 38)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 74, column: 2)
!306 = distinct !DILexicalBlock(scope: !298, file: !3, line: 74, column: 2)
!307 = !DILocation(line: 70, column: 47, scope: !298)
!308 = !DILocation(line: 70, column: 70, scope: !298)
!309 = !DILocation(line: 72, column: 2, scope: !298)
!310 = !DILocation(line: 72, column: 23, scope: !298)
!311 = !DILocation(line: 74, column: 11, scope: !306)
!312 = !DILocation(line: 74, column: 9, scope: !306)
!313 = !DILocation(line: 74, column: 7, scope: !306)
!314 = !DILocation(line: 74, column: 20, scope: !305)
!315 = !DILocation(line: 74, column: 2, scope: !306)
!316 = !DILocation(line: 75, column: 3, scope: !304)
!317 = !DILocation(line: 75, column: 8, scope: !304)
!318 = !DILocation(line: 77, column: 32, scope: !304)
!319 = !DILocation(line: 77, column: 43, scope: !304)
!320 = !DILocation(line: 77, column: 46, scope: !304)
!321 = !DILocation(line: 77, column: 9, scope: !304)
!322 = !DILocation(line: 77, column: 7, scope: !304)
!323 = !DILocation(line: 78, column: 29, scope: !304)
!324 = !DILocation(line: 78, column: 32, scope: !304)
!325 = !DILocation(line: 78, column: 3, scope: !304)
!326 = !DILocation(line: 83, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !304, file: !3, line: 83, column: 7)
!328 = !DILocation(line: 83, column: 13, scope: !329)
!329 = distinct !DILexicalBlock(scope: !327, file: !3, line: 83, column: 13)
!330 = !DILocation(line: 83, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !329, file: !3, line: 83, column: 13)
!332 = !DILocation(line: 83, column: 11, scope: !327)
!333 = !DILocation(line: 83, column: 7, scope: !304)
!334 = !DILocation(line: 84, column: 4, scope: !327)
!335 = !DILocation(line: 84, column: 4, scope: !336)
!336 = distinct !DILexicalBlock(scope: !327, file: !3, line: 84, column: 4)
!337 = !DILocation(line: 84, column: 4, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !3, line: 84, column: 4)
!339 = !DILocation(line: 84, column: 4, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 84, column: 4)
!341 = !DILocation(line: 85, column: 2, scope: !305)
!342 = !DILocation(line: 85, column: 2, scope: !304)
!343 = !DILocation(line: 74, column: 27, scope: !305)
!344 = !DILocation(line: 74, column: 30, scope: !305)
!345 = !DILocation(line: 74, column: 25, scope: !305)
!346 = !DILocation(line: 74, column: 2, scope: !305)
!347 = distinct !{!347, !315, !348, !349, !350}
!348 = !DILocation(line: 85, column: 2, scope: !306)
!349 = !{!"llvm.loop.mustprogress"}
!350 = !{!"llvm.loop.unroll.disable"}
!351 = !DILocation(line: 86, column: 1, scope: !298)
!352 = distinct !DISubprogram(name: "atomic_long_add_return", scope: !164, file: !164, line: 3248, type: !165, scopeLine: 3249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !353)
!353 = !{!354, !355}
!354 = !DILocalVariable(name: "i", arg: 1, scope: !352, file: !164, line: 3248, type: !60)
!355 = !DILocalVariable(name: "v", arg: 2, scope: !352, file: !164, line: 3248, type: !167)
!356 = !DILocation(line: 3248, column: 29, scope: !352)
!357 = !DILocation(line: 3248, column: 47, scope: !352)
!358 = !DILocation(line: 3250, column: 2, scope: !352)
!359 = !DILocation(line: 3250, column: 2, scope: !360)
!360 = distinct !DILexicalBlock(scope: !352, file: !164, line: 3250, column: 2)
!361 = !DILocation(line: 3251, column: 31, scope: !352)
!362 = !DILocation(line: 3251, column: 2, scope: !352)
!363 = !DILocation(line: 3252, column: 36, scope: !352)
!364 = !DILocation(line: 3252, column: 39, scope: !352)
!365 = !DILocation(line: 3252, column: 9, scope: !352)
!366 = !DILocation(line: 3252, column: 2, scope: !352)
!367 = distinct !DISubprogram(name: "page_counter_try_charge", scope: !3, file: !3, line: 97, type: !368, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !371)
!368 = !DISubroutineType(types: !369)
!369 = !{!95, !6, !33, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!371 = !{!372, !373, !374, !375, !376, !380, !384}
!372 = !DILocalVariable(name: "counter", arg: 1, scope: !367, file: !3, line: 97, type: !6)
!373 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !367, file: !3, line: 98, type: !33)
!374 = !DILocalVariable(name: "fail", arg: 3, scope: !367, file: !3, line: 99, type: !370)
!375 = !DILocalVariable(name: "c", scope: !367, file: !3, line: 101, type: !6)
!376 = !DILocalVariable(name: "new", scope: !377, file: !3, line: 104, type: !60)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 103, column: 38)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 103, column: 2)
!379 = distinct !DILexicalBlock(scope: !367, file: !3, line: 103, column: 2)
!380 = !DILocalVariable(name: "__v", scope: !381, file: !3, line: 127, type: !33)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 127, column: 4)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 120, column: 21)
!383 = distinct !DILexicalBlock(scope: !377, file: !3, line: 120, column: 7)
!384 = !DILabel(scope: !367, name: "failed", file: !3, line: 141)
!385 = !DILocation(line: 97, column: 51, scope: !367)
!386 = !DILocation(line: 98, column: 23, scope: !367)
!387 = !DILocation(line: 99, column: 31, scope: !367)
!388 = !DILocation(line: 101, column: 2, scope: !367)
!389 = !DILocation(line: 101, column: 23, scope: !367)
!390 = !DILocation(line: 103, column: 11, scope: !379)
!391 = !DILocation(line: 103, column: 9, scope: !379)
!392 = !DILocation(line: 103, column: 7, scope: !379)
!393 = !DILocation(line: 103, column: 20, scope: !378)
!394 = !DILocation(line: 103, column: 2, scope: !379)
!395 = !DILocation(line: 104, column: 3, scope: !377)
!396 = !DILocation(line: 104, column: 8, scope: !377)
!397 = !DILocation(line: 119, column: 32, scope: !377)
!398 = !DILocation(line: 119, column: 43, scope: !377)
!399 = !DILocation(line: 119, column: 46, scope: !377)
!400 = !DILocation(line: 119, column: 9, scope: !377)
!401 = !DILocation(line: 119, column: 7, scope: !377)
!402 = !DILocation(line: 120, column: 7, scope: !383)
!403 = !DILocation(line: 120, column: 13, scope: !383)
!404 = !DILocation(line: 120, column: 16, scope: !383)
!405 = !DILocation(line: 120, column: 11, scope: !383)
!406 = !DILocation(line: 120, column: 7, scope: !377)
!407 = !DILocation(line: 121, column: 20, scope: !382)
!408 = !DILocation(line: 121, column: 31, scope: !382)
!409 = !DILocation(line: 121, column: 34, scope: !382)
!410 = !DILocation(line: 121, column: 4, scope: !382)
!411 = !DILocation(line: 127, column: 4, scope: !381)
!412 = !DILocation(line: 127, column: 4, scope: !413)
!413 = distinct !DILexicalBlock(scope: !381, file: !3, line: 127, column: 4)
!414 = !DILocation(line: 127, column: 4, scope: !382)
!415 = !DILocation(line: 128, column: 12, scope: !382)
!416 = !DILocation(line: 128, column: 5, scope: !382)
!417 = !DILocation(line: 128, column: 10, scope: !382)
!418 = !DILocation(line: 129, column: 4, scope: !382)
!419 = !DILocation(line: 131, column: 29, scope: !377)
!420 = !DILocation(line: 131, column: 32, scope: !377)
!421 = !DILocation(line: 131, column: 3, scope: !377)
!422 = !DILocation(line: 136, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !377, file: !3, line: 136, column: 7)
!424 = !DILocation(line: 136, column: 13, scope: !425)
!425 = distinct !DILexicalBlock(scope: !423, file: !3, line: 136, column: 13)
!426 = !DILocation(line: 136, column: 13, scope: !427)
!427 = distinct !DILexicalBlock(scope: !425, file: !3, line: 136, column: 13)
!428 = !DILocation(line: 136, column: 11, scope: !423)
!429 = !DILocation(line: 136, column: 7, scope: !377)
!430 = !DILocation(line: 137, column: 4, scope: !423)
!431 = !DILocation(line: 137, column: 4, scope: !432)
!432 = distinct !DILexicalBlock(scope: !423, file: !3, line: 137, column: 4)
!433 = !DILocation(line: 137, column: 4, scope: !434)
!434 = distinct !DILexicalBlock(scope: !432, file: !3, line: 137, column: 4)
!435 = !DILocation(line: 137, column: 4, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !3, line: 137, column: 4)
!437 = !DILocation(line: 138, column: 2, scope: !378)
!438 = !DILocation(line: 138, column: 2, scope: !377)
!439 = !DILocation(line: 103, column: 27, scope: !378)
!440 = !DILocation(line: 103, column: 30, scope: !378)
!441 = !DILocation(line: 103, column: 25, scope: !378)
!442 = !DILocation(line: 103, column: 2, scope: !378)
!443 = distinct !{!443, !394, !444, !349, !350}
!444 = !DILocation(line: 138, column: 2, scope: !379)
!445 = !DILocation(line: 139, column: 2, scope: !367)
!446 = !DILocation(line: 141, column: 1, scope: !367)
!447 = !DILocation(line: 142, column: 11, scope: !448)
!448 = distinct !DILexicalBlock(scope: !367, file: !3, line: 142, column: 2)
!449 = !DILocation(line: 142, column: 9, scope: !448)
!450 = !DILocation(line: 142, column: 7, scope: !448)
!451 = !DILocation(line: 142, column: 20, scope: !452)
!452 = distinct !DILexicalBlock(scope: !448, file: !3, line: 142, column: 2)
!453 = !DILocation(line: 142, column: 26, scope: !452)
!454 = !DILocation(line: 142, column: 25, scope: !452)
!455 = !DILocation(line: 142, column: 22, scope: !452)
!456 = !DILocation(line: 142, column: 2, scope: !448)
!457 = !DILocation(line: 143, column: 23, scope: !452)
!458 = !DILocation(line: 143, column: 26, scope: !452)
!459 = !DILocation(line: 143, column: 3, scope: !452)
!460 = !DILocation(line: 142, column: 36, scope: !452)
!461 = !DILocation(line: 142, column: 39, scope: !452)
!462 = !DILocation(line: 142, column: 34, scope: !452)
!463 = !DILocation(line: 142, column: 2, scope: !452)
!464 = distinct !{!464, !456, !465, !349, !350}
!465 = !DILocation(line: 143, column: 34, scope: !448)
!466 = !DILocation(line: 145, column: 2, scope: !367)
!467 = !DILocation(line: 146, column: 1, scope: !367)
!468 = distinct !DISubprogram(name: "atomic_long_sub", scope: !164, file: !164, line: 3396, type: !469, scopeLine: 3397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !60, !167}
!471 = !{!472, !473}
!472 = !DILocalVariable(name: "i", arg: 1, scope: !468, file: !164, line: 3396, type: !60)
!473 = !DILocalVariable(name: "v", arg: 2, scope: !468, file: !164, line: 3396, type: !167)
!474 = !DILocation(line: 3396, column: 22, scope: !468)
!475 = !DILocation(line: 3396, column: 40, scope: !468)
!476 = !DILocation(line: 3398, column: 31, scope: !468)
!477 = !DILocation(line: 3398, column: 2, scope: !468)
!478 = !DILocation(line: 3399, column: 22, scope: !468)
!479 = !DILocation(line: 3399, column: 25, scope: !468)
!480 = !DILocation(line: 3399, column: 2, scope: !468)
!481 = !DILocation(line: 3400, column: 1, scope: !468)
!482 = distinct !DISubprogram(name: "__kcsan_disable_current", scope: !483, file: !483, line: 232, type: !484, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47)
!483 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!484 = !DISubroutineType(types: !485)
!485 = !{null}
!486 = !DILocation(line: 232, column: 52, scope: !482)
!487 = distinct !DISubprogram(name: "__kcsan_enable_current", scope: !483, file: !483, line: 231, type: !484, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47)
!488 = !DILocation(line: 231, column: 52, scope: !487)
!489 = distinct !DISubprogram(name: "page_counter_uncharge", scope: !3, file: !3, line: 153, type: !4, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !490)
!490 = !{!491, !492, !493}
!491 = !DILocalVariable(name: "counter", arg: 1, scope: !489, file: !3, line: 153, type: !6)
!492 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !489, file: !3, line: 153, type: !33)
!493 = !DILocalVariable(name: "c", scope: !489, file: !3, line: 155, type: !6)
!494 = !DILocation(line: 153, column: 49, scope: !489)
!495 = !DILocation(line: 153, column: 72, scope: !489)
!496 = !DILocation(line: 155, column: 2, scope: !489)
!497 = !DILocation(line: 155, column: 23, scope: !489)
!498 = !DILocation(line: 157, column: 11, scope: !499)
!499 = distinct !DILexicalBlock(scope: !489, file: !3, line: 157, column: 2)
!500 = !DILocation(line: 157, column: 9, scope: !499)
!501 = !DILocation(line: 157, column: 7, scope: !499)
!502 = !DILocation(line: 157, column: 20, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !3, line: 157, column: 2)
!504 = !DILocation(line: 157, column: 2, scope: !499)
!505 = !DILocation(line: 158, column: 23, scope: !503)
!506 = !DILocation(line: 158, column: 26, scope: !503)
!507 = !DILocation(line: 158, column: 3, scope: !503)
!508 = !DILocation(line: 157, column: 27, scope: !503)
!509 = !DILocation(line: 157, column: 30, scope: !503)
!510 = !DILocation(line: 157, column: 25, scope: !503)
!511 = !DILocation(line: 157, column: 2, scope: !503)
!512 = distinct !{!512, !504, !513, !349, !350}
!513 = !DILocation(line: 158, column: 34, scope: !499)
!514 = !DILocation(line: 159, column: 1, scope: !489)
!515 = distinct !DISubprogram(name: "page_counter_set_max", scope: !3, file: !3, line: 171, type: !516, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!87, !6, !33}
!518 = !{!519, !520, !521, !525, !526, !529}
!519 = !DILocalVariable(name: "counter", arg: 1, scope: !515, file: !3, line: 171, type: !6)
!520 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !515, file: !3, line: 171, type: !33)
!521 = !DILocalVariable(name: "old", scope: !522, file: !3, line: 174, type: !33)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 173, column: 11)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 173, column: 2)
!524 = distinct !DILexicalBlock(scope: !515, file: !3, line: 173, column: 2)
!525 = !DILocalVariable(name: "usage", scope: !522, file: !3, line: 175, type: !60)
!526 = !DILocalVariable(name: "__ai_ptr", scope: !527, file: !3, line: 193, type: !528)
!527 = distinct !DILexicalBlock(scope: !522, file: !3, line: 193, column: 9)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!529 = !DILocalVariable(name: "__ret", scope: !530, file: !3, line: 193, type: !33)
!530 = distinct !DILexicalBlock(scope: !527, file: !3, line: 193, column: 9)
!531 = !DILocation(line: 171, column: 47, scope: !515)
!532 = !DILocation(line: 171, column: 70, scope: !515)
!533 = !DILocation(line: 173, column: 2, scope: !515)
!534 = !DILocation(line: 174, column: 3, scope: !522)
!535 = !DILocation(line: 174, column: 17, scope: !522)
!536 = !DILocation(line: 175, column: 3, scope: !522)
!537 = !DILocation(line: 175, column: 8, scope: !522)
!538 = !DILocation(line: 188, column: 29, scope: !522)
!539 = !DILocation(line: 188, column: 11, scope: !522)
!540 = !DILocation(line: 188, column: 9, scope: !522)
!541 = !DILocation(line: 190, column: 7, scope: !542)
!542 = distinct !DILexicalBlock(scope: !522, file: !3, line: 190, column: 7)
!543 = !DILocation(line: 190, column: 15, scope: !542)
!544 = !DILocation(line: 190, column: 13, scope: !542)
!545 = !DILocation(line: 190, column: 7, scope: !522)
!546 = !DILocation(line: 191, column: 4, scope: !542)
!547 = !DILocation(line: 193, column: 9, scope: !527)
!548 = !DILocation(line: 193, column: 9, scope: !549)
!549 = distinct !DILexicalBlock(scope: !527, file: !3, line: 193, column: 9)
!550 = !DILocation(line: 193, column: 9, scope: !530)
!551 = !{i64 2150972989}
!552 = !DILocation(line: 193, column: 9, scope: !522)
!553 = !DILocation(line: 193, column: 7, scope: !522)
!554 = !DILocation(line: 195, column: 25, scope: !555)
!555 = distinct !DILexicalBlock(scope: !522, file: !3, line: 195, column: 7)
!556 = !DILocation(line: 195, column: 7, scope: !555)
!557 = !DILocation(line: 195, column: 37, scope: !555)
!558 = !DILocation(line: 195, column: 34, scope: !555)
!559 = !DILocation(line: 195, column: 43, scope: !555)
!560 = !DILocation(line: 195, column: 46, scope: !555)
!561 = !DILocation(line: 195, column: 58, scope: !555)
!562 = !DILocation(line: 195, column: 55, scope: !555)
!563 = !DILocation(line: 195, column: 7, scope: !522)
!564 = !DILocation(line: 196, column: 4, scope: !555)
!565 = !DILocation(line: 198, column: 18, scope: !522)
!566 = !DILocation(line: 198, column: 3, scope: !522)
!567 = !DILocation(line: 198, column: 12, scope: !522)
!568 = !DILocation(line: 198, column: 16, scope: !522)
!569 = !DILocation(line: 199, column: 3, scope: !570)
!570 = distinct !DILexicalBlock(scope: !522, file: !3, line: 199, column: 3)
!571 = !DILocation(line: 200, column: 2, scope: !523)
!572 = !DILocation(line: 173, column: 2, scope: !523)
!573 = distinct !{!573, !574, !575, !350}
!574 = !DILocation(line: 173, column: 2, scope: !524)
!575 = !DILocation(line: 200, column: 2, scope: !524)
!576 = !DILocation(line: 201, column: 1, scope: !515)
!577 = distinct !DISubprogram(name: "page_counter_read", scope: !8, file: !8, line: 55, type: !578, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{!33, !6}
!580 = !{!581}
!581 = !DILocalVariable(name: "counter", arg: 1, scope: !577, file: !8, line: 55, type: !6)
!582 = !DILocation(line: 55, column: 68, scope: !577)
!583 = !DILocation(line: 57, column: 27, scope: !577)
!584 = !DILocation(line: 57, column: 36, scope: !577)
!585 = !DILocation(line: 57, column: 9, scope: !577)
!586 = !DILocation(line: 57, column: 2, scope: !577)
!587 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !588, file: !588, line: 94, type: !589, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !598)
!588 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!589 = !DISubroutineType(types: !590)
!590 = !{null, !591, !594}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 61, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !596, line: 72, baseType: !597)
!596 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !596, line: 16, baseType: !33)
!598 = !{!599, !600}
!599 = !DILocalVariable(name: "v", arg: 1, scope: !587, file: !588, line: 94, type: !591)
!600 = !DILocalVariable(name: "size", arg: 2, scope: !587, file: !588, line: 94, type: !594)
!601 = !DILocation(line: 94, column: 79, scope: !587)
!602 = !DILocation(line: 94, column: 89, scope: !587)
!603 = !DILocation(line: 96, column: 20, scope: !587)
!604 = !DILocation(line: 96, column: 23, scope: !587)
!605 = !DILocation(line: 96, column: 2, scope: !587)
!606 = !DILocation(line: 97, column: 2, scope: !587)
!607 = !DILocation(line: 98, column: 1, scope: !587)
!608 = distinct !DISubprogram(name: "__might_resched", scope: !609, file: !609, line: 184, type: !610, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !612)
!609 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!610 = !DISubroutineType(types: !611)
!611 = !{null, !186, !87, !51}
!612 = !{!613, !614, !615}
!613 = !DILocalVariable(name: "file", arg: 1, scope: !608, file: !609, line: 184, type: !186)
!614 = !DILocalVariable(name: "line", arg: 2, scope: !608, file: !609, line: 184, type: !87)
!615 = !DILocalVariable(name: "offsets", arg: 3, scope: !608, file: !609, line: 185, type: !51)
!616 = !DILocation(line: 184, column: 50, scope: !608)
!617 = !DILocation(line: 184, column: 60, scope: !608)
!618 = !DILocation(line: 185, column: 23, scope: !608)
!619 = !DILocation(line: 185, column: 34, scope: !608)
!620 = !DILocation(line: 2104, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !83, file: !84, line: 2104, column: 9)
!622 = !DILocation(line: 2104, column: 9, scope: !83)
!623 = !DILocation(line: 2104, column: 2, scope: !83)
!624 = distinct !DISubprogram(name: "page_counter_set_min", scope: !3, file: !3, line: 210, type: !4, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !625)
!625 = !{!626, !627, !628}
!626 = !DILocalVariable(name: "counter", arg: 1, scope: !624, file: !3, line: 210, type: !6)
!627 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !624, file: !3, line: 210, type: !33)
!628 = !DILocalVariable(name: "c", scope: !624, file: !3, line: 212, type: !6)
!629 = !DILocation(line: 210, column: 48, scope: !624)
!630 = !DILocation(line: 210, column: 71, scope: !624)
!631 = !DILocation(line: 212, column: 2, scope: !624)
!632 = !DILocation(line: 212, column: 23, scope: !624)
!633 = !DILocation(line: 214, column: 2, scope: !624)
!634 = !DILocation(line: 214, column: 2, scope: !635)
!635 = distinct !DILexicalBlock(scope: !624, file: !3, line: 214, column: 2)
!636 = !DILocation(line: 214, column: 2, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !3, line: 214, column: 2)
!638 = !DILocation(line: 214, column: 2, scope: !639)
!639 = distinct !DILexicalBlock(scope: !635, file: !3, line: 214, column: 2)
!640 = !DILocation(line: 216, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !624, file: !3, line: 216, column: 2)
!642 = !DILocation(line: 216, column: 9, scope: !641)
!643 = !DILocation(line: 216, column: 7, scope: !641)
!644 = !DILocation(line: 216, column: 20, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 216, column: 2)
!646 = !DILocation(line: 216, column: 2, scope: !641)
!647 = !DILocation(line: 217, column: 29, scope: !645)
!648 = !DILocation(line: 217, column: 50, scope: !645)
!649 = !DILocation(line: 217, column: 53, scope: !645)
!650 = !DILocation(line: 217, column: 32, scope: !645)
!651 = !DILocation(line: 217, column: 3, scope: !645)
!652 = !DILocation(line: 216, column: 27, scope: !645)
!653 = !DILocation(line: 216, column: 30, scope: !645)
!654 = !DILocation(line: 216, column: 25, scope: !645)
!655 = !DILocation(line: 216, column: 2, scope: !645)
!656 = distinct !{!656, !646, !657, !349, !350}
!657 = !DILocation(line: 217, column: 59, scope: !641)
!658 = !DILocation(line: 218, column: 1, scope: !624)
!659 = distinct !DISubprogram(name: "atomic_long_read", scope: !164, file: !164, line: 3158, type: !660, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !664)
!660 = !DISubroutineType(types: !661)
!661 = !{!60, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!664 = !{!665}
!665 = !DILocalVariable(name: "v", arg: 1, scope: !659, file: !164, line: 3158, type: !662)
!666 = !DILocation(line: 3158, column: 39, scope: !659)
!667 = !DILocation(line: 3160, column: 25, scope: !659)
!668 = !DILocation(line: 3160, column: 2, scope: !659)
!669 = !DILocation(line: 3161, column: 30, scope: !659)
!670 = !DILocation(line: 3161, column: 9, scope: !659)
!671 = !DILocation(line: 3161, column: 2, scope: !659)
!672 = distinct !DISubprogram(name: "page_counter_set_low", scope: !3, file: !3, line: 227, type: !4, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !673)
!673 = !{!674, !675, !676}
!674 = !DILocalVariable(name: "counter", arg: 1, scope: !672, file: !3, line: 227, type: !6)
!675 = !DILocalVariable(name: "nr_pages", arg: 2, scope: !672, file: !3, line: 227, type: !33)
!676 = !DILocalVariable(name: "c", scope: !672, file: !3, line: 229, type: !6)
!677 = !DILocation(line: 227, column: 48, scope: !672)
!678 = !DILocation(line: 227, column: 71, scope: !672)
!679 = !DILocation(line: 229, column: 2, scope: !672)
!680 = !DILocation(line: 229, column: 23, scope: !672)
!681 = !DILocation(line: 231, column: 2, scope: !672)
!682 = !DILocation(line: 231, column: 2, scope: !683)
!683 = distinct !DILexicalBlock(scope: !672, file: !3, line: 231, column: 2)
!684 = !DILocation(line: 231, column: 2, scope: !685)
!685 = distinct !DILexicalBlock(scope: !683, file: !3, line: 231, column: 2)
!686 = !DILocation(line: 231, column: 2, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !3, line: 231, column: 2)
!688 = !DILocation(line: 233, column: 11, scope: !689)
!689 = distinct !DILexicalBlock(scope: !672, file: !3, line: 233, column: 2)
!690 = !DILocation(line: 233, column: 9, scope: !689)
!691 = !DILocation(line: 233, column: 7, scope: !689)
!692 = !DILocation(line: 233, column: 20, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !3, line: 233, column: 2)
!694 = !DILocation(line: 233, column: 2, scope: !689)
!695 = !DILocation(line: 234, column: 29, scope: !693)
!696 = !DILocation(line: 234, column: 50, scope: !693)
!697 = !DILocation(line: 234, column: 53, scope: !693)
!698 = !DILocation(line: 234, column: 32, scope: !693)
!699 = !DILocation(line: 234, column: 3, scope: !693)
!700 = !DILocation(line: 233, column: 27, scope: !693)
!701 = !DILocation(line: 233, column: 30, scope: !693)
!702 = !DILocation(line: 233, column: 25, scope: !693)
!703 = !DILocation(line: 233, column: 2, scope: !693)
!704 = distinct !{!704, !694, !705, !349, !350}
!705 = !DILocation(line: 234, column: 59, scope: !689)
!706 = !DILocation(line: 235, column: 1, scope: !672)
!707 = distinct !DISubprogram(name: "page_counter_memparse", scope: !3, file: !3, line: 246, type: !708, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!87, !186, !186, !528}
!710 = !{!711, !712, !713, !714, !716, !717, !719}
!711 = !DILocalVariable(name: "buf", arg: 1, scope: !707, file: !3, line: 246, type: !186)
!712 = !DILocalVariable(name: "max", arg: 2, scope: !707, file: !3, line: 246, type: !186)
!713 = !DILocalVariable(name: "nr_pages", arg: 3, scope: !707, file: !3, line: 247, type: !528)
!714 = !DILocalVariable(name: "end", scope: !707, file: !3, line: 249, type: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!716 = !DILocalVariable(name: "bytes", scope: !707, file: !3, line: 250, type: !61)
!717 = !DILocalVariable(name: "__UNIQUE_ID___x161", scope: !718, file: !3, line: 261, type: !61)
!718 = distinct !DILexicalBlock(scope: !707, file: !3, line: 261, column: 14)
!719 = !DILocalVariable(name: "__UNIQUE_ID___y162", scope: !718, file: !3, line: 261, type: !61)
!720 = !DILocation(line: 246, column: 39, scope: !707)
!721 = !DILocation(line: 246, column: 56, scope: !707)
!722 = !DILocation(line: 247, column: 21, scope: !707)
!723 = !DILocation(line: 249, column: 2, scope: !707)
!724 = !DILocation(line: 249, column: 8, scope: !707)
!725 = !DILocation(line: 250, column: 2, scope: !707)
!726 = !DILocation(line: 250, column: 6, scope: !707)
!727 = !DILocation(line: 252, column: 14, scope: !728)
!728 = distinct !DILexicalBlock(scope: !707, file: !3, line: 252, column: 6)
!729 = !DILocation(line: 252, column: 19, scope: !728)
!730 = !DILocation(line: 252, column: 7, scope: !728)
!731 = !DILocation(line: 252, column: 6, scope: !707)
!732 = !DILocation(line: 253, column: 4, scope: !733)
!733 = distinct !DILexicalBlock(scope: !728, file: !3, line: 252, column: 25)
!734 = !DILocation(line: 253, column: 13, scope: !733)
!735 = !DILocation(line: 254, column: 3, scope: !733)
!736 = !DILocation(line: 257, column: 19, scope: !707)
!737 = !DILocation(line: 257, column: 10, scope: !707)
!738 = !DILocation(line: 257, column: 8, scope: !707)
!739 = !DILocation(line: 258, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !707, file: !3, line: 258, column: 6)
!741 = !DILocation(line: 258, column: 6, scope: !740)
!742 = !DILocation(line: 258, column: 11, scope: !740)
!743 = !DILocation(line: 258, column: 6, scope: !707)
!744 = !DILocation(line: 259, column: 3, scope: !740)
!745 = !DILocation(line: 261, column: 14, scope: !718)
!746 = !DILocation(line: 261, column: 14, scope: !707)
!747 = !DILocation(line: 261, column: 3, scope: !707)
!748 = !DILocation(line: 261, column: 12, scope: !707)
!749 = !DILocation(line: 263, column: 2, scope: !707)
!750 = !DILocation(line: 264, column: 1, scope: !707)
!751 = !DISubprogram(name: "strcmp", scope: !752, file: !752, line: 88, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!752 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!753 = !DISubroutineType(types: !754)
!754 = !{!87, !186, !186}
!755 = !DISubprogram(name: "memparse", scope: !609, file: !609, line: 209, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!756 = !DISubroutineType(types: !757)
!757 = !{!63, !186, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!759 = distinct !DISubprogram(name: "raw_atomic_long_sub_return", scope: !12, file: !12, line: 328, type: !165, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !760)
!760 = !{!761, !762}
!761 = !DILocalVariable(name: "i", arg: 1, scope: !759, file: !12, line: 328, type: !60)
!762 = !DILocalVariable(name: "v", arg: 2, scope: !759, file: !12, line: 328, type: !167)
!763 = !DILocation(line: 328, column: 33, scope: !759)
!764 = !DILocation(line: 328, column: 51, scope: !759)
!765 = !DILocation(line: 331, column: 33, scope: !759)
!766 = !DILocation(line: 331, column: 36, scope: !759)
!767 = !DILocation(line: 331, column: 9, scope: !759)
!768 = !DILocation(line: 331, column: 2, scope: !759)
!769 = distinct !DISubprogram(name: "raw_atomic64_sub_return", scope: !770, file: !770, line: 2883, type: !771, scopeLine: 2884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !774)
!770 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!771 = !DISubroutineType(types: !772)
!772 = !{!18, !18, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!774 = !{!775, !776}
!775 = !DILocalVariable(name: "i", arg: 1, scope: !769, file: !770, line: 2883, type: !18)
!776 = !DILocalVariable(name: "v", arg: 2, scope: !769, file: !770, line: 2883, type: !773)
!777 = !DILocation(line: 2883, column: 29, scope: !769)
!778 = !DILocation(line: 2883, column: 44, scope: !769)
!779 = !DILocation(line: 2886, column: 34, scope: !769)
!780 = !DILocation(line: 2886, column: 37, scope: !769)
!781 = !DILocation(line: 2886, column: 9, scope: !769)
!782 = !DILocation(line: 2886, column: 2, scope: !769)
!783 = distinct !DISubprogram(name: "arch_atomic64_sub_return", scope: !784, file: !784, line: 83, type: !771, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !785)
!784 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!785 = !{!786, !787}
!786 = !DILocalVariable(name: "i", arg: 1, scope: !783, file: !784, line: 83, type: !18)
!787 = !DILocalVariable(name: "v", arg: 2, scope: !783, file: !784, line: 83, type: !773)
!788 = !DILocation(line: 83, column: 57, scope: !783)
!789 = !DILocation(line: 83, column: 72, scope: !783)
!790 = !DILocation(line: 85, column: 35, scope: !783)
!791 = !DILocation(line: 85, column: 34, scope: !783)
!792 = !DILocation(line: 85, column: 38, scope: !783)
!793 = !DILocation(line: 85, column: 9, scope: !783)
!794 = !DILocation(line: 85, column: 2, scope: !783)
!795 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !784, file: !784, line: 77, type: !771, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !796)
!796 = !{!797, !798, !799}
!797 = !DILocalVariable(name: "i", arg: 1, scope: !795, file: !784, line: 77, type: !18)
!798 = !DILocalVariable(name: "v", arg: 2, scope: !795, file: !784, line: 77, type: !773)
!799 = !DILocalVariable(name: "__ret", scope: !800, file: !784, line: 79, type: !18)
!800 = distinct !DILexicalBlock(scope: !795, file: !784, line: 79, column: 13)
!801 = !DILocation(line: 77, column: 57, scope: !795)
!802 = !DILocation(line: 77, column: 72, scope: !795)
!803 = !DILocation(line: 79, column: 9, scope: !795)
!804 = !DILocation(line: 79, column: 13, scope: !800)
!805 = !{i64 2147808942, i64 2147808981, i64 2147809002, i64 2147809039, i64 2147809062, i64 2147809071}
!806 = !DILocation(line: 79, column: 13, scope: !795)
!807 = !DILocation(line: 79, column: 11, scope: !795)
!808 = !DILocation(line: 79, column: 2, scope: !795)
!809 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !588, file: !588, line: 80, type: !589, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !810)
!810 = !{!811, !812}
!811 = !DILocalVariable(name: "v", arg: 1, scope: !809, file: !588, line: 80, type: !591)
!812 = !DILocalVariable(name: "size", arg: 2, scope: !809, file: !588, line: 80, type: !594)
!813 = !DILocation(line: 80, column: 74, scope: !809)
!814 = !DILocation(line: 80, column: 84, scope: !809)
!815 = !DILocation(line: 82, column: 20, scope: !809)
!816 = !DILocation(line: 82, column: 23, scope: !809)
!817 = !DILocation(line: 82, column: 2, scope: !809)
!818 = !DILocation(line: 83, column: 2, scope: !809)
!819 = !DILocation(line: 84, column: 1, scope: !809)
!820 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !12, file: !12, line: 76, type: !189, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !821)
!821 = !{!822, !823}
!822 = !DILocalVariable(name: "v", arg: 1, scope: !820, file: !12, line: 76, type: !167)
!823 = !DILocalVariable(name: "i", arg: 2, scope: !820, file: !12, line: 76, type: !60)
!824 = !DILocation(line: 76, column: 36, scope: !820)
!825 = !DILocation(line: 76, column: 44, scope: !820)
!826 = !DILocation(line: 79, column: 19, scope: !820)
!827 = !DILocation(line: 79, column: 22, scope: !820)
!828 = !DILocation(line: 79, column: 2, scope: !820)
!829 = !DILocation(line: 83, column: 1, scope: !820)
!830 = distinct !DISubprogram(name: "kasan_check_write", scope: !831, file: !831, line: 44, type: !832, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !834)
!831 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!832 = !DISubroutineType(types: !833)
!833 = !{!95, !591, !51}
!834 = !{!835, !836}
!835 = !DILocalVariable(name: "p", arg: 1, scope: !830, file: !831, line: 44, type: !591)
!836 = !DILocalVariable(name: "size", arg: 2, scope: !830, file: !831, line: 44, type: !51)
!837 = !DILocation(line: 44, column: 59, scope: !830)
!838 = !DILocation(line: 44, column: 75, scope: !830)
!839 = !DILocation(line: 46, column: 2, scope: !830)
!840 = distinct !DISubprogram(name: "kcsan_check_access", scope: !483, file: !483, line: 229, type: !841, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !591, !594, !87}
!843 = !{!844, !845, !846}
!844 = !DILocalVariable(name: "ptr", arg: 1, scope: !840, file: !483, line: 229, type: !591)
!845 = !DILocalVariable(name: "size", arg: 2, scope: !840, file: !483, line: 229, type: !594)
!846 = !DILocalVariable(name: "type", arg: 3, scope: !840, file: !483, line: 230, type: !87)
!847 = !DILocation(line: 229, column: 60, scope: !840)
!848 = !DILocation(line: 229, column: 72, scope: !840)
!849 = !DILocation(line: 230, column: 15, scope: !840)
!850 = !DILocation(line: 230, column: 23, scope: !840)
!851 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !770, file: !770, line: 2600, type: !852, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !773, !18}
!854 = !{!855, !856}
!855 = !DILocalVariable(name: "v", arg: 1, scope: !851, file: !770, line: 2600, type: !773)
!856 = !DILocalVariable(name: "i", arg: 2, scope: !851, file: !770, line: 2600, type: !18)
!857 = !DILocation(line: 2600, column: 30, scope: !851)
!858 = !DILocation(line: 2600, column: 37, scope: !851)
!859 = !DILocation(line: 2602, column: 20, scope: !851)
!860 = !DILocation(line: 2602, column: 23, scope: !851)
!861 = !DILocation(line: 2602, column: 2, scope: !851)
!862 = !DILocation(line: 2603, column: 1, scope: !851)
!863 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !784, file: !784, line: 18, type: !852, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !864)
!864 = !{!865, !866}
!865 = !DILocalVariable(name: "v", arg: 1, scope: !863, file: !784, line: 18, type: !773)
!866 = !DILocalVariable(name: "i", arg: 2, scope: !863, file: !784, line: 18, type: !18)
!867 = !DILocation(line: 18, column: 59, scope: !863)
!868 = !DILocation(line: 18, column: 66, scope: !863)
!869 = !DILocation(line: 20, column: 2, scope: !863)
!870 = !DILocation(line: 20, column: 2, scope: !871)
!871 = distinct !DILexicalBlock(scope: !863, file: !784, line: 20, column: 2)
!872 = !DILocation(line: 21, column: 1, scope: !863)
!873 = distinct !DISubprogram(name: "atomic_long_xchg", scope: !164, file: !164, line: 4244, type: !874, scopeLine: 4245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{!60, !167, !60}
!876 = !{!877, !878}
!877 = !DILocalVariable(name: "v", arg: 1, scope: !873, file: !164, line: 4244, type: !167)
!878 = !DILocalVariable(name: "new", arg: 2, scope: !873, file: !164, line: 4244, type: !60)
!879 = !DILocation(line: 4244, column: 33, scope: !873)
!880 = !DILocation(line: 4244, column: 41, scope: !873)
!881 = !DILocation(line: 4246, column: 2, scope: !873)
!882 = !DILocation(line: 4246, column: 2, scope: !883)
!883 = distinct !DILexicalBlock(scope: !873, file: !164, line: 4246, column: 2)
!884 = !DILocation(line: 4247, column: 31, scope: !873)
!885 = !DILocation(line: 4247, column: 2, scope: !873)
!886 = !DILocation(line: 4248, column: 30, scope: !873)
!887 = !DILocation(line: 4248, column: 33, scope: !873)
!888 = !DILocation(line: 4248, column: 9, scope: !873)
!889 = !DILocation(line: 4248, column: 2, scope: !873)
!890 = distinct !DISubprogram(name: "atomic_long_add", scope: !164, file: !164, line: 3230, type: !469, scopeLine: 3231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !891)
!891 = !{!892, !893}
!892 = !DILocalVariable(name: "i", arg: 1, scope: !890, file: !164, line: 3230, type: !60)
!893 = !DILocalVariable(name: "v", arg: 2, scope: !890, file: !164, line: 3230, type: !167)
!894 = !DILocation(line: 3230, column: 22, scope: !890)
!895 = !DILocation(line: 3230, column: 40, scope: !890)
!896 = !DILocation(line: 3232, column: 31, scope: !890)
!897 = !DILocation(line: 3232, column: 2, scope: !890)
!898 = !DILocation(line: 3233, column: 22, scope: !890)
!899 = !DILocation(line: 3233, column: 25, scope: !890)
!900 = !DILocation(line: 3233, column: 2, scope: !890)
!901 = !DILocation(line: 3234, column: 1, scope: !890)
!902 = distinct !DISubprogram(name: "raw_atomic_long_xchg", scope: !12, file: !12, line: 1276, type: !874, scopeLine: 1277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !903)
!903 = !{!904, !905}
!904 = !DILocalVariable(name: "v", arg: 1, scope: !902, file: !12, line: 1276, type: !167)
!905 = !DILocalVariable(name: "new", arg: 2, scope: !902, file: !12, line: 1276, type: !60)
!906 = !DILocation(line: 1276, column: 37, scope: !902)
!907 = !DILocation(line: 1276, column: 45, scope: !902)
!908 = !DILocation(line: 1279, column: 27, scope: !902)
!909 = !DILocation(line: 1279, column: 30, scope: !902)
!910 = !DILocation(line: 1279, column: 9, scope: !902)
!911 = !DILocation(line: 1279, column: 2, scope: !902)
!912 = distinct !DISubprogram(name: "raw_atomic64_xchg", scope: !770, file: !770, line: 4009, type: !913, scopeLine: 4010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{!18, !773, !18}
!915 = !{!916, !917}
!916 = !DILocalVariable(name: "v", arg: 1, scope: !912, file: !770, line: 4009, type: !773)
!917 = !DILocalVariable(name: "new", arg: 2, scope: !912, file: !770, line: 4009, type: !18)
!918 = !DILocation(line: 4009, column: 31, scope: !912)
!919 = !DILocation(line: 4009, column: 38, scope: !912)
!920 = !DILocation(line: 4012, column: 28, scope: !912)
!921 = !DILocation(line: 4012, column: 31, scope: !912)
!922 = !DILocation(line: 4012, column: 9, scope: !912)
!923 = !DILocation(line: 4012, column: 2, scope: !912)
!924 = distinct !DISubprogram(name: "arch_atomic64_xchg", scope: !784, file: !784, line: 113, type: !913, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !925)
!925 = !{!926, !927, !928}
!926 = !DILocalVariable(name: "v", arg: 1, scope: !924, file: !784, line: 113, type: !773)
!927 = !DILocalVariable(name: "new", arg: 2, scope: !924, file: !784, line: 113, type: !18)
!928 = !DILocalVariable(name: "__ret", scope: !929, file: !784, line: 115, type: !18)
!929 = distinct !DILexicalBlock(scope: !924, file: !784, line: 115, column: 9)
!930 = !DILocation(line: 113, column: 59, scope: !924)
!931 = !DILocation(line: 113, column: 66, scope: !924)
!932 = !DILocation(line: 115, column: 9, scope: !929)
!933 = !{i64 2147820925}
!934 = !DILocation(line: 115, column: 9, scope: !924)
!935 = !DILocation(line: 115, column: 2, scope: !924)
!936 = distinct !DISubprogram(name: "raw_atomic_long_add", scope: !12, file: !12, line: 118, type: !469, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !937)
!937 = !{!938, !939}
!938 = !DILocalVariable(name: "i", arg: 1, scope: !936, file: !12, line: 118, type: !60)
!939 = !DILocalVariable(name: "v", arg: 2, scope: !936, file: !12, line: 118, type: !167)
!940 = !DILocation(line: 118, column: 26, scope: !936)
!941 = !DILocation(line: 118, column: 44, scope: !936)
!942 = !DILocation(line: 121, column: 19, scope: !936)
!943 = !DILocation(line: 121, column: 22, scope: !936)
!944 = !DILocation(line: 121, column: 2, scope: !936)
!945 = !DILocation(line: 125, column: 1, scope: !936)
!946 = distinct !DISubprogram(name: "raw_atomic64_add", scope: !770, file: !770, line: 2643, type: !947, scopeLine: 2644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !18, !773}
!949 = !{!950, !951}
!950 = !DILocalVariable(name: "i", arg: 1, scope: !946, file: !770, line: 2643, type: !18)
!951 = !DILocalVariable(name: "v", arg: 2, scope: !946, file: !770, line: 2643, type: !773)
!952 = !DILocation(line: 2643, column: 22, scope: !946)
!953 = !DILocation(line: 2643, column: 37, scope: !946)
!954 = !DILocation(line: 2645, column: 20, scope: !946)
!955 = !DILocation(line: 2645, column: 23, scope: !946)
!956 = !DILocation(line: 2645, column: 2, scope: !946)
!957 = !DILocation(line: 2646, column: 1, scope: !946)
!958 = distinct !DISubprogram(name: "arch_atomic64_add", scope: !784, file: !784, line: 23, type: !947, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !959)
!959 = !{!960, !961}
!960 = !DILocalVariable(name: "i", arg: 1, scope: !958, file: !784, line: 23, type: !18)
!961 = !DILocalVariable(name: "v", arg: 2, scope: !958, file: !784, line: 23, type: !773)
!962 = !DILocation(line: 23, column: 51, scope: !958)
!963 = !DILocation(line: 23, column: 66, scope: !958)
!964 = !DILocation(line: 26, column: 16, scope: !958)
!965 = !DILocation(line: 26, column: 19, scope: !958)
!966 = !DILocation(line: 27, column: 16, scope: !958)
!967 = !DILocation(line: 27, column: 25, scope: !958)
!968 = !DILocation(line: 27, column: 28, scope: !958)
!969 = !DILocation(line: 25, column: 2, scope: !958)
!970 = !{i64 2147797940, i64 2147797979, i64 2147798000, i64 2147798037, i64 2147798060, i64 2147797930}
!971 = !DILocation(line: 28, column: 1, scope: !958)
!972 = distinct !DISubprogram(name: "raw_atomic_long_add_return", scope: !12, file: !12, line: 139, type: !165, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !973)
!973 = !{!974, !975}
!974 = !DILocalVariable(name: "i", arg: 1, scope: !972, file: !12, line: 139, type: !60)
!975 = !DILocalVariable(name: "v", arg: 2, scope: !972, file: !12, line: 139, type: !167)
!976 = !DILocation(line: 139, column: 33, scope: !972)
!977 = !DILocation(line: 139, column: 51, scope: !972)
!978 = !DILocation(line: 142, column: 33, scope: !972)
!979 = !DILocation(line: 142, column: 36, scope: !972)
!980 = !DILocation(line: 142, column: 9, scope: !972)
!981 = !DILocation(line: 142, column: 2, scope: !972)
!982 = distinct !DISubprogram(name: "raw_atomic64_add_return", scope: !770, file: !770, line: 2660, type: !771, scopeLine: 2661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !983)
!983 = !{!984, !985}
!984 = !DILocalVariable(name: "i", arg: 1, scope: !982, file: !770, line: 2660, type: !18)
!985 = !DILocalVariable(name: "v", arg: 2, scope: !982, file: !770, line: 2660, type: !773)
!986 = !DILocation(line: 2660, column: 29, scope: !982)
!987 = !DILocation(line: 2660, column: 44, scope: !982)
!988 = !DILocation(line: 2663, column: 34, scope: !982)
!989 = !DILocation(line: 2663, column: 37, scope: !982)
!990 = !DILocation(line: 2663, column: 9, scope: !982)
!991 = !DILocation(line: 2663, column: 2, scope: !982)
!992 = distinct !DISubprogram(name: "raw_atomic_long_sub", scope: !12, file: !12, line: 307, type: !469, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !993)
!993 = !{!994, !995}
!994 = !DILocalVariable(name: "i", arg: 1, scope: !992, file: !12, line: 307, type: !60)
!995 = !DILocalVariable(name: "v", arg: 2, scope: !992, file: !12, line: 307, type: !167)
!996 = !DILocation(line: 307, column: 26, scope: !992)
!997 = !DILocation(line: 307, column: 44, scope: !992)
!998 = !DILocation(line: 310, column: 19, scope: !992)
!999 = !DILocation(line: 310, column: 22, scope: !992)
!1000 = !DILocation(line: 310, column: 2, scope: !992)
!1001 = !DILocation(line: 314, column: 1, scope: !992)
!1002 = distinct !DISubprogram(name: "raw_atomic64_sub", scope: !770, file: !770, line: 2866, type: !947, scopeLine: 2867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !1003)
!1003 = !{!1004, !1005}
!1004 = !DILocalVariable(name: "i", arg: 1, scope: !1002, file: !770, line: 2866, type: !18)
!1005 = !DILocalVariable(name: "v", arg: 2, scope: !1002, file: !770, line: 2866, type: !773)
!1006 = !DILocation(line: 2866, column: 22, scope: !1002)
!1007 = !DILocation(line: 2866, column: 37, scope: !1002)
!1008 = !DILocation(line: 2868, column: 20, scope: !1002)
!1009 = !DILocation(line: 2868, column: 23, scope: !1002)
!1010 = !DILocation(line: 2868, column: 2, scope: !1002)
!1011 = !DILocation(line: 2869, column: 1, scope: !1002)
!1012 = distinct !DISubprogram(name: "arch_atomic64_sub", scope: !784, file: !784, line: 30, type: !947, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !1013)
!1013 = !{!1014, !1015}
!1014 = !DILocalVariable(name: "i", arg: 1, scope: !1012, file: !784, line: 30, type: !18)
!1015 = !DILocalVariable(name: "v", arg: 2, scope: !1012, file: !784, line: 30, type: !773)
!1016 = !DILocation(line: 30, column: 51, scope: !1012)
!1017 = !DILocation(line: 30, column: 66, scope: !1012)
!1018 = !DILocation(line: 33, column: 16, scope: !1012)
!1019 = !DILocation(line: 33, column: 19, scope: !1012)
!1020 = !DILocation(line: 34, column: 16, scope: !1012)
!1021 = !DILocation(line: 34, column: 25, scope: !1012)
!1022 = !DILocation(line: 34, column: 28, scope: !1012)
!1023 = !DILocation(line: 32, column: 2, scope: !1012)
!1024 = !{i64 2147798307, i64 2147798346, i64 2147798367, i64 2147798404, i64 2147798427, i64 2147798297}
!1025 = !DILocation(line: 35, column: 1, scope: !1012)
!1026 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !588, file: !588, line: 66, type: !589, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !1027)
!1027 = !{!1028, !1029}
!1028 = !DILocalVariable(name: "v", arg: 1, scope: !1026, file: !588, line: 66, type: !591)
!1029 = !DILocalVariable(name: "size", arg: 2, scope: !1026, file: !588, line: 66, type: !594)
!1030 = !DILocation(line: 66, column: 73, scope: !1026)
!1031 = !DILocation(line: 66, column: 83, scope: !1026)
!1032 = !DILocation(line: 68, column: 19, scope: !1026)
!1033 = !DILocation(line: 68, column: 22, scope: !1026)
!1034 = !DILocation(line: 68, column: 2, scope: !1026)
!1035 = !DILocation(line: 69, column: 2, scope: !1026)
!1036 = !DILocation(line: 70, column: 1, scope: !1026)
!1037 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !12, file: !12, line: 35, type: !660, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !1038)
!1038 = !{!1039}
!1039 = !DILocalVariable(name: "v", arg: 1, scope: !1037, file: !12, line: 35, type: !662)
!1040 = !DILocation(line: 35, column: 43, scope: !1037)
!1041 = !DILocation(line: 38, column: 27, scope: !1037)
!1042 = !DILocation(line: 38, column: 9, scope: !1037)
!1043 = !DILocation(line: 38, column: 2, scope: !1037)
!1044 = distinct !DISubprogram(name: "kasan_check_read", scope: !831, file: !831, line: 40, type: !832, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !1045)
!1045 = !{!1046, !1047}
!1046 = !DILocalVariable(name: "p", arg: 1, scope: !1044, file: !831, line: 40, type: !591)
!1047 = !DILocalVariable(name: "size", arg: 2, scope: !1044, file: !831, line: 40, type: !51)
!1048 = !DILocation(line: 40, column: 58, scope: !1044)
!1049 = !DILocation(line: 40, column: 74, scope: !1044)
!1050 = !DILocation(line: 42, column: 2, scope: !1044)
!1051 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !770, file: !770, line: 2554, type: !1052, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !1056)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!18, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1056 = !{!1057}
!1057 = !DILocalVariable(name: "v", arg: 1, scope: !1051, file: !770, line: 2554, type: !1054)
!1058 = !DILocation(line: 2554, column: 37, scope: !1051)
!1059 = !DILocation(line: 2556, column: 28, scope: !1051)
!1060 = !DILocation(line: 2556, column: 9, scope: !1051)
!1061 = !DILocation(line: 2556, column: 2, scope: !1051)
!1062 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !784, file: !784, line: 13, type: !1052, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !47, retainedNodes: !1063)
!1063 = !{!1064}
!1064 = !DILocalVariable(name: "v", arg: 1, scope: !1062, file: !784, line: 13, type: !1054)
!1065 = !DILocation(line: 13, column: 65, scope: !1062)
!1066 = !DILocation(line: 15, column: 9, scope: !1062)
!1067 = !DILocation(line: 15, column: 2, scope: !1062)
