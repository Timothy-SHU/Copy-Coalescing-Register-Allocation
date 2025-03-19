; ModuleID = 'lib/idr.c'
source_filename = "lib/idr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_alloc_u32: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_alloc_u32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_alloc: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_alloc_cyclic: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_alloc_cyclic ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_find: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_find ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_for_each: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_for_each ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_get_next_ul: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_get_next_ul ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_get_next: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_get_next ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_idr_replace: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad idr_replace ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ida_alloc_range: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ida_alloc_range ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ida_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ida_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ida_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ida_destroy ; .previous"

%struct.radix_tree_iter = type { i64, i64, i64, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xa_state = type { ptr, i64, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.ida_bitmap = type { [16 x i64] }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.2, [64 x ptr], %union.anon.3 }
%union.anon.2 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.3 = type { [3 x [1 x i64]] }

@.str = private unnamed_addr constant [10 x i8] c"lib/idr.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_idr_alloc_u32190 = internal global ptr @idr_alloc_u32, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_idr_alloc191 = internal global ptr @idr_alloc, section ".discard.addressable", align 8, !dbg !140
@__UNIQUE_ID___addressable_idr_alloc_cyclic192 = internal global ptr @idr_alloc_cyclic, section ".discard.addressable", align 8, !dbg !142
@__UNIQUE_ID___addressable_idr_remove193 = internal global ptr @idr_remove, section ".discard.addressable", align 8, !dbg !144
@__UNIQUE_ID___addressable_idr_find194 = internal global ptr @idr_find, section ".discard.addressable", align 8, !dbg !146
@__UNIQUE_ID___addressable_idr_for_each197 = internal global ptr @idr_for_each, section ".discard.addressable", align 8, !dbg !148
@__UNIQUE_ID___addressable_idr_get_next_ul200 = internal global ptr @idr_get_next_ul, section ".discard.addressable", align 8, !dbg !150
@__UNIQUE_ID___addressable_idr_get_next201 = internal global ptr @idr_get_next, section ".discard.addressable", align 8, !dbg !152
@__UNIQUE_ID___addressable_idr_replace202 = internal global ptr @idr_replace, section ".discard.addressable", align 8, !dbg !154
@__UNIQUE_ID___addressable_ida_alloc_range203 = internal global ptr @ida_alloc_range, section ".discard.addressable", align 8, !dbg !156
@.str.1 = private unnamed_addr constant [51 x i8] c"ida_free called for id=%d which is not allocated.\0A\00", align 1, !dbg !158
@__UNIQUE_ID___addressable_ida_free204 = internal global ptr @ida_free, section ".discard.addressable", align 8, !dbg !163
@__UNIQUE_ID___addressable_ida_destroy205 = internal global ptr @ida_destroy, section ".discard.addressable", align 8, !dbg !165
@.str.2 = private unnamed_addr constant [23 x i8] c"include/linux/xarray.h\00", align 1, !dbg !167
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !172
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable_idr_alloc_u32190, ptr @__UNIQUE_ID___addressable_idr_alloc191, ptr @__UNIQUE_ID___addressable_idr_alloc_cyclic192, ptr @__UNIQUE_ID___addressable_idr_remove193, ptr @__UNIQUE_ID___addressable_idr_find194, ptr @__UNIQUE_ID___addressable_idr_for_each197, ptr @__UNIQUE_ID___addressable_idr_get_next_ul200, ptr @__UNIQUE_ID___addressable_idr_get_next201, ptr @__UNIQUE_ID___addressable_idr_replace202, ptr @__UNIQUE_ID___addressable_ida_alloc_range203, ptr @__UNIQUE_ID___addressable_ida_free204, ptr @__UNIQUE_ID___addressable_ida_destroy205], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @idr_alloc_u32(ptr noundef %idr, ptr noundef %ptr, ptr noundef %nextid, i64 noundef %max, i32 noundef %gfp) #0 align 16 !dbg !186 {
entry:
  %retval = alloca i32, align 4
  %idr.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %nextid.addr = alloca ptr, align 8
  %max.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %iter = alloca %struct.radix_tree_iter, align 8
  %slot = alloca ptr, align 8
  %base = alloca i32, align 4
  %id = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !200, metadata !DIExpression()), !dbg !222
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !201, metadata !DIExpression()), !dbg !223
  store ptr %nextid, ptr %nextid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nextid.addr, metadata !202, metadata !DIExpression()), !dbg !224
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !203, metadata !DIExpression()), !dbg !225
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !204, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #14, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !205, metadata !DIExpression()), !dbg !228
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #14, !dbg !229
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !212, metadata !DIExpression()), !dbg !230
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #14, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %base, metadata !214, metadata !DIExpression()), !dbg !232
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !233
  %idr_base = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1, !dbg !234
  %1 = load i32, ptr %idr_base, align 8, !dbg !234
  store i32 %1, ptr %base, align 4, !dbg !232
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #14, !dbg !235
  call void @llvm.dbg.declare(metadata ptr %id, metadata !215, metadata !DIExpression()), !dbg !236
  %2 = load ptr, ptr %nextid.addr, align 8, !dbg !237
  %3 = load i32, ptr %2, align 4, !dbg !238
  store i32 %3, ptr %id, align 4, !dbg !236
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !239
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !216, metadata !DIExpression()), !dbg !239
  %4 = load ptr, ptr %idr.addr, align 8, !dbg !239
  %idr_rt = getelementptr inbounds %struct.idr, ptr %4, i32 0, i32 0, !dbg !239
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %idr_rt, i32 0, i32 1, !dbg !239
  %5 = load i32, ptr %xa_flags, align 4, !dbg !239
  %and = and i32 %5, 4, !dbg !239
  %tobool = icmp ne i32 %and, 0, !dbg !239
  %lnot = xor i1 %tobool, true, !dbg !239
  %lnot1 = xor i1 %lnot, true, !dbg !239
  %lnot2 = xor i1 %lnot1, true, !dbg !239
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !239
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !239
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !240
  %tobool3 = icmp ne i32 %6, 0, !dbg !240
  %lnot4 = xor i1 %tobool3, true, !dbg !240
  %lnot6 = xor i1 %lnot4, true, !dbg !240
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !240
  %conv = sext i32 %lnot.ext7 to i64, !dbg !240
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !240
  %tobool8 = icmp ne i64 %expval, 0, !dbg !240
  br i1 %tobool8, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !240

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !219, metadata !DIExpression()), !dbg !241
  store i32 2307, ptr %__flags, align 4, !dbg !241
  br label %do.body9, !dbg !241

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !242

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !242

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !241

do.body10:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !244
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 41, i32 %7, i64 12) #14, !dbg !244, !srcloc !246
  br label %do.cond11, !dbg !244

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !244

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !241

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !247

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !247

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !240
  br label %do.cond16, !dbg !241

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !241

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !241

if.end:                                           ; preds = %do.end17, %entry
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !239
  %tobool18 = icmp ne i32 %8, 0, !dbg !239
  %lnot19 = xor i1 %tobool18, true, !dbg !239
  %lnot21 = xor i1 %lnot19, true, !dbg !239
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !239
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !239
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !239
  store i64 %expval24, ptr %tmp, align 8, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !249
  %9 = load i64, ptr %tmp, align 8, !dbg !239
  %tobool25 = icmp ne i64 %9, 0, !dbg !249
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !250

if.then26:                                        ; preds = %if.end
  %10 = load ptr, ptr %idr.addr, align 8, !dbg !251
  %idr_rt27 = getelementptr inbounds %struct.idr, ptr %10, i32 0, i32 0, !dbg !252
  %xa_flags28 = getelementptr inbounds %struct.xarray, ptr %idr_rt27, i32 0, i32 1, !dbg !253
  %11 = load i32, ptr %xa_flags28, align 4, !dbg !254
  %or = or i32 %11, 67108868, !dbg !254
  store i32 %or, ptr %xa_flags28, align 4, !dbg !254
  br label %if.end29, !dbg !251

if.end29:                                         ; preds = %if.then26, %if.end
  %12 = load i32, ptr %id, align 4, !dbg !255
  %13 = load i32, ptr %base, align 4, !dbg !256
  %cmp = icmp ult i32 %12, %13, !dbg !257
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !258

cond.true:                                        ; preds = %if.end29
  br label %cond.end, !dbg !258

cond.false:                                       ; preds = %if.end29
  %14 = load i32, ptr %id, align 4, !dbg !259
  %15 = load i32, ptr %base, align 4, !dbg !260
  %sub = sub i32 %14, %15, !dbg !261
  br label %cond.end, !dbg !258

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ], !dbg !258
  store i32 %cond, ptr %id, align 4, !dbg !262
  %16 = load i32, ptr %id, align 4, !dbg !263
  %conv31 = zext i32 %16 to i64, !dbg !263
  %call = call ptr @radix_tree_iter_init(ptr noundef %iter, i64 noundef %conv31) #15, !dbg !264
  %17 = load ptr, ptr %idr.addr, align 8, !dbg !265
  %idr_rt32 = getelementptr inbounds %struct.idr, ptr %17, i32 0, i32 0, !dbg !266
  %18 = load i32, ptr %gfp.addr, align 4, !dbg !267
  %19 = load i64, ptr %max.addr, align 8, !dbg !268
  %20 = load i32, ptr %base, align 4, !dbg !269
  %conv33 = zext i32 %20 to i64, !dbg !269
  %sub34 = sub i64 %19, %conv33, !dbg !270
  %call35 = call ptr @idr_get_free(ptr noundef %idr_rt32, ptr noundef %iter, i32 noundef %18, i64 noundef %sub34) #15, !dbg !271
  store ptr %call35, ptr %slot, align 8, !dbg !272
  %21 = load ptr, ptr %slot, align 8, !dbg !273
  %call36 = call zeroext i1 @IS_ERR(ptr noundef %21) #15, !dbg !275
  br i1 %call36, label %if.then37, label %if.end40, !dbg !276

if.then37:                                        ; preds = %cond.end
  %22 = load ptr, ptr %slot, align 8, !dbg !277
  %call38 = call i64 @PTR_ERR(ptr noundef %22) #15, !dbg !278
  %conv39 = trunc i64 %call38 to i32, !dbg !278
  store i32 %conv39, ptr %retval, align 4, !dbg !279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !279

if.end40:                                         ; preds = %cond.end
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 0, !dbg !280
  %23 = load i64, ptr %index, align 8, !dbg !280
  %24 = load i32, ptr %base, align 4, !dbg !281
  %conv41 = zext i32 %24 to i64, !dbg !281
  %add = add i64 %23, %conv41, !dbg !282
  %conv42 = trunc i64 %add to i32, !dbg !283
  %25 = load ptr, ptr %nextid.addr, align 8, !dbg !284
  store i32 %conv42, ptr %25, align 4, !dbg !285
  %26 = load ptr, ptr %idr.addr, align 8, !dbg !286
  %idr_rt43 = getelementptr inbounds %struct.idr, ptr %26, i32 0, i32 0, !dbg !287
  %27 = load ptr, ptr %slot, align 8, !dbg !288
  %28 = load ptr, ptr %ptr.addr, align 8, !dbg !289
  call void @radix_tree_iter_replace(ptr noundef %idr_rt43, ptr noundef %iter, ptr noundef %27, ptr noundef %28) #15, !dbg !290
  %29 = load ptr, ptr %idr.addr, align 8, !dbg !291
  %idr_rt44 = getelementptr inbounds %struct.idr, ptr %29, i32 0, i32 0, !dbg !292
  call void @radix_tree_iter_tag_clear(ptr noundef %idr_rt44, ptr noundef %iter, i32 noundef 0) #15, !dbg !293
  store i32 0, ptr %retval, align 4, !dbg !294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !294

cleanup:                                          ; preds = %if.end40, %if.then37
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #14, !dbg !295
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #14, !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #14, !dbg !295
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #14, !dbg !295
  %30 = load i32, ptr %retval, align 4, !dbg !295
  ret i32 %30, !dbg !295
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @radix_tree_iter_init(ptr noundef %iter, i64 noundef %start) #4 align 16 !dbg !296 {
entry:
  %iter.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !301, metadata !DIExpression()), !dbg !303
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !302, metadata !DIExpression()), !dbg !304
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !305
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %0, i32 0, i32 0, !dbg !306
  store i64 0, ptr %index, align 8, !dbg !307
  %1 = load i64, ptr %start.addr, align 8, !dbg !308
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !309
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %2, i32 0, i32 1, !dbg !310
  store i64 %1, ptr %next_index, align 8, !dbg !311
  ret ptr null, !dbg !312
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !313 dso_local ptr @idr_get_free(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !316 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !327
  %1 = ptrtoint ptr %0 to i64, !dbg !327
  %2 = inttoptr i64 %1 to ptr, !dbg !327
  %3 = ptrtoint ptr %2 to i64, !dbg !327
  %cmp = icmp uge i64 %3, -4095, !dbg !327
  %lnot = xor i1 %cmp, true, !dbg !327
  %lnot1 = xor i1 %lnot, true, !dbg !327
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !327
  %conv = sext i32 %lnot.ext to i64, !dbg !327
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !327
  %tobool = icmp ne i64 %expval, 0, !dbg !327
  ret i1 %tobool, !dbg !328
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !329 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !335
  %1 = ptrtoint ptr %0 to i64, !dbg !336
  ret i64 %1, !dbg !337
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !338 dso_local void @radix_tree_iter_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !343 dso_local void @radix_tree_iter_tag_clear(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @idr_alloc(ptr noundef %idr, ptr noundef %ptr, i32 noundef %start, i32 noundef %end, i32 noundef %gfp) #0 align 16 !dbg !346 {
entry:
  %retval = alloca i32, align 4
  %idr.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %id = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !350, metadata !DIExpression()), !dbg !363
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !351, metadata !DIExpression()), !dbg !364
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !352, metadata !DIExpression()), !dbg !365
  store i32 %end, ptr %end.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !353, metadata !DIExpression()), !dbg !366
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !354, metadata !DIExpression()), !dbg !367
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #14, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %id, metadata !355, metadata !DIExpression()), !dbg !369
  %0 = load i32, ptr %start.addr, align 4, !dbg !370
  store i32 %0, ptr %id, align 4, !dbg !369
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !356, metadata !DIExpression()), !dbg !372
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !373
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !357, metadata !DIExpression()), !dbg !373
  %1 = load i32, ptr %start.addr, align 4, !dbg !373
  %cmp = icmp slt i32 %1, 0, !dbg !373
  %lnot = xor i1 %cmp, true, !dbg !373
  %lnot1 = xor i1 %lnot, true, !dbg !373
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !373
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !373
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !374
  %tobool = icmp ne i32 %2, 0, !dbg !374
  %lnot2 = xor i1 %tobool, true, !dbg !374
  %lnot4 = xor i1 %lnot2, true, !dbg !374
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !374
  %conv = sext i32 %lnot.ext5 to i64, !dbg !374
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !374
  %tobool6 = icmp ne i64 %expval, 0, !dbg !374
  br i1 %tobool6, label %if.then, label %if.end, !dbg !373

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !374

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !360, metadata !DIExpression()), !dbg !375
  store i32 2307, ptr %__flags, align 4, !dbg !375
  br label %do.body7, !dbg !375

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !376

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !376

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !375

do.body8:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !378
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 84, i32 %3, i64 12) #14, !dbg !378, !srcloc !380
  br label %do.cond9, !dbg !378

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !378

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !375

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !381

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !381

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !374
  br label %do.cond14, !dbg !375

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !375

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !375

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !373
  %tobool16 = icmp ne i32 %4, 0, !dbg !373
  %lnot17 = xor i1 %tobool16, true, !dbg !373
  %lnot19 = xor i1 %lnot17, true, !dbg !373
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !373
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !373
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !373
  store i64 %expval22, ptr %tmp, align 8, !dbg !374
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !383
  %5 = load i64, ptr %tmp, align 8, !dbg !373
  %tobool23 = icmp ne i64 %5, 0, !dbg !383
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !384

if.then24:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !385

if.end25:                                         ; preds = %if.end
  %6 = load ptr, ptr %idr.addr, align 8, !dbg !386
  %7 = load ptr, ptr %ptr.addr, align 8, !dbg !387
  %8 = load i32, ptr %end.addr, align 4, !dbg !388
  %cmp26 = icmp sgt i32 %8, 0, !dbg !389
  br i1 %cmp26, label %cond.true, label %cond.false, !dbg !388

cond.true:                                        ; preds = %if.end25
  %9 = load i32, ptr %end.addr, align 4, !dbg !390
  %sub = sub i32 %9, 1, !dbg !391
  br label %cond.end, !dbg !388

cond.false:                                       ; preds = %if.end25
  br label %cond.end, !dbg !388

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 2147483647, %cond.false ], !dbg !388
  %conv28 = sext i32 %cond to i64, !dbg !388
  %10 = load i32, ptr %gfp.addr, align 4, !dbg !392
  %call = call i32 @idr_alloc_u32(ptr noundef %6, ptr noundef %7, ptr noundef %id, i64 noundef %conv28, i32 noundef %10) #15, !dbg !393
  store i32 %call, ptr %ret, align 4, !dbg !394
  %11 = load i32, ptr %ret, align 4, !dbg !395
  %tobool29 = icmp ne i32 %11, 0, !dbg !395
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !397

if.then30:                                        ; preds = %cond.end
  %12 = load i32, ptr %ret, align 4, !dbg !398
  store i32 %12, ptr %retval, align 4, !dbg !399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !399

if.end31:                                         ; preds = %cond.end
  %13 = load i32, ptr %id, align 4, !dbg !400
  store i32 %13, ptr %retval, align 4, !dbg !401
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !401

cleanup:                                          ; preds = %if.end31, %if.then30, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !402
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #14, !dbg !402
  %14 = load i32, ptr %retval, align 4, !dbg !402
  ret i32 %14, !dbg !402
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @idr_alloc_cyclic(ptr noundef %idr, ptr noundef %ptr, i32 noundef %start, i32 noundef %end, i32 noundef %gfp) #0 align 16 !dbg !403 {
entry:
  %retval = alloca i32, align 4
  %idr.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %id = alloca i32, align 4
  %err = alloca i32, align 4
  %max = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !405, metadata !DIExpression()), !dbg !413
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !406, metadata !DIExpression()), !dbg !414
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !407, metadata !DIExpression()), !dbg !415
  store i32 %end, ptr %end.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !408, metadata !DIExpression()), !dbg !416
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !409, metadata !DIExpression()), !dbg !417
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #14, !dbg !418
  call void @llvm.dbg.declare(metadata ptr %id, metadata !410, metadata !DIExpression()), !dbg !419
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !420
  %idr_next = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 2, !dbg !421
  %1 = load i32, ptr %idr_next, align 4, !dbg !421
  store i32 %1, ptr %id, align 4, !dbg !419
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %err, metadata !411, metadata !DIExpression()), !dbg !423
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #14, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %max, metadata !412, metadata !DIExpression()), !dbg !424
  %2 = load i32, ptr %end.addr, align 4, !dbg !425
  %cmp = icmp sgt i32 %2, 0, !dbg !426
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !425

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %end.addr, align 4, !dbg !427
  %sub = sub i32 %3, 1, !dbg !428
  br label %cond.end, !dbg !425

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !425

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 2147483647, %cond.false ], !dbg !425
  store i32 %cond, ptr %max, align 4, !dbg !424
  %4 = load i32, ptr %id, align 4, !dbg !429
  %5 = load i32, ptr %start.addr, align 4, !dbg !431
  %cmp1 = icmp slt i32 %4, %5, !dbg !432
  br i1 %cmp1, label %if.then, label %if.end, !dbg !433

if.then:                                          ; preds = %cond.end
  %6 = load i32, ptr %start.addr, align 4, !dbg !434
  store i32 %6, ptr %id, align 4, !dbg !435
  br label %if.end, !dbg !436

if.end:                                           ; preds = %if.then, %cond.end
  %7 = load ptr, ptr %idr.addr, align 8, !dbg !437
  %8 = load ptr, ptr %ptr.addr, align 8, !dbg !438
  %9 = load i32, ptr %max, align 4, !dbg !439
  %conv = sext i32 %9 to i64, !dbg !439
  %10 = load i32, ptr %gfp.addr, align 4, !dbg !440
  %call = call i32 @idr_alloc_u32(ptr noundef %7, ptr noundef %8, ptr noundef %id, i64 noundef %conv, i32 noundef %10) #15, !dbg !441
  store i32 %call, ptr %err, align 4, !dbg !442
  %11 = load i32, ptr %err, align 4, !dbg !443
  %cmp2 = icmp eq i32 %11, -28, !dbg !445
  br i1 %cmp2, label %land.lhs.true, label %if.end9, !dbg !446

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, ptr %id, align 4, !dbg !447
  %13 = load i32, ptr %start.addr, align 4, !dbg !448
  %cmp4 = icmp ugt i32 %12, %13, !dbg !449
  br i1 %cmp4, label %if.then6, label %if.end9, !dbg !450

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i32, ptr %start.addr, align 4, !dbg !451
  store i32 %14, ptr %id, align 4, !dbg !453
  %15 = load ptr, ptr %idr.addr, align 8, !dbg !454
  %16 = load ptr, ptr %ptr.addr, align 8, !dbg !455
  %17 = load i32, ptr %max, align 4, !dbg !456
  %conv7 = sext i32 %17 to i64, !dbg !456
  %18 = load i32, ptr %gfp.addr, align 4, !dbg !457
  %call8 = call i32 @idr_alloc_u32(ptr noundef %15, ptr noundef %16, ptr noundef %id, i64 noundef %conv7, i32 noundef %18) #15, !dbg !458
  store i32 %call8, ptr %err, align 4, !dbg !459
  br label %if.end9, !dbg !460

if.end9:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %19 = load i32, ptr %err, align 4, !dbg !461
  %tobool = icmp ne i32 %19, 0, !dbg !461
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !463

if.then10:                                        ; preds = %if.end9
  %20 = load i32, ptr %err, align 4, !dbg !464
  store i32 %20, ptr %retval, align 4, !dbg !465
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !465

if.end11:                                         ; preds = %if.end9
  %21 = load i32, ptr %id, align 4, !dbg !466
  %add = add i32 %21, 1, !dbg !467
  %22 = load ptr, ptr %idr.addr, align 8, !dbg !468
  %idr_next12 = getelementptr inbounds %struct.idr, ptr %22, i32 0, i32 2, !dbg !469
  store i32 %add, ptr %idr_next12, align 4, !dbg !470
  %23 = load i32, ptr %id, align 4, !dbg !471
  store i32 %23, ptr %retval, align 4, !dbg !472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !472

cleanup:                                          ; preds = %if.end11, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #14, !dbg !473
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !473
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #14, !dbg !473
  %24 = load i32, ptr %retval, align 4, !dbg !473
  ret i32 %24, !dbg !473
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @idr_remove(ptr noundef %idr, i64 noundef %id) #0 align 16 !dbg !474 {
entry:
  %idr.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !478, metadata !DIExpression()), !dbg !480
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !479, metadata !DIExpression()), !dbg !481
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !482
  %idr_rt = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 0, !dbg !483
  %1 = load i64, ptr %id.addr, align 8, !dbg !484
  %2 = load ptr, ptr %idr.addr, align 8, !dbg !485
  %idr_base = getelementptr inbounds %struct.idr, ptr %2, i32 0, i32 1, !dbg !486
  %3 = load i32, ptr %idr_base, align 8, !dbg !486
  %conv = zext i32 %3 to i64, !dbg !485
  %sub = sub i64 %1, %conv, !dbg !487
  %call = call ptr @radix_tree_delete_item(ptr noundef %idr_rt, i64 noundef %sub, ptr noundef null) #15, !dbg !488
  ret ptr %call, !dbg !489
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !490 dso_local ptr @radix_tree_delete_item(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @idr_find(ptr noundef %idr, i64 noundef %id) #0 align 16 !dbg !493 {
entry:
  %idr.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !499, metadata !DIExpression()), !dbg !501
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !500, metadata !DIExpression()), !dbg !502
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !503
  %idr_rt = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 0, !dbg !504
  %1 = load i64, ptr %id.addr, align 8, !dbg !505
  %2 = load ptr, ptr %idr.addr, align 8, !dbg !506
  %idr_base = getelementptr inbounds %struct.idr, ptr %2, i32 0, i32 1, !dbg !507
  %3 = load i32, ptr %idr_base, align 8, !dbg !507
  %conv = zext i32 %3 to i64, !dbg !506
  %sub = sub i64 %1, %conv, !dbg !508
  %call = call ptr @radix_tree_lookup(ptr noundef %idr_rt, i64 noundef %sub) #15, !dbg !509
  ret ptr %call, !dbg !510
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !511 dso_local ptr @radix_tree_lookup(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @idr_for_each(ptr noundef %idr, ptr noundef %fn, ptr noundef %data) #0 align 16 !dbg !516 {
entry:
  %retval = alloca i32, align 4
  %idr.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %iter = alloca %struct.radix_tree_iter, align 8
  %slot = alloca ptr, align 8
  %base = alloca i32, align 4
  %ret = alloca i32, align 4
  %id = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu195 = alloca ptr, align 8
  %tmp35 = alloca ptr, align 8
  %tmp36 = alloca ptr, align 8
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !523, metadata !DIExpression()), !dbg !542
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !524, metadata !DIExpression()), !dbg !543
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !525, metadata !DIExpression()), !dbg !544
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #14, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !526, metadata !DIExpression()), !dbg !546
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #14, !dbg !547
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !527, metadata !DIExpression()), !dbg !548
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #14, !dbg !549
  call void @llvm.dbg.declare(metadata ptr %base, metadata !528, metadata !DIExpression()), !dbg !550
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !551
  %idr_base = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1, !dbg !552
  %1 = load i32, ptr %idr_base, align 8, !dbg !552
  store i32 %1, ptr %base, align 4, !dbg !550
  %call = call ptr @radix_tree_iter_init(ptr noundef %iter, i64 noundef 0) #15, !dbg !553
  store ptr %call, ptr %slot, align 8, !dbg !553
  br label %for.cond, !dbg !553

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %slot, align 8, !dbg !554
  %tobool = icmp ne ptr %2, null, !dbg !554
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !554

lor.rhs:                                          ; preds = %for.cond
  %3 = load ptr, ptr %idr.addr, align 8, !dbg !554
  %idr_rt = getelementptr inbounds %struct.idr, ptr %3, i32 0, i32 0, !dbg !554
  %call1 = call ptr @radix_tree_next_chunk(ptr noundef %idr_rt, ptr noundef %iter, i32 noundef 0) #15, !dbg !554
  store ptr %call1, ptr %slot, align 8, !dbg !554
  %tobool2 = icmp ne ptr %call1, null, !dbg !554
  br label %lor.end, !dbg !554

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %4 = phi i1 [ true, %for.cond ], [ %tobool2, %lor.rhs ]
  br i1 %4, label %for.body, label %for.end, !dbg !553

for.body:                                         ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !529, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #14, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %id, metadata !533, metadata !DIExpression()), !dbg !558
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 0, !dbg !559
  %5 = load i64, ptr %index, align 8, !dbg !559
  %6 = load i32, ptr %base, align 4, !dbg !560
  %conv = sext i32 %6 to i64, !dbg !560
  %add = add i64 %5, %conv, !dbg !561
  store i64 %add, ptr %id, align 8, !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !534, metadata !DIExpression()), !dbg !562
  %7 = load i64, ptr %id, align 8, !dbg !562
  %cmp = icmp ugt i64 %7, 2147483647, !dbg !562
  %lnot = xor i1 %cmp, true, !dbg !562
  %lnot4 = xor i1 %lnot, true, !dbg !562
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !562
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !562
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !563
  %tobool5 = icmp ne i32 %8, 0, !dbg !563
  %lnot6 = xor i1 %tobool5, true, !dbg !563
  %lnot8 = xor i1 %lnot6, true, !dbg !563
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !563
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !563
  %expval = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !563
  %tobool11 = icmp ne i64 %expval, 0, !dbg !563
  br i1 %tobool11, label %if.then, label %if.end, !dbg !562

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !563

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !537, metadata !DIExpression()), !dbg !564
  store i32 2307, ptr %__flags, align 4, !dbg !564
  br label %do.body12, !dbg !564

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !565

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !565

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !564

do.body13:                                        ; preds = %do.end
  %9 = load i32, ptr %__flags, align 4, !dbg !567
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 206, i32 %9, i64 12) #14, !dbg !567, !srcloc !569
  br label %do.cond14, !dbg !567

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !567

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !564

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !570

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !570

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !563
  br label %do.cond19, !dbg !564

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !564

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !564

if.end:                                           ; preds = %do.end20, %for.body
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !562
  %tobool21 = icmp ne i32 %10, 0, !dbg !562
  %lnot22 = xor i1 %tobool21, true, !dbg !562
  %lnot24 = xor i1 %lnot22, true, !dbg !562
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !562
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !562
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !562
  store i64 %expval27, ptr %tmp, align 8, !dbg !563
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !572
  %11 = load i64, ptr %tmp, align 8, !dbg !562
  %tobool28 = icmp ne i64 %11, 0, !dbg !572
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !573

if.then29:                                        ; preds = %if.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !574

if.end30:                                         ; preds = %if.end
  %12 = load ptr, ptr %fn.addr, align 8, !dbg !575
  %13 = load i64, ptr %id, align 8, !dbg !576
  %conv31 = trunc i64 %13 to i32, !dbg !576
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu195) #14, !dbg !577
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu195, metadata !540, metadata !DIExpression()), !dbg !577
  br label %do.body32, !dbg !578

do.body32:                                        ; preds = %if.end30
  br label %do.cond33, !dbg !580

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !580

do.end34:                                         ; preds = %do.cond33
  %14 = load ptr, ptr %slot, align 8, !dbg !578
  %15 = load volatile ptr, ptr %14, align 8, !dbg !578
  store ptr %15, ptr %tmp35, align 8, !dbg !580
  %16 = load ptr, ptr %tmp35, align 8, !dbg !578
  store ptr %16, ptr %__UNIQUE_ID_rcu195, align 8, !dbg !577
  %17 = load ptr, ptr %__UNIQUE_ID_rcu195, align 8, !dbg !577
  store ptr %17, ptr %tmp36, align 8, !dbg !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu195) #14, !dbg !582
  %18 = load ptr, ptr %tmp36, align 8, !dbg !577
  %19 = load ptr, ptr %data.addr, align 8, !dbg !583
  %call37 = call i32 %12(i32 noundef %conv31, ptr noundef %18, ptr noundef %19) #15, !dbg !575
  store i32 %call37, ptr %ret, align 4, !dbg !584
  %20 = load i32, ptr %ret, align 4, !dbg !585
  %tobool38 = icmp ne i32 %20, 0, !dbg !585
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !587

if.then39:                                        ; preds = %do.end34
  %21 = load i32, ptr %ret, align 4, !dbg !588
  store i32 %21, ptr %retval, align 4, !dbg !589
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !589

if.end40:                                         ; preds = %do.end34
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !590
  br label %cleanup, !dbg !590

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then29
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #14, !dbg !590
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !590
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup43 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !591

for.inc:                                          ; preds = %cleanup.cont
  %22 = load ptr, ptr %slot, align 8, !dbg !554
  %call42 = call ptr @radix_tree_next_slot(ptr noundef %22, ptr noundef %iter, i32 noundef 0) #15, !dbg !554
  store ptr %call42, ptr %slot, align 8, !dbg !554
  br label %for.cond, !dbg !554, !llvm.loop !592

for.end:                                          ; preds = %cleanup, %lor.end
  store i32 0, ptr %retval, align 4, !dbg !596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup43, !dbg !596

cleanup43:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #14, !dbg !597
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #14, !dbg !597
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #14, !dbg !597
  %23 = load i32, ptr %retval, align 4, !dbg !597
  ret i32 %23, !dbg !597
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !598 dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @radix_tree_next_slot(ptr noundef %slot, ptr noundef %iter, i32 noundef %flags) #4 align 16 !dbg !601 {
entry:
  %retval = alloca ptr, align 8
  %slot.addr = alloca ptr, align 8
  %iter.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %count = alloca i64, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !605, metadata !DIExpression()), !dbg !616
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !606, metadata !DIExpression()), !dbg !617
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !607, metadata !DIExpression()), !dbg !618
  %0 = load i32, ptr %flags.addr, align 4, !dbg !619
  %and = and i32 %0, 16, !dbg !620
  %tobool = icmp ne i32 %and, 0, !dbg !620
  br i1 %tobool, label %if.then, label %if.else, !dbg !621

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %iter.addr, align 8, !dbg !622
  %tags = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 2, !dbg !623
  %2 = load i64, ptr %tags, align 8, !dbg !624
  %shr = lshr i64 %2, 1, !dbg !624
  store i64 %shr, ptr %tags, align 8, !dbg !624
  %3 = load ptr, ptr %iter.addr, align 8, !dbg !625
  %tags1 = getelementptr inbounds %struct.radix_tree_iter, ptr %3, i32 0, i32 2, !dbg !625
  %4 = load i64, ptr %tags1, align 8, !dbg !625
  %tobool2 = icmp ne i64 %4, 0, !dbg !625
  %lnot = xor i1 %tobool2, true, !dbg !625
  %lnot3 = xor i1 %lnot, true, !dbg !625
  %lnot4 = xor i1 %lnot3, true, !dbg !625
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !625
  %conv = sext i32 %lnot.ext to i64, !dbg !625
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !625
  %tobool5 = icmp ne i64 %expval, 0, !dbg !625
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !627

if.then6:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8, !dbg !628
  br label %return, !dbg !628

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %iter.addr, align 8, !dbg !629
  %tags7 = getelementptr inbounds %struct.radix_tree_iter, ptr %5, i32 0, i32 2, !dbg !629
  %6 = load i64, ptr %tags7, align 8, !dbg !629
  %and8 = and i64 %6, 1, !dbg !629
  %tobool9 = icmp ne i64 %and8, 0, !dbg !629
  %lnot10 = xor i1 %tobool9, true, !dbg !629
  %lnot12 = xor i1 %lnot10, true, !dbg !629
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !629
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !629
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 1), !dbg !629
  %tobool16 = icmp ne i64 %expval15, 0, !dbg !629
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !631

if.then17:                                        ; preds = %if.end
  %7 = load ptr, ptr %iter.addr, align 8, !dbg !632
  %call = call i64 @__radix_tree_iter_add(ptr noundef %7, i64 noundef 1) #15, !dbg !634
  %8 = load ptr, ptr %iter.addr, align 8, !dbg !635
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %8, i32 0, i32 0, !dbg !636
  store i64 %call, ptr %index, align 8, !dbg !637
  %9 = load ptr, ptr %slot.addr, align 8, !dbg !638
  %incdec.ptr = getelementptr ptr, ptr %9, i32 1, !dbg !638
  store ptr %incdec.ptr, ptr %slot.addr, align 8, !dbg !638
  br label %found, !dbg !639

if.end18:                                         ; preds = %if.end
  %10 = load i32, ptr %flags.addr, align 4, !dbg !640
  %and19 = and i32 %10, 32, !dbg !641
  %tobool20 = icmp ne i32 %and19, 0, !dbg !641
  br i1 %tobool20, label %if.end33, label %if.then21, !dbg !642

if.then21:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #14, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !608, metadata !DIExpression()), !dbg !644
  %11 = load ptr, ptr %iter.addr, align 8, !dbg !645
  %tags22 = getelementptr inbounds %struct.radix_tree_iter, ptr %11, i32 0, i32 2, !dbg !645
  %12 = load i64, ptr %tags22, align 8, !dbg !645
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !645
  br i1 %13, label %cond.true, label %cond.false, !dbg !645

cond.true:                                        ; preds = %if.then21
  %14 = load ptr, ptr %iter.addr, align 8, !dbg !645
  %tags23 = getelementptr inbounds %struct.radix_tree_iter, ptr %14, i32 0, i32 2, !dbg !645
  %15 = load i64, ptr %tags23, align 8, !dbg !645
  %16 = call i64 @llvm.cttz.i64(i64 %15, i1 true), !dbg !645
  %cast = trunc i64 %16 to i32, !dbg !645
  %conv24 = sext i32 %cast to i64, !dbg !645
  br label %cond.end, !dbg !645

cond.false:                                       ; preds = %if.then21
  %17 = load ptr, ptr %iter.addr, align 8, !dbg !645
  %tags25 = getelementptr inbounds %struct.radix_tree_iter, ptr %17, i32 0, i32 2, !dbg !645
  %18 = load i64, ptr %tags25, align 8, !dbg !645
  %call26 = call i64 @variable__ffs(i64 noundef %18) #15, !dbg !645
  br label %cond.end, !dbg !645

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv24, %cond.true ], [ %call26, %cond.false ], !dbg !645
  %conv27 = trunc i64 %cond to i32, !dbg !645
  store i32 %conv27, ptr %offset, align 4, !dbg !644
  %19 = load i32, ptr %offset, align 4, !dbg !646
  %inc = add i32 %19, 1, !dbg !646
  store i32 %inc, ptr %offset, align 4, !dbg !646
  %20 = load ptr, ptr %iter.addr, align 8, !dbg !647
  %tags28 = getelementptr inbounds %struct.radix_tree_iter, ptr %20, i32 0, i32 2, !dbg !648
  %21 = load i64, ptr %tags28, align 8, !dbg !649
  %sh_prom = zext i32 %19 to i64, !dbg !649
  %shr29 = lshr i64 %21, %sh_prom, !dbg !649
  store i64 %shr29, ptr %tags28, align 8, !dbg !649
  %22 = load ptr, ptr %iter.addr, align 8, !dbg !650
  %23 = load i32, ptr %offset, align 4, !dbg !651
  %conv30 = zext i32 %23 to i64, !dbg !651
  %call31 = call i64 @__radix_tree_iter_add(ptr noundef %22, i64 noundef %conv30) #15, !dbg !652
  %24 = load ptr, ptr %iter.addr, align 8, !dbg !653
  %index32 = getelementptr inbounds %struct.radix_tree_iter, ptr %24, i32 0, i32 0, !dbg !654
  store i64 %call31, ptr %index32, align 8, !dbg !655
  %25 = load i32, ptr %offset, align 4, !dbg !656
  %26 = load ptr, ptr %slot.addr, align 8, !dbg !657
  %idx.ext = zext i32 %25 to i64, !dbg !657
  %add.ptr = getelementptr ptr, ptr %26, i64 %idx.ext, !dbg !657
  store ptr %add.ptr, ptr %slot.addr, align 8, !dbg !657
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #14, !dbg !658
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %found
  ]

if.end33:                                         ; preds = %if.end18
  br label %if.end54, !dbg !659

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #14, !dbg !660
  call void @llvm.dbg.declare(metadata ptr %count, metadata !613, metadata !DIExpression()), !dbg !661
  %27 = load ptr, ptr %iter.addr, align 8, !dbg !662
  %call34 = call i64 @radix_tree_chunk_size(ptr noundef %27) #15, !dbg !663
  store i64 %call34, ptr %count, align 8, !dbg !661
  br label %while.cond, !dbg !664

