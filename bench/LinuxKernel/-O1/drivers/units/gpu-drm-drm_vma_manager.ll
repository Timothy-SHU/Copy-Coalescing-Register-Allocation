; ModuleID = 'drivers/gpu/drm/drm_vma_manager.c'
source_filename = "drivers/gpu/drm/drm_vma_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vma_offset_manager_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vma_offset_manager_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vma_offset_manager_destroy: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vma_offset_manager_destroy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vma_offset_lookup_locked: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vma_offset_lookup_locked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vma_offset_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vma_offset_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vma_offset_remove: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vma_offset_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vma_node_allow: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vma_node_allow ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vma_node_allow_once: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vma_node_allow_once ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vma_node_revoke: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vma_node_revoke ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_vma_node_is_allowed: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_vma_node_is_allowed ; .previous"

%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon, %struct.qspinlock }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.drm_vma_offset_manager = type { %struct.rwlock_t, %struct.drm_mm }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i64 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.drm_vma_offset_file = type { %struct.rb_node, ptr, i64 }

@__UNIQUE_ID___addressable_drm_vma_offset_manager_init288 = internal global ptr @drm_vma_offset_manager_init, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_drm_vma_offset_manager_destroy289 = internal global ptr @drm_vma_offset_manager_destroy, section ".discard.addressable", align 8, !dbg !164
@__UNIQUE_ID___addressable_drm_vma_offset_lookup_locked290 = internal global ptr @drm_vma_offset_lookup_locked, section ".discard.addressable", align 8, !dbg !166
@__UNIQUE_ID___addressable_drm_vma_offset_add291 = internal global ptr @drm_vma_offset_add, section ".discard.addressable", align 8, !dbg !168
@__UNIQUE_ID___addressable_drm_vma_offset_remove292 = internal global ptr @drm_vma_offset_remove, section ".discard.addressable", align 8, !dbg !170
@__UNIQUE_ID___addressable_drm_vma_node_allow293 = internal global ptr @drm_vma_node_allow, section ".discard.addressable", align 8, !dbg !172
@__UNIQUE_ID___addressable_drm_vma_node_allow_once294 = internal global ptr @drm_vma_node_allow_once, section ".discard.addressable", align 8, !dbg !174
@__UNIQUE_ID___addressable_drm_vma_node_revoke295 = internal global ptr @drm_vma_node_revoke, section ".discard.addressable", align 8, !dbg !176
@__UNIQUE_ID___addressable_drm_vma_node_is_allowed296 = internal global ptr @drm_vma_node_is_allowed, section ".discard.addressable", align 8, !dbg !178
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !180
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_drm_vma_offset_manager_init288, ptr @__UNIQUE_ID___addressable_drm_vma_offset_manager_destroy289, ptr @__UNIQUE_ID___addressable_drm_vma_offset_lookup_locked290, ptr @__UNIQUE_ID___addressable_drm_vma_offset_add291, ptr @__UNIQUE_ID___addressable_drm_vma_offset_remove292, ptr @__UNIQUE_ID___addressable_drm_vma_node_allow293, ptr @__UNIQUE_ID___addressable_drm_vma_node_allow_once294, ptr @__UNIQUE_ID___addressable_drm_vma_node_revoke295, ptr @__UNIQUE_ID___addressable_drm_vma_node_is_allowed296], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_vma_offset_manager_init(ptr noundef %mgr, i64 noundef %page_offset, i64 noundef %size) #0 align 16 !dbg !195 {
entry:
  %mgr.addr = alloca ptr, align 8
  %page_offset.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.rwlock_t, align 4
  store ptr %mgr, ptr %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mgr.addr, metadata !204, metadata !DIExpression()), !dbg !207
  store i64 %page_offset, ptr %page_offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page_offset.addr, metadata !205, metadata !DIExpression()), !dbg !208
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !206, metadata !DIExpression()), !dbg !209
  br label %do.body, !dbg !210

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mgr.addr, align 8, !dbg !211
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %0, i32 0, i32 0, !dbg !211
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !211
  %1 = getelementptr inbounds %struct.qrwlock, ptr %raw_lock, i32 0, i32 0, !dbg !211
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !211
  store i32 0, ptr %counter, align 4, !dbg !211
  %wait_lock = getelementptr inbounds %struct.qrwlock, ptr %raw_lock, i32 0, i32 1, !dbg !211
  %2 = getelementptr inbounds %struct.qspinlock, ptr %wait_lock, i32 0, i32 0, !dbg !211
  %counter1 = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !211
  store i32 0, ptr %counter1, align 4, !dbg !211
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %vm_lock, ptr align 4 %.compoundliteral, i64 8, i1 false), !dbg !211
  br label %do.end, !dbg !211

do.end:                                           ; preds = %do.body
  %3 = load ptr, ptr %mgr.addr, align 8, !dbg !213
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %3, i32 0, i32 1, !dbg !214
  %4 = load i64, ptr %page_offset.addr, align 8, !dbg !215
  %5 = load i64, ptr %size.addr, align 8, !dbg !216
  call void @drm_mm_init(ptr noundef %vm_addr_space_mm, i64 noundef %4, i64 noundef %5) #15, !dbg !217
  ret void, !dbg !218
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !219 dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_vma_offset_manager_destroy(ptr noundef %mgr) #0 align 16 !dbg !222 {
entry:
  %mgr.addr = alloca ptr, align 8
  store ptr %mgr, ptr %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mgr.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load ptr, ptr %mgr.addr, align 8, !dbg !228
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %0, i32 0, i32 1, !dbg !229
  call void @drm_mm_takedown(ptr noundef %vm_addr_space_mm) #15, !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !232 dso_local void @drm_mm_takedown(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_vma_offset_lookup_locked(ptr noundef %mgr, i64 noundef %start, i64 noundef %pages) #0 align 16 !dbg !235 {
entry:
  %retval = alloca ptr, align 8
  %mgr.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %pages.addr = alloca i64, align 8
  %node = alloca ptr, align 8
  %best = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %offset = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr21 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  store ptr %mgr, ptr %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mgr.addr, metadata !239, metadata !DIExpression()), !dbg !251
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !240, metadata !DIExpression()), !dbg !252
  store i64 %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !241, metadata !DIExpression()), !dbg !253
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %node, metadata !242, metadata !DIExpression()), !dbg !255
  call void @llvm.lifetime.start.p0(i64 8, ptr %best) #16, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %best, metadata !243, metadata !DIExpression()), !dbg !256
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #16, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !244, metadata !DIExpression()), !dbg !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !259
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !245, metadata !DIExpression()), !dbg !260
  %0 = load ptr, ptr %mgr.addr, align 8, !dbg !261
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %0, i32 0, i32 1, !dbg !262
  %interval_tree = getelementptr inbounds %struct.drm_mm, ptr %vm_addr_space_mm, i32 0, i32 3, !dbg !263
  %rb_root = getelementptr inbounds %struct.rb_root_cached, ptr %interval_tree, i32 0, i32 0, !dbg !264
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root, i32 0, i32 0, !dbg !265
  %1 = load ptr, ptr %rb_node, align 8, !dbg !265
  store ptr %1, ptr %iter, align 8, !dbg !266
  store ptr null, ptr %best, align 8, !dbg !267
  br label %while.cond, !dbg !268

while.cond:                                       ; preds = %if.end8, %entry
  %2 = load ptr, ptr %iter, align 8, !dbg !269
  %tobool = icmp ne ptr %2, null, !dbg !269
  %lnot = xor i1 %tobool, true, !dbg !269
  %lnot1 = xor i1 %lnot, true, !dbg !269
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !269
  %conv = sext i32 %lnot.ext to i64, !dbg !269
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !269
  %tobool2 = icmp ne i64 %expval, 0, !dbg !268
  br i1 %tobool2, label %while.body, label %while.end, !dbg !268

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !246, metadata !DIExpression()), !dbg !270
  %3 = load ptr, ptr %iter, align 8, !dbg !270
  store ptr %3, ptr %__mptr, align 8, !dbg !270
  %4 = load ptr, ptr %__mptr, align 8, !dbg !270
  %add.ptr = getelementptr i8, ptr %4, i64 -64, !dbg !270
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !270
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !271
  %5 = load ptr, ptr %tmp, align 8, !dbg !270
  store ptr %5, ptr %node, align 8, !dbg !272
  %6 = load ptr, ptr %node, align 8, !dbg !273
  %start3 = getelementptr inbounds %struct.drm_mm_node, ptr %6, i32 0, i32 1, !dbg !274
  %7 = load i64, ptr %start3, align 8, !dbg !274
  store i64 %7, ptr %offset, align 8, !dbg !275
  %8 = load i64, ptr %start.addr, align 8, !dbg !276
  %9 = load i64, ptr %offset, align 8, !dbg !278
  %cmp = icmp uge i64 %8, %9, !dbg !279
  br i1 %cmp, label %if.then, label %if.else, !dbg !280

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %iter, align 8, !dbg !281
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1, !dbg !283
  %11 = load ptr, ptr %rb_right, align 8, !dbg !283
  store ptr %11, ptr %iter, align 8, !dbg !284
  %12 = load ptr, ptr %node, align 8, !dbg !285
  store ptr %12, ptr %best, align 8, !dbg !286
  %13 = load i64, ptr %start.addr, align 8, !dbg !287
  %14 = load i64, ptr %offset, align 8, !dbg !289
  %cmp5 = icmp eq i64 %13, %14, !dbg !290
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !291

if.then7:                                         ; preds = %if.then
  br label %while.end, !dbg !292

if.end:                                           ; preds = %if.then
  br label %if.end8, !dbg !293

if.else:                                          ; preds = %while.body
  %15 = load ptr, ptr %iter, align 8, !dbg !294
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2, !dbg !296
  %16 = load ptr, ptr %rb_left, align 8, !dbg !296
  store ptr %16, ptr %iter, align 8, !dbg !297
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  br label %while.cond, !dbg !268, !llvm.loop !298

while.end:                                        ; preds = %if.then7, %while.cond
  %17 = load ptr, ptr %best, align 8, !dbg !302
  %tobool9 = icmp ne ptr %17, null, !dbg !302
  br i1 %tobool9, label %if.then10, label %if.end17, !dbg !304

if.then10:                                        ; preds = %while.end
  %18 = load ptr, ptr %best, align 8, !dbg !305
  %start11 = getelementptr inbounds %struct.drm_mm_node, ptr %18, i32 0, i32 1, !dbg !307
  %19 = load i64, ptr %start11, align 8, !dbg !307
  %20 = load ptr, ptr %best, align 8, !dbg !308
  %size = getelementptr inbounds %struct.drm_mm_node, ptr %20, i32 0, i32 2, !dbg !309
  %21 = load i64, ptr %size, align 8, !dbg !309
  %add = add i64 %19, %21, !dbg !310
  store i64 %add, ptr %offset, align 8, !dbg !311
  %22 = load i64, ptr %offset, align 8, !dbg !312
  %23 = load i64, ptr %start.addr, align 8, !dbg !314
  %24 = load i64, ptr %pages.addr, align 8, !dbg !315
  %add12 = add i64 %23, %24, !dbg !316
  %cmp13 = icmp ult i64 %22, %add12, !dbg !317
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !318

if.then15:                                        ; preds = %if.then10
  store ptr null, ptr %best, align 8, !dbg !319
  br label %if.end16, !dbg !320

if.end16:                                         ; preds = %if.then15, %if.then10
  br label %if.end17, !dbg !321

if.end17:                                         ; preds = %if.end16, %while.end
  %25 = load ptr, ptr %best, align 8, !dbg !322
  %tobool18 = icmp ne ptr %25, null, !dbg !322
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !324

if.then19:                                        ; preds = %if.end17
  store ptr null, ptr %retval, align 8, !dbg !325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !325

if.end20:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr21) #16, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %__mptr21, metadata !249, metadata !DIExpression()), !dbg !326
  %26 = load ptr, ptr %best, align 8, !dbg !326
  store ptr %26, ptr %__mptr21, align 8, !dbg !326
  %27 = load ptr, ptr %__mptr21, align 8, !dbg !326
  %add.ptr23 = getelementptr i8, ptr %27, i64 -8, !dbg !326
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !326
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr21) #16, !dbg !327
  %28 = load ptr, ptr %tmp22, align 8, !dbg !326
  store ptr %28, ptr %retval, align 8, !dbg !328
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !328