while.cond:                                       ; preds = %if.end52, %if.else
  %28 = load i64, ptr %count, align 8, !dbg !665
  %dec = add i64 %28, -1, !dbg !665
  store i64 %dec, ptr %count, align 8, !dbg !665
  %cmp = icmp sgt i64 %dec, 0, !dbg !666
  br i1 %cmp, label %while.body, label %while.end, !dbg !664

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %slot.addr, align 8, !dbg !667
  %incdec.ptr36 = getelementptr ptr, ptr %29, i32 1, !dbg !667
  store ptr %incdec.ptr36, ptr %slot.addr, align 8, !dbg !667
  %30 = load ptr, ptr %iter.addr, align 8, !dbg !669
  %call37 = call i64 @__radix_tree_iter_add(ptr noundef %30, i64 noundef 1) #15, !dbg !670
  %31 = load ptr, ptr %iter.addr, align 8, !dbg !671
  %index38 = getelementptr inbounds %struct.radix_tree_iter, ptr %31, i32 0, i32 0, !dbg !672
  store i64 %call37, ptr %index38, align 8, !dbg !673
  %32 = load ptr, ptr %slot.addr, align 8, !dbg !674
  %33 = load ptr, ptr %32, align 8, !dbg !674
  %tobool39 = icmp ne ptr %33, null, !dbg !674
  %lnot40 = xor i1 %tobool39, true, !dbg !674
  %lnot42 = xor i1 %lnot40, true, !dbg !674
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !674
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !674
  %expval45 = call i64 @llvm.expect.i64(i64 %conv44, i64 1), !dbg !674
  %tobool46 = icmp ne i64 %expval45, 0, !dbg !674
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !676

if.then47:                                        ; preds = %while.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !677

if.end48:                                         ; preds = %while.body
  %34 = load i32, ptr %flags.addr, align 4, !dbg !678
  %and49 = and i32 %34, 32, !dbg !680
  %tobool50 = icmp ne i32 %and49, 0, !dbg !680
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !681

if.then51:                                        ; preds = %if.end48
  %35 = load ptr, ptr %iter.addr, align 8, !dbg !682
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %35, i32 0, i32 1, !dbg !684
  store i64 0, ptr %next_index, align 8, !dbg !685
  br label %while.end, !dbg !686

if.end52:                                         ; preds = %if.end48
  br label %while.cond, !dbg !664, !llvm.loop !687

while.end:                                        ; preds = %if.then51, %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !689
  br label %cleanup, !dbg !689

cleanup:                                          ; preds = %if.then47, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #14, !dbg !689
  %cleanup.dest53 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest53, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %found
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end54

if.end54:                                         ; preds = %cleanup.cont, %if.end33
  store ptr null, ptr %retval, align 8, !dbg !690
  br label %return, !dbg !690

found:                                            ; preds = %cleanup, %cond.end, %if.then17
  call void @llvm.dbg.label(metadata !615), !dbg !691
  %36 = load ptr, ptr %slot.addr, align 8, !dbg !692
  store ptr %36, ptr %retval, align 8, !dbg !693
  br label %return, !dbg !693

return:                                           ; preds = %found, %if.end54, %if.then6
  %37 = load ptr, ptr %retval, align 8, !dbg !694
  ret ptr %37, !dbg !694

unreachable:                                      ; preds = %cleanup, %cond.end
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @idr_get_next_ul(ptr noundef %idr, ptr noundef %nextid) #0 align 16 !dbg !695 {
entry:
  %retval = alloca ptr, align 8
  %idr.addr = alloca ptr, align 8
  %nextid.addr = alloca ptr, align 8
  %iter = alloca %struct.radix_tree_iter, align 8
  %slot = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %base = alloca i64, align 8
  %id = alloca i64, align 8
  %__UNIQUE_ID_rcu198 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !699, metadata !DIExpression()), !dbg !711
  store ptr %nextid, ptr %nextid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nextid.addr, metadata !700, metadata !DIExpression()), !dbg !712
  call void @llvm.lifetime.start.p0(i64 32, ptr %iter) #14, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !701, metadata !DIExpression()), !dbg !714
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #14, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !702, metadata !DIExpression()), !dbg !716
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !703, metadata !DIExpression()), !dbg !718
  store ptr null, ptr %entry1, align 8, !dbg !718
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #14, !dbg !719
  call void @llvm.dbg.declare(metadata ptr %base, metadata !704, metadata !DIExpression()), !dbg !720
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !721
  %idr_base = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1, !dbg !722
  %1 = load i32, ptr %idr_base, align 8, !dbg !722
  %conv = zext i32 %1 to i64, !dbg !721
  store i64 %conv, ptr %base, align 8, !dbg !720
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #14, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %id, metadata !705, metadata !DIExpression()), !dbg !724
  %2 = load ptr, ptr %nextid.addr, align 8, !dbg !725
  %3 = load i64, ptr %2, align 8, !dbg !726
  store i64 %3, ptr %id, align 8, !dbg !724
  %4 = load i64, ptr %id, align 8, !dbg !727
  %5 = load i64, ptr %base, align 8, !dbg !728
  %cmp = icmp ult i64 %4, %5, !dbg !729
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !730

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !730

cond.false:                                       ; preds = %entry
  %6 = load i64, ptr %id, align 8, !dbg !731
  %7 = load i64, ptr %base, align 8, !dbg !732
  %sub = sub i64 %6, %7, !dbg !733
  br label %cond.end, !dbg !730

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ], !dbg !730
  store i64 %cond, ptr %id, align 8, !dbg !734
  %8 = load i64, ptr %id, align 8, !dbg !735
  %call = call ptr @radix_tree_iter_init(ptr noundef %iter, i64 noundef %8) #15, !dbg !735
  store ptr %call, ptr %slot, align 8, !dbg !735
  br label %for.cond, !dbg !735

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load ptr, ptr %slot, align 8, !dbg !736
  %tobool = icmp ne ptr %9, null, !dbg !736
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !736

lor.rhs:                                          ; preds = %for.cond
  %10 = load ptr, ptr %idr.addr, align 8, !dbg !736
  %idr_rt = getelementptr inbounds %struct.idr, ptr %10, i32 0, i32 0, !dbg !736
  %call3 = call ptr @radix_tree_next_chunk(ptr noundef %idr_rt, ptr noundef %iter, i32 noundef 0) #15, !dbg !736
  store ptr %call3, ptr %slot, align 8, !dbg !736
  %tobool4 = icmp ne ptr %call3, null, !dbg !736
  br label %lor.end, !dbg !736

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %11 = phi i1 [ true, %for.cond ], [ %tobool4, %lor.rhs ]
  br i1 %11, label %for.body, label %for.end, !dbg !735

for.body:                                         ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu198) #14, !dbg !737
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu198, metadata !706, metadata !DIExpression()), !dbg !737
  br label %do.body, !dbg !738

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !740

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !740

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %slot, align 8, !dbg !738
  %13 = load volatile ptr, ptr %12, align 8, !dbg !738
  store ptr %13, ptr %tmp, align 8, !dbg !740
  %14 = load ptr, ptr %tmp, align 8, !dbg !738
  store ptr %14, ptr %__UNIQUE_ID_rcu198, align 8, !dbg !737
  %15 = load ptr, ptr %__UNIQUE_ID_rcu198, align 8, !dbg !737
  store ptr %15, ptr %tmp5, align 8, !dbg !737
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu198) #14, !dbg !742
  %16 = load ptr, ptr %tmp5, align 8, !dbg !737
  store ptr %16, ptr %entry1, align 8, !dbg !743
  %17 = load ptr, ptr %entry1, align 8, !dbg !744
  %tobool6 = icmp ne ptr %17, null, !dbg !744
  br i1 %tobool6, label %if.end, label %if.then, !dbg !746

if.then:                                          ; preds = %do.end
  br label %for.inc, !dbg !747

if.end:                                           ; preds = %do.end
  %18 = load ptr, ptr %entry1, align 8, !dbg !748
  %call7 = call zeroext i1 @xa_is_internal(ptr noundef %18) #15, !dbg !750
  br i1 %call7, label %if.end9, label %if.then8, !dbg !751

if.then8:                                         ; preds = %if.end
  br label %for.end, !dbg !752

if.end9:                                          ; preds = %if.end
  %19 = load ptr, ptr %slot, align 8, !dbg !753
  %20 = load ptr, ptr %idr.addr, align 8, !dbg !755
  %idr_rt10 = getelementptr inbounds %struct.idr, ptr %20, i32 0, i32 0, !dbg !756
  %xa_head = getelementptr inbounds %struct.xarray, ptr %idr_rt10, i32 0, i32 2, !dbg !757
  %cmp11 = icmp ne ptr %19, %xa_head, !dbg !758
  br i1 %cmp11, label %land.lhs.true, label %if.end15, !dbg !759

land.lhs.true:                                    ; preds = %if.end9
  %21 = load ptr, ptr %entry1, align 8, !dbg !760
  %call13 = call zeroext i1 @xa_is_retry(ptr noundef %21) #15, !dbg !761
  br i1 %call13, label %if.end15, label %if.then14, !dbg !762

if.then14:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !763

if.end15:                                         ; preds = %land.lhs.true, %if.end9
  %call16 = call ptr @radix_tree_iter_retry(ptr noundef %iter) #15, !dbg !764
  store ptr %call16, ptr %slot, align 8, !dbg !765
  br label %for.inc, !dbg !766

for.inc:                                          ; preds = %if.end15, %if.then
  %22 = load ptr, ptr %slot, align 8, !dbg !736
  %call17 = call ptr @radix_tree_next_slot(ptr noundef %22, ptr noundef %iter, i32 noundef 0) #15, !dbg !736
  store ptr %call17, ptr %slot, align 8, !dbg !736
  br label %for.cond, !dbg !736, !llvm.loop !767

for.end:                                          ; preds = %if.then14, %if.then8, %lor.end
  %23 = load ptr, ptr %slot, align 8, !dbg !769
  %tobool18 = icmp ne ptr %23, null, !dbg !769
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !771

if.then19:                                        ; preds = %for.end
  store ptr null, ptr %retval, align 8, !dbg !772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !772

if.end20:                                         ; preds = %for.end
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %iter, i32 0, i32 0, !dbg !773
  %24 = load i64, ptr %index, align 8, !dbg !773
  %25 = load i64, ptr %base, align 8, !dbg !774
  %add = add i64 %24, %25, !dbg !775
  %26 = load ptr, ptr %nextid.addr, align 8, !dbg !776
  store i64 %add, ptr %26, align 8, !dbg !777
  %27 = load ptr, ptr %entry1, align 8, !dbg !778
  store ptr %27, ptr %retval, align 8, !dbg !779
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !779

cleanup:                                          ; preds = %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #14, !dbg !780
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #14, !dbg !780
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !780
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #14, !dbg !780
  call void @llvm.lifetime.end.p0(i64 32, ptr %iter) #14, !dbg !780
  %28 = load ptr, ptr %retval, align 8, !dbg !780
  ret ptr %28, !dbg !780
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_internal(ptr noundef %entry1) #6 align 16 !dbg !781 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !783, metadata !DIExpression()), !dbg !784
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !785
  %1 = ptrtoint ptr %0 to i64, !dbg !786
  %and = and i64 %1, 3, !dbg !787
  %cmp = icmp eq i64 %and, 2, !dbg !788
  ret i1 %cmp, !dbg !789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_retry(ptr noundef %entry1) #6 align 16 !dbg !790 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !792, metadata !DIExpression()), !dbg !793
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !794
  %call = call ptr @xa_mk_internal(i64 noundef 256) #15, !dbg !794
  %cmp = icmp eq ptr %0, %call, !dbg !794
  %lnot = xor i1 %cmp, true, !dbg !794
  %lnot2 = xor i1 %lnot, true, !dbg !794
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !794
  %conv = sext i32 %lnot.ext to i64, !dbg !794
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !794
  %tobool = icmp ne i64 %expval, 0, !dbg !794
  ret i1 %tobool, !dbg !795
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @radix_tree_iter_retry(ptr noundef %iter) #6 align 16 !dbg !796 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !800, metadata !DIExpression()), !dbg !801
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !802
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %0, i32 0, i32 0, !dbg !803
  %1 = load i64, ptr %index, align 8, !dbg !803
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !804
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %2, i32 0, i32 1, !dbg !805
  store i64 %1, ptr %next_index, align 8, !dbg !806
  %3 = load ptr, ptr %iter.addr, align 8, !dbg !807
  %tags = getelementptr inbounds %struct.radix_tree_iter, ptr %3, i32 0, i32 2, !dbg !808
  store i64 0, ptr %tags, align 8, !dbg !809
  ret ptr null, !dbg !810
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @idr_get_next(ptr noundef %idr, ptr noundef %nextid) #0 align 16 !dbg !811 {
entry:
  %retval = alloca ptr, align 8
  %idr.addr = alloca ptr, align 8
  %nextid.addr = alloca ptr, align 8
  %id = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !816, metadata !DIExpression()), !dbg !826
  store ptr %nextid, ptr %nextid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nextid.addr, metadata !817, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #14, !dbg !828
  call void @llvm.dbg.declare(metadata ptr %id, metadata !818, metadata !DIExpression()), !dbg !829
  %0 = load ptr, ptr %nextid.addr, align 8, !dbg !830
  %1 = load i32, ptr %0, align 4, !dbg !831
  %conv = sext i32 %1 to i64, !dbg !831
  store i64 %conv, ptr %id, align 8, !dbg !829
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !819, metadata !DIExpression()), !dbg !833
  %2 = load ptr, ptr %idr.addr, align 8, !dbg !834
  %call = call ptr @idr_get_next_ul(ptr noundef %2, ptr noundef %id) #15, !dbg !835
  store ptr %call, ptr %entry1, align 8, !dbg !833
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !820, metadata !DIExpression()), !dbg !836
  %3 = load i64, ptr %id, align 8, !dbg !836
  %cmp = icmp ugt i64 %3, 2147483647, !dbg !836
  %lnot = xor i1 %cmp, true, !dbg !836
  %lnot3 = xor i1 %lnot, true, !dbg !836
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !836
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !836
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !837
  %tobool = icmp ne i32 %4, 0, !dbg !837
  %lnot4 = xor i1 %tobool, true, !dbg !837
  %lnot6 = xor i1 %lnot4, true, !dbg !837
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !837
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !837
  %expval = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !837
  %tobool9 = icmp ne i64 %expval, 0, !dbg !837
  br i1 %tobool9, label %if.then, label %if.end, !dbg !836

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !837

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !823, metadata !DIExpression()), !dbg !838
  store i32 2307, ptr %__flags, align 4, !dbg !838
  br label %do.body10, !dbg !838

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !839

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !839

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !838

do.body11:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !841
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 269, i32 %5, i64 12) #14, !dbg !841, !srcloc !843
  br label %do.cond12, !dbg !841

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !841

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !838

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !844

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !844

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !837
  br label %do.cond17, !dbg !838

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !838

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !838

if.end:                                           ; preds = %do.end18, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !836
  %tobool19 = icmp ne i32 %6, 0, !dbg !836
  %lnot20 = xor i1 %tobool19, true, !dbg !836
  %lnot22 = xor i1 %lnot20, true, !dbg !836
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !836
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !836
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !836
  store i64 %expval25, ptr %tmp, align 8, !dbg !837
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !846
  %7 = load i64, ptr %tmp, align 8, !dbg !836
  %tobool26 = icmp ne i64 %7, 0, !dbg !846
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !847

if.then27:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !848

if.end28:                                         ; preds = %if.end
  %8 = load i64, ptr %id, align 8, !dbg !849
  %conv29 = trunc i64 %8 to i32, !dbg !849
  %9 = load ptr, ptr %nextid.addr, align 8, !dbg !850
  store i32 %conv29, ptr %9, align 4, !dbg !851
  %10 = load ptr, ptr %entry1, align 8, !dbg !852
  store ptr %10, ptr %retval, align 8, !dbg !853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !853

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !854
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #14, !dbg !854
  %11 = load ptr, ptr %retval, align 8, !dbg !854
  ret ptr %11, !dbg !854
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @idr_replace(ptr noundef %idr, ptr noundef %ptr, i64 noundef %id) #0 align 16 !dbg !855 {
entry:
  %retval = alloca ptr, align 8
  %idr.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %idr, ptr %idr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idr.addr, metadata !859, metadata !DIExpression()), !dbg !865
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !860, metadata !DIExpression()), !dbg !866
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !861, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %node, metadata !862, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #14, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !863, metadata !DIExpression()), !dbg !871
  store ptr null, ptr %slot, align 8, !dbg !871
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !872
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !864, metadata !DIExpression()), !dbg !873
  %0 = load ptr, ptr %idr.addr, align 8, !dbg !874
  %idr_base = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1, !dbg !875
  %1 = load i32, ptr %idr_base, align 8, !dbg !875
  %conv = zext i32 %1 to i64, !dbg !874
  %2 = load i64, ptr %id.addr, align 8, !dbg !876
  %sub = sub i64 %2, %conv, !dbg !876
  store i64 %sub, ptr %id.addr, align 8, !dbg !876
  %3 = load ptr, ptr %idr.addr, align 8, !dbg !877
  %idr_rt = getelementptr inbounds %struct.idr, ptr %3, i32 0, i32 0, !dbg !878
  %4 = load i64, ptr %id.addr, align 8, !dbg !879
  %call = call ptr @__radix_tree_lookup(ptr noundef %idr_rt, i64 noundef %4, ptr noundef %node, ptr noundef %slot) #15, !dbg !880
  store ptr %call, ptr %entry1, align 8, !dbg !881
  %5 = load ptr, ptr %slot, align 8, !dbg !882
  %tobool = icmp ne ptr %5, null, !dbg !882
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !884

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %idr.addr, align 8, !dbg !885
  %idr_rt2 = getelementptr inbounds %struct.idr, ptr %6, i32 0, i32 0, !dbg !886
  %7 = load i64, ptr %id.addr, align 8, !dbg !887
  %call3 = call i32 @radix_tree_tag_get(ptr noundef %idr_rt2, i64 noundef %7, i32 noundef 0) #15, !dbg !888
  %tobool4 = icmp ne i32 %call3, 0, !dbg !888
  br i1 %tobool4, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call5 = call ptr @ERR_PTR(i64 noundef -2) #15, !dbg !890
  store ptr %call5, ptr %retval, align 8, !dbg !891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !891

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %idr.addr, align 8, !dbg !892
  %idr_rt6 = getelementptr inbounds %struct.idr, ptr %8, i32 0, i32 0, !dbg !893
  %9 = load ptr, ptr %node, align 8, !dbg !894
  %10 = load ptr, ptr %slot, align 8, !dbg !895
  %11 = load ptr, ptr %ptr.addr, align 8, !dbg !896
  call void @__radix_tree_replace(ptr noundef %idr_rt6, ptr noundef %9, ptr noundef %10, ptr noundef %11) #15, !dbg !897
  %12 = load ptr, ptr %entry1, align 8, !dbg !898
  store ptr %12, ptr %retval, align 8, !dbg !899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !899

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !900
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #14, !dbg !900
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !900
  %13 = load ptr, ptr %retval, align 8, !dbg !900
  ret ptr %13, !dbg !900
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !901 dso_local ptr @__radix_tree_lookup(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !906 dso_local i32 @radix_tree_tag_get(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !909 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !913, metadata !DIExpression()), !dbg !914
  %0 = load i64, ptr %error.addr, align 8, !dbg !915
  %1 = inttoptr i64 %0 to ptr, !dbg !916
  ret ptr %1, !dbg !917
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !918 dso_local void @__radix_tree_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ida_alloc_range(ptr noundef %ida, i32 noundef %min, i32 noundef %max, i32 noundef %gfp) #0 align 16 !dbg !921 {
entry:
  %retval = alloca i32, align 4
  %ida.addr = alloca ptr, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %xas = alloca %struct.xa_state, align 8
  %bit = alloca i32, align 4
  %flags = alloca i64, align 8
  %bitmap = alloca ptr, align 8
  %alloc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp35 = alloca i64, align 8
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !929, metadata !DIExpression()), !dbg !976
  store i32 %min, ptr %min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !930, metadata !DIExpression()), !dbg !977
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !931, metadata !DIExpression()), !dbg !978
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !932, metadata !DIExpression()), !dbg !979
  call void @llvm.lifetime.start.p0(i64 56, ptr %xas) #14, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %xas, metadata !933, metadata !DIExpression()), !dbg !980
  %xa = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !980
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !980
  %xa1 = getelementptr inbounds %struct.ida, ptr %0, i32 0, i32 0, !dbg !980
  store ptr %xa1, ptr %xa, align 8, !dbg !980
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1, !dbg !980
  %1 = load i32, ptr %min.addr, align 4, !dbg !980
  %conv = zext i32 %1 to i64, !dbg !980
  %div = udiv i64 %conv, 1024, !dbg !980
  store i64 %div, ptr %xa_index, align 8, !dbg !980
  %xa_shift = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2, !dbg !980
  store i8 0, ptr %xa_shift, align 8, !dbg !980
  %xa_sibs = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 3, !dbg !980
  store i8 0, ptr %xa_sibs, align 1, !dbg !980
  %xa_offset = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4, !dbg !980
  store i8 0, ptr %xa_offset, align 2, !dbg !980
  %xa_pad = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 5, !dbg !980
  store i8 0, ptr %xa_pad, align 1, !dbg !980
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6, !dbg !980
  store ptr inttoptr (i64 3 to ptr), ptr %xa_node, align 8, !dbg !980
  %xa_alloc = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7, !dbg !980
  store ptr null, ptr %xa_alloc, align 8, !dbg !980
  %xa_update = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8, !dbg !980
  store ptr null, ptr %xa_update, align 8, !dbg !980
  %xa_lru = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 9, !dbg !980
  store ptr null, ptr %xa_lru, align 8, !dbg !980
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #14, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !952, metadata !DIExpression()), !dbg !982
  %2 = load i32, ptr %min.addr, align 4, !dbg !983
  %conv2 = zext i32 %2 to i64, !dbg !983
  %rem = urem i64 %conv2, 1024, !dbg !984
  %conv3 = trunc i64 %rem to i32, !dbg !983
  store i32 %conv3, ptr %bit, align 4, !dbg !982
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !985
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !953, metadata !DIExpression()), !dbg !986
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitmap) #14, !dbg !987
  call void @llvm.dbg.declare(metadata ptr %bitmap, metadata !954, metadata !DIExpression()), !dbg !988
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc) #14, !dbg !987
  call void @llvm.dbg.declare(metadata ptr %alloc, metadata !962, metadata !DIExpression()), !dbg !989
  store ptr null, ptr %alloc, align 8, !dbg !989
  %3 = load i32, ptr %min.addr, align 4, !dbg !990
  %cmp = icmp slt i32 %3, 0, !dbg !992
  br i1 %cmp, label %if.then, label %if.end, !dbg !993

if.then:                                          ; preds = %entry
  store i32 -28, ptr %retval, align 4, !dbg !994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup195, !dbg !994

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %max.addr, align 4, !dbg !995
  %cmp5 = icmp slt i32 %4, 0, !dbg !997
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !998

if.then7:                                         ; preds = %if.end
  store i32 2147483647, ptr %max.addr, align 4, !dbg !999
  br label %if.end8, !dbg !1000

if.end8:                                          ; preds = %if.then7, %if.end
  br label %retry, !dbg !1001

retry:                                            ; preds = %if.end187, %if.then159, %if.end8
  call void @llvm.dbg.label(metadata !963), !dbg !1002
  br label %do.body, !dbg !1003

do.body:                                          ; preds = %retry
  br label %do.body9, !dbg !1004

do.body9:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !964, metadata !DIExpression()), !dbg !1005
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !968, metadata !DIExpression()), !dbg !1005
  %cmp10 = icmp eq ptr %__dummy, %__dummy2, !dbg !1005
  %conv11 = zext i1 %cmp10 to i32, !dbg !1005
  store i32 1, ptr %tmp, align 4, !dbg !1005
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1006
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1006
  %5 = load i32, ptr %tmp, align 4, !dbg !1005
  %xa12 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1006
  %6 = load ptr, ptr %xa12, align 8, !dbg !1006
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 0, !dbg !1006
  %call = call ptr @spinlock_check(ptr noundef %xa_lock) #15, !dbg !1006
  %call13 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !1006
  store i64 %call13, ptr %flags, align 8, !dbg !1006
  br label %do.cond, !dbg !1006

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1006

do.end:                                           ; preds = %do.cond
  br label %do.cond14, !dbg !1004

do.cond14:                                        ; preds = %do.end
  br label %do.end15, !dbg !1004

do.end15:                                         ; preds = %do.cond14
  br label %next, !dbg !1004

next:                                             ; preds = %if.then92, %do.end15
  call void @llvm.dbg.label(metadata !969), !dbg !1007
  %7 = load i32, ptr %max.addr, align 4, !dbg !1008
  %conv16 = zext i32 %7 to i64, !dbg !1008
  %div17 = udiv i64 %conv16, 1024, !dbg !1009
  %call18 = call ptr @xas_find_marked(ptr noundef %xas, i64 noundef %div17, i32 noundef 0) #15, !dbg !1010
  store ptr %call18, ptr %bitmap, align 8, !dbg !1011
  %xa_index19 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1, !dbg !1012
  %8 = load i64, ptr %xa_index19, align 8, !dbg !1012
  %9 = load i32, ptr %min.addr, align 4, !dbg !1014
  %conv20 = zext i32 %9 to i64, !dbg !1014
  %div21 = udiv i64 %conv20, 1024, !dbg !1015
  %cmp22 = icmp ugt i64 %8, %div21, !dbg !1016
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !1017

if.then24:                                        ; preds = %next
  store i32 0, ptr %bit, align 4, !dbg !1018
  br label %if.end25, !dbg !1019

if.end25:                                         ; preds = %if.then24, %next
  %xa_index26 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1, !dbg !1020
  %10 = load i64, ptr %xa_index26, align 8, !dbg !1020
  %mul = mul i64 %10, 1024, !dbg !1022
  %11 = load i32, ptr %bit, align 4, !dbg !1023
  %conv27 = zext i32 %11 to i64, !dbg !1023
  %add = add i64 %mul, %conv27, !dbg !1024
  %12 = load i32, ptr %max.addr, align 4, !dbg !1025
  %conv28 = zext i32 %12 to i64, !dbg !1025
  %cmp29 = icmp ugt i64 %add, %conv28, !dbg !1026
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !1027

if.then31:                                        ; preds = %if.end25
  br label %nospc, !dbg !1028

if.end32:                                         ; preds = %if.end25
  %13 = load ptr, ptr %bitmap, align 8, !dbg !1029
  %call33 = call zeroext i1 @xa_is_value(ptr noundef %13) #15, !dbg !1030
  br i1 %call33, label %if.then34, label %if.end73, !dbg !1031

if.then34:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp35) #14, !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %tmp35, metadata !970, metadata !DIExpression()), !dbg !1033
  %14 = load ptr, ptr %bitmap, align 8, !dbg !1034
  %call36 = call i64 @xa_to_value(ptr noundef %14) #15, !dbg !1035
  store i64 %call36, ptr %tmp35, align 8, !dbg !1033
  %15 = load i32, ptr %bit, align 4, !dbg !1036
  %cmp37 = icmp ult i32 %15, 63, !dbg !1038
  br i1 %cmp37, label %if.then39, label %if.end58, !dbg !1039

if.then39:                                        ; preds = %if.then34
  %16 = load i32, ptr %bit, align 4, !dbg !1040
  %conv40 = zext i32 %16 to i64, !dbg !1040
  %call41 = call i64 @find_next_zero_bit(ptr noundef %tmp35, i64 noundef 63, i64 noundef %conv40) #15, !dbg !1042
  %conv42 = trunc i64 %call41 to i32, !dbg !1042
  store i32 %conv42, ptr %bit, align 4, !dbg !1043
  %xa_index43 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1, !dbg !1044
  %17 = load i64, ptr %xa_index43, align 8, !dbg !1044
  %mul44 = mul i64 %17, 1024, !dbg !1046
  %18 = load i32, ptr %bit, align 4, !dbg !1047
  %conv45 = zext i32 %18 to i64, !dbg !1047
  %add46 = add i64 %mul44, %conv45, !dbg !1048
  %19 = load i32, ptr %max.addr, align 4, !dbg !1049
  %conv47 = zext i32 %19 to i64, !dbg !1049
  %cmp48 = icmp ugt i64 %add46, %conv47, !dbg !1050
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1051

if.then50:                                        ; preds = %if.then39
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1052

if.end51:                                         ; preds = %if.then39
  %20 = load i32, ptr %bit, align 4, !dbg !1053
  %cmp52 = icmp ult i32 %20, 63, !dbg !1055
  br i1 %cmp52, label %if.then54, label %if.end57, !dbg !1056

if.then54:                                        ; preds = %if.end51
  %21 = load i32, ptr %bit, align 4, !dbg !1057
  %sh_prom = zext i32 %21 to i64, !dbg !1059
  %shl = shl i64 1, %sh_prom, !dbg !1059
  %22 = load i64, ptr %tmp35, align 8, !dbg !1060
  %or = or i64 %22, %shl, !dbg !1060
  store i64 %or, ptr %tmp35, align 8, !dbg !1060
  %23 = load i64, ptr %tmp35, align 8, !dbg !1061
  %call55 = call ptr @xa_mk_value(i64 noundef %23) #15, !dbg !1062
  %call56 = call ptr @xas_store(ptr noundef %xas, ptr noundef %call55) #15, !dbg !1063
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1064

if.end57:                                         ; preds = %if.end51
  br label %if.end58, !dbg !1065

if.end58:                                         ; preds = %if.end57, %if.then34
  %24 = load ptr, ptr %alloc, align 8, !dbg !1066
  store ptr %24, ptr %bitmap, align 8, !dbg !1067
  %25 = load ptr, ptr %bitmap, align 8, !dbg !1068
  %tobool = icmp ne ptr %25, null, !dbg !1068
  br i1 %tobool, label %if.end61, label %if.then59, !dbg !1070

if.then59:                                        ; preds = %if.end58
  %call60 = call noalias ptr @kzalloc(i64 noundef 128, i32 noundef 2048) #16, !dbg !1071
  store ptr %call60, ptr %bitmap, align 8, !dbg !1072
  br label %if.end61, !dbg !1073

if.end61:                                         ; preds = %if.then59, %if.end58
  %26 = load ptr, ptr %bitmap, align 8, !dbg !1074
  %tobool62 = icmp ne ptr %26, null, !dbg !1074
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !1076

if.then63:                                        ; preds = %if.end61
  store i32 10, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1077

if.end64:                                         ; preds = %if.end61
  %27 = load i64, ptr %tmp35, align 8, !dbg !1078
  %28 = load ptr, ptr %bitmap, align 8, !dbg !1079
  %bitmap65 = getelementptr inbounds %struct.ida_bitmap, ptr %28, i32 0, i32 0, !dbg !1080
  %arrayidx = getelementptr [16 x i64], ptr %bitmap65, i64 0, i64 0, !dbg !1079
  store i64 %27, ptr %arrayidx, align 8, !dbg !1081
  %29 = load ptr, ptr %bitmap, align 8, !dbg !1082
  %call66 = call ptr @xas_store(ptr noundef %xas, ptr noundef %29) #15, !dbg !1083
  %call67 = call i32 @xas_error(ptr noundef %xas) #15, !dbg !1084
  %tobool68 = icmp ne i32 %call67, 0, !dbg !1084
  br i1 %tobool68, label %if.then69, label %if.end72, !dbg !1086

if.then69:                                        ; preds = %if.end64
  %30 = load ptr, ptr %bitmap, align 8, !dbg !1087
  %bitmap70 = getelementptr inbounds %struct.ida_bitmap, ptr %30, i32 0, i32 0, !dbg !1089
  %arrayidx71 = getelementptr [16 x i64], ptr %bitmap70, i64 0, i64 0, !dbg !1087
  store i64 0, ptr %arrayidx71, align 8, !dbg !1090
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1091

if.end72:                                         ; preds = %if.end64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1092
  br label %cleanup, !dbg !1092