cleanup:                                          ; preds = %if.end20, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !329
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #16, !dbg !329
  call void @llvm.lifetime.end.p0(i64 8, ptr %best) #16, !dbg !329
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !329
  %29 = load ptr, ptr %retval, align 8, !dbg !329
  ret ptr %29, !dbg !329
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_vma_offset_add(ptr noundef %mgr, ptr noundef %node, i64 noundef %pages) #0 align 16 !dbg !330 {
entry:
  %mgr.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %pages.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %mgr, ptr %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mgr.addr, metadata !334, metadata !DIExpression()), !dbg !338
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !335, metadata !DIExpression()), !dbg !339
  store i64 %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !336, metadata !DIExpression()), !dbg !340
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !337, metadata !DIExpression()), !dbg !342
  store i32 0, ptr %ret, align 4, !dbg !342
  %0 = load ptr, ptr %mgr.addr, align 8, !dbg !343
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %0, i32 0, i32 0, !dbg !343
  call void @_raw_write_lock(ptr noundef %vm_lock) #15, !dbg !343
  %1 = load ptr, ptr %node.addr, align 8, !dbg !344
  %vm_node = getelementptr inbounds %struct.drm_vma_offset_node, ptr %1, i32 0, i32 1, !dbg !346
  %call = call zeroext i1 @drm_mm_node_allocated(ptr noundef %vm_node) #15, !dbg !347
  br i1 %call, label %if.end, label %if.then, !dbg !348

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mgr.addr, align 8, !dbg !349
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %2, i32 0, i32 1, !dbg !350
  %3 = load ptr, ptr %node.addr, align 8, !dbg !351
  %vm_node1 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %3, i32 0, i32 1, !dbg !352
  %4 = load i64, ptr %pages.addr, align 8, !dbg !353
  %call2 = call i32 @drm_mm_insert_node(ptr noundef %vm_addr_space_mm, ptr noundef %vm_node1, i64 noundef %4) #15, !dbg !354
  store i32 %call2, ptr %ret, align 4, !dbg !355
  br label %if.end, !dbg !356

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %mgr.addr, align 8, !dbg !357
  %vm_lock3 = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %5, i32 0, i32 0, !dbg !357
  call void @_raw_write_unlock(ptr noundef %vm_lock3) #15, !dbg !357
  %6 = load i32, ptr %ret, align 4, !dbg !358
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !359
  ret i32 %6, !dbg !360
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !361 dso_local void @_raw_write_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_mm_node_allocated(ptr noundef %node) #6 align 16 !dbg !366 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load ptr, ptr %node.addr, align 8, !dbg !374
  %flags = getelementptr inbounds %struct.drm_mm_node, ptr %0, i32 0, i32 12, !dbg !374
  %1 = ptrtoint ptr %flags to i64, !dbg !374
  %cmp = icmp ne i64 %1, 0, !dbg !374
  %conv = zext i1 %cmp to i32, !dbg !374
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !374
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !374

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !374
  %flags1 = getelementptr inbounds %struct.drm_mm_node, ptr %3, i32 0, i32 12, !dbg !374
  %4 = ptrtoint ptr %flags1 to i64, !dbg !374
  %cmp2 = icmp ne i64 %4, 0, !dbg !374
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !374

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %node.addr, align 8, !dbg !374
  %flags5 = getelementptr inbounds %struct.drm_mm_node, ptr %5, i32 0, i32 12, !dbg !374
  %6 = load i64, ptr %flags5, align 8, !dbg !374
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !374
  br i1 %7, label %cond.true, label %cond.false, !dbg !374

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %node.addr, align 8, !dbg !374
  %flags6 = getelementptr inbounds %struct.drm_mm_node, ptr %8, i32 0, i32 12, !dbg !374
  %call = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %flags6) #15, !dbg !374
  %conv7 = zext i1 %call to i32, !dbg !374
  br label %cond.end, !dbg !374

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %node.addr, align 8, !dbg !374
  %flags8 = getelementptr inbounds %struct.drm_mm_node, ptr %9, i32 0, i32 12, !dbg !374
  %call9 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %flags8) #15, !dbg !374
  %conv10 = zext i1 %call9 to i32, !dbg !374
  br label %cond.end, !dbg !374

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !374
  %tobool = icmp ne i32 %cond, 0, !dbg !374
  ret i1 %tobool, !dbg !375
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_mm_insert_node(ptr noundef %mm, ptr noundef %node, i64 noundef %size) #6 align 16 !dbg !376 {
entry:
  %mm.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !380, metadata !DIExpression()), !dbg !383
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !381, metadata !DIExpression()), !dbg !384
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !382, metadata !DIExpression()), !dbg !385
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !386
  %1 = load ptr, ptr %node.addr, align 8, !dbg !387
  %2 = load i64, ptr %size.addr, align 8, !dbg !388
  %call = call i32 @drm_mm_insert_node_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 0, i64 noundef 0, i32 noundef 0) #15, !dbg !389
  ret i32 %call, !dbg !390
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !391 dso_local void @_raw_write_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_vma_offset_remove(ptr noundef %mgr, ptr noundef %node) #0 align 16 !dbg !392 {
entry:
  %mgr.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  store ptr %mgr, ptr %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mgr.addr, metadata !396, metadata !DIExpression()), !dbg !398
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !397, metadata !DIExpression()), !dbg !399
  %0 = load ptr, ptr %mgr.addr, align 8, !dbg !400
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %0, i32 0, i32 0, !dbg !400
  call void @_raw_write_lock(ptr noundef %vm_lock) #15, !dbg !400
  %1 = load ptr, ptr %node.addr, align 8, !dbg !401
  %vm_node = getelementptr inbounds %struct.drm_vma_offset_node, ptr %1, i32 0, i32 1, !dbg !403
  %call = call zeroext i1 @drm_mm_node_allocated(ptr noundef %vm_node) #15, !dbg !404
  br i1 %call, label %if.then, label %if.end, !dbg !405

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %node.addr, align 8, !dbg !406
  %vm_node1 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %2, i32 0, i32 1, !dbg !408
  call void @drm_mm_remove_node(ptr noundef %vm_node1) #15, !dbg !409
  %3 = load ptr, ptr %node.addr, align 8, !dbg !410
  %vm_node2 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %3, i32 0, i32 1, !dbg !411
  call void @llvm.memset.p0.i64(ptr align 8 %vm_node2, i8 0, i64 168, i1 false), !dbg !412
  br label %if.end, !dbg !413

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %mgr.addr, align 8, !dbg !414
  %vm_lock3 = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %4, i32 0, i32 0, !dbg !414
  call void @_raw_write_unlock(ptr noundef %vm_lock3) #15, !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !416 dso_local void @drm_mm_remove_node(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_vma_node_allow(ptr noundef %node, ptr noundef %tag) #0 align 16 !dbg !419 {
entry:
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !423, metadata !DIExpression()), !dbg !425
  store ptr %tag, ptr %tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !424, metadata !DIExpression()), !dbg !426
  %0 = load ptr, ptr %node.addr, align 8, !dbg !427
  %1 = load ptr, ptr %tag.addr, align 8, !dbg !428
  %call = call i32 @vma_node_allow(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #15, !dbg !429
  ret i32 %call, !dbg !430
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vma_node_allow(ptr noundef %node, ptr noundef %tag, i1 noundef zeroext %ref_counted) #0 align 16 !dbg !431 {
entry:
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %ref_counted.addr = alloca i8, align 1
  %iter = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %new = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !435, metadata !DIExpression()), !dbg !448
  store ptr %tag, ptr %tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !436, metadata !DIExpression()), !dbg !449
  %frombool = zext i1 %ref_counted to i8
  store i8 %frombool, ptr %ref_counted.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ref_counted.addr, metadata !437, metadata !DIExpression()), !dbg !450
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #16, !dbg !451
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !438, metadata !DIExpression()), !dbg !452
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !440, metadata !DIExpression()), !dbg !454
  store ptr null, ptr %parent, align 8, !dbg !454
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %new, metadata !441, metadata !DIExpression()), !dbg !456
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !442, metadata !DIExpression()), !dbg !457
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !443, metadata !DIExpression()), !dbg !459
  store i32 0, ptr %ret, align 4, !dbg !459
  %call = call noalias ptr @kmalloc(i64 noundef 40, i32 noundef 3264) #17, !dbg !460
  store ptr %call, ptr %new, align 8, !dbg !461
  %0 = load ptr, ptr %node.addr, align 8, !dbg !462
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_node, ptr %0, i32 0, i32 0, !dbg !462
  call void @_raw_write_lock(ptr noundef %vm_lock) #15, !dbg !462
  %1 = load ptr, ptr %node.addr, align 8, !dbg !463
  %vm_files = getelementptr inbounds %struct.drm_vma_offset_node, ptr %1, i32 0, i32 2, !dbg !464
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %vm_files, i32 0, i32 0, !dbg !465
  store ptr %rb_node, ptr %iter, align 8, !dbg !466
  br label %while.cond, !dbg !467

while.cond:                                       ; preds = %if.end13, %entry
  %2 = load ptr, ptr %iter, align 8, !dbg !468
  %3 = load ptr, ptr %2, align 8, !dbg !468
  %tobool = icmp ne ptr %3, null, !dbg !468
  %lnot = xor i1 %tobool, true, !dbg !468
  %lnot2 = xor i1 %lnot, true, !dbg !468
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !468
  %conv = sext i32 %lnot.ext to i64, !dbg !468
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !468
  %tobool3 = icmp ne i64 %expval, 0, !dbg !467
  br i1 %tobool3, label %while.body, label %while.end, !dbg !467

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %iter, align 8, !dbg !469
  %5 = load ptr, ptr %4, align 8, !dbg !470
  store ptr %5, ptr %parent, align 8, !dbg !471
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !472
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !444, metadata !DIExpression()), !dbg !472
  %6 = load ptr, ptr %iter, align 8, !dbg !472
  %7 = load ptr, ptr %6, align 8, !dbg !472
  store ptr %7, ptr %__mptr, align 8, !dbg !472
  %8 = load ptr, ptr %__mptr, align 8, !dbg !472
  %add.ptr = getelementptr i8, ptr %8, i64 0, !dbg !472
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !472
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !473
  %9 = load ptr, ptr %tmp, align 8, !dbg !472
  store ptr %9, ptr %entry1, align 8, !dbg !474
  %10 = load ptr, ptr %tag.addr, align 8, !dbg !475
  %11 = load ptr, ptr %entry1, align 8, !dbg !477
  %vm_tag = getelementptr inbounds %struct.drm_vma_offset_file, ptr %11, i32 0, i32 1, !dbg !478
  %12 = load ptr, ptr %vm_tag, align 8, !dbg !478
  %cmp = icmp eq ptr %10, %12, !dbg !479
  br i1 %cmp, label %if.then, label %if.else, !dbg !480

if.then:                                          ; preds = %while.body
  %13 = load i8, ptr %ref_counted.addr, align 1, !dbg !481, !range !484, !noundef !485
  %tobool5 = trunc i8 %13 to i1, !dbg !481
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !486

if.then6:                                         ; preds = %if.then
  %14 = load ptr, ptr %entry1, align 8, !dbg !487
  %vm_count = getelementptr inbounds %struct.drm_vma_offset_file, ptr %14, i32 0, i32 2, !dbg !488
  %15 = load i64, ptr %vm_count, align 8, !dbg !489
  %inc = add i64 %15, 1, !dbg !489
  store i64 %inc, ptr %vm_count, align 8, !dbg !489
  br label %if.end, !dbg !487

if.end:                                           ; preds = %if.then6, %if.then
  br label %unlock, !dbg !490

if.else:                                          ; preds = %while.body
  %16 = load ptr, ptr %tag.addr, align 8, !dbg !491
  %17 = load ptr, ptr %entry1, align 8, !dbg !493
  %vm_tag7 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %17, i32 0, i32 1, !dbg !494
  %18 = load ptr, ptr %vm_tag7, align 8, !dbg !494
  %cmp8 = icmp ugt ptr %16, %18, !dbg !495
  br i1 %cmp8, label %if.then10, label %if.else11, !dbg !496

if.then10:                                        ; preds = %if.else
  %19 = load ptr, ptr %iter, align 8, !dbg !497
  %20 = load ptr, ptr %19, align 8, !dbg !499
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1, !dbg !500
  store ptr %rb_right, ptr %iter, align 8, !dbg !501
  br label %if.end12, !dbg !502

if.else11:                                        ; preds = %if.else
  %21 = load ptr, ptr %iter, align 8, !dbg !503
  %22 = load ptr, ptr %21, align 8, !dbg !505
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 2, !dbg !506
  store ptr %rb_left, ptr %iter, align 8, !dbg !507
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  br label %while.cond, !dbg !467, !llvm.loop !508

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %new, align 8, !dbg !510
  %tobool14 = icmp ne ptr %23, null, !dbg !510
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !512

if.then15:                                        ; preds = %while.end
  store i32 -12, ptr %ret, align 4, !dbg !513
  br label %unlock, !dbg !515

if.end16:                                         ; preds = %while.end
  %24 = load ptr, ptr %tag.addr, align 8, !dbg !516
  %25 = load ptr, ptr %new, align 8, !dbg !517
  %vm_tag17 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %25, i32 0, i32 1, !dbg !518
  store ptr %24, ptr %vm_tag17, align 8, !dbg !519
  %26 = load ptr, ptr %new, align 8, !dbg !520
  %vm_count18 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %26, i32 0, i32 2, !dbg !521
  store i64 1, ptr %vm_count18, align 8, !dbg !522
  %27 = load ptr, ptr %new, align 8, !dbg !523
  %vm_rb = getelementptr inbounds %struct.drm_vma_offset_file, ptr %27, i32 0, i32 0, !dbg !524
  %28 = load ptr, ptr %parent, align 8, !dbg !525
  %29 = load ptr, ptr %iter, align 8, !dbg !526
  call void @rb_link_node(ptr noundef %vm_rb, ptr noundef %28, ptr noundef %29) #15, !dbg !527
  %30 = load ptr, ptr %new, align 8, !dbg !528
  %vm_rb19 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %30, i32 0, i32 0, !dbg !529
  %31 = load ptr, ptr %node.addr, align 8, !dbg !530
  %vm_files20 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %31, i32 0, i32 2, !dbg !531
  call void @rb_insert_color(ptr noundef %vm_rb19, ptr noundef %vm_files20) #15, !dbg !532
  store ptr null, ptr %new, align 8, !dbg !533
  br label %unlock, !dbg !534

unlock:                                           ; preds = %if.end16, %if.then15, %if.end
  call void @llvm.dbg.label(metadata !447), !dbg !535
  %32 = load ptr, ptr %node.addr, align 8, !dbg !536
  %vm_lock21 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %32, i32 0, i32 0, !dbg !536
  call void @_raw_write_unlock(ptr noundef %vm_lock21) #15, !dbg !536
  %33 = load ptr, ptr %new, align 8, !dbg !537
  call void @kfree(ptr noundef %33) #15, !dbg !538
  %34 = load i32, ptr %ret, align 4, !dbg !539
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !540
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !540
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !540
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !540
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #16, !dbg !540
  ret i32 %34, !dbg !541
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_vma_node_allow_once(ptr noundef %node, ptr noundef %tag) #0 align 16 !dbg !542 {
entry:
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !544, metadata !DIExpression()), !dbg !546
  store ptr %tag, ptr %tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !545, metadata !DIExpression()), !dbg !547
  %0 = load ptr, ptr %node.addr, align 8, !dbg !548
  %1 = load ptr, ptr %tag.addr, align 8, !dbg !549
  %call = call i32 @vma_node_allow(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false) #15, !dbg !550
  ret i32 %call, !dbg !551
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_vma_node_revoke(ptr noundef %node, ptr noundef %tag) #0 align 16 !dbg !552 {
entry:
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !556, metadata !DIExpression()), !dbg !563
  store ptr %tag, ptr %tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !557, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !558, metadata !DIExpression()), !dbg !566
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #16, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !559, metadata !DIExpression()), !dbg !568
  %0 = load ptr, ptr %node.addr, align 8, !dbg !569
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_node, ptr %0, i32 0, i32 0, !dbg !569
  call void @_raw_write_lock(ptr noundef %vm_lock) #15, !dbg !569
  %1 = load ptr, ptr %node.addr, align 8, !dbg !570
  %vm_files = getelementptr inbounds %struct.drm_vma_offset_node, ptr %1, i32 0, i32 2, !dbg !571
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %vm_files, i32 0, i32 0, !dbg !572
  %2 = load ptr, ptr %rb_node, align 8, !dbg !572
  store ptr %2, ptr %iter, align 8, !dbg !573
  br label %while.cond, !dbg !574