cleanup:                                          ; preds = %if.then69, %if.then63, %if.then54, %if.then50, %if.end72
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp35) #14, !dbg !1092
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup195 [
    i32 0, label %cleanup.cont
    i32 9, label %out
    i32 10, label %alloc181
    i32 8, label %nospc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end73, !dbg !1093

if.end73:                                         ; preds = %cleanup.cont, %if.end32
  %31 = load ptr, ptr %bitmap, align 8, !dbg !1094
  %tobool74 = icmp ne ptr %31, null, !dbg !1094
  br i1 %tobool74, label %if.then75, label %if.else, !dbg !1096

if.then75:                                        ; preds = %if.end73
  %32 = load ptr, ptr %bitmap, align 8, !dbg !1097
  %bitmap76 = getelementptr inbounds %struct.ida_bitmap, ptr %32, i32 0, i32 0, !dbg !1099
  %arraydecay = getelementptr inbounds [16 x i64], ptr %bitmap76, i64 0, i64 0, !dbg !1097
  %33 = load i32, ptr %bit, align 4, !dbg !1100
  %conv77 = zext i32 %33 to i64, !dbg !1100
  %call78 = call i64 @find_next_zero_bit(ptr noundef %arraydecay, i64 noundef 1024, i64 noundef %conv77) #15, !dbg !1101
  %conv79 = trunc i64 %call78 to i32, !dbg !1101
  store i32 %conv79, ptr %bit, align 4, !dbg !1102
  %xa_index80 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1, !dbg !1103
  %34 = load i64, ptr %xa_index80, align 8, !dbg !1103
  %mul81 = mul i64 %34, 1024, !dbg !1105
  %35 = load i32, ptr %bit, align 4, !dbg !1106
  %conv82 = zext i32 %35 to i64, !dbg !1106
  %add83 = add i64 %mul81, %conv82, !dbg !1107
  %36 = load i32, ptr %max.addr, align 4, !dbg !1108
  %conv84 = zext i32 %36 to i64, !dbg !1108
  %cmp85 = icmp ugt i64 %add83, %conv84, !dbg !1109
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !1110

if.then87:                                        ; preds = %if.then75
  br label %nospc, !dbg !1111

if.end88:                                         ; preds = %if.then75
  %37 = load i32, ptr %bit, align 4, !dbg !1112
  %conv89 = zext i32 %37 to i64, !dbg !1112
  %cmp90 = icmp eq i64 %conv89, 1024, !dbg !1114
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !1115

if.then92:                                        ; preds = %if.end88
  br label %next, !dbg !1116

if.end93:                                         ; preds = %if.end88
  %38 = load i32, ptr %bit, align 4, !dbg !1117
  %39 = call i1 @llvm.is.constant.i32(i32 %38), !dbg !1117
  br i1 %39, label %land.lhs.true, label %cond.false, !dbg !1117

land.lhs.true:                                    ; preds = %if.end93
  %40 = load ptr, ptr %bitmap, align 8, !dbg !1117
  %bitmap94 = getelementptr inbounds %struct.ida_bitmap, ptr %40, i32 0, i32 0, !dbg !1117
  %arraydecay95 = getelementptr inbounds [16 x i64], ptr %bitmap94, i64 0, i64 0, !dbg !1117
  %41 = ptrtoint ptr %arraydecay95 to i64, !dbg !1117
  %cmp96 = icmp ne i64 %41, 0, !dbg !1117
  %conv97 = zext i1 %cmp96 to i32, !dbg !1117
  %42 = call i1 @llvm.is.constant.i32(i32 %conv97), !dbg !1117
  br i1 %42, label %land.lhs.true98, label %cond.false, !dbg !1117

land.lhs.true98:                                  ; preds = %land.lhs.true
  %43 = load ptr, ptr %bitmap, align 8, !dbg !1117
  %bitmap99 = getelementptr inbounds %struct.ida_bitmap, ptr %43, i32 0, i32 0, !dbg !1117
  %arraydecay100 = getelementptr inbounds [16 x i64], ptr %bitmap99, i64 0, i64 0, !dbg !1117
  %44 = ptrtoint ptr %arraydecay100 to i64, !dbg !1117
  %cmp101 = icmp ne i64 %44, 0, !dbg !1117
  br i1 %cmp101, label %land.lhs.true103, label %cond.false, !dbg !1117

land.lhs.true103:                                 ; preds = %land.lhs.true98
  %45 = load ptr, ptr %bitmap, align 8, !dbg !1117
  %bitmap104 = getelementptr inbounds %struct.ida_bitmap, ptr %45, i32 0, i32 0, !dbg !1117
  %arraydecay105 = getelementptr inbounds [16 x i64], ptr %bitmap104, i64 0, i64 0, !dbg !1117
  %46 = load i64, ptr %arraydecay105, align 8, !dbg !1117
  %47 = call i1 @llvm.is.constant.i64(i64 %46), !dbg !1117
  br i1 %47, label %cond.true, label %cond.false, !dbg !1117

cond.true:                                        ; preds = %land.lhs.true103
  %48 = load i32, ptr %bit, align 4, !dbg !1117
  %conv106 = zext i32 %48 to i64, !dbg !1117
  %49 = load ptr, ptr %bitmap, align 8, !dbg !1117
  %bitmap107 = getelementptr inbounds %struct.ida_bitmap, ptr %49, i32 0, i32 0, !dbg !1117
  %arraydecay108 = getelementptr inbounds [16 x i64], ptr %bitmap107, i64 0, i64 0, !dbg !1117
  call void @generic___set_bit(i64 noundef %conv106, ptr noundef %arraydecay108) #15, !dbg !1117
  br label %cond.end, !dbg !1117

cond.false:                                       ; preds = %land.lhs.true103, %land.lhs.true98, %land.lhs.true, %if.end93
  %50 = load i32, ptr %bit, align 4, !dbg !1117
  %conv109 = zext i32 %50 to i64, !dbg !1117
  %51 = load ptr, ptr %bitmap, align 8, !dbg !1117
  %bitmap110 = getelementptr inbounds %struct.ida_bitmap, ptr %51, i32 0, i32 0, !dbg !1117
  %arraydecay111 = getelementptr inbounds [16 x i64], ptr %bitmap110, i64 0, i64 0, !dbg !1117
  call void @___set_bit(i64 noundef %conv109, ptr noundef %arraydecay111) #15, !dbg !1117
  br label %cond.end, !dbg !1117

cond.end:                                         ; preds = %cond.false, %cond.true
  %52 = load ptr, ptr %bitmap, align 8, !dbg !1118
  %bitmap112 = getelementptr inbounds %struct.ida_bitmap, ptr %52, i32 0, i32 0, !dbg !1120
  %arraydecay113 = getelementptr inbounds [16 x i64], ptr %bitmap112, i64 0, i64 0, !dbg !1118
  %call114 = call zeroext i1 @bitmap_full(ptr noundef %arraydecay113, i32 noundef 1024) #15, !dbg !1121
  br i1 %call114, label %if.then115, label %if.end116, !dbg !1122

if.then115:                                       ; preds = %cond.end
  call void @xas_clear_mark(ptr noundef %xas, i32 noundef 0) #15, !dbg !1123
  br label %if.end116, !dbg !1123

if.end116:                                        ; preds = %if.then115, %cond.end
  br label %if.end155, !dbg !1124

if.else:                                          ; preds = %if.end73
  %53 = load i32, ptr %bit, align 4, !dbg !1125
  %cmp117 = icmp ult i32 %53, 63, !dbg !1128
  br i1 %cmp117, label %if.then119, label %if.else123, !dbg !1129

if.then119:                                       ; preds = %if.else
  %54 = load i32, ptr %bit, align 4, !dbg !1130
  %sh_prom120 = zext i32 %54 to i64, !dbg !1132
  %shl121 = shl i64 1, %sh_prom120, !dbg !1132
  %call122 = call ptr @xa_mk_value(i64 noundef %shl121) #15, !dbg !1133
  store ptr %call122, ptr %bitmap, align 8, !dbg !1134
  br label %if.end153, !dbg !1135

if.else123:                                       ; preds = %if.else
  %55 = load ptr, ptr %alloc, align 8, !dbg !1136
  store ptr %55, ptr %bitmap, align 8, !dbg !1138
  %56 = load ptr, ptr %bitmap, align 8, !dbg !1139
  %tobool124 = icmp ne ptr %56, null, !dbg !1139
  br i1 %tobool124, label %if.end127, label %if.then125, !dbg !1141

if.then125:                                       ; preds = %if.else123
  %call126 = call noalias ptr @kzalloc(i64 noundef 128, i32 noundef 2048) #16, !dbg !1142
  store ptr %call126, ptr %bitmap, align 8, !dbg !1143
  br label %if.end127, !dbg !1144

if.end127:                                        ; preds = %if.then125, %if.else123
  %57 = load ptr, ptr %bitmap, align 8, !dbg !1145
  %tobool128 = icmp ne ptr %57, null, !dbg !1145
  br i1 %tobool128, label %if.end130, label %if.then129, !dbg !1147

if.then129:                                       ; preds = %if.end127
  br label %alloc181, !dbg !1148

if.end130:                                        ; preds = %if.end127
  %58 = load i32, ptr %bit, align 4, !dbg !1149
  %59 = call i1 @llvm.is.constant.i32(i32 %58), !dbg !1149
  br i1 %59, label %land.lhs.true131, label %cond.false148, !dbg !1149

land.lhs.true131:                                 ; preds = %if.end130
  %60 = load ptr, ptr %bitmap, align 8, !dbg !1149
  %bitmap132 = getelementptr inbounds %struct.ida_bitmap, ptr %60, i32 0, i32 0, !dbg !1149
  %arraydecay133 = getelementptr inbounds [16 x i64], ptr %bitmap132, i64 0, i64 0, !dbg !1149
  %61 = ptrtoint ptr %arraydecay133 to i64, !dbg !1149
  %cmp134 = icmp ne i64 %61, 0, !dbg !1149
  %conv135 = zext i1 %cmp134 to i32, !dbg !1149
  %62 = call i1 @llvm.is.constant.i32(i32 %conv135), !dbg !1149
  br i1 %62, label %land.lhs.true136, label %cond.false148, !dbg !1149

land.lhs.true136:                                 ; preds = %land.lhs.true131
  %63 = load ptr, ptr %bitmap, align 8, !dbg !1149
  %bitmap137 = getelementptr inbounds %struct.ida_bitmap, ptr %63, i32 0, i32 0, !dbg !1149
  %arraydecay138 = getelementptr inbounds [16 x i64], ptr %bitmap137, i64 0, i64 0, !dbg !1149
  %64 = ptrtoint ptr %arraydecay138 to i64, !dbg !1149
  %cmp139 = icmp ne i64 %64, 0, !dbg !1149
  br i1 %cmp139, label %land.lhs.true141, label %cond.false148, !dbg !1149

land.lhs.true141:                                 ; preds = %land.lhs.true136
  %65 = load ptr, ptr %bitmap, align 8, !dbg !1149
  %bitmap142 = getelementptr inbounds %struct.ida_bitmap, ptr %65, i32 0, i32 0, !dbg !1149
  %arraydecay143 = getelementptr inbounds [16 x i64], ptr %bitmap142, i64 0, i64 0, !dbg !1149
  %66 = load i64, ptr %arraydecay143, align 8, !dbg !1149
  %67 = call i1 @llvm.is.constant.i64(i64 %66), !dbg !1149
  br i1 %67, label %cond.true144, label %cond.false148, !dbg !1149

cond.true144:                                     ; preds = %land.lhs.true141
  %68 = load i32, ptr %bit, align 4, !dbg !1149
  %conv145 = zext i32 %68 to i64, !dbg !1149
  %69 = load ptr, ptr %bitmap, align 8, !dbg !1149
  %bitmap146 = getelementptr inbounds %struct.ida_bitmap, ptr %69, i32 0, i32 0, !dbg !1149
  %arraydecay147 = getelementptr inbounds [16 x i64], ptr %bitmap146, i64 0, i64 0, !dbg !1149
  call void @generic___set_bit(i64 noundef %conv145, ptr noundef %arraydecay147) #15, !dbg !1149
  br label %cond.end152, !dbg !1149

cond.false148:                                    ; preds = %land.lhs.true141, %land.lhs.true136, %land.lhs.true131, %if.end130
  %70 = load i32, ptr %bit, align 4, !dbg !1149
  %conv149 = zext i32 %70 to i64, !dbg !1149
  %71 = load ptr, ptr %bitmap, align 8, !dbg !1149
  %bitmap150 = getelementptr inbounds %struct.ida_bitmap, ptr %71, i32 0, i32 0, !dbg !1149
  %arraydecay151 = getelementptr inbounds [16 x i64], ptr %bitmap150, i64 0, i64 0, !dbg !1149
  call void @___set_bit(i64 noundef %conv149, ptr noundef %arraydecay151) #15, !dbg !1149
  br label %cond.end152, !dbg !1149

cond.end152:                                      ; preds = %cond.false148, %cond.true144
  br label %if.end153

if.end153:                                        ; preds = %cond.end152, %if.then119
  %72 = load ptr, ptr %bitmap, align 8, !dbg !1150
  %call154 = call ptr @xas_store(ptr noundef %xas, ptr noundef %72) #15, !dbg !1151
  br label %if.end155

if.end155:                                        ; preds = %if.end153, %if.end116
  br label %out, !dbg !1094

out:                                              ; preds = %if.end155, %cleanup
  call void @llvm.dbg.label(metadata !973), !dbg !1152
  %xa156 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1153
  %73 = load ptr, ptr %xa156, align 8, !dbg !1153
  %xa_lock157 = getelementptr inbounds %struct.xarray, ptr %73, i32 0, i32 0, !dbg !1153
  %74 = load i64, ptr %flags, align 8, !dbg !1153
  call void @spin_unlock_irqrestore(ptr noundef %xa_lock157, i64 noundef %74) #15, !dbg !1153
  %75 = load i32, ptr %gfp.addr, align 4, !dbg !1154
  %call158 = call zeroext i1 @xas_nomem(ptr noundef %xas, i32 noundef %75) #15, !dbg !1156
  br i1 %call158, label %if.then159, label %if.end166, !dbg !1157

if.then159:                                       ; preds = %out
  %76 = load i32, ptr %min.addr, align 4, !dbg !1158
  %conv160 = zext i32 %76 to i64, !dbg !1158
  %div161 = udiv i64 %conv160, 1024, !dbg !1160
  %xa_index162 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1, !dbg !1161
  store i64 %div161, ptr %xa_index162, align 8, !dbg !1162
  %77 = load i32, ptr %min.addr, align 4, !dbg !1163
  %conv163 = zext i32 %77 to i64, !dbg !1163
  %rem164 = urem i64 %conv163, 1024, !dbg !1164
  %conv165 = trunc i64 %rem164 to i32, !dbg !1163
  store i32 %conv165, ptr %bit, align 4, !dbg !1165
  br label %retry, !dbg !1166

if.end166:                                        ; preds = %out
  %78 = load ptr, ptr %bitmap, align 8, !dbg !1167
  %79 = load ptr, ptr %alloc, align 8, !dbg !1169
  %cmp167 = icmp ne ptr %78, %79, !dbg !1170
  br i1 %cmp167, label %if.then169, label %if.end170, !dbg !1171

if.then169:                                       ; preds = %if.end166
  %80 = load ptr, ptr %alloc, align 8, !dbg !1172
  call void @kfree(ptr noundef %80) #15, !dbg !1173
  br label %if.end170, !dbg !1173

if.end170:                                        ; preds = %if.then169, %if.end166
  %call171 = call i32 @xas_error(ptr noundef %xas) #15, !dbg !1174
  %tobool172 = icmp ne i32 %call171, 0, !dbg !1174
  br i1 %tobool172, label %if.then173, label %if.end175, !dbg !1176

if.then173:                                       ; preds = %if.end170
  %call174 = call i32 @xas_error(ptr noundef %xas) #15, !dbg !1177
  store i32 %call174, ptr %retval, align 4, !dbg !1178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup195, !dbg !1178

if.end175:                                        ; preds = %if.end170
  %xa_index176 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1, !dbg !1179
  %81 = load i64, ptr %xa_index176, align 8, !dbg !1179
  %mul177 = mul i64 %81, 1024, !dbg !1180
  %82 = load i32, ptr %bit, align 4, !dbg !1181
  %conv178 = zext i32 %82 to i64, !dbg !1181
  %add179 = add i64 %mul177, %conv178, !dbg !1182
  %conv180 = trunc i64 %add179 to i32, !dbg !1183
  store i32 %conv180, ptr %retval, align 4, !dbg !1184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup195, !dbg !1184

alloc181:                                         ; preds = %cleanup, %if.then129
  call void @llvm.dbg.label(metadata !974), !dbg !1185
  %xa182 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1186
  %83 = load ptr, ptr %xa182, align 8, !dbg !1186
  %xa_lock183 = getelementptr inbounds %struct.xarray, ptr %83, i32 0, i32 0, !dbg !1186
  %84 = load i64, ptr %flags, align 8, !dbg !1186
  call void @spin_unlock_irqrestore(ptr noundef %xa_lock183, i64 noundef %84) #15, !dbg !1186
  %85 = load i32, ptr %gfp.addr, align 4, !dbg !1187
  %call184 = call noalias ptr @kzalloc(i64 noundef 128, i32 noundef %85) #16, !dbg !1188
  store ptr %call184, ptr %alloc, align 8, !dbg !1189
  %86 = load ptr, ptr %alloc, align 8, !dbg !1190
  %tobool185 = icmp ne ptr %86, null, !dbg !1190
  br i1 %tobool185, label %if.end187, label %if.then186, !dbg !1192

if.then186:                                       ; preds = %alloc181
  store i32 -12, ptr %retval, align 4, !dbg !1193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup195, !dbg !1193

if.end187:                                        ; preds = %alloc181
  %87 = load i32, ptr %min.addr, align 4, !dbg !1194
  %conv188 = zext i32 %87 to i64, !dbg !1194
  %div189 = udiv i64 %conv188, 1024, !dbg !1195
  call void @xas_set(ptr noundef %xas, i64 noundef %div189) #15, !dbg !1196
  %88 = load i32, ptr %min.addr, align 4, !dbg !1197
  %conv190 = zext i32 %88 to i64, !dbg !1197
  %rem191 = urem i64 %conv190, 1024, !dbg !1198
  %conv192 = trunc i64 %rem191 to i32, !dbg !1197
  store i32 %conv192, ptr %bit, align 4, !dbg !1199
  br label %retry, !dbg !1200

nospc:                                            ; preds = %cleanup, %if.then87, %if.then31
  call void @llvm.dbg.label(metadata !975), !dbg !1201
  %xa193 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1202
  %89 = load ptr, ptr %xa193, align 8, !dbg !1202
  %xa_lock194 = getelementptr inbounds %struct.xarray, ptr %89, i32 0, i32 0, !dbg !1202
  %90 = load i64, ptr %flags, align 8, !dbg !1202
  call void @spin_unlock_irqrestore(ptr noundef %xa_lock194, i64 noundef %90) #15, !dbg !1202
  %91 = load ptr, ptr %alloc, align 8, !dbg !1203
  call void @kfree(ptr noundef %91) #15, !dbg !1204
  store i32 -28, ptr %retval, align 4, !dbg !1205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup195, !dbg !1205

cleanup195:                                       ; preds = %nospc, %if.then186, %if.end175, %if.then173, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc) #14, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitmap) #14, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #14, !dbg !1206
  call void @llvm.lifetime.end.p0(i64 56, ptr %xas) #14, !dbg !1206
  %92 = load i32, ptr %retval, align 4, !dbg !1206
  ret i32 %92, !dbg !1206
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1207 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !1213 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1219, metadata !DIExpression()), !dbg !1220
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1221
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1222
  ret ptr %1, !dbg !1223
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1224 dso_local ptr @xas_find_marked(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_value(ptr noundef %entry1) #6 align 16 !dbg !1228 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1230, metadata !DIExpression()), !dbg !1231
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1232
  %1 = ptrtoint ptr %0 to i64, !dbg !1233
  %and = and i64 %1, 1, !dbg !1234
  %tobool = icmp ne i64 %and, 0, !dbg !1233
  ret i1 %tobool, !dbg !1235
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xa_to_value(ptr noundef %entry1) #6 align 16 !dbg !1236 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1240, metadata !DIExpression()), !dbg !1241
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1242
  %1 = ptrtoint ptr %0 to i64, !dbg !1243
  %shr = lshr i64 %1, 1, !dbg !1244
  ret i64 %shr, !dbg !1245
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_zero_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !1246 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1251, metadata !DIExpression()), !dbg !1257
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1252, metadata !DIExpression()), !dbg !1258
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1253, metadata !DIExpression()), !dbg !1259
  %0 = load i64, ptr %size.addr, align 8, !dbg !1260
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1260
  br i1 %1, label %land.lhs.true, label %if.end17, !dbg !1260

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1260
  %cmp = icmp ule i64 %2, 64, !dbg !1260
  br i1 %cmp, label %land.lhs.true1, label %if.end17, !dbg !1260

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1260
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1260
  br i1 %cmp2, label %if.then, label %if.end17, !dbg !1261

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !1262
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1254, metadata !DIExpression()), !dbg !1263
  %4 = load i64, ptr %offset.addr, align 8, !dbg !1264
  %5 = load i64, ptr %size.addr, align 8, !dbg !1264
  %cmp3 = icmp uge i64 %4, %5, !dbg !1264
  %lnot = xor i1 %cmp3, true, !dbg !1264
  %lnot4 = xor i1 %lnot, true, !dbg !1264
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1264
  %conv = sext i32 %lnot.ext to i64, !dbg !1264
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1264
  %tobool = icmp ne i64 %expval, 0, !dbg !1264
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1266

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1267
  store i64 %6, ptr %retval, align 8, !dbg !1268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1268

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1269
  %8 = load i64, ptr %7, align 8, !dbg !1270
  %9 = load i64, ptr %offset.addr, align 8, !dbg !1271
  %shl = shl i64 1, %9, !dbg !1271
  %sub = sub i64 -1, %shl, !dbg !1271
  %add = add i64 %sub, 1, !dbg !1271
  %10 = load i64, ptr %size.addr, align 8, !dbg !1271
  %sub6 = sub i64 %10, 1, !dbg !1271
  %sub7 = sub i64 63, %sub6, !dbg !1271
  %shr = lshr i64 -1, %sub7, !dbg !1271
  %and = and i64 %add, %shr, !dbg !1271
  %add8 = add i64 0, %and, !dbg !1271
  %not = xor i64 %add8, -1, !dbg !1272
  %or = or i64 %8, %not, !dbg !1273
  store i64 %or, ptr %val, align 8, !dbg !1274
  %11 = load i64, ptr %val, align 8, !dbg !1275
  %cmp9 = icmp eq i64 %11, -1, !dbg !1276
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !1275

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %size.addr, align 8, !dbg !1277
  br label %cond.end15, !dbg !1275

cond.false:                                       ; preds = %if.end
  %13 = load i64, ptr %val, align 8, !dbg !1278
  %14 = call i1 @llvm.is.constant.i64(i64 %13), !dbg !1278
  br i1 %14, label %cond.true11, label %cond.false14, !dbg !1278

cond.true11:                                      ; preds = %cond.false
  %15 = load i64, ptr %val, align 8, !dbg !1278
  %not12 = xor i64 %15, -1, !dbg !1278
  %16 = call i64 @llvm.cttz.i64(i64 %not12, i1 true), !dbg !1278
  %cast = trunc i64 %16 to i32, !dbg !1278
  %conv13 = sext i32 %cast to i64, !dbg !1278
  br label %cond.end, !dbg !1278

cond.false14:                                     ; preds = %cond.false
  %17 = load i64, ptr %val, align 8, !dbg !1278
  %call = call i64 @variable_ffz(i64 noundef %17) #15, !dbg !1278
  br label %cond.end, !dbg !1278

cond.end:                                         ; preds = %cond.false14, %cond.true11
  %cond = phi i64 [ %conv13, %cond.true11 ], [ %call, %cond.false14 ], !dbg !1278
  br label %cond.end15, !dbg !1275

cond.end15:                                       ; preds = %cond.end, %cond.true
  %cond16 = phi i64 [ %12, %cond.true ], [ %cond, %cond.end ], !dbg !1275
  store i64 %cond16, ptr %retval, align 8, !dbg !1279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

cleanup:                                          ; preds = %cond.end15, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !1280
  br label %return

if.end17:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !1281
  %19 = load i64, ptr %size.addr, align 8, !dbg !1282
  %20 = load i64, ptr %offset.addr, align 8, !dbg !1283
  %call18 = call i64 @_find_next_zero_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #15, !dbg !1284
  store i64 %call18, ptr %retval, align 8, !dbg !1285
  br label %return, !dbg !1285

return:                                           ; preds = %if.end17, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !1286
  ret i64 %21, !dbg !1286
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1287 dso_local ptr @xas_store(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @xa_mk_value(i64 noundef %v) #6 align 16 !dbg !1290 {
entry:
  %v.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1294, metadata !DIExpression()), !dbg !1300
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1295, metadata !DIExpression()), !dbg !1301
  %0 = load i64, ptr %v.addr, align 8, !dbg !1301
  %cmp = icmp slt i64 %0, 0, !dbg !1301
  %lnot = xor i1 %cmp, true, !dbg !1301
  %lnot1 = xor i1 %lnot, true, !dbg !1301
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1301
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1301
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1302
  %tobool = icmp ne i32 %1, 0, !dbg !1302
  %lnot2 = xor i1 %tobool, true, !dbg !1302
  %lnot4 = xor i1 %lnot2, true, !dbg !1302
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !1302
  %conv = sext i32 %lnot.ext5 to i64, !dbg !1302
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1302
  %tobool6 = icmp ne i64 %expval, 0, !dbg !1302
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1301

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1302

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1297, metadata !DIExpression()), !dbg !1303
  store i32 2305, ptr %__flags, align 4, !dbg !1303
  br label %do.body7, !dbg !1303

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !1304

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1304

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !1303

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !1306
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 56, i32 %2, i64 12) #14, !dbg !1306, !srcloc !1308
  br label %do.cond9, !dbg !1306

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1306

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !1303

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !1309

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1309

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !1302
  br label %do.cond14, !dbg !1303

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !1303

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !1303

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1301
  %tobool16 = icmp ne i32 %3, 0, !dbg !1301
  %lnot17 = xor i1 %tobool16, true, !dbg !1301
  %lnot19 = xor i1 %lnot17, true, !dbg !1301
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !1301
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !1301
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !1301
  store i64 %expval22, ptr %tmp, align 8, !dbg !1302
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1311
  %4 = load i64, ptr %tmp, align 8, !dbg !1301
  %5 = load i64, ptr %v.addr, align 8, !dbg !1312
  %shl = shl i64 %5, 1, !dbg !1313
  %or = or i64 %shl, 1, !dbg !1314
  %6 = inttoptr i64 %or to ptr, !dbg !1315
  ret ptr %6, !dbg !1316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1317 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1325, metadata !DIExpression()), !dbg !1327
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1326, metadata !DIExpression()), !dbg !1328
  %0 = load i64, ptr %size.addr, align 8, !dbg !1329
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1330
  %or = or i32 %1, 256, !dbg !1331
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1332
  ret ptr %call, !dbg !1333
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xas_error(ptr noundef %xas) #6 align 16 !dbg !1334 {
entry:
  %xas.addr = alloca ptr, align 8
  store ptr %xas, ptr %xas.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xas.addr, metadata !1340, metadata !DIExpression()), !dbg !1341
  %0 = load ptr, ptr %xas.addr, align 8, !dbg !1342
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6, !dbg !1343
  %1 = load ptr, ptr %xa_node, align 8, !dbg !1343
  %call = call i32 @xa_err(ptr noundef %1) #15, !dbg !1344
  ret i32 %call, !dbg !1345
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1346 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1353, metadata !DIExpression()), !dbg !1357
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1354, metadata !DIExpression()), !dbg !1358
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1355, metadata !DIExpression()), !dbg !1360
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1361
  %rem = urem i64 %0, 64, !dbg !1361
  %shl = shl i64 1, %rem, !dbg !1361
  store i64 %shl, ptr %mask, align 8, !dbg !1360
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1356, metadata !DIExpression()), !dbg !1363
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1364
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1365
  %div = udiv i64 %2, 64, !dbg !1365
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !1366
  store ptr %add.ptr, ptr %p, align 8, !dbg !1363
  %3 = load i64, ptr %mask, align 8, !dbg !1367
  %4 = load ptr, ptr %p, align 8, !dbg !1368
  %5 = load i64, ptr %4, align 8, !dbg !1369
  %or = or i64 %5, %3, !dbg !1369
  store i64 %or, ptr %4, align 8, !dbg !1369
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !1370
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !1370
  ret void, !dbg !1370
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1371 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1374, metadata !DIExpression()), !dbg !1376
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1375, metadata !DIExpression()), !dbg !1377
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1378
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1379
  %div = udiv i64 %1, 64, !dbg !1379
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1380
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !1381
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1382
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1383
  call void @arch___set_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !1384
  ret void, !dbg !1385
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_full(ptr noundef %src, i32 noundef %nbits) #6 align 16 !dbg !1386 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1391, metadata !DIExpression()), !dbg !1393
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1392, metadata !DIExpression()), !dbg !1394
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1395
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1395
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1395

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1395
  %cmp = icmp ule i32 %2, 64, !dbg !1395
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1395

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1395
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1395
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1397

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1398
  %5 = load i64, ptr %4, align 8, !dbg !1399
  %not = xor i64 %5, -1, !dbg !1400
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !1401
  %sub = sub i32 0, %6, !dbg !1401
  %and = and i32 %sub, 63, !dbg !1401
  %sh_prom = zext i32 %and to i64, !dbg !1401
  %shr = lshr i64 -1, %sh_prom, !dbg !1401
  %and3 = and i64 %not, %shr, !dbg !1402
  %tobool = icmp ne i64 %and3, 0, !dbg !1403
  %lnot = xor i1 %tobool, true, !dbg !1403
  store i1 %lnot, ptr %retval, align 1, !dbg !1404
  br label %return, !dbg !1404

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1405
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1406
  %conv = zext i32 %8 to i64, !dbg !1406
  %call = call i64 @find_first_zero_bit(ptr noundef %7, i64 noundef %conv) #15, !dbg !1407
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !1408
  %conv4 = zext i32 %9 to i64, !dbg !1408
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !1409
  store i1 %cmp5, ptr %retval, align 1, !dbg !1410
  br label %return, !dbg !1410

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !1411
  ret i1 %10, !dbg !1411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1412 dso_local void @xas_clear_mark(ptr noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !1415 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1419, metadata !DIExpression()), !dbg !1425
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1420, metadata !DIExpression()), !dbg !1426
  br label %do.body, !dbg !1427

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1421, metadata !DIExpression()), !dbg !1428
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1428
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1424, metadata !DIExpression()), !dbg !1428
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1428
  %conv = zext i1 %cmp to i32, !dbg !1428
  store i32 1, ptr %tmp, align 4, !dbg !1428
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1429
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1429
  %0 = load i32, ptr %tmp, align 4, !dbg !1428
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !1429
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !1429
  %3 = load i64, ptr %flags.addr, align 8, !dbg !1429
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #15, !dbg !1429
  br label %do.end, !dbg !1429

do.end:                                           ; preds = %do.body
  ret void, !dbg !1430
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1431 dso_local zeroext i1 @xas_nomem(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1434 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xas_set(ptr noundef %xas, i64 noundef %index) #6 align 16 !dbg !1437 {
entry:
  %xas.addr = alloca ptr, align 8
  %index.addr = alloca i64, align 8
  store ptr %xas, ptr %xas.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xas.addr, metadata !1441, metadata !DIExpression()), !dbg !1443
  store i64 %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1442, metadata !DIExpression()), !dbg !1444
  %0 = load i64, ptr %index.addr, align 8, !dbg !1445
  %1 = load ptr, ptr %xas.addr, align 8, !dbg !1446
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %1, i32 0, i32 1, !dbg !1447
  store i64 %0, ptr %xa_index, align 8, !dbg !1448
  %2 = load ptr, ptr %xas.addr, align 8, !dbg !1449
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 6, !dbg !1450
  store ptr inttoptr (i64 3 to ptr), ptr %xa_node, align 8, !dbg !1451
  ret void, !dbg !1452
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ida_free(ptr noundef %ida, i32 noundef %id) #0 align 16 !dbg !1453 {
entry:
  %ida.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %xas = alloca %struct.xa_state, align 8
  %bit = alloca i32, align 4
  %bitmap = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %v = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp113 = alloca i64, align 8
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !1457, metadata !DIExpression()), !dbg !1482
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1458, metadata !DIExpression()), !dbg !1483
  call void @llvm.lifetime.start.p0(i64 56, ptr %xas) #14, !dbg !1484
  call void @llvm.dbg.declare(metadata ptr %xas, metadata !1459, metadata !DIExpression()), !dbg !1484
  %xa = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1484
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !1484
  %xa1 = getelementptr inbounds %struct.ida, ptr %0, i32 0, i32 0, !dbg !1484
  store ptr %xa1, ptr %xa, align 8, !dbg !1484
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1, !dbg !1484
  %1 = load i32, ptr %id.addr, align 4, !dbg !1484
  %conv = zext i32 %1 to i64, !dbg !1484
  %div = udiv i64 %conv, 1024, !dbg !1484
  store i64 %div, ptr %xa_index, align 8, !dbg !1484
  %xa_shift = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2, !dbg !1484
  store i8 0, ptr %xa_shift, align 8, !dbg !1484
  %xa_sibs = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 3, !dbg !1484
  store i8 0, ptr %xa_sibs, align 1, !dbg !1484
  %xa_offset = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4, !dbg !1484
  store i8 0, ptr %xa_offset, align 2, !dbg !1484
  %xa_pad = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 5, !dbg !1484
  store i8 0, ptr %xa_pad, align 1, !dbg !1484
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6, !dbg !1484
  store ptr inttoptr (i64 3 to ptr), ptr %xa_node, align 8, !dbg !1484
  %xa_alloc = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7, !dbg !1484
  store ptr null, ptr %xa_alloc, align 8, !dbg !1484
  %xa_update = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8, !dbg !1484
  store ptr null, ptr %xa_update, align 8, !dbg !1484
  %xa_lru = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 9, !dbg !1484
  store ptr null, ptr %xa_lru, align 8, !dbg !1484
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #14, !dbg !1485
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !1460, metadata !DIExpression()), !dbg !1486
  %2 = load i32, ptr %id.addr, align 4, !dbg !1487
  %conv2 = zext i32 %2 to i64, !dbg !1487
  %rem = urem i64 %conv2, 1024, !dbg !1488
  %conv3 = trunc i64 %rem to i32, !dbg !1487
  store i32 %conv3, ptr %bit, align 4, !dbg !1486
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitmap) #14, !dbg !1489
  call void @llvm.dbg.declare(metadata ptr %bitmap, metadata !1461, metadata !DIExpression()), !dbg !1490
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1462, metadata !DIExpression()), !dbg !1492
  %3 = load i32, ptr %id.addr, align 4, !dbg !1493
  %cmp = icmp slt i32 %3, 0, !dbg !1495
  br i1 %cmp, label %if.then, label %if.end, !dbg !1496

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup121, !dbg !1497

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1498

do.body:                                          ; preds = %if.end
  br label %do.body5, !dbg !1499

do.body5:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1463, metadata !DIExpression()), !dbg !1500
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1467, metadata !DIExpression()), !dbg !1500
  %cmp6 = icmp eq ptr %__dummy, %__dummy2, !dbg !1500
  %conv7 = zext i1 %cmp6 to i32, !dbg !1500
  store i32 1, ptr %tmp, align 4, !dbg !1500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1501
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1501
  %4 = load i32, ptr %tmp, align 4, !dbg !1500
  %xa8 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1501
  %5 = load ptr, ptr %xa8, align 8, !dbg !1501
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %5, i32 0, i32 0, !dbg !1501
  %call = call ptr @spinlock_check(ptr noundef %xa_lock) #15, !dbg !1501
  %call9 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !1501
  store i64 %call9, ptr %flags, align 8, !dbg !1501
  br label %do.cond, !dbg !1501

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !1501

do.end:                                           ; preds = %do.cond
  br label %do.cond10, !dbg !1499

do.cond10:                                        ; preds = %do.end
  br label %do.end11, !dbg !1499

do.end11:                                         ; preds = %do.cond10
  %call12 = call ptr @xas_load(ptr noundef %xas) #15, !dbg !1502
  store ptr %call12, ptr %bitmap, align 8, !dbg !1503
  %6 = load ptr, ptr %bitmap, align 8, !dbg !1504
  %call13 = call zeroext i1 @xa_is_value(ptr noundef %6) #15, !dbg !1505
  br i1 %call13, label %if.then14, label %if.else, !dbg !1506

if.then14:                                        ; preds = %do.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #14, !dbg !1507
  call void @llvm.dbg.declare(metadata ptr %v, metadata !1468, metadata !DIExpression()), !dbg !1508
  %7 = load ptr, ptr %bitmap, align 8, !dbg !1509
  %call15 = call i64 @xa_to_value(ptr noundef %7) #15, !dbg !1510
  store i64 %call15, ptr %v, align 8, !dbg !1508
  %8 = load i32, ptr %bit, align 4, !dbg !1511
  %cmp16 = icmp uge i32 %8, 63, !dbg !1513
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1514

if.then18:                                        ; preds = %if.then14
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1515

if.end19:                                         ; preds = %if.then14
  %9 = load i64, ptr %v, align 8, !dbg !1516
  %10 = load i32, ptr %bit, align 4, !dbg !1518
  %sh_prom = zext i32 %10 to i64, !dbg !1519
  %shl = shl i64 1, %sh_prom, !dbg !1519
  %and = and i64 %9, %shl, !dbg !1520
  %tobool = icmp ne i64 %and, 0, !dbg !1520
  br i1 %tobool, label %if.end21, label %if.then20, !dbg !1521

if.then20:                                        ; preds = %if.end19
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1522

if.end21:                                         ; preds = %if.end19
  %11 = load i32, ptr %bit, align 4, !dbg !1523
  %sh_prom22 = zext i32 %11 to i64, !dbg !1524
  %shl23 = shl i64 1, %sh_prom22, !dbg !1524
  %not = xor i64 %shl23, -1, !dbg !1525
  %12 = load i64, ptr %v, align 8, !dbg !1526
  %and24 = and i64 %12, %not, !dbg !1526
  store i64 %and24, ptr %v, align 8, !dbg !1526
  %13 = load i64, ptr %v, align 8, !dbg !1527
  %tobool25 = icmp ne i64 %13, 0, !dbg !1527
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !1529

if.then26:                                        ; preds = %if.end21
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1530

if.end27:                                         ; preds = %if.end21
  %14 = load i64, ptr %v, align 8, !dbg !1531
  %call28 = call ptr @xa_mk_value(i64 noundef %14) #15, !dbg !1532
  %call29 = call ptr @xas_store(ptr noundef %xas, ptr noundef %call28) #15, !dbg !1533
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1534
  br label %cleanup, !dbg !1534

cleanup:                                          ; preds = %if.then26, %if.then20, %if.then18, %if.end27
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #14, !dbg !1534
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup121 [
    i32 0, label %cleanup.cont
    i32 7, label %delete
    i32 6, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end81, !dbg !1535

if.else:                                          ; preds = %do.end11
  %15 = load ptr, ptr %bitmap, align 8, !dbg !1536
  %tobool30 = icmp ne ptr %15, null, !dbg !1536
  br i1 %tobool30, label %lor.lhs.false, label %if.then52, !dbg !1538

lor.lhs.false:                                    ; preds = %if.else
  %16 = load i32, ptr %bit, align 4, !dbg !1539
  %17 = call i1 @llvm.is.constant.i32(i32 %16), !dbg !1539
  br i1 %17, label %land.lhs.true, label %cond.false, !dbg !1539

land.lhs.true:                                    ; preds = %lor.lhs.false
  %18 = load ptr, ptr %bitmap, align 8, !dbg !1539
  %bitmap31 = getelementptr inbounds %struct.ida_bitmap, ptr %18, i32 0, i32 0, !dbg !1539
  %arraydecay = getelementptr inbounds [16 x i64], ptr %bitmap31, i64 0, i64 0, !dbg !1539
  %19 = ptrtoint ptr %arraydecay to i64, !dbg !1539
  %cmp32 = icmp ne i64 %19, 0, !dbg !1539
  %conv33 = zext i1 %cmp32 to i32, !dbg !1539
  %20 = call i1 @llvm.is.constant.i32(i32 %conv33), !dbg !1539
  br i1 %20, label %land.lhs.true34, label %cond.false, !dbg !1539

land.lhs.true34:                                  ; preds = %land.lhs.true
  %21 = load ptr, ptr %bitmap, align 8, !dbg !1539
  %bitmap35 = getelementptr inbounds %struct.ida_bitmap, ptr %21, i32 0, i32 0, !dbg !1539
  %arraydecay36 = getelementptr inbounds [16 x i64], ptr %bitmap35, i64 0, i64 0, !dbg !1539
  %22 = ptrtoint ptr %arraydecay36 to i64, !dbg !1539
  %cmp37 = icmp ne i64 %22, 0, !dbg !1539
  br i1 %cmp37, label %land.lhs.true39, label %cond.false, !dbg !1539

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %23 = load ptr, ptr %bitmap, align 8, !dbg !1539
  %bitmap40 = getelementptr inbounds %struct.ida_bitmap, ptr %23, i32 0, i32 0, !dbg !1539
  %arraydecay41 = getelementptr inbounds [16 x i64], ptr %bitmap40, i64 0, i64 0, !dbg !1539
  %24 = load i64, ptr %arraydecay41, align 8, !dbg !1539
  %25 = call i1 @llvm.is.constant.i64(i64 %24), !dbg !1539
  br i1 %25, label %cond.true, label %cond.false, !dbg !1540

cond.true:                                        ; preds = %land.lhs.true39
  %26 = load i32, ptr %bit, align 4, !dbg !1539
  %conv42 = zext i32 %26 to i64, !dbg !1539
  %27 = load ptr, ptr %bitmap, align 8, !dbg !1539
  %bitmap43 = getelementptr inbounds %struct.ida_bitmap, ptr %27, i32 0, i32 0, !dbg !1539
  %arraydecay44 = getelementptr inbounds [16 x i64], ptr %bitmap43, i64 0, i64 0, !dbg !1539
  %call45 = call zeroext i1 @const_test_bit(i64 noundef %conv42, ptr noundef %arraydecay44) #15, !dbg !1539
  br i1 %call45, label %if.end53, label %if.then52, !dbg !1539

cond.false:                                       ; preds = %land.lhs.true39, %land.lhs.true34, %land.lhs.true, %lor.lhs.false
  %28 = load i32, ptr %bit, align 4, !dbg !1539
  %conv47 = zext i32 %28 to i64, !dbg !1539
  %29 = load ptr, ptr %bitmap, align 8, !dbg !1539
  %bitmap48 = getelementptr inbounds %struct.ida_bitmap, ptr %29, i32 0, i32 0, !dbg !1539
  %arraydecay49 = getelementptr inbounds [16 x i64], ptr %bitmap48, i64 0, i64 0, !dbg !1539
  %call50 = call zeroext i1 @_test_bit(i64 noundef %conv47, ptr noundef %arraydecay49) #15, !dbg !1539
  br i1 %call50, label %if.end53, label %if.then52, !dbg !1540

if.then52:                                        ; preds = %cond.false, %cond.true, %if.else
  br label %err, !dbg !1541

if.end53:                                         ; preds = %cond.false, %cond.true
  %30 = load i32, ptr %bit, align 4, !dbg !1542
  %31 = call i1 @llvm.is.constant.i32(i32 %30), !dbg !1542
  br i1 %31, label %land.lhs.true54, label %cond.false71, !dbg !1542

land.lhs.true54:                                  ; preds = %if.end53
  %32 = load ptr, ptr %bitmap, align 8, !dbg !1542
  %bitmap55 = getelementptr inbounds %struct.ida_bitmap, ptr %32, i32 0, i32 0, !dbg !1542
  %arraydecay56 = getelementptr inbounds [16 x i64], ptr %bitmap55, i64 0, i64 0, !dbg !1542
  %33 = ptrtoint ptr %arraydecay56 to i64, !dbg !1542
  %cmp57 = icmp ne i64 %33, 0, !dbg !1542
  %conv58 = zext i1 %cmp57 to i32, !dbg !1542
  %34 = call i1 @llvm.is.constant.i32(i32 %conv58), !dbg !1542
  br i1 %34, label %land.lhs.true59, label %cond.false71, !dbg !1542

land.lhs.true59:                                  ; preds = %land.lhs.true54
  %35 = load ptr, ptr %bitmap, align 8, !dbg !1542
  %bitmap60 = getelementptr inbounds %struct.ida_bitmap, ptr %35, i32 0, i32 0, !dbg !1542
  %arraydecay61 = getelementptr inbounds [16 x i64], ptr %bitmap60, i64 0, i64 0, !dbg !1542
  %36 = ptrtoint ptr %arraydecay61 to i64, !dbg !1542
  %cmp62 = icmp ne i64 %36, 0, !dbg !1542
  br i1 %cmp62, label %land.lhs.true64, label %cond.false71, !dbg !1542

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %37 = load ptr, ptr %bitmap, align 8, !dbg !1542
  %bitmap65 = getelementptr inbounds %struct.ida_bitmap, ptr %37, i32 0, i32 0, !dbg !1542
  %arraydecay66 = getelementptr inbounds [16 x i64], ptr %bitmap65, i64 0, i64 0, !dbg !1542
  %38 = load i64, ptr %arraydecay66, align 8, !dbg !1542
  %39 = call i1 @llvm.is.constant.i64(i64 %38), !dbg !1542
  br i1 %39, label %cond.true67, label %cond.false71, !dbg !1542

cond.true67:                                      ; preds = %land.lhs.true64
  %40 = load i32, ptr %bit, align 4, !dbg !1542
  %conv68 = zext i32 %40 to i64, !dbg !1542
  %41 = load ptr, ptr %bitmap, align 8, !dbg !1542
  %bitmap69 = getelementptr inbounds %struct.ida_bitmap, ptr %41, i32 0, i32 0, !dbg !1542
  %arraydecay70 = getelementptr inbounds [16 x i64], ptr %bitmap69, i64 0, i64 0, !dbg !1542
  call void @generic___clear_bit(i64 noundef %conv68, ptr noundef %arraydecay70) #15, !dbg !1542
  br label %cond.end, !dbg !1542

cond.false71:                                     ; preds = %land.lhs.true64, %land.lhs.true59, %land.lhs.true54, %if.end53
  %42 = load i32, ptr %bit, align 4, !dbg !1542
  %conv72 = zext i32 %42 to i64, !dbg !1542
  %43 = load ptr, ptr %bitmap, align 8, !dbg !1542
  %bitmap73 = getelementptr inbounds %struct.ida_bitmap, ptr %43, i32 0, i32 0, !dbg !1542
  %arraydecay74 = getelementptr inbounds [16 x i64], ptr %bitmap73, i64 0, i64 0, !dbg !1542
  call void @___clear_bit(i64 noundef %conv72, ptr noundef %arraydecay74) #15, !dbg !1542
  br label %cond.end, !dbg !1542

cond.end:                                         ; preds = %cond.false71, %cond.true67
  call void @xas_set_mark(ptr noundef %xas, i32 noundef 0) #15, !dbg !1543
  %44 = load ptr, ptr %bitmap, align 8, !dbg !1544
  %bitmap75 = getelementptr inbounds %struct.ida_bitmap, ptr %44, i32 0, i32 0, !dbg !1545
  %arraydecay76 = getelementptr inbounds [16 x i64], ptr %bitmap75, i64 0, i64 0, !dbg !1544
  %call77 = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay76, i32 noundef 1024) #15, !dbg !1546
  br i1 %call77, label %if.then78, label %if.end80, !dbg !1547

if.then78:                                        ; preds = %cond.end
  %45 = load ptr, ptr %bitmap, align 8, !dbg !1548
  call void @kfree(ptr noundef %45) #15, !dbg !1549
  br label %delete, !dbg !1549

delete:                                           ; preds = %if.then78, %cleanup
  call void @llvm.dbg.label(metadata !1471), !dbg !1550
  %call79 = call ptr @xas_store(ptr noundef %xas, ptr noundef null) #15, !dbg !1551
  br label %if.end80, !dbg !1552

if.end80:                                         ; preds = %delete, %cond.end
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %cleanup.cont
  %xa82 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1553
  %46 = load ptr, ptr %xa82, align 8, !dbg !1553
  %xa_lock83 = getelementptr inbounds %struct.xarray, ptr %46, i32 0, i32 0, !dbg !1553
  %47 = load i64, ptr %flags, align 8, !dbg !1553
  call void @spin_unlock_irqrestore(ptr noundef %xa_lock83, i64 noundef %47) #15, !dbg !1553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup121, !dbg !1554

err:                                              ; preds = %cleanup, %if.then52
  call void @llvm.dbg.label(metadata !1475), !dbg !1555
  %xa84 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1556
  %48 = load ptr, ptr %xa84, align 8, !dbg !1556
  %xa_lock85 = getelementptr inbounds %struct.xarray, ptr %48, i32 0, i32 0, !dbg !1556
  %49 = load i64, ptr %flags, align 8, !dbg !1556
  call void @spin_unlock_irqrestore(ptr noundef %xa_lock85, i64 noundef %49) #15, !dbg !1556
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1557
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1476, metadata !DIExpression()), !dbg !1557
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1557
  %50 = load i32, ptr %__ret_warn_on, align 4, !dbg !1558
  %tobool86 = icmp ne i32 %50, 0, !dbg !1558
  %lnot = xor i1 %tobool86, true, !dbg !1558
  %lnot87 = xor i1 %lnot, true, !dbg !1558
  %lnot.ext = zext i1 %lnot87 to i32, !dbg !1558
  %conv88 = sext i32 %lnot.ext to i64, !dbg !1558
  %expval = call i64 @llvm.expect.i64(i64 %conv88, i64 0), !dbg !1558
  %tobool89 = icmp ne i64 %expval, 0, !dbg !1558
  br i1 %tobool89, label %if.then90, label %if.end112, !dbg !1557

if.then90:                                        ; preds = %err
  br label %do.body91, !dbg !1558

do.body91:                                        ; preds = %if.then90
  br label %do.body92, !dbg !1559

do.body92:                                        ; preds = %do.body91
  br label %do.cond93, !dbg !1560

do.cond93:                                        ; preds = %do.body92
  br label %do.end94, !dbg !1560

do.end94:                                         ; preds = %do.cond93
  %51 = load i32, ptr %id.addr, align 4, !dbg !1559
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, i32 noundef %51) #15, !dbg !1559
  br label %do.body95, !dbg !1559

do.body95:                                        ; preds = %do.end94
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !1562
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1478, metadata !DIExpression()), !dbg !1562
  store i32 2313, ptr %__flags, align 4, !dbg !1562
  br label %do.body96, !dbg !1562

do.body96:                                        ; preds = %do.body95
  br label %do.cond97, !dbg !1563

do.cond97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !1563

do.end98:                                         ; preds = %do.cond97
  br label %do.body99, !dbg !1562

do.body99:                                        ; preds = %do.end98
  %52 = load i32, ptr %__flags, align 4, !dbg !1565
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 525, i32 %52, i64 12) #14, !dbg !1565, !srcloc !1567
  br label %do.cond100, !dbg !1565

do.cond100:                                       ; preds = %do.body99
  br label %do.end101, !dbg !1565

do.end101:                                        ; preds = %do.cond100
  br label %do.body102, !dbg !1562

do.body102:                                       ; preds = %do.end101
  br label %do.cond103, !dbg !1568

do.cond103:                                       ; preds = %do.body102
  br label %do.end104, !dbg !1568

do.end104:                                        ; preds = %do.cond103
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !1559
  br label %do.cond105, !dbg !1562

do.cond105:                                       ; preds = %do.end104
  br label %do.end106, !dbg !1562

do.end106:                                        ; preds = %do.cond105
  br label %do.body107, !dbg !1559

do.body107:                                       ; preds = %do.end106
  br label %do.cond108, !dbg !1570

do.cond108:                                       ; preds = %do.body107
  br label %do.end109, !dbg !1570

do.end109:                                        ; preds = %do.cond108
  br label %do.cond110, !dbg !1559

do.cond110:                                       ; preds = %do.end109
  br label %do.end111, !dbg !1559

do.end111:                                        ; preds = %do.cond110
  br label %if.end112, !dbg !1559

if.end112:                                        ; preds = %do.end111, %err
  %53 = load i32, ptr %__ret_warn_on, align 4, !dbg !1557
  %tobool114 = icmp ne i32 %53, 0, !dbg !1557
  %lnot115 = xor i1 %tobool114, true, !dbg !1557
  %lnot117 = xor i1 %lnot115, true, !dbg !1557
  %lnot.ext118 = zext i1 %lnot117 to i32, !dbg !1557
  %conv119 = sext i32 %lnot.ext118 to i64, !dbg !1557
  %expval120 = call i64 @llvm.expect.i64(i64 %conv119, i64 0), !dbg !1557
  store i64 %expval120, ptr %tmp113, align 8, !dbg !1558
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !1572
  %54 = load i64, ptr %tmp113, align 8, !dbg !1557
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1573
  br label %cleanup121, !dbg !1573

cleanup121:                                       ; preds = %if.end112, %if.end81, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1573
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitmap) #14, !dbg !1573
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #14, !dbg !1573
  call void @llvm.lifetime.end.p0(i64 56, ptr %xas) #14, !dbg !1573
  %cleanup.dest125 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest125, label %unreachable [
    i32 0, label %cleanup.cont126
    i32 1, label %cleanup.cont126
  ]

cleanup.cont126:                                  ; preds = %cleanup121, %cleanup121
  ret void, !dbg !1573

unreachable:                                      ; preds = %cleanup121
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1574 dso_local ptr @xas_load(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1577 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1583, metadata !DIExpression()), !dbg !1588
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1584, metadata !DIExpression()), !dbg !1589
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !1590
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1585, metadata !DIExpression()), !dbg !1591
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1592
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1593
  %div = udiv i64 %1, 64, !dbg !1593
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1594
  store ptr %add.ptr, ptr %p, align 8, !dbg !1591
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !1595
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1586, metadata !DIExpression()), !dbg !1596
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1597
  %rem = urem i64 %2, 64, !dbg !1597
  %shl = shl i64 1, %rem, !dbg !1597
  store i64 %shl, ptr %mask, align 8, !dbg !1596
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !1598
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1587, metadata !DIExpression()), !dbg !1599
  %3 = load ptr, ptr %p, align 8, !dbg !1600
  %4 = load i64, ptr %3, align 8, !dbg !1601
  store i64 %4, ptr %val, align 8, !dbg !1599
  %5 = load i64, ptr %val, align 8, !dbg !1602
  %6 = load i64, ptr %mask, align 8, !dbg !1603
  %and = and i64 %5, %6, !dbg !1604
  %tobool = icmp ne i64 %and, 0, !dbg !1605
  %lnot = xor i1 %tobool, true, !dbg !1605
  %lnot1 = xor i1 %lnot, true, !dbg !1606
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !1607
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !1607
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !1607
  ret i1 %lnot1, !dbg !1608
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1609 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1611, metadata !DIExpression()), !dbg !1613
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1612, metadata !DIExpression()), !dbg !1614
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1615
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1616
  %div = udiv i64 %1, 64, !dbg !1616
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1617
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !1618
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1619
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1620
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !1621
  ret i1 %call, !dbg !1622
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @generic___clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1623 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1625, metadata !DIExpression()), !dbg !1629
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1626, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1627, metadata !DIExpression()), !dbg !1632
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1633
  %rem = urem i64 %0, 64, !dbg !1633
  %shl = shl i64 1, %rem, !dbg !1633
  store i64 %shl, ptr %mask, align 8, !dbg !1632
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !1634
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1628, metadata !DIExpression()), !dbg !1635
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1636
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1637
  %div = udiv i64 %2, 64, !dbg !1637
  %add.ptr = getelementptr i64, ptr %1, i64 %div, !dbg !1638
  store ptr %add.ptr, ptr %p, align 8, !dbg !1635
  %3 = load i64, ptr %mask, align 8, !dbg !1639
  %not = xor i64 %3, -1, !dbg !1640
  %4 = load ptr, ptr %p, align 8, !dbg !1641
  %5 = load i64, ptr %4, align 8, !dbg !1642
  %and = and i64 %5, %not, !dbg !1642
  store i64 %and, ptr %4, align 8, !dbg !1642
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !1643
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !1643
  ret void, !dbg !1643
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @___clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !1644 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1646, metadata !DIExpression()), !dbg !1648
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1647, metadata !DIExpression()), !dbg !1649
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1650
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1651
  %div = udiv i64 %1, 64, !dbg !1651
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1652
  call void @instrument_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !1653
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1654
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1655
  call void @arch___clear_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !1656
  ret void, !dbg !1657
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1658 dso_local void @xas_set_mark(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #6 align 16 !dbg !1659 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1661, metadata !DIExpression()), !dbg !1663
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1662, metadata !DIExpression()), !dbg !1664
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1665
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1665
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1665

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1665
  %cmp = icmp ule i32 %2, 64, !dbg !1665
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1665

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1665
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1665
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1667

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1668
  %5 = load i64, ptr %4, align 8, !dbg !1669
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !1670
  %sub = sub i32 0, %6, !dbg !1670
  %and = and i32 %sub, 63, !dbg !1670
  %sh_prom = zext i32 %and to i64, !dbg !1670
  %shr = lshr i64 -1, %sh_prom, !dbg !1670
  %and3 = and i64 %5, %shr, !dbg !1671
  %tobool = icmp ne i64 %and3, 0, !dbg !1672
  %lnot = xor i1 %tobool, true, !dbg !1672
  store i1 %lnot, ptr %retval, align 1, !dbg !1673
  br label %return, !dbg !1673

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !1674
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !1675
  %conv = zext i32 %8 to i64, !dbg !1675
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #15, !dbg !1676
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !1677
  %conv4 = zext i32 %9 to i64, !dbg !1677
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !1678
  store i1 %cmp5, ptr %retval, align 1, !dbg !1679
  br label %return, !dbg !1679

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !1680
  ret i1 %10, !dbg !1680
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1681 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ida_destroy(ptr noundef %ida) #0 align 16 !dbg !1687 {
entry:
  %ida.addr = alloca ptr, align 8
  %xas = alloca %struct.xa_state, align 8
  %bitmap = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !1691, metadata !DIExpression()), !dbg !1700
  call void @llvm.lifetime.start.p0(i64 56, ptr %xas) #14, !dbg !1701
  call void @llvm.dbg.declare(metadata ptr %xas, metadata !1692, metadata !DIExpression()), !dbg !1701
  %xa = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1701
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !1701
  %xa1 = getelementptr inbounds %struct.ida, ptr %0, i32 0, i32 0, !dbg !1701
  store ptr %xa1, ptr %xa, align 8, !dbg !1701
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1, !dbg !1701
  store i64 0, ptr %xa_index, align 8, !dbg !1701
  %xa_shift = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2, !dbg !1701
  store i8 0, ptr %xa_shift, align 8, !dbg !1701
  %xa_sibs = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 3, !dbg !1701
  store i8 0, ptr %xa_sibs, align 1, !dbg !1701
  %xa_offset = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4, !dbg !1701
  store i8 0, ptr %xa_offset, align 2, !dbg !1701
  %xa_pad = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 5, !dbg !1701
  store i8 0, ptr %xa_pad, align 1, !dbg !1701
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6, !dbg !1701
  store ptr inttoptr (i64 3 to ptr), ptr %xa_node, align 8, !dbg !1701
  %xa_alloc = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7, !dbg !1701
  store ptr null, ptr %xa_alloc, align 8, !dbg !1701
  %xa_update = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8, !dbg !1701
  store ptr null, ptr %xa_update, align 8, !dbg !1701
  %xa_lru = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 9, !dbg !1701
  store ptr null, ptr %xa_lru, align 8, !dbg !1701
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitmap) #14, !dbg !1702
  call void @llvm.dbg.declare(metadata ptr %bitmap, metadata !1693, metadata !DIExpression()), !dbg !1703
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !1704
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1694, metadata !DIExpression()), !dbg !1705
  br label %do.body, !dbg !1706

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1707

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1708
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1695, metadata !DIExpression()), !dbg !1708
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1708
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1699, metadata !DIExpression()), !dbg !1708
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1708
  %conv = zext i1 %cmp to i32, !dbg !1708
  store i32 1, ptr %tmp, align 4, !dbg !1708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1709
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1709
  %1 = load i32, ptr %tmp, align 4, !dbg !1708
  %xa3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1709
  %2 = load ptr, ptr %xa3, align 8, !dbg !1709
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %2, i32 0, i32 0, !dbg !1709
  %call = call ptr @spinlock_check(ptr noundef %xa_lock) #15, !dbg !1709
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #15, !dbg !1709
  store i64 %call4, ptr %flags, align 8, !dbg !1709
  br label %do.cond, !dbg !1709

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1709

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !1707

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !1707

do.end6:                                          ; preds = %do.cond5
  %call7 = call ptr @xas_find(ptr noundef %xas, i64 noundef -1) #15, !dbg !1710
  store ptr %call7, ptr %bitmap, align 8, !dbg !1710
  br label %for.cond, !dbg !1710

for.cond:                                         ; preds = %for.inc, %do.end6
  %3 = load ptr, ptr %bitmap, align 8, !dbg !1712
  %tobool = icmp ne ptr %3, null, !dbg !1710
  br i1 %tobool, label %for.body, label %for.end, !dbg !1710

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %bitmap, align 8, !dbg !1714
  %call8 = call zeroext i1 @xa_is_value(ptr noundef %4) #15, !dbg !1717
  br i1 %call8, label %if.end, label %if.then, !dbg !1718

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %bitmap, align 8, !dbg !1719
  call void @kfree(ptr noundef %5) #15, !dbg !1720
  br label %if.end, !dbg !1720

if.end:                                           ; preds = %if.then, %for.body
  %call9 = call ptr @xas_store(ptr noundef %xas, ptr noundef null) #15, !dbg !1721
  br label %for.inc, !dbg !1722

for.inc:                                          ; preds = %if.end
  %call10 = call ptr @xas_next_entry(ptr noundef %xas, i64 noundef -1) #15, !dbg !1712
  store ptr %call10, ptr %bitmap, align 8, !dbg !1712
  br label %for.cond, !dbg !1712, !llvm.loop !1723

for.end:                                          ; preds = %for.cond
  %xa11 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 0, !dbg !1725
  %6 = load ptr, ptr %xa11, align 8, !dbg !1725
  %xa_lock12 = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 0, !dbg !1725
  %7 = load i64, ptr %flags, align 8, !dbg !1725
  call void @spin_unlock_irqrestore(ptr noundef %xa_lock12, i64 noundef %7) #15, !dbg !1725
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitmap) #14, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 56, ptr %xas) #14, !dbg !1726
  ret void, !dbg !1726
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1727 dso_local ptr @xas_find(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @xas_next_entry(ptr noundef %xas, i64 noundef %max) #6 align 16 !dbg !1730 {
entry:
  %retval = alloca ptr, align 8
  %xas.addr = alloca ptr, align 8
  %max.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %xas, ptr %xas.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xas.addr, metadata !1732, metadata !DIExpression()), !dbg !1736
  store i64 %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !1733, metadata !DIExpression()), !dbg !1737
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !1738
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1734, metadata !DIExpression()), !dbg !1739
  %0 = load ptr, ptr %xas.addr, align 8, !dbg !1740
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6, !dbg !1741
  %1 = load ptr, ptr %xa_node, align 8, !dbg !1741
  store ptr %1, ptr %node, align 8, !dbg !1739
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !1742
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1735, metadata !DIExpression()), !dbg !1743
  %2 = load ptr, ptr %node, align 8, !dbg !1744
  %call = call zeroext i1 @xas_not_node(ptr noundef %2) #15, !dbg !1744
  br i1 %call, label %lor.end, label %lor.lhs.false, !dbg !1744

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %node, align 8, !dbg !1744
  %shift = getelementptr inbounds %struct.xa_node, ptr %3, i32 0, i32 0, !dbg !1744
  %4 = load i8, ptr %shift, align 8, !dbg !1744
  %conv = zext i8 %4 to i32, !dbg !1744
  %tobool = icmp ne i32 %conv, 0, !dbg !1744
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1744

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %xas.addr, align 8, !dbg !1744
  %xa_offset = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 4, !dbg !1744
  %6 = load i8, ptr %xa_offset, align 2, !dbg !1744
  %conv2 = zext i8 %6 to i64, !dbg !1744
  %7 = load ptr, ptr %xas.addr, align 8, !dbg !1744
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 1, !dbg !1744
  %8 = load i64, ptr %xa_index, align 8, !dbg !1744
  %and = and i64 %8, 63, !dbg !1744
  %cmp = icmp ne i64 %conv2, %and, !dbg !1744
  br label %lor.end, !dbg !1744

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %9 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp, %lor.rhs ]
  %lnot = xor i1 %9, true, !dbg !1744
  %lnot4 = xor i1 %lnot, true, !dbg !1744
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1744
  %conv5 = sext i32 %lnot.ext to i64, !dbg !1744
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !1744
  %tobool6 = icmp ne i64 %expval, 0, !dbg !1744
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1746

if.then:                                          ; preds = %lor.end
  %10 = load ptr, ptr %xas.addr, align 8, !dbg !1747
  %11 = load i64, ptr %max.addr, align 8, !dbg !1748
  %call7 = call ptr @xas_find(ptr noundef %10, i64 noundef %11) #15, !dbg !1749
  store ptr %call7, ptr %retval, align 8, !dbg !1750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1750

if.end:                                           ; preds = %lor.end
  br label %do.body, !dbg !1751

do.body:                                          ; preds = %do.cond, %if.end
  %12 = load ptr, ptr %xas.addr, align 8, !dbg !1752
  %xa_index8 = getelementptr inbounds %struct.xa_state, ptr %12, i32 0, i32 1, !dbg !1752
  %13 = load i64, ptr %xa_index8, align 8, !dbg !1752
  %14 = load i64, ptr %max.addr, align 8, !dbg !1752
  %cmp9 = icmp uge i64 %13, %14, !dbg !1752
  %lnot11 = xor i1 %cmp9, true, !dbg !1752
  %lnot13 = xor i1 %lnot11, true, !dbg !1752
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !1752
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !1752
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !1752
  %tobool17 = icmp ne i64 %expval16, 0, !dbg !1752
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !1755

if.then18:                                        ; preds = %do.body
  %15 = load ptr, ptr %xas.addr, align 8, !dbg !1756
  %16 = load i64, ptr %max.addr, align 8, !dbg !1757
  %call19 = call ptr @xas_find(ptr noundef %15, i64 noundef %16) #15, !dbg !1758
  store ptr %call19, ptr %retval, align 8, !dbg !1759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1759

if.end20:                                         ; preds = %do.body
  %17 = load ptr, ptr %xas.addr, align 8, !dbg !1760
  %xa_offset21 = getelementptr inbounds %struct.xa_state, ptr %17, i32 0, i32 4, !dbg !1760
  %18 = load i8, ptr %xa_offset21, align 2, !dbg !1760
  %conv22 = zext i8 %18 to i64, !dbg !1760
  %cmp23 = icmp eq i64 %conv22, 63, !dbg !1760
  %lnot25 = xor i1 %cmp23, true, !dbg !1760
  %lnot27 = xor i1 %lnot25, true, !dbg !1760
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !1760
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !1760
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !1760
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !1760
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !1762

if.then32:                                        ; preds = %if.end20
  %19 = load ptr, ptr %xas.addr, align 8, !dbg !1763
  %20 = load i64, ptr %max.addr, align 8, !dbg !1764
  %call33 = call ptr @xas_find(ptr noundef %19, i64 noundef %20) #15, !dbg !1765
  store ptr %call33, ptr %retval, align 8, !dbg !1766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1766

if.end34:                                         ; preds = %if.end20
  %21 = load ptr, ptr %xas.addr, align 8, !dbg !1767
  %xa = getelementptr inbounds %struct.xa_state, ptr %21, i32 0, i32 0, !dbg !1768
  %22 = load ptr, ptr %xa, align 8, !dbg !1768
  %23 = load ptr, ptr %node, align 8, !dbg !1769
  %24 = load ptr, ptr %xas.addr, align 8, !dbg !1770
  %xa_offset35 = getelementptr inbounds %struct.xa_state, ptr %24, i32 0, i32 4, !dbg !1771
  %25 = load i8, ptr %xa_offset35, align 2, !dbg !1771
  %conv36 = zext i8 %25 to i32, !dbg !1770
  %add = add i32 %conv36, 1, !dbg !1772
  %call37 = call ptr @xa_entry(ptr noundef %22, ptr noundef %23, i32 noundef %add) #15, !dbg !1773
  store ptr %call37, ptr %entry1, align 8, !dbg !1774
  %26 = load ptr, ptr %entry1, align 8, !dbg !1775
  %call38 = call zeroext i1 @xa_is_internal(ptr noundef %26) #15, !dbg !1775
  %lnot39 = xor i1 %call38, true, !dbg !1775
  %lnot41 = xor i1 %lnot39, true, !dbg !1775
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !1775
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !1775
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !1775
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !1775
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !1777

if.then46:                                        ; preds = %if.end34
  %27 = load ptr, ptr %xas.addr, align 8, !dbg !1778
  %28 = load i64, ptr %max.addr, align 8, !dbg !1779
  %call47 = call ptr @xas_find(ptr noundef %27, i64 noundef %28) #15, !dbg !1780
  store ptr %call47, ptr %retval, align 8, !dbg !1781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1781

if.end48:                                         ; preds = %if.end34
  %29 = load ptr, ptr %xas.addr, align 8, !dbg !1782
  %xa_offset49 = getelementptr inbounds %struct.xa_state, ptr %29, i32 0, i32 4, !dbg !1783
  %30 = load i8, ptr %xa_offset49, align 2, !dbg !1784
  %inc = add i8 %30, 1, !dbg !1784
  store i8 %inc, ptr %xa_offset49, align 2, !dbg !1784
  %31 = load ptr, ptr %xas.addr, align 8, !dbg !1785
  %xa_index50 = getelementptr inbounds %struct.xa_state, ptr %31, i32 0, i32 1, !dbg !1786
  %32 = load i64, ptr %xa_index50, align 8, !dbg !1787
  %inc51 = add i64 %32, 1, !dbg !1787
  store i64 %inc51, ptr %xa_index50, align 8, !dbg !1787
  br label %do.cond, !dbg !1788

do.cond:                                          ; preds = %if.end48
  %33 = load ptr, ptr %entry1, align 8, !dbg !1789
  %tobool52 = icmp ne ptr %33, null, !dbg !1790
  %lnot53 = xor i1 %tobool52, true, !dbg !1790
  br i1 %lnot53, label %do.body, label %do.end, !dbg !1788, !llvm.loop !1791

do.end:                                           ; preds = %do.cond
  %34 = load ptr, ptr %entry1, align 8, !dbg !1793
  store ptr %34, ptr %retval, align 8, !dbg !1794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1794

cleanup:                                          ; preds = %do.end, %if.then46, %if.then32, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !1795
  %35 = load ptr, ptr %retval, align 8, !dbg !1795
  ret ptr %35, !dbg !1795
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__radix_tree_iter_add(ptr noundef %iter, i64 noundef %slots) #6 align 16 !dbg !1796 {
entry:
  %iter.addr = alloca ptr, align 8
  %slots.addr = alloca i64, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1800, metadata !DIExpression()), !dbg !1802
  store i64 %slots, ptr %slots.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slots.addr, metadata !1801, metadata !DIExpression()), !dbg !1803
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !1804
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %0, i32 0, i32 0, !dbg !1805
  %1 = load i64, ptr %index, align 8, !dbg !1805
  %2 = load i64, ptr %slots.addr, align 8, !dbg !1806
  %add = add i64 %1, %2, !dbg !1807
  ret i64 %add, !dbg !1808
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !1809 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1814, metadata !DIExpression()), !dbg !1815
  %0 = load i64, ptr %word.addr, align 8, !dbg !1816
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #17, !dbg !1817, !srcloc !1818
  store i64 %1, ptr %word.addr, align 8, !dbg !1817
  %2 = load i64, ptr %word.addr, align 8, !dbg !1819
  ret i64 %2, !dbg !1820
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @radix_tree_chunk_size(ptr noundef %iter) #4 align 16 !dbg !1821 {
entry:
  %iter.addr = alloca ptr, align 8
  store ptr %iter, ptr %iter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %iter.addr, metadata !1825, metadata !DIExpression()), !dbg !1826
  %0 = load ptr, ptr %iter.addr, align 8, !dbg !1827
  %next_index = getelementptr inbounds %struct.radix_tree_iter, ptr %0, i32 0, i32 1, !dbg !1828
  %1 = load i64, ptr %next_index, align 8, !dbg !1828
  %2 = load ptr, ptr %iter.addr, align 8, !dbg !1829
  %index = getelementptr inbounds %struct.radix_tree_iter, ptr %2, i32 0, i32 0, !dbg !1830
  %3 = load i64, ptr %index, align 8, !dbg !1830
  %sub = sub i64 %1, %3, !dbg !1831
  ret i64 %sub, !dbg !1832
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @xa_mk_internal(i64 noundef %v) #6 align 16 !dbg !1833 {
entry:
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1835, metadata !DIExpression()), !dbg !1836
  %0 = load i64, ptr %v.addr, align 8, !dbg !1837
  %shl = shl i64 %0, 2, !dbg !1838
  %or = or i64 %shl, 2, !dbg !1839
  %1 = inttoptr i64 %or to ptr, !dbg !1840
  ret ptr %1, !dbg !1841
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable_ffz(i64 noundef %word) #4 align 16 !dbg !1842 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1844, metadata !DIExpression()), !dbg !1845
  %0 = load i64, ptr %word.addr, align 8, !dbg !1846
  %not = xor i64 %0, -1, !dbg !1847
  %1 = call i64 asm "rep; bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %not) #18, !dbg !1848, !srcloc !1849
  store i64 %1, ptr %word.addr, align 8, !dbg !1848
  %2 = load i64, ptr %word.addr, align 8, !dbg !1850
  ret i64 %2, !dbg !1851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1852 dso_local i64 @_find_next_zero_bit(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !1853 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1855, metadata !DIExpression()), !dbg !1860
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1856, metadata !DIExpression()), !dbg !1861
  %0 = load i64, ptr %size.addr, align 8, !dbg !1862
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1863
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1864

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1865
  %tobool = icmp ne i64 %2, 0, !dbg !1865
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1866

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1867
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1857, metadata !DIExpression()), !dbg !1868
  %3 = load i64, ptr %size.addr, align 8, !dbg !1869
  %cmp = icmp ugt i64 %3, 8192, !dbg !1871
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1872

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1873
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1874
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1875
  store ptr %call, ptr %retval, align 8, !dbg !1876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1876

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1877
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1877
  store i32 %call2, ptr %index, align 4, !dbg !1878
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1879
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1880
  %9 = ptrtoint ptr %8 to i64, !dbg !1880
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1881
  %idxprom = zext i32 %call3 to i64, !dbg !1882
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1882
  %10 = load i32, ptr %index, align 4, !dbg !1883
  %idxprom4 = zext i32 %10 to i64, !dbg !1882
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1882
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1882
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1884
  %13 = load i64, ptr %size.addr, align 8, !dbg !1885
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !1886
  store ptr %call6, ptr %retval, align 8, !dbg !1887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1887

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1888
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1889
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1890
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1891
  store ptr %call8, ptr %retval, align 8, !dbg !1892
  br label %return, !dbg !1892

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1893
  ret ptr %16, !dbg !1893
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1894 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !1895 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1899, metadata !DIExpression()), !dbg !1901
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1900, metadata !DIExpression()), !dbg !1902
  %0 = load i64, ptr %size.addr, align 8, !dbg !1903
  %tobool = icmp ne i64 %0, 0, !dbg !1903
  br i1 %tobool, label %if.end, label %if.then, !dbg !1905

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1906
  br label %return, !dbg !1906

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1907
  %cmp = icmp ule i64 %1, 8, !dbg !1909
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1910

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1911
  br label %return, !dbg !1911

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1912
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1914
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1915

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1916
  %cmp4 = icmp ule i64 %3, 96, !dbg !1917
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1918

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1919
  br label %return, !dbg !1919

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1920
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1922
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1923

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1924
  %cmp9 = icmp ule i64 %5, 192, !dbg !1925
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1926

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1927
  br label %return, !dbg !1927

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1928
  %cmp12 = icmp ule i64 %6, 8, !dbg !1930
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1931

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1932
  br label %return, !dbg !1932

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1933
  %cmp15 = icmp ule i64 %7, 16, !dbg !1935
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1936

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1937
  br label %return, !dbg !1937

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1938
  %cmp18 = icmp ule i64 %8, 32, !dbg !1940
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1941

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1942
  br label %return, !dbg !1942

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1943
  %cmp21 = icmp ule i64 %9, 64, !dbg !1945
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1946

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1947
  br label %return, !dbg !1947

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1948
  %cmp24 = icmp ule i64 %10, 128, !dbg !1950
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1951

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1952
  br label %return, !dbg !1952

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1953
  %cmp27 = icmp ule i64 %11, 256, !dbg !1955
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1956

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1957
  br label %return, !dbg !1957

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1958
  %cmp30 = icmp ule i64 %12, 512, !dbg !1960
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1961

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1962
  br label %return, !dbg !1962

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1963
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1965
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1966

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1967
  br label %return, !dbg !1967

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1968
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1970
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1971

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1972
  br label %return, !dbg !1972

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1973
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1975
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1976

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1977
  br label %return, !dbg !1977

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1978
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1980
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1981

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1982
  br label %return, !dbg !1982

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1983
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1985
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1986

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1987
  br label %return, !dbg !1987

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1988
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1990
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1991

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1992
  br label %return, !dbg !1992

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1993
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1995
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1996

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1997
  br label %return, !dbg !1997

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1998
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2000
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2001

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2002
  br label %return, !dbg !2002

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2003
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2005
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2006

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2007
  br label %return, !dbg !2007

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2008
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2010
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2011

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2012
  br label %return, !dbg !2012

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2013
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2015
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2016

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2017
  br label %return, !dbg !2017

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2018
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2020
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2021

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2022
  br label %return, !dbg !2022

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2023, !range !2025, !noundef !2026
  %tobool69 = trunc i8 %25 to i1, !dbg !2023
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2027

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2028

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_189() #20, !dbg !2029, !srcloc !2032
  unreachable, !dbg !2029

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2033

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2034

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2035

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2037

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2035

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #14, !dbg !2039, !srcloc !2041
  br label %do.end75, !dbg !2039

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2035

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2042
  br label %return, !dbg !2042

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2043
  ret i32 %26, !dbg !2043
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2044 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !2050 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2054, metadata !DIExpression()), !dbg !2056
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2055, metadata !DIExpression()), !dbg !2057
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2058
  %and = and i32 %0, 17, !dbg !2058
  %cmp = icmp eq i32 %and, 0, !dbg !2058
  %lnot = xor i1 %cmp, true, !dbg !2058
  %lnot1 = xor i1 %lnot, true, !dbg !2058
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2058
  %conv = sext i32 %lnot.ext to i64, !dbg !2058
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2058
  %tobool = icmp ne i64 %expval, 0, !dbg !2058
  br i1 %tobool, label %if.then, label %if.end, !dbg !2060

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2061
  br label %return, !dbg !2061

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2062
  %and2 = and i32 %1, 1, !dbg !2064
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2064
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2065

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2066
  br label %return, !dbg !2066

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2067
  br label %return, !dbg !2067

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2069
  ret i32 %2, !dbg !2069
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2070 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2071 dso_local void @__compiletime_assert_189() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xa_err(ptr noundef %entry1) #6 align 16 !dbg !2074 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2078, metadata !DIExpression()), !dbg !2079
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2080
  %call = call zeroext i1 @xa_is_err(ptr noundef %0) #15, !dbg !2082
  br i1 %call, label %if.then, label %if.end, !dbg !2083

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2084
  %2 = ptrtoint ptr %1 to i64, !dbg !2085
  %shr = ashr i64 %2, 2, !dbg !2086
  %conv = trunc i64 %shr to i32, !dbg !2085
  store i32 %conv, ptr %retval, align 4, !dbg !2087
  br label %return, !dbg !2087

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2088
  br label %return, !dbg !2088

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2089
  ret i32 %3, !dbg !2089
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xa_is_err(ptr noundef %entry1) #6 align 16 !dbg !2090 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2092, metadata !DIExpression()), !dbg !2093
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2094
  %call = call zeroext i1 @xa_is_internal(ptr noundef %0) #15, !dbg !2094
  br i1 %call, label %land.rhs, label %land.end, !dbg !2094

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2094
  %call2 = call ptr @xa_mk_internal(i64 noundef -4095) #15, !dbg !2094
  %cmp = icmp uge ptr %1, %call2, !dbg !2094
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !2095
  %lnot = xor i1 %2, true, !dbg !2094
  %lnot3 = xor i1 %lnot, true, !dbg !2094
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2094
  %conv = sext i32 %lnot.ext to i64, !dbg !2094
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2094
  %tobool = icmp ne i64 %expval, 0, !dbg !2094
  ret i1 %tobool, !dbg !2096
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2097 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2105, metadata !DIExpression()), !dbg !2107
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2106, metadata !DIExpression()), !dbg !2108
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2109
  %1 = load i64, ptr %size.addr, align 8, !dbg !2110
  %conv = trunc i64 %1 to i32, !dbg !2110
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !2111
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2112
  %3 = load i64, ptr %size.addr, align 8, !dbg !2112
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #15, !dbg !2112
  ret void, !dbg !2113
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2114 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2116, metadata !DIExpression()), !dbg !2118
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2117, metadata !DIExpression()), !dbg !2119
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2120
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2121
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !2122, !srcloc !2123
  ret void, !dbg !2124
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !2125 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2130, metadata !DIExpression()), !dbg !2132
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2131, metadata !DIExpression()), !dbg !2133
  ret i1 true, !dbg !2134
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !2135 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2140, metadata !DIExpression()), !dbg !2143
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2141, metadata !DIExpression()), !dbg !2144
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2142, metadata !DIExpression()), !dbg !2145
  ret void, !dbg !2146
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_zero_bit(ptr noundef %addr, i64 noundef %size) #6 align 16 !dbg !2147 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2151, metadata !DIExpression()), !dbg !2156
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2152, metadata !DIExpression()), !dbg !2157
  %0 = load i64, ptr %size.addr, align 8, !dbg !2158
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2158
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2158

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2158
  %cmp = icmp ule i64 %2, 64, !dbg !2158
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2158

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2158
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2158
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2159

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !2160
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2153, metadata !DIExpression()), !dbg !2161
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !2162
  %5 = load i64, ptr %4, align 8, !dbg !2163
  %6 = load i64, ptr %size.addr, align 8, !dbg !2164
  %sub = sub i64 %6, 1, !dbg !2164
  %sub3 = sub i64 63, %sub, !dbg !2164
  %shr = lshr i64 -1, %sub3, !dbg !2164
  %and = and i64 -1, %shr, !dbg !2164
  %add = add i64 0, %and, !dbg !2164
  %not = xor i64 %add, -1, !dbg !2165
  %or = or i64 %5, %not, !dbg !2166
  store i64 %or, ptr %val, align 8, !dbg !2161
  %7 = load i64, ptr %val, align 8, !dbg !2167
  %cmp4 = icmp eq i64 %7, -1, !dbg !2168
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !2167

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %size.addr, align 8, !dbg !2169
  br label %cond.end8, !dbg !2167

cond.false:                                       ; preds = %if.then
  %9 = load i64, ptr %val, align 8, !dbg !2170
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !2170
  br i1 %10, label %cond.true5, label %cond.false7, !dbg !2170

cond.true5:                                       ; preds = %cond.false
  %11 = load i64, ptr %val, align 8, !dbg !2170
  %not6 = xor i64 %11, -1, !dbg !2170
  %12 = call i64 @llvm.cttz.i64(i64 %not6, i1 true), !dbg !2170
  %cast = trunc i64 %12 to i32, !dbg !2170
  %conv = sext i32 %cast to i64, !dbg !2170
  br label %cond.end, !dbg !2170

cond.false7:                                      ; preds = %cond.false
  %13 = load i64, ptr %val, align 8, !dbg !2170
  %call = call i64 @variable_ffz(i64 noundef %13) #15, !dbg !2170
  br label %cond.end, !dbg !2170

cond.end:                                         ; preds = %cond.false7, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false7 ], !dbg !2170
  br label %cond.end8, !dbg !2167

cond.end8:                                        ; preds = %cond.end, %cond.true
  %cond9 = phi i64 [ %8, %cond.true ], [ %cond, %cond.end ], !dbg !2167
  store i64 %cond9, ptr %retval, align 8, !dbg !2171
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !2172
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !2173
  %15 = load i64, ptr %size.addr, align 8, !dbg !2174
  %call10 = call i64 @_find_first_zero_bit(ptr noundef %14, i64 noundef %15) #15, !dbg !2175
  store i64 %call10, ptr %retval, align 8, !dbg !2176
  br label %return, !dbg !2176