while.cond:                                       ; preds = %if.end14, %entry
  %3 = load ptr, ptr %iter, align 8, !dbg !575
  %tobool = icmp ne ptr %3, null, !dbg !575
  %lnot = xor i1 %tobool, true, !dbg !575
  %lnot2 = xor i1 %lnot, true, !dbg !575
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !575
  %conv = sext i32 %lnot.ext to i64, !dbg !575
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !575
  %tobool3 = icmp ne i64 %expval, 0, !dbg !574
  br i1 %tobool3, label %while.body, label %while.end, !dbg !574

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !576
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !560, metadata !DIExpression()), !dbg !576
  %4 = load ptr, ptr %iter, align 8, !dbg !576
  store ptr %4, ptr %__mptr, align 8, !dbg !576
  %5 = load ptr, ptr %__mptr, align 8, !dbg !576
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !576
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !577
  %6 = load ptr, ptr %tmp, align 8, !dbg !576
  store ptr %6, ptr %entry1, align 8, !dbg !578
  %7 = load ptr, ptr %tag.addr, align 8, !dbg !579
  %8 = load ptr, ptr %entry1, align 8, !dbg !581
  %vm_tag = getelementptr inbounds %struct.drm_vma_offset_file, ptr %8, i32 0, i32 1, !dbg !582
  %9 = load ptr, ptr %vm_tag, align 8, !dbg !582
  %cmp = icmp eq ptr %7, %9, !dbg !583
  br i1 %cmp, label %if.then, label %if.else, !dbg !584

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %entry1, align 8, !dbg !585
  %vm_count = getelementptr inbounds %struct.drm_vma_offset_file, ptr %10, i32 0, i32 2, !dbg !588
  %11 = load i64, ptr %vm_count, align 8, !dbg !589
  %dec = add i64 %11, -1, !dbg !589
  store i64 %dec, ptr %vm_count, align 8, !dbg !589
  %tobool5 = icmp ne i64 %dec, 0, !dbg !589
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !590

if.then6:                                         ; preds = %if.then
  %12 = load ptr, ptr %entry1, align 8, !dbg !591
  %vm_rb = getelementptr inbounds %struct.drm_vma_offset_file, ptr %12, i32 0, i32 0, !dbg !593
  %13 = load ptr, ptr %node.addr, align 8, !dbg !594
  %vm_files7 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %13, i32 0, i32 2, !dbg !595
  call void @rb_erase(ptr noundef %vm_rb, ptr noundef %vm_files7) #15, !dbg !596
  %14 = load ptr, ptr %entry1, align 8, !dbg !597
  call void @kfree(ptr noundef %14) #15, !dbg !598
  br label %if.end, !dbg !599

if.end:                                           ; preds = %if.then6, %if.then
  br label %while.end, !dbg !600

if.else:                                          ; preds = %while.body
  %15 = load ptr, ptr %tag.addr, align 8, !dbg !601
  %16 = load ptr, ptr %entry1, align 8, !dbg !603
  %vm_tag8 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %16, i32 0, i32 1, !dbg !604
  %17 = load ptr, ptr %vm_tag8, align 8, !dbg !604
  %cmp9 = icmp ugt ptr %15, %17, !dbg !605
  br i1 %cmp9, label %if.then11, label %if.else12, !dbg !606

if.then11:                                        ; preds = %if.else
  %18 = load ptr, ptr %iter, align 8, !dbg !607
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1, !dbg !609
  %19 = load ptr, ptr %rb_right, align 8, !dbg !609
  store ptr %19, ptr %iter, align 8, !dbg !610
  br label %if.end13, !dbg !611

if.else12:                                        ; preds = %if.else
  %20 = load ptr, ptr %iter, align 8, !dbg !612
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 2, !dbg !614
  %21 = load ptr, ptr %rb_left, align 8, !dbg !614
  store ptr %21, ptr %iter, align 8, !dbg !615
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  br label %while.cond, !dbg !574, !llvm.loop !616

while.end:                                        ; preds = %if.end, %while.cond
  %22 = load ptr, ptr %node.addr, align 8, !dbg !618
  %vm_lock15 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %22, i32 0, i32 0, !dbg !618
  call void @_raw_write_unlock(ptr noundef %vm_lock15) #15, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #16, !dbg !619
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !619
  ret void, !dbg !619
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !620 dso_local void @rb_erase(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !625 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @drm_vma_node_is_allowed(ptr noundef %node, ptr noundef %tag) #0 align 16 !dbg !630 {
entry:
  %node.addr = alloca ptr, align 8
  %tag.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %iter = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !634, metadata !DIExpression()), !dbg !641
  store ptr %tag, ptr %tag.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !635, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !636, metadata !DIExpression()), !dbg !644
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #16, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !637, metadata !DIExpression()), !dbg !646
  %0 = load ptr, ptr %node.addr, align 8, !dbg !647
  %vm_lock = getelementptr inbounds %struct.drm_vma_offset_node, ptr %0, i32 0, i32 0, !dbg !647
  call void @_raw_read_lock(ptr noundef %vm_lock) #15, !dbg !647
  %1 = load ptr, ptr %node.addr, align 8, !dbg !648
  %vm_files = getelementptr inbounds %struct.drm_vma_offset_node, ptr %1, i32 0, i32 2, !dbg !649
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %vm_files, i32 0, i32 0, !dbg !650
  %2 = load ptr, ptr %rb_node, align 8, !dbg !650
  store ptr %2, ptr %iter, align 8, !dbg !651
  br label %while.cond, !dbg !652

while.cond:                                       ; preds = %if.end10, %entry
  %3 = load ptr, ptr %iter, align 8, !dbg !653
  %tobool = icmp ne ptr %3, null, !dbg !653
  %lnot = xor i1 %tobool, true, !dbg !653
  %lnot2 = xor i1 %lnot, true, !dbg !653
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !653
  %conv = sext i32 %lnot.ext to i64, !dbg !653
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !653
  %tobool3 = icmp ne i64 %expval, 0, !dbg !652
  br i1 %tobool3, label %while.body, label %while.end, !dbg !652

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !654
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !638, metadata !DIExpression()), !dbg !654
  %4 = load ptr, ptr %iter, align 8, !dbg !654
  store ptr %4, ptr %__mptr, align 8, !dbg !654
  %5 = load ptr, ptr %__mptr, align 8, !dbg !654
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !654
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !654
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !655
  %6 = load ptr, ptr %tmp, align 8, !dbg !654
  store ptr %6, ptr %entry1, align 8, !dbg !656
  %7 = load ptr, ptr %tag.addr, align 8, !dbg !657
  %8 = load ptr, ptr %entry1, align 8, !dbg !659
  %vm_tag = getelementptr inbounds %struct.drm_vma_offset_file, ptr %8, i32 0, i32 1, !dbg !660
  %9 = load ptr, ptr %vm_tag, align 8, !dbg !660
  %cmp = icmp eq ptr %7, %9, !dbg !661
  br i1 %cmp, label %if.then, label %if.else, !dbg !662

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !663

if.else:                                          ; preds = %while.body
  %10 = load ptr, ptr %tag.addr, align 8, !dbg !664
  %11 = load ptr, ptr %entry1, align 8, !dbg !666
  %vm_tag5 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %11, i32 0, i32 1, !dbg !667
  %12 = load ptr, ptr %vm_tag5, align 8, !dbg !667
  %cmp6 = icmp ugt ptr %10, %12, !dbg !668
  br i1 %cmp6, label %if.then8, label %if.else9, !dbg !669

if.then8:                                         ; preds = %if.else
  %13 = load ptr, ptr %iter, align 8, !dbg !670
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 1, !dbg !671
  %14 = load ptr, ptr %rb_right, align 8, !dbg !671
  store ptr %14, ptr %iter, align 8, !dbg !672
  br label %if.end, !dbg !673

if.else9:                                         ; preds = %if.else
  %15 = load ptr, ptr %iter, align 8, !dbg !674
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2, !dbg !675
  %16 = load ptr, ptr %rb_left, align 8, !dbg !675
  store ptr %16, ptr %iter, align 8, !dbg !676
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end10

if.end10:                                         ; preds = %if.end
  br label %while.cond, !dbg !652, !llvm.loop !677