return:                                           ; preds = %if.end, %cond.end8
  %16 = load i64, ptr %retval, align 8, !dbg !2177
  ret i64 %16, !dbg !2177
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2178 dso_local i64 @_find_first_zero_bit(ptr noundef, i64 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2179 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !2182 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2184, metadata !DIExpression()), !dbg !2186
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2185, metadata !DIExpression()), !dbg !2187
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2188
  %1 = load i64, ptr %size.addr, align 8, !dbg !2189
  %conv = trunc i64 %1 to i32, !dbg !2189
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !2190
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2191
  %3 = load i64, ptr %size.addr, align 8, !dbg !2191
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !2191
  ret void, !dbg !2192
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2193 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2195, metadata !DIExpression()), !dbg !2197
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2196, metadata !DIExpression()), !dbg !2198
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2199
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2200
  br i1 %1, label %cond.true, label %cond.false, !dbg !2200

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2201
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2202
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !2203
  %conv = zext i1 %call to i32, !dbg !2203
  br label %cond.end, !dbg !2200

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2204
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2205
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !2206
  %conv2 = zext i1 %call1 to i32, !dbg !2206
  br label %cond.end, !dbg !2200

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2200
  %tobool = icmp ne i32 %cond, 0, !dbg !2200
  ret i1 %tobool, !dbg !2207
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !2208 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2210, metadata !DIExpression()), !dbg !2212
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2211, metadata !DIExpression()), !dbg !2213
  ret i1 true, !dbg !2214
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2215 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2219, metadata !DIExpression()), !dbg !2221
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2220, metadata !DIExpression()), !dbg !2222
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2223
  %and = and i64 %0, 63, !dbg !2224
  %shl = shl i64 1, %and, !dbg !2225
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2226
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2227
  %shr = ashr i64 %2, 6, !dbg !2228
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2226
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2226
  %and1 = and i64 %shl, %3, !dbg !2229
  %cmp = icmp ne i64 %and1, 0, !dbg !2230
  ret i1 %cmp, !dbg !2231
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2232 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2234, metadata !DIExpression()), !dbg !2237
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2235, metadata !DIExpression()), !dbg !2238
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !2239
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2236, metadata !DIExpression()), !dbg !2240
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2241
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2242
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !2243, !srcloc !2244
  %3 = icmp ult i8 %2, 2, !dbg !2243
  call void @llvm.assume(i1 %3), !dbg !2243
  store i8 %2, ptr %oldbit, align 1, !dbg !2243
  %4 = load i8, ptr %oldbit, align 1, !dbg !2245, !range !2025, !noundef !2026
  %tobool = trunc i8 %4 to i1, !dbg !2245
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !2246
  ret i1 %tobool, !dbg !2247
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch___clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !2248 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2250, metadata !DIExpression()), !dbg !2252
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2251, metadata !DIExpression()), !dbg !2253
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2254
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2255
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !2256, !srcloc !2257
  ret void, !dbg !2258
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #6 align 16 !dbg !2259 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2261, metadata !DIExpression()), !dbg !2266
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2262, metadata !DIExpression()), !dbg !2267
  %0 = load i64, ptr %size.addr, align 8, !dbg !2268
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2268
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !2268

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2268
  %cmp = icmp ule i64 %2, 64, !dbg !2268
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !2268

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !2268
  %cmp2 = icmp ugt i64 %3, 0, !dbg !2268
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2269

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2263, metadata !DIExpression()), !dbg !2271
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !2272
  %5 = load i64, ptr %4, align 8, !dbg !2273
  %6 = load i64, ptr %size.addr, align 8, !dbg !2274
  %sub = sub i64 %6, 1, !dbg !2274
  %sub3 = sub i64 63, %sub, !dbg !2274
  %shr = lshr i64 -1, %sub3, !dbg !2274
  %and = and i64 -1, %shr, !dbg !2274
  %add = add i64 0, %and, !dbg !2274
  %and4 = and i64 %5, %add, !dbg !2275
  store i64 %and4, ptr %val, align 8, !dbg !2271
  %7 = load i64, ptr %val, align 8, !dbg !2276
  %tobool = icmp ne i64 %7, 0, !dbg !2276
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !2276

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !2277
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !2277
  br i1 %9, label %cond.true5, label %cond.false, !dbg !2277

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !2277
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !2277
  %cast = trunc i64 %11 to i32, !dbg !2277
  %conv = sext i32 %cast to i64, !dbg !2277
  br label %cond.end, !dbg !2277

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !2277
  %call = call i64 @variable__ffs(i64 noundef %12) #15, !dbg !2277
  br label %cond.end, !dbg !2277

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !2277
  br label %cond.end7, !dbg !2276

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !2278
  br label %cond.end7, !dbg !2276

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !2276
  store i64 %cond8, ptr %retval, align 8, !dbg !2279
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !2280
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !2281
  %15 = load i64, ptr %size.addr, align 8, !dbg !2282
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #15, !dbg !2283
  store i64 %call9, ptr %retval, align 8, !dbg !2284
  br label %return, !dbg !2284

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !2285
  ret i64 %16, !dbg !2285
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2286 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xas_not_node(ptr noundef %node) #6 align 16 !dbg !2287 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2291, metadata !DIExpression()), !dbg !2292
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2293
  %1 = ptrtoint ptr %0 to i64, !dbg !2294
  %and = and i64 %1, 3, !dbg !2295
  %tobool = icmp ne i64 %and, 0, !dbg !2295
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !2296

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %node.addr, align 8, !dbg !2297
  %tobool1 = icmp ne ptr %2, null, !dbg !2298
  %lnot = xor i1 %tobool1, true, !dbg !2298
  br label %lor.end, !dbg !2296

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  ret i1 %3, !dbg !2299
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @xa_entry(ptr noundef %xa, ptr noundef %node, i32 noundef %offset) #6 align 16 !dbg !2300 {
entry:
  %xa.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %__UNIQUE_ID_rcu178 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %xa, ptr %xa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xa.addr, metadata !2306, metadata !DIExpression()), !dbg !2311
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !2307, metadata !DIExpression()), !dbg !2312
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !2308, metadata !DIExpression()), !dbg !2313
  br label %do.body, !dbg !2314

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2315

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu178) #14, !dbg !2317
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu178, metadata !2309, metadata !DIExpression()), !dbg !2317
  br label %do.body1, !dbg !2318

do.body1:                                         ; preds = %do.end
  br label %do.cond, !dbg !2320

do.cond:                                          ; preds = %do.body1
  br label %do.end2, !dbg !2320

do.end2:                                          ; preds = %do.cond
  %0 = load ptr, ptr %node.addr, align 8, !dbg !2318
  %slots = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 7, !dbg !2318
  %1 = load i32, ptr %offset.addr, align 4, !dbg !2318
  %idxprom = zext i32 %1 to i64, !dbg !2318
  %arrayidx = getelementptr [64 x ptr], ptr %slots, i64 0, i64 %idxprom, !dbg !2318
  %2 = load volatile ptr, ptr %arrayidx, align 8, !dbg !2318
  store ptr %2, ptr %tmp, align 8, !dbg !2320
  %3 = load ptr, ptr %tmp, align 8, !dbg !2318
  store ptr %3, ptr %__UNIQUE_ID_rcu178, align 8, !dbg !2317
  br label %do.body3, !dbg !2317

do.body3:                                         ; preds = %do.end2
  br label %do.cond4, !dbg !2322

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !2322

do.end5:                                          ; preds = %do.cond4
  %4 = load ptr, ptr %__UNIQUE_ID_rcu178, align 8, !dbg !2317
  store ptr %4, ptr %tmp6, align 8, !dbg !2322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu178) #14, !dbg !2324
  %5 = load ptr, ptr %tmp6, align 8, !dbg !2317
  ret ptr %5, !dbg !2325
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { nounwind memory(read) }
attributes #18 = { nounwind memory(none) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/idr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e3067032daee5180a91cdfc2e7f1542")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_alloc_u32190", scope: !9, file: !2, line: 57, type: !36, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.idr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/idr\22 -D KBUILD_BASENAME=\22idr\22 -D KBUILD_MODNAME=\22idr\22 -D __KBUILD_MODNAME=kmod_idr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/idr.ll lib/idr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !33, globals: !139, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !23}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 267, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/radix-tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a55640c109937c5661ba8dd70608ca58")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "RADIX_TREE_ITER_TAG_MASK", value: 15)
!16 = !DIEnumerator(name: "RADIX_TREE_ITER_TAGGED", value: 16)
!17 = !DIEnumerator(name: "RADIX_TREE_ITER_CONTIG", value: 32)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 10, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "false", value: 0)
!22 = !DIEnumerator(name: "true", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !24, line: 364, baseType: !13, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!25 = !{!26, !27, !28, !29, !30, !31, !32}
!26 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!28 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!29 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!30 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!31 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!32 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!33 = !{!34, !36, !37, !38, !41, !131, !132, !133, !126, !135, !136, !137}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !35, line: 154, baseType: !13)
!35 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xa_node", file: !43, line: 1158, size: 4608, elements: !44)
!43 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!44 = !{!45, !47, !48, !49, !50, !51, !99, !117, !121}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !42, file: !43, line: 1159, baseType: !46, size: 8)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !42, file: !43, line: 1160, baseType: !46, size: 8, offset: 8)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !42, file: !43, line: 1161, baseType: !46, size: 8, offset: 16)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nr_values", scope: !42, file: !43, line: 1162, baseType: !46, size: 8, offset: 24)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !42, file: !43, line: 1163, baseType: !41, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !42, file: !43, line: 1164, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !43, line: 296, size: 128, elements: !54)
!54 = !{!55, !97, !98}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !53, file: !43, line: 297, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !57, line: 29, baseType: !58)
!57 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !57, line: 17, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, scope: !58, file: !57, line: 18, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !57, line: 18, size: 32, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !61, file: !57, line: 19, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !65, line: 14, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !64, file: !65, line: 15, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !69, line: 44, baseType: !70)
!69 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !69, line: 14, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !69, line: 15, baseType: !73, size: 32)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !69, line: 15, size: 32, elements: !74)
!74 = !{!75, !80, !89}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !73, file: !69, line: 16, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !35, line: 174, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 172, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !77, file: !35, line: 173, baseType: !37, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !69, line: 24, baseType: !81, size: 16)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !73, file: !69, line: 24, size: 16, elements: !82)
!82 = !{!83, !88}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !81, file: !69, line: 25, baseType: !84, size: 8)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !85, line: 17, baseType: !86)
!85 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !87, line: 21, baseType: !46)
!87 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !81, file: !69, line: 26, baseType: !84, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !69, line: 28, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !73, file: !69, line: 28, size: 32, elements: !91)
!91 = !{!92, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !90, file: !69, line: 29, baseType: !93, size: 16)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !85, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !87, line: 24, baseType: !95)
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !90, file: !69, line: 30, baseType: !93, size: 16, offset: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !53, file: !43, line: 299, baseType: !34, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !53, file: !43, line: 300, baseType: !36, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !42, file: !43, line: 1165, baseType: !100, size: 128, offset: 192)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !42, file: !43, line: 1165, size: 128, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !100, file: !43, line: 1166, baseType: !103, size: 128)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !35, line: 190, size: 128, elements: !104)
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !35, line: 191, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !35, line: 191, baseType: !106, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !100, file: !43, line: 1167, baseType: !109, size: 128, align: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !35, line: 232, size: 128, align: 64, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !35, line: 233, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !109, file: !35, line: 234, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !112}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !42, file: !43, line: 1169, baseType: !118, size: 4096, offset: 320)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 4096, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !42, file: !43, line: 1170, baseType: !122, size: 192, offset: 4416)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !42, file: !43, line: 1170, size: 192, elements: !123)
!123 = !{!124, !130}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !122, file: !43, line: 1171, baseType: !125, size: 192)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 192, elements: !127)
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !{!128, !129}
!128 = !DISubrange(count: 3)
!129 = !DISubrange(count: 1)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "marks", scope: !122, file: !43, line: 1172, baseType: !125, size: 192)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_mark_t", file: !43, line: 250, baseType: !13)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !35, line: 42, baseType: !126)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!135 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!139 = !{!0, !7, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !163, !165, !167, !172}
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_alloc191", scope: !9, file: !2, line: 93, type: !36, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_alloc_cyclic192", scope: !9, file: !2, line: 136, type: !36, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_remove193", scope: !9, file: !2, line: 156, type: !36, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_find194", scope: !9, file: !2, line: 176, type: !36, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_for_each197", scope: !9, file: !2, line: 215, type: !36, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_get_next_ul200", scope: !9, file: !2, line: 252, type: !36, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_get_next201", scope: !9, file: !2, line: 274, type: !36, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_idr_replace202", scope: !9, file: !2, line: 306, type: !36, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ida_alloc_range203", scope: !9, file: !2, line: 477, type: !36, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 525, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 51)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ida_free204", scope: !9, file: !2, line: 527, type: !36, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ida_destroy205", scope: !9, file: !2, line: 555, type: !36, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !43, line: 56, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 23)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !24, line: 480, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 21)
!177 = !{i32 7, !"Dwarf Version", i32 5}
!178 = !{i32 2, !"Debug Info Version", i32 3}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 8, !"cf-protection-branch", i32 1}
!181 = !{i32 4, !"function_return_thunk_extern", i32 1}
!182 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!183 = !{i32 1, !"Code Model", i32 2}
!184 = !{i32 1, !"override-stack-alignment", i32 8}
!185 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!186 = distinct !DISubprogram(name: "idr_alloc_u32", scope: !2, file: !2, line: 33, type: !187, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !199)
!187 = !DISubroutineType(types: !188)
!188 = !{!37, !189, !36, !196, !126, !34}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !191, line: 19, size: 192, elements: !192)
!191 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!192 = !{!193, !194, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !190, file: !191, line: 20, baseType: !53, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !190, file: !191, line: 21, baseType: !13, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !190, file: !191, line: 22, baseType: !13, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !85, line: 21, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !87, line: 27, baseType: !13)
!199 = !{!200, !201, !202, !203, !204, !205, !212, !214, !215, !216, !219}
!200 = !DILocalVariable(name: "idr", arg: 1, scope: !186, file: !2, line: 33, type: !189)
!201 = !DILocalVariable(name: "ptr", arg: 2, scope: !186, file: !2, line: 33, type: !36)
!202 = !DILocalVariable(name: "nextid", arg: 3, scope: !186, file: !2, line: 33, type: !196)
!203 = !DILocalVariable(name: "max", arg: 4, scope: !186, file: !2, line: 34, type: !126)
!204 = !DILocalVariable(name: "gfp", arg: 5, scope: !186, file: !2, line: 34, type: !34)
!205 = !DILocalVariable(name: "iter", scope: !186, file: !2, line: 36, type: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "radix_tree_iter", file: !12, line: 106, size: 256, elements: !207)
!207 = !{!208, !209, !210, !211}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !206, file: !12, line: 107, baseType: !126, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next_index", scope: !206, file: !12, line: 108, baseType: !126, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !206, file: !12, line: 109, baseType: !126, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !206, file: !12, line: 110, baseType: !41, size: 64, offset: 192)
!212 = !DILocalVariable(name: "slot", scope: !186, file: !2, line: 37, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!214 = !DILocalVariable(name: "base", scope: !186, file: !2, line: 38, type: !13)
!215 = !DILocalVariable(name: "id", scope: !186, file: !2, line: 39, type: !13)
!216 = !DILocalVariable(name: "__ret_warn_on", scope: !217, file: !2, line: 41, type: !37)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 41, column: 6)
!218 = distinct !DILexicalBlock(scope: !186, file: !2, line: 41, column: 6)
!219 = !DILocalVariable(name: "__flags", scope: !220, file: !2, line: 41, type: !37)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 41, column: 6)
!221 = distinct !DILexicalBlock(scope: !217, file: !2, line: 41, column: 6)
!222 = !DILocation(line: 33, column: 31, scope: !186)
!223 = !DILocation(line: 33, column: 42, scope: !186)
!224 = !DILocation(line: 33, column: 52, scope: !186)
!225 = !DILocation(line: 34, column: 18, scope: !186)
!226 = !DILocation(line: 34, column: 29, scope: !186)
!227 = !DILocation(line: 36, column: 2, scope: !186)
!228 = !DILocation(line: 36, column: 25, scope: !186)
!229 = !DILocation(line: 37, column: 2, scope: !186)
!230 = !DILocation(line: 37, column: 15, scope: !186)
!231 = !DILocation(line: 38, column: 2, scope: !186)
!232 = !DILocation(line: 38, column: 15, scope: !186)
!233 = !DILocation(line: 38, column: 22, scope: !186)
!234 = !DILocation(line: 38, column: 27, scope: !186)
!235 = !DILocation(line: 39, column: 2, scope: !186)
!236 = !DILocation(line: 39, column: 15, scope: !186)
!237 = !DILocation(line: 39, column: 21, scope: !186)
!238 = !DILocation(line: 39, column: 20, scope: !186)
!239 = !DILocation(line: 41, column: 6, scope: !217)
!240 = !DILocation(line: 41, column: 6, scope: !221)
!241 = !DILocation(line: 41, column: 6, scope: !220)
!242 = !DILocation(line: 41, column: 6, scope: !243)
!243 = distinct !DILexicalBlock(scope: !220, file: !2, line: 41, column: 6)
!244 = !DILocation(line: 41, column: 6, scope: !245)
!245 = distinct !DILexicalBlock(scope: !220, file: !2, line: 41, column: 6)
!246 = !{i64 2152122364, i64 2152122393, i64 2152122439, i64 2152122497, i64 2152122551, i64 2152122605, i64 2152122660, i64 2152122691, i64 2152122999, i64 2152123005, i64 2152123052, i64 2152123075, i64 2152123101}
!247 = !DILocation(line: 41, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !220, file: !2, line: 41, column: 6)
!249 = !DILocation(line: 41, column: 6, scope: !218)
!250 = !DILocation(line: 41, column: 6, scope: !186)
!251 = !DILocation(line: 42, column: 3, scope: !218)
!252 = !DILocation(line: 42, column: 8, scope: !218)
!253 = !DILocation(line: 42, column: 15, scope: !218)
!254 = !DILocation(line: 42, column: 24, scope: !218)
!255 = !DILocation(line: 44, column: 8, scope: !186)
!256 = !DILocation(line: 44, column: 13, scope: !186)
!257 = !DILocation(line: 44, column: 11, scope: !186)
!258 = !DILocation(line: 44, column: 7, scope: !186)
!259 = !DILocation(line: 44, column: 25, scope: !186)
!260 = !DILocation(line: 44, column: 30, scope: !186)
!261 = !DILocation(line: 44, column: 28, scope: !186)
!262 = !DILocation(line: 44, column: 5, scope: !186)
!263 = !DILocation(line: 45, column: 30, scope: !186)
!264 = !DILocation(line: 45, column: 2, scope: !186)
!265 = !DILocation(line: 46, column: 23, scope: !186)
!266 = !DILocation(line: 46, column: 28, scope: !186)
!267 = !DILocation(line: 46, column: 43, scope: !186)
!268 = !DILocation(line: 46, column: 48, scope: !186)
!269 = !DILocation(line: 46, column: 54, scope: !186)
!270 = !DILocation(line: 46, column: 52, scope: !186)
!271 = !DILocation(line: 46, column: 9, scope: !186)
!272 = !DILocation(line: 46, column: 7, scope: !186)
!273 = !DILocation(line: 47, column: 13, scope: !274)
!274 = distinct !DILexicalBlock(scope: !186, file: !2, line: 47, column: 6)
!275 = !DILocation(line: 47, column: 6, scope: !274)
!276 = !DILocation(line: 47, column: 6, scope: !186)
!277 = !DILocation(line: 48, column: 18, scope: !274)
!278 = !DILocation(line: 48, column: 10, scope: !274)
!279 = !DILocation(line: 48, column: 3, scope: !274)
!280 = !DILocation(line: 50, column: 17, scope: !186)
!281 = !DILocation(line: 50, column: 25, scope: !186)
!282 = !DILocation(line: 50, column: 23, scope: !186)
!283 = !DILocation(line: 50, column: 12, scope: !186)
!284 = !DILocation(line: 50, column: 3, scope: !186)
!285 = !DILocation(line: 50, column: 10, scope: !186)
!286 = !DILocation(line: 52, column: 27, scope: !186)
!287 = !DILocation(line: 52, column: 32, scope: !186)
!288 = !DILocation(line: 52, column: 47, scope: !186)
!289 = !DILocation(line: 52, column: 53, scope: !186)
!290 = !DILocation(line: 52, column: 2, scope: !186)
!291 = !DILocation(line: 53, column: 29, scope: !186)
!292 = !DILocation(line: 53, column: 34, scope: !186)
!293 = !DILocation(line: 53, column: 2, scope: !186)
!294 = !DILocation(line: 55, column: 2, scope: !186)
!295 = !DILocation(line: 56, column: 1, scope: !186)
!296 = distinct !DISubprogram(name: "radix_tree_iter_init", scope: !12, file: !12, line: 281, type: !297, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !300)
!297 = !DISubroutineType(types: !298)
!298 = !{!213, !299, !126}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!300 = !{!301, !302}
!301 = !DILocalVariable(name: "iter", arg: 1, scope: !296, file: !12, line: 281, type: !299)
!302 = !DILocalVariable(name: "start", arg: 2, scope: !296, file: !12, line: 281, type: !126)
!303 = !DILocation(line: 281, column: 46, scope: !296)
!304 = !DILocation(line: 281, column: 66, scope: !296)
!305 = !DILocation(line: 291, column: 2, scope: !296)
!306 = !DILocation(line: 291, column: 8, scope: !296)
!307 = !DILocation(line: 291, column: 14, scope: !296)
!308 = !DILocation(line: 292, column: 21, scope: !296)
!309 = !DILocation(line: 292, column: 2, scope: !296)
!310 = !DILocation(line: 292, column: 8, scope: !296)
!311 = !DILocation(line: 292, column: 19, scope: !296)
!312 = !DILocation(line: 293, column: 2, scope: !296)
!313 = !DISubprogram(name: "idr_get_free", scope: !12, file: !12, line: 263, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!213, !52, !299, !34, !126}
!316 = distinct !DISubprogram(name: "IS_ERR", scope: !317, file: !317, line: 59, type: !318, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !324)
!317 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !322}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !35, line: 35, baseType: !321)
!321 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!324 = !{!325}
!325 = !DILocalVariable(name: "ptr", arg: 1, scope: !316, file: !317, line: 59, type: !322)
!326 = !DILocation(line: 59, column: 60, scope: !316)
!327 = !DILocation(line: 61, column: 9, scope: !316)
!328 = !DILocation(line: 61, column: 2, scope: !316)
!329 = distinct !DISubprogram(name: "PTR_ERR", scope: !317, file: !317, line: 49, type: !330, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!135, !322}
!332 = !{!333}
!333 = !DILocalVariable(name: "ptr", arg: 1, scope: !329, file: !317, line: 49, type: !322)
!334 = !DILocation(line: 49, column: 61, scope: !329)
!335 = !DILocation(line: 51, column: 16, scope: !329)
!336 = !DILocation(line: 51, column: 9, scope: !329)
!337 = !DILocation(line: 51, column: 2, scope: !329)
!338 = !DISubprogram(name: "radix_tree_iter_replace", scope: !12, file: !12, line: 228, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !52, !341, !213, !36}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!343 = !DISubprogram(name: "radix_tree_iter_tag_clear", scope: !12, file: !12, line: 248, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !52, !341, !13}
!346 = distinct !DISubprogram(name: "idr_alloc", scope: !2, file: !2, line: 79, type: !347, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!37, !189, !36, !37, !37, !34}
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !360}
!350 = !DILocalVariable(name: "idr", arg: 1, scope: !346, file: !2, line: 79, type: !189)
!351 = !DILocalVariable(name: "ptr", arg: 2, scope: !346, file: !2, line: 79, type: !36)
!352 = !DILocalVariable(name: "start", arg: 3, scope: !346, file: !2, line: 79, type: !37)
!353 = !DILocalVariable(name: "end", arg: 4, scope: !346, file: !2, line: 79, type: !37)
!354 = !DILocalVariable(name: "gfp", arg: 5, scope: !346, file: !2, line: 79, type: !34)
!355 = !DILocalVariable(name: "id", scope: !346, file: !2, line: 81, type: !197)
!356 = !DILocalVariable(name: "ret", scope: !346, file: !2, line: 82, type: !37)
!357 = !DILocalVariable(name: "__ret_warn_on", scope: !358, file: !2, line: 84, type: !37)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 84, column: 6)
!359 = distinct !DILexicalBlock(scope: !346, file: !2, line: 84, column: 6)
!360 = !DILocalVariable(name: "__flags", scope: !361, file: !2, line: 84, type: !37)
!361 = distinct !DILexicalBlock(scope: !362, file: !2, line: 84, column: 6)
!362 = distinct !DILexicalBlock(scope: !358, file: !2, line: 84, column: 6)
!363 = !DILocation(line: 79, column: 27, scope: !346)
!364 = !DILocation(line: 79, column: 38, scope: !346)
!365 = !DILocation(line: 79, column: 47, scope: !346)
!366 = !DILocation(line: 79, column: 58, scope: !346)
!367 = !DILocation(line: 79, column: 69, scope: !346)
!368 = !DILocation(line: 81, column: 2, scope: !346)
!369 = !DILocation(line: 81, column: 6, scope: !346)
!370 = !DILocation(line: 81, column: 11, scope: !346)
!371 = !DILocation(line: 82, column: 2, scope: !346)
!372 = !DILocation(line: 82, column: 6, scope: !346)
!373 = !DILocation(line: 84, column: 6, scope: !358)
!374 = !DILocation(line: 84, column: 6, scope: !362)
!375 = !DILocation(line: 84, column: 6, scope: !361)
!376 = !DILocation(line: 84, column: 6, scope: !377)
!377 = distinct !DILexicalBlock(scope: !361, file: !2, line: 84, column: 6)
!378 = !DILocation(line: 84, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !361, file: !2, line: 84, column: 6)
!380 = !{i64 2152130507, i64 2152130536, i64 2152130582, i64 2152130640, i64 2152130694, i64 2152130748, i64 2152130803, i64 2152130834, i64 2152131142, i64 2152131148, i64 2152131195, i64 2152131218, i64 2152131244}
!381 = !DILocation(line: 84, column: 6, scope: !382)
!382 = distinct !DILexicalBlock(scope: !361, file: !2, line: 84, column: 6)
!383 = !DILocation(line: 84, column: 6, scope: !359)
!384 = !DILocation(line: 84, column: 6, scope: !346)
!385 = !DILocation(line: 85, column: 3, scope: !359)
!386 = !DILocation(line: 87, column: 22, scope: !346)
!387 = !DILocation(line: 87, column: 27, scope: !346)
!388 = !DILocation(line: 87, column: 37, scope: !346)
!389 = !DILocation(line: 87, column: 41, scope: !346)
!390 = !DILocation(line: 87, column: 47, scope: !346)
!391 = !DILocation(line: 87, column: 51, scope: !346)
!392 = !DILocation(line: 87, column: 66, scope: !346)
!393 = !DILocation(line: 87, column: 8, scope: !346)
!394 = !DILocation(line: 87, column: 6, scope: !346)
!395 = !DILocation(line: 88, column: 6, scope: !396)
!396 = distinct !DILexicalBlock(scope: !346, file: !2, line: 88, column: 6)
!397 = !DILocation(line: 88, column: 6, scope: !346)
!398 = !DILocation(line: 89, column: 10, scope: !396)
!399 = !DILocation(line: 89, column: 3, scope: !396)
!400 = !DILocation(line: 91, column: 9, scope: !346)
!401 = !DILocation(line: 91, column: 2, scope: !346)
!402 = !DILocation(line: 92, column: 1, scope: !346)
!403 = distinct !DISubprogram(name: "idr_alloc_cyclic", scope: !2, file: !2, line: 117, type: !347, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !404)
!404 = !{!405, !406, !407, !408, !409, !410, !411, !412}
!405 = !DILocalVariable(name: "idr", arg: 1, scope: !403, file: !2, line: 117, type: !189)
!406 = !DILocalVariable(name: "ptr", arg: 2, scope: !403, file: !2, line: 117, type: !36)
!407 = !DILocalVariable(name: "start", arg: 3, scope: !403, file: !2, line: 117, type: !37)
!408 = !DILocalVariable(name: "end", arg: 4, scope: !403, file: !2, line: 117, type: !37)
!409 = !DILocalVariable(name: "gfp", arg: 5, scope: !403, file: !2, line: 117, type: !34)
!410 = !DILocalVariable(name: "id", scope: !403, file: !2, line: 119, type: !197)
!411 = !DILocalVariable(name: "err", scope: !403, file: !2, line: 120, type: !37)
!412 = !DILocalVariable(name: "max", scope: !403, file: !2, line: 120, type: !37)
!413 = !DILocation(line: 117, column: 34, scope: !403)
!414 = !DILocation(line: 117, column: 45, scope: !403)
!415 = !DILocation(line: 117, column: 54, scope: !403)
!416 = !DILocation(line: 117, column: 65, scope: !403)
!417 = !DILocation(line: 117, column: 76, scope: !403)
!418 = !DILocation(line: 119, column: 2, scope: !403)
!419 = !DILocation(line: 119, column: 6, scope: !403)
!420 = !DILocation(line: 119, column: 11, scope: !403)
!421 = !DILocation(line: 119, column: 16, scope: !403)
!422 = !DILocation(line: 120, column: 2, scope: !403)
!423 = !DILocation(line: 120, column: 6, scope: !403)
!424 = !DILocation(line: 120, column: 11, scope: !403)
!425 = !DILocation(line: 120, column: 17, scope: !403)
!426 = !DILocation(line: 120, column: 21, scope: !403)
!427 = !DILocation(line: 120, column: 27, scope: !403)
!428 = !DILocation(line: 120, column: 31, scope: !403)
!429 = !DILocation(line: 122, column: 11, scope: !430)
!430 = distinct !DILexicalBlock(scope: !403, file: !2, line: 122, column: 6)
!431 = !DILocation(line: 122, column: 16, scope: !430)
!432 = !DILocation(line: 122, column: 14, scope: !430)
!433 = !DILocation(line: 122, column: 6, scope: !403)
!434 = !DILocation(line: 123, column: 8, scope: !430)
!435 = !DILocation(line: 123, column: 6, scope: !430)
!436 = !DILocation(line: 123, column: 3, scope: !430)
!437 = !DILocation(line: 125, column: 22, scope: !403)
!438 = !DILocation(line: 125, column: 27, scope: !403)
!439 = !DILocation(line: 125, column: 37, scope: !403)
!440 = !DILocation(line: 125, column: 42, scope: !403)
!441 = !DILocation(line: 125, column: 8, scope: !403)
!442 = !DILocation(line: 125, column: 6, scope: !403)
!443 = !DILocation(line: 126, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !403, file: !2, line: 126, column: 6)
!445 = !DILocation(line: 126, column: 11, scope: !444)
!446 = !DILocation(line: 126, column: 23, scope: !444)
!447 = !DILocation(line: 126, column: 27, scope: !444)
!448 = !DILocation(line: 126, column: 32, scope: !444)
!449 = !DILocation(line: 126, column: 30, scope: !444)
!450 = !DILocation(line: 126, column: 6, scope: !403)
!451 = !DILocation(line: 127, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !2, line: 126, column: 40)
!453 = !DILocation(line: 127, column: 6, scope: !452)
!454 = !DILocation(line: 128, column: 23, scope: !452)
!455 = !DILocation(line: 128, column: 28, scope: !452)
!456 = !DILocation(line: 128, column: 38, scope: !452)
!457 = !DILocation(line: 128, column: 43, scope: !452)
!458 = !DILocation(line: 128, column: 9, scope: !452)
!459 = !DILocation(line: 128, column: 7, scope: !452)
!460 = !DILocation(line: 129, column: 2, scope: !452)
!461 = !DILocation(line: 130, column: 6, scope: !462)
!462 = distinct !DILexicalBlock(scope: !403, file: !2, line: 130, column: 6)
!463 = !DILocation(line: 130, column: 6, scope: !403)
!464 = !DILocation(line: 131, column: 10, scope: !462)
!465 = !DILocation(line: 131, column: 3, scope: !462)
!466 = !DILocation(line: 133, column: 18, scope: !403)
!467 = !DILocation(line: 133, column: 21, scope: !403)
!468 = !DILocation(line: 133, column: 2, scope: !403)
!469 = !DILocation(line: 133, column: 7, scope: !403)
!470 = !DILocation(line: 133, column: 16, scope: !403)
!471 = !DILocation(line: 134, column: 9, scope: !403)
!472 = !DILocation(line: 134, column: 2, scope: !403)
!473 = !DILocation(line: 135, column: 1, scope: !403)
!474 = distinct !DISubprogram(name: "idr_remove", scope: !2, file: !2, line: 152, type: !475, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{!36, !189, !126}
!477 = !{!478, !479}
!478 = !DILocalVariable(name: "idr", arg: 1, scope: !474, file: !2, line: 152, type: !189)
!479 = !DILocalVariable(name: "id", arg: 2, scope: !474, file: !2, line: 152, type: !126)
!480 = !DILocation(line: 152, column: 30, scope: !474)
!481 = !DILocation(line: 152, column: 49, scope: !474)
!482 = !DILocation(line: 154, column: 33, scope: !474)
!483 = !DILocation(line: 154, column: 38, scope: !474)
!484 = !DILocation(line: 154, column: 46, scope: !474)
!485 = !DILocation(line: 154, column: 51, scope: !474)
!486 = !DILocation(line: 154, column: 56, scope: !474)
!487 = !DILocation(line: 154, column: 49, scope: !474)
!488 = !DILocation(line: 154, column: 9, scope: !474)
!489 = !DILocation(line: 154, column: 2, scope: !474)
!490 = !DISubprogram(name: "radix_tree_delete_item", scope: !12, file: !12, line: 234, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!491 = !DISubroutineType(types: !492)
!492 = !{!36, !52, !126, !36}
!493 = distinct !DISubprogram(name: "idr_find", scope: !2, file: !2, line: 172, type: !494, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !498)
!494 = !DISubroutineType(types: !495)
!495 = !{!36, !496, !126}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!498 = !{!499, !500}
!499 = !DILocalVariable(name: "idr", arg: 1, scope: !493, file: !2, line: 172, type: !496)
!500 = !DILocalVariable(name: "id", arg: 2, scope: !493, file: !2, line: 172, type: !126)
!501 = !DILocation(line: 172, column: 34, scope: !493)
!502 = !DILocation(line: 172, column: 53, scope: !493)
!503 = !DILocation(line: 174, column: 28, scope: !493)
!504 = !DILocation(line: 174, column: 33, scope: !493)
!505 = !DILocation(line: 174, column: 41, scope: !493)
!506 = !DILocation(line: 174, column: 46, scope: !493)
!507 = !DILocation(line: 174, column: 51, scope: !493)
!508 = !DILocation(line: 174, column: 44, scope: !493)
!509 = !DILocation(line: 174, column: 9, scope: !493)
!510 = !DILocation(line: 174, column: 2, scope: !493)
!511 = !DISubprogram(name: "radix_tree_lookup", scope: !12, file: !12, line: 223, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!512 = !DISubroutineType(types: !513)
!513 = !{!36, !514, !126}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!516 = distinct !DISubprogram(name: "idr_for_each", scope: !2, file: !2, line: 195, type: !517, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !522)
!517 = !DISubroutineType(types: !518)
!518 = !{!37, !496, !519, !36}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!37, !37, !36, !36}
!522 = !{!523, !524, !525, !526, !527, !528, !529, !533, !534, !537, !540}
!523 = !DILocalVariable(name: "idr", arg: 1, scope: !516, file: !2, line: 195, type: !496)
!524 = !DILocalVariable(name: "fn", arg: 2, scope: !516, file: !2, line: 196, type: !519)
!525 = !DILocalVariable(name: "data", arg: 3, scope: !516, file: !2, line: 196, type: !36)
!526 = !DILocalVariable(name: "iter", scope: !516, file: !2, line: 198, type: !206)
!527 = !DILocalVariable(name: "slot", scope: !516, file: !2, line: 199, type: !213)
!528 = !DILocalVariable(name: "base", scope: !516, file: !2, line: 200, type: !37)
!529 = !DILocalVariable(name: "ret", scope: !530, file: !2, line: 203, type: !37)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 202, column: 57)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 202, column: 2)
!532 = distinct !DILexicalBlock(scope: !516, file: !2, line: 202, column: 2)
!533 = !DILocalVariable(name: "id", scope: !530, file: !2, line: 204, type: !126)
!534 = !DILocalVariable(name: "__ret_warn_on", scope: !535, file: !2, line: 206, type: !37)
!535 = distinct !DILexicalBlock(scope: !536, file: !2, line: 206, column: 7)
!536 = distinct !DILexicalBlock(scope: !530, file: !2, line: 206, column: 7)
!537 = !DILocalVariable(name: "__flags", scope: !538, file: !2, line: 206, type: !37)
!538 = distinct !DILexicalBlock(scope: !539, file: !2, line: 206, column: 7)
!539 = distinct !DILexicalBlock(scope: !535, file: !2, line: 206, column: 7)
!540 = !DILocalVariable(name: "__UNIQUE_ID_rcu195", scope: !541, file: !2, line: 208, type: !36)
!541 = distinct !DILexicalBlock(scope: !530, file: !2, line: 208, column: 16)
!542 = !DILocation(line: 195, column: 36, scope: !516)
!543 = !DILocation(line: 196, column: 9, scope: !516)
!544 = !DILocation(line: 196, column: 49, scope: !516)
!545 = !DILocation(line: 198, column: 2, scope: !516)
!546 = !DILocation(line: 198, column: 25, scope: !516)
!547 = !DILocation(line: 199, column: 2, scope: !516)
!548 = !DILocation(line: 199, column: 15, scope: !516)
!549 = !DILocation(line: 200, column: 2, scope: !516)
!550 = !DILocation(line: 200, column: 6, scope: !516)
!551 = !DILocation(line: 200, column: 13, scope: !516)
!552 = !DILocation(line: 200, column: 18, scope: !516)
!553 = !DILocation(line: 202, column: 2, scope: !532)
!554 = !DILocation(line: 202, column: 2, scope: !531)
!555 = !DILocation(line: 203, column: 3, scope: !530)
!556 = !DILocation(line: 203, column: 7, scope: !530)
!557 = !DILocation(line: 204, column: 3, scope: !530)
!558 = !DILocation(line: 204, column: 17, scope: !530)
!559 = !DILocation(line: 204, column: 27, scope: !530)
!560 = !DILocation(line: 204, column: 35, scope: !530)
!561 = !DILocation(line: 204, column: 33, scope: !530)
!562 = !DILocation(line: 206, column: 7, scope: !535)
!563 = !DILocation(line: 206, column: 7, scope: !539)
!564 = !DILocation(line: 206, column: 7, scope: !538)
!565 = !DILocation(line: 206, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !538, file: !2, line: 206, column: 7)
!567 = !DILocation(line: 206, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !538, file: !2, line: 206, column: 7)
!569 = !{i64 2152138826, i64 2152138855, i64 2152138901, i64 2152138959, i64 2152139013, i64 2152139067, i64 2152139122, i64 2152139153, i64 2152139461, i64 2152139467, i64 2152139514, i64 2152139537, i64 2152139563}
!570 = !DILocation(line: 206, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !538, file: !2, line: 206, column: 7)
!572 = !DILocation(line: 206, column: 7, scope: !536)
!573 = !DILocation(line: 206, column: 7, scope: !530)
!574 = !DILocation(line: 207, column: 4, scope: !536)
!575 = !DILocation(line: 208, column: 9, scope: !530)
!576 = !DILocation(line: 208, column: 12, scope: !530)
!577 = !DILocation(line: 208, column: 16, scope: !541)
!578 = !DILocation(line: 208, column: 16, scope: !579)
!579 = distinct !DILexicalBlock(scope: !541, file: !2, line: 208, column: 16)
!580 = !DILocation(line: 208, column: 16, scope: !581)
!581 = distinct !DILexicalBlock(scope: !579, file: !2, line: 208, column: 16)
!582 = !DILocation(line: 208, column: 16, scope: !530)
!583 = !DILocation(line: 208, column: 44, scope: !530)
!584 = !DILocation(line: 208, column: 7, scope: !530)
!585 = !DILocation(line: 209, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !530, file: !2, line: 209, column: 7)
!587 = !DILocation(line: 209, column: 7, scope: !530)
!588 = !DILocation(line: 210, column: 11, scope: !586)
!589 = !DILocation(line: 210, column: 4, scope: !586)
!590 = !DILocation(line: 211, column: 2, scope: !531)
!591 = !DILocation(line: 211, column: 2, scope: !530)
!592 = distinct !{!592, !553, !593, !594, !595}
!593 = !DILocation(line: 211, column: 2, scope: !532)
!594 = !{!"llvm.loop.mustprogress"}
!595 = !{!"llvm.loop.unroll.disable"}
!596 = !DILocation(line: 213, column: 2, scope: !516)
!597 = !DILocation(line: 214, column: 1, scope: !516)
!598 = !DISubprogram(name: "radix_tree_next_chunk", scope: !12, file: !12, line: 309, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DISubroutineType(types: !600)
!600 = !{!213, !514, !299, !13}
!601 = distinct !DISubprogram(name: "radix_tree_next_slot", scope: !12, file: !12, line: 397, type: !602, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{!213, !213, !299, !13}
!604 = !{!605, !606, !607, !608, !613, !615}
!605 = !DILocalVariable(name: "slot", arg: 1, scope: !601, file: !12, line: 397, type: !213)
!606 = !DILocalVariable(name: "iter", arg: 2, scope: !601, file: !12, line: 398, type: !299)
!607 = !DILocalVariable(name: "flags", arg: 3, scope: !601, file: !12, line: 398, type: !13)
!608 = !DILocalVariable(name: "offset", scope: !609, file: !12, line: 410, type: !13)
!609 = distinct !DILexicalBlock(scope: !610, file: !12, line: 409, column: 42)
!610 = distinct !DILexicalBlock(scope: !611, file: !12, line: 409, column: 7)
!611 = distinct !DILexicalBlock(scope: !612, file: !12, line: 400, column: 38)
!612 = distinct !DILexicalBlock(scope: !601, file: !12, line: 400, column: 6)
!613 = !DILocalVariable(name: "count", scope: !614, file: !12, line: 418, type: !135)
!614 = distinct !DILexicalBlock(scope: !612, file: !12, line: 417, column: 9)
!615 = !DILabel(scope: !601, name: "found", file: !12, line: 435)
!616 = !DILocation(line: 397, column: 71, scope: !601)
!617 = !DILocation(line: 398, column: 29, scope: !601)
!618 = !DILocation(line: 398, column: 44, scope: !601)
!619 = !DILocation(line: 400, column: 6, scope: !612)
!620 = !DILocation(line: 400, column: 12, scope: !612)
!621 = !DILocation(line: 400, column: 6, scope: !601)
!622 = !DILocation(line: 401, column: 3, scope: !611)
!623 = !DILocation(line: 401, column: 9, scope: !611)
!624 = !DILocation(line: 401, column: 14, scope: !611)
!625 = !DILocation(line: 402, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !611, file: !12, line: 402, column: 7)
!627 = !DILocation(line: 402, column: 7, scope: !611)
!628 = !DILocation(line: 403, column: 4, scope: !626)
!629 = !DILocation(line: 404, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !611, file: !12, line: 404, column: 7)
!631 = !DILocation(line: 404, column: 7, scope: !611)
!632 = !DILocation(line: 405, column: 40, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !12, line: 404, column: 33)
!634 = !DILocation(line: 405, column: 18, scope: !633)
!635 = !DILocation(line: 405, column: 4, scope: !633)
!636 = !DILocation(line: 405, column: 10, scope: !633)
!637 = !DILocation(line: 405, column: 16, scope: !633)
!638 = !DILocation(line: 406, column: 8, scope: !633)
!639 = !DILocation(line: 407, column: 4, scope: !633)
!640 = !DILocation(line: 409, column: 9, scope: !610)
!641 = !DILocation(line: 409, column: 15, scope: !610)
!642 = !DILocation(line: 409, column: 7, scope: !611)
!643 = !DILocation(line: 410, column: 4, scope: !609)
!644 = !DILocation(line: 410, column: 13, scope: !609)
!645 = !DILocation(line: 410, column: 22, scope: !609)
!646 = !DILocation(line: 412, column: 25, scope: !609)
!647 = !DILocation(line: 412, column: 4, scope: !609)
!648 = !DILocation(line: 412, column: 10, scope: !609)
!649 = !DILocation(line: 412, column: 15, scope: !609)
!650 = !DILocation(line: 413, column: 40, scope: !609)
!651 = !DILocation(line: 413, column: 46, scope: !609)
!652 = !DILocation(line: 413, column: 18, scope: !609)
!653 = !DILocation(line: 413, column: 4, scope: !609)
!654 = !DILocation(line: 413, column: 10, scope: !609)
!655 = !DILocation(line: 413, column: 16, scope: !609)
!656 = !DILocation(line: 414, column: 12, scope: !609)
!657 = !DILocation(line: 414, column: 9, scope: !609)
!658 = !DILocation(line: 416, column: 3, scope: !610)
!659 = !DILocation(line: 417, column: 2, scope: !611)
!660 = !DILocation(line: 418, column: 3, scope: !614)
!661 = !DILocation(line: 418, column: 8, scope: !614)
!662 = !DILocation(line: 418, column: 38, scope: !614)
!663 = !DILocation(line: 418, column: 16, scope: !614)
!664 = !DILocation(line: 420, column: 3, scope: !614)
!665 = !DILocation(line: 420, column: 10, scope: !614)
!666 = !DILocation(line: 420, column: 18, scope: !614)
!667 = !DILocation(line: 421, column: 8, scope: !668)
!668 = distinct !DILexicalBlock(scope: !614, file: !12, line: 420, column: 23)
!669 = !DILocation(line: 422, column: 40, scope: !668)
!670 = !DILocation(line: 422, column: 18, scope: !668)
!671 = !DILocation(line: 422, column: 4, scope: !668)
!672 = !DILocation(line: 422, column: 10, scope: !668)
!673 = !DILocation(line: 422, column: 16, scope: !668)
!674 = !DILocation(line: 424, column: 8, scope: !675)
!675 = distinct !DILexicalBlock(scope: !668, file: !12, line: 424, column: 8)
!676 = !DILocation(line: 424, column: 8, scope: !668)
!677 = !DILocation(line: 425, column: 5, scope: !675)
!678 = !DILocation(line: 426, column: 8, scope: !679)
!679 = distinct !DILexicalBlock(scope: !668, file: !12, line: 426, column: 8)
!680 = !DILocation(line: 426, column: 14, scope: !679)
!681 = !DILocation(line: 426, column: 8, scope: !668)
!682 = !DILocation(line: 428, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !12, line: 426, column: 40)
!684 = !DILocation(line: 428, column: 11, scope: !683)
!685 = !DILocation(line: 428, column: 22, scope: !683)
!686 = !DILocation(line: 429, column: 5, scope: !683)
!687 = distinct !{!687, !664, !688, !594, !595}
!688 = !DILocation(line: 431, column: 3, scope: !614)
!689 = !DILocation(line: 432, column: 2, scope: !612)
!690 = !DILocation(line: 433, column: 2, scope: !601)
!691 = !DILocation(line: 435, column: 2, scope: !601)
!692 = !DILocation(line: 436, column: 9, scope: !601)
!693 = !DILocation(line: 436, column: 2, scope: !601)
!694 = !DILocation(line: 437, column: 1, scope: !601)
!695 = distinct !DISubprogram(name: "idr_get_next_ul", scope: !2, file: !2, line: 227, type: !696, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!36, !189, !136}
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706}
!699 = !DILocalVariable(name: "idr", arg: 1, scope: !695, file: !2, line: 227, type: !189)
!700 = !DILocalVariable(name: "nextid", arg: 2, scope: !695, file: !2, line: 227, type: !136)
!701 = !DILocalVariable(name: "iter", scope: !695, file: !2, line: 229, type: !206)
!702 = !DILocalVariable(name: "slot", scope: !695, file: !2, line: 230, type: !213)
!703 = !DILocalVariable(name: "entry", scope: !695, file: !2, line: 231, type: !36)
!704 = !DILocalVariable(name: "base", scope: !695, file: !2, line: 232, type: !126)
!705 = !DILocalVariable(name: "id", scope: !695, file: !2, line: 233, type: !126)
!706 = !DILocalVariable(name: "__UNIQUE_ID_rcu198", scope: !707, file: !2, line: 237, type: !36)
!707 = distinct !DILexicalBlock(scope: !708, file: !2, line: 237, column: 11)
!708 = distinct !DILexicalBlock(scope: !709, file: !2, line: 236, column: 58)
!709 = distinct !DILexicalBlock(scope: !710, file: !2, line: 236, column: 2)
!710 = distinct !DILexicalBlock(scope: !695, file: !2, line: 236, column: 2)
!711 = !DILocation(line: 227, column: 35, scope: !695)
!712 = !DILocation(line: 227, column: 55, scope: !695)
!713 = !DILocation(line: 229, column: 2, scope: !695)
!714 = !DILocation(line: 229, column: 25, scope: !695)
!715 = !DILocation(line: 230, column: 2, scope: !695)
!716 = !DILocation(line: 230, column: 15, scope: !695)
!717 = !DILocation(line: 231, column: 2, scope: !695)
!718 = !DILocation(line: 231, column: 8, scope: !695)
!719 = !DILocation(line: 232, column: 2, scope: !695)
!720 = !DILocation(line: 232, column: 16, scope: !695)
!721 = !DILocation(line: 232, column: 23, scope: !695)
!722 = !DILocation(line: 232, column: 28, scope: !695)
!723 = !DILocation(line: 233, column: 2, scope: !695)
!724 = !DILocation(line: 233, column: 16, scope: !695)
!725 = !DILocation(line: 233, column: 22, scope: !695)
!726 = !DILocation(line: 233, column: 21, scope: !695)
!727 = !DILocation(line: 235, column: 8, scope: !695)
!728 = !DILocation(line: 235, column: 13, scope: !695)
!729 = !DILocation(line: 235, column: 11, scope: !695)
!730 = !DILocation(line: 235, column: 7, scope: !695)
!731 = !DILocation(line: 235, column: 25, scope: !695)
!732 = !DILocation(line: 235, column: 30, scope: !695)
!733 = !DILocation(line: 235, column: 28, scope: !695)
!734 = !DILocation(line: 235, column: 5, scope: !695)
!735 = !DILocation(line: 236, column: 2, scope: !710)
!736 = !DILocation(line: 236, column: 2, scope: !709)
!737 = !DILocation(line: 237, column: 11, scope: !707)
!738 = !DILocation(line: 237, column: 11, scope: !739)
!739 = distinct !DILexicalBlock(scope: !707, file: !2, line: 237, column: 11)
!740 = !DILocation(line: 237, column: 11, scope: !741)
!741 = distinct !DILexicalBlock(scope: !739, file: !2, line: 237, column: 11)
!742 = !DILocation(line: 237, column: 11, scope: !708)
!743 = !DILocation(line: 237, column: 9, scope: !708)
!744 = !DILocation(line: 238, column: 8, scope: !745)
!745 = distinct !DILexicalBlock(scope: !708, file: !2, line: 238, column: 7)
!746 = !DILocation(line: 238, column: 7, scope: !708)
!747 = !DILocation(line: 239, column: 4, scope: !745)
!748 = !DILocation(line: 240, column: 23, scope: !749)
!749 = distinct !DILexicalBlock(scope: !708, file: !2, line: 240, column: 7)
!750 = !DILocation(line: 240, column: 8, scope: !749)
!751 = !DILocation(line: 240, column: 7, scope: !708)
!752 = !DILocation(line: 241, column: 4, scope: !749)
!753 = !DILocation(line: 242, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !708, file: !2, line: 242, column: 7)
!755 = !DILocation(line: 242, column: 16, scope: !754)
!756 = !DILocation(line: 242, column: 21, scope: !754)
!757 = !DILocation(line: 242, column: 28, scope: !754)
!758 = !DILocation(line: 242, column: 12, scope: !754)
!759 = !DILocation(line: 242, column: 36, scope: !754)
!760 = !DILocation(line: 242, column: 52, scope: !754)
!761 = !DILocation(line: 242, column: 40, scope: !754)
!762 = !DILocation(line: 242, column: 7, scope: !708)
!763 = !DILocation(line: 243, column: 4, scope: !754)
!764 = !DILocation(line: 244, column: 10, scope: !708)
!765 = !DILocation(line: 244, column: 8, scope: !708)
!766 = !DILocation(line: 245, column: 2, scope: !708)
!767 = distinct !{!767, !735, !768, !594, !595}
!768 = !DILocation(line: 245, column: 2, scope: !710)
!769 = !DILocation(line: 246, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !695, file: !2, line: 246, column: 6)
!771 = !DILocation(line: 246, column: 6, scope: !695)
!772 = !DILocation(line: 247, column: 3, scope: !770)
!773 = !DILocation(line: 249, column: 17, scope: !695)
!774 = !DILocation(line: 249, column: 25, scope: !695)
!775 = !DILocation(line: 249, column: 23, scope: !695)
!776 = !DILocation(line: 249, column: 3, scope: !695)
!777 = !DILocation(line: 249, column: 10, scope: !695)
!778 = !DILocation(line: 250, column: 9, scope: !695)
!779 = !DILocation(line: 250, column: 2, scope: !695)
!780 = !DILocation(line: 251, column: 1, scope: !695)
!781 = distinct !DISubprogram(name: "xa_is_internal", scope: !43, file: !43, line: 169, type: !318, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !782)
!782 = !{!783}
!783 = !DILocalVariable(name: "entry", arg: 1, scope: !781, file: !43, line: 169, type: !322)
!784 = !DILocation(line: 169, column: 47, scope: !781)
!785 = !DILocation(line: 171, column: 25, scope: !781)
!786 = !DILocation(line: 171, column: 10, scope: !781)
!787 = !DILocation(line: 171, column: 31, scope: !781)
!788 = !DILocation(line: 171, column: 36, scope: !781)
!789 = !DILocation(line: 171, column: 2, scope: !781)
!790 = distinct !DISubprogram(name: "xa_is_retry", scope: !43, file: !43, line: 1295, type: !318, scopeLine: 1296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !791)
!791 = !{!792}
!792 = !DILocalVariable(name: "entry", arg: 1, scope: !790, file: !43, line: 1295, type: !322)
!793 = !DILocation(line: 1295, column: 44, scope: !790)
!794 = !DILocation(line: 1297, column: 9, scope: !790)
!795 = !DILocation(line: 1297, column: 2, scope: !790)
!796 = distinct !DISubprogram(name: "radix_tree_iter_retry", scope: !12, file: !12, line: 340, type: !797, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{!213, !299}
!799 = !{!800}
!800 = !DILocalVariable(name: "iter", arg: 1, scope: !796, file: !12, line: 340, type: !299)
!801 = !DILocation(line: 340, column: 60, scope: !796)
!802 = !DILocation(line: 342, column: 21, scope: !796)
!803 = !DILocation(line: 342, column: 27, scope: !796)
!804 = !DILocation(line: 342, column: 2, scope: !796)
!805 = !DILocation(line: 342, column: 8, scope: !796)
!806 = !DILocation(line: 342, column: 19, scope: !796)
!807 = !DILocation(line: 343, column: 2, scope: !796)
!808 = !DILocation(line: 343, column: 8, scope: !796)
!809 = !DILocation(line: 343, column: 13, scope: !796)
!810 = !DILocation(line: 344, column: 2, scope: !796)
!811 = distinct !DISubprogram(name: "idr_get_next", scope: !2, file: !2, line: 264, type: !812, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !815)
!812 = !DISubroutineType(types: !813)
!813 = !{!36, !189, !814}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!815 = !{!816, !817, !818, !819, !820, !823}
!816 = !DILocalVariable(name: "idr", arg: 1, scope: !811, file: !2, line: 264, type: !189)
!817 = !DILocalVariable(name: "nextid", arg: 2, scope: !811, file: !2, line: 264, type: !814)
!818 = !DILocalVariable(name: "id", scope: !811, file: !2, line: 266, type: !126)
!819 = !DILocalVariable(name: "entry", scope: !811, file: !2, line: 267, type: !36)
!820 = !DILocalVariable(name: "__ret_warn_on", scope: !821, file: !2, line: 269, type: !37)
!821 = distinct !DILexicalBlock(scope: !822, file: !2, line: 269, column: 6)
!822 = distinct !DILexicalBlock(scope: !811, file: !2, line: 269, column: 6)
!823 = !DILocalVariable(name: "__flags", scope: !824, file: !2, line: 269, type: !37)
!824 = distinct !DILexicalBlock(scope: !825, file: !2, line: 269, column: 6)
!825 = distinct !DILexicalBlock(scope: !821, file: !2, line: 269, column: 6)
!826 = !DILocation(line: 264, column: 32, scope: !811)
!827 = !DILocation(line: 264, column: 42, scope: !811)
!828 = !DILocation(line: 266, column: 2, scope: !811)
!829 = !DILocation(line: 266, column: 16, scope: !811)
!830 = !DILocation(line: 266, column: 22, scope: !811)
!831 = !DILocation(line: 266, column: 21, scope: !811)
!832 = !DILocation(line: 267, column: 2, scope: !811)
!833 = !DILocation(line: 267, column: 8, scope: !811)
!834 = !DILocation(line: 267, column: 32, scope: !811)
!835 = !DILocation(line: 267, column: 16, scope: !811)
!836 = !DILocation(line: 269, column: 6, scope: !821)
!837 = !DILocation(line: 269, column: 6, scope: !825)
!838 = !DILocation(line: 269, column: 6, scope: !824)
!839 = !DILocation(line: 269, column: 6, scope: !840)
!840 = distinct !DILexicalBlock(scope: !824, file: !2, line: 269, column: 6)
!841 = !DILocation(line: 269, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !824, file: !2, line: 269, column: 6)
!843 = !{i64 2152150145, i64 2152150174, i64 2152150220, i64 2152150278, i64 2152150332, i64 2152150386, i64 2152150441, i64 2152150472, i64 2152150780, i64 2152150786, i64 2152150833, i64 2152150856, i64 2152150882}
!844 = !DILocation(line: 269, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !824, file: !2, line: 269, column: 6)
!846 = !DILocation(line: 269, column: 6, scope: !822)
!847 = !DILocation(line: 269, column: 6, scope: !811)
!848 = !DILocation(line: 270, column: 3, scope: !822)
!849 = !DILocation(line: 271, column: 12, scope: !811)
!850 = !DILocation(line: 271, column: 3, scope: !811)
!851 = !DILocation(line: 271, column: 10, scope: !811)
!852 = !DILocation(line: 272, column: 9, scope: !811)
!853 = !DILocation(line: 272, column: 2, scope: !811)
!854 = !DILocation(line: 273, column: 1, scope: !811)
!855 = distinct !DISubprogram(name: "idr_replace", scope: !2, file: !2, line: 290, type: !856, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{!36, !189, !36, !126}
!858 = !{!859, !860, !861, !862, !863, !864}
!859 = !DILocalVariable(name: "idr", arg: 1, scope: !855, file: !2, line: 290, type: !189)
!860 = !DILocalVariable(name: "ptr", arg: 2, scope: !855, file: !2, line: 290, type: !36)
!861 = !DILocalVariable(name: "id", arg: 3, scope: !855, file: !2, line: 290, type: !126)
!862 = !DILocalVariable(name: "node", scope: !855, file: !2, line: 292, type: !41)
!863 = !DILocalVariable(name: "slot", scope: !855, file: !2, line: 293, type: !213)
!864 = !DILocalVariable(name: "entry", scope: !855, file: !2, line: 294, type: !36)
!865 = !DILocation(line: 290, column: 31, scope: !855)
!866 = !DILocation(line: 290, column: 42, scope: !855)
!867 = !DILocation(line: 290, column: 61, scope: !855)
!868 = !DILocation(line: 292, column: 2, scope: !855)
!869 = !DILocation(line: 292, column: 26, scope: !855)
!870 = !DILocation(line: 293, column: 2, scope: !855)
!871 = !DILocation(line: 293, column: 15, scope: !855)
!872 = !DILocation(line: 294, column: 2, scope: !855)
!873 = !DILocation(line: 294, column: 8, scope: !855)
!874 = !DILocation(line: 296, column: 8, scope: !855)
!875 = !DILocation(line: 296, column: 13, scope: !855)
!876 = !DILocation(line: 296, column: 5, scope: !855)
!877 = !DILocation(line: 298, column: 31, scope: !855)
!878 = !DILocation(line: 298, column: 36, scope: !855)
!879 = !DILocation(line: 298, column: 44, scope: !855)
!880 = !DILocation(line: 298, column: 10, scope: !855)
!881 = !DILocation(line: 298, column: 8, scope: !855)
!882 = !DILocation(line: 299, column: 7, scope: !883)
!883 = distinct !DILexicalBlock(scope: !855, file: !2, line: 299, column: 6)
!884 = !DILocation(line: 299, column: 12, scope: !883)
!885 = !DILocation(line: 299, column: 35, scope: !883)
!886 = !DILocation(line: 299, column: 40, scope: !883)
!887 = !DILocation(line: 299, column: 48, scope: !883)
!888 = !DILocation(line: 299, column: 15, scope: !883)
!889 = !DILocation(line: 299, column: 6, scope: !855)
!890 = !DILocation(line: 300, column: 10, scope: !883)
!891 = !DILocation(line: 300, column: 3, scope: !883)
!892 = !DILocation(line: 302, column: 24, scope: !855)
!893 = !DILocation(line: 302, column: 29, scope: !855)
!894 = !DILocation(line: 302, column: 37, scope: !855)
!895 = !DILocation(line: 302, column: 43, scope: !855)
!896 = !DILocation(line: 302, column: 49, scope: !855)
!897 = !DILocation(line: 302, column: 2, scope: !855)
!898 = !DILocation(line: 304, column: 9, scope: !855)
!899 = !DILocation(line: 304, column: 2, scope: !855)
!900 = !DILocation(line: 305, column: 1, scope: !855)
!901 = !DISubprogram(name: "__radix_tree_lookup", scope: !12, file: !12, line: 221, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DISubroutineType(types: !903)
!903 = !{!36, !514, !126, !904, !905}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!906 = !DISubprogram(name: "radix_tree_tag_get", scope: !12, file: !12, line: 246, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DISubroutineType(types: !908)
!908 = !{!37, !514, !126, !13}
!909 = distinct !DISubprogram(name: "ERR_PTR", scope: !317, file: !317, line: 39, type: !910, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{!36, !135}
!912 = !{!913}
!913 = !DILocalVariable(name: "error", arg: 1, scope: !909, file: !317, line: 39, type: !135)
!914 = !DILocation(line: 39, column: 48, scope: !909)
!915 = !DILocation(line: 41, column: 18, scope: !909)
!916 = !DILocation(line: 41, column: 9, scope: !909)
!917 = !DILocation(line: 41, column: 2, scope: !909)
!918 = !DISubprogram(name: "__radix_tree_replace", scope: !12, file: !12, line: 226, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !52, !41, !213, !36}
!921 = distinct !DISubprogram(name: "ida_alloc_range", scope: !2, file: !2, line: 380, type: !922, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !928)
!922 = !DISubroutineType(types: !923)
!923 = !{!37, !924, !13, !13, !34}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !191, line: 246, size: 128, elements: !926)
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !925, file: !191, line: 247, baseType: !53, size: 128)
!928 = !{!929, !930, !931, !932, !933, !952, !953, !954, !962, !963, !964, !968, !969, !970, !973, !974, !975}
!929 = !DILocalVariable(name: "ida", arg: 1, scope: !921, file: !2, line: 380, type: !924)
!930 = !DILocalVariable(name: "min", arg: 2, scope: !921, file: !2, line: 380, type: !13)
!931 = !DILocalVariable(name: "max", arg: 3, scope: !921, file: !2, line: 380, type: !13)
!932 = !DILocalVariable(name: "gfp", arg: 4, scope: !921, file: !2, line: 381, type: !34)
!933 = !DILocalVariable(name: "xas", scope: !921, file: !2, line: 383, type: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xa_state", file: !43, line: 1344, size: 448, elements: !935)
!935 = !{!936, !937, !938, !939, !940, !941, !942, !943, !944, !949}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !934, file: !43, line: 1345, baseType: !52, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "xa_index", scope: !934, file: !43, line: 1346, baseType: !126, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "xa_shift", scope: !934, file: !43, line: 1347, baseType: !46, size: 8, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "xa_sibs", scope: !934, file: !43, line: 1348, baseType: !46, size: 8, offset: 136)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "xa_offset", scope: !934, file: !43, line: 1349, baseType: !46, size: 8, offset: 144)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "xa_pad", scope: !934, file: !43, line: 1350, baseType: !46, size: 8, offset: 152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "xa_node", scope: !934, file: !43, line: 1351, baseType: !41, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "xa_alloc", scope: !934, file: !43, line: 1352, baseType: !41, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "xa_update", scope: !934, file: !43, line: 1353, baseType: !945, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_update_node_t", file: !43, line: 1323, baseType: !946)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !41}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lru", scope: !934, file: !43, line: 1354, baseType: !950, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !43, line: 1354, flags: DIFlagFwdDecl)
!952 = !DILocalVariable(name: "bit", scope: !921, file: !2, line: 384, type: !13)
!953 = !DILocalVariable(name: "flags", scope: !921, file: !2, line: 385, type: !126)
!954 = !DILocalVariable(name: "bitmap", scope: !921, file: !2, line: 386, type: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida_bitmap", file: !191, line: 242, size: 1024, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !956, file: !191, line: 243, baseType: !959, size: 1024)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1024, elements: !960)
!960 = !{!961}
!961 = !DISubrange(count: 16)
!962 = !DILocalVariable(name: "alloc", scope: !921, file: !2, line: 386, type: !955)
!963 = !DILabel(scope: !921, name: "retry", file: !2, line: 394)
!964 = !DILocalVariable(name: "__dummy", scope: !965, file: !2, line: 395, type: !126)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 395, column: 2)
!966 = distinct !DILexicalBlock(scope: !967, file: !2, line: 395, column: 2)
!967 = distinct !DILexicalBlock(scope: !921, file: !2, line: 395, column: 2)
!968 = !DILocalVariable(name: "__dummy2", scope: !965, file: !2, line: 395, type: !126)
!969 = !DILabel(scope: !921, name: "next", file: !2, line: 396)
!970 = !DILocalVariable(name: "tmp", scope: !971, file: !2, line: 404, type: !126)
!971 = distinct !DILexicalBlock(scope: !972, file: !2, line: 403, column: 27)
!972 = distinct !DILexicalBlock(scope: !921, file: !2, line: 403, column: 6)
!973 = !DILabel(scope: !921, name: "out", file: !2, line: 452)
!974 = !DILabel(scope: !921, name: "alloc", file: !2, line: 464)
!975 = !DILabel(scope: !921, name: "nospc", file: !2, line: 472)
!976 = !DILocation(line: 380, column: 33, scope: !921)
!977 = !DILocation(line: 380, column: 51, scope: !921)
!978 = !DILocation(line: 380, column: 69, scope: !921)
!979 = !DILocation(line: 381, column: 10, scope: !921)
!980 = !DILocation(line: 383, column: 2, scope: !921)
!981 = !DILocation(line: 384, column: 2, scope: !921)
!982 = !DILocation(line: 384, column: 11, scope: !921)
!983 = !DILocation(line: 384, column: 17, scope: !921)
!984 = !DILocation(line: 384, column: 21, scope: !921)
!985 = !DILocation(line: 385, column: 2, scope: !921)
!986 = !DILocation(line: 385, column: 16, scope: !921)
!987 = !DILocation(line: 386, column: 2, scope: !921)
!988 = !DILocation(line: 386, column: 21, scope: !921)
!989 = !DILocation(line: 386, column: 30, scope: !921)
!990 = !DILocation(line: 388, column: 11, scope: !991)
!991 = distinct !DILexicalBlock(scope: !921, file: !2, line: 388, column: 6)
!992 = !DILocation(line: 388, column: 15, scope: !991)
!993 = !DILocation(line: 388, column: 6, scope: !921)
!994 = !DILocation(line: 389, column: 3, scope: !991)
!995 = !DILocation(line: 391, column: 11, scope: !996)
!996 = distinct !DILexicalBlock(scope: !921, file: !2, line: 391, column: 6)
!997 = !DILocation(line: 391, column: 15, scope: !996)
!998 = !DILocation(line: 391, column: 6, scope: !921)
!999 = !DILocation(line: 392, column: 7, scope: !996)
!1000 = !DILocation(line: 392, column: 3, scope: !996)
!1001 = !DILocation(line: 391, column: 17, scope: !996)
!1002 = !DILocation(line: 394, column: 1, scope: !921)
!1003 = !DILocation(line: 395, column: 2, scope: !921)
!1004 = !DILocation(line: 395, column: 2, scope: !967)
!1005 = !DILocation(line: 395, column: 2, scope: !965)
!1006 = !DILocation(line: 395, column: 2, scope: !966)
!1007 = !DILocation(line: 396, column: 1, scope: !921)
!1008 = !DILocation(line: 397, column: 33, scope: !921)
!1009 = !DILocation(line: 397, column: 37, scope: !921)
!1010 = !DILocation(line: 397, column: 11, scope: !921)
!1011 = !DILocation(line: 397, column: 9, scope: !921)
!1012 = !DILocation(line: 398, column: 10, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !921, file: !2, line: 398, column: 6)
!1014 = !DILocation(line: 398, column: 21, scope: !1013)
!1015 = !DILocation(line: 398, column: 25, scope: !1013)
!1016 = !DILocation(line: 398, column: 19, scope: !1013)
!1017 = !DILocation(line: 398, column: 6, scope: !921)
!1018 = !DILocation(line: 399, column: 7, scope: !1013)
!1019 = !DILocation(line: 399, column: 3, scope: !1013)
!1020 = !DILocation(line: 400, column: 10, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !921, file: !2, line: 400, column: 6)
!1022 = !DILocation(line: 400, column: 19, scope: !1021)
!1023 = !DILocation(line: 400, column: 39, scope: !1021)
!1024 = !DILocation(line: 400, column: 37, scope: !1021)
!1025 = !DILocation(line: 400, column: 45, scope: !1021)
!1026 = !DILocation(line: 400, column: 43, scope: !1021)
!1027 = !DILocation(line: 400, column: 6, scope: !921)
!1028 = !DILocation(line: 401, column: 3, scope: !1021)
!1029 = !DILocation(line: 403, column: 18, scope: !972)
!1030 = !DILocation(line: 403, column: 6, scope: !972)
!1031 = !DILocation(line: 403, column: 6, scope: !921)
!1032 = !DILocation(line: 404, column: 3, scope: !971)
!1033 = !DILocation(line: 404, column: 17, scope: !971)
!1034 = !DILocation(line: 404, column: 35, scope: !971)
!1035 = !DILocation(line: 404, column: 23, scope: !971)
!1036 = !DILocation(line: 406, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !971, file: !2, line: 406, column: 7)
!1038 = !DILocation(line: 406, column: 11, scope: !1037)
!1039 = !DILocation(line: 406, column: 7, scope: !971)
!1040 = !DILocation(line: 407, column: 54, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 406, column: 32)
!1042 = !DILocation(line: 407, column: 10, scope: !1041)
!1043 = !DILocation(line: 407, column: 8, scope: !1041)
!1044 = !DILocation(line: 408, column: 12, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 408, column: 8)
!1046 = !DILocation(line: 408, column: 21, scope: !1045)
!1047 = !DILocation(line: 408, column: 41, scope: !1045)
!1048 = !DILocation(line: 408, column: 39, scope: !1045)
!1049 = !DILocation(line: 408, column: 47, scope: !1045)
!1050 = !DILocation(line: 408, column: 45, scope: !1045)
!1051 = !DILocation(line: 408, column: 8, scope: !1041)
!1052 = !DILocation(line: 409, column: 5, scope: !1045)
!1053 = !DILocation(line: 410, column: 8, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 410, column: 8)
!1055 = !DILocation(line: 410, column: 12, scope: !1054)
!1056 = !DILocation(line: 410, column: 8, scope: !1041)
!1057 = !DILocation(line: 411, column: 19, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 410, column: 33)
!1059 = !DILocation(line: 411, column: 16, scope: !1058)
!1060 = !DILocation(line: 411, column: 9, scope: !1058)
!1061 = !DILocation(line: 412, column: 33, scope: !1058)
!1062 = !DILocation(line: 412, column: 21, scope: !1058)
!1063 = !DILocation(line: 412, column: 5, scope: !1058)
!1064 = !DILocation(line: 413, column: 5, scope: !1058)
!1065 = !DILocation(line: 415, column: 3, scope: !1041)
!1066 = !DILocation(line: 416, column: 12, scope: !971)
!1067 = !DILocation(line: 416, column: 10, scope: !971)
!1068 = !DILocation(line: 417, column: 8, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !971, file: !2, line: 417, column: 7)
!1070 = !DILocation(line: 417, column: 7, scope: !971)
!1071 = !DILocation(line: 418, column: 13, scope: !1069)
!1072 = !DILocation(line: 418, column: 11, scope: !1069)
!1073 = !DILocation(line: 418, column: 4, scope: !1069)
!1074 = !DILocation(line: 419, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !971, file: !2, line: 419, column: 7)
!1076 = !DILocation(line: 419, column: 7, scope: !971)
!1077 = !DILocation(line: 420, column: 4, scope: !1075)
!1078 = !DILocation(line: 421, column: 23, scope: !971)
!1079 = !DILocation(line: 421, column: 3, scope: !971)
!1080 = !DILocation(line: 421, column: 11, scope: !971)
!1081 = !DILocation(line: 421, column: 21, scope: !971)
!1082 = !DILocation(line: 422, column: 19, scope: !971)
!1083 = !DILocation(line: 422, column: 3, scope: !971)
!1084 = !DILocation(line: 423, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !971, file: !2, line: 423, column: 7)
!1086 = !DILocation(line: 423, column: 7, scope: !971)
!1087 = !DILocation(line: 424, column: 4, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 423, column: 24)
!1089 = !DILocation(line: 424, column: 12, scope: !1088)
!1090 = !DILocation(line: 424, column: 22, scope: !1088)
!1091 = !DILocation(line: 425, column: 4, scope: !1088)
!1092 = !DILocation(line: 427, column: 2, scope: !972)
!1093 = !DILocation(line: 427, column: 2, scope: !971)
!1094 = !DILocation(line: 429, column: 6, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !921, file: !2, line: 429, column: 6)
!1096 = !DILocation(line: 429, column: 6, scope: !921)
!1097 = !DILocation(line: 430, column: 28, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 429, column: 14)
!1099 = !DILocation(line: 430, column: 36, scope: !1098)
!1100 = !DILocation(line: 430, column: 61, scope: !1098)
!1101 = !DILocation(line: 430, column: 9, scope: !1098)
!1102 = !DILocation(line: 430, column: 7, scope: !1098)
!1103 = !DILocation(line: 431, column: 11, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 431, column: 7)
!1105 = !DILocation(line: 431, column: 20, scope: !1104)
!1106 = !DILocation(line: 431, column: 40, scope: !1104)
!1107 = !DILocation(line: 431, column: 38, scope: !1104)
!1108 = !DILocation(line: 431, column: 46, scope: !1104)
!1109 = !DILocation(line: 431, column: 44, scope: !1104)
!1110 = !DILocation(line: 431, column: 7, scope: !1098)
!1111 = !DILocation(line: 432, column: 4, scope: !1104)
!1112 = !DILocation(line: 433, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 433, column: 7)
!1114 = !DILocation(line: 433, column: 11, scope: !1113)
!1115 = !DILocation(line: 433, column: 7, scope: !1098)
!1116 = !DILocation(line: 434, column: 4, scope: !1113)
!1117 = !DILocation(line: 436, column: 3, scope: !1098)
!1118 = !DILocation(line: 437, column: 19, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 437, column: 7)
!1120 = !DILocation(line: 437, column: 27, scope: !1119)
!1121 = !DILocation(line: 437, column: 7, scope: !1119)
!1122 = !DILocation(line: 437, column: 7, scope: !1098)
!1123 = !DILocation(line: 438, column: 4, scope: !1119)
!1124 = !DILocation(line: 439, column: 2, scope: !1098)
!1125 = !DILocation(line: 440, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !2, line: 440, column: 7)
!1127 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 439, column: 9)
!1128 = !DILocation(line: 440, column: 11, scope: !1126)
!1129 = !DILocation(line: 440, column: 7, scope: !1127)
!1130 = !DILocation(line: 441, column: 32, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 440, column: 32)
!1132 = !DILocation(line: 441, column: 29, scope: !1131)
!1133 = !DILocation(line: 441, column: 13, scope: !1131)
!1134 = !DILocation(line: 441, column: 11, scope: !1131)
!1135 = !DILocation(line: 442, column: 3, scope: !1131)
!1136 = !DILocation(line: 443, column: 13, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 442, column: 10)
!1138 = !DILocation(line: 443, column: 11, scope: !1137)
!1139 = !DILocation(line: 444, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 444, column: 8)
!1141 = !DILocation(line: 444, column: 8, scope: !1137)
!1142 = !DILocation(line: 445, column: 14, scope: !1140)
!1143 = !DILocation(line: 445, column: 12, scope: !1140)
!1144 = !DILocation(line: 445, column: 5, scope: !1140)
!1145 = !DILocation(line: 446, column: 9, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 446, column: 8)
!1147 = !DILocation(line: 446, column: 8, scope: !1137)
!1148 = !DILocation(line: 447, column: 5, scope: !1146)
!1149 = !DILocation(line: 448, column: 4, scope: !1137)
!1150 = !DILocation(line: 450, column: 19, scope: !1127)
!1151 = !DILocation(line: 450, column: 3, scope: !1127)
!1152 = !DILocation(line: 452, column: 1, scope: !921)
!1153 = !DILocation(line: 453, column: 2, scope: !921)
!1154 = !DILocation(line: 454, column: 22, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !921, file: !2, line: 454, column: 6)
!1156 = !DILocation(line: 454, column: 6, scope: !1155)
!1157 = !DILocation(line: 454, column: 6, scope: !921)
!1158 = !DILocation(line: 455, column: 18, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 454, column: 28)
!1160 = !DILocation(line: 455, column: 22, scope: !1159)
!1161 = !DILocation(line: 455, column: 7, scope: !1159)
!1162 = !DILocation(line: 455, column: 16, scope: !1159)
!1163 = !DILocation(line: 456, column: 9, scope: !1159)
!1164 = !DILocation(line: 456, column: 13, scope: !1159)
!1165 = !DILocation(line: 456, column: 7, scope: !1159)
!1166 = !DILocation(line: 457, column: 3, scope: !1159)
!1167 = !DILocation(line: 459, column: 6, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !921, file: !2, line: 459, column: 6)
!1169 = !DILocation(line: 459, column: 16, scope: !1168)
!1170 = !DILocation(line: 459, column: 13, scope: !1168)
!1171 = !DILocation(line: 459, column: 6, scope: !921)
!1172 = !DILocation(line: 460, column: 9, scope: !1168)
!1173 = !DILocation(line: 460, column: 3, scope: !1168)
!1174 = !DILocation(line: 461, column: 6, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !921, file: !2, line: 461, column: 6)
!1176 = !DILocation(line: 461, column: 6, scope: !921)
!1177 = !DILocation(line: 462, column: 10, scope: !1175)
!1178 = !DILocation(line: 462, column: 3, scope: !1175)
!1179 = !DILocation(line: 463, column: 13, scope: !921)
!1180 = !DILocation(line: 463, column: 22, scope: !921)
!1181 = !DILocation(line: 463, column: 42, scope: !921)
!1182 = !DILocation(line: 463, column: 40, scope: !921)
!1183 = !DILocation(line: 463, column: 9, scope: !921)
!1184 = !DILocation(line: 463, column: 2, scope: !921)
!1185 = !DILocation(line: 464, column: 1, scope: !921)
!1186 = !DILocation(line: 465, column: 2, scope: !921)
!1187 = !DILocation(line: 466, column: 35, scope: !921)
!1188 = !DILocation(line: 466, column: 10, scope: !921)
!1189 = !DILocation(line: 466, column: 8, scope: !921)
!1190 = !DILocation(line: 467, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !921, file: !2, line: 467, column: 6)
!1192 = !DILocation(line: 467, column: 6, scope: !921)
!1193 = !DILocation(line: 468, column: 3, scope: !1191)
!1194 = !DILocation(line: 469, column: 16, scope: !921)
!1195 = !DILocation(line: 469, column: 20, scope: !921)
!1196 = !DILocation(line: 469, column: 2, scope: !921)
!1197 = !DILocation(line: 470, column: 8, scope: !921)
!1198 = !DILocation(line: 470, column: 12, scope: !921)
!1199 = !DILocation(line: 470, column: 6, scope: !921)
!1200 = !DILocation(line: 471, column: 2, scope: !921)
!1201 = !DILocation(line: 472, column: 1, scope: !921)
!1202 = !DILocation(line: 473, column: 2, scope: !921)
!1203 = !DILocation(line: 474, column: 8, scope: !921)
!1204 = !DILocation(line: 474, column: 2, scope: !921)
!1205 = !DILocation(line: 475, column: 2, scope: !921)
!1206 = !DILocation(line: 476, column: 1, scope: !921)
!1207 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1208, file: !1208, line: 32, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1208 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!126, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !65, line: 23, baseType: !64)
!1213 = distinct !DISubprogram(name: "spinlock_check", scope: !1214, file: !1214, line: 324, type: !1215, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1218)
!1214 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!1211, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1218 = !{!1219}
!1219 = !DILocalVariable(name: "lock", arg: 1, scope: !1213, file: !1214, line: 324, type: !1217)
!1220 = !DILocation(line: 324, column: 67, scope: !1213)
!1221 = !DILocation(line: 326, column: 10, scope: !1213)
!1222 = !DILocation(line: 326, column: 16, scope: !1213)
!1223 = !DILocation(line: 326, column: 2, scope: !1213)
!1224 = !DISubprogram(name: "xas_find_marked", scope: !43, file: !43, line: 1540, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!36, !1227, !126, !131}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!1228 = distinct !DISubprogram(name: "xa_is_value", scope: !43, file: !43, line: 79, type: !318, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1229)
!1229 = !{!1230}
!1230 = !DILocalVariable(name: "entry", arg: 1, scope: !1228, file: !43, line: 79, type: !322)
!1231 = !DILocation(line: 79, column: 44, scope: !1228)
!1232 = !DILocation(line: 81, column: 24, scope: !1228)
!1233 = !DILocation(line: 81, column: 9, scope: !1228)
!1234 = !DILocation(line: 81, column: 30, scope: !1228)
!1235 = !DILocation(line: 81, column: 2, scope: !1228)
!1236 = distinct !DISubprogram(name: "xa_to_value", scope: !43, file: !43, line: 67, type: !1237, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1239)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!126, !322}
!1239 = !{!1240}
!1240 = !DILocalVariable(name: "entry", arg: 1, scope: !1236, file: !43, line: 67, type: !322)
!1241 = !DILocation(line: 67, column: 53, scope: !1236)
!1242 = !DILocation(line: 69, column: 24, scope: !1236)
!1243 = !DILocation(line: 69, column: 9, scope: !1236)
!1244 = !DILocation(line: 69, column: 30, scope: !1236)
!1245 = !DILocation(line: 69, column: 2, scope: !1236)
!1246 = distinct !DISubprogram(name: "find_next_zero_bit", scope: !1247, file: !1247, line: 173, type: !1248, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1250)
!1247 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!126, !133, !126, !126}
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DILocalVariable(name: "addr", arg: 1, scope: !1246, file: !1247, line: 173, type: !133)
!1252 = !DILocalVariable(name: "size", arg: 2, scope: !1246, file: !1247, line: 173, type: !126)
!1253 = !DILocalVariable(name: "offset", arg: 3, scope: !1246, file: !1247, line: 174, type: !126)
!1254 = !DILocalVariable(name: "val", scope: !1255, file: !1247, line: 177, type: !126)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !1247, line: 176, column: 31)
!1256 = distinct !DILexicalBlock(scope: !1246, file: !1247, line: 176, column: 6)
!1257 = !DILocation(line: 173, column: 55, scope: !1246)
!1258 = !DILocation(line: 173, column: 75, scope: !1246)
!1259 = !DILocation(line: 174, column: 20, scope: !1246)
!1260 = !DILocation(line: 176, column: 6, scope: !1256)
!1261 = !DILocation(line: 176, column: 6, scope: !1246)
!1262 = !DILocation(line: 177, column: 3, scope: !1255)
!1263 = !DILocation(line: 177, column: 17, scope: !1255)
!1264 = !DILocation(line: 179, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1255, file: !1247, line: 179, column: 7)
!1266 = !DILocation(line: 179, column: 7, scope: !1255)
!1267 = !DILocation(line: 180, column: 11, scope: !1265)
!1268 = !DILocation(line: 180, column: 4, scope: !1265)
!1269 = !DILocation(line: 182, column: 10, scope: !1255)
!1270 = !DILocation(line: 182, column: 9, scope: !1255)
!1271 = !DILocation(line: 182, column: 18, scope: !1255)
!1272 = !DILocation(line: 182, column: 17, scope: !1255)
!1273 = !DILocation(line: 182, column: 15, scope: !1255)
!1274 = !DILocation(line: 182, column: 7, scope: !1255)
!1275 = !DILocation(line: 183, column: 10, scope: !1255)
!1276 = !DILocation(line: 183, column: 14, scope: !1255)
!1277 = !DILocation(line: 183, column: 24, scope: !1255)
!1278 = !DILocation(line: 183, column: 31, scope: !1255)
!1279 = !DILocation(line: 183, column: 3, scope: !1255)
!1280 = !DILocation(line: 184, column: 2, scope: !1256)
!1281 = !DILocation(line: 186, column: 29, scope: !1246)
!1282 = !DILocation(line: 186, column: 35, scope: !1246)
!1283 = !DILocation(line: 186, column: 41, scope: !1246)
!1284 = !DILocation(line: 186, column: 9, scope: !1246)
!1285 = !DILocation(line: 186, column: 2, scope: !1246)
!1286 = !DILocation(line: 187, column: 1, scope: !1246)
!1287 = !DISubprogram(name: "xas_store", scope: !43, file: !43, line: 1533, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!36, !1227, !36}
!1290 = distinct !DISubprogram(name: "xa_mk_value", scope: !43, file: !43, line: 54, type: !1291, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1293)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!36, !126}
!1293 = !{!1294, !1295, !1297}
!1294 = !DILocalVariable(name: "v", arg: 1, scope: !1290, file: !43, line: 54, type: !126)
!1295 = !DILocalVariable(name: "__ret_warn_on", scope: !1296, file: !43, line: 56, type: !37)
!1296 = distinct !DILexicalBlock(scope: !1290, file: !43, line: 56, column: 2)
!1297 = !DILocalVariable(name: "__flags", scope: !1298, file: !43, line: 56, type: !37)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !43, line: 56, column: 2)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !43, line: 56, column: 2)
!1300 = !DILocation(line: 54, column: 47, scope: !1290)
!1301 = !DILocation(line: 56, column: 2, scope: !1296)
!1302 = !DILocation(line: 56, column: 2, scope: !1299)
!1303 = !DILocation(line: 56, column: 2, scope: !1298)
!1304 = !DILocation(line: 56, column: 2, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1298, file: !43, line: 56, column: 2)
!1306 = !DILocation(line: 56, column: 2, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1298, file: !43, line: 56, column: 2)
!1308 = !{i64 2151941302, i64 2151941331, i64 2151941377, i64 2151941435, i64 2151941489, i64 2151941543, i64 2151941598, i64 2151941629, i64 2151941937, i64 2151941943, i64 2151941990, i64 2151942013, i64 2151942039}
!1309 = !DILocation(line: 56, column: 2, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1298, file: !43, line: 56, column: 2)
!1311 = !DILocation(line: 56, column: 2, scope: !1290)
!1312 = !DILocation(line: 57, column: 19, scope: !1290)
!1313 = !DILocation(line: 57, column: 21, scope: !1290)
!1314 = !DILocation(line: 57, column: 27, scope: !1290)
!1315 = !DILocation(line: 57, column: 9, scope: !1290)
!1316 = !DILocation(line: 57, column: 2, scope: !1290)
!1317 = distinct !DISubprogram(name: "kzalloc", scope: !24, file: !24, line: 719, type: !1318, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1324)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!36, !1320, !34}
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 61, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1322, line: 72, baseType: !1323)
!1322 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1322, line: 16, baseType: !126)
!1324 = !{!1325, !1326}
!1325 = !DILocalVariable(name: "size", arg: 1, scope: !1317, file: !24, line: 719, type: !1320)
!1326 = !DILocalVariable(name: "flags", arg: 2, scope: !1317, file: !24, line: 719, type: !34)
!1327 = !DILocation(line: 719, column: 52, scope: !1317)
!1328 = !DILocation(line: 719, column: 64, scope: !1317)
!1329 = !DILocation(line: 721, column: 17, scope: !1317)
!1330 = !DILocation(line: 721, column: 23, scope: !1317)
!1331 = !DILocation(line: 721, column: 29, scope: !1317)
!1332 = !DILocation(line: 721, column: 9, scope: !1317)
!1333 = !DILocation(line: 721, column: 2, scope: !1317)
!1334 = distinct !DISubprogram(name: "xas_error", scope: !43, file: !43, line: 1425, type: !1335, scopeLine: 1426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1339)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!37, !1337}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!1339 = !{!1340}
!1340 = !DILocalVariable(name: "xas", arg: 1, scope: !1334, file: !43, line: 1425, type: !1337)
!1341 = !DILocation(line: 1425, column: 52, scope: !1334)
!1342 = !DILocation(line: 1427, column: 16, scope: !1334)
!1343 = !DILocation(line: 1427, column: 21, scope: !1334)
!1344 = !DILocation(line: 1427, column: 9, scope: !1334)
!1345 = !DILocation(line: 1427, column: 2, scope: !1334)
!1346 = distinct !DISubprogram(name: "generic___set_bit", scope: !1347, file: !1347, line: 28, type: !1348, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1352)
!1347 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !126, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!1352 = !{!1353, !1354, !1355, !1356}
!1353 = !DILocalVariable(name: "nr", arg: 1, scope: !1346, file: !1347, line: 28, type: !126)
!1354 = !DILocalVariable(name: "addr", arg: 2, scope: !1346, file: !1347, line: 28, type: !1350)
!1355 = !DILocalVariable(name: "mask", scope: !1346, file: !1347, line: 30, type: !126)
!1356 = !DILocalVariable(name: "p", scope: !1346, file: !1347, line: 31, type: !136)
!1357 = !DILocation(line: 28, column: 33, scope: !1346)
!1358 = !DILocation(line: 28, column: 61, scope: !1346)
!1359 = !DILocation(line: 30, column: 2, scope: !1346)
!1360 = !DILocation(line: 30, column: 16, scope: !1346)
!1361 = !DILocation(line: 30, column: 23, scope: !1346)
!1362 = !DILocation(line: 31, column: 2, scope: !1346)
!1363 = !DILocation(line: 31, column: 17, scope: !1346)
!1364 = !DILocation(line: 31, column: 39, scope: !1346)
!1365 = !DILocation(line: 31, column: 47, scope: !1346)
!1366 = !DILocation(line: 31, column: 45, scope: !1346)
!1367 = !DILocation(line: 33, column: 9, scope: !1346)
!1368 = !DILocation(line: 33, column: 3, scope: !1346)
!1369 = !DILocation(line: 33, column: 6, scope: !1346)
!1370 = !DILocation(line: 34, column: 1, scope: !1346)
!1371 = distinct !DISubprogram(name: "___set_bit", scope: !1372, file: !1372, line: 26, type: !1348, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1373)
!1372 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1373 = !{!1374, !1375}
!1374 = !DILocalVariable(name: "nr", arg: 1, scope: !1371, file: !1372, line: 26, type: !126)
!1375 = !DILocalVariable(name: "addr", arg: 2, scope: !1371, file: !1372, line: 26, type: !1350)
!1376 = !DILocation(line: 26, column: 26, scope: !1371)
!1377 = !DILocation(line: 26, column: 54, scope: !1371)
!1378 = !DILocation(line: 28, column: 19, scope: !1371)
!1379 = !DILocation(line: 28, column: 26, scope: !1371)
!1380 = !DILocation(line: 28, column: 24, scope: !1371)
!1381 = !DILocation(line: 28, column: 2, scope: !1371)
!1382 = !DILocation(line: 29, column: 17, scope: !1371)
!1383 = !DILocation(line: 29, column: 21, scope: !1371)
!1384 = !DILocation(line: 29, column: 2, scope: !1371)
!1385 = !DILocation(line: 30, column: 1, scope: !1371)
!1386 = distinct !DISubprogram(name: "bitmap_full", scope: !1387, file: !1387, line: 444, type: !1388, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1390)
!1387 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!320, !133, !13}
!1390 = !{!1391, !1392}
!1391 = !DILocalVariable(name: "src", arg: 1, scope: !1386, file: !1387, line: 444, type: !133)
!1392 = !DILocalVariable(name: "nbits", arg: 2, scope: !1386, file: !1387, line: 444, type: !13)
!1393 = !DILocation(line: 444, column: 53, scope: !1386)
!1394 = !DILocation(line: 444, column: 71, scope: !1386)
!1395 = !DILocation(line: 446, column: 6, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1386, file: !1387, line: 446, column: 6)
!1397 = !DILocation(line: 446, column: 6, scope: !1386)
!1398 = !DILocation(line: 447, column: 16, scope: !1396)
!1399 = !DILocation(line: 447, column: 15, scope: !1396)
!1400 = !DILocation(line: 447, column: 13, scope: !1396)
!1401 = !DILocation(line: 447, column: 23, scope: !1396)
!1402 = !DILocation(line: 447, column: 21, scope: !1396)
!1403 = !DILocation(line: 447, column: 10, scope: !1396)
!1404 = !DILocation(line: 447, column: 3, scope: !1396)
!1405 = !DILocation(line: 449, column: 29, scope: !1386)
!1406 = !DILocation(line: 449, column: 34, scope: !1386)
!1407 = !DILocation(line: 449, column: 9, scope: !1386)
!1408 = !DILocation(line: 449, column: 44, scope: !1386)
!1409 = !DILocation(line: 449, column: 41, scope: !1386)
!1410 = !DILocation(line: 449, column: 2, scope: !1386)
!1411 = !DILocation(line: 450, column: 1, scope: !1386)
!1412 = !DISubprogram(name: "xas_clear_mark", scope: !43, file: !43, line: 1539, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !1337, !131}
!1415 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !1214, file: !1214, line: 404, type: !1416, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !1217, !126}
!1418 = !{!1419, !1420, !1421, !1424}
!1419 = !DILocalVariable(name: "lock", arg: 1, scope: !1415, file: !1214, line: 404, type: !1217)
!1420 = !DILocalVariable(name: "flags", arg: 2, scope: !1415, file: !1214, line: 404, type: !126)
!1421 = !DILocalVariable(name: "__dummy", scope: !1422, file: !1214, line: 406, type: !126)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !1214, line: 406, column: 2)
!1423 = distinct !DILexicalBlock(scope: !1415, file: !1214, line: 406, column: 2)
!1424 = !DILocalVariable(name: "__dummy2", scope: !1422, file: !1214, line: 406, type: !126)
!1425 = !DILocation(line: 404, column: 64, scope: !1415)
!1426 = !DILocation(line: 404, column: 84, scope: !1415)
!1427 = !DILocation(line: 406, column: 2, scope: !1415)
!1428 = !DILocation(line: 406, column: 2, scope: !1422)
!1429 = !DILocation(line: 406, column: 2, scope: !1423)
!1430 = !DILocation(line: 407, column: 1, scope: !1415)
!1431 = !DISubprogram(name: "xas_nomem", scope: !43, file: !43, line: 1543, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!320, !1227, !34}
!1434 = !DISubprogram(name: "kfree", scope: !24, file: !24, line: 227, type: !1435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !322}
!1437 = distinct !DISubprogram(name: "xas_set", scope: !43, file: !43, line: 1620, type: !1438, scopeLine: 1621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !1227, !126}
!1440 = !{!1441, !1442}
!1441 = !DILocalVariable(name: "xas", arg: 1, scope: !1437, file: !43, line: 1620, type: !1227)
!1442 = !DILocalVariable(name: "index", arg: 2, scope: !1437, file: !43, line: 1620, type: !126)
!1443 = !DILocation(line: 1620, column: 45, scope: !1437)
!1444 = !DILocation(line: 1620, column: 64, scope: !1437)
!1445 = !DILocation(line: 1622, column: 18, scope: !1437)
!1446 = !DILocation(line: 1622, column: 2, scope: !1437)
!1447 = !DILocation(line: 1622, column: 7, scope: !1437)
!1448 = !DILocation(line: 1622, column: 16, scope: !1437)
!1449 = !DILocation(line: 1623, column: 2, scope: !1437)
!1450 = !DILocation(line: 1623, column: 7, scope: !1437)
!1451 = !DILocation(line: 1623, column: 15, scope: !1437)
!1452 = !DILocation(line: 1624, column: 1, scope: !1437)
!1453 = distinct !DISubprogram(name: "ida_free", scope: !2, file: !2, line: 487, type: !1454, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1456)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !924, !13}
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463, !1467, !1468, !1471, !1475, !1476, !1478}
!1457 = !DILocalVariable(name: "ida", arg: 1, scope: !1453, file: !2, line: 487, type: !924)
!1458 = !DILocalVariable(name: "id", arg: 2, scope: !1453, file: !2, line: 487, type: !13)
!1459 = !DILocalVariable(name: "xas", scope: !1453, file: !2, line: 489, type: !934)
!1460 = !DILocalVariable(name: "bit", scope: !1453, file: !2, line: 490, type: !13)
!1461 = !DILocalVariable(name: "bitmap", scope: !1453, file: !2, line: 491, type: !955)
!1462 = !DILocalVariable(name: "flags", scope: !1453, file: !2, line: 492, type: !126)
!1463 = !DILocalVariable(name: "__dummy", scope: !1464, file: !2, line: 497, type: !126)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 497, column: 2)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 497, column: 2)
!1466 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 497, column: 2)
!1467 = !DILocalVariable(name: "__dummy2", scope: !1464, file: !2, line: 497, type: !126)
!1468 = !DILocalVariable(name: "v", scope: !1469, file: !2, line: 501, type: !126)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 500, column: 27)
!1470 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 500, column: 6)
!1471 = !DILabel(scope: !1472, name: "delete", file: !2, line: 517)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 515, column: 54)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 515, column: 7)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 510, column: 9)
!1475 = !DILabel(scope: !1453, name: "err", file: !2, line: 523)
!1476 = !DILocalVariable(name: "__ret_warn_on", scope: !1477, file: !2, line: 525, type: !37)
!1477 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 525, column: 2)
!1478 = !DILocalVariable(name: "__flags", scope: !1479, file: !2, line: 525, type: !37)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 525, column: 2)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 525, column: 2)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 525, column: 2)
!1482 = !DILocation(line: 487, column: 27, scope: !1453)
!1483 = !DILocation(line: 487, column: 45, scope: !1453)
!1484 = !DILocation(line: 489, column: 2, scope: !1453)
!1485 = !DILocation(line: 490, column: 2, scope: !1453)
!1486 = !DILocation(line: 490, column: 11, scope: !1453)
!1487 = !DILocation(line: 490, column: 17, scope: !1453)
!1488 = !DILocation(line: 490, column: 20, scope: !1453)
!1489 = !DILocation(line: 491, column: 2, scope: !1453)
!1490 = !DILocation(line: 491, column: 21, scope: !1453)
!1491 = !DILocation(line: 492, column: 2, scope: !1453)
!1492 = !DILocation(line: 492, column: 16, scope: !1453)
!1493 = !DILocation(line: 494, column: 11, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1453, file: !2, line: 494, column: 6)
!1495 = !DILocation(line: 494, column: 14, scope: !1494)
!1496 = !DILocation(line: 494, column: 6, scope: !1453)
!1497 = !DILocation(line: 495, column: 3, scope: !1494)
!1498 = !DILocation(line: 497, column: 2, scope: !1453)
!1499 = !DILocation(line: 497, column: 2, scope: !1466)
!1500 = !DILocation(line: 497, column: 2, scope: !1464)
!1501 = !DILocation(line: 497, column: 2, scope: !1465)
!1502 = !DILocation(line: 498, column: 11, scope: !1453)
!1503 = !DILocation(line: 498, column: 9, scope: !1453)
!1504 = !DILocation(line: 500, column: 18, scope: !1470)
!1505 = !DILocation(line: 500, column: 6, scope: !1470)
!1506 = !DILocation(line: 500, column: 6, scope: !1453)
!1507 = !DILocation(line: 501, column: 3, scope: !1469)
!1508 = !DILocation(line: 501, column: 17, scope: !1469)
!1509 = !DILocation(line: 501, column: 33, scope: !1469)
!1510 = !DILocation(line: 501, column: 21, scope: !1469)
!1511 = !DILocation(line: 502, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 502, column: 7)
!1513 = !DILocation(line: 502, column: 11, scope: !1512)
!1514 = !DILocation(line: 502, column: 7, scope: !1469)
!1515 = !DILocation(line: 503, column: 4, scope: !1512)
!1516 = !DILocation(line: 504, column: 9, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 504, column: 7)
!1518 = !DILocation(line: 504, column: 21, scope: !1517)
!1519 = !DILocation(line: 504, column: 18, scope: !1517)
!1520 = !DILocation(line: 504, column: 11, scope: !1517)
!1521 = !DILocation(line: 504, column: 7, scope: !1469)
!1522 = !DILocation(line: 505, column: 4, scope: !1517)
!1523 = !DILocation(line: 506, column: 17, scope: !1469)
!1524 = !DILocation(line: 506, column: 14, scope: !1469)
!1525 = !DILocation(line: 506, column: 8, scope: !1469)
!1526 = !DILocation(line: 506, column: 5, scope: !1469)
!1527 = !DILocation(line: 507, column: 8, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1469, file: !2, line: 507, column: 7)
!1529 = !DILocation(line: 507, column: 7, scope: !1469)
!1530 = !DILocation(line: 508, column: 4, scope: !1528)
!1531 = !DILocation(line: 509, column: 31, scope: !1469)
!1532 = !DILocation(line: 509, column: 19, scope: !1469)
!1533 = !DILocation(line: 509, column: 3, scope: !1469)
!1534 = !DILocation(line: 510, column: 2, scope: !1470)
!1535 = !DILocation(line: 510, column: 2, scope: !1469)
!1536 = !DILocation(line: 511, column: 8, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1474, file: !2, line: 511, column: 7)
!1538 = !DILocation(line: 511, column: 15, scope: !1537)
!1539 = !DILocation(line: 511, column: 19, scope: !1537)
!1540 = !DILocation(line: 511, column: 7, scope: !1474)
!1541 = !DILocation(line: 512, column: 4, scope: !1537)
!1542 = !DILocation(line: 513, column: 3, scope: !1474)
!1543 = !DILocation(line: 514, column: 3, scope: !1474)
!1544 = !DILocation(line: 515, column: 20, scope: !1473)
!1545 = !DILocation(line: 515, column: 28, scope: !1473)
!1546 = !DILocation(line: 515, column: 7, scope: !1473)
!1547 = !DILocation(line: 515, column: 7, scope: !1474)
!1548 = !DILocation(line: 516, column: 10, scope: !1472)
!1549 = !DILocation(line: 516, column: 4, scope: !1472)
!1550 = !DILocation(line: 517, column: 1, scope: !1472)
!1551 = !DILocation(line: 518, column: 4, scope: !1472)
!1552 = !DILocation(line: 519, column: 3, scope: !1472)
!1553 = !DILocation(line: 521, column: 2, scope: !1453)
!1554 = !DILocation(line: 522, column: 2, scope: !1453)
!1555 = !DILocation(line: 523, column: 2, scope: !1453)
!1556 = !DILocation(line: 524, column: 2, scope: !1453)
!1557 = !DILocation(line: 525, column: 2, scope: !1477)
!1558 = !DILocation(line: 525, column: 2, scope: !1481)
!1559 = !DILocation(line: 525, column: 2, scope: !1480)
!1560 = !DILocation(line: 525, column: 2, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 525, column: 2)
!1562 = !DILocation(line: 525, column: 2, scope: !1479)
!1563 = !DILocation(line: 525, column: 2, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 525, column: 2)
!1565 = !DILocation(line: 525, column: 2, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 525, column: 2)
!1567 = !{i64 2152163059, i64 2152163088, i64 2152163134, i64 2152163192, i64 2152163246, i64 2152163300, i64 2152163355, i64 2152163386, i64 2152163694, i64 2152163700, i64 2152163747, i64 2152163770, i64 2152163796}
!1568 = !DILocation(line: 525, column: 2, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 525, column: 2)
!1570 = !DILocation(line: 525, column: 2, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 525, column: 2)
!1572 = !DILocation(line: 525, column: 2, scope: !1453)
!1573 = !DILocation(line: 526, column: 1, scope: !1453)
!1574 = !DISubprogram(name: "xas_load", scope: !43, file: !43, line: 1532, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!36, !1227}
!1577 = distinct !DISubprogram(name: "const_test_bit", scope: !1347, file: !1347, line: 166, type: !1578, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1582)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!320, !126, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1351)
!1582 = !{!1583, !1584, !1585, !1586, !1587}
!1583 = !DILocalVariable(name: "nr", arg: 1, scope: !1577, file: !1347, line: 166, type: !126)
!1584 = !DILocalVariable(name: "addr", arg: 2, scope: !1577, file: !1347, line: 166, type: !1580)
!1585 = !DILocalVariable(name: "p", scope: !1577, file: !1347, line: 168, type: !133)
!1586 = !DILocalVariable(name: "mask", scope: !1577, file: !1347, line: 169, type: !126)
!1587 = !DILocalVariable(name: "val", scope: !1577, file: !1347, line: 170, type: !126)
!1588 = !DILocation(line: 166, column: 30, scope: !1577)
!1589 = !DILocation(line: 166, column: 64, scope: !1577)
!1590 = !DILocation(line: 168, column: 2, scope: !1577)
!1591 = !DILocation(line: 168, column: 23, scope: !1577)
!1592 = !DILocation(line: 168, column: 50, scope: !1577)
!1593 = !DILocation(line: 168, column: 57, scope: !1577)
!1594 = !DILocation(line: 168, column: 55, scope: !1577)
!1595 = !DILocation(line: 169, column: 2, scope: !1577)
!1596 = !DILocation(line: 169, column: 16, scope: !1577)
!1597 = !DILocation(line: 169, column: 23, scope: !1577)
!1598 = !DILocation(line: 170, column: 2, scope: !1577)
!1599 = !DILocation(line: 170, column: 16, scope: !1577)
!1600 = !DILocation(line: 170, column: 23, scope: !1577)
!1601 = !DILocation(line: 170, column: 22, scope: !1577)
!1602 = !DILocation(line: 172, column: 12, scope: !1577)
!1603 = !DILocation(line: 172, column: 18, scope: !1577)
!1604 = !DILocation(line: 172, column: 16, scope: !1577)
!1605 = !DILocation(line: 172, column: 10, scope: !1577)
!1606 = !DILocation(line: 172, column: 9, scope: !1577)
!1607 = !DILocation(line: 173, column: 1, scope: !1577)
!1608 = !DILocation(line: 172, column: 2, scope: !1577)
!1609 = distinct !DISubprogram(name: "_test_bit", scope: !1372, file: !1372, line: 139, type: !1578, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1610)
!1610 = !{!1611, !1612}
!1611 = !DILocalVariable(name: "nr", arg: 1, scope: !1609, file: !1372, line: 139, type: !126)
!1612 = !DILocalVariable(name: "addr", arg: 2, scope: !1609, file: !1372, line: 139, type: !1580)
!1613 = !DILocation(line: 139, column: 25, scope: !1609)
!1614 = !DILocation(line: 139, column: 59, scope: !1609)
!1615 = !DILocation(line: 141, column: 25, scope: !1609)
!1616 = !DILocation(line: 141, column: 32, scope: !1609)
!1617 = !DILocation(line: 141, column: 30, scope: !1609)
!1618 = !DILocation(line: 141, column: 2, scope: !1609)
!1619 = !DILocation(line: 142, column: 23, scope: !1609)
!1620 = !DILocation(line: 142, column: 27, scope: !1609)
!1621 = !DILocation(line: 142, column: 9, scope: !1609)
!1622 = !DILocation(line: 142, column: 2, scope: !1609)
!1623 = distinct !DISubprogram(name: "generic___clear_bit", scope: !1347, file: !1347, line: 37, type: !1348, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1624)
!1624 = !{!1625, !1626, !1627, !1628}
!1625 = !DILocalVariable(name: "nr", arg: 1, scope: !1623, file: !1347, line: 37, type: !126)
!1626 = !DILocalVariable(name: "addr", arg: 2, scope: !1623, file: !1347, line: 37, type: !1350)
!1627 = !DILocalVariable(name: "mask", scope: !1623, file: !1347, line: 39, type: !126)
!1628 = !DILocalVariable(name: "p", scope: !1623, file: !1347, line: 40, type: !136)
!1629 = !DILocation(line: 37, column: 35, scope: !1623)
!1630 = !DILocation(line: 37, column: 63, scope: !1623)
!1631 = !DILocation(line: 39, column: 2, scope: !1623)
!1632 = !DILocation(line: 39, column: 16, scope: !1623)
!1633 = !DILocation(line: 39, column: 23, scope: !1623)
!1634 = !DILocation(line: 40, column: 2, scope: !1623)
!1635 = !DILocation(line: 40, column: 17, scope: !1623)
!1636 = !DILocation(line: 40, column: 39, scope: !1623)
!1637 = !DILocation(line: 40, column: 47, scope: !1623)
!1638 = !DILocation(line: 40, column: 45, scope: !1623)
!1639 = !DILocation(line: 42, column: 9, scope: !1623)
!1640 = !DILocation(line: 42, column: 8, scope: !1623)
!1641 = !DILocation(line: 42, column: 3, scope: !1623)
!1642 = !DILocation(line: 42, column: 5, scope: !1623)
!1643 = !DILocation(line: 43, column: 1, scope: !1623)
!1644 = distinct !DISubprogram(name: "___clear_bit", scope: !1372, file: !1372, line: 42, type: !1348, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1645)
!1645 = !{!1646, !1647}
!1646 = !DILocalVariable(name: "nr", arg: 1, scope: !1644, file: !1372, line: 42, type: !126)
!1647 = !DILocalVariable(name: "addr", arg: 2, scope: !1644, file: !1372, line: 42, type: !1350)
!1648 = !DILocation(line: 42, column: 28, scope: !1644)
!1649 = !DILocation(line: 42, column: 56, scope: !1644)
!1650 = !DILocation(line: 44, column: 19, scope: !1644)
!1651 = !DILocation(line: 44, column: 26, scope: !1644)
!1652 = !DILocation(line: 44, column: 24, scope: !1644)
!1653 = !DILocation(line: 44, column: 2, scope: !1644)
!1654 = !DILocation(line: 45, column: 19, scope: !1644)
!1655 = !DILocation(line: 45, column: 23, scope: !1644)
!1656 = !DILocation(line: 45, column: 2, scope: !1644)
!1657 = !DILocation(line: 46, column: 1, scope: !1644)
!1658 = !DISubprogram(name: "xas_set_mark", scope: !43, file: !43, line: 1538, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1659 = distinct !DISubprogram(name: "bitmap_empty", scope: !1387, file: !1387, line: 436, type: !1388, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1660)
!1660 = !{!1661, !1662}
!1661 = !DILocalVariable(name: "src", arg: 1, scope: !1659, file: !1387, line: 436, type: !133)
!1662 = !DILocalVariable(name: "nbits", arg: 2, scope: !1659, file: !1387, line: 436, type: !13)
!1663 = !DILocation(line: 436, column: 54, scope: !1659)
!1664 = !DILocation(line: 436, column: 68, scope: !1659)
!1665 = !DILocation(line: 438, column: 6, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1659, file: !1387, line: 438, column: 6)
!1667 = !DILocation(line: 438, column: 6, scope: !1659)
!1668 = !DILocation(line: 439, column: 14, scope: !1666)
!1669 = !DILocation(line: 439, column: 13, scope: !1666)
!1670 = !DILocation(line: 439, column: 20, scope: !1666)
!1671 = !DILocation(line: 439, column: 18, scope: !1666)
!1672 = !DILocation(line: 439, column: 10, scope: !1666)
!1673 = !DILocation(line: 439, column: 3, scope: !1666)
!1674 = !DILocation(line: 441, column: 24, scope: !1659)
!1675 = !DILocation(line: 441, column: 29, scope: !1659)
!1676 = !DILocation(line: 441, column: 9, scope: !1659)
!1677 = !DILocation(line: 441, column: 39, scope: !1659)
!1678 = !DILocation(line: 441, column: 36, scope: !1659)
!1679 = !DILocation(line: 441, column: 2, scope: !1659)
!1680 = !DILocation(line: 442, column: 1, scope: !1659)
!1681 = !DISubprogram(name: "__warn_printk", scope: !1682, file: !1682, line: 93, type: !1683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1682 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !1685, null}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1687 = distinct !DISubprogram(name: "ida_destroy", scope: !2, file: !2, line: 541, type: !1688, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !924}
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1699}
!1691 = !DILocalVariable(name: "ida", arg: 1, scope: !1687, file: !2, line: 541, type: !924)
!1692 = !DILocalVariable(name: "xas", scope: !1687, file: !2, line: 543, type: !934)
!1693 = !DILocalVariable(name: "bitmap", scope: !1687, file: !2, line: 544, type: !955)
!1694 = !DILocalVariable(name: "flags", scope: !1687, file: !2, line: 545, type: !126)
!1695 = !DILocalVariable(name: "__dummy", scope: !1696, file: !2, line: 547, type: !126)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !2, line: 547, column: 2)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 547, column: 2)
!1698 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 547, column: 2)
!1699 = !DILocalVariable(name: "__dummy2", scope: !1696, file: !2, line: 547, type: !126)
!1700 = !DILocation(line: 541, column: 30, scope: !1687)
!1701 = !DILocation(line: 543, column: 2, scope: !1687)
!1702 = !DILocation(line: 544, column: 2, scope: !1687)
!1703 = !DILocation(line: 544, column: 21, scope: !1687)
!1704 = !DILocation(line: 545, column: 2, scope: !1687)
!1705 = !DILocation(line: 545, column: 16, scope: !1687)
!1706 = !DILocation(line: 547, column: 2, scope: !1687)
!1707 = !DILocation(line: 547, column: 2, scope: !1698)
!1708 = !DILocation(line: 547, column: 2, scope: !1696)
!1709 = !DILocation(line: 547, column: 2, scope: !1697)
!1710 = !DILocation(line: 548, column: 2, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 548, column: 2)
!1712 = !DILocation(line: 548, column: 2, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1711, file: !2, line: 548, column: 2)
!1714 = !DILocation(line: 549, column: 20, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 549, column: 7)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 548, column: 40)
!1717 = !DILocation(line: 549, column: 8, scope: !1715)
!1718 = !DILocation(line: 549, column: 7, scope: !1716)
!1719 = !DILocation(line: 550, column: 10, scope: !1715)
!1720 = !DILocation(line: 550, column: 4, scope: !1715)
!1721 = !DILocation(line: 551, column: 3, scope: !1716)
!1722 = !DILocation(line: 552, column: 2, scope: !1716)
!1723 = distinct !{!1723, !1710, !1724, !594, !595}
!1724 = !DILocation(line: 552, column: 2, scope: !1711)
!1725 = !DILocation(line: 553, column: 2, scope: !1687)
!1726 = !DILocation(line: 554, column: 1, scope: !1687)
!1727 = !DISubprogram(name: "xas_find", scope: !43, file: !43, line: 1534, type: !1728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!36, !1227, !126}
!1730 = distinct !DISubprogram(name: "xas_next_entry", scope: !43, file: !43, line: 1694, type: !1728, scopeLine: 1695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1731)
!1731 = !{!1732, !1733, !1734, !1735}
!1732 = !DILocalVariable(name: "xas", arg: 1, scope: !1730, file: !43, line: 1694, type: !1227)
!1733 = !DILocalVariable(name: "max", arg: 2, scope: !1730, file: !43, line: 1694, type: !126)
!1734 = !DILocalVariable(name: "node", scope: !1730, file: !43, line: 1696, type: !41)
!1735 = !DILocalVariable(name: "entry", scope: !1730, file: !43, line: 1697, type: !36)
!1736 = !DILocation(line: 1694, column: 53, scope: !1730)
!1737 = !DILocation(line: 1694, column: 72, scope: !1730)
!1738 = !DILocation(line: 1696, column: 2, scope: !1730)
!1739 = !DILocation(line: 1696, column: 18, scope: !1730)
!1740 = !DILocation(line: 1696, column: 25, scope: !1730)
!1741 = !DILocation(line: 1696, column: 30, scope: !1730)
!1742 = !DILocation(line: 1697, column: 2, scope: !1730)
!1743 = !DILocation(line: 1697, column: 8, scope: !1730)
!1744 = !DILocation(line: 1699, column: 6, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1730, file: !43, line: 1699, column: 6)
!1746 = !DILocation(line: 1699, column: 6, scope: !1730)
!1747 = !DILocation(line: 1701, column: 19, scope: !1745)
!1748 = !DILocation(line: 1701, column: 24, scope: !1745)
!1749 = !DILocation(line: 1701, column: 10, scope: !1745)
!1750 = !DILocation(line: 1701, column: 3, scope: !1745)
!1751 = !DILocation(line: 1703, column: 2, scope: !1730)
!1752 = !DILocation(line: 1704, column: 7, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !43, line: 1704, column: 7)
!1754 = distinct !DILexicalBlock(scope: !1730, file: !43, line: 1703, column: 5)
!1755 = !DILocation(line: 1704, column: 7, scope: !1754)
!1756 = !DILocation(line: 1705, column: 20, scope: !1753)
!1757 = !DILocation(line: 1705, column: 25, scope: !1753)
!1758 = !DILocation(line: 1705, column: 11, scope: !1753)
!1759 = !DILocation(line: 1705, column: 4, scope: !1753)
!1760 = !DILocation(line: 1706, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1754, file: !43, line: 1706, column: 7)
!1762 = !DILocation(line: 1706, column: 7, scope: !1754)
!1763 = !DILocation(line: 1707, column: 20, scope: !1761)
!1764 = !DILocation(line: 1707, column: 25, scope: !1761)
!1765 = !DILocation(line: 1707, column: 11, scope: !1761)
!1766 = !DILocation(line: 1707, column: 4, scope: !1761)
!1767 = !DILocation(line: 1708, column: 20, scope: !1754)
!1768 = !DILocation(line: 1708, column: 25, scope: !1754)
!1769 = !DILocation(line: 1708, column: 29, scope: !1754)
!1770 = !DILocation(line: 1708, column: 35, scope: !1754)
!1771 = !DILocation(line: 1708, column: 40, scope: !1754)
!1772 = !DILocation(line: 1708, column: 50, scope: !1754)
!1773 = !DILocation(line: 1708, column: 11, scope: !1754)
!1774 = !DILocation(line: 1708, column: 9, scope: !1754)
!1775 = !DILocation(line: 1709, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1754, file: !43, line: 1709, column: 7)
!1777 = !DILocation(line: 1709, column: 7, scope: !1754)
!1778 = !DILocation(line: 1710, column: 20, scope: !1776)
!1779 = !DILocation(line: 1710, column: 25, scope: !1776)
!1780 = !DILocation(line: 1710, column: 11, scope: !1776)
!1781 = !DILocation(line: 1710, column: 4, scope: !1776)
!1782 = !DILocation(line: 1711, column: 3, scope: !1754)
!1783 = !DILocation(line: 1711, column: 8, scope: !1754)
!1784 = !DILocation(line: 1711, column: 17, scope: !1754)
!1785 = !DILocation(line: 1712, column: 3, scope: !1754)
!1786 = !DILocation(line: 1712, column: 8, scope: !1754)
!1787 = !DILocation(line: 1712, column: 16, scope: !1754)
!1788 = !DILocation(line: 1713, column: 2, scope: !1754)
!1789 = !DILocation(line: 1713, column: 12, scope: !1730)
!1790 = !DILocation(line: 1713, column: 11, scope: !1730)
!1791 = distinct !{!1791, !1751, !1792, !594, !595}
!1792 = !DILocation(line: 1713, column: 17, scope: !1730)
!1793 = !DILocation(line: 1715, column: 9, scope: !1730)
!1794 = !DILocation(line: 1715, column: 2, scope: !1730)
!1795 = !DILocation(line: 1716, column: 1, scope: !1730)
!1796 = distinct !DISubprogram(name: "__radix_tree_iter_add", scope: !12, file: !12, line: 348, type: !1797, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1799)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!126, !299, !126}
!1799 = !{!1800, !1801}
!1800 = !DILocalVariable(name: "iter", arg: 1, scope: !1796, file: !12, line: 348, type: !299)
!1801 = !DILocalVariable(name: "slots", arg: 2, scope: !1796, file: !12, line: 348, type: !126)
!1802 = !DILocation(line: 348, column: 47, scope: !1796)
!1803 = !DILocation(line: 348, column: 67, scope: !1796)
!1804 = !DILocation(line: 350, column: 9, scope: !1796)
!1805 = !DILocation(line: 350, column: 15, scope: !1796)
!1806 = !DILocation(line: 350, column: 23, scope: !1796)
!1807 = !DILocation(line: 350, column: 21, scope: !1796)
!1808 = !DILocation(line: 350, column: 2, scope: !1796)
!1809 = distinct !DISubprogram(name: "variable__ffs", scope: !1810, file: !1810, line: 250, type: !1811, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1813)
!1810 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!126, !126}
!1813 = !{!1814}
!1814 = !DILocalVariable(name: "word", arg: 1, scope: !1809, file: !1810, line: 250, type: !126)
!1815 = !DILocation(line: 250, column: 66, scope: !1809)
!1816 = !DILocation(line: 254, column: 11, scope: !1809)
!1817 = !DILocation(line: 252, column: 2, scope: !1809)
!1818 = !{i64 288821}
!1819 = !DILocation(line: 255, column: 9, scope: !1809)
!1820 = !DILocation(line: 255, column: 2, scope: !1809)
!1821 = distinct !DISubprogram(name: "radix_tree_chunk_size", scope: !12, file: !12, line: 373, type: !1822, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1824)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!135, !299}
!1824 = !{!1825}
!1825 = !DILocalVariable(name: "iter", arg: 1, scope: !1821, file: !12, line: 373, type: !299)
!1826 = !DILocation(line: 373, column: 47, scope: !1821)
!1827 = !DILocation(line: 375, column: 9, scope: !1821)
!1828 = !DILocation(line: 375, column: 15, scope: !1821)
!1829 = !DILocation(line: 375, column: 28, scope: !1821)
!1830 = !DILocation(line: 375, column: 34, scope: !1821)
!1831 = !DILocation(line: 375, column: 26, scope: !1821)
!1832 = !DILocation(line: 375, column: 2, scope: !1821)
!1833 = distinct !DISubprogram(name: "xa_mk_internal", scope: !43, file: !43, line: 145, type: !1291, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1834)
!1834 = !{!1835}
!1835 = !DILocalVariable(name: "v", arg: 1, scope: !1833, file: !43, line: 145, type: !126)
!1836 = !DILocation(line: 145, column: 50, scope: !1833)
!1837 = !DILocation(line: 147, column: 19, scope: !1833)
!1838 = !DILocation(line: 147, column: 21, scope: !1833)
!1839 = !DILocation(line: 147, column: 27, scope: !1833)
!1840 = !DILocation(line: 147, column: 9, scope: !1833)
!1841 = !DILocation(line: 147, column: 2, scope: !1833)
!1842 = distinct !DISubprogram(name: "variable_ffz", scope: !1810, file: !1810, line: 269, type: !1811, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1843)
!1843 = !{!1844}
!1844 = !DILocalVariable(name: "word", arg: 1, scope: !1842, file: !1810, line: 269, type: !126)
!1845 = !DILocation(line: 269, column: 65, scope: !1842)
!1846 = !DILocation(line: 273, column: 11, scope: !1842)
!1847 = !DILocation(line: 273, column: 10, scope: !1842)
!1848 = !DILocation(line: 271, column: 2, scope: !1842)
!1849 = !{i64 289238}
!1850 = !DILocation(line: 274, column: 9, scope: !1842)
!1851 = !DILocation(line: 274, column: 2, scope: !1842)
!1852 = !DISubprogram(name: "_find_next_zero_bit", scope: !1247, file: !1247, line: 19, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1853 = distinct !DISubprogram(name: "kmalloc", scope: !24, file: !24, line: 591, type: !1318, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DILocalVariable(name: "size", arg: 1, scope: !1853, file: !24, line: 591, type: !1320)
!1856 = !DILocalVariable(name: "flags", arg: 2, scope: !1853, file: !24, line: 591, type: !34)
!1857 = !DILocalVariable(name: "index", scope: !1858, file: !24, line: 594, type: !13)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !24, line: 593, column: 42)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !24, line: 593, column: 6)
!1860 = !DILocation(line: 591, column: 61, scope: !1853)
!1861 = !DILocation(line: 591, column: 73, scope: !1853)
!1862 = !DILocation(line: 593, column: 27, scope: !1859)
!1863 = !DILocation(line: 593, column: 6, scope: !1859)
!1864 = !DILocation(line: 593, column: 33, scope: !1859)
!1865 = !DILocation(line: 593, column: 36, scope: !1859)
!1866 = !DILocation(line: 593, column: 6, scope: !1853)
!1867 = !DILocation(line: 594, column: 3, scope: !1858)
!1868 = !DILocation(line: 594, column: 16, scope: !1858)
!1869 = !DILocation(line: 596, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1858, file: !24, line: 596, column: 7)
!1871 = !DILocation(line: 596, column: 12, scope: !1870)
!1872 = !DILocation(line: 596, column: 7, scope: !1858)
!1873 = !DILocation(line: 597, column: 25, scope: !1870)
!1874 = !DILocation(line: 597, column: 31, scope: !1870)
!1875 = !DILocation(line: 597, column: 11, scope: !1870)
!1876 = !DILocation(line: 597, column: 4, scope: !1870)
!1877 = !DILocation(line: 599, column: 11, scope: !1858)
!1878 = !DILocation(line: 599, column: 9, scope: !1858)
!1879 = !DILocation(line: 601, column: 33, scope: !1858)
!1880 = !DILocation(line: 601, column: 40, scope: !1858)
!1881 = !DILocation(line: 601, column: 20, scope: !1858)
!1882 = !DILocation(line: 601, column: 5, scope: !1858)
!1883 = !DILocation(line: 601, column: 51, scope: !1858)
!1884 = !DILocation(line: 602, column: 5, scope: !1858)
!1885 = !DILocation(line: 602, column: 12, scope: !1858)
!1886 = !DILocation(line: 600, column: 10, scope: !1858)
!1887 = !DILocation(line: 600, column: 3, scope: !1858)
!1888 = !DILocation(line: 603, column: 2, scope: !1859)
!1889 = !DILocation(line: 604, column: 19, scope: !1853)
!1890 = !DILocation(line: 604, column: 25, scope: !1853)
!1891 = !DILocation(line: 604, column: 9, scope: !1853)
!1892 = !DILocation(line: 604, column: 2, scope: !1853)
!1893 = !DILocation(line: 605, column: 1, scope: !1853)
!1894 = !DISubprogram(name: "kmalloc_large", scope: !24, file: !24, line: 531, type: !1318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1895 = distinct !DISubprogram(name: "__kmalloc_index", scope: !24, file: !24, line: 444, type: !1896, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1898)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!13, !1320, !320}
!1898 = !{!1899, !1900}
!1899 = !DILocalVariable(name: "size", arg: 1, scope: !1895, file: !24, line: 444, type: !1320)
!1900 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1895, file: !24, line: 445, type: !320)
!1901 = !DILocation(line: 444, column: 60, scope: !1895)
!1902 = !DILocation(line: 445, column: 16, scope: !1895)
!1903 = !DILocation(line: 447, column: 7, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 447, column: 6)
!1905 = !DILocation(line: 447, column: 6, scope: !1895)
!1906 = !DILocation(line: 448, column: 3, scope: !1904)
!1907 = !DILocation(line: 450, column: 6, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 450, column: 6)
!1909 = !DILocation(line: 450, column: 11, scope: !1908)
!1910 = !DILocation(line: 450, column: 6, scope: !1895)
!1911 = !DILocation(line: 451, column: 3, scope: !1908)
!1912 = !DILocation(line: 453, column: 32, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 453, column: 6)
!1914 = !DILocation(line: 453, column: 37, scope: !1913)
!1915 = !DILocation(line: 453, column: 42, scope: !1913)
!1916 = !DILocation(line: 453, column: 45, scope: !1913)
!1917 = !DILocation(line: 453, column: 50, scope: !1913)
!1918 = !DILocation(line: 453, column: 6, scope: !1895)
!1919 = !DILocation(line: 454, column: 3, scope: !1913)
!1920 = !DILocation(line: 455, column: 32, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 455, column: 6)
!1922 = !DILocation(line: 455, column: 37, scope: !1921)
!1923 = !DILocation(line: 455, column: 43, scope: !1921)
!1924 = !DILocation(line: 455, column: 46, scope: !1921)
!1925 = !DILocation(line: 455, column: 51, scope: !1921)
!1926 = !DILocation(line: 455, column: 6, scope: !1895)
!1927 = !DILocation(line: 456, column: 3, scope: !1921)
!1928 = !DILocation(line: 457, column: 6, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 457, column: 6)
!1930 = !DILocation(line: 457, column: 11, scope: !1929)
!1931 = !DILocation(line: 457, column: 6, scope: !1895)
!1932 = !DILocation(line: 457, column: 26, scope: !1929)
!1933 = !DILocation(line: 458, column: 6, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 458, column: 6)
!1935 = !DILocation(line: 458, column: 11, scope: !1934)
!1936 = !DILocation(line: 458, column: 6, scope: !1895)
!1937 = !DILocation(line: 458, column: 26, scope: !1934)
!1938 = !DILocation(line: 459, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 459, column: 6)
!1940 = !DILocation(line: 459, column: 11, scope: !1939)
!1941 = !DILocation(line: 459, column: 6, scope: !1895)
!1942 = !DILocation(line: 459, column: 26, scope: !1939)
!1943 = !DILocation(line: 460, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 460, column: 6)
!1945 = !DILocation(line: 460, column: 11, scope: !1944)
!1946 = !DILocation(line: 460, column: 6, scope: !1895)
!1947 = !DILocation(line: 460, column: 26, scope: !1944)
!1948 = !DILocation(line: 461, column: 6, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 461, column: 6)
!1950 = !DILocation(line: 461, column: 11, scope: !1949)
!1951 = !DILocation(line: 461, column: 6, scope: !1895)
!1952 = !DILocation(line: 461, column: 26, scope: !1949)
!1953 = !DILocation(line: 462, column: 6, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 462, column: 6)
!1955 = !DILocation(line: 462, column: 11, scope: !1954)
!1956 = !DILocation(line: 462, column: 6, scope: !1895)
!1957 = !DILocation(line: 462, column: 26, scope: !1954)
!1958 = !DILocation(line: 463, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 463, column: 6)
!1960 = !DILocation(line: 463, column: 11, scope: !1959)
!1961 = !DILocation(line: 463, column: 6, scope: !1895)
!1962 = !DILocation(line: 463, column: 26, scope: !1959)
!1963 = !DILocation(line: 464, column: 6, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 464, column: 6)
!1965 = !DILocation(line: 464, column: 11, scope: !1964)
!1966 = !DILocation(line: 464, column: 6, scope: !1895)
!1967 = !DILocation(line: 464, column: 26, scope: !1964)
!1968 = !DILocation(line: 465, column: 6, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 465, column: 6)
!1970 = !DILocation(line: 465, column: 11, scope: !1969)
!1971 = !DILocation(line: 465, column: 6, scope: !1895)
!1972 = !DILocation(line: 465, column: 26, scope: !1969)
!1973 = !DILocation(line: 466, column: 6, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 466, column: 6)
!1975 = !DILocation(line: 466, column: 11, scope: !1974)
!1976 = !DILocation(line: 466, column: 6, scope: !1895)
!1977 = !DILocation(line: 466, column: 26, scope: !1974)
!1978 = !DILocation(line: 467, column: 6, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 467, column: 6)
!1980 = !DILocation(line: 467, column: 11, scope: !1979)
!1981 = !DILocation(line: 467, column: 6, scope: !1895)
!1982 = !DILocation(line: 467, column: 26, scope: !1979)
!1983 = !DILocation(line: 468, column: 6, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 468, column: 6)
!1985 = !DILocation(line: 468, column: 11, scope: !1984)
!1986 = !DILocation(line: 468, column: 6, scope: !1895)
!1987 = !DILocation(line: 468, column: 26, scope: !1984)
!1988 = !DILocation(line: 469, column: 6, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 469, column: 6)
!1990 = !DILocation(line: 469, column: 11, scope: !1989)
!1991 = !DILocation(line: 469, column: 6, scope: !1895)
!1992 = !DILocation(line: 469, column: 26, scope: !1989)
!1993 = !DILocation(line: 470, column: 6, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 470, column: 6)
!1995 = !DILocation(line: 470, column: 11, scope: !1994)
!1996 = !DILocation(line: 470, column: 6, scope: !1895)
!1997 = !DILocation(line: 470, column: 26, scope: !1994)
!1998 = !DILocation(line: 471, column: 6, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 471, column: 6)
!2000 = !DILocation(line: 471, column: 11, scope: !1999)
!2001 = !DILocation(line: 471, column: 6, scope: !1895)
!2002 = !DILocation(line: 471, column: 26, scope: !1999)
!2003 = !DILocation(line: 472, column: 6, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 472, column: 6)
!2005 = !DILocation(line: 472, column: 11, scope: !2004)
!2006 = !DILocation(line: 472, column: 6, scope: !1895)
!2007 = !DILocation(line: 472, column: 26, scope: !2004)
!2008 = !DILocation(line: 473, column: 6, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 473, column: 6)
!2010 = !DILocation(line: 473, column: 11, scope: !2009)
!2011 = !DILocation(line: 473, column: 6, scope: !1895)
!2012 = !DILocation(line: 473, column: 26, scope: !2009)
!2013 = !DILocation(line: 474, column: 6, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 474, column: 6)
!2015 = !DILocation(line: 474, column: 11, scope: !2014)
!2016 = !DILocation(line: 474, column: 6, scope: !1895)
!2017 = !DILocation(line: 474, column: 27, scope: !2014)
!2018 = !DILocation(line: 475, column: 6, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 475, column: 6)
!2020 = !DILocation(line: 475, column: 11, scope: !2019)
!2021 = !DILocation(line: 475, column: 6, scope: !1895)
!2022 = !DILocation(line: 475, column: 32, scope: !2019)
!2023 = !DILocation(line: 477, column: 50, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1895, file: !24, line: 477, column: 6)
!2025 = !{i8 0, i8 2}
!2026 = !{}
!2027 = !DILocation(line: 477, column: 6, scope: !1895)
!2028 = !DILocation(line: 478, column: 3, scope: !2024)
!2029 = !DILocation(line: 478, column: 3, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !24, line: 478, column: 3)
!2031 = distinct !DILexicalBlock(scope: !2024, file: !24, line: 478, column: 3)
!2032 = !{i32 -2142855159}
!2033 = !DILocation(line: 478, column: 3, scope: !2031)
!2034 = !DILocation(line: 480, column: 3, scope: !2024)
!2035 = !DILocation(line: 480, column: 3, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2024, file: !24, line: 480, column: 3)
!2037 = !DILocation(line: 480, column: 3, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2036, file: !24, line: 480, column: 3)
!2039 = !DILocation(line: 480, column: 3, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2036, file: !24, line: 480, column: 3)
!2041 = !{i64 2152112340, i64 2152112369, i64 2152112415, i64 2152112473, i64 2152112527, i64 2152112581, i64 2152112636, i64 2152112667}
!2042 = !DILocation(line: 483, column: 2, scope: !1895)
!2043 = !DILocation(line: 484, column: 1, scope: !1895)
!2044 = !DISubprogram(name: "kmalloc_trace", scope: !24, file: !24, line: 525, type: !2045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!36, !2047, !34, !1320}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2049, line: 11, flags: DIFlagFwdDecl)
!2049 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2050 = distinct !DISubprogram(name: "kmalloc_type", scope: !24, file: !24, line: 401, type: !2051, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!23, !34, !126}
!2053 = !{!2054, !2055}
!2054 = !DILocalVariable(name: "flags", arg: 1, scope: !2050, file: !24, line: 401, type: !34)
!2055 = !DILocalVariable(name: "caller", arg: 2, scope: !2050, file: !24, line: 401, type: !126)
!2056 = !DILocation(line: 401, column: 67, scope: !2050)
!2057 = !DILocation(line: 401, column: 88, scope: !2050)
!2058 = !DILocation(line: 407, column: 6, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !24, line: 407, column: 6)
!2060 = !DILocation(line: 407, column: 6, scope: !2050)
!2061 = !DILocation(line: 413, column: 3, scope: !2059)
!2062 = !DILocation(line: 423, column: 38, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2050, file: !24, line: 423, column: 6)
!2064 = !DILocation(line: 423, column: 44, scope: !2063)
!2065 = !DILocation(line: 423, column: 6, scope: !2050)
!2066 = !DILocation(line: 424, column: 3, scope: !2063)
!2067 = !DILocation(line: 426, column: 3, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2050, file: !24, line: 425, column: 6)
!2069 = !DILocation(line: 429, column: 1, scope: !2050)
!2070 = !DISubprogram(name: "__kmalloc", scope: !24, file: !24, line: 488, type: !1318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2071 = !DISubprogram(name: "__compiletime_assert_189", scope: !24, file: !24, line: 478, type: !2072, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null}
!2074 = distinct !DISubprogram(name: "xa_err", scope: !43, file: !43, line: 219, type: !2075, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!37, !36}
!2077 = !{!2078}
!2078 = !DILocalVariable(name: "entry", arg: 1, scope: !2074, file: !43, line: 219, type: !36)
!2079 = !DILocation(line: 219, column: 32, scope: !2074)
!2080 = !DILocation(line: 222, column: 16, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2074, file: !43, line: 222, column: 6)
!2082 = !DILocation(line: 222, column: 6, scope: !2081)
!2083 = !DILocation(line: 222, column: 6, scope: !2074)
!2084 = !DILocation(line: 223, column: 16, scope: !2081)
!2085 = !DILocation(line: 223, column: 10, scope: !2081)
!2086 = !DILocation(line: 223, column: 22, scope: !2081)
!2087 = !DILocation(line: 223, column: 3, scope: !2081)
!2088 = !DILocation(line: 224, column: 2, scope: !2074)
!2089 = !DILocation(line: 225, column: 1, scope: !2074)
!2090 = distinct !DISubprogram(name: "xa_is_err", scope: !43, file: !43, line: 201, type: !318, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2091)
!2091 = !{!2092}
!2092 = !DILocalVariable(name: "entry", arg: 1, scope: !2090, file: !43, line: 201, type: !322)
!2093 = !DILocation(line: 201, column: 42, scope: !2090)
!2094 = !DILocation(line: 203, column: 9, scope: !2090)
!2095 = !DILocation(line: 0, scope: !2090)
!2096 = !DILocation(line: 203, column: 2, scope: !2090)
!2097 = distinct !DISubprogram(name: "instrument_write", scope: !2098, file: !2098, line: 38, type: !2099, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2104)
!2098 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !2101, !1320}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2104 = !{!2105, !2106}
!2105 = !DILocalVariable(name: "v", arg: 1, scope: !2097, file: !2098, line: 38, type: !2101)
!2106 = !DILocalVariable(name: "size", arg: 2, scope: !2097, file: !2098, line: 38, type: !1320)
!2107 = !DILocation(line: 38, column: 67, scope: !2097)
!2108 = !DILocation(line: 38, column: 77, scope: !2097)
!2109 = !DILocation(line: 40, column: 20, scope: !2097)
!2110 = !DILocation(line: 40, column: 23, scope: !2097)
!2111 = !DILocation(line: 40, column: 2, scope: !2097)
!2112 = !DILocation(line: 41, column: 2, scope: !2097)
!2113 = !DILocation(line: 42, column: 1, scope: !2097)
!2114 = distinct !DISubprogram(name: "arch___set_bit", scope: !1810, file: !1810, line: 66, type: !1348, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2115)
!2115 = !{!2116, !2117}
!2116 = !DILocalVariable(name: "nr", arg: 1, scope: !2114, file: !1810, line: 66, type: !126)
!2117 = !DILocalVariable(name: "addr", arg: 2, scope: !2114, file: !1810, line: 66, type: !1350)
!2118 = !DILocation(line: 66, column: 30, scope: !2114)
!2119 = !DILocation(line: 66, column: 58, scope: !2114)
!2120 = !DILocation(line: 68, column: 44, scope: !2114)
!2121 = !DILocation(line: 68, column: 56, scope: !2114)
!2122 = !DILocation(line: 68, column: 2, scope: !2114)
!2123 = !{i64 2147781068}
!2124 = !DILocation(line: 69, column: 1, scope: !2114)
!2125 = distinct !DISubprogram(name: "kasan_check_write", scope: !2126, file: !2126, line: 44, type: !2127, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2129)
!2126 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!320, !2101, !13}
!2129 = !{!2130, !2131}
!2130 = !DILocalVariable(name: "p", arg: 1, scope: !2125, file: !2126, line: 44, type: !2101)
!2131 = !DILocalVariable(name: "size", arg: 2, scope: !2125, file: !2126, line: 44, type: !13)
!2132 = !DILocation(line: 44, column: 59, scope: !2125)
!2133 = !DILocation(line: 44, column: 75, scope: !2125)
!2134 = !DILocation(line: 46, column: 2, scope: !2125)
!2135 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2136, file: !2136, line: 229, type: !2137, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2139)
!2136 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2137 = !DISubroutineType(types: !2138)
!2138 = !{null, !2101, !1320, !37}
!2139 = !{!2140, !2141, !2142}
!2140 = !DILocalVariable(name: "ptr", arg: 1, scope: !2135, file: !2136, line: 229, type: !2101)
!2141 = !DILocalVariable(name: "size", arg: 2, scope: !2135, file: !2136, line: 229, type: !1320)
!2142 = !DILocalVariable(name: "type", arg: 3, scope: !2135, file: !2136, line: 230, type: !37)
!2143 = !DILocation(line: 229, column: 60, scope: !2135)
!2144 = !DILocation(line: 229, column: 72, scope: !2135)
!2145 = !DILocation(line: 230, column: 15, scope: !2135)
!2146 = !DILocation(line: 230, column: 23, scope: !2135)
!2147 = distinct !DISubprogram(name: "find_first_zero_bit", scope: !1247, file: !1247, line: 358, type: !2148, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!126, !133, !126}
!2150 = !{!2151, !2152, !2153}
!2151 = !DILocalVariable(name: "addr", arg: 1, scope: !2147, file: !1247, line: 358, type: !133)
!2152 = !DILocalVariable(name: "size", arg: 2, scope: !2147, file: !1247, line: 358, type: !126)
!2153 = !DILocalVariable(name: "val", scope: !2154, file: !1247, line: 361, type: !126)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !1247, line: 360, column: 31)
!2155 = distinct !DILexicalBlock(scope: !2147, file: !1247, line: 360, column: 6)
!2156 = !DILocation(line: 358, column: 56, scope: !2147)
!2157 = !DILocation(line: 358, column: 76, scope: !2147)
!2158 = !DILocation(line: 360, column: 6, scope: !2155)
!2159 = !DILocation(line: 360, column: 6, scope: !2147)
!2160 = !DILocation(line: 361, column: 3, scope: !2154)
!2161 = !DILocation(line: 361, column: 17, scope: !2154)
!2162 = !DILocation(line: 361, column: 24, scope: !2154)
!2163 = !DILocation(line: 361, column: 23, scope: !2154)
!2164 = !DILocation(line: 361, column: 32, scope: !2154)
!2165 = !DILocation(line: 361, column: 31, scope: !2154)
!2166 = !DILocation(line: 361, column: 29, scope: !2154)
!2167 = !DILocation(line: 363, column: 10, scope: !2154)
!2168 = !DILocation(line: 363, column: 14, scope: !2154)
!2169 = !DILocation(line: 363, column: 24, scope: !2154)
!2170 = !DILocation(line: 363, column: 31, scope: !2154)
!2171 = !DILocation(line: 363, column: 3, scope: !2154)
!2172 = !DILocation(line: 364, column: 2, scope: !2155)
!2173 = !DILocation(line: 366, column: 30, scope: !2147)
!2174 = !DILocation(line: 366, column: 36, scope: !2147)
!2175 = !DILocation(line: 366, column: 9, scope: !2147)
!2176 = !DILocation(line: 366, column: 2, scope: !2147)
!2177 = !DILocation(line: 367, column: 1, scope: !2147)
!2178 = !DISubprogram(name: "_find_first_zero_bit", scope: !1247, file: !1247, line: 32, type: !2148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2179 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1208, file: !1208, line: 43, type: !2180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !1211, !126}
!2182 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2098, file: !2098, line: 66, type: !2099, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2183)
!2183 = !{!2184, !2185}
!2184 = !DILocalVariable(name: "v", arg: 1, scope: !2182, file: !2098, line: 66, type: !2101)
!2185 = !DILocalVariable(name: "size", arg: 2, scope: !2182, file: !2098, line: 66, type: !1320)
!2186 = !DILocation(line: 66, column: 73, scope: !2182)
!2187 = !DILocation(line: 66, column: 83, scope: !2182)
!2188 = !DILocation(line: 68, column: 19, scope: !2182)
!2189 = !DILocation(line: 68, column: 22, scope: !2182)
!2190 = !DILocation(line: 68, column: 2, scope: !2182)
!2191 = !DILocation(line: 69, column: 2, scope: !2182)
!2192 = !DILocation(line: 70, column: 1, scope: !2182)
!2193 = distinct !DISubprogram(name: "arch_test_bit", scope: !1810, file: !1810, line: 237, type: !1578, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2194)
!2194 = !{!2195, !2196}
!2195 = !DILocalVariable(name: "nr", arg: 1, scope: !2193, file: !1810, line: 237, type: !126)
!2196 = !DILocalVariable(name: "addr", arg: 2, scope: !2193, file: !1810, line: 237, type: !1580)
!2197 = !DILocation(line: 237, column: 29, scope: !2193)
!2198 = !DILocation(line: 237, column: 63, scope: !2193)
!2199 = !DILocation(line: 239, column: 30, scope: !2193)
!2200 = !DILocation(line: 239, column: 9, scope: !2193)
!2201 = !DILocation(line: 239, column: 54, scope: !2193)
!2202 = !DILocation(line: 239, column: 58, scope: !2193)
!2203 = !DILocation(line: 239, column: 36, scope: !2193)
!2204 = !DILocation(line: 240, column: 26, scope: !2193)
!2205 = !DILocation(line: 240, column: 30, scope: !2193)
!2206 = !DILocation(line: 240, column: 8, scope: !2193)
!2207 = !DILocation(line: 239, column: 2, scope: !2193)
!2208 = distinct !DISubprogram(name: "kasan_check_read", scope: !2126, file: !2126, line: 40, type: !2127, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2209)
!2209 = !{!2210, !2211}
!2210 = !DILocalVariable(name: "p", arg: 1, scope: !2208, file: !2126, line: 40, type: !2101)
!2211 = !DILocalVariable(name: "size", arg: 2, scope: !2208, file: !2126, line: 40, type: !13)
!2212 = !DILocation(line: 40, column: 58, scope: !2208)
!2213 = !DILocation(line: 40, column: 74, scope: !2208)
!2214 = !DILocation(line: 42, column: 2, scope: !2208)
!2215 = distinct !DISubprogram(name: "constant_test_bit", scope: !1810, file: !1810, line: 204, type: !2216, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!320, !135, !1580}
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "nr", arg: 1, scope: !2215, file: !1810, line: 204, type: !135)
!2220 = !DILocalVariable(name: "addr", arg: 2, scope: !2215, file: !1810, line: 204, type: !1580)
!2221 = !DILocation(line: 204, column: 52, scope: !2215)
!2222 = !DILocation(line: 204, column: 86, scope: !2215)
!2223 = !DILocation(line: 206, column: 19, scope: !2215)
!2224 = !DILocation(line: 206, column: 22, scope: !2215)
!2225 = !DILocation(line: 206, column: 15, scope: !2215)
!2226 = !DILocation(line: 207, column: 4, scope: !2215)
!2227 = !DILocation(line: 207, column: 9, scope: !2215)
!2228 = !DILocation(line: 207, column: 12, scope: !2215)
!2229 = !DILocation(line: 206, column: 44, scope: !2215)
!2230 = !DILocation(line: 207, column: 37, scope: !2215)
!2231 = !DILocation(line: 206, column: 2, scope: !2215)
!2232 = distinct !DISubprogram(name: "variable_test_bit", scope: !1810, file: !1810, line: 224, type: !2216, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2233)
!2233 = !{!2234, !2235, !2236}
!2234 = !DILocalVariable(name: "nr", arg: 1, scope: !2232, file: !1810, line: 224, type: !135)
!2235 = !DILocalVariable(name: "addr", arg: 2, scope: !2232, file: !1810, line: 224, type: !1580)
!2236 = !DILocalVariable(name: "oldbit", scope: !2232, file: !1810, line: 226, type: !320)
!2237 = !DILocation(line: 224, column: 52, scope: !2232)
!2238 = !DILocation(line: 224, column: 86, scope: !2232)
!2239 = !DILocation(line: 226, column: 2, scope: !2232)
!2240 = !DILocation(line: 226, column: 7, scope: !2232)
!2241 = !DILocation(line: 231, column: 33, scope: !2232)
!2242 = !DILocation(line: 231, column: 46, scope: !2232)
!2243 = !DILocation(line: 228, column: 2, scope: !2232)
!2244 = !{i64 2147793822, i64 2147793896}
!2245 = !DILocation(line: 233, column: 9, scope: !2232)
!2246 = !DILocation(line: 234, column: 1, scope: !2232)
!2247 = !DILocation(line: 233, column: 2, scope: !2232)
!2248 = distinct !DISubprogram(name: "arch___clear_bit", scope: !1810, file: !1810, line: 92, type: !1348, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2249)
!2249 = !{!2250, !2251}
!2250 = !DILocalVariable(name: "nr", arg: 1, scope: !2248, file: !1810, line: 92, type: !126)
!2251 = !DILocalVariable(name: "addr", arg: 2, scope: !2248, file: !1810, line: 92, type: !1350)
!2252 = !DILocation(line: 92, column: 32, scope: !2248)
!2253 = !DILocation(line: 92, column: 60, scope: !2248)
!2254 = !DILocation(line: 94, column: 44, scope: !2248)
!2255 = !DILocation(line: 94, column: 56, scope: !2248)
!2256 = !DILocation(line: 94, column: 2, scope: !2248)
!2257 = !{i64 2147782613}
!2258 = !DILocation(line: 95, column: 1, scope: !2248)
!2259 = distinct !DISubprogram(name: "find_first_bit", scope: !1247, file: !1247, line: 200, type: !2148, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2260)
!2260 = !{!2261, !2262, !2263}
!2261 = !DILocalVariable(name: "addr", arg: 1, scope: !2259, file: !1247, line: 200, type: !133)
!2262 = !DILocalVariable(name: "size", arg: 2, scope: !2259, file: !1247, line: 200, type: !126)
!2263 = !DILocalVariable(name: "val", scope: !2264, file: !1247, line: 203, type: !126)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !1247, line: 202, column: 31)
!2265 = distinct !DILexicalBlock(scope: !2259, file: !1247, line: 202, column: 6)
!2266 = !DILocation(line: 200, column: 51, scope: !2259)
!2267 = !DILocation(line: 200, column: 71, scope: !2259)
!2268 = !DILocation(line: 202, column: 6, scope: !2265)
!2269 = !DILocation(line: 202, column: 6, scope: !2259)
!2270 = !DILocation(line: 203, column: 3, scope: !2264)
!2271 = !DILocation(line: 203, column: 17, scope: !2264)
!2272 = !DILocation(line: 203, column: 24, scope: !2264)
!2273 = !DILocation(line: 203, column: 23, scope: !2264)
!2274 = !DILocation(line: 203, column: 31, scope: !2264)
!2275 = !DILocation(line: 203, column: 29, scope: !2264)
!2276 = !DILocation(line: 205, column: 10, scope: !2264)
!2277 = !DILocation(line: 205, column: 16, scope: !2264)
!2278 = !DILocation(line: 205, column: 29, scope: !2264)
!2279 = !DILocation(line: 205, column: 3, scope: !2264)
!2280 = !DILocation(line: 206, column: 2, scope: !2265)
!2281 = !DILocation(line: 208, column: 25, scope: !2259)
!2282 = !DILocation(line: 208, column: 31, scope: !2259)
!2283 = !DILocation(line: 208, column: 9, scope: !2259)
!2284 = !DILocation(line: 208, column: 2, scope: !2259)
!2285 = !DILocation(line: 209, column: 1, scope: !2259)
!2286 = !DISubprogram(name: "_find_first_bit", scope: !1247, file: !1247, line: 21, type: !2148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2287 = distinct !DISubprogram(name: "xas_not_node", scope: !43, file: !43, line: 1478, type: !2288, scopeLine: 1479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!320, !41}
!2290 = !{!2291}
!2291 = !DILocalVariable(name: "node", arg: 1, scope: !2287, file: !43, line: 1478, type: !41)
!2292 = !DILocation(line: 1478, column: 49, scope: !2287)
!2293 = !DILocation(line: 1480, column: 25, scope: !2287)
!2294 = !DILocation(line: 1480, column: 10, scope: !2287)
!2295 = !DILocation(line: 1480, column: 30, scope: !2287)
!2296 = !DILocation(line: 1480, column: 35, scope: !2287)
!2297 = !DILocation(line: 1480, column: 39, scope: !2287)
!2298 = !DILocation(line: 1480, column: 38, scope: !2287)
!2299 = !DILocation(line: 1480, column: 2, scope: !2287)
!2300 = distinct !DISubprogram(name: "xa_entry", scope: !43, file: !43, line: 1212, type: !2301, scopeLine: 1214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2305)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!36, !514, !2303, !13}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!2305 = !{!2306, !2307, !2308, !2309}
!2306 = !DILocalVariable(name: "xa", arg: 1, scope: !2300, file: !43, line: 1212, type: !514)
!2307 = !DILocalVariable(name: "node", arg: 2, scope: !2300, file: !43, line: 1213, type: !2303)
!2308 = !DILocalVariable(name: "offset", arg: 3, scope: !2300, file: !43, line: 1213, type: !13)
!2309 = !DILocalVariable(name: "__UNIQUE_ID_rcu178", scope: !2310, file: !43, line: 1216, type: !36)
!2310 = distinct !DILexicalBlock(scope: !2300, file: !43, line: 1216, column: 9)
!2311 = !DILocation(line: 1212, column: 51, scope: !2300)
!2312 = !DILocation(line: 1213, column: 27, scope: !2300)
!2313 = !DILocation(line: 1213, column: 46, scope: !2300)
!2314 = !DILocation(line: 1215, column: 2, scope: !2300)
!2315 = !DILocation(line: 1215, column: 2, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2300, file: !43, line: 1215, column: 2)
!2317 = !DILocation(line: 1216, column: 9, scope: !2310)
!2318 = !DILocation(line: 1216, column: 9, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2310, file: !43, line: 1216, column: 9)
!2320 = !DILocation(line: 1216, column: 9, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2319, file: !43, line: 1216, column: 9)
!2322 = !DILocation(line: 1216, column: 9, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2310, file: !43, line: 1216, column: 9)
!2324 = !DILocation(line: 1216, column: 9, scope: !2300)
!2325 = !DILocation(line: 1216, column: 2, scope: !2300)