while.end:                                        ; preds = %if.then, %while.cond
  %17 = load ptr, ptr %node.addr, align 8, !dbg !679
  %vm_lock11 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %17, i32 0, i32 0, !dbg !679
  call void @_raw_read_unlock(ptr noundef %vm_lock11) #15, !dbg !679
  %18 = load ptr, ptr %iter, align 8, !dbg !680
  %tobool12 = icmp ne ptr %18, null, !dbg !680
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #16, !dbg !681
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !681
  ret i1 %tobool12, !dbg !682
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !683 dso_local void @_raw_read_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !684 dso_local void @_raw_read_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !685 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !693, metadata !DIExpression()), !dbg !698
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !694, metadata !DIExpression()), !dbg !699
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %p, metadata !695, metadata !DIExpression()), !dbg !701
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !702
  %1 = load i64, ptr %nr.addr, align 8, !dbg !703
  %div = udiv i64 %1, 64, !dbg !703
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !704
  store ptr %add.ptr, ptr %p, align 8, !dbg !701
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #16, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !696, metadata !DIExpression()), !dbg !706
  %2 = load i64, ptr %nr.addr, align 8, !dbg !707
  %rem = urem i64 %2, 64, !dbg !707
  %shl = shl i64 1, %rem, !dbg !707
  store i64 %shl, ptr %mask, align 8, !dbg !706
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #16, !dbg !708
  call void @llvm.dbg.declare(metadata ptr %val, metadata !697, metadata !DIExpression()), !dbg !709
  %3 = load ptr, ptr %p, align 8, !dbg !710
  %4 = load i64, ptr %3, align 8, !dbg !711
  store i64 %4, ptr %val, align 8, !dbg !709
  %5 = load i64, ptr %val, align 8, !dbg !712
  %6 = load i64, ptr %mask, align 8, !dbg !713
  %and = and i64 %5, %6, !dbg !714
  %tobool = icmp ne i64 %and, 0, !dbg !715
  %lnot = xor i1 %tobool, true, !dbg !715
  %lnot1 = xor i1 %lnot, true, !dbg !716
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #16, !dbg !717
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #16, !dbg !717
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !717
  ret i1 %lnot1, !dbg !718
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !719 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !722, metadata !DIExpression()), !dbg !724
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !723, metadata !DIExpression()), !dbg !725
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !726
  %1 = load i64, ptr %nr.addr, align 8, !dbg !727
  %div = udiv i64 %1, 64, !dbg !727
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !728
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !729
  %2 = load i64, ptr %nr.addr, align 8, !dbg !730
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !731
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !732
  ret i1 %call, !dbg !733
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #9 align 16 !dbg !734 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !746, metadata !DIExpression()), !dbg !748
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !747, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %v.addr, align 8, !dbg !750
  %1 = load i64, ptr %size.addr, align 8, !dbg !751
  %conv = trunc i64 %1 to i32, !dbg !751
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !752
  %2 = load ptr, ptr %v.addr, align 8, !dbg !753
  %3 = load i64, ptr %size.addr, align 8, !dbg !753
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !753
  ret void, !dbg !754
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !755 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !758, metadata !DIExpression()), !dbg !760
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !759, metadata !DIExpression()), !dbg !761
  %0 = load i64, ptr %nr.addr, align 8, !dbg !762
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !763
  br i1 %1, label %cond.true, label %cond.false, !dbg !763

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !764
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !765
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !766
  %conv = zext i1 %call to i32, !dbg !766
  br label %cond.end, !dbg !763

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !767
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !768
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !769
  %conv2 = zext i1 %call1 to i32, !dbg !769
  br label %cond.end, !dbg !763

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !763
  %tobool = icmp ne i32 %cond, 0, !dbg !763
  ret i1 %tobool, !dbg !770
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !771 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !776, metadata !DIExpression()), !dbg !778
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !777, metadata !DIExpression()), !dbg !779
  ret i1 true, !dbg !780
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !781 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !786, metadata !DIExpression()), !dbg !789
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !787, metadata !DIExpression()), !dbg !790
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !788, metadata !DIExpression()), !dbg !791
  ret void, !dbg !792
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !793 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !798, metadata !DIExpression()), !dbg !800
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !799, metadata !DIExpression()), !dbg !801
  %0 = load i64, ptr %nr.addr, align 8, !dbg !802
  %and = and i64 %0, 63, !dbg !803
  %shl = shl i64 1, %and, !dbg !804
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !805
  %2 = load i64, ptr %nr.addr, align 8, !dbg !806
  %shr = ashr i64 %2, 6, !dbg !807
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !805
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !805
  %and1 = and i64 %shl, %3, !dbg !808
  %cmp = icmp ne i64 %and1, 0, !dbg !809
  ret i1 %cmp, !dbg !810
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #9 align 16 !dbg !811 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !813, metadata !DIExpression()), !dbg !816
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !814, metadata !DIExpression()), !dbg !817
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #16, !dbg !818
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !815, metadata !DIExpression()), !dbg !819
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !820
  %1 = load i64, ptr %nr.addr, align 8, !dbg !821
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #16, !dbg !822, !srcloc !823
  %3 = icmp ult i8 %2, 2, !dbg !822
  call void @llvm.assume(i1 %3), !dbg !822
  store i8 %2, ptr %oldbit, align 1, !dbg !822
  %4 = load i8, ptr %oldbit, align 1, !dbg !824, !range !484, !noundef !485
  %tobool = trunc i8 %4 to i1, !dbg !824
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #16, !dbg !825
  ret i1 %tobool, !dbg !826
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_mm_insert_node_generic(ptr noundef %mm, ptr noundef %node, i64 noundef %size, i64 noundef %alignment, i64 noundef %color, i32 noundef %mode) #6 align 16 !dbg !827 {
entry:
  %mm.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %color.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !831, metadata !DIExpression()), !dbg !837
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !832, metadata !DIExpression()), !dbg !838
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !833, metadata !DIExpression()), !dbg !839
  store i64 %alignment, ptr %alignment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !834, metadata !DIExpression()), !dbg !840
  store i64 %color, ptr %color.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %color.addr, metadata !835, metadata !DIExpression()), !dbg !841
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !836, metadata !DIExpression()), !dbg !842
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !843
  %1 = load ptr, ptr %node.addr, align 8, !dbg !844
  %2 = load i64, ptr %size.addr, align 8, !dbg !845
  %3 = load i64, ptr %alignment.addr, align 8, !dbg !846
  %4 = load i64, ptr %color.addr, align 8, !dbg !847
  %5 = load i32, ptr %mode.addr, align 4, !dbg !848
  %call = call i32 @drm_mm_insert_node_in_range(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 0, i64 noundef -1, i32 noundef %5) #15, !dbg !849
  ret i32 %call, !dbg !850
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !851 dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !854 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !858, metadata !DIExpression()), !dbg !863
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !859, metadata !DIExpression()), !dbg !864
  %0 = load i64, ptr %size.addr, align 8, !dbg !865
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !866
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !867

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !868
  %tobool = icmp ne i64 %2, 0, !dbg !868
  br i1 %tobool, label %if.then, label %if.end7, !dbg !869

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %index, metadata !860, metadata !DIExpression()), !dbg !871
  %3 = load i64, ptr %size.addr, align 8, !dbg !872
  %cmp = icmp ugt i64 %3, 8192, !dbg !874
  br i1 %cmp, label %if.then1, label %if.end, !dbg !875

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !876
  %5 = load i32, ptr %flags.addr, align 4, !dbg !877
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !878
  store ptr %call, ptr %retval, align 8, !dbg !879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !879

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !880
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !880
  store i32 %call2, ptr %index, align 4, !dbg !881
  %7 = load i32, ptr %flags.addr, align 4, !dbg !882
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !883
  %9 = ptrtoint ptr %8 to i64, !dbg !883
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !884
  %idxprom = zext i32 %call3 to i64, !dbg !885
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !885
  %10 = load i32, ptr %index, align 4, !dbg !886
  %idxprom4 = zext i32 %10 to i64, !dbg !885
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !885
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !885
  %12 = load i32, ptr %flags.addr, align 4, !dbg !887
  %13 = load i64, ptr %size.addr, align 8, !dbg !888
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !889
  store ptr %call6, ptr %retval, align 8, !dbg !890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !890

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !891
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !892
  %15 = load i32, ptr %flags.addr, align 4, !dbg !893
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !894
  store ptr %call8, ptr %retval, align 8, !dbg !895
  br label %return, !dbg !895

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !896
  ret ptr %16, !dbg !896
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rb_link_node(ptr noundef %node, ptr noundef %parent, ptr noundef %rb_link) #6 align 16 !dbg !897 {
entry:
  %node.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %rb_link.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !901, metadata !DIExpression()), !dbg !904
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !902, metadata !DIExpression()), !dbg !905
  store ptr %rb_link, ptr %rb_link.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb_link.addr, metadata !903, metadata !DIExpression()), !dbg !906
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !907
  %1 = ptrtoint ptr %0 to i64, !dbg !908
  %2 = load ptr, ptr %node.addr, align 8, !dbg !909
  %__rb_parent_color = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 0, !dbg !910
  store i64 %1, ptr %__rb_parent_color, align 8, !dbg !911
  %3 = load ptr, ptr %node.addr, align 8, !dbg !912
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1, !dbg !913
  store ptr null, ptr %rb_right, align 8, !dbg !914
  %4 = load ptr, ptr %node.addr, align 8, !dbg !915
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2, !dbg !916
  store ptr null, ptr %rb_left, align 8, !dbg !917
  %5 = load ptr, ptr %node.addr, align 8, !dbg !918
  %6 = load ptr, ptr %rb_link.addr, align 8, !dbg !919
  store ptr %5, ptr %6, align 8, !dbg !920
  ret void, !dbg !921
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !922 dso_local void @rb_insert_color(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !923 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !924 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !928, metadata !DIExpression()), !dbg !930
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !929, metadata !DIExpression()), !dbg !931
  %0 = load i64, ptr %size.addr, align 8, !dbg !932
  %tobool = icmp ne i64 %0, 0, !dbg !932
  br i1 %tobool, label %if.end, label %if.then, !dbg !934

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !935
  br label %return, !dbg !935

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !936
  %cmp = icmp ule i64 %1, 8, !dbg !938
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !939

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !940
  br label %return, !dbg !940

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !941
  %cmp3 = icmp ugt i64 %2, 64, !dbg !943
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !944

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !945
  %cmp4 = icmp ule i64 %3, 96, !dbg !946
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !947

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !948
  br label %return, !dbg !948

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !949
  %cmp7 = icmp ugt i64 %4, 128, !dbg !951
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !952

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !953
  %cmp9 = icmp ule i64 %5, 192, !dbg !954
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !955

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !956
  br label %return, !dbg !956

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !957
  %cmp12 = icmp ule i64 %6, 8, !dbg !959
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !960

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !961
  br label %return, !dbg !961

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !962
  %cmp15 = icmp ule i64 %7, 16, !dbg !964
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !965

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !966
  br label %return, !dbg !966

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !967
  %cmp18 = icmp ule i64 %8, 32, !dbg !969
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !970

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !971
  br label %return, !dbg !971

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !972
  %cmp21 = icmp ule i64 %9, 64, !dbg !974
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !975

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !976
  br label %return, !dbg !976

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !977
  %cmp24 = icmp ule i64 %10, 128, !dbg !979
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !980

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !981
  br label %return, !dbg !981

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !982
  %cmp27 = icmp ule i64 %11, 256, !dbg !984
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !985

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !986
  br label %return, !dbg !986

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !987
  %cmp30 = icmp ule i64 %12, 512, !dbg !989
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !990

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !991
  br label %return, !dbg !991

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !992
  %cmp33 = icmp ule i64 %13, 1024, !dbg !994
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !995

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !996
  br label %return, !dbg !996

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !997
  %cmp36 = icmp ule i64 %14, 2048, !dbg !999
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1000

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1001
  br label %return, !dbg !1001

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1002
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1004
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1005

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1006
  br label %return, !dbg !1006

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1007
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1009
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1010

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1011
  br label %return, !dbg !1011

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1012
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1014
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1015

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1016
  br label %return, !dbg !1016

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1017
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1019
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1020

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1021
  br label %return, !dbg !1021

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1022
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1024
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1025

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1026
  br label %return, !dbg !1026

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1027
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1029
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1030

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1031
  br label %return, !dbg !1031

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1032
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1034
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1035

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1036
  br label %return, !dbg !1036

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1037
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1039
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1040

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1041
  br label %return, !dbg !1041

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1042
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1044
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1045

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1046
  br label %return, !dbg !1046

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1047
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1049
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1050

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1051
  br label %return, !dbg !1051

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1052, !range !484, !noundef !485
  %tobool69 = trunc i8 %25 to i1, !dbg !1052
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1054

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1055

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #19, !dbg !1056, !srcloc !1059
  unreachable, !dbg !1056

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1060

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1061

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1062

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1064

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1062

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #16, !dbg !1066, !srcloc !1068
  br label %do.end75, !dbg !1066

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1062

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1069
  br label %return, !dbg !1069

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1070
  ret i32 %26, !dbg !1070
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1071 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !1077 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1081, metadata !DIExpression()), !dbg !1083
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1082, metadata !DIExpression()), !dbg !1084
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1085
  %and = and i32 %0, 17, !dbg !1085
  %cmp = icmp eq i32 %and, 0, !dbg !1085
  %lnot = xor i1 %cmp, true, !dbg !1085
  %lnot1 = xor i1 %lnot, true, !dbg !1085
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1085
  %conv = sext i32 %lnot.ext to i64, !dbg !1085
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1085
  %tobool = icmp ne i64 %expval, 0, !dbg !1085
  br i1 %tobool, label %if.then, label %if.end, !dbg !1087

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1088
  br label %return, !dbg !1088

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1089
  %and2 = and i32 %1, 1, !dbg !1091
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1091
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1092

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1093
  br label %return, !dbg !1093

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1094
  br label %return, !dbg !1094

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1096
  ret i32 %2, !dbg !1096
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1097 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1098 dso_local void @__compiletime_assert_206() #14

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vma_offset_manager_init288", scope: !2, file: !3, line: 91, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_vma_manager.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_vma_manager\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_vma_manager.ll drivers/gpu/drm/drm_vma_manager.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !163, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_vma_manager.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09c890c39d7a66f2109bc485d725cdc8")
!4 = !{!5, !11, !21}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mm_insert_mode", file: !12, line: 70, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "DRM_MM_INSERT_BEST", value: 0)
!15 = !DIEnumerator(name: "DRM_MM_INSERT_LOW", value: 1)
!16 = !DIEnumerator(name: "DRM_MM_INSERT_HIGH", value: 2)
!17 = !DIEnumerator(name: "DRM_MM_INSERT_EVICT", value: 3)
!18 = !DIEnumerator(name: "DRM_MM_INSERT_ONCE", value: 2147483648, isUnsigned: true)
!19 = !DIEnumerator(name: "DRM_MM_INSERT_HIGHEST", value: 2147483650, isUnsigned: true)
!20 = !DIEnumerator(name: "DRM_MM_INSERT_LOWEST", value: 2147483649, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !22, line: 364, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!23 = !{!24, !25, !26, !27, !28, !29, !30}
!24 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!25 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!26 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!28 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!29 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!30 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!31 = !{!32, !33, !91, !150, !158, !159, !161, !39, !162, !37}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !12, line: 157, size: 1344, elements: !35)
!35 = !{!36, !38, !44, !45, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !34, file: !12, line: 159, baseType: !37, size: 64)
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !34, file: !12, line: 161, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !34, file: !12, line: 163, baseType: !39, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !34, file: !12, line: 165, baseType: !46, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !12, line: 190, size: 1920, elements: !48)
!48 = !{!49, !56, !63, !64, !79, !80, !81}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !47, file: !12, line: 200, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !37, !55, !55}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !47, file: !12, line: 206, baseType: !57, size: 128, offset: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !58, line: 190, size: 128, elements: !59)
!58 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!59 = !{!60, !62}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !58, line: 191, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !57, file: !58, line: 191, baseType: !61, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !47, file: !12, line: 209, baseType: !34, size: 1344, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !47, file: !12, line: 211, baseType: !65, size: 128, offset: 1536)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !66, line: 26, size: 128, elements: !67)
!66 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!67 = !{!68, !78}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !65, file: !66, line: 27, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !66, line: 12, size: 64, elements: !70)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !69, file: !66, line: 13, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !66, line: 5, size: 192, align: 64, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !73, file: !66, line: 6, baseType: !37, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !73, file: !66, line: 7, baseType: !72, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !73, file: !66, line: 8, baseType: !72, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !65, file: !66, line: 28, baseType: !72, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !47, file: !12, line: 212, baseType: !65, size: 128, offset: 1664)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !47, file: !12, line: 213, baseType: !69, size: 64, offset: 1792)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !47, file: !12, line: 215, baseType: !37, size: 64, offset: 1856)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !34, file: !12, line: 166, baseType: !57, size: 128, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !34, file: !12, line: 167, baseType: !57, size: 128, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !34, file: !12, line: 168, baseType: !73, size: 192, align: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !34, file: !12, line: 169, baseType: !73, size: 192, align: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !34, file: !12, line: 170, baseType: !73, size: 192, align: 64, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !34, file: !12, line: 171, baseType: !39, size: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !34, file: !12, line: 172, baseType: !39, size: 64, offset: 1152)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !34, file: !12, line: 173, baseType: !39, size: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !12, line: 174, baseType: !37, size: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !93, line: 52, size: 1536, elements: !94)
!93 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!94 = !{!95, !147, !148, !149}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !92, file: !93, line: 53, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !97, line: 34, baseType: !98)
!97 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 25, size: 64, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !98, file: !97, line: 26, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !102, line: 27, baseType: !103)
!102 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !102, line: 13, size: 64, elements: !104)
!104 = !{!105, !125}
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !102, line: 14, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !102, line: 14, size: 32, elements: !107)
!107 = !{!108, !114}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !106, file: !102, line: 15, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !58, line: 174, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 172, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !110, file: !58, line: 173, baseType: !113, size: 32)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !102, line: 16, baseType: !115, size: 32)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !102, line: 16, size: 32, elements: !116)
!116 = !{!117, !121}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !115, file: !102, line: 18, baseType: !118, size: 8)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !120)
!120 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !115, file: !102, line: 19, baseType: !122, size: 24, offset: 8)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 24, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !103, file: !102, line: 26, baseType: !126, size: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !127, line: 44, baseType: !128)
!127 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !127, line: 14, size: 32, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !127, line: 15, baseType: !131, size: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !127, line: 15, size: 32, elements: !132)
!132 = !{!133, !134, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !131, file: !127, line: 16, baseType: !109, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !127, line: 24, baseType: !135, size: 16)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !131, file: !127, line: 24, size: 16, elements: !136)
!136 = !{!137, !138}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !135, file: !127, line: 25, baseType: !118, size: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !135, file: !127, line: 26, baseType: !118, size: 8, offset: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !127, line: 28, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !131, file: !127, line: 28, size: 32, elements: !141)
!141 = !{!142, !146}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !140, file: !127, line: 29, baseType: !143, size: 16)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !145)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !140, file: !127, line: 30, baseType: !143, size: 16, offset: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !92, file: !93, line: 54, baseType: !34, size: 1344, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !92, file: !93, line: 55, baseType: !69, size: 64, offset: 1408)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !92, file: !93, line: 56, baseType: !32, size: 64, offset: 1472)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_file", file: !93, line: 46, size: 320, elements: !152)
!152 = !{!153, !154, !157}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !151, file: !93, line: 47, baseType: !73, size: 192, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_tag", scope: !151, file: !93, line: 48, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !93, line: 44, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_count", scope: !151, file: !93, line: 49, baseType: !37, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !58, line: 42, baseType: !37)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !58, line: 154, baseType: !7)
!163 = !{!0, !164, !166, !168, !170, !172, !174, !176, !178, !180}
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vma_offset_manager_destroy289", scope: !2, file: !3, line: 108, type: !32, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vma_offset_lookup_locked290", scope: !2, file: !3, line: 176, type: !32, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vma_offset_add291", scope: !2, file: !3, line: 216, type: !32, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vma_offset_remove292", scope: !2, file: !3, line: 241, type: !32, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vma_node_allow293", scope: !2, file: !3, line: 317, type: !32, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vma_node_allow_once294", scope: !2, file: !3, line: 342, type: !32, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vma_node_revoke295", scope: !2, file: !3, line: 383, type: !32, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_vma_node_is_allowed296", scope: !2, file: !3, line: 421, type: !32, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !22, line: 480, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 168, elements: !184)
!183 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !{!185}
!185 = !DISubrange(count: 21)
!186 = !{i32 7, !"Dwarf Version", i32 5}
!187 = !{i32 2, !"Debug Info Version", i32 3}
!188 = !{i32 1, !"wchar_size", i32 2}
!189 = !{i32 8, !"cf-protection-branch", i32 1}
!190 = !{i32 4, !"function_return_thunk_extern", i32 1}
!191 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!192 = !{i32 1, !"Code Model", i32 2}
!193 = !{i32 1, !"override-stack-alignment", i32 8}
!194 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!195 = distinct !DISubprogram(name: "drm_vma_offset_manager_init", scope: !3, file: !3, line: 85, type: !196, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198, !37, !37}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !93, line: 59, size: 1984, elements: !200)
!200 = !{!201, !202}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !199, file: !93, line: 60, baseType: !96, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !199, file: !93, line: 61, baseType: !47, size: 1920, offset: 64)
!203 = !{!204, !205, !206}
!204 = !DILocalVariable(name: "mgr", arg: 1, scope: !195, file: !3, line: 85, type: !198)
!205 = !DILocalVariable(name: "page_offset", arg: 2, scope: !195, file: !3, line: 86, type: !37)
!206 = !DILocalVariable(name: "size", arg: 3, scope: !195, file: !3, line: 86, type: !37)
!207 = !DILocation(line: 85, column: 65, scope: !195)
!208 = !DILocation(line: 86, column: 20, scope: !195)
!209 = !DILocation(line: 86, column: 47, scope: !195)
!210 = !DILocation(line: 88, column: 2, scope: !195)
!211 = !DILocation(line: 88, column: 2, scope: !212)
!212 = distinct !DILexicalBlock(scope: !195, file: !3, line: 88, column: 2)
!213 = !DILocation(line: 89, column: 15, scope: !195)
!214 = !DILocation(line: 89, column: 20, scope: !195)
!215 = !DILocation(line: 89, column: 38, scope: !195)
!216 = !DILocation(line: 89, column: 51, scope: !195)
!217 = !DILocation(line: 89, column: 2, scope: !195)
!218 = !DILocation(line: 90, column: 1, scope: !195)
!219 = !DISubprogram(name: "drm_mm_init", scope: !12, file: !12, line: 467, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !46, !39, !39}
!222 = distinct !DISubprogram(name: "drm_vma_offset_manager_destroy", scope: !3, file: !3, line: 104, type: !223, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !198}
!225 = !{!226}
!226 = !DILocalVariable(name: "mgr", arg: 1, scope: !222, file: !3, line: 104, type: !198)
!227 = !DILocation(line: 104, column: 68, scope: !222)
!228 = !DILocation(line: 106, column: 19, scope: !222)
!229 = !DILocation(line: 106, column: 24, scope: !222)
!230 = !DILocation(line: 106, column: 2, scope: !222)
!231 = !DILocation(line: 107, column: 1, scope: !222)
!232 = !DISubprogram(name: "drm_mm_takedown", scope: !12, file: !12, line: 468, type: !233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !46}
!235 = distinct !DISubprogram(name: "drm_vma_offset_lookup_locked", scope: !3, file: !3, line: 140, type: !236, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!91, !198, !37, !37}
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !249}
!239 = !DILocalVariable(name: "mgr", arg: 1, scope: !235, file: !3, line: 140, type: !198)
!240 = !DILocalVariable(name: "start", arg: 2, scope: !235, file: !3, line: 141, type: !37)
!241 = !DILocalVariable(name: "pages", arg: 3, scope: !235, file: !3, line: 142, type: !37)
!242 = !DILocalVariable(name: "node", scope: !235, file: !3, line: 144, type: !33)
!243 = !DILocalVariable(name: "best", scope: !235, file: !3, line: 144, type: !33)
!244 = !DILocalVariable(name: "iter", scope: !235, file: !3, line: 145, type: !72)
!245 = !DILocalVariable(name: "offset", scope: !235, file: !3, line: 146, type: !37)
!246 = !DILocalVariable(name: "__mptr", scope: !247, file: !3, line: 152, type: !32)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 152, column: 10)
!248 = distinct !DILexicalBlock(scope: !235, file: !3, line: 151, column: 23)
!249 = !DILocalVariable(name: "__mptr", scope: !250, file: !3, line: 174, type: !32)
!250 = distinct !DILexicalBlock(scope: !235, file: !3, line: 174, column: 9)
!251 = !DILocation(line: 140, column: 89, scope: !235)
!252 = !DILocation(line: 141, column: 23, scope: !235)
!253 = !DILocation(line: 142, column: 23, scope: !235)
!254 = !DILocation(line: 144, column: 2, scope: !235)
!255 = !DILocation(line: 144, column: 22, scope: !235)
!256 = !DILocation(line: 144, column: 29, scope: !235)
!257 = !DILocation(line: 145, column: 2, scope: !235)
!258 = !DILocation(line: 145, column: 18, scope: !235)
!259 = !DILocation(line: 146, column: 2, scope: !235)
!260 = !DILocation(line: 146, column: 16, scope: !235)
!261 = !DILocation(line: 148, column: 9, scope: !235)
!262 = !DILocation(line: 148, column: 14, scope: !235)
!263 = !DILocation(line: 148, column: 31, scope: !235)
!264 = !DILocation(line: 148, column: 45, scope: !235)
!265 = !DILocation(line: 148, column: 53, scope: !235)
!266 = !DILocation(line: 148, column: 7, scope: !235)
!267 = !DILocation(line: 149, column: 7, scope: !235)
!268 = !DILocation(line: 151, column: 2, scope: !235)
!269 = !DILocation(line: 151, column: 9, scope: !235)
!270 = !DILocation(line: 152, column: 10, scope: !247)
!271 = !DILocation(line: 152, column: 10, scope: !248)
!272 = !DILocation(line: 152, column: 8, scope: !248)
!273 = !DILocation(line: 153, column: 12, scope: !248)
!274 = !DILocation(line: 153, column: 18, scope: !248)
!275 = !DILocation(line: 153, column: 10, scope: !248)
!276 = !DILocation(line: 154, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !248, file: !3, line: 154, column: 7)
!278 = !DILocation(line: 154, column: 16, scope: !277)
!279 = !DILocation(line: 154, column: 13, scope: !277)
!280 = !DILocation(line: 154, column: 7, scope: !248)
!281 = !DILocation(line: 155, column: 11, scope: !282)
!282 = distinct !DILexicalBlock(scope: !277, file: !3, line: 154, column: 24)
!283 = !DILocation(line: 155, column: 17, scope: !282)
!284 = !DILocation(line: 155, column: 9, scope: !282)
!285 = !DILocation(line: 156, column: 11, scope: !282)
!286 = !DILocation(line: 156, column: 9, scope: !282)
!287 = !DILocation(line: 157, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !282, file: !3, line: 157, column: 8)
!289 = !DILocation(line: 157, column: 17, scope: !288)
!290 = !DILocation(line: 157, column: 14, scope: !288)
!291 = !DILocation(line: 157, column: 8, scope: !282)
!292 = !DILocation(line: 158, column: 5, scope: !288)
!293 = !DILocation(line: 159, column: 3, scope: !282)
!294 = !DILocation(line: 160, column: 11, scope: !295)
!295 = distinct !DILexicalBlock(scope: !277, file: !3, line: 159, column: 10)
!296 = !DILocation(line: 160, column: 17, scope: !295)
!297 = !DILocation(line: 160, column: 9, scope: !295)
!298 = distinct !{!298, !268, !299, !300, !301}
!299 = !DILocation(line: 162, column: 2, scope: !235)
!300 = !{!"llvm.loop.mustprogress"}
!301 = !{!"llvm.loop.unroll.disable"}
!302 = !DILocation(line: 165, column: 6, scope: !303)
!303 = distinct !DILexicalBlock(scope: !235, file: !3, line: 165, column: 6)
!304 = !DILocation(line: 165, column: 6, scope: !235)
!305 = !DILocation(line: 166, column: 12, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !3, line: 165, column: 12)
!307 = !DILocation(line: 166, column: 18, scope: !306)
!308 = !DILocation(line: 166, column: 26, scope: !306)
!309 = !DILocation(line: 166, column: 32, scope: !306)
!310 = !DILocation(line: 166, column: 24, scope: !306)
!311 = !DILocation(line: 166, column: 10, scope: !306)
!312 = !DILocation(line: 167, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !306, file: !3, line: 167, column: 7)
!314 = !DILocation(line: 167, column: 16, scope: !313)
!315 = !DILocation(line: 167, column: 24, scope: !313)
!316 = !DILocation(line: 167, column: 22, scope: !313)
!317 = !DILocation(line: 167, column: 14, scope: !313)
!318 = !DILocation(line: 167, column: 7, scope: !306)
!319 = !DILocation(line: 168, column: 9, scope: !313)
!320 = !DILocation(line: 168, column: 4, scope: !313)
!321 = !DILocation(line: 169, column: 2, scope: !306)
!322 = !DILocation(line: 171, column: 7, scope: !323)
!323 = distinct !DILexicalBlock(scope: !235, file: !3, line: 171, column: 6)
!324 = !DILocation(line: 171, column: 6, scope: !235)
!325 = !DILocation(line: 172, column: 3, scope: !323)
!326 = !DILocation(line: 174, column: 9, scope: !250)
!327 = !DILocation(line: 174, column: 9, scope: !235)
!328 = !DILocation(line: 174, column: 2, scope: !235)
!329 = !DILocation(line: 175, column: 1, scope: !235)
!330 = distinct !DISubprogram(name: "drm_vma_offset_add", scope: !3, file: !3, line: 201, type: !331, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!113, !198, !91, !37}
!333 = !{!334, !335, !336, !337}
!334 = !DILocalVariable(name: "mgr", arg: 1, scope: !330, file: !3, line: 201, type: !198)
!335 = !DILocalVariable(name: "node", arg: 2, scope: !330, file: !3, line: 202, type: !91)
!336 = !DILocalVariable(name: "pages", arg: 3, scope: !330, file: !3, line: 202, type: !37)
!337 = !DILocalVariable(name: "ret", scope: !330, file: !3, line: 204, type: !113)
!338 = !DILocation(line: 201, column: 55, scope: !330)
!339 = !DILocation(line: 202, column: 38, scope: !330)
!340 = !DILocation(line: 202, column: 58, scope: !330)
!341 = !DILocation(line: 204, column: 2, scope: !330)
!342 = !DILocation(line: 204, column: 6, scope: !330)
!343 = !DILocation(line: 206, column: 2, scope: !330)
!344 = !DILocation(line: 208, column: 30, scope: !345)
!345 = distinct !DILexicalBlock(scope: !330, file: !3, line: 208, column: 6)
!346 = !DILocation(line: 208, column: 36, scope: !345)
!347 = !DILocation(line: 208, column: 7, scope: !345)
!348 = !DILocation(line: 208, column: 6, scope: !330)
!349 = !DILocation(line: 209, column: 29, scope: !345)
!350 = !DILocation(line: 209, column: 34, scope: !345)
!351 = !DILocation(line: 210, column: 8, scope: !345)
!352 = !DILocation(line: 210, column: 14, scope: !345)
!353 = !DILocation(line: 210, column: 23, scope: !345)
!354 = !DILocation(line: 209, column: 9, scope: !345)
!355 = !DILocation(line: 209, column: 7, scope: !345)
!356 = !DILocation(line: 209, column: 3, scope: !345)
!357 = !DILocation(line: 212, column: 2, scope: !330)
!358 = !DILocation(line: 214, column: 9, scope: !330)
!359 = !DILocation(line: 215, column: 1, scope: !330)
!360 = !DILocation(line: 214, column: 2, scope: !330)
!361 = !DISubprogram(name: "_raw_write_lock", scope: !362, file: !362, line: 19, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DIFile(filename: "./include/linux/rwlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e3ce6205f1debb08c34677b6a0cdd")
!363 = !DISubroutineType(types: !364)
!364 = !{null, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!366 = distinct !DISubprogram(name: "drm_mm_node_allocated", scope: !12, file: !12, line: 258, type: !367, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !53}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !58, line: 35, baseType: !370)
!370 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!371 = !{!372}
!372 = !DILocalVariable(name: "node", arg: 1, scope: !366, file: !12, line: 258, type: !53)
!373 = !DILocation(line: 258, column: 68, scope: !366)
!374 = !DILocation(line: 260, column: 9, scope: !366)
!375 = !DILocation(line: 260, column: 2, scope: !366)
!376 = distinct !DISubprogram(name: "drm_mm_insert_node", scope: !12, file: !12, line: 458, type: !377, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!377 = !DISubroutineType(types: !378)
!378 = !{!113, !46, !33, !39}
!379 = !{!380, !381, !382}
!380 = !DILocalVariable(name: "mm", arg: 1, scope: !376, file: !12, line: 458, type: !46)
!381 = !DILocalVariable(name: "node", arg: 2, scope: !376, file: !12, line: 459, type: !33)
!382 = !DILocalVariable(name: "size", arg: 3, scope: !376, file: !12, line: 460, type: !39)
!383 = !DILocation(line: 458, column: 53, scope: !376)
!384 = !DILocation(line: 459, column: 30, scope: !376)
!385 = !DILocation(line: 460, column: 14, scope: !376)
!386 = !DILocation(line: 462, column: 36, scope: !376)
!387 = !DILocation(line: 462, column: 40, scope: !376)
!388 = !DILocation(line: 462, column: 46, scope: !376)
!389 = !DILocation(line: 462, column: 9, scope: !376)
!390 = !DILocation(line: 462, column: 2, scope: !376)
!391 = !DISubprogram(name: "_raw_write_unlock", scope: !362, file: !362, line: 32, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = distinct !DISubprogram(name: "drm_vma_offset_remove", scope: !3, file: !3, line: 229, type: !393, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !198, !91}
!395 = !{!396, !397}
!396 = !DILocalVariable(name: "mgr", arg: 1, scope: !392, file: !3, line: 229, type: !198)
!397 = !DILocalVariable(name: "node", arg: 2, scope: !392, file: !3, line: 230, type: !91)
!398 = !DILocation(line: 229, column: 59, scope: !392)
!399 = !DILocation(line: 230, column: 35, scope: !392)
!400 = !DILocation(line: 232, column: 2, scope: !392)
!401 = !DILocation(line: 234, column: 29, scope: !402)
!402 = distinct !DILexicalBlock(scope: !392, file: !3, line: 234, column: 6)
!403 = !DILocation(line: 234, column: 35, scope: !402)
!404 = !DILocation(line: 234, column: 6, scope: !402)
!405 = !DILocation(line: 234, column: 6, scope: !392)
!406 = !DILocation(line: 235, column: 23, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !3, line: 234, column: 45)
!408 = !DILocation(line: 235, column: 29, scope: !407)
!409 = !DILocation(line: 235, column: 3, scope: !407)
!410 = !DILocation(line: 236, column: 11, scope: !407)
!411 = !DILocation(line: 236, column: 17, scope: !407)
!412 = !DILocation(line: 236, column: 3, scope: !407)
!413 = !DILocation(line: 237, column: 2, scope: !407)
!414 = !DILocation(line: 239, column: 2, scope: !392)
!415 = !DILocation(line: 240, column: 1, scope: !392)
!416 = !DISubprogram(name: "drm_mm_remove_node", scope: !12, file: !12, line: 465, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !33}
!419 = distinct !DISubprogram(name: "drm_vma_node_allow", scope: !3, file: !3, line: 313, type: !420, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!113, !91, !155}
!422 = !{!423, !424}
!423 = !DILocalVariable(name: "node", arg: 1, scope: !419, file: !3, line: 313, type: !91)
!424 = !DILocalVariable(name: "tag", arg: 2, scope: !419, file: !3, line: 313, type: !155)
!425 = !DILocation(line: 313, column: 52, scope: !419)
!426 = !DILocation(line: 313, column: 75, scope: !419)
!427 = !DILocation(line: 315, column: 24, scope: !419)
!428 = !DILocation(line: 315, column: 30, scope: !419)
!429 = !DILocation(line: 315, column: 9, scope: !419)
!430 = !DILocation(line: 315, column: 2, scope: !419)
!431 = distinct !DISubprogram(name: "vma_node_allow", scope: !3, file: !3, line: 243, type: !432, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!113, !91, !155, !369}
!434 = !{!435, !436, !437, !438, !440, !441, !442, !443, !444, !447}
!435 = !DILocalVariable(name: "node", arg: 1, scope: !431, file: !3, line: 243, type: !91)
!436 = !DILocalVariable(name: "tag", arg: 2, scope: !431, file: !3, line: 244, type: !155)
!437 = !DILocalVariable(name: "ref_counted", arg: 3, scope: !431, file: !3, line: 244, type: !369)
!438 = !DILocalVariable(name: "iter", scope: !431, file: !3, line: 246, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!440 = !DILocalVariable(name: "parent", scope: !431, file: !3, line: 247, type: !72)
!441 = !DILocalVariable(name: "new", scope: !431, file: !3, line: 248, type: !150)
!442 = !DILocalVariable(name: "entry", scope: !431, file: !3, line: 248, type: !150)
!443 = !DILocalVariable(name: "ret", scope: !431, file: !3, line: 249, type: !113)
!444 = !DILocalVariable(name: "__mptr", scope: !445, file: !3, line: 263, type: !32)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 263, column: 11)
!446 = distinct !DILexicalBlock(scope: !431, file: !3, line: 261, column: 24)
!447 = !DILabel(scope: !431, name: "unlock", file: !3, line: 287)
!448 = !DILocation(line: 243, column: 55, scope: !431)
!449 = !DILocation(line: 244, column: 23, scope: !431)
!450 = !DILocation(line: 244, column: 33, scope: !431)
!451 = !DILocation(line: 246, column: 2, scope: !431)
!452 = !DILocation(line: 246, column: 19, scope: !431)
!453 = !DILocation(line: 247, column: 2, scope: !431)
!454 = !DILocation(line: 247, column: 18, scope: !431)
!455 = !DILocation(line: 248, column: 2, scope: !431)
!456 = !DILocation(line: 248, column: 30, scope: !431)
!457 = !DILocation(line: 248, column: 36, scope: !431)
!458 = !DILocation(line: 249, column: 2, scope: !431)
!459 = !DILocation(line: 249, column: 6, scope: !431)
!460 = !DILocation(line: 255, column: 8, scope: !431)
!461 = !DILocation(line: 255, column: 6, scope: !431)
!462 = !DILocation(line: 257, column: 2, scope: !431)
!463 = !DILocation(line: 259, column: 10, scope: !431)
!464 = !DILocation(line: 259, column: 16, scope: !431)
!465 = !DILocation(line: 259, column: 25, scope: !431)
!466 = !DILocation(line: 259, column: 7, scope: !431)
!467 = !DILocation(line: 261, column: 2, scope: !431)
!468 = !DILocation(line: 261, column: 9, scope: !431)
!469 = !DILocation(line: 262, column: 13, scope: !446)
!470 = !DILocation(line: 262, column: 12, scope: !446)
!471 = !DILocation(line: 262, column: 10, scope: !446)
!472 = !DILocation(line: 263, column: 11, scope: !445)
!473 = !DILocation(line: 263, column: 11, scope: !446)
!474 = !DILocation(line: 263, column: 9, scope: !446)
!475 = !DILocation(line: 265, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !446, file: !3, line: 265, column: 7)
!477 = !DILocation(line: 265, column: 14, scope: !476)
!478 = !DILocation(line: 265, column: 21, scope: !476)
!479 = !DILocation(line: 265, column: 11, scope: !476)
!480 = !DILocation(line: 265, column: 7, scope: !446)
!481 = !DILocation(line: 266, column: 8, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 266, column: 8)
!483 = distinct !DILexicalBlock(scope: !476, file: !3, line: 265, column: 29)
!484 = !{i8 0, i8 2}
!485 = !{}
!486 = !DILocation(line: 266, column: 8, scope: !483)
!487 = !DILocation(line: 267, column: 5, scope: !482)
!488 = !DILocation(line: 267, column: 12, scope: !482)
!489 = !DILocation(line: 267, column: 20, scope: !482)
!490 = !DILocation(line: 268, column: 4, scope: !483)
!491 = !DILocation(line: 269, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !476, file: !3, line: 269, column: 14)
!493 = !DILocation(line: 269, column: 20, scope: !492)
!494 = !DILocation(line: 269, column: 27, scope: !492)
!495 = !DILocation(line: 269, column: 18, scope: !492)
!496 = !DILocation(line: 269, column: 14, scope: !476)
!497 = !DILocation(line: 270, column: 14, scope: !498)
!498 = distinct !DILexicalBlock(scope: !492, file: !3, line: 269, column: 35)
!499 = !DILocation(line: 270, column: 13, scope: !498)
!500 = !DILocation(line: 270, column: 21, scope: !498)
!501 = !DILocation(line: 270, column: 9, scope: !498)
!502 = !DILocation(line: 271, column: 3, scope: !498)
!503 = !DILocation(line: 272, column: 14, scope: !504)
!504 = distinct !DILexicalBlock(scope: !492, file: !3, line: 271, column: 10)
!505 = !DILocation(line: 272, column: 13, scope: !504)
!506 = !DILocation(line: 272, column: 21, scope: !504)
!507 = !DILocation(line: 272, column: 9, scope: !504)
!508 = distinct !{!508, !467, !509, !300, !301}
!509 = !DILocation(line: 274, column: 2, scope: !431)
!510 = !DILocation(line: 276, column: 7, scope: !511)
!511 = distinct !DILexicalBlock(scope: !431, file: !3, line: 276, column: 6)
!512 = !DILocation(line: 276, column: 6, scope: !431)
!513 = !DILocation(line: 277, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !511, file: !3, line: 276, column: 12)
!515 = !DILocation(line: 278, column: 3, scope: !514)
!516 = !DILocation(line: 281, column: 16, scope: !431)
!517 = !DILocation(line: 281, column: 2, scope: !431)
!518 = !DILocation(line: 281, column: 7, scope: !431)
!519 = !DILocation(line: 281, column: 14, scope: !431)
!520 = !DILocation(line: 282, column: 2, scope: !431)
!521 = !DILocation(line: 282, column: 7, scope: !431)
!522 = !DILocation(line: 282, column: 16, scope: !431)
!523 = !DILocation(line: 283, column: 16, scope: !431)
!524 = !DILocation(line: 283, column: 21, scope: !431)
!525 = !DILocation(line: 283, column: 28, scope: !431)
!526 = !DILocation(line: 283, column: 36, scope: !431)
!527 = !DILocation(line: 283, column: 2, scope: !431)
!528 = !DILocation(line: 284, column: 19, scope: !431)
!529 = !DILocation(line: 284, column: 24, scope: !431)
!530 = !DILocation(line: 284, column: 32, scope: !431)
!531 = !DILocation(line: 284, column: 38, scope: !431)
!532 = !DILocation(line: 284, column: 2, scope: !431)
!533 = !DILocation(line: 285, column: 6, scope: !431)
!534 = !DILocation(line: 285, column: 2, scope: !431)
!535 = !DILocation(line: 287, column: 1, scope: !431)
!536 = !DILocation(line: 288, column: 2, scope: !431)
!537 = !DILocation(line: 289, column: 8, scope: !431)
!538 = !DILocation(line: 289, column: 2, scope: !431)
!539 = !DILocation(line: 290, column: 9, scope: !431)
!540 = !DILocation(line: 291, column: 1, scope: !431)
!541 = !DILocation(line: 290, column: 2, scope: !431)
!542 = distinct !DISubprogram(name: "drm_vma_node_allow_once", scope: !3, file: !3, line: 338, type: !420, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !543)
!543 = !{!544, !545}
!544 = !DILocalVariable(name: "node", arg: 1, scope: !542, file: !3, line: 338, type: !91)
!545 = !DILocalVariable(name: "tag", arg: 2, scope: !542, file: !3, line: 338, type: !155)
!546 = !DILocation(line: 338, column: 57, scope: !542)
!547 = !DILocation(line: 338, column: 80, scope: !542)
!548 = !DILocation(line: 340, column: 24, scope: !542)
!549 = !DILocation(line: 340, column: 30, scope: !542)
!550 = !DILocation(line: 340, column: 9, scope: !542)
!551 = !DILocation(line: 340, column: 2, scope: !542)
!552 = distinct !DISubprogram(name: "drm_vma_node_revoke", scope: !3, file: !3, line: 357, type: !553, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !91, !155}
!555 = !{!556, !557, !558, !559, !560}
!556 = !DILocalVariable(name: "node", arg: 1, scope: !552, file: !3, line: 357, type: !91)
!557 = !DILocalVariable(name: "tag", arg: 2, scope: !552, file: !3, line: 358, type: !155)
!558 = !DILocalVariable(name: "entry", scope: !552, file: !3, line: 360, type: !150)
!559 = !DILocalVariable(name: "iter", scope: !552, file: !3, line: 361, type: !72)
!560 = !DILocalVariable(name: "__mptr", scope: !561, file: !3, line: 367, type: !32)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 367, column: 11)
!562 = distinct !DILexicalBlock(scope: !552, file: !3, line: 366, column: 23)
!563 = !DILocation(line: 357, column: 54, scope: !552)
!564 = !DILocation(line: 358, column: 22, scope: !552)
!565 = !DILocation(line: 360, column: 2, scope: !552)
!566 = !DILocation(line: 360, column: 30, scope: !552)
!567 = !DILocation(line: 361, column: 2, scope: !552)
!568 = !DILocation(line: 361, column: 18, scope: !552)
!569 = !DILocation(line: 363, column: 2, scope: !552)
!570 = !DILocation(line: 365, column: 9, scope: !552)
!571 = !DILocation(line: 365, column: 15, scope: !552)
!572 = !DILocation(line: 365, column: 24, scope: !552)
!573 = !DILocation(line: 365, column: 7, scope: !552)
!574 = !DILocation(line: 366, column: 2, scope: !552)
!575 = !DILocation(line: 366, column: 9, scope: !552)
!576 = !DILocation(line: 367, column: 11, scope: !561)
!577 = !DILocation(line: 367, column: 11, scope: !562)
!578 = !DILocation(line: 367, column: 9, scope: !562)
!579 = !DILocation(line: 368, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !562, file: !3, line: 368, column: 7)
!581 = !DILocation(line: 368, column: 14, scope: !580)
!582 = !DILocation(line: 368, column: 21, scope: !580)
!583 = !DILocation(line: 368, column: 11, scope: !580)
!584 = !DILocation(line: 368, column: 7, scope: !562)
!585 = !DILocation(line: 369, column: 11, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !3, line: 369, column: 8)
!587 = distinct !DILexicalBlock(scope: !580, file: !3, line: 368, column: 29)
!588 = !DILocation(line: 369, column: 18, scope: !586)
!589 = !DILocation(line: 369, column: 9, scope: !586)
!590 = !DILocation(line: 369, column: 8, scope: !587)
!591 = !DILocation(line: 370, column: 15, scope: !592)
!592 = distinct !DILexicalBlock(scope: !586, file: !3, line: 369, column: 28)
!593 = !DILocation(line: 370, column: 22, scope: !592)
!594 = !DILocation(line: 370, column: 30, scope: !592)
!595 = !DILocation(line: 370, column: 36, scope: !592)
!596 = !DILocation(line: 370, column: 5, scope: !592)
!597 = !DILocation(line: 371, column: 11, scope: !592)
!598 = !DILocation(line: 371, column: 5, scope: !592)
!599 = !DILocation(line: 372, column: 4, scope: !592)
!600 = !DILocation(line: 373, column: 4, scope: !587)
!601 = !DILocation(line: 374, column: 14, scope: !602)
!602 = distinct !DILexicalBlock(scope: !580, file: !3, line: 374, column: 14)
!603 = !DILocation(line: 374, column: 20, scope: !602)
!604 = !DILocation(line: 374, column: 27, scope: !602)
!605 = !DILocation(line: 374, column: 18, scope: !602)
!606 = !DILocation(line: 374, column: 14, scope: !580)
!607 = !DILocation(line: 375, column: 11, scope: !608)
!608 = distinct !DILexicalBlock(scope: !602, file: !3, line: 374, column: 35)
!609 = !DILocation(line: 375, column: 17, scope: !608)
!610 = !DILocation(line: 375, column: 9, scope: !608)
!611 = !DILocation(line: 376, column: 3, scope: !608)
!612 = !DILocation(line: 377, column: 11, scope: !613)
!613 = distinct !DILexicalBlock(scope: !602, file: !3, line: 376, column: 10)
!614 = !DILocation(line: 377, column: 17, scope: !613)
!615 = !DILocation(line: 377, column: 9, scope: !613)
!616 = distinct !{!616, !574, !617, !300, !301}
!617 = !DILocation(line: 379, column: 2, scope: !552)
!618 = !DILocation(line: 381, column: 2, scope: !552)
!619 = !DILocation(line: 382, column: 1, scope: !552)
!620 = !DISubprogram(name: "rb_erase", scope: !621, file: !621, line: 40, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!621 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!622 = !DISubroutineType(types: !623)
!623 = !{null, !72, !624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!625 = !DISubprogram(name: "kfree", scope: !22, file: !22, line: 227, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!630 = distinct !DISubprogram(name: "drm_vma_node_is_allowed", scope: !3, file: !3, line: 398, type: !631, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{!369, !91, !155}
!633 = !{!634, !635, !636, !637, !638}
!634 = !DILocalVariable(name: "node", arg: 1, scope: !630, file: !3, line: 398, type: !91)
!635 = !DILocalVariable(name: "tag", arg: 2, scope: !630, file: !3, line: 399, type: !155)
!636 = !DILocalVariable(name: "entry", scope: !630, file: !3, line: 401, type: !150)
!637 = !DILocalVariable(name: "iter", scope: !630, file: !3, line: 402, type: !72)
!638 = !DILocalVariable(name: "__mptr", scope: !639, file: !3, line: 408, type: !32)
!639 = distinct !DILexicalBlock(scope: !640, file: !3, line: 408, column: 11)
!640 = distinct !DILexicalBlock(scope: !630, file: !3, line: 407, column: 23)
!641 = !DILocation(line: 398, column: 58, scope: !630)
!642 = !DILocation(line: 399, column: 26, scope: !630)
!643 = !DILocation(line: 401, column: 2, scope: !630)
!644 = !DILocation(line: 401, column: 30, scope: !630)
!645 = !DILocation(line: 402, column: 2, scope: !630)
!646 = !DILocation(line: 402, column: 18, scope: !630)
!647 = !DILocation(line: 404, column: 2, scope: !630)
!648 = !DILocation(line: 406, column: 9, scope: !630)
!649 = !DILocation(line: 406, column: 15, scope: !630)
!650 = !DILocation(line: 406, column: 24, scope: !630)
!651 = !DILocation(line: 406, column: 7, scope: !630)
!652 = !DILocation(line: 407, column: 2, scope: !630)
!653 = !DILocation(line: 407, column: 9, scope: !630)
!654 = !DILocation(line: 408, column: 11, scope: !639)
!655 = !DILocation(line: 408, column: 11, scope: !640)
!656 = !DILocation(line: 408, column: 9, scope: !640)
!657 = !DILocation(line: 409, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !640, file: !3, line: 409, column: 7)
!659 = !DILocation(line: 409, column: 14, scope: !658)
!660 = !DILocation(line: 409, column: 21, scope: !658)
!661 = !DILocation(line: 409, column: 11, scope: !658)
!662 = !DILocation(line: 409, column: 7, scope: !640)
!663 = !DILocation(line: 410, column: 4, scope: !658)
!664 = !DILocation(line: 411, column: 12, scope: !665)
!665 = distinct !DILexicalBlock(scope: !658, file: !3, line: 411, column: 12)
!666 = !DILocation(line: 411, column: 18, scope: !665)
!667 = !DILocation(line: 411, column: 25, scope: !665)
!668 = !DILocation(line: 411, column: 16, scope: !665)
!669 = !DILocation(line: 411, column: 12, scope: !658)
!670 = !DILocation(line: 412, column: 11, scope: !665)
!671 = !DILocation(line: 412, column: 17, scope: !665)
!672 = !DILocation(line: 412, column: 9, scope: !665)
!673 = !DILocation(line: 412, column: 4, scope: !665)
!674 = !DILocation(line: 414, column: 11, scope: !665)
!675 = !DILocation(line: 414, column: 17, scope: !665)
!676 = !DILocation(line: 414, column: 9, scope: !665)
!677 = distinct !{!677, !652, !678, !300, !301}
!678 = !DILocation(line: 415, column: 2, scope: !630)
!679 = !DILocation(line: 417, column: 2, scope: !630)
!680 = !DILocation(line: 419, column: 9, scope: !630)
!681 = !DILocation(line: 420, column: 1, scope: !630)
!682 = !DILocation(line: 419, column: 2, scope: !630)
!683 = !DISubprogram(name: "_raw_read_lock", scope: !362, file: !362, line: 18, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = !DISubprogram(name: "_raw_read_unlock", scope: !362, file: !362, line: 31, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = distinct !DISubprogram(name: "const_test_bit", scope: !686, file: !686, line: 166, type: !687, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !692)
!686 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!687 = !DISubroutineType(types: !688)
!688 = !{!369, !37, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!692 = !{!693, !694, !695, !696, !697}
!693 = !DILocalVariable(name: "nr", arg: 1, scope: !685, file: !686, line: 166, type: !37)
!694 = !DILocalVariable(name: "addr", arg: 2, scope: !685, file: !686, line: 166, type: !689)
!695 = !DILocalVariable(name: "p", scope: !685, file: !686, line: 168, type: !159)
!696 = !DILocalVariable(name: "mask", scope: !685, file: !686, line: 169, type: !37)
!697 = !DILocalVariable(name: "val", scope: !685, file: !686, line: 170, type: !37)
!698 = !DILocation(line: 166, column: 30, scope: !685)
!699 = !DILocation(line: 166, column: 64, scope: !685)
!700 = !DILocation(line: 168, column: 2, scope: !685)
!701 = !DILocation(line: 168, column: 23, scope: !685)
!702 = !DILocation(line: 168, column: 50, scope: !685)
!703 = !DILocation(line: 168, column: 57, scope: !685)
!704 = !DILocation(line: 168, column: 55, scope: !685)
!705 = !DILocation(line: 169, column: 2, scope: !685)
!706 = !DILocation(line: 169, column: 16, scope: !685)
!707 = !DILocation(line: 169, column: 23, scope: !685)
!708 = !DILocation(line: 170, column: 2, scope: !685)
!709 = !DILocation(line: 170, column: 16, scope: !685)
!710 = !DILocation(line: 170, column: 23, scope: !685)
!711 = !DILocation(line: 170, column: 22, scope: !685)
!712 = !DILocation(line: 172, column: 12, scope: !685)
!713 = !DILocation(line: 172, column: 18, scope: !685)
!714 = !DILocation(line: 172, column: 16, scope: !685)
!715 = !DILocation(line: 172, column: 10, scope: !685)
!716 = !DILocation(line: 172, column: 9, scope: !685)
!717 = !DILocation(line: 173, column: 1, scope: !685)
!718 = !DILocation(line: 172, column: 2, scope: !685)
!719 = distinct !DISubprogram(name: "_test_bit", scope: !720, file: !720, line: 139, type: !687, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !721)
!720 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!721 = !{!722, !723}
!722 = !DILocalVariable(name: "nr", arg: 1, scope: !719, file: !720, line: 139, type: !37)
!723 = !DILocalVariable(name: "addr", arg: 2, scope: !719, file: !720, line: 139, type: !689)
!724 = !DILocation(line: 139, column: 25, scope: !719)
!725 = !DILocation(line: 139, column: 59, scope: !719)
!726 = !DILocation(line: 141, column: 25, scope: !719)
!727 = !DILocation(line: 141, column: 32, scope: !719)
!728 = !DILocation(line: 141, column: 30, scope: !719)
!729 = !DILocation(line: 141, column: 2, scope: !719)
!730 = !DILocation(line: 142, column: 23, scope: !719)
!731 = !DILocation(line: 142, column: 27, scope: !719)
!732 = !DILocation(line: 142, column: 9, scope: !719)
!733 = !DILocation(line: 142, column: 2, scope: !719)
!734 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !735, file: !735, line: 66, type: !736, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !745)
!735 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!736 = !DISubroutineType(types: !737)
!737 = !{null, !738, !741}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 61, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !743, line: 72, baseType: !744)
!743 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !743, line: 16, baseType: !37)
!745 = !{!746, !747}
!746 = !DILocalVariable(name: "v", arg: 1, scope: !734, file: !735, line: 66, type: !738)
!747 = !DILocalVariable(name: "size", arg: 2, scope: !734, file: !735, line: 66, type: !741)
!748 = !DILocation(line: 66, column: 73, scope: !734)
!749 = !DILocation(line: 66, column: 83, scope: !734)
!750 = !DILocation(line: 68, column: 19, scope: !734)
!751 = !DILocation(line: 68, column: 22, scope: !734)
!752 = !DILocation(line: 68, column: 2, scope: !734)
!753 = !DILocation(line: 69, column: 2, scope: !734)
!754 = !DILocation(line: 70, column: 1, scope: !734)
!755 = distinct !DISubprogram(name: "arch_test_bit", scope: !756, file: !756, line: 237, type: !687, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !757)
!756 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!757 = !{!758, !759}
!758 = !DILocalVariable(name: "nr", arg: 1, scope: !755, file: !756, line: 237, type: !37)
!759 = !DILocalVariable(name: "addr", arg: 2, scope: !755, file: !756, line: 237, type: !689)
!760 = !DILocation(line: 237, column: 29, scope: !755)
!761 = !DILocation(line: 237, column: 63, scope: !755)
!762 = !DILocation(line: 239, column: 30, scope: !755)
!763 = !DILocation(line: 239, column: 9, scope: !755)
!764 = !DILocation(line: 239, column: 54, scope: !755)
!765 = !DILocation(line: 239, column: 58, scope: !755)
!766 = !DILocation(line: 239, column: 36, scope: !755)
!767 = !DILocation(line: 240, column: 26, scope: !755)
!768 = !DILocation(line: 240, column: 30, scope: !755)
!769 = !DILocation(line: 240, column: 8, scope: !755)
!770 = !DILocation(line: 239, column: 2, scope: !755)
!771 = distinct !DISubprogram(name: "kasan_check_read", scope: !772, file: !772, line: 40, type: !773, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !775)
!772 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!773 = !DISubroutineType(types: !774)
!774 = !{!369, !738, !7}
!775 = !{!776, !777}
!776 = !DILocalVariable(name: "p", arg: 1, scope: !771, file: !772, line: 40, type: !738)
!777 = !DILocalVariable(name: "size", arg: 2, scope: !771, file: !772, line: 40, type: !7)
!778 = !DILocation(line: 40, column: 58, scope: !771)
!779 = !DILocation(line: 40, column: 74, scope: !771)
!780 = !DILocation(line: 42, column: 2, scope: !771)
!781 = distinct !DISubprogram(name: "kcsan_check_access", scope: !782, file: !782, line: 229, type: !783, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!782 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!783 = !DISubroutineType(types: !784)
!784 = !{null, !738, !741, !113}
!785 = !{!786, !787, !788}
!786 = !DILocalVariable(name: "ptr", arg: 1, scope: !781, file: !782, line: 229, type: !738)
!787 = !DILocalVariable(name: "size", arg: 2, scope: !781, file: !782, line: 229, type: !741)
!788 = !DILocalVariable(name: "type", arg: 3, scope: !781, file: !782, line: 230, type: !113)
!789 = !DILocation(line: 229, column: 60, scope: !781)
!790 = !DILocation(line: 229, column: 72, scope: !781)
!791 = !DILocation(line: 230, column: 15, scope: !781)
!792 = !DILocation(line: 230, column: 23, scope: !781)
!793 = distinct !DISubprogram(name: "constant_test_bit", scope: !756, file: !756, line: 204, type: !794, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !797)
!794 = !DISubroutineType(types: !795)
!795 = !{!369, !796, !689}
!796 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!797 = !{!798, !799}
!798 = !DILocalVariable(name: "nr", arg: 1, scope: !793, file: !756, line: 204, type: !796)
!799 = !DILocalVariable(name: "addr", arg: 2, scope: !793, file: !756, line: 204, type: !689)
!800 = !DILocation(line: 204, column: 52, scope: !793)
!801 = !DILocation(line: 204, column: 86, scope: !793)
!802 = !DILocation(line: 206, column: 19, scope: !793)
!803 = !DILocation(line: 206, column: 22, scope: !793)
!804 = !DILocation(line: 206, column: 15, scope: !793)
!805 = !DILocation(line: 207, column: 4, scope: !793)
!806 = !DILocation(line: 207, column: 9, scope: !793)
!807 = !DILocation(line: 207, column: 12, scope: !793)
!808 = !DILocation(line: 206, column: 44, scope: !793)
!809 = !DILocation(line: 207, column: 37, scope: !793)
!810 = !DILocation(line: 206, column: 2, scope: !793)
!811 = distinct !DISubprogram(name: "variable_test_bit", scope: !756, file: !756, line: 224, type: !794, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!812 = !{!813, !814, !815}
!813 = !DILocalVariable(name: "nr", arg: 1, scope: !811, file: !756, line: 224, type: !796)
!814 = !DILocalVariable(name: "addr", arg: 2, scope: !811, file: !756, line: 224, type: !689)
!815 = !DILocalVariable(name: "oldbit", scope: !811, file: !756, line: 226, type: !369)
!816 = !DILocation(line: 224, column: 52, scope: !811)
!817 = !DILocation(line: 224, column: 86, scope: !811)
!818 = !DILocation(line: 226, column: 2, scope: !811)
!819 = !DILocation(line: 226, column: 7, scope: !811)
!820 = !DILocation(line: 231, column: 33, scope: !811)
!821 = !DILocation(line: 231, column: 46, scope: !811)
!822 = !DILocation(line: 228, column: 2, scope: !811)
!823 = !{i64 2148315206, i64 2148315280}
!824 = !DILocation(line: 233, column: 9, scope: !811)
!825 = !DILocation(line: 234, column: 1, scope: !811)
!826 = !DILocation(line: 233, column: 2, scope: !811)
!827 = distinct !DISubprogram(name: "drm_mm_insert_node_generic", scope: !12, file: !12, line: 434, type: !828, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{!113, !46, !33, !39, !39, !37, !11}
!830 = !{!831, !832, !833, !834, !835, !836}
!831 = !DILocalVariable(name: "mm", arg: 1, scope: !827, file: !12, line: 434, type: !46)
!832 = !DILocalVariable(name: "node", arg: 2, scope: !827, file: !12, line: 434, type: !33)
!833 = !DILocalVariable(name: "size", arg: 3, scope: !827, file: !12, line: 435, type: !39)
!834 = !DILocalVariable(name: "alignment", arg: 4, scope: !827, file: !12, line: 435, type: !39)
!835 = !DILocalVariable(name: "color", arg: 5, scope: !827, file: !12, line: 436, type: !37)
!836 = !DILocalVariable(name: "mode", arg: 6, scope: !827, file: !12, line: 437, type: !11)
!837 = !DILocation(line: 434, column: 43, scope: !827)
!838 = !DILocation(line: 434, column: 67, scope: !827)
!839 = !DILocation(line: 435, column: 11, scope: !827)
!840 = !DILocation(line: 435, column: 21, scope: !827)
!841 = !DILocation(line: 436, column: 21, scope: !827)
!842 = !DILocation(line: 437, column: 31, scope: !827)
!843 = !DILocation(line: 439, column: 37, scope: !827)
!844 = !DILocation(line: 439, column: 41, scope: !827)
!845 = !DILocation(line: 440, column: 9, scope: !827)
!846 = !DILocation(line: 440, column: 15, scope: !827)
!847 = !DILocation(line: 440, column: 26, scope: !827)
!848 = !DILocation(line: 441, column: 21, scope: !827)
!849 = !DILocation(line: 439, column: 9, scope: !827)
!850 = !DILocation(line: 439, column: 2, scope: !827)
!851 = !DISubprogram(name: "drm_mm_insert_node_in_range", scope: !12, file: !12, line: 407, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!852 = !DISubroutineType(types: !853)
!853 = !{!113, !46, !33, !39, !39, !37, !39, !39, !11}
!854 = distinct !DISubprogram(name: "kmalloc", scope: !22, file: !22, line: 591, type: !855, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{!32, !741, !162}
!857 = !{!858, !859, !860}
!858 = !DILocalVariable(name: "size", arg: 1, scope: !854, file: !22, line: 591, type: !741)
!859 = !DILocalVariable(name: "flags", arg: 2, scope: !854, file: !22, line: 591, type: !162)
!860 = !DILocalVariable(name: "index", scope: !861, file: !22, line: 594, type: !7)
!861 = distinct !DILexicalBlock(scope: !862, file: !22, line: 593, column: 42)
!862 = distinct !DILexicalBlock(scope: !854, file: !22, line: 593, column: 6)
!863 = !DILocation(line: 591, column: 61, scope: !854)
!864 = !DILocation(line: 591, column: 73, scope: !854)
!865 = !DILocation(line: 593, column: 27, scope: !862)
!866 = !DILocation(line: 593, column: 6, scope: !862)
!867 = !DILocation(line: 593, column: 33, scope: !862)
!868 = !DILocation(line: 593, column: 36, scope: !862)
!869 = !DILocation(line: 593, column: 6, scope: !854)
!870 = !DILocation(line: 594, column: 3, scope: !861)
!871 = !DILocation(line: 594, column: 16, scope: !861)
!872 = !DILocation(line: 596, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !861, file: !22, line: 596, column: 7)
!874 = !DILocation(line: 596, column: 12, scope: !873)
!875 = !DILocation(line: 596, column: 7, scope: !861)
!876 = !DILocation(line: 597, column: 25, scope: !873)
!877 = !DILocation(line: 597, column: 31, scope: !873)
!878 = !DILocation(line: 597, column: 11, scope: !873)
!879 = !DILocation(line: 597, column: 4, scope: !873)
!880 = !DILocation(line: 599, column: 11, scope: !861)
!881 = !DILocation(line: 599, column: 9, scope: !861)
!882 = !DILocation(line: 601, column: 33, scope: !861)
!883 = !DILocation(line: 601, column: 40, scope: !861)
!884 = !DILocation(line: 601, column: 20, scope: !861)
!885 = !DILocation(line: 601, column: 5, scope: !861)
!886 = !DILocation(line: 601, column: 51, scope: !861)
!887 = !DILocation(line: 602, column: 5, scope: !861)
!888 = !DILocation(line: 602, column: 12, scope: !861)
!889 = !DILocation(line: 600, column: 10, scope: !861)
!890 = !DILocation(line: 600, column: 3, scope: !861)
!891 = !DILocation(line: 603, column: 2, scope: !862)
!892 = !DILocation(line: 604, column: 19, scope: !854)
!893 = !DILocation(line: 604, column: 25, scope: !854)
!894 = !DILocation(line: 604, column: 9, scope: !854)
!895 = !DILocation(line: 604, column: 2, scope: !854)
!896 = !DILocation(line: 605, column: 1, scope: !854)
!897 = distinct !DISubprogram(name: "rb_link_node", scope: !621, file: !621, line: 59, type: !898, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !72, !72, !439}
!900 = !{!901, !902, !903}
!901 = !DILocalVariable(name: "node", arg: 1, scope: !897, file: !621, line: 59, type: !72)
!902 = !DILocalVariable(name: "parent", arg: 2, scope: !897, file: !621, line: 59, type: !72)
!903 = !DILocalVariable(name: "rb_link", arg: 3, scope: !897, file: !621, line: 60, type: !439)
!904 = !DILocation(line: 59, column: 49, scope: !897)
!905 = !DILocation(line: 59, column: 71, scope: !897)
!906 = !DILocation(line: 60, column: 22, scope: !897)
!907 = !DILocation(line: 62, column: 43, scope: !897)
!908 = !DILocation(line: 62, column: 28, scope: !897)
!909 = !DILocation(line: 62, column: 2, scope: !897)
!910 = !DILocation(line: 62, column: 8, scope: !897)
!911 = !DILocation(line: 62, column: 26, scope: !897)
!912 = !DILocation(line: 63, column: 18, scope: !897)
!913 = !DILocation(line: 63, column: 24, scope: !897)
!914 = !DILocation(line: 63, column: 33, scope: !897)
!915 = !DILocation(line: 63, column: 2, scope: !897)
!916 = !DILocation(line: 63, column: 8, scope: !897)
!917 = !DILocation(line: 63, column: 16, scope: !897)
!918 = !DILocation(line: 65, column: 13, scope: !897)
!919 = !DILocation(line: 65, column: 3, scope: !897)
!920 = !DILocation(line: 65, column: 11, scope: !897)
!921 = !DILocation(line: 66, column: 1, scope: !897)
!922 = !DISubprogram(name: "rb_insert_color", scope: !621, file: !621, line: 39, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubprogram(name: "kmalloc_large", scope: !22, file: !22, line: 531, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!924 = distinct !DISubprogram(name: "__kmalloc_index", scope: !22, file: !22, line: 444, type: !925, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !927)
!925 = !DISubroutineType(types: !926)
!926 = !{!7, !741, !369}
!927 = !{!928, !929}
!928 = !DILocalVariable(name: "size", arg: 1, scope: !924, file: !22, line: 444, type: !741)
!929 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !924, file: !22, line: 445, type: !369)
!930 = !DILocation(line: 444, column: 60, scope: !924)
!931 = !DILocation(line: 445, column: 16, scope: !924)
!932 = !DILocation(line: 447, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !924, file: !22, line: 447, column: 6)
!934 = !DILocation(line: 447, column: 6, scope: !924)
!935 = !DILocation(line: 448, column: 3, scope: !933)
!936 = !DILocation(line: 450, column: 6, scope: !937)
!937 = distinct !DILexicalBlock(scope: !924, file: !22, line: 450, column: 6)
!938 = !DILocation(line: 450, column: 11, scope: !937)
!939 = !DILocation(line: 450, column: 6, scope: !924)
!940 = !DILocation(line: 451, column: 3, scope: !937)
!941 = !DILocation(line: 453, column: 32, scope: !942)
!942 = distinct !DILexicalBlock(scope: !924, file: !22, line: 453, column: 6)
!943 = !DILocation(line: 453, column: 37, scope: !942)
!944 = !DILocation(line: 453, column: 42, scope: !942)
!945 = !DILocation(line: 453, column: 45, scope: !942)
!946 = !DILocation(line: 453, column: 50, scope: !942)
!947 = !DILocation(line: 453, column: 6, scope: !924)
!948 = !DILocation(line: 454, column: 3, scope: !942)
!949 = !DILocation(line: 455, column: 32, scope: !950)
!950 = distinct !DILexicalBlock(scope: !924, file: !22, line: 455, column: 6)
!951 = !DILocation(line: 455, column: 37, scope: !950)
!952 = !DILocation(line: 455, column: 43, scope: !950)
!953 = !DILocation(line: 455, column: 46, scope: !950)
!954 = !DILocation(line: 455, column: 51, scope: !950)
!955 = !DILocation(line: 455, column: 6, scope: !924)
!956 = !DILocation(line: 456, column: 3, scope: !950)
!957 = !DILocation(line: 457, column: 6, scope: !958)
!958 = distinct !DILexicalBlock(scope: !924, file: !22, line: 457, column: 6)
!959 = !DILocation(line: 457, column: 11, scope: !958)
!960 = !DILocation(line: 457, column: 6, scope: !924)
!961 = !DILocation(line: 457, column: 26, scope: !958)
!962 = !DILocation(line: 458, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !924, file: !22, line: 458, column: 6)
!964 = !DILocation(line: 458, column: 11, scope: !963)
!965 = !DILocation(line: 458, column: 6, scope: !924)
!966 = !DILocation(line: 458, column: 26, scope: !963)
!967 = !DILocation(line: 459, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !924, file: !22, line: 459, column: 6)
!969 = !DILocation(line: 459, column: 11, scope: !968)
!970 = !DILocation(line: 459, column: 6, scope: !924)
!971 = !DILocation(line: 459, column: 26, scope: !968)
!972 = !DILocation(line: 460, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !924, file: !22, line: 460, column: 6)
!974 = !DILocation(line: 460, column: 11, scope: !973)
!975 = !DILocation(line: 460, column: 6, scope: !924)
!976 = !DILocation(line: 460, column: 26, scope: !973)
!977 = !DILocation(line: 461, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !924, file: !22, line: 461, column: 6)
!979 = !DILocation(line: 461, column: 11, scope: !978)
!980 = !DILocation(line: 461, column: 6, scope: !924)
!981 = !DILocation(line: 461, column: 26, scope: !978)
!982 = !DILocation(line: 462, column: 6, scope: !983)
!983 = distinct !DILexicalBlock(scope: !924, file: !22, line: 462, column: 6)
!984 = !DILocation(line: 462, column: 11, scope: !983)
!985 = !DILocation(line: 462, column: 6, scope: !924)
!986 = !DILocation(line: 462, column: 26, scope: !983)
!987 = !DILocation(line: 463, column: 6, scope: !988)
!988 = distinct !DILexicalBlock(scope: !924, file: !22, line: 463, column: 6)
!989 = !DILocation(line: 463, column: 11, scope: !988)
!990 = !DILocation(line: 463, column: 6, scope: !924)
!991 = !DILocation(line: 463, column: 26, scope: !988)
!992 = !DILocation(line: 464, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !924, file: !22, line: 464, column: 6)
!994 = !DILocation(line: 464, column: 11, scope: !993)
!995 = !DILocation(line: 464, column: 6, scope: !924)
!996 = !DILocation(line: 464, column: 26, scope: !993)
!997 = !DILocation(line: 465, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !924, file: !22, line: 465, column: 6)
!999 = !DILocation(line: 465, column: 11, scope: !998)
!1000 = !DILocation(line: 465, column: 6, scope: !924)
!1001 = !DILocation(line: 465, column: 26, scope: !998)
!1002 = !DILocation(line: 466, column: 6, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !924, file: !22, line: 466, column: 6)
!1004 = !DILocation(line: 466, column: 11, scope: !1003)
!1005 = !DILocation(line: 466, column: 6, scope: !924)
!1006 = !DILocation(line: 466, column: 26, scope: !1003)
!1007 = !DILocation(line: 467, column: 6, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !924, file: !22, line: 467, column: 6)
!1009 = !DILocation(line: 467, column: 11, scope: !1008)
!1010 = !DILocation(line: 467, column: 6, scope: !924)
!1011 = !DILocation(line: 467, column: 26, scope: !1008)
!1012 = !DILocation(line: 468, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !924, file: !22, line: 468, column: 6)
!1014 = !DILocation(line: 468, column: 11, scope: !1013)
!1015 = !DILocation(line: 468, column: 6, scope: !924)
!1016 = !DILocation(line: 468, column: 26, scope: !1013)
!1017 = !DILocation(line: 469, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !924, file: !22, line: 469, column: 6)
!1019 = !DILocation(line: 469, column: 11, scope: !1018)
!1020 = !DILocation(line: 469, column: 6, scope: !924)
!1021 = !DILocation(line: 469, column: 26, scope: !1018)
!1022 = !DILocation(line: 470, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !924, file: !22, line: 470, column: 6)
!1024 = !DILocation(line: 470, column: 11, scope: !1023)
!1025 = !DILocation(line: 470, column: 6, scope: !924)
!1026 = !DILocation(line: 470, column: 26, scope: !1023)
!1027 = !DILocation(line: 471, column: 6, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !924, file: !22, line: 471, column: 6)
!1029 = !DILocation(line: 471, column: 11, scope: !1028)
!1030 = !DILocation(line: 471, column: 6, scope: !924)
!1031 = !DILocation(line: 471, column: 26, scope: !1028)
!1032 = !DILocation(line: 472, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !924, file: !22, line: 472, column: 6)
!1034 = !DILocation(line: 472, column: 11, scope: !1033)
!1035 = !DILocation(line: 472, column: 6, scope: !924)
!1036 = !DILocation(line: 472, column: 26, scope: !1033)
!1037 = !DILocation(line: 473, column: 6, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !924, file: !22, line: 473, column: 6)
!1039 = !DILocation(line: 473, column: 11, scope: !1038)
!1040 = !DILocation(line: 473, column: 6, scope: !924)
!1041 = !DILocation(line: 473, column: 26, scope: !1038)
!1042 = !DILocation(line: 474, column: 6, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !924, file: !22, line: 474, column: 6)
!1044 = !DILocation(line: 474, column: 11, scope: !1043)
!1045 = !DILocation(line: 474, column: 6, scope: !924)
!1046 = !DILocation(line: 474, column: 27, scope: !1043)
!1047 = !DILocation(line: 475, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !924, file: !22, line: 475, column: 6)
!1049 = !DILocation(line: 475, column: 11, scope: !1048)
!1050 = !DILocation(line: 475, column: 6, scope: !924)
!1051 = !DILocation(line: 475, column: 32, scope: !1048)
!1052 = !DILocation(line: 477, column: 50, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !924, file: !22, line: 477, column: 6)
!1054 = !DILocation(line: 477, column: 6, scope: !924)
!1055 = !DILocation(line: 478, column: 3, scope: !1053)
!1056 = !DILocation(line: 478, column: 3, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !22, line: 478, column: 3)
!1058 = distinct !DILexicalBlock(scope: !1053, file: !22, line: 478, column: 3)
!1059 = !{i32 -2142323026}
!1060 = !DILocation(line: 478, column: 3, scope: !1058)
!1061 = !DILocation(line: 480, column: 3, scope: !1053)
!1062 = !DILocation(line: 480, column: 3, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1053, file: !22, line: 480, column: 3)
!1064 = !DILocation(line: 480, column: 3, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1063, file: !22, line: 480, column: 3)
!1066 = !DILocation(line: 480, column: 3, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !22, line: 480, column: 3)
!1068 = !{i64 2152644473, i64 2152644502, i64 2152644548, i64 2152644606, i64 2152644660, i64 2152644714, i64 2152644769, i64 2152644800}
!1069 = !DILocation(line: 483, column: 2, scope: !924)
!1070 = !DILocation(line: 484, column: 1, scope: !924)
!1071 = !DISubprogram(name: "kmalloc_trace", scope: !22, file: !22, line: 525, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!32, !1074, !162, !741}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1076, line: 11, flags: DIFlagFwdDecl)
!1076 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1077 = distinct !DISubprogram(name: "kmalloc_type", scope: !22, file: !22, line: 401, type: !1078, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1080)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!21, !162, !37}
!1080 = !{!1081, !1082}
!1081 = !DILocalVariable(name: "flags", arg: 1, scope: !1077, file: !22, line: 401, type: !162)
!1082 = !DILocalVariable(name: "caller", arg: 2, scope: !1077, file: !22, line: 401, type: !37)
!1083 = !DILocation(line: 401, column: 67, scope: !1077)
!1084 = !DILocation(line: 401, column: 88, scope: !1077)
!1085 = !DILocation(line: 407, column: 6, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1077, file: !22, line: 407, column: 6)
!1087 = !DILocation(line: 407, column: 6, scope: !1077)
!1088 = !DILocation(line: 413, column: 3, scope: !1086)
!1089 = !DILocation(line: 423, column: 38, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1077, file: !22, line: 423, column: 6)
!1091 = !DILocation(line: 423, column: 44, scope: !1090)
!1092 = !DILocation(line: 423, column: 6, scope: !1077)
!1093 = !DILocation(line: 424, column: 3, scope: !1090)
!1094 = !DILocation(line: 426, column: 3, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1077, file: !22, line: 425, column: 6)
!1096 = !DILocation(line: 429, column: 1, scope: !1077)
!1097 = !DISubprogram(name: "__kmalloc", scope: !22, file: !22, line: 488, type: !855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubprogram(name: "__compiletime_assert_206", scope: !22, file: !22, line: 478, type: !1099, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null}
